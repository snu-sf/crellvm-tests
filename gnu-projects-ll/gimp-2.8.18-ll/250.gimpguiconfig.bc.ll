; ModuleID = './app/config/gimpguiconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpGuiConfigClass = type { %struct._GimpDisplayConfigClass }
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
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpTemplate = type opaque
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpDisplayOptions = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_gui_config_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"GimpGuiConfig\00", align 1
@gimp_gui_config_parent_class = internal global i8* null, align 8
@GimpGuiConfig_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"move-tool-changes-active\00", align 1
@.str.2 = private unnamed_addr constant [125 x i8] c"If enabled, the move tool sets the edited layer or path as active.  This used to be the default behaviour in older versions.\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"image-map-tool-max-recent\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"How many recent settings to keep around in color correction tools\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"trust-dirty-flag\00", align 1
@.str.6 = private unnamed_addr constant [90 x i8] c"When enabled, GIMP will not save an image if it has not been changed since it was opened.\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"save-device-status\00", align 1
@.str.8 = private unnamed_addr constant [75 x i8] c"Remember the current tool, pattern, color, and brush across GIMP sessions.\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"save-session-info\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"Save the positions and sizes of the main dialogs when GIMP exits.\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"restore-session\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"Let GIMP try to restore your last saved session on each startup.\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"save-tool-options\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"Save the tool options when GIMP exits.\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"show-tooltips\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"Show a tooltip when the pointer hovers over an item.\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"tearoff-menus\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"When enabled, menus can be torn off.\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"can-change-accels\00", align 1
@.str.20 = private unnamed_addr constant [128 x i8] c"When enabled, you can change keyboard shortcuts for menu items by hitting a key combination while the menu item is highlighted.\00", align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"save-accels\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"Save changed keyboard shortcuts when GIMP exits.\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"restore-accels\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"Restore saved keyboard shortcuts on each GIMP startup.\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"last-opened-size\00", align 1
@.str.26 = private unnamed_addr constant [67 x i8] c"How many recently opened image filenames to keep on the File menu.\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"max-new-image-size\00", align 1
@.str.28 = private unnamed_addr constant [123 x i8] c"GIMP will warn the user if an attempt is made to create an image that would take more memory than the size specified here.\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"toolbox-color-area\00", align 1
@.str.30 = private unnamed_addr constant [66 x i8] c"Show the current foreground and background colors in the toolbox.\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"toolbox-foo-area\00", align 1
@.str.32 = private unnamed_addr constant [72 x i8] c"Show the currently selected brush, pattern and gradient in the toolbox.\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"toolbox-image-area\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"Show the currently active image in the toolbox.\00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"toolbox-wilber\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"Show the GIMP mascot at the top of the toolbox.\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"themes\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"theme-path\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"Sets the theme search path.\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"theme\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"The name of the theme to use.\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"use-help\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"When enabled, pressing F1 will open the help browser.\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"show-help-button\00", align 1
@.str.46 = private unnamed_addr constant [163 x i8] c"When enabled, dialogs will show a help button that gives access to the related help page.  Without this button, the help page can still be reached by pressing F1.\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c"help-locales\00", align 1
@.str.48 = private unnamed_addr constant [205 x i8] c"Specifies the language preferences used by the help system. This is a colon-separated list of language identifiers with decreasing priority. If empty, the language is taken from the user's locale setting.\00", align 1
@.str.49 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"help-browser\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"Sets the browser used by the help system.\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"user-manual-online\00", align 1
@.str.53 = private unnamed_addr constant [116 x i8] c"When enabled, the online user manual will be used by the help system. Otherwise the locally installed copy is used.\00", align 1
@.str.54 = private unnamed_addr constant [23 x i8] c"user-manual-online-uri\00", align 1
@.str.55 = private unnamed_addr constant [89 x i8] c"The location of the online user manual. This is used if 'user-manual-online' is enabled.\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"http://docs.gimp.org/2.8\00", align 1
@.str.57 = private unnamed_addr constant [17 x i8] c"dock-window-hint\00", align 1
@.str.58 = private unnamed_addr constant [154 x i8] c"The window type hint that is set on dock windows and the toolbox window. This may affect the way your window manager decorates and handles these windows.\00", align 1
@.str.59 = private unnamed_addr constant [14 x i8] c"cursor-format\00", align 1
@.str.60 = private unnamed_addr constant [49 x i8] c"Sets the pixel format to use for mouse pointers.\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"cursor-handedness\00", align 1
@.str.62 = private unnamed_addr constant [44 x i8] c"Sets the handedness for cursor positioning.\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"hide-docks\00", align 1
@.str.64 = private unnamed_addr constant [58 x i8] c"Hide docks and other windows, leaving only image windows.\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"single-window-mode\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"Use GIMP in a single-window mode.\00", align 1
@.str.67 = private unnamed_addr constant [15 x i8] c"last-tip-shown\00", align 1
@.str.68 = private unnamed_addr constant [24 x i8] c"info-window-per-display\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"menu-mnemonics\00", align 1
@.str.70 = private unnamed_addr constant [15 x i8] c"show-tool-tips\00", align 1
@.str.71 = private unnamed_addr constant [10 x i8] c"show-tips\00", align 1
@.str.72 = private unnamed_addr constant [20 x i8] c"toolbox-window-hint\00", align 1
@.str.73 = private unnamed_addr constant [16 x i8] c"transient-docks\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"web-browser\00", align 1
@.str.75 = private unnamed_addr constant [20 x i8] c"not used any longer\00", align 1
@.str.76 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.77 = private unnamed_addr constant [16 x i8] c"gimpguiconfig.c\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.79 = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_gui_config_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_gui_config_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_gui_config_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_display_config_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_gui_config_class_intern_init to void (i8*, i8*)*), i32 736, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpGuiConfig*)* @gimp_gui_config_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_gui_config_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_gui_config_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_display_config_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gui_config_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_gui_config_parent_class, align 8
  %1 = load i32, i32* @GimpGuiConfig_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpGuiConfig_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpGuiConfigClass*
  call void @gimp_gui_config_class_init(%struct._GimpGuiConfigClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gui_config_init(%struct._GimpGuiConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpGuiConfig*, align 8
  store %struct._GimpGuiConfig* %config, %struct._GimpGuiConfig** %config.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gui_config_class_init(%struct._GimpGuiConfigClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpGuiConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %path = alloca i8*, align 8
  store %struct._GimpGuiConfigClass* %klass, %struct._GimpGuiConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpGuiConfigClass*, %struct._GimpGuiConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpGuiConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_gui_config_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_gui_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_gui_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call1)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 255, i32 10, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 2, %struct._GParamSpec* %call2)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 3, %struct._GParamSpec* %call3)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 4, %struct._GParamSpec* %call4)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 5, %struct._GParamSpec* %call5)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 6, %struct._GParamSpec* %call6)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 7, %struct._GParamSpec* %call7)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 8, %struct._GParamSpec* %call8)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 9, %struct._GParamSpec* %call9)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 10, %struct._GParamSpec* %call10)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call11 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 11, %struct._GParamSpec* %call11)
  %17 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %17, i32 12, %struct._GParamSpec* %call12)
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.26, i32 0, i32 0), i32 0, i32 1024, i32 10, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 13, %struct._GParamSpec* %call13)
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call %struct._GParamSpec* @gimp_param_spec_memsize(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.28, i32 0, i32 0), i64 0, i64 4398046511104, i64 134217728, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 14, %struct._GParamSpec* %call14)
  %20 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call15 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.30, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %20, i32 15, %struct._GParamSpec* %call15)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call16 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.32, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 16, %struct._GParamSpec* %call16)
  %22 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call17 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %22, i32 17, %struct._GParamSpec* %call17)
  %23 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call18 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %23, i32 18, %struct._GParamSpec* %call18)
  %call19 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0))
  store i8* %call19, i8** %path, align 8
  %24 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %25 = load i8*, i8** %path, align 8
  %call20 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.38, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0), i32 3, i8* %25, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %24, i32 19, %struct._GParamSpec* %call20)
  %26 = load i8*, i8** %path, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call21 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %27, i32 20, %struct._GParamSpec* %call21)
  %28 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call22 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.44, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %28, i32 21, %struct._GParamSpec* %call22)
  %29 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call23 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.46, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %29, i32 22, %struct._GParamSpec* %call23)
  %30 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call24 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.47, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([205 x i8], [205 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.49, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %30, i32 23, %struct._GParamSpec* %call24)
  %31 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call25 = call i64 @gimp_help_browser_type_get_type() #5
  %call26 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.50, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.51, i32 0, i32 0), i64 %call25, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %31, i32 24, %struct._GParamSpec* %call26)
  %32 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call27 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.53, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %32, i32 25, %struct._GParamSpec* %call27)
  %33 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call28 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.54, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.56, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %33, i32 26, %struct._GParamSpec* %call28)
  %34 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call29 = call i64 @gimp_window_hint_get_type() #5
  %call30 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.57, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str.58, i32 0, i32 0), i64 %call29, i32 1, i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %34, i32 27, %struct._GParamSpec* %call30)
  %35 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call31 = call i64 @gimp_cursor_format_get_type() #5
  %call32 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.59, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.60, i32 0, i32 0), i64 %call31, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %35, i32 28, %struct._GParamSpec* %call32)
  %36 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call33 = call i64 @gimp_handedness_get_type() #5
  %call34 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.62, i32 0, i32 0), i64 %call33, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %36, i32 29, %struct._GParamSpec* %call34)
  %37 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call35 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.64, i32 0, i32 0), i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %37, i32 30, %struct._GParamSpec* %call35)
  %38 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call36 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.65, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.66, i32 0, i32 0), i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %38, i32 31, %struct._GParamSpec* %call36)
  %39 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call37 = call %struct._GParamSpec* @g_param_spec_int(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.67, i32 0, i32 0), i8* null, i8* null, i32 0, i32 2147483647, i32 0, i32 231)
  call void @g_object_class_install_property(%struct._GObjectClass* %39, i32 32, %struct._GParamSpec* %call37)
  %40 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call38 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.68, i32 0, i32 0), i8* null, i8* null, i32 0, i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %40, i32 33, %struct._GParamSpec* %call38)
  %41 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call39 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0), i8* null, i8* null, i32 1, i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %41, i32 34, %struct._GParamSpec* %call39)
  %42 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call40 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.70, i32 0, i32 0), i8* null, i8* null, i32 0, i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %42, i32 35, %struct._GParamSpec* %call40)
  %43 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call41 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.71, i32 0, i32 0), i8* null, i8* null, i32 0, i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %43, i32 36, %struct._GParamSpec* %call41)
  %44 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call42 = call i64 @gimp_window_hint_get_type() #5
  %call43 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.72, i32 0, i32 0), i8* null, i8* null, i64 %call42, i32 1, i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %44, i32 37, %struct._GParamSpec* %call43)
  %45 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call44 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.73, i32 0, i32 0), i8* null, i8* null, i32 0, i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %45, i32 38, %struct._GParamSpec* %call44)
  %46 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call45 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), i8* null, i8* null, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), i32 8679)
  call void @g_object_class_install_property(%struct._GObjectClass* %46, i32 39, %struct._GParamSpec* %call45)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_gui_config_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %gui_config = alloca %struct._GimpGuiConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %2, %struct._GimpGuiConfig** %gui_config, align 8
  %3 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %theme_path = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %3, i32 0, i32 19
  %4 = load i8*, i8** %theme_path, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %theme = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %5, i32 0, i32 20
  %6 = load i8*, i8** %theme, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %help_locales = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %7, i32 0, i32 23
  %8 = load i8*, i8** %help_locales, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %web_browser = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %9, i32 0, i32 25
  %10 = load i8*, i8** %web_browser, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %user_manual_online_uri = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %11, i32 0, i32 27
  %12 = load i8*, i8** %user_manual_online_uri, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** @gimp_gui_config_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gui_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %gui_config = alloca %struct._GimpGuiConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %2, %struct._GimpGuiConfig** %gui_config, align 8
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
    i32 15, label %sw.bb.29
    i32 16, label %sw.bb.31
    i32 17, label %sw.bb.33
    i32 18, label %sw.bb.35
    i32 19, label %sw.bb.37
    i32 20, label %sw.bb.40
    i32 21, label %sw.bb.43
    i32 22, label %sw.bb.45
    i32 23, label %sw.bb.47
    i32 24, label %sw.bb.50
    i32 25, label %sw.bb.52
    i32 26, label %sw.bb.54
    i32 27, label %sw.bb.57
    i32 28, label %sw.bb.59
    i32 29, label %sw.bb.61
    i32 30, label %sw.bb.63
    i32 31, label %sw.bb.65
    i32 32, label %sw.bb.67
    i32 33, label %sw.bb.69
    i32 34, label %sw.bb.69
    i32 35, label %sw.bb.69
    i32 36, label %sw.bb.69
    i32 37, label %sw.bb.69
    i32 38, label %sw.bb.69
    i32 39, label %sw.bb.69
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %4)
  %5 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %move_tool_changes_active = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %5, i32 0, i32 1
  store i32 %call2, i32* %move_tool_changes_active, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_int(%struct._GValue* %6)
  %7 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %image_map_tool_max_recent = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %7, i32 0, i32 2
  store i32 %call4, i32* %image_map_tool_max_recent, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %8)
  %9 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %trust_dirty_flag = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %9, i32 0, i32 3
  store i32 %call6, i32* %trust_dirty_flag, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_boolean(%struct._GValue* %10)
  %11 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_device_status = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %11, i32 0, i32 4
  store i32 %call8, i32* %save_device_status, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %12)
  %13 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_session_info = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %13, i32 0, i32 5
  store i32 %call10, i32* %save_session_info, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %14)
  %15 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %restore_session = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %15, i32 0, i32 6
  store i32 %call12, i32* %restore_session, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_boolean(%struct._GValue* %16)
  %17 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_tool_options = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %17, i32 0, i32 7
  store i32 %call14, i32* %save_tool_options, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_boolean(%struct._GValue* %18)
  %19 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %show_tooltips = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %19, i32 0, i32 8
  store i32 %call16, i32* %show_tooltips, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %20)
  %21 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %tearoff_menus = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %21, i32 0, i32 9
  store i32 %call18, i32* %tearoff_menus, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i32 @g_value_get_boolean(%struct._GValue* %22)
  %23 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %can_change_accels = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %23, i32 0, i32 10
  store i32 %call20, i32* %can_change_accels, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i32 @g_value_get_boolean(%struct._GValue* %24)
  %25 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_accels = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %25, i32 0, i32 11
  store i32 %call22, i32* %save_accels, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call i32 @g_value_get_boolean(%struct._GValue* %26)
  %27 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %restore_accels = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %27, i32 0, i32 12
  store i32 %call24, i32* %restore_accels, align 4
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call26 = call i32 @g_value_get_int(%struct._GValue* %28)
  %29 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %last_opened_size = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %29, i32 0, i32 13
  store i32 %call26, i32* %last_opened_size, align 4
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %30 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call28 = call i64 @g_value_get_uint64(%struct._GValue* %30)
  %31 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %max_new_image_size = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %31, i32 0, i32 14
  store i64 %call28, i64* %max_new_image_size, align 8
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %32 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call30 = call i32 @g_value_get_boolean(%struct._GValue* %32)
  %33 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %toolbox_color_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %33, i32 0, i32 15
  store i32 %call30, i32* %toolbox_color_area, align 4
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call32 = call i32 @g_value_get_boolean(%struct._GValue* %34)
  %35 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %toolbox_foo_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %35, i32 0, i32 16
  store i32 %call32, i32* %toolbox_foo_area, align 4
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %36 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call34 = call i32 @g_value_get_boolean(%struct._GValue* %36)
  %37 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %toolbox_image_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %37, i32 0, i32 17
  store i32 %call34, i32* %toolbox_image_area, align 4
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %38 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call36 = call i32 @g_value_get_boolean(%struct._GValue* %38)
  %39 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %toolbox_wilber = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %39, i32 0, i32 18
  store i32 %call36, i32* %toolbox_wilber, align 4
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %40 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %theme_path = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %40, i32 0, i32 19
  %41 = load i8*, i8** %theme_path, align 8
  call void @g_free(i8* %41)
  %42 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call38 = call i8* @g_value_dup_string(%struct._GValue* %42)
  %43 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %theme_path39 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %43, i32 0, i32 19
  store i8* %call38, i8** %theme_path39, align 8
  br label %sw.epilog

