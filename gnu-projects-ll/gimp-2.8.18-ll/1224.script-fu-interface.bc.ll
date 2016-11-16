; ModuleID = './plug-ins/script-fu/script-fu-interface.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SFInterface = type { %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget**, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8*, i32, i32 }
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
%struct._GtkLabel = type { %struct._GtkMisc, i8*, i16, i32, i8*, %struct._PangoAttrList*, %struct._PangoAttrList*, %struct._PangoLayout*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkLabelSelectionInfo* }
%struct._GtkMisc = type { %struct._GtkWidget, float, float, i16, i16 }
%struct._PangoAttrList = type opaque
%struct._PangoLayout = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkLabelSelectionInfo = type opaque
%struct.SFScript = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.SFArg* }
%struct.SFArg = type { i32, i8*, %union.SFArgValue, %union.SFArgValue }
%union.SFArgValue = type { %struct.SFAdjustment }
%struct.SFAdjustment = type { %struct._GtkAdjustment*, double, double, double, double, double, i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkSizeGroup = type { %struct._GObject, %struct._GSList*, i8, i8, %struct._GtkRequisition }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkTable = type { %struct._GtkContainer, %struct._GList*, %struct._GtkTableRowCol*, %struct._GtkTableRowCol*, i16, i16, i16, i16, i8 }
%struct._GtkTableRowCol = type { i16, i16, i16, i8 }
%struct._GimpIntComboBox = type { %struct._GtkComboBox, i8*, void ()*, void ()*, void ()* }
%struct._GtkComboBox = type { %struct._GtkBin, %struct._GtkComboBoxPrivate* }
%struct._GtkComboBoxPrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpColorButton = type { %struct._GimpButton, i8*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8* }
%struct._GimpButton = type { %struct._GtkButton, i32 }
%struct._GtkButton = type { %struct._GtkBin, %struct._GdkDrawable*, i8*, i32, i16 }
%struct._GtkToggleButton = type { %struct._GtkButton, i8 }
%struct._GtkEntry = type { %struct._GtkWidget, i8*, i8, i16, i16, %struct._GdkDrawable*, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._PangoLayout*, i16, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32 }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkScrolledWindow = type { %struct._GtkBin, %struct._GtkWidget*, %struct._GtkWidget*, i16, i16 }
%struct._GtkTextView = type { %struct._GtkContainer, %struct._GtkTextLayout*, %struct._GtkTextBuffer*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i8, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkTextWindow*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, i32, i32, i32, i32, i32, i32, %struct._GtkTextMark*, i32, %struct._GtkTextMark*, i32, i32, i32, %struct._GtkIMContext*, %struct._GtkWidget*, i32, i32, %struct._GSList*, %struct._GtkTextPendingScroll*, i32 }
%struct._GtkTextLayout = type opaque
%struct._PangoTabArray = type opaque
%struct._GtkTextWindow = type opaque
%struct._GtkTextMark = type { %struct._GObject, i8* }
%struct._GtkTextPendingScroll = type opaque
%struct.SFFilename = type { i8* }
%struct._GtkFileChooser = type opaque
%struct.SFBrush = type { i8*, double, i32, i32 }
%struct.SFOption = type { %struct._GSList*, i32 }
%struct._GtkComboBoxText = type { %struct._GtkComboBox, %struct._GtkComboBoxTextPrivate* }
%struct._GtkComboBoxTextPrivate = type opaque
%struct.SFEnum = type { i8*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpSelectButton = type { %struct._GtkBox, i8* }
%struct._GimpFontSelectButton = type { %struct._GimpSelectButton }
%struct._GimpPaletteSelectButton = type { %struct._GimpSelectButton }
%struct._GimpPatternSelectButton = type { %struct._GimpSelectButton }
%struct._GimpGradientSelectButton = type { %struct._GimpSelectButton }
%struct._GimpBrushSelectButton = type { %struct._GimpSelectButton }
%struct._GString = type { i8*, i64, i64 }
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GdkAtom = type opaque

@sf_interface = internal global %struct.SFInterface* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"gimp-progress-\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s <%d>\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@script_fu_interface.gtk_initted = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"%s\0A\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"Script-Fu cannot process two scripts at the same time.\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"You are already running the \22%s\22 script.\00", align 1
@__func__.script_fu_interface = private unnamed_addr constant [20 x i8] c"script_fu_interface\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"script != NULL\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"gimp20-script-fu\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"script-fu\00", align 1
@sf_status = internal global i32 3, align 4
@.str.10 = private unnamed_addr constant [14 x i8] c"Script-Fu: %s\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"gimp-script-fu\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"gimp-reset\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"gtk-ok\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Script-Fu Color Selection\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"color-changed\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"toggled\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"spinbutton\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"unexpected adjustment type: %d\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Script-Fu File Selection\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"Script-Fu Folder Selection\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"selection-changed\00", align 1
@.str.27 = private unnamed_addr constant [25 x i8] c"Script-Fu Font Selection\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"font-set\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Script-Fu Palette Selection\00", align 1
@.str.30 = private unnamed_addr constant [12 x i8] c"palette-set\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"Script-Fu Pattern Selection\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"pattern-set\00", align 1
@.str.33 = private unnamed_addr constant [29 x i8] c"Script-Fu Gradient Selection\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"gradient-set\00", align 1
@.str.35 = private unnamed_addr constant [26 x i8] c"Script-Fu Brush Selection\00", align 1
@.str.36 = private unnamed_addr constant [10 x i8] c"brush-set\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"changed\00", align 1
@__func__.script_fu_interface_quit = private unnamed_addr constant [25 x i8] c"script_fu_interface_quit\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"sf_interface != NULL\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"Error while executing %s:\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"WM_TRANSIENT_FOR\00", align 1

; Function Attrs: nounwind uwtable
define i32 @script_fu_interface_is_active() #0 {
entry:
  %0 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %cmp = icmp ne %struct.SFInterface* %0, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define void @script_fu_interface_report_cc(i8* %command) #0 {
entry:
  %command.addr = alloca i8*, align 8
  %new_command = alloca i8*, align 8
  store i8* %command, i8** %command.addr, align 8
  %0 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %cmp = icmp eq %struct.SFInterface* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %while.end

if.end:                                           ; preds = %entry
  %1 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %last_command = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %1, i32 0, i32 6
  %2 = load i8*, i8** %last_command, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %3 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %last_command1 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %3, i32 0, i32 6
  %4 = load i8*, i8** %last_command1, align 8
  %5 = load i8*, i8** %command.addr, align 8
  %call = call i32 @strcmp(i8* %4, i8* %5) #6
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %command_count = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %6, i32 0, i32 7
  %7 = load i32, i32* %command_count, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %command_count, align 4
  %8 = load i8*, i8** %command.addr, align 8
  %call4 = call i32 @g_str_has_prefix(i8* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.11, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  %9 = load i8*, i8** %command.addr, align 8
  %10 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %command_count7 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %10, i32 0, i32 7
  %11 = load i32, i32* %command_count7, align 4
  %call8 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* %9, i32 %11)
  store i8* %call8, i8** %new_command, align 8
  %12 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_label = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %12, i32 0, i32 3
  %13 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_label, align 8
  %14 = bitcast %struct._GtkWidget* %13 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_label_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call9)
  %15 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkLabel*
  %16 = load i8*, i8** %new_command, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %15, i8* %16)
  %17 = load i8*, i8** %new_command, align 8
  call void @g_free(i8* %17)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.6, %if.then.3
  br label %if.end.27

if.else:                                          ; preds = %land.lhs.true, %if.end
  %18 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %command_count12 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %18, i32 0, i32 7
  store i32 1, i32* %command_count12, align 4
  %19 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %last_command13 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %19, i32 0, i32 6
  %20 = load i8*, i8** %last_command13, align 8
  call void @g_free(i8* %20)
  %21 = load i8*, i8** %command.addr, align 8
  %call14 = call noalias i8* @g_strdup(i8* %21)
  %22 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %last_command15 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %22, i32 0, i32 6
  store i8* %call14, i8** %last_command15, align 8
  %23 = load i8*, i8** %command.addr, align 8
  %call16 = call i32 @g_str_has_prefix(i8* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.else.22, label %if.then.18

if.then.18:                                       ; preds = %if.else
  %24 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_label19 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %24, i32 0, i32 3
  %25 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_label19, align 8
  %26 = bitcast %struct._GtkWidget* %25 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_label_get_type() #7
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 %call20)
  %27 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkLabel*
  %28 = load i8*, i8** %command.addr, align 8
  call void @gtk_label_set_text(%struct._GtkLabel* %27, i8* %28)
  br label %if.end.26

if.else.22:                                       ; preds = %if.else
  %29 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_label23 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %29, i32 0, i32 3
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_label23, align 8
  %31 = bitcast %struct._GtkWidget* %30 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_label_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call24)
  %32 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkLabel*
  call void @gtk_label_set_text(%struct._GtkLabel* %32, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.22, %if.then.18
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.end.11
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.27
  %call28 = call i32 @gtk_events_pending()
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call30 = call i32 @gtk_main_iteration()
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare i32 @g_str_has_prefix(i8*, i8*) #2

declare noalias i8* @g_strdup_printf(i8*, ...) #2

declare void @gtk_label_set_text(%struct._GtkLabel*, i8*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_label_get_type() #3

declare void @g_free(i8*) #2

declare noalias i8* @g_strdup(i8*) #2

declare i32 @gtk_events_pending() #2

declare i32 @gtk_main_iteration() #2

; Function Attrs: nounwind uwtable
define i32 @script_fu_interface(%struct.SFScript* %script, i32 %start_arg) #0 {
entry:
  %retval = alloca i32, align 4
  %script.addr = alloca %struct.SFScript*, align 8
  %start_arg.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  %vbox = alloca %struct._GtkWidget*, align 8
  %vbox2 = alloca %struct._GtkWidget*, align 8
  %group = alloca %struct._GtkSizeGroup*, align 8
  %list = alloca %struct._GSList*, align 8
  %title = alloca i8*, align 8
  %i = alloca i32, align 4
  %message = alloca i8*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %adj = alloca %struct._GtkObject*, align 8
  %label_text = alloca i8*, align 8
  %label_yalign = alloca float, align 4
  %ID_ptr = alloca i32*, align 8
  %row = alloca i32, align 4
  %left_align = alloca i32, align 4
  %arg = alloca %struct.SFArg*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  store i32 %start_arg, i32* %start_arg.addr, align 4
  %0 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %cmp = icmp ne %struct.SFInterface* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0)) #5
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0)) #5
  %call2 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %call, i8* %call1)
  store i8* %call2, i8** %message, align 8
  %1 = load i8*, i8** %message, align 8
  %2 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %title3 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %2, i32 0, i32 5
  %3 = load i8*, i8** %title3, align 8
  call void (i8*, ...) @g_message(i8* %1, i8* %3)
  %4 = load i8*, i8** %message, align 8
  call void @g_free(i8* %4)
  store i32 4, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %cmp4 = icmp ne %struct.SFScript* %5, null
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.script_fu_interface, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %6 = load i32, i32* @script_fu_interface.gtk_initted, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.14, label %if.then.7

