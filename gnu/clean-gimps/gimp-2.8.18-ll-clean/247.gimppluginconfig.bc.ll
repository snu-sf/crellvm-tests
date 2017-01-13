; ModuleID = './app/config/gimppluginconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpPluginConfigClass = type { %struct._GimpGuiConfigClass }
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
%struct._GimpPluginConfig = type { %struct._GimpGuiConfig, i8*, i8*, i8*, i8*, i8* }
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

@gimp_plugin_config_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpPluginConfig\00", align 1
@gimp_plugin_config_parent_class = internal global i8* null, align 8
@GimpPluginConfig_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"fractalexplorer\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"fractalexplorer-path\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"Where to search for fractals used by the Fractal Explorer plug-in.\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"gfig\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"gfig-path\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"Where to search for Gfig figures used by the Gfig plug-in.\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"gflare\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"gflare-path\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"Where to search for gflares used by the GFlare plug-in.\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"gimpressionist\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"gimpressionist-path\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"Where to search for data used by the Gimpressionist plug-in.\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"scripts\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"script-fu-path\00", align 1
@.str.15 = private unnamed_addr constant [74 x i8] c"This path will be searched for scripts when the Script-Fu plug-in is run.\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"gimppluginconfig.c\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_plugin_config_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_plugin_config_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_plugin_config_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_gui_config_get_type() #5
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_plugin_config_class_intern_init to void (i8*, i8*)*), i32 776, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpPluginConfig*)* @gimp_plugin_config_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_plugin_config_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_plugin_config_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plugin_config_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_plugin_config_parent_class, align 8
  %1 = load i32, i32* @GimpPluginConfig_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpPluginConfig_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpPluginConfigClass*
  call void @gimp_plugin_config_class_init(%struct._GimpPluginConfigClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plugin_config_init(%struct._GimpPluginConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpPluginConfig*, align 8
  store %struct._GimpPluginConfig* %config, %struct._GimpPluginConfig** %config.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plugin_config_class_init(%struct._GimpPluginConfigClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpPluginConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %path = alloca i8*, align 8
  store %struct._GimpPluginConfigClass* %klass, %struct._GimpPluginConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpPluginConfigClass*, %struct._GimpPluginConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpPluginConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_plugin_config_finalize, void (%struct._GObject*)** %finalize, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_plugin_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_plugin_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %call1 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call1, i8** %path, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %7 = load i8*, i8** %path, align 8
  %call2 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i32 0, i32 0), i32 3, i8* %7, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %6, i32 1, %struct._GParamSpec* %call2)
  %8 = load i8*, i8** %path, align 8
  call void @g_free(i8* %8)
  %call3 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call3, i8** %path, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %10 = load i8*, i8** %path, align 8
  %call4 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i32 0, i32 0), i32 3, i8* %10, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 2, %struct._GParamSpec* %call4)
  %11 = load i8*, i8** %path, align 8
  call void @g_free(i8* %11)
  %call5 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call5, i8** %path, align 8
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %13 = load i8*, i8** %path, align 8
  %call6 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0), i32 3, i8* %13, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 3, %struct._GParamSpec* %call6)
  %14 = load i8*, i8** %path, align 8
  call void @g_free(i8* %14)
  %call7 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  store i8* %call7, i8** %path, align 8
  %15 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %16 = load i8*, i8** %path, align 8
  %call8 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i32 0, i32 0), i32 3, i8* %16, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %15, i32 4, %struct._GParamSpec* %call8)
  %17 = load i8*, i8** %path, align 8
  call void @g_free(i8* %17)
  %call9 = call noalias i8* @gimp_config_build_data_path(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call9, i8** %path, align 8
  %18 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %19 = load i8*, i8** %path, align 8
  %call10 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.15, i32 0, i32 0), i32 3, i8* %19, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %18, i32 5, %struct._GParamSpec* %call10)
  %20 = load i8*, i8** %path, align 8
  call void @g_free(i8* %20)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_plugin_config_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %plugin_config = alloca %struct._GimpPluginConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plugin_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPluginConfig*
  store %struct._GimpPluginConfig* %2, %struct._GimpPluginConfig** %plugin_config, align 8
  %3 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %fractalexplorer_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %3, i32 0, i32 1
  %4 = load i8*, i8** %fractalexplorer_path, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gfig_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %5, i32 0, i32 2
  %6 = load i8*, i8** %gfig_path, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gflare_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %7, i32 0, i32 3
  %8 = load i8*, i8** %gflare_path, align 8
  call void @g_free(i8* %8)
  %9 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gimpressionist_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %9, i32 0, i32 4
  %10 = load i8*, i8** %gimpressionist_path, align 8
  call void @g_free(i8* %10)
  %11 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %script_fu_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %11, i32 0, i32 5
  %12 = load i8*, i8** %script_fu_path, align 8
  call void @g_free(i8* %12)
  %13 = load i8*, i8** @gimp_plugin_config_parent_class, align 8
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
define internal void @gimp_plugin_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %plugin_config = alloca %struct._GimpPluginConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plugin_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPluginConfig*
  store %struct._GimpPluginConfig* %2, %struct._GimpPluginConfig** %plugin_config, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.10
    i32 5, label %sw.bb.13
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %fractalexplorer_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %4, i32 0, i32 1
  %5 = load i8*, i8** %fractalexplorer_path, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_string(%struct._GValue* %6)
  %7 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %fractalexplorer_path3 = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %7, i32 0, i32 1
  store i8* %call2, i8** %fractalexplorer_path3, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %8 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gfig_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %8, i32 0, i32 2
  %9 = load i8*, i8** %gfig_path, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i8* @g_value_dup_string(%struct._GValue* %10)
  %11 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gfig_path6 = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %11, i32 0, i32 2
  store i8* %call5, i8** %gfig_path6, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gflare_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %12, i32 0, i32 3
  %13 = load i8*, i8** %gflare_path, align 8
  call void @g_free(i8* %13)
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i8* @g_value_dup_string(%struct._GValue* %14)
  %15 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gflare_path9 = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %15, i32 0, i32 3
  store i8* %call8, i8** %gflare_path9, align 8
  br label %sw.epilog

