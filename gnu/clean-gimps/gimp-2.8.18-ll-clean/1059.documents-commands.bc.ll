; ModuleID = './app/actions/documents-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpContainerEditor = type { %struct._GtkBox, %struct._GimpContainerView*, %struct._GimpContainerEditorPrivate* }
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
%struct._GimpContainerView = type opaque
%struct._GimpContainerEditorPrivate = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpImage = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpImagefile = type { %struct._GimpViewable }
%struct._GimpTemplate = type opaque
%struct._GError = type { i32, i32, i8* }
%struct.RaiseClosure = type { i8*, i32 }
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
%struct._GimpDrawable = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GtkRecentManager = type { %struct._GObject, %struct._GtkRecentManagerPrivate* }
%struct._GtkRecentManagerPrivate = type opaque
%struct._GtkRecentInfo = type opaque
%struct._GtkDialog = type { %struct._GtkWindow, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpMessageDialog = type { %struct._GimpDialog, %struct._GimpMessageBox* }
%struct._GimpDialog = type { %struct._GtkDialog }
%struct._GimpMessageBox = type { %struct._GtkBox, i8*, i32, [3 x %struct._GtkWidget*], %struct._GtkWidget* }
%struct._GimpThumbnail = type { %struct._GObject, i32, i8*, i8*, i64, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i64, i64, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"Clear Document History\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"gtk-clear\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"gtk-cancel\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"unmap\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Clear the Recent Documents list?\00", align 1
@.str.5 = private unnamed_addr constant [97 x i8] c"Clearing the document history will permanently remove all images from the recent documents list.\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"GNU Image Manipulation Program\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Opening '%s' failed:\0A\0A%s\00", align 1

; Function Attrs: nounwind uwtable
define void @documents_open_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %4)
  store %struct._GimpContext* %call2, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view3 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view3, align 8
  %call4 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %6)
  store %struct._GimpContainer* %call4, %struct._GimpContainer** %container, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpImagefile* @gimp_context_get_imagefile(%struct._GimpContext* %7)
  store %struct._GimpImagefile* %call5, %struct._GimpImagefile** %imagefile, align 8
  %8 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %tobool = icmp ne %struct._GimpImagefile* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %11 = bitcast %struct._GimpImagefile* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %call8 = call i32 @gimp_container_have(%struct._GimpContainer* %9, %struct._GimpObject* %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %14 = bitcast %struct._GimpContainerEditor* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_widget_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWidget*
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %17 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  call void @documents_open_image(%struct._GtkWidget* %15, %struct._GimpContext* %16, %struct._GimpImagefile* %17)
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %18 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %20 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %21 = bitcast %struct._GimpContainerEditor* %20 to %struct._GTypeInstance*
  %call12 = call i64 @gtk_widget_get_type() #4
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call12)
  %22 = bitcast %struct._GTypeInstance* %call13 to %struct._GtkWidget*
  call void @file_file_open_dialog(%struct._Gimp* %19, i8* null, %struct._GtkWidget* %22)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare %struct._GimpImagefile* @gimp_context_get_imagefile(%struct._GimpContext*) #1

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @documents_open_image(%struct._GtkWidget* %editor, %struct._GimpContext* %context, %struct._GimpImagefile* %imagefile) #0 {
entry:
  %editor.addr = alloca %struct._GtkWidget*, align 8
  %context.addr = alloca %struct._GimpContext*, align 8
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %uri = alloca i8*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkWidget* %editor, %struct._GtkWidget** %editor.addr, align 8
  store %struct._GimpContext* %context, %struct._GimpContext** %context.addr, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %1 = bitcast %struct._GimpImagefile* %0 to i8*
  %call = call i8* @gimp_object_get_name(i8* %1)
  store i8* %call, i8** %uri, align 8
  %2 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %2, i32 0, i32 1
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %4 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %5 = load i8*, i8** %uri, align 8
  %call1 = call %struct._GimpImage* @file_open_with_display(%struct._Gimp* %3, %struct._GimpContext* %4, %struct._GimpProgress* null, i8* %5, i32 0, i32* %status, %struct._GError** %error)
  store %struct._GimpImage* %call1, %struct._GimpImage** %image, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool = icmp ne %struct._GimpImage* %6, null
  br i1 %tobool, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %status, align 4
  %cmp = icmp ne i32 %7, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %uri, align 8
  %call2 = call i8* @file_utils_uri_display_name(i8* %8)
  store i8* %call2, i8** %filename, align 8
  %9 = load %struct._GimpContext*, %struct._GimpContext** %context.addr, align 8
  %gimp3 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %9, i32 0, i32 1
  %10 = load %struct._Gimp*, %struct._Gimp** %gimp3, align 8
  %11 = load %struct._GtkWidget*, %struct._GtkWidget** %editor.addr, align 8
  %12 = bitcast %struct._GtkWidget* %11 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  %call5 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0)) #5
  %14 = load i8*, i8** %filename, align 8
  %15 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %15, i32 0, i32 2
  %16 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %10, %struct._GObject* %13, i32 2, i8* %call5, i8* %14, i8* %16)
  call void @g_clear_error(%struct._GError** %error)
  %17 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @file_file_open_dialog(%struct._Gimp*, i8*, %struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define void @documents_raise_or_open_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  %closure = alloca %struct.RaiseClosure, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %4)
  store %struct._GimpContext* %call2, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view3 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view3, align 8
  %call4 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %6)
  store %struct._GimpContainer* %call4, %struct._GimpContainer** %container, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpImagefile* @gimp_context_get_imagefile(%struct._GimpContext* %7)
  store %struct._GimpImagefile* %call5, %struct._GimpImagefile** %imagefile, align 8
  %8 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %tobool = icmp ne %struct._GimpImagefile* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %11 = bitcast %struct._GimpImagefile* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %call8 = call i32 @gimp_container_have(%struct._GimpContainer* %9, %struct._GimpObject* %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end.16

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %14 = bitcast %struct._GimpImagefile* %13 to i8*
  %call10 = call i8* @gimp_object_get_name(i8* %14)
  %name = getelementptr inbounds %struct.RaiseClosure, %struct.RaiseClosure* %closure, i32 0, i32 0
  store i8* %call10, i8** %name, align 8
  %found = getelementptr inbounds %struct.RaiseClosure, %struct.RaiseClosure* %closure, i32 0, i32 1
  store i32 0, i32* %found, align 4
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 31
  %17 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %18 = bitcast %struct.RaiseClosure* %closure to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %17, void (i8*, i8*)* bitcast (void (%struct._GimpDisplay*, %struct.RaiseClosure*)* @documents_raise_display to void (i8*, i8*)*), i8* %18)
  %found11 = getelementptr inbounds %struct.RaiseClosure, %struct.RaiseClosure* %closure, i32 0, i32 1
  %19 = load i32, i32* %found11, align 4
  %tobool12 = icmp ne i32 %19, 0
  br i1 %tobool12, label %if.end, label %if.then.13

