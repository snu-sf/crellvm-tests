; ModuleID = './app/display/gimpdisplayshell-dnd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type { %struct._GimpViewable, %struct._Gimp* }
%struct._GimpViewable = type { %struct._GimpObject }
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type { %struct._GimpData, %struct._TempBuf* }
%struct._GimpData = type { %struct._GimpViewable }
%struct._TempBuf = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDisplayConfig = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDisplayOptions = type opaque
%struct._GimpZoomModel = type opaque
%struct._Selection = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._cairo_surface = type opaque
%struct._cairo_pattern = type opaque
%struct._GimpCanvasItem = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpColorDisplayStack = type opaque
%struct._GimpTreeHandler = type opaque
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpLayerMask = type { %struct._GimpChannel, %struct._GimpLayer*, i32, i32, i32 }
%struct._GimpChannel = type { %struct._GimpDrawable, %struct._GimpRGB, i32, %struct._GeglNode*, %struct._GeglNode*, %struct._GeglNode*, i32, %struct._BoundSeg*, %struct._BoundSeg*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._BoundSeg = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._GimpVectors = type { %struct._GimpItem, %struct._GList*, i32, i32, double, %struct.cairo_path*, i32, i32, double, double, double, double }
%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.1 }
%struct.anon.1 = type { double, double }
%struct._GError = type { i32, i32, i8* }
%struct._GimpPlugInProcedure = type opaque
%struct._GimpTextLayer = type { %struct._GimpLayer, %struct._GimpText*, i8*, i32, i32 }
%struct._GimpText = type { %struct._GimpObject, i8*, i8*, i8*, i32, double, i32, i32, i32, i8*, i32, %struct._GimpRGB, i32, i32, double, double, double, i32, double, double, i32, %struct._GimpMatrix2, double, double, double }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }

@.str = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_shell_dnd_init = private unnamed_addr constant [28 x i8] c"gimp_display_shell_dnd_init\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"GIMP_IS_DISPLAY_SHELL (shell)\00", align 1
@gimp_log_flags = external global i32, align 4
@__func__.gimp_display_shell_drop_drawable = private unnamed_addr constant [33 x i8] c"gimp_display_shell_drop_drawable\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Drop New Layer\00", align 1
@__func__.gimp_display_shell_drop_vectors = private unnamed_addr constant [32 x i8] c"gimp_display_shell_drop_vectors\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Drop New Path\00", align 1
@__func__.gimp_display_shell_drop_svg = private unnamed_addr constant [28 x i8] c"gimp_display_shell_drop_svg\00", align 1
@__func__.gimp_display_shell_drop_pattern = private unnamed_addr constant [32 x i8] c"gimp_display_shell_drop_pattern\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Cannot modify the pixels of layer groups.\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"The active layer's pixels are locked.\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@__func__.gimp_display_shell_drop_color = private unnamed_addr constant [30 x i8] c"gimp_display_shell_drop_color\00", align 1
@__func__.gimp_display_shell_drop_buffer = private unnamed_addr constant [31 x i8] c"gimp_display_shell_drop_buffer\00", align 1
@__func__.gimp_display_shell_drop_uri_list = private unnamed_addr constant [33 x i8] c"gimp_display_shell_drop_uri_list\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Drop layers\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Opening '%s' failed:\0A\0A%s\00", align 1
@__func__.gimp_display_shell_drop_component = private unnamed_addr constant [34 x i8] c"gimp_display_shell_drop_component\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"%s Channel Copy\00", align 1
@__func__.gimp_display_shell_drop_pixbuf = private unnamed_addr constant [31 x i8] c"gimp_display_shell_drop_pixbuf\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"Dropped Buffer\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_display_shell_dnd_init(%struct._GimpDisplayShell* %shell) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %1 = bitcast %struct._GimpDisplayShell* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_shell_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_display_shell_dnd_init, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %13, i32 0, i32 33
  %14 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas, align 8
  %call11 = call i64 @gimp_layer_get_type() #5
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %16 = bitcast %struct._GimpDisplayShell* %15 to i8*
  %call12 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %14, i64 %call11, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_display_shell_drop_drawable, i8* %16)
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 33
  %18 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas13, align 8
  %call14 = call i64 @gimp_layer_mask_get_type() #5
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %20 = bitcast %struct._GimpDisplayShell* %19 to i8*
  %call15 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %18, i64 %call14, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_display_shell_drop_drawable, i8* %20)
  %21 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %21, i32 0, i32 33
  %22 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas16, align 8
  %call17 = call i64 @gimp_channel_get_type() #5
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %24 = bitcast %struct._GimpDisplayShell* %23 to i8*
  %call18 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %22, i64 %call17, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_display_shell_drop_drawable, i8* %24)
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas19 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 33
  %26 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas19, align 8
  %call20 = call i64 @gimp_vectors_get_type() #5
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %28 = bitcast %struct._GimpDisplayShell* %27 to i8*
  %call21 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %26, i64 %call20, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_display_shell_drop_vectors, i8* %28)
  %29 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas22 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %29, i32 0, i32 33
  %30 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas22, align 8
  %call23 = call i64 @gimp_pattern_get_type() #5
  %31 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %32 = bitcast %struct._GimpDisplayShell* %31 to i8*
  %call24 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %30, i64 %call23, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_display_shell_drop_pattern, i8* %32)
  %33 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %33, i32 0, i32 33
  %34 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas25, align 8
  %call26 = call i64 @gimp_buffer_get_type() #5
  %35 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %36 = bitcast %struct._GimpDisplayShell* %35 to i8*
  %call27 = call i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget* %34, i64 %call26, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)* @gimp_display_shell_drop_buffer, i8* %36)
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas28 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 33
  %38 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas28, align 8
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %40 = bitcast %struct._GimpDisplayShell* %39 to i8*
  call void @gimp_dnd_color_dest_add(%struct._GtkWidget* %38, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)* @gimp_display_shell_drop_color, i8* %40)
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas29 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %41, i32 0, i32 33
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas29, align 8
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %44 = bitcast %struct._GimpDisplayShell* %43 to i8*
  call void @gimp_dnd_component_dest_add(%struct._GtkWidget* %42, void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)* @gimp_display_shell_drop_component, i8* %44)
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas30 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %45, i32 0, i32 33
  %46 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas30, align 8
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %48 = bitcast %struct._GimpDisplayShell* %47 to i8*
  call void @gimp_dnd_uri_list_dest_add(%struct._GtkWidget* %46, void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)* @gimp_display_shell_drop_uri_list, i8* %48)
  %49 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas31 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %49, i32 0, i32 33
  %50 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas31, align 8
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %52 = bitcast %struct._GimpDisplayShell* %51 to i8*
  call void @gimp_dnd_svg_dest_add(%struct._GtkWidget* %50, void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)* @gimp_display_shell_drop_svg, i8* %52)
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %canvas32 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %53, i32 0, i32 33
  %54 = load %struct._GtkWidget*, %struct._GtkWidget** %canvas32, align 8
  %55 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %56 = bitcast %struct._GimpDisplayShell* %55 to i8*
  call void @gimp_dnd_pixbuf_dest_add(%struct._GtkWidget* %54, void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)* @gimp_display_shell_drop_pixbuf, i8* %56)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i32 @gimp_dnd_viewable_dest_add(%struct._GtkWidget*, i64, void (%struct._GtkWidget*, i32, i32, %struct._GimpViewable*, i8*)*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_drop_drawable(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_type = alloca i64, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %new_layer = alloca %struct._GimpLayer*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_display_shell_drop_drawable, i32 0, i32 0), i32 219, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 16
  %9 = load i32, i32* %busy, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  br label %if.end.47

if.end.6:                                         ; preds = %do.end
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool7 = icmp ne %struct._GimpImage* %10, null
  br i1 %tobool7, label %if.end.17, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display9 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 1
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display9, align 8
  %gimp10 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_drawable_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpDrawable*
  %call13 = call %struct._GimpImage* @gimp_image_new_from_drawable(%struct._Gimp* %13, %struct._GimpDrawable* %16)
  store %struct._GimpImage* %call13, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 1
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display14, align 8
  %gimp15 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %18, i32 0, i32 1
  %19 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %19, %struct._GimpImage* %20, i32 0, double 1.000000e+00)
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %22 = bitcast %struct._GimpImage* %21 to i8*
  call void @g_object_unref(i8* %22)
  br label %if.end.47

