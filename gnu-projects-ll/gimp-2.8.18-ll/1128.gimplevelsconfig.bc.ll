; ModuleID = './app/gegl/gimplevelsconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpLevelsConfigClass = type { %struct._GimpImageMapConfigClass }
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
%struct._GimpLevelsConfig = type { %struct._GimpImageMapConfig, i32, [5 x double], [5 x double], [5 x double], [5 x double], [5 x double] }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpConfig = type opaque
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GimpHistogram = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpCurvesConfig = type { %struct._GimpImageMapConfig, i32, [5 x %struct._GimpCurve*] }
%struct._GimpCurve = type { %struct._GimpData, i32, i32, %struct._GimpVector2*, i32, double*, i32 }
%struct._GimpData = type { %struct._GimpViewable }
%struct._GimpVector2 = type { double, double }
%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Levels = type { [5 x double], [5 x i32], [5 x i32], [5 x i32], [5 x i32] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_levels_config_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"GimpLevelsConfig\00", align 1
@gimp_levels_config_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_levels_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@__func__.gimp_levels_config_reset_channel = private unnamed_addr constant [33 x i8] c"gimp_levels_config_reset_channel\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GIMP_IS_LEVELS_CONFIG (config)\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"gamma\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"low-input\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"high-input\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"low-output\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"high-output\00", align 1
@__func__.gimp_levels_config_stretch = private unnamed_addr constant [27 x i8] c"gimp_levels_config_stretch\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"histogram != NULL\00", align 1
@__func__.gimp_levels_config_stretch_channel = private unnamed_addr constant [35 x i8] c"gimp_levels_config_stretch_channel\00", align 1
@__func__.gimp_levels_config_adjust_by_colors = private unnamed_addr constant [36 x i8] c"gimp_levels_config_adjust_by_colors\00", align 1
@__func__.gimp_levels_config_to_curves_config = private unnamed_addr constant [36 x i8] c"gimp_levels_config_to_curves_config\00", align 1
@gimp_levels_config_to_curves_config.n = internal constant i32 4, align 4
@__func__.gimp_levels_config_load_cruft = private unnamed_addr constant [30 x i8] c"gimp_levels_config_load_cruft\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"file != NULL\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"# GIMP Levels File\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"not a GIMP Levels file\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"%d %d %d %d \00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"parse error\00", align 1
@__func__.gimp_levels_config_save_cruft = private unnamed_addr constant [30 x i8] c"gimp_levels_config_save_cruft\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"%d %d %d %d %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@__func__.gimp_levels_config_to_cruft = private unnamed_addr constant [28 x i8] c"gimp_levels_config_to_cruft\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"cruft != NULL\00", align 1
@gimp_levels_config_parent_class = internal global i8* null, align 8
@GimpLevelsConfig_private_offset = internal global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c"gimp-tool-levels\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"The affected channel\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"Gamma\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"Low Input\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"High Input\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Low Output\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"High Output\00", align 1
@.str.26 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"gimplevelsconfig.c\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"time\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_levels_config_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_levels_config_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_levels_config_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_map_config_get_type() #7
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_levels_config_class_intern_init to void (i8*, i8*)*), i32 248, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpLevelsConfig*)* @gimp_levels_config_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #7
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_levels_config_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_levels_config_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_levels_config_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_config_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_config_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_levels_config_parent_class, align 8
  %1 = load i32, i32* @GimpLevelsConfig_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpLevelsConfig_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpLevelsConfigClass*
  call void @gimp_levels_config_class_init(%struct._GimpLevelsConfigClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_config_init(%struct._GimpLevelsConfig* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpLevelsConfig*, align 8
  store %struct._GimpLevelsConfig* %self, %struct._GimpLevelsConfig** %self.addr, align 8
  %0 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self.addr, align 8
  %1 = bitcast %struct._GimpLevelsConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_config_interface_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 1
  store i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)* @gimp_levels_config_serialize, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %1 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %1, i32 0, i32 2
  store i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)* @gimp_levels_config_deserialize, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %2 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %equal = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %2, i32 0, i32 6
  store i32 (%struct._GimpConfig*, %struct._GimpConfig*)* @gimp_levels_config_equal, i32 (%struct._GimpConfig*, %struct._GimpConfig*)** %equal, align 8
  %3 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %reset = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %3, i32 0, i32 7
  store void (%struct._GimpConfig*)* @gimp_levels_config_reset, void (%struct._GimpConfig*)** %reset, align 8
  %4 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %copy = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %4, i32 0, i32 8
  store i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* @gimp_levels_config_copy, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)** %copy, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_levels_config_reset_channel(%struct._GimpLevelsConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpLevelsConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLevelsConfig* %config, %struct._GimpLevelsConfig** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpLevelsConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_levels_config_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_levels_config_reset_channel, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %14 = bitcast %struct._GimpLevelsConfig* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %15)
  %16 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %17 = bitcast %struct._GimpLevelsConfig* %16 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %19 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %20 = bitcast %struct._GimpLevelsConfig* %19 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %22 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %23 = bitcast %struct._GimpLevelsConfig* %22 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %25 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %26 = bitcast %struct._GimpLevelsConfig* %25 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %27, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %28 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %29 = bitcast %struct._GimpLevelsConfig* %28 to %struct._GTypeInstance*
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %29, i64 80)
  %30 = bitcast %struct._GTypeInstance* %call16 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %31 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %32 = bitcast %struct._GimpLevelsConfig* %31 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %33)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare void @g_object_freeze_notify(%struct._GObject*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare void @gimp_config_reset_property(%struct._GObject*, i8*) #1

declare void @g_object_thaw_notify(%struct._GObject*) #1

; Function Attrs: nounwind uwtable
define void @gimp_levels_config_stretch(%struct._GimpLevelsConfig* %config, %struct._GimpHistogram* %histogram, i32 %is_color) #3 {
entry:
  %config.addr = alloca %struct._GimpLevelsConfig*, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %is_color.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %channel = alloca i32, align 4
  store %struct._GimpLevelsConfig* %config, %struct._GimpLevelsConfig** %config.addr, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %is_color, i32* %is_color.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpLevelsConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_levels_config_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_levels_config_stretch, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp12 = icmp ne %struct._GimpHistogram* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_levels_config_stretch, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %15 = bitcast %struct._GimpLevelsConfig* %14 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %16)
  %17 = load i32, i32* %is_color.addr, align 4
  %tobool18 = icmp ne i32 %17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.25

if.then.19:                                       ; preds = %do.end.16
  %18 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %channel21 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %18, i32 0, i32 1
  %19 = load i32, i32* %channel21, align 4
  store i32 %19, i32* %channel, align 4
  %20 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %channel22 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %20, i32 0, i32 1
  store i32 0, i32* %channel22, align 4
  %21 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  call void @gimp_levels_config_reset_channel(%struct._GimpLevelsConfig* %21)
  %22 = load i32, i32* %channel, align 4
  %23 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %channel23 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %23, i32 0, i32 1
  store i32 %22, i32* %channel23, align 4
  store i32 1, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.19
  %24 = load i32, i32* %channel, align 4
  %cmp24 = icmp ule i32 %24, 3
  br i1 %cmp24, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %26 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %27 = load i32, i32* %channel, align 4
  call void @gimp_levels_config_stretch_channel(%struct._GimpLevelsConfig* %25, %struct._GimpHistogram* %26, i32 %27)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %channel, align 4
  %inc = add i32 %28, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.26

if.else.25:                                       ; preds = %do.end.16
  %29 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %30 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  call void @gimp_levels_config_stretch_channel(%struct._GimpLevelsConfig* %29, %struct._GimpHistogram* %30, i32 0)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.25, %for.end
  %31 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %32 = bitcast %struct._GimpLevelsConfig* %31 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 80)
  %33 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %33)
  br label %return

return:                                           ; preds = %if.end.26, %if.else.14, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_levels_config_stretch_channel(%struct._GimpLevelsConfig* %config, %struct._GimpHistogram* %histogram, i32 %channel) #3 {
entry:
  %config.addr = alloca %struct._GimpLevelsConfig*, align 8
  %histogram.addr = alloca %struct._GimpHistogram*, align 8
  %channel.addr = alloca i32, align 4
  %count = alloca double, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %new_count = alloca double, align 8
  %percentage = alloca double, align 8
  %next_percentage = alloca double, align 8
  store %struct._GimpLevelsConfig* %config, %struct._GimpLevelsConfig** %config.addr, align 8
  store %struct._GimpHistogram* %histogram, %struct._GimpHistogram** %histogram.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpLevelsConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_levels_config_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_levels_config_stretch_channel, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %cmp12 = icmp ne %struct._GimpHistogram* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.gimp_levels_config_stretch_channel, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %15 = bitcast %struct._GimpLevelsConfig* %14 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %16)
  %17 = load i32, i32* %channel.addr, align 4
  %idxprom = zext i32 %17 to i64
  %18 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %18, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom
  store double 1.000000e+00, double* %arrayidx, align 8
  %19 = load i32, i32* %channel.addr, align 4
  %idxprom18 = zext i32 %19 to i64
  %20 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %20, i32 0, i32 5
  %arrayidx19 = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 %idxprom18
  store double 0.000000e+00, double* %arrayidx19, align 8
  %21 = load i32, i32* %channel.addr, align 4
  %idxprom20 = zext i32 %21 to i64
  %22 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %22, i32 0, i32 6
  %arrayidx21 = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 %idxprom20
  store double 1.000000e+00, double* %arrayidx21, align 8
  %23 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %24 = load i32, i32* %channel.addr, align 4
  %call22 = call double @gimp_histogram_get_count(%struct._GimpHistogram* %23, i32 %24, i32 0, i32 255)
  store double %call22, double* %count, align 8
  %25 = load double, double* %count, align 8
  %cmp23 = fcmp oeq double %25, 0.000000e+00
  br i1 %cmp23, label %if.then.24, label %if.else.29

if.then.24:                                       ; preds = %do.end.16
  %26 = load i32, i32* %channel.addr, align 4
  %idxprom25 = zext i32 %26 to i64
  %27 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %27, i32 0, i32 3
  %arrayidx26 = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom25
  store double 0.000000e+00, double* %arrayidx26, align 8
  %28 = load i32, i32* %channel.addr, align 4
  %idxprom27 = zext i32 %28 to i64
  %29 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %29, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom27
  store double 0.000000e+00, double* %arrayidx28, align 8
  br label %if.end.77

if.else.29:                                       ; preds = %do.end.16
  store double 0.000000e+00, double* %new_count, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.29
  %30 = load i32, i32* %i, align 4
  %cmp33 = icmp slt i32 %30, 255
  br i1 %cmp33, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %31 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %32 = load i32, i32* %channel.addr, align 4
  %33 = load i32, i32* %i, align 4
  %call34 = call double @gimp_histogram_get_value(%struct._GimpHistogram* %31, i32 %32, i32 %33)
  %34 = load double, double* %new_count, align 8
  %add = fadd double %34, %call34
  store double %add, double* %new_count, align 8
  %35 = load double, double* %new_count, align 8
  %36 = load double, double* %count, align 8
  %div = fdiv double %35, %36
  store double %div, double* %percentage, align 8
  %37 = load double, double* %new_count, align 8
  %38 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %39 = load i32, i32* %channel.addr, align 4
  %40 = load i32, i32* %i, align 4
  %add35 = add nsw i32 %40, 1
  %call36 = call double @gimp_histogram_get_value(%struct._GimpHistogram* %38, i32 %39, i32 %add35)
  %add37 = fadd double %37, %call36
  %41 = load double, double* %count, align 8
  %div38 = fdiv double %add37, %41
  store double %div38, double* %next_percentage, align 8
  %42 = load double, double* %percentage, align 8
  %sub = fsub double %42, 6.000000e-03
  %call39 = call double @fabs(double %sub) #7
  %43 = load double, double* %next_percentage, align 8
  %sub40 = fsub double %43, 6.000000e-03
  %call41 = call double @fabs(double %sub40) #7
  %cmp42 = fcmp olt double %call39, %call41
  br i1 %cmp42, label %if.then.43, label %if.end.49

if.then.43:                                       ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %add44 = add nsw i32 %44, 1
  %conv = sitofp i32 %add44 to double
  %div45 = fdiv double %conv, 2.550000e+02
  %45 = load i32, i32* %channel.addr, align 4
  %idxprom46 = zext i32 %45 to i64
  %46 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input47 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %46, i32 0, i32 3
  %arrayidx48 = getelementptr inbounds [5 x double], [5 x double]* %low_input47, i32 0, i64 %idxprom46
  store double %div45, double* %arrayidx48, align 8
  br label %for.end

