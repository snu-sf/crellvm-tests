; ModuleID = './app/actions/edit-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type { %struct._GimpViewable, %struct._TileManager*, i32, i32 }
%struct._TileManager = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpUndoStack = type opaque
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
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type { %struct._GObject, i8* }
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type { %struct._GObject, %struct._GList* }
%struct._GimpTreeHandler = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpVectors = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
%struct._GimpWindowStrategy = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque

@.str = private unnamed_addr constant [19 x i8] c"Clear Undo History\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"gimp-warning\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"gimp-edit-undo-clear\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"disconnect\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Really clear image's undo history?\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"Clearing the undo history of this image will gain %s of memory.\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Cut pixels to the clipboard\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Copied pixels to the clipboard\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"There is no image data in the clipboard to paste.\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Clipboard\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Cut Named\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"gimp-buffer-cut\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Enter a name for this buffer\00", align 1
@.str.16 = private unnamed_addr constant [11 x i8] c"Copy Named\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"gimp-buffer-copy\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Copy Visible Named \00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"gimp-buffer-list|gimp-buffer-grid\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"There is no active layer or channel to cut from.\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"(Unnamed Buffer)\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"There is no active layer or channel to copy from.\00", align 1

; Function Attrs: nounwind uwtable
define void @edit_undo_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.4

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i32 @gimp_image_undo(%struct._GimpImage* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %3)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then, %if.then.3, %if.end
  ret void
}

declare %struct._GimpImage* @action_data_get_image(i8*) #1

declare i32 @gimp_image_undo(%struct._GimpImage*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @edit_redo_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.4

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i32 @gimp_image_redo(%struct._GimpImage* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %3)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then, %if.then.3, %if.end
  ret void
}

declare i32 @gimp_image_redo(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @edit_strong_undo_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.4

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i32 @gimp_image_strong_undo(%struct._GimpImage* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %3)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then, %if.then.3, %if.end
  ret void
}

declare i32 @gimp_image_strong_undo(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @edit_strong_redo_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.4

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call i32 @gimp_image_strong_redo(%struct._GimpImage* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %3)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then, %if.then.3, %if.end
  ret void
}

declare i32 @gimp_image_strong_redo(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @edit_undo_clear_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %undo_stack = alloca %struct._GimpUndoStack*, align 8
  %redo_stack = alloca %struct._GimpUndoStack*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %size = alloca i8*, align 8
  %memsize = alloca i64, align 8
  %guisize = alloca i64, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
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
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0)) #5
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), %struct._GtkWidget* %4, i32 3, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %dialog, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %6 = bitcast %struct._GtkWidget* %5 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_dialog_get_type() #6
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call7)
  %7 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %7, i32 -5, i32 -6, i32 -1)
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call9 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %8)
  %9 = bitcast %struct._GtkWidget* %call9 to i8*
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to i8*
  %call10 = call i64 @g_signal_connect_object(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %11, i32 2)
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = bitcast %struct._GimpImage* %12 to i8*
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %15 = bitcast %struct._GtkWidget* %14 to i8*
  %call11 = call i64 @g_signal_connect_object(i8* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %15, i32 2)
  %16 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %17 = bitcast %struct._GtkWidget* %16 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_message_dialog_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 %call12)
  %18 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %18, i32 0, i32 1
  %19 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0)) #5
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %19, i8* %call14)
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage* %20)
  store %struct._GimpUndoStack* %call15, %struct._GimpUndoStack** %undo_stack, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage* %21)
  store %struct._GimpUndoStack* %call16, %struct._GimpUndoStack** %redo_stack, align 8
  %22 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %undo_stack, align 8
  %23 = bitcast %struct._GimpUndoStack* %22 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_object_get_type() #6
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call17)
  %24 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpObject*
  %call19 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %24, i64* %guisize)
  store i64 %call19, i64* %memsize, align 8
  %25 = load i64, i64* %guisize, align 8
  %26 = load i64, i64* %memsize, align 8
  %add = add nsw i64 %26, %25
  store i64 %add, i64* %memsize, align 8
  %27 = load %struct._GimpUndoStack*, %struct._GimpUndoStack** %redo_stack, align 8
  %28 = bitcast %struct._GimpUndoStack* %27 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_object_get_type() #6
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call20)
  %29 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpObject*
  %call22 = call i64 @gimp_object_get_memsize(%struct._GimpObject* %29, i64* %guisize)
  %30 = load i64, i64* %memsize, align 8
  %add23 = add nsw i64 %30, %call22
  store i64 %add23, i64* %memsize, align 8
  %31 = load i64, i64* %guisize, align 8
  %32 = load i64, i64* %memsize, align 8
  %add24 = add nsw i64 %32, %31
  store i64 %add24, i64* %memsize, align 8
  %33 = load i64, i64* %memsize, align 8
  %call25 = call i8* @g_format_size(i64 %33)
  store i8* %call25, i8** %size, align 8
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %35 = bitcast %struct._GtkWidget* %34 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_message_dialog_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call26)
  %36 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpMessageDialog*
  %box28 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %36, i32 0, i32 1
  %37 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box28, align 8
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i32 0, i32 0)) #5
  %38 = load i8*, i8** %size, align 8
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %37, i8* %call29, i8* %38)
  %39 = load i8*, i8** %size, align 8
  call void @g_free(i8* %39)
  %40 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %41 = bitcast %struct._GtkWidget* %40 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_dialog_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call30)
  %42 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpDialog*
  %call32 = call i32 @gimp_dialog_run(%struct._GimpDialog* %42)
  %cmp = icmp eq i32 %call32, -5
  br i1 %cmp, label %if.then.33, label %if.end.36