if.then.7:                                        ; preds = %do.end
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %call9 = call i8* @gimp_locale_directory() #7
  %call10 = call i8* @bindtextdomain(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* %call9) #5
  %call11 = call i8* @bind_textdomain_codeset(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0)) #5
  %call12 = call i8* @textdomain(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)) #5
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.8
  call void @gimp_ui_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 1)
  store i32 1, i32* @script_fu_interface.gtk_initted, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %do.end.13, %do.end
  store i32 3, i32* @sf_status, align 4
  %call15 = call noalias i8* @g_slice_alloc0(i64 64)
  %7 = bitcast i8* %call15 to %struct.SFInterface*
  store %struct.SFInterface* %7, %struct.SFInterface** @sf_interface, align 8
  %8 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %8, i32 0, i32 7
  %9 = load i32, i32* %n_args, align 4
  %conv = sext i32 %9 to i64
  %call16 = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %10 = bitcast i8* %call16 to %struct._GtkWidget**
  %11 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %widgets = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %11, i32 0, i32 2
  store %struct._GtkWidget** %10, %struct._GtkWidget*** %widgets, align 8
  %12 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %call17 = call i8* @script_fu_script_get_title(%struct.SFScript* %12)
  %13 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %title18 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %13, i32 0, i32 5
  store i8* %call17, i8** %title18, align 8
  %call19 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0)) #5
  %14 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %title20 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %14, i32 0, i32 5
  %15 = load i8*, i8** %title20, align 8
  %call21 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call19, i8* %15)
  store i8* %call21, i8** %title, align 8
  %16 = load i8*, i8** %title, align 8
  %17 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %name = getelementptr inbounds %struct.SFScript, %struct.SFScript* %17, i32 0, i32 0
  %18 = load i8*, i8** %name, align 8
  %call22 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_dialog_new(i8* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), %struct._GtkWidget* null, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %dialog, align 8
  %19 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %dialog23 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %19, i32 0, i32 0
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %dialog23, align 8
  %20 = load i8*, i8** %title, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_dialog_get_type() #7
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call24)
  %23 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %23, i32 1, i32 -5, i32 -6, i32 -1)
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call26 = call i64 @gtk_window_get_type() #7
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call26)
  %26 = bitcast %struct._GTypeInstance* %call27 to %struct._GtkWindow*
  call void @gimp_window_set_transient(%struct._GtkWindow* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %28 = bitcast %struct._GtkWidget* %27 to i8*
  %29 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %30 = bitcast %struct.SFScript* %29 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct.SFScript*)* @script_fu_response to void ()*), i8* %30, void (i8*, %struct._GClosure*)* null, i32 0)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %32 = bitcast %struct._GtkWidget* %31 to i8*
  %33 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %34 = bitcast %struct.SFScript* %33 to i8*
  %call29 = call i64 @g_signal_connect_data(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), void ()* bitcast (void (%struct.SFScript*)* @script_fu_interface_quit to void ()*), i8* %34, void (i8*, %struct._GClosure*)* null, i32 2)
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call30 = call i64 @gtk_window_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call30)
  %37 = bitcast %struct._GTypeInstance* %call31 to %struct._GtkWindow*
  call void @gtk_window_set_resizable(%struct._GtkWindow* %37, i32 1)
  %call32 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 12)
  store %struct._GtkWidget* %call32, %struct._GtkWidget** %vbox, align 8
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %39 = bitcast %struct._GtkWidget* %38 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_container_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call33)
  %40 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkContainer*
  call void @gtk_container_set_border_width(%struct._GtkContainer* %40, i32 12)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call35 = call i64 @gtk_dialog_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call35)
  %43 = bitcast %struct._GTypeInstance* %call36 to %struct._GtkDialog*
  %call37 = call %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog* %43)
  %44 = bitcast %struct._GtkWidget* %call37 to %struct._GTypeInstance*
  %call38 = call i64 @gtk_box_get_type() #7
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %44, i64 %call38)
  %45 = bitcast %struct._GTypeInstance* %call39 to %struct._GtkBox*
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %45, %struct._GtkWidget* %46, i32 1, i32 1, i32 0)
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %47)
  %48 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args40 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %48, i32 0, i32 7
  %49 = load i32, i32* %n_args40, align 4
  %50 = load i32, i32* %start_arg.addr, align 4
  %sub = sub nsw i32 %49, %50
  %call41 = call %struct._GtkWidget* @gtk_table_new(i32 %sub, i32 3, i32 0)
  %51 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %table = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %51, i32 0, i32 1
  store %struct._GtkWidget* %call41, %struct._GtkWidget** %table, align 8
  %52 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %table42 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %52, i32 0, i32 1
  %53 = load %struct._GtkWidget*, %struct._GtkWidget** %table42, align 8
  %54 = bitcast %struct._GtkWidget* %53 to %struct._GTypeInstance*
  %call43 = call i64 @gtk_table_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call43)
  %55 = bitcast %struct._GTypeInstance* %call44 to %struct._GtkTable*
  call void @gtk_table_set_col_spacings(%struct._GtkTable* %55, i32 6)
  %56 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %table45 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %56, i32 0, i32 1
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %table45, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call46 = call i64 @gtk_table_get_type() #7
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call46)
  %59 = bitcast %struct._GTypeInstance* %call47 to %struct._GtkTable*
  call void @gtk_table_set_row_spacings(%struct._GtkTable* %59, i32 6)
  %60 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %61 = bitcast %struct._GtkWidget* %60 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_box_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %61, i64 %call48)
  %62 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkBox*
  %63 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %table50 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %63, i32 0, i32 1
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %table50, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %62, %struct._GtkWidget* %64, i32 0, i32 0, i32 0)
  %65 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %table51 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %65, i32 0, i32 1
  %66 = load %struct._GtkWidget*, %struct._GtkWidget** %table51, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %66)
  %call52 = call %struct._GtkSizeGroup* @gtk_size_group_new(i32 1)
  store %struct._GtkSizeGroup* %call52, %struct._GtkSizeGroup** %group, align 8
  %67 = load i32, i32* %start_arg.addr, align 4
  store i32 %67, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.307, %if.end.14
  %68 = load i32, i32* %i, align 4
  %69 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args53 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %69, i32 0, i32 7
  %70 = load i32, i32* %n_args53, align 4
  %cmp54 = icmp slt i32 %68, %70
  br i1 %cmp54, label %for.body, label %for.end.308

for.body:                                         ; preds = %for.cond
  store %struct._GtkWidget* null, %struct._GtkWidget** %widget, align 8
  store float 5.000000e-01, float* %label_yalign, align 4
  store i32* null, i32** %ID_ptr, align 8
  %71 = load i32, i32* %i, align 4
  store i32 %71, i32* %row, align 4
  store i32 0, i32* %left_align, align 4
  %72 = load i32, i32* %i, align 4
  %idxprom = sext i32 %72 to i64
  %73 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %73, i32 0, i32 8
  %74 = load %struct.SFArg*, %struct.SFArg** %args, align 8
  %arrayidx = getelementptr inbounds %struct.SFArg, %struct.SFArg* %74, i64 %idxprom
  store %struct.SFArg* %arrayidx, %struct.SFArg** %arg, align 8
  %75 = load i32, i32* %start_arg.addr, align 4
  %76 = load i32, i32* %row, align 4
  %sub56 = sub nsw i32 %76, %75
  store i32 %sub56, i32* %row, align 4
  %call57 = call i8* @gettext(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #5
  %77 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %label = getelementptr inbounds %struct.SFArg, %struct.SFArg* %77, i32 0, i32 1
  %78 = load i8*, i8** %label, align 8
  %call58 = call i8* @gettext(i8* %78) #5
  %call59 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call57, i8* %call58)
  store i8* %call59, i8** %label_text, align 8
  %79 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %type = getelementptr inbounds %struct.SFArg, %struct.SFArg* %79, i32 0, i32 0
  %80 = load i32, i32* %type, align 4
  switch i32 %80, label %sw.epilog.286 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 5, label %sw.bb.78
    i32 6, label %sw.bb.87
    i32 7, label %sw.bb.97
    i32 8, label %sw.bb.97
    i32 18, label %sw.bb.104
    i32 9, label %sw.bb.120
    i32 14, label %sw.bb.187
    i32 15, label %sw.bb.187
    i32 10, label %sw.bb.211
    i32 17, label %sw.bb.218
    i32 11, label %sw.bb.225
    i32 13, label %sw.bb.232
    i32 12, label %sw.bb.239
    i32 16, label %sw.bb.253
    i32 19, label %sw.bb.271
    i32 20, label %sw.bb.285
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  %81 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %type60 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %81, i32 0, i32 0
  %82 = load i32, i32* %type60, align 4
  switch i32 %82, label %sw.default [
    i32 0, label %sw.bb.61
    i32 1, label %sw.bb.63
    i32 2, label %sw.bb.66
    i32 3, label %sw.bb.69
    i32 4, label %sw.bb.72
  ]

sw.bb.61:                                         ; preds = %sw.bb
  %call62 = call %struct._GtkWidget* @gimp_image_combo_box_new(i32 (i32, i8*)* null, i8* null)
  store %struct._GtkWidget* %call62, %struct._GtkWidget** %widget, align 8
  %83 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value = getelementptr inbounds %struct.SFArg, %struct.SFArg* %83, i32 0, i32 3
  %sfa_image = bitcast %union.SFArgValue* %value to i32*
  store i32* %sfa_image, i32** %ID_ptr, align 8
  br label %sw.epilog

sw.bb.63:                                         ; preds = %sw.bb
  %call64 = call %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)* null, i8* null)
  store %struct._GtkWidget* %call64, %struct._GtkWidget** %widget, align 8
  %84 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value65 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %84, i32 0, i32 3
  %sfa_drawable = bitcast %union.SFArgValue* %value65 to i32*
  store i32* %sfa_drawable, i32** %ID_ptr, align 8
  br label %sw.epilog

sw.bb.66:                                         ; preds = %sw.bb
  %call67 = call %struct._GtkWidget* @gimp_layer_combo_box_new(i32 (i32, i32, i8*)* null, i8* null)
  store %struct._GtkWidget* %call67, %struct._GtkWidget** %widget, align 8
  %85 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value68 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %85, i32 0, i32 3
  %sfa_layer = bitcast %union.SFArgValue* %value68 to i32*
  store i32* %sfa_layer, i32** %ID_ptr, align 8
  br label %sw.epilog

sw.bb.69:                                         ; preds = %sw.bb
  %call70 = call %struct._GtkWidget* @gimp_channel_combo_box_new(i32 (i32, i32, i8*)* null, i8* null)
  store %struct._GtkWidget* %call70, %struct._GtkWidget** %widget, align 8
  %86 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value71 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %86, i32 0, i32 3
  %sfa_channel = bitcast %union.SFArgValue* %value71 to i32*
  store i32* %sfa_channel, i32** %ID_ptr, align 8
  br label %sw.epilog

sw.bb.72:                                         ; preds = %sw.bb
  %call73 = call %struct._GtkWidget* @gimp_vectors_combo_box_new(i32 (i32, i32, i8*)* null, i8* null)
  store %struct._GtkWidget* %call73, %struct._GtkWidget** %widget, align 8
  %87 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value74 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %87, i32 0, i32 3
  %sfa_vectors = bitcast %union.SFArgValue* %value74 to i32*
  store i32* %sfa_vectors, i32** %ID_ptr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.72, %sw.bb.69, %sw.bb.66, %sw.bb.63, %sw.bb.61
  %88 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %89 = bitcast %struct._GtkWidget* %88 to %struct._GTypeInstance*
  %call75 = call i64 @gimp_int_combo_box_get_type() #7
  %call76 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %89, i64 %call75)
  %90 = bitcast %struct._GTypeInstance* %call76 to %struct._GimpIntComboBox*
  %91 = load i32*, i32** %ID_ptr, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %ID_ptr, align 8
  %94 = bitcast i32* %93 to i8*
  %call77 = call i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox* %90, i32 %92, void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %94)
  br label %sw.epilog.286

sw.bb.78:                                         ; preds = %for.body
  store i32 1, i32* %left_align, align 4
  %call79 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.18, i32 0, i32 0)) #5
  %95 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value80 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %95, i32 0, i32 3
  %sfa_color = bitcast %union.SFArgValue* %value80 to %struct._GimpRGB*
  %call81 = call %struct._GtkWidget* @gimp_color_button_new(i8* %call79, i32 60, i32 15, %struct._GimpRGB* %sfa_color, i32 0)
  store %struct._GtkWidget* %call81, %struct._GtkWidget** %widget, align 8
  %96 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %97 = bitcast %struct._GtkWidget* %96 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_color_button_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %97, i64 %call82)
  %98 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpColorButton*
  call void @gimp_color_button_set_update(%struct._GimpColorButton* %98, i32 1)
  %99 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %100 = bitcast %struct._GtkWidget* %99 to i8*
  %101 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value84 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %101, i32 0, i32 3
  %sfa_color85 = bitcast %union.SFArgValue* %value84 to %struct._GimpRGB*
  %102 = bitcast %struct._GimpRGB* %sfa_color85 to i8*
  %call86 = call i64 @g_signal_connect_data(i8* %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0), void ()* bitcast (void (%struct._GimpColorButton*, %struct._GimpRGB*)* @gimp_color_button_get_color to void ()*), i8* %102, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %sw.epilog.286

