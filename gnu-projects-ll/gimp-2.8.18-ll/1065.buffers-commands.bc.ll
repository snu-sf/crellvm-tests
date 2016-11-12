; ModuleID = './app/actions/buffers-commands.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GtkAction = type { %struct._GObject, %struct._GtkActionPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GtkActionPrivate = type opaque
%struct._GimpBufferView = type { %struct._GimpContainerEditor, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget* }
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
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpContainerPriv = type opaque
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
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
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
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
%struct._GimpImagefile = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type opaque
%struct._Selection = type opaque
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type opaque
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpLayer = type opaque

; Function Attrs: nounwind uwtable
define void @buffers_paste_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_buffer_view_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBufferView*
  call void @buffers_paste(%struct._GimpBufferView* %2, i32 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @buffers_paste(%struct._GimpBufferView* %view, i32 %paste_into) #0 {
entry:
  %view.addr = alloca %struct._GimpBufferView*, align 8
  %paste_into.addr = alloca i32, align 4
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpBufferView* %view, %struct._GimpBufferView** %view.addr, align 8
  store i32 %paste_into, i32* %paste_into.addr, align 4
  %0 = load %struct._GimpBufferView*, %struct._GimpBufferView** %view.addr, align 8
  %1 = bitcast %struct._GimpBufferView* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view2 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view2, align 8
  %call3 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %4)
  store %struct._GimpContainer* %call3, %struct._GimpContainer** %container, align 8
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view4 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view4, align 8
  %call5 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call6 = call %struct._GimpBuffer* @gimp_context_get_buffer(%struct._GimpContext* %7)
  store %struct._GimpBuffer* %call6, %struct._GimpBuffer** %buffer, align 8
  %8 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool = icmp ne %struct._GimpBuffer* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %11 = bitcast %struct._GimpBuffer* %10 to %struct._GTypeInstance*
  %call7 = call i64 @gimp_object_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call7)
  %12 = bitcast %struct._GTypeInstance* %call8 to %struct._GimpObject*
  %call9 = call i32 @gimp_container_have(%struct._GimpContainer* %9, %struct._GimpObject* %12)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then, label %if.end.22

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call11 = call i8* @gimp_context_get_display(%struct._GimpContext* %13)
  %14 = bitcast i8* %call11 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %14, %struct._GimpDisplay** %display, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  store i32 -1, i32* %x, align 4
  store i32 -1, i32* %y, align 4
  store i32 -1, i32* %width, align 4
  store i32 -1, i32* %height, align 4
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool12 = icmp ne %struct._GimpDisplay* %15, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call14 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %16)
  store %struct._GimpDisplayShell* %call14, %struct._GimpDisplayShell** %shell, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %17, i32* %x, i32* %y, i32* %width, i32* %height)
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call15 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %18)
  store %struct._GimpImage* %call15, %struct._GimpImage** %image, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %19 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call16 = call %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext* %19)
  store %struct._GimpImage* %call16, %struct._GimpImage** %image, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool17 = icmp ne %struct._GimpImage* %20, null
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call19 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %22)
  %23 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %24 = load i32, i32* %paste_into.addr, align 4
  %25 = load i32, i32* %x, align 4
  %26 = load i32, i32* %y, align 4
  %27 = load i32, i32* %width, align 4
  %28 = load i32, i32* %height, align 4
  %call20 = call %struct._GimpLayer* @gimp_edit_paste(%struct._GimpImage* %21, %struct._GimpDrawable* %call19, %struct._GimpBuffer* %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %28)
  %29 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_image_flush(%struct._GimpImage* %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %land.lhs.true, %entry
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_view_get_type() #2

; Function Attrs: nounwind uwtable
define void @buffers_paste_into_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_buffer_view_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBufferView*
  call void @buffers_paste(%struct._GimpBufferView* %2, i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @buffers_paste_as_new_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  %container = alloca %struct._GimpContainer*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %new_image = alloca %struct._GimpImage*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  %call2 = call %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView* %4)
  store %struct._GimpContainer* %call2, %struct._GimpContainer** %container, align 8
  %5 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view3 = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %5, i32 0, i32 1
  %6 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view3, align 8
  %call4 = call %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView* %6)
  store %struct._GimpContext* %call4, %struct._GimpContext** %context, align 8
  %7 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %call5 = call %struct._GimpBuffer* @gimp_context_get_buffer(%struct._GimpContext* %7)
  store %struct._GimpBuffer* %call5, %struct._GimpBuffer** %buffer, align 8
  %8 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %tobool = icmp ne %struct._GimpBuffer* %8, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %9 = load %struct._GimpContainer*, %struct._GimpContainer** %container, align 8
  %10 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %11 = bitcast %struct._GimpBuffer* %10 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_object_get_type() #3
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %11, i64 %call6)
  %12 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpObject*
  %call8 = call i32 @gimp_container_have(%struct._GimpContainer* %9, %struct._GimpObject* %12)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %15 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %call10 = call %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp* %14, %struct._GimpImage* null, %struct._GimpBuffer* %15)
  store %struct._GimpImage* %call10, %struct._GimpImage** %new_image, align 8
  %16 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %gimp11 = getelementptr inbounds %struct._GimpContext, %struct._GimpContext* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp11, align 8
  %18 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %call12 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %17, %struct._GimpImage* %18, i32 0, double 1.000000e+00)
  %19 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %20 = bitcast %struct._GimpImage* %19 to i8*
  call void @g_object_unref(i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_container_editor_get_type() #2

declare %struct._GimpContainer* @gimp_container_view_get_container(%struct._GimpContainerView*) #1

declare %struct._GimpContext* @gimp_container_view_get_context(%struct._GimpContainerView*) #1

declare %struct._GimpBuffer* @gimp_context_get_buffer(%struct._GimpContext*) #1

declare i32 @gimp_container_have(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp*, %struct._GimpImage*, %struct._GimpBuffer*) #1

declare %struct._GimpObject* @gimp_create_display(%struct._Gimp*, %struct._GimpImage*, i32, double) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @buffers_delete_cmd_callback(%struct._GtkAction* %action, i8* %data) #0 {
entry:
  %action.addr = alloca %struct._GtkAction*, align 8
  %data.addr = alloca i8*, align 8
  %editor = alloca %struct._GimpContainerEditor*, align 8
  store %struct._GtkAction* %action, %struct._GtkAction** %action.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_container_editor_get_type() #3
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpContainerEditor*
  store %struct._GimpContainerEditor* %2, %struct._GimpContainerEditor** %editor, align 8
  %3 = load %struct._GimpContainerEditor*, %struct._GimpContainerEditor** %editor, align 8
  %view = getelementptr inbounds %struct._GimpContainerEditor, %struct._GimpContainerEditor* %3, i32 0, i32 1
  %4 = load %struct._GimpContainerView*, %struct._GimpContainerView** %view, align 8
  call void @gimp_container_view_remove_active(%struct._GimpContainerView* %4)
  ret void
}

declare void @gimp_container_view_remove_active(%struct._GimpContainerView*) #1

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell*, i32*, i32*, i32*, i32*) #1

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #1

declare %struct._GimpImage* @gimp_context_get_image(%struct._GimpContext*) #1

declare %struct._GimpLayer* @gimp_edit_paste(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpBuffer*, i32, i32, i32, i32, i32) #1

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #1

declare void @gimp_image_flush(%struct._GimpImage*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