if.end.17:                                        ; preds = %if.end.6
  %23 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %24 = bitcast %struct._GimpViewable* %23 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %24, %struct._GTypeInstance** %__inst, align 8
  %call18 = call i64 @gimp_layer_get_type() #5
  store i64 %call18, i64* %__t, align 8
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %25, null
  br i1 %tobool19, label %if.else, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  store i32 0, i32* %__r, align 4
  br label %if.end.27

if.else:                                          ; preds = %if.end.17
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool21 = icmp ne %struct._GTypeClass* %27, null
  br i1 %tobool21, label %land.lhs.true, label %if.else.24

land.lhs.true:                                    ; preds = %if.else
  %28 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type, align 8
  %31 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %30, %31
  br i1 %cmp, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.26

if.else.24:                                       ; preds = %land.lhs.true, %if.else
  %32 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %33 = load i64, i64* %__t, align 8
  %call25 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %32, i64 %33) #6
  store i32 %call25, i32* %__r, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %if.then.20
  %34 = load i32, i32* %__r, align 4
  store i32 %34, i32* %tmp
  %35 = load i32, i32* %tmp
  %tobool28 = icmp ne i32 %35, 0
  br i1 %tobool28, label %if.then.29, label %if.else.32

if.then.29:                                       ; preds = %if.end.27
  %36 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %37 = bitcast %struct._GimpViewable* %36 to %struct._GTypeInstance*
  %g_class30 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class30, align 8
  %g_type31 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type31, align 8
  store i64 %39, i64* %new_type, align 8
  br label %if.end.34

if.else.32:                                       ; preds = %if.end.27
  %call33 = call i64 @gimp_layer_get_type() #5
  store i64 %call33, i64* %new_type, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.29
  %40 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %41 = bitcast %struct._GimpViewable* %40 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_item_get_type() #5
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call35)
  %42 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpItem*
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %44 = load i64, i64* %new_type, align 8
  %call37 = call %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %42, %struct._GimpImage* %43, i64 %44)
  store %struct._GimpItem* %call37, %struct._GimpItem** %new_item, align 8
  %45 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %tobool38 = icmp ne %struct._GimpItem* %45, null
  br i1 %tobool38, label %if.then.39, label %if.end.47

if.then.39:                                       ; preds = %if.end.34
  %46 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %47 = bitcast %struct._GimpItem* %46 to %struct._GTypeInstance*
  %call41 = call i64 @gimp_layer_get_type() #5
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call41)
  %48 = bitcast %struct._GTypeInstance* %call42 to %struct._GimpLayer*
  store %struct._GimpLayer* %48, %struct._GimpLayer** %new_layer, align 8
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call43 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #7
  %call44 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %49, i32 29, i8* %call43)
  %50 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %51 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %52 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  call void @gimp_display_shell_dnd_position_item(%struct._GimpDisplayShell* %50, %struct._GimpImage* %51, %struct._GimpItem* %52)
  %53 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  call void @gimp_item_set_visible(%struct._GimpItem* %53, i32 1, i32 0)
  %54 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  call void @gimp_item_set_linked(%struct._GimpItem* %54, i32 0, i32 0)
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %56 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %call45 = call i32 @gimp_image_add_layer(%struct._GimpImage* %55, %struct._GimpLayer* %56, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 1)
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call46 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %57)
  %58 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %59 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_display_shell_dnd_flush(%struct._GimpDisplayShell* %58, %struct._GimpImage* %59)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.5, %if.then.8, %if.then.39, %if.end.34
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_layer_mask_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_get_type() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_vectors_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_drop_vectors(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %new_vectors = alloca %struct._GimpVectors*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_drop_vectors, i32 0, i32 0), i32 273, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 16
  %9 = load i32, i32* %busy, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  br label %if.end.21

if.end.6:                                         ; preds = %do.end
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool7 = icmp ne %struct._GimpImage* %10, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.21

if.end.9:                                         ; preds = %if.end.6
  %11 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %12 = bitcast %struct._GimpViewable* %11 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_item_get_type() #5
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 %call10)
  %13 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpItem*
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %16 = bitcast %struct._GimpViewable* %15 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type, align 8
  %call12 = call %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %13, %struct._GimpImage* %14, i64 %18)
  store %struct._GimpItem* %call12, %struct._GimpItem** %new_item, align 8
  %19 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %tobool13 = icmp ne %struct._GimpItem* %19, null
  br i1 %tobool13, label %if.then.14, label %if.end.21

if.then.14:                                       ; preds = %if.end.9
  %20 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %21 = bitcast %struct._GimpItem* %20 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_vectors_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call15)
  %22 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpVectors*
  store %struct._GimpVectors* %22, %struct._GimpVectors** %new_vectors, align 8
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i8* @gettext(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0)) #7
  %call18 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %23, i32 29, i8* %call17)
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %25 = load %struct._GimpVectors*, %struct._GimpVectors** %new_vectors, align 8
  %call19 = call i32 @gimp_image_add_vectors(%struct._GimpImage* %24, %struct._GimpVectors* %25, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, i32 1)
  %26 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call20 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %26)
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %28 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_display_shell_dnd_flush(%struct._GimpDisplayShell* %27, %struct._GimpImage* %28)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.5, %if.then.8, %if.then.14, %if.end.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_pattern_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_drop_pattern(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_display_shell_drop_pattern, i32 0, i32 0), i32 405, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %2 = bitcast %struct._GimpViewable* %1 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %2, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_pattern_get_type() #5
  store i64 %call, i64* %__t, align 8
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool1 = icmp ne %struct._GTypeInstance* %3, null
  br i1 %tobool1, label %if.else, label %if.then.2

if.then.2:                                        ; preds = %do.end
  store i32 0, i32* %__r, align 4
  br label %if.end.9

if.else:                                          ; preds = %do.end
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool3 = icmp ne %struct._GTypeClass* %5, null
  br i1 %tobool3, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.else
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %7, i32 0, i32 0
  %8 = load i64, i64* %g_type, align 8
  %9 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %8, %9
  br i1 %cmp, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.8

