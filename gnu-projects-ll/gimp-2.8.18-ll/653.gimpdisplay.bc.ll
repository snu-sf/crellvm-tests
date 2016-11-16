; ModuleID = './app/display/gimpdisplay.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDisplayClass = type { %struct._GimpObjectClass }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GimpObjectPrivate = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
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
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GimpProgressInterface = type { %struct._GTypeInterface, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, void (%struct._GimpProgress*, i8*)*, void (%struct._GimpProgress*, double)*, double (%struct._GimpProgress*)*, void (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*)*, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)*, void (%struct._GimpProgress*)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpMenuFactory = type opaque
%struct._GimpUIManager = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque
%struct._GimpDisplayPrivate = type { i32, %struct._GimpImage*, i32, %struct._GtkWidget*, %struct._GSList*, i64 }
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
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
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
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpStatusbar = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpTool = type { %struct._GimpObject, %struct._GimpToolInfo*, i32, %struct._GimpToolControl*, %struct._GimpDisplay*, %struct._GimpDrawable*, %struct._GimpDisplay*, i32, i32, i32, i32, i32, %struct._GimpCoords, i32, %struct._GList*, %struct._GimpCanvasItem*, %struct._GimpDisplay* }
%struct._GimpToolControl = type opaque
%struct._GimpCoords = type { double, double, double, double, double, double, double, double }
%struct._GimpArea = type { i32, i32, i32, i32 }

@gimp_display_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"GimpDisplay\00", align 1
@gimp_display_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpProgressInterface*)* @gimp_display_progress_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Gimp-Display\00", align 1
@__func__.gimp_display_new = private unnamed_addr constant [17 x i8] c"gimp_display_new\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"image == NULL || GIMP_IS_IMAGE (image)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"cancel\00", align 1
@__func__.gimp_display_delete = private unnamed_addr constant [20 x i8] c"gimp_display_delete\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"GIMP_IS_DISPLAY (display)\00", align 1
@__func__.gimp_display_close = private unnamed_addr constant [19 x i8] c"gimp_display_close\00", align 1
@__func__.gimp_display_get_ID = private unnamed_addr constant [20 x i8] c"gimp_display_get_ID\00", align 1
@__func__.gimp_display_get_by_ID = private unnamed_addr constant [23 x i8] c"gimp_display_get_by_ID\00", align 1
@__func__.gimp_display_get_action_name = private unnamed_addr constant [29 x i8] c"gimp_display_get_action_name\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"windows-display-%04d\00", align 1
@__func__.gimp_display_get_gimp = private unnamed_addr constant [22 x i8] c"gimp_display_get_gimp\00", align 1
@__func__.gimp_display_get_image = private unnamed_addr constant [23 x i8] c"gimp_display_get_image\00", align 1
@__func__.gimp_display_set_image = private unnamed_addr constant [23 x i8] c"gimp_display_set_image\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@__func__.gimp_display_get_instance = private unnamed_addr constant [26 x i8] c"gimp_display_get_instance\00", align 1
@__func__.gimp_display_get_shell = private unnamed_addr constant [23 x i8] c"gimp_display_get_shell\00", align 1
@__func__.gimp_display_empty = private unnamed_addr constant [19 x i8] c"gimp_display_empty\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"GIMP_IS_IMAGE (private->image)\00", align 1
@__func__.gimp_display_fill = private unnamed_addr constant [18 x i8] c"gimp_display_fill\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"GIMP_IS_IMAGE (image)\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"private->image == NULL\00", align 1
@__func__.gimp_display_update_area = private unnamed_addr constant [25 x i8] c"gimp_display_update_area\00", align 1
@__func__.gimp_display_flush = private unnamed_addr constant [19 x i8] c"gimp_display_flush\00", align 1
@__func__.gimp_display_flush_now = private unnamed_addr constant [23 x i8] c"gimp_display_flush_now\00", align 1
@gimp_display_parent_class = internal global i8* null, align 8
@GimpDisplay_private_offset = internal global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"gimpdisplay.c\00", align 1
@__func__.gimp_display_set_property = private unnamed_addr constant [26 x i8] c"gimp_display_set_property\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"property\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_display_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_display_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_display_get_type.g_define_type_id__volatile to i8*))
  %tobool2 = icmp ne i32 %call, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %tobool2, %land.rhs ]
  %land.ext = zext i1 %3 to i32
  store i32 %land.ext, i32* %tmp
  %4 = load i32, i32* %tmp
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %call5 = call i64 @gimp_object_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_display_class_intern_init to void (i8*, i8*)*), i32 48, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDisplay*)* @gimp_display_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_progress_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_display_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_display_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_display_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_display_parent_class, align 8
  %1 = load i32, i32* @GimpDisplay_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDisplay_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDisplayClass*
  call void @gimp_display_class_init(%struct._GimpDisplayClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_init(%struct._GimpDisplay* %display) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_progress_iface_init(%struct._GimpProgressInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpProgressInterface*, align 8
  store %struct._GimpProgressInterface* %iface, %struct._GimpProgressInterface** %iface.addr, align 8
  %0 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %start = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %0, i32 0, i32 1
  store %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)* @gimp_display_progress_start, %struct._GimpProgress* (%struct._GimpProgress*, i8*, i32)** %start, align 8
  %1 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %end = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %1, i32 0, i32 2
  store void (%struct._GimpProgress*)* @gimp_display_progress_end, void (%struct._GimpProgress*)** %end, align 8
  %2 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %is_active = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %2, i32 0, i32 3
  store i32 (%struct._GimpProgress*)* @gimp_display_progress_is_active, i32 (%struct._GimpProgress*)** %is_active, align 8
  %3 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_text = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %3, i32 0, i32 4
  store void (%struct._GimpProgress*, i8*)* @gimp_display_progress_set_text, void (%struct._GimpProgress*, i8*)** %set_text, align 8
  %4 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %set_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %4, i32 0, i32 5
  store void (%struct._GimpProgress*, double)* @gimp_display_progress_set_value, void (%struct._GimpProgress*, double)** %set_value, align 8
  %5 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_value = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %5, i32 0, i32 6
  store double (%struct._GimpProgress*)* @gimp_display_progress_get_value, double (%struct._GimpProgress*)** %get_value, align 8
  %6 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %pulse = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %6, i32 0, i32 7
  store void (%struct._GimpProgress*)* @gimp_display_progress_pulse, void (%struct._GimpProgress*)** %pulse, align 8
  %7 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %get_window_id = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %7, i32 0, i32 8
  store i32 (%struct._GimpProgress*)* @gimp_display_progress_get_window_id, i32 (%struct._GimpProgress*)** %get_window_id, align 8
  %8 = load %struct._GimpProgressInterface*, %struct._GimpProgressInterface** %iface.addr, align 8
  %message = getelementptr inbounds %struct._GimpProgressInterface, %struct._GimpProgressInterface* %8, i32 0, i32 9
  store i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)* @gimp_display_progress_message, i32 (%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*)** %message, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_progress_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDisplay* @gimp_display_new(%struct._Gimp* %gimp, %struct._GimpImage* %image, i32 %unit, double %scale, %struct._GimpMenuFactory* %menu_factory, %struct._GimpUIManager* %popup_manager, %struct._GimpDialogFactory* %dialog_factory) #3 {
entry:
  %retval = alloca %struct._GimpDisplay*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %unit.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %menu_factory.addr = alloca %struct._GimpMenuFactory*, align 8
  %popup_manager.addr = alloca %struct._GimpUIManager*, align 8
  %dialog_factory.addr = alloca %struct._GimpDialogFactory*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  %active_display = alloca %struct._GimpDisplay*, align 8
  %shell66 = alloca %struct._GimpDisplayShell*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store double %scale, double* %scale.addr, align 8
  store %struct._GimpMenuFactory* %menu_factory, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  store %struct._GimpUIManager* %popup_manager, %struct._GimpUIManager** %popup_manager.addr, align 8
  store %struct._GimpDialogFactory* %dialog_factory, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  store %struct._GimpImageWindow* null, %struct._GimpImageWindow** %window, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_display_new, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #7
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_display_new, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %retval
  br label %return

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %no_interface = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 7
  %28 = load i32, i32* %no_interface, align 4
  %tobool40 = icmp ne i32 %28, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end.39
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %retval
  br label %return

