; ModuleID = './plug-ins/script-fu/script-fu-console.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.ConsoleInterface = type { %struct._GtkWidget*, %struct._GtkTextBuffer*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GList*, i32, i32, i32 }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkTextLogAttrCache = type opaque
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._PangoTabArray = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkTextPendingScroll = type opaque
%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._PangoLanguage = type opaque
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._GdkEventKey = type { i32, %struct._GdkDrawable*, i8, i32, i32, i32, i32, i8*, i16, i8, i8 }
%struct._GString = type { i8*, i64, i64 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._PangoLayout = type opaque
%struct._GtkEditable = type opaque
%struct._GtkFileChooser = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpProcBrowserDialog = type { %struct._GimpDialog, %struct._GtkWidget*, %struct._GtkListStore*, %struct._GtkWidget* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkListStore = type { %struct._GObject, i32, i8*, i8*, %struct._GList*, i32, i32, i32, i64*, i32, i32 (%struct._GtkTreeModel*, %struct._GtkTreeIter*, %struct._GtkTreeIter*, i8*)*, i8*, void (i8*)*, i8 }
%struct._GtkTreeModel = type opaque
%struct._GtkTreeIter = type { i32, i8*, i8*, i8* }
%struct._GimpParamDef = type { i32, i8*, i8* }

@script_fu_console_run.values = internal global [1 x %struct._GimpParam] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"script-fu\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Script-Fu Console\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"gimp-script-fu-console\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"plug-in-script-fu-console\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"gtk-save\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"gtk-close\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"strong\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"scale\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"emphasis\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"style\00", align 1
@script_fu_console_interface.greetings = internal constant [16 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)], align 16
@.str.13 = private unnamed_addr constant [22 x i8] c"Welcome to TinyScheme\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"Copyright (c) Dimitrios Souflis\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Interactive Scheme Development\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"key-press-event\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"_Browse...\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"clicked\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"Save Script-Fu Console Output\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"Script-Fu Procedure Browser\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"script-fu-procedure-browser\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"gtk-apply\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"row-activated\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"(\00", align 1

; Function Attrs: nounwind uwtable
define void @script_fu_console_run(i8* %name, i32 %nparams, %struct._GimpParam* %params, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  call void @ts_set_print_flag(i32 1)
  call void @script_fu_console_interface()
  %0 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %0, align 4
  %1 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_console_run.values, i32 0, i32 0), %struct._GimpParam** %1, align 8
  store i32 21, i32* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_console_run.values, i32 0, i64 0, i32 0), align 4
  store i32 3, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([1 x %struct._GimpParam], [1 x %struct._GimpParam]* @script_fu_console_run.values, i32 0, i64 0, i32 1) to i32*), align 4
  ret void
}

declare void @ts_set_print_flag(i32) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_console_interface() #0 {
entry:
  %console = alloca %struct.ConsoleInterface, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %button = alloca %struct._GtkWidget*, align 8
  %scrolled_window = alloca %struct._GtkWidget*, align 8
  %hbox = alloca %struct._GtkWidget*, align 8
  %cursor = alloca %struct._GtkTextIter, align 8
  %i = alloca i32, align 4
  %0 = bitcast %struct.ConsoleInterface* %console to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 80, i32 8, i1 false)
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i32 0)
  %input_id = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 6
  store i32 -1, i32* %input_id, align 4
  %history_max = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 10
  store i32 50, i32* %history_max, align 4
  %call = call i8* @gettext(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0)) #2
  %call1 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %call, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 -7, i8* null)
  %dialog = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 0
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %dialog, align 8
  %dialog2 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog2, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_dialog_get_type() #7
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call3)
  %3 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %3, i32 -7, i32 0, i32 1, i32 -1)
  %dialog5 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 0
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog5, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %dialog7 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 0
  %7 = bitcast %struct._GtkWidget** %dialog7 to i8*
  %8 = bitcast i8* %7 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %6, i8** %8)
  %dialog8 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 0
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog8, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %11 = bitcast %struct.ConsoleInterface* %console to i8*
  %call9 = call i64 @g_signal_connect_data(i8* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ConsoleInterface*)* @script_fu_console_response to void ()*), i8* %11, void (i8*, %struct._GClosure*)* null, i32 0)
  %call10 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call10, %struct._GtkWidget** %vbox, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_container_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call11)
  %14 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %14, i32 12)
  %dialog13 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 0
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog13, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_dialog_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call14)
  %17 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkDialog*
  %call16 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %17)
  %18 = bitcast %struct._GtkWidget* %call16 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_box_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call17)
  %19 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkBox*
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %19, %struct._GtkWidget* %20, i32 1, i32 1, i32 0)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %21)
  %call19 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call19, %struct._GtkWidget** %scrolled_window, align 8
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %23 = bitcast %struct._GtkWidget* %22 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_scrolled_window_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call20)
  %24 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %24, i32 1, i32 0)
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_box_get_type() #7
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call22)
  %27 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkBox*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %27, %struct._GtkWidget* %28, i32 1, i32 1, i32 0)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %29)
  %call24 = call %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable* null)
  %console25 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 1
  store %struct._GtkTextBuffer* %call24, %struct._GtkTextBuffer** %console25, align 8
  %console26 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 1
  %30 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console26, align 8
  %call27 = call %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer* %30)
  %text_view = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 3
  store %struct._GtkWidget* %call27, %struct._GtkWidget** %text_view, align 8
  %console28 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 1
  %31 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console28, align 8
  %32 = bitcast %struct._GtkTextBuffer* %31 to i8*
  call void @g_object_unref(i8* %32)
  %text_view29 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 3
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view29, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_text_view_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call30)
  %35 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkTextView*
  call void @gtk_text_view_set_editable(%struct._GtkTextView* %35, i32 0)
  %text_view32 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 3
  %36 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view32, align 8
  %37 = bitcast %struct._GtkWidget* %36 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_text_view_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call33)
  %38 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkTextView*
  call void @gtk_text_view_set_wrap_mode(%struct._GtkTextView* %38, i32 2)
  %text_view35 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 3
  %39 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view35, align 8
  %40 = bitcast %struct._GtkWidget* %39 to %struct._GTypeInstance*
  %call36 = call i64 @gtk_text_view_get_type() #7
  %call37 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call36)
  %41 = bitcast %struct._GTypeInstance* %call37 to %struct._GtkTextView*
  call void @gtk_text_view_set_left_margin(%struct._GtkTextView* %41, i32 6)
  %text_view38 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 3
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view38, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_text_view_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call39)
  %44 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkTextView*
  call void @gtk_text_view_set_right_margin(%struct._GtkTextView* %44, i32 6)
  %text_view41 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 3
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view41, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %45, i32 480, i32 400)
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %scrolled_window, align 8
  %47 = bitcast %struct._GtkWidget* %46 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_container_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call42)
  %48 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkContainer*
  %text_view44 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 3
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view44, align 8
  call void @gtk_container_add(%struct._GtkContainer* %48, %struct._GtkWidget* %49)
  %text_view45 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 3
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view45, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %50)
  %console46 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 1
  %51 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console46, align 8
  %call47 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %51, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i32 700, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), double 1.200000e+00, i8* null)
  %console48 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 1
  %52 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console48, align 8
  %call49 = call %struct._GtkTextTag* (%struct._GtkTextBuffer*, i8*, i8*, ...) @gtk_text_buffer_create_tag(%struct._GtkTextBuffer* %52, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 1, i8* null)
  %console50 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 1
  %53 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console50, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %53, %struct._GtkTextIter* %cursor)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %54 = load i32, i32* %i, align 4
  %conv = sext i32 %54 to i64
  %cmp = icmp ult i64 %conv, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %55 = load i32, i32* %i, align 4
  %idxprom = sext i32 %55 to i64
  %arrayidx = getelementptr inbounds [16 x i8*], [16 x i8*]* @script_fu_console_interface.greetings, i32 0, i64 %idxprom
  %56 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %56, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %console52 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 1
  %57 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console52, align 8
  %58 = load i32, i32* %i, align 4
  %add = add nsw i32 %58, 1
  %idxprom53 = sext i32 %add to i64
  %arrayidx54 = getelementptr inbounds [16 x i8*], [16 x i8*]* @script_fu_console_interface.greetings, i32 0, i64 %idxprom53
  %59 = load i8*, i8** %arrayidx54, align 8
  %call55 = call i8* @gettext(i8* %59) #2
  %60 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %60 to i64
  %arrayidx57 = getelementptr inbounds [16 x i8*], [16 x i8*]* @script_fu_console_interface.greetings, i32 0, i64 %idxprom56
  %61 = load i8*, i8** %arrayidx57, align 8
  call void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32, i8*, ...) @gtk_text_buffer_insert_with_tags_by_name(%struct._GtkTextBuffer* %57, %struct._GtkTextIter* %cursor, i8* %call55, i32 -1, i8* %61, i8* null)
  br label %if.end

