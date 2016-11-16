; ModuleID = './app/actions/file-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type { %struct._GimpObject, %struct._Gimp*, %struct._GSList*, i32, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugIn*, %struct._GSList*, %struct._GSList*, %struct._GSList*, %struct._GimpPlugInShm*, %struct._GimpInterpreterDB*, %struct._GimpEnvironTable*, %struct._GimpPlugInDebug*, %struct._GList* }
%struct._GimpPlugIn = type opaque
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GimpPlugInShm = type opaque
%struct._GimpInterpreterDB = type opaque
%struct._GimpEnvironTable = type opaque
%struct._GimpPlugInDebug = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type { %struct._GimpViewable }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GdkDrawable = type { %struct._GObject }
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpUIManager = type opaque
%struct._GtkFileChooser = type opaque
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GimpFileDialog = type { %struct._GtkFileChooserDialog, %struct._GimpPlugInProcedure*, %struct._GimpImage*, i32, i32, i32, i32, %struct._GimpObject*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, i32, i32 }
%struct._GtkFileChooserDialog = type { %struct._GtkDialog, %struct._GtkFileChooserDialogPrivate* }
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkFileChooserDialogPrivate = type opaque
%struct._GimpPlugInProcedure = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpImagefile = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpDrawable = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDisplayShell = type opaque
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }

@.str = private unnamed_addr constant [11 x i8] c"Open Image\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Open Image as Layers\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"gimp-file-open-location-dialog\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Opening '%s' failed:\0A\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"No changes need to be saved\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Save Image\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Save a Copy of the Image\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"Create New Template\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"gimp-file-save-as-template\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Enter a name for this template\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"revert-confirm-dialog\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"Revert failed. No file name associated with this image.\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"Revert Image\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"gtk-revert-to-saved\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"gimp-file-revert\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"response\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"Revert '%s' to '%s'?\00", align 1
@.str.19 = private unnamed_addr constant [110 x i8] c"By reverting the image to the state saved on disk, you will lose all changes, including all undo information.\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"gimp-close-all-dialog\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"gimp-file-open-dialog\00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"gimp-file-open-last-uri\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"gimp-file-save-dialog\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"destroy\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"gimp-file-export-dialog\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"(Unnamed Template)\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Reverting to '%s' failed:\0A\0A%s\00", align 1

; Function Attrs: nounwind uwtable
define void @file_open_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpImage* @action_data_get_image(i8* %4)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %5 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #5
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @file_open_dialog_show(%struct._Gimp* %5, %struct._GtkWidget* %6, i8* %call6, %struct._GimpImage* %7, i8* null, i32 0)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._Gimp* @action_data_get_gimp(i8*) #1

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare %struct._GimpImage* @action_data_get_image(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @file_open_dialog_show(%struct._Gimp* %gimp, %struct._GtkWidget* %parent, i8* %title, %struct._GimpImage* %image, i8* %uri, i32 %open_as_layers) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %uri.addr = alloca i8*, align 8
  %open_as_layers.addr = alloca i32, align 4
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %open_as_layers, i32* %open_as_layers.addr, align 4
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call1 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %0)
  %call2 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %call, %struct._GdkScreen* %call1, %struct._GimpUIManager* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0), i32 -1, i32 0)
  store %struct._GtkWidget* %call2, %struct._GtkWidget** %dialog, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %uri.addr, align 8
  %tobool3 = icmp ne i8* %2, null
  br i1 %tobool3, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool4 = icmp ne %struct._GimpImage* %3, null
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call6 = call i8* @gimp_image_get_uri(%struct._GimpImage* %4)
  store i8* %call6, i8** %uri.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %if.then
  %5 = load i8*, i8** %uri.addr, align 8
  %tobool7 = icmp ne i8* %5, null
  br i1 %tobool7, label %if.end.11, label %if.then.8

if.then.8:                                        ; preds = %if.end
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %7 = bitcast %struct._Gimp* %6 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %call10 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.22, i32 0, i32 0))
  store i8* %call10, i8** %uri.addr, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.end
  %9 = load i8*, i8** %uri.addr, align 8
  %tobool12 = icmp ne i8* %9, null
  br i1 %tobool12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.11
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_file_chooser_get_type() #6
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call14)
  %12 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkFileChooser*
  %13 = load i8*, i8** %uri.addr, align 8
  %call16 = call i32 @gtk_file_chooser_set_uri(%struct._GtkFileChooser* %12, i8* %13)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.end.11
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_window_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call18)
  %16 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWindow*
  %17 = load i8*, i8** %title.addr, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %16, i8* %17)
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %19 = bitcast %struct._GtkWidget* %18 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_file_dialog_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call20)
  %20 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpFileDialog*
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %22 = load i32, i32* %open_as_layers.addr, align 4
  call void @gimp_file_dialog_set_open_image(%struct._GimpFileDialog* %20, %struct._GimpImage* %21, i32 %22)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call22 = call i64 @gtk_window_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call22)
  %25 = bitcast %struct._GTypeInstance* %call23 to %struct._GtkWindow*
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call24 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %26)
  %27 = bitcast %struct._GtkWidget* %call24 to %struct._GTypeInstance*
  %call25 = call i64 @gtk_window_get_type() #6
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call25)
  %28 = bitcast %struct._GTypeInstance* %call26 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %25, %struct._GtkWindow* %28)
  %29 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %30 = bitcast %struct._GtkWidget* %29 to %struct._GTypeInstance*
  %call27 = call i64 @gtk_window_get_type() #6
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call27)
  %31 = bitcast %struct._GTypeInstance* %call28 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %31)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.17, %entry
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

; Function Attrs: nounwind uwtable
define void @file_open_as_layers_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpDisplay* @action_data_get_display(i8* %4)
  store %struct._GimpDisplay* %call5, %struct._GimpDisplay** %display, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool6 = icmp ne %struct._GimpDisplay* %5, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call8 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %6)
  store %struct._GimpImage* %call8, %struct._GimpImage** %image, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %if.end.4
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0)) #5
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @file_open_dialog_show(%struct._Gimp* %7, %struct._GtkWidget* %8, i8* %call10, %struct._GimpImage* %9, i8* null, i32 1)
  br label %return