if.end.42:                                        ; preds = %do.end.39
  %call43 = call i64 @gimp_display_get_type() #7
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call44 = call i8* (i64, i8*, ...) @g_object_new(i64 %call43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), %struct._Gimp* %29, i8* null)
  %30 = bitcast i8* %call44 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %30, %struct._GimpDisplay** %display, align 8
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %32 = bitcast %struct._GimpDisplay* %31 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_display_get_type() #7
  %call46 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %32, i64 %call45)
  %33 = bitcast i8* %call46 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %33, %struct._GimpDisplayPrivate** %private, align 8
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool47 = icmp ne %struct._GimpImage* %34, null
  br i1 %tobool47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.42
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %36 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_display_set_image(%struct._GimpDisplay* %35, %struct._GimpImage* %36)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.end.42
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %37, i32 0, i32 2
  %38 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config, align 8
  %39 = bitcast %struct._GimpDisplayConfig* %38 to %struct._GTypeInstance*
  %call50 = call i64 @gimp_gui_config_get_type() #7
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 %call50)
  %40 = bitcast %struct._GTypeInstance* %call51 to %struct._GimpGuiConfig*
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %40, i32 0, i32 32
  %41 = load i32, i32* %single_window_mode, align 4
  %tobool52 = icmp ne i32 %41, 0
  br i1 %tobool52, label %if.then.53, label %if.end.70

if.then.53:                                       ; preds = %if.end.49
  %42 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call55 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %42)
  %call56 = call i8* @gimp_context_get_display(%struct._GimpContext* %call55)
  %43 = bitcast i8* %call56 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %43, %struct._GimpDisplay** %active_display, align 8
  %44 = load %struct._GimpDisplay*, %struct._GimpDisplay** %active_display, align 8
  %tobool57 = icmp ne %struct._GimpDisplay* %44, null
  br i1 %tobool57, label %if.end.62, label %if.then.58

if.then.58:                                       ; preds = %if.then.53
  %45 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %45, i32 0, i32 31
  %46 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %call59 = call %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer* %46)
  %47 = bitcast %struct._GimpObject* %call59 to %struct._GTypeInstance*
  %call60 = call i64 @gimp_display_get_type() #7
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call60)
  %48 = bitcast %struct._GTypeInstance* %call61 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %48, %struct._GimpDisplay** %active_display, align 8
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.58, %if.then.53
  %49 = load %struct._GimpDisplay*, %struct._GimpDisplay** %active_display, align 8
  %tobool63 = icmp ne %struct._GimpDisplay* %49, null
  br i1 %tobool63, label %if.then.64, label %if.end.69

if.then.64:                                       ; preds = %if.end.62
  %50 = load %struct._GimpDisplay*, %struct._GimpDisplay** %active_display, align 8
  %call67 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %50)
  store %struct._GimpDisplayShell* %call67, %struct._GimpDisplayShell** %shell66, align 8
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell66, align 8
  %call68 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %51)
  store %struct._GimpImageWindow* %call68, %struct._GimpImageWindow** %window, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.64, %if.end.62
  br label %if.end.70

if.end.70:                                        ; preds = %if.end.69, %if.end.49
  %52 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool71 = icmp ne %struct._GimpImageWindow* %52, null
  br i1 %tobool71, label %if.end.75, label %if.then.72

if.then.72:                                       ; preds = %if.end.70
  %53 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %54 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image73 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %54, i32 0, i32 1
  %55 = load %struct._GimpImage*, %struct._GimpImage** %image73, align 8
  %56 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** %menu_factory.addr, align 8
  %57 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  %call74 = call %struct._GimpImageWindow* @gimp_image_window_new(%struct._Gimp* %53, %struct._GimpImage* %55, %struct._GimpMenuFactory* %56, %struct._GimpDialogFactory* %57)
  store %struct._GimpImageWindow* %call74, %struct._GimpImageWindow** %window, align 8
  br label %if.end.75

if.end.75:                                        ; preds = %if.then.72, %if.end.70
  %58 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %59 = load i32, i32* %unit.addr, align 4
  %60 = load double, double* %scale.addr, align 8
  %61 = load %struct._GimpUIManager*, %struct._GimpUIManager** %popup_manager.addr, align 8
  %call76 = call %struct._GtkWidget* @gimp_display_shell_new(%struct._GimpDisplay* %58, i32 %59, double %60, %struct._GimpUIManager* %61)
  %62 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell77 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %62, i32 0, i32 3
  store %struct._GtkWidget* %call76, %struct._GtkWidget** %shell77, align 8
  %63 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call78 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %63)
  store %struct._GimpDisplayShell* %call78, %struct._GimpDisplayShell** %shell, align 8
  %64 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %65 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_image_window_add_shell(%struct._GimpImageWindow* %64, %struct._GimpDisplayShell* %65)
  %66 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_present(%struct._GimpDisplayShell* %66)
  %67 = load %struct._GimpDialogFactory*, %struct._GimpDialogFactory** %dialog_factory.addr, align 8
  call void @gimp_dialog_factory_show_with_display(%struct._GimpDialogFactory* %67)
  %68 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call79 = call %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell* %68)
  %69 = bitcast %struct._GimpStatusbar* %call79 to i8*
  %70 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %71 = bitcast %struct._GimpDisplay* %70 to i8*
  %call80 = call i64 @g_signal_connect_data(i8* %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), void ()* bitcast (void (%struct._GimpProgress*, %struct._GimpDisplay*)* @gimp_display_progress_canceled to void ()*), i8* %71, void (i8*, %struct._GClosure*)* null, i32 0)
  %72 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %displays81 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %72, i32 0, i32 31
  %73 = load %struct._GimpContainer*, %struct._GimpContainer** %displays81, align 8
  %74 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %75 = bitcast %struct._GimpDisplay* %74 to %struct._GTypeInstance*
  %call82 = call i64 @gimp_object_get_type() #7
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 %call82)
  %76 = bitcast %struct._GTypeInstance* %call83 to %struct._GimpObject*
  %call84 = call i32 @gimp_container_add(%struct._GimpContainer* %73, %struct._GimpObject* %76)
  %77 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  store %struct._GimpDisplay* %77, %struct._GimpDisplay** %retval
  br label %return

return:                                           ; preds = %if.end.75, %if.then.41, %if.else.37, %if.else.9
  %78 = load %struct._GimpDisplay*, %struct._GimpDisplay** %retval
  ret %struct._GimpDisplay* %78
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

declare i8* @g_object_new(i64, i8*, ...) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_set_image(%struct._GimpDisplay* %display, %struct._GimpImage* %image) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %old_image = alloca %struct._GimpImage*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst14 = alloca %struct._GTypeInstance*, align 8
  %__t16 = alloca i64, align 8
  %__r19 = alloca i32, align 4
  %tmp34 = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %old_image, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_display_set_image, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.71

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp12 = icmp eq %struct._GimpImage* %13, null
  br i1 %cmp12, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %15 = bitcast %struct._GimpImage* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst14, align 8
  %call17 = call i64 @gimp_image_get_type() #7
  store i64 %call17, i64* %__t16, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %tobool20 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool20, label %if.else.22, label %if.then.21

if.then.21:                                       ; preds = %lor.lhs.false
  store i32 0, i32* %__r19, align 4
  br label %if.end.33

if.else.22:                                       ; preds = %lor.lhs.false
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %tobool24 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool24, label %land.lhs.true.25, label %if.else.30

land.lhs.true.25:                                 ; preds = %if.else.22
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %g_class26 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class26, align 8
  %g_type27 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type27, align 8
  %22 = load i64, i64* %__t16, align 8
  %cmp28 = icmp eq i64 %21, %22
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %land.lhs.true.25
  store i32 1, i32* %__r19, align 4
  br label %if.end.32

if.else.30:                                       ; preds = %land.lhs.true.25, %if.else.22
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst14, align 8
  %24 = load i64, i64* %__t16, align 8
  %call31 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #8
  store i32 %call31, i32* %__r19, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.30, %if.then.29
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %if.then.21
  %25 = load i32, i32* %__r19, align 4
  store i32 %25, i32* %tmp34
  %26 = load i32, i32* %tmp34
  %tobool35 = icmp ne i32 %26, 0
  br i1 %tobool35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %if.end.33, %do.body.11
  br label %if.end.38

if.else.37:                                       ; preds = %if.end.33
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_display_set_image, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.71

if.end.38:                                        ; preds = %if.then.36
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %28 = bitcast %struct._GimpDisplay* %27 to %struct._GTypeInstance*
  %call40 = call i64 @gimp_display_get_type() #7
  %call41 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %28, i64 %call40)
  %29 = bitcast i8* %call41 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %29, %struct._GimpDisplayPrivate** %private, align 8
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call42 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %30)
  store %struct._GimpDisplayShell* %call42, %struct._GimpDisplayShell** %shell, align 8
  %31 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image43 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %31, i32 0, i32 1
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image43, align 8
  %tobool44 = icmp ne %struct._GimpImage* %32, null
  br i1 %tobool44, label %if.then.45, label %if.end.48

