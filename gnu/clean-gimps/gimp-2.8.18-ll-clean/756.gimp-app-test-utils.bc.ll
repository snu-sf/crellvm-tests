; ModuleID = './app/tests/gimp-app-test-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
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
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpLayer = type { %struct._GimpDrawable, double, i32, i32, %struct._GimpLayerMask*, %struct._GeglNode*, %struct.anon }
%struct._GimpDrawable = type { %struct._GimpItem, %struct._GimpDrawablePrivate* }
%struct._GimpItem = type { %struct._GimpViewable }
%struct._GimpDrawablePrivate = type opaque
%struct._GimpLayerMask = type opaque
%struct._GeglNode = type opaque
%struct.anon = type { %struct._GimpDrawable*, i32, %struct._BoundSeg*, i32 }
%struct._BoundSeg = type opaque
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
%struct._GimpUIManager = type { %struct._GtkUIManager, i8*, %struct._Gimp*, %struct._GList* }
%struct._GtkUIManager = type { %struct._GObject, %struct._GtkUIManagerPrivate* }
%struct._GtkUIManagerPrivate = type opaque
%struct._GimpDisplay = type { %struct._GimpObject, %struct._Gimp*, %struct._GimpDisplayConfig* }
%struct._GimpDisplayConfig = type opaque
%struct._GimpDisplayShell = type { %struct._GtkBox, %struct._GimpDisplay*, %struct._GimpUIManager*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct._GimpZoomModel*, double, i32, i32, i32, double, i32, i32, i32, %struct._Selection*, %struct._GList*, %struct._GtkWidget*, %struct._GtkAdjustment*, %struct._GtkAdjustment*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._cairo_surface*, %struct._cairo_surface*, %struct._cairo_pattern*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, %struct._GimpCanvasItem*, i32, i8*, i8*, i32, i32, %struct._GdkPixbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GimpColorDisplayStack*, i32, %struct._GtkWidget*, i32, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, %struct._GimpTreeHandler*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, %struct._GimpDrawable*, %struct._GimpRGB, %struct._GimpMotionBuffer*, %struct._GQueue* }
%struct._GtkBox = type { %struct._GtkContainer, %struct._GList*, i16, i8 }
%struct._GtkContainer = type { %struct._GtkWidget, %struct._GtkWidget*, i24 }
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
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpMotionBuffer = type opaque
%struct._GQueue = type { %struct._GList*, %struct._GList*, i32 }
%struct._GimpImageWindow = type { %struct._GimpWindow }
%struct._GimpWindow = type { %struct._GtkWindow, %struct._GtkWidget* }
%struct._GtkWindow = type <{ %struct._GtkBin, i8*, i8*, i8*, i8*, %struct._GtkWidget*, %struct._GtkWidget*, %struct._GtkWindow*, %struct._GtkWindowGeometryInfo*, %struct._GdkDrawable*, %struct._GtkWindowGroup*, i16, i32, [2 x i8], i32, i32, i32, i32, i32, i32, %struct._GdkScreen* }>
%struct._GtkBin = type { %struct._GtkContainer, %struct._GtkWidget* }
%struct._GtkWindowGeometryInfo = type opaque
%struct._GtkWindowGroup = type { %struct._GObject, %struct._GSList* }
%struct._GdkScreen = type { %struct._GObject, i8, [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], [32 x %struct._GdkGC*], %struct._cairo_font_options*, double }
%struct._cairo_font_options = type opaque
%struct._GimpDialogFactory = type { %struct._GimpObject, %struct._GimpDialogFactoryPrivate* }
%struct._GimpDialogFactoryPrivate = type opaque