sw.bb.40:                                         ; preds = %entry
  %44 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %theme = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %44, i32 0, i32 20
  %45 = load i8*, i8** %theme, align 8
  call void @g_free(i8* %45)
  %46 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call41 = call i8* @g_value_dup_string(%struct._GValue* %46)
  %47 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %theme42 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %47, i32 0, i32 20
  store i8* %call41, i8** %theme42, align 8
  br label %sw.epilog

sw.bb.43:                                         ; preds = %entry
  %48 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call44 = call i32 @g_value_get_boolean(%struct._GValue* %48)
  %49 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %use_help = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %49, i32 0, i32 21
  store i32 %call44, i32* %use_help, align 4
  br label %sw.epilog

sw.bb.45:                                         ; preds = %entry
  %50 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call46 = call i32 @g_value_get_boolean(%struct._GValue* %50)
  %51 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %show_help_button = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %51, i32 0, i32 22
  store i32 %call46, i32* %show_help_button, align 4
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry
  %52 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %help_locales = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %52, i32 0, i32 23
  %53 = load i8*, i8** %help_locales, align 8
  call void @g_free(i8* %53)
  %54 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call48 = call i8* @g_value_dup_string(%struct._GValue* %54)
  %55 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %help_locales49 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %55, i32 0, i32 23
  store i8* %call48, i8** %help_locales49, align 8
  br label %sw.epilog