if.then.45:                                       ; preds = %do.end.39
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %33, i32 0, i32 1
  %34 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %35 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @tool_manager_control_active(%struct._Gimp* %34, i32 2, %struct._GimpDisplay* %35)
  %36 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_disconnect(%struct._GimpDisplayShell* %36)
  %37 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_display_disconnect(%struct._GimpDisplay* %37)
  %38 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image46 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %38, i32 0, i32 1
  %39 = load %struct._GimpImage*, %struct._GimpImage** %image46, align 8
  call void @gimp_image_dec_display_count(%struct._GimpImage* %39)
  %40 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image47 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %40, i32 0, i32 1
  %41 = load %struct._GimpImage*, %struct._GimpImage** %image47, align 8
  store %struct._GimpImage* %41, %struct._GimpImage** %old_image, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.45, %do.end.39
  %42 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %43 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image49 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %43, i32 0, i32 1
  store %struct._GimpImage* %42, %struct._GimpImage** %image49, align 8
  %44 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool50 = icmp ne %struct._GimpImage* %44, null
  br i1 %tobool50, label %if.then.51, label %if.end.57

if.then.51:                                       ; preds = %if.end.48
  %45 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %46 = bitcast %struct._GimpImage* %45 to i8*
  %call52 = call i8* @g_object_ref(i8* %46)
  %47 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %call53 = call i32 @gimp_image_get_instance_count(%struct._GimpImage* %47)
  %48 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %instance = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %48, i32 0, i32 2
  store i32 %call53, i32* %instance, align 4
  %49 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_inc_instance_count(%struct._GimpImage* %49)
  %50 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_image_inc_display_count(%struct._GimpImage* %50)
  %51 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_display_connect(%struct._GimpDisplay* %51)
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool54 = icmp ne %struct._GimpDisplayShell* %52, null
  br i1 %tobool54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.51
  %53 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_connect(%struct._GimpDisplayShell* %53)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.then.51
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.end.48
  %54 = load %struct._GimpImage*, %struct._GimpImage** %old_image, align 8
  %tobool58 = icmp ne %struct._GimpImage* %54, null
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.57
  %55 = load %struct._GimpImage*, %struct._GimpImage** %old_image, align 8
  %56 = bitcast %struct._GimpImage* %55 to i8*
  call void @g_object_unref(i8* %56)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.57
  %57 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %tobool61 = icmp ne %struct._GimpDisplayShell* %57, null
  br i1 %tobool61, label %if.then.62, label %if.end.67

if.then.62:                                       ; preds = %if.end.60
  %58 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %tobool63 = icmp ne %struct._GimpImage* %58, null
  br i1 %tobool63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.then.62
  %59 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_reconnect(%struct._GimpDisplayShell* %59)
  br label %if.end.66

if.else.65:                                       ; preds = %if.then.62
  %60 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_icon_update(%struct._GimpDisplayShell* %60)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65, %if.then.64
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.60
  %61 = load %struct._GimpImage*, %struct._GimpImage** %old_image, align 8
  %62 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %cmp68 = icmp ne %struct._GimpImage* %61, %62
  br i1 %cmp68, label %if.then.69, label %if.end.71

if.then.69:                                       ; preds = %if.end.67
  %63 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %64 = bitcast %struct._GimpDisplay* %63 to %struct._GTypeInstance*
  %call70 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %64, i64 80)
  %65 = bitcast %struct._GTypeInstance* %call70 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.9, %if.else.37, %if.then.69, %if.end.67
  ret void
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #2

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare %struct._GimpObject* @gimp_container_get_first_child(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca %struct._GimpDisplayShell*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_display_get_shell, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_display_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %15, %struct._GimpDisplayPrivate** %private, align 8
  %16 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %16, i32 0, i32 3
  %17 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %18 = bitcast %struct._GtkWidget* %17 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_display_shell_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call13)
  %19 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpDisplayShell*
  store %struct._GimpDisplayShell* %19, %struct._GimpDisplayShell** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %20 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %retval
  ret %struct._GimpDisplayShell* %20
}

declare %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell*) #1

declare %struct._GimpImageWindow* @gimp_image_window_new(%struct._Gimp*, %struct._GimpImage*, %struct._GimpMenuFactory*, %struct._GimpDialogFactory*) #1

declare %struct._GtkWidget* @gimp_display_shell_new(%struct._GimpDisplay*, i32, double, %struct._GimpUIManager*) #1

declare void @gimp_image_window_add_shell(%struct._GimpImageWindow*, %struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_present(%struct._GimpDisplayShell*) #1

declare void @gimp_dialog_factory_show_with_display(%struct._GimpDialogFactory*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

declare %struct._GimpStatusbar* @gimp_display_shell_get_statusbar(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_progress_canceled(%struct._GimpProgress* %progress, %struct._GimpDisplay* %display) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_progress_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpProgress*
  call void @gimp_progress_cancel(%struct._GimpProgress* %2)
  ret void
}

declare i32 @gimp_container_add(%struct._GimpContainer*, %struct._GimpObject*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_delete(%struct._GimpDisplay* %display) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %active_tool = alloca %struct._GimpTool*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %shell28 = alloca %struct._GimpDisplayShell*, align 8
  %window = alloca %struct._GimpImageWindow*, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_display_delete, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_display_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %15, %struct._GimpDisplayPrivate** %private, align 8
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 31
  %18 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %20 = bitcast %struct._GimpDisplay* %19 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_object_get_type() #7
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 %call13)
  %21 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpObject*
  %call15 = call i32 @gimp_container_remove(%struct._GimpContainer* %18, %struct._GimpObject* %21)
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_display_set_image(%struct._GimpDisplay* %22, %struct._GimpImage* null)
  %23 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp16 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %23, i32 0, i32 1
  %24 = load %struct._Gimp*, %struct._Gimp** %gimp16, align 8
  %call17 = call %struct._GimpTool* @tool_manager_get_active(%struct._Gimp* %24)
  store %struct._GimpTool* %call17, %struct._GimpTool** %active_tool, align 8
  %25 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %tobool18 = icmp ne %struct._GimpTool* %25, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.end.23

land.lhs.true.19:                                 ; preds = %do.end
  %26 = load %struct._GimpTool*, %struct._GimpTool** %active_tool, align 8
  %focus_display = getelementptr inbounds %struct._GimpTool, %struct._GimpTool* %26, i32 0, i32 6
  %27 = load %struct._GimpDisplay*, %struct._GimpDisplay** %focus_display, align 8
  %28 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %cmp20 = icmp eq %struct._GimpDisplay* %27, %28
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true.19
  %29 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp22 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %29, i32 0, i32 1
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp22, align 8
  call void @tool_manager_focus_display_active(%struct._Gimp* %30, %struct._GimpDisplay* null)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true.19, %do.end
  %31 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %update_areas = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %31, i32 0, i32 4
  %32 = load %struct._GSList*, %struct._GSList** %update_areas, align 8
  call void @gimp_area_list_free(%struct._GSList* %32)
  %33 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %update_areas24 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %33, i32 0, i32 4
  store %struct._GSList* null, %struct._GSList** %update_areas24, align 8
  %34 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %34, i32 0, i32 3
  %35 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %tobool25 = icmp ne %struct._GtkWidget* %35, null
  br i1 %tobool25, label %if.then.26, label %if.end.45

if.then.26:                                       ; preds = %if.end.23
  %36 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call29 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %36)
  store %struct._GimpDisplayShell* %call29, %struct._GimpDisplayShell** %shell28, align 8
  %37 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell28, align 8
  %call31 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %37)
  store %struct._GimpImageWindow* %call31, %struct._GimpImageWindow** %window, align 8
  %38 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell32 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %38, i32 0, i32 3
  store %struct._GtkWidget* null, %struct._GtkWidget** %shell32, align 8
  %39 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %tobool33 = icmp ne %struct._GimpImageWindow* %39, null
  br i1 %tobool33, label %if.then.34, label %if.else.43

if.then.34:                                       ; preds = %if.then.26
  %40 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %call35 = call i32 @gimp_image_window_get_n_shells(%struct._GimpImageWindow* %40)
  %cmp36 = icmp sgt i32 %call35, 1
  br i1 %cmp36, label %if.then.37, label %if.else.41

if.then.37:                                       ; preds = %if.then.34
  %41 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell28, align 8
  %42 = bitcast %struct._GimpDisplayShell* %41 to i8*
  %call38 = call i8* @g_object_ref(i8* %42)
  %43 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  %44 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell28, align 8
  call void @gimp_image_window_remove_shell(%struct._GimpImageWindow* %43, %struct._GimpDisplayShell* %44)
  %45 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell28, align 8
  %46 = bitcast %struct._GimpDisplayShell* %45 to %struct._GTypeInstance*
  %call39 = call i64 @gtk_widget_get_type() #7
  %call40 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 %call39)
  %47 = bitcast %struct._GTypeInstance* %call40 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %47)
  %48 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell28, align 8
  %49 = bitcast %struct._GimpDisplayShell* %48 to i8*
  call void @g_object_unref(i8* %49)
  br label %if.end.42

