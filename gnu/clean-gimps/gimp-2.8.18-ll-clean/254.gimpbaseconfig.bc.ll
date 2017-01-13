; ModuleID = './app/config/gimpbaseconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GimpBaseConfigClass = type { %struct._GObjectClass }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_base_config_get_type.config_type = internal global i64 0, align 8
@gimp_base_config_get_type.config_info = internal constant %struct._GTypeInfo { i16 136, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GimpBaseConfigClass*)* @gimp_base_config_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 56, i16 0, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpBaseConfig*, %struct._GimpBaseConfigClass*)* @gimp_base_config_init to void (%struct._GTypeInstance*, i8*)*), %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpBaseConfig\00", align 1
@parent_class = internal global %struct._GObjectClass* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"temp-path\00", align 1
@.str.2 = private unnamed_addr constant [249 x i8] c"Sets the folder for temporary storage. Files will appear here during the course of running GIMP.  Most files will disappear when GIMP exits, but some files are likely to remain, so it is best if this folder not be one that is shared by other users.\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"${gimp_dir}/tmp\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"swap-path\00", align 1
@.str.5 = private unnamed_addr constant [421 x i8] c"Sets the swap file location. GIMP uses a tile based memory allocation scheme. The swap file is used to quickly and easily swap tiles out to disk and back in. Be aware that the swap file can easily get very large if GIMP is used with large images. Also, things can get horribly slow if the swap file is created on a folder that is mounted over NFS.  For these reasons, it may be desirable to put your swap file in \22/tmp\22.\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"${gimp_dir}\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"num-processors\00", align 1
@.str.8 = private unnamed_addr constant [64 x i8] c"Sets how many processors GIMP should try to use simultaneously.\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"tile-cache-size\00", align 1
@.str.10 = private unnamed_addr constant [266 x i8] c"When the amount of pixel data exceeds this limit, GIMP will start to swap tiles to disk.  This is a lot slower but it makes it possible to work on images that wouldn't fit into memory otherwise.  If you have a lot of RAM, you may want to set this to a higher value.\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"stingy-memory-use\00", align 1
@.str.12 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"gimpbaseconfig.c\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_base_config_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_base_config_get_type.config_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_base_config_get_type.config_info, i32 0)
  store i64 %call, i64* @gimp_base_config_get_type.config_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_base_config_get_type.config_type, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define internal void @gimp_base_config_class_init(%struct._GimpBaseConfigClass* %klass) #1 {
entry:
  %klass.addr = alloca %struct._GimpBaseConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %num_processors = alloca i32, align 4
  %memory_size = alloca i64, align 8
  store %struct._GimpBaseConfigClass* %klass, %struct._GimpBaseConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpBaseConfigClass*, %struct._GimpBaseConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpBaseConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpBaseConfigClass*, %struct._GimpBaseConfigClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBaseConfigClass* %3 to i8*
  %call1 = call i8* @g_type_class_peek_parent(i8* %4)
  %5 = bitcast i8* %call1 to %struct._GObjectClass*
  store %struct._GObjectClass* %5, %struct._GObjectClass** @parent_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_base_config_finalize, void (%struct._GObject*)** %finalize, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_base_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_base_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([249 x i8], [249 x i8]* @.str.2, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i32 0, i32 0), i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 1, %struct._GParamSpec* %call2)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @gimp_param_spec_config_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @.str.5, i32 0, i32 0), i32 2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 1511)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 2, %struct._GParamSpec* %call3)
  %call4 = call i32 @get_number_of_processors()
  store i32 %call4, i32* %num_processors, align 4
  %11 = load i32, i32* %num_processors, align 4
  %cmp = icmp slt i32 %11, 16
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %12 = load i32, i32* %num_processors, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %12, %cond.true ], [ 16, %cond.false ]
  store i32 %cond, i32* %num_processors, align 4
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %14 = load i32, i32* %num_processors, align 4
  %call5 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.8, i32 0, i32 0), i32 1, i32 16, i32 %14, i32 487)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 3, %struct._GParamSpec* %call5)
  %call6 = call i64 @get_physical_memory_size()
  store i64 %call6, i64* %memory_size, align 8
  %15 = load i64, i64* %memory_size, align 8
  %cmp7 = icmp ult i64 4398046511104, %15
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.10