sw.bb.50:                                         ; preds = %entry
  %56 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call51 = call i32 @g_value_get_enum(%struct._GValue* %56)
  %57 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %help_browser = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %57, i32 0, i32 24
  store i32 %call51, i32* %help_browser, align 4
  br label %sw.epilog

sw.bb.52:                                         ; preds = %entry
  %58 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call53 = call i32 @g_value_get_boolean(%struct._GValue* %58)
  %59 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %user_manual_online = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %59, i32 0, i32 26
  store i32 %call53, i32* %user_manual_online, align 4
  br label %sw.epilog

sw.bb.54:                                         ; preds = %entry
  %60 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %user_manual_online_uri = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %60, i32 0, i32 27
  %61 = load i8*, i8** %user_manual_online_uri, align 8
  call void @g_free(i8* %61)
  %62 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call55 = call i8* @g_value_dup_string(%struct._GValue* %62)
  %63 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %user_manual_online_uri56 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %63, i32 0, i32 27
  store i8* %call55, i8** %user_manual_online_uri56, align 8
  br label %sw.epilog

sw.bb.57:                                         ; preds = %entry
  %64 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call58 = call i32 @g_value_get_enum(%struct._GValue* %64)
  %65 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %dock_window_hint = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %65, i32 0, i32 28
  store i32 %call58, i32* %dock_window_hint, align 4
  br label %sw.epilog