if.else:                                          ; preds = %for.body
  %console58 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 1
  %62 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console58, align 8
  %63 = load i32, i32* %i, align 4
  %add59 = add nsw i32 %63, 1
  %idxprom60 = sext i32 %add59 to i64
  %arrayidx61 = getelementptr inbounds [16 x i8*], [16 x i8*]* @script_fu_console_interface.greetings, i32 0, i64 %idxprom60
  %64 = load i8*, i8** %arrayidx61, align 8
  %call62 = call i8* @gettext(i8* %64) #2
  call void @gtk_text_buffer_insert(%struct._GtkTextBuffer* %62, %struct._GtkTextIter* %cursor, i8* %call62, i32 -1)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %65 = load i32, i32* %i, align 4
  %add63 = add nsw i32 %65, 2
  store i32 %add63, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call64 = call %struct._GtkWidget* @gtk_box_new(i32 0, i32 6)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %hbox, align 8
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %67 = bitcast %struct._GtkWidget* %66 to %struct._GTypeInstance*
  %call65 = call i64 @gtk_box_get_type() #7
  %call66 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 %call65)
  %68 = bitcast %struct._GTypeInstance* %call66 to %struct._GtkBox*
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %68, %struct._GtkWidget* %69, i32 0, i32 0, i32 0)
  %70 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %70)
  %call67 = call %struct._GtkWidget* @gtk_entry_new()
  %cc = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 2
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %cc, align 8
  %71 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %72 = bitcast %struct._GtkWidget* %71 to %struct._GTypeInstance*
  %call68 = call i64 @gtk_box_get_type() #7
  %call69 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %72, i64 %call68)
  %73 = bitcast %struct._GTypeInstance* %call69 to %struct._GtkBox*
  %cc70 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 2
  %74 = load %struct._GtkWidget*, %struct._GtkWidget** %cc70, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %73, %struct._GtkWidget* %74, i32 1, i32 1, i32 0)
  %cc71 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 2
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %cc71, align 8
  call void @gtk_widget_grab_focus(%struct._GtkWidget* %75)
  %cc72 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 2
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %cc72, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %76)
  %cc73 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 2
  %77 = load %struct._GtkWidget*, %struct._GtkWidget** %cc73, align 8
  %78 = bitcast %struct._GtkWidget* %77 to i8*
  %79 = bitcast %struct.ConsoleInterface* %console to i8*
  %call74 = call i64 @g_signal_connect_data(i8* %78, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0), void ()* bitcast (i32 (%struct._GtkWidget*, %struct._GdkEventKey*, %struct.ConsoleInterface*)* @script_fu_cc_key_function to void ()*), i8* %79, void (i8*, %struct._GClosure*)* null, i32 0)
  %call75 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)) #2
  %call76 = call %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8* %call75)
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %button, align 8
  %80 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %81 = bitcast %struct._GtkWidget* %80 to %struct._GTypeInstance*
  %call77 = call i64 @gtk_bin_get_type() #7
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %81, i64 %call77)
  %82 = bitcast %struct._GTypeInstance* %call78 to %struct._GtkBin*
  %call79 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %82)
  %83 = bitcast %struct._GtkWidget* %call79 to %struct._GTypeInstance*
  %call80 = call i64 @gtk_misc_get_type() #7
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call80)
  %84 = bitcast %struct._GTypeInstance* %call81 to %struct._GtkMisc*
  call void @gtk_misc_set_padding(%struct._GtkMisc* %84, i32 2, i32 0)
  %85 = load %struct._GtkWidget*, %struct._GtkWidget** %hbox, align 8
  %86 = bitcast %struct._GtkWidget* %85 to %struct._GTypeInstance*
  %call82 = call i64 @gtk_box_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %86, i64 %call82)
  %87 = bitcast %struct._GTypeInstance* %call83 to %struct._GtkBox*
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %87, %struct._GtkWidget* %88, i32 0, i32 1, i32 0)
  %89 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %89)
  %90 = load %struct._GtkWidget*, %struct._GtkWidget** %button, align 8
  %91 = bitcast %struct._GtkWidget* %90 to i8*
  %92 = bitcast %struct.ConsoleInterface* %console to i8*
  %call84 = call i64 @g_signal_connect_data(i8* %91, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.ConsoleInterface*)* @script_fu_browse_callback to void ()*), i8* %92, void (i8*, %struct._GClosure*)* null, i32 0)
  %history = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 7
  %93 = load %struct._GList*, %struct._GList** %history, align 8
  %call85 = call %struct._GList* @g_list_append(%struct._GList* %93, i8* null)
  %history86 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 7
  store %struct._GList* %call85, %struct._GList** %history86, align 8
  %history_len = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 8
  store i32 1, i32* %history_len, align 4
  %dialog87 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 0
  %94 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog87, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %94)
  call void @gtk_main()
  %input_id88 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 6
  %95 = load i32, i32* %input_id88, align 4
  %call89 = call i32 @g_source_remove(i32 %95)
  %save_dialog = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 5
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog, align 8
  %tobool90 = icmp ne %struct._GtkWidget* %96, null
  br i1 %tobool90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %for.end
  %save_dialog92 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 5
  %97 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog92, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %97)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %for.end
  %dialog94 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 0
  %98 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog94, align 8
  %tobool95 = icmp ne %struct._GtkWidget* %98, null
  br i1 %tobool95, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.end.93
  %dialog97 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %console, i32 0, i32 0
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog97, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %99)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.end.93
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare void @gimp_ui_init(i8*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #4

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_console_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.ConsoleInterface* %console) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %console.addr = alloca %struct.ConsoleInterface*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ConsoleInterface* %console, %struct.ConsoleInterface** %console.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %console1 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %1, i32 0, i32 1
  %2 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console1, align 8
  call void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer* %2, %struct._GtkTextIter* %start)
  %3 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %console2 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %3, i32 0, i32 1
  %4 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console2, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %4, %struct._GtkTextIter* %end)
  %5 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %console3 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %5, i32 0, i32 1
  %6 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console3, align 8
  call void @gtk_text_buffer_delete(%struct._GtkTextBuffer* %6, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %7 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  call void @script_fu_console_save_dialog(%struct.ConsoleInterface* %7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @gtk_main_quit()
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %sw.bb
  ret void
}

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #1

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #4

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #1

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #4

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #1

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #4

declare %struct._GtkTextBuffer* @gtk_text_buffer_new(%struct._GtkTextTagTable*) #1

declare %struct._GtkWidget* @gtk_text_view_new_with_buffer(%struct._GtkTextBuffer*) #1

declare void @g_object_unref(i8*) #1

declare void @gtk_text_view_set_editable(%struct._GtkTextView*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #4

declare void @gtk_text_view_set_wrap_mode(%struct._GtkTextView*, i32) #1

declare void @gtk_text_view_set_left_margin(%struct._GtkTextView*, i32) #1

declare void @gtk_text_view_set_right_margin(%struct._GtkTextView*, i32) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #1

declare %struct._GtkTextTag* @gtk_text_buffer_create_tag(%struct._GtkTextBuffer*, i8*, i8*, ...) #1

declare void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_insert_with_tags_by_name(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32, i8*, ...) #1

declare void @gtk_text_buffer_insert(%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32) #1

declare %struct._GtkWidget* @gtk_entry_new() #1

declare void @gtk_widget_grab_focus(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal i32 @script_fu_cc_key_function(%struct._GtkWidget* %widget, %struct._GdkEventKey* %event, %struct.ConsoleInterface* %console) #0 {
entry:
  %retval = alloca i32, align 4
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %event.addr = alloca %struct._GdkEventKey*, align 8
  %console.addr = alloca %struct.ConsoleInterface*, align 8
  %list = alloca %struct._GList*, align 8
  %direction = alloca i32, align 4
  %cursor = alloca %struct._GtkTextIter, align 8
  %output = alloca %struct._GString*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct._GdkEventKey* %event, %struct._GdkEventKey** %event.addr, align 8
  store %struct.ConsoleInterface* %console, %struct.ConsoleInterface** %console.addr, align 8
  store i32 0, i32* %direction, align 4
  %0 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %keyval = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %0, i32 0, i32 5
  %1 = load i32, i32* %keyval, align 4
  switch i32 %1, label %sw.default [
    i32 65293, label %sw.bb
    i32 65421, label %sw.bb
    i32 65076, label %sw.bb
    i32 65431, label %sw.bb.61
    i32 65362, label %sw.bb.61
    i32 65433, label %sw.bb.62
    i32 65364, label %sw.bb.62
    i32 80, label %sw.bb.63
    i32 112, label %sw.bb.63
    i32 78, label %sw.bb.67
    i32 110, label %sw.bb.67
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  %2 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %call = call i32 @script_fu_cc_is_empty(%struct.ConsoleInterface* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.bb
  %3 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %3, i32 0, i32 7
  %4 = load %struct._GList*, %struct._GList** %history, align 8
  %5 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history1 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %5, i32 0, i32 7
  %6 = load %struct._GList*, %struct._GList** %history1, align 8
  %call2 = call i32 @g_list_length(%struct._GList* %6)
  %sub = sub i32 %call2, 1
  %call3 = call %struct._GList* @g_list_nth(%struct._GList* %4, i32 %sub)
  store %struct._GList* %call3, %struct._GList** %list, align 8
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 0
  %8 = load i8*, i8** %data, align 8
  %tobool4 = icmp ne i8* %8, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %data6 = getelementptr inbounds %struct._GList, %struct._GList* %9, i32 0, i32 0
  %10 = load i8*, i8** %data6, align 8
  call void @g_free(i8* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %11 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %cc = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %11, i32 0, i32 2
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %cc, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_entry_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkEntry*
  %call10 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %14)
  %call11 = call noalias i8* @g_strdup(i8* %call10)
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %data12 = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  store i8* %call11, i8** %data12, align 8
  %16 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %console13 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %16, i32 0, i32 1
  %17 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console13, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %17, %struct._GtkTextIter* %cursor)
  %18 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %console14 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %18, i32 0, i32 1
  %19 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console14, align 8
  call void @gtk_text_buffer_insert(%struct._GtkTextBuffer* %19, %struct._GtkTextIter* %cursor, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i32 1)
  %20 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %console15 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %20, i32 0, i32 1
  %21 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console15, align 8
  call void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32, i8*, ...) @gtk_text_buffer_insert_with_tags_by_name(%struct._GtkTextBuffer* %21, %struct._GtkTextIter* %cursor, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* null)
  %22 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %console16 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %22, i32 0, i32 1
  %23 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console16, align 8
  %24 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %cc17 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %24, i32 0, i32 2
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %cc17, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_entry_get_type() #7
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call18)
  %27 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkEntry*
  %call20 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %27)
  call void @gtk_text_buffer_insert(%struct._GtkTextBuffer* %23, %struct._GtkTextIter* %cursor, i8* %call20, i32 -1)
  %28 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %console21 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %28, i32 0, i32 1
  %29 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console21, align 8
  call void @gtk_text_buffer_insert(%struct._GtkTextBuffer* %29, %struct._GtkTextIter* %cursor, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i32 1)
  %30 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %text_view = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %30, i32 0, i32 3
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  call void @script_fu_console_scroll_end(%struct._GtkWidget* %31)
  %32 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %cc22 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %32, i32 0, i32 2
  %33 = load %struct._GtkWidget*, %struct._GtkWidget** %cc22, align 8
  %34 = bitcast %struct._GtkWidget* %33 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_entry_get_type() #7
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call23)
  %35 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkEntry*
  call void @gtk_entry_set_text(%struct._GtkEntry* %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.26, i32 0, i32 0))
  %call25 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call25, %struct._GString** %output, align 8
  %36 = load %struct._GString*, %struct._GString** %output, align 8
  %37 = bitcast %struct._GString* %36 to i8*
  call void @ts_register_output_func(void (i32, i8*, i32, i8*)* @ts_gstring_output_func, i8* %37)
  %call26 = call i32 @gimp_plugin_set_pdb_error_handler(i32 1)
  %38 = load %struct._GList*, %struct._GList** %list, align 8
  %data27 = getelementptr inbounds %struct._GList, %struct._GList* %38, i32 0, i32 0
  %39 = load i8*, i8** %data27, align 8
  %call28 = call i32 @ts_interpret_string(i8* %39)
  %cmp = icmp ne i32 %call28, 0
  br i1 %cmp, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.end.7
  %40 = load %struct._GString*, %struct._GString** %output, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %40, i32 0, i32 0
  %41 = load i8*, i8** %str, align 8
  %42 = load %struct._GString*, %struct._GString** %output, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %42, i32 0, i32 1
  %43 = load i64, i64* %len, align 8
  %conv = trunc i64 %43 to i32
  %44 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %45 = bitcast %struct.ConsoleInterface* %44 to i8*
  call void @script_fu_output_to_console(i32 1, i8* %41, i32 %conv, i8* %45)
  br label %if.end.33