if.else.6:                                        ; preds = %land.lhs.true, %if.else
  %10 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %11 = load i64, i64* %__t, align 8
  %call7 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %10, i64 %11) #6
  store i32 %call7, i32* %__r, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.6, %if.then.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %if.then.2
  %12 = load i32, i32* %__r, align 4
  store i32 %12, i32* %tmp
  %13 = load i32, i32* %tmp
  %tobool10 = icmp ne i32 %13, 0
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.end.9
  %14 = load i8*, i8** %data.addr, align 8
  %15 = bitcast i8* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_display_shell_get_type() #5
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpDisplayShell*
  %17 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %18 = bitcast %struct._GimpViewable* %17 to %struct._GTypeInstance*
  %call14 = call i64 @gimp_pattern_get_type() #5
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call14)
  %19 = bitcast %struct._GTypeInstance* %call15 to %struct._GimpPattern*
  call void @gimp_display_shell_dnd_bucket_fill(%struct._GimpDisplayShell* %16, i32 2, %struct._GimpRGB* null, %struct._GimpPattern* %19)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.11, %if.end.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_buffer_get_type() #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_drop_buffer(%struct._GtkWidget* %widget, i32 %drop_x, i32 %drop_y, %struct._GimpViewable* %viewable, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %drop_x.addr = alloca i32, align 4
  %drop_y.addr = alloca i32, align 4
  %viewable.addr = alloca %struct._GimpViewable*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  %buffer = alloca %struct._GimpBuffer*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %drop_x, i32* %drop_x.addr, align 4
  store i32 %drop_y, i32* %drop_y.addr, align 4
  store %struct._GimpViewable* %viewable, %struct._GimpViewable** %viewable.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_drop_buffer, i32 0, i32 0), i32 440, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 16
  %9 = load i32, i32* %busy, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  br label %return

if.end.6:                                         ; preds = %do.end
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool7 = icmp ne %struct._GimpImage* %10, null
  br i1 %tobool7, label %if.end.16, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display9 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 1
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display9, align 8
  %gimp10 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %14 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %15 = bitcast %struct._GimpViewable* %14 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_buffer_get_type() #5
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call11)
  %16 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpBuffer*
  %call13 = call %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp* %13, %struct._GimpImage* null, %struct._GimpBuffer* %16)
  store %struct._GimpImage* %call13, %struct._GimpImage** %image, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp14 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %17, i32 0, i32 1
  %18 = load %struct._Gimp*, %struct._Gimp** %gimp14, align 8
  %19 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call15 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %18, %struct._GimpImage* %19, i32 0, double 1.000000e+00)
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %21 = bitcast %struct._GimpImage* %20 to i8*
  call void @g_object_unref(i8* %21)
  br label %return

if.end.16:                                        ; preds = %if.end.6
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %22)
  store %struct._GimpDrawable* %call17, %struct._GimpDrawable** %drawable, align 8
  %23 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool18 = icmp ne %struct._GimpDrawable* %23, null
  br i1 %tobool18, label %if.then.19, label %if.end.42

if.then.19:                                       ; preds = %if.end.16
  %24 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %25 = bitcast %struct._GimpDrawable* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_viewable_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpViewable*
  %call22 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %26)
  %tobool23 = icmp ne %struct._GimpContainer* %call22, null
  br i1 %tobool23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.then.19
  %27 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %27, i32 0, i32 1
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display25, align 8
  %gimp26 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %28, i32 0, i32 1
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display27 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %30, i32 0, i32 1
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display27, align 8
  %32 = bitcast %struct._GimpDisplay* %31 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0)) #7
  call void @gimp_message_literal(%struct._Gimp* %29, %struct._GObject* %33, i32 2, i8* %call29)
  br label %return

if.end.30:                                        ; preds = %if.then.19
  %34 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %35 = bitcast %struct._GimpDrawable* %34 to %struct._GTypeInstance*
  %call31 = call i64 @gimp_item_get_type() #5
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 %call31)
  %36 = bitcast %struct._GTypeInstance* %call32 to %struct._GimpItem*
  %call33 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %36)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.then.35, label %if.end.41

if.then.35:                                       ; preds = %if.end.30
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display36 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %37, i32 0, i32 1
  %38 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display36, align 8
  %gimp37 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %38, i32 0, i32 1
  %39 = load %struct._Gimp*, %struct._Gimp** %gimp37, align 8
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display38 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %40, i32 0, i32 1
  %41 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display38, align 8
  %42 = bitcast %struct._GimpDisplay* %41 to %struct._GTypeInstance*
  %call39 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call39 to %struct._GObject*
  %call40 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0)) #7
  call void @gimp_message_literal(%struct._Gimp* %39, %struct._GObject* %43, i32 2, i8* %call40)
  br label %return

if.end.41:                                        ; preds = %if.end.30
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end.16
  %44 = load %struct._GimpViewable*, %struct._GimpViewable** %viewable.addr, align 8
  %45 = bitcast %struct._GimpViewable* %44 to %struct._GTypeInstance*
  %call43 = call i64 @gimp_buffer_get_type() #5
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %45, i64 %call43)
  %46 = bitcast %struct._GTypeInstance* %call44 to %struct._GimpBuffer*
  store %struct._GimpBuffer* %46, %struct._GimpBuffer** %buffer, align 8
  %47 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %47, i32* %x, i32* %y, i32* %width, i32* %height)
  %48 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %49 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %50 = load %struct._GimpBuffer*, %struct._GimpBuffer** %buffer, align 8
  %51 = load i32, i32* %x, align 4
  %52 = load i32, i32* %y, align 4
  %53 = load i32, i32* %width, align 4
  %54 = load i32, i32* %height, align 4
  %call45 = call %struct._GimpLayer* @gimp_edit_paste(%struct._GimpImage* %48, %struct._GimpDrawable* %49, %struct._GimpBuffer* %50, i32 0, i32 %51, i32 %52, i32 %53, i32 %54)
  %55 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %56 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_display_shell_dnd_flush(%struct._GimpDisplayShell* %55, %struct._GimpImage* %56)
  br label %return

return:                                           ; preds = %if.end.42, %if.then.35, %if.then.24, %if.then.8, %if.then.5
  ret void
}

declare void @gimp_dnd_color_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GimpRGB*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_drop_color(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpRGB* %color, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %0, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_display_shell_drop_color, i32 0, i32 0), i32 420, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %data.addr, align 8
  %2 = bitcast i8* %1 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 %call)
  %3 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  %4 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void @gimp_display_shell_dnd_bucket_fill(%struct._GimpDisplayShell* %3, i32 0, %struct._GimpRGB* %4, %struct._GimpPattern* null)
  ret void
}

declare void @gimp_dnd_component_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GimpImage*, i32, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_drop_component(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GimpImage* %image, i32 %component, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %image.addr = alloca %struct._GimpImage*, align 8
  %component.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %dest_image = alloca %struct._GimpImage*, align 8
  %channel = alloca %struct._GimpChannel*, align 8
  %new_item = alloca %struct._GimpItem*, align 8
  %desc = alloca i8*, align 8
  %new_layer = alloca %struct._GimpLayer*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %component, i32* %component.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call2, %struct._GimpImage** %dest_image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_display_shell_drop_component, i32 0, i32 0), i32 618, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 16
  %9 = load i32, i32* %busy, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  br label %if.end.33