@.str = private unnamed_addr constant [134 x i8] c"*\0A*  The env var %s is not set, you are probably running\0A*  in a debugger. Set it manually, e.g.:\0A*\0A*    set env %s=%s/source/gimp\0A*\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"GIMP2_DIRECTORY\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"GIMP_TESTING_ABS_TOP_SRCDIR\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"menus\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"GIMP_TESTING_MENUS_DIR\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"layer1\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"image\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"image-new\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"gimp-image-new-dialog\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"gimp-app-test-utils.c\00", align 1
@__func__.gimp_test_utils_create_image_from_dalog = private unnamed_addr constant [40 x i8] c"gimp_test_utils_create_image_from_dalog\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"n_images == n_initial_images + 1\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"==\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_test_utils_set_env_to_subpath(i8* %root_env_var, i8* %subdir, i8* %target_env_var) #0 {
entry:
  %root_env_var.addr = alloca i8*, align 8
  %subdir.addr = alloca i8*, align 8
  %target_env_var.addr = alloca i8*, align 8
  %root_dir = alloca i8*, align 8
  %target_dir = alloca i8*, align 8
  store i8* %root_env_var, i8** %root_env_var.addr, align 8
  store i8* %subdir, i8** %subdir.addr, align 8
  store i8* %target_env_var, i8** %target_env_var.addr, align 8
  store i8* null, i8** %root_dir, align 8
  store i8* null, i8** %target_dir, align 8
  %0 = load i8*, i8** %root_env_var.addr, align 8
  %call = call i8* @g_getenv(i8* %0)
  store i8* %call, i8** %root_dir, align 8
  %1 = load i8*, i8** %root_dir, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %root_env_var.addr, align 8
  %3 = load i8*, i8** %root_env_var.addr, align 8
  %call1 = call i8* @g_get_home_dir()
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str, i32 0, i32 0), i8* %2, i8* %3, i8* %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %root_dir, align 8
  %5 = load i8*, i8** %subdir.addr, align 8
  %call2 = call noalias i8* (i8*, ...) @g_build_filename(i8* %4, i8* %5, i8* null)
  store i8* %call2, i8** %target_dir, align 8
  %6 = load i8*, i8** %target_env_var.addr, align 8
  %7 = load i8*, i8** %target_dir, align 8
  %call3 = call i32 @g_setenv(i8* %6, i8* %7, i32 1)
  %8 = load i8*, i8** %target_dir, align 8
  call void @g_free(i8* %8)
  ret void
}

declare i8* @g_getenv(i8*) #1

declare void @g_printerr(i8*, ...) #1

declare i8* @g_get_home_dir() #1

declare noalias i8* @g_build_filename(i8*, ...) #1

declare i32 @g_setenv(i8*, i8*, i32) #1

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_test_utils_set_gimp2_directory(i8* %root_env_var, i8* %subdir) #0 {
entry:
  %root_env_var.addr = alloca i8*, align 8
  %subdir.addr = alloca i8*, align 8
  store i8* %root_env_var, i8** %root_env_var.addr, align 8
  store i8* %subdir, i8** %subdir.addr, align 8
  %0 = load i8*, i8** %root_env_var.addr, align 8
  %1 = load i8*, i8** %subdir.addr, align 8
  call void @gimp_test_utils_set_env_to_subpath(i8* %0, i8* %1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_test_utils_setup_menus_dir() #0 {
entry:
  call void @gimp_test_utils_set_env_to_subpath(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_test_utils_create_image(%struct._Gimp* %gimp, i32 %width, i32 %height) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %image = alloca %struct._GimpImage*, align 8
  %layer = alloca %struct._GimpLayer*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load i32, i32* %width.addr, align 4
  %2 = load i32, i32* %height.addr, align 4
  %call = call %struct._GimpImage* @gimp_image_new(%struct._Gimp* %0, i32 %1, i32 %2, i32 0)
  store %struct._GimpImage* %call, %struct._GimpImage** %image, align 8
  %3 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %4 = load i32, i32* %width.addr, align 4
  %5 = load i32, i32* %height.addr, align 4
  %call1 = call %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage* %3, i32 %4, i32 %5, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), double 1.000000e+00, i32 0)
  store %struct._GimpLayer* %call1, %struct._GimpLayer** %layer, align 8
  %6 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %7 = load %struct._GimpLayer*, %struct._GimpLayer** %layer, align 8
  %call2 = call i32 @gimp_image_add_layer(%struct._GimpImage* %6, %struct._GimpLayer* %7, %struct._GimpLayer* null, i32 0, i32 0)
  %8 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %9 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  %call3 = call %struct._GimpObject* @gimp_create_display(%struct._Gimp* %8, %struct._GimpImage* %9, i32 0, double 1.000000e+00)
  ret void
}

