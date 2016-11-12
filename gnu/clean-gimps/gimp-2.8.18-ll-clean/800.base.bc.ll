; ModuleID = './app/base/base.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GError = type { i32, i32, i8* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GDir = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.base_init = private unnamed_addr constant [10 x i8] c"base_init\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"GIMP_IS_BASE_CONFIG (config)\00", align 1
@base_config = internal global %struct._GimpBaseConfig* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"base_config == NULL\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"notify::tile-cache-size\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"swap-path\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"temp-path\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"notify::num-processors\00", align 1
@__func__.base_exit = private unnamed_addr constant [10 x i8] c"base_exit\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"base_config != NULL\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"gimpswap.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @base_init(%struct._GimpBaseConfig* %config, i32 %be_verbose, i32 %use_cpu_accel) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpBaseConfig*, align 8
  %be_verbose.addr = alloca i32, align 4
  %use_cpu_accel.addr = alloca i32, align 4
  %swap_is_ok = alloca i32, align 4
  %temp_dir = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpBaseConfig* %config, %struct._GimpBaseConfig** %config.addr, align 8
  store i32 %be_verbose, i32* %be_verbose.addr, align 4
  store i32 %use_cpu_accel, i32* %use_cpu_accel.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpBaseConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_base_config_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.base_init, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** @base_config, align 8
  %cmp12 = icmp eq %struct._GimpBaseConfig* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.base_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %15 = bitcast %struct._GimpBaseConfig* %14 to i8*
  %call17 = call i8* @g_object_ref(i8* %15)
  %16 = bitcast i8* %call17 to %struct._GimpBaseConfig*
  store %struct._GimpBaseConfig* %16, %struct._GimpBaseConfig** @base_config, align 8
  %17 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %tile_cache_size = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %17, i32 0, i32 4
  %18 = load i64, i64* %tile_cache_size, align 8
  call void @tile_cache_init(i64 %18)
  %19 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %20 = bitcast %struct._GimpBaseConfig* %19 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, i8*)* @base_tile_cache_size_notify to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %21 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %swap_path = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %21, i32 0, i32 2
  %22 = load i8*, i8** %swap_path, align 8
  %tobool19 = icmp ne i8* %22, null
  br i1 %tobool19, label %lor.lhs.false, label %if.then.22

lor.lhs.false:                                    ; preds = %do.end.16
  %23 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %swap_path20 = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %23, i32 0, i32 2
  %24 = load i8*, i8** %swap_path20, align 8
  %25 = load i8, i8* %24, align 1
  %tobool21 = icmp ne i8 %25, 0
  br i1 %tobool21, label %if.end.24, label %if.then.22

if.then.22:                                       ; preds = %lor.lhs.false, %do.end.16
  %26 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %27 = bitcast %struct._GimpBaseConfig* %26 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %lor.lhs.false
  %29 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %swap_path25 = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %29, i32 0, i32 2
  %30 = load i8*, i8** %swap_path25, align 8
  call void @base_toast_old_swap_files(i8* %30)
  %31 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %swap_path26 = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %31, i32 0, i32 2
  %32 = load i8*, i8** %swap_path26, align 8
  call void @tile_swap_init(i8* %32)
  %call27 = call i32 @tile_swap_test()
  store i32 %call27, i32* %swap_is_ok, align 4
  %33 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %temp_path = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %33, i32 0, i32 1
  %34 = load i8*, i8** %temp_path, align 8
  %tobool28 = icmp ne i8* %34, null
  br i1 %tobool28, label %lor.lhs.false.29, label %if.then.32

lor.lhs.false.29:                                 ; preds = %if.end.24
  %35 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %temp_path30 = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %35, i32 0, i32 1
  %36 = load i8*, i8** %temp_path30, align 8
  %37 = load i8, i8* %36, align 1
  %tobool31 = icmp ne i8 %37, 0
  br i1 %tobool31, label %if.end.34, label %if.then.32

if.then.32:                                       ; preds = %lor.lhs.false.29, %if.end.24
  %38 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %39 = bitcast %struct._GimpBaseConfig* %38 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %lor.lhs.false.29
  %41 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %temp_path35 = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %41, i32 0, i32 1
  %42 = load i8*, i8** %temp_path35, align 8
  %call36 = call noalias i8* @gimp_config_path_expand(i8* %42, i32 1, %struct._GError** null)
  store i8* %call36, i8** %temp_dir, align 8
  %43 = load i8*, i8** %temp_dir, align 8
  %call37 = call i32 @g_file_test(i8* %43, i32 16)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %if.end.34
  %44 = load i8*, i8** %temp_dir, align 8
  %call40 = call i32 @g_mkdir_with_parents(i8* %44, i32 493)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.34
  %45 = load i8*, i8** %temp_dir, align 8
  call void @g_free(i8* %45)
  %46 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %num_processors = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %46, i32 0, i32 3
  %47 = load i32, i32* %num_processors, align 4
  call void @pixel_processor_init(i32 %47)
  %48 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %49 = bitcast %struct._GimpBaseConfig* %48 to i8*
  %call42 = call i64 @g_signal_connect_data(i8* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GObject*, %struct._GParamSpec*, i8*)* @base_num_processors_notify to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  %50 = load i32, i32* %be_verbose.addr, align 4
  %51 = load i32, i32* %use_cpu_accel.addr, align 4
  call void @gimp_composite_init(i32 %50, i32 %51)
  call void @paint_funcs_setup()
  %52 = load i32, i32* %swap_is_ok, align 4
  store i32 %52, i32* %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.else.14, %if.else.9
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind readnone
declare i64 @gimp_base_config_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare i8* @g_object_ref(i8*) #3