cond.false.9:                                     ; preds = %cond.end
  %16 = load i64, i64* %memory_size, align 8
  br label %cond.end.10

cond.end.10:                                      ; preds = %cond.false.9, %cond.true.8
  %cond11 = phi i64 [ 4398046511104, %cond.true.8 ], [ %16, %cond.false.9 ]
  store i64 %cond11, i64* %memory_size, align 8
  %17 = load i64, i64* %memory_size, align 8
  %cmp12 = icmp ugt i64 %17, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.10
  %18 = load i64, i64* %memory_size, align 8
  %div = udiv i64 %18, 2
  store i64 %div, i64* %memory_size, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.10
  store i64 1073741824, i64* %memory_size, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %20 = load i64, i64* %memory_size, align 8
  %call13 = call %struct._GParamSpec* @gimp_param_spec_memsize(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([266 x i8], [266 x i8]* @.str.10, i32 0, i32 0), i64 0, i64 4398046511104, i64 %20, i32 2535)
  call void @g_object_class_install_property(%struct._GObjectClass* %19, i32 4, %struct._GParamSpec* %call13)
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call14 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* null, i8* null, i32 0, i32 8455)
  call void @g_object_class_install_property(%struct._GObjectClass* %21, i32 5, %struct._GParamSpec* %call14)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_base_config_init(%struct._GimpBaseConfig* %config, %struct._GimpBaseConfigClass* %klass) #1 {
entry:
  %config.addr = alloca %struct._GimpBaseConfig*, align 8
  %klass.addr = alloca %struct._GimpBaseConfigClass*, align 8
  store %struct._GimpBaseConfig* %config, %struct._GimpBaseConfig** %config.addr, align 8
  store %struct._GimpBaseConfigClass* %klass, %struct._GimpBaseConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpBaseConfig* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %3 = load %struct._GimpBaseConfigClass*, %struct._GimpBaseConfigClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpBaseConfigClass* %3 to %struct._GTypeClass*
  %call1 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 80)
  %5 = bitcast %struct._GTypeClass* %call1 to %struct._GObjectClass*
  call void @gimp_debug_add_instance(%struct._GObject* %2, %struct._GObjectClass* %5)
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #2

declare i8* @g_type_class_peek_parent(i8*) #2