if.then.13:                                       ; preds = %if.then
  %20 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %21 = bitcast %struct._GimpContainerEditor* %20 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_widget_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call14)
  %22 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWidget*
  %23 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %24 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  call void @documents_open_image(%struct._GtkWidget* %22, %struct._GimpContext* %23, %struct._GimpImagefile* %24)
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare i8* @gimp_object_get_name(i8*) #1

declare void @gimp_container_foreach(%struct._GimpContainer*, void (i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @documents_raise_display(%struct._GimpDisplay* %display, %struct.RaiseClosure* %closure) #0 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %closure.addr = alloca %struct.RaiseClosure*, align 8
  %uri = alloca i8*, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct.RaiseClosure* %closure, %struct.RaiseClosure** %closure.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %0)
  %1 = bitcast %struct._GimpImage* %call to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %1)
  store i8* %call1, i8** %uri, align 8
  %2 = load %struct.RaiseClosure*, %struct.RaiseClosure** %closure.addr, align 8
  %name = getelementptr inbounds %struct.RaiseClosure, %struct.RaiseClosure* %2, i32 0, i32 0
  %3 = load i8*, i8** %name, align 8
  %4 = load i8*, i8** %uri, align 8
  %call2 = call i32 @g_strcmp0(i8* %3, i8* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.RaiseClosure*, %struct.RaiseClosure** %closure.addr, align 8
  %found = getelementptr inbounds %struct.RaiseClosure, %struct.RaiseClosure* %5, i32 0, i32 1
  store i32 1, i32* %found, align 4
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call3 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  call void @gimp_display_shell_present(%struct._GimpDisplayShell* %call3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @documents_file_open_dialog_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %4)
  store %struct._GimpContext* %call2, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view3 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view3, align 8
  %call4 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %6)
  store %struct._GimpContainer* %call4, %struct._GimpContainer** %container, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpImagefile* @gimp_context_get_imagefile(%struct._GimpContext* %7)
  store %struct._GimpImagefile* %call5, %struct._GimpImagefile** %imagefile, align 8
  %8 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %tobool = icmp ne %struct._GimpImagefile* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %11 = bitcast %struct._GimpImagefile* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %call8 = call i32 @gimp_container_have(%struct._GimpContainer* %9, %struct._GimpObject* %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %15 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %16 = bitcast %struct._GimpImagefile* %15 to i8*
  %call10 = call i8* @gimp_object_get_name(i8* %16)
  %17 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %18 = bitcast %struct._GimpContainerEditor* %17 to %struct._GTypeInstance*
  %call11 = call i64 @gtk_widget_get_type() #4
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call11)
  %19 = bitcast %struct._GTypeInstance* %call12 to %struct._GtkWidget*
  call void @file_file_open_dialog(%struct._Gimp* %14, i8* %call10, %struct._GtkWidget* %19)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @documents_copy_location_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %4)
  store %struct._GimpContext* %call2, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call3 = call %struct._GimpImagefile* @gimp_context_get_imagefile(%struct._GimpContext* %5)
  store %struct._GimpImagefile* %call3, %struct._GimpImagefile** %imagefile, align 8
  %6 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %tobool = icmp ne %struct._GimpImagefile* %6, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %9 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %10 = bitcast %struct._GimpImagefile* %9 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %10)
  call void @gimp_clipboard_set_text(%struct._Gimp* %8, i8* %call4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @gimp_clipboard_set_text(%struct._Gimp*, i8*) #1

; Function Attrs: nounwind uwtable
define void @documents_remove_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  %uri = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %4)
  store %struct._GimpContext* %call2, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call3 = call %struct._GimpImagefile* @gimp_context_get_imagefile(%struct._GimpContext* %5)
  store %struct._GimpImagefile* %call3, %struct._GimpImagefile** %imagefile, align 8
  %6 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %7 = bitcast %struct._GimpImagefile* %6 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %7)
  store i8* %call4, i8** %uri, align 8
  %call5 = call %struct._GtkRecentManager* @gtk_recent_manager_get_default()
  %8 = load i8*, i8** %uri, align 8
  %call6 = call i32 @gtk_recent_manager_remove_item(%struct._GtkRecentManager* %call5, i8* %8, %struct._GError** null)
  %9 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view7 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %9, i32 0, i32 1
  %10 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view7, align 8
  call void @gimp_container_view_remove_active(%struct._GimpContainerView* %10)
  ret void
}

