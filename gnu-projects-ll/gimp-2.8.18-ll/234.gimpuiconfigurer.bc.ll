; ModuleID = './app/gui/gimpuiconfigurer.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpMenuFactory = type opaque
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpUIConfigurerClass = type { %struct._GimpObjectClass }
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
%struct._GimpUIConfigurer = type { %struct._GimpObject, %struct._GimpUIConfigurerPrivate* }
%struct._GimpUIConfigurerPrivate = type { %struct._Gimp* }
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*)*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, void (%struct._Gimp*)* }
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
%struct._GimpContext = type { %struct._GimpViewable, %struct._Gimp*, %struct._GimpContext*, i32, i32, %struct._GimpImage*, i8*, %struct._GimpToolInfo*, i8*, %struct._GimpPaintInfo*, i8*, %struct._GimpRGB, %struct._GimpRGB, double, i32, %struct._GimpBrush*, i8*, %struct._GimpDynamics*, i8*, %struct._GimpPattern*, i8*, %struct._GimpGradient*, i8*, %struct._GimpPalette*, i8*, %struct._GimpToolPreset*, i8*, %struct._GimpFont*, i8*, %struct._GimpBuffer*, i8*, %struct._GimpImagefile*, i8*, %struct._GimpTemplate*, i8* }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpBrush = type opaque
%struct._GimpDynamics = type opaque
%struct._GimpPattern = type opaque
%struct._GimpGradient = type opaque
%struct._GimpPalette = type opaque
%struct._GimpToolPreset = type opaque
%struct._GimpFont = type opaque
%struct._GimpImagefile = type opaque
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
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
%struct._GtkRequisition = type { i32, i32 }
%struct._GdkRectangle = type { i32, i32, i32, i32 }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GdkDrawable = type { %struct._GObject }
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
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
%struct._GimpDockWindow = type { %struct._GimpWindow, %struct._GimpDockWindowPrivate* }
%struct._GimpDockWindowPrivate = type opaque
%struct._GimpDockContainer = type opaque
%struct._GimpDockColumns = type { %struct._GtkBox, %struct._GimpDockColumnsPrivate* }
%struct._GimpDockColumnsPrivate = type opaque
%struct._GimpDock = type { %struct._GtkBox, %struct._GimpDockPrivate* }
%struct._GimpDockPrivate = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque

