; ModuleID = './app/gegl/gimphuesaturationconfig.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpHueSaturationConfigClass = type { %struct._GimpImageMapConfigClass }
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
%struct._GimpHueSaturationConfig = type { %struct._GimpImageMapConfig, i32, [7 x double], [7 x double], [7 x double], double }
%struct._GimpImageMapConfig = type { %struct._GimpViewable, i32 }
%struct._GimpConfig = type opaque
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._HueSaturation = type { [7 x double], [7 x double], [7 x double], double, [6 x [256 x i32]], [6 x [256 x i32]], [6 x [256 x i32]] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_hue_saturation_config_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"GimpHueSaturationConfig\00", align 1
@gimp_hue_saturation_config_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_hue_saturation_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"Gimp-GEGL\00", align 1
@__func__.gimp_hue_saturation_config_reset_range = private unnamed_addr constant [39 x i8] c"gimp_hue_saturation_config_reset_range\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"GIMP_IS_HUE_SATURATION_CONFIG (config)\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"hue\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"lightness\00", align 1
@__func__.gimp_hue_saturation_config_to_cruft = private unnamed_addr constant [36 x i8] c"gimp_hue_saturation_config_to_cruft\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"cruft != NULL\00", align 1
@gimp_hue_saturation_config_parent_class = internal global i8* null, align 8
@GimpHueSaturationConfig_private_offset = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"gimp-tool-hue-saturation\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"range\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"The affected range\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"Hue\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"Saturation\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"Lightness\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"overlap\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Overlap\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"gimphuesaturationconfig.c\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"time\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_hue_saturation_config_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_hue_saturation_config_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_hue_saturation_config_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_image_map_config_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 280, void (i8*, i8*)* bitcast (void (i8*)* @gimp_hue_saturation_config_class_intern_init to void (i8*, i8*)*), i32 224, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpHueSaturationConfig*)* @gimp_hue_saturation_config_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_hue_saturation_config_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_hue_saturation_config_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_hue_saturation_config_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_image_map_config_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_config_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_hue_saturation_config_parent_class, align 8
  %1 = load i32, i32* @GimpHueSaturationConfig_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpHueSaturationConfig_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpHueSaturationConfigClass*
  call void @gimp_hue_saturation_config_class_init(%struct._GimpHueSaturationConfigClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_config_init(%struct._GimpHueSaturationConfig* %self) #3 {
entry:
  %self.addr = alloca %struct._GimpHueSaturationConfig*, align 8
  store %struct._GimpHueSaturationConfig* %self, %struct._GimpHueSaturationConfig** %self.addr, align 8
  %0 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self.addr, align 8
  %1 = bitcast %struct._GimpHueSaturationConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_config_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpConfig*
  call void @gimp_config_reset(%struct._GimpConfig* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 1
  store i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)* @gimp_hue_saturation_config_serialize, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %1 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %1, i32 0, i32 2
  store i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)* @gimp_hue_saturation_config_deserialize, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %2 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %equal = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %2, i32 0, i32 6
  store i32 (%struct._GimpConfig*, %struct._GimpConfig*)* @gimp_hue_saturation_config_equal, i32 (%struct._GimpConfig*, %struct._GimpConfig*)** %equal, align 8
  %3 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %reset = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %3, i32 0, i32 7
  store void (%struct._GimpConfig*)* @gimp_hue_saturation_config_reset, void (%struct._GimpConfig*)** %reset, align 8
  %4 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %copy = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %4, i32 0, i32 8
  store i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* @gimp_hue_saturation_config_copy, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)** %copy, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_hue_saturation_config_reset_range(%struct._GimpHueSaturationConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpHueSaturationConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHueSaturationConfig* %config, %struct._GimpHueSaturationConfig** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpHueSaturationConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_hue_saturation_config_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__func__.gimp_hue_saturation_config_reset_range, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %14 = bitcast %struct._GimpHueSaturationConfig* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %15)
  %16 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %17 = bitcast %struct._GimpHueSaturationConfig* %16 to %struct._GTypeInstance*
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %17, i64 80)
  %18 = bitcast %struct._GTypeInstance* %call12 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %19 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %20 = bitcast %struct._GimpHueSaturationConfig* %19 to %struct._GTypeInstance*
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %20, i64 80)
  %21 = bitcast %struct._GTypeInstance* %call13 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  %22 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %23 = bitcast %struct._GimpHueSaturationConfig* %22 to %struct._GTypeInstance*
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 80)
  %24 = bitcast %struct._GTypeInstance* %call14 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %25 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %26 = bitcast %struct._GimpHueSaturationConfig* %25 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %27)
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
define void @gimp_hue_saturation_config_to_cruft(%struct._GimpHueSaturationConfig* %config, %struct._HueSaturation* %cruft) #3 {
entry:
  %config.addr = alloca %struct._GimpHueSaturationConfig*, align 8
  %cruft.addr = alloca %struct._HueSaturation*, align 8
  %range = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpHueSaturationConfig* %config, %struct._GimpHueSaturationConfig** %config.addr, align 8
  store %struct._HueSaturation* %cruft, %struct._HueSaturation** %cruft.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpHueSaturationConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_hue_saturation_config_get_type() #6
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
  %call5 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_hue_saturation_config_to_cruft, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._HueSaturation*, %struct._HueSaturation** %cruft.addr, align 8
  %cmp12 = icmp ne %struct._HueSaturation* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__func__.gimp_hue_saturation_config_to_cruft, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  store i32 0, i32* %range, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.16
  %14 = load i32, i32* %range, align 4
  %cmp17 = icmp ule i32 %14, 6
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %range, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %hue = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %16, i32 0, i32 2
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %hue, i32 0, i64 %idxprom
  %17 = load double, double* %arrayidx, align 8
  %mul = fmul double %17, 1.800000e+02
  %18 = load i32, i32* %range, align 4
  %idxprom18 = zext i32 %18 to i64
  %19 = load %struct._HueSaturation*, %struct._HueSaturation** %cruft.addr, align 8
  %hue19 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %19, i32 0, i32 0
  %arrayidx20 = getelementptr inbounds [7 x double], [7 x double]* %hue19, i32 0, i64 %idxprom18
  store double %mul, double* %arrayidx20, align 8
  %20 = load i32, i32* %range, align 4
  %idxprom21 = zext i32 %20 to i64
  %21 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %saturation = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %21, i32 0, i32 3
  %arrayidx22 = getelementptr inbounds [7 x double], [7 x double]* %saturation, i32 0, i64 %idxprom21
  %22 = load double, double* %arrayidx22, align 8
  %mul23 = fmul double %22, 1.000000e+02
  %23 = load i32, i32* %range, align 4
  %idxprom24 = zext i32 %23 to i64
  %24 = load %struct._HueSaturation*, %struct._HueSaturation** %cruft.addr, align 8
  %saturation25 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %24, i32 0, i32 2
  %arrayidx26 = getelementptr inbounds [7 x double], [7 x double]* %saturation25, i32 0, i64 %idxprom24
  store double %mul23, double* %arrayidx26, align 8
  %25 = load i32, i32* %range, align 4
  %idxprom27 = zext i32 %25 to i64
  %26 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %lightness = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %26, i32 0, i32 4
  %arrayidx28 = getelementptr inbounds [7 x double], [7 x double]* %lightness, i32 0, i64 %idxprom27
  %27 = load double, double* %arrayidx28, align 8
  %mul29 = fmul double %27, 1.000000e+02
  %28 = load i32, i32* %range, align 4
  %idxprom30 = zext i32 %28 to i64
  %29 = load %struct._HueSaturation*, %struct._HueSaturation** %cruft.addr, align 8
  %lightness31 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %29, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [7 x double], [7 x double]* %lightness31, i32 0, i64 %idxprom30
  store double %mul29, double* %arrayidx32, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %range, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %range, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config.addr, align 8
  %overlap = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %31, i32 0, i32 5
  %32 = load double, double* %overlap, align 8
  %mul33 = fmul double %32, 1.000000e+02
  %33 = load %struct._HueSaturation*, %struct._HueSaturation** %cruft.addr, align 8
  %overlap34 = getelementptr inbounds %struct._HueSaturation, %struct._HueSaturation* %33, i32 0, i32 3
  store double %mul33, double* %overlap34, align 8
  %34 = load %struct._HueSaturation*, %struct._HueSaturation** %cruft.addr, align 8
  call void @hue_saturation_calculate_transfers(%struct._HueSaturation* %34)
  br label %return