return:                                           ; preds = %if.end.9, %if.then.3, %if.then
  ret void
}

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define void @file_open_location_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GtkWidget* @action_data_get_widget(i8* %0)
  store %struct._GtkWidget* %call, %struct._GtkWidget** %widget, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool = icmp ne %struct._GtkWidget* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call2 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %2)
  %call3 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %call1, %struct._GdkScreen* %call2, %struct._GimpUIManager* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpUIManager*, i8*, i32, i32) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @file_open_recent_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  %num_entries = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %progress = alloca %struct._GimpProgress*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.29

if.end:                                           ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %2, i32 0, i32 47
  %3 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  %call1 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %3)
  store i32 %call1, i32* %num_entries, align 4
  %4 = load i32, i32* %value.addr, align 4
  %5 = load i32, i32* %num_entries, align 4
  %cmp = icmp sge i32 %4, %5
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %if.end.29

if.end.3:                                         ; preds = %if.end
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents4 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %6, i32 0, i32 47
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %documents4, align 8
  %8 = load i32, i32* %value.addr, align 4
  %call5 = call %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer* %7, i32 %8)
  %9 = bitcast %struct._GimpObject* %call5 to %struct._GimpImagefile*
  store %struct._GimpImagefile* %9, %struct._GimpImagefile** %imagefile, align 8
  %10 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %tobool6 = icmp ne %struct._GimpImagefile* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.29

if.then.7:                                        ; preds = %if.end.3
  store %struct._GError* null, %struct._GError** %error, align 8
  %11 = load i8*, i8** %data.addr, align 8
  %call8 = call %struct._GimpDisplay* @action_data_get_display(i8* %11)
  store %struct._GimpDisplay* %call8, %struct._GimpDisplay** %display, align 8
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool9 = icmp ne %struct._GimpDisplay* %12, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.then.7
  br label %if.end.29

if.end.11:                                        ; preds = %if.then.7
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to i8*
  %call12 = call i8* @g_object_ref(i8* %14)
  %15 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %16 = bitcast %struct._GimpImagefile* %15 to i8*
  %call13 = call i8* @g_object_ref(i8* %16)
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call14 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %17)
  %tobool15 = icmp ne %struct._GimpImage* %call14, null
  br i1 %tobool15, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.11
  br label %cond.end

cond.false:                                       ; preds = %if.end.11
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %19 = bitcast %struct._GimpDisplay* %18 to %struct._GTypeInstance*
  %call16 = call i64 @gimp_progress_interface_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call16)
  %20 = bitcast %struct._GTypeInstance* %call17 to %struct._GimpProgress*
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GimpProgress* [ null, %cond.true ], [ %20, %cond.false ]
  store %struct._GimpProgress* %cond, %struct._GimpProgress** %progress, align 8
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %22 = load i8*, i8** %data.addr, align 8
  %call18 = call %struct._GimpContext* @action_data_get_context(i8* %22)
  %23 = load %struct._GimpProgress*, %struct._GimpProgress** %progress, align 8
  %24 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %25 = bitcast %struct._GimpImagefile* %24 to i8*
  %call19 = call i8* @gimp_object_get_name(i8* %25)
  %call20 = call %struct._GimpImage* @file_open_with_display(%struct._Gimp* %21, %struct._GimpContext* %call18, %struct._GimpProgress* %23, i8* %call19, i32 0, i32* %status, %struct._GError** %error)
  store %struct._GimpImage* %call20, %struct._GimpImage** %image, align 8
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool21 = icmp ne %struct._GimpImage* %26, null
  br i1 %tobool21, label %if.end.28, label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.end
  %27 = load i32, i32* %status, align 4
  %cmp22 = icmp ne i32 %27, 4
  br i1 %cmp22, label %if.then.23, label %if.end.28

if.then.23:                                       ; preds = %land.lhs.true
  %28 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %29 = bitcast %struct._GimpImagefile* %28 to i8*
  %call24 = call i8* @gimp_object_get_name(i8* %29)
  %call25 = call i8* @file_utils_uri_display_name(i8* %call24)
  store i8* %call25, i8** %filename, align 8
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %32 = bitcast %struct._GimpDisplay* %31 to %struct._GTypeInstance*
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call26 to %struct._GObject*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #5
  %34 = load i8*, i8** %filename, align 8
  %35 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %35, i32 0, i32 2
  %36 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %30, %struct._GObject* %33, i32 2, i8* %call27, i8* %34, i8* %36)
  call void @g_clear_error(%struct._GError** %error)
  %37 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %37)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.23, %land.lhs.true, %cond.end
  %38 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %39 = bitcast %struct._GimpImagefile* %38 to i8*
  call void @g_object_unref(i8* %39)
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %41 = bitcast %struct._GimpDisplay* %40 to i8*
  call void @g_object_unref(i8* %41)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then, %if.then.2, %if.then.10, %if.end.28, %if.end.3
  ret void
}

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

declare %struct._GimpObject* @gimp_container_get_child_by_index(%struct._GimpContainer*, i32) #1

declare i8* @g_object_ref(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #3

declare %struct._GimpImage* @file_open_with_display(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i32, i32*, %struct._GError**) #1

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare i8* @gimp_object_get_name(i8*) #1

declare i8* @file_utils_uri_display_name(i8*) #1

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @g_free(i8*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @file_save_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %save_mode = alloca i32, align 4
  %uri = alloca i8*, align 8
  %saved = alloca i32, align 4
  %save_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %uri52 = alloca i8*, align 8
  %export_proc = alloca %struct._GimpPlugInProcedure*, align 8
  %overwrite = alloca i32, align 4
  %uri_copy = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %saved, align 4
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.95

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GimpDisplay* @action_data_get_display(i8* %2)
  store %struct._GimpDisplay* %call1, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool2 = icmp ne %struct._GimpDisplay* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.95

if.end.4:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GtkWidget* @action_data_get_widget(i8* %4)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %if.end.95

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call9 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %6)
  store %struct._GimpImage* %call9, %struct._GimpImage** %image, align 8
  %7 = load i32, i32* %value.addr, align 4
  store i32 %7, i32* %save_mode, align 4
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %8)
  %tobool11 = icmp ne %struct._GimpDrawable* %call10, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  br label %if.end.95