@gimp_ui_configurer_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpUIConfigurer\00", align 1
@gimp_ui_configurer_parent_class = internal global i8* null, align 8
@GimpUIConfigurer_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"gimpuiconfigurer.c\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"Gimp-GUI\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"gimp-toolbox-window\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"gimp-dock-window\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"+0+0\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"-0+0\00", align 1
@__func__.gimp_ui_configurer_move_docks_to_window = private unnamed_addr constant [40 x i8] c"gimp_ui_configurer_move_docks_to_window\00", align 1
@global_menu_factory = external global %struct._GimpMenuFactory*, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_ui_configurer_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_ui_configurer_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_ui_configurer_get_type.g_define_type_id__volatile to i8*))
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
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 160, void (i8*, i8*)* bitcast (void (i8*)* @gimp_ui_configurer_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpUIConfigurer*)* @gimp_ui_configurer_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_ui_configurer_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_ui_configurer_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_ui_configurer_parent_class, align 8
  %1 = load i32, i32* @GimpUIConfigurer_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpUIConfigurer_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpUIConfigurerClass*
  call void @gimp_ui_configurer_class_init(%struct._GimpUIConfigurerClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_init(%struct._GimpUIConfigurer* %ui_configurer) #3 {
entry:
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %0 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %1 = bitcast %struct._GimpUIConfigurer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ui_configurer_get_type() #7
  %call1 = call i8* @g_type_instance_get_private(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast i8* %call1 to %struct._GimpUIConfigurerPrivate*
  %3 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %p = getelementptr inbounds %struct._GimpUIConfigurer, %struct._GimpUIConfigurer* %3, i32 0, i32 1
  store %struct._GimpUIConfigurerPrivate* %2, %struct._GimpUIConfigurerPrivate** %p, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_ui_configurer_configure(%struct._GimpUIConfigurer* %ui_configurer, i32 %single_window_mode) #3 {
entry:
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  %single_window_mode.addr = alloca i32, align 4
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  store i32 %single_window_mode, i32* %single_window_mode.addr, align 4
  %0 = load i32, i32* %single_window_mode.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  call void @gimp_ui_configurer_configure_for_single_window(%struct._GimpUIConfigurer* %1)
  br label %if.end

if.else:                                          ; preds = %entry
  %2 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  call void @gimp_ui_configurer_configure_for_multi_window(%struct._GimpUIConfigurer* %2)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  call void @gimp_ui_configurer_update_appearance(%struct._GimpUIConfigurer* %3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_configure_for_single_window(%struct._GimpUIConfigurer* %ui_configurer) #3 {
entry:
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %windows = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %uber_image_window = alloca %struct._GimpImageWindow*, align 8
  %active_display = alloca %struct._GimpDisplay*, align 8
  %active_shell = alloca %struct._GimpDisplayShell*, align 8
  %image_window = alloca %struct._GimpImageWindow*, align 8
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %0 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %p = getelementptr inbounds %struct._GimpUIConfigurer, %struct._GimpUIConfigurer* %0, i32 0, i32 1
  %1 = load %struct._GimpUIConfigurerPrivate*, %struct._GimpUIConfigurerPrivate** %p, align 8
  %gimp1 = getelementptr inbounds %struct._GimpUIConfigurerPrivate, %struct._GimpUIConfigurerPrivate* %1, i32 0, i32 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GList* @gimp_get_image_windows(%struct._Gimp* %3)
  store %struct._GList* %call, %struct._GList** %windows, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  store %struct._GimpImageWindow* null, %struct._GimpImageWindow** %uber_image_window, align 8
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call2 = call %struct._GimpContext* @gimp_get_user_context(%struct._Gimp* %4)
  %call3 = call i8* @gimp_context_get_display(%struct._GimpContext* %call2)
  %5 = bitcast i8* %call3 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %5, %struct._GimpDisplay** %active_display, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %active_display, align 8
  %call4 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  store %struct._GimpDisplayShell* %call4, %struct._GimpDisplayShell** %active_shell, align 8
  %7 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %call5 = call %struct._GimpImageWindow* @gimp_ui_configurer_get_uber_window(%struct._GimpUIConfigurer* %7)
  store %struct._GimpImageWindow* %call5, %struct._GimpImageWindow** %uber_image_window, align 8
  %8 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %9 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %uber_image_window, align 8
  call void @gimp_ui_configurer_move_docks_to_columns(%struct._GimpUIConfigurer* %8, %struct._GimpImageWindow* %9)
  %10 = load %struct._GList*, %struct._GList** %windows, align 8
  store %struct._GList* %10, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %11 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool = icmp ne %struct._GList* %11, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %12, i32 0, i32 0
  %13 = load i8*, i8** %data, align 8
  %14 = bitcast i8* %13 to %struct._GTypeInstance*
  %call6 = call i64 @gimp_image_window_get_type() #7
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call6)
  %15 = bitcast %struct._GTypeInstance* %call7 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %15, %struct._GimpImageWindow** %image_window, align 8
  %16 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %image_window, align 8
  %17 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %uber_image_window, align 8
  %cmp = icmp eq %struct._GimpImageWindow* %16, %17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %18 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %19 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %image_window, align 8
  %20 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %uber_image_window, align 8
  call void @gimp_ui_configurer_move_shells(%struct._GimpUIConfigurer* %18, %struct._GimpImageWindow* %19, %struct._GimpImageWindow* %20)
  %21 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %image_window, align 8
  call void @gimp_image_window_destroy(%struct._GimpImageWindow* %21)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %22 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool8 = icmp ne %struct._GList* %22, null
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %23 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %23, i32 0, i32 1
  %24 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %24, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %uber_image_window, align 8
  %26 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  call void @gimp_image_window_set_active_shell(%struct._GimpImageWindow* %25, %struct._GimpDisplayShell* %26)
  %27 = load %struct._GList*, %struct._GList** %windows, align 8
  call void @g_list_free(%struct._GList* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_configure_for_multi_window(%struct._GimpUIConfigurer* %ui_configurer) #3 {
entry:
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %windows = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %image_window = alloca %struct._GimpImageWindow*, align 8
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %0 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %p = getelementptr inbounds %struct._GimpUIConfigurer, %struct._GimpUIConfigurer* %0, i32 0, i32 1
  %1 = load %struct._GimpUIConfigurerPrivate*, %struct._GimpUIConfigurerPrivate** %p, align 8
  %gimp1 = getelementptr inbounds %struct._GimpUIConfigurerPrivate, %struct._GimpUIConfigurerPrivate* %1, i32 0, i32 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GList* @gimp_get_image_windows(%struct._Gimp* %3)
  store %struct._GList* %call, %struct._GList** %windows, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  %4 = load %struct._GList*, %struct._GList** %windows, align 8
  store %struct._GList* %4, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_window_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %9, %struct._GimpImageWindow** %image_window, align 8
  %10 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %11 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %image_window, align 8
  call void @gimp_ui_configurer_separate_docks(%struct._GimpUIConfigurer* %10, %struct._GimpImageWindow* %11)
  %12 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %image_window, align 8
  call void @gimp_ui_configurer_separate_shells(%struct._GimpUIConfigurer* %12, %struct._GimpImageWindow* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool4 = icmp ne %struct._GList* %14, null
  br i1 %tobool4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %15 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %15, i32 0, i32 1
  %16 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %16, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct._GList*, %struct._GList** %windows, align 8
  call void @g_list_free(%struct._GList* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_update_appearance(%struct._GimpUIConfigurer* %ui_configurer) #3 {
entry:
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %windows = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %image_window = alloca %struct._GimpImageWindow*, align 8
  %n_shells = alloca i32, align 4
  %i = alloca i32, align 4
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %0 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %p = getelementptr inbounds %struct._GimpUIConfigurer, %struct._GimpUIConfigurer* %0, i32 0, i32 1
  %1 = load %struct._GimpUIConfigurerPrivate*, %struct._GimpUIConfigurerPrivate** %p, align 8
  %gimp1 = getelementptr inbounds %struct._GimpUIConfigurerPrivate, %struct._GimpUIConfigurerPrivate* %1, i32 0, i32 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GList* @gimp_get_image_windows(%struct._Gimp* %3)
  store %struct._GList* %call, %struct._GList** %windows, align 8
  %4 = load %struct._GList*, %struct._GList** %windows, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_image_window_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 %call2)
  %9 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %9, %struct._GimpImageWindow** %image_window, align 8
  %10 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %image_window, align 8
  %call4 = call i32 @gimp_image_window_get_n_shells(%struct._GimpImageWindow* %10)
  store i32 %call4, i32* %n_shells, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n_shells, align 4
  %cmp = icmp slt i32 %11, %12
  br i1 %cmp, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.5
  %13 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %image_window, align 8
  %14 = load i32, i32* %i, align 4
  %call7 = call %struct._GimpDisplayShell* @gimp_image_window_get_shell(%struct._GimpImageWindow* %13, i32 %14)
  store %struct._GimpDisplayShell* %call7, %struct._GimpDisplayShell** %shell, align 8
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_display_shell_appearance_update(%struct._GimpDisplayShell* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.8

for.inc.8:                                        ; preds = %for.end
  %17 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool9 = icmp ne %struct._GList* %17, null
  br i1 %tobool9, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc.8
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %18, i32 0, i32 1
  %19 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc.8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %19, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %20 = load %struct._GList*, %struct._GList** %windows, align 8
  call void @g_list_free(%struct._GList* %20)
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_class_init(%struct._GimpUIConfigurerClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpUIConfigurerClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpUIConfigurerClass* %klass, %struct._GimpUIConfigurerClass** %klass.addr, align 8
  %0 = load %struct._GimpUIConfigurerClass*, %struct._GimpUIConfigurerClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpUIConfigurerClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_ui_configurer_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_ui_configurer_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_get_type() #7
  %call2 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i64 %call1, i32 235)
  call void @g_object_class_install_property(%struct._GObjectClass* %5, i32 1, %struct._GParamSpec* %call2)
  %6 = load %struct._GimpUIConfigurerClass*, %struct._GimpUIConfigurerClass** %klass.addr, align 8
  %7 = bitcast %struct._GimpUIConfigurerClass* %6 to i8*
  call void @g_type_class_add_private(i8* %7, i64 8)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ui_configurer = alloca %struct._GimpUIConfigurer*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ui_configurer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUIConfigurer*
  store %struct._GimpUIConfigurer* %2, %struct._GimpUIConfigurer** %ui_configurer, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_object(%struct._GValue* %4)
  %5 = bitcast i8* %call2 to %struct._Gimp*
  %6 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer, align 8
  %p = getelementptr inbounds %struct._GimpUIConfigurer, %struct._GimpUIConfigurer* %6, i32 0, i32 1
  %7 = load %struct._GimpUIConfigurerPrivate*, %struct._GimpUIConfigurerPrivate** %p, align 8
  %gimp = getelementptr inbounds %struct._GimpUIConfigurerPrivate, %struct._GimpUIConfigurerPrivate* %7, i32 0, i32 0
  store %struct._Gimp* %5, %struct._Gimp** %gimp, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %8, %struct._GObject** %_glib__object, align 8
  %9 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %9, %struct._GParamSpec** %_glib__pspec, align 8
  %10 = load i32, i32* %property_id.addr, align 4
  store i32 %10, i32* %_glib__property_id, align 4
  %11 = load i32, i32* %_glib__property_id, align 4
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 1
  %13 = load i8*, i8** %name, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = bitcast %struct._GParamSpec* %14 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %16, i32 0, i32 0
  %17 = load i64, i64* %g_type, align 8
  %call3 = call i8* @g_type_name(i64 %17)
  %18 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %19 = bitcast %struct._GObject* %18 to %struct._GTypeInstance*
  %g_class4 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class4, align 8
  %g_type5 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type5, align 8
  %call6 = call i8* @g_type_name(i64 %21)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 130, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %11, i8* %13, i8* %call3, i8* %call6)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %ui_configurer = alloca %struct._GimpUIConfigurer*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_ui_configurer_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpUIConfigurer*
  store %struct._GimpUIConfigurer* %2, %struct._GimpUIConfigurer** %ui_configurer, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer, align 8
  %p = getelementptr inbounds %struct._GimpUIConfigurer, %struct._GimpUIConfigurer* %5, i32 0, i32 1
  %6 = load %struct._GimpUIConfigurerPrivate*, %struct._GimpUIConfigurerPrivate** %p, align 8
  %gimp = getelementptr inbounds %struct._GimpUIConfigurerPrivate, %struct._GimpUIConfigurerPrivate* %6, i32 0, i32 0
  %7 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %8 = bitcast %struct._Gimp* %7 to i8*
  call void @g_value_set_object(%struct._GValue* %4, i8* %8)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %9, %struct._GObject** %_glib__object, align 8
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %10, %struct._GParamSpec** %_glib__pspec, align 8
  %11 = load i32, i32* %property_id.addr, align 4
  store i32 %11, i32* %_glib__property_id, align 4
  %12 = load i32, i32* %_glib__property_id, align 4
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 1
  %14 = load i8*, i8** %name, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %16 = bitcast %struct._GParamSpec* %15 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %17, i32 0, i32 0
  %18 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %18)
  %19 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %20 = bitcast %struct._GObject* %19 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %22)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 150, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i32 %12, i8* %14, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #2

declare void @g_type_class_add_private(i8*, i64) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare i8* @g_type_instance_get_private(%struct._GTypeInstance*, i64) #1

declare %struct._GList* @gimp_get_image_windows(%struct._Gimp*) #1

declare i8* @gimp_context_get_display(%struct._GimpContext*) #1

declare %struct._GimpContext* @gimp_get_user_context(%struct._Gimp*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpImageWindow* @gimp_ui_configurer_get_uber_window(%struct._GimpUIConfigurer* %ui_configurer) #3 {
entry:
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %image_window = alloca %struct._GimpImageWindow*, align 8
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %0 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %p = getelementptr inbounds %struct._GimpUIConfigurer, %struct._GimpUIConfigurer* %0, i32 0, i32 1
  %1 = load %struct._GimpUIConfigurerPrivate*, %struct._GimpUIConfigurerPrivate** %p, align 8
  %gimp1 = getelementptr inbounds %struct._GimpUIConfigurerPrivate, %struct._GimpUIConfigurerPrivate* %1, i32 0, i32 0
  %2 = load %struct._Gimp*, %struct._Gimp** %gimp1, align 8
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %call = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %3)
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  %5 = bitcast i8* %4 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %5, %struct._GimpDisplay** %display, align 8
  %6 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call2 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %6)
  store %struct._GimpDisplayShell* %call2, %struct._GimpDisplayShell** %shell, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %call3 = call %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell* %7)
  store %struct._GimpImageWindow* %call3, %struct._GimpImageWindow** %image_window, align 8
  %8 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %image_window, align 8
  ret %struct._GimpImageWindow* %8
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_move_docks_to_columns(%struct._GimpUIConfigurer* %ui_configurer, %struct._GimpImageWindow* %uber_image_window) #3 {
entry:
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  %uber_image_window.addr = alloca %struct._GimpImageWindow*, align 8
  %dialogs = alloca %struct._GList*, align 8
  %dialog_iter = alloca %struct._GList*, align 8
  %dock_window = alloca %struct._GimpDockWindow*, align 8
  %dock_container = alloca %struct._GimpDockContainer*, align 8
  %dock_columns = alloca %struct._GimpDockColumns*, align 8
  %docks = alloca %struct._GList*, align 8
  %dock_iter = alloca %struct._GList*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dock = alloca %struct._GimpDock*, align 8
  %__inst45 = alloca %struct._GTypeInstance*, align 8
  %__t47 = alloca i64, align 8
  %__r50 = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  %docks_len = alloca i32, align 4
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  store %struct._GimpImageWindow* %uber_image_window, %struct._GimpImageWindow** %uber_image_window.addr, align 8
  store %struct._GList* null, %struct._GList** %dialogs, align 8
  store %struct._GList* null, %struct._GList** %dialog_iter, align 8
  %call = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call1 = call %struct._GList* @gimp_dialog_factory_get_open_dialogs(%struct._GimpDialogFactory* %call)
  %call2 = call %struct._GList* @g_list_copy(%struct._GList* %call1)
  store %struct._GList* %call2, %struct._GList** %dialogs, align 8
  %0 = load %struct._GList*, %struct._GList** %dialogs, align 8
  store %struct._GList* %0, %struct._GList** %dialog_iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.80, %entry
  %1 = load %struct._GList*, %struct._GList** %dialog_iter, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end.82

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %dialog_iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %4, %struct._GTypeInstance** %__inst, align 8
  %call3 = call i64 @gimp_dock_window_get_type() #7
  store i64 %call3, i64* %__t, align 8
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool4 = icmp ne %struct._GTypeInstance* %5, null
  br i1 %tobool4, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.10

