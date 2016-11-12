; ModuleID = './app/gui/gui-message.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, {}*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
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
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
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
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpWindowStrategy = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GimpErrorConsole = type { %struct._GimpEditor, %struct._Gimp*, %struct._GtkTextBuffer*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32 }
%struct._GimpEditor = type { %struct._GtkBox, %struct._GimpEditorPrivate* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpEditorPrivate = type opaque
%struct._GtkTextBuffer = type { %struct._GObject, %struct._GtkTextTagTable*, %struct._GtkTextBTree*, %struct._GSList*, %struct._GSList*, %struct._GtkTextLogAttrCache*, i32, i8 }
%struct._GtkTextTagTable = type { %struct._GObject, %struct._GHashTable*, %struct._GSList*, i32, %struct._GSList* }
%struct._GHashTable = type opaque
%struct._GtkTextBTree = type opaque
%struct._GtkTextLogAttrCache = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpErrorDialog = type { %struct._GimpDialog, %struct._GtkWidget*, %struct._GtkWidget*, i8*, i8*, i32 }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GimpUIManager = type opaque

@.str = private unnamed_addr constant [19 x i8] c"gimp-error-console\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"gimp-error-dialog\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Gimp-GUI\00", align 1
@__func__.progress_error_dialog = private unnamed_addr constant [22 x i8] c"progress_error_dialog\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"GIMP_IS_PROGRESS (progress)\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"GIMP Message\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"Message\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%s-%s: %s\0A\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @gui_message(%struct._Gimp* %gimp, %struct._GObject* %handler, i32 %severity, i8* %domain, i8* %message) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %handler.addr = alloca %struct._GObject*, align 8
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GObject* %handler, %struct._GObject** %handler.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %message_handler = getelementptr inbounds %struct._Gimp, %struct._Gimp* %0, i32 0, i32 10
  %1 = load i32, i32* %message_handler, align 4
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 0, label %sw.bb.2
    i32 1, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %3 = load i32, i32* %severity.addr, align 4
  %4 = load i8*, i8** %domain.addr, align 8
  %5 = load i8*, i8** %message.addr, align 8
  %call = call i32 @gui_message_error_console(%struct._Gimp* %2, i32 %3, i8* %4, i8* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %message_handler1 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 10
  store i32 0, i32* %message_handler1, align 4
  br label %sw.bb.2

sw.bb.2:                                          ; preds = %entry, %if.end
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %8 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %9 = load i32, i32* %severity.addr, align 4
  %10 = load i8*, i8** %domain.addr, align 8
  %11 = load i8*, i8** %message.addr, align 8
  %call3 = call i32 @gui_message_error_dialog(%struct._Gimp* %7, %struct._GObject* %8, i32 %9, i8* %10, i8* %11)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %sw.bb.2
  br label %sw.epilog

if.end.6:                                         ; preds = %sw.bb.2
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %message_handler7 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %12, i32 0, i32 10
  store i32 1, i32* %message_handler7, align 4
  br label %sw.bb.8

sw.bb.8:                                          ; preds = %entry, %if.end.6
  %13 = load i32, i32* %severity.addr, align 4
  %14 = load i8*, i8** %domain.addr, align 8
  %15 = load i8*, i8** %message.addr, align 8
  call void @gui_message_console(i32 %13, i8* %14, i8* %15)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %if.then.5, %entry, %sw.bb.8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_message_error_console(%struct._Gimp* %gimp, i32 %severity, i8* %domain, i8* %message) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %dockable = alloca %struct._GtkWidget*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %child = alloca %struct._GtkWidget*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %dockable, align 8
  %0 = load i32, i32* %severity.addr, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call1 = call %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory* %call, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call2 = call i64 @gimp_dockable_get_type() #5
  store i64 %call2, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool4 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool4, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp6 = icmp eq i64 %8, %9
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.3
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  store %struct._GtkWidget* %14, %struct._GtkWidget** %dockable, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %entry
  %15 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %tobool15 = icmp ne %struct._GtkWidget* %15, null
  br i1 %tobool15, label %if.end.23, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call17 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %16)
  %17 = bitcast %struct._GimpObject* %call17 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_window_strategy_interface_get_type() #5
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call18)
  %18 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpWindowStrategy*
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call20 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call21 = call %struct._GdkScreen* @gdk_screen_get_default()
  %call22 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %18, %struct._Gimp* %19, %struct._GimpDialogFactory* %call20, %struct._GdkScreen* %call21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %dockable, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.16, %if.end.14
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %tobool24 = icmp ne %struct._GtkWidget* %20, null
  br i1 %tobool24, label %if.then.25, label %if.end.32