if.end.13:                                        ; preds = %if.end.8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call14 = call i8* @gimp_image_get_uri(%struct._GimpImage* %9)
  store i8* %call14, i8** %uri, align 8
  %10 = load i32, i32* %save_mode, align 4
  switch i32 %10, label %sw.epilog [
    i32 0, label %sw.bb
    i32 3, label %sw.bb
    i32 1, label %sw.bb.42
    i32 2, label %sw.bb.46
    i32 4, label %sw.bb.49
    i32 5, label %sw.bb.51
    i32 6, label %sw.bb.51
  ]

sw.bb:                                            ; preds = %if.end.13, %if.end.13
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %11)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %if.then.22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp17 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp17, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 1
  %14 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %15 = bitcast %struct._GimpCoreConfig* %14 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_gui_config_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call18)
  %16 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpGuiConfig*
  %trust_dirty_flag = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %16, i32 0, i32 3
  %17 = load i32, i32* %trust_dirty_flag, align 4
  %tobool20 = icmp ne i32 %17, 0
  br i1 %tobool20, label %lor.lhs.false.21, label %if.then.22

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %18 = load i8*, i8** %uri, align 8
  %cmp = icmp eq i8* %18, null
  br i1 %cmp, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %lor.lhs.false.21, %lor.lhs.false, %sw.bb
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call23 = call %struct._GimpPlugInProcedure* @gimp_image_get_save_proc(%struct._GimpImage* %19)
  store %struct._GimpPlugInProcedure* %call23, %struct._GimpPlugInProcedure** %save_proc, align 8
  %20 = load i8*, i8** %uri, align 8
  %tobool24 = icmp ne i8* %20, null
  br i1 %tobool24, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.then.22
  %21 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %tobool25 = icmp ne %struct._GimpPlugInProcedure* %21, null
  br i1 %tobool25, label %if.end.29, label %if.then.26

if.then.26:                                       ; preds = %land.lhs.true
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp27 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %22, i32 0, i32 1
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp27, align 8
  %plug_in_manager = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 25
  %24 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager, align 8
  %save_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %24, i32 0, i32 6
  %25 = load %struct._GSList*, %struct._GSList** %save_procs, align 8
  %26 = load i8*, i8** %uri, align 8
  %call28 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %25, i8* %26, %struct._GError** null)
  store %struct._GimpPlugInProcedure* %call28, %struct._GimpPlugInProcedure** %save_proc, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %land.lhs.true, %if.then.22
  %27 = load i8*, i8** %uri, align 8
  %tobool30 = icmp ne i8* %27, null
  br i1 %tobool30, label %land.lhs.true.31, label %if.end.37

land.lhs.true.31:                                 ; preds = %if.end.29
  %28 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %tobool32 = icmp ne %struct._GimpPlugInProcedure* %28, null
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %land.lhs.true.31
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %30 = bitcast %struct._GimpDisplay* %29 to %struct._GTypeInstance*
  %call34 = call i64 @gimp_progress_interface_get_type() #6
  %call35 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call34)
  %31 = bitcast %struct._GTypeInstance* %call35 to %struct._GimpProgress*
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %34 = load i8*, i8** %uri, align 8
  %35 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %save_proc, align 8
  %call36 = call i32 @file_save_dialog_save_image(%struct._GimpProgress* %31, %struct._Gimp* %32, %struct._GimpImage* %33, i8* %34, %struct._GimpPlugInProcedure* %35, i32 2, i32 1, i32 0, i32 0, i32 1)
  store i32 %call36, i32* %saved, align 4
  br label %sw.epilog

if.end.37:                                        ; preds = %land.lhs.true.31, %if.end.29
  br label %if.end.41

if.else:                                          ; preds = %lor.lhs.false.21
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp38 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %36, i32 0, i32 1
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp38, align 8
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %39 = bitcast %struct._GimpDisplay* %38 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %37, %struct._GObject* %40, i32 0, i8* %call40)
  store i32 1, i32* %saved, align 4
  br label %sw.epilog

if.end.41:                                        ; preds = %if.end.37
  br label %sw.bb.42

sw.bb.42:                                         ; preds = %if.end.13, %if.end.41
  %41 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %43 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #5
  %44 = load i32, i32* %save_mode, align 4
  %cmp44 = icmp eq i32 %44, 3
  %conv = zext i1 %cmp44 to i32
  %45 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call45 = call %struct._GtkWidget* @file_save_dialog_show(%struct._Gimp* %41, %struct._GimpImage* %42, %struct._GtkWidget* %43, i8* %call43, i32 0, i32 %conv, %struct._GimpDisplay* %45)
  br label %sw.epilog

sw.bb.46:                                         ; preds = %if.end.13
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %48 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call47 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i32 0, i32 0)) #5
  %49 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call48 = call %struct._GtkWidget* @file_save_dialog_show(%struct._Gimp* %46, %struct._GimpImage* %47, %struct._GtkWidget* %48, i8* %call47, i32 1, i32 0, %struct._GimpDisplay* %49)
  br label %sw.epilog

sw.bb.49:                                         ; preds = %if.end.13
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %52 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call50 = call %struct._GtkWidget* @file_export_dialog_show(%struct._Gimp* %50, %struct._GimpImage* %51, %struct._GtkWidget* %52)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %if.end.13, %if.end.13
  store i8* null, i8** %uri52, align 8
  store %struct._GimpPlugInProcedure* null, %struct._GimpPlugInProcedure** %export_proc, align 8
  store i32 0, i32* %overwrite, align 4
  %53 = load i32, i32* %save_mode, align 4
  %cmp53 = icmp eq i32 %53, 5
  br i1 %cmp53, label %if.then.55, label %if.else.62

if.then.55:                                       ; preds = %sw.bb.51
  %54 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call56 = call i8* @gimp_image_get_exported_uri(%struct._GimpImage* %54)
  store i8* %call56, i8** %uri52, align 8
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call57 = call %struct._GimpPlugInProcedure* @gimp_image_get_export_proc(%struct._GimpImage* %55)
  store %struct._GimpPlugInProcedure* %call57, %struct._GimpPlugInProcedure** %export_proc, align 8
  %56 = load i8*, i8** %uri52, align 8
  %tobool58 = icmp ne i8* %56, null
  br i1 %tobool58, label %if.end.61, label %if.then.59