if.end.6:                                         ; preds = %do.end
  %10 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %tobool7 = icmp ne %struct._GimpImage* %10, null
  br i1 %tobool7, label %if.end.13, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %gimp9 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = load i32, i32* %component.addr, align 4
  %call10 = call %struct._GimpImage* @gimp_image_new_from_component(%struct._Gimp* %12, %struct._GimpImage* %13, i32 %14)
  store %struct._GimpImage* %call10, %struct._GimpImage** %dest_image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %gimp11 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp11, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %call12 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %16, %struct._GimpImage* %17, i32 0, double 1.000000e+00)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %19 = bitcast %struct._GimpImage* %18 to i8*
  call void @g_object_unref(i8* %19)
  br label %if.end.33

if.end.13:                                        ; preds = %if.end.6
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %21 = load i32, i32* %component.addr, align 4
  %call14 = call %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage* %20, i32 %21, i8* null, %struct._GimpRGB* null)
  store %struct._GimpChannel* %call14, %struct._GimpChannel** %channel, align 8
  %22 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %23 = bitcast %struct._GimpChannel* %22 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_item_get_type() #5
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call15)
  %24 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpItem*
  %25 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %call17 = call i64 @gimp_layer_get_type() #5
  %call18 = call %struct._GimpItem* @gimp_item_convert(%struct._GimpItem* %24, %struct._GimpImage* %25, i64 %call17)
  store %struct._GimpItem* %call18, %struct._GimpItem** %new_item, align 8
  %26 = load %struct._GimpChannel*, %struct._GimpChannel** %channel, align 8
  %27 = bitcast %struct._GimpChannel* %26 to i8*
  call void @g_object_unref(i8* %27)
  %28 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %tobool19 = icmp ne %struct._GimpItem* %28, null
  br i1 %tobool19, label %if.then.20, label %if.end.33

if.then.20:                                       ; preds = %if.end.13
  %29 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  %30 = bitcast %struct._GimpItem* %29 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_layer_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 %call21)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpLayer*
  store %struct._GimpLayer* %31, %struct._GimpLayer** %new_layer, align 8
  %call23 = call i64 @gimp_channel_type_get_type() #5
  %32 = load i32, i32* %component.addr, align 4
  %call24 = call i32 @gimp_enum_get_value(i64 %call23, i32 %32, i8** null, i8** null, i8** %desc, i8** null)
  %33 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %34 = bitcast %struct._GimpLayer* %33 to %struct._GTypeInstance*
  %call25 = call i64 @gimp_object_get_type() #5
  %call26 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call25)
  %35 = bitcast %struct._GTypeInstance* %call26 to %struct._GimpObject*
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0)) #7
  %36 = load i8*, i8** %desc, align 8
  %call28 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call27, i8* %36)
  call void @gimp_object_take_name(%struct._GimpObject* %35, i8* %call28)
  %37 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #7
  %call30 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %37, i32 29, i8* %call29)
  %38 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %40 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  call void @gimp_display_shell_dnd_position_item(%struct._GimpDisplayShell* %38, %struct._GimpImage* %39, %struct._GimpItem* %40)
  %41 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %42 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %call31 = call i32 @gimp_image_add_layer(%struct._GimpImage* %41, %struct._GimpLayer* %42, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 1)
  %43 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  %call32 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %43)
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %45 = load %struct._GimpImage*, %struct._GimpImage** %dest_image, align 8
  call void @gimp_display_shell_dnd_flush(%struct._GimpDisplayShell* %44, %struct._GimpImage* %45)
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.5, %if.then.8, %if.then.20, %if.end.13
  ret void
}

declare void @gimp_dnd_uri_list_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GList*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_drop_uri_list(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GList* %uri_list, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %uri_list.addr = alloca %struct._GList*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %context = alloca %struct._GimpContext*, align 8
  %list = alloca %struct._GList*, align 8
  %open_as_layers = alloca i32, align 4
  %uri = alloca i8*, align 8
  %status = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %warn = alloca i32, align 4
  %new_layers = alloca %struct._GList*, align 8
  %x25 = alloca i32, align 4
  %y26 = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  %new_image = alloca %struct._GimpImage*, align 8
  %filename = alloca i8*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GList* %uri_list, %struct._GList** %uri_list.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.76

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display2 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 1
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display2, align 8
  %call3 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %6)
  store %struct._GimpImage* %call3, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display4 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %7, i32 0, i32 1
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display4, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %8, i32 0, i32 1
  %9 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call5 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %9)
  store %struct._GimpContext* %call5, %struct._GimpContext** %context, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %10, 4
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_display_shell_drop_uri_list, i32 0, i32 0), i32 511, i8* null)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %cmp = icmp ne %struct._GimpImage* %11, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %open_as_layers, align 4
  %12 = load %struct._GList*, %struct._GList** %uri_list.addr, align 8
  store %struct._GList* %12, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool9 = icmp ne %struct._GList* %13, null
  br i1 %tobool9, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %data10 = getelementptr inbounds %struct._GList, %struct._GList* %14, i32 0, i32 0
  %15 = load i8*, i8** %data10, align 8
  store i8* %15, i8** %uri, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  store i32 0, i32* %warn, align 4
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display11 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %16, i32 0, i32 1
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display11, align 8
  %tobool12 = icmp ne %struct._GimpDisplay* %17, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %for.body
  br label %if.end.76

if.end.14:                                        ; preds = %for.body
  %18 = load i32, i32* %open_as_layers, align 4
  %tobool15 = icmp ne i32 %18, 0
  br i1 %tobool15, label %if.then.16, label %if.else.33

if.then.16:                                       ; preds = %if.end.14
  %19 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display17 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %19, i32 0, i32 1
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display17, align 8
  %gimp18 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %20, i32 0, i32 1
  %21 = load %struct._Gimp*, %struct._Gimp** %gimp18, align 8
  %22 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display19 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %23, i32 0, i32 1
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display19, align 8
  %25 = bitcast %struct._GimpDisplay* %24 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_progress_interface_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %25, i64 %call20)
  %26 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpProgress*
  %27 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %28 = load i8*, i8** %uri, align 8
  %call22 = call %struct._GList* @file_open_layers(%struct._Gimp* %21, %struct._GimpContext* %22, %struct._GimpProgress* %26, %struct._GimpImage* %27, i32 0, i8* %28, i32 0, %struct._GimpPlugInProcedure* null, i32* %status, %struct._GError** %error)
  store %struct._GList* %call22, %struct._GList** %new_layers, align 8
  %29 = load %struct._GList*, %struct._GList** %new_layers, align 8
  %tobool23 = icmp ne %struct._GList* %29, null
  br i1 %tobool23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then.16
  %30 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %30, i32* %x25, i32* %y26, i32* %width, i32* %height)
  %31 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %32 = load %struct._GList*, %struct._GList** %new_layers, align 8
  %33 = load i32, i32* %x25, align 4
  %34 = load i32, i32* %y26, align 4
  %35 = load i32, i32* %width, align 4
  %36 = load i32, i32* %height, align 4
  %call27 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)) #7
  call void @gimp_image_add_layers(%struct._GimpImage* %31, %struct._GList* %32, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 %33, i32 %34, i32 %35, i32 %36, i8* %call27)
  %37 = load %struct._GList*, %struct._GList** %new_layers, align 8
  call void @g_list_free(%struct._GList* %37)
  br label %if.end.32