declare i32 @gtk_recent_manager_remove_item(%struct._GtkRecentManager*, i8*, %struct._GError**) #1

declare %struct._GtkRecentManager* @gtk_recent_manager_get_default() #1

declare void @gimp_container_view_remove_active(%struct._GimpContainerView*) #1

; Function Attrs: nounwind uwtable
define void @documents_clear_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %dialog = alloca %struct._GtkWidget*, align 8
  %manager = alloca %struct._GtkRecentManager*, align 8
  %items = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %info = alloca %struct._GtkRecentInfo*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %4)
  store %struct._GimpContext* %call2, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp3 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %5, i32 0, i32 1
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp3, align 8
  store %struct._Gimp* %6, %struct._Gimp** %gimp, align 8
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0)) #5
  %7 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %8 = bitcast %struct._GimpContainerEditor* %7 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call5)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  %call7 = call %struct._GtkWidget* (i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) @gimp_message_dialog_new(i8* %call4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct._GtkWidget* %9, i32 3, void (i8*, i8*)* @gimp_standard_help_func, i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i32 0, i32 0), i32 -6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 -5, i8* null)
  store %struct._GtkWidget* %call7, %struct._GtkWidget** %dialog, align 8
  %10 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %11 = bitcast %struct._GtkWidget* %10 to %struct._GTypeInstance*
  %call8 = call i64 @gtk_dialog_get_type() #4
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call8)
  %12 = bitcast %struct._GTypeInstance* %call9 to %struct._GtkDialog*
  call void (%struct._GtkDialog*, i32, ...) @gtk_dialog_set_alternative_button_order(%struct._GtkDialog* %12, i32 -5, i32 -6, i32 -1)
  %13 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %14 = bitcast %struct._GimpContainerEditor* %13 to %struct._GTypeInstance*
  %call10 = call i64 @gtk_widget_get_type() #4
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call10)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GtkWidget*
  %call12 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %15)
  %16 = bitcast %struct._GtkWidget* %call12 to i8*
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %18 = bitcast %struct._GtkWidget* %17 to i8*
  %call13 = call i64 @g_signal_connect_object(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GtkWidget*)* @gtk_widget_destroy to void ()*), i8* %18, i32 2)
  %19 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %20 = bitcast %struct._GtkWidget* %19 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_message_dialog_get_type() #4
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call14)
  %21 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpMessageDialog*
  %box = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %21, i32 0, i32 1
  %22 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box, align 8
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0)) #5
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_primary_text(%struct._GimpMessageBox* %22, i8* %call16)
  %23 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %24 = bitcast %struct._GtkWidget* %23 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_message_dialog_get_type() #4
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call17)
  %25 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpMessageDialog*
  %box19 = getelementptr inbounds %struct._GimpMessageDialog, %struct._GimpMessageDialog* %25, i32 0, i32 1
  %26 = load %struct._GimpMessageBox*, %struct._GimpMessageBox** %box19, align 8
  %call20 = call i8* @gettext(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.5, i32 0, i32 0)) #5
  call void (%struct._GimpMessageBox*, i8*, ...) @gimp_message_box_set_text(%struct._GimpMessageBox* %26, i8* %call20)
  %27 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  %28 = bitcast %struct._GtkWidget* %27 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_dialog_get_type() #4
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call21)
  %29 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpDialog*
  %call23 = call i32 @gimp_dialog_run(%struct._GimpDialog* %29)
  %cmp = icmp eq i32 %call23, -5
  br i1 %cmp, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %call24 = call %struct._GtkRecentManager* @gtk_recent_manager_get_default()
  store %struct._GtkRecentManager* %call24, %struct._GtkRecentManager** %manager, align 8
  %30 = load %struct._GtkRecentManager*, %struct._GtkRecentManager** %manager, align 8
  %call25 = call %struct._GList* @gtk_recent_manager_get_items(%struct._GtkRecentManager* %30)
  store %struct._GList* %call25, %struct._GList** %items, align 8
  %31 = load %struct._GList*, %struct._GList** %items, align 8
  store %struct._GList* %31, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %32 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %32, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct._GList*, %struct._GList** %list, align 8
  %data26 = getelementptr inbounds %struct._GList, %struct._GList* %33, i32 0, i32 0
  %34 = load i8*, i8** %data26, align 8
  %35 = bitcast i8* %34 to %struct._GtkRecentInfo*
  store %struct._GtkRecentInfo* %35, %struct._GtkRecentInfo** %info, align 8
  %36 = load %struct._GtkRecentInfo*, %struct._GtkRecentInfo** %info, align 8
  %call27 = call i32 @gtk_recent_info_has_application(%struct._GtkRecentInfo* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i32 0, i32 0))
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end

