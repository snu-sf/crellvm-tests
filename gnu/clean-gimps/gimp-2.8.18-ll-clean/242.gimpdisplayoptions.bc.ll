; ModuleID = './app/config/gimpdisplayoptions.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpDisplayOptionsClass = type { %struct._GObjectClass }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpDisplayOptions = type { %struct._GObject, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpRGB = type { double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_display_options_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpDisplayOptions\00", align 1
@gimp_display_options_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@gimp_display_options_fullscreen_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"GimpDisplayOptionsFullscreen\00", align 1
@gimp_display_options_fullscreen_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@gimp_display_options_no_image_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"GimpDisplayOptionsNoImage\00", align 1
@gimp_display_options_no_image_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@gimp_display_options_parent_class = internal global i8* null, align 8
@GimpDisplayOptions_private_offset = internal global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"show-menubar\00", align 1
@.str.4 = private unnamed_addr constant [113 x i8] c"When enabled, the menubar is visible by default. This can also be toggled with the \22View->Show Menubar\22 command.\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"show-statusbar\00", align 1
@.str.6 = private unnamed_addr constant [117 x i8] c"When enabled, the statusbar is visible by default. This can also be toggled with the \22View->Show Statusbar\22 command.\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"show-rulers\00", align 1
@.str.8 = private unnamed_addr constant [112 x i8] c"When enabled, the rulers are visible by default. This can also be toggled with the \22View->Show Rulers\22 command.\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"show-scrollbars\00", align 1
@.str.10 = private unnamed_addr constant [120 x i8] c"When enabled, the scrollbars are visible by default. This can also be toggled with the \22View->Show Scrollbars\22 command.\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"show-selection\00", align 1
@.str.12 = private unnamed_addr constant [117 x i8] c"When enabled, the selection is visible by default. This can also be toggled with the \22View->Show Selection\22 command.\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"show-layer-boundary\00", align 1
@.str.14 = private unnamed_addr constant [127 x i8] c"When enabled, the layer boundary is visible by default. This can also be toggled with the \22View->Show Layer Boundary\22 command.\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"show-guides\00", align 1
@.str.16 = private unnamed_addr constant [112 x i8] c"When enabled, the guides are visible by default. This can also be toggled with the \22View->Show Guides\22 command.\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"show-grid\00", align 1
@.str.18 = private unnamed_addr constant [107 x i8] c"When enabled, the grid is visible by default. This can also be toggled with the \22View->Show Grid\22 command.\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"show-sample-points\00", align 1
@.str.20 = private unnamed_addr constant [126 x i8] c"When enabled, the sample points are visible by default. This can also be toggled with the \22View->Show Sample Points\22 command.\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"padding-mode\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"Specifies how the area around the image should be drawn.\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"padding-color\00", align 1
@.str.24 = private unnamed_addr constant [79 x i8] c"Sets the canvas padding color used if the padding mode is set to custom color.\00", align 1
@.str.25 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"gimpdisplayoptions.c\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@gimp_display_options_fullscreen_parent_class = internal global i8* null, align 8
@GimpDisplayOptionsFullscreen_private_offset = internal global i32 0, align 4
@gimp_display_options_no_image_parent_class = internal global i8* null, align 8
@GimpDisplayOptionsNoImage_private_offset = internal global i32 0, align 4

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_display_options_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_display_options_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_display_options_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_display_options_class_intern_init to void (i8*, i8*)*), i32 104, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDisplayOptions*)* @gimp_display_options_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call7 = call i64 @gimp_config_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call7, %struct._GInterfaceInfo* @gimp_display_options_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_display_options_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_display_options_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_options_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_display_options_parent_class, align 8
  %1 = load i32, i32* @GimpDisplayOptions_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDisplayOptions_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDisplayOptionsClass*
  call void @gimp_display_options_class_init(%struct._GimpDisplayOptionsClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_options_init(%struct._GimpDisplayOptions* %options) #2 {
entry:
  %options.addr = alloca %struct._GimpDisplayOptions*, align 8
  store %struct._GimpDisplayOptions* %options, %struct._GimpDisplayOptions** %options.addr, align 8
  %0 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options.addr, align 8
  %padding_mode_set = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %0, i32 0, i32 12
  store i32 0, i32* %padding_mode_set, align 4
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #3

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_display_options_fullscreen_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_display_options_fullscreen_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_display_options_fullscreen_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_display_options_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_display_options_fullscreen_class_intern_init to void (i8*, i8*)*), i32 104, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDisplayOptions*)* @gimp_display_options_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_display_options_fullscreen_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_display_options_fullscreen_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_display_options_fullscreen_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_options_fullscreen_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_display_options_fullscreen_parent_class, align 8
  %1 = load i32, i32* @GimpDisplayOptionsFullscreen_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDisplayOptionsFullscreen_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDisplayOptionsClass*
  call void @gimp_display_options_fullscreen_class_init(%struct._GimpDisplayOptionsClass* %4)
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_display_options_no_image_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_display_options_no_image_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_display_options_no_image_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_display_options_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_display_options_no_image_class_intern_init to void (i8*, i8*)*), i32 104, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpDisplayOptions*)* @gimp_display_options_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_display_options_no_image_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_display_options_no_image_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_display_options_no_image_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_options_no_image_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_display_options_no_image_parent_class, align 8
  %1 = load i32, i32* @GimpDisplayOptionsNoImage_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpDisplayOptionsNoImage_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpDisplayOptionsClass*
  call void @gimp_display_options_no_image_class_init(%struct._GimpDisplayOptionsClass* %4)
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_options_class_init(%struct._GimpDisplayOptionsClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpDisplayOptionsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %white = alloca %struct._GimpRGB, align 8
  store %struct._GimpDisplayOptionsClass* %klass, %struct._GimpDisplayOptionsClass** %klass.addr, align 8
  %0 = load %struct._GimpDisplayOptionsClass*, %struct._GimpDisplayOptionsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDisplayOptionsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %white, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_options_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_options_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.4, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %5, i32 1, %struct._GParamSpec* %call1)
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.6, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 2, %struct._GParamSpec* %call2)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 3, %struct._GParamSpec* %call3)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.10, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 4, %struct._GParamSpec* %call4)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.12, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 5, %struct._GParamSpec* %call5)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.14, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 6, %struct._GParamSpec* %call6)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.16, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 7, %struct._GParamSpec* %call7)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 8, %struct._GParamSpec* %call8)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.20, i32 0, i32 0), i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 9, %struct._GParamSpec* %call9)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call i64 @gimp_canvas_padding_mode_get_type() #5
  %call11 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0), i64 %call10, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 10, %struct._GParamSpec* %call11)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct._GimpRGB* %white, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 11, %struct._GParamSpec* %call12)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare void @gimp_rgba_set(%struct._GimpRGB*, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_options_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpDisplayOptions*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_options_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayOptions*
  store %struct._GimpDisplayOptions* %2, %struct._GimpDisplayOptions** %options, align 8
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
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_boolean(%struct._GValue* %4)
  %5 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_menubar = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %5, i32 0, i32 1
  store i32 %call2, i32* %show_menubar, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %6)
  %7 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_statusbar = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %7, i32 0, i32 2
  store i32 %call4, i32* %show_statusbar, align 4
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call6 = call i32 @g_value_get_boolean(%struct._GValue* %8)
  %9 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_rulers = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %9, i32 0, i32 3
  store i32 %call6, i32* %show_rulers, align 4
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_boolean(%struct._GValue* %10)
  %11 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_scrollbars = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %11, i32 0, i32 4
  store i32 %call8, i32* %show_scrollbars, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i32 @g_value_get_boolean(%struct._GValue* %12)
  %13 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_selection = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %13, i32 0, i32 5
  store i32 %call10, i32* %show_selection, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call i32 @g_value_get_boolean(%struct._GValue* %14)
  %15 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_layer_boundary = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %15, i32 0, i32 6
  store i32 %call12, i32* %show_layer_boundary, align 4
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i32 @g_value_get_boolean(%struct._GValue* %16)
  %17 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_guides = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %17, i32 0, i32 7
  store i32 %call14, i32* %show_guides, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call16 = call i32 @g_value_get_boolean(%struct._GValue* %18)
  %19 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_grid = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %19, i32 0, i32 8
  store i32 %call16, i32* %show_grid, align 4
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %20 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_boolean(%struct._GValue* %20)
  %21 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_sample_points = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %21, i32 0, i32 9
  store i32 %call18, i32* %show_sample_points, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i32 @g_value_get_enum(%struct._GValue* %22)
  %23 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %padding_mode = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %23, i32 0, i32 10
  store i32 %call20, i32* %padding_mode, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %24 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %padding_color = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %24, i32 0, i32 11
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i8* @g_value_get_boxed(%struct._GValue* %25)
  %26 = bitcast i8* %call22 to %struct._GimpRGB*
  %27 = bitcast %struct._GimpRGB* %padding_color to i8*
  %28 = bitcast %struct._GimpRGB* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %27, i8* %28, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
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
  %call23 = call i8* @g_type_name(i64 %38)
  %39 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %40 = bitcast %struct._GObject* %39 to %struct._GTypeInstance*
  %g_class24 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class24, align 8
  %g_type25 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type25, align 8
  %call26 = call i8* @g_type_name(i64 %42)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 298, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %32, i8* %34, i8* %call23, i8* %call26)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.15, %sw.bb.13, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.5, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_options_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %options = alloca %struct._GimpDisplayOptions*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_display_options_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpDisplayOptions*
  store %struct._GimpDisplayOptions* %2, %struct._GimpDisplayOptions** %options, align 8
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
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_menubar = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %5, i32 0, i32 1
  %6 = load i32, i32* %show_menubar, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_statusbar = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %8, i32 0, i32 2
  %9 = load i32, i32* %show_statusbar, align 4
  call void @g_value_set_boolean(%struct._GValue* %7, i32 %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_rulers = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %11, i32 0, i32 3
  %12 = load i32, i32* %show_rulers, align 4
  call void @g_value_set_boolean(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_scrollbars = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %14, i32 0, i32 4
  %15 = load i32, i32* %show_scrollbars, align 4
  call void @g_value_set_boolean(%struct._GValue* %13, i32 %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_selection = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %17, i32 0, i32 5
  %18 = load i32, i32* %show_selection, align 4
  call void @g_value_set_boolean(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_layer_boundary = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %20, i32 0, i32 6
  %21 = load i32, i32* %show_layer_boundary, align 4
  call void @g_value_set_boolean(%struct._GValue* %19, i32 %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_guides = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %23, i32 0, i32 7
  %24 = load i32, i32* %show_guides, align 4
  call void @g_value_set_boolean(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_grid = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %26, i32 0, i32 8
  %27 = load i32, i32* %show_grid, align 4
  call void @g_value_set_boolean(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %show_sample_points = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %29, i32 0, i32 9
  %30 = load i32, i32* %show_sample_points, align 4
  call void @g_value_set_boolean(%struct._GValue* %28, i32 %30)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %padding_mode = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %32, i32 0, i32 10
  %33 = load i32, i32* %padding_mode, align 4
  call void @g_value_set_enum(%struct._GValue* %31, i32 %33)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions** %options, align 8
  %padding_color = getelementptr inbounds %struct._GimpDisplayOptions, %struct._GimpDisplayOptions* %35, i32 0, i32 11
  %36 = bitcast %struct._GimpRGB* %padding_color to i8*
  call void @g_value_set_boxed(%struct._GValue* %34, i8* %36)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %37 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %37, %struct._GObject** %_glib__object, align 8
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %38, %struct._GParamSpec** %_glib__pspec, align 8
  %39 = load i32, i32* %property_id.addr, align 4
  store i32 %39, i32* %_glib__property_id, align 4
  %40 = load i32, i32* %_glib__property_id, align 4
  %41 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %41, i32 0, i32 1
  %42 = load i8*, i8** %name, align 8
  %43 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %44 = bitcast %struct._GParamSpec* %43 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %44, i32 0, i32 0
  %45 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %45, i32 0, i32 0
  %46 = load i64, i64* %g_type, align 8
  %call12 = call i8* @g_type_name(i64 %46)
  %47 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %48 = bitcast %struct._GObject* %47 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %48, i32 0, i32 0
  %49 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type14 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %49, i32 0, i32 0
  %50 = load i64, i64* %g_type14, align 8
  %call15 = call i8* @g_type_name(i64 %50)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i32 0, i32 0), i32 348, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 %40, i8* %42, i8* %call12, i8* %call15)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_canvas_padding_mode_get_type() #3

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_value_get_boxed(%struct._GValue*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #2 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_display_options_fullscreen_class_init(%struct._GimpDisplayOptionsClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpDisplayOptionsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %black = alloca %struct._GimpRGB, align 8
  store %struct._GimpDisplayOptionsClass* %klass, %struct._GimpDisplayOptionsClass** %klass.addr, align 8
  %0 = load %struct._GimpDisplayOptionsClass*, %struct._GimpDisplayOptionsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDisplayOptionsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  call void @gimp_rgba_set(%struct._GimpRGB* %black, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00, double 1.000000e+00)
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_options_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_options_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.4, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %5, i32 1, %struct._GParamSpec* %call1)
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.6, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 2, %struct._GParamSpec* %call2)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 3, %struct._GParamSpec* %call3)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 4, %struct._GParamSpec* %call4)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 5, %struct._GParamSpec* %call5)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 6, %struct._GParamSpec* %call6)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 7, %struct._GParamSpec* %call7)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 8, %struct._GParamSpec* %call8)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 9, %struct._GParamSpec* %call9)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call i64 @gimp_canvas_padding_mode_get_type() #5
  %call11 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.22, i32 0, i32 0), i64 %call10, i32 3, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 10, %struct._GParamSpec* %call11)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.24, i32 0, i32 0), i32 0, %struct._GimpRGB* %black, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 11, %struct._GParamSpec* %call12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_display_options_no_image_class_init(%struct._GimpDisplayOptionsClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpDisplayOptionsClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpDisplayOptionsClass* %klass, %struct._GimpDisplayOptionsClass** %klass.addr, align 8
  %0 = load %struct._GimpDisplayOptionsClass*, %struct._GimpDisplayOptionsClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpDisplayOptionsClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_options_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_display_options_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.8, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %5, i32 3, %struct._GParamSpec* %call1)
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.10, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 4, %struct._GParamSpec* %call2)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.12, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 5, %struct._GParamSpec* %call3)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.14, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 6, %struct._GParamSpec* %call4)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.16, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 7, %struct._GParamSpec* %call5)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.18, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 8, %struct._GParamSpec* %call6)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.20, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 9, %struct._GParamSpec* %call7)
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
