; ModuleID = './app/config/gimpdisplayconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDisplayConfigClass = type { %struct._GimpCoreConfigClass }
%struct._GimpCoreConfigClass = type { %struct._GimpBaseConfigClass }
%struct._GimpBaseConfigClass = type { %struct._GObjectClass }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpTemplate = type opaque
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpDisplayOptions = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpRGB, i32 }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_display_config_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"GimpDisplayConfig\00", align 1
@gimp_display_config_parent_class = internal global i8* null, align 8
@GimpDisplayConfig_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"transparency-size\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Sets the size of the checkerboard used to display transparency.\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"transparency-type\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"Sets the manner in which transparency is displayed in images.\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"snap-distance\00", align 1
@.str.6 = private unnamed_addr constant [72 x i8] c"This is the distance in pixels where Guide and Grid snapping activates.\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"marching-ants-speed\00", align 1
@.str.8 = private unnamed_addr constant [119 x i8] c"Speed of marching ants in the selection outline.  This value is in milliseconds (less time indicates faster marching).\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"resize-windows-on-zoom\00", align 1
@.str.10 = private unnamed_addr constant [101 x i8] c"When enabled, the image window will automatically resize itself when zooming into and out of images.\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"resize-windows-on-resize\00", align 1
@.str.12 = private unnamed_addr constant [106 x i8] c"When enabled, the image window will automatically resize itself whenever the physical image size changes.\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"default-dot-for-dot\00", align 1
@.str.14 = private unnamed_addr constant [97 x i8] c"When enabled, this will ensure that each pixel of an image gets mapped to a pixel on the screen.\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"initial-zoom-to-fit\00", align 1
@.str.16 = private unnamed_addr constant [138 x i8] c"When enabled, this will ensure that the full image is visible after a file is opened, otherwise it will be displayed with a scale of 1:1.\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"perfect-mouse\00", align 1
@.str.18 = private unnamed_addr constant [302 x i8] c"When enabled, the X server is queried for the mouse's current position on each motion event, rather than relying on the position hint.  This means painting with large brushes should be more accurate, but it may be slower.  Conversely, on some X servers enabling this option results in faster painting.\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"cursor-mode\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"Sets the type of mouse pointers to use.\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"cursor-updating\00", align 1
@.str.22 = private unnamed_addr constant [141 x i8] c"Context-dependent mouse pointers are helpful.  They are enabled by default.  However, they require overhead that you may want to do without.\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"show-brush-outline\00", align 1
@.str.24 = private unnamed_addr constant [82 x i8] c"When enabled, all paint tools will show a preview of the current brush's outline.\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"show-paint-tool-cursor\00", align 1
@.str.26 = private unnamed_addr constant [87 x i8] c"When enabled, the mouse pointer will be shown over the image while using a paint tool.\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"image-title-format\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"Sets the text to appear in image window titles.\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"%D*%f-%p.%i (%t, %L) %wx%h\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"image-status-format\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"Sets the text to appear in image window status bars.\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"%n (%m)\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"monitor-xresolution\00", align 1
@.str.34 = private unnamed_addr constant [165 x i8] c"Sets the monitor's horizontal resolution, in dots per inch.  If set to 0, forces the X server to be queried for both horizontal and vertical resolution information.\00", align 1
@.str.35 = private unnamed_addr constant [20 x i8] c"monitor-yresolution\00", align 1
@.str.36 = private unnamed_addr constant [163 x i8] c"Sets the monitor's vertical resolution, in dots per inch.  If set to 0, forces the X server to be queried for both horizontal and vertical resolution information.\00", align 1
@.str.37 = private unnamed_addr constant [41 x i8] c"monitor-resolution-from-windowing-system\00", align 1
@.str.38 = private unnamed_addr constant [78 x i8] c"When enabled, GIMP will use the monitor resolution from the windowing system.\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"navigation-preview-size\00", align 1
@.str.40 = private unnamed_addr constant [97 x i8] c"Sets the size of the navigation preview available in the lower right corner of the image window.\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"default-view\00", align 1
@.str.42 = private unnamed_addr constant [46 x i8] c"Sets the default settings for the image view.\00", align 1
@.str.43 = private unnamed_addr constant [24 x i8] c"default-fullscreen-view\00", align 1
@.str.44 = private unnamed_addr constant [75 x i8] c"Sets the default settings used when an image is viewed in fullscreen mode.\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"default-snap-to-guides\00", align 1
@.str.46 = private unnamed_addr constant [48 x i8] c"Snap to guides by default in new image windows.\00", align 1
@.str.47 = private unnamed_addr constant [21 x i8] c"default-snap-to-grid\00", align 1
@.str.48 = private unnamed_addr constant [50 x i8] c"Snap to the grid by default in new image windows.\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"default-snap-to-canvas\00", align 1
@.str.50 = private unnamed_addr constant [57 x i8] c"Snap to the canvas edge by default in new image windows.\00", align 1
@.str.51 = private unnamed_addr constant [21 x i8] c"default-snap-to-path\00", align 1
@.str.52 = private unnamed_addr constant [57 x i8] c"Snap to the active path by default in new image windows.\00", align 1
@.str.53 = private unnamed_addr constant [18 x i8] c"activate-on-focus\00", align 1
@.str.54 = private unnamed_addr constant [153 x i8] c"When enabled, an image will become the active image when its image window receives the focus. This is useful for window managers using \22click to focus\22.\00", align 1
@.str.55 = private unnamed_addr constant [17 x i8] c"space-bar-action\00", align 1
@.str.56 = private unnamed_addr constant [62 x i8] c"What to do when the space bar is pressed in the image window.\00", align 1
@.str.57 = private unnamed_addr constant [13 x i8] c"zoom-quality\00", align 1
@.str.58 = private unnamed_addr constant [72 x i8] c"There's a tradeoff between speed and quality of the zoomed-out display.\00", align 1
@.str.59 = private unnamed_addr constant [18 x i8] c"use-event-history\00", align 1
@.str.60 = private unnamed_addr constant [101 x i8] c"Bugs in event history buffer are frequent so in case of cursor offset problems turning it off helps.\00", align 1
@.str.61 = private unnamed_addr constant [17 x i8] c"confirm-on-close\00", align 1
@.str.62 = private unnamed_addr constant [10 x i8] c"xor-color\00", align 1
@.str.63 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.64 = private unnamed_addr constant [20 x i8] c"gimpdisplayconfig.c\00", align 1
@.str.65 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"notify\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_display_config_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_display_config_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_display_config_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_core_config_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_display_config_class_intern_init to void (i8*, i8*)*), i32 568, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDisplayConfig*)* @gimp_display_config_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_display_config_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_display_config_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_core_config_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_config_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_display_config_parent_class, align 8
  %1 = load i32, i32* @GimpDisplayConfig_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDisplayConfig_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDisplayConfigClass*
  call void @gimp_display_config_class_init(%struct._GimpDisplayConfigClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_config_init(%struct._GimpDisplayConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpDisplayConfig*, align 8
  store %struct._GimpDisplayConfig* %config, %struct._GimpDisplayConfig** %config.addr, align 8
  %call = call i64 @gimp_display_options_get_type() #5
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpDisplayOptions*
  %1 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %1, i32 0, i32 20
  store %struct._GimpDisplayOptions* %0, %struct._GimpDisplayOptions** %default_view, align 8
  %2 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_view2 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %2, i32 0, i32 20
  %3 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view2, align 8
  %4 = bitcast %struct._GimpDisplayOptions* %3 to i8*
  %5 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %6 = bitcast %struct._GimpDisplayConfig* %5 to i8*
  %call3 = call i64 @g_signal_connect_data(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, i8*)* @gimp_display_config_view_notify to void ()*), i8* %6, void (i8*, %struct._GClosure*)* null, i32 0)
  %call4 = call i64 @gimp_display_options_get_type() #5
  %call5 = call i8* (i64, i8*, ...) @g_object_new(i64 %call4, i8* null)
  %7 = bitcast i8* %call5 to %struct._GimpDisplayOptions*
  %8 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_fullscreen_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %8, i32 0, i32 21
  store %struct._GimpDisplayOptions* %7, %struct._GimpDisplayOptions** %default_fullscreen_view, align 8
  %9 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %default_fullscreen_view6 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %9, i32 0, i32 21
  %10 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view6, align 8
  %11 = bitcast %struct._GimpDisplayOptions* %10 to i8*
  %12 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %config.addr, align 8
  %13 = bitcast %struct._GimpDisplayConfig* %12 to i8*
  %call7 = call i64 @g_signal_connect_data(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.67, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, i8*)* @gimp_display_config_fullscreen_notify to void ()*), i8* %13, void (i8*, %struct._GClosure*)* null, i32 0)
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_config_class_init(%struct._GimpDisplayConfigClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpDisplayConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpDisplayConfigClass* %klass, %struct._GimpDisplayConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpDisplayConfigClass*, %struct._GimpDisplayConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDisplayConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = bitcast %struct._GimpRGB* %color to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 32, i32 8, i1 false)
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_display_config_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_check_size_get_type() #5
  %call2 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i32 0, i32 0), i64 %call1, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call2)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_check_type_get_type() #5
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i32 0, i32 0), i64 %call3, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 2, %struct._GParamSpec* %call4)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 255, i32 8, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 3, %struct._GParamSpec* %call5)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.8, i32 0, i32 0), i32 10, i32 10000, i32 200, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 4, %struct._GParamSpec* %call6)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 5, %struct._GParamSpec* %call7)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 6, %struct._GParamSpec* %call8)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 7, %struct._GParamSpec* %call9)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 8, %struct._GParamSpec* %call10)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([302 x i8], [302 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 9, %struct._GParamSpec* %call11)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call i64 @gimp_cursor_mode_get_type() #5
  %call13 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i32 0, i32 0), i64 %call12, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 10, %struct._GParamSpec* %call13)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([141 x i8], [141 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 11, %struct._GParamSpec* %call14)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 12, %struct._GParamSpec* %call15)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call16 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.26, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 13, %struct._GParamSpec* %call16)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call17 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 14, %struct._GParamSpec* %call17)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call18 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 15, %struct._GParamSpec* %call18)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call19 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.34, i32 0, i32 0), double 5.000000e-03, double 6.553600e+04, double 9.600000e+01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 16, %struct._GParamSpec* %call19)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call20 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.36, i32 0, i32 0), double 5.000000e-03, double 6.553600e+04, double 9.600000e+01, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 17, %struct._GParamSpec* %call20)
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call21 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.37, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.38, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 18, %struct._GParamSpec* %call21)
  %25 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call22 = call i64 @gimp_view_size_get_type() #5
  %call23 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.40, i32 0, i32 0), i64 %call22, i32 32, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %25, i32 19, %struct._GParamSpec* %call23)
  %26 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call24 = call i64 @gimp_display_options_get_type() #5
  %call25 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.42, i32 0, i32 0), i64 %call24, i32 995)
  call void @g_object_class_install_property(%struct._GObjectClass* %26, i32 20, %struct._GParamSpec* %call25)
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call26 = call i64 @gimp_display_options_get_type() #5
  %call27 = call %struct._GParamSpec* @g_param_spec_object(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.44, i32 0, i32 0), i64 %call26, i32 995)
  call void @g_object_class_install_property(%struct._GObjectClass* %27, i32 21, %struct._GParamSpec* %call27)
  %28 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call28 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.46, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %28, i32 22, %struct._GParamSpec* %call28)
  %29 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call29 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.48, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %29, i32 23, %struct._GParamSpec* %call29)
  %30 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call30 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.50, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %30, i32 24, %struct._GParamSpec* %call30)
  %31 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call31 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.52, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %31, i32 25, %struct._GParamSpec* %call31)
  %32 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call32 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.53, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.54, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %32, i32 26, %struct._GParamSpec* %call32)
  %33 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call33 = call i64 @gimp_space_bar_action_get_type() #5
  %call34 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.55, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.56, i32 0, i32 0), i64 %call33, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %33, i32 27, %struct._GParamSpec* %call34)
  %34 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call35 = call i64 @gimp_zoom_quality_get_type() #5
  %call36 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.58, i32 0, i32 0), i64 %call35, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %34, i32 28, %struct._GParamSpec* %call36)
  %35 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call37 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.60, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %35, i32 29, %struct._GParamSpec* %call37)
  %36 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call38 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.61, i32 0, i32 0), i8* null, i8* null, i32 1, i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %36, i32 30, %struct._GParamSpec* %call38)
  %37 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call39 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.62, i32 0, i32 0), i8* null, i8* null, i32 0, %struct._GimpRGB* %color, i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %37, i32 31, %struct._GParamSpec* %call39)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @gimp_display_config_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %display_config = alloca %struct._GimpDisplayConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayConfig*
  store %struct._GimpDisplayConfig* %2, %struct._GimpDisplayConfig** %display_config, align 8
  %3 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %image_title_format = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %3, i32 0, i32 14
  %4 = load i8*, i8** %image_title_format, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %image_status_format = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %5, i32 0, i32 15
  %6 = load i8*, i8** %image_status_format, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %7, i32 0, i32 20
  %8 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view, align 8
  %tobool = icmp ne %struct._GimpDisplayOptions* %8, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_view2 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %9, i32 0, i32 20
  %10 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view2, align 8
  %11 = bitcast %struct._GimpDisplayOptions* %10 to i8*
  call void @g_object_unref(i8* %11)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_fullscreen_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %12, i32 0, i32 21
  %13 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view, align 8
  %tobool3 = icmp ne %struct._GimpDisplayOptions* %13, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %14 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_fullscreen_view5 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %14, i32 0, i32 21
  %15 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view5, align 8
  %16 = bitcast %struct._GimpDisplayOptions* %15 to i8*
  call void @g_object_unref(i8* %16)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %17 = load i8*, i8** @gimp_display_config_parent_class, align 8
  %18 = bitcast i8* %17 to %struct._GTypeClass*
  %call7 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %18, i64 80)
  %19 = bitcast %struct._GTypeClass* %call7 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %19, i32 0, i32 6
  %20 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %21 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %20(%struct._GObject* %21)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %display_config = alloca %struct._GimpDisplayConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayConfig*
  store %struct._GimpDisplayConfig* %2, %struct._GimpDisplayConfig** %display_config, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.7
    i32 5, label %sw.bb.9
    i32 6, label %sw.bb.11
    i32 7, label %sw.bb.13
    i32 8, label %sw.bb.15
    i32 9, label %sw.bb.17
    i32 10, label %sw.bb.19
    i32 11, label %sw.bb.21
    i32 12, label %sw.bb.23
    i32 13, label %sw.bb.25
    i32 14, label %sw.bb.27
    i32 15, label %sw.bb.30
    i32 16, label %sw.bb.33
    i32 17, label %sw.bb.35
    i32 18, label %sw.bb.37
    i32 19, label %sw.bb.39
    i32 20, label %sw.bb.41
    i32 21, label %sw.bb.46
    i32 22, label %sw.bb.54
    i32 23, label %sw.bb.56
    i32 24, label %sw.bb.58
    i32 25, label %sw.bb.60
    i32 26, label %sw.bb.62
    i32 27, label %sw.bb.64
    i32 28, label %sw.bb.66
    i32 29, label %sw.bb.68
    i32 30, label %sw.bb.70
    i32 31, label %sw.bb.70
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %transparency_size = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %5, i32 0, i32 1
  store i32 %call2, i32* %transparency_size, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_enum(%struct._GValue* %6)
  %7 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %transparency_type = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %7, i32 0, i32 2
  store i32 %call4, i32* %transparency_type, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_int(%struct._GValue* %8)
  %9 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %snap_distance = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %9, i32 0, i32 3
  store i32 %call6, i32* %snap_distance, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_int(%struct._GValue* %10)
  %11 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %marching_ants_speed = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %11, i32 0, i32 4
  store i32 %call8, i32* %marching_ants_speed, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %12)
  %13 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %resize_windows_on_zoom = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %13, i32 0, i32 5
  store i32 %call10, i32* %resize_windows_on_zoom, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %14)
  %15 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %resize_windows_on_resize = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %15, i32 0, i32 6
  store i32 %call12, i32* %resize_windows_on_resize, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_boolean(%struct._GValue* %16)
  %17 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_dot_for_dot = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %17, i32 0, i32 7
  store i32 %call14, i32* %default_dot_for_dot, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_boolean(%struct._GValue* %18)
  %19 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %initial_zoom_to_fit = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %19, i32 0, i32 8
  store i32 %call16, i32* %initial_zoom_to_fit, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %20)
  %21 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %perfect_mouse = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %21, i32 0, i32 9
  store i32 %call18, i32* %perfect_mouse, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i32 @g_value_get_enum(%struct._GValue* %22)
  %23 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %cursor_mode = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %23, i32 0, i32 10
  store i32 %call20, i32* %cursor_mode, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i32 @g_value_get_boolean(%struct._GValue* %24)
  %25 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %cursor_updating = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %25, i32 0, i32 11
  store i32 %call22, i32* %cursor_updating, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call i32 @g_value_get_boolean(%struct._GValue* %26)
  %27 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %show_brush_outline = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %27, i32 0, i32 12
  store i32 %call24, i32* %show_brush_outline, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call26 = call i32 @g_value_get_boolean(%struct._GValue* %28)
  %29 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %show_paint_tool_cursor = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %29, i32 0, i32 13
  store i32 %call26, i32* %show_paint_tool_cursor, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %30 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %image_title_format = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %30, i32 0, i32 14
  %31 = load i8*, i8** %image_title_format, align 8
  call void @g_free(i8* %31)
  %32 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call28 = call i8* @g_value_dup_string(%struct._GValue* %32)
  %33 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %image_title_format29 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %33, i32 0, i32 14
  store i8* %call28, i8** %image_title_format29, align 8
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %34 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %image_status_format = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %34, i32 0, i32 15
  %35 = load i8*, i8** %image_status_format, align 8
  call void @g_free(i8* %35)
  %36 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call31 = call i8* @g_value_dup_string(%struct._GValue* %36)
  %37 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %image_status_format32 = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %37, i32 0, i32 15
  store i8* %call31, i8** %image_status_format32, align 8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %38 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call34 = call double @g_value_get_double(%struct._GValue* %38)
  %39 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_xres = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %39, i32 0, i32 16
  store double %call34, double* %monitor_xres, align 8
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call36 = call double @g_value_get_double(%struct._GValue* %40)
  %41 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_yres = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %41, i32 0, i32 17
  store double %call36, double* %monitor_yres, align 8
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %42 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call38 = call i32 @g_value_get_boolean(%struct._GValue* %42)
  %43 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_res_from_gdk = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %43, i32 0, i32 18
  store i32 %call38, i32* %monitor_res_from_gdk, align 4
  br label %sw.epilog