if.then.59:                                       ; preds = %if.then.55
  %57 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %59 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call60 = call %struct._GtkWidget* @file_export_dialog_show(%struct._Gimp* %57, %struct._GimpImage* %58, %struct._GtkWidget* %59)
  br label %sw.epilog

if.end.61:                                        ; preds = %if.then.55
  store i32 0, i32* %overwrite, align 4
  br label %if.end.68

if.else.62:                                       ; preds = %sw.bb.51
  %60 = load i32, i32* %save_mode, align 4
  %cmp63 = icmp eq i32 %60, 6
  br i1 %cmp63, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %if.else.62
  %61 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call66 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %61)
  store i8* %call66, i8** %uri52, align 8
  store i32 1, i32* %overwrite, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %if.else.62
  br label %if.end.68

if.end.68:                                        ; preds = %if.end.67, %if.end.61
  %62 = load i8*, i8** %uri52, align 8
  %tobool69 = icmp ne i8* %62, null
  br i1 %tobool69, label %land.lhs.true.70, label %if.end.76

land.lhs.true.70:                                 ; preds = %if.end.68
  %63 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %export_proc, align 8
  %tobool71 = icmp ne %struct._GimpPlugInProcedure* %63, null
  br i1 %tobool71, label %if.end.76, label %if.then.72

if.then.72:                                       ; preds = %land.lhs.true.70
  %64 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp73 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %64, i32 0, i32 1
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp73, align 8
  %plug_in_manager74 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %65, i32 0, i32 25
  %66 = load %struct._GimpPlugInManager*, %struct._GimpPlugInManager** %plug_in_manager74, align 8
  %export_procs = getelementptr inbounds %struct._GimpPlugInManager, %struct._GimpPlugInManager* %66, i32 0, i32 7
  %67 = load %struct._GSList*, %struct._GSList** %export_procs, align 8
  %68 = load i8*, i8** %uri52, align 8
  %call75 = call %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList* %67, i8* %68, %struct._GError** null)
  store %struct._GimpPlugInProcedure* %call75, %struct._GimpPlugInProcedure** %export_proc, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.72, %land.lhs.true.70, %if.end.68
  %69 = load i8*, i8** %uri52, align 8
  %tobool77 = icmp ne i8* %69, null
  br i1 %tobool77, label %land.lhs.true.78, label %if.end.86

land.lhs.true.78:                                 ; preds = %if.end.76
  %70 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %export_proc, align 8
  %tobool79 = icmp ne %struct._GimpPlugInProcedure* %70, null
  br i1 %tobool79, label %if.then.80, label %if.end.86

if.then.80:                                       ; preds = %land.lhs.true.78
  %71 = load i8*, i8** %uri52, align 8
  %call81 = call noalias i8* @g_strdup(i8* %71)
  store i8* %call81, i8** %uri_copy, align 8
  %72 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %73 = bitcast %struct._GimpDisplay* %72 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_progress_interface_get_type() #6
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 %call82)
  %74 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpProgress*
  %75 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %76 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %77 = load i8*, i8** %uri_copy, align 8
  %78 = load %struct._GimpPlugInProcedure*, %struct._GimpPlugInProcedure** %export_proc, align 8
  %79 = load i32, i32* %overwrite, align 4
  %80 = load i32, i32* %overwrite, align 4
  %tobool84 = icmp ne i32 %80, 0
  %lnot = xor i1 %tobool84, true
  %lnot.ext = zext i1 %lnot to i32
  %call85 = call i32 @file_save_dialog_save_image(%struct._GimpProgress* %74, %struct._Gimp* %75, %struct._GimpImage* %76, i8* %77, %struct._GimpPlugInProcedure* %78, i32 2, i32 0, i32 %79, i32 %lnot.ext, i32 1)
  store i32 %call85, i32* %saved, align 4
  %81 = load i8*, i8** %uri_copy, align 8
  call void @g_free(i8* %81)
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.80, %land.lhs.true.78, %if.end.76
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.13, %if.end.86, %if.then.59, %sw.bb.49, %sw.bb.46, %sw.bb.42, %if.else, %if.then.33
  %82 = load i32, i32* %save_mode, align 4
  %cmp87 = icmp eq i32 %82, 3
  br i1 %cmp87, label %land.lhs.true.89, label %if.end.95

land.lhs.true.89:                                 ; preds = %sw.epilog
  %83 = load i32, i32* %saved, align 4
  %tobool90 = icmp ne i32 %83, 0
  br i1 %tobool90, label %land.lhs.true.91, label %if.end.95

land.lhs.true.91:                                 ; preds = %land.lhs.true.89
  %84 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call92 = call i32 @gimp_image_is_dirty(%struct._GimpImage* %84)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end.95, label %if.then.94

if.then.94:                                       ; preds = %land.lhs.true.91
  %85 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @gimp_display_close(%struct._GimpDisplay* %85)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then, %if.then.3, %if.then.7, %if.then.12, %if.then.94, %land.lhs.true.91, %land.lhs.true.89, %sw.epilog
  ret void
}

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare i8* @gimp_image_get_uri(%struct._GimpImage*) #1