if.else:                                          ; preds = %for.body
  %6 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %6, i32 0, i32 0
  %7 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool5 = icmp ne %struct._GTypeClass* %7, null
  br i1 %tobool5, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class6 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class6, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %9, i32 0, i32 0
  %10 = load i64, i64* %g_type, align 8
  %11 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %10, %11
  br i1 %cmp, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %13 = load i64, i64* %__t, align 8
  %call9 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %12, i64 %13) #8
  store i32 %call9, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.8, %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %14 = load i32, i32* %__r, align 4
  store i32 %14, i32* %tmp
  %15 = load i32, i32* %tmp
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  br label %for.inc.80

if.end.13:                                        ; preds = %if.end.10
  %16 = load %struct._GList*, %struct._GList** %dialog_iter, align 8
  %data14 = getelementptr inbounds %struct._GList, %struct._GList* %16, i32 0, i32 0
  %17 = load i8*, i8** %data14, align 8
  %18 = bitcast i8* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_dock_window_get_type() #7
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpDockWindow*
  store %struct._GimpDockWindow* %19, %struct._GimpDockWindow** %dock_window, align 8
  %20 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %uber_image_window.addr, align 8
  %21 = bitcast %struct._GimpImageWindow* %20 to %struct._GTypeInstance*
  %call17 = call i64 @gtk_window_get_type() #7
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 %call17)
  %22 = bitcast %struct._GTypeInstance* %call18 to %struct._GtkWindow*
  %23 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %24 = bitcast %struct._GimpDockWindow* %23 to %struct._GTypeInstance*
  %call19 = call i64 @gtk_window_get_type() #7
  %call20 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 %call19)
  %25 = bitcast %struct._GTypeInstance* %call20 to %struct._GtkWindow*
  %call21 = call i32 @gimp_ui_configurer_get_relative_window_pos(%struct._GtkWindow* %22, %struct._GtkWindow* %25)
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.end.13
  %26 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %uber_image_window.addr, align 8
  %call24 = call %struct._GimpDockColumns* @gimp_image_window_get_left_docks(%struct._GimpImageWindow* %26)
  store %struct._GimpDockColumns* %call24, %struct._GimpDockColumns** %dock_columns, align 8
  br label %if.end.27

