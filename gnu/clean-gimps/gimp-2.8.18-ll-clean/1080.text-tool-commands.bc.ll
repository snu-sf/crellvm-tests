; ModuleID = './app/actions/text-tool-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpTextTool = type { %struct._GimpDrawTool, %struct._GimpText*, %struct._GList*, i32, i32, %struct._GimpTextBuffer*, %struct._GimpText*, %struct._GimpTextLayer*, %struct._GimpImage*, %struct._GtkWidget*, %struct._GimpUIManager*, i32, i32, %struct._GimpTextLayout*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i32, %struct._GtkTextIter, i32, i32, %struct._GtkIMContext*, i32, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpDrawTool = type { %struct._GimpTool, %struct._GimpDisplay*, i32, i32, i64, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GList* }
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpToolInfo = type { %struct._GimpViewable, %struct._Gimp*, i64, i64, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct._GimpToolOptions*, %struct._GimpPaintInfo*, %struct._GimpContainer* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpContext = type opaque
%struct._GimpToolOptions = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpToolControl = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpTextBuffer = type { %struct._GtkTextBuffer, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GtkTextTag*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, %struct._GList*, i32, %struct._GList*, %struct._GList*, %struct._GdkAtom* }
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkTextTag = type { %struct._GObject, %struct._GtkTextTagTable*, i8*, i32, %struct._GtkTextAttributes*, i24 }
%struct._GtkTextAttributes = type { i32, %struct._GtkTextAppearance, i32, i32, %struct._PangoFontDescription*, double, i32, i32, i32, i32, i32, i32, %struct._PangoTabArray*, i32, %struct._PangoLanguage*, %struct._GdkColor*, i8 }
%struct._GtkTextAppearance = type { %struct._GdkColor, %struct._GdkColor, %struct._GdkDrawable*, %struct._GdkDrawable*, i32, i8*, i16 }
%struct._GdkColor = type { i32, i16, i16, i16 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._PangoFontDescription = type opaque
%struct._PangoTabArray = type opaque
%struct._PangoLanguage = type opaque
%struct._GdkAtom = type opaque
%struct._GimpText = type opaque
%struct._GimpTextLayer = type opaque
%struct._GimpImage = type opaque
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpTextLayout = type opaque
%struct._GtkTextIter = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i8* }
%struct._GtkIMContext = type { %struct._GObject }
%struct._GtkWidget = type { %struct._GtkObject, i16, i8, i8, i8*, %struct._GtkStyle*, %struct._GtkRequisition, %struct._GdkRectangle, %struct._GdkDrawable*, %struct._GtkWidget* }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GtkStyle = type { %struct._GObject, [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], %struct._GdkColor, %struct._GdkColor, %struct._PangoFontDescription*, i32, i32, [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], [5 x %struct._GdkGC*], %struct._GdkGC*, %struct._GdkGC*, [5 x %struct._GdkDrawable*], i32, i32, %struct._GdkColormap*, %struct._GdkFont*, %struct._PangoFontDescription*, %struct._GtkRcStyle*, %struct._GSList*, %struct._GArray*, %struct._GSList* }
%struct._GdkGC = type { %struct._GObject, i32, i32, i32, i32, %struct._GdkColormap* }
%struct._GdkColormap = type { %struct._GObject, i32, %struct._GdkColor*, %struct._GdkVisual*, i8* }
%struct._GdkVisual = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GdkFont = type opaque
%struct._GtkRcStyle = type { %struct._GObject, i8*, [5 x i8*], %struct._PangoFontDescription*, [5 x i32], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], [5 x %struct._GdkColor], i32, i32, %struct._GArray*, %struct._GSList*, %struct._GSList*, i8 }
%struct._GArray = type { i8*, i32 }
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GtkFileChooser = type opaque
%struct._GimpDisplayShell = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GtkRadioAction = type { %struct._GtkToggleAction, %struct._GtkRadioActionPrivate* }
%struct._GtkToggleAction = type { %struct._GtkAction, %struct._GtkToggleActionPrivate* }
%struct._GtkToggleActionPrivate = type opaque
%struct._GtkRadioActionPrivate = type opaque