sw.bb.87:                                         ; preds = %for.body
  %103 = load i8*, i8** %label_text, align 8
  call void @g_free(i8* %103)
  store i8* null, i8** %label_text, align 8
  %104 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %label88 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %104, i32 0, i32 1
  %105 = load i8*, i8** %label88, align 8
  %call89 = call i8* @gettext(i8* %105) #5
  %call90 = call %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8* %call89)
  store %struct._GtkWidget* %call90, %struct._GtkWidget** %widget, align 8
  %106 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %107 = bitcast %struct._GtkWidget* %106 to %struct._GTypeInstance*
  %call91 = call i64 @gtk_toggle_button_get_type() #7
  %call92 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %107, i64 %call91)
  %108 = bitcast %struct._GTypeInstance* %call92 to %struct._GtkToggleButton*
  %109 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value93 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %109, i32 0, i32 3
  %sfa_toggle = bitcast %union.SFArgValue* %value93 to i32*
  %110 = load i32, i32* %sfa_toggle, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %108, i32 %110)
  %111 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %112 = bitcast %struct._GtkWidget* %111 to i8*
  %113 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value94 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %113, i32 0, i32 3
  %sfa_toggle95 = bitcast %union.SFArgValue* %value94 to i32*
  %114 = bitcast i32* %sfa_toggle95 to i8*
  %call96 = call i64 @g_signal_connect_data(i8* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i8*)* @gimp_toggle_button_update to void ()*), i8* %114, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %sw.epilog.286

sw.bb.97:                                         ; preds = %for.body, %for.body
  %call98 = call %struct._GtkWidget* @gtk_entry_new()
  store %struct._GtkWidget* %call98, %struct._GtkWidget** %widget, align 8
  %115 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %115, i32 100, i32 -1)
  %116 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %117 = bitcast %struct._GtkWidget* %116 to %struct._GTypeInstance*
  %call99 = call i64 @gtk_entry_get_type() #7
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %117, i64 %call99)
  %118 = bitcast %struct._GTypeInstance* %call100 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %118, i32 1)
  %119 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %120 = bitcast %struct._GtkWidget* %119 to %struct._GTypeInstance*
  %call101 = call i64 @gtk_entry_get_type() #7
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %120, i64 %call101)
  %121 = bitcast %struct._GTypeInstance* %call102 to %struct._GtkEntry*
  %122 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value103 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %122, i32 0, i32 3
  %sfa_value = bitcast %union.SFArgValue* %value103 to i8**
  %123 = load i8*, i8** %sfa_value, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %121, i8* %123)
  br label %sw.epilog.286

sw.bb.104:                                        ; preds = %for.body
  %call105 = call %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment* null, %struct._GtkAdjustment* null)
  store %struct._GtkWidget* %call105, %struct._GtkWidget** %widget, align 8
  %124 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %125 = bitcast %struct._GtkWidget* %124 to %struct._GTypeInstance*
  %call106 = call i64 @gtk_scrolled_window_get_type() #7
  %call107 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %125, i64 %call106)
  %126 = bitcast %struct._GTypeInstance* %call107 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow* %126, i32 1)
  %127 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %128 = bitcast %struct._GtkWidget* %127 to %struct._GTypeInstance*
  %call108 = call i64 @gtk_scrolled_window_get_type() #7
  %call109 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %128, i64 %call108)
  %129 = bitcast %struct._GTypeInstance* %call109 to %struct._GtkScrolledWindow*
  call void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow* %129, i32 1, i32 1)
  %130 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %130, i32 100, i32 -1)
  %call110 = call %struct._GtkWidget* @gtk_text_view_new()
  store %struct._GtkWidget* %call110, %struct._GtkWidget** %view, align 8
  %131 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %132 = bitcast %struct._GtkWidget* %131 to %struct._GTypeInstance*
  %call111 = call i64 @gtk_container_get_type() #7
  %call112 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %132, i64 %call111)
  %133 = bitcast %struct._GTypeInstance* %call112 to %struct._GtkContainer*
  %134 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_container_add(%struct._GtkContainer* %133, %struct._GtkWidget* %134)
  %135 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %135)
  %136 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %137 = bitcast %struct._GtkWidget* %136 to %struct._GTypeInstance*
  %call113 = call i64 @gtk_text_view_get_type() #7
  %call114 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %137, i64 %call113)
  %138 = bitcast %struct._GTypeInstance* %call114 to %struct._GtkTextView*
  %call115 = call %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView* %138)
  store %struct._GtkTextBuffer* %call115, %struct._GtkTextBuffer** %buffer, align 8
  %139 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %140 = bitcast %struct._GtkWidget* %139 to %struct._GTypeInstance*
  %call116 = call i64 @gtk_text_view_get_type() #7
  %call117 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %140, i64 %call116)
  %141 = bitcast %struct._GTypeInstance* %call117 to %struct._GtkTextView*
  call void @gtk_text_view_set_editable(%struct._GtkTextView* %141, i32 1)
  %142 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %143 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value118 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %143, i32 0, i32 3
  %sfa_value119 = bitcast %union.SFArgValue* %value118 to i8**
  %144 = load i8*, i8** %sfa_value119, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %142, i8* %144, i32 -1)
  store float 0.000000e+00, float* %label_yalign, align 4
  br label %sw.epilog.286

sw.bb.120:                                        ; preds = %for.body
  %145 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value = getelementptr inbounds %struct.SFArg, %struct.SFArg* %145, i32 0, i32 2
  %sfa_adjustment = bitcast %union.SFArgValue* %default_value to %struct.SFAdjustment*
  %type121 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment, i32 0, i32 7
  %146 = load i32, i32* %type121, align 4
  switch i32 %146, label %sw.default.148 [
    i32 0, label %sw.bb.122
    i32 1, label %sw.bb.152
  ]

sw.bb.122:                                        ; preds = %sw.bb.120
  %147 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %table123 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %147, i32 0, i32 1
  %148 = load %struct._GtkWidget*, %struct._GtkWidget** %table123, align 8
  %149 = bitcast %struct._GtkWidget* %148 to %struct._GTypeInstance*
  %call124 = call i64 @gtk_table_get_type() #7
  %call125 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %149, i64 %call124)
  %150 = bitcast %struct._GTypeInstance* %call125 to %struct._GtkTable*
  %151 = load i32, i32* %row, align 4
  %152 = load i8*, i8** %label_text, align 8
  %153 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value126 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %153, i32 0, i32 3
  %sfa_adjustment127 = bitcast %union.SFArgValue* %value126 to %struct.SFAdjustment*
  %value128 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment127, i32 0, i32 1
  %154 = load double, double* %value128, align 8
  %155 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value129 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %155, i32 0, i32 2
  %sfa_adjustment130 = bitcast %union.SFArgValue* %default_value129 to %struct.SFAdjustment*
  %lower = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment130, i32 0, i32 2
  %156 = load double, double* %lower, align 8
  %157 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value131 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %157, i32 0, i32 2
  %sfa_adjustment132 = bitcast %union.SFArgValue* %default_value131 to %struct.SFAdjustment*
  %upper = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment132, i32 0, i32 3
  %158 = load double, double* %upper, align 8
  %159 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value133 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %159, i32 0, i32 2
  %sfa_adjustment134 = bitcast %union.SFArgValue* %default_value133 to %struct.SFAdjustment*
  %step = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment134, i32 0, i32 4
  %160 = load double, double* %step, align 8
  %161 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value135 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %161, i32 0, i32 2
  %sfa_adjustment136 = bitcast %union.SFArgValue* %default_value135 to %struct.SFAdjustment*
  %page = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment136, i32 0, i32 5
  %162 = load double, double* %page, align 8
  %163 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value137 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %163, i32 0, i32 2
  %sfa_adjustment138 = bitcast %union.SFArgValue* %default_value137 to %struct.SFAdjustment*
  %digits = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment138, i32 0, i32 6
  %164 = load i32, i32* %digits, align 4
  %call139 = call %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable* %150, i32 0, i32 %151, i8* %152, i32 80, i32 -1, double %154, double %156, double %158, double %160, double %162, i32 %164, i32 1, double 0.000000e+00, double 0.000000e+00, i8* null, i8* null)
  %165 = bitcast %struct._GtkObject* %call139 to %struct._GtkAdjustment*
  %166 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value140 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %166, i32 0, i32 3
  %sfa_adjustment141 = bitcast %union.SFArgValue* %value140 to %struct.SFAdjustment*
  %adj142 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment141, i32 0, i32 0
  store %struct._GtkAdjustment* %165, %struct._GtkAdjustment** %adj142, align 8
  %167 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value143 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %167, i32 0, i32 3
  %sfa_adjustment144 = bitcast %union.SFArgValue* %value143 to %struct.SFAdjustment*
  %adj145 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment144, i32 0, i32 0
  %168 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj145, align 8
  %169 = bitcast %struct._GtkAdjustment* %168 to %struct._GTypeInstance*
  %call146 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %169, i64 80)
  %170 = bitcast %struct._GTypeInstance* %call146 to %struct._GObject*
  %call147 = call i8* @g_object_get_data(%struct._GObject* %170, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0))
  %171 = bitcast i8* %call147 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %171, i32 1)
  br label %sw.epilog.179

sw.default.148:                                   ; preds = %sw.bb.120
  %172 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value149 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %172, i32 0, i32 2
  %sfa_adjustment150 = bitcast %union.SFArgValue* %default_value149 to %struct.SFAdjustment*
  %type151 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment150, i32 0, i32 7
  %173 = load i32, i32* %type151, align 4
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i32 0, i32 0), i32 %173)
  br label %sw.bb.152

sw.bb.152:                                        ; preds = %sw.bb.120, %sw.default.148
  store i32 1, i32* %left_align, align 4
  %174 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value153 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %174, i32 0, i32 3
  %sfa_adjustment154 = bitcast %union.SFArgValue* %value153 to %struct.SFAdjustment*
  %value155 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment154, i32 0, i32 1
  %175 = load double, double* %value155, align 8
  %176 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value156 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %176, i32 0, i32 2
  %sfa_adjustment157 = bitcast %union.SFArgValue* %default_value156 to %struct.SFAdjustment*
  %lower158 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment157, i32 0, i32 2
  %177 = load double, double* %lower158, align 8
  %178 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value159 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %178, i32 0, i32 2
  %sfa_adjustment160 = bitcast %union.SFArgValue* %default_value159 to %struct.SFAdjustment*
  %upper161 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment160, i32 0, i32 3
  %179 = load double, double* %upper161, align 8
  %180 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value162 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %180, i32 0, i32 2
  %sfa_adjustment163 = bitcast %union.SFArgValue* %default_value162 to %struct.SFAdjustment*
  %step164 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment163, i32 0, i32 4
  %181 = load double, double* %step164, align 8
  %182 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value165 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %182, i32 0, i32 2
  %sfa_adjustment166 = bitcast %union.SFArgValue* %default_value165 to %struct.SFAdjustment*
  %page167 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment166, i32 0, i32 5
  %183 = load double, double* %page167, align 8
  %184 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value168 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %184, i32 0, i32 2
  %sfa_adjustment169 = bitcast %union.SFArgValue* %default_value168 to %struct.SFAdjustment*
  %digits170 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment169, i32 0, i32 6
  %185 = load i32, i32* %digits170, align 4
  %call171 = call %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject** %adj, double %175, double %177, double %179, double %181, double %183, double 0.000000e+00, double 0.000000e+00, i32 %185)
  store %struct._GtkWidget* %call171, %struct._GtkWidget** %widget, align 8
  %186 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %187 = bitcast %struct._GtkWidget* %186 to %struct._GTypeInstance*
  %call172 = call i64 @gtk_entry_get_type() #7
  %call173 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %187, i64 %call172)
  %188 = bitcast %struct._GTypeInstance* %call173 to %struct._GtkEntry*
  call void @gtk_entry_set_activates_default(%struct._GtkEntry* %188, i32 1)
  %189 = load %struct._GtkObject*, %struct._GtkObject** %adj, align 8
  %190 = bitcast %struct._GtkObject* %189 to %struct._GTypeInstance*
  %call174 = call i64 @gtk_adjustment_get_type() #7
  %call175 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %190, i64 %call174)
  %191 = bitcast %struct._GTypeInstance* %call175 to %struct._GtkAdjustment*
  %192 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value176 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %192, i32 0, i32 3
  %sfa_adjustment177 = bitcast %union.SFArgValue* %value176 to %struct.SFAdjustment*
  %adj178 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment177, i32 0, i32 0
  store %struct._GtkAdjustment* %191, %struct._GtkAdjustment** %adj178, align 8
  br label %sw.epilog.179