if.else:                                          ; preds = %if.then.16
  %38 = load i32, i32* %status, align 4
  %cmp28 = icmp ne i32 %38, 4
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.else
  store i32 1, i32* %warn, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %if.else
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.24
  br label %if.end.60

if.else.33:                                       ; preds = %if.end.14
  %39 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display34 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %39, i32 0, i32 1
  %40 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display34, align 8
  %call35 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %40)
  %tobool36 = icmp ne %struct._GimpImage* %call35, null
  br i1 %tobool36, label %if.then.37, label %if.else.46

if.then.37:                                       ; preds = %if.else.33
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display38 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %41, i32 0, i32 1
  %42 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display38, align 8
  %gimp39 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %42, i32 0, i32 1
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp39, align 8
  %44 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %45 = load i8*, i8** %uri, align 8
  %call40 = call %struct._GimpImage* @file_open_with_display(%struct._Gimp* %43, %struct._GimpContext* %44, %struct._GimpProgress* null, i8* %45, i32 0, i32* %status, %struct._GError** %error)
  store %struct._GimpImage* %call40, %struct._GimpImage** %new_image, align 8
  %46 = load %struct._GimpImage*, %struct._GimpImage** %new_image, align 8
  %tobool41 = icmp ne %struct._GimpImage* %46, null
  br i1 %tobool41, label %if.end.45, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.37
  %47 = load i32, i32* %status, align 4
  %cmp42 = icmp ne i32 %47, 4
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true
  store i32 1, i32* %warn, align 4
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %land.lhs.true, %if.then.37
  br label %if.end.59

if.else.46:                                       ; preds = %if.else.33
  %48 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display47 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %48, i32 0, i32 1
  %49 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display47, align 8
  %gimp48 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %49, i32 0, i32 1
  %50 = load %struct._Gimp*, %struct._Gimp** %gimp48, align 8
  %51 = load %struct._GimpContext*, %struct._GimpContext** %context, align 8
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display49 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %52, i32 0, i32 1
  %53 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display49, align 8
  %54 = bitcast %struct._GimpDisplay* %53 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_progress_interface_get_type() #5
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %54, i64 %call50)
  %55 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpProgress*
  %56 = load i8*, i8** %uri, align 8
  %call52 = call %struct._GimpImage* @file_open_with_display(%struct._Gimp* %50, %struct._GimpContext* %51, %struct._GimpProgress* %55, i8* %56, i32 0, i32* %status, %struct._GError** %error)
  store %struct._GimpImage* %call52, %struct._GimpImage** %image, align 8
  %57 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool53 = icmp ne %struct._GimpImage* %57, null
  br i1 %tobool53, label %if.end.58, label %land.lhs.true.54

land.lhs.true.54:                                 ; preds = %if.else.46
  %58 = load i32, i32* %status, align 4
  %cmp55 = icmp ne i32 %58, 4
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.54
  store i32 1, i32* %warn, align 4
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %land.lhs.true.54, %if.else.46
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.end.45
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.end.32
  %59 = load i32, i32* %warn, align 4
  %tobool61 = icmp ne i32 %59, 0
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.72

land.lhs.true.62:                                 ; preds = %if.end.60
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display63 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %60, i32 0, i32 1
  %61 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display63, align 8
  %tobool64 = icmp ne %struct._GimpDisplay* %61, null
  br i1 %tobool64, label %if.then.65, label %if.end.72

if.then.65:                                       ; preds = %land.lhs.true.62
  %62 = load i8*, i8** %uri, align 8
  %call66 = call i8* @file_utils_uri_display_name(i8* %62)
  store i8* %call66, i8** %filename, align 8
  %63 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display67 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %63, i32 0, i32 1
  %64 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display67, align 8
  %gimp68 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %64, i32 0, i32 1
  %65 = load %struct._Gimp*, %struct._Gimp** %gimp68, align 8
  %66 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display69 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %66, i32 0, i32 1
  %67 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display69, align 8
  %68 = bitcast %struct._GimpDisplay* %67 to %struct._GTypeInstance*
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 80)
  %69 = bitcast %struct._GTypeInstance* %call70 to %struct._GObject*
  %call71 = call i8* @gettext(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0)) #7
  %70 = load i8*, i8** %filename, align 8
  %71 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %71, i32 0, i32 2
  %72 = load i8*, i8** %message, align 8
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %65, %struct._GObject* %69, i32 2, i8* %call71, i8* %70, i8* %72)
  call void @g_clear_error(%struct._GError** %error)
  %73 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %73)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.65, %land.lhs.true.62, %if.end.60
  br label %for.inc

for.inc:                                          ; preds = %if.end.72
  %74 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool73 = icmp ne %struct._GList* %74, null
  br i1 %tobool73, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %75 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %75, i32 0, i32 1
  %76 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %76, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %77 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool74 = icmp ne %struct._GimpImage* %77, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.end
  %78 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %79 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_display_shell_dnd_flush(%struct._GimpDisplayShell* %78, %struct._GimpImage* %79)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then, %if.then.13, %if.then.75, %for.end
  ret void
}

declare void @gimp_dnd_svg_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, i8*, i64, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_drop_svg(%struct._GtkWidget* %widget, i32 %x, i32 %y, i8* %svg_data, i64 %svg_data_len, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %svg_data.addr = alloca i8*, align 8
  %svg_data_len.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i8* %svg_data, i8** %svg_data.addr, align 8
  store i64 %svg_data_len, i64* %svg_data_len.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_display_shell_drop_svg, i32 0, i32 0), i32 312, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 16
  %9 = load i32, i32* %busy, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  br label %if.end.17

if.end.6:                                         ; preds = %do.end
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool7 = icmp ne %struct._GimpImage* %10, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.17

if.end.9:                                         ; preds = %if.end.6
  %11 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %12 = load i8*, i8** %svg_data.addr, align 8
  %13 = load i64, i64* %svg_data_len.addr, align 8
  %call10 = call i32 @gimp_vectors_import_buffer(%struct._GimpImage* %11, i8* %12, i64 %13, i32 1, i32 0, %struct._GimpVectors* inttoptr (i64 1 to %struct._GimpVectors*), i32 -1, %struct._GList** null, %struct._GError** %error)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  %14 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display13 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %14, i32 0, i32 1
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display13, align 8
  %gimp14 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp14, align 8
  %17 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display15 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %17, i32 0, i32 1
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display15, align 8
  %19 = bitcast %struct._GimpDisplay* %18 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  %21 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %21, i32 0, i32 2
  %22 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %16, %struct._GObject* %20, i32 2, i8* %22)
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.17

if.else:                                          ; preds = %if.end.9
  %23 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %24 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_display_shell_dnd_flush(%struct._GimpDisplayShell* %23, %struct._GimpImage* %24)
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.5, %if.then.8, %if.else, %if.then.12
  ret void
}