; Function Attrs: nounwind uwtable
define internal void @gimp_base_config_finalize(%struct._GObject* %object) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %base_config = alloca %struct._GimpBaseConfig*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_base_config_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBaseConfig*
  store %struct._GimpBaseConfig* %2, %struct._GimpBaseConfig** %base_config, align 8
  %3 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %temp_path = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %3, i32 0, i32 1
  %4 = load i8*, i8** %temp_path, align 8
  call void @g_free(i8* %4)
  %5 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %swap_path = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %5, i32 0, i32 2
  %6 = load i8*, i8** %swap_path, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @gimp_debug_remove_instance(%struct._GObject* %7)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** @parent_class, align 8
  %9 = bitcast %struct._GObjectClass* %8 to %struct._GTypeClass*
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %9, i64 80)
  %10 = bitcast %struct._GTypeClass* %call2 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %10, i32 0, i32 6
  %11 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %12 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %11(%struct._GObject* %12)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_base_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %base_config = alloca %struct._GimpBaseConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_base_config_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBaseConfig*
  store %struct._GimpBaseConfig* %2, %struct._GimpBaseConfig** %base_config, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.7
    i32 4, label %sw.bb.9
    i32 5, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %temp_path = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %4, i32 0, i32 1
  %5 = load i8*, i8** %temp_path, align 8
  call void @g_free(i8* %5)
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_dup_string(%struct._GValue* %6)
  %7 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %temp_path3 = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %7, i32 0, i32 1
  store i8* %call2, i8** %temp_path3, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %8 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %swap_path = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %8, i32 0, i32 2
  %9 = load i8*, i8** %swap_path, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call5 = call i8* @g_value_dup_string(%struct._GValue* %10)
  %11 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %swap_path6 = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %11, i32 0, i32 2
  store i8* %call5, i8** %swap_path6, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call8 = call i32 @g_value_get_uint(%struct._GValue* %12)
  %13 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %num_processors = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %13, i32 0, i32 3
  store i32 %call8, i32* %num_processors, align 4
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %14 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call10 = call i64 @g_value_get_uint64(%struct._GValue* %14)
  %15 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %tile_cache_size = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %15, i32 0, i32 4
  store i64 %call10, i64* %tile_cache_size, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %16, %struct._GObject** %_glib__object, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %17, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = load i32, i32* %property_id.addr, align 4
  store i32 %18, i32* %_glib__property_id, align 4
  %19 = load i32, i32* %_glib__property_id, align 4
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type, align 8
  %call12 = call i8* @g_type_name(i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type14 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type14, align 8
  %call15 = call i8* @g_type_name(i64 %29)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i32 219, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %19, i8* %21, i8* %call12, i8* %call15)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.11, %sw.bb.9, %sw.bb.7, %sw.bb.4, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_base_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #1 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %base_config = alloca %struct._GimpBaseConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_base_config_get_type() #4
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpBaseConfig*
  store %struct._GimpBaseConfig* %2, %struct._GimpBaseConfig** %base_config, align 8
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
  %5 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %temp_path = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %5, i32 0, i32 1
  %6 = load i8*, i8** %temp_path, align 8
  call void @g_value_set_string(%struct._GValue* %4, i8* %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %swap_path = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %8, i32 0, i32 2
  %9 = load i8*, i8** %swap_path, align 8
  call void @g_value_set_string(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %num_processors = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %11, i32 0, i32 3
  %12 = load i32, i32* %num_processors, align 4
  call void @g_value_set_uint(%struct._GValue* %10, i32 %12)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %14 = load %struct._GimpBaseConfig*, %struct._GimpBaseConfig** %base_config, align 8
  %tile_cache_size = getelementptr inbounds %struct._GimpBaseConfig, %struct._GimpBaseConfig* %14, i32 0, i32 4
  %15 = load i64, i64* %tile_cache_size, align 8
  call void @g_value_set_uint64(%struct._GValue* %13, i64 %15)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %16 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %16, %struct._GObject** %_glib__object, align 8
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %17, %struct._GParamSpec** %_glib__pspec, align 8
  %18 = load i32, i32* %property_id.addr, align 4
  store i32 %18, i32* %_glib__property_id, align 4
  %19 = load i32, i32* %_glib__property_id, align 4
  %20 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %20, i32 0, i32 1
  %21 = load i8*, i8** %name, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %23, i32 0, i32 0
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %24, i32 0, i32 0
  %25 = load i64, i64* %g_type, align 8
  %call6 = call i8* @g_type_name(i64 %25)
  %26 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %27 = bitcast %struct._GObject* %26 to %struct._GTypeInstance*
  %g_class7 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class7, align 8
  %g_type8 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type8, align 8
  %call9 = call i8* @g_type_name(i64 %29)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0), i32 252, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.14, i32 0, i32 0), i32 %19, i8* %21, i8* %call6, i8* %call9)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #2

declare %struct._GParamSpec* @gimp_param_spec_config_path(i8*, i8*, i8*, i32, i8*, i32) #2

declare i32 @get_number_of_processors() #2

declare %struct._GParamSpec* @g_param_spec_uint(i8*, i8*, i8*, i32, i32, i32, i32) #2

declare i64 @get_physical_memory_size() #2

declare %struct._GParamSpec* @gimp_param_spec_memsize(i8*, i8*, i8*, i64, i64, i64, i32) #2

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

declare void @g_free(i8*) #2

declare void @gimp_debug_remove_instance(%struct._GObject*) #2

declare i8* @g_value_dup_string(%struct._GValue*) #2

declare i32 @g_value_get_uint(%struct._GValue*) #2

declare i64 @g_value_get_uint64(%struct._GValue*) #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #1 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare i8* @g_type_name(i64) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

declare void @g_value_set_string(%struct._GValue*, i8*) #2

declare void @g_value_set_uint(%struct._GValue*, i32) #2

declare void @g_value_set_uint64(%struct._GValue*, i64) #2

declare void @gimp_debug_add_instance(%struct._GObject*, %struct._GObjectClass*) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