if.else:                                          ; preds = %if.end.7
  %46 = load %struct._GString*, %struct._GString** %output, align 8
  %str30 = getelementptr inbounds %struct._GString, %struct._GString* %46, i32 0, i32 0
  %47 = load i8*, i8** %str30, align 8
  %48 = load %struct._GString*, %struct._GString** %output, align 8
  %len31 = getelementptr inbounds %struct._GString, %struct._GString* %48, i32 0, i32 1
  %49 = load i64, i64* %len31, align 8
  %conv32 = trunc i64 %49 to i32
  %50 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %51 = bitcast %struct.ConsoleInterface* %50 to i8*
  call void @script_fu_output_to_console(i32 0, i8* %47, i32 %conv32, i8* %51)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.29
  %call34 = call i32 @gimp_plugin_set_pdb_error_handler(i32 0)
  %52 = load %struct._GString*, %struct._GString** %output, align 8
  %call35 = call i8* @g_string_free(%struct._GString* %52, i32 1)
  %call36 = call i32 @gimp_displays_flush()
  %53 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history37 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %53, i32 0, i32 7
  %54 = load %struct._GList*, %struct._GList** %history37, align 8
  %call38 = call %struct._GList* @g_list_append(%struct._GList* %54, i8* null)
  %55 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history39 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %55, i32 0, i32 7
  store %struct._GList* %call38, %struct._GList** %history39, align 8
  %56 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_len = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %56, i32 0, i32 8
  %57 = load i32, i32* %history_len, align 4
  %58 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_max = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %58, i32 0, i32 10
  %59 = load i32, i32* %history_max, align 4
  %cmp40 = icmp eq i32 %57, %59
  br i1 %cmp40, label %if.then.42, label %if.else.55