declare void @gimp_dnd_pixbuf_dest_add(%struct._GtkWidget*, void (%struct._GtkWidget*, i32, i32, %struct._GdkPixbuf*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_drop_pixbuf(%struct._GtkWidget* %widget, i32 %x, i32 %y, %struct._GdkPixbuf* %pixbuf, i8* %data) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %pixbuf.addr = alloca %struct._GdkPixbuf*, align 8
  %data.addr = alloca i8*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_layer = alloca %struct._GimpLayer*, align 8
  %image_type = alloca i32, align 4
  %new_item = alloca %struct._GimpItem*, align 8
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store %struct._GdkPixbuf* %pixbuf, %struct._GdkPixbuf** %pixbuf.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_shell_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %2, %struct._GimpDisplayShell** %shell, align 8
  %3 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %3, i32 0, i32 1
  %4 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %4)
  store %struct._GimpImage* %call2, %struct._GimpImage** %image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %5 = load i32, i32* @gimp_log_flags, align 4
  %and = and i32 %5, 4
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  call void (i32, i8*, i32, i8*, ...) @gimp_log(i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_display_shell_drop_pixbuf, i32 0, i32 0), i32 674, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %6 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display3 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %6, i32 0, i32 1
  %7 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display3, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %7, i32 0, i32 1
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %8, i32 0, i32 16
  %9 = load i32, i32* %busy, align 4
  %tobool4 = icmp ne i32 %9, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.end
  br label %if.end.59

if.end.6:                                         ; preds = %do.end
  %10 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool7 = icmp ne %struct._GimpImage* %10, null
  br i1 %tobool7, label %if.end.15, label %if.then.8

if.then.8:                                        ; preds = %if.end.6
  %11 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %display9 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %11, i32 0, i32 1
  %12 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display9, align 8
  %gimp10 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %12, i32 0, i32 1
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %14 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call11 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)) #7
  %call12 = call %struct._GimpImage* @gimp_image_new_from_pixbuf(%struct._Gimp* %13, %struct._GdkPixbuf* %14, i8* %call11)
  store %struct._GimpImage* %call12, %struct._GimpImage** %image, align 8
  %15 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %gimp13 = getelementptr inbounds %struct._GimpImage, %struct._GimpImage* %15, i32 0, i32 1
  %16 = load %struct._Gimp*, %struct._Gimp** %gimp13, align 8
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call14 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %16, %struct._GimpImage* %17, i32 0, double 1.000000e+00)
  %18 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %19 = bitcast %struct._GimpImage* %18 to i8*
  call void @g_object_unref(i8* %19)
  br label %if.end.59

if.end.15:                                        ; preds = %if.end.6
  %20 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call16 = call i32 @gimp_image_base_type(%struct._GimpImage* %20)
  %cmp = icmp eq i32 %call16, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.15
  br label %cond.end.24

cond.false:                                       ; preds = %if.end.15
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call17 = call i32 @gimp_image_base_type(%struct._GimpImage* %21)
  %cmp18 = icmp eq i32 %call17, 1
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.false
  br label %cond.end

cond.false.20:                                    ; preds = %cond.false
  %22 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call21 = call i32 @gimp_image_base_type(%struct._GimpImage* %22)
  %cmp22 = icmp eq i32 %call21, 2
  %cond = select i1 %cmp22, i32 4, i32 -1
  br label %cond.end

cond.end:                                         ; preds = %cond.false.20, %cond.true.19
  %cond23 = phi i32 [ 2, %cond.true.19 ], [ %cond, %cond.false.20 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end, %cond.true
  %cond25 = phi i32 [ 0, %cond.true ], [ %cond23, %cond.end ]
  store i32 %cond25, i32* %image_type, align 4
  %23 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call26 = call i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf* %23)
  %cmp27 = icmp eq i32 %call26, 2
  br i1 %cmp27, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end.24
  %24 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %call28 = call i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf* %24)
  %cmp29 = icmp eq i32 %call28, 4
  br i1 %cmp29, label %if.then.30, label %if.end.48

if.then.30:                                       ; preds = %lor.lhs.false, %cond.end.24
  %25 = load i32, i32* %image_type, align 4
  %cmp31 = icmp eq i32 %25, 0
  br i1 %cmp31, label %cond.true.34, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.then.30
  %26 = load i32, i32* %image_type, align 4
  %cmp33 = icmp eq i32 %26, 1
  br i1 %cmp33, label %cond.true.34, label %cond.false.35

cond.true.34:                                     ; preds = %lor.lhs.false.32, %if.then.30
  br label %cond.end.46

cond.false.35:                                    ; preds = %lor.lhs.false.32
  %27 = load i32, i32* %image_type, align 4
  %cmp36 = icmp eq i32 %27, 2
  br i1 %cmp36, label %cond.true.39, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %cond.false.35
  %28 = load i32, i32* %image_type, align 4
  %cmp38 = icmp eq i32 %28, 3
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %lor.lhs.false.37, %cond.false.35
  br label %cond.end.44

cond.false.40:                                    ; preds = %lor.lhs.false.37
  %29 = load i32, i32* %image_type, align 4
  %cmp41 = icmp eq i32 %29, 4
  br i1 %cmp41, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false.40
  %30 = load i32, i32* %image_type, align 4
  %cmp42 = icmp eq i32 %30, 5
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false.40
  %31 = phi i1 [ true, %cond.false.40 ], [ %cmp42, %lor.rhs ]
  %cond43 = select i1 %31, i32 5, i32 -1
  br label %cond.end.44

cond.end.44:                                      ; preds = %lor.end, %cond.true.39
  %cond45 = phi i32 [ 3, %cond.true.39 ], [ %cond43, %lor.end ]
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.end.44, %cond.true.34
  %cond47 = phi i32 [ 1, %cond.true.34 ], [ %cond45, %cond.end.44 ]
  store i32 %cond47, i32* %image_type, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %cond.end.46, %lor.lhs.false
  %32 = load %struct._GdkPixbuf*, %struct._GdkPixbuf** %pixbuf.addr, align 8
  %33 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %34 = load i32, i32* %image_type, align 4
  %call49 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0)) #7
  %call50 = call %struct._GimpLayer* @gimp_layer_new_from_pixbuf(%struct._GdkPixbuf* %32, %struct._GimpImage* %33, i32 %34, i8* %call49, double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call50, %struct._GimpLayer** %new_layer, align 8
  %35 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %tobool51 = icmp ne %struct._GimpLayer* %35, null
  br i1 %tobool51, label %if.then.52, label %if.end.59

if.then.52:                                       ; preds = %if.end.48
  %36 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %37 = bitcast %struct._GimpLayer* %36 to %struct._GTypeInstance*
  %call53 = call i64 @gimp_item_get_type() #5
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 %call53)
  %38 = bitcast %struct._GTypeInstance* %call54 to %struct._GimpItem*
  store %struct._GimpItem* %38, %struct._GimpItem** %new_item, align 8
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call55 = call i8* @gettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)) #7
  %call56 = call i32 @gimp_image_undo_group_start(%struct._GimpImage* %39, i32 29, i8* %call55)
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %42 = load %struct._GimpItem*, %struct._GimpItem** %new_item, align 8
  call void @gimp_display_shell_dnd_position_item(%struct._GimpDisplayShell* %40, %struct._GimpImage* %41, %struct._GimpItem* %42)
  %43 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %44 = load %struct._GimpLayer*, %struct._GimpLayer** %new_layer, align 8
  %call57 = call i32 @gimp_image_add_layer(%struct._GimpImage* %43, %struct._GimpLayer* %44, %struct._GimpLayer* inttoptr (i64 1 to %struct._GimpLayer*), i32 -1, i32 1)
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call58 = call i32 @gimp_image_undo_group_end(%struct._GimpImage* %45)
  %46 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_display_shell_dnd_flush(%struct._GimpDisplayShell* %46, %struct._GimpImage* %47)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.5, %if.then.8, %if.then.52, %if.end.48
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