sw.bb.39:                                         ; preds = %entry
  %44 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call40 = call i32 @g_value_get_enum(%struct._GValue* %44)
  %45 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %nav_preview_size = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %45, i32 0, i32 19
  store i32 %call40, i32* %nav_preview_size, align 4
  br label %sw.epilog

sw.bb.41:                                         ; preds = %entry
  %46 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call42 = call i8* @g_value_get_object(%struct._GValue* %46)
  %tobool = icmp ne i8* %call42, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.41
  %47 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call43 = call i8* @g_value_get_object(%struct._GValue* %47)
  %48 = bitcast i8* %call43 to %struct._GObject*
  %49 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %49, i32 0, i32 20
  %50 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view, align 8
  %51 = bitcast %struct._GimpDisplayOptions* %50 to %struct._GTypeInstance*
  %call44 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 80)
  %52 = bitcast %struct._GTypeInstance* %call44 to %struct._GObject*
  %call45 = call i32 @gimp_config_sync(%struct._GObject* %48, %struct._GObject* %52, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.41
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %53 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call47 = call i8* @g_value_get_object(%struct._GValue* %53)
  %tobool48 = icmp ne i8* %call47, null
  br i1 %tobool48, label %if.then.49, label %if.end.53

if.then.49:                                       ; preds = %sw.bb.46
  %54 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call50 = call i8* @g_value_get_object(%struct._GValue* %54)
  %55 = bitcast i8* %call50 to %struct._GObject*
  %56 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_fullscreen_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %56, i32 0, i32 21
  %57 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view, align 8
  %58 = bitcast %struct._GimpDisplayOptions* %57 to %struct._GTypeInstance*
  %call51 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %58, i64 80)
  %59 = bitcast %struct._GTypeInstance* %call51 to %struct._GObject*
  %call52 = call i32 @gimp_config_sync(%struct._GObject* %55, %struct._GObject* %59, i32 0)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.49, %sw.bb.46
  br label %sw.epilog