declare i32 @gimp_image_is_dirty(%struct._GimpImage*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #3

declare %struct._GimpPlugInProcedure* @gimp_image_get_save_proc(%struct._GimpImage*) #1

declare %struct._GimpPlugInProcedure* @file_procedure_find(%struct._GSList*, i8*, %struct._GError**) #1

declare i32 @file_save_dialog_save_image(%struct._GimpProgress*, %struct._Gimp*, %struct._GimpImage*, i8*, %struct._GimpPlugInProcedure*, i32, i32, i32, i32, i32) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @file_save_dialog_show(%struct._Gimp* %gimp, %struct._GimpImage* %image, %struct._GtkWidget* %parent, i8* %title, i32 %save_a_copy, i32 %close_after_saving, %struct._GimpDisplay* %display) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %title.addr = alloca i8*, align 8
  %save_a_copy.addr = alloca i32, align 4
  %close_after_saving.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  store i8* %title, i8** %title.addr, align 8
  store i32 %save_a_copy, i32* %save_a_copy.addr, align 4
  store i32 %close_after_saving, i32* %close_after_saving.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end.15, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call3 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %5)
  %call4 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %call2, %struct._GdkScreen* %call3, %struct._GimpUIManager* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i32 -1, i32 0)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %dialog, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool5 = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_window_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWindow*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call9 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %10)
  %11 = bitcast %struct._GtkWidget* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_window_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %9, %struct._GtkWindow* %12)
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  call void @g_object_set_data_full(%struct._GObject* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* %17, void (i8*)* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void (i8*)*))
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %21 = bitcast %struct._GimpImage* %20 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @file_save_dialog_response to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %25 = bitcast %struct._GimpImage* %24 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpImage*)* @file_save_dialog_destroyed to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool16 = icmp ne %struct._GtkWidget* %26, null
  br i1 %tobool16, label %if.then.17, label %if.end.26

if.then.17:                                       ; preds = %if.end.15
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call18 = call i64 @gtk_window_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call18)
  %29 = bitcast %struct._GTypeInstance* %call19 to %struct._GtkWindow*
  %30 = load i8*, i8** %title.addr, align 8
  call void @gtk_window_set_title(%struct._GtkWindow* %29, i8* %30)
  %31 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %32 = bitcast %struct._GtkWidget* %31 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_file_dialog_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call20)
  %33 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpFileDialog*
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %35 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %36 = load i32, i32* %save_a_copy.addr, align 4
  %37 = load i32, i32* %close_after_saving.addr, align 4
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %39 = bitcast %struct._GimpDisplay* %38 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_object_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call22)
  %40 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpObject*
  call void @gimp_file_dialog_set_save_image(%struct._GimpFileDialog* %33, %struct._Gimp* %34, %struct._GimpImage* %35, i32 %36, i32 0, i32 %37, %struct._GimpObject* %40)
  %41 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %42 = bitcast %struct._GtkWidget* %41 to %struct._GTypeInstance*
  %call24 = call i64 @gtk_window_get_type() #6
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 %call24)
  %43 = bitcast %struct._GTypeInstance* %call25 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %43)
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.17, %if.end.15
  %44 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  ret %struct._GtkWidget* %44
}

; Function Attrs: nounwind uwtable
define internal %struct._GtkWidget* @file_export_dialog_show(%struct._Gimp* %gimp, %struct._GimpImage* %image, %struct._GtkWidget* %parent) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %0 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %1 = bitcast %struct._GimpImage* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %call1 = call i8* @g_object_get_data(%struct._GObject* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0))
  %3 = bitcast i8* %call1 to %struct._GtkWidget*
  store %struct._GtkWidget* %3, %struct._GtkWidget** %dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool = icmp ne %struct._GtkWidget* %4, null
  br i1 %tobool, label %if.end.15, label %if.then

if.then:                                          ; preds = %entry
  %call2 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call3 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %5)
  %call4 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %call2, %struct._GdkScreen* %call3, %struct._GimpUIManager* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i32 -1, i32 0)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %dialog, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool5 = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_window_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call7)
  %9 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWindow*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call9 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %10)
  %11 = bitcast %struct._GtkWidget* %call9 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_window_get_type() #6
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call10)
  %12 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWindow*
  call void @gtk_window_set_transient_for(%struct._GtkWindow* %9, %struct._GtkWindow* %12)
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to i8*
  call void @g_object_set_data_full(%struct._GObject* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i8* %17, void (i8*)* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void (i8*)*))
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %19 = bitcast %struct._GtkWidget* %18 to i8*
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %21 = bitcast %struct._GimpImage* %20 to i8*
  %call13 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, i8*)* @file_export_dialog_response to void ()*), i8* %21, void (i8*, %struct._GClosure*)* null, i32 0)
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %23 = bitcast %struct._GtkWidget* %22 to i8*
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %25 = bitcast %struct._GimpImage* %24 to i8*
  %call14 = call i64 @g_signal_connect_data(i8* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, %struct._GimpImage*)* @file_export_dialog_destroyed to void ()*), i8* %25, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %entry
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool16 = icmp ne %struct._GtkWidget* %26, null
  br i1 %tobool16, label %if.then.17, label %if.end.22

if.then.17:                                       ; preds = %if.end.15
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call18 = call i64 @gimp_file_dialog_get_type() #6
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call18)
  %29 = bitcast %struct._GTypeInstance* %call19 to %struct._GimpFileDialog*
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_file_dialog_set_save_image(%struct._GimpFileDialog* %29, %struct._Gimp* %30, %struct._GimpImage* %31, i32 0, i32 1, i32 0, %struct._GimpObject* null)
  %32 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %33 = bitcast %struct._GtkWidget* %32 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_window_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 %call20)
  %34 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %34)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.17, %if.end.15
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  ret %struct._GtkWidget* %35
}

declare i8* @gimp_image_get_exported_uri(%struct._GimpImage*) #1

declare %struct._GimpPlugInProcedure* @gimp_image_get_export_proc(%struct._GimpImage*) #1

declare i8* @gimp_image_get_imported_uri(%struct._GimpImage*) #1

declare noalias i8* @g_strdup(i8*) #1