if.then.42:                                       ; preds = %if.end.33
  %60 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history43 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %60, i32 0, i32 7
  %61 = load %struct._GList*, %struct._GList** %history43, align 8
  %62 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history44 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %62, i32 0, i32 7
  %63 = load %struct._GList*, %struct._GList** %history44, align 8
  %data45 = getelementptr inbounds %struct._GList, %struct._GList* %63, i32 0, i32 0
  %64 = load i8*, i8** %data45, align 8
  %call46 = call %struct._GList* @g_list_remove(%struct._GList* %61, i8* %64)
  %65 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history47 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %65, i32 0, i32 7
  store %struct._GList* %call46, %struct._GList** %history47, align 8
  %66 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history48 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %66, i32 0, i32 7
  %67 = load %struct._GList*, %struct._GList** %history48, align 8
  %data49 = getelementptr inbounds %struct._GList, %struct._GList* %67, i32 0, i32 0
  %68 = load i8*, i8** %data49, align 8
  %tobool50 = icmp ne i8* %68, null
  br i1 %tobool50, label %if.then.51, label %if.end.54

if.then.51:                                       ; preds = %if.then.42
  %69 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history52 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %69, i32 0, i32 7
  %70 = load %struct._GList*, %struct._GList** %history52, align 8
  %data53 = getelementptr inbounds %struct._GList, %struct._GList* %70, i32 0, i32 0
  %71 = load i8*, i8** %data53, align 8
  call void @g_free(i8* %71)
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.51, %if.then.42
  br label %if.end.57

if.else.55:                                       ; preds = %if.end.33
  %72 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_len56 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %72, i32 0, i32 8
  %73 = load i32, i32* %history_len56, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %history_len56, align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %if.end.54
  %74 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history58 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %74, i32 0, i32 7
  %75 = load %struct._GList*, %struct._GList** %history58, align 8
  %call59 = call i32 @g_list_length(%struct._GList* %75)
  %sub60 = sub i32 %call59, 1
  %76 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_cur = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %76, i32 0, i32 9
  store i32 %sub60, i32* %history_cur, align 4
  store i32 1, i32* %retval
  br label %return

sw.bb.61:                                         ; preds = %entry, %entry
  store i32 -1, i32* %direction, align 4
  br label %sw.epilog

sw.bb.62:                                         ; preds = %entry, %entry
  store i32 1, i32* %direction, align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %entry, %entry
  %77 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %state = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %77, i32 0, i32 4
  %78 = load i32, i32* %state, align 4
  %and = and i32 %78, 4
  %tobool64 = icmp ne i32 %and, 0
  br i1 %tobool64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %sw.bb.63
  store i32 -1, i32* %direction, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.65, %sw.bb.63
  br label %sw.epilog