sw.bb.54:                                         ; preds = %entry
  %60 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call55 = call i32 @g_value_get_boolean(%struct._GValue* %60)
  %61 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_snap_to_guides = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %61, i32 0, i32 22
  store i32 %call55, i32* %default_snap_to_guides, align 4
  br label %sw.epilog

sw.bb.56:                                         ; preds = %entry
  %62 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call57 = call i32 @g_value_get_boolean(%struct._GValue* %62)
  %63 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_snap_to_grid = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %63, i32 0, i32 23
  store i32 %call57, i32* %default_snap_to_grid, align 4
  br label %sw.epilog

sw.bb.58:                                         ; preds = %entry
  %64 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call59 = call i32 @g_value_get_boolean(%struct._GValue* %64)
  %65 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_snap_to_canvas = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %65, i32 0, i32 24
  store i32 %call59, i32* %default_snap_to_canvas, align 4
  br label %sw.epilog

sw.bb.60:                                         ; preds = %entry
  %66 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call61 = call i32 @g_value_get_boolean(%struct._GValue* %66)
  %67 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_snap_to_path = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %67, i32 0, i32 25
  store i32 %call61, i32* %default_snap_to_path, align 4
  br label %sw.epilog

sw.bb.62:                                         ; preds = %entry
  %68 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call63 = call i32 @g_value_get_boolean(%struct._GValue* %68)
  %69 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %activate_on_focus = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %69, i32 0, i32 26
  store i32 %call63, i32* %activate_on_focus, align 4
  br label %sw.epilog