if.end.49:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.49
  %47 = load i32, i32* %i, align 4
  %inc = add nsw i32 %47, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.43, %for.cond
  store double 0.000000e+00, double* %new_count, align 8
  store i32 255, i32* %i, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.75, %for.end
  %48 = load i32, i32* %i, align 4
  %cmp51 = icmp sgt i32 %48, 0
  br i1 %cmp51, label %for.body.53, label %for.end.76

for.body.53:                                      ; preds = %for.cond.50
  %49 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %50 = load i32, i32* %channel.addr, align 4
  %51 = load i32, i32* %i, align 4
  %call54 = call double @gimp_histogram_get_value(%struct._GimpHistogram* %49, i32 %50, i32 %51)
  %52 = load double, double* %new_count, align 8
  %add55 = fadd double %52, %call54
  store double %add55, double* %new_count, align 8
  %53 = load double, double* %new_count, align 8
  %54 = load double, double* %count, align 8
  %div56 = fdiv double %53, %54
  store double %div56, double* %percentage, align 8
  %55 = load double, double* %new_count, align 8
  %56 = load %struct._GimpHistogram*, %struct._GimpHistogram** %histogram.addr, align 8
  %57 = load i32, i32* %channel.addr, align 4
  %58 = load i32, i32* %i, align 4
  %sub57 = sub nsw i32 %58, 1
  %call58 = call double @gimp_histogram_get_value(%struct._GimpHistogram* %56, i32 %57, i32 %sub57)
  %add59 = fadd double %55, %call58
  %59 = load double, double* %count, align 8
  %div60 = fdiv double %add59, %59
  store double %div60, double* %next_percentage, align 8
  %60 = load double, double* %percentage, align 8
  %sub61 = fsub double %60, 6.000000e-03
  %call62 = call double @fabs(double %sub61) #7
  %61 = load double, double* %next_percentage, align 8
  %sub63 = fsub double %61, 6.000000e-03
  %call64 = call double @fabs(double %sub63) #7
  %cmp65 = fcmp olt double %call62, %call64
  br i1 %cmp65, label %if.then.67, label %if.end.74

if.then.67:                                       ; preds = %for.body.53
  %62 = load i32, i32* %i, align 4
  %sub68 = sub nsw i32 %62, 1
  %conv69 = sitofp i32 %sub68 to double
  %div70 = fdiv double %conv69, 2.550000e+02
  %63 = load i32, i32* %channel.addr, align 4
  %idxprom71 = zext i32 %63 to i64
  %64 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input72 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %64, i32 0, i32 4
  %arrayidx73 = getelementptr inbounds [5 x double], [5 x double]* %high_input72, i32 0, i64 %idxprom71
  store double %div70, double* %arrayidx73, align 8
  br label %for.end.76

if.end.74:                                        ; preds = %for.body.53
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %65 = load i32, i32* %i, align 4
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.50

for.end.76:                                       ; preds = %if.then.67, %for.cond.50
  br label %if.end.77

if.end.77:                                        ; preds = %for.end.76, %if.then.24
  %66 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %67 = bitcast %struct._GimpLevelsConfig* %66 to %struct._GTypeInstance*
  %call78 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %67, i64 80)
  %68 = bitcast %struct._GTypeInstance* %call78 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %69 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %70 = bitcast %struct._GimpLevelsConfig* %69 to %struct._GTypeInstance*
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %70, i64 80)
  %71 = bitcast %struct._GTypeInstance* %call79 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %71, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %72 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %73 = bitcast %struct._GimpLevelsConfig* %72 to %struct._GTypeInstance*
  %call80 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %73, i64 80)
  %74 = bitcast %struct._GTypeInstance* %call80 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %74, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %75 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %76 = bitcast %struct._GimpLevelsConfig* %75 to %struct._GTypeInstance*
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %76, i64 80)
  %77 = bitcast %struct._GTypeInstance* %call81 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %78 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %79 = bitcast %struct._GimpLevelsConfig* %78 to %struct._GTypeInstance*
  %call82 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %79, i64 80)
  %80 = bitcast %struct._GTypeInstance* %call82 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %80, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %81 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %82 = bitcast %struct._GimpLevelsConfig* %81 to %struct._GTypeInstance*
  %call83 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %82, i64 80)
  %83 = bitcast %struct._GTypeInstance* %call83 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %83)
  br label %return

return:                                           ; preds = %if.end.77, %if.else.14, %if.else.9
  ret void
}

declare double @gimp_histogram_get_count(%struct._GimpHistogram*, i32, i32, i32) #1

declare double @gimp_histogram_get_value(%struct._GimpHistogram*, i32, i32) #1

; Function Attrs: nounwind readnone
declare double @fabs(double) #2

declare void @g_object_notify(%struct._GObject*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_levels_config_adjust_by_colors(%struct._GimpLevelsConfig* %config, i32 %channel, %struct._GimpRGB* %black, %struct._GimpRGB* %gray, %struct._GimpRGB* %white) #3 {
entry:
  %config.addr = alloca %struct._GimpLevelsConfig*, align 8
  %channel.addr = alloca i32, align 4
  %black.addr = alloca %struct._GimpRGB*, align 8
  %gray.addr = alloca %struct._GimpRGB*, align 8
  %white.addr = alloca %struct._GimpRGB*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %input = alloca double, align 8
  %range = alloca double, align 8
  %inten = alloca double, align 8
  %out_light = alloca double, align 8
  %lightness = alloca double, align 8
  store %struct._GimpLevelsConfig* %config, %struct._GimpLevelsConfig** %config.addr, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store %struct._GimpRGB* %black, %struct._GimpRGB** %black.addr, align 8
  store %struct._GimpRGB* %gray, %struct._GimpRGB** %gray.addr, align 8
  store %struct._GimpRGB* %white, %struct._GimpRGB** %white.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpLevelsConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_levels_config_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_levels_config_adjust_by_colors, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %14 = bitcast %struct._GimpLevelsConfig* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %15)
  %16 = load %struct._GimpRGB*, %struct._GimpRGB** %black.addr, align 8
  %tobool12 = icmp ne %struct._GimpRGB* %16, null
  br i1 %tobool12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.end
  %17 = load i32, i32* %channel.addr, align 4
  %18 = load %struct._GimpRGB*, %struct._GimpRGB** %black.addr, align 8
  %call14 = call double @gimp_levels_config_input_from_color(i32 %17, %struct._GimpRGB* %18)
  %19 = load i32, i32* %channel.addr, align 4
  %idxprom = zext i32 %19 to i64
  %20 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %20, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom
  store double %call14, double* %arrayidx, align 8
  %21 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %22 = bitcast %struct._GimpLevelsConfig* %21 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %do.end
  %24 = load %struct._GimpRGB*, %struct._GimpRGB** %white.addr, align 8
  %tobool17 = icmp ne %struct._GimpRGB* %24, null
  br i1 %tobool17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %if.end.16
  %25 = load i32, i32* %channel.addr, align 4
  %26 = load %struct._GimpRGB*, %struct._GimpRGB** %white.addr, align 8
  %call19 = call double @gimp_levels_config_input_from_color(i32 %25, %struct._GimpRGB* %26)
  %27 = load i32, i32* %channel.addr, align 4
  %idxprom20 = zext i32 %27 to i64
  %28 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %28, i32 0, i32 4
  %arrayidx21 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom20
  store double %call19, double* %arrayidx21, align 8
  %29 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %30 = bitcast %struct._GimpLevelsConfig* %29 to %struct._GTypeInstance*
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call22 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.18, %if.end.16
  %32 = load %struct._GimpRGB*, %struct._GimpRGB** %gray.addr, align 8
  %tobool24 = icmp ne %struct._GimpRGB* %32, null
  br i1 %tobool24, label %if.then.25, label %if.end.80

if.then.25:                                       ; preds = %if.end.23
  %33 = load %struct._GimpRGB*, %struct._GimpRGB** %gray.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %33, i32 0, i32 0
  %34 = load double, double* %r, align 8
  %mul = fmul double %34, 2.126000e-01
  %35 = load %struct._GimpRGB*, %struct._GimpRGB** %gray.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %35, i32 0, i32 1
  %36 = load double, double* %g, align 8
  %mul31 = fmul double %36, 7.152000e-01
  %add = fadd double %mul, %mul31
  %37 = load %struct._GimpRGB*, %struct._GimpRGB** %gray.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %37, i32 0, i32 2
  %38 = load double, double* %b, align 8
  %mul32 = fmul double %38, 7.220000e-02
  %add33 = fadd double %add, %mul32
  store double %add33, double* %lightness, align 8
  %39 = load i32, i32* %channel.addr, align 4
  %40 = load %struct._GimpRGB*, %struct._GimpRGB** %gray.addr, align 8
  %call34 = call double @gimp_levels_config_input_from_color(i32 %39, %struct._GimpRGB* %40)
  store double %call34, double* %input, align 8
  %41 = load i32, i32* %channel.addr, align 4
  %idxprom35 = zext i32 %41 to i64
  %42 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input36 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %42, i32 0, i32 4
  %arrayidx37 = getelementptr inbounds [5 x double], [5 x double]* %high_input36, i32 0, i64 %idxprom35
  %43 = load double, double* %arrayidx37, align 8
  %44 = load i32, i32* %channel.addr, align 4
  %idxprom38 = zext i32 %44 to i64
  %45 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input39 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %45, i32 0, i32 3
  %arrayidx40 = getelementptr inbounds [5 x double], [5 x double]* %low_input39, i32 0, i64 %idxprom38
  %46 = load double, double* %arrayidx40, align 8
  %sub = fsub double %43, %46
  store double %sub, double* %range, align 8
  %47 = load double, double* %range, align 8
  %cmp41 = fcmp ole double %47, 0.000000e+00
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.then.25
  br label %out

if.end.43:                                        ; preds = %if.then.25
  %48 = load i32, i32* %channel.addr, align 4
  %idxprom44 = zext i32 %48 to i64
  %49 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input45 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %49, i32 0, i32 3
  %arrayidx46 = getelementptr inbounds [5 x double], [5 x double]* %low_input45, i32 0, i64 %idxprom44
  %50 = load double, double* %arrayidx46, align 8
  %51 = load double, double* %input, align 8
  %sub47 = fsub double %51, %50
  store double %sub47, double* %input, align 8
  %52 = load double, double* %input, align 8
  %cmp48 = fcmp olt double %52, 0.000000e+00
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.43
  br label %out

if.end.50:                                        ; preds = %if.end.43
  %53 = load double, double* %input, align 8
  %54 = load double, double* %range, align 8
  %div = fdiv double %53, %54
  store double %div, double* %inten, align 8
  %55 = load double, double* %lightness, align 8
  %56 = load double, double* %range, align 8
  %div51 = fdiv double %55, %56
  store double %div51, double* %out_light, align 8
  %57 = load double, double* %out_light, align 8
  %cmp52 = fcmp ole double %57, 1.000000e-04
  br i1 %cmp52, label %if.then.54, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.50
  %58 = load double, double* %out_light, align 8
  %cmp53 = fcmp oge double %58, 9.999000e-01
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %lor.lhs.false, %if.end.50
  br label %out

if.end.55:                                        ; preds = %lor.lhs.false
  %59 = load double, double* %inten, align 8
  %call56 = call double @log(double %59) #6
  %60 = load double, double* %out_light, align 8
  %call57 = call double @log(double %60) #6
  %div58 = fdiv double %call56, %call57
  %61 = load i32, i32* %channel.addr, align 4
  %idxprom59 = zext i32 %61 to i64
  %62 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %62, i32 0, i32 2
  %arrayidx60 = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom59
  store double %div58, double* %arrayidx60, align 8
  %63 = load i32, i32* %channel.addr, align 4
  %idxprom61 = zext i32 %63 to i64
  %64 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma62 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %64, i32 0, i32 2
  %arrayidx63 = getelementptr inbounds [5 x double], [5 x double]* %gamma62, i32 0, i64 %idxprom61
  %65 = load double, double* %arrayidx63, align 8
  %cmp64 = fcmp ogt double %65, 1.000000e+01
  br i1 %cmp64, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.55
  br label %cond.end.74

cond.false:                                       ; preds = %if.end.55
  %66 = load i32, i32* %channel.addr, align 4
  %idxprom65 = zext i32 %66 to i64
  %67 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma66 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %67, i32 0, i32 2
  %arrayidx67 = getelementptr inbounds [5 x double], [5 x double]* %gamma66, i32 0, i64 %idxprom65
  %68 = load double, double* %arrayidx67, align 8
  %cmp68 = fcmp olt double %68, 1.000000e-01
  br i1 %cmp68, label %cond.true.69, label %cond.false.70