if.then.29:                                       ; preds = %for.body
  %37 = load %struct._GtkRecentManager*, %struct._GtkRecentManager** %manager, align 8
  %38 = load %struct._GtkRecentInfo*, %struct._GtkRecentInfo** %info, align 8
  %call30 = call i8* @gtk_recent_info_get_uri(%struct._GtkRecentInfo* %38)
  %call31 = call i32 @gtk_recent_manager_remove_item(%struct._GtkRecentManager* %37, i8* %call30, %struct._GError** null)
  br label %if.end

if.end:                                           ; preds = %if.then.29, %for.body
  %39 = load %struct._GtkRecentInfo*, %struct._GtkRecentInfo** %info, align 8
  call void @gtk_recent_info_unref(%struct._GtkRecentInfo* %39)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %40, i32 0, i32 1
  %41 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %41, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct._GList*, %struct._GList** %items, align 8
  call void @g_list_free(%struct._GList* %42)
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %documents = getelementptr inbounds %struct._Gimp, %struct._Gimp* %43, i32 0, i32 47
  %44 = load %struct._GimpContainer*, %struct._GimpContainer** %documents, align 8
  call void @gimp_container_clear(%struct._GimpContainer* %44)
  br label %if.end.32

if.end.32:                                        ; preds = %for.end, %entry
  %45 = load %struct._GtkWidget*, %struct._GtkWidget** %dialog, align 8
  call void @gtk_widget_destroy(%struct._GtkWidget* %45)
  ret void
}