declare %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay*) #3

declare void @gimp_log(i32, i8*, i32, i8*, ...) #3

declare %struct._GimpImage* @gimp_image_new_from_drawable(%struct._Gimp*, %struct._GimpDrawable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_drawable_get_type() #1

declare %struct._GimpObject* @gimp_create_display(%struct._Gimp*, %struct._GimpImage*, i32, double) #3

declare void @g_object_unref(i8*) #3

declare %struct._GimpItem* @gimp_item_convert(%struct._GimpItem*, %struct._GimpImage*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_item_get_type() #1

declare i32 @gimp_image_undo_group_start(%struct._GimpImage*, i32, i8*) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_dnd_position_item(%struct._GimpDisplayShell* %shell, %struct._GimpImage* %image, %struct._GimpItem* %item) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %item.addr = alloca %struct._GimpItem*, align 8
  %item_width = alloca i32, align 4
  %item_height = alloca i32, align 4
  %off_x = alloca i32, align 4
  %off_y = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %width = alloca i32, align 4
  %height = alloca i32, align 4
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpItem* %item, %struct._GimpItem** %item.addr, align 8
  %0 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call = call i32 @gimp_item_get_width(%struct._GimpItem* %0)
  store i32 %call, i32* %item_width, align 4
  %1 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call1 = call i32 @gimp_item_get_height(%struct._GimpItem* %1)
  store i32 %call1, i32* %item_height, align 4
  %2 = load i32, i32* %item_width, align 4
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call2 = call i32 @gimp_image_get_width(%struct._GimpImage* %3)
  %cmp = icmp sge i32 %2, %call2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %item_height, align 4
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call3 = call i32 @gimp_image_get_height(%struct._GimpImage* %5)
  %cmp4 = icmp sge i32 %4, %call3
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call5 = call i32 @gimp_image_get_width(%struct._GimpImage* %6)
  %7 = load i32, i32* %item_width, align 4
  %sub = sub nsw i32 %call5, %7
  %div = sdiv i32 %sub, 2
  store i32 %div, i32* %off_x, align 4
  %8 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call6 = call i32 @gimp_image_get_height(%struct._GimpImage* %8)
  %9 = load i32, i32* %item_height, align 4
  %sub7 = sub nsw i32 %call6, %9
  %div8 = sdiv i32 %sub7, 2
  store i32 %div8, i32* %off_y, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell* %10, i32* %x, i32* %y, i32* %width, i32* %height)
  %11 = load i32, i32* %x, align 4
  %12 = load i32, i32* %width, align 4
  %13 = load i32, i32* %item_width, align 4
  %sub9 = sub nsw i32 %12, %13
  %div10 = sdiv i32 %sub9, 2
  %add = add nsw i32 %11, %div10
  store i32 %add, i32* %off_x, align 4
  %14 = load i32, i32* %y, align 4
  %15 = load i32, i32* %height, align 4
  %16 = load i32, i32* %item_height, align 4
  %sub11 = sub nsw i32 %15, %16
  %div12 = sdiv i32 %sub11, 2
  %add13 = add nsw i32 %14, %div12
  store i32 %add13, i32* %off_y, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %18 = load i32, i32* %off_x, align 4
  %19 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call14 = call i32 @gimp_item_get_offset_x(%struct._GimpItem* %19)
  %sub15 = sub nsw i32 %18, %call14
  %20 = load i32, i32* %off_y, align 4
  %21 = load %struct._GimpItem*, %struct._GimpItem** %item.addr, align 8
  %call16 = call i32 @gimp_item_get_offset_y(%struct._GimpItem* %21)
  %sub17 = sub nsw i32 %20, %call16
  call void @gimp_item_translate(%struct._GimpItem* %17, i32 %sub15, i32 %sub17, i32 0)
  ret void
}

declare void @gimp_item_set_visible(%struct._GimpItem*, i32, i32) #3

declare void @gimp_item_set_linked(%struct._GimpItem*, i32, i32) #3

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #3

declare i32 @gimp_image_undo_group_end(%struct._GimpImage*) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_dnd_flush(%struct._GimpDisplayShell* %shell, %struct._GimpImage* %image) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  call void @gimp_display_shell_present(%struct._GimpDisplayShell* %0)
  %1 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_flush(%struct._GimpImage* %1)
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 1
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %4)
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %5, i32 0, i32 1
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %7 = bitcast %struct._GimpDisplay* %6 to i8*
  call void @gimp_context_set_display(%struct._GimpContext* %call, i8* %7)
  ret void
}

declare i32 @gimp_item_get_width(%struct._GimpItem*) #3

declare i32 @gimp_item_get_height(%struct._GimpItem*) #3

declare i32 @gimp_image_get_width(%struct._GimpImage*) #3

declare i32 @gimp_image_get_height(%struct._GimpImage*) #3

declare void @gimp_display_shell_untransform_viewport(%struct._GimpDisplayShell*, i32*, i32*, i32*, i32*) #3

declare void @gimp_item_translate(%struct._GimpItem*, i32, i32, i32) #3

declare i32 @gimp_item_get_offset_x(%struct._GimpItem*) #3

declare i32 @gimp_item_get_offset_y(%struct._GimpItem*) #3

declare void @gimp_display_shell_present(%struct._GimpDisplayShell*) #3

declare void @gimp_image_flush(%struct._GimpImage*) #3

declare void @gimp_context_set_display(%struct._GimpContext*, i8*) #3

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #3

declare i32 @gimp_image_add_vectors(%struct._GimpImage*, %struct._GimpVectors*, %struct._GimpVectors*, i32, i32) #3

declare i32 @gimp_vectors_import_buffer(%struct._GimpImage*, i8*, i64, i32, i32, %struct._GimpVectors*, i32, %struct._GList**, %struct._GError**) #3

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @g_clear_error(%struct._GError**) #3