sw.bb.67:                                         ; preds = %entry, %entry
  %79 = load %struct._GdkEventKey*, %struct._GdkEventKey** %event.addr, align 8
  %state68 = getelementptr inbounds %struct._GdkEventKey, %struct._GdkEventKey* %79, i32 0, i32 4
  %80 = load i32, i32* %state68, align 4
  %and69 = and i32 %80, 4
  %tobool70 = icmp ne i32 %and69, 0
  br i1 %tobool70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %sw.bb.67
  store i32 1, i32* %direction, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %sw.bb.67
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.72, %if.end.66, %sw.bb.62, %sw.bb.61
  %81 = load i32, i32* %direction, align 4
  %tobool73 = icmp ne i32 %81, 0
  br i1 %tobool73, label %if.then.74, label %if.end.119

if.then.74:                                       ; preds = %sw.epilog
  %82 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_cur75 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %82, i32 0, i32 9
  %83 = load i32, i32* %history_cur75, align 4
  %84 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history76 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %84, i32 0, i32 7
  %85 = load %struct._GList*, %struct._GList** %history76, align 8
  %call77 = call i32 @g_list_length(%struct._GList* %85)
  %sub78 = sub i32 %call77, 1
  %cmp79 = icmp eq i32 %83, %sub78
  br i1 %cmp79, label %if.then.81, label %if.end.92

if.then.81:                                       ; preds = %if.then.74
  %86 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history82 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %86, i32 0, i32 7
  %87 = load %struct._GList*, %struct._GList** %history82, align 8
  %88 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_cur83 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %88, i32 0, i32 9
  %89 = load i32, i32* %history_cur83, align 4
  %call84 = call %struct._GList* @g_list_nth(%struct._GList* %87, i32 %89)
  store %struct._GList* %call84, %struct._GList** %list, align 8
  %90 = load %struct._GList*, %struct._GList** %list, align 8
  %data85 = getelementptr inbounds %struct._GList, %struct._GList* %90, i32 0, i32 0
  %91 = load i8*, i8** %data85, align 8
  call void @g_free(i8* %91)
  %92 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %cc86 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %92, i32 0, i32 2
  %93 = load %struct._GtkWidget*, %struct._GtkWidget** %cc86, align 8
  %94 = bitcast %struct._GtkWidget* %93 to %struct._GTypeInstance*
  %call87 = call i64 @gtk_entry_get_type() #7
  %call88 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %94, i64 %call87)
  %95 = bitcast %struct._GTypeInstance* %call88 to %struct._GtkEntry*
  %call89 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %95)
  %call90 = call noalias i8* @g_strdup(i8* %call89)
  %96 = load %struct._GList*, %struct._GList** %list, align 8
  %data91 = getelementptr inbounds %struct._GList, %struct._GList* %96, i32 0, i32 0
  store i8* %call90, i8** %data91, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.81, %if.then.74
  %97 = load i32, i32* %direction, align 4
  %98 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_cur93 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %98, i32 0, i32 9
  %99 = load i32, i32* %history_cur93, align 4
  %add = add nsw i32 %99, %97
  store i32 %add, i32* %history_cur93, align 4
  %100 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_cur94 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %100, i32 0, i32 9
  %101 = load i32, i32* %history_cur94, align 4
  %cmp95 = icmp slt i32 %101, 0
  br i1 %cmp95, label %if.then.97, label %if.end.99

if.then.97:                                       ; preds = %if.end.92
  %102 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_cur98 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %102, i32 0, i32 9
  store i32 0, i32* %history_cur98, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.97, %if.end.92
  %103 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_cur100 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %103, i32 0, i32 9
  %104 = load i32, i32* %history_cur100, align 4
  %105 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_len101 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %105, i32 0, i32 8
  %106 = load i32, i32* %history_len101, align 4
  %cmp102 = icmp sge i32 %104, %106
  br i1 %cmp102, label %if.then.104, label %if.end.108

if.then.104:                                      ; preds = %if.end.99
  %107 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_len105 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %107, i32 0, i32 8
  %108 = load i32, i32* %history_len105, align 4
  %sub106 = sub nsw i32 %108, 1
  %109 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_cur107 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %109, i32 0, i32 9
  store i32 %sub106, i32* %history_cur107, align 4
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.104, %if.end.99
  %110 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %cc109 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %110, i32 0, i32 2
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %cc109, align 8
  %112 = bitcast %struct._GtkWidget* %111 to %struct._GTypeInstance*
  %call110 = call i64 @gtk_entry_get_type() #7
  %call111 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %112, i64 %call110)
  %113 = bitcast %struct._GTypeInstance* %call111 to %struct._GtkEntry*
  %114 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history112 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %114, i32 0, i32 7
  %115 = load %struct._GList*, %struct._GList** %history112, align 8
  %116 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %history_cur113 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %116, i32 0, i32 9
  %117 = load i32, i32* %history_cur113, align 4
  %call114 = call %struct._GList* @g_list_nth(%struct._GList* %115, i32 %117)
  %data115 = getelementptr inbounds %struct._GList, %struct._GList* %call114, i32 0, i32 0
  %118 = load i8*, i8** %data115, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %113, i8* %118)
  %119 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %cc116 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %119, i32 0, i32 2
  %120 = load %struct._GtkWidget*, %struct._GtkWidget** %cc116, align 8
  %121 = bitcast %struct._GtkWidget* %120 to %struct._GTypeInstance*
  %call117 = call i64 @gtk_editable_get_type() #7
  %call118 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %121, i64 %call117)
  %122 = bitcast %struct._GTypeInstance* %call118 to %struct._GtkEditable*
  call void @gtk_editable_set_position(%struct._GtkEditable* %122, i32 -1)
  store i32 1, i32* %retval
  br label %return

if.end.119:                                       ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.119, %if.end.108, %if.end.57, %if.then
  %123 = load i32, i32* %retval
  ret i32 %123
}

declare %struct._GtkWidget* @gtk_button_new_with_mnemonic(i8*) #1

declare void @gtk_misc_set_padding(%struct._GtkMisc*, i32, i32) #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #4

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #4