return:                                           ; preds = %for.end, %if.else.14, %if.else.9
  ret void
}

declare void @hue_saturation_calculate_transfers(%struct._HueSaturation*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_config_class_init(%struct._GimpHueSaturationConfigClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpHueSaturationConfigClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  %viewable_class = alloca %struct._GimpViewableClass*, align 8
  store %struct._GimpHueSaturationConfigClass* %klass, %struct._GimpHueSaturationConfigClass** %klass.addr, align 8
  %0 = load %struct._GimpHueSaturationConfigClass*, %struct._GimpHueSaturationConfigClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpHueSaturationConfigClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GimpHueSaturationConfigClass*, %struct._GimpHueSaturationConfigClass** %klass.addr, align 8
  %4 = bitcast %struct._GimpHueSaturationConfigClass* %3 to %struct._GTypeClass*
  %call1 = call i64 @gimp_viewable_get_type() #6
  %call2 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %4, i64 %call1)
  %5 = bitcast %struct._GTypeClass* %call2 to %struct._GimpViewableClass*
  store %struct._GimpViewableClass* %5, %struct._GimpViewableClass** %viewable_class, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_hue_saturation_config_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %7, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_hue_saturation_config_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %8 = load %struct._GimpViewableClass*, %struct._GimpViewableClass** %viewable_class, align 8
  %default_stock_id = getelementptr inbounds %struct._GimpViewableClass, %struct._GimpViewableClass* %8, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i32 0, i32 0), i8** %default_stock_id, align 8
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call i64 @gimp_hue_range_get_type() #6
  %call4 = call %struct._GParamSpec* @g_param_spec_enum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i32 0, i32 0), i64 %call3, i32 0, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 1, %struct._GParamSpec* %call4)
  %10 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call5 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %10, i32 2, %struct._GParamSpec* %call5)
  %11 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call6 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %11, i32 3, %struct._GParamSpec* %call6)
  %12 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call7 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), double -1.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %12, i32 4, %struct._GParamSpec* %call7)
  %13 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call8 = call %struct._GParamSpec* @g_param_spec_double(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i8* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), double 0.000000e+00, double 1.000000e+00, double 0.000000e+00, i32 263)
  call void @g_object_class_install_property(%struct._GObjectClass* %13, i32 5, %struct._GParamSpec* %call8)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_viewable_get_type() #2

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_config_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpHueSaturationConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationConfig*
  store %struct._GimpHueSaturationConfig* %2, %struct._GimpHueSaturationConfig** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.3
    i32 3, label %sw.bb.6
    i32 4, label %sw.bb.11
    i32 5, label %sw.bb.16
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i32 @g_value_get_enum(%struct._GValue* %4)
  %5 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %range = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %5, i32 0, i32 1
  store i32 %call2, i32* %range, align 4
  %6 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %7 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  %8 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void @g_object_notify(%struct._GObject* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call double @g_value_get_double(%struct._GValue* %9)
  %10 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %range5 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %10, i32 0, i32 1
  %11 = load i32, i32* %range5, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %hue = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %12, i32 0, i32 2
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %hue, i32 0, i64 %idxprom
  store double %call4, double* %arrayidx, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %entry
  %13 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call double @g_value_get_double(%struct._GValue* %13)
  %14 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %range8 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %14, i32 0, i32 1
  %15 = load i32, i32* %range8, align 4
  %idxprom9 = zext i32 %15 to i64
  %16 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %saturation = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %16, i32 0, i32 3
  %arrayidx10 = getelementptr inbounds [7 x double], [7 x double]* %saturation, i32 0, i64 %idxprom9
  store double %call7, double* %arrayidx10, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call12 = call double @g_value_get_double(%struct._GValue* %17)
  %18 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %range13 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %18, i32 0, i32 1
  %19 = load i32, i32* %range13, align 4
  %idxprom14 = zext i32 %19 to i64
  %20 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %lightness = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %20, i32 0, i32 4
  %arrayidx15 = getelementptr inbounds [7 x double], [7 x double]* %lightness, i32 0, i64 %idxprom14
  store double %call12, double* %arrayidx15, align 8
  br label %sw.epilog

sw.bb.16:                                         ; preds = %entry
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call17 = call double @g_value_get_double(%struct._GValue* %21)
  %22 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %overlap = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %22, i32 0, i32 5
  store double %call17, double* %overlap, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %23 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %23, %struct._GObject** %_glib__object, align 8
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %24, %struct._GParamSpec** %_glib__pspec, align 8
  %25 = load i32, i32* %property_id.addr, align 4
  store i32 %25, i32* %_glib__property_id, align 4
  %26 = load i32, i32* %_glib__property_id, align 4
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %27, i32 0, i32 1
  %28 = load i8*, i8** %name, align 8
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %30 = bitcast %struct._GParamSpec* %29 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %30, i32 0, i32 0
  %31 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %31, i32 0, i32 0
  %32 = load i64, i64* %g_type, align 8
  %call18 = call i8* @g_type_name(i64 %32)
  %33 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %34 = bitcast %struct._GObject* %33 to %struct._GTypeInstance*
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %34, i32 0, i32 0
  %35 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %g_type20 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %35, i32 0, i32 0
  %36 = load i64, i64* %g_type20, align 8
  %call21 = call i8* @g_type_name(i64 %36)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), i32 205, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %26, i8* %28, i8* %call18, i8* %call21)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.16, %sw.bb.11, %sw.bb.6, %sw.bb.3, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_config_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %self = alloca %struct._GimpHueSaturationConfig*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationConfig*
  store %struct._GimpHueSaturationConfig* %2, %struct._GimpHueSaturationConfig** %self, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.4
    i32 4, label %sw.bb.8
    i32 5, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %range = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %range, align 4
  call void @g_value_set_enum(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %range3 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %8, i32 0, i32 1
  %9 = load i32, i32* %range3, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %hue = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %10, i32 0, i32 2
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %hue, i32 0, i64 %idxprom
  %11 = load double, double* %arrayidx, align 8
  call void @g_value_set_double(%struct._GValue* %7, double %11)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %13 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %range5 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %13, i32 0, i32 1
  %14 = load i32, i32* %range5, align 4
  %idxprom6 = zext i32 %14 to i64
  %15 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %saturation = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %15, i32 0, i32 3
  %arrayidx7 = getelementptr inbounds [7 x double], [7 x double]* %saturation, i32 0, i64 %idxprom6
  %16 = load double, double* %arrayidx7, align 8
  call void @g_value_set_double(%struct._GValue* %12, double %16)
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  %17 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %18 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %range9 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %18, i32 0, i32 1
  %19 = load i32, i32* %range9, align 4
  %idxprom10 = zext i32 %19 to i64
  %20 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %lightness = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %20, i32 0, i32 4
  %arrayidx11 = getelementptr inbounds [7 x double], [7 x double]* %lightness, i32 0, i64 %idxprom10
  %21 = load double, double* %arrayidx11, align 8
  call void @g_value_set_double(%struct._GValue* %17, double %21)
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %22 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %23 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %self, align 8
  %overlap = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %23, i32 0, i32 5
  %24 = load double, double* %overlap, align 8
  call void @g_value_set_double(%struct._GValue* %22, double %24)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %25 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %25, %struct._GObject** %_glib__object, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %26, %struct._GParamSpec** %_glib__pspec, align 8
  %27 = load i32, i32* %property_id.addr, align 4
  store i32 %27, i32* %_glib__property_id, align 4
  %28 = load i32, i32* %_glib__property_id, align 4
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %29, i32 0, i32 1
  %30 = load i8*, i8** %name, align 8
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %32 = bitcast %struct._GParamSpec* %31 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %32, i32 0, i32 0
  %33 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type, align 8
  %call13 = call i8* @g_type_name(i64 %34)
  %35 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %36 = bitcast %struct._GObject* %35 to %struct._GTypeInstance*
  %g_class14 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %36, i32 0, i32 0
  %37 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class14, align 8
  %g_type15 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type15, align 8
  %call16 = call i8* @g_type_name(i64 %38)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i32 0, i32 0), i32 166, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 %28, i8* %30, i8* %call13, i8* %call16)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.12, %sw.bb.8, %sw.bb.4, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_enum(i8*, i8*, i8*, i64, i32, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_hue_range_get_type() #2

declare %struct._GParamSpec* @g_param_spec_double(i8*, i8*, i8*, double, double, double, i32) #1

declare i32 @g_value_get_enum(%struct._GValue*) #1

declare void @g_object_notify(%struct._GObject*, i8*) #1

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
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare void @g_value_set_enum(%struct._GValue*, i32) #1

declare void @g_value_set_double(%struct._GValue*, double) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_hue_saturation_config_serialize(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer, i8* %data) #3 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %data.addr = alloca i8*, align 8
  %hs_config = alloca %struct._GimpHueSaturationConfig*, align 8
  %range = alloca i32, align 4
  %old_range = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationConfig*
  store %struct._GimpHueSaturationConfig* %2, %struct._GimpHueSaturationConfig** %hs_config, align 8
  store i32 1, i32* %success, align 4
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call2 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %struct._GimpConfigWriter* %4)
  %tobool = icmp ne i32 %call2, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %hs_config, align 8
  %range3 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %5, i32 0, i32 1
  %6 = load i32, i32* %range3, align 4
  store i32 %6, i32* %old_range, align 4
  store i32 0, i32* %range, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %range, align 4
  %cmp = icmp ule i32 %7, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %range, align 4
  %9 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %hs_config, align 8
  %range4 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %9, i32 0, i32 1
  store i32 %8, i32* %range4, align 4
  %10 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %11 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call5 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._GimpConfigWriter* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.body
  %12 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %13 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call7 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), %struct._GimpConfigWriter* %13)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %land.lhs.true.9, label %land.end

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %14 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %15 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call10 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._GimpConfigWriter* %15)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.9
  %16 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %17 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call12 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), %struct._GimpConfigWriter* %17)
  %tobool13 = icmp ne i32 %call12, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.9, %land.lhs.true, %for.body
  %18 = phi i1 [ false, %land.lhs.true.9 ], [ false, %land.lhs.true ], [ false, %for.body ], [ %tobool13, %land.rhs ]
  %land.ext = zext i1 %18 to i32
  store i32 %land.ext, i32* %success, align 4
  %19 = load i32, i32* %success, align 4
  %tobool14 = icmp ne i32 %19, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %land.end
  br label %for.end