sw.bb.59:                                         ; preds = %entry
  %66 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call60 = call i32 @g_value_get_enum(%struct._GValue* %66)
  %67 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %cursor_format = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %67, i32 0, i32 29
  store i32 %call60, i32* %cursor_format, align 4
  br label %sw.epilog

sw.bb.61:                                         ; preds = %entry
  %68 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call62 = call i32 @g_value_get_enum(%struct._GValue* %68)
  %69 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %cursor_handedness = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %69, i32 0, i32 30
  store i32 %call62, i32* %cursor_handedness, align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %entry
  %70 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call64 = call i32 @g_value_get_boolean(%struct._GValue* %70)
  %71 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %hide_docks = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %71, i32 0, i32 31
  store i32 %call64, i32* %hide_docks, align 4
  br label %sw.epilog

sw.bb.65:                                         ; preds = %entry
  %72 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call66 = call i32 @g_value_get_boolean(%struct._GValue* %72)
  %73 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %73, i32 0, i32 32
  store i32 %call66, i32* %single_window_mode, align 4
  br label %sw.epilog

sw.bb.67:                                         ; preds = %entry
  %74 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call68 = call i32 @g_value_get_int(%struct._GValue* %74)
  %75 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %last_tip_shown = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %75, i32 0, i32 33
  store i32 %call68, i32* %last_tip_shown, align 4
  br label %sw.epilog