if.else.41:                                       ; preds = %if.then.34
  %50 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %window, align 8
  call void @gimp_image_window_destroy(%struct._GimpImageWindow* %50)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.then.37
  br label %if.end.44

if.else.43:                                       ; preds = %if.then.26
  %51 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell28, align 8
  %52 = bitcast %struct._GimpDisplayShell* %51 to i8*
  call void @g_object_unref(i8* %52)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.43, %if.end.42
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.23
  %53 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %54 = bitcast %struct._GimpDisplay* %53 to i8*
  call void @g_object_unref(i8* %54)
  br label %return

return:                                           ; preds = %if.end.45, %if.else.9
  ret void
}

declare i32 @gimp_container_remove(%struct._GimpContainer*, %struct._GimpObject*) #1

declare %struct._GimpTool* @tool_manager_get_active(%struct._Gimp*) #1

declare void @tool_manager_focus_display_active(%struct._Gimp*, %struct._GimpDisplay*) #1

declare void @gimp_area_list_free(%struct._GSList*) #1

declare i32 @gimp_image_window_get_n_shells(%struct._GimpImageWindow*) #1

declare i8* @g_object_ref(i8*) #1

declare void @gimp_image_window_remove_shell(%struct._GimpImageWindow*, %struct._GimpDisplayShell*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare void @g_object_unref(i8*) #1

declare void @gimp_image_window_destroy(%struct._GimpImageWindow*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_close(%struct._GimpDisplay* %display) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_display_close, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %displays = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 31
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %displays, align 8
  %call11 = call i32 @gimp_container_get_n_children(%struct._GimpContainer* %15)
  %cmp12 = icmp sgt i32 %call11, 1
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.end
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_display_delete(%struct._GimpDisplay* %16)
  br label %if.end.15

if.else.14:                                       ; preds = %do.end
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_display_empty(%struct._GimpDisplay* %17)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.else.14, %if.then.13
  ret void
}

declare i32 @gimp_container_get_n_children(%struct._GimpContainer*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_empty(%struct._GimpDisplay* %display) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst15 = alloca %struct._GTypeInstance*, align 8
  %__t17 = alloca i64, align 8
  %__r20 = alloca i32, align 4
  %tmp35 = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_display_empty, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_display_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %15, %struct._GimpDisplayPrivate** %private, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %16 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %16, i32 0, i32 1
  %17 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %18 = bitcast %struct._GimpImage* %17 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %18, %struct._GTypeInstance** %__inst15, align 8
  %call18 = call i64 @gimp_image_get_type() #7
  store i64 %call18, i64* %__t17, align 8
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %tobool21 = icmp ne %struct._GTypeInstance* %19, null
  br i1 %tobool21, label %if.else.23, label %if.then.22

if.then.22:                                       ; preds = %do.body.13
  store i32 0, i32* %__r20, align 4
  br label %if.end.34

if.else.23:                                       ; preds = %do.body.13
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %tobool25 = icmp ne %struct._GTypeClass* %21, null
  br i1 %tobool25, label %land.lhs.true.26, label %if.else.31

land.lhs.true.26:                                 ; preds = %if.else.23
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %23, i32 0, i32 0
  %24 = load i64, i64* %g_type28, align 8
  %25 = load i64, i64* %__t17, align 8
  %cmp29 = icmp eq i64 %24, %25
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %__r20, align 4
  br label %if.end.33

if.else.31:                                       ; preds = %land.lhs.true.26, %if.else.23
  %26 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst15, align 8
  %27 = load i64, i64* %__t17, align 8
  %call32 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %26, i64 %27) #8
  store i32 %call32, i32* %__r20, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.31, %if.then.30
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.then.22
  %28 = load i32, i32* %__r20, align 4
  store i32 %28, i32* %tmp35
  %29 = load i32, i32* %tmp35
  %tobool36 = icmp ne i32 %29, 0
  br i1 %tobool36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %if.end.34
  br label %if.end.39

if.else.38:                                       ; preds = %if.end.34
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_display_empty, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end.39:                                        ; preds = %if.then.37
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %30 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_display_set_image(%struct._GimpDisplay* %30, %struct._GimpImage* null)
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call41 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %31)
  call void @gimp_display_shell_empty(%struct._GimpDisplayShell* %call41)
  br label %return

return:                                           ; preds = %do.end.40, %if.else.38, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_display_get_ID(%struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_display_get_ID, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_display_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %15, %struct._GimpDisplayPrivate** %private, align 8
  %16 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %ID = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %16, i32 0, i32 0
  %17 = load i32, i32* %ID, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define %struct._GimpDisplay* @gimp_display_get_by_ID(%struct._Gimp* %gimp, i32 %ID) #3 {
entry:
  %retval = alloca %struct._GimpDisplay*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %ID.addr = alloca i32, align 4
  %list = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %ID, i32* %ID.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_display_get_by_ID, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %13)
  store %struct._GList* %call11, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %14 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool12 = icmp ne %struct._GList* %14, null
  br i1 %tobool12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 0
  %16 = load i8*, i8** %data, align 8
  %17 = bitcast i8* %16 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %17, %struct._GimpDisplay** %display, align 8
  %18 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call14 = call i32 @gimp_display_get_ID(%struct._GimpDisplay* %18)
  %19 = load i32, i32* %ID.addr, align 4
  %cmp15 = icmp eq i32 %call14, %19
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %for.body
  %20 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  store %struct._GimpDisplay* %20, %struct._GimpDisplay** %retval
  br label %return

if.end.17:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %21 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool18 = icmp ne %struct._GList* %21, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %22 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %22, i32 0, i32 1
  %23 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %23, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.16, %if.else.9
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %retval
  ret %struct._GimpDisplay* %24
}

declare %struct._GList* @gimp_get_display_iter(%struct._Gimp*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_display_get_action_name(%struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i8*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_display_get_action_name, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call11 = call i32 @gimp_display_get_ID(%struct._GimpDisplay* %13)
  %call12 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i32 %call11)
  store i8* %call12, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %14 = load i8*, i8** %retval
  ret i8* %14
}

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct._Gimp* @gimp_display_get_gimp(%struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca %struct._Gimp*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_display_get_gimp, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store %struct._Gimp* null, %struct._Gimp** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %13, i32 0, i32 1
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  store %struct._Gimp* %14, %struct._Gimp** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %15 = load %struct._Gimp*, %struct._Gimp** %retval
  ret %struct._Gimp* %15
}

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_display_get_image(%struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca %struct._GimpImage*, align 8
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_display_get_image, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store %struct._GimpImage* null, %struct._GimpImage** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_display_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDisplayPrivate*
  %image = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %15, i32 0, i32 1
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  store %struct._GimpImage* %16, %struct._GimpImage** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load %struct._GimpImage*, %struct._GimpImage** %retval
  ret %struct._GimpImage* %17
}

declare void @tool_manager_control_active(%struct._Gimp*, i32, %struct._GimpDisplay*) #1

declare void @gimp_display_shell_disconnect(%struct._GimpDisplayShell*) #1

declare void @gimp_display_disconnect(%struct._GimpDisplay*) #1

declare void @gimp_image_dec_display_count(%struct._GimpImage*) #1

declare i32 @gimp_image_get_instance_count(%struct._GimpImage*) #1

declare void @gimp_image_inc_instance_count(%struct._GimpImage*) #1

declare void @gimp_image_inc_display_count(%struct._GimpImage*) #1

declare void @gimp_display_connect(%struct._GimpDisplay*) #1