declare %struct._GimpImage* @gimp_image_new(%struct._Gimp*, i32, i32, i32) #1

declare %struct._GimpLayer* @gimp_layer_new(%struct._GimpImage*, i32, i32, i32, i8*, double, i32) #1

declare i32 @gimp_image_add_layer(%struct._GimpImage*, %struct._GimpLayer*, %struct._GimpLayer*, i32, i32) #1

declare %struct._GimpObject* @gimp_create_display(%struct._Gimp*, %struct._GimpImage*, i32, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_test_utils_synthesize_key_event(%struct._GtkWidget* %widget, i32 %keyval) #0 {
entry:
  %widget.addr = alloca %struct._GtkWidget*, align 8
  %keyval.addr = alloca i32, align 4
  store %struct._GtkWidget* %widget, %struct._GtkWidget** %widget.addr, align 8
  store i32 %keyval, i32* %keyval.addr, align 4
  %0 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %0)
  %1 = load i32, i32* %keyval.addr, align 4
  %call1 = call i32 @gdk_test_simulate_key(%struct._GdkDrawable* %call, i32 -1, i32 -1, i32 %1, i32 0, i32 8)
  %2 = load %struct._GtkWidget*, %struct._GtkWidget** %widget.addr, align 8
  %call2 = call %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget* %2)
  %3 = load i32, i32* %keyval.addr, align 4
  %call3 = call i32 @gdk_test_simulate_key(%struct._GdkDrawable* %call2, i32 -1, i32 -1, i32 %3, i32 0, i32 9)
  ret void
}

declare i32 @gdk_test_simulate_key(%struct._GdkDrawable*, i32, i32, i32, i32, i32) #1