cond.true.69:                                     ; preds = %cond.false
  br label %cond.end

cond.false.70:                                    ; preds = %cond.false
  %69 = load i32, i32* %channel.addr, align 4
  %idxprom71 = zext i32 %69 to i64
  %70 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma72 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %70, i32 0, i32 2
  %arrayidx73 = getelementptr inbounds [5 x double], [5 x double]* %gamma72, i32 0, i64 %idxprom71
  %71 = load double, double* %arrayidx73, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.70, %cond.true.69
  %cond = phi double [ 1.000000e-01, %cond.true.69 ], [ %71, %cond.false.70 ]
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.end, %cond.true
  %cond75 = phi double [ 1.000000e+01, %cond.true ], [ %cond, %cond.end ]
  %72 = load i32, i32* %channel.addr, align 4
  %idxprom76 = zext i32 %72 to i64
  %73 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma77 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %73, i32 0, i32 2
  %arrayidx78 = getelementptr inbounds [5 x double], [5 x double]* %gamma77, i32 0, i64 %idxprom76
  store double %cond75, double* %arrayidx78, align 8
  %74 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %75 = bitcast %struct._GimpLevelsConfig* %74 to %struct._GTypeInstance*
  %call79 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %75, i64 80)
  %76 = bitcast %struct._GTypeInstance* %call79 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.80

if.end.80:                                        ; preds = %cond.end.74, %if.end.23
  br label %out

out:                                              ; preds = %if.end.80, %if.then.54, %if.then.49, %if.then.42
  %77 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %78 = bitcast %struct._GimpLevelsConfig* %77 to %struct._GTypeInstance*
  %call81 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %78, i64 80)
  %79 = bitcast %struct._GTypeInstance* %call81 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %79)
  br label %return

return:                                           ; preds = %out, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define internal double @gimp_levels_config_input_from_color(i32 %channel, %struct._GimpRGB* %color) #3 {
entry:
  %retval = alloca double, align 8
  %channel.addr = alloca i32, align 4
  %color.addr = alloca %struct._GimpRGB*, align 8
  store i32 %channel, i32* %channel.addr, align 4
  store %struct._GimpRGB* %color, %struct._GimpRGB** %color.addr, align 8
  %0 = load i32, i32* %channel.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.18
    i32 2, label %sw.bb.20
    i32 3, label %sw.bb.22
    i32 4, label %sw.bb.24
    i32 5, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %entry
  %1 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %1, i32 0, i32 0
  %2 = load double, double* %r, align 8
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 1
  %4 = load double, double* %g, align 8
  %cmp = fcmp ogt double %2, %4
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %sw.bb
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r1 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 0
  %6 = load double, double* %r1, align 8
  br label %cond.end

cond.false:                                       ; preds = %sw.bb
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g2 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %7, i32 0, i32 1
  %8 = load double, double* %g2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %6, %cond.true ], [ %8, %cond.false ]
  %9 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %9, i32 0, i32 2
  %10 = load double, double* %b, align 8
  %cmp3 = fcmp ogt double %cond, %10
  br i1 %cmp3, label %cond.true.4, label %cond.false.14

cond.true.4:                                      ; preds = %cond.end
  %11 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r5 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %11, i32 0, i32 0
  %12 = load double, double* %r5, align 8
  %13 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g6 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %13, i32 0, i32 1
  %14 = load double, double* %g6, align 8
  %cmp7 = fcmp ogt double %12, %14
  br i1 %cmp7, label %cond.true.8, label %cond.false.10

cond.true.8:                                      ; preds = %cond.true.4
  %15 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r9 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %15, i32 0, i32 0
  %16 = load double, double* %r9, align 8
  br label %cond.end.12

cond.false.10:                                    ; preds = %cond.true.4
  %17 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g11 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %17, i32 0, i32 1
  %18 = load double, double* %g11, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.10, %cond.true.8
  %cond13 = phi double [ %16, %cond.true.8 ], [ %18, %cond.false.10 ]
  br label %cond.end.16

cond.false.14:                                    ; preds = %cond.end
  %19 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b15 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %19, i32 0, i32 2
  %20 = load double, double* %b15, align 8
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.end.12
  %cond17 = phi double [ %cond13, %cond.end.12 ], [ %20, %cond.false.14 ]
  store double %cond17, double* %retval
  br label %return

sw.bb.18:                                         ; preds = %entry
  %21 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r19 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %21, i32 0, i32 0
  %22 = load double, double* %r19, align 8
  store double %22, double* %retval
  br label %return

sw.bb.20:                                         ; preds = %entry
  %23 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g21 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %23, i32 0, i32 1
  %24 = load double, double* %g21, align 8
  store double %24, double* %retval
  br label %return

sw.bb.22:                                         ; preds = %entry
  %25 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b23 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %25, i32 0, i32 2
  %26 = load double, double* %b23, align 8
  store double %26, double* %retval
  br label %return

sw.bb.24:                                         ; preds = %entry
  %27 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %27, i32 0, i32 3
  %28 = load double, double* %a, align 8
  store double %28, double* %retval
  br label %return

sw.bb.25:                                         ; preds = %entry
  %29 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r26 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %29, i32 0, i32 0
  %30 = load double, double* %r26, align 8
  %31 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g27 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %31, i32 0, i32 1
  %32 = load double, double* %g27, align 8
  %cmp28 = fcmp olt double %30, %32
  br i1 %cmp28, label %cond.true.29, label %cond.false.31

cond.true.29:                                     ; preds = %sw.bb.25
  %33 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r30 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %33, i32 0, i32 0
  %34 = load double, double* %r30, align 8
  br label %cond.end.33

cond.false.31:                                    ; preds = %sw.bb.25
  %35 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g32 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %35, i32 0, i32 1
  %36 = load double, double* %g32, align 8
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.31, %cond.true.29
  %cond34 = phi double [ %34, %cond.true.29 ], [ %36, %cond.false.31 ]
  %37 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b35 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %37, i32 0, i32 2
  %38 = load double, double* %b35, align 8
  %cmp36 = fcmp olt double %cond34, %38
  br i1 %cmp36, label %cond.true.37, label %cond.false.47

cond.true.37:                                     ; preds = %cond.end.33
  %39 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r38 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %39, i32 0, i32 0
  %40 = load double, double* %r38, align 8
  %41 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g39 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %41, i32 0, i32 1
  %42 = load double, double* %g39, align 8
  %cmp40 = fcmp olt double %40, %42
  br i1 %cmp40, label %cond.true.41, label %cond.false.43

cond.true.41:                                     ; preds = %cond.true.37
  %43 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %r42 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %43, i32 0, i32 0
  %44 = load double, double* %r42, align 8
  br label %cond.end.45

cond.false.43:                                    ; preds = %cond.true.37
  %45 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %g44 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %45, i32 0, i32 1
  %46 = load double, double* %g44, align 8
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.43, %cond.true.41
  %cond46 = phi double [ %44, %cond.true.41 ], [ %46, %cond.false.43 ]
  br label %cond.end.49

cond.false.47:                                    ; preds = %cond.end.33
  %47 = load %struct._GimpRGB*, %struct._GimpRGB** %color.addr, align 8
  %b48 = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %47, i32 0, i32 2
  %48 = load double, double* %b48, align 8
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.end.45
  %cond50 = phi double [ %cond46, %cond.end.45 ], [ %48, %cond.false.47 ]
  store double %cond50, double* %retval
  br label %return

sw.epilog:                                        ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %cond.end.49, %sw.bb.24, %sw.bb.22, %sw.bb.20, %sw.bb.18, %cond.end.16
  %49 = load double, double* %retval
  ret double %49
}

; Function Attrs: nounwind
declare double @log(double) #5

; Function Attrs: nounwind uwtable
define %struct._GimpCurvesConfig* @gimp_levels_config_to_curves_config(%struct._GimpLevelsConfig* %config) #3 {
entry:
  %retval = alloca %struct._GimpCurvesConfig*, align 8
  %config.addr = alloca %struct._GimpLevelsConfig*, align 8
  %curves = alloca %struct._GimpCurvesConfig*, align 8
  %channel = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %curve = alloca %struct._GimpCurve*, align 8
  %n_points = alloca i32, align 4
  %point = alloca i32, align 4
  %gamma = alloca double, align 8
  %delta_in = alloca double, align 8
  %delta_out = alloca double, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %i = alloca i32, align 4
  %dx = alloca double, align 8
  %x0 = alloca double, align 8
  %config_inv = alloca %struct._GimpLevelsConfig*, align 8
  %dy = alloca double, align 8
  %y0 = alloca double, align 8
  %gamma_inv = alloca double, align 8
  store %struct._GimpLevelsConfig* %config, %struct._GimpLevelsConfig** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpLevelsConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_levels_config_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_levels_config_to_curves_config, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpCurvesConfig* null, %struct._GimpCurvesConfig** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_curves_config_get_type() #7
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._GimpCurvesConfig*
  store %struct._GimpCurvesConfig* %13, %struct._GimpCurvesConfig** %curves, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.264, %do.end
  %14 = load i32, i32* %channel, align 4
  %cmp13 = icmp ule i32 %14, 4
  br i1 %cmp13, label %for.body, label %for.end.266

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %curves, align 8
  %curve15 = getelementptr inbounds %struct._GimpCurvesConfig, %struct._GimpCurvesConfig* %16, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x %struct._GimpCurve*], [5 x %struct._GimpCurve*]* %curve15, i32 0, i64 %idxprom
  %17 = load %struct._GimpCurve*, %struct._GimpCurve** %arrayidx, align 8
  store %struct._GimpCurve* %17, %struct._GimpCurve** %curve, align 8
  %18 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %call17 = call i32 @gimp_curve_get_n_points(%struct._GimpCurve* %18)
  store i32 %call17, i32* %n_points, align 4
  store i32 -1, i32* %point, align 4
  %19 = load i32, i32* %channel, align 4
  %idxprom20 = zext i32 %19 to i64
  %20 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma21 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %20, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [5 x double], [5 x double]* %gamma21, i32 0, i64 %idxprom20
  %21 = load double, double* %arrayidx22, align 8
  store double %21, double* %gamma, align 8
  %22 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  call void @gimp_curve_set_point(%struct._GimpCurve* %22, i32 0, double -1.000000e+00, double -1.000000e+00)
  %23 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %24 = load i32, i32* %n_points, align 4
  %sub = sub nsw i32 %24, 1
  call void @gimp_curve_set_point(%struct._GimpCurve* %23, i32 %sub, double -1.000000e+00, double -1.000000e+00)
  %25 = load i32, i32* %channel, align 4
  %idxprom27 = zext i32 %25 to i64
  %26 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %26, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom27
  %27 = load double, double* %arrayidx28, align 8
  %28 = load i32, i32* %channel, align 4
  %idxprom29 = zext i32 %28 to i64
  %29 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %29, i32 0, i32 3
  %arrayidx30 = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom29
  %30 = load double, double* %arrayidx30, align 8
  %sub31 = fsub double %27, %30
  store double %sub31, double* %delta_in, align 8
  %31 = load i32, i32* %channel, align 4
  %idxprom32 = zext i32 %31 to i64
  %32 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %32, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 %idxprom32
  %33 = load double, double* %arrayidx33, align 8
  %34 = load i32, i32* %channel, align 4
  %idxprom34 = zext i32 %34 to i64
  %35 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %35, i32 0, i32 5
  %arrayidx35 = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 %idxprom34
  %36 = load double, double* %arrayidx35, align 8
  %sub36 = fsub double %33, %36
  store double %sub36, double* %delta_out, align 8
  %37 = load i32, i32* %channel, align 4
  %idxprom37 = zext i32 %37 to i64
  %38 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input38 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %38, i32 0, i32 3
  %arrayidx39 = getelementptr inbounds [5 x double], [5 x double]* %low_input38, i32 0, i64 %idxprom37
  %39 = load double, double* %arrayidx39, align 8
  store double %39, double* %x, align 8
  %40 = load i32, i32* %channel, align 4
  %idxprom40 = zext i32 %40 to i64
  %41 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_output41 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %41, i32 0, i32 5
  %arrayidx42 = getelementptr inbounds [5 x double], [5 x double]* %low_output41, i32 0, i64 %idxprom40
  %42 = load double, double* %arrayidx42, align 8
  store double %42, double* %y, align 8
  %43 = load i32, i32* %n_points, align 4
  %conv = sitofp i32 %43 to double
  %44 = load double, double* %x, align 8
  %mul = fmul double %conv, %44
  %45 = load i32, i32* %n_points, align 4
  %sub43 = sub nsw i32 %45, 1
  %sub44 = sub nsw i32 %sub43, 4
  %conv45 = sitofp i32 %sub44 to double
  %cmp46 = fcmp ogt double %mul, %conv45
  br i1 %cmp46, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %46 = load i32, i32* %n_points, align 4
  %sub48 = sub nsw i32 %46, 1
  %sub49 = sub nsw i32 %sub48, 4
  %conv50 = sitofp i32 %sub49 to double
  br label %cond.end.62