if.else.25:                                       ; preds = %if.end.13
  %27 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %uber_image_window.addr, align 8
  %call26 = call %struct._GimpDockColumns* @gimp_image_window_get_right_docks(%struct._GimpImageWindow* %27)
  store %struct._GimpDockColumns* %call26, %struct._GimpDockColumns** %dock_columns, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.25, %if.then.23
  %28 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %29 = bitcast %struct._GimpDockWindow* %28 to %struct._GTypeInstance*
  %call28 = call i64 @gimp_dock_container_interface_get_type() #7
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 %call28)
  %30 = bitcast %struct._GTypeInstance* %call29 to %struct._GimpDockContainer*
  store %struct._GimpDockContainer* %30, %struct._GimpDockContainer** %dock_container, align 8
  %31 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %32 = bitcast %struct._GimpDockWindow* %31 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  %34 = bitcast %struct._GimpDockWindow** %dock_window to i8*
  %35 = bitcast i8* %34 to i8**
  call void @g_object_add_weak_pointer(%struct._GObject* %33, i8** %35)
  %36 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container, align 8
  %call31 = call %struct._GList* @gimp_dock_container_get_docks(%struct._GimpDockContainer* %36)
  store %struct._GList* %call31, %struct._GList** %docks, align 8
  %37 = load %struct._GList*, %struct._GList** %docks, align 8
  store %struct._GList* %37, %struct._GList** %dock_iter, align 8
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc, %if.end.27
  %38 = load %struct._GList*, %struct._GList** %dock_iter, align 8
  %tobool33 = icmp ne %struct._GList* %38, null
  br i1 %tobool33, label %for.body.34, label %for.end

for.body.34:                                      ; preds = %for.cond.32
  %39 = load %struct._GList*, %struct._GList** %dock_iter, align 8
  %data36 = getelementptr inbounds %struct._GList, %struct._GList* %39, i32 0, i32 0
  %40 = load i8*, i8** %data36, align 8
  %41 = bitcast i8* %40 to %struct._GTypeInstance*
  %call37 = call i64 @gimp_dock_get_type() #7
  %call38 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %41, i64 %call37)
  %42 = bitcast %struct._GTypeInstance* %call38 to %struct._GimpDock*
  store %struct._GimpDock* %42, %struct._GimpDock** %dock, align 8
  %43 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %44 = bitcast %struct._GimpDock* %43 to i8*
  %call39 = call i8* @g_object_ref(i8* %44)
  %45 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %46 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  call void @gimp_dock_window_remove_dock(%struct._GimpDockWindow* %45, %struct._GimpDock* %46)
  %47 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns, align 8
  %48 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  call void @gimp_dock_columns_add_dock(%struct._GimpDockColumns* %47, %struct._GimpDock* %48, i32 -1)
  %49 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %50 = bitcast %struct._GimpDock* %49 to i8*
  call void @g_object_unref(i8* %50)
  br label %for.inc

for.inc:                                          ; preds = %for.body.34
  %51 = load %struct._GList*, %struct._GList** %dock_iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %51, i32 0, i32 1
  %52 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %52, %struct._GList** %dock_iter, align 8
  br label %for.cond.32

for.end:                                          ; preds = %for.cond.32
  %53 = load %struct._GList*, %struct._GList** %docks, align 8
  call void @g_list_free(%struct._GList* %53)
  %54 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %tobool40 = icmp ne %struct._GimpDockWindow* %54, null
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %for.end
  %55 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %56 = bitcast %struct._GimpDockWindow* %55 to %struct._GTypeInstance*
  %call42 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 80)
  %57 = bitcast %struct._GTypeInstance* %call42 to %struct._GObject*
  %58 = bitcast %struct._GimpDockWindow** %dock_window to i8*
  %59 = bitcast i8* %58 to i8**
  call void @g_object_remove_weak_pointer(%struct._GObject* %57, i8** %59)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %for.end
  %60 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %61 = bitcast %struct._GimpDockWindow* %60 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %61, %struct._GTypeInstance** %__inst45, align 8
  %call48 = call i64 @gtk_widget_get_type() #7
  store i64 %call48, i64* %__t47, align 8
  %62 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst45, align 8
  %tobool51 = icmp ne %struct._GTypeInstance* %62, null
  br i1 %tobool51, label %if.else.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.43
  store i32 0, i32* %__r50, align 4
  br label %if.end.64

if.else.53:                                       ; preds = %if.end.43
  %63 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst45, align 8
  %g_class54 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %63, i32 0, i32 0
  %64 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class54, align 8
  %tobool55 = icmp ne %struct._GTypeClass* %64, null
  br i1 %tobool55, label %land.lhs.true.56, label %if.else.61

land.lhs.true.56:                                 ; preds = %if.else.53
  %65 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst45, align 8
  %g_class57 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %65, i32 0, i32 0
  %66 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class57, align 8
  %g_type58 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %66, i32 0, i32 0
  %67 = load i64, i64* %g_type58, align 8
  %68 = load i64, i64* %__t47, align 8
  %cmp59 = icmp eq i64 %67, %68
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %land.lhs.true.56
  store i32 1, i32* %__r50, align 4
  br label %if.end.63

if.else.61:                                       ; preds = %land.lhs.true.56, %if.else.53
  %69 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst45, align 8
  %70 = load i64, i64* %__t47, align 8
  %call62 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %69, i64 %70) #8
  store i32 %call62, i32* %__r50, align 4
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.then.60
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.52
  %71 = load i32, i32* %__r50, align 4
  store i32 %71, i32* %tmp65
  %72 = load i32, i32* %tmp65
  %tobool66 = icmp ne i32 %72, 0
  br i1 %tobool66, label %if.then.67, label %if.end.79

