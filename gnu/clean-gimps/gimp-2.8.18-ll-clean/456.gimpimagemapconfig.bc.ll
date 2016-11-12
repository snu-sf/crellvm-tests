; ModuleID = './app/core/gimpimagemapconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpImageMapConfigClass = type { %struct._GimpViewableClass }
%struct._GimpViewableClass = type { %struct._GimpObjectClass, i8*, i8*, void (%struct._GimpViewable*)*, void (%struct._GimpViewable*)*, i32 (%struct._GimpViewable*, i32*, i32*)*, void (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, i32 (%struct._GimpViewable*, i32, i32, i32, i32*, i32*)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._TempBuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, %struct._GdkPixbuf* (%struct._GimpViewable*, %struct._GimpContext*, i32, i32)*, i8* (%struct._GimpViewable*, i8**)*, %struct._GimpContainer* (%struct._GimpViewable*)*, void (%struct._GimpViewable*, i32)*, i32 (%struct._GimpViewable*)* }
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
%struct._GimpViewable = type { %struct._GimpObject }
%struct._TempBuf = type opaque
%struct._GimpContext = type opaque
%struct._GdkPixbuf = type opaque
%struct._GimpContainer = type opaque
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_image_map_config_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"GimpImageMapConfig\00", align 1
@gimp_image_map_config_parent_class = internal global i8* null, align 8
@GimpImageMapConfig_private_offset = internal global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Time of settings creation\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"%Y-%m-%d %H:%M:%S\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"gimpimagemapconfig.c\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_image_map_config_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_image_map_config_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_image_map_config_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_viewable_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_image_map_config_class_intern_init to void (i8*, i8*)*), i32 40, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpImageMapConfig*)* @gimp_image_map_config_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_image_map_config_get_type.g_define_type_id__volatile to i8*), i64 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %6 = load volatile i64, i64* @gimp_image_map_config_get_type.g_define_type_id__volatile, align 8
  ret i64 %6
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_config_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_image_map_config_parent_class, align 8
  %1 = load i32, i32* @GimpImageMapConfig_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpImageMapConfig_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpImageMapConfigClass*
  call void @gimp_image_map_config_class_init(%struct._GimpImageMapConfigClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_config_init(%struct._GimpImageMapConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpImageMapConfig*, align 8
  store %struct._GimpImageMapConfig* %config, %struct._GimpImageMapConfig** %config.addr, align 8
  ret void
}

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_image_map_config_compare(%struct._GimpImageMapConfig* %a, %struct._GimpImageMapConfig* %b) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._GimpImageMapConfig*, align 8
  %b.addr = alloca %struct._GimpImageMapConfig*, align 8
  %name_a = alloca i8*, align 8
  %name_b = alloca i8*, align 8
  store %struct._GimpImageMapConfig* %a, %struct._GimpImageMapConfig** %a.addr, align 8
  store %struct._GimpImageMapConfig* %b, %struct._GimpImageMapConfig** %b.addr, align 8
  %0 = load %struct._GimpImageMapConfig*, %struct._GimpImageMapConfig** %a.addr, align 8
  %1 = bitcast %struct._GimpImageMapConfig* %0 to i8*
  %call = call i8* @gimp_object_get_name(i8* %1)
  store i8* %call, i8** %name_a, align 8
  %2 = load %struct._GimpImageMapConfig*, %struct._GimpImageMapConfig** %b.addr, align 8
  %3 = bitcast %struct._GimpImageMapConfig* %2 to i8*
  %call1 = call i8* @gimp_object_get_name(i8* %3)
  store i8* %call1, i8** %name_b, align 8
  %4 = load %struct._GimpImageMapConfig*, %struct._GimpImageMapConfig** %a.addr, align 8
  %time = getelementptr inbounds %struct._GimpImageMapConfig, %struct._GimpImageMapConfig* %4, i32 0, i32 1
  %5 = load i32, i32* %time, align 4
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct._GimpImageMapConfig*, %struct._GimpImageMapConfig** %b.addr, align 8
  %time2 = getelementptr inbounds %struct._GimpImageMapConfig, %struct._GimpImageMapConfig* %6, i32 0, i32 1
  %7 = load i32, i32* %time2, align 4
  %cmp3 = icmp ugt i32 %7, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %8 = load i8*, i8** %name_a, align 8
  %9 = load i8*, i8** %name_b, align 8
  %call4 = call i32 @strcmp(i8* %8, i8* %9) #8
  %sub = sub nsw i32 0, %call4
  store i32 %sub, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  %10 = load %struct._GimpImageMapConfig*, %struct._GimpImageMapConfig** %a.addr, align 8
  %time5 = getelementptr inbounds %struct._GimpImageMapConfig, %struct._GimpImageMapConfig* %10, i32 0, i32 1
  %11 = load i32, i32* %time5, align 4
  %cmp6 = icmp ugt i32 %11, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  store i32 -1, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  %12 = load %struct._GimpImageMapConfig*, %struct._GimpImageMapConfig** %b.addr, align 8
  %time9 = getelementptr inbounds %struct._GimpImageMapConfig, %struct._GimpImageMapConfig* %12, i32 0, i32 1
  %13 = load i32, i32* %time9, align 4
  %cmp10 = icmp ugt i32 %13, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store i32 1, i32* %retval
  br label %return

if.else.12:                                       ; preds = %if.else.8
  %14 = load i8*, i8** %name_a, align 8
  %tobool = icmp ne i8* %14, null
  br i1 %tobool, label %land.lhs.true.13, label %if.else.17

land.lhs.true.13:                                 ; preds = %if.else.12
  %15 = load i8*, i8** %name_b, align 8
  %tobool14 = icmp ne i8* %15, null
  br i1 %tobool14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %land.lhs.true.13
  %16 = load i8*, i8** %name_a, align 8
  %17 = load i8*, i8** %name_b, align 8
  %call16 = call i32 @strcmp(i8* %16, i8* %17) #8
  store i32 %call16, i32* %retval
  br label %return

if.else.17:                                       ; preds = %land.lhs.true.13, %if.else.12
  %18 = load i8*, i8** %name_a, align 8
  %tobool18 = icmp ne i8* %18, null
  br i1 %tobool18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.17
  store i32 1, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.else.17
  %19 = load i8*, i8** %name_b, align 8
  %tobool21 = icmp ne i8* %19, null
  br i1 %tobool21, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.else.20
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else.20
  br label %if.end.23

if.end.23:                                        ; preds = %if.end
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.22, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i8* @gimp_object_get_name(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_config_class_init(%struct._GimpImageMapConfigClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpImageMapConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpImageMapConfigClass* %klass, %struct._GimpImageMapConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpImageMapConfigClass*, %struct._GimpImageMapConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpImageMapConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_image_map_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_image_map_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_uint(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 0, i32 -1, i32 0, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %5, i32 1, %struct._GParamSpec* %call1)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %config = alloca %struct._GimpImageMapConfig*, align 8
  %t = alloca i64, align 8
  %tm = alloca %struct.tm, align 8
  %buf = alloca [64 x i8], align 16
  %name = alloca i8*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapConfig*
  store %struct._GimpImageMapConfig* %2, %struct._GimpImageMapConfig** %config, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_uint(%struct._GValue* %4)
  %5 = load %struct._GimpImageMapConfig*, %struct._GimpImageMapConfig** %config, align 8
  %time = getelementptr inbounds %struct._GimpImageMapConfig, %struct._GimpImageMapConfig* %5, i32 0, i32 1
  store i32 %call2, i32* %time, align 4
  %6 = load %struct._GimpImageMapConfig*, %struct._GimpImageMapConfig** %config, align 8
  %time3 = getelementptr inbounds %struct._GimpImageMapConfig, %struct._GimpImageMapConfig* %6, i32 0, i32 1
  %7 = load i32, i32* %time3, align 4
  %cmp = icmp ugt i32 %7, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  %8 = load %struct._GimpImageMapConfig*, %struct._GimpImageMapConfig** %config, align 8
  %time4 = getelementptr inbounds %struct._GimpImageMapConfig, %struct._GimpImageMapConfig* %8, i32 0, i32 1
  %9 = load i32, i32* %time4, align 4
  %conv = zext i32 %9 to i64
  store i64 %conv, i64* %t, align 8
  %call5 = call %struct.tm* @localtime(i64* %t) #6
  %10 = bitcast %struct.tm* %tm to i8*
  %11 = bitcast %struct.tm* %call5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %10, i8* %11, i64 56, i32 8, i1 false)
  %arraydecay = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call6 = call i64 @strftime(i8* %arraydecay, i64 64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i32 0, i32 0), %struct.tm* %tm) #6
  %arraydecay7 = getelementptr inbounds [64 x i8], [64 x i8]* %buf, i32 0, i32 0
  %call8 = call noalias i8* @g_locale_to_utf8(i8* %arraydecay7, i64 -1, i64* null, i64* null, %struct._GError** null)
  store i8* %call8, i8** %name, align 8
  %12 = load %struct._GimpImageMapConfig*, %struct._GimpImageMapConfig** %config, align 8
  %13 = bitcast %struct._GimpImageMapConfig* %12 to %struct._GTypeInstance*
  %call9 = call i64 @gimp_object_get_type() #7
  %call10 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %13, i64 %call9)
  %14 = bitcast %struct._GTypeInstance* %call10 to %struct._GimpObject*
  %15 = load i8*, i8** %name, align 8
  call void @gimp_object_set_name(%struct._GimpObject* %14, i8* %15)
  %16 = load i8*, i8** %name, align 8
  call void @g_free(i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %17, %struct._GObject** %_glib__object, align 8
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %18, %struct._GParamSpec** %_glib__pspec, align 8
  %19 = load i32, i32* %property_id.addr, align 4
  store i32 %19, i32* %_glib__property_id, align 4
  %20 = load i32, i32* %_glib__property_id, align 4
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name11 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name11, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %24 = bitcast %struct._GParamSpec* %23 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type, align 8
  %call12 = call i8* @g_type_name(i64 %26)
  %27 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %28 = bitcast %struct._GObject* %27 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %28, i32 0, i32 0
  %29 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %g_type14 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %29, i32 0, i32 0
  %30 = load i64, i64* %g_type14, align 8
  %call15 = call i8* @g_type_name(i64 %30)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32 127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %20, i8* %22, i8* %call12, i8* %call15)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_image_map_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %config = alloca %struct._GimpImageMapConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_image_map_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpImageMapConfig*
  store %struct._GimpImageMapConfig* %2, %struct._GimpImageMapConfig** %config, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpImageMapConfig*, %struct._GimpImageMapConfig** %config, align 8
  %time = getelementptr inbounds %struct._GimpImageMapConfig, %struct._GimpImageMapConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %time, align 4
  call void @g_value_set_uint(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %7, %struct._GObject** %_glib__object, align 8
  %8 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %8, %struct._GParamSpec** %_glib__pspec, align 8
  %9 = load i32, i32* %property_id.addr, align 4
  store i32 %9, i32* %_glib__property_id, align 4
  %10 = load i32, i32* %_glib__property_id, align 4
  %11 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %11, i32 0, i32 1
  %12 = load i8*, i8** %name, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %15, i32 0, i32 0
  %16 = load i64, i64* %g_type, align 8
  %call2 = call i8* @g_type_name(i64 %16)
  %17 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %18 = bitcast %struct._GObject* %17 to %struct._GTypeInstance*
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type4 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type4, align 8
  %call5 = call i8* @g_type_name(i64 %20)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32 91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i32 0, i32 0), i32 %10, i8* %12, i8* %call2, i8* %call5)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_uint(i8*, i8*, i8*, i32, i32, i32, i32) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare i32 @g_value_get_uint(%struct._GValue*) #1

; Function Attrs: nounwind
declare %struct.tm* @localtime(i64*) #5

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

; Function Attrs: nounwind
declare i64 @strftime(i8*, i64, i8*, %struct.tm*) #5

declare noalias i8* @g_locale_to_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @gimp_object_set_name(%struct._GimpObject*, i8*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_object_get_type() #2

declare void @g_free(i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_uint(%struct._GValue*, i32) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