if.then.33:                                       ; preds = %if.end.4
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call34 = call i32 @gimp_image_undo_disable(%struct._GimpImage* %43)
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call35 = call i32 @gimp_image_undo_enable(%struct._GimpImage* %44)
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %45)
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.33, %if.end.4
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %46)
  br label %return

return:                                           ; preds = %if.end.36, %if.then.3, %if.then
  ret void
}

declare %struct._GtkWidget* @action_data_get_widget(i8*) #1

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #2

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #3

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #3

declare %struct._GimpUndoStack* @gimp_image_get_undo_stack(%struct._GimpImage*) #1

declare %struct._GimpUndoStack* @gimp_image_get_redo_stack(%struct._GimpImage*) #1

declare i64 @gimp_object_get_memsize(%struct._GimpObject*, i64*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #3

declare i8* @g_format_size(i64) #1

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #1

declare void @g_free(i8*) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #3

declare i32 @gimp_image_undo_disable(%struct._GimpImage*) #1

declare i32 @gimp_image_undo_enable(%struct._GimpImage*) #1

; Function Attrs: nounwind uwtable
define void @edit_cut_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %error = alloca %struct._GError*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.18

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.18

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %6)
  %call6 = call %struct._GimpBuffer* @gimp_edit_cut(%struct._GimpImage* %4, %struct._GimpDrawable* %5, %struct._GimpContext* %call5, %struct._GError** %error)
  %tobool7 = icmp ne %struct._GimpBuffer* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.4
  %7 = load i8*, i8** %data.addr, align 8
  %call9 = call %struct._GimpDisplay* @action_data_get_display(i8* %7)
  store %struct._GimpDisplay* %call9, %struct._GimpDisplay** %display, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool10 = icmp ne %struct._GimpDisplay* %8, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.then.8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %12 = bitcast %struct._GimpDisplay* %11 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %10, %struct._GObject* %13, i32 0, i8* %call13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %14)
  br label %if.end.18

if.else:                                          ; preds = %if.end.4
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp15 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %17 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %17)
  %18 = bitcast %struct._GimpDisplay* %call16 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 2
  %21 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %16, %struct._GObject* %19, i32 1, i8* %21)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then, %if.then.3, %if.else, %if.end.14
  ret void
}

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare %struct._GimpBuffer* @gimp_edit_cut(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GError**) #1