if.end.16:                                        ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %20 = load i32, i32* %range, align 4
  %inc = add i32 %20, 1
  store i32 %inc, i32* %range, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.15, %for.cond
  %21 = load i32, i32* %success, align 4
  %tobool17 = icmp ne i32 %21, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %for.end
  %22 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %23 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call19 = call i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), %struct._GimpConfigWriter* %23)
  store i32 %call19, i32* %success, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %for.end
  %24 = load i32, i32* %old_range, align 4
  %25 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %hs_config, align 8
  %range21 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %25, i32 0, i32 1
  store i32 %24, i32* %range21, align 4
  %26 = load i32, i32* %success, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_hue_saturation_config_deserialize(%struct._GimpConfig* %config, %struct._GScanner* %scanner, i32 %nest_level, i8* %data) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %hs_config = alloca %struct._GimpHueSaturationConfig*, align 8
  %old_range = alloca i32, align 4
  %success = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationConfig*
  store %struct._GimpHueSaturationConfig* %2, %struct._GimpHueSaturationConfig** %hs_config, align 8
  store i32 1, i32* %success, align 4
  %3 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %hs_config, align 8
  %range = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %3, i32 0, i32 1
  %4 = load i32, i32* %range, align 4
  store i32 %4, i32* %old_range, align 4
  %5 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %6 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %7 = load i32, i32* %nest_level.addr, align 4
  %call2 = call i32 @gimp_config_deserialize_properties(%struct._GimpConfig* %5, %struct._GScanner* %6, i32 %7)
  store i32 %call2, i32* %success, align 4
  %8 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %9 = bitcast %struct._GimpConfig* %8 to i8*
  %10 = load i32, i32* %old_range, align 4
  call void (i8*, i8*, ...) @g_object_set(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %10, i8* null)
  %11 = load i32, i32* %success, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_hue_saturation_config_equal(%struct._GimpConfig* %a, %struct._GimpConfig* %b) #3 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._GimpConfig*, align 8
  %b.addr = alloca %struct._GimpConfig*, align 8
  %config_a = alloca %struct._GimpHueSaturationConfig*, align 8
  %config_b = alloca %struct._GimpHueSaturationConfig*, align 8
  %range = alloca i32, align 4
  store %struct._GimpConfig* %a, %struct._GimpConfig** %a.addr, align 8
  store %struct._GimpConfig* %b, %struct._GimpConfig** %b.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %a.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationConfig*
  store %struct._GimpHueSaturationConfig* %2, %struct._GimpHueSaturationConfig** %config_a, align 8
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %b.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_hue_saturation_config_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpHueSaturationConfig*
  store %struct._GimpHueSaturationConfig* %5, %struct._GimpHueSaturationConfig** %config_b, align 8
  store i32 0, i32* %range, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %range, align 4
  %cmp = icmp ule i32 %6, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %range, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config_a, align 8
  %hue = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %hue, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8
  %10 = load i32, i32* %range, align 4
  %idxprom4 = zext i32 %10 to i64
  %11 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config_b, align 8
  %hue5 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %11, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [7 x double], [7 x double]* %hue5, i32 0, i64 %idxprom4
  %12 = load double, double* %arrayidx6, align 8
  %cmp7 = fcmp une double %9, %12
  br i1 %cmp7, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %13 = load i32, i32* %range, align 4
  %idxprom8 = zext i32 %13 to i64
  %14 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config_a, align 8
  %saturation = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %14, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [7 x double], [7 x double]* %saturation, i32 0, i64 %idxprom8
  %15 = load double, double* %arrayidx9, align 8
  %16 = load i32, i32* %range, align 4
  %idxprom10 = zext i32 %16 to i64
  %17 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config_b, align 8
  %saturation11 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %17, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [7 x double], [7 x double]* %saturation11, i32 0, i64 %idxprom10
  %18 = load double, double* %arrayidx12, align 8
  %cmp13 = fcmp une double %15, %18
  br i1 %cmp13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %range, align 4
  %idxprom15 = zext i32 %19 to i64
  %20 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config_a, align 8
  %lightness = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %20, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [7 x double], [7 x double]* %lightness, i32 0, i64 %idxprom15
  %21 = load double, double* %arrayidx16, align 8
  %22 = load i32, i32* %range, align 4
  %idxprom17 = zext i32 %22 to i64
  %23 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config_b, align 8
  %lightness18 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %23, i32 0, i32 4
  %arrayidx19 = getelementptr inbounds [7 x double], [7 x double]* %lightness18, i32 0, i64 %idxprom17
  %24 = load double, double* %arrayidx19, align 8
  %cmp20 = fcmp une double %21, %24
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.14, %lor.lhs.false, %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.14
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load i32, i32* %range, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %range, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %26 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config_a, align 8
  %overlap = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %26, i32 0, i32 5
  %27 = load double, double* %overlap, align 8
  %28 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %config_b, align 8
  %overlap21 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %28, i32 0, i32 5
  %29 = load double, double* %overlap21, align 8
  %cmp22 = fcmp une double %27, %29
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.23, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal void @gimp_hue_saturation_config_reset(%struct._GimpConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %hs_config = alloca %struct._GimpHueSaturationConfig*, align 8
  %range = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationConfig*
  store %struct._GimpHueSaturationConfig* %2, %struct._GimpHueSaturationConfig** %hs_config, align 8
  store i32 0, i32* %range, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %range, align 4
  %cmp = icmp ule i32 %3, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %range, align 4
  %5 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %hs_config, align 8
  %range2 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %5, i32 0, i32 1
  store i32 %4, i32* %range2, align 4
  %6 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %hs_config, align 8
  call void @gimp_hue_saturation_config_reset_range(%struct._GimpHueSaturationConfig* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %range, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %range, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %9 = bitcast %struct._GimpConfig* %8 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 80)
  %10 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %10, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %11 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %12 = bitcast %struct._GimpConfig* %11 to %struct._GTypeInstance*
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 80)
  %13 = bitcast %struct._GTypeInstance* %call4 to %struct._GObject*
  call void @gimp_config_reset_property(%struct._GObject* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_hue_saturation_config_copy(%struct._GimpConfig* %src, %struct._GimpConfig* %dest, i32 %flags) #3 {
entry:
  %src.addr = alloca %struct._GimpConfig*, align 8
  %dest.addr = alloca %struct._GimpConfig*, align 8
  %flags.addr = alloca i32, align 4
  %src_config = alloca %struct._GimpHueSaturationConfig*, align 8
  %dest_config = alloca %struct._GimpHueSaturationConfig*, align 8
  %range = alloca i32, align 4
  store %struct._GimpConfig* %src, %struct._GimpConfig** %src.addr, align 8
  store %struct._GimpConfig* %dest, %struct._GimpConfig** %dest.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %src.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_hue_saturation_config_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpHueSaturationConfig*
  store %struct._GimpHueSaturationConfig* %2, %struct._GimpHueSaturationConfig** %src_config, align 8
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %call2 = call i64 @gimp_hue_saturation_config_get_type() #6
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 %call2)
  %5 = bitcast %struct._GTypeInstance* %call3 to %struct._GimpHueSaturationConfig*
  store %struct._GimpHueSaturationConfig* %5, %struct._GimpHueSaturationConfig** %dest_config, align 8
  store i32 0, i32* %range, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %range, align 4
  %cmp = icmp ule i32 %6, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %range, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %src_config, align 8
  %hue = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %8, i32 0, i32 2
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %hue, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8
  %10 = load i32, i32* %range, align 4
  %idxprom4 = zext i32 %10 to i64
  %11 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %dest_config, align 8
  %hue5 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %11, i32 0, i32 2
  %arrayidx6 = getelementptr inbounds [7 x double], [7 x double]* %hue5, i32 0, i64 %idxprom4
  store double %9, double* %arrayidx6, align 8
  %12 = load i32, i32* %range, align 4
  %idxprom7 = zext i32 %12 to i64
  %13 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %src_config, align 8
  %saturation = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %13, i32 0, i32 3
  %arrayidx8 = getelementptr inbounds [7 x double], [7 x double]* %saturation, i32 0, i64 %idxprom7
  %14 = load double, double* %arrayidx8, align 8
  %15 = load i32, i32* %range, align 4
  %idxprom9 = zext i32 %15 to i64
  %16 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %dest_config, align 8
  %saturation10 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %16, i32 0, i32 3
  %arrayidx11 = getelementptr inbounds [7 x double], [7 x double]* %saturation10, i32 0, i64 %idxprom9
  store double %14, double* %arrayidx11, align 8
  %17 = load i32, i32* %range, align 4
  %idxprom12 = zext i32 %17 to i64
  %18 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %src_config, align 8
  %lightness = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %18, i32 0, i32 4
  %arrayidx13 = getelementptr inbounds [7 x double], [7 x double]* %lightness, i32 0, i64 %idxprom12
  %19 = load double, double* %arrayidx13, align 8
  %20 = load i32, i32* %range, align 4
  %idxprom14 = zext i32 %20 to i64
  %21 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %dest_config, align 8
  %lightness15 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %21, i32 0, i32 4
  %arrayidx16 = getelementptr inbounds [7 x double], [7 x double]* %lightness15, i32 0, i64 %idxprom14
  store double %19, double* %arrayidx16, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %22 = load i32, i32* %range, align 4
  %inc = add i32 %22, 1
  store i32 %inc, i32* %range, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %23 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %24 = bitcast %struct._GimpConfig* %23 to %struct._GTypeInstance*
  %call17 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call17 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %26 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %27 = bitcast %struct._GimpConfig* %26 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 80)
  %28 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0))
  %29 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %30 = bitcast %struct._GimpConfig* %29 to %struct._GTypeInstance*
  %call19 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %30, i64 80)
  %31 = bitcast %struct._GTypeInstance* %call19 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %32 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %src_config, align 8
  %range20 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %32, i32 0, i32 1
  %33 = load i32, i32* %range20, align 4
  %34 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %dest_config, align 8
  %range21 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %34, i32 0, i32 1
  store i32 %33, i32* %range21, align 4
  %35 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %src_config, align 8
  %overlap = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %35, i32 0, i32 5
  %36 = load double, double* %overlap, align 8
  %37 = load %struct._GimpHueSaturationConfig*, %struct._GimpHueSaturationConfig** %dest_config, align 8
  %overlap22 = getelementptr inbounds %struct._GimpHueSaturationConfig, %struct._GimpHueSaturationConfig* %37, i32 0, i32 5
  store double %36, double* %overlap22, align 8
  %38 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %39 = bitcast %struct._GimpConfig* %38 to %struct._GTypeInstance*
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %39, i64 80)
  %40 = bitcast %struct._GTypeInstance* %call23 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0))
  %41 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %42 = bitcast %struct._GimpConfig* %41 to %struct._GTypeInstance*
  %call24 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %42, i64 80)
  %43 = bitcast %struct._GTypeInstance* %call24 to %struct._GObject*
  call void @g_object_notify(%struct._GObject* %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0))
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
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