if.then.25:                                       ; preds = %if.end.23
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dockable, align 8
  %22 = bitcast %struct._GtkWidget* %21 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_bin_get_type() #5
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call27)
  %23 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkBin*
  %call29 = call %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin* %23)
  store %struct._GtkWidget* %call29, %struct._GtkWidget** %child, align 8
  %24 = load %struct._GtkWidget*, %struct._GtkWidget** %child, align 8
  %25 = bitcast %struct._GtkWidget* %24 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_error_console_get_type() #5
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call30)
  %26 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpErrorConsole*
  %27 = load i32, i32* %severity.addr, align 4
  %28 = load i8*, i8** %domain.addr, align 8
  %29 = load i8*, i8** %message.addr, align 8
  call void @gimp_error_console_add(%struct._GimpErrorConsole* %26, i32 %27, i8* %28, i8* %29)
  store i32 1, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.23
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.25
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @gui_message_error_dialog(%struct._Gimp* %gimp, %struct._GObject* %handler, i32 %severity, i8* %domain, i8* %message) #0 {
entry:
  %retval = alloca i32, align 4
  %gimp.addr = alloca %struct._Gimp*, align 8
  %handler.addr = alloca %struct._GObject*, align 8
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %parent = alloca %struct._GtkWidget*, align 8
  %type = alloca i32, align 4
  %__inst57 = alloca %struct._GTypeInstance*, align 8
  %__t59 = alloca i64, align 8
  %__r62 = alloca i32, align 4
  %tmp77 = alloca i32, align 4
  %__inst81 = alloca %struct._GTypeInstance*, align 8
  %__t83 = alloca i64, align 8
  %__r86 = alloca i32, align 4
  %tmp101 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GObject* %handler, %struct._GObject** %handler.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_progress_interface_get_type() #5
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %entry
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else.18

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %call9 = call i8* @g_object_get_data(%struct._GObject* %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %if.end.17, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %if.then.8
  %14 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %15 = bitcast %struct._GObject* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_progress_interface_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpProgress*
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %18 = load i32, i32* %severity.addr, align 4
  %19 = load i8*, i8** %domain.addr, align 8
  %20 = load i8*, i8** %message.addr, align 8
  %call14 = call i32 @gimp_progress_message(%struct._GimpProgress* %16, %struct._Gimp* %17, i32 %18, i8* %19, i8* %20)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true.11, %if.then.8
  br label %if.end.55

if.else.18:                                       ; preds = %if.end.6
  %21 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %22 = bitcast %struct._GObject* %21 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %22, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gtk_widget_get_type() #5
  store i64 %call23, i64* %__t22, align 8
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %23, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %if.else.18
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %if.else.18
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %25, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type33, align 8
  %29 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %28, %29
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %31 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %30, i64 %31) #6
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %32 = load i32, i32* %__r25, align 4
  store i32 %32, i32* %tmp40
  %33 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %33, 0
  br i1 %tobool41, label %if.then.42, label %if.end.54

if.then.42:                                       ; preds = %if.end.39
  %34 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %35 = bitcast %struct._GObject* %34 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_widget_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call44)
  %36 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkWidget*
  store %struct._GtkWidget* %36, %struct._GtkWidget** %parent, align 8
  store i32 3, i32* %type, align 4
  %37 = load i32, i32* %severity.addr, align 4
  switch i32 %37, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.47
    i32 2, label %sw.bb.48
  ]

sw.bb:                                            ; preds = %if.then.42
  store i32 0, i32* %type, align 4
  br label %sw.epilog

sw.bb.47:                                         ; preds = %if.then.42
  store i32 1, i32* %type, align 4
  br label %sw.epilog