if.then.67:                                       ; preds = %if.end.64
  %73 = load %struct._GimpDockContainer*, %struct._GimpDockContainer** %dock_container, align 8
  %call69 = call %struct._GList* @gimp_dock_container_get_docks(%struct._GimpDockContainer* %73)
  store %struct._GList* %call69, %struct._GList** %docks, align 8
  %74 = load %struct._GList*, %struct._GList** %docks, align 8
  %call70 = call i32 @g_list_length(%struct._GList* %74)
  store i32 %call70, i32* %docks_len, align 4
  %75 = load i32, i32* %docks_len, align 4
  %cmp71 = icmp eq i32 %75, 0
  br i1 %cmp71, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %if.then.67
  %call73 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %76 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %77 = bitcast %struct._GimpDockWindow* %76 to %struct._GTypeInstance*
  %call74 = call i64 @gtk_widget_get_type() #7
  %call75 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %77, i64 %call74)
  %78 = bitcast %struct._GTypeInstance* %call75 to %struct._GtkWidget*
  call void @gimp_dialog_factory_remove_dialog(%struct._GimpDialogFactory* %call73, %struct._GtkWidget* %78)
  %79 = load %struct._GimpDockWindow*, %struct._GimpDockWindow** %dock_window, align 8
  %80 = bitcast %struct._GimpDockWindow* %79 to %struct._GTypeInstance*
  %call76 = call i64 @gtk_widget_get_type() #7
  %call77 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %80, i64 %call76)
  %81 = bitcast %struct._GTypeInstance* %call77 to %struct._GtkWidget*
  call void @gtk_widget_destroy(%struct._GtkWidget* %81)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.72, %if.then.67
  %82 = load %struct._GList*, %struct._GList** %docks, align 8
  call void @g_list_free(%struct._GList* %82)
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.end.64
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79, %if.then.12
  %83 = load %struct._GList*, %struct._GList** %dialog_iter, align 8
  %next81 = getelementptr inbounds %struct._GList, %struct._GList* %83, i32 0, i32 1
  %84 = load %struct._GList*, %struct._GList** %next81, align 8
  store %struct._GList* %84, %struct._GList** %dialog_iter, align 8
  br label %for.cond

for.end.82:                                       ; preds = %for.cond
  %85 = load %struct._GList*, %struct._GList** %dialogs, align 8
  call void @g_list_free(%struct._GList* %85)
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_image_window_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_move_shells(%struct._GimpUIConfigurer* %ui_configurer, %struct._GimpImageWindow* %source_image_window, %struct._GimpImageWindow* %target_image_window) #3 {
entry:
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  %source_image_window.addr = alloca %struct._GimpImageWindow*, align 8
  %target_image_window.addr = alloca %struct._GimpImageWindow*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  store %struct._GimpImageWindow* %source_image_window, %struct._GimpImageWindow** %source_image_window.addr, align 8
  store %struct._GimpImageWindow* %target_image_window, %struct._GimpImageWindow** %target_image_window.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %source_image_window.addr, align 8
  %call = call i32 @gimp_image_window_get_n_shells(%struct._GimpImageWindow* %0)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %source_image_window.addr, align 8
  %call1 = call %struct._GimpDisplayShell* @gimp_image_window_get_shell(%struct._GimpImageWindow* %1, i32 0)
  store %struct._GimpDisplayShell* %call1, %struct._GimpDisplayShell** %shell, align 8
  %2 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %3 = bitcast %struct._GimpDisplayShell* %2 to i8*
  %call2 = call i8* @g_object_ref(i8* %3)
  %4 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %source_image_window.addr, align 8
  %5 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_image_window_remove_shell(%struct._GimpImageWindow* %4, %struct._GimpDisplayShell* %5)
  %6 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %target_image_window.addr, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_image_window_add_shell(%struct._GimpImageWindow* %6, %struct._GimpDisplayShell* %7)
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %9 = bitcast %struct._GimpDisplayShell* %8 to i8*
  call void @g_object_unref(i8* %9)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare void @gimp_image_window_destroy(%struct._GimpImageWindow*) #1

declare void @gimp_image_window_set_active_shell(%struct._GimpImageWindow*, %struct._GimpDisplayShell*) #1

declare void @g_list_free(%struct._GList*) #1

declare %struct._GList* @gimp_get_display_iter(%struct._Gimp*) #1

declare %struct._GimpImageWindow* @gimp_display_shell_get_window(%struct._GimpDisplayShell*) #1

declare %struct._GList* @g_list_copy(%struct._GList*) #1

declare %struct._GList* @gimp_dialog_factory_get_open_dialogs(%struct._GimpDialogFactory*) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_window_get_type() #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #5

; Function Attrs: nounwind uwtable
define internal i32 @gimp_ui_configurer_get_relative_window_pos(%struct._GtkWindow* %window_a, %struct._GtkWindow* %window_b) #3 {
entry:
  %window_a.addr = alloca %struct._GtkWindow*, align 8
  %window_b.addr = alloca %struct._GtkWindow*, align 8
  %a_x = alloca i32, align 4
  %b_x = alloca i32, align 4
  store %struct._GtkWindow* %window_a, %struct._GtkWindow** %window_a.addr, align 8
  store %struct._GtkWindow* %window_b, %struct._GtkWindow** %window_b.addr, align 8
  %0 = load %struct._GtkWindow*, %struct._GtkWindow** %window_a.addr, align 8
  call void @gimp_ui_configurer_get_window_center_pos(%struct._GtkWindow* %0, i32* %a_x, i32* null)
  %1 = load %struct._GtkWindow*, %struct._GtkWindow** %window_b.addr, align 8
  call void @gimp_ui_configurer_get_window_center_pos(%struct._GtkWindow* %1, i32* %b_x, i32* null)
  %2 = load i32, i32* %b_x, align 4
  %3 = load i32, i32* %a_x, align 4
  %cmp = icmp slt i32 %2, %3
  %cond = select i1 %cmp, i32 0, i32 2
  ret i32 %cond
}

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare %struct._GimpDockColumns* @gimp_image_window_get_left_docks(%struct._GimpImageWindow*) #1