cond.false:                                       ; preds = %for.body
  %47 = load i32, i32* %n_points, align 4
  %conv51 = sitofp i32 %47 to double
  %48 = load double, double* %x, align 8
  %mul52 = fmul double %conv51, %48
  %49 = load i32, i32* %point, align 4
  %add = add nsw i32 %49, 1
  %conv53 = sitofp i32 %add to double
  %cmp54 = fcmp olt double %mul52, %conv53
  br i1 %cmp54, label %cond.true.56, label %cond.false.59

cond.true.56:                                     ; preds = %cond.false
  %50 = load i32, i32* %point, align 4
  %add57 = add nsw i32 %50, 1
  %conv58 = sitofp i32 %add57 to double
  br label %cond.end

cond.false.59:                                    ; preds = %cond.false
  %51 = load i32, i32* %n_points, align 4
  %conv60 = sitofp i32 %51 to double
  %52 = load double, double* %x, align 8
  %mul61 = fmul double %conv60, %52
  br label %cond.end

cond.end:                                         ; preds = %cond.false.59, %cond.true.56
  %cond = phi double [ %conv58, %cond.true.56 ], [ %mul61, %cond.false.59 ]
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.end, %cond.true
  %cond63 = phi double [ %conv50, %cond.true ], [ %cond, %cond.end ]
  %conv64 = fptosi double %cond63 to i32
  store i32 %conv64, i32* %point, align 4
  %53 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %54 = load i32, i32* %point, align 4
  %55 = load double, double* %x, align 8
  %56 = load double, double* %y, align 8
  call void @gimp_curve_set_point(%struct._GimpCurve* %53, i32 %54, double %55, double %56)
  %57 = load double, double* %delta_out, align 8
  %cmp65 = fcmp une double %57, 0.000000e+00
  br i1 %cmp65, label %land.lhs.true.67, label %if.end.230

land.lhs.true.67:                                 ; preds = %cond.end.62
  %58 = load double, double* %gamma, align 8
  %cmp68 = fcmp une double %58, 1.000000e+00
  br i1 %cmp68, label %if.then.70, label %if.end.230

if.then.70:                                       ; preds = %land.lhs.true.67
  %59 = load double, double* %gamma, align 8
  %cmp72 = fcmp ogt double %59, 1.000000e+00
  br i1 %cmp72, label %if.then.74, label %if.else.133

if.then.74:                                       ; preds = %if.then.70
  store double 0.000000e+00, double* %dx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.77

for.cond.77:                                      ; preds = %for.inc, %if.then.74
  %60 = load i32, i32* %i, align 4
  %cmp78 = icmp slt i32 %60, 4
  br i1 %cmp78, label %for.body.80, label %for.end

for.body.80:                                      ; preds = %for.cond.77
  %61 = load double, double* %dx, align 8
  %62 = load double, double* %gamma, align 8
  %mul81 = fmul double %61, %62
  %add82 = fadd double %mul81, 1.000000e+00
  store double %add82, double* %dx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.80
  %63 = load i32, i32* %i, align 4
  %inc = add nsw i32 %63, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.77

for.end:                                          ; preds = %for.cond.77
  %64 = load double, double* %delta_in, align 8
  %65 = load double, double* %dx, align 8
  %div = fdiv double %64, %65
  store double %div, double* %x0, align 8
  store double 0.000000e+00, double* %dx, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.83

for.cond.83:                                      ; preds = %for.inc.130, %for.end
  %66 = load i32, i32* %i, align 4
  %cmp84 = icmp slt i32 %66, 4
  br i1 %cmp84, label %for.body.86, label %for.end.132

for.body.86:                                      ; preds = %for.cond.83
  %67 = load double, double* %dx, align 8
  %68 = load double, double* %gamma, align 8
  %mul87 = fmul double %67, %68
  %69 = load double, double* %x0, align 8
  %add88 = fadd double %mul87, %69
  store double %add88, double* %dx, align 8
  %70 = load i32, i32* %channel, align 4
  %idxprom89 = zext i32 %70 to i64
  %71 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input90 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %71, i32 0, i32 3
  %arrayidx91 = getelementptr inbounds [5 x double], [5 x double]* %low_input90, i32 0, i64 %idxprom89
  %72 = load double, double* %arrayidx91, align 8
  %73 = load double, double* %dx, align 8
  %add92 = fadd double %72, %73
  store double %add92, double* %x, align 8
  %74 = load i32, i32* %channel, align 4
  %idxprom93 = zext i32 %74 to i64
  %75 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_output94 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %75, i32 0, i32 5
  %arrayidx95 = getelementptr inbounds [5 x double], [5 x double]* %low_output94, i32 0, i64 %idxprom93
  %76 = load double, double* %arrayidx95, align 8
  %77 = load double, double* %delta_out, align 8
  %78 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %79 = load i32, i32* %channel, align 4
  %80 = load double, double* %x, align 8
  %call96 = call double @gimp_operation_levels_map_input(%struct._GimpLevelsConfig* %78, i32 %79, double %80)
  %mul97 = fmul double %77, %call96
  %add98 = fadd double %76, %mul97
  store double %add98, double* %y, align 8
  %81 = load i32, i32* %n_points, align 4
  %conv99 = sitofp i32 %81 to double
  %82 = load double, double* %x, align 8
  %mul100 = fmul double %conv99, %82
  %83 = load i32, i32* %n_points, align 4
  %sub101 = sub nsw i32 %83, 1
  %sub102 = sub nsw i32 %sub101, 4
  %84 = load i32, i32* %i, align 4
  %add103 = add nsw i32 %sub102, %84
  %conv104 = sitofp i32 %add103 to double
  %cmp105 = fcmp ogt double %mul100, %conv104
  br i1 %cmp105, label %cond.true.107, label %cond.false.112

cond.true.107:                                    ; preds = %for.body.86
  %85 = load i32, i32* %n_points, align 4
  %sub108 = sub nsw i32 %85, 1
  %sub109 = sub nsw i32 %sub108, 4
  %86 = load i32, i32* %i, align 4
  %add110 = add nsw i32 %sub109, %86
  %conv111 = sitofp i32 %add110 to double
  br label %cond.end.127

cond.false.112:                                   ; preds = %for.body.86
  %87 = load i32, i32* %n_points, align 4
  %conv113 = sitofp i32 %87 to double
  %88 = load double, double* %x, align 8
  %mul114 = fmul double %conv113, %88
  %89 = load i32, i32* %point, align 4
  %add115 = add nsw i32 %89, 1
  %conv116 = sitofp i32 %add115 to double
  %cmp117 = fcmp olt double %mul114, %conv116
  br i1 %cmp117, label %cond.true.119, label %cond.false.122

cond.true.119:                                    ; preds = %cond.false.112
  %90 = load i32, i32* %point, align 4
  %add120 = add nsw i32 %90, 1
  %conv121 = sitofp i32 %add120 to double
  br label %cond.end.125

cond.false.122:                                   ; preds = %cond.false.112
  %91 = load i32, i32* %n_points, align 4
  %conv123 = sitofp i32 %91 to double
  %92 = load double, double* %x, align 8
  %mul124 = fmul double %conv123, %92
  br label %cond.end.125

cond.end.125:                                     ; preds = %cond.false.122, %cond.true.119
  %cond126 = phi double [ %conv121, %cond.true.119 ], [ %mul124, %cond.false.122 ]
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.end.125, %cond.true.107
  %cond128 = phi double [ %conv111, %cond.true.107 ], [ %cond126, %cond.end.125 ]
  %conv129 = fptosi double %cond128 to i32
  store i32 %conv129, i32* %point, align 4
  %93 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %94 = load i32, i32* %point, align 4
  %95 = load double, double* %x, align 8
  %96 = load double, double* %y, align 8
  call void @gimp_curve_set_point(%struct._GimpCurve* %93, i32 %94, double %95, double %96)
  br label %for.inc.130

for.inc.130:                                      ; preds = %cond.end.127
  %97 = load i32, i32* %i, align 4
  %inc131 = add nsw i32 %97, 1
  store i32 %inc131, i32* %i, align 4
  br label %for.cond.83

for.end.132:                                      ; preds = %for.cond.83
  br label %if.end.229

if.else.133:                                      ; preds = %if.then.70
  store double 0.000000e+00, double* %dy, align 8
  %98 = load double, double* %gamma, align 8
  %div138 = fdiv double 1.000000e+00, %98
  store double %div138, double* %gamma_inv, align 8
  %99 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %100 = bitcast %struct._GimpLevelsConfig* %99 to %struct._GTypeInstance*
  %call139 = call i64 @gimp_config_interface_get_type() #7
  %call140 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %100, i64 %call139)
  %101 = bitcast %struct._GTypeInstance* %call140 to %struct._GimpConfig*
  %call141 = call i8* @gimp_config_duplicate(%struct._GimpConfig* %101)
  %102 = bitcast i8* %call141 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %102, %struct._GimpLevelsConfig** %config_inv, align 8
  %103 = load double, double* %gamma_inv, align 8
  %104 = load i32, i32* %channel, align 4
  %idxprom142 = zext i32 %104 to i64
  %105 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_inv, align 8
  %gamma143 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %105, i32 0, i32 2
  %arrayidx144 = getelementptr inbounds [5 x double], [5 x double]* %gamma143, i32 0, i64 %idxprom142
  store double %103, double* %arrayidx144, align 8
  %106 = load i32, i32* %channel, align 4
  %idxprom145 = zext i32 %106 to i64
  %107 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_output146 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %107, i32 0, i32 5
  %arrayidx147 = getelementptr inbounds [5 x double], [5 x double]* %low_output146, i32 0, i64 %idxprom145
  %108 = load double, double* %arrayidx147, align 8
  %109 = load i32, i32* %channel, align 4
  %idxprom148 = zext i32 %109 to i64
  %110 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_inv, align 8
  %low_input149 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %110, i32 0, i32 3
  %arrayidx150 = getelementptr inbounds [5 x double], [5 x double]* %low_input149, i32 0, i64 %idxprom148
  store double %108, double* %arrayidx150, align 8
  %111 = load i32, i32* %channel, align 4
  %idxprom151 = zext i32 %111 to i64
  %112 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input152 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %112, i32 0, i32 3
  %arrayidx153 = getelementptr inbounds [5 x double], [5 x double]* %low_input152, i32 0, i64 %idxprom151
  %113 = load double, double* %arrayidx153, align 8
  %114 = load i32, i32* %channel, align 4
  %idxprom154 = zext i32 %114 to i64
  %115 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_inv, align 8
  %low_output155 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %115, i32 0, i32 5
  %arrayidx156 = getelementptr inbounds [5 x double], [5 x double]* %low_output155, i32 0, i64 %idxprom154
  store double %113, double* %arrayidx156, align 8
  %116 = load i32, i32* %channel, align 4
  %idxprom157 = zext i32 %116 to i64
  %117 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_output158 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %117, i32 0, i32 6
  %arrayidx159 = getelementptr inbounds [5 x double], [5 x double]* %high_output158, i32 0, i64 %idxprom157
  %118 = load double, double* %arrayidx159, align 8
  %119 = load i32, i32* %channel, align 4
  %idxprom160 = zext i32 %119 to i64
  %120 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_inv, align 8
  %high_input161 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %120, i32 0, i32 4
  %arrayidx162 = getelementptr inbounds [5 x double], [5 x double]* %high_input161, i32 0, i64 %idxprom160
  store double %118, double* %arrayidx162, align 8
  %121 = load i32, i32* %channel, align 4
  %idxprom163 = zext i32 %121 to i64
  %122 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input164 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %122, i32 0, i32 4
  %arrayidx165 = getelementptr inbounds [5 x double], [5 x double]* %high_input164, i32 0, i64 %idxprom163
  %123 = load double, double* %arrayidx165, align 8
  %124 = load i32, i32* %channel, align 4
  %idxprom166 = zext i32 %124 to i64
  %125 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_inv, align 8
  %high_output167 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %125, i32 0, i32 6
  %arrayidx168 = getelementptr inbounds [5 x double], [5 x double]* %high_output167, i32 0, i64 %idxprom166
  store double %123, double* %arrayidx168, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.175, %if.else.133
  %126 = load i32, i32* %i, align 4
  %cmp170 = icmp slt i32 %126, 4
  br i1 %cmp170, label %for.body.172, label %for.end.177