sw.bb.48:                                         ; preds = %if.then.42
  store i32 3, i32* %type, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.42, %sw.bb.48, %sw.bb.47, %sw.bb
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %parent, align 8
  %call49 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %38)
  %39 = bitcast %struct._GtkWidget* %call49 to %struct._GTypeInstance*
  %call50 = call i64 @gtk_window_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call50)
  %40 = bitcast %struct._GTypeInstance* %call51 to %struct._GtkWindow*
  %41 = load i32, i32* %type, align 4
  %42 = load i8*, i8** %message.addr, align 8
  %call52 = call %struct._GtkWidget* (%struct._GtkWindow*, i32, i32, i32, i8*, ...) @gtk_message_dialog_new(%struct._GtkWindow* %40, i32 2, i32 %41, i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* %42)
  store %struct._GtkWidget* %call52, %struct._GtkWidget** %dialog, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %44 = bitcast %struct._GtkWidget* %43 to i8*
  %call53 = call i64 @g_signal_connect_data(i8* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %45)
  store i32 1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.39
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.end.17
  %46 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %47 = bitcast %struct._GObject* %46 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %47, %struct._GTypeInstance** %__inst57, align 8
  %call60 = call i64 @gimp_progress_interface_get_type() #5
  store i64 %call60, i64* %__t59, align 8
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %tobool63 = icmp ne %struct._GTypeInstance* %48, null
  br i1 %tobool63, label %if.else.65, label %if.then.64

if.then.64:                                       ; preds = %if.end.55
  store i32 0, i32* %__r62, align 4
  br label %if.end.76

if.else.65:                                       ; preds = %if.end.55
  %49 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class66 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %49, i32 0, i32 0
  %50 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class66, align 8
  %tobool67 = icmp ne %struct._GTypeClass* %50, null
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.73

land.lhs.true.68:                                 ; preds = %if.else.65
  %51 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %g_class69 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %51, i32 0, i32 0
  %52 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class69, align 8
  %g_type70 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %52, i32 0, i32 0
  %53 = load i64, i64* %g_type70, align 8
  %54 = load i64, i64* %__t59, align 8
  %cmp71 = icmp eq i64 %53, %54
  br i1 %cmp71, label %if.then.72, label %if.else.73

if.then.72:                                       ; preds = %land.lhs.true.68
  store i32 1, i32* %__r62, align 4
  br label %if.end.75

if.else.73:                                       ; preds = %land.lhs.true.68, %if.else.65
  %55 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst57, align 8
  %56 = load i64, i64* %__t59, align 8
  %call74 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %55, i64 %56) #6
  store i32 %call74, i32* %__r62, align 4
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.73, %if.then.72
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.64
  %57 = load i32, i32* %__r62, align 4
  store i32 %57, i32* %tmp77
  %58 = load i32, i32* %tmp77
  %tobool78 = icmp ne i32 %58, 0
  br i1 %tobool78, label %land.lhs.true.79, label %if.else.107

land.lhs.true.79:                                 ; preds = %if.end.76
  %59 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %60 = bitcast %struct._GObject* %59 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %60, %struct._GTypeInstance** %__inst81, align 8
  %call84 = call i64 @gimp_progress_dialog_get_type() #5
  store i64 %call84, i64* %__t83, align 8
  %61 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %tobool87 = icmp ne %struct._GTypeInstance* %61, null
  br i1 %tobool87, label %if.else.89, label %if.then.88

if.then.88:                                       ; preds = %land.lhs.true.79
  store i32 0, i32* %__r86, align 4
  br label %if.end.100

if.else.89:                                       ; preds = %land.lhs.true.79
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %g_class90 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %62, i32 0, i32 0
  %63 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class90, align 8
  %tobool91 = icmp ne %struct._GTypeClass* %63, null
  br i1 %tobool91, label %land.lhs.true.92, label %if.else.97

land.lhs.true.92:                                 ; preds = %if.else.89
  %64 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %g_class93 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %64, i32 0, i32 0
  %65 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class93, align 8
  %g_type94 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %65, i32 0, i32 0
  %66 = load i64, i64* %g_type94, align 8
  %67 = load i64, i64* %__t83, align 8
  %cmp95 = icmp eq i64 %66, %67
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %land.lhs.true.92
  store i32 1, i32* %__r86, align 4
  br label %if.end.99