declare %struct._GimpContext* @action_data_get_context(i8*) #1

declare %struct._GimpDisplay* @action_data_get_display(i8*) #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #1

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @edit_copy_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %error = alloca %struct._GError*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.18

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.18

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %6)
  %call6 = call %struct._GimpBuffer* @gimp_edit_copy(%struct._GimpImage* %4, %struct._GimpDrawable* %5, %struct._GimpContext* %call5, %struct._GError** %error)
  %tobool7 = icmp ne %struct._GimpBuffer* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.4
  %7 = load i8*, i8** %data.addr, align 8
  %call9 = call %struct._GimpDisplay* @action_data_get_display(i8* %7)
  store %struct._GimpDisplay* %call9, %struct._GimpDisplay** %display, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool10 = icmp ne %struct._GimpDisplay* %8, null
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.then.8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %12 = bitcast %struct._GimpDisplay* %11 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %10, %struct._GObject* %13, i32 0, i8* %call13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.then.8
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %14)
  br label %if.end.18

if.else:                                          ; preds = %if.end.4
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp15 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %17 = load i8*, i8** %data.addr, align 8
  %call16 = call %struct._GimpDisplay* @action_data_get_display(i8* %17)
  %18 = bitcast %struct._GimpDisplay* %call16 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 80)
  %19 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %20 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %20, i32 0, i32 2
  %21 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %16, %struct._GObject* %19, i32 1, i8* %21)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then, %if.then.3, %if.else, %if.end.14
  ret void
}

declare %struct._GimpBuffer* @gimp_edit_copy(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @edit_copy_visible_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %error = alloca %struct._GError*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.14

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %3 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GimpContext* @action_data_get_context(i8* %3)
  %call2 = call %struct._GimpBuffer* @gimp_edit_copy_visible(%struct._GimpImage* %2, %struct._GimpContext* %call1, %struct._GError** %error)
  %tobool3 = icmp ne %struct._GimpBuffer* %call2, null
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpDisplay* @action_data_get_display(i8* %4)
  store %struct._GimpDisplay* %call5, %struct._GimpDisplay** %display, align 8
  %5 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool6 = icmp ne %struct._GimpDisplay* %5, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.then.4
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %6, i32 0, i32 1
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %9 = bitcast %struct._GimpDisplay* %8 to %struct._GTypeInstance*
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call8 to %struct._GObject*
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %7, %struct._GObject* %10, i32 0, i8* %call9)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %if.then.4
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %11)
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp11 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp11, align 8
  %14 = load i8*, i8** %data.addr, align 8
  %call12 = call %struct._GimpDisplay* @action_data_get_display(i8* %14)
  %15 = bitcast %struct._GimpDisplay* %call12 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  %17 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %17, i32 0, i32 2
  %18 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %13, %struct._GObject* %16, i32 1, i8* %18)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.else, %if.end.10
  ret void
}

declare %struct._GimpBuffer* @gimp_edit_copy_visible(%struct._GimpImage*, %struct._GimpContext*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @edit_paste_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpDisplay* @action_data_get_display(i8* %0)
  store %struct._GimpDisplay* %call, %struct._GimpDisplay** %display, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call1 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %2)
  %tobool2 = icmp ne %struct._GimpImage* %call1, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  call void @edit_paste(%struct._GimpDisplay* %3, i32 0)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load %struct._GtkAction*, %struct._GtkAction** %action.addr, align 8
  %5 = load i8*, i8** %data.addr, align 8
  call void @edit_paste_as_new_cmd_callback(%struct._GtkAction* %4, i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal void @edit_paste(%struct._GimpDisplay* %display, i32 %paste_into) #0 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %paste_into.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %svg = alloca i8*, align 8
  %svg_size = alloca i64, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 %paste_into, i32* %paste_into.addr, align 4
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %1, i32 0, i32 1
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call i8* @gimp_clipboard_get_svg(%struct._Gimp* %2, i64* %svg_size)
  store i8* %call1, i8** %svg, align 8
  %3 = load i8*, i8** %svg, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load i8*, i8** %svg, align 8
  %6 = load i64, i64* %svg_size, align 8
  %call2 = call i32 @gimp_vectors_import_buffer(%struct._GimpImage* %4, i8* %5, i64 %6, i32 1, i32 0, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, %struct._GList** null, %struct._GError** null)
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %7)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %8 = load i8*, i8** %svg, align 8
  call void @g_free(i8* %8)
  br label %if.end.20