declare void @gimp_display_shell_connect(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_reconnect(%struct._GimpDisplayShell*) #1

declare void @gimp_display_shell_icon_update(%struct._GimpDisplayShell*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_display_get_instance(%struct._GimpDisplay* %display) #3 {
entry:
  %retval = alloca i32, align 4
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_display_get_instance, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_display_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %15, %struct._GimpDisplayPrivate** %private, align 8
  %16 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %instance = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %16, i32 0, i32 2
  %17 = load i32, i32* %instance, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind readnone
declare i64 @gimp_display_shell_get_type() #2

declare void @gimp_display_shell_empty(%struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_fill(%struct._GimpDisplay* %display, %struct._GimpImage* %image, i32 %unit, double %scale) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %image.addr = alloca %struct._GimpImage*, align 8
  %unit.addr = alloca i32, align 4
  %scale.addr = alloca double, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store %struct._GimpImage* %image, %struct._GimpImage** %image.addr, align 8
  store i32 %unit, i32* %unit.addr, align 4
  store double %scale, double* %scale.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_display_fill, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %14 = bitcast %struct._GimpImage* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_image_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_display_fill, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %26 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %27 = bitcast %struct._GimpDisplay* %26 to %struct._GTypeInstance*
  %call39 = call i64 @gimp_display_get_type() #7
  %call40 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %27, i64 %call39)
  %28 = bitcast i8* %call40 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %28, %struct._GimpDisplayPrivate** %private, align 8
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.38
  %29 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image42 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %29, i32 0, i32 1
  %30 = load %struct._GimpImage*, %struct._GimpImage** %image42, align 8
  %cmp43 = icmp eq %struct._GimpImage* %30, null
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.41
  br label %if.end.46

if.else.45:                                       ; preds = %do.body.41
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_display_fill, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.46:                                        ; preds = %if.then.44
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  %31 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %32 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  call void @gimp_display_set_image(%struct._GimpDisplay* %31, %struct._GimpImage* %32)
  %33 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call48 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %33)
  %34 = load %struct._GimpImage*, %struct._GimpImage** %image.addr, align 8
  %35 = load i32, i32* %unit.addr, align 4
  %36 = load double, double* %scale.addr, align 8
  call void @gimp_display_shell_fill(%struct._GimpDisplayShell* %call48, %struct._GimpImage* %34, i32 %35, double %36)
  br label %return

return:                                           ; preds = %do.end.47, %if.else.45, %if.else.36, %if.else.9
  ret void
}