if.else.97:                                       ; preds = %land.lhs.true.92, %if.else.89
  %68 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst81, align 8
  %69 = load i64, i64* %__t83, align 8
  %call98 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %68, i64 %69) #6
  store i32 %call98, i32* %__r86, align 4
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.97, %if.then.96
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.88
  %70 = load i32, i32* %__r86, align 4
  store i32 %70, i32* %tmp101
  %71 = load i32, i32* %tmp101
  %tobool102 = icmp ne i32 %71, 0
  br i1 %tobool102, label %if.else.107, label %if.then.103

if.then.103:                                      ; preds = %if.end.100
  %72 = load %struct._GObject*, %struct._GObject** %handler.addr, align 8
  %73 = bitcast %struct._GObject* %72 to %struct._GTypeInstance*
  %call104 = call i64 @gimp_progress_interface_get_type() #5
  %call105 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call104)
  %74 = bitcast %struct._GTypeInstance* %call105 to %struct._GimpProgress*
  %call106 = call %struct._GtkWidget* @progress_error_dialog(%struct._GimpProgress* %74)
  store %struct._GtkWidget* %call106, %struct._GtkWidget** %dialog, align 8
  br label %if.end.109

if.else.107:                                      ; preds = %if.end.100, %if.end.76
  %call108 = call %struct._GtkWidget* @global_error_dialog()
  store %struct._GtkWidget* %call108, %struct._GtkWidget** %dialog, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.107, %if.then.103
  %75 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool110 = icmp ne %struct._GtkWidget* %75, null
  br i1 %tobool110, label %if.then.111, label %if.end.117

if.then.111:                                      ; preds = %if.end.109
  %76 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %77 = bitcast %struct._GtkWidget* %76 to %struct._GTypeInstance*
  %call112 = call i64 @gimp_error_dialog_get_type() #5
  %call113 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call112)
  %78 = bitcast %struct._GTypeInstance* %call113 to %struct._GimpErrorDialog*
  %79 = load i32, i32* %severity.addr, align 4
  %call114 = call i8* @gimp_get_message_stock_id(i32 %79)
  %80 = load i8*, i8** %domain.addr, align 8
  %81 = load i8*, i8** %message.addr, align 8
  call void @gimp_error_dialog_add(%struct._GimpErrorDialog* %78, i8* %call114, i8* %80, i8* %81)
  %82 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %83 = bitcast %struct._GtkWidget* %82 to %struct._GTypeInstance*
  %call115 = call i64 @gtk_window_get_type() #5
  %call116 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %83, i64 %call115)
  %84 = bitcast %struct._GTypeInstance* %call116 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %84)
  store i32 1, i32* %retval
  br label %return

if.end.117:                                       ; preds = %if.end.109
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.117, %if.then.111, %sw.epilog, %if.then.16
  %85 = load i32, i32* %retval
  ret i32 %85
}

; Function Attrs: nounwind uwtable
define internal void @gui_message_console(i32 %severity, i8* %domain, i8* %message) #0 {
entry:
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %desc = alloca i8*, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i32 0, i32 0), i8** %desc, align 8
  %call = call i64 @gimp_message_severity_get_type() #5
  %0 = load i32, i32* %severity.addr, align 4
  %call1 = call i32 @gimp_enum_get_value(i64 %call, i32 %0, i8** null, i8** null, i8** %desc, i8** null)
  %1 = load i8*, i8** %domain.addr, align 8
  %2 = load i8*, i8** %desc, align 8
  %3 = load i8*, i8** %message.addr, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* %1, i8* %2, i8* %3)
  ret void
}