sw.bb.64:                                         ; preds = %entry
  %70 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call65 = call i32 @g_value_get_enum(%struct._GValue* %70)
  %71 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %space_bar_action = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %71, i32 0, i32 27
  store i32 %call65, i32* %space_bar_action, align 4
  br label %sw.epilog

sw.bb.66:                                         ; preds = %entry
  %72 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call67 = call i32 @g_value_get_enum(%struct._GValue* %72)
  %73 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %zoom_quality = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %73, i32 0, i32 28
  store i32 %call67, i32* %zoom_quality, align 4
  br label %sw.epilog

sw.bb.68:                                         ; preds = %entry
  %74 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call69 = call i32 @g_value_get_boolean(%struct._GValue* %74)
  %75 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %use_event_history = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %75, i32 0, i32 29
  store i32 %call69, i32* %use_event_history, align 4
  br label %sw.epilog

sw.bb.70:                                         ; preds = %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %76 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %76, %struct._GObject** %_glib__object, align 8
  %77 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %77, %struct._GParamSpec** %_glib__pspec, align 8
  %78 = load i32, i32* %property_id.addr, align 4
  store i32 %78, i32* %_glib__property_id, align 4
  %79 = load i32, i32* %_glib__property_id, align 4
  %80 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %80, i32 0, i32 1
  %81 = load i8*, i8** %name, align 8
  %82 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %83 = bitcast %struct._GParamSpec* %82 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %83, i32 0, i32 0
  %84 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %84, i32 0, i32 0
  %85 = load i64, i64* %g_type, align 8
  %call71 = call i8* @g_type_name(i64 %85)
  %86 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %87 = bitcast %struct._GObject* %86 to %struct._GTypeInstance*
  %g_class72 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %87, i32 0, i32 0
  %88 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class72, align 8
  %g_type73 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %88, i32 0, i32 0
  %89 = load i64, i64* %g_type73, align 8
  %call74 = call i8* @g_type_name(i64 %89)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i32 424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 %79, i8* %81, i8* %call71, i8* %call74)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.70, %sw.bb.68, %sw.bb.66, %sw.bb.64, %sw.bb.62, %sw.bb.60, %sw.bb.58, %sw.bb.56, %sw.bb.54, %if.end.53, %if.end, %sw.bb.39, %sw.bb.37, %sw.bb.35, %sw.bb.33, %sw.bb.30, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %display_config = alloca %struct._GimpDisplayConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayConfig*
  store %struct._GimpDisplayConfig* %2, %struct._GimpDisplayConfig** %display_config, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
    i32 6, label %sw.bb.6
    i32 7, label %sw.bb.7
    i32 8, label %sw.bb.8
    i32 9, label %sw.bb.9
    i32 10, label %sw.bb.10
    i32 11, label %sw.bb.11
    i32 12, label %sw.bb.12
    i32 13, label %sw.bb.13
    i32 14, label %sw.bb.14
    i32 15, label %sw.bb.15
    i32 16, label %sw.bb.16
    i32 17, label %sw.bb.17
    i32 18, label %sw.bb.18
    i32 19, label %sw.bb.19
    i32 20, label %sw.bb.20
    i32 21, label %sw.bb.21
    i32 22, label %sw.bb.22
    i32 23, label %sw.bb.23
    i32 24, label %sw.bb.24
    i32 25, label %sw.bb.25
    i32 26, label %sw.bb.26
    i32 27, label %sw.bb.27
    i32 28, label %sw.bb.28
    i32 29, label %sw.bb.29
    i32 30, label %sw.bb.30
    i32 31, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %transparency_size = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %transparency_size, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %transparency_type = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %8, i32 0, i32 2
  %9 = load i32, i32* %transparency_type, align 4
  call void @g_value_set_enum(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %snap_distance = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %11, i32 0, i32 3
  %12 = load i32, i32* %snap_distance, align 4
  call void @g_value_set_int(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %marching_ants_speed = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %14, i32 0, i32 4
  %15 = load i32, i32* %marching_ants_speed, align 4
  call void @g_value_set_int(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %resize_windows_on_zoom = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %17, i32 0, i32 5
  %18 = load i32, i32* %resize_windows_on_zoom, align 4
  call void @g_value_set_boolean(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %resize_windows_on_resize = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %20, i32 0, i32 6
  %21 = load i32, i32* %resize_windows_on_resize, align 4
  call void @g_value_set_boolean(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_dot_for_dot = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %23, i32 0, i32 7
  %24 = load i32, i32* %default_dot_for_dot, align 4
  call void @g_value_set_boolean(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %initial_zoom_to_fit = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %26, i32 0, i32 8
  %27 = load i32, i32* %initial_zoom_to_fit, align 4
  call void @g_value_set_boolean(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %perfect_mouse = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %29, i32 0, i32 9
  %30 = load i32, i32* %perfect_mouse, align 4
  call void @g_value_set_boolean(%struct._GValue* %28, i32 %30)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %cursor_mode = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %32, i32 0, i32 10
  %33 = load i32, i32* %cursor_mode, align 4
  call void @g_value_set_enum(%struct._GValue* %31, i32 %33)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %cursor_updating = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %35, i32 0, i32 11
  %36 = load i32, i32* %cursor_updating, align 4
  call void @g_value_set_boolean(%struct._GValue* %34, i32 %36)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %38 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %show_brush_outline = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %38, i32 0, i32 12
  %39 = load i32, i32* %show_brush_outline, align 4
  call void @g_value_set_boolean(%struct._GValue* %37, i32 %39)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %41 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %show_paint_tool_cursor = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %41, i32 0, i32 13
  %42 = load i32, i32* %show_paint_tool_cursor, align 4
  call void @g_value_set_boolean(%struct._GValue* %40, i32 %42)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %44 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %image_title_format = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %44, i32 0, i32 14
  %45 = load i8*, i8** %image_title_format, align 8
  call void @g_value_set_string(%struct._GValue* %43, i8* %45)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %46 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %47 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %image_status_format = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %47, i32 0, i32 15
  %48 = load i8*, i8** %image_status_format, align 8
  call void @g_value_set_string(%struct._GValue* %46, i8* %48)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %49 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %50 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_xres = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %50, i32 0, i32 16
  %51 = load double, double* %monitor_xres, align 8
  call void @g_value_set_double(%struct._GValue* %49, double %51)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %52 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %53 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_yres = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %53, i32 0, i32 17
  %54 = load double, double* %monitor_yres, align 8
  call void @g_value_set_double(%struct._GValue* %52, double %54)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %55 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %56 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %monitor_res_from_gdk = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %56, i32 0, i32 18
  %57 = load i32, i32* %monitor_res_from_gdk, align 4
  call void @g_value_set_boolean(%struct._GValue* %55, i32 %57)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %58 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %59 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %nav_preview_size = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %59, i32 0, i32 19
  %60 = load i32, i32* %nav_preview_size, align 4
  call void @g_value_set_enum(%struct._GValue* %58, i32 %60)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %61 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %62 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %62, i32 0, i32 20
  %63 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_view, align 8
  %64 = bitcast %struct._GimpDisplayOptions* %63 to i8*
  call void @g_value_set_object(%struct._GValue* %61, i8* %64)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %65 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %66 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_fullscreen_view = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %66, i32 0, i32 21
  %67 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %default_fullscreen_view, align 8
  %68 = bitcast %struct._GimpDisplayOptions* %67 to i8*
  call void @g_value_set_object(%struct._GValue* %65, i8* %68)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %69 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %70 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_snap_to_guides = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %70, i32 0, i32 22
  %71 = load i32, i32* %default_snap_to_guides, align 4
  call void @g_value_set_boolean(%struct._GValue* %69, i32 %71)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %72 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %73 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_snap_to_grid = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %73, i32 0, i32 23
  %74 = load i32, i32* %default_snap_to_grid, align 4
  call void @g_value_set_boolean(%struct._GValue* %72, i32 %74)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %75 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %76 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_snap_to_canvas = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %76, i32 0, i32 24
  %77 = load i32, i32* %default_snap_to_canvas, align 4
  call void @g_value_set_boolean(%struct._GValue* %75, i32 %77)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %78 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %79 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %default_snap_to_path = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %79, i32 0, i32 25
  %80 = load i32, i32* %default_snap_to_path, align 4
  call void @g_value_set_boolean(%struct._GValue* %78, i32 %80)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %81 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %82 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %activate_on_focus = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %82, i32 0, i32 26
  %83 = load i32, i32* %activate_on_focus, align 4
  call void @g_value_set_boolean(%struct._GValue* %81, i32 %83)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %84 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %85 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %space_bar_action = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %85, i32 0, i32 27
  %86 = load i32, i32* %space_bar_action, align 4
  call void @g_value_set_enum(%struct._GValue* %84, i32 %86)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %87 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %88 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %zoom_quality = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %88, i32 0, i32 28
  %89 = load i32, i32* %zoom_quality, align 4
  call void @g_value_set_enum(%struct._GValue* %87, i32 %89)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %90 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %91 = load %struct._GimpDisplayConfig*, %struct._GimpDisplayConfig** %display_config, align 8
  %use_event_history = getelementptr inbounds %struct._GimpDisplayConfig, %struct._GimpDisplayConfig* %91, i32 0, i32 29
  %92 = load i32, i32* %use_event_history, align 4
  call void @g_value_set_boolean(%struct._GValue* %90, i32 %92)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %93 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %93, %struct._GObject** %_glib__object, align 8
  %94 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %94, %struct._GParamSpec** %_glib__pspec, align 8
  %95 = load i32, i32* %property_id.addr, align 4
  store i32 %95, i32* %_glib__property_id, align 4
  %96 = load i32, i32* %_glib__property_id, align 4
  %97 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %97, i32 0, i32 1
  %98 = load i8*, i8** %name, align 8
  %99 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %100 = bitcast %struct._GParamSpec* %99 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %100, i32 0, i32 0
  %101 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %101, i32 0, i32 0
  %102 = load i64, i64* %g_type, align 8
  %call31 = call i8* @g_type_name(i64 %102)
  %103 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %104 = bitcast %struct._GObject* %103 to %struct._GTypeInstance*
  %g_class32 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %104, i32 0, i32 0
  %105 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class32, align 8
  %g_type33 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %105, i32 0, i32 0
  %106 = load i64, i64* %g_type33, align 8
  %call34 = call i8* @g_type_name(i64 %106)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.64, i32 0, i32 0), i32 533, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.65, i32 0, i32 0), i32 %96, i8* %98, i8* %call31, i8* %call34)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_check_size_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_check_type_get_type() #2

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_cursor_mode_get_type() #2

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_view_size_get_type() #2

declare %struct._GParamSpec* @g_param_spec_object(i8*, i8*, i8*, i64, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_options_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_space_bar_action_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_zoom_quality_get_type() #2

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

declare void @g_object_unref(i8*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

declare i8* @g_value_get_object(%struct._GValue*) #1

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.66, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

declare void @g_value_set_object(%struct._GValue*, i8*) #1

declare i8* @g_object_new(i64, i8*, ...) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_config_view_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, i8* %data) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_config_fullscreen_notify(%struct._GObject* %object, %struct._GParamSpec* %pspec, i8* %data) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.43, i32 0, i32 0))
  ret void
}

declare void @g_object_notify(%struct._GObject*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