declare %struct._GimpDockColumns* @gimp_image_window_get_right_docks(%struct._GimpImageWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_container_interface_get_type() #2

declare void @g_object_add_weak_pointer(%struct._GObject*, i8**) #1

declare %struct._GList* @gimp_dock_container_get_docks(%struct._GimpDockContainer*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_dock_get_type() #2

declare i8* @g_object_ref(i8*) #1

declare void @gimp_dock_window_remove_dock(%struct._GimpDockWindow*, %struct._GimpDock*) #1

declare void @gimp_dock_columns_add_dock(%struct._GimpDockColumns*, %struct._GimpDock*, i32) #1

declare void @g_object_unref(i8*) #1

declare void @g_object_remove_weak_pointer(%struct._GObject*, i8**) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

declare i32 @g_list_length(%struct._GList*) #1

declare void @gimp_dialog_factory_remove_dialog(%struct._GimpDialogFactory*, %struct._GtkWidget*) #1

declare void @gtk_widget_destroy(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_get_window_center_pos(%struct._GtkWindow* %window, i32* %out_x, i32* %out_y) #3 {
entry:
  %window.addr = alloca %struct._GtkWindow*, align 8
  %out_x.addr = alloca i32*, align 8
  %out_y.addr = alloca i32*, align 8
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct._GtkWindow* %window, %struct._GtkWindow** %window.addr, align 8
  store i32* %out_x, i32** %out_x.addr, align 8
  store i32* %out_y, i32** %out_y.addr, align 8
  %0 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void @gtk_window_get_position(%struct._GtkWindow* %0, i32* %x, i32* %y)
  %1 = load %struct._GtkWindow*, %struct._GtkWindow** %window.addr, align 8
  call void @gtk_window_get_size(%struct._GtkWindow* %1, i32* %w, i32* %h)
  %2 = load i32*, i32** %out_x.addr, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %x, align 4
  %4 = load i32, i32* %w, align 4
  %div = sdiv i32 %4, 2
  %add = add nsw i32 %3, %div
  %5 = load i32*, i32** %out_x.addr, align 8
  store i32 %add, i32* %5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32*, i32** %out_y.addr, align 8
  %tobool1 = icmp ne i32* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %7 = load i32, i32* %y, align 4
  %8 = load i32, i32* %h, align 4
  %div3 = sdiv i32 %8, 2
  %add4 = add nsw i32 %7, %div3
  %9 = load i32*, i32** %out_y.addr, align 8
  store i32 %add4, i32* %9, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  ret void
}

declare void @gtk_window_get_position(%struct._GtkWindow*, i32*, i32*) #1

declare void @gtk_window_get_size(%struct._GtkWindow*, i32*, i32*) #1

declare i32 @gimp_image_window_get_n_shells(%struct._GimpImageWindow*) #1

declare %struct._GimpDisplayShell* @gimp_image_window_get_shell(%struct._GimpImageWindow*, i32) #1

declare void @gimp_image_window_remove_shell(%struct._GimpImageWindow*, %struct._GimpDisplayShell*) #1

declare void @gimp_image_window_add_shell(%struct._GimpImageWindow*, %struct._GimpDisplayShell*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_separate_docks(%struct._GimpUIConfigurer* %ui_configurer, %struct._GimpImageWindow* %image_window) #3 {
entry:
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  %image_window.addr = alloca %struct._GimpImageWindow*, align 8
  %left_docks = alloca %struct._GimpDockColumns*, align 8
  %right_docks = alloca %struct._GimpDockColumns*, align 8
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  store %struct._GimpImageWindow* %image_window, %struct._GimpImageWindow** %image_window.addr, align 8
  store %struct._GimpDockColumns* null, %struct._GimpDockColumns** %left_docks, align 8
  store %struct._GimpDockColumns* null, %struct._GimpDockColumns** %right_docks, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %image_window.addr, align 8
  %call = call %struct._GimpDockColumns* @gimp_image_window_get_left_docks(%struct._GimpImageWindow* %0)
  store %struct._GimpDockColumns* %call, %struct._GimpDockColumns** %left_docks, align 8
  %1 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %image_window.addr, align 8
  %call1 = call %struct._GimpDockColumns* @gimp_image_window_get_right_docks(%struct._GimpImageWindow* %1)
  store %struct._GimpDockColumns* %call1, %struct._GimpDockColumns** %right_docks, align 8
  %2 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %3 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %left_docks, align 8
  call void @gimp_ui_configurer_move_docks_to_window(%struct._GimpUIConfigurer* %2, %struct._GimpDockColumns* %3, i32 0)
  %4 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %5 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %right_docks, align 8
  call void @gimp_ui_configurer_move_docks_to_window(%struct._GimpUIConfigurer* %4, %struct._GimpDockColumns* %5, i32 2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_separate_shells(%struct._GimpUIConfigurer* %ui_configurer, %struct._GimpImageWindow* %source_image_window) #3 {
entry:
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  %source_image_window.addr = alloca %struct._GimpImageWindow*, align 8
  %active_shell = alloca %struct._GimpDisplayShell*, align 8
  %active_window = alloca %struct._GimpImageWindow*, align 8
  %new_image_window = alloca %struct._GimpImageWindow*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  store %struct._GimpImageWindow* %source_image_window, %struct._GimpImageWindow** %source_image_window.addr, align 8
  %0 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %source_image_window.addr, align 8
  %call = call %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow* %0)
  store %struct._GimpDisplayShell* %call, %struct._GimpDisplayShell** %active_shell, align 8
  store %struct._GimpImageWindow* null, %struct._GimpImageWindow** %active_window, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %source_image_window.addr, align 8
  %call1 = call i32 @gimp_image_window_get_n_shells(%struct._GimpImageWindow* %1)
  %cmp = icmp sgt i32 %call1, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._GimpUIConfigurer*, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  %p = getelementptr inbounds %struct._GimpUIConfigurer, %struct._GimpUIConfigurer* %2, i32 0, i32 1
  %3 = load %struct._GimpUIConfigurerPrivate*, %struct._GimpUIConfigurerPrivate** %p, align 8
  %gimp = getelementptr inbounds %struct._GimpUIConfigurerPrivate, %struct._GimpUIConfigurerPrivate* %3, i32 0, i32 0
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %5 = load %struct._GimpMenuFactory*, %struct._GimpMenuFactory** @global_menu_factory, align 8
  %call2 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call3 = call %struct._GimpImageWindow* @gimp_image_window_new(%struct._Gimp* %4, %struct._GimpImage* null, %struct._GimpMenuFactory* %5, %struct._GimpDialogFactory* %call2)
  store %struct._GimpImageWindow* %call3, %struct._GimpImageWindow** %new_image_window, align 8
  %6 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %source_image_window.addr, align 8
  %call4 = call %struct._GimpDisplayShell* @gimp_image_window_get_shell(%struct._GimpImageWindow* %6, i32 1)
  store %struct._GimpDisplayShell* %call4, %struct._GimpDisplayShell** %shell, align 8
  %7 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %8 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %active_shell, align 8
  %cmp5 = icmp eq %struct._GimpDisplayShell* %7, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %new_image_window, align 8
  store %struct._GimpImageWindow* %9, %struct._GimpImageWindow** %active_window, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %11 = bitcast %struct._GimpDisplayShell* %10 to i8*
  %call6 = call i8* @g_object_ref(i8* %11)
  %12 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %source_image_window.addr, align 8
  %13 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_image_window_remove_shell(%struct._GimpImageWindow* %12, %struct._GimpDisplayShell* %13)
  %14 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %new_image_window, align 8
  %15 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  call void @gimp_image_window_add_shell(%struct._GimpImageWindow* %14, %struct._GimpDisplayShell* %15)
  %16 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %17 = bitcast %struct._GimpDisplayShell* %16 to i8*
  call void @g_object_unref(i8* %17)
  %18 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %new_image_window, align 8
  %19 = bitcast %struct._GimpImageWindow* %18 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #7
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call7)
  %20 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  call void @gtk_widget_set_size_request(%struct._GtkWidget* %20, i32 640, i32 480)
  %21 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %new_image_window, align 8
  %22 = bitcast %struct._GimpImageWindow* %21 to %struct._GTypeInstance*
  %call9 = call i64 @gtk_widget_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 %call9)
  %23 = bitcast %struct._GTypeInstance* %call10 to %struct._GtkWidget*
  call void @gtk_widget_show(%struct._GtkWidget* %23)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %24 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %active_window, align 8
  %cmp11 = icmp eq %struct._GimpImageWindow* %24, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %while.end
  %25 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %source_image_window.addr, align 8
  store %struct._GimpImageWindow* %25, %struct._GimpImageWindow** %active_window, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %while.end
  %26 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %active_window, align 8
  %27 = bitcast %struct._GimpImageWindow* %26 to %struct._GTypeInstance*
  %call14 = call i64 @gtk_window_get_type() #7
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call14)
  %28 = bitcast %struct._GTypeInstance* %call15 to %struct._GtkWindow*
  call void @gtk_window_present(%struct._GtkWindow* %28)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_ui_configurer_move_docks_to_window(%struct._GimpUIConfigurer* %ui_configurer, %struct._GimpDockColumns* %dock_columns, i32 %screen_side_destination) #3 {