if.else:                                          ; preds = %entry
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp5 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp5, align 8
  %call6 = call %struct._GimpBuffer* @gimp_clipboard_get_buffer(%struct._Gimp* %10)
  store %struct._GimpBuffer* %call6, %struct._GimpBuffer** %buffer, align 8
  %11 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool7 = icmp ne %struct._GimpBuffer* %11, null
  br i1 %tobool7, label %if.then.8, label %if.else.15

if.then.8:                                        ; preds = %if.else
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call9 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %12)
  store %struct._GimpDisplayShell* %call9, %struct._GimpDisplayShell** %shell, align 8
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %13, i32* %x, i32* %y, i32* %width, i32* %height)
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call10 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %15)
  %16 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %17 = load i32, i32* %paste_into.addr, align 4
  %18 = load i32, i32* %x, align 4
  %19 = load i32, i32* %y, align 4
  %20 = load i32, i32* %width, align 4
  %21 = load i32, i32* %height, align 4
  %call11 = call %struct._GimpLayer* @gimp_edit_paste(%struct._GimpImage* %14, %struct._GimpDrawable* %call10, %struct._GimpBuffer* %16, i32 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  %tobool12 = icmp ne %struct._GimpLayer* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.then.8
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %22)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %if.then.8
  %23 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %24 = bitcast %struct._GimpBuffer* %23 to i8*
  call void @g_object_unref(i8* %24)
  br label %if.end.19

if.else.15:                                       ; preds = %if.else
  %25 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp16 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %25, i32 0, i32 1
  %26 = load %struct._Gimp*, %struct._Gimp** %gimp16, align 8
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %28 = bitcast %struct._GimpDisplay* %27 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 80)
  %29 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %26, %struct._GObject* %29, i32 1, i8* %call18)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.15, %if.end.14
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @edit_paste_as_new_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
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
  br label %if.end.9

if.end:                                           ; preds = %entry
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call1 = call %struct._GimpBuffer* @gimp_clipboard_get_buffer(%struct._Gimp* %2)
  store %struct._GimpBuffer* %call1, %struct._GimpBuffer** %buffer, align 8
  %3 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool2 = icmp ne %struct._GimpBuffer* %3, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %call4 = call %struct._GimpImage* @action_data_get_image(i8* %5)
  %6 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call5 = call %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp* %4, %struct._GimpImage* %call4, %struct._GimpBuffer* %6)
  store %struct._GimpImage* %call5, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %8 = bitcast %struct._GimpBuffer* %7 to i8*
  call void @g_object_unref(i8* %8)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp6 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp6, align 8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call7 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %10, %struct._GimpImage* %11, i32 0, double 1.000000e+00)
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %13 = bitcast %struct._GimpImage* %12 to i8*
  call void @g_object_unref(i8* %13)
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %14, %struct._GObject* null, i32 1, i8* %call8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then, %if.else, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define void @edit_paste_into_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
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
  call void @edit_paste(%struct._GimpDisplay* %2, i32 1)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare %struct._Gimp* @action_data_get_gimp(i8*) #1

declare %struct._GimpBuffer* @gimp_clipboard_get_buffer(%struct._Gimp*) #1