sw.epilog.179:                                    ; preds = %sw.bb.152, %sw.bb.122
  %193 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value180 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %193, i32 0, i32 3
  %sfa_adjustment181 = bitcast %union.SFArgValue* %value180 to %struct.SFAdjustment*
  %adj182 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment181, i32 0, i32 0
  %194 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj182, align 8
  %195 = bitcast %struct._GtkAdjustment* %194 to i8*
  %196 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value183 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %196, i32 0, i32 3
  %sfa_adjustment184 = bitcast %union.SFArgValue* %value183 to %struct.SFAdjustment*
  %value185 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment184, i32 0, i32 1
  %197 = bitcast double* %value185 to i8*
  %call186 = call i64 @g_signal_connect_data(i8* %195, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), void ()* bitcast (void (%struct._GtkAdjustment*, i8*)* @gimp_double_adjustment_update to void ()*), i8* %197, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %sw.epilog.286

sw.bb.187:                                        ; preds = %for.body, %for.body
  %198 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %type188 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %198, i32 0, i32 0
  %199 = load i32, i32* %type188, align 4
  %cmp189 = icmp eq i32 %199, 14
  br i1 %cmp189, label %if.then.191, label %if.else.194

if.then.191:                                      ; preds = %sw.bb.187
  %call192 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.24, i32 0, i32 0)) #5
  %call193 = call %struct._GtkWidget* @gtk_file_chooser_button_new(i8* %call192, i32 0)
  store %struct._GtkWidget* %call193, %struct._GtkWidget** %widget, align 8
  br label %if.end.197

if.else.194:                                      ; preds = %sw.bb.187
  %call195 = call i8* @gettext(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0)) #5
  %call196 = call %struct._GtkWidget* @gtk_file_chooser_button_new(i8* %call195, i32 2)
  store %struct._GtkWidget* %call196, %struct._GtkWidget** %widget, align 8
  br label %if.end.197

if.end.197:                                       ; preds = %if.else.194, %if.then.191
  %200 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value198 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %200, i32 0, i32 3
  %sfa_file = bitcast %union.SFArgValue* %value198 to %struct.SFFilename*
  %filename = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %sfa_file, i32 0, i32 0
  %201 = load i8*, i8** %filename, align 8
  %tobool199 = icmp ne i8* %201, null
  br i1 %tobool199, label %if.then.200, label %if.end.207

if.then.200:                                      ; preds = %if.end.197
  %202 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %203 = bitcast %struct._GtkWidget* %202 to %struct._GTypeInstance*
  %call201 = call i64 @gtk_file_chooser_get_type() #7
  %call202 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %203, i64 %call201)
  %204 = bitcast %struct._GTypeInstance* %call202 to %struct._GtkFileChooser*
  %205 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value203 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %205, i32 0, i32 3
  %sfa_file204 = bitcast %union.SFArgValue* %value203 to %struct.SFFilename*
  %filename205 = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %sfa_file204, i32 0, i32 0
  %206 = load i8*, i8** %filename205, align 8
  %call206 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %204, i8* %206)
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.200, %if.end.197
  %207 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %208 = bitcast %struct._GtkWidget* %207 to i8*
  %209 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value208 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %209, i32 0, i32 3
  %sfa_file209 = bitcast %union.SFArgValue* %value208 to %struct.SFFilename*
  %210 = bitcast %struct.SFFilename* %sfa_file209 to i8*
  %call210 = call i64 @g_signal_connect_data(i8* %208, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.SFFilename*)* @script_fu_file_callback to void ()*), i8* %210, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %sw.epilog.286

sw.bb.211:                                        ; preds = %for.body
  %call212 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.27, i32 0, i32 0)) #5
  %211 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value213 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %211, i32 0, i32 3
  %sfa_font = bitcast %union.SFArgValue* %value213 to i8**
  %212 = load i8*, i8** %sfa_font, align 8
  %call214 = call %struct._GtkWidget* @gimp_font_select_button_new(i8* %call212, i8* %212)
  store %struct._GtkWidget* %call214, %struct._GtkWidget** %widget, align 8
  %213 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %214 = bitcast %struct._GtkWidget* %213 to i8*
  %215 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value215 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %215, i32 0, i32 3
  %sfa_font216 = bitcast %union.SFArgValue* %value215 to i8**
  %216 = bitcast i8** %sfa_font216 to i8*
  %call217 = call i64 @g_signal_connect_data(i8* %214, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), void ()* bitcast (void (i8*, i8*, i32)* @script_fu_font_callback to void ()*), i8* %216, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %sw.epilog.286

sw.bb.218:                                        ; preds = %for.body
  %call219 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i32 0, i32 0)) #5
  %217 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value220 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %217, i32 0, i32 3
  %sfa_palette = bitcast %union.SFArgValue* %value220 to i8**
  %218 = load i8*, i8** %sfa_palette, align 8
  %call221 = call %struct._GtkWidget* @gimp_palette_select_button_new(i8* %call219, i8* %218)
  store %struct._GtkWidget* %call221, %struct._GtkWidget** %widget, align 8
  %219 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %220 = bitcast %struct._GtkWidget* %219 to i8*
  %221 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value222 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %221, i32 0, i32 3
  %sfa_palette223 = bitcast %union.SFArgValue* %value222 to i8**
  %222 = bitcast i8** %sfa_palette223 to i8*
  %call224 = call i64 @g_signal_connect_data(i8* %220, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i32 0, i32 0), void ()* bitcast (void (i8*, i8*, i32)* @script_fu_palette_callback to void ()*), i8* %222, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %sw.epilog.286

sw.bb.225:                                        ; preds = %for.body
  store i32 1, i32* %left_align, align 4
  %call226 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.31, i32 0, i32 0)) #5
  %223 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value227 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %223, i32 0, i32 3
  %sfa_pattern = bitcast %union.SFArgValue* %value227 to i8**
  %224 = load i8*, i8** %sfa_pattern, align 8
  %call228 = call %struct._GtkWidget* @gimp_pattern_select_button_new(i8* %call226, i8* %224)
  store %struct._GtkWidget* %call228, %struct._GtkWidget** %widget, align 8
  %225 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %226 = bitcast %struct._GtkWidget* %225 to i8*
  %227 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value229 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %227, i32 0, i32 3
  %sfa_pattern230 = bitcast %union.SFArgValue* %value229 to i8**
  %228 = bitcast i8** %sfa_pattern230 to i8*
  %call231 = call i64 @g_signal_connect_data(i8* %226, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), void ()* bitcast (void (i8*, i8*, i32, i32, i32, i8*, i32)* @script_fu_pattern_callback to void ()*), i8* %228, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %sw.epilog.286

sw.bb.232:                                        ; preds = %for.body
  store i32 1, i32* %left_align, align 4
  %call233 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.33, i32 0, i32 0)) #5
  %229 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value234 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %229, i32 0, i32 3
  %sfa_gradient = bitcast %union.SFArgValue* %value234 to i8**
  %230 = load i8*, i8** %sfa_gradient, align 8
  %call235 = call %struct._GtkWidget* @gimp_gradient_select_button_new(i8* %call233, i8* %230)
  store %struct._GtkWidget* %call235, %struct._GtkWidget** %widget, align 8
  %231 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %232 = bitcast %struct._GtkWidget* %231 to i8*
  %233 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value236 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %233, i32 0, i32 3
  %sfa_gradient237 = bitcast %union.SFArgValue* %value236 to i8**
  %234 = bitcast i8** %sfa_gradient237 to i8*
  %call238 = call i64 @g_signal_connect_data(i8* %232, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i32 0, i32 0), void ()* bitcast (void (i8*, i8*, i32, double*, i32)* @script_fu_gradient_callback to void ()*), i8* %234, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %sw.epilog.286

sw.bb.239:                                        ; preds = %for.body
  store i32 1, i32* %left_align, align 4
  %call240 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.35, i32 0, i32 0)) #5
  %235 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value241 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %235, i32 0, i32 3
  %sfa_brush = bitcast %union.SFArgValue* %value241 to %struct.SFBrush*
  %name242 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush, i32 0, i32 0
  %236 = load i8*, i8** %name242, align 8
  %237 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value243 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %237, i32 0, i32 3
  %sfa_brush244 = bitcast %union.SFArgValue* %value243 to %struct.SFBrush*
  %opacity = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush244, i32 0, i32 1
  %238 = load double, double* %opacity, align 8
  %239 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value245 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %239, i32 0, i32 3
  %sfa_brush246 = bitcast %union.SFArgValue* %value245 to %struct.SFBrush*
  %spacing = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush246, i32 0, i32 2
  %240 = load i32, i32* %spacing, align 4
  %241 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value247 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %241, i32 0, i32 3
  %sfa_brush248 = bitcast %union.SFArgValue* %value247 to %struct.SFBrush*
  %paint_mode = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush248, i32 0, i32 3
  %242 = load i32, i32* %paint_mode, align 4
  %call249 = call %struct._GtkWidget* @gimp_brush_select_button_new(i8* %call240, i8* %236, double %238, i32 %240, i32 %242)
  store %struct._GtkWidget* %call249, %struct._GtkWidget** %widget, align 8
  %243 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %244 = bitcast %struct._GtkWidget* %243 to i8*
  %245 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value250 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %245, i32 0, i32 3
  %sfa_brush251 = bitcast %union.SFArgValue* %value250 to %struct.SFBrush*
  %246 = bitcast %struct.SFBrush* %sfa_brush251 to i8*
  %call252 = call i64 @g_signal_connect_data(i8* %244, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.36, i32 0, i32 0), void ()* bitcast (void (i8*, i8*, double, i32, i32, i32, i32, i8*, i32)* @script_fu_brush_callback to void ()*), i8* %246, void (i8*, %struct._GClosure*)* null, i32 2)
  br label %sw.epilog.286

sw.bb.253:                                        ; preds = %for.body
  %call254 = call %struct._GtkWidget* @gtk_combo_box_text_new()
  store %struct._GtkWidget* %call254, %struct._GtkWidget** %widget, align 8
  %247 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value255 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %247, i32 0, i32 2
  %sfa_option = bitcast %union.SFArgValue* %default_value255 to %struct.SFOption*
  %list256 = getelementptr inbounds %struct.SFOption, %struct.SFOption* %sfa_option, i32 0, i32 0
  %248 = load %struct._GSList*, %struct._GSList** %list256, align 8
  store %struct._GSList* %248, %struct._GSList** %list, align 8
  br label %for.cond.257

for.cond.257:                                     ; preds = %cond.end, %sw.bb.253
  %249 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool258 = icmp ne %struct._GSList* %249, null
  br i1 %tobool258, label %for.body.259, label %for.end