entry:
  %ui_configurer.addr = alloca %struct._GimpUIConfigurer*, align 8
  %dock_columns.addr = alloca %struct._GimpDockColumns*, align 8
  %screen_side_destination.addr = alloca i32, align 4
  %screen = alloca %struct._GdkScreen*, align 8
  %docks = alloca %struct._GList*, align 8
  %iter = alloca %struct._GList*, align 8
  %contains_toolbox = alloca i32, align 4
  %dock_window = alloca %struct._GtkWidget*, align 8
  %original_size = alloca %struct._GdkRectangle, align 4
  %dock = alloca %struct._GimpDock*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dock30 = alloca %struct._GimpDock*, align 8
  store %struct._GimpUIConfigurer* %ui_configurer, %struct._GimpUIConfigurer** %ui_configurer.addr, align 8
  store %struct._GimpDockColumns* %dock_columns, %struct._GimpDockColumns** %dock_columns.addr, align 8
  store i32 %screen_side_destination, i32* %screen_side_destination.addr, align 4
  %0 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %1 = bitcast %struct._GimpDockColumns* %0 to %struct._GTypeInstance*
  %call = call i64 @gtk_widget_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GtkWidget*
  %call2 = call %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget* %2)
  store %struct._GdkScreen* %call2, %struct._GdkScreen** %screen, align 8
  %3 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %call3 = call %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns* %3)
  %call4 = call %struct._GList* @g_list_copy(%struct._GList* %call3)
  store %struct._GList* %call4, %struct._GList** %docks, align 8
  store %struct._GList* null, %struct._GList** %iter, align 8
  store i32 0, i32* %contains_toolbox, align 4
  store %struct._GtkWidget* null, %struct._GtkWidget** %dock_window, align 8
  %4 = bitcast %struct._GdkRectangle* %original_size to i8*
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 16, i32 4, i1 false)
  %5 = load %struct._GList*, %struct._GList** %docks, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %7 = bitcast %struct._GimpDockColumns* %6 to %struct._GTypeInstance*
  %call5 = call i64 @gtk_widget_get_type() #7
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %7, i64 %call5)
  %8 = bitcast %struct._GTypeInstance* %call6 to %struct._GtkWidget*
  call void @gtk_widget_get_allocation(%struct._GtkWidget* %8, %struct._GdkRectangle* %original_size)
  %9 = load %struct._GList*, %struct._GList** %docks, align 8
  store %struct._GList* %9, %struct._GList** %iter, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool7 = icmp ne %struct._GList* %10, null
  br i1 %tobool7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct._GList*, %struct._GList** %iter, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %11, i32 0, i32 0
  %12 = load i8*, i8** %data, align 8
  %13 = bitcast i8* %12 to %struct._GTypeInstance*
  %call8 = call i64 @gimp_dock_get_type() #7
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call8)
  %14 = bitcast %struct._GTypeInstance* %call9 to %struct._GimpDock*
  store %struct._GimpDock* %14, %struct._GimpDock** %dock, align 8
  %15 = load %struct._GimpDock*, %struct._GimpDock** %dock, align 8
  %16 = bitcast %struct._GimpDock* %15 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %16, %struct._GTypeInstance** %__inst, align 8
  %call10 = call i64 @gimp_toolbox_get_type() #7
  store i64 %call10, i64* %__t, align 8
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool11 = icmp ne %struct._GTypeInstance* %17, null
  br i1 %tobool11, label %if.else, label %if.then.12

if.then.12:                                       ; preds = %for.body
  store i32 0, i32* %__r, align 4
  br label %if.end.19

if.else:                                          ; preds = %for.body
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool13 = icmp ne %struct._GTypeClass* %19, null
  br i1 %tobool13, label %land.lhs.true, label %if.else.16

land.lhs.true:                                    ; preds = %if.else
  %20 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %23 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %22, %23
  br i1 %cmp, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end.18

if.else.16:                                       ; preds = %land.lhs.true, %if.else
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %25 = load i64, i64* %__t, align 8
  %call17 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %24, i64 %25) #8
  store i32 %call17, i32* %__r, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.16, %if.then.15
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.then.12
  %26 = load i32, i32* %__r, align 4
  store i32 %26, i32* %tmp
  %27 = load i32, i32* %tmp
  %tobool20 = icmp ne i32 %27, 0
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  store i32 1, i32* %contains_toolbox, align 4
  br label %for.end

if.end.22:                                        ; preds = %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %28 = load %struct._GList*, %struct._GList** %iter, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %28, i32 0, i32 1
  %29 = load %struct._GList*, %struct._GList** %next, align 8
  store %struct._GList* %29, %struct._GList** %iter, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %for.cond
  %call23 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %30 = load %struct._GdkScreen*, %struct._GdkScreen** %screen, align 8
  %31 = load i32, i32* %contains_toolbox, align 4
  %tobool24 = icmp ne i32 %31, 0
  %cond = select i1 %tobool24, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0)
  %call25 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory* %call23, %struct._GdkScreen* %30, %struct._GimpUIManager* null, i8* %cond, i32 -1, i32 0)
  store %struct._GtkWidget* %call25, %struct._GtkWidget** %dock_window, align 8
  %32 = load %struct._GList*, %struct._GList** %docks, align 8
  store %struct._GList* %32, %struct._GList** %iter, align 8
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.37, %for.end
  %33 = load %struct._GList*, %struct._GList** %iter, align 8
  %tobool27 = icmp ne %struct._GList* %33, null
  br i1 %tobool27, label %for.body.28, label %for.end.39