declare void @gimp_display_shell_fill(%struct._GimpDisplayShell*, %struct._GimpImage*, i32, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_update_area(%struct._GimpDisplay* %display, i32 %now, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %now.addr = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %area = alloca %struct._GimpArea*, align 8
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 %now, i32* %now.addr, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_display_update_area, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.66

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %14 = bitcast %struct._GimpDisplay* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_display_get_type() #7
  %call12 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast i8* %call12 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %15, %struct._GimpDisplayPrivate** %private, align 8
  %16 = load i32, i32* %now.addr, align 4
  %tobool13 = icmp ne i32 %16, 0
  br i1 %tobool13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.end
  %17 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %y.addr, align 4
  %20 = load i32, i32* %w.addr, align 4
  %21 = load i32, i32* %h.addr, align 4
  call void @gimp_display_paint_area(%struct._GimpDisplay* %17, i32 %18, i32 %19, i32 %20, i32 %21)
  br label %if.end.66

if.else.15:                                       ; preds = %do.end
  %22 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %22, i32 0, i32 1
  %23 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call18 = call i32 @gimp_image_get_width(%struct._GimpImage* %23)
  store i32 %call18, i32* %image_width, align 4
  %24 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image20 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %24, i32 0, i32 1
  %25 = load %struct._GimpImage*, %struct._GimpImage** %image20, align 8
  %call21 = call i32 @gimp_image_get_height(%struct._GimpImage* %25)
  store i32 %call21, i32* %image_height, align 4
  %26 = load i32, i32* %x.addr, align 4
  %27 = load i32, i32* %image_width, align 4
  %cmp22 = icmp sgt i32 %26, %27
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.15
  %28 = load i32, i32* %image_width, align 4
  br label %cond.end.26

cond.false:                                       ; preds = %if.else.15
  %29 = load i32, i32* %x.addr, align 4
  %cmp23 = icmp slt i32 %29, 0
  br i1 %cmp23, label %cond.true.24, label %cond.false.25

cond.true.24:                                     ; preds = %cond.false
  br label %cond.end

cond.false.25:                                    ; preds = %cond.false
  %30 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.25, %cond.true.24
  %cond = phi i32 [ 0, %cond.true.24 ], [ %30, %cond.false.25 ]
  br label %cond.end.26

cond.end.26:                                      ; preds = %cond.end, %cond.true
  %cond27 = phi i32 [ %28, %cond.true ], [ %cond, %cond.end ]
  %31 = load i32, i32* %y.addr, align 4
  %32 = load i32, i32* %image_height, align 4
  %cmp28 = icmp sgt i32 %31, %32
  br i1 %cmp28, label %cond.true.29, label %cond.false.30

cond.true.29:                                     ; preds = %cond.end.26
  %33 = load i32, i32* %image_height, align 4
  br label %cond.end.36

cond.false.30:                                    ; preds = %cond.end.26
  %34 = load i32, i32* %y.addr, align 4
  %cmp31 = icmp slt i32 %34, 0
  br i1 %cmp31, label %cond.true.32, label %cond.false.33

cond.true.32:                                     ; preds = %cond.false.30
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.false.30
  %35 = load i32, i32* %y.addr, align 4
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.true.32
  %cond35 = phi i32 [ 0, %cond.true.32 ], [ %35, %cond.false.33 ]
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.end.34, %cond.true.29
  %cond37 = phi i32 [ %33, %cond.true.29 ], [ %cond35, %cond.end.34 ]
  %36 = load i32, i32* %x.addr, align 4
  %37 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %36, %37
  %38 = load i32, i32* %image_width, align 4
  %cmp38 = icmp sgt i32 %add, %38
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.end.36
  %39 = load i32, i32* %image_width, align 4
  br label %cond.end.48

cond.false.40:                                    ; preds = %cond.end.36
  %40 = load i32, i32* %x.addr, align 4
  %41 = load i32, i32* %w.addr, align 4
  %add41 = add nsw i32 %40, %41
  %cmp42 = icmp slt i32 %add41, 0
  br i1 %cmp42, label %cond.true.43, label %cond.false.44

cond.true.43:                                     ; preds = %cond.false.40
  br label %cond.end.46

cond.false.44:                                    ; preds = %cond.false.40
  %42 = load i32, i32* %x.addr, align 4
  %43 = load i32, i32* %w.addr, align 4
  %add45 = add nsw i32 %42, %43
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.44, %cond.true.43
  %cond47 = phi i32 [ 0, %cond.true.43 ], [ %add45, %cond.false.44 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true.39
  %cond49 = phi i32 [ %39, %cond.true.39 ], [ %cond47, %cond.end.46 ]
  %44 = load i32, i32* %y.addr, align 4
  %45 = load i32, i32* %h.addr, align 4
  %add50 = add nsw i32 %44, %45
  %46 = load i32, i32* %image_height, align 4
  %cmp51 = icmp sgt i32 %add50, %46
  br i1 %cmp51, label %cond.true.52, label %cond.false.53

cond.true.52:                                     ; preds = %cond.end.48
  %47 = load i32, i32* %image_height, align 4
  br label %cond.end.61

cond.false.53:                                    ; preds = %cond.end.48
  %48 = load i32, i32* %y.addr, align 4
  %49 = load i32, i32* %h.addr, align 4
  %add54 = add nsw i32 %48, %49
  %cmp55 = icmp slt i32 %add54, 0
  br i1 %cmp55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.false.53
  br label %cond.end.59

cond.false.57:                                    ; preds = %cond.false.53
  %50 = load i32, i32* %y.addr, align 4
  %51 = load i32, i32* %h.addr, align 4
  %add58 = add nsw i32 %50, %51
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.57, %cond.true.56
  %cond60 = phi i32 [ 0, %cond.true.56 ], [ %add58, %cond.false.57 ]
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.end.59, %cond.true.52
  %cond62 = phi i32 [ %47, %cond.true.52 ], [ %cond60, %cond.end.59 ]
  %call63 = call %struct._GimpArea* @gimp_area_new(i32 %cond27, i32 %cond37, i32 %cond49, i32 %cond62)
  store %struct._GimpArea* %call63, %struct._GimpArea** %area, align 8
  %52 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %update_areas = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %52, i32 0, i32 4
  %53 = load %struct._GSList*, %struct._GSList** %update_areas, align 8
  %54 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %call64 = call %struct._GSList* @gimp_area_list_process(%struct._GSList* %53, %struct._GimpArea* %54)
  %55 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %update_areas65 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %55, i32 0, i32 4
  store %struct._GSList* %call64, %struct._GSList** %update_areas65, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.9, %cond.end.61, %if.then.14
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_paint_area(%struct._GimpDisplay* %display, i32 %x, i32 %y, i32 %w, i32 %h) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %w.addr = alloca i32, align 4
  %h.addr = alloca i32, align 4
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image_width = alloca i32, align 4
  %image_height = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %x1_f = alloca double, align 8
  %y1_f = alloca double, align 8
  %x2_f = alloca double, align 8
  %y2_f = alloca double, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  store i32 %w, i32* %w.addr, align 4
  store i32 %h, i32* %h.addr, align 4
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %2, %struct._GimpDisplayPrivate** %private, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %3)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %4 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %4, i32 0, i32 1
  %5 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call i32 @gimp_image_get_width(%struct._GimpImage* %5)
  store i32 %call3, i32* %image_width, align 4
  %6 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image4 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %6, i32 0, i32 1
  %7 = load %struct._GimpImage*, %struct._GimpImage** %image4, align 8
  %call5 = call i32 @gimp_image_get_height(%struct._GimpImage* %7)
  store i32 %call5, i32* %image_height, align 4
  %8 = load i32, i32* %x.addr, align 4
  %9 = load i32, i32* %image_width, align 4
  %cmp = icmp sgt i32 %8, %9
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %10 = load i32, i32* %image_width, align 4
  br label %cond.end.9

cond.false:                                       ; preds = %entry
  %11 = load i32, i32* %x.addr, align 4
  %cmp6 = icmp slt i32 %11, 0
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.false
  br label %cond.end

cond.false.8:                                     ; preds = %cond.false
  %12 = load i32, i32* %x.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.8, %cond.true.7
  %cond = phi i32 [ 0, %cond.true.7 ], [ %12, %cond.false.8 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i32 [ %10, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond10, i32* %x1, align 4
  %13 = load i32, i32* %y.addr, align 4
  %14 = load i32, i32* %image_height, align 4
  %cmp11 = icmp sgt i32 %13, %14
  br i1 %cmp11, label %cond.true.12, label %cond.false.13

cond.true.12:                                     ; preds = %cond.end.9
  %15 = load i32, i32* %image_height, align 4
  br label %cond.end.19

cond.false.13:                                    ; preds = %cond.end.9
  %16 = load i32, i32* %y.addr, align 4
  %cmp14 = icmp slt i32 %16, 0
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.13
  br label %cond.end.17

cond.false.16:                                    ; preds = %cond.false.13
  %17 = load i32, i32* %y.addr, align 4
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.false.16, %cond.true.15
  %cond18 = phi i32 [ 0, %cond.true.15 ], [ %17, %cond.false.16 ]
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.end.17, %cond.true.12
  %cond20 = phi i32 [ %15, %cond.true.12 ], [ %cond18, %cond.end.17 ]
  store i32 %cond20, i32* %y1, align 4
  %18 = load i32, i32* %x.addr, align 4
  %19 = load i32, i32* %w.addr, align 4
  %add = add nsw i32 %18, %19
  %20 = load i32, i32* %image_width, align 4
  %cmp21 = icmp sgt i32 %add, %20
  br i1 %cmp21, label %cond.true.22, label %cond.false.23

cond.true.22:                                     ; preds = %cond.end.19
  %21 = load i32, i32* %image_width, align 4
  br label %cond.end.31

cond.false.23:                                    ; preds = %cond.end.19
  %22 = load i32, i32* %x.addr, align 4
  %23 = load i32, i32* %w.addr, align 4
  %add24 = add nsw i32 %22, %23
  %cmp25 = icmp slt i32 %add24, 0
  br i1 %cmp25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.false.23
  br label %cond.end.29

cond.false.27:                                    ; preds = %cond.false.23
  %24 = load i32, i32* %x.addr, align 4
  %25 = load i32, i32* %w.addr, align 4
  %add28 = add nsw i32 %24, %25
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.26
  %cond30 = phi i32 [ 0, %cond.true.26 ], [ %add28, %cond.false.27 ]
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.end.29, %cond.true.22
  %cond32 = phi i32 [ %21, %cond.true.22 ], [ %cond30, %cond.end.29 ]
  store i32 %cond32, i32* %x2, align 4
  %26 = load i32, i32* %y.addr, align 4
  %27 = load i32, i32* %h.addr, align 4
  %add33 = add nsw i32 %26, %27
  %28 = load i32, i32* %image_height, align 4
  %cmp34 = icmp sgt i32 %add33, %28
  br i1 %cmp34, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %cond.end.31
  %29 = load i32, i32* %image_height, align 4
  br label %cond.end.44

cond.false.36:                                    ; preds = %cond.end.31
  %30 = load i32, i32* %y.addr, align 4
  %31 = load i32, i32* %h.addr, align 4
  %add37 = add nsw i32 %30, %31
  %cmp38 = icmp slt i32 %add37, 0
  br i1 %cmp38, label %cond.true.39, label %cond.false.40

cond.true.39:                                     ; preds = %cond.false.36
  br label %cond.end.42

cond.false.40:                                    ; preds = %cond.false.36
  %32 = load i32, i32* %y.addr, align 4
  %33 = load i32, i32* %h.addr, align 4
  %add41 = add nsw i32 %32, %33
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.40, %cond.true.39
  %cond43 = phi i32 [ 0, %cond.true.39 ], [ %add41, %cond.false.40 ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end.42, %cond.true.35
  %cond45 = phi i32 [ %29, %cond.true.35 ], [ %cond43, %cond.end.42 ]
  store i32 %cond45, i32* %y2, align 4
  %34 = load i32, i32* %x1, align 4
  store i32 %34, i32* %x.addr, align 4
  %35 = load i32, i32* %y1, align 4
  store i32 %35, i32* %y.addr, align 4
  %36 = load i32, i32* %x2, align 4
  %37 = load i32, i32* %x1, align 4
  %sub = sub nsw i32 %36, %37
  store i32 %sub, i32* %w.addr, align 4
  %38 = load i32, i32* %y2, align 4
  %39 = load i32, i32* %y1, align 4
  %sub46 = sub nsw i32 %38, %39
  store i32 %sub46, i32* %h.addr, align 4
  %40 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %41 = load i32, i32* %x.addr, align 4
  %conv = sitofp i32 %41 to double
  %42 = load i32, i32* %y.addr, align 4
  %conv47 = sitofp i32 %42 to double
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %40, double %conv, double %conv47, double* %x1_f, double* %y1_f)
  %43 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %44 = load i32, i32* %x.addr, align 4
  %45 = load i32, i32* %w.addr, align 4
  %add48 = add nsw i32 %44, %45
  %conv49 = sitofp i32 %add48 to double
  %46 = load i32, i32* %y.addr, align 4
  %47 = load i32, i32* %h.addr, align 4
  %add50 = add nsw i32 %46, %47
  %conv51 = sitofp i32 %add50 to double
  call void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell* %43, double %conv49, double %conv51, double* %x2_f, double* %y2_f)
  %48 = load double, double* %x1_f, align 8
  %sub52 = fsub double %48, 5.000000e-01
  %call53 = call double @floor(double %sub52) #7
  %conv54 = fptosi double %call53 to i32
  store i32 %conv54, i32* %x1, align 4
  %49 = load double, double* %y1_f, align 8
  %sub55 = fsub double %49, 5.000000e-01
  %call56 = call double @floor(double %sub55) #7
  %conv57 = fptosi double %call56 to i32
  store i32 %conv57, i32* %y1, align 4
  %50 = load double, double* %x2_f, align 8
  %add58 = fadd double %50, 5.000000e-01
  %call59 = call double @ceil(double %add58) #7
  %conv60 = fptosi double %call59 to i32
  store i32 %conv60, i32* %x2, align 4
  %51 = load double, double* %y2_f, align 8
  %add61 = fadd double %51, 5.000000e-01
  %call62 = call double @ceil(double %add61) #7
  %conv63 = fptosi double %call62 to i32
  store i32 %conv63, i32* %y2, align 4
  %52 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %53 = load i32, i32* %x1, align 4
  %54 = load i32, i32* %y1, align 4
  %55 = load i32, i32* %x2, align 4
  %56 = load i32, i32* %x1, align 4
  %sub64 = sub nsw i32 %55, %56
  %57 = load i32, i32* %y2, align 4
  %58 = load i32, i32* %y1, align 4
  %sub65 = sub nsw i32 %57, %58
  call void @gimp_display_shell_expose_area(%struct._GimpDisplayShell* %52, i32 %53, i32 %54, i32 %sub64, i32 %sub65)
  ret void
}

declare i32 @gimp_image_get_width(%struct._GimpImage*) #1

declare i32 @gimp_image_get_height(%struct._GimpImage*) #1

declare %struct._GimpArea* @gimp_area_new(i32, i32, i32, i32) #1

declare %struct._GSList* @gimp_area_list_process(%struct._GSList*, %struct._GimpArea*) #1

; Function Attrs: nounwind uwtable
define void @gimp_display_flush(%struct._GimpDisplay* %display) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.gimp_display_flush, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_display_flush_whenever(%struct._GimpDisplay* %13, i32 0)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_flush_whenever(%struct._GimpDisplay* %display, i32 %now) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %now.addr = alloca i32, align 4
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %list = alloca %struct._GSList*, align 8
  %area = alloca %struct._GimpArea*, align 8
  %now19 = alloca i64, align 8
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  store i32 %now, i32* %now.addr, align 4
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %2, %struct._GimpDisplayPrivate** %private, align 8
  %3 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %update_areas = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %3, i32 0, i32 4
  %4 = load %struct._GSList*, %struct._GSList** %update_areas, align 8
  %tobool = icmp ne %struct._GSList* %4, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %update_areas2 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %5, i32 0, i32 4
  %6 = load %struct._GSList*, %struct._GSList** %update_areas2, align 8
  store %struct._GSList* %6, %struct._GSList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %if.then
  %7 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool3 = icmp ne %struct._GSList* %7, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load %struct._GSList*, %struct._GSList** %list, align 8
  %data = getelementptr inbounds %struct._GSList, %struct._GSList* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = bitcast i8* %9 to %struct._GimpArea*
  store %struct._GimpArea* %10, %struct._GimpArea** %area, align 8
  %11 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x1 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %11, i32 0, i32 0
  %12 = load i32, i32* %x1, align 4
  %13 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x2 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %13, i32 0, i32 2
  %14 = load i32, i32* %x2, align 4
  %cmp = icmp ne i32 %12, %14
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y1 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %15, i32 0, i32 1
  %16 = load i32, i32* %y1, align 4
  %17 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y2 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %17, i32 0, i32 3
  %18 = load i32, i32* %y2, align 4
  %cmp4 = icmp ne i32 %16, %18
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %land.lhs.true
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %20 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x16 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %20, i32 0, i32 0
  %21 = load i32, i32* %x16, align 4
  %22 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y17 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %22, i32 0, i32 1
  %23 = load i32, i32* %y17, align 4
  %24 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x28 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %24, i32 0, i32 2
  %25 = load i32, i32* %x28, align 4
  %26 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %x19 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %26, i32 0, i32 0
  %27 = load i32, i32* %x19, align 4
  %sub = sub nsw i32 %25, %27
  %28 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y210 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %28, i32 0, i32 3
  %29 = load i32, i32* %y210, align 4
  %30 = load %struct._GimpArea*, %struct._GimpArea** %area, align 8
  %y111 = getelementptr inbounds %struct._GimpArea, %struct._GimpArea* %30, i32 0, i32 1
  %31 = load i32, i32* %y111, align 4
  %sub12 = sub nsw i32 %29, %31
  call void @gimp_display_paint_area(%struct._GimpDisplay* %19, i32 %21, i32 %23, i32 %sub, i32 %sub12)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load %struct._GSList*, %struct._GSList** %list, align 8
  %tobool13 = icmp ne %struct._GSList* %32, null
  br i1 %tobool13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %33 = load %struct._GSList*, %struct._GSList** %list, align 8
  %next = getelementptr inbounds %struct._GSList, %struct._GSList* %33, i32 0, i32 1
  %34 = load %struct._GSList*, %struct._GSList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GSList* [ %34, %cond.true ], [ null, %cond.false ]
  store %struct._GSList* %cond, %struct._GSList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %35 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %update_areas14 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %35, i32 0, i32 4
  %36 = load %struct._GSList*, %struct._GSList** %update_areas14, align 8
  call void @gimp_area_list_free(%struct._GSList* %36)
  %37 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %update_areas15 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %37, i32 0, i32 4
  store %struct._GSList* null, %struct._GSList** %update_areas15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %for.end, %entry
  %38 = load i32, i32* %now.addr, align 4
  %tobool17 = icmp ne i32 %38, 0
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.16
  %call20 = call i64 @g_get_monotonic_time()
  store i64 %call20, i64* %now19, align 8
  %39 = load i64, i64* %now19, align 8
  %40 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %last_flush_now = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %40, i32 0, i32 5
  %41 = load i64, i64* %last_flush_now, align 8
  %sub21 = sub i64 %39, %41
  %cmp22 = icmp ugt i64 %sub21, 20000
  br i1 %cmp22, label %if.then.23, label %if.end.26

if.then.23:                                       ; preds = %if.then.18
  %42 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call24 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %42)
  %43 = load i64, i64* %now19, align 8
  %conv = trunc i64 %43 to i32
  call void @gimp_display_shell_flush(%struct._GimpDisplayShell* %call24, i32 %conv)
  %44 = load i64, i64* %now19, align 8
  %45 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %last_flush_now25 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %45, i32 0, i32 5
  store i64 %44, i64* %last_flush_now25, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.23, %if.then.18
  br label %if.end.28

if.else:                                          ; preds = %if.end.16
  %46 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %call27 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %46)
  %47 = load i32, i32* %now.addr, align 4
  call void @gimp_display_shell_flush(%struct._GimpDisplayShell* %call27, i32 %47)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else, %if.end.26
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_display_flush_now(%struct._GimpDisplay* %display) #3 {
entry:
  %display.addr = alloca %struct._GimpDisplay*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpDisplay* %display, %struct._GimpDisplay** %display.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  %1 = bitcast %struct._GimpDisplay* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_display_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_display_flush_now, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display.addr, align 8
  call void @gimp_display_flush_whenever(%struct._GimpDisplay* %13, i32 1)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_class_init(%struct._GimpDisplayClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDisplayClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpDisplayClass* %klass, %struct._GimpDisplayClass** %klass.addr, align 8
  %0 = load %struct._GimpDisplayClass*, %struct._GimpDisplayClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDisplayClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 0, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %5, i32 1, %struct._GParamSpec* %call1)
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call i64 @gimp_get_type() #7
  %call3 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* null, i64 %call2, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 2, %struct._GParamSpec* %call3)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call i64 @gimp_image_get_type() #7
  %call5 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* null, i64 %call4, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 3, %struct._GParamSpec* %call5)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call i64 @gimp_display_shell_get_type() #7
  %call7 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* null, i64 %call6, i32 225)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 4, %struct._GParamSpec* %call7)
  %9 = load %struct._GimpDisplayClass*, %struct._GimpDisplayClass** %klass.addr, align 8
  %10 = bitcast %struct._GimpDisplayClass* %9 to i8*
  call void @g_type_class_add_private(i8* %10, i64 48)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %ID = alloca i32, align 4
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %5, %struct._GimpDisplayPrivate** %private, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.17
    i32 3, label %sw.bb.17
    i32 4, label %sw.bb.17
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_get_object(%struct._GValue* %7)
  %8 = bitcast i8* %call4 to %struct._Gimp*
  %9 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %9, i32 0, i32 1
  store %struct._Gimp* %8, %struct._Gimp** %gimp, align 8
  %10 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp5 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %10, i32 0, i32 1
  %11 = load %struct._Gimp*, %struct._Gimp** %gimp5, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %11, i32 0, i32 1
  %12 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %13 = bitcast %struct._GimpCoreConfig* %12 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_display_config_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call6)
  %14 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpDisplayConfig*
  %15 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %config8 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %15, i32 0, i32 2
  store %struct._GimpDisplayConfig* %14, %struct._GimpDisplayConfig** %config8, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %sw.bb
  %16 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp9 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %16, i32 0, i32 1
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp9, align 8
  %next_display_ID = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 32
  %18 = load i32, i32* %next_display_ID, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %next_display_ID, align 4
  store i32 %18, i32* %ID, align 4
  %19 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp10 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %19, i32 0, i32 1
  %20 = load %struct._Gimp*, %struct._Gimp** %gimp10, align 8
  %next_display_ID11 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %20, i32 0, i32 32
  %21 = load i32, i32* %next_display_ID11, align 4
  %cmp = icmp eq i32 %21, 2147483647
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %22 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp12 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %22, i32 0, i32 1
  %23 = load %struct._Gimp*, %struct._Gimp** %gimp12, align 8
  %next_display_ID13 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %23, i32 0, i32 32
  store i32 1, i32* %next_display_ID13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %24 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp14 = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %24, i32 0, i32 1
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp14, align 8
  %26 = load i32, i32* %ID, align 4
  %call15 = call %struct._GimpDisplay* @gimp_display_get_by_ID(%struct._Gimp* %25, i32 %26)
  %tobool = icmp ne %struct._GimpDisplay* %call15, null
  br i1 %tobool, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %27 = load i32, i32* %ID, align 4
  %28 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %ID16 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %28, i32 0, i32 0
  store i32 %27, i32* %ID16, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry, %entry, %entry
  br label %do.body.18