@.str = private unnamed_addr constant [22 x i8] c"gimp-text-file-dialog\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Open Text File (UTF-8)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"gtk-open\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"gimp-text-load-file\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"delete-event\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"base-direction\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @text_tool_cut_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_cut_clipboard(%struct._GimpTextTool* %3)
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_text_tool_get_type() #2

declare void @gimp_text_tool_cut_clipboard(%struct._GimpTextTool*) #1

; Function Attrs: nounwind uwtable
define void @text_tool_copy_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_copy_clipboard(%struct._GimpTextTool* %3)
  ret void
}

declare void @gimp_text_tool_copy_clipboard(%struct._GimpTextTool*) #1

; Function Attrs: nounwind uwtable
define void @text_tool_paste_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_paste_clipboard(%struct._GimpTextTool* %3)
  ret void
}

declare void @gimp_text_tool_paste_clipboard(%struct._GimpTextTool*) #1

; Function Attrs: nounwind uwtable
define void @text_tool_delete_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_delete_selection(%struct._GimpTextTool* %3)
  ret void
}

declare void @gimp_text_tool_delete_selection(%struct._GimpTextTool*) #1

; Function Attrs: nounwind uwtable
define void @text_tool_load_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %parent = alloca %struct._GtkWidget*, align 8
  %chooser = alloca %struct._GtkFileChooser*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %parent, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %4 = bitcast %struct._GimpTextTool* %3 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %call3 = call i8* @g_object_get_data(%struct._GObject* %5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0))
  %6 = bitcast i8* %call3 to %struct._GtkWidget*
  store %struct._GtkWidget* %6, %struct._GtkWidget** %dialog, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %9 = bitcast %struct._GtkWidget* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_window_get_type() #4
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %10)
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %12 = bitcast %struct._GimpTextTool* %11 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_tool_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call6)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpTool*
  %display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %13, i32 0, i32 4
  %14 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool8 = icmp ne %struct._GimpDisplay* %14, null
  br i1 %tobool8, label %if.then.9, label %if.end.17

if.then.9:                                        ; preds = %if.end
  %15 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %16 = bitcast %struct._GimpTextTool* %15 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_tool_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call10)
  %17 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpTool*
  %display12 = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %17, i32 0, i32 4
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display12, align 8
  %call13 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %18)
  store %struct._GimpDisplayShell* %call13, %struct._GimpDisplayShell** %shell, align 8
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %20 = bitcast %struct._GimpDisplayShell* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %call16 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %21)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %parent, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.9, %if.end
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0)) #5
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %tobool19 = icmp ne %struct._GtkWidget* %22, null
  br i1 %tobool19, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.17
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_window_get_type() #4
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call20)
  %25 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWindow*
  br label %cond.end