for.body.172:                                     ; preds = %for.cond.169
  %127 = load double, double* %dy, align 8
  %128 = load double, double* %gamma_inv, align 8
  %mul173 = fmul double %127, %128
  %add174 = fadd double %mul173, 1.000000e+00
  store double %add174, double* %dy, align 8
  br label %for.inc.175

for.inc.175:                                      ; preds = %for.body.172
  %129 = load i32, i32* %i, align 4
  %inc176 = add nsw i32 %129, 1
  store i32 %inc176, i32* %i, align 4
  br label %for.cond.169

for.end.177:                                      ; preds = %for.cond.169
  %130 = load double, double* %delta_out, align 8
  %131 = load double, double* %dy, align 8
  %div178 = fdiv double %130, %131
  store double %div178, double* %y0, align 8
  store double 0.000000e+00, double* %dy, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.226, %for.end.177
  %132 = load i32, i32* %i, align 4
  %cmp180 = icmp slt i32 %132, 4
  br i1 %cmp180, label %for.body.182, label %for.end.228

for.body.182:                                     ; preds = %for.cond.179
  %133 = load double, double* %dy, align 8
  %134 = load double, double* %gamma_inv, align 8
  %mul183 = fmul double %133, %134
  %135 = load double, double* %y0, align 8
  %add184 = fadd double %mul183, %135
  store double %add184, double* %dy, align 8
  %136 = load i32, i32* %channel, align 4
  %idxprom185 = zext i32 %136 to i64
  %137 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_output186 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %137, i32 0, i32 5
  %arrayidx187 = getelementptr inbounds [5 x double], [5 x double]* %low_output186, i32 0, i64 %idxprom185
  %138 = load double, double* %arrayidx187, align 8
  %139 = load double, double* %dy, align 8
  %add188 = fadd double %138, %139
  store double %add188, double* %y, align 8
  %140 = load i32, i32* %channel, align 4
  %idxprom189 = zext i32 %140 to i64
  %141 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input190 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %141, i32 0, i32 3
  %arrayidx191 = getelementptr inbounds [5 x double], [5 x double]* %low_input190, i32 0, i64 %idxprom189
  %142 = load double, double* %arrayidx191, align 8
  %143 = load double, double* %delta_in, align 8
  %144 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_inv, align 8
  %145 = load i32, i32* %channel, align 4
  %146 = load double, double* %y, align 8
  %call192 = call double @gimp_operation_levels_map_input(%struct._GimpLevelsConfig* %144, i32 %145, double %146)
  %mul193 = fmul double %143, %call192
  %add194 = fadd double %142, %mul193
  store double %add194, double* %x, align 8
  %147 = load i32, i32* %n_points, align 4
  %conv195 = sitofp i32 %147 to double
  %148 = load double, double* %x, align 8
  %mul196 = fmul double %conv195, %148
  %149 = load i32, i32* %n_points, align 4
  %sub197 = sub nsw i32 %149, 1
  %sub198 = sub nsw i32 %sub197, 4
  %150 = load i32, i32* %i, align 4
  %add199 = add nsw i32 %sub198, %150
  %conv200 = sitofp i32 %add199 to double
  %cmp201 = fcmp ogt double %mul196, %conv200
  br i1 %cmp201, label %cond.true.203, label %cond.false.208

cond.true.203:                                    ; preds = %for.body.182
  %151 = load i32, i32* %n_points, align 4
  %sub204 = sub nsw i32 %151, 1
  %sub205 = sub nsw i32 %sub204, 4
  %152 = load i32, i32* %i, align 4
  %add206 = add nsw i32 %sub205, %152
  %conv207 = sitofp i32 %add206 to double
  br label %cond.end.223

cond.false.208:                                   ; preds = %for.body.182
  %153 = load i32, i32* %n_points, align 4
  %conv209 = sitofp i32 %153 to double
  %154 = load double, double* %x, align 8
  %mul210 = fmul double %conv209, %154
  %155 = load i32, i32* %point, align 4
  %add211 = add nsw i32 %155, 1
  %conv212 = sitofp i32 %add211 to double
  %cmp213 = fcmp olt double %mul210, %conv212
  br i1 %cmp213, label %cond.true.215, label %cond.false.218

cond.true.215:                                    ; preds = %cond.false.208
  %156 = load i32, i32* %point, align 4
  %add216 = add nsw i32 %156, 1
  %conv217 = sitofp i32 %add216 to double
  br label %cond.end.221

cond.false.218:                                   ; preds = %cond.false.208
  %157 = load i32, i32* %n_points, align 4
  %conv219 = sitofp i32 %157 to double
  %158 = load double, double* %x, align 8
  %mul220 = fmul double %conv219, %158
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.218, %cond.true.215
  %cond222 = phi double [ %conv217, %cond.true.215 ], [ %mul220, %cond.false.218 ]
  br label %cond.end.223

cond.end.223:                                     ; preds = %cond.end.221, %cond.true.203
  %cond224 = phi double [ %conv207, %cond.true.203 ], [ %cond222, %cond.end.221 ]
  %conv225 = fptosi double %cond224 to i32
  store i32 %conv225, i32* %point, align 4
  %159 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %160 = load i32, i32* %point, align 4
  %161 = load double, double* %x, align 8
  %162 = load double, double* %y, align 8
  call void @gimp_curve_set_point(%struct._GimpCurve* %159, i32 %160, double %161, double %162)
  br label %for.inc.226

for.inc.226:                                      ; preds = %cond.end.223
  %163 = load i32, i32* %i, align 4
  %inc227 = add nsw i32 %163, 1
  store i32 %inc227, i32* %i, align 4
  br label %for.cond.179

for.end.228:                                      ; preds = %for.cond.179
  %164 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_inv, align 8
  %165 = bitcast %struct._GimpLevelsConfig* %164 to i8*
  call void @g_object_unref(i8* %165)
  br label %if.end.229

if.end.229:                                       ; preds = %for.end.228, %for.end.132
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %land.lhs.true.67, %cond.end.62
  %166 = load i32, i32* %channel, align 4
  %idxprom231 = zext i32 %166 to i64
  %167 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input232 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %167, i32 0, i32 4
  %arrayidx233 = getelementptr inbounds [5 x double], [5 x double]* %high_input232, i32 0, i64 %idxprom231
  %168 = load double, double* %arrayidx233, align 8
  store double %168, double* %x, align 8
  %169 = load i32, i32* %channel, align 4
  %idxprom234 = zext i32 %169 to i64
  %170 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_output235 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %170, i32 0, i32 6
  %arrayidx236 = getelementptr inbounds [5 x double], [5 x double]* %high_output235, i32 0, i64 %idxprom234
  %171 = load double, double* %arrayidx236, align 8
  store double %171, double* %y, align 8
  %172 = load i32, i32* %n_points, align 4
  %conv237 = sitofp i32 %172 to double
  %173 = load double, double* %x, align 8
  %mul238 = fmul double %conv237, %173
  %174 = load i32, i32* %n_points, align 4
  %sub239 = sub nsw i32 %174, 1
  %conv240 = sitofp i32 %sub239 to double
  %cmp241 = fcmp ogt double %mul238, %conv240
  br i1 %cmp241, label %cond.true.243, label %cond.false.246

cond.true.243:                                    ; preds = %if.end.230
  %175 = load i32, i32* %n_points, align 4
  %sub244 = sub nsw i32 %175, 1
  %conv245 = sitofp i32 %sub244 to double
  br label %cond.end.261

cond.false.246:                                   ; preds = %if.end.230
  %176 = load i32, i32* %n_points, align 4
  %conv247 = sitofp i32 %176 to double
  %177 = load double, double* %x, align 8
  %mul248 = fmul double %conv247, %177
  %178 = load i32, i32* %point, align 4
  %add249 = add nsw i32 %178, 1
  %conv250 = sitofp i32 %add249 to double
  %cmp251 = fcmp olt double %mul248, %conv250
  br i1 %cmp251, label %cond.true.253, label %cond.false.256

cond.true.253:                                    ; preds = %cond.false.246
  %179 = load i32, i32* %point, align 4
  %add254 = add nsw i32 %179, 1
  %conv255 = sitofp i32 %add254 to double
  br label %cond.end.259

cond.false.256:                                   ; preds = %cond.false.246
  %180 = load i32, i32* %n_points, align 4
  %conv257 = sitofp i32 %180 to double
  %181 = load double, double* %x, align 8
  %mul258 = fmul double %conv257, %181
  br label %cond.end.259

cond.end.259:                                     ; preds = %cond.false.256, %cond.true.253
  %cond260 = phi double [ %conv255, %cond.true.253 ], [ %mul258, %cond.false.256 ]
  br label %cond.end.261

cond.end.261:                                     ; preds = %cond.end.259, %cond.true.243
  %cond262 = phi double [ %conv245, %cond.true.243 ], [ %cond260, %cond.end.259 ]
  %conv263 = fptosi double %cond262 to i32
  store i32 %conv263, i32* %point, align 4
  %182 = load %struct._GimpCurve*, %struct._GimpCurve** %curve, align 8
  %183 = load i32, i32* %point, align 4
  %184 = load double, double* %x, align 8
  %185 = load double, double* %y, align 8
  call void @gimp_curve_set_point(%struct._GimpCurve* %182, i32 %183, double %184, double %185)
  br label %for.inc.264

for.inc.264:                                      ; preds = %cond.end.261
  %186 = load i32, i32* %channel, align 4
  %inc265 = add i32 %186, 1
  store i32 %inc265, i32* %channel, align 4
  br label %for.cond

for.end.266:                                      ; preds = %for.cond
  %187 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %curves, align 8
  store %struct._GimpCurvesConfig* %187, %struct._GimpCurvesConfig** %retval
  br label %return

return:                                           ; preds = %for.end.266, %if.else.9
  %188 = load %struct._GimpCurvesConfig*, %struct._GimpCurvesConfig** %retval
  ret %struct._GimpCurvesConfig* %188
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_curves_config_get_type() #2

declare i32 @gimp_curve_get_n_points(%struct._GimpCurve*) #1

declare void @gimp_curve_set_point(%struct._GimpCurve*, i32, double, double) #1

declare double @gimp_operation_levels_map_input(%struct._GimpLevelsConfig*, i32, double) #1

declare i8* @gimp_config_duplicate(%struct._GimpConfig*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_levels_config_load_cruft(%struct._GimpLevelsConfig* %config, i8* %fp, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpLevelsConfig*, align 8
  %fp.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %low_input = alloca [5 x i32], align 16
  %high_input = alloca [5 x i32], align 16
  %low_output = alloca [5 x i32], align 16
  %high_output = alloca [5 x i32], align 16
  %gamma = alloca [5 x double], align 16
  %i = alloca i32, align 4
  %fields = alloca i32, align 4
  %buf = alloca [50 x i8], align 16
  %nptr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLevelsConfig* %config, %struct._GimpLevelsConfig** %config.addr, align 8
  store i8* %fp, i8** %fp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %fp.addr, align 8
  %1 = bitcast i8* %0 to %struct._IO_FILE*
  store %struct._IO_FILE* %1, %struct._IO_FILE** %file, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %3 = bitcast %struct._GimpLevelsConfig* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_levels_config_get_type() #7
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #8
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_levels_config_load_cruft, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp12 = icmp ne %struct._IO_FILE* %15, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_levels_config_load_cruft, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %16, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  %cmp19 = icmp eq %struct._GError* %18, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_levels_config_load_cruft, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call24 = call i8* @fgets(i8* %arraydecay, i32 50, %struct._IO_FILE* %19)
  %tobool25 = icmp ne i8* %call24, null
  br i1 %tobool25, label %lor.lhs.false.26, label %if.then.30

lor.lhs.false.26:                                 ; preds = %do.end.23
  %arraydecay27 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call28 = call i32 @strcmp(i8* %arraydecay27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0)) #8
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then.30, label %if.end.33

if.then.30:                                       ; preds = %lor.lhs.false.26, %do.end.23
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call31 = call i32 @gimp_config_error_quark() #7
  %call32 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %20, i32 %call31, i32 3, i8* %call32)
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false.26
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.33
  %21 = load i32, i32* %i, align 4
  %cmp34 = icmp slt i32 %21, 5
  br i1 %cmp34, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %23 = load i32, i32* %i, align 4
  %idxprom = sext i32 %23 to i64
  %arrayidx = getelementptr inbounds [5 x i32], [5 x i32]* %low_input, i32 0, i64 %idxprom
  %24 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [5 x i32], [5 x i32]* %high_input, i32 0, i64 %idxprom35
  %25 = load i32, i32* %i, align 4
  %idxprom37 = sext i32 %25 to i64
  %arrayidx38 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output, i32 0, i64 %idxprom37
  %26 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %26 to i64
  %arrayidx40 = getelementptr inbounds [5 x i32], [5 x i32]* %high_output, i32 0, i64 %idxprom39
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32* %arrayidx, i32* %arrayidx36, i32* %arrayidx38, i32* %arrayidx40)
  store i32 %call41, i32* %fields, align 4
  %27 = load i32, i32* %fields, align 4
  %cmp42 = icmp ne i32 %27, 4
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body
  br label %error.105