declare %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp*, %struct._GimpImage*, %struct._GimpBuffer*) #1

declare void @g_object_unref(i8*) #1

declare %struct._GimpObject* @gimp_create_display(%struct._Gimp*, %struct._GimpImage*, i32, double) #1

; Function Attrs: nounwind uwtable
define void @edit_paste_as_new_layer_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._Gimp* @action_data_get_gimp(i8* %0)
  store %struct._Gimp* %call, %struct._Gimp** %gimp, align 8
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %tobool = icmp ne %struct._Gimp* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.14

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GimpImage* @action_data_get_image(i8* %2)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool2 = icmp ne %struct._GimpImage* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.14

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call5 = call %struct._GimpBuffer* @gimp_clipboard_get_buffer(%struct._Gimp* %4)
  store %struct._GimpBuffer* %call5, %struct._GimpBuffer** %buffer, align 8
  %5 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool6 = icmp ne %struct._GimpBuffer* %5, null
  br i1 %tobool6, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.4
  %6 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call8 = call %struct._TileManager* @gimp_buffer_get_tiles(%struct._GimpBuffer* %6)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call9 = call i32 @gimp_image_base_type_with_alpha(%struct._GimpImage* %8)
  %call10 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0)) #5
  %call11 = call %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager* %call8, %struct._GimpImage* %7, i32 %call9, i8* %call10, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call11, %struct._GimpLayer** %layer, align 8
  %9 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %10 = bitcast %struct._GimpBuffer* %9 to i8*
  call void @g_object_unref(i8* %10)
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %12 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call12 = call i32 @gimp_image_add_layer(%struct._GimpImage* %11, %struct._GimpLayer* %12, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 1)
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %13)
  br label %if.end.14

if.else:                                          ; preds = %if.end.4
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call13 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %14, %struct._GObject* null, i32 1, i8* %call13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then, %if.then.3, %if.else, %if.then.7
  ret void
}

declare %struct._GimpLayer* @gimp_layer_new_from_tiles(%struct._TileManager*, %struct._GimpImage*, i32, i8*, double, i32) #1

declare %struct._TileManager* @gimp_buffer_get_tiles(%struct._GimpBuffer*) #1

declare i32 @gimp_image_base_type_with_alpha(%struct._GimpImage*) #1

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @edit_named_cut_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
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
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0)) #5
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0)) #5
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %6 = bitcast %struct._GimpImage* %5 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = bitcast %struct._GimpImage* %8 to i8*
  %call8 = call %struct._GtkWidget* @gimp_query_string_box(i8* %call5, %struct._GtkWidget* %4, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i8* %call6, i8* null, %struct._GObject* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void (%struct._GtkWidget*, i8*, i8*)* @cut_named_buffer_callback, i8* %9)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %dialog, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_query_string_box(i8*, %struct._GtkWidget*, void (i8*, i8*)*, i8*, i8*, i8*, %struct._GObject*, i8*, void (%struct._GtkWidget*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @cut_named_buffer_callback(%struct._GtkWidget* %widget, i8* %name, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %name.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %3)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %6, %struct._GObject* null, i32 1, i8* %call3)
  br label %if.end.16

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %name.addr, align 8
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.then.7

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8*, i8** %name.addr, align 8
  %call5 = call i64 @strlen(i8* %8) #7
  %tobool6 = icmp ne i64 %call5, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true, %if.end
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)) #5
  store i8* %call8, i8** %name.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %land.lhs.true
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp10 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %call11 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %13)
  %call12 = call i8* @gimp_edit_named_cut(%struct._GimpImage* %9, i8* %10, %struct._GimpDrawable* %11, %struct._GimpContext* %call11, %struct._GError** %error)
  %tobool13 = icmp ne i8* %call12, null
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.9
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %14)
  br label %if.end.16

if.else:                                          ; preds = %if.end.9
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp15 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %17 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %17, i32 0, i32 2
  %18 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %16, %struct._GObject* null, i32 1, i8* %18)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then, %if.else, %if.then.14
  ret void
}