; Function Attrs: nounwind uwtable
define internal void @script_fu_browse_callback(%struct._GtkWidget* %widget, %struct.ConsoleInterface* %console) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %console.addr = alloca %struct.ConsoleInterface*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.ConsoleInterface* %console, %struct.ConsoleInterface** %console.addr, align 8
  %0 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %proc_browser = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %0, i32 0, i32 4
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_browser, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i32 0, i32 0)) #2
  %call1 = call %struct._GtkWidget* (i8*, i8*, void (i8*, i8*)*, i8*, ...) @gimp_proc_browser_dialog_new(i8* %call, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.28, i32 0, i32 0), void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i32 -10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i32 -7, i8* null)
  %2 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %proc_browser2 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %2, i32 0, i32 4
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %proc_browser2, align 8
  %3 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %proc_browser3 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %3, i32 0, i32 4
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_browser3, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_dialog_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call4)
  %6 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %6, i32 -10)
  %7 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %proc_browser6 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %7, i32 0, i32 4
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_browser6, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call7)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %10, i32 -7, i32 -10, i32 -1)
  %11 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %proc_browser9 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %11, i32 0, i32 4
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_browser9, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GObject*
  %15 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %proc_browser11 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %15, i32 0, i32 4
  %16 = bitcast %struct._GtkWidget** %proc_browser11 to i8*
  %17 = bitcast i8* %16 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %14, i8** %17)
  %18 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %proc_browser12 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %18, i32 0, i32 4
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_browser12, align 8
  %20 = bitcast %struct._GtkWidget* %19 to i8*
  %21 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %22 = bitcast %struct.ConsoleInterface* %21 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ConsoleInterface*)* @script_fu_browse_response to void ()*), i8* %22, void (i8*, %struct._GClosure*)* null, i32 0)
  %23 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %proc_browser14 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %23, i32 0, i32 4
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_browser14, align 8
  %25 = bitcast %struct._GtkWidget* %24 to i8*
  %26 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %27 = bitcast %struct.ConsoleInterface* %26 to i8*
  %call15 = call i64 @g_signal_connect_data(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (%struct._GtkDialog*)* @script_fu_browse_row_activated to void ()*), i8* %27, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %28 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %proc_browser16 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %28, i32 0, i32 4
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %proc_browser16, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_window_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call17)
  %31 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %31)
  ret void
}

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

declare void @gtk_main() #1

declare i32 @g_source_remove(i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_delete(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_console_save_dialog(%struct.ConsoleInterface* %console) #0 {
entry:
  %console.addr = alloca %struct.ConsoleInterface*, align 8
  store %struct.ConsoleInterface* %console, %struct.ConsoleInterface** %console.addr, align 8
  %0 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %save_dialog = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %0, i32 0, i32 5
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0)) #2
  %2 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %dialog = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %2, i32 0, i32 0
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_window_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call1)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkWindow*
  %call3 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call, %struct._GtkWindow* %5, i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 -5, i8* null)
  %6 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %save_dialog4 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %6, i32 0, i32 5
  store %struct._GtkWidget* %call3, %struct._GtkWidget** %save_dialog4, align 8
  %7 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %save_dialog5 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %7, i32 0, i32 5
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog5, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call6 = call i64 @gtk_dialog_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call6)
  %10 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %10, i32 -5, i32 -6, i32 -1)
  %11 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %save_dialog8 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %11, i32 0, i32 5
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog8, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_dialog_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %14, i32 -5)
  %15 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %save_dialog11 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %15, i32 0, i32 5
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog11, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_file_chooser_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkFileChooser*
  call void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser* %18, i32 1)
  %19 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %save_dialog14 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %19, i32 0, i32 5
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog14, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %23 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %save_dialog16 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %23, i32 0, i32 5
  %24 = bitcast %struct._GtkWidget** %save_dialog16 to i8*
  %25 = bitcast i8* %24 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %22, i8** %25)
  %26 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %save_dialog17 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %26, i32 0, i32 5
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog17, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %30 = bitcast %struct.ConsoleInterface* %29 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.ConsoleInterface*)* @script_fu_console_save_response to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %31 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %save_dialog19 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %31, i32 0, i32 5
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %save_dialog19, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_window_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %34)
  ret void
}

declare void @gtk_main_quit() #1

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #4

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

declare void @gtk_file_chooser_set_do_overwrite_confirmation(%struct._GtkFileChooser*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #4

; Function Attrs: nounwind uwtable
define internal void @script_fu_console_save_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct.ConsoleInterface* %console) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %console.addr = alloca %struct.ConsoleInterface*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  %filename = alloca i8*, align 8
  %str = alloca i8*, align 8
  %fh = alloca %struct._IO_FILE*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ConsoleInterface* %console, %struct.ConsoleInterface** %console.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -5
  br i1 %cmp, label %if.then, label %if.end.15

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkFileChooser*
  %call2 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %3)
  store i8* %call2, i8** %filename, align 8
  %4 = load i8*, i8** %filename, align 8
  %call3 = call %struct._IO_FILE* @fopen(i8* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  store %struct._IO_FILE* %call3, %struct._IO_FILE** %fh, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %tobool = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0)) #2
  %6 = load i8*, i8** %filename, align 8
  %call6 = call i8* @gimp_filename_to_utf8(i8* %6)
  %call7 = call i32* @__errno_location() #7
  %7 = load i32, i32* %call7, align 4
  %call8 = call i8* @g_strerror(i32 %7) #7
  call void (i8*, ...) @g_message(i8* %call5, i8* %call6, i8* %call8)
  %8 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %8)
  br label %return

if.end:                                           ; preds = %if.then
  %9 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %console9 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %9, i32 0, i32 1
  %10 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console9, align 8
  call void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer* %10, %struct._GtkTextIter* %start)
  %11 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %console10 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %11, i32 0, i32 1
  %12 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console10, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %12, %struct._GtkTextIter* %end)
  %13 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %console11 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %13, i32 0, i32 1
  %14 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console11, align 8
  %call12 = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %14, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 0)
  store i8* %call12, i8** %str, align 8
  %15 = load i8*, i8** %str, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call13 = call i32 @fputs(i8* %15, %struct._IO_FILE* %16)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fh, align 8
  %call14 = call i32 @fclose(%struct._IO_FILE* %17)
  %18 = load i8*, i8** %str, align 8
  call void @g_free(i8* %18)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %19)
  br label %return

return:                                           ; preds = %if.end.15, %if.then.4
  ret void
}

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

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
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #4

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare void @g_free(i8*) #1

declare i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @gtk_widget_hide(%struct._GtkWidget*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

; Function Attrs: nounwind uwtable
define internal i32 @script_fu_cc_is_empty(%struct.ConsoleInterface* %console) #0 {
entry:
  %retval = alloca i32, align 4
  %console.addr = alloca %struct.ConsoleInterface*, align 8
  %str = alloca i8*, align 8
  store %struct.ConsoleInterface* %console, %struct.ConsoleInterface** %console.addr, align 8
  %0 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %cc = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %0, i32 0, i32 2
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %cc, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkEntry*
  %call2 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %3)
  store i8* %call2, i8** %str, align 8
  %cmp = icmp eq i8* %call2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.13, %if.end
  %4 = load i8*, i8** %str, align 8
  %5 = load i8, i8* %4, align 1
  %tobool = icmp ne i8 %5, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %str, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp ne i32 %conv, 32
  br i1 %cmp3, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %while.body
  %8 = load i8*, i8** %str, align 8
  %9 = load i8, i8* %8, align 1
  %conv5 = sext i8 %9 to i32
  %cmp6 = icmp ne i32 %conv5, 9
  br i1 %cmp6, label %land.lhs.true.8, label %if.end.13

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %10 = load i8*, i8** %str, align 8
  %11 = load i8, i8* %10, align 1
  %conv9 = sext i8 %11 to i32
  %cmp10 = icmp ne i32 %conv9, 10
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true.8
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true.8, %land.lhs.true, %while.body
  %12 = load i8*, i8** %str, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %str, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.12, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare %struct._GList* @g_list_nth(%struct._GList*, i32) #1