declare void @tile_cache_init(i64) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @base_tile_cache_size_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, i8* %data) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_base_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBaseConfig*
  %tile_cache_size = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %2, i32 0, i32 4
  %3 = load i64, i64* %tile_cache_size, align 8
  call void @tile_cache_set_size(i64 %3)
  ret void
}

declare void @gimp_config_reset_property(%struct._GObject*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind uwtable
define internal void @base_toast_old_swap_files(i8* %swap_path) #0 {
entry:
  %swap_path.addr = alloca i8*, align 8
  %dir = alloca %struct._GDir*, align 8
  %dirname = alloca i8*, align 8
  %entry1 = alloca i8*, align 8
  %pid = alloca i32, align 4
  %filename = alloca i8*, align 8
  store i8* %swap_path, i8** %swap_path.addr, align 8
  store %struct._GDir* null, %struct._GDir** %dir, align 8
  %0 = load i8*, i8** %swap_path.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %swap_path.addr, align 8
  %call = call noalias i8* @gimp_config_path_expand(i8* %1, i32 1, %struct._GError** null)
  store i8* %call, i8** %dirname, align 8
  %2 = load i8*, i8** %dirname, align 8
  %tobool2 = icmp ne i8* %2, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load i8*, i8** %dirname, align 8
  %call5 = call %struct._GDir* @g_dir_open(i8* %3, i32 0, %struct._GError** null)
  store %struct._GDir* %call5, %struct._GDir** %dir, align 8
  %4 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %tobool6 = icmp ne %struct._GDir* %4, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  %5 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %5)
  br label %return

if.end.8:                                         ; preds = %if.end.4
  br label %while.cond

while.cond:                                       ; preds = %if.end.20, %if.end.8
  %6 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %call9 = call i8* @g_dir_read_name(%struct._GDir* %6)
  store i8* %call9, i8** %entry1, align 8
  %cmp = icmp ne i8* %call9, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %entry1, align 8
  %call10 = call i32 @g_str_has_prefix(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.20

if.then.12:                                       ; preds = %while.body
  %8 = load i8*, i8** %entry1, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 9
  %call13 = call i32 @atoi(i8* %add.ptr) #6
  store i32 %call13, i32* %pid, align 4
  %9 = load i32, i32* %pid, align 4
  %call14 = call i32 @kill(i32 %9, i32 0) #7
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.then.16, label %if.end.19

if.then.16:                                       ; preds = %if.then.12
  %10 = load i8*, i8** %dirname, align 8
  %11 = load i8*, i8** %entry1, align 8
  %call17 = call noalias i8* (i8*, ...) @g_build_filename(i8* %10, i8* %11, i8* null)
  store i8* %call17, i8** %filename, align 8
  %12 = load i8*, i8** %filename, align 8
  %call18 = call i32 @g_unlink(i8* %12)
  %13 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %13)
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.16, %if.then.12
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %14 = load %struct._GDir*, %struct._GDir** %dir, align 8
  call void @g_dir_close(%struct._GDir* %14)
  %15 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %15)
  br label %return

return:                                           ; preds = %while.end, %if.then.7, %if.then.3, %if.then
  ret void
}

declare void @tile_swap_init(i8*) #3

declare i32 @tile_swap_test() #3

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #3

declare i32 @g_file_test(i8*, i32) #3

declare i32 @g_mkdir_with_parents(i8*, i32) #3

declare void @g_free(i8*) #3

declare void @pixel_processor_init(i32) #3

; Function Attrs: nounwind uwtable
define internal void @base_num_processors_notify(%struct._GObject* %config, %struct._GParamSpec* %param_spec, i8* %data) #0 {
entry:
  %config.addr = alloca %struct._GObject*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GObject* %config, %struct._GObject** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %config.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_base_config_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBaseConfig*
  %num_processors = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %2, i32 0, i32 3
  %3 = load i32, i32* %num_processors, align 4
  call void @pixel_processor_set_num_threads(i32 %3)
  ret void
}

declare void @gimp_composite_init(i32, i32) #3

declare void @paint_funcs_setup() #3

; Function Attrs: nounwind uwtable
define void @base_exit() #0 {
entry:
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** @base_config, align 8
  %cmp = icmp ne %struct._GimpBaseConfig* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__func__.base_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  call void @pixel_processor_exit()
  call void @paint_funcs_free()
  call void @tile_cache_exit()
  call void @tile_swap_exit()
  %1 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** @base_config, align 8
  %2 = bitcast %struct._GimpBaseConfig* %1 to i8*
  %call = call i32 @g_signal_handlers_disconnect_matched(i8* %2, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GObject*, %struct._GParamSpec*, i8*)* @base_tile_cache_size_notify to i8*), i8* null)
  %3 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** @base_config, align 8
  %4 = bitcast %struct._GimpBaseConfig* %3 to i8*
  call void @g_object_unref(i8* %4)
  store %struct._GimpBaseConfig* null, %struct._GimpBaseConfig** @base_config, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare void @pixel_processor_exit() #3

declare void @paint_funcs_free() #3

declare void @tile_cache_exit() #3

declare void @tile_swap_exit() #3

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @g_object_unref(i8*) #3

declare %struct._GDir* @g_dir_open(i8*, i32, %struct._GError**) #3

declare i8* @g_dir_read_name(%struct._GDir*) #3

declare i32 @g_str_has_prefix(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i32 @kill(i32, i32) #4

declare noalias i8* @g_build_filename(i8*, ...) #3

declare i32 @g_unlink(i8*) #3

declare void @g_dir_close(%struct._GDir*) #3

declare void @tile_cache_set_size(i64) #3

declare void @pixel_processor_set_num_threads(i32) #3

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