declare void @gtk_widget_show(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @edit_fade_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.9

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %data.addr, align 8
  %call1 = call %struct._GtkWidget* @action_data_get_widget(i8* %2)
  store %struct._GtkWidget* %call1, %struct._GtkWidget** %widget, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %tobool2 = icmp ne %struct._GtkWidget* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %if.end.9

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call5 = call %struct._GtkWidget* @fade_dialog_new(%struct._GimpImage* %4, %struct._GtkWidget* %5)
  store %struct._GtkWidget* %call5, %struct._GtkWidget** %dialog, align 8
  %6 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %tobool6 = icmp ne %struct._GtkWidget* %6, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %if.end.4
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %8 = bitcast %struct._GimpImage* %7 to i8*
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %10 = bitcast %struct._GtkWidget* %9 to i8*
  %call8 = call i64 @g_signal_connect_object(i8* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %10, i32 2)
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then, %if.then.3, %if.then.7, %if.end.4
  ret void
}

declare %struct._GtkWidget* @fade_dialog_new(%struct._GimpImage*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @edit_named_copy_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
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
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i32 0, i32 0)) #5
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0)) #5
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %6 = bitcast %struct._GimpImage* %5 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = bitcast %struct._GimpImage* %8 to i8*
  %call8 = call %struct._GtkWidget* @gimp_query_string_box(i8* %call5, %struct._GtkWidget* %4, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i8* %call6, i8* null, %struct._GObject* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void (%struct._GtkWidget*, i8*, i8*)* @copy_named_buffer_callback, i8* %9)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %dialog, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_named_buffer_callback(%struct._GtkWidget* %widget, i8* %name, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %name.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call2 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %3)
  store %struct._GimpDrawable* %call2, %struct._GimpDrawable** %drawable, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %4 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool = icmp ne %struct._GimpDrawable* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i32 0, i32 0)) #5
  call void @gimp_message_literal(%struct._Gimp* %6, %struct._GObject* null, i32 1, i8* %call3)
  br label %if.end.16

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %name.addr, align 8
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %land.lhs.true, label %if.then.7

land.lhs.true:                                    ; preds = %if.end
  %8 = load i8*, i8** %name.addr, align 8
  %call5 = call i64 @strlen(i8* %8) #7
  %tobool6 = icmp ne i64 %call5, 0
  br i1 %tobool6, label %if.end.9, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true, %if.end
  %call8 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)) #5
  store i8* %call8, i8** %name.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %land.lhs.true
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %12 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp10 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %call11 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %13)
  %call12 = call i8* @gimp_edit_named_copy(%struct._GimpImage* %9, i8* %10, %struct._GimpDrawable* %11, %struct._GimpContext* %call11, %struct._GError** %error)
  %tobool13 = icmp ne i8* %call12, null
  br i1 %tobool13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.9
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %14)
  br label %if.end.16

if.else:                                          ; preds = %if.end.9
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp15 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %17 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %17, i32 0, i32 2
  %18 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %16, %struct._GObject* null, i32 1, i8* %18)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then, %if.else, %if.then.14
  ret void
}