for.body.259:                                     ; preds = %for.cond.257
  %250 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %251 = bitcast %struct._GtkWidget* %250 to %struct._GTypeInstance*
  %call260 = call i64 @gtk_combo_box_text_get_type() #7
  %call261 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %251, i64 %call260)
  %252 = bitcast %struct._GTypeInstance* %call261 to %struct._GtkComboBoxText*
  %253 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %253, i32 0, i32 0
  %254 = load i8*, i8** %data, align 8
  %call262 = call i8* @gettext(i8* %254) #5
  call void @gtk_combo_box_text_append_text(%struct._GtkComboBoxText* %252, i8* %call262)
  br label %for.inc

for.inc:                                          ; preds = %for.body.259
  %255 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool263 = icmp ne %struct._GSList* %255, null
  br i1 %tobool263, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %256 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %256, i32 0, i32 1
  %257 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %257, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond.257

for.end:                                          ; preds = %for.cond.257
  %258 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %259 = bitcast %struct._GtkWidget* %258 to %struct._GTypeInstance*
  %call264 = call i64 @gtk_combo_box_get_type() #7
  %call265 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %259, i64 %call264)
  %260 = bitcast %struct._GTypeInstance* %call265 to %struct._GtkComboBox*
  %261 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value266 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %261, i32 0, i32 3
  %sfa_option267 = bitcast %union.SFArgValue* %value266 to %struct.SFOption*
  %history = getelementptr inbounds %struct.SFOption, %struct.SFOption* %sfa_option267, i32 0, i32 1
  %262 = load i32, i32* %history, align 4
  call void @gtk_combo_box_set_active(%struct._GtkComboBox* %260, i32 %262)
  %263 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %264 = bitcast %struct._GtkWidget* %263 to i8*
  %265 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value268 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %265, i32 0, i32 3
  %sfa_option269 = bitcast %union.SFArgValue* %value268 to %struct.SFOption*
  %266 = bitcast %struct.SFOption* %sfa_option269 to i8*
  %call270 = call i64 @g_signal_connect_data(i8* %264, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct.SFOption*)* @script_fu_combo_callback to void ()*), i8* %266, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %sw.epilog.286

sw.bb.271:                                        ; preds = %for.body
  %267 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value272 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %267, i32 0, i32 2
  %sfa_enum = bitcast %union.SFArgValue* %default_value272 to %struct.SFEnum*
  %type_name = getelementptr inbounds %struct.SFEnum, %struct.SFEnum* %sfa_enum, i32 0, i32 0
  %268 = load i8*, i8** %type_name, align 8
  %call273 = call i64 @g_type_from_name(i8* %268)
  %call274 = call %struct._GtkWidget* @gimp_enum_combo_box_new(i64 %call273)
  store %struct._GtkWidget* %call274, %struct._GtkWidget** %widget, align 8
  %269 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %270 = bitcast %struct._GtkWidget* %269 to %struct._GTypeInstance*
  %call275 = call i64 @gimp_int_combo_box_get_type() #7
  %call276 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %270, i64 %call275)
  %271 = bitcast %struct._GTypeInstance* %call276 to %struct._GimpIntComboBox*
  %272 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value277 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %272, i32 0, i32 3
  %sfa_enum278 = bitcast %union.SFArgValue* %value277 to %struct.SFEnum*
  %history279 = getelementptr inbounds %struct.SFEnum, %struct.SFEnum* %sfa_enum278, i32 0, i32 1
  %273 = load i32, i32* %history279, align 4
  %call280 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %271, i32 %273)
  %274 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %275 = bitcast %struct._GtkWidget* %274 to i8*
  %276 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %value281 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %276, i32 0, i32 3
  %sfa_enum282 = bitcast %union.SFArgValue* %value281 to %struct.SFEnum*
  %history283 = getelementptr inbounds %struct.SFEnum, %struct.SFEnum* %sfa_enum282, i32 0, i32 1
  %277 = bitcast i32* %history283 to i8*
  %call284 = call i64 @g_signal_connect_data(i8* %275, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), void ()* bitcast (i32 (%struct._GimpIntComboBox*, i32*)* @gimp_int_combo_box_get_active to void ()*), i8* %277, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %sw.epilog.286

sw.bb.285:                                        ; preds = %for.body
  br label %sw.epilog.286

sw.epilog.286:                                    ; preds = %for.body, %sw.bb.285, %sw.bb.271, %for.end, %sw.bb.239, %sw.bb.232, %sw.bb.225, %sw.bb.218, %sw.bb.211, %if.end.207, %sw.epilog.179, %sw.bb.104, %sw.bb.97, %sw.bb.87, %sw.bb.78, %sw.epilog
  %278 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool287 = icmp ne %struct._GtkWidget* %278, null
  br i1 %tobool287, label %if.then.288, label %if.end.303

if.then.288:                                      ; preds = %sw.epilog.286
  %279 = load i8*, i8** %label_text, align 8
  %tobool289 = icmp ne i8* %279, null
  br i1 %tobool289, label %if.then.290, label %if.else.295

if.then.290:                                      ; preds = %if.then.288
  %280 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %table291 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %280, i32 0, i32 1
  %281 = load %struct._GtkWidget*, %struct._GtkWidget** %table291, align 8
  %282 = bitcast %struct._GtkWidget* %281 to %struct._GTypeInstance*
  %call292 = call i64 @gtk_table_get_type() #7
  %call293 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %282, i64 %call292)
  %283 = bitcast %struct._GTypeInstance* %call293 to %struct._GtkTable*
  %284 = load i32, i32* %row, align 4
  %285 = load i8*, i8** %label_text, align 8
  %286 = load float, float* %label_yalign, align 4
  %287 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %288 = load i32, i32* %left_align, align 4
  %call294 = call %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable* %283, i32 0, i32 %284, i8* %285, float 0.000000e+00, float %286, %struct._GtkWidget* %287, i32 2, i32 %288)
  %289 = load i8*, i8** %label_text, align 8
  call void @g_free(i8* %289)
  br label %if.end.299

if.else.295:                                      ; preds = %if.then.288
  %290 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %table296 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %290, i32 0, i32 1
  %291 = load %struct._GtkWidget*, %struct._GtkWidget** %table296, align 8
  %292 = bitcast %struct._GtkWidget* %291 to %struct._GTypeInstance*
  %call297 = call i64 @gtk_table_get_type() #7
  %call298 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %292, i64 %call297)
  %293 = bitcast %struct._GTypeInstance* %call298 to %struct._GtkTable*
  %294 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %295 = load i32, i32* %row, align 4
  %296 = load i32, i32* %row, align 4
  %add = add nsw i32 %296, 1
  call void @gtk_table_attach(%struct._GtkTable* %293, %struct._GtkWidget* %294, i32 0, i32 3, i32 %295, i32 %add, i32 5, i32 4, i32 0, i32 0)
  %297 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %297)
  br label %if.end.299

if.end.299:                                       ; preds = %if.else.295, %if.then.290
  %298 = load i32, i32* %left_align, align 4
  %tobool300 = icmp ne i32 %298, 0
  br i1 %tobool300, label %if.then.301, label %if.end.302

if.then.301:                                      ; preds = %if.end.299
  %299 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %300 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  call void @gtk_size_group_add_widget(%struct._GtkSizeGroup* %299, %struct._GtkWidget* %300)
  br label %if.end.302

if.end.302:                                       ; preds = %if.then.301, %if.end.299
  br label %if.end.303

if.end.303:                                       ; preds = %if.end.302, %sw.epilog.286
  %301 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %302 = load i32, i32* %i, align 4
  %idxprom304 = sext i32 %302 to i64
  %303 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %widgets305 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %303, i32 0, i32 2
  %304 = load %struct._GtkWidget**, %struct._GtkWidget*** %widgets305, align 8
  %arrayidx306 = getelementptr inbounds %struct._GtkWidget*, %struct._GtkWidget** %304, i64 %idxprom304
  store %struct._GtkWidget* %301, %struct._GtkWidget** %arrayidx306, align 8
  br label %for.inc.307

for.inc.307:                                      ; preds = %if.end.303
  %305 = load i32, i32* %i, align 4
  %inc = add nsw i32 %305, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.308:                                      ; preds = %for.cond
  %306 = load %struct._GtkSizeGroup*, %struct._GtkSizeGroup** %group, align 8
  %307 = bitcast %struct._GtkSizeGroup* %306 to i8*
  call void @g_object_unref(i8* %307)
  %call309 = call %struct._GtkWidget* @gtk_box_new(i32 1, i32 6)
  store %struct._GtkWidget* %call309, %struct._GtkWidget** %vbox2, align 8
  %308 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox, align 8
  %309 = bitcast %struct._GtkWidget* %308 to %struct._GTypeInstance*
  %call310 = call i64 @gtk_box_get_type() #7
  %call311 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %309, i64 %call310)
  %310 = bitcast %struct._GTypeInstance* %call311 to %struct._GtkBox*
  %311 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_box_pack_end(%struct._GtkBox* %310, %struct._GtkWidget* %311, i32 0, i32 0, i32 0)
  %312 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %312)
  %call312 = call %struct._GtkWidget* @gimp_progress_bar_new()
  %313 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_bar = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %313, i32 0, i32 4
  store %struct._GtkWidget* %call312, %struct._GtkWidget** %progress_bar, align 8
  %314 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %315 = bitcast %struct._GtkWidget* %314 to %struct._GTypeInstance*
  %call313 = call i64 @gtk_box_get_type() #7
  %call314 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %315, i64 %call313)
  %316 = bitcast %struct._GTypeInstance* %call314 to %struct._GtkBox*
  %317 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_bar315 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %317, i32 0, i32 4
  %318 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_bar315, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %316, %struct._GtkWidget* %318, i32 0, i32 0, i32 0)
  %319 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_bar316 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %319, i32 0, i32 4
  %320 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_bar316, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %320)
  %call317 = call %struct._GtkWidget* @gtk_label_new(i8* null)
  %321 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_label = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %321, i32 0, i32 3
  store %struct._GtkWidget* %call317, %struct._GtkWidget** %progress_label, align 8
  %322 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_label318 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %322, i32 0, i32 3
  %323 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_label318, align 8
  %324 = bitcast %struct._GtkWidget* %323 to %struct._GTypeInstance*
  %call319 = call i64 @gtk_misc_get_type() #7
  %call320 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %324, i64 %call319)
  %325 = bitcast %struct._GTypeInstance* %call320 to %struct._GtkMisc*
  call void @gtk_misc_set_alignment(%struct._GtkMisc* %325, float 0.000000e+00, float 5.000000e-01)
  %326 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_label321 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %326, i32 0, i32 3
  %327 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_label321, align 8
  %328 = bitcast %struct._GtkWidget* %327 to %struct._GTypeInstance*
  %call322 = call i64 @gtk_label_get_type() #7
  %call323 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %328, i64 %call322)
  %329 = bitcast %struct._GTypeInstance* %call323 to %struct._GtkLabel*
  call void @gtk_label_set_ellipsize(%struct._GtkLabel* %329, i32 2)
  %330 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_label324 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %330, i32 0, i32 3
  %331 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_label324, align 8
  %332 = bitcast %struct._GtkWidget* %331 to %struct._GTypeInstance*
  %call325 = call i64 @gtk_label_get_type() #7
  %call326 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %332, i64 %call325)
  %333 = bitcast %struct._GTypeInstance* %call326 to %struct._GtkLabel*
  call void (%struct._GtkLabel*, ...) @gimp_label_set_attributes(%struct._GtkLabel* %333, i32 3, i32 2, i32 -1)
  %334 = load %struct._GtkWidget*, %struct._GtkWidget** %vbox2, align 8
  %335 = bitcast %struct._GtkWidget* %334 to %struct._GTypeInstance*
  %call327 = call i64 @gtk_box_get_type() #7
  %call328 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %335, i64 %call327)
  %336 = bitcast %struct._GTypeInstance* %call328 to %struct._GtkBox*
  %337 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_label329 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %337, i32 0, i32 3
  %338 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_label329, align 8
  call void @gtk_box_pack_start(%struct._GtkBox* %336, %struct._GtkWidget* %338, i32 0, i32 0, i32 0)
  %339 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %progress_label330 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %339, i32 0, i32 3
  %340 = load %struct._GtkWidget*, %struct._GtkWidget** %progress_label330, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %340)
  %341 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %341)
  call void @gtk_main()
  %342 = load i32, i32* @sf_status, align 4
  store i32 %342, i32* %retval
  br label %return