declare %struct._GtkWidget* @gimp_message_dialog_new(i8*, i8*, %struct._GtkWidget*, i32, void (i8*, i8*)*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @gimp_standard_help_func(i8*, i8*) #1

declare void @gtk_dialog_set_alternative_button_order(%struct._GtkDialog*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_dialog_get_type() #2

declare i64 @g_signal_connect_object(i8*, i8*, void ()*, i8*, i32) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

declare void @gimp_message_box_set_primary_text(%struct._GimpMessageBox*, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_message_dialog_get_type() #2

declare void @gimp_message_box_set_text(%struct._GimpMessageBox*, i8*, ...) #1

declare i32 @gimp_dialog_run(%struct._GimpDialog*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dialog_get_type() #2

declare %struct._GList* @gtk_recent_manager_get_items(%struct._GtkRecentManager*) #1

declare i32 @gtk_recent_info_has_application(%struct._GtkRecentInfo*, i8*) #1

declare i8* @gtk_recent_info_get_uri(%struct._GtkRecentInfo*) #1

declare void @gtk_recent_info_unref(%struct._GtkRecentInfo*) #1

declare void @g_list_free(%struct._GList*) #1

declare void @gimp_container_clear(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define void @documents_recreate_preview_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %imagefile = alloca %struct._GimpImagefile*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %4)
  store %struct._GimpContext* %call2, %struct._GimpContext** %context, align 8
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view3 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view3, align 8
  %call4 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %6)
  store %struct._GimpContainer* %call4, %struct._GimpContainer** %container, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpImagefile* @gimp_context_get_imagefile(%struct._GimpContext* %7)
  store %struct._GimpImagefile* %call5, %struct._GimpImagefile** %imagefile, align 8
  %8 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %tobool = icmp ne %struct._GimpImagefile* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %11 = bitcast %struct._GimpImagefile* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #4
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %call8 = call i32 @gimp_container_have(%struct._GimpContainer* %9, %struct._GimpObject* %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile, align 8
  %14 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %15 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %16, i32 0, i32 1
  %17 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %thumbnail_size = getelementptr inbounds %struct._GimpCoreConfig, %struct._GimpCoreConfig* %17, i32 0, i32 44
  %18 = load i32, i32* %thumbnail_size, align 4
  %call10 = call i32 @gimp_imagefile_create_thumbnail(%struct._GimpImagefile* %13, %struct._GimpContext* %14, %struct._GimpProgress* null, i32 %18, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

declare i32 @gimp_imagefile_create_thumbnail(%struct._GimpImagefile*, %struct._GimpContext*, %struct._GimpProgress*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @documents_reload_previews_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %4)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %container, align 8
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %6 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view3 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %6, i32 0, i32 1
  %7 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view3, align 8
  %8 = bitcast %struct._GimpContainerView* %7 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %5, void (i8*, i8*)* bitcast (void (%struct._GimpImagefile*)* @gimp_imagefile_update to void (i8*, i8*)*), i8* %8)
  ret void
}

declare void @gimp_imagefile_update(%struct._GimpImagefile*) #1

; Function Attrs: nounwind uwtable
define void @documents_remove_dangling_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %4)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %container, align 8
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %6 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %7 = bitcast %struct._GimpContainer* %6 to i8*
  call void @gimp_container_foreach(%struct._GimpContainer* %5, void (i8*, i8*)* bitcast (void (%struct._GimpImagefile*, %struct._GimpContainer*)* @documents_remove_dangling_foreach to void (i8*, i8*)*), i8* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @documents_remove_dangling_foreach(%struct._GimpImagefile* %imagefile, %struct._GimpContainer* %container) #0 {
entry:
  %imagefile.addr = alloca %struct._GimpImagefile*, align 8
  %container.addr = alloca %struct._GimpContainer*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  %uri = alloca i8*, align 8
  store %struct._GimpImagefile* %imagefile, %struct._GimpImagefile** %imagefile.addr, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  %0 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %call = call %struct._GimpThumbnail* @gimp_imagefile_get_thumbnail(%struct._GimpImagefile* %0)
  store %struct._GimpThumbnail* %call, %struct._GimpThumbnail** %thumbnail, align 8
  %1 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %call1 = call i32 @gimp_thumbnail_peek_image(%struct._GimpThumbnail* %1)
  %cmp = icmp eq i32 %call1, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %3 = bitcast %struct._GimpImagefile* %2 to i8*
  %call2 = call i8* @gimp_object_get_name(i8* %3)
  store i8* %call2, i8** %uri, align 8
  %call3 = call %struct._GtkRecentManager* @gtk_recent_manager_get_default()
  %4 = load i8*, i8** %uri, align 8
  %call4 = call i32 @gtk_recent_manager_remove_item(%struct._GtkRecentManager* %call3, i8* %4, %struct._GError** null)
  %5 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %6 = load %struct._GimpImagefile*, %struct._GimpImagefile** %imagefile.addr, align 8
  %7 = bitcast %struct._GimpImagefile* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_object_get_type() #4
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpObject*
  %call7 = call i32 @gimp_container_remove(%struct._GimpContainer* %5, %struct._GimpObject* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GimpThumbnail* @gimp_imagefile_get_thumbnail(%struct._GimpImagefile*) #1

declare i32 @gimp_thumbnail_peek_image(%struct._GimpThumbnail*) #1

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GimpImage* @file_open_with_display(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i32, i32*, %struct._GError**) #1

declare i8* @file_utils_uri_display_name(i8*) #1

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #1

declare void @g_clear_error(%struct._GError**) #1

declare void @g_free(i8*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare i32 @g_strcmp0(i8*, i8*) #1

declare void @gimp_display_shell_present(%struct._GimpDisplayShell*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