sw.bb.10:                                         ; preds = %entry
  %16 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gimpressionist_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %16, i32 0, i32 4
  %17 = load i8*, i8** %gimpressionist_path, align 8
  call void @g_free(i8* %17)
  %18 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call11 = call i8* @g_value_dup_string(%struct._GValue* %18)
  %19 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gimpressionist_path12 = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %19, i32 0, i32 4
  store i8* %call11, i8** %gimpressionist_path12, align 8
  br label %sw.epilog

sw.bb.13:                                         ; preds = %entry
  %20 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %script_fu_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %20, i32 0, i32 5
  %21 = load i8*, i8** %script_fu_path, align 8
  call void @g_free(i8* %21)
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call14 = call i8* @g_value_dup_string(%struct._GValue* %22)
  %23 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %script_fu_path15 = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %23, i32 0, i32 5
  store i8* %call14, i8** %script_fu_path15, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %24 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %24, %struct._GObject** %_glib__object, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %25, %struct._GParamSpec** %_glib__pspec, align 8
  %26 = load i32, i32* %property_id.addr, align 4
  store i32 %26, i32* %_glib__property_id, align 4
  %27 = load i32, i32* %_glib__property_id, align 4
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %28, i32 0, i32 1
  %29 = load i8*, i8** %name, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %31 = bitcast %struct._GParamSpec* %30 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type, align 8
  %call16 = call i8* @g_type_name(i64 %33)
  %34 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %35 = bitcast %struct._GObject* %34 to %struct._GTypeInstance*
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %g_type18 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %36, i32 0, i32 0
  %37 = load i64, i64* %g_type18, align 8
  %call19 = call i8* @g_type_name(i64 %37)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %27, i8* %29, i8* %call16, i8* %call19)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.13, %sw.bb.10, %sw.bb.7, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_plugin_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %plugin_config = alloca %struct._GimpPluginConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_plugin_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpPluginConfig*
  store %struct._GimpPluginConfig* %2, %struct._GimpPluginConfig** %plugin_config, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
    i32 5, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %fractalexplorer_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %5, i32 0, i32 1
  %6 = load i8*, i8** %fractalexplorer_path, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gfig_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %8, i32 0, i32 2
  %9 = load i8*, i8** %gfig_path, align 8
  call void @g_value_set_string(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gflare_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %11, i32 0, i32 3
  %12 = load i8*, i8** %gflare_path, align 8
  call void @g_value_set_string(%struct._GValue* %10, i8* %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %gimpressionist_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %14, i32 0, i32 4
  %15 = load i8*, i8** %gimpressionist_path, align 8
  call void @g_value_set_string(%struct._GValue* %13, i8* %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %16 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %17 = load %struct._GimpPluginConfig*, %struct._GimpPluginConfig** %plugin_config, align 8
  %script_fu_path = getelementptr inbounds %struct._GimpPluginConfig, %struct._GimpPluginConfig* %17, i32 0, i32 5
  %18 = load i8*, i8** %script_fu_path, align 8
  call void @g_value_set_string(%struct._GValue* %16, i8* %18)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %19 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %19, %struct._GObject** %_glib__object, align 8
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %20, %struct._GParamSpec** %_glib__pspec, align 8
  %21 = load i32, i32* %property_id.addr, align 4
  store i32 %21, i32* %_glib__property_id, align 4
  %22 = load i32, i32* %_glib__property_id, align 4
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 1
  %24 = load i8*, i8** %name, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %26 = bitcast %struct._GParamSpec* %25 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %26, i32 0, i32 0
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %27, i32 0, i32 0
  %28 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %28)
  %29 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %30 = bitcast %struct._GObject* %29 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %32)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i32 206, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i32 %22, i8* %24, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare noalias i8* @gimp_config_build_data_path(i8*) #1

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @gimp_param_spec_config_path(i8*, i8*, i8*, i32, i8*, i32) #1

declare void @g_free(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i8* @g_value_dup_string(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_string(%struct._GValue*, i8*) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