return:                                           ; preds = %for.end.308, %if.else, %if.then
  %343 = load i32, i32* %retval
  ret i32 %343
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

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

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) #4

; Function Attrs: nounwind readnone
declare i8* @gimp_locale_directory() #3

; Function Attrs: nounwind
declare i8* @bind_textdomain_codeset(i8*, i8*) #4

; Function Attrs: nounwind
declare i8* @textdomain(i8*) #4

declare void @gimp_ui_init(i8*, i32) #2

declare noalias i8* @g_slice_alloc0(i64) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare i8* @script_fu_script_get_title(%struct.SFScript*) #2

declare %struct._GtkWidget* @gimp_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #2

declare void @gimp_standard_help_func(i8*, i8*) #2

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare void @gimp_window_set_transient(%struct._GtkWindow*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @script_fu_response(%struct._GtkWidget* %widget, i32 %response_id, %struct.SFScript* %script) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %script.addr = alloca %struct.SFScript*, align 8
  %action_area = alloca %struct._GtkWidget*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  %0 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %dialog = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %0, i32 0, i32 0
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gtk_dialog_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkDialog*
  %call2 = call %struct._GtkWidget* @gtk_dialog_get_action_area(%struct._GtkDialog* %3)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %action_area, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  %call3 = call i32 @gtk_widget_is_sensitive(%struct._GtkWidget* %4)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %sw.epilog

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %response_id.addr, align 4
  switch i32 %5, label %sw.default [
    i32 1, label %sw.bb
    i32 -5, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  %6 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  call void @script_fu_reset(%struct.SFScript* %6)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %7 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %table = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %7, i32 0, i32 1
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %table, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %8, i32 0)
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %action_area, align 8
  call void @gtk_widget_set_sensitive(%struct._GtkWidget* %9, i32 0)
  %10 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  call void @script_fu_ok(%struct.SFScript* %10)
  %11 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %dialog5 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %11, i32 0, i32 0
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog5, align 8
  call void @unset_transient_for(%struct._GtkWidget* %12)
  %13 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %dialog6 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %13, i32 0, i32 0
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog6, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %14)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i32 4, i32* @sf_status, align 4
  %15 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %dialog7 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %15, i32 0, i32 0
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog7, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %16)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.default, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @script_fu_interface_quit(%struct.SFScript* %script) #0 {
entry:
  %script.addr = alloca %struct.SFScript*, align 8
  %i = alloca i32, align 4
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %cmp = icmp ne %struct.SFScript* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.script_fu_interface_quit, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %cmp2 = icmp ne %struct.SFInterface* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.script_fu_interface_quit, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %title = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %2, i32 0, i32 5
  %3 = load i8*, i8** %title, align 8
  call void @g_free(i8* %3)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.6
  %4 = load i32, i32* %i, align 4
  %5 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %5, i32 0, i32 7
  %6 = load i32, i32* %n_args, align 4
  %cmp7 = icmp slt i32 %4, %6
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %8, i32 0, i32 8
  %9 = load %struct.SFArg*, %struct.SFArg** %args, align 8
  %arrayidx = getelementptr inbounds %struct.SFArg, %struct.SFArg* %9, i64 %idxprom
  %type = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx, i32 0, i32 0
  %10 = load i32, i32* %type, align 4
  switch i32 %10, label %sw.default [
    i32 10, label %sw.bb
    i32 17, label %sw.bb
    i32 11, label %sw.bb
    i32 13, label %sw.bb
    i32 12, label %sw.bb
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %widgets = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %12, i32 0, i32 2
  %13 = load %struct._GtkWidget**, %struct._GtkWidget*** %widgets, align 8
  %arrayidx9 = getelementptr inbounds %struct._GtkWidget*, %struct._GtkWidget** %13, i64 %idxprom8
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx9, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call = call i64 @gimp_select_button_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call)
  %16 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpSelectButton*
  call void @gimp_select_button_close_popup(%struct._GimpSelectButton* %16)
  br label %sw.epilog

sw.default:                                       ; preds = %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %widgets11 = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %18, i32 0, i32 2
  %19 = load %struct._GtkWidget**, %struct._GtkWidget*** %widgets11, align 8
  %20 = bitcast %struct._GtkWidget** %19 to i8*
  call void @g_free(i8* %20)
  %21 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %last_command = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %21, i32 0, i32 6
  %22 = load i8*, i8** %last_command, align 8
  call void @g_free(i8* %22)
  br label %do.body.12

do.body.12:                                       ; preds = %for.end
  %23 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %24 = bitcast %struct.SFInterface* %23 to i8*
  call void @g_slice_free1(i64 64, i8* %24)
  br label %do.end.13

do.end.13:                                        ; preds = %do.body.12
  store %struct.SFInterface* null, %struct.SFInterface** @sf_interface, align 8
  call void @gtk_main_quit()
  br label %return

return:                                           ; preds = %do.end.13, %if.else.4, %if.else
  ret void
}

declare void @gtk_window_set_resizable(%struct._GtkWindow*, i32) #2

declare %struct._GtkWidget* @gtk_box_new(i32, i32) #2