declare %struct._GdkDrawable* @gtk_widget_get_window(%struct._GtkWidget*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpUIManager* @gimp_test_utils_get_ui_manager(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %display = alloca %struct._GimpDisplay*, align 8
  %shell = alloca %struct._GimpDisplayShell*, align 8
  %toplevel = alloca %struct._GtkWidget*, align 8
  %image_window = alloca %struct._GimpImageWindow*, align 8
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpDisplay* null, %struct._GimpDisplay** %display, align 8
  store %struct._GimpDisplayShell* null, %struct._GimpDisplayShell** %shell, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %toplevel, align 8
  store %struct._GimpImageWindow* null, %struct._GimpImageWindow** %image_window, align 8
  store %struct._GimpUIManager* null, %struct._GimpUIManager** %ui_manager, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GimpObject* @gimp_get_empty_display(%struct._Gimp* %0)
  %1 = bitcast %struct._GimpObject* %call to %struct._GTypeInstance*
  %call1 = call i64 @gimp_display_get_type() #3
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call1)
  %2 = bitcast %struct._GTypeInstance* %call2 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %2, %struct._GimpDisplay** %display, align 8
  %3 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %tobool = icmp ne %struct._GimpDisplay* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call3 = call %struct._GList* @gimp_get_display_iter(%struct._Gimp* %4)
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call3, i32 0, i32 0
  %5 = load i8*, i8** %data, align 8
  %6 = bitcast i8* %5 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_display_get_type() #3
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %6, i64 %call4)
  %7 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpDisplay*
  store %struct._GimpDisplay* %7, %struct._GimpDisplay** %display, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpDisplay*, %struct._GimpDisplay** %display, align 8
  %call6 = call %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay* %8)
  store %struct._GimpDisplayShell* %call6, %struct._GimpDisplayShell** %shell, align 8
  %9 = load %struct._GimpDisplayShell*, %struct._GimpDisplayShell** %shell, align 8
  %10 = bitcast %struct._GimpDisplayShell* %9 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_widget_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %10, i64 %call7)
  %11 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWidget*
  %call9 = call %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget* %11)
  store %struct._GtkWidget* %call9, %struct._GtkWidget** %toplevel, align 8
  %12 = load %struct._GtkWidget*, %struct._GtkWidget** %toplevel, align 8
  %13 = bitcast %struct._GtkWidget* %12 to %struct._GTypeInstance*
  %call10 = call i64 @gimp_image_window_get_type() #3
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call10)
  %14 = bitcast %struct._GTypeInstance* %call11 to %struct._GimpImageWindow*
  store %struct._GimpImageWindow* %14, %struct._GimpImageWindow** %image_window, align 8
  %15 = load %struct._GimpImageWindow*, %struct._GimpImageWindow** %image_window, align 8
  %call12 = call %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow* %15)
  store %struct._GimpUIManager* %call12, %struct._GimpUIManager** %ui_manager, align 8
  %16 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  ret %struct._GimpUIManager* %16
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GimpObject* @gimp_get_empty_display(%struct._Gimp*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_get_type() #2

declare %struct._GList* @gimp_get_display_iter(%struct._Gimp*) #1

declare %struct._GimpDisplayShell* @gimp_display_get_shell(%struct._GimpDisplay*) #1

declare %struct._GtkWidget* @gtk_widget_get_toplevel(%struct._GtkWidget*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_widget_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_image_window_get_type() #2

declare %struct._GimpUIManager* @gimp_image_window_get_ui_manager(%struct._GimpImageWindow*) #1

; Function Attrs: nounwind uwtable
define %struct._GimpImage* @gimp_test_utils_create_image_from_dalog(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %image = alloca %struct._GimpImage*, align 8
  %new_image_dialog = alloca %struct._GtkWidget*, align 8
  %n_initial_images = alloca i32, align 4
  %n_images = alloca i32, align 4
  %tries_left = alloca i32, align 4
  %ui_manager = alloca %struct._GimpUIManager*, align 8
  %__n1 = alloca i64, align 8
  %__n2 = alloca i64, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GimpImage* null, %struct._GimpImage** %image, align 8
  store %struct._GtkWidget* null, %struct._GtkWidget** %new_image_dialog, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call = call %struct._GList* @gimp_get_image_iter(%struct._Gimp* %0)
  %call1 = call i32 @g_list_length(%struct._GList* %call)
  store i32 %call1, i32* %n_initial_images, align 4
  store i32 -1, i32* %n_images, align 4
  store i32 100, i32* %tries_left, align 4
  %1 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call2 = call %struct._GimpUIManager* @gimp_test_utils_get_ui_manager(%struct._Gimp* %1)
  store %struct._GimpUIManager* %call2, %struct._GimpUIManager** %ui_manager, align 8
  %2 = load %struct._GimpUIManager*, %struct._GimpUIManager** %ui_manager, align 8
  %call3 = call i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  call void @gimp_test_run_mainloop_until_idle()
  %call4 = call %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton()
  %call5 = call %struct._GdkScreen* @gdk_screen_get_default()
  %call6 = call %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory* %call4, %struct._GdkScreen* %call5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 -1)
  store %struct._GtkWidget* %call6, %struct._GtkWidget** %new_image_dialog, align 8
  %3 = load %struct._GtkWidget*, %struct._GtkWidget** %new_image_dialog, align 8
  %4 = bitcast %struct._GtkWidget* %3 to %struct._GTypeInstance*
  %call7 = call i64 @gtk_window_get_type() #3
  %call8 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call7)
  %5 = bitcast %struct._GTypeInstance* %call8 to %struct._GtkWindow*
  %call9 = call %struct._GtkWidget* @gtk_window_get_focus(%struct._GtkWindow* %5)
  %call10 = call i32 @gtk_widget_activate(%struct._GtkWidget* %call9)
  br label %do.body

do.body:                                          ; preds = %land.end, %entry
  call void @g_usleep(i64 20000)
  call void @gimp_test_run_mainloop_until_idle()
  %6 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call11 = call %struct._GList* @gimp_get_image_iter(%struct._Gimp* %6)
  %call12 = call i32 @g_list_length(%struct._GList* %call11)
  store i32 %call12, i32* %n_images, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %7 = load i32, i32* %tries_left, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %tries_left, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %8 = load i32, i32* %n_images, align 4
  %9 = load i32, i32* %n_initial_images, align 4
  %add = add i32 %9, 1
  %cmp = icmp ne i32 %8, %add
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %10 = phi i1 [ false, %do.cond ], [ %cmp, %land.rhs ]
  br i1 %10, label %do.body, label %do.end

do.end:                                           ; preds = %land.end
  br label %do.body.13

do.body.13:                                       ; preds = %do.end
  %11 = load i32, i32* %n_images, align 4
  %conv = zext i32 %11 to i64
  store i64 %conv, i64* %__n1, align 8
  %12 = load i32, i32* %n_initial_images, align 4
  %add14 = add i32 %12, 1
  %conv15 = zext i32 %add14 to i64
  store i64 %conv15, i64* %__n2, align 8
  %13 = load i64, i64* %__n1, align 8
  %14 = load i64, i64* %__n2, align 8
  %cmp16 = icmp eq i64 %13, %14
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %do.body.13
  br label %if.end

if.else:                                          ; preds = %do.body.13
  %15 = load i64, i64* %__n1, align 8
  %conv18 = sitofp i64 %15 to x86_fp80
  %16 = load i64, i64* %__n2, align 8
  %conv19 = sitofp i64 %16 to x86_fp80
  call void @g_assertion_message_cmpnum(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0), i32 252, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__func__.gimp_test_utils_create_image_from_dalog, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i32 0, i32 0), x86_fp80 %conv18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), x86_fp80 %conv19, i8 signext 105)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end.21