; Function Attrs: nounwind uwtable
define void @edit_named_copy_visible_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %widget = alloca %struct._GtkWidget*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
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
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #5
  %4 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0)) #5
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %6 = bitcast %struct._GimpImage* %5 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 80)
  %7 = bitcast %struct._GTypeInstance* %call7 to %struct._GObject*
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %9 = bitcast %struct._GimpImage* %8 to i8*
  %call8 = call %struct._GtkWidget* @gimp_query_string_box(i8* %call5, %struct._GtkWidget* %4, void (i8*, i8*)* @gimp_standard_help_func, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i8* %call6, i8* null, %struct._GObject* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), void (%struct._GtkWidget*, i8*, i8*)* @copy_named_visible_buffer_callback, i8* %9)
  store %struct._GtkWidget* %call8, %struct._GtkWidget** %dialog, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %10)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @copy_named_visible_buffer_callback(%struct._GtkWidget* %widget, i8* %name, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %name.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImage*
  store %struct._GimpImage* %2, %struct._GimpImage** %image, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.then

land.lhs.true:                                    ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 8
  %call2 = call i64 @strlen(i8* %4) #7
  %tobool3 = icmp ne i64 %call2, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true, %entry
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i32 0, i32 0)) #5
  store i8* %call4, i8** %name.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call5 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %8)
  %call6 = call i8* @gimp_edit_named_copy_visible(%struct._GimpImage* %5, i8* %6, %struct._GimpContext* %call5, %struct._GError** %error)
  %tobool7 = icmp ne i8* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %9)
  br label %if.end.10

if.else:                                          ; preds = %if.end
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp9 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %12 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %12, i32 0, i32 2
  %13 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %11, %struct._GObject* null, i32 1, i8* %13)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @edit_named_paste_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
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
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call5 = call %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp* %4)
  %5 = bitcast %struct._GimpObject* %call5 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_window_strategy_interface_get_type() #6
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 %call6)
  %6 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpWindowStrategy*
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call8 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %8 = load %struct._GtkWidget*, %struct._GtkWidget** %widget, align 8
  %call9 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %8)
  %call10 = call %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy* %6, %struct._Gimp* %7, %struct._GimpDialogFactory* %call8, %struct._GdkScreen* %call9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0))
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare %struct._GtkWidget* @gimp_window_strategy_show_dockable_dialog(%struct._GimpWindowStrategy*, %struct._Gimp*, %struct._GimpDialogFactory*, %struct._GdkScreen*, i8*) #1

declare %struct._GimpObject* @gimp_get_window_strategy(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_window_strategy_interface_get_type() #3

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @edit_clear_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %5 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %6 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %6)
  %call6 = call i32 @gimp_edit_clear(%struct._GimpImage* %4, %struct._GimpDrawable* %5, %struct._GimpContext* %call5)
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %7)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_edit_clear(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpContext*) #1

; Function Attrs: nounwind uwtable
define void @edit_fill_cmd_callback(%struct._GtkAction* %action, i32 %value, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %value.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %fill_type = alloca i32, align 4
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %call = call %struct._GimpImage* @action_data_get_image(i8* %0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call1 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %2)
  store %struct._GimpDrawable* %call1, %struct._GimpDrawable** %drawable, align 8
  %3 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool2 = icmp ne %struct._GimpDrawable* %3, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load i32, i32* %value.addr, align 4
  store i32 %4, i32* %fill_type, align 4
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %call5 = call %struct._GimpContext* @action_data_get_context(i8* %7)
  %8 = load i32, i32* %fill_type, align 4
  %call6 = call i32 @gimp_edit_fill(%struct._GimpImage* %5, %struct._GimpDrawable* %6, %struct._GimpContext* %call5, i32 %8)
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %9)
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3, %if.then
  ret void
}

declare i32 @gimp_edit_fill(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpContext*, i32) #1

declare i8* @gimp_clipboard_get_svg(%struct._Gimp*, i64*) #1

declare i32 @gimp_vectors_import_buffer(%struct._GimpImage*, i8*, i64, i32, i32, %struct._GimpVectors*, i32, %struct._GList**, %struct._GError**) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell*, i32*, i32*, i32*, i32*) #1

declare %struct._GimpLayer* @gimp_edit_paste(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpBuffer*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare i8* @gimp_edit_named_cut(%struct._GimpImage*, i8*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GError**) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare i8* @gimp_edit_named_copy(%struct._GimpImage*, i8*, %struct._GimpDrawable*, %struct._GimpContext*, %struct._GError**) #1

declare i8* @gimp_edit_named_copy_visible(%struct._GimpImage*, i8*, %struct._GimpContext*, %struct._GError**) #1

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