declare void @gtk_container_set_border_width(%struct._GtkContainer*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_container_get_type() #3

declare void @gtk_box_pack_start(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #2

declare %struct._GtkWidget* @gtk_dialog_get_content_area(%struct._GtkDialog*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_box_get_type() #3

declare void @gtk_widget_show(%struct._GtkWidget*) #2

declare %struct._GtkWidget* @gtk_table_new(i32, i32, i32) #2

declare void @gtk_table_set_col_spacings(%struct._GtkTable*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_table_get_type() #3

declare void @gtk_table_set_row_spacings(%struct._GtkTable*, i32) #2

declare %struct._GtkSizeGroup* @gtk_size_group_new(i32) #2

declare %struct._GtkWidget* @gimp_image_combo_box_new(i32 (i32, i8*)*, i8*) #2

declare %struct._GtkWidget* @gimp_drawable_combo_box_new(i32 (i32, i32, i8*)*, i8*) #2

declare %struct._GtkWidget* @gimp_layer_combo_box_new(i32 (i32, i32, i8*)*, i8*) #2

declare %struct._GtkWidget* @gimp_channel_combo_box_new(i32 (i32, i32, i8*)*, i8*) #2

declare %struct._GtkWidget* @gimp_vectors_combo_box_new(i32 (i32, i32, i8*)*, i8*) #2

declare i64 @gimp_int_combo_box_connect(%struct._GimpIntComboBox*, i32, void ()*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_int_combo_box_get_type() #3

declare i32 @gimp_int_combo_box_get_active(%struct._GimpIntComboBox*, i32*) #2

declare %struct._GtkWidget* @gimp_color_button_new(i8*, i32, i32, %struct._GimpRGB*, i32) #2

declare void @gimp_color_button_set_update(%struct._GimpColorButton*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_color_button_get_type() #3

declare void @gimp_color_button_get_color(%struct._GimpColorButton*, %struct._GimpRGB*) #2

declare %struct._GtkWidget* @gtk_check_button_new_with_mnemonic(i8*) #2

declare void @gtk_toggle_button_set_active(%struct._GtkToggleButton*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_toggle_button_get_type() #3

declare void @gimp_toggle_button_update(%struct._GtkWidget*, i8*) #2

declare %struct._GtkWidget* @gtk_entry_new() #2

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #2

declare void @gtk_entry_set_activates_default(%struct._GtkEntry*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_entry_get_type() #3

declare void @gtk_entry_set_text(%struct._GtkEntry*, i8*) #2

declare %struct._GtkWidget* @gtk_scrolled_window_new(%struct._GtkAdjustment*, %struct._GtkAdjustment*) #2

declare void @gtk_scrolled_window_set_shadow_type(%struct._GtkScrolledWindow*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_scrolled_window_get_type() #3

declare void @gtk_scrolled_window_set_policy(%struct._GtkScrolledWindow*, i32, i32) #2

declare %struct._GtkWidget* @gtk_text_view_new() #2

declare void @gtk_container_add(%struct._GtkContainer*, %struct._GtkWidget*) #2

declare %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_text_view_get_type() #3

declare void @gtk_text_view_set_editable(%struct._GtkTextView*, i32) #2

declare void @gtk_text_buffer_set_text(%struct._GtkTextBuffer*, i8*, i32) #2

declare %struct._GtkObject* @gimp_scale_entry_new(%struct._GtkTable*, i32, i32, i8*, i32, i32, double, double, double, double, double, i32, i32, double, double, i8*, i8*) #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #2

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
  call void @g_logv(i8* null, i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare %struct._GtkWidget* @gimp_spin_button_new(%struct._GtkObject**, double, double, double, double, double, double, double, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_adjustment_get_type() #3

declare void @gimp_double_adjustment_update(%struct._GtkAdjustment*, i8*) #2

declare %struct._GtkWidget* @gtk_file_chooser_button_new(i8*, i32) #2

declare i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @script_fu_file_callback(%struct._GtkWidget* %widget, %struct.SFFilename* %file) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %file.addr = alloca %struct.SFFilename*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.SFFilename* %file, %struct.SFFilename** %file.addr, align 8
  %0 = load %struct.SFFilename*, %struct.SFFilename** %file.addr, align 8
  %filename = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %0, i32 0, i32 0
  %1 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.SFFilename*, %struct.SFFilename** %file.addr, align 8
  %filename1 = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %2, i32 0, i32 0
  %3 = load i8*, i8** %filename1, align 8
  call void @g_free(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call = call i64 @gtk_file_chooser_get_type() #7
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call)
  %6 = bitcast %struct._GTypeInstance* %call2 to %struct._GtkFileChooser*
  %call3 = call i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser* %6)
  %7 = load %struct.SFFilename*, %struct.SFFilename** %file.addr, align 8
  %filename4 = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %7, i32 0, i32 0
  store i8* %call3, i8** %filename4, align 8
  ret void
}

declare %struct._GtkWidget* @gimp_font_select_button_new(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @script_fu_font_callback(i8* %data, i8* %name, i32 %closing) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %closing.addr = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %closing, i32* %closing.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %name.addr, align 8
  call void @script_fu_string_update(i8** %1, i8* %2)
  ret void
}

declare %struct._GtkWidget* @gimp_palette_select_button_new(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @script_fu_palette_callback(i8* %data, i8* %name, i32 %closing) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %closing.addr = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %closing, i32* %closing.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %name.addr, align 8
  call void @script_fu_string_update(i8** %1, i8* %2)
  ret void
}

declare %struct._GtkWidget* @gimp_pattern_select_button_new(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @script_fu_pattern_callback(i8* %data, i8* %name, i32 %width, i32 %height, i32 %bytes, i8* %mask_data, i32 %closing) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %bytes.addr = alloca i32, align 4
  %mask_data.addr = alloca i8*, align 8
  %closing.addr = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i32 %bytes, i32* %bytes.addr, align 4
  store i8* %mask_data, i8** %mask_data.addr, align 8
  store i32 %closing, i32* %closing.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %name.addr, align 8
  call void @script_fu_string_update(i8** %1, i8* %2)
  ret void
}

declare %struct._GtkWidget* @gimp_gradient_select_button_new(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @script_fu_gradient_callback(i8* %data, i8* %name, i32 %width, double* %mask_data, i32 %closing) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %mask_data.addr = alloca double*, align 8
  %closing.addr = alloca i32, align 4
  store i8* %data, i8** %data.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store double* %mask_data, double** %mask_data.addr, align 8
  store i32 %closing, i32* %closing.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %name.addr, align 8
  call void @script_fu_string_update(i8** %1, i8* %2)
  ret void
}

declare %struct._GtkWidget* @gimp_brush_select_button_new(i8*, i8*, double, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @script_fu_brush_callback(i8* %data, i8* %name, double %opacity, i32 %spacing, i32 %paint_mode, i32 %width, i32 %height, i8* %mask_data, i32 %closing) #0 {
entry:
  %data.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %opacity.addr = alloca double, align 8
  %spacing.addr = alloca i32, align 4
  %paint_mode.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %mask_data.addr = alloca i8*, align 8
  %closing.addr = alloca i32, align 4
  %brush = alloca %struct.SFBrush*, align 8
  store i8* %data, i8** %data.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store double %opacity, double* %opacity.addr, align 8
  store i32 %spacing, i32* %spacing.addr, align 4
  store i32 %paint_mode, i32* %paint_mode.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store i8* %mask_data, i8** %mask_data.addr, align 8
  store i32 %closing, i32* %closing.addr, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.SFBrush*
  store %struct.SFBrush* %1, %struct.SFBrush** %brush, align 8
  %2 = load %struct.SFBrush*, %struct.SFBrush** %brush, align 8
  %name1 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %2, i32 0, i32 0
  %3 = load i8*, i8** %name1, align 8
  call void @g_free(i8* %3)
  %4 = load i8*, i8** %name.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %4)
  %5 = load %struct.SFBrush*, %struct.SFBrush** %brush, align 8
  %name2 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %5, i32 0, i32 0
  store i8* %call, i8** %name2, align 8
  %6 = load double, double* %opacity.addr, align 8
  %7 = load %struct.SFBrush*, %struct.SFBrush** %brush, align 8
  %opacity3 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %7, i32 0, i32 1
  store double %6, double* %opacity3, align 8
  %8 = load i32, i32* %spacing.addr, align 4
  %9 = load %struct.SFBrush*, %struct.SFBrush** %brush, align 8
  %spacing4 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %9, i32 0, i32 2
  store i32 %8, i32* %spacing4, align 4
  %10 = load i32, i32* %paint_mode.addr, align 4
  %11 = load %struct.SFBrush*, %struct.SFBrush** %brush, align 8
  %paint_mode5 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %11, i32 0, i32 3
  store i32 %10, i32* %paint_mode5, align 4
  ret void
}

declare %struct._GtkWidget* @gtk_combo_box_text_new() #2

declare void @gtk_combo_box_text_append_text(%struct._GtkComboBoxText*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_text_get_type() #3

declare void @gtk_combo_box_set_active(%struct._GtkComboBox*, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_combo_box_get_type() #3

; Function Attrs: nounwind uwtable
define internal void @script_fu_combo_callback(%struct._GtkWidget* %widget, %struct.SFOption* %option) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %option.addr = alloca %struct.SFOption*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store %struct.SFOption* %option, %struct.SFOption** %option.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_combo_box_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkComboBox*
  %call2 = call i32 @gtk_combo_box_get_active(%struct._GtkComboBox* %2)
  %3 = load %struct.SFOption*, %struct.SFOption** %option.addr, align 8
  %history = getelementptr inbounds %struct.SFOption, %struct.SFOption* %3, i32 0, i32 1
  store i32 %call2, i32* %history, align 4
  ret void
}

declare %struct._GtkWidget* @gimp_enum_combo_box_new(i64) #2

declare i64 @g_type_from_name(i8*) #2

declare i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox*, i32) #2

declare %struct._GtkWidget* @gimp_table_attach_aligned(%struct._GtkTable*, i32, i32, i8*, float, float, %struct._GtkWidget*, i32, i32) #2

declare void @gtk_table_attach(%struct._GtkTable*, %struct._GtkWidget*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare void @gtk_size_group_add_widget(%struct._GtkSizeGroup*, %struct._GtkWidget*) #2

declare void @g_object_unref(i8*) #2

declare void @gtk_box_pack_end(%struct._GtkBox*, %struct._GtkWidget*, i32, i32, i32) #2

declare %struct._GtkWidget* @gimp_progress_bar_new() #2

declare %struct._GtkWidget* @gtk_label_new(i8*) #2

declare void @gtk_misc_set_alignment(%struct._GtkMisc*, float, float) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_misc_get_type() #3

declare void @gtk_label_set_ellipsize(%struct._GtkLabel*, i32) #2

declare void @gimp_label_set_attributes(%struct._GtkLabel*, ...) #2

declare void @gtk_main() #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @gimp_select_button_close_popup(%struct._GimpSelectButton*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_select_button_get_type() #3

declare void @g_slice_free1(i64, i8*) #2

declare void @gtk_main_quit() #2

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #2

declare i32 @gtk_combo_box_get_active(%struct._GtkComboBox*) #2

; Function Attrs: nounwind uwtable
define internal void @script_fu_string_update(i8** %dest, i8* %src) #0 {
entry:
  %dest.addr = alloca i8**, align 8
  %src.addr = alloca i8*, align 8
  store i8** %dest, i8*** %dest.addr, align 8
  store i8* %src, i8** %src.addr, align 8
  %0 = load i8**, i8*** %dest.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %dest.addr, align 8
  %3 = load i8*, i8** %2, align 8
  call void @g_free(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %src.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %4)
  %5 = load i8**, i8*** %dest.addr, align 8
  store i8* %call, i8** %5, align 8
  ret void
}

declare %struct._GtkWidget* @gtk_dialog_get_action_area(%struct._GtkDialog*) #2

declare i32 @gtk_widget_is_sensitive(%struct._GtkWidget*) #2

; Function Attrs: nounwind uwtable
define internal void @script_fu_reset(%struct.SFScript* %script) #0 {
entry:
  %script.addr = alloca %struct.SFScript*, align 8
  %i = alloca i32, align 4
  %value = alloca %union.SFArgValue*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  %0 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  call void @script_fu_script_reset(%struct.SFScript* %0, i32 0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %2, i32 0, i32 7
  %3 = load i32, i32* %n_args, align 4
  %cmp = icmp slt i32 %1, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %5, i32 0, i32 8
  %6 = load %struct.SFArg*, %struct.SFArg** %args, align 8
  %arrayidx = getelementptr inbounds %struct.SFArg, %struct.SFArg* %6, i64 %idxprom
  %value1 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx, i32 0, i32 3
  store %union.SFArgValue* %value1, %union.SFArgValue** %value, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %8 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %widgets = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %8, i32 0, i32 2
  %9 = load %struct._GtkWidget**, %struct._GtkWidget*** %widgets, align 8
  %arrayidx3 = getelementptr inbounds %struct._GtkWidget*, %struct._GtkWidget** %9, i64 %idxprom2
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx3, align 8
  store %struct._GtkWidget* %10, %struct._GtkWidget** %widget, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args5 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %12, i32 0, i32 8
  %13 = load %struct.SFArg*, %struct.SFArg** %args5, align 8
  %arrayidx6 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %13, i64 %idxprom4
  %type = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx6, i32 0, i32 0
  %14 = load i32, i32* %type, align 4
  switch i32 %14, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 20, label %sw.bb
    i32 5, label %sw.bb.7
    i32 6, label %sw.bb.9
    i32 7, label %sw.bb.12
    i32 8, label %sw.bb.12
    i32 18, label %sw.bb.15
    i32 9, label %sw.bb.23
    i32 14, label %sw.bb.26
    i32 15, label %sw.bb.26
    i32 10, label %sw.bb.30
    i32 17, label %sw.bb.33
    i32 11, label %sw.bb.36
    i32 13, label %sw.bb.39
    i32 12, label %sw.bb.42
    i32 16, label %sw.bb.48
    i32 19, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  br label %sw.epilog

sw.bb.7:                                          ; preds = %for.body
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %16 = bitcast %struct._GtkWidget* %15 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_button_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call)
  %17 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpColorButton*
  %18 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_color = bitcast %union.SFArgValue* %18 to %struct._GimpRGB*
  call void @gimp_color_button_set_color(%struct._GimpColorButton* %17, %struct._GimpRGB* %sfa_color)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %for.body
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_toggle_button_get_type() #7
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call10)
  %21 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkToggleButton*
  %22 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_toggle = bitcast %union.SFArgValue* %22 to i32*
  %23 = load i32, i32* %sfa_toggle, align 4
  call void @gtk_toggle_button_set_active(%struct._GtkToggleButton* %21, i32 %23)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %for.body, %for.body
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_entry_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call13)
  %26 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkEntry*
  %27 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_value = bitcast %union.SFArgValue* %27 to i8**
  %28 = load i8*, i8** %sfa_value, align 8
  call void @gtk_entry_set_text(%struct._GtkEntry* %26, i8* %28)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %for.body
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_bin_get_type() #7
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call16)
  %31 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkBin*
  %call18 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %31)
  store %struct._GtkWidget* %call18, %struct._GtkWidget** %view, align 8
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_text_view_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call19)
  %34 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkTextView*
  %call21 = call %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView* %34)
  store %struct._GtkTextBuffer* %call21, %struct._GtkTextBuffer** %buffer, align 8
  %35 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %36 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_value22 = bitcast %union.SFArgValue* %36 to i8**
  %37 = load i8*, i8** %sfa_value22, align 8
  call void @gtk_text_buffer_set_text(%struct._GtkTextBuffer* %35, i8* %37, i32 -1)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %for.body
  %38 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_adjustment = bitcast %union.SFArgValue* %38 to %struct.SFAdjustment*
  %adj = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment, i32 0, i32 0
  %39 = load %struct._GtkAdjustment*, %struct._GtkAdjustment** %adj, align 8
  %40 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_adjustment24 = bitcast %union.SFArgValue* %40 to %struct.SFAdjustment*
  %value25 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment24, i32 0, i32 1
  %41 = load double, double* %value25, align 8
  call void @gtk_adjustment_set_value(%struct._GtkAdjustment* %39, double %41)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %for.body, %for.body
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_file_chooser_get_type() #7
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call27)
  %44 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkFileChooser*
  %45 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_file = bitcast %union.SFArgValue* %45 to %struct.SFFilename*
  %filename = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %sfa_file, i32 0, i32 0
  %46 = load i8*, i8** %filename, align 8
  %call29 = call i32 @gtk_file_chooser_set_filename(%struct._GtkFileChooser* %44, i8* %46)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %for.body
  %47 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %48 = bitcast %struct._GtkWidget* %47 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_font_select_button_get_type() #7
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call31)
  %49 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpFontSelectButton*
  %50 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_font = bitcast %union.SFArgValue* %50 to i8**
  %51 = load i8*, i8** %sfa_font, align 8
  call void @gimp_font_select_button_set_font(%struct._GimpFontSelectButton* %49, i8* %51)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %for.body
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %53 = bitcast %struct._GtkWidget* %52 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_palette_select_button_get_type() #7
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %53, i64 %call34)
  %54 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpPaletteSelectButton*
  %55 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_palette = bitcast %union.SFArgValue* %55 to i8**
  %56 = load i8*, i8** %sfa_palette, align 8
  call void @gimp_palette_select_button_set_palette(%struct._GimpPaletteSelectButton* %54, i8* %56)
  br label %sw.epilog

sw.bb.36:                                         ; preds = %for.body
  %57 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %58 = bitcast %struct._GtkWidget* %57 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_pattern_select_button_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 %call37)
  %59 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpPatternSelectButton*
  %60 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_pattern = bitcast %union.SFArgValue* %60 to i8**
  %61 = load i8*, i8** %sfa_pattern, align 8
  call void @gimp_pattern_select_button_set_pattern(%struct._GimpPatternSelectButton* %59, i8* %61)
  br label %sw.epilog

