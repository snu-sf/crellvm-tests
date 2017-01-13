; ModuleID = './libgimpconfig/gimpcolorconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpColorConfigClass = type { %struct._GObjectClass }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_color_config_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"GimpColorConfig\00", align 1
@gimp_color_config_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@gimp_color_config_parent_class = internal global i8* null, align 8
@GimpColorConfig_private_offset = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Mode of operation for color management.\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"rgb-profile\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"The default RGB working space color profile.\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"cmyk-profile\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"The CMYK color profile used to convert between RGB and CMYK.\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"display-profile\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"The color profile of your (primary) monitor.\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"display-profile-from-gdk\00", align 1
@.str.11 = private unnamed_addr constant [153 x i8] c"When enabled, GIMP will try to use the display color profile from the windowing system.  The configured monitor profile is then only used as a fallback.\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"printer-profile\00", align 1
@.str.13 = private unnamed_addr constant [69 x i8] c"The color profile used for simulating a printed version (softproof).\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"display-rendering-intent\00", align 1
@.str.15 = private unnamed_addr constant [45 x i8] c"Sets how colors are mapped for your display.\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"simulation-rendering-intent\00", align 1
@.str.17 = private unnamed_addr constant [85 x i8] c"Sets how colors are converted from RGB working space to the print simulation device.\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"simulation-gamut-check\00", align 1
@.str.19 = private unnamed_addr constant [108 x i8] c"When enabled, the print simulation will mark colors which can not be represented in the target color space.\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"out-of-gamut-color\00", align 1
@.str.21 = private unnamed_addr constant [60 x i8] c"The color to use for marking colors which are out of gamut.\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"display-module\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"CdisplayLcms\00", align 1
@.str.24 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"gimpcolorconfig.c\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"LibGimpConfig\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_color_config_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_color_config_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_color_config_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  %call6 = call i64 @g_type_register_static_simple(i64 80, i8* %call5, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_color_config_class_intern_init to void (i8*, i8*)*), i32 192, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpColorConfig*)* @gimp_color_config_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call6, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call7 = call i64 @gimp_config_interface_get_type() #5
  call void @g_type_add_interface_static(i64 %5, i64 %call7, %struct._GInterfaceInfo* @gimp_color_config_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @gimp_type_set_translation_domain(i64 %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  %7 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_color_config_get_type.g_define_type_id__volatile to i8*), i64 %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %8 = load volatile i64, i64* @gimp_color_config_get_type.g_define_type_id__volatile, align 8
  ret i64 %8
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_config_class_intern_init(i8* %klass) #2 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_color_config_parent_class, align 8
  %1 = load i32, i32* @GimpColorConfig_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpColorConfig_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpColorConfigClass*
  call void @gimp_color_config_class_init(%struct._GimpColorConfigClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_config_init(%struct._GimpColorConfig* %config) #2 {
entry:
  %config.addr = alloca %struct._GimpColorConfig*, align 8
  store %struct._GimpColorConfig* %config, %struct._GimpColorConfig** %config.addr, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #3

declare void @gimp_type_set_translation_domain(i64, i8*) #1

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_config_class_init(%struct._GimpColorConfigClass* %klass) #2 {
entry:
  %klass.addr = alloca %struct._GimpColorConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %color = alloca %struct._GimpRGB, align 8
  store %struct._GimpColorConfigClass* %klass, %struct._GimpColorConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpColorConfigClass*, %struct._GimpColorConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpColorConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  call void @gimp_rgba_set_uchar(%struct._GimpRGB* %color, i8 zeroext -128, i8 zeroext -128, i8 zeroext -128, i8 zeroext -1)
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_color_config_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_color_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call i64 @gimp_color_management_mode_get_type() #5
  %call2 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i32 0, i32 0), i64 %call1, i32 1, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call2)
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0), i32 0, i8* null, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 2, %struct._GParamSpec* %call3)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i32 0, i32 0), i32 0, i8* null, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 3, %struct._GParamSpec* %call4)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0), i32 0, i8* null, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 4, %struct._GParamSpec* %call5)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @.str.11, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 5, %struct._GParamSpec* %call6)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.13, i32 0, i32 0), i32 0, i8* null, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 6, %struct._GParamSpec* %call7)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call i64 @gimp_color_rendering_intent_get_type() #5
  %call9 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.15, i32 0, i32 0), i64 %call8, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 7, %struct._GParamSpec* %call9)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call10 = call i64 @gimp_color_rendering_intent_get_type() #5
  %call11 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.17, i32 0, i32 0), i64 %call10, i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 8, %struct._GParamSpec* %call11)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call12 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.19, i32 0, i32 0), i32 0, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 9, %struct._GParamSpec* %call12)
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_rgb(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.21, i32 0, i32 0), i32 0, %struct._GimpRGB* %color, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 10, %struct._GParamSpec* %call13)
  %16 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i8* null, i8* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %16, i32 11, %struct._GParamSpec* %call14)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