declare void @gimp_display_close(%struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define void @file_create_template_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0)) #5
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call3 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  %4 = bitcast %struct._GimpDisplayShell* %call3 to %struct._GTypeInstance*
  %call4 = call i64 @gtk_widget_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call4)
  %5 = bitcast %struct._GTypeInstance* %call5 to %struct._GtkWidget*
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0)) #5
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = bitcast %struct._GimpImage* %6 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = bitcast %struct._GimpImage* %9 to i8*
  %call8 = call %struct._GtkWidget* @gimp_query_string_box(i8* %call2, %struct._GtkWidget* %5, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i8* %call6, i8* null, %struct._GObject* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), void (%struct._GtkWidget*, i8*, i8*)* @file_new_template_callback, i8* %10)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %dialog, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_query_string_box(i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*, i8*, %struct._GObject*, i8*, void (%struct._GtkWidget*, i8*, i8*)*, i8*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #3

declare void @gimp_standard_help_func(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @file_new_template_callback(%struct._GtkWidget* %widget, i8* %name, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %name.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %template = alloca %struct._GimpTemplate*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GimpImage*
  store %struct._GimpImage* %1, %struct._GimpImage** %image, align 8
  %2 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %3 = load i8*, i8** %name.addr, align 8
  %call = call i64 @strlen(i8* %3) #7
  %tobool1 = icmp ne i64 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %call2 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0)) #5
  store i8* %call2, i8** %name.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %4 = load i8*, i8** %name.addr, align 8
  %call3 = call %struct._GimpTemplate* @gimp_template_new(i8* %4)
  store %struct._GimpTemplate* %call3, %struct._GimpTemplate** %template, align 8
  %5 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_template_set_from_image(%struct._GimpTemplate* %5, %struct._GimpImage* %6)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 48
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %10 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %11 = bitcast %struct._GimpTemplate* %10 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_object_get_type() #6
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call4)
  %12 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpObject*
  %call6 = call i32 @gimp_container_add(%struct._GimpContainer* %9, %struct._GimpObject* %12)
  %13 = load %struct._GimpTemplate*, %struct._GimpTemplate** %template, align 8
  %14 = bitcast %struct._GimpTemplate* %13 to i8*
  call void @g_object_unref(i8* %14)
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @file_revert_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %uri = alloca i8*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.38

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call i8* @gimp_image_get_uri(%struct._GimpImage* %3)
  store i8* %call2, i8** %uri, align 8
  %4 = load i8*, i8** %uri, align 8
  %tobool3 = icmp ne i8* %4, null
  br i1 %tobool3, label %if.end.6, label %if.then.4

if.then.4:                                        ; preds = %if.end
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %5)
  store i8* %call5, i8** %uri, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = bitcast %struct._GimpImage* %6 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 80)
  %8 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %call8 = call i8* @g_object_get_data(%struct._GObject* %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  %9 = bitcast i8* %call8 to %struct._GtkWidget*
  store %struct._GtkWidget* %9, %struct._GtkWidget** %dialog, align 8
  %10 = load i8*, i8** %uri, align 8
  %tobool9 = icmp ne i8* %10, null
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  %call12 = call i8* @gettext(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.12, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %12, %struct._GObject* %15, i32 2, i8* %call12)
  br label %if.end.38

if.else:                                          ; preds = %if.end.6
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool13 = icmp ne %struct._GtkWidget* %16, null
  br i1 %tobool13, label %if.then.14, label %if.else.17

if.then.14:                                       ; preds = %if.else
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gtk_window_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %19)
  br label %if.end.37

if.else.17:                                       ; preds = %if.else
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0)) #5
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call19 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %20)
  %21 = bitcast %struct._GimpDisplayShell* %call19 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_widget_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call20)
  %22 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkWidget*
  %call22 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), %struct._GtkWidget* %22, i32 0, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call22, %struct._GtkWidget** %dialog, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call23 = call i64 @gtk_dialog_get_type() #6
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call23)
  %25 = bitcast %struct._GTypeInstance* %call24 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %25, i32 -5, i32 -6, i32 -1)
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %27 = bitcast %struct._GimpDisplay* %26 to i8*
  %28 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %29 = bitcast %struct._GtkWidget* %28 to i8*
  %call25 = call i64 @g_signal_connect_object(i8* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %29, i32 2)
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %31 = bitcast %struct._GtkWidget* %30 to i8*
  %32 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %33 = bitcast %struct._GimpDisplay* %32 to i8*
  %call26 = call i64 @g_signal_connect_data(i8* %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*, i32, %struct._GimpDisplay*)* @file_revert_confirm_response to void ()*), i8* %33, void (i8*, %struct._GClosure*)* null, i32 0)
  %34 = load i8*, i8** %uri, align 8
  %call27 = call i8* @file_utils_uri_display_name(i8* %34)
  store i8* %call27, i8** %filename, align 8
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %36 = bitcast %struct._GtkWidget* %35 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_message_dialog_get_type() #6
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call28)
  %37 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %37, i32 0, i32 1
  %38 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call30 = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i32 0, i32 0)) #5
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call31 = call i8* @gimp_image_get_display_name(%struct._GimpImage* %39)
  %40 = load i8*, i8** %filename, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %38, i8* %call30, i8* %call31, i8* %40)
  %41 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_message_dialog_get_type() #6
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call32)
  %44 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpMessageDialog*
  %box34 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %44, i32 0, i32 1
  %45 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box34, align 8
  %call35 = call i8* @gettext(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.19, i32 0, i32 0)) #5
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %45, i8* %call35)
  %46 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %47 = bitcast %struct._GimpImage* %46 to %struct._GTypeInstance*
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call36 to %struct._GObject*
  %49 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %50 = bitcast %struct._GtkWidget* %49 to i8*
  call void @g_object_set_data(%struct._GObject* %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i8* %50)
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %51)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.17, %if.then.14
  br label %if.end.38

if.end.38:                                        ; preds = %if.then, %if.end.37, %if.then.10
  ret void
}

declare i8* @g_object_get_data(%struct._GObject*, i8*) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #3

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @file_revert_confirm_response(%struct._GtkWidget* %dialog, i32 %response_id, %struct._GimpDisplay* %display) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %old_image = alloca %struct._GimpImage*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %new_image = alloca %struct._GimpImage*, align 8
  %uri = alloca i8*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %old_image, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %1)
  %2 = load %struct._GimpImage*, %struct._GimpImage** %old_image, align 8
  %3 = bitcast %struct._GimpImage* %2 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %3, i64 80)
  %4 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i8* null)
  %5 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %5, -5
  br i1 %cmp, label %if.then, label %if.end.19