cond.false:                                       ; preds = %if.end.17
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GtkWindow* [ %25, %cond.true ], [ null, %cond.false ]
  %call22 = call %struct._GtkWidget* (i8*, %struct._GtkWindow*, i32, i8*, ...) @gtk_file_chooser_dialog_new(i8* %call18, %struct._GtkWindow* %cond, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %dialog, align 8
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %27 = bitcast %struct._GtkWidget* %26 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_file_chooser_get_type() #4
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call23)
  %28 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkFileChooser*
  store %struct._GtkFileChooser* %28, %struct._GtkFileChooser** %chooser, align 8
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_dialog_get_type() #4
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call25)
  %31 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %31, i32 -5, i32 -6, i32 -1)
  %32 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %33 = bitcast %struct._GimpTextTool* %32 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %36 = bitcast %struct._GtkWidget* %35 to i8*
  call void @g_object_set_data(%struct._GObject* %34, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* %36)
  %37 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %38 = bitcast %struct._GtkWidget* %37 to i8*
  %39 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %40 = bitcast %struct._GimpTextTool* %39 to i8*
  %call28 = call i64 @g_signal_connect_data(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GObject*)* @text_tool_load_dialog_destroyed to void ()*), i8* %40, void (i8*, %struct._GClosure*)* null, i32 0)
  %41 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %42 = bitcast %struct._GtkFileChooser* %41 to %struct._GTypeInstance*
  %call29 = call i64 @gtk_window_get_type() #4
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call29)
  %43 = bitcast %struct._GTypeInstance* %call30 to %struct._GtkWindow*
  call void @gtk_window_set_role(%struct._GtkWindow* %43, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  %44 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %45 = bitcast %struct._GtkFileChooser* %44 to %struct._GTypeInstance*
  %call31 = call i64 @gtk_window_get_type() #4
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call31)
  %46 = bitcast %struct._GTypeInstance* %call32 to %struct._GtkWindow*
  call void @gtk_window_set_position(%struct._GtkWindow* %46, i32 2)
  %47 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %48 = bitcast %struct._GtkFileChooser* %47 to %struct._GTypeInstance*
  %call33 = call i64 @gtk_dialog_get_type() #4
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %48, i64 %call33)
  %49 = bitcast %struct._GTypeInstance* %call34 to %struct._GtkDialog*
  call void @gtk_dialog_set_default_response(%struct._GtkDialog* %49, i32 -5)
  %50 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %51 = bitcast %struct._GtkFileChooser* %50 to i8*
  %52 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %53 = bitcast %struct._GimpTextTool* %52 to i8*
  %call35 = call i64 @g_signal_connect_data(i8* %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpTextTool*)* @text_tool_load_dialog_response to void ()*), i8* %53, void (i8*, %struct._GClosure*)* null, i32 0)
  %54 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %55 = bitcast %struct._GtkFileChooser* %54 to i8*
  %call36 = call i64 @g_signal_connect_data(i8* %55, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (i32 ()* @gtk_true to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %56 = load %struct._GtkFileChooser*, %struct._GtkFileChooser** %chooser, align 8
  %57 = bitcast %struct._GtkFileChooser* %56 to %struct._GTypeInstance*
  %call37 = call i64 @gtk_widget_get_type() #4
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call37)
  %58 = bitcast %struct._GTypeInstance* %call38 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %58)
  br label %return

return:                                           ; preds = %cond.end, %if.then
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_tool_get_type() #2

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkWidget* @gtk_file_chooser_dialog_new(i8*, %struct._GtkWindow*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #2

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @text_tool_load_dialog_destroyed(%struct._GtkWidget* %dialog, %struct._GObject* %tool) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %tool.addr = alloca %struct._GObject*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GObject* %tool, %struct._GObject** %tool.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %tool.addr, align 8
  call void @g_object_set_data(%struct._GObject* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i8* null)
  ret void
}

declare void @gtk_window_set_role(%struct._GtkWindow*, i8*) #1

declare void @gtk_window_set_position(%struct._GtkWindow*, i32) #1

declare void @gtk_dialog_set_default_response(%struct._GtkDialog*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @text_tool_load_dialog_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GimpTextTool* %tool) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %tool.addr = alloca %struct._GimpTextTool*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpTextTool* %tool, %struct._GimpTextTool** %tool.addr, align 8
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
  %4 = load %struct._GimpTextTool*, %struct._GimpTextTool** %tool.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %4, i32 0, i32 5
  %5 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer, align 8
  %6 = load i8*, i8** %filename, align 8
  %call3 = call i32 @gimp_text_buffer_load(%struct._GimpTextBuffer* %5, i8* %6, %struct._GError** %error)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._GimpTextTool*, %struct._GimpTextTool** %tool.addr, align 8
  %8 = bitcast %struct._GimpTextTool* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_tool_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpTool*
  %tool_info = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %9, i32 0, i32 1
  %10 = load %struct._GimpToolInfo*, %struct._GimpToolInfo** %tool_info, align 8
  %gimp = getelementptr inbounds %struct._GimpToolInfo, %struct._GimpToolInfo* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 80)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i32 0, i32 0)) #5
  %15 = load i8*, i8** %filename, align 8
  %call9 = call i8* @gimp_filename_to_utf8(i8* %15)
  %16 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %16, i32 0, i32 2
  %17 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %11, %struct._GObject* %14, i32 2, i8* %call8, i8* %call9, i8* %17)
  call void @g_clear_error(%struct._GError** %error)
  %18 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %18)
  br label %return