declare void @gimp_rgba_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_color_config_finalize(%struct._GObject* %object) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %color_config = alloca %struct._GimpColorConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorConfig*
  store %struct._GimpColorConfig* %2, %struct._GimpColorConfig** %color_config, align 8
  %3 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %rgb_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %3, i32 0, i32 2
  %4 = load i8*, i8** %rgb_profile, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %rgb_profile2 = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %5, i32 0, i32 2
  %6 = load i8*, i8** %rgb_profile2, align 8
  call void @g_free(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %cmyk_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %7, i32 0, i32 3
  %8 = load i8*, i8** %cmyk_profile, align 8
  %tobool3 = icmp ne i8* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %9 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %cmyk_profile5 = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %9, i32 0, i32 3
  %10 = load i8*, i8** %cmyk_profile5, align 8
  call void @g_free(i8* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %11 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %11, i32 0, i32 4
  %12 = load i8*, i8** %display_profile, align 8
  %tobool7 = icmp ne i8* %12, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_profile9 = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %13, i32 0, i32 4
  %14 = load i8*, i8** %display_profile9, align 8
  call void @g_free(i8* %14)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %15 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %printer_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %15, i32 0, i32 6
  %16 = load i8*, i8** %printer_profile, align 8
  %tobool11 = icmp ne i8* %16, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.10
  %17 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %printer_profile13 = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %17, i32 0, i32 6
  %18 = load i8*, i8** %printer_profile13, align 8
  call void @g_free(i8* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.10
  %19 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_module = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %19, i32 0, i32 9
  %20 = load i8*, i8** %display_module, align 8
  %tobool15 = icmp ne i8* %20, null
  br i1 %tobool15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.14
  %21 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_module17 = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %21, i32 0, i32 9
  %22 = load i8*, i8** %display_module17, align 8
  call void @g_free(i8* %22)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.end.14
  %23 = load i8*, i8** @gimp_color_config_parent_class, align 8
  %24 = bitcast i8* %23 to %struct._GTypeClass*
  %call19 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %24, i64 80)
  %25 = bitcast %struct._GTypeClass* %call19 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %25, i32 0, i32 6
  %26 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %27 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %26(%struct._GObject* %27)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %color_config = alloca %struct._GimpColorConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorConfig*
  store %struct._GimpColorConfig* %2, %struct._GimpColorConfig** %color_config, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.12
    i32 6, label %sw.bb.14
    i32 7, label %sw.bb.17
    i32 8, label %sw.bb.19
    i32 9, label %sw.bb.21
    i32 10, label %sw.bb.23
    i32 11, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %mode = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %5, i32 0, i32 1
  store i32 %call2, i32* %mode, align 4
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %6 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %rgb_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %6, i32 0, i32 2
  %7 = load i8*, i8** %rgb_profile, align 8
  call void @g_free(i8* %7)
  %8 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i8* @g_value_dup_string(%struct._GValue* %8)
  %9 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %rgb_profile5 = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %9, i32 0, i32 2
  store i8* %call4, i8** %rgb_profile5, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %10 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %cmyk_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %10, i32 0, i32 3
  %11 = load i8*, i8** %cmyk_profile, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i8* @g_value_dup_string(%struct._GValue* %12)
  %13 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %cmyk_profile8 = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %13, i32 0, i32 3
  store i8* %call7, i8** %cmyk_profile8, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %14 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %14, i32 0, i32 4
  %15 = load i8*, i8** %display_profile, align 8
  call void @g_free(i8* %15)
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i8* @g_value_dup_string(%struct._GValue* %16)
  %17 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_profile11 = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %17, i32 0, i32 4
  store i8* %call10, i8** %display_profile11, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call13 = call i32 @g_value_get_boolean(%struct._GValue* %18)
  %19 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_profile_from_gdk = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %19, i32 0, i32 5
  store i32 %call13, i32* %display_profile_from_gdk, align 4
  br label %sw.epilog

sw.bb.14:                                         ; preds = %entry
  %20 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %printer_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %20, i32 0, i32 6
  %21 = load i8*, i8** %printer_profile, align 8
  call void @g_free(i8* %21)
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call15 = call i8* @g_value_dup_string(%struct._GValue* %22)
  %23 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %printer_profile16 = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %23, i32 0, i32 6
  store i8* %call15, i8** %printer_profile16, align 8
  br label %sw.epilog

sw.bb.17:                                         ; preds = %entry
  %24 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call18 = call i32 @g_value_get_enum(%struct._GValue* %24)
  %25 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_intent = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %25, i32 0, i32 7
  store i32 %call18, i32* %display_intent, align 4
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %26 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call20 = call i32 @g_value_get_enum(%struct._GValue* %26)
  %27 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %simulation_intent = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %27, i32 0, i32 8
  store i32 %call20, i32* %simulation_intent, align 4
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call i32 @g_value_get_boolean(%struct._GValue* %28)
  %29 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %simulation_gamut_check = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %29, i32 0, i32 10
  store i32 %call22, i32* %simulation_gamut_check, align 4
  br label %sw.epilog

sw.bb.23:                                         ; preds = %entry
  %30 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %out_of_gamut_color = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %30, i32 0, i32 11
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call24 = call i8* @g_value_get_boxed(%struct._GValue* %31)
  %32 = bitcast i8* %call24 to %struct._GimpRGB*
  %33 = bitcast %struct._GimpRGB* %out_of_gamut_color to i8*
  %34 = bitcast %struct._GimpRGB* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 32, i32 8, i1 false)
  br label %sw.epilog

sw.bb.25:                                         ; preds = %entry
  %35 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_module = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %35, i32 0, i32 9
  %36 = load i8*, i8** %display_module, align 8
  call void @g_free(i8* %36)
  %37 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call26 = call i8* @g_value_dup_string(%struct._GValue* %37)
  %38 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_module27 = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %38, i32 0, i32 9
  store i8* %call26, i8** %display_module27, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %39 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %39, %struct._GObject** %_glib__object, align 8
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %40, %struct._GParamSpec** %_glib__pspec, align 8
  %41 = load i32, i32* %property_id.addr, align 4
  store i32 %41, i32* %_glib__property_id, align 4
  %42 = load i32, i32* %_glib__property_id, align 4
  %43 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %43, i32 0, i32 1
  %44 = load i8*, i8** %name, align 8
  %45 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %46 = bitcast %struct._GParamSpec* %45 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %46, i32 0, i32 0
  %47 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %47, i32 0, i32 0
  %48 = load i64, i64* %g_type, align 8
  %call28 = call i8* @g_type_name(i64 %48)
  %49 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %50 = bitcast %struct._GObject* %49 to %struct._GTypeInstance*
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %50, i32 0, i32 0
  %51 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %g_type30 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %51, i32 0, i32 0
  %52 = load i64, i64* %g_type30, align 8
  %call31 = call i8* @g_type_name(i64 %52)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 258, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %42, i8* %44, i8* %call28, i8* %call31)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.25, %sw.bb.23, %sw.bb.21, %sw.bb.19, %sw.bb.17, %sw.bb.14, %sw.bb.12, %sw.bb.9, %sw.bb.6, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_color_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #2 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %color_config = alloca %struct._GimpColorConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_color_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpColorConfig*
  store %struct._GimpColorConfig* %2, %struct._GimpColorConfig** %color_config, align 8
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
  %5 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %mode = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %mode, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %rgb_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %8, i32 0, i32 2
  %9 = load i8*, i8** %rgb_profile, align 8
  call void @g_value_set_string(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %cmyk_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %11, i32 0, i32 3
  %12 = load i8*, i8** %cmyk_profile, align 8
  call void @g_value_set_string(%struct._GValue* %10, i8* %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %14, i32 0, i32 4
  %15 = load i8*, i8** %display_profile, align 8
  call void @g_value_set_string(%struct._GValue* %13, i8* %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_profile_from_gdk = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %17, i32 0, i32 5
  %18 = load i32, i32* %display_profile_from_gdk, align 4
  call void @g_value_set_boolean(%struct._GValue* %16, i32 %18)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %20 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %printer_profile = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %20, i32 0, i32 6
  %21 = load i8*, i8** %printer_profile, align 8
  call void @g_value_set_string(%struct._GValue* %19, i8* %21)
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_intent = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %23, i32 0, i32 7
  %24 = load i32, i32* %display_intent, align 4
  call void @g_value_set_enum(%struct._GValue* %22, i32 %24)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %26 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %simulation_intent = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %26, i32 0, i32 8
  %27 = load i32, i32* %simulation_intent, align 4
  call void @g_value_set_enum(%struct._GValue* %25, i32 %27)
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %28 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %29 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %simulation_gamut_check = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %29, i32 0, i32 10
  %30 = load i32, i32* %simulation_gamut_check, align 4
  call void @g_value_set_boolean(%struct._GValue* %28, i32 %30)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %31 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %32 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %out_of_gamut_color = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %32, i32 0, i32 11
  %33 = bitcast %struct._GimpRGB* %out_of_gamut_color to i8*
  call void @g_value_set_boxed(%struct._GValue* %31, i8* %33)
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %34 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %35 = load %struct._GimpColorConfig*, %struct._GimpColorConfig** %color_config, align 8
  %display_module = getelementptr inbounds %struct._GimpColorConfig, %struct._GimpColorConfig* %35, i32 0, i32 9
  %36 = load i8*, i8** %display_module, align 8
  call void @g_value_set_string(%struct._GValue* %34, i8* %36)
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
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i32 0, i32 0), i32 308, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i32 %40, i8* %42, i8* %call12, i8* %call15)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.10, %sw.bb.9, %sw.bb.8, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_management_mode_get_type() #3

declare %struct._GParamSpec* @gimp_param_spec_config_path(i8*, i8*, i8*, i32, i8*, i32) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_color_rendering_intent_get_type() #3

declare %struct._GParamSpec* @gimp_param_spec_rgb(i8*, i8*, i8*, i32, %struct._GimpRGB*, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @g_free(i8*) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_boxed(%struct._GValue*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