if.then:                                          ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %old_image, align 8
  %gimp2 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp2, align 8
  store %struct._Gimp* %7, %struct._Gimp** %gimp, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %old_image, align 8
  %call3 = call i8* @gimp_image_get_uri(%struct._GimpImage* %8)
  store i8* %call3, i8** %uri, align 8
  %9 = load i8*, i8** %uri, align 8
  %tobool = icmp ne i8* %9, null
  br i1 %tobool, label %if.end, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %10 = load %struct._GimpImage*, %struct._GimpImage** %old_image, align 8
  %call5 = call i8* @gimp_image_get_imported_uri(%struct._GimpImage* %10)
  store i8* %call5, i8** %uri, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call6 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %12)
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_progress_interface_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call7)
  %15 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpProgress*
  %16 = load i8*, i8** %uri, align 8
  %17 = load i8*, i8** %uri, align 8
  %call9 = call %struct._GimpImage* @file_open_image(%struct._Gimp* %11, %struct._GimpContext* %call6, %struct._GimpProgress* %15, i8* %16, i8* %17, i32 0, %struct._GimpPlugInProcedure* null, i32 0, i32* %status, i8** null, %struct._GError** %error)
  store %struct._GimpImage* %call9, %struct._GimpImage** %new_image, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %tobool10 = icmp ne %struct._GimpImage* %18, null
  br i1 %tobool10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %if.end
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %old_image, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_displays_reconnect(%struct._Gimp* %19, %struct._GimpImage* %20, %struct._GimpImage* %21)
  %22 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %22)
  %23 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %24 = bitcast %struct._GimpImage* %23 to i8*
  call void @g_object_unref(i8* %24)
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %25 = load i32, i32* %status, align 4
  %cmp12 = icmp ne i32 %25, 4
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.else
  %26 = load i8*, i8** %uri, align 8
  %call14 = call i8* @file_utils_uri_display_name(i8* %26)
  store i8* %call14, i8** %filename, align 8
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %29 = bitcast %struct._GimpDisplay* %28 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.27, i32 0, i32 0)) #5
  %31 = load i8*, i8** %filename, align 8
  %32 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %32, i32 0, i32 2
  %33 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %27, %struct._GObject* %30, i32 2, i8* %call16, i8* %31, i8* %33)
  call void @g_clear_error(%struct._GError** %error)
  %34 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %34)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.13, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.11
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %entry
  ret void
}

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #3

declare i8* @gimp_image_get_display_name(%struct._GimpImage*) #1

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #1

declare void @g_object_set_data(%struct._GObject*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @file_close_all_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.11

if.end:                                           ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call i32 @gimp_displays_dirty(%struct._Gimp* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_displays_close(%struct._Gimp* %3)
  br label %if.end.11

if.else:                                          ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call4 = call %struct._GtkWidget* @action_data_get_widget(i8* %4)
  store %struct._GtkWidget* %call4, %struct._GtkWidget** %widget, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool5 = icmp ne %struct._GtkWidget* %5, null
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.else
  br label %if.end.11

if.end.7:                                         ; preds = %if.else
  %call8 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call9 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %6)
  %call10 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory* %call8, %struct._GdkScreen* %call9, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i32 0, i32 0), i32 -1)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.then.6, %if.end.7, %if.then.3
  ret void
}

declare i32 @gimp_displays_dirty(%struct._Gimp*) #1

declare void @gimp_displays_close(%struct._Gimp*) #1

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory*, %struct._GdkScreen*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define void @file_quit_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  call void @gimp_exit(%struct._Gimp* %2, i32 0)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare void @gimp_exit(%struct._Gimp*, i32) #1

; Function Attrs: nounwind uwtable
define void @file_file_open_dialog(%struct._Gimp* %gimp, i8* %uri, %struct._GtkWidget* %parent) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %uri.addr = alloca i8*, align 8
  %parent.addr = alloca %struct._GtkWidget*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store %struct._GtkWidget* %parent, %struct._GtkWidget** %parent.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %parent.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0)) #5
  %2 = load i8*, i8** %uri.addr, align 8
  call void @file_open_dialog_show(%struct._Gimp* %0, %struct._GtkWidget* %1, i8* %call, %struct._GimpImage* null, i8* %2, i32 0)
  ret void
}