declare i32 @g_list_length(%struct._GList*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #4

; Function Attrs: nounwind uwtable
define internal void @script_fu_console_scroll_end(%struct._GtkWidget* %view) #0 {
entry:
  %view.addr = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %view, %struct._GtkWidget** %view.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to i8*
  %call = call i8* @g_object_ref(i8* %1)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %3 = bitcast %struct._GtkWidget* %2 to i8*
  %call1 = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GtkWidget*)* @script_fu_console_idle_scroll_end to i32 (i8*)*), i8* %3)
  ret void
}

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

declare void @ts_register_output_func(void (i32, i8*, i32, i8*)*, i8*) #1

declare void @ts_gstring_output_func(i32, i8*, i32, i8*) #1

declare i32 @gimp_plugin_set_pdb_error_handler(i32) #1

declare i32 @ts_interpret_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_output_to_console(i32 %type, i8* %text, i32 %len, i8* %user_data) #0 {
entry:
  %type.addr = alloca i32, align 4
  %text.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %user_data.addr = alloca i8*, align 8
  %console = alloca %struct.ConsoleInterface*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %cursor = alloca %struct._GtkTextIter, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %text, i8** %text.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct.ConsoleInterface*
  store %struct.ConsoleInterface* %1, %struct.ConsoleInterface** %console, align 8
  %2 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console, align 8
  %tobool = icmp ne %struct.ConsoleInterface* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console, align 8
  %text_view = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %3, i32 0, i32 3
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view, align 8
  %tobool1 = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool1, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console, align 8
  %text_view2 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %5, i32 0, i32 3
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view2, align 8
  %7 = bitcast %struct._GtkWidget* %6 to %struct._GTypeInstance*
  %call = call i64 @gtk_text_view_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call)
  %8 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkTextView*
  %call4 = call %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView* %8)
  store %struct._GtkTextBuffer* %call4, %struct._GtkTextBuffer** %buffer, align 8
  %9 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %9, %struct._GtkTextIter* %cursor)
  %10 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  %11 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %12 = load i8*, i8** %text.addr, align 8
  %13 = load i32, i32* %len.addr, align 4
  call void @gtk_text_buffer_insert(%struct._GtkTextBuffer* %11, %struct._GtkTextIter* %cursor, i8* %12, i32 %13)
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console, align 8
  %console6 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %14, i32 0, i32 1
  %15 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %console6, align 8
  %16 = load i8*, i8** %text.addr, align 8
  %17 = load i32, i32* %len.addr, align 4
  call void (%struct._GtkTextBuffer*, %struct._GtkTextIter*, i8*, i32, i8*, ...) @gtk_text_buffer_insert_with_tags_by_name(%struct._GtkTextBuffer* %15, %struct._GtkTextIter* %cursor, i8* %16, i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), i8* null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  %18 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console, align 8
  %text_view7 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %18, i32 0, i32 3
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %text_view7, align 8
  call void @script_fu_console_scroll_end(%struct._GtkWidget* %19)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare i8* @g_string_free(%struct._GString*, i32) #1

declare i32 @gimp_displays_flush() #1

declare %struct._GList* @g_list_remove(%struct._GList*, i8*) #1

declare void @gtk_editable_set_position(%struct._GtkEditable*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_editable_get_type() #4

declare i8* @g_object_ref(i8*) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @script_fu_console_idle_scroll_end(%struct._GtkWidget* %view) #0 {
entry:
  %view.addr = alloca %struct._GtkWidget*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkAdjustment*, align 8
  store %struct._GtkWidget* %view, %struct._GtkWidget** %view.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %call = call %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %parent, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %3 = bitcast %struct._GtkWidget* %2 to %struct._GTypeInstance*
  %call1 = call i64 @gtk_scrolled_window_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 %call1)
  %4 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkScrolledWindow*
  %call3 = call %struct._GtkAdjustment* @gtk_scrolled_window_get_vadjustment(%struct._GtkScrolledWindow* %4)
  store %struct._GtkAdjustment* %call3, %struct._GtkAdjustment** %adj, align 8
  %5 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %6 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call4 = call double @gtk_adjustment_get_upper(%struct._GtkAdjustment* %6)
  %7 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %call5 = call double @gtk_adjustment_get_page_size(%struct._GtkAdjustment* %7)
  %sub = fsub double %call4, %call5
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %5, double %sub)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %view.addr, align 8
  %9 = bitcast %struct._GtkWidget* %8 to i8*
  call void @g_object_unref(i8* %9)
  ret i32 0
}

declare %struct._GtkWidget* @gtk_widget_get_parent(%struct._GtkWidget*) #1

declare %struct._GtkAdjustment* @gtk_scrolled_window_get_vadjustment(%struct._GtkScrolledWindow*) #1

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #1

declare double @gtk_adjustment_get_upper(%struct._GtkAdjustment*) #1

declare double @gtk_adjustment_get_page_size(%struct._GtkAdjustment*) #1

declare %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView*) #1

declare %struct._GtkWidget* @gimp_proc_browser_dialog_new(i8*, i8*, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_browse_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.ConsoleInterface* %console) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %console.addr = alloca %struct.ConsoleInterface*, align 8
  %dialog = alloca %struct._GimpProcBrowserDialog*, align 8
  %proc_name = alloca i8*, align 8
  %proc_blurb = alloca i8*, align 8
  %proc_help = alloca i8*, align 8
  %proc_author = alloca i8*, align 8
  %proc_copyright = alloca i8*, align 8
  %proc_date = alloca i8*, align 8
  %proc_type = alloca i32, align 4
  %n_params = alloca i32, align 4
  %n_return_vals = alloca i32, align 4
  %params = alloca %struct._GimpParamDef*, align 8
  %return_vals = alloca %struct._GimpParamDef*, align 8
  %i = alloca i32, align 4
  %text = alloca %struct._GString*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.ConsoleInterface* %console, %struct.ConsoleInterface** %console.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_proc_browser_dialog_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProcBrowserDialog*
  store %struct._GimpProcBrowserDialog* %2, %struct._GimpProcBrowserDialog** %dialog, align 8
  %3 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp ne i32 %3, -10
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %4)
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpProcBrowserDialog*, %struct._GimpProcBrowserDialog** %dialog, align 8
  %call2 = call i8* @gimp_proc_browser_dialog_get_selected(%struct._GimpProcBrowserDialog* %5)
  store i8* %call2, i8** %proc_name, align 8
  %6 = load i8*, i8** %proc_name, align 8
  %cmp3 = icmp eq i8* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  br label %return