declare %struct._GtkWidget* @gimp_dialog_factory_find_widget(%struct._GimpDialogFactory*, i8*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dockable_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #2

declare %struct._GdkScreen* @gdk_screen_get_default() #1

declare %struct._GtkWidget* @gtk_bin_get_child(%struct._GtkBin*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_bin_get_type() #2

declare void @gimp_error_console_add(%struct._GimpErrorConsole*, i32, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_error_console_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare i32 @gimp_progress_message(%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare %struct._GtkWidget* @gtk_message_dialog_new(%struct._GtkWindow*, i32, i32, i32, i8*, ...) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_dialog_get_type() #2

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @progress_error_dialog(%struct._GimpProgress* %progress) #0 {
entry:
  %retval = alloca %struct._GtkWidget*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst20 = alloca %struct._GTypeInstance*, align 8
  %__t22 = alloca i64, align 8
  %__r25 = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  %toplevel = alloca %struct._GtkWidget*, align 8
  %__inst48 = alloca %struct._GTypeInstance*, align 8
  %__t50 = alloca i64, align 8
  %__r53 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  %window_id = alloca i32, align 4
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_progress_interface_get_type() #5
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.progress_error_dialog, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._GtkWidget* null, %struct._GtkWidget** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %14 = bitcast %struct._GimpProgress* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @g_object_get_data(%struct._GObject* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %16 = bitcast i8* %call12 to %struct._GtkWidget*
  store %struct._GtkWidget* %16, %struct._GtkWidget** %dialog, align 8
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool13 = icmp ne %struct._GtkWidget* %17, null
  br i1 %tobool13, label %if.end.85, label %if.then.14

if.then.14:                                       ; preds = %do.end
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)) #7
  %call16 = call %struct._GtkWidget* @gimp_error_dialog_new(i8* %call15)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %dialog, align 8
  %18 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %19 = bitcast %struct._GimpProgress* %18 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %21 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %22 = bitcast %struct._GtkWidget* %21 to i8*
  call void @g_object_set_data(%struct._GObject* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %24 = bitcast %struct._GtkWidget* %23 to i8*
  %25 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %26 = bitcast %struct._GimpProgress* %25 to i8*
  %call18 = call i64 @g_signal_connect_object(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), void ()* bitcast (void (%struct._GimpProgress*)* @progress_error_dialog_unset to void ()*), i8* %26, i32 2)
  %27 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %28 = bitcast %struct._GimpProgress* %27 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %28, %struct._GTypeInstance** %__inst20, align 8
  %call23 = call i64 @gtk_widget_get_type() #5
  store i64 %call23, i64* %__t22, align 8
  %29 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %tobool26 = icmp ne %struct._GTypeInstance* %29, null
  br i1 %tobool26, label %if.else.28, label %if.then.27

if.then.27:                                       ; preds = %if.then.14
  store i32 0, i32* %__r25, align 4
  br label %if.end.39

if.else.28:                                       ; preds = %if.then.14
  %30 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %tobool30 = icmp ne %struct._GTypeClass* %31, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.else.36

land.lhs.true.31:                                 ; preds = %if.else.28
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type33, align 8
  %35 = load i64, i64* %__t22, align 8
  %cmp34 = icmp eq i64 %34, %35
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %land.lhs.true.31
  store i32 1, i32* %__r25, align 4
  br label %if.end.38

if.else.36:                                       ; preds = %land.lhs.true.31, %if.else.28
  %36 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst20, align 8
  %37 = load i64, i64* %__t22, align 8
  %call37 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %36, i64 %37) #6
  store i32 %call37, i32* %__r25, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.36, %if.then.35
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.27
  %38 = load i32, i32* %__r25, align 4
  store i32 %38, i32* %tmp40
  %39 = load i32, i32* %tmp40
  %tobool41 = icmp ne i32 %39, 0
  br i1 %tobool41, label %if.then.42, label %if.else.76

if.then.42:                                       ; preds = %if.end.39
  %40 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %41 = bitcast %struct._GimpProgress* %40 to %struct._GTypeInstance*
  %call44 = call i64 @gtk_widget_get_type() #5
  %call45 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call44)
  %42 = bitcast %struct._GTypeInstance* %call45 to %struct._GtkWidget*
  %call46 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %42)
  store %struct._GtkWidget* %call46, %struct._GtkWidget** %toplevel, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %44 = bitcast %struct._GtkWidget* %43 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %44, %struct._GTypeInstance** %__inst48, align 8
  %call51 = call i64 @gtk_window_get_type() #5
  store i64 %call51, i64* %__t50, align 8
  %45 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %tobool54 = icmp ne %struct._GTypeInstance* %45, null
  br i1 %tobool54, label %if.else.56, label %if.then.55