do.body.18:                                       ; preds = %sw.bb.17
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 227, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_display_set_property, i32 0, i32 0), i8* null) #9
  unreachable

do.end.20:                                        ; No predecessors!
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body.21

do.body.21:                                       ; preds = %sw.default
  %29 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %29, %struct._GObject** %_glib__object, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %30, %struct._GParamSpec** %_glib__pspec, align 8
  %31 = load i32, i32* %property_id.addr, align 4
  store i32 %31, i32* %_glib__property_id, align 4
  %32 = load i32, i32* %_glib__property_id, align 4
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %33, i32 0, i32 1
  %34 = load i8*, i8** %name, align 8
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %36 = bitcast %struct._GParamSpec* %35 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type, align 8
  %call22 = call i8* @g_type_name(i64 %38)
  %39 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %40 = bitcast %struct._GObject* %39 to %struct._GTypeInstance*
  %g_class23 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class23, align 8
  %g_type24 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type24, align 8
  %call25 = call i8* @g_type_name(i64 %42)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 231, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %32, i8* %34, i8* %call22, i8* %call25)
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.21
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.27, %do.end.20, %do.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %5, %struct._GimpDisplayPrivate** %private, align 8
  %6 = load i32, i32* %property_id.addr, align 4
  switch i32 %6, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %ID = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %8, i32 0, i32 0
  %9 = load i32, i32* %ID, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %gimp = getelementptr inbounds %struct._GimpDisplay, %struct._GimpDisplay* %11, i32 0, i32 1
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %13 = bitcast %struct._Gimp* %12 to i8*
  call void @g_value_set_object(%struct._GValue* %10, i8* %13)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %15 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %image = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %15, i32 0, i32 1
  %16 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %17 = bitcast %struct._GimpImage* %16 to i8*
  call void @g_value_set_object(%struct._GValue* %14, i8* %17)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %19 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %19, i32 0, i32 3
  %20 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %21 = bitcast %struct._GtkWidget* %20 to i8*
  call void @g_value_set_object(%struct._GValue* %18, i8* %21)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %22 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %22, %struct._GObject** %_glib__object, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %23, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = load i32, i32* %property_id.addr, align 4
  store i32 %24, i32* %_glib__property_id, align 4
  %25 = load i32, i32* %_glib__property_id, align 4
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %26, i32 0, i32 1
  %27 = load i8*, i8** %name, align 8
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %29 = bitcast %struct._GParamSpec* %28 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %29, i32 0, i32 0
  %30 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %30, i32 0, i32 0
  %31 = load i64, i64* %g_type, align 8
  %call7 = call i8* @g_type_name(i64 %31)
  %32 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %33 = bitcast %struct._GObject* %32 to %struct._GTypeInstance*
  %g_class8 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %33, i32 0, i32 0
  %34 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class8, align 8
  %g_type9 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %34, i32 0, i32 0
  %35 = load i64, i64* %g_type9, align 8
  %call10 = call i8* @g_type_name(i64 %35)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0), i32 264, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i32 %25, i8* %27, i8* %call7, i8* %call10)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