if.end.44:                                        ; preds = %for.body
  %arraydecay45 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call46 = call i8* @fgets(i8* %arraydecay45, i32 50, %struct._IO_FILE* %28)
  %tobool47 = icmp ne i8* %call46, null
  br i1 %tobool47, label %if.end.49, label %if.then.48

if.then.48:                                       ; preds = %if.end.44
  br label %error.105

if.end.49:                                        ; preds = %if.end.44
  %arraydecay50 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %call51 = call double @g_ascii_strtod(i8* %arraydecay50, i8** %nptr)
  %29 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %29 to i64
  %arrayidx53 = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom52
  store double %call51, double* %arrayidx53, align 8
  %arraydecay54 = getelementptr inbounds [50 x i8], [50 x i8]* %buf, i32 0, i32 0
  %30 = load i8*, i8** %nptr, align 8
  %cmp55 = icmp eq i8* %arraydecay54, %30
  br i1 %cmp55, label %if.then.59, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %if.end.49
  %call57 = call i32* @__errno_location() #7
  %31 = load i32, i32* %call57, align 4
  %cmp58 = icmp eq i32 %31, 34
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false.56, %if.end.49
  br label %error.105

if.end.60:                                        ; preds = %lor.lhs.false.56
  br label %for.inc

for.inc:                                          ; preds = %if.end.60
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %34 = bitcast %struct._GimpLevelsConfig* %33 to %struct._GTypeInstance*
  %call61 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call61 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %35)
  store i32 0, i32* %i, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.96, %for.end
  %36 = load i32, i32* %i, align 4
  %cmp63 = icmp slt i32 %36, 5
  br i1 %cmp63, label %for.body.64, label %for.end.98

for.body.64:                                      ; preds = %for.cond.62
  %37 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %37 to i64
  %arrayidx66 = getelementptr inbounds [5 x i32], [5 x i32]* %low_input, i32 0, i64 %idxprom65
  %38 = load i32, i32* %arrayidx66, align 4
  %conv = sitofp i32 %38 to double
  %div = fdiv double %conv, 2.550000e+02
  %39 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %39 to i64
  %40 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input68 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %40, i32 0, i32 3
  %arrayidx69 = getelementptr inbounds [5 x double], [5 x double]* %low_input68, i32 0, i64 %idxprom67
  store double %div, double* %arrayidx69, align 8
  %41 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %41 to i64
  %arrayidx71 = getelementptr inbounds [5 x i32], [5 x i32]* %high_input, i32 0, i64 %idxprom70
  %42 = load i32, i32* %arrayidx71, align 4
  %conv72 = sitofp i32 %42 to double
  %div73 = fdiv double %conv72, 2.550000e+02
  %43 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %43 to i64
  %44 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input75 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %44, i32 0, i32 4
  %arrayidx76 = getelementptr inbounds [5 x double], [5 x double]* %high_input75, i32 0, i64 %idxprom74
  store double %div73, double* %arrayidx76, align 8
  %45 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %45 to i64
  %arrayidx78 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output, i32 0, i64 %idxprom77
  %46 = load i32, i32* %arrayidx78, align 4
  %conv79 = sitofp i32 %46 to double
  %div80 = fdiv double %conv79, 2.550000e+02
  %47 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %47 to i64
  %48 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_output82 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %48, i32 0, i32 5
  %arrayidx83 = getelementptr inbounds [5 x double], [5 x double]* %low_output82, i32 0, i64 %idxprom81
  store double %div80, double* %arrayidx83, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %49 to i64
  %arrayidx85 = getelementptr inbounds [5 x i32], [5 x i32]* %high_output, i32 0, i64 %idxprom84
  %50 = load i32, i32* %arrayidx85, align 4
  %conv86 = sitofp i32 %50 to double
  %div87 = fdiv double %conv86, 2.550000e+02
  %51 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %51 to i64
  %52 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_output89 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %52, i32 0, i32 6
  %arrayidx90 = getelementptr inbounds [5 x double], [5 x double]* %high_output89, i32 0, i64 %idxprom88
  store double %div87, double* %arrayidx90, align 8
  %53 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %53 to i64
  %arrayidx92 = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom91
  %54 = load double, double* %arrayidx92, align 8
  %55 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %55 to i64
  %56 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma94 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %56, i32 0, i32 2
  %arrayidx95 = getelementptr inbounds [5 x double], [5 x double]* %gamma94, i32 0, i64 %idxprom93
  store double %54, double* %arrayidx95, align 8
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.64
  %57 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %57, 1
  store i32 %inc97, i32* %i, align 4
  br label %for.cond.62

for.end.98:                                       ; preds = %for.cond.62
  %58 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %59 = bitcast %struct._GimpLevelsConfig* %58 to %struct._GTypeInstance*
  %call99 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %59, i64 80)
  %60 = bitcast %struct._GTypeInstance* %call99 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %61 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %62 = bitcast %struct._GimpLevelsConfig* %61 to %struct._GTypeInstance*
  %call100 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %62, i64 80)
  %63 = bitcast %struct._GTypeInstance* %call100 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %63, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %64 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %65 = bitcast %struct._GimpLevelsConfig* %64 to %struct._GTypeInstance*
  %call101 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %65, i64 80)
  %66 = bitcast %struct._GTypeInstance* %call101 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %67 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %68 = bitcast %struct._GimpLevelsConfig* %67 to %struct._GTypeInstance*
  %call102 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %68, i64 80)
  %69 = bitcast %struct._GTypeInstance* %call102 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %70 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %71 = bitcast %struct._GimpLevelsConfig* %70 to %struct._GTypeInstance*
  %call103 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %71, i64 80)
  %72 = bitcast %struct._GTypeInstance* %call103 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %73 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %74 = bitcast %struct._GimpLevelsConfig* %73 to %struct._GTypeInstance*
  %call104 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %74, i64 80)
  %75 = bitcast %struct._GTypeInstance* %call104 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %75)
  store i32 1, i32* %retval
  br label %return

error.105:                                        ; preds = %if.then.59, %if.then.48, %if.then.43
  %76 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call106 = call i32 @gimp_config_error_quark() #7
  %call107 = call i8* @gettext(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i32 0, i32 0)) #6
  call void @g_set_error_literal(%struct._GError** %76, i32 %call106, i32 3, i8* %call107)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %error.105, %for.end.98, %if.then.30, %if.else.21, %if.else.14, %if.else.9
  %77 = load i32, i32* %retval
  ret i32 %77
}

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_config_error_quark() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare double @g_ascii_strtod(i8*, i8**) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_levels_config_save_cruft(%struct._GimpLevelsConfig* %config, i8* %fp, %struct._GError** %error) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpLevelsConfig*, align 8
  %fp.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %buf = alloca [39 x i8], align 16
  store %struct._GimpLevelsConfig* %config, %struct._GimpLevelsConfig** %config.addr, align 8
  store i8* %fp, i8** %fp.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %fp.addr, align 8
  %1 = bitcast i8* %0 to %struct._IO_FILE*
  store %struct._IO_FILE* %1, %struct._IO_FILE** %file, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %3 = bitcast %struct._GimpLevelsConfig* %2 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %3, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_levels_config_get_type() #7
  store i64 %call, i64* %__t, align 8
  %4 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %4, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool1 = icmp ne %struct._GTypeClass* %6, null
  br i1 %tobool1, label %land.lhs.true, label %if.else.4

land.lhs.true:                                    ; preds = %if.else
  %7 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class2 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %7, i32 0, i32 0
  %8 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class2, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %8, i32 0, i32 0
  %9 = load i64, i64* %g_type, align 8
  %10 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %9, %10
  br i1 %cmp, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.4:                                        ; preds = %land.lhs.true, %if.else
  %11 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %12 = load i64, i64* %__t, align 8
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %11, i64 %12) #8
  store i32 %call5, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.4, %if.then.3
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %if.then
  %13 = load i32, i32* %__r, align 4
  store i32 %13, i32* %tmp
  %14 = load i32, i32* %tmp
  %tobool7 = icmp ne i32 %14, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %if.end.6
  br label %if.end.10

if.else.9:                                        ; preds = %if.end.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_levels_config_save_cruft, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %cmp12 = icmp ne %struct._IO_FILE* %15, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_levels_config_save_cruft, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %16, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %18 = load %struct._GError*, %struct._GError** %17, align 8
  %cmp19 = icmp eq %struct._GError* %18, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_levels_config_save_cruft, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.23
  %20 = load i32, i32* %i, align 4
  %cmp25 = icmp slt i32 %20, 5
  br i1 %cmp25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %23, i32 0, i32 3
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom
  %24 = load double, double* %arrayidx, align 8
  %mul = fmul double %24, 2.559990e+02
  %conv = fptosi double %mul to i32
  %25 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %25 to i64
  %26 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %26, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom27
  %27 = load double, double* %arrayidx28, align 8
  %mul29 = fmul double %27, 2.559990e+02
  %conv30 = fptosi double %mul29 to i32
  %28 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %29, i32 0, i32 5
  %arrayidx32 = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 %idxprom31
  %30 = load double, double* %arrayidx32, align 8
  %mul33 = fmul double %30, 2.559990e+02
  %conv34 = fptosi double %mul33 to i32
  %31 = load i32, i32* %i, align 4
  %idxprom35 = sext i32 %31 to i64
  %32 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %32, i32 0, i32 6
  %arrayidx36 = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 %idxprom35
  %33 = load double, double* %arrayidx36, align 8
  %mul37 = fmul double %33, 2.559990e+02
  %conv38 = fptosi double %mul37 to i32
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %34 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %34 to i64
  %35 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %35, i32 0, i32 2
  %arrayidx40 = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom39
  %36 = load double, double* %arrayidx40, align 8
  %call41 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), double %36)
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i32 %conv, i32 %conv30, i32 %conv34, i32 %conv38, i8* %call41)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.21, %if.else.14, %if.else.9
  %38 = load i32, i32* %retval
  ret i32 %38
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #1

; Function Attrs: nounwind uwtable
define void @gimp_levels_config_to_cruft(%struct._GimpLevelsConfig* %config, %struct._Levels* %cruft, i32 %is_color) #3 {
entry:
  %config.addr = alloca %struct._GimpLevelsConfig*, align 8
  %cruft.addr = alloca %struct._Levels*, align 8
  %is_color.addr = alloca i32, align 4
  %channel = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpLevelsConfig* %config, %struct._GimpLevelsConfig** %config.addr, align 8
  store %struct._Levels* %cruft, %struct._Levels** %cruft.addr, align 8
  store i32 %is_color, i32* %is_color.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpLevelsConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_levels_config_get_type() #7
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #8
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_levels_config_to_cruft, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.69

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %cmp12 = icmp ne %struct._Levels* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_levels_config_to_cruft, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.69

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %14 = load i32, i32* %channel, align 4
  %cmp17 = icmp ule i32 %14, 4
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %16, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom
  %17 = load double, double* %arrayidx, align 8
  %18 = load i32, i32* %channel, align 4
  %idxprom18 = zext i32 %18 to i64
  %19 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %gamma19 = getelementptr inbounds %struct._Levels, %struct._Levels* %19, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [5 x double], [5 x double]* %gamma19, i32 0, i64 %idxprom18
  store double %17, double* %arrayidx20, align 8
  %20 = load i32, i32* %channel, align 4
  %idxprom21 = zext i32 %20 to i64
  %21 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %21, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom21
  %22 = load double, double* %arrayidx22, align 8
  %mul = fmul double %22, 2.559990e+02
  %conv = fptosi double %mul to i32
  %23 = load i32, i32* %channel, align 4
  %idxprom23 = zext i32 %23 to i64
  %24 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %low_input24 = getelementptr inbounds %struct._Levels, %struct._Levels* %24, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [5 x i32], [5 x i32]* %low_input24, i32 0, i64 %idxprom23
  store i32 %conv, i32* %arrayidx25, align 4
  %25 = load i32, i32* %channel, align 4
  %idxprom26 = zext i32 %25 to i64
  %26 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %26, i32 0, i32 4
  %arrayidx27 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom26
  %27 = load double, double* %arrayidx27, align 8
  %mul28 = fmul double %27, 2.559990e+02
  %conv29 = fptosi double %mul28 to i32
  %28 = load i32, i32* %channel, align 4
  %idxprom30 = zext i32 %28 to i64
  %29 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %high_input31 = getelementptr inbounds %struct._Levels, %struct._Levels* %29, i32 0, i32 2
  %arrayidx32 = getelementptr inbounds [5 x i32], [5 x i32]* %high_input31, i32 0, i64 %idxprom30
  store i32 %conv29, i32* %arrayidx32, align 4
  %30 = load i32, i32* %channel, align 4
  %idxprom33 = zext i32 %30 to i64
  %31 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %31, i32 0, i32 5
  %arrayidx34 = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 %idxprom33
  %32 = load double, double* %arrayidx34, align 8
  %mul35 = fmul double %32, 2.559990e+02
  %conv36 = fptosi double %mul35 to i32
  %33 = load i32, i32* %channel, align 4
  %idxprom37 = zext i32 %33 to i64
  %34 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %low_output38 = getelementptr inbounds %struct._Levels, %struct._Levels* %34, i32 0, i32 3
  %arrayidx39 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output38, i32 0, i64 %idxprom37
  store i32 %conv36, i32* %arrayidx39, align 4
  %35 = load i32, i32* %channel, align 4
  %idxprom40 = zext i32 %35 to i64
  %36 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config.addr, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %36, i32 0, i32 6
  %arrayidx41 = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 %idxprom40
  %37 = load double, double* %arrayidx41, align 8
  %mul42 = fmul double %37, 2.559990e+02
  %conv43 = fptosi double %mul42 to i32
  %38 = load i32, i32* %channel, align 4
  %idxprom44 = zext i32 %38 to i64
  %39 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %high_output45 = getelementptr inbounds %struct._Levels, %struct._Levels* %39, i32 0, i32 4
  %arrayidx46 = getelementptr inbounds [5 x i32], [5 x i32]* %high_output45, i32 0, i64 %idxprom44
  store i32 %conv43, i32* %arrayidx46, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %channel, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i32, i32* %is_color.addr, align 4
  %tobool47 = icmp ne i32 %41, 0
  br i1 %tobool47, label %if.end.69, label %if.then.48