if.then.55:                                       ; preds = %if.then.42
  store i32 0, i32* %__r53, align 4
  br label %if.end.67

if.else.56:                                       ; preds = %if.then.42
  %46 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %g_class57 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class57, align 8
  %tobool58 = icmp ne %struct._GTypeClass* %47, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.else.64

land.lhs.true.59:                                 ; preds = %if.else.56
  %48 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %g_class60 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class60, align 8
  %g_type61 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %49, i32 0, i32 0
  %50 = load i64, i64* %g_type61, align 8
  %51 = load i64, i64* %__t50, align 8
  %cmp62 = icmp eq i64 %50, %51
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %land.lhs.true.59
  store i32 1, i32* %__r53, align 4
  br label %if.end.66

if.else.64:                                       ; preds = %land.lhs.true.59, %if.else.56
  %52 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst48, align 8
  %53 = load i64, i64* %__t50, align 8
  %call65 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %52, i64 %53) #6
  store i32 %call65, i32* %__r53, align 4
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.64, %if.then.63
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.then.55
  %54 = load i32, i32* %__r53, align 4
  store i32 %54, i32* %tmp68
  %55 = load i32, i32* %tmp68
  %tobool69 = icmp ne i32 %55, 0
  br i1 %tobool69, label %if.then.70, label %if.end.75

if.then.70:                                       ; preds = %if.end.67
  %56 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %57 = bitcast %struct._GtkWidget* %56 to %struct._GTypeInstance*
  %call71 = call i64 @gtk_window_get_type() #5
  %call72 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %57, i64 %call71)
  %58 = bitcast %struct._GTypeInstance* %call72 to %struct._GtkWindow*
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %60 = bitcast %struct._GtkWidget* %59 to %struct._GTypeInstance*
  %call73 = call i64 @gtk_window_get_type() #5
  %call74 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %60, i64 %call73)
  %61 = bitcast %struct._GTypeInstance* %call74 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %58, %struct._GtkWindow* %61)
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.70, %if.end.67
  br label %if.end.84

if.else.76:                                       ; preds = %if.end.39
  %62 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %call78 = call i32 @gimp_progress_get_window_id(%struct._GimpProgress* %62)
  store i32 %call78, i32* %window_id, align 4
  %63 = load i32, i32* %window_id, align 4
  %tobool79 = icmp ne i32 %63, 0
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.else.76
  %64 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %65 = bitcast %struct._GtkWidget* %64 to %struct._GTypeInstance*
  %call81 = call i64 @gtk_window_get_type() #5
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 %call81)
  %66 = bitcast %struct._GTypeInstance* %call82 to %struct._GtkWindow*
  %67 = load i32, i32* %window_id, align 4
  call void @gimp_window_set_transient_for(%struct._GtkWindow* %66, i32 %67)
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.else.76
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %if.end.75
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %do.end
  %68 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  store %struct._GtkWidget* %68, %struct._GtkWidget** %retval
  br label %return

return:                                           ; preds = %if.end.85, %if.else.9
  %69 = load %struct._GtkWidget*, %struct._GtkWidget** %retval
  ret %struct._GtkWidget* %69
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @global_error_dialog() #0 {
entry:
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call1 = call %struct._GdkScreen* @gdk_screen_get_default()
  %call2 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %call, %struct._GdkScreen* %call1, %struct._GimpUIManager* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 0)
  ret %struct._GtkWidget* %call2
}

declare void @gimp_error_dialog_add(%struct._GimpErrorDialog*, i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_error_dialog_get_type() #2

declare i8* @gimp_get_message_stock_id(i32) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare %struct._GtkWidget* @gimp_error_dialog_new(i8*) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @progress_error_dialog_unset(%struct._GimpProgress* %progress) #0 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* null)
  ret void
}

declare void @gtk_window_set_transient_for(%struct._GtkWindow*, %struct._GtkWindow*) #1

declare i32 @gimp_progress_get_window_id(%struct._GimpProgress*) #1

declare void @gimp_window_set_transient_for(%struct._GtkWindow*, i32) #1

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpUIManager*, i8*, i32, i32) #1

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_severity_get_type() #2

declare void @g_printerr(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