sw.bb.69:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
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
  %call70 = call i8* @g_type_name(i64 %85)
  %86 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %87 = bitcast %struct._GObject* %86 to %struct._GTypeInstance*
  %g_class71 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %87, i32 0, i32 0
  %88 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class71, align 8
  %g_type72 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %88, i32 0, i32 0
  %89 = load i64, i64* %g_type72, align 8
  %call73 = call i8* @g_type_name(i64 %89)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i32 470, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 %79, i8* %81, i8* %call70, i8* %call73)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.69, %sw.bb.67, %sw.bb.65, %sw.bb.63, %sw.bb.61, %sw.bb.59, %sw.bb.57, %sw.bb.54, %sw.bb.52, %sw.bb.50, %sw.bb.47, %sw.bb.45, %sw.bb.43, %sw.bb.40, %sw.bb.37, %sw.bb.35, %sw.bb.33, %sw.bb.31, %sw.bb.29, %sw.bb.27, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_gui_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %gui_config = alloca %struct._GimpGuiConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_gui_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %2, %struct._GimpGuiConfig** %gui_config, align 8
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
    i32 31, label %sw.bb.31
    i32 32, label %sw.bb.32
    i32 33, label %sw.bb.33
    i32 34, label %sw.bb.33
    i32 35, label %sw.bb.33
    i32 36, label %sw.bb.33
    i32 37, label %sw.bb.33
    i32 38, label %sw.bb.33
    i32 39, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %move_tool_changes_active = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %move_tool_changes_active, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %image_map_tool_max_recent = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %8, i32 0, i32 2
  %9 = load i32, i32* %image_map_tool_max_recent, align 4
  call void @g_value_set_int(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %trust_dirty_flag = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %11, i32 0, i32 3
  %12 = load i32, i32* %trust_dirty_flag, align 4
  call void @g_value_set_boolean(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_device_status = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %14, i32 0, i32 4
  %15 = load i32, i32* %save_device_status, align 4
  call void @g_value_set_boolean(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_session_info = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %17, i32 0, i32 5
  %18 = load i32, i32* %save_session_info, align 4
  call void @g_value_set_boolean(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %restore_session = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %20, i32 0, i32 6
  %21 = load i32, i32* %restore_session, align 4
  call void @g_value_set_boolean(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_tool_options = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %23, i32 0, i32 7
  %24 = load i32, i32* %save_tool_options, align 4
  call void @g_value_set_boolean(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %show_tooltips = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %26, i32 0, i32 8
  %27 = load i32, i32* %show_tooltips, align 4
  call void @g_value_set_boolean(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %tearoff_menus = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %29, i32 0, i32 9
  %30 = load i32, i32* %tearoff_menus, align 4
  call void @g_value_set_boolean(%struct._GValue* %28, i32 %30)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %can_change_accels = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %32, i32 0, i32 10
  %33 = load i32, i32* %can_change_accels, align 4
  call void @g_value_set_boolean(%struct._GValue* %31, i32 %33)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %save_accels = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %35, i32 0, i32 11
  %36 = load i32, i32* %save_accels, align 4
  call void @g_value_set_boolean(%struct._GValue* %34, i32 %36)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %38 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %restore_accels = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %38, i32 0, i32 12
  %39 = load i32, i32* %restore_accels, align 4
  call void @g_value_set_boolean(%struct._GValue* %37, i32 %39)
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %40 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %41 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %last_opened_size = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %41, i32 0, i32 13
  %42 = load i32, i32* %last_opened_size, align 4
  call void @g_value_set_int(%struct._GValue* %40, i32 %42)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %43 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %44 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %max_new_image_size = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %44, i32 0, i32 14
  %45 = load i64, i64* %max_new_image_size, align 8
  call void @g_value_set_uint64(%struct._GValue* %43, i64 %45)
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %46 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %47 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %toolbox_color_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %47, i32 0, i32 15
  %48 = load i32, i32* %toolbox_color_area, align 4
  call void @g_value_set_boolean(%struct._GValue* %46, i32 %48)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %49 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %50 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %toolbox_foo_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %50, i32 0, i32 16
  %51 = load i32, i32* %toolbox_foo_area, align 4
  call void @g_value_set_boolean(%struct._GValue* %49, i32 %51)
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %52 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %53 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %toolbox_image_area = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %53, i32 0, i32 17
  %54 = load i32, i32* %toolbox_image_area, align 4
  call void @g_value_set_boolean(%struct._GValue* %52, i32 %54)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %55 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %56 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %toolbox_wilber = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %56, i32 0, i32 18
  %57 = load i32, i32* %toolbox_wilber, align 4
  call void @g_value_set_boolean(%struct._GValue* %55, i32 %57)
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %58 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %59 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %theme_path = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %59, i32 0, i32 19
  %60 = load i8*, i8** %theme_path, align 8
  call void @g_value_set_string(%struct._GValue* %58, i8* %60)
  br label %sw.epilog

sw.bb.20:                                         ; preds = %entry
  %61 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %62 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %theme = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %62, i32 0, i32 20
  %63 = load i8*, i8** %theme, align 8
  call void @g_value_set_string(%struct._GValue* %61, i8* %63)
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %64 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %65 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %use_help = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %65, i32 0, i32 21
  %66 = load i32, i32* %use_help, align 4
  call void @g_value_set_boolean(%struct._GValue* %64, i32 %66)
  br label %sw.epilog

sw.bb.22:                                         ; preds = %entry
  %67 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %68 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %show_help_button = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %68, i32 0, i32 22
  %69 = load i32, i32* %show_help_button, align 4
  call void @g_value_set_boolean(%struct._GValue* %67, i32 %69)
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %70 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %71 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %help_locales = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %71, i32 0, i32 23
  %72 = load i8*, i8** %help_locales, align 8
  call void @g_value_set_string(%struct._GValue* %70, i8* %72)
  br label %sw.epilog

sw.bb.24:                                         ; preds = %entry
  %73 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %74 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %help_browser = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %74, i32 0, i32 24
  %75 = load i32, i32* %help_browser, align 4
  call void @g_value_set_enum(%struct._GValue* %73, i32 %75)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %76 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %77 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %user_manual_online = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %77, i32 0, i32 26
  %78 = load i32, i32* %user_manual_online, align 4
  call void @g_value_set_boolean(%struct._GValue* %76, i32 %78)
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %79 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %80 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %user_manual_online_uri = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %80, i32 0, i32 27
  %81 = load i8*, i8** %user_manual_online_uri, align 8
  call void @g_value_set_string(%struct._GValue* %79, i8* %81)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %82 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %83 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %dock_window_hint = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %83, i32 0, i32 28
  %84 = load i32, i32* %dock_window_hint, align 4
  call void @g_value_set_enum(%struct._GValue* %82, i32 %84)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %entry
  %85 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %86 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %cursor_format = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %86, i32 0, i32 29
  %87 = load i32, i32* %cursor_format, align 4
  call void @g_value_set_enum(%struct._GValue* %85, i32 %87)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %88 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %89 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %cursor_handedness = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %89, i32 0, i32 30
  %90 = load i32, i32* %cursor_handedness, align 4
  call void @g_value_set_enum(%struct._GValue* %88, i32 %90)
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %91 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %92 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %hide_docks = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %92, i32 0, i32 31
  %93 = load i32, i32* %hide_docks, align 4
  call void @g_value_set_boolean(%struct._GValue* %91, i32 %93)
  br label %sw.epilog

sw.bb.31:                                         ; preds = %entry
  %94 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %95 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %single_window_mode = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %95, i32 0, i32 32
  %96 = load i32, i32* %single_window_mode, align 4
  call void @g_value_set_boolean(%struct._GValue* %94, i32 %96)
  br label %sw.epilog

sw.bb.32:                                         ; preds = %entry
  %97 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %98 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %last_tip_shown = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %98, i32 0, i32 33
  %99 = load i32, i32* %last_tip_shown, align 4
  call void @g_value_set_int(%struct._GValue* %97, i32 %99)
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %100 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %100, %struct._GObject** %_glib__object, align 8
  %101 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %101, %struct._GParamSpec** %_glib__pspec, align 8
  %102 = load i32, i32* %property_id.addr, align 4
  store i32 %102, i32* %_glib__property_id, align 4
  %103 = load i32, i32* %_glib__property_id, align 4
  %104 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %104, i32 0, i32 1
  %105 = load i8*, i8** %name, align 8
  %106 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %107 = bitcast %struct._GParamSpec* %106 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %107, i32 0, i32 0
  %108 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %108, i32 0, i32 0
  %109 = load i64, i64* %g_type, align 8
  %call34 = call i8* @g_type_name(i64 %109)
  %110 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %111 = bitcast %struct._GObject* %110 to %struct._GTypeInstance*
  %g_class35 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %111, i32 0, i32 0
  %112 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class35, align 8
  %g_type36 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %112, i32 0, i32 0
  %113 = load i64, i64* %g_type36, align 8
  %call37 = call i8* @g_type_name(i64 %113)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.77, i32 0, i32 0), i32 594, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 %103, i8* %105, i8* %call34, i8* %call37)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.33, %sw.bb.32, %sw.bb.31, %sw.bb.30, %sw.bb.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22, %sw.bb.21, %sw.bb.20, %sw.bb.19, %sw.bb.18, %sw.bb.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_int(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GParamSpec* @gimp_param_spec_memsize(i8*, i8*, i8*, i64, i64, i64, i32) #1

declare noalias i8* @gimp_config_build_data_path(i8*) #1

declare %struct._GParamSpec* @gimp_param_spec_config_path(i8*, i8*, i8*, i32, i8*, i32) #1

declare void @g_free(i8*) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_help_browser_type_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_window_hint_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_cursor_format_get_type() #2

; Function Attrs: nounwind readnone
declare i64 @gimp_handedness_get_type() #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_int(%struct._GValue*) #1

declare i64 @g_value_get_uint64(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.79, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_int(%struct._GValue*, i32) #1

declare void @g_value_set_uint64(%struct._GValue*, i64) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_enum(%struct._GValue*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