if.then.48:                                       ; preds = %for.end
  %42 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %gamma49 = getelementptr inbounds %struct._Levels, %struct._Levels* %42, i32 0, i32 0
  %arrayidx50 = getelementptr inbounds [5 x double], [5 x double]* %gamma49, i32 0, i64 4
  %43 = load double, double* %arrayidx50, align 8
  %44 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %gamma51 = getelementptr inbounds %struct._Levels, %struct._Levels* %44, i32 0, i32 0
  %arrayidx52 = getelementptr inbounds [5 x double], [5 x double]* %gamma51, i32 0, i64 1
  store double %43, double* %arrayidx52, align 8
  %45 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %low_input53 = getelementptr inbounds %struct._Levels, %struct._Levels* %45, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [5 x i32], [5 x i32]* %low_input53, i32 0, i64 4
  %46 = load i32, i32* %arrayidx54, align 4
  %47 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %low_input55 = getelementptr inbounds %struct._Levels, %struct._Levels* %47, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [5 x i32], [5 x i32]* %low_input55, i32 0, i64 1
  store i32 %46, i32* %arrayidx56, align 4
  %48 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %high_input57 = getelementptr inbounds %struct._Levels, %struct._Levels* %48, i32 0, i32 2
  %arrayidx58 = getelementptr inbounds [5 x i32], [5 x i32]* %high_input57, i32 0, i64 4
  %49 = load i32, i32* %arrayidx58, align 4
  %50 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %high_input59 = getelementptr inbounds %struct._Levels, %struct._Levels* %50, i32 0, i32 2
  %arrayidx60 = getelementptr inbounds [5 x i32], [5 x i32]* %high_input59, i32 0, i64 1
  store i32 %49, i32* %arrayidx60, align 4
  %51 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %low_output61 = getelementptr inbounds %struct._Levels, %struct._Levels* %51, i32 0, i32 3
  %arrayidx62 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output61, i32 0, i64 4
  %52 = load i32, i32* %arrayidx62, align 4
  %53 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %low_output63 = getelementptr inbounds %struct._Levels, %struct._Levels* %53, i32 0, i32 3
  %arrayidx64 = getelementptr inbounds [5 x i32], [5 x i32]* %low_output63, i32 0, i64 1
  store i32 %52, i32* %arrayidx64, align 4
  %54 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %high_output65 = getelementptr inbounds %struct._Levels, %struct._Levels* %54, i32 0, i32 4
  %arrayidx66 = getelementptr inbounds [5 x i32], [5 x i32]* %high_output65, i32 0, i64 4
  %55 = load i32, i32* %arrayidx66, align 4
  %56 = load %struct._Levels*, %struct._Levels** %cruft.addr, align 8
  %high_output67 = getelementptr inbounds %struct._Levels, %struct._Levels* %56, i32 0, i32 4
  %arrayidx68 = getelementptr inbounds [5 x i32], [5 x i32]* %high_output67, i32 0, i64 1
  store i32 %55, i32* %arrayidx68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.9, %if.else.14, %if.then.48, %for.end
  ret void
}

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_config_class_init(%struct._GimpLevelsConfigClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpLevelsConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpLevelsConfigClass* %klass, %struct._GimpLevelsConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpLevelsConfigClass*, %struct._GimpLevelsConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpLevelsConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpLevelsConfigClass*, %struct._GimpLevelsConfigClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpLevelsConfigClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_viewable_get_type() #7
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %5, %struct._GimpViewableClass** %viewable_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_levels_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_levels_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i32 0, i32 0), i8** %default_stock_id, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_histogram_channel_get_type() #7
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0), i64 %call3, i32 0, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 1, %struct._GParamSpec* %call4)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), double 1.000000e-01, double 1.000000e+01, double 1.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 2, %struct._GParamSpec* %call5)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 3, %struct._GParamSpec* %call6)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 4, %struct._GParamSpec* %call7)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 5, %struct._GParamSpec* %call8)
  %14 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call9 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 1.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %14, i32 6, %struct._GParamSpec* %call9)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpLevelsConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %2, %struct._GimpLevelsConfig** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.11
    i32 5, label %sw.bb.16
    i32 6, label %sw.bb.21
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %5, i32 0, i32 1
  store i32 %call2, i32* %channel, align 4
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %9 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %11 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %11)
  %12 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel5 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %12, i32 0, i32 1
  %13 = load i32, i32* %channel5, align 4
  %idxprom = zext i32 %13 to i64
  %14 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %14, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom
  store double %call4, double* %arrayidx, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %15 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call double @g_value_get_double(%struct._GValue* %15)
  %16 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel8 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %16, i32 0, i32 1
  %17 = load i32, i32* %channel8, align 4
  %idxprom9 = zext i32 %17 to i64
  %18 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %18, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom9
  store double %call7, double* %arrayidx10, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %19 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call double @g_value_get_double(%struct._GValue* %19)
  %20 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel13 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %20, i32 0, i32 1
  %21 = load i32, i32* %channel13, align 4
  %idxprom14 = zext i32 %21 to i64
  %22 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %22, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom14
  store double %call12, double* %arrayidx15, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %23 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call17 = call double @g_value_get_double(%struct._GValue* %23)
  %24 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel18 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %24, i32 0, i32 1
  %25 = load i32, i32* %channel18, align 4
  %idxprom19 = zext i32 %25 to i64
  %26 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %26, i32 0, i32 5
  %arrayidx20 = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 %idxprom19
  store double %call17, double* %arrayidx20, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call22 = call double @g_value_get_double(%struct._GValue* %27)
  %28 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel23 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %28, i32 0, i32 1
  %29 = load i32, i32* %channel23, align 4
  %idxprom24 = zext i32 %29 to i64
  %30 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %30, i32 0, i32 6
  %arrayidx25 = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 %idxprom24
  store double %call22, double* %arrayidx25, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %31 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %31, %struct._GObject** %_glib__object, align 8
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %32, %struct._GParamSpec** %_glib__pspec, align 8
  %33 = load i32, i32* %property_id.addr, align 4
  store i32 %33, i32* %_glib__property_id, align 4
  %34 = load i32, i32* %_glib__property_id, align 4
  %35 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %35, i32 0, i32 1
  %36 = load i8*, i8** %name, align 8
  %37 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %38 = bitcast %struct._GParamSpec* %37 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %39, i32 0, i32 0
  %40 = load i64, i64* %g_type, align 8
  %call26 = call i8* @g_type_name(i64 %40)
  %41 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %42 = bitcast %struct._GObject* %41 to %struct._GTypeInstance*
  %g_class27 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %42, i32 0, i32 0
  %43 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class27, align 8
  %g_type28 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %43, i32 0, i32 0
  %44 = load i64, i64* %g_type28, align 8
  %call29 = call i8* @g_type_name(i64 %44)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 235, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %34, i8* %36, i8* %call26, i8* %call29)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.21, %sw.bb.16, %sw.bb.11, %sw.bb.6, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpLevelsConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %2, %struct._GimpLevelsConfig** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.8
    i32 5, label %sw.bb.12
    i32 6, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %channel, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel3 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %8, i32 0, i32 1
  %9 = load i32, i32* %channel3, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %11)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel5 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %13, i32 0, i32 1
  %14 = load i32, i32* %channel5, align 4
  %idxprom6 = zext i32 %14 to i64
  %15 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %15, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom6
  %16 = load double, double* %arrayidx7, align 8
  call void @g_value_set_double(%struct._GValue* %12, double %16)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %18 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel9 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %18, i32 0, i32 1
  %19 = load i32, i32* %channel9, align 4
  %idxprom10 = zext i32 %19 to i64
  %20 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %20, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom10
  %21 = load double, double* %arrayidx11, align 8
  call void @g_value_set_double(%struct._GValue* %17, double %21)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel13 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %23, i32 0, i32 1
  %24 = load i32, i32* %channel13, align 4
  %idxprom14 = zext i32 %24 to i64
  %25 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %25, i32 0, i32 5
  %arrayidx15 = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 %idxprom14
  %26 = load double, double* %arrayidx15, align 8
  call void @g_value_set_double(%struct._GValue* %22, double %26)
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %27 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %28 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %channel17 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %28, i32 0, i32 1
  %29 = load i32, i32* %channel17, align 4
  %idxprom18 = zext i32 %29 to i64
  %30 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %self, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %30, i32 0, i32 6
  %arrayidx19 = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 %idxprom18
  %31 = load double, double* %arrayidx19, align 8
  call void @g_value_set_double(%struct._GValue* %27, double %31)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %32 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %32, %struct._GObject** %_glib__object, align 8
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %33, %struct._GParamSpec** %_glib__pspec, align 8
  %34 = load i32, i32* %property_id.addr, align 4
  store i32 %34, i32* %_glib__property_id, align 4
  %35 = load i32, i32* %_glib__property_id, align 4
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 1
  %37 = load i8*, i8** %name, align 8
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %39 = bitcast %struct._GParamSpec* %38 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %39, i32 0, i32 0
  %40 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %40, i32 0, i32 0
  %41 = load i64, i64* %g_type, align 8
  %call20 = call i8* @g_type_name(i64 %41)
  %42 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %43 = bitcast %struct._GObject* %42 to %struct._GTypeInstance*
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %43, i32 0, i32 0
  %44 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %g_type22 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type22, align 8
  %call23 = call i8* @g_type_name(i64 %45)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i32 0, i32 0), i32 190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i32 %35, i8* %37, i8* %call20, i8* %call23)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.16, %sw.bb.12, %sw.bb.8, %sw.bb.4, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_histogram_channel_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare double @g_value_get_double(%struct._GValue*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_levels_config_serialize(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %data.addr = alloca i8*, align 8
  %l_config = alloca %struct._GimpLevelsConfig*, align 8
  %channel = alloca i32, align 4
  %old_channel = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %2, %struct._GimpLevelsConfig** %l_config, align 8
  store i32 1, i32* %success, align 4
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call2 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), %struct._GimpConfigWriter* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %l_config, align 8
  %channel3 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %channel3, align 4
  store i32 %6, i32* %old_channel, align 4
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %channel, align 4
  %cmp = icmp ule i32 %7, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %channel, align 4
  %9 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %l_config, align 8
  %channel4 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %9, i32 0, i32 1
  store i32 %8, i32* %channel4, align 4
  %10 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %11 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call5 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), %struct._GimpConfigWriter* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %13 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call7 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._GimpConfigWriter* %13)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %land.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %14 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %15 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call10 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0), %struct._GimpConfigWriter* %15)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %land.end