; Function Attrs: nounwind uwtable
define internal void @gimp_display_shell_dnd_bucket_fill(%struct._GimpDisplayShell* %shell, i32 %fill_mode, %struct._GimpRGB* %color, %struct._GimpPattern* %pattern) #0 {
entry:
  %shell.addr = alloca %struct._GimpDisplayShell*, align 8
  %fill_mode.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  %pattern.addr = alloca %struct._GimpPattern*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %drawable = alloca %struct._GimpDrawable*, align 8
  store %struct._GimpDisplayShell* %shell, %struct._GimpDisplayShell** %shell.addr, align 8
  store i32 %fill_mode, i32* %fill_mode.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  store %struct._GimpPattern* %pattern, %struct._GimpPattern** %pattern.addr, align 8
  %0 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %0, i32 0, i32 1
  %1 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call = call %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %1)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display1 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %2, i32 0, i32 1
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display1, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %3, i32 0, i32 1
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %busy = getelementptr inbounds %struct._Gimp, %struct._Gimp* %4, i32 0, i32 16
  %5 = load i32, i32* %busy, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %tobool2 = icmp ne %struct._GimpImage* %6, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call5 = call %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage* %7)
  store %struct._GimpDrawable* %call5, %struct._GimpDrawable** %drawable, align 8
  %8 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %tobool6 = icmp ne %struct._GimpDrawable* %8, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %9 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %10 = bitcast %struct._GimpDrawable* %9 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_viewable_get_type() #5
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call9)
  %11 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpViewable*
  %call11 = call %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable* %11)
  %tobool12 = icmp ne %struct._GimpContainer* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.end.19

if.then.13:                                       ; preds = %if.end.8
  %12 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display14 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %12, i32 0, i32 1
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display14, align 8
  %gimp15 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp15, align 8
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display16 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %15, i32 0, i32 1
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display16, align 8
  %17 = bitcast %struct._GimpDisplay* %16 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  %call18 = call i8* @gettext(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0)) #7
  call void @gimp_message_literal(%struct._Gimp* %14, %struct._GObject* %18, i32 2, i8* %call18)
  br label %return

if.end.19:                                        ; preds = %if.end.8
  %19 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %20 = bitcast %struct._GimpDrawable* %19 to %struct._GTypeInstance*
  %call20 = call i64 @gimp_item_get_type() #5
  %call21 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call20)
  %21 = bitcast %struct._GTypeInstance* %call21 to %struct._GimpItem*
  %call22 = call i32 @gimp_item_is_content_locked(%struct._GimpItem* %21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.30

if.then.24:                                       ; preds = %if.end.19
  %22 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display25 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %22, i32 0, i32 1
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display25, align 8
  %gimp26 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %23, i32 0, i32 1
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp26, align 8
  %25 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %display27 = getelementptr inbounds %struct._GimpDisplayShell, %struct._GimpDisplayShell* %25, i32 0, i32 1
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display27, align 8
  %27 = bitcast %struct._GimpDisplay* %26 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  %call29 = call i8* @gettext(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0)) #7
  call void @gimp_message_literal(%struct._Gimp* %24, %struct._GObject* %28, i32 2, i8* %call29)
  br label %return

if.end.30:                                        ; preds = %if.end.19
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %tobool31 = icmp ne %struct._GimpRGB* %29, null
  br i1 %tobool31, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.30
  %30 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %31 = bitcast %struct._GimpDrawable* %30 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_item_get_type() #5
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call32)
  %32 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpItem*
  %call34 = call i32 @gimp_item_is_text_layer(%struct._GimpItem* %32)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.else

if.then.36:                                       ; preds = %land.lhs.true
  %33 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %34 = bitcast %struct._GimpDrawable* %33 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_text_layer_get_type() #5
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 %call37)
  %35 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpTextLayer*
  %36 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  call void (%struct._GimpTextLayer*, i8*, i8*, ...) @gimp_text_layer_set(%struct._GimpTextLayer* %35, i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), %struct._GimpRGB* %36, i8* null)
  br label %if.end.39

if.else:                                          ; preds = %land.lhs.true, %if.end.30
  %37 = load %struct._GimpDrawable*, %struct._GimpDrawable** %drawable, align 8
  %38 = load i32, i32* %fill_mode.addr, align 4
  %39 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %40 = load %struct._GimpPattern*, %struct._GimpPattern** %pattern.addr, align 8
  call void @gimp_drawable_bucket_fill_full(%struct._GimpDrawable* %37, i32 %38, i32 0, double 1.000000e+00, i32 0, i32 0, i32 0, double 0.000000e+00, i32 0, double 0.000000e+00, double 0.000000e+00, %struct._GimpRGB* %39, %struct._GimpPattern* %40)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else, %if.then.36
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell.addr, align 8
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  call void @gimp_display_shell_dnd_flush(%struct._GimpDisplayShell* %41, %struct._GimpImage* %42)
  br label %return

return:                                           ; preds = %if.end.39, %if.then.24, %if.then.13, %if.then.7, %if.then.3, %if.then
  ret void
}

declare %struct._GimpDrawable* @gimp_image_get_active_drawable(%struct._GimpImage*) #3

declare %struct._GimpContainer* @gimp_viewable_get_children(%struct._GimpViewable*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #1

declare i32 @gimp_item_is_content_locked(%struct._GimpItem*) #3

declare i32 @gimp_item_is_text_layer(%struct._GimpItem*) #3

declare void @gimp_text_layer_set(%struct._GimpTextLayer*, i8*, i8*, ...) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_text_layer_get_type() #1

declare void @gimp_drawable_bucket_fill_full(%struct._GimpDrawable*, i32, i32, double, i32, i32, i32, double, i32, double, double, %struct._GimpRGB*, %struct._GimpPattern*) #3

declare %struct._GimpImage* @gimp_image_new_from_buffer(%struct._Gimp*, %struct._GimpImage*, %struct._GimpBuffer*) #3

declare %struct._GimpLayer* @gimp_edit_paste(%struct._GimpImage*, %struct._GimpDrawable*, %struct._GimpBuffer*, i32, i32, i32, i32, i32) #3

declare %struct._GList* @file_open_layers(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpImage*, i32, i8*, i32, %struct._GimpPlugInProcedure*, i32*, %struct._GError**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #1

declare void @gimp_image_add_layers(%struct._GimpImage*, %struct._GList*, %struct._GimpLayer*, i32, i32, i32, i32, i32, i8*) #3

declare void @g_list_free(%struct._GList*) #3

declare %struct._GimpImage* @file_open_with_display(%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, i8*, i32, i32*, %struct._GError**) #3

declare i8* @file_utils_uri_display_name(i8*) #3

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #3

declare void @g_free(i8*) #3

declare %struct._GimpImage* @gimp_image_new_from_component(%struct._Gimp*, %struct._GimpImage*, i32) #3

declare %struct._GimpChannel* @gimp_channel_new_from_component(%struct._GimpImage*, i32, i8*, %struct._GimpRGB*) #3

declare i32 @gimp_enum_get_value(i64, i32, i8**, i8**, i8**, i8**) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_channel_type_get_type() #1

declare void @gimp_object_take_name(%struct._GimpObject*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #1

declare noalias i8* @g_strdup_printf(i8*, ...) #3

declare %struct._GimpImage* @gimp_image_new_from_pixbuf(%struct._Gimp*, %struct._GdkPixbuf*, i8*) #3

declare i32 @gimp_image_base_type(%struct._GimpImage*) #3

declare i32 @gdk_pixbuf_get_n_channels(%struct._GdkPixbuf*) #3

declare %struct._GimpLayer* @gimp_layer_new_from_pixbuf(%struct._GdkPixbuf*, %struct._GimpImage*, i32, i8*, double, i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