if.end:                                           ; preds = %if.then
  %19 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %19)
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %entry
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_hide(%struct._GtkWidget* %20)
  br label %return

return:                                           ; preds = %if.end.10, %if.then.4
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @gtk_true() #2

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @text_tool_clear_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %buffer = alloca %struct._GtkTextBuffer*, align 8
  %start = alloca %struct._GtkTextIter, align 8
  %end = alloca %struct._GtkTextIter, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %buffer2 = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %3, i32 0, i32 5
  %4 = load %struct._GimpTextBuffer*, %struct._GimpTextBuffer** %buffer2, align 8
  %5 = bitcast %struct._GimpTextBuffer* %4 to %struct._GTypeInstance*
  %call3 = call i64 @gtk_text_buffer_get_type() #4
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call3)
  %6 = bitcast %struct._GTypeInstance* %call4 to %struct._GtkTextBuffer*
  store %struct._GtkTextBuffer* %6, %struct._GtkTextBuffer** %buffer, align 8
  %7 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer* %7, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %8 = load %struct._GtkTextBuffer*, %struct._GtkTextBuffer** %buffer, align 8
  call void @gtk_text_buffer_select_range(%struct._GtkTextBuffer* %8, %struct._GtkTextIter* %start, %struct._GtkTextIter* %end)
  %9 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_delete_selection(%struct._GimpTextTool* %9)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_text_buffer_get_type() #2

declare void @gtk_text_buffer_get_bounds(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

declare void @gtk_text_buffer_select_range(%struct._GtkTextBuffer*, %struct._GtkTextIter*, %struct._GtkTextIter*) #1

; Function Attrs: nounwind uwtable
define void @text_tool_text_to_path_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_create_vectors(%struct._GimpTextTool* %3)
  ret void
}

declare void @gimp_text_tool_create_vectors(%struct._GimpTextTool*) #1

; Function Attrs: nounwind uwtable
define void @text_tool_text_along_path_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  call void @gimp_text_tool_create_vectors_warped(%struct._GimpTextTool* %3)
  ret void
}

declare void @gimp_text_tool_create_vectors_warped(%struct._GimpTextTool*) #1

; Function Attrs: nounwind uwtable
define void @text_tool_direction_cmd_callback(%struct._GtkAction* %action, %struct._GtkAction* %current, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %current.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %text_tool = alloca %struct._GimpTextTool*, align 8
  %value = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store %struct._GtkAction* %current, %struct._GtkAction** %current.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_text_tool_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpTextTool*
  store %struct._GimpTextTool* %2, %struct._GimpTextTool** %text_tool, align 8
  %3 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %4 = bitcast %struct._GtkAction* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_radio_action_get_type() #4
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkRadioAction*
  %call4 = call i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction* %5)
  store i32 %call4, i32* %value, align 4
  %6 = load %struct._GimpTextTool*, %struct._GimpTextTool** %text_tool, align 8
  %proxy = getelementptr inbounds %struct._GimpTextTool, %struct._GimpTextTool* %6, i32 0, i32 1
  %7 = load %struct._GimpText*, %struct._GimpText** %proxy, align 8
  %8 = bitcast %struct._GimpText* %7 to i8*
  %9 = load i32, i32* %value, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 %9, i8* null)
  ret void
}

declare i32 @gtk_radio_action_get_current_value(%struct._GtkRadioAction*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_radio_action_get_type() #2

declare void @g_object_set(i8*, i8*, ...) #1

declare i8* @gtk_file_chooser_get_filename(%struct._GtkFileChooser*) #1

declare i32 @gimp_text_buffer_load(%struct._GimpTextBuffer*, i8*, %struct._GError**) #1

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