land.lhs.true.12:                                 ; preds = %land.lhs.true.9
  %16 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %17 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call13 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), %struct._GimpConfigWriter* %17)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %land.lhs.true.15, label %land.end

land.lhs.true.15:                                 ; preds = %land.lhs.true.12
  %18 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %19 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call16 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), %struct._GimpConfigWriter* %19)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.15
  %20 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %21 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call18 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), %struct._GimpConfigWriter* %21)
  %tobool19 = icmp ne i32 %call18, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.15, %land.lhs.true.12, %land.lhs.true.9, %land.lhs.true, %for.body
  %22 = phi i1 [ false, %land.lhs.true.15 ], [ false, %land.lhs.true.12 ], [ false, %land.lhs.true.9 ], [ false, %land.lhs.true ], [ false, %for.body ], [ %tobool19, %land.rhs ]
  %land.ext = zext i1 %22 to i32
  store i32 %land.ext, i32* %success, align 4
  %23 = load i32, i32* %success, align 4
  %tobool20 = icmp ne i32 %23, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.end
  br label %for.end

if.end.22:                                        ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.22
  %24 = load i32, i32* %channel, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.21, %for.cond
  %25 = load i32, i32* %old_channel, align 4
  %26 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %l_config, align 8
  %channel23 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %26, i32 0, i32 1
  store i32 %25, i32* %channel23, align 4
  %27 = load i32, i32* %success, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_levels_config_deserialize(%struct._GimpConfig* %config, %struct._GScanner* %scanner, i32 %nest_level, i8* %data) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %l_config = alloca %struct._GimpLevelsConfig*, align 8
  %old_channel = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %2, %struct._GimpLevelsConfig** %l_config, align 8
  store i32 1, i32* %success, align 4
  %3 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %l_config, align 8
  %channel = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %3, i32 0, i32 1
  %4 = load i32, i32* %channel, align 4
  store i32 %4, i32* %old_channel, align 4
  %5 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %7 = load i32, i32* %nest_level.addr, align 4
  %call2 = call i32 @gimp_config_deserialize_properties(%struct._GimpConfig* %5, %struct._GScanner* %6, i32 %7)
  store i32 %call2, i32* %success, align 4
  %8 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %9 = bitcast %struct._GimpConfig* %8 to i8*
  %10 = load i32, i32* %old_channel, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i32 %10, i8* null)
  %11 = load i32, i32* %success, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_levels_config_equal(%struct._GimpConfig* %a, %struct._GimpConfig* %b) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._GimpConfig*, align 8
  %b.addr = alloca %struct._GimpConfig*, align 8
  %config_a = alloca %struct._GimpLevelsConfig*, align 8
  %config_b = alloca %struct._GimpLevelsConfig*, align 8
  %channel = alloca i32, align 4
  store %struct._GimpConfig* %a, %struct._GimpConfig** %a.addr, align 8
  store %struct._GimpConfig* %b, %struct._GimpConfig** %b.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %a.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %2, %struct._GimpLevelsConfig** %config_a, align 8
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %b.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_levels_config_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %5, %struct._GimpLevelsConfig** %config_b, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %channel, align 4
  %cmp = icmp ule i32 %6, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_a, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8
  %10 = load i32, i32* %channel, align 4
  %idxprom4 = zext i32 %10 to i64
  %11 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_b, align 8
  %gamma5 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %11, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [5 x double], [5 x double]* %gamma5, i32 0, i64 %idxprom4
  %12 = load double, double* %arrayidx6, align 8
  %cmp7 = fcmp une double %9, %12
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i32, i32* %channel, align 4
  %idxprom8 = zext i32 %13 to i64
  %14 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_a, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %14, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom8
  %15 = load double, double* %arrayidx9, align 8
  %16 = load i32, i32* %channel, align 4
  %idxprom10 = zext i32 %16 to i64
  %17 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_b, align 8
  %low_input11 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %17, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [5 x double], [5 x double]* %low_input11, i32 0, i64 %idxprom10
  %18 = load double, double* %arrayidx12, align 8
  %cmp13 = fcmp une double %15, %18
  br i1 %cmp13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %channel, align 4
  %idxprom15 = zext i32 %19 to i64
  %20 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_a, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %20, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom15
  %21 = load double, double* %arrayidx16, align 8
  %22 = load i32, i32* %channel, align 4
  %idxprom17 = zext i32 %22 to i64
  %23 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_b, align 8
  %high_input18 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %23, i32 0, i32 4
  %arrayidx19 = getelementptr inbounds [5 x double], [5 x double]* %high_input18, i32 0, i64 %idxprom17
  %24 = load double, double* %arrayidx19, align 8
  %cmp20 = fcmp une double %21, %24
  br i1 %cmp20, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.14
  %25 = load i32, i32* %channel, align 4
  %idxprom22 = zext i32 %25 to i64
  %26 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_a, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %26, i32 0, i32 5
  %arrayidx23 = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 %idxprom22
  %27 = load double, double* %arrayidx23, align 8
  %28 = load i32, i32* %channel, align 4
  %idxprom24 = zext i32 %28 to i64
  %29 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_b, align 8
  %low_output25 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %29, i32 0, i32 5
  %arrayidx26 = getelementptr inbounds [5 x double], [5 x double]* %low_output25, i32 0, i64 %idxprom24
  %30 = load double, double* %arrayidx26, align 8
  %cmp27 = fcmp une double %27, %30
  br i1 %cmp27, label %if.then, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.21
  %31 = load i32, i32* %channel, align 4
  %idxprom29 = zext i32 %31 to i64
  %32 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_a, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %32, i32 0, i32 6
  %arrayidx30 = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 %idxprom29
  %33 = load double, double* %arrayidx30, align 8
  %34 = load i32, i32* %channel, align 4
  %idxprom31 = zext i32 %34 to i64
  %35 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %config_b, align 8
  %high_output32 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %35, i32 0, i32 6
  %arrayidx33 = getelementptr inbounds [5 x double], [5 x double]* %high_output32, i32 0, i64 %idxprom31
  %36 = load double, double* %arrayidx33, align 8
  %cmp34 = fcmp une double %33, %36
  br i1 %cmp34, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.28, %lor.lhs.false.21, %lor.lhs.false.14, %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.28
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i32, i32* %channel, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %38 = load i32, i32* %retval
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal void @gimp_levels_config_reset(%struct._GimpConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %l_config = alloca %struct._GimpLevelsConfig*, align 8
  %channel = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %2, %struct._GimpLevelsConfig** %l_config, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %channel, align 4
  %cmp = icmp ule i32 %3, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %channel, align 4
  %5 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %l_config, align 8
  %channel2 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %5, i32 0, i32 1
  store i32 %4, i32* %channel2, align 4
  %6 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %l_config, align 8
  call void @gimp_levels_config_reset_channel(%struct._GimpLevelsConfig* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %channel, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %9 = bitcast %struct._GimpConfig* %8 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_levels_config_copy(%struct._GimpConfig* %src, %struct._GimpConfig* %dest, i32 %flags) #3 {
entry:
  %src.addr = alloca %struct._GimpConfig*, align 8
  %dest.addr = alloca %struct._GimpConfig*, align 8
  %flags.addr = alloca i32, align 4
  %src_config = alloca %struct._GimpLevelsConfig*, align 8
  %dest_config = alloca %struct._GimpLevelsConfig*, align 8
  %channel = alloca i32, align 4
  store %struct._GimpConfig* %src, %struct._GimpConfig** %src.addr, align 8
  store %struct._GimpConfig* %dest, %struct._GimpConfig** %dest.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %src.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_levels_config_get_type() #7
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %2, %struct._GimpLevelsConfig** %src_config, align 8
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_levels_config_get_type() #7
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpLevelsConfig*
  store %struct._GimpLevelsConfig* %5, %struct._GimpLevelsConfig** %dest_config, align 8
  store i32 0, i32* %channel, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %channel, align 4
  %cmp = icmp ule i32 %6, 4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %channel, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %src_config, align 8
  %gamma = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [5 x double], [5 x double]* %gamma, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8
  %10 = load i32, i32* %channel, align 4
  %idxprom4 = zext i32 %10 to i64
  %11 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %dest_config, align 8
  %gamma5 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %11, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [5 x double], [5 x double]* %gamma5, i32 0, i64 %idxprom4
  store double %9, double* %arrayidx6, align 8
  %12 = load i32, i32* %channel, align 4
  %idxprom7 = zext i32 %12 to i64
  %13 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %src_config, align 8
  %low_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %13, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [5 x double], [5 x double]* %low_input, i32 0, i64 %idxprom7
  %14 = load double, double* %arrayidx8, align 8
  %15 = load i32, i32* %channel, align 4
  %idxprom9 = zext i32 %15 to i64
  %16 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %dest_config, align 8
  %low_input10 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %16, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [5 x double], [5 x double]* %low_input10, i32 0, i64 %idxprom9
  store double %14, double* %arrayidx11, align 8
  %17 = load i32, i32* %channel, align 4
  %idxprom12 = zext i32 %17 to i64
  %18 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %src_config, align 8
  %high_input = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %18, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [5 x double], [5 x double]* %high_input, i32 0, i64 %idxprom12
  %19 = load double, double* %arrayidx13, align 8
  %20 = load i32, i32* %channel, align 4
  %idxprom14 = zext i32 %20 to i64
  %21 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %dest_config, align 8
  %high_input15 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %21, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [5 x double], [5 x double]* %high_input15, i32 0, i64 %idxprom14
  store double %19, double* %arrayidx16, align 8
  %22 = load i32, i32* %channel, align 4
  %idxprom17 = zext i32 %22 to i64
  %23 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %src_config, align 8
  %low_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %23, i32 0, i32 5
  %arrayidx18 = getelementptr inbounds [5 x double], [5 x double]* %low_output, i32 0, i64 %idxprom17
  %24 = load double, double* %arrayidx18, align 8
  %25 = load i32, i32* %channel, align 4
  %idxprom19 = zext i32 %25 to i64
  %26 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %dest_config, align 8
  %low_output20 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %26, i32 0, i32 5
  %arrayidx21 = getelementptr inbounds [5 x double], [5 x double]* %low_output20, i32 0, i64 %idxprom19
  store double %24, double* %arrayidx21, align 8
  %27 = load i32, i32* %channel, align 4
  %idxprom22 = zext i32 %27 to i64
  %28 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %src_config, align 8
  %high_output = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %28, i32 0, i32 6
  %arrayidx23 = getelementptr inbounds [5 x double], [5 x double]* %high_output, i32 0, i64 %idxprom22
  %29 = load double, double* %arrayidx23, align 8
  %30 = load i32, i32* %channel, align 4
  %idxprom24 = zext i32 %30 to i64
  %31 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %dest_config, align 8
  %high_output25 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %31, i32 0, i32 6
  %arrayidx26 = getelementptr inbounds [5 x double], [5 x double]* %high_output25, i32 0, i64 %idxprom24
  store double %29, double* %arrayidx26, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %32 = load i32, i32* %channel, align 4
  %inc = add i32 %32, 1
  store i32 %inc, i32* %channel, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %34 = bitcast %struct._GimpConfig* %33 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  %36 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %37 = bitcast %struct._GimpConfig* %36 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %37, i64 80)
  %38 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i32 0, i32 0))
  %39 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %40 = bitcast %struct._GimpConfig* %39 to %struct._GTypeInstance*
  %call29 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call29 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  %42 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %43 = bitcast %struct._GimpConfig* %42 to %struct._GTypeInstance*
  %call30 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %43, i64 80)
  %44 = bitcast %struct._GTypeInstance* %call30 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0))
  %45 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %46 = bitcast %struct._GimpConfig* %45 to %struct._GTypeInstance*
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %46, i64 80)
  %47 = bitcast %struct._GTypeInstance* %call31 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  %48 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %src_config, align 8
  %channel32 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %48, i32 0, i32 1
  %49 = load i32, i32* %channel32, align 4
  %50 = load %struct._GimpLevelsConfig*, %struct._GimpLevelsConfig** %dest_config, align 8
  %channel33 = getelementptr inbounds %struct._GimpLevelsConfig, %struct._GimpLevelsConfig* %50, i32 0, i32 1
  store i32 %49, i32* %channel33, align 4
  %51 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %52 = bitcast %struct._GimpConfig* %51 to %struct._GTypeInstance*
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 80)
  %53 = bitcast %struct._GTypeInstance* %call34 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %53, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0))
  ret i32 1
}

declare i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig*, i8*, %struct._GimpConfigWriter*) #1

declare i32 @gimp_config_deserialize_properties(%struct._GimpConfig*, %struct._GScanner*, i32) #1

declare void @g_object_set(i8*, i8*, ...) #1

declare void @gimp_config_reset(%struct._GimpConfig*) #1

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