do.end.21:                                        ; preds = %if.end
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call22 = call %struct._GList* @gimp_get_image_iter(%struct._Gimp* %17)
  %data = getelementptr inbounds %struct._GList, %struct._GList* %call22, i32 0, i32 0
  %18 = load i8*, i8** %data, align 8
  %19 = bitcast i8* %18 to %struct._GTypeInstance*
  %call23 = call i64 @gimp_image_get_type() #3
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 %call23)
  %20 = bitcast %struct._GTypeInstance* %call24 to %struct._GimpImage*
  store %struct._GimpImage* %20, %struct._GimpImage** %image, align 8
  %21 = load %struct._GimpImage*, %struct._GimpImage** %image, align 8
  ret %struct._GimpImage* %21
}

declare i32 @g_list_length(%struct._GList*) #1

declare %struct._GList* @gimp_get_image_iter(%struct._Gimp*) #1

declare i32 @gimp_ui_manager_activate_action(%struct._GimpUIManager*, i8*, i8*) #1

declare void @gimp_test_run_mainloop_until_idle() #1

declare %struct._GtkWidget* @gimp_dialog_factory_dialog_raise(%struct._GimpDialogFactory*, %struct._GdkScreen*, i8*, i32) #1

declare %struct._GimpDialogFactory* @gimp_dialog_factory_get_singleton() #1

declare %struct._GdkScreen* @gdk_screen_get_default() #1

declare i32 @gtk_widget_activate(%struct._GtkWidget*) #1

declare %struct._GtkWidget* @gtk_window_get_focus(%struct._GtkWindow*) #1

; Function Attrs: nounwind readnone
declare i64 @gtk_window_get_type() #2

declare void @g_usleep(i64) #1

declare void @g_assertion_message_cmpnum(i8*, i8*, i32, i8*, i8*, x86_fp80, i8*, x86_fp80, i8 signext) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_get_type() #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