if.end.5:                                         ; preds = %if.end
  %7 = load i8*, i8** %proc_name, align 8
  %call6 = call i32 @gimp_procedural_db_proc_info(i8* %7, i8** %proc_blurb, i8** %proc_help, i8** %proc_author, i8** %proc_copyright, i8** %proc_date, i32* %proc_type, i32* %n_params, i32* %n_return_vals, %struct._GimpParamDef** %params, %struct._GimpParamDef** %return_vals)
  %call7 = call %struct._GString* @g_string_new(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.31, i32 0, i32 0))
  store %struct._GString* %call7, %struct._GString** %text, align 8
  %8 = load %struct._GString*, %struct._GString** %text, align 8
  %9 = load i8*, i8** %proc_name, align 8
  %call8 = call %struct._GString* @g_string_append(%struct._GString* %8, i8* %9)
  store %struct._GString* %call8, %struct._GString** %text, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.5
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n_params, align 4
  %cmp9 = icmp slt i32 %10, %11
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GString*, %struct._GString** %text, align 8
  %call10 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %12, i8 signext 32)
  store %struct._GString* %call10, %struct._GString** %text, align 8
  %13 = load %struct._GString*, %struct._GString** %text, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %15, i64 %idxprom
  %name = getelementptr inbounds %struct._GimpParamDef, %struct._GimpParamDef* %arrayidx, i32 0, i32 1
  %16 = load i8*, i8** %name, align 8
  %call11 = call %struct._GString* @g_string_append(%struct._GString* %13, i8* %16)
  store %struct._GString* %call11, %struct._GString** %text, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._GString*, %struct._GString** %text, align 8
  %call12 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %18, i8 signext 41)
  store %struct._GString* %call12, %struct._GString** %text, align 8
  %19 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %dialog13 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %19, i32 0, i32 0
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog13, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  %23 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %cc = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %23, i32 0, i32 2
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %cc, align 8
  call void @gtk_window_set_focus(%struct._GtkWindow* %22, %struct._GtkWidget* %24)
  %25 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %cc16 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %25, i32 0, i32 2
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %cc16, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_entry_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call17)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkEntry*
  %29 = load %struct._GString*, %struct._GString** %text, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %29, i32 0, i32 0
  %30 = load i8*, i8** %str, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %28, i8* %30)
  %31 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %cc19 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %31, i32 0, i32 2
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %cc19, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_editable_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkEditable*
  %35 = load %struct._GString*, %struct._GString** %text, align 8
  %str22 = getelementptr inbounds %struct._GString, %struct._GString* %35, i32 0, i32 0
  %36 = load i8*, i8** %str22, align 8
  %37 = load %struct._GString*, %struct._GString** %text, align 8
  %str23 = getelementptr inbounds %struct._GString, %struct._GString* %37, i32 0, i32 0
  %38 = load i8*, i8** %str23, align 8
  %39 = load i8*, i8** %proc_name, align 8
  %call24 = call i64 @strlen(i8* %39) #8
  %add.ptr = getelementptr inbounds i8, i8* %38, i64 %call24
  %add.ptr25 = getelementptr inbounds i8, i8* %add.ptr, i64 2
  %call26 = call i64 @g_utf8_pointer_to_offset(i8* %36, i8* %add.ptr25) #8
  %conv = trunc i64 %call26 to i32
  call void @gtk_editable_set_position(%struct._GtkEditable* %34, i32 %conv)
  %40 = load %struct._GString*, %struct._GString** %text, align 8
  %call27 = call i8* @g_string_free(%struct._GString* %40, i32 1)
  %41 = load %struct.ConsoleInterface*, %struct.ConsoleInterface** %console.addr, align 8
  %dialog28 = getelementptr inbounds %struct.ConsoleInterface, %struct.ConsoleInterface* %41, i32 0, i32 0
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog28, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_window_get_type() #7
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call29)
  %44 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %44)
  %45 = load i8*, i8** %proc_name, align 8
  call void @g_free(i8* %45)
  %46 = load i8*, i8** %proc_blurb, align 8
  call void @g_free(i8* %46)
  %47 = load i8*, i8** %proc_help, align 8
  call void @g_free(i8* %47)
  %48 = load i8*, i8** %proc_author, align 8
  call void @g_free(i8* %48)
  %49 = load i8*, i8** %proc_copyright, align 8
  call void @g_free(i8* %49)
  %50 = load i8*, i8** %proc_date, align 8
  call void @g_free(i8* %50)
  %51 = load %struct._GimpParamDef*, %struct._GimpParamDef** %params, align 8
  %52 = load i32, i32* %n_params, align 4
  call void @gimp_destroy_paramdefs(%struct._GimpParamDef* %51, i32 %52)
  %53 = load %struct._GimpParamDef*, %struct._GimpParamDef** %return_vals, align 8
  %54 = load i32, i32* %n_return_vals, align 4
  call void @gimp_destroy_paramdefs(%struct._GimpParamDef* %53, i32 %54)
  br label %return

return:                                           ; preds = %for.end, %if.then.4, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @script_fu_browse_row_activated(%struct._GtkDialog* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._GtkDialog*, align 8
  store %struct._GtkDialog* %dialog, %struct._GtkDialog** %dialog.addr, align 8
  %0 = load %struct._GtkDialog*, %struct._GtkDialog** %dialog.addr, align 8
  call void @gtk_dialog_response(%struct._GtkDialog* %0, i32 -10)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_proc_browser_dialog_get_type() #4

declare i8* @gimp_proc_browser_dialog_get_selected(%struct._GimpProcBrowserDialog*) #1

declare i32 @gimp_procedural_db_proc_info(i8*, i8**, i8**, i8**, i8**, i8**, i32*, i32*, i32*, %struct._GimpParamDef**, %struct._GimpParamDef**) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #5 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

declare void @gtk_window_set_focus(%struct._GtkWindow*, %struct._GtkWidget*) #1

; Function Attrs: nounwind readonly
declare i64 @g_utf8_pointer_to_offset(i8*, i8*) #6

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare void @gimp_destroy_paramdefs(%struct._GimpParamDef*, i32) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare void @gtk_dialog_response(%struct._GtkDialog*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