sw.bb.39:                                         ; preds = %for.body
  %62 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %63 = bitcast %struct._GtkWidget* %62 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_gradient_select_button_get_type() #7
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %63, i64 %call40)
  %64 = bitcast %struct._GTypeInstance* %call41 to %struct._GimpGradientSelectButton*
  %65 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_gradient = bitcast %union.SFArgValue* %65 to i8**
  %66 = load i8*, i8** %sfa_gradient, align 8
  call void @gimp_gradient_select_button_set_gradient(%struct._GimpGradientSelectButton* %64, i8* %66)
  br label %sw.epilog

sw.bb.42:                                         ; preds = %for.body
  %67 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %68 = bitcast %struct._GtkWidget* %67 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_brush_select_button_get_type() #7
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 %call43)
  %69 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpBrushSelectButton*
  %70 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_brush = bitcast %union.SFArgValue* %70 to %struct.SFBrush*
  %name = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush, i32 0, i32 0
  %71 = load i8*, i8** %name, align 8
  %72 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_brush45 = bitcast %union.SFArgValue* %72 to %struct.SFBrush*
  %opacity = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush45, i32 0, i32 1
  %73 = load double, double* %opacity, align 8
  %74 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_brush46 = bitcast %union.SFArgValue* %74 to %struct.SFBrush*
  %spacing = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush46, i32 0, i32 2
  %75 = load i32, i32* %spacing, align 4
  %76 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_brush47 = bitcast %union.SFArgValue* %76 to %struct.SFBrush*
  %paint_mode = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush47, i32 0, i32 3
  %77 = load i32, i32* %paint_mode, align 4
  call void @gimp_brush_select_button_set_brush(%struct._GimpBrushSelectButton* %69, i8* %71, double %73, i32 %75, i32 %77)
  br label %sw.epilog

sw.bb.48:                                         ; preds = %for.body
  %78 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %79 = bitcast %struct._GtkWidget* %78 to %struct._GTypeInstance*
  %call49 = call i64 @gtk_combo_box_get_type() #7
  %call50 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 %call49)
  %80 = bitcast %struct._GTypeInstance* %call50 to %struct._GtkComboBox*
  %81 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_option = bitcast %union.SFArgValue* %81 to %struct.SFOption*
  %history = getelementptr inbounds %struct.SFOption, %struct.SFOption* %sfa_option, i32 0, i32 1
  %82 = load i32, i32* %history, align 4
  call void @gtk_combo_box_set_active(%struct._GtkComboBox* %80, i32 %82)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %for.body
  %83 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %84 = bitcast %struct._GtkWidget* %83 to %struct._GTypeInstance*
  %call52 = call i64 @gimp_int_combo_box_get_type() #7
  %call53 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %84, i64 %call52)
  %85 = bitcast %struct._GTypeInstance* %call53 to %struct._GimpIntComboBox*
  %86 = load %union.SFArgValue*, %union.SFArgValue** %value, align 8
  %sfa_enum = bitcast %union.SFArgValue* %86 to %struct.SFEnum*
  %history54 = getelementptr inbounds %struct.SFEnum, %struct.SFEnum* %sfa_enum, i32 0, i32 1
  %87 = load i32, i32* %history54, align 4
  %call55 = call i32 @gimp_int_combo_box_set_active(%struct._GimpIntComboBox* %85, i32 %87)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.51, %sw.bb.48, %sw.bb.42, %sw.bb.39, %sw.bb.36, %sw.bb.33, %sw.bb.30, %sw.bb.26, %sw.bb.23, %sw.bb.15, %sw.bb.12, %sw.bb.9, %sw.bb.7, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %88 = load i32, i32* %i, align 4
  %inc = add nsw i32 %88, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @gtk_widget_set_sensitive(%struct._GtkWidget*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @script_fu_ok(%struct.SFScript* %script) #0 {
entry:
  %script.addr = alloca %struct.SFScript*, align 8
  %output = alloca %struct._GString*, align 8
  %command = alloca i8*, align 8
  %i = alloca i32, align 4
  %arg_value = alloca %union.SFArgValue*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %view = alloca %struct._GtkWidget*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  %message = alloca i8*, align 8
  store %struct.SFScript* %script, %struct.SFScript** %script.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %n_args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %1, i32 0, i32 7
  %2 = load i32, i32* %n_args, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %4, i32 0, i32 8
  %5 = load %struct.SFArg*, %struct.SFArg** %args, align 8
  %arrayidx = getelementptr inbounds %struct.SFArg, %struct.SFArg* %5, i64 %idxprom
  %value = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx, i32 0, i32 3
  store %union.SFArgValue* %value, %union.SFArgValue** %arg_value, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.SFInterface*, %struct.SFInterface** @sf_interface, align 8
  %widgets = getelementptr inbounds %struct.SFInterface, %struct.SFInterface* %7, i32 0, i32 2
  %8 = load %struct._GtkWidget**, %struct._GtkWidget*** %widgets, align 8
  %arrayidx2 = getelementptr inbounds %struct._GtkWidget*, %struct._GtkWidget** %8, i64 %idxprom1
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %arrayidx2, align 8
  store %struct._GtkWidget* %9, %struct._GtkWidget** %widget, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %args4 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %11, i32 0, i32 8
  %12 = load %struct.SFArg*, %struct.SFArg** %args4, align 8
  %arrayidx5 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %12, i64 %idxprom3
  %type = getelementptr inbounds %struct.SFArg, %struct.SFArg* %arrayidx5, i32 0, i32 0
  %13 = load i32, i32* %type, align 4
  switch i32 %13, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 20, label %sw.bb
    i32 5, label %sw.bb
    i32 6, label %sw.bb
    i32 7, label %sw.bb.6
    i32 8, label %sw.bb.6
    i32 18, label %sw.bb.11
    i32 9, label %sw.bb.21
    i32 14, label %sw.bb.21
    i32 15, label %sw.bb.21
    i32 10, label %sw.bb.21
    i32 17, label %sw.bb.21
    i32 11, label %sw.bb.21
    i32 13, label %sw.bb.21
    i32 12, label %sw.bb.21
    i32 16, label %sw.bb.21
    i32 19, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  br label %sw.epilog

sw.bb.6:                                          ; preds = %for.body, %for.body
  %14 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_value = bitcast %union.SFArgValue* %14 to i8**
  %15 = load i8*, i8** %sfa_value, align 8
  call void @g_free(i8* %15)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call = call i64 @gtk_entry_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call)
  %18 = bitcast %struct._GTypeInstance* %call7 to %struct._GtkEntry*
  %call8 = call i8* @gtk_entry_get_text(%struct._GtkEntry* %18)
  %call9 = call noalias i8* @g_strdup(i8* %call8)
  %19 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_value10 = bitcast %union.SFArgValue* %19 to i8**
  store i8* %call9, i8** %sfa_value10, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %for.body
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %21 = bitcast %struct._GtkWidget* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_bin_get_type() #7
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkBin*
  %call14 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %22)
  store %struct._GtkWidget* %call14, %struct._GtkWidget** %view, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %view, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_text_view_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call15)
  %25 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkTextView*
  %call17 = call %struct._GtkTextBuffer* @gtk_text_view_get_buffer(%struct._GtkTextView* %25)
  store %struct._GtkTextBuffer* %call17, %struct._GtkTextBuffer** %buffer, align 8
  %26 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer* %26, %struct._GtkTextIter* %start)
  %27 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer* %27, %struct._GtkTextIter* %end)
  %28 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_value18 = bitcast %union.SFArgValue* %28 to i8**
  %29 = load i8*, i8** %sfa_value18, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  %call19 = call i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer* %30, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end, i32 0)
  %31 = load %union.SFArgValue*, %union.SFArgValue** %arg_value, align 8
  %sfa_value20 = bitcast %union.SFArgValue* %31 to i8**
  store i8* %call19, i8** %sfa_value20, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.21, %sw.bb.11, %sw.bb.6, %sw.bb
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %call22 = call i8* @script_fu_script_get_command(%struct.SFScript* %33)
  store i8* %call22, i8** %command, align 8
  %call23 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call23, %struct._GString** %output, align 8
  %34 = load %struct._GString*, %struct._GString** %output, align 8
  %35 = bitcast %struct._GString* %34 to i8*
  call void @ts_register_output_func(void (i32, i8*, i32, i8*)* @ts_gstring_output_func, i8* %35)
  %call24 = call i32 @gimp_plugin_set_pdb_error_handler(i32 1)
  %36 = load i8*, i8** %command, align 8
  %call25 = call i32 @ts_interpret_string(i8* %36)
  %tobool = icmp ne i32 %call25, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %call26 = call i8* @gettext(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0)) #5
  %37 = load %struct.SFScript*, %struct.SFScript** %script.addr, align 8
  %name = getelementptr inbounds %struct.SFScript, %struct.SFScript* %37, i32 0, i32 0
  %38 = load i8*, i8** %name, align 8
  %call27 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call26, i8* %38)
  store i8* %call27, i8** %message, align 8
  %39 = load i8*, i8** %message, align 8
  %40 = load %struct._GString*, %struct._GString** %output, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %40, i32 0, i32 0
  %41 = load i8*, i8** %str, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %39, i8* %41)
  %42 = load i8*, i8** %message, align 8
  call void @g_free(i8* %42)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %call28 = call i32 @gimp_plugin_set_pdb_error_handler(i32 0)
  %43 = load %struct._GString*, %struct._GString** %output, align 8
  %call29 = call i8* @g_string_free(%struct._GString* %43, i32 1)
  %44 = load i8*, i8** %command, align 8
  call void @g_free(i8* %44)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unset_transient_for(%struct._GtkWidget* %dialog) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %window = alloca %struct._GdkDrawable*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  store %struct._GdkDrawable* %call, %struct._GdkDrawable** %window, align 8
  %1 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %tobool = icmp ne %struct._GdkDrawable* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GdkDrawable*, %struct._GdkDrawable** %window, align 8
  %call1 = call %struct._GdkAtom* @gdk_atom_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0))
  call void @gdk_property_delete(%struct._GdkDrawable* %2, %struct._GdkAtom* %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gtk_widget_destroy(%struct._GtkWidget*) #2

declare void @script_fu_script_reset(%struct.SFScript*, i32) #2

declare void @gimp_color_button_set_color(%struct._GimpColorButton*, %struct._GimpRGB*) #2

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #2

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #3

declare void @gtk_adjustment_set_value(%struct._GtkAdjustment*, double) #2

declare void @gimp_font_select_button_set_font(%struct._GimpFontSelectButton*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_font_select_button_get_type() #3

declare void @gimp_palette_select_button_set_palette(%struct._GimpPaletteSelectButton*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_palette_select_button_get_type() #3

declare void @gimp_pattern_select_button_set_pattern(%struct._GimpPatternSelectButton*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_select_button_get_type() #3

declare void @gimp_gradient_select_button_set_gradient(%struct._GimpGradientSelectButton*, i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_gradient_select_button_get_type() #3

declare void @gimp_brush_select_button_set_brush(%struct._GimpBrushSelectButton*, i8*, double, i32, i32) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_brush_select_button_get_type() #3

declare i8* @gtk_entry_get_text(%struct._GtkEntry*) #2

declare void @gtk_text_buffer_get_start_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #2

declare void @gtk_text_buffer_get_end_iter(%struct._GtkTextBuffer*, %struct._GtkTextIter*) #2

declare i8* @gtk_text_buffer_get_text(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*, i32) #2

declare i8* @script_fu_script_get_command(%struct.SFScript*) #2

declare %struct._GString* @g_string_new(i8*) #2

declare void @ts_register_output_func(void (i32, i8*, i32, i8*)*, i8*) #2

declare void @ts_gstring_output_func(i32, i8*, i32, i8*) #2

declare i32 @gimp_plugin_set_pdb_error_handler(i32) #2

declare i32 @ts_interpret_string(i8*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #2

declare void @gdk_property_delete(%struct._GdkDrawable*, %struct._GdkAtom*) #2

declare %struct._GdkAtom* @gdk_atom_intern_static_string(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