for.body.28:                                      ; preds = %for.cond.26
  %34 = load %struct._GList*, %struct._GList** %iter, align 8
  %data31 = getelementptr inbounds %struct._GList, %struct._GList* %34, i32 0, i32 0
  %35 = load i8*, i8** %data31, align 8
  %36 = bitcast i8* %35 to %struct._GTypeInstance*
  %call32 = call i64 @gimp_dock_get_type() #7
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %36, i64 %call32)
  %37 = bitcast %struct._GTypeInstance* %call33 to %struct._GimpDock*
  store %struct._GimpDock* %37, %struct._GimpDock** %dock30, align 8
  %38 = load %struct._GimpDock*, %struct._GimpDock** %dock30, align 8
  %39 = bitcast %struct._GimpDock* %38 to i8*
  %call34 = call i8* @g_object_ref(i8* %39)
  %40 = load %struct._GimpDockColumns*, %struct._GimpDockColumns** %dock_columns.addr, align 8
  %41 = load %struct._GimpDock*, %struct._GimpDock** %dock30, align 8
  call void @gimp_dock_columns_remove_dock(%struct._GimpDockColumns* %40, %struct._GimpDock* %41)
  %42 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  %43 = bitcast %struct._GtkWidget* %42 to %struct._GTypeInstance*
  %call35 = call i64 @gimp_dock_window_get_type() #7
  %call36 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 %call35)
  %44 = bitcast %struct._GTypeInstance* %call36 to %struct._GimpDockWindow*
  %45 = load %struct._GimpDock*, %struct._GimpDock** %dock30, align 8
  call void @gimp_dock_window_add_dock(%struct._GimpDockWindow* %44, %struct._GimpDock* %45, i32 -1)
  %46 = load %struct._GimpDock*, %struct._GimpDock** %dock30, align 8
  %47 = bitcast %struct._GimpDock* %46 to i8*
  call void @g_object_unref(i8* %47)
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.28
  %48 = load %struct._GList*, %struct._GList** %iter, align 8
  %next38 = getelementptr inbounds %struct._GList, %struct._GList* %48, i32 0, i32 1
  %49 = load %struct._GList*, %struct._GList** %next38, align 8
  store %struct._GList* %49, %struct._GList** %iter, align 8
  br label %for.cond.26

for.end.39:                                       ; preds = %for.cond.26
  %50 = load i32, i32* %screen_side_destination.addr, align 4
  %cmp40 = icmp eq i32 %50, 0
  br i1 %cmp40, label %if.then.41, label %if.else.45

if.then.41:                                       ; preds = %for.end.39
  %51 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  %52 = bitcast %struct._GtkWidget* %51 to %struct._GTypeInstance*
  %call42 = call i64 @gtk_window_get_type() #7
  %call43 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call42)
  %53 = bitcast %struct._GTypeInstance* %call43 to %struct._GtkWindow*
  %call44 = call i32 @gtk_window_parse_geometry(%struct._GtkWindow* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.53

if.else.45:                                       ; preds = %for.end.39
  %54 = load i32, i32* %screen_side_destination.addr, align 4
  %cmp46 = icmp eq i32 %54, 2
  br i1 %cmp46, label %if.then.47, label %if.else.51

if.then.47:                                       ; preds = %if.else.45
  %55 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  %56 = bitcast %struct._GtkWidget* %55 to %struct._GTypeInstance*
  %call48 = call i64 @gtk_window_get_type() #7
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %56, i64 %call48)
  %57 = bitcast %struct._GTypeInstance* %call49 to %struct._GtkWindow*
  %call50 = call i32 @gtk_window_parse_geometry(%struct._GtkWindow* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.52

if.else.51:                                       ; preds = %if.else.45
  br label %do.body

do.body:                                          ; preds = %if.else.51
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0), i32 393, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_ui_configurer_move_docks_to_window, i32 0, i32 0), i8* null) #9
  unreachable

do.end:                                           ; No predecessors!
  br label %if.end.52

if.end.52:                                        ; preds = %do.end, %if.then.47
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52, %if.then.41
  %58 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  %59 = bitcast %struct._GtkWidget* %58 to %struct._GTypeInstance*
  %call54 = call i64 @gtk_window_get_type() #7
  %call55 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 %call54)
  %60 = bitcast %struct._GTypeInstance* %call55 to %struct._GtkWindow*
  %width = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %original_size, i32 0, i32 2
  %61 = load i32, i32* %width, align 4
  %height = getelementptr inbounds %struct._GdkRectangle, %struct._GdkRectangle* %original_size, i32 0, i32 3
  %62 = load i32, i32* %height, align 4
  call void @gtk_window_set_default_size(%struct._GtkWindow* %60, i32 %61, i32 %62)
  %63 = load %struct._GtkWidget*, %struct._GtkWidget** %dock_window, align 8
  call void @gtk_widget_show(%struct._GtkWidget* %63)
  %64 = load %struct._GList*, %struct._GList** %docks, align 8
  call void @g_list_free(%struct._GList* %64)
  br label %return

return:                                           ; preds = %if.end.53, %if.then
  ret void
}

declare %struct._GdkScreen* @gtk_widget_get_screen(%struct._GtkWidget*) #1

declare %struct._GList* @gimp_dock_columns_get_docks(%struct._GimpDockColumns*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @gtk_widget_get_allocation(%struct._GtkWidget*, %struct._GdkRectangle*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_toolbox_get_type() #2

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_new(%struct._GimpDialogFactory*, %struct._GdkScreen*, %struct._GimpUIManager*, i8*, i32, i32) #1

declare void @gimp_dock_columns_remove_dock(%struct._GimpDockColumns*, %struct._GimpDock*) #1

declare void @gimp_dock_window_add_dock(%struct._GimpDockWindow*, %struct._GimpDock*, i32) #1

declare i32 @gtk_window_parse_geometry(%struct._GtkWindow*, i8*) #1

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #6

declare void @gtk_window_set_default_size(%struct._GtkWindow*, i32, i32) #1

declare void @gtk_widget_show(%struct._GtkWidget*) #1

declare %struct._GimpDisplayShell* @gimp_image_window_get_active_shell(%struct._GimpImageWindow*) #1

declare %struct._GimpImageWindow* @gimp_image_window_new(%struct._Gimp*, %struct._GimpImage*, %struct._GimpMenuFactory*, %struct._GimpDialogFactory*) #1

declare void @gtk_widget_set_size_request(%struct._GtkWidget*, i32, i32) #1

declare void @gtk_window_present(%struct._GtkWindow*) #1

declare void @gimp_display_shell_appearance_update(%struct._GimpDisplayShell*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