declare void @g_type_class_add_private(i8*, i64) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_config_get_type() #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #5

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpProgress* @gimp_display_progress_start(%struct._GimpProgress* %progress, i8* %message, i32 %cancelable) #3 {
entry:
  %retval = alloca %struct._GimpProgress*, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %cancelable.addr = alloca i32, align 4
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  store i32 %cancelable, i32* %cancelable.addr, align 4
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %5, %struct._GimpDisplayPrivate** %private, align 8
  %6 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell4 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %shell4, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  %12 = load i8*, i8** %message.addr, align 8
  %13 = load i32, i32* %cancelable.addr, align 4
  %call7 = call %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress* %11, i8* %12, i32 %13)
  store %struct._GimpProgress* %call7, %struct._GimpProgress** %retval
  br label %return

if.end:                                           ; preds = %entry
  store %struct._GimpProgress* null, %struct._GimpProgress** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load %struct._GimpProgress*, %struct._GimpProgress** %retval
  ret %struct._GimpProgress* %14
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_progress_end(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %5, %struct._GimpDisplayPrivate** %private, align 8
  %6 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell4 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %shell4, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  call void @gimp_progress_end(%struct._GimpProgress* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_progress_is_active(%struct._GimpProgress* %progress) #3 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %5, %struct._GimpDisplayPrivate** %private, align 8
  %6 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell4 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %shell4, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  %call7 = call i32 @gimp_progress_is_active(%struct._GimpProgress* %11)
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_progress_set_text(%struct._GimpProgress* %progress, i8* %message) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %message.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %5, %struct._GimpDisplayPrivate** %private, align 8
  %6 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell4 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %shell4, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  %12 = load i8*, i8** %message.addr, align 8
  call void @gimp_progress_set_text(%struct._GimpProgress* %11, i8* %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_progress_set_value(%struct._GimpProgress* %progress, double %percentage) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %percentage.addr = alloca double, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store double %percentage, double* %percentage.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %5, %struct._GimpDisplayPrivate** %private, align 8
  %6 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell4 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %shell4, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  %12 = load double, double* %percentage.addr, align 8
  call void @gimp_progress_set_value(%struct._GimpProgress* %11, double %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_display_progress_get_value(%struct._GimpProgress* %progress) #3 {
entry:
  %retval = alloca double, align 8
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %5, %struct._GimpDisplayPrivate** %private, align 8
  %6 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell4 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %shell4, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  %call7 = call double @gimp_progress_get_value(%struct._GimpProgress* %11)
  store double %call7, double* %retval
  br label %return

if.end:                                           ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load double, double* %retval
  ret double %12
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_progress_pulse(%struct._GimpProgress* %progress) #3 {
entry:
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %5, %struct._GimpDisplayPrivate** %private, align 8
  %6 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell4 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %shell4, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  call void @gimp_progress_pulse(%struct._GimpProgress* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_progress_get_window_id(%struct._GimpProgress* %progress) #3 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %5, %struct._GimpDisplayPrivate** %private, align 8
  %6 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell4 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %shell4, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  %call7 = call i32 @gimp_progress_get_window_id(%struct._GimpProgress* %11)
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_display_progress_message(%struct._GimpProgress* %progress, %struct._Gimp* %gimp, i32 %severity, i8* %domain, i8* %message) #3 {
entry:
  %retval = alloca i32, align 4
  %progress.addr = alloca %struct._GimpProgress*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %severity.addr = alloca i32, align 4
  %domain.addr = alloca i8*, align 8
  %message.addr = alloca i8*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %private = alloca %struct._GimpDisplayPrivate*, align 8
  store %struct._GimpProgress* %progress, %struct._GimpProgress** %progress.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %severity, i32* %severity.addr, align 4
  store i8* %domain, i8** %domain.addr, align 8
  store i8* %message, i8** %message.addr, align 8
  %0 = load %struct._GimpProgress*, %struct._GimpProgress** %progress.addr, align 8
  %1 = bitcast %struct._GimpProgress* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %4 = bitcast %struct._GimpDisplay* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_display_get_type() #7
  %call3 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplayPrivate*
  store %struct._GimpDisplayPrivate* %5, %struct._GimpDisplayPrivate** %private, align 8
  %6 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %6, i32 0, i32 3
  %7 = load %struct._GtkWidget*, %struct._GtkWidget** %shell, align 8
  %tobool = icmp ne %struct._GtkWidget* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpDisplayPrivate*, %struct._GimpDisplayPrivate** %private, align 8
  %shell4 = getelementptr inbounds %struct._GimpDisplayPrivate, %struct._GimpDisplayPrivate* %8, i32 0, i32 3
  %9 = load %struct._GtkWidget*, %struct._GtkWidget** %shell4, align 8
  %10 = bitcast %struct._GtkWidget* %9 to %struct._GTypeInstance*
  %call5 = call i64 @gimp_progress_interface_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call5)
  %11 = bitcast %struct._GTypeInstance* %call6 to %struct._GimpProgress*
  %12 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %13 = load i32, i32* %severity.addr, align 4
  %14 = load i8*, i8** %domain.addr, align 8
  %15 = load i8*, i8** %message.addr, align 8
  %call7 = call i32 @gimp_progress_message(%struct._GimpProgress* %11, %struct._Gimp* %12, i32 %13, i8* %14, i8* %15)
  store i32 %call7, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare %struct._GimpProgress* @gimp_progress_start(%struct._GimpProgress*, i8*, i32) #1

declare void @gimp_progress_end(%struct._GimpProgress*) #1

declare i32 @gimp_progress_is_active(%struct._GimpProgress*) #1

declare void @gimp_progress_set_text(%struct._GimpProgress*, i8*) #1

declare void @gimp_progress_set_value(%struct._GimpProgress*, double) #1

declare double @gimp_progress_get_value(%struct._GimpProgress*) #1

declare void @gimp_progress_pulse(%struct._GimpProgress*) #1

declare i32 @gimp_progress_get_window_id(%struct._GimpProgress*) #1

declare i32 @gimp_progress_message(%struct._GimpProgress*, %struct._Gimp*, i32, i8*, i8*) #1

declare void @gimp_progress_cancel(%struct._GimpProgress*) #1

declare i64 @g_get_monotonic_time() #1

declare void @gimp_display_shell_flush(%struct._GimpDisplayShell*, i32) #1

declare void @gimp_display_shell_transform_xy_f(%struct._GimpDisplayShell*, double, double, double*, double*) #1

; Function Attrs: nounwind readnone
declare double @floor(double) #2

; Function Attrs: nounwind readnone
declare double @ceil(double) #2

declare void @gimp_display_shell_expose_area(%struct._GimpDisplayShell*, i32, i32, i32, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