declare i32 @gtk_file_chooser_set_uri(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_file_chooser_get_type() #3

declare void @gtk_window_set_title(%struct._GtkWindow*, i8*) #1

declare void @gimp_file_dialog_set_open_image(%struct._GimpFileDialog*, %struct._GimpImage*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_file_dialog_get_type() #3

declare void @gtk_window_set_transient_for(%struct._GtkWindow*, %struct._GtkWindow*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @g_object_set_data_full(%struct._GObject*, i8*, i8*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @file_save_dialog_response(%struct._GtkWidget* %dialog, i32 %response_id, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %file_dialog = alloca %struct._GimpFileDialog*, align 8
  %parent = alloca %struct._GtkWindow*, align 8
  %other = alloca %struct._GtkWidget*, align 8
  %folder = alloca i8*, align 8
  %uri = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %3, %struct._GimpFileDialog** %file_dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call %struct._GtkWindow* @gtk_window_get_transient_for(%struct._GtkWindow* %6)
  store %struct._GtkWindow* %call4, %struct._GtkWindow** %parent, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_file_chooser_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkFileChooser*
  %call7 = call i8* @gtk_file_chooser_get_current_folder_uri(%struct._GtkFileChooser* %9)
  store i8* %call7, i8** %folder, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_file_chooser_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkFileChooser*
  %call10 = call i8* @gtk_file_chooser_get_uri(%struct._GtkFileChooser* %12)
  store i8* %call10, i8** %uri, align 8
  %13 = load i8*, i8** %uri, align 8
  %call11 = call i8* @file_utils_uri_display_basename(i8* %13)
  store i8* %call11, i8** %name, align 8
  %14 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog, align 8
  %image = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %15, i32 0, i32 2
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %18 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog, align 8
  %image12 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %18, i32 0, i32 2
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image12, align 8
  %20 = load %struct._GtkWindow*, %struct._GtkWindow** %parent, align 8
  %21 = bitcast %struct._GtkWindow* %20 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call13)
  %22 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  %call15 = call %struct._GtkWidget* @file_export_dialog_show(%struct._Gimp* %17, %struct._GimpImage* %19, %struct._GtkWidget* %22)
  store %struct._GtkWidget* %call15, %struct._GtkWidget** %other, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %other, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call16 = call i64 @gtk_file_chooser_get_type() #6
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call16)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GtkFileChooser*
  %26 = load i8*, i8** %folder, align 8
  %call18 = call i32 @gtk_file_chooser_set_current_folder_uri(%struct._GtkFileChooser* %25, i8* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %other, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_file_chooser_get_type() #6
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call19)
  %29 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkFileChooser*
  %30 = load i8*, i8** %name, align 8
  call void @gtk_file_chooser_set_current_name(%struct._GtkFileChooser* %29, i8* %30)
  %31 = load i8*, i8** %folder, align 8
  call void @g_free(i8* %31)
  %32 = load i8*, i8** %name, align 8
  call void @g_free(i8* %32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @file_save_dialog_destroyed(%struct._GtkWidget* %dialog, %struct._GimpImage* %image) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  %image2 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %2, i32 0, i32 2
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %6 = bitcast %struct._GimpImage* %5 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0), i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_file_dialog_set_save_image(%struct._GimpFileDialog*, %struct._Gimp*, %struct._GimpImage*, i32, i32, i32, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #3

declare %struct._GtkWindow* @gtk_window_get_transient_for(%struct._GtkWindow*) #1

declare i8* @gtk_file_chooser_get_current_folder_uri(%struct._GtkFileChooser*) #1

declare i8* @gtk_file_chooser_get_uri(%struct._GtkFileChooser*) #1

declare i8* @file_utils_uri_display_basename(i8*) #1

declare i32 @gtk_file_chooser_set_current_folder_uri(%struct._GtkFileChooser*, i8*) #1

declare void @gtk_file_chooser_set_current_name(%struct._GtkFileChooser*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @file_export_dialog_response(%struct._GtkWidget* %dialog, i32 %response_id, i8* %data) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %response_id.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %file_dialog = alloca %struct._GimpFileDialog*, align 8
  %parent = alloca %struct._GtkWindow*, align 8
  %other = alloca %struct._GtkWidget*, align 8
  %folder = alloca i8*, align 8
  %uri = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store i32 %response_id, i32* %response_id.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %response_id.addr, align 4
  %cmp = icmp eq i32 %0, -23
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %2 = bitcast %struct._GtkWidget* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  store %struct._GimpFileDialog* %3, %struct._GimpFileDialog** %file_dialog, align 8
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %5 = bitcast %struct._GtkWidget* %4 to %struct._GTypeInstance*
  %call2 = call i64 @gtk_window_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call2)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GtkWindow*
  %call4 = call %struct._GtkWindow* @gtk_window_get_transient_for(%struct._GtkWindow* %6)
  store %struct._GtkWindow* %call4, %struct._GtkWindow** %parent, align 8
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %8 = bitcast %struct._GtkWidget* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_file_chooser_get_type() #6
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkFileChooser*
  %call7 = call i8* @gtk_file_chooser_get_current_folder_uri(%struct._GtkFileChooser* %9)
  store i8* %call7, i8** %folder, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_file_chooser_get_type() #6
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkFileChooser*
  %call10 = call i8* @gtk_file_chooser_get_uri(%struct._GtkFileChooser* %12)
  store i8* %call10, i8** %uri, align 8
  %13 = load i8*, i8** %uri, align 8
  %call11 = call i8* @file_utils_uri_display_basename(i8* %13)
  store i8* %call11, i8** %name, align 8
  %14 = load i8*, i8** %uri, align 8
  call void @g_free(i8* %14)
  %15 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog, align 8
  %image = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %15, i32 0, i32 2
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %18 = load %struct._GimpFileDialog*, %struct._GimpFileDialog** %file_dialog, align 8
  %image12 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %18, i32 0, i32 2
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image12, align 8
  %20 = load %struct._GtkWindow*, %struct._GtkWindow** %parent, align 8
  %21 = bitcast %struct._GtkWindow* %20 to %struct._GTypeInstance*
  %call13 = call i64 @gtk_widget_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call13)
  %22 = bitcast %struct._GTypeInstance* %call14 to %struct._GtkWidget*
  %call15 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #5
  %call16 = call %struct._GtkWidget* @file_save_dialog_show(%struct._Gimp* %17, %struct._GimpImage* %19, %struct._GtkWidget* %22, i8* %call15, i32 0, i32 0, %struct._GimpDisplay* null)
  store %struct._GtkWidget* %call16, %struct._GtkWidget** %other, align 8
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %other, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_file_chooser_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkFileChooser*
  %26 = load i8*, i8** %folder, align 8
  %call19 = call i32 @gtk_file_chooser_set_current_folder_uri(%struct._GtkFileChooser* %25, i8* %26)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %other, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call20 = call i64 @gtk_file_chooser_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call20)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GtkFileChooser*
  %30 = load i8*, i8** %name, align 8
  call void @gtk_file_chooser_set_current_name(%struct._GtkFileChooser* %29, i8* %30)
  %31 = load i8*, i8** %folder, align 8
  call void @g_free(i8* %31)
  %32 = load i8*, i8** %name, align 8
  call void @g_free(i8* %32)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @file_export_dialog_destroyed(%struct._GtkWidget* %dialog, %struct._GimpImage* %image) #0 {
entry:
  %dialog.addr = alloca %struct._GtkWidget*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GtkWidget* %dialog, %struct._GtkWidget** %dialog.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog.addr, align 8
  %1 = bitcast %struct._GtkWidget* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_file_dialog_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpFileDialog*
  %image2 = getelementptr inbounds %struct._GimpFileDialog, %struct._GimpFileDialog* %2, i32 0, i32 2
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image2, align 8
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp = icmp eq %struct._GimpImage* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %6 = bitcast %struct._GimpImage* %5 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @g_object_set_data(%struct._GObject* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i32 0, i32 0), i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._GimpTemplate* @gimp_template_new(i8*) #1

declare void @gimp_template_set_from_image(%struct._GimpTemplate*, %struct._GimpImage*) #1

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GimpImage* @file_open_image(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i8*, i32, %struct._GimpPlugInProcedure*, i32, i32*, i8**, %struct._GError**) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare void @gimp_displays_reconnect(%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
