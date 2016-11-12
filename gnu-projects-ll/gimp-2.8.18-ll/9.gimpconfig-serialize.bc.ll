; ModuleID = './libgimpconfig/gimpconfig-serialize.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GTypeClass = type { i64 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GData = type opaque
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GString = type { i8*, i64, i64 }
%struct._GimpRGB = type { double, double, double, double }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct._GimpMatrix2 = type { [2 x [2 x double]] }
%struct._GValueArray = type { i32, %struct._GValue*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"LibGimpConfig\00", align 1
@__func__.gimp_config_serialize_properties = private unnamed_addr constant [33 x i8] c"gimp_config_serialize_properties\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"G_IS_OBJECT (config)\00", align 1
@__func__.gimp_config_serialize_changed_properties = private unnamed_addr constant [41 x i8] c"gimp_config_serialize_changed_properties\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"couldn't serialize property %s::%s of type %s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Couldn't get nick for enum_value of %s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"(matrix %s %s %s %s)\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"(matrix 1.0 1.0 1.0 1.0)\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"(color-rgba %s %s %s %s)\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"(color-rgb %s %s %s)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_config_serialize_properties(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %klass = alloca %struct._GObjectClass*, align 8
  %property_specs = alloca %struct._GParamSpec**, align 8
  %n_property_specs = alloca i32, align 4
  %i = alloca i32, align 4
  %prop_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %1, i64 80) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_config_serialize_properties, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %3 = bitcast %struct._GimpConfig* %2 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %5 = bitcast %struct._GTypeClass* %4 to %struct._GObjectClass*
  store %struct._GObjectClass* %5, %struct._GObjectClass** %klass, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %klass, align 8
  %call1 = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %6, i32* %n_property_specs)
  store %struct._GParamSpec** %call1, %struct._GParamSpec*** %property_specs, align 8
  %7 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %tobool2 = icmp ne %struct._GParamSpec** %7, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %n_property_specs, align 4
  %cmp = icmp ult i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %11, i64 %idxprom
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %12, %struct._GParamSpec** %prop_spec, align 8
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %13, i32 0, i32 2
  %14 = load i32, i32* %flags, align 4
  %and = and i32 %14, 256
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %for.body
  br label %for.inc

if.end.7:                                         ; preds = %for.body
  %15 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %17 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call8 = call i32 @gimp_config_serialize_property(%struct._GimpConfig* %15, %struct._GParamSpec* %16, %struct._GimpConfigWriter* %17)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.11, %if.then.6
  %18 = load i32, i32* %i, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %20 = bitcast %struct._GParamSpec** %19 to i8*
  call void @g_free(i8* %20)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.10, %if.then.3, %if.else
  %21 = load i32, i32* %retval
  ret i32 %21
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance*, i64) #1

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass*, i32*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_config_serialize_property(%struct._GimpConfig* %config, %struct._GParamSpec* %param_spec, %struct._GimpConfigWriter* %writer) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %param_spec.addr = alloca %struct._GParamSpec*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %config_iface = alloca %struct._GimpConfigInterface*, align 8
  %parent_iface = alloca %struct._GimpConfigInterface*, align 8
  %value = alloca %struct._GValue, align 8
  %success = alloca i32, align 4
  %owner_class = alloca %struct._GTypeClass*, align 8
  %owner_parent_class = alloca %struct._GTypeClass*, align 8
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %config_iface51 = alloca %struct._GimpConfigInterface*, align 8
  %prop_object = alloca %struct._GimpConfig*, align 8
  %object_type = alloca i64, align 8
  %str = alloca %struct._GString*, align 8
  %__val82 = alloca %struct._GValue*, align 8
  %__t84 = alloca i64, align 8
  %__r87 = alloca i32, align 4
  %tmp98 = alloca i32, align 4
  %has_alpha = alloca i32, align 4
  %__val117 = alloca %struct._GValue*, align 8
  %__t119 = alloca i64, align 8
  %__r121 = alloca i32, align 4
  %tmp133 = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GParamSpec* %param_spec, %struct._GParamSpec** %param_spec.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store %struct._GimpConfigInterface* null, %struct._GimpConfigInterface** %config_iface, align 8
  store %struct._GimpConfigInterface* null, %struct._GimpConfigInterface** %parent_iface, align 8
  %0 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  store i32 0, i32* %success, align 4
  %1 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %1, i32 0, i32 2
  %2 = load i32, i32* %flags, align 4
  %and = and i32 %2, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %flags1 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %3, i32 0, i32 2
  %4 = load i32, i32* %flags1, align 4
  %and2 = and i32 %4, 8192
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %5, i32 0, i32 3
  %6 = load i64, i64* %value_type, align 8
  %call = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %6)
  %7 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %8 = bitcast %struct._GimpConfig* %7 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %8, i64 80)
  %9 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %10 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %10, i32 0, i32 1
  %11 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %9, i8* %11, %struct._GValue* %value)
  %12 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %flags7 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %12, i32 0, i32 2
  %13 = load i32, i32* %flags7, align 4
  %and8 = and i32 %13, 4096
  %tobool9 = icmp ne i32 %and8, 0
  br i1 %tobool9, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.5
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call10 = call i32 @g_param_value_defaults(%struct._GParamSpec* %14, %struct._GValue* %value)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %land.lhs.true
  call void @g_value_unset(%struct._GValue* %value)
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end.5
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %owner_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 4
  %16 = load i64, i64* %owner_type, align 8
  %call14 = call i64 @g_type_fundamental(i64 %16)
  %cmp = icmp eq i64 %call14, 80
  br i1 %cmp, label %if.then.15, label %if.end.26

if.then.15:                                       ; preds = %if.end.13
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %owner_type16 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 4
  %18 = load i64, i64* %owner_type16, align 8
  %call17 = call i8* @g_type_class_peek(i64 %18)
  %19 = bitcast i8* %call17 to %struct._GTypeClass*
  store %struct._GTypeClass* %19, %struct._GTypeClass** %owner_class, align 8
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %owner_class, align 8
  %21 = bitcast %struct._GTypeClass* %20 to i8*
  %call18 = call i64 @gimp_config_interface_get_type() #6
  %call19 = call i8* @g_type_interface_peek(i8* %21, i64 %call18)
  %22 = bitcast i8* %call19 to %struct._GimpConfigInterface*
  store %struct._GimpConfigInterface* %22, %struct._GimpConfigInterface** %config_iface, align 8
  %23 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %tobool20 = icmp ne %struct._GimpConfigInterface* %23, null
  br i1 %tobool20, label %if.then.21, label %if.end.25

if.then.21:                                       ; preds = %if.then.15
  %24 = load %struct._GTypeClass*, %struct._GTypeClass** %owner_class, align 8
  %25 = bitcast %struct._GTypeClass* %24 to i8*
  %call22 = call i8* @g_type_class_peek_parent(i8* %25)
  %26 = bitcast i8* %call22 to %struct._GTypeClass*
  store %struct._GTypeClass* %26, %struct._GTypeClass** %owner_parent_class, align 8
  %27 = load %struct._GTypeClass*, %struct._GTypeClass** %owner_parent_class, align 8
  %28 = bitcast %struct._GTypeClass* %27 to i8*
  %call23 = call i64 @gimp_config_interface_get_type() #6
  %call24 = call i8* @g_type_interface_peek(i8* %28, i64 %call23)
  %29 = bitcast i8* %call24 to %struct._GimpConfigInterface*
  store %struct._GimpConfigInterface* %29, %struct._GimpConfigInterface** %parent_iface, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.21, %if.then.15
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.13
  %30 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %tobool27 = icmp ne %struct._GimpConfigInterface* %30, null
  br i1 %tobool27, label %land.lhs.true.28, label %if.end.37

land.lhs.true.28:                                 ; preds = %if.end.26
  %31 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %32 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %parent_iface, align 8
  %cmp29 = icmp ne %struct._GimpConfigInterface* %31, %32
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.37

land.lhs.true.30:                                 ; preds = %land.lhs.true.28
  %33 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %serialize_property = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %33, i32 0, i32 3
  %34 = load i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)** %serialize_property, align 8
  %tobool31 = icmp ne i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)* %34, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.37

land.lhs.true.32:                                 ; preds = %land.lhs.true.30
  %35 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface, align 8
  %serialize_property33 = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %35, i32 0, i32 3
  %36 = load i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)** %serialize_property33, align 8
  %37 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %param_id = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %38, i32 0, i32 9
  %39 = load i32, i32* %param_id, align 4
  %40 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %41 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call34 = call i32 %36(%struct._GimpConfig* %37, i32 %39, %struct._GValue* %value, %struct._GParamSpec* %40, %struct._GimpConfigWriter* %41)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 1, i32* %success, align 4
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %land.lhs.true.32, %land.lhs.true.30, %land.lhs.true.28, %if.end.26
  %42 = load i32, i32* %success, align 4
  %tobool38 = icmp ne i32 %42, 0
  br i1 %tobool38, label %if.end.145, label %if.then.39

if.then.39:                                       ; preds = %if.end.37
  store %struct._GValue* %value, %struct._GValue** %__val, align 8
  store i64 80, i64* %__t, align 8
  %43 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool40 = icmp ne %struct._GValue* %43, null
  br i1 %tobool40, label %if.else, label %if.then.41

if.then.41:                                       ; preds = %if.then.39
  store i32 0, i32* %__r, align 4
  br label %if.end.47

if.else:                                          ; preds = %if.then.39
  %44 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %44, i32 0, i32 0
  %45 = load i64, i64* %g_type, align 8
  %46 = load i64, i64* %__t, align 8
  %cmp42 = icmp eq i64 %45, %46
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end.46

if.else.44:                                       ; preds = %if.else
  %47 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %48 = load i64, i64* %__t, align 8
  %call45 = call i32 @g_type_check_value_holds(%struct._GValue* %47, i64 %48) #5
  store i32 %call45, i32* %__r, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.41
  %49 = load i32, i32* %__r, align 4
  store i32 %49, i32* %tmp
  %50 = load i32, i32* %tmp
  %tobool48 = icmp ne i32 %50, 0
  br i1 %tobool48, label %if.then.49, label %if.else.78

if.then.49:                                       ; preds = %if.end.47
  store %struct._GimpConfigInterface* null, %struct._GimpConfigInterface** %config_iface51, align 8
  %call53 = call i8* @g_value_get_object(%struct._GValue* %value)
  %51 = bitcast i8* %call53 to %struct._GimpConfig*
  store %struct._GimpConfig* %51, %struct._GimpConfig** %prop_object, align 8
  %52 = load %struct._GimpConfig*, %struct._GimpConfig** %prop_object, align 8
  %tobool54 = icmp ne %struct._GimpConfig* %52, null
  br i1 %tobool54, label %if.then.55, label %if.else.58

if.then.55:                                       ; preds = %if.then.49
  %53 = load %struct._GimpConfig*, %struct._GimpConfig** %prop_object, align 8
  %54 = bitcast %struct._GimpConfig* %53 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %54, i32 0, i32 0
  %55 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %56 = bitcast %struct._GTypeClass* %55 to i8*
  %call56 = call i64 @gimp_config_interface_get_type() #6
  %call57 = call i8* @g_type_interface_peek(i8* %56, i64 %call56)
  %57 = bitcast i8* %call57 to %struct._GimpConfigInterface*
  store %struct._GimpConfigInterface* %57, %struct._GimpConfigInterface** %config_iface51, align 8
  br label %if.end.59

if.else.58:                                       ; preds = %if.then.49
  store i32 1, i32* %success, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.58, %if.then.55
  %58 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface51, align 8
  %tobool60 = icmp ne %struct._GimpConfigInterface* %58, null
  br i1 %tobool60, label %if.then.61, label %if.end.77

if.then.61:                                       ; preds = %if.end.59
  %59 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %60 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name62 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %60, i32 0, i32 1
  %61 = load i8*, i8** %name62, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %59, i8* %61)
  %62 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %flags63 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %62, i32 0, i32 2
  %63 = load i32, i32* %flags63, align 4
  %and64 = and i32 %63, 512
  %tobool65 = icmp ne i32 %and64, 0
  br i1 %tobool65, label %if.end.71, label %if.then.66

if.then.66:                                       ; preds = %if.then.61
  %64 = load %struct._GimpConfig*, %struct._GimpConfig** %prop_object, align 8
  %65 = bitcast %struct._GimpConfig* %64 to %struct._GTypeInstance*
  %g_class68 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %65, i32 0, i32 0
  %66 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class68, align 8
  %g_type69 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %66, i32 0, i32 0
  %67 = load i64, i64* %g_type69, align 8
  store i64 %67, i64* %object_type, align 8
  %68 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %69 = load i64, i64* %object_type, align 8
  %call70 = call i8* @g_type_name(i64 %69)
  call void @gimp_config_writer_string(%struct._GimpConfigWriter* %68, i8* %call70)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.66, %if.then.61
  %70 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface51, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %70, i32 0, i32 1
  %71 = load i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %72 = load %struct._GimpConfig*, %struct._GimpConfig** %prop_object, align 8
  %73 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call72 = call i32 %71(%struct._GimpConfig* %72, %struct._GimpConfigWriter* %73, i8* null)
  store i32 %call72, i32* %success, align 4
  %74 = load i32, i32* %success, align 4
  %tobool73 = icmp ne i32 %74, 0
  br i1 %tobool73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %if.end.71
  %75 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %75)
  br label %if.end.76

if.else.75:                                       ; preds = %if.end.71
  %76 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_revert(%struct._GimpConfigWriter* %76)
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.75, %if.then.74
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %if.end.59
  br label %if.end.113

if.else.78:                                       ; preds = %if.end.47
  %call80 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call80, %struct._GString** %str, align 8
  store %struct._GValue* %value, %struct._GValue** %__val82, align 8
  %call85 = call i64 @gimp_rgb_get_type() #6
  store i64 %call85, i64* %__t84, align 8
  %77 = load %struct._GValue*, %struct._GValue** %__val82, align 8
  %tobool88 = icmp ne %struct._GValue* %77, null
  br i1 %tobool88, label %if.else.90, label %if.then.89

if.then.89:                                       ; preds = %if.else.78
  store i32 0, i32* %__r87, align 4
  br label %if.end.97

if.else.90:                                       ; preds = %if.else.78
  %78 = load %struct._GValue*, %struct._GValue** %__val82, align 8
  %g_type91 = getelementptr inbounds %struct._GValue, %struct._GValue* %78, i32 0, i32 0
  %79 = load i64, i64* %g_type91, align 8
  %80 = load i64, i64* %__t84, align 8
  %cmp92 = icmp eq i64 %79, %80
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %if.else.90
  store i32 1, i32* %__r87, align 4
  br label %if.end.96

if.else.94:                                       ; preds = %if.else.90
  %81 = load %struct._GValue*, %struct._GValue** %__val82, align 8
  %82 = load i64, i64* %__t84, align 8
  %call95 = call i32 @g_type_check_value_holds(%struct._GValue* %81, i64 %82) #5
  store i32 %call95, i32* %__r87, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.94, %if.then.93
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.then.89
  %83 = load i32, i32* %__r87, align 4
  store i32 %83, i32* %tmp98
  %84 = load i32, i32* %tmp98
  %tobool99 = icmp ne i32 %84, 0
  br i1 %tobool99, label %if.then.100, label %if.else.104

if.then.100:                                      ; preds = %if.end.97
  %85 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %call102 = call i32 @gimp_param_spec_rgb_has_alpha(%struct._GParamSpec* %85)
  store i32 %call102, i32* %has_alpha, align 4
  %86 = load %struct._GString*, %struct._GString** %str, align 8
  %87 = load i32, i32* %has_alpha, align 4
  %call103 = call i32 @gimp_config_serialize_rgb(%struct._GValue* %value, %struct._GString* %86, i32 %87)
  store i32 %call103, i32* %success, align 4
  br label %if.end.106

if.else.104:                                      ; preds = %if.end.97
  %88 = load %struct._GString*, %struct._GString** %str, align 8
  %call105 = call i32 @gimp_config_serialize_value(%struct._GValue* %value, %struct._GString* %88, i32 1)
  store i32 %call105, i32* %success, align 4
  br label %if.end.106

if.end.106:                                       ; preds = %if.else.104, %if.then.100
  %89 = load i32, i32* %success, align 4
  %tobool107 = icmp ne i32 %89, 0
  br i1 %tobool107, label %if.then.108, label %if.end.111

if.then.108:                                      ; preds = %if.end.106
  %90 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %91 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name109 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %91, i32 0, i32 1
  %92 = load i8*, i8** %name109, align 8
  call void @gimp_config_writer_open(%struct._GimpConfigWriter* %90, i8* %92)
  %93 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %94 = load %struct._GString*, %struct._GString** %str, align 8
  %str110 = getelementptr inbounds %struct._GString, %struct._GString* %94, i32 0, i32 0
  %95 = load i8*, i8** %str110, align 8
  %96 = load %struct._GString*, %struct._GString** %str, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %96, i32 0, i32 1
  %97 = load i64, i64* %len, align 8
  %conv = trunc i64 %97 to i32
  call void @gimp_config_writer_print(%struct._GimpConfigWriter* %93, i8* %95, i32 %conv)
  %98 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %98)
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.108, %if.end.106
  %99 = load %struct._GString*, %struct._GString** %str, align 8
  %call112 = call i8* @g_string_free(%struct._GString* %99, i32 1)
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.111, %if.end.77
  %100 = load i32, i32* %success, align 4
  %tobool114 = icmp ne i32 %100, 0
  br i1 %tobool114, label %if.end.144, label %if.then.115

if.then.115:                                      ; preds = %if.end.113
  store %struct._GValue* %value, %struct._GValue** %__val117, align 8
  store i64 64, i64* %__t119, align 8
  %101 = load %struct._GValue*, %struct._GValue** %__val117, align 8
  %tobool122 = icmp ne %struct._GValue* %101, null
  br i1 %tobool122, label %if.else.124, label %if.then.123

if.then.123:                                      ; preds = %if.then.115
  store i32 0, i32* %__r121, align 4
  br label %if.end.132

if.else.124:                                      ; preds = %if.then.115
  %102 = load %struct._GValue*, %struct._GValue** %__val117, align 8
  %g_type125 = getelementptr inbounds %struct._GValue, %struct._GValue* %102, i32 0, i32 0
  %103 = load i64, i64* %g_type125, align 8
  %104 = load i64, i64* %__t119, align 8
  %cmp126 = icmp eq i64 %103, %104
  br i1 %cmp126, label %if.then.128, label %if.else.129

if.then.128:                                      ; preds = %if.else.124
  store i32 1, i32* %__r121, align 4
  br label %if.end.131

if.else.129:                                      ; preds = %if.else.124
  %105 = load %struct._GValue*, %struct._GValue** %__val117, align 8
  %106 = load i64, i64* %__t119, align 8
  %call130 = call i32 @g_type_check_value_holds(%struct._GValue* %105, i64 %106) #5
  store i32 %call130, i32* %__r121, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.129, %if.then.128
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.123
  %107 = load i32, i32* %__r121, align 4
  store i32 %107, i32* %tmp133
  %108 = load i32, i32* %tmp133
  %tobool134 = icmp ne i32 %108, 0
  br i1 %tobool134, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %if.end.132
  store i32 1, i32* %success, align 4
  br label %if.end.143

if.else.136:                                      ; preds = %if.end.132
  %109 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %110 = bitcast %struct._GimpConfig* %109 to %struct._GTypeInstance*
  %g_class137 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %110, i32 0, i32 0
  %111 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class137, align 8
  %g_type138 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %111, i32 0, i32 0
  %112 = load i64, i64* %g_type138, align 8
  %call139 = call i8* @g_type_name(i64 %112)
  %113 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %name140 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %113, i32 0, i32 1
  %114 = load i8*, i8** %name140, align 8
  %115 = load %struct._GParamSpec*, %struct._GParamSpec** %param_spec.addr, align 8
  %value_type141 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %115, i32 0, i32 3
  %116 = load i64, i64* %value_type141, align 8
  %call142 = call i8* @g_type_name(i64 %116)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i32 0, i32 0), i8* %call139, i8* %114, i8* %call142)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.136, %if.then.135
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %if.end.113
  br label %if.end.145

if.end.145:                                       ; preds = %if.end.144, %if.end.37
  call void @g_value_unset(%struct._GValue* %value)
  %117 = load i32, i32* %success, align 4
  store i32 %117, i32* %retval
  br label %return

return:                                           ; preds = %if.end.145, %if.then.12, %if.then.4, %if.then
  %118 = load i32, i32* %retval
  ret i32 %118
}

declare void @g_free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_config_serialize_changed_properties(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %klass = alloca %struct._GObjectClass*, align 8
  %property_specs = alloca %struct._GParamSpec**, align 8
  %n_property_specs = alloca i32, align 4
  %i = alloca i32, align 4
  %value = alloca %struct._GValue, align 8
  %prop_spec = alloca %struct._GParamSpec*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  %0 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 24, i32 8, i1 false)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %2 = bitcast %struct._GimpConfig* %1 to %struct._GTypeInstance*
  %call = call i32 @g_type_check_instance_is_fundamentally_a(%struct._GTypeInstance* %2, i64 80) #5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__func__.gimp_config_serialize_changed_properties, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GObjectClass*
  store %struct._GObjectClass* %6, %struct._GObjectClass** %klass, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %klass, align 8
  %call1 = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %7, i32* %n_property_specs)
  store %struct._GParamSpec** %call1, %struct._GParamSpec*** %property_specs, align 8
  %8 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %tobool2 = icmp ne %struct._GParamSpec** %8, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n_property_specs, align 4
  %cmp = icmp ult i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %12, i64 %idxprom
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %prop_spec, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 2
  %15 = load i32, i32* %flags, align 4
  %and = and i32 %15, 256
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %for.body
  br label %for.inc

if.end.7:                                         ; preds = %for.body
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 3
  %17 = load i64, i64* %value_type, align 8
  %call8 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %17)
  %18 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %19 = bitcast %struct._GimpConfig* %18 to %struct._GTypeInstance*
  %call9 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %19, i64 80)
  %20 = bitcast %struct._GTypeInstance* %call9 to %struct._GObject*
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %21, i32 0, i32 1
  %22 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %20, i8* %22, %struct._GValue* %value)
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %call10 = call i32 @g_param_value_defaults(%struct._GParamSpec* %23, %struct._GValue* %value)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.17, label %if.then.12

if.then.12:                                       ; preds = %if.end.7
  %24 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %26 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call13 = call i32 @gimp_config_serialize_property(%struct._GimpConfig* %24, %struct._GParamSpec* %25, %struct._GimpConfigWriter* %26)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.12
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.7
  call void @g_value_unset(%struct._GValue* %value)
  br label %for.inc

for.inc:                                          ; preds = %if.end.17, %if.then.6
  %27 = load i32, i32* %i, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %29 = bitcast %struct._GParamSpec** %28 to i8*
  call void @g_free(i8* %29)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.15, %if.then.3, %if.else
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #2

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

declare i32 @g_param_value_defaults(%struct._GParamSpec*, %struct._GValue*) #2

declare void @g_value_unset(%struct._GValue*) #2

declare i64 @g_type_fundamental(i64) #2

declare i8* @g_type_class_peek(i64) #2

declare i8* @g_type_interface_peek(i8*, i64) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #4

declare i8* @g_type_class_peek_parent(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @g_type_check_value_holds(%struct._GValue*, i64) #1

declare i8* @g_value_get_object(%struct._GValue*) #2

declare void @gimp_config_writer_open(%struct._GimpConfigWriter*, i8*) #2

declare void @gimp_config_writer_string(%struct._GimpConfigWriter*, i8*) #2

declare i8* @g_type_name(i64) #2

declare void @gimp_config_writer_close(%struct._GimpConfigWriter*) #2

declare void @gimp_config_writer_revert(%struct._GimpConfigWriter*) #2

declare %struct._GString* @g_string_new(i8*) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_rgb_get_type() #4

declare i32 @gimp_param_spec_rgb_has_alpha(%struct._GParamSpec*) #2

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_serialize_rgb(%struct._GValue* %value, %struct._GString* %str, i32 %has_alpha) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %str.addr = alloca %struct._GString*, align 8
  %has_alpha.addr = alloca i32, align 4
  %rgb = alloca %struct._GimpRGB*, align 8
  %buf = alloca [4 x [39 x i8]], align 16
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GString* %str, %struct._GString** %str.addr, align 8
  store i32 %has_alpha, i32* %has_alpha.addr, align 4
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call = call i8* @g_value_get_boxed(%struct._GValue* %0)
  %1 = bitcast i8* %call to %struct._GimpRGB*
  store %struct._GimpRGB* %1, %struct._GimpRGB** %rgb, align 8
  %2 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  %tobool = icmp ne %struct._GimpRGB* %2, null
  br i1 %tobool, label %if.then, label %if.end.27

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx, i32 0, i32 0
  %3 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  %r = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %3, i32 0, i32 0
  %4 = load double, double* %r, align 8
  %call1 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %4)
  %arrayidx2 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay3 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx2, i32 0, i32 0
  %5 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  %g = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %5, i32 0, i32 1
  %6 = load double, double* %g, align 8
  %call4 = call i8* @g_ascii_formatd(i8* %arraydecay3, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %6)
  %arrayidx5 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay6 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx5, i32 0, i32 0
  %7 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  %b = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %7, i32 0, i32 2
  %8 = load double, double* %b, align 8
  %call7 = call i8* @g_ascii_formatd(i8* %arraydecay6, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %8)
  %9 = load i32, i32* %has_alpha.addr, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then
  %arrayidx10 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 3
  %arraydecay11 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx10, i32 0, i32 0
  %10 = load %struct._GimpRGB*, %struct._GimpRGB** %rgb, align 8
  %a = getelementptr inbounds %struct._GimpRGB, %struct._GimpRGB* %10, i32 0, i32 3
  %11 = load double, double* %a, align 8
  %call12 = call i8* @g_ascii_formatd(i8* %arraydecay11, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %11)
  %12 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %arrayidx13 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay14 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx13, i32 0, i32 0
  %arrayidx15 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay16 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx15, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay18 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx17, i32 0, i32 0
  %arrayidx19 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 3
  %arraydecay20 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx19, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i32 0, i32 0), i8* %arraydecay14, i8* %arraydecay16, i8* %arraydecay18, i8* %arraydecay20)
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %arrayidx21 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 0
  %arraydecay22 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx21, i32 0, i32 0
  %arrayidx23 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 1
  %arraydecay24 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx23, i32 0, i32 0
  %arrayidx25 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf, i32 0, i64 2
  %arraydecay26 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx25, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i32 0, i32 0), i8* %arraydecay22, i8* %arraydecay24, i8* %arraydecay26)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.9
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.end
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i32 @gimp_config_serialize_value(%struct._GValue* %value, %struct._GString* %str, i32 %escaped) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %str.addr = alloca %struct._GString*, align 8
  %escaped.addr = alloca i32, align 4
  %__val = alloca %struct._GValue*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %bool = alloca i32, align 4
  %__val12 = alloca %struct._GValue*, align 8
  %__t14 = alloca i64, align 8
  %__r16 = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %__val46 = alloca %struct._GValue*, align 8
  %__t48 = alloca i64, align 8
  %__r50 = alloca i32, align 4
  %tmp61 = alloca i32, align 4
  %cstr = alloca i8*, align 8
  %__val76 = alloca %struct._GValue*, align 8
  %__t78 = alloca i64, align 8
  %__r80 = alloca i32, align 4
  %tmp91 = alloca i32, align 4
  %__val94 = alloca %struct._GValue*, align 8
  %__t96 = alloca i64, align 8
  %__r98 = alloca i32, align 4
  %tmp109 = alloca i32, align 4
  %v_double = alloca double, align 8
  %buf = alloca [39 x i8], align 16
  %__val115 = alloca %struct._GValue*, align 8
  %__t117 = alloca i64, align 8
  %__r119 = alloca i32, align 4
  %tmp130 = alloca i32, align 4
  %__val142 = alloca %struct._GValue*, align 8
  %__t144 = alloca i64, align 8
  %__r147 = alloca i32, align 4
  %tmp159 = alloca i32, align 4
  %__val165 = alloca %struct._GValue*, align 8
  %__t167 = alloca i64, align 8
  %__r170 = alloca i32, align 4
  %tmp182 = alloca i32, align 4
  %trafo = alloca %struct._GimpMatrix2*, align 8
  %buf190 = alloca [4 x [39 x i8]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %array = alloca %struct._GValueArray*, align 8
  %i232 = alloca i32, align 4
  %tmp_value = alloca %struct._GValue, align 8
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GString* %str, %struct._GString** %str.addr, align 8
  store i32 %escaped, i32* %escaped.addr, align 4
  %0 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %0, %struct._GValue** %__val, align 8
  store i64 20, i64* %__t, align 8
  %1 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %tobool = icmp ne %struct._GValue* %1, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %__r, align 4
  br label %if.end.3

if.else:                                          ; preds = %entry
  %2 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %g_type = getelementptr inbounds %struct._GValue, %struct._GValue* %2, i32 0, i32 0
  %3 = load i64, i64* %g_type, align 8
  %4 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %3, %4
  br i1 %cmp, label %if.then.1, label %if.else.2

if.then.1:                                        ; preds = %if.else
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.2:                                        ; preds = %if.else
  %5 = load %struct._GValue*, %struct._GValue** %__val, align 8
  %6 = load i64, i64* %__t, align 8
  %call = call i32 @g_type_check_value_holds(%struct._GValue* %5, i64 %6) #5
  store i32 %call, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.2, %if.then.1
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  %7 = load i32, i32* %__r, align 4
  store i32 %7, i32* %tmp
  %8 = load i32, i32* %tmp
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call7 = call i32 @g_value_get_boolean(%struct._GValue* %9)
  store i32 %call7, i32* %bool, align 4
  %10 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %11 = load i32, i32* %bool, align 4
  %tobool8 = icmp ne i32 %11, 0
  %cond = select i1 %tobool8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0)
  %call9 = call %struct._GString* @g_string_append(%struct._GString* %10, i8* %cond)
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %12 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %12, %struct._GValue** %__val12, align 8
  store i64 48, i64* %__t14, align 8
  %13 = load %struct._GValue*, %struct._GValue** %__val12, align 8
  %tobool17 = icmp ne %struct._GValue* %13, null
  br i1 %tobool17, label %if.else.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.10
  store i32 0, i32* %__r16, align 4
  br label %if.end.26

if.else.19:                                       ; preds = %if.end.10
  %14 = load %struct._GValue*, %struct._GValue** %__val12, align 8
  %g_type20 = getelementptr inbounds %struct._GValue, %struct._GValue* %14, i32 0, i32 0
  %15 = load i64, i64* %g_type20, align 8
  %16 = load i64, i64* %__t14, align 8
  %cmp21 = icmp eq i64 %15, %16
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %if.else.19
  store i32 1, i32* %__r16, align 4
  br label %if.end.25

if.else.23:                                       ; preds = %if.else.19
  %17 = load %struct._GValue*, %struct._GValue** %__val12, align 8
  %18 = load i64, i64* %__t14, align 8
  %call24 = call i32 @g_type_check_value_holds(%struct._GValue* %17, i64 %18) #5
  store i32 %call24, i32* %__r16, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.18
  %19 = load i32, i32* %__r16, align 4
  store i32 %19, i32* %tmp27
  %20 = load i32, i32* %tmp27
  %tobool28 = icmp ne i32 %20, 0
  br i1 %tobool28, label %if.then.29, label %if.end.44

if.then.29:                                       ; preds = %if.end.26
  %21 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %g_type31 = getelementptr inbounds %struct._GValue, %struct._GValue* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type31, align 8
  %call32 = call i8* @g_type_class_peek(i64 %22)
  %23 = bitcast i8* %call32 to %struct._GEnumClass*
  store %struct._GEnumClass* %23, %struct._GEnumClass** %enum_class, align 8
  %24 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %25 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call34 = call i32 @g_value_get_enum(%struct._GValue* %25)
  %call35 = call %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass* %24, i32 %call34)
  store %struct._GEnumValue* %call35, %struct._GEnumValue** %enum_value, align 8
  %26 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool36 = icmp ne %struct._GEnumValue* %26, null
  br i1 %tobool36, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %if.then.29
  %27 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_nick = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %27, i32 0, i32 2
  %28 = load i8*, i8** %value_nick, align 8
  %tobool37 = icmp ne i8* %28, null
  br i1 %tobool37, label %if.then.38, label %if.else.41

if.then.38:                                       ; preds = %land.lhs.true
  %29 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %30 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_nick39 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %30, i32 0, i32 2
  %31 = load i8*, i8** %value_nick39, align 8
  %call40 = call %struct._GString* @g_string_append(%struct._GString* %29, i8* %31)
  store i32 1, i32* %retval
  br label %return

if.else.41:                                       ; preds = %land.lhs.true, %if.then.29
  %32 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %33 = bitcast %struct._GEnumClass* %32 to %struct._GTypeClass*
  %g_type42 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %33, i32 0, i32 0
  %34 = load i64, i64* %g_type42, align 8
  %call43 = call i8* @g_type_name(i64 %34)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0), i8* %call43)
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.26
  %35 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %35, %struct._GValue** %__val46, align 8
  store i64 64, i64* %__t48, align 8
  %36 = load %struct._GValue*, %struct._GValue** %__val46, align 8
  %tobool51 = icmp ne %struct._GValue* %36, null
  br i1 %tobool51, label %if.else.53, label %if.then.52

if.then.52:                                       ; preds = %if.end.44
  store i32 0, i32* %__r50, align 4
  br label %if.end.60

if.else.53:                                       ; preds = %if.end.44
  %37 = load %struct._GValue*, %struct._GValue** %__val46, align 8
  %g_type54 = getelementptr inbounds %struct._GValue, %struct._GValue* %37, i32 0, i32 0
  %38 = load i64, i64* %g_type54, align 8
  %39 = load i64, i64* %__t48, align 8
  %cmp55 = icmp eq i64 %38, %39
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.else.53
  store i32 1, i32* %__r50, align 4
  br label %if.end.59

if.else.57:                                       ; preds = %if.else.53
  %40 = load %struct._GValue*, %struct._GValue** %__val46, align 8
  %41 = load i64, i64* %__t48, align 8
  %call58 = call i32 @g_type_check_value_holds(%struct._GValue* %40, i64 %41) #5
  store i32 %call58, i32* %__r50, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.57, %if.then.56
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.52
  %42 = load i32, i32* %__r50, align 4
  store i32 %42, i32* %tmp61
  %43 = load i32, i32* %tmp61
  %tobool62 = icmp ne i32 %43, 0
  br i1 %tobool62, label %if.then.63, label %if.end.74

if.then.63:                                       ; preds = %if.end.60
  %44 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call65 = call i8* @g_value_get_string(%struct._GValue* %44)
  store i8* %call65, i8** %cstr, align 8
  %45 = load i8*, i8** %cstr, align 8
  %tobool66 = icmp ne i8* %45, null
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %if.then.63
  store i32 0, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.63
  %46 = load i32, i32* %escaped.addr, align 4
  %tobool69 = icmp ne i32 %46, 0
  br i1 %tobool69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %if.end.68
  %47 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %48 = load i8*, i8** %cstr, align 8
  call void @gimp_config_string_append_escaped(%struct._GString* %47, i8* %48)
  br label %if.end.73

if.else.71:                                       ; preds = %if.end.68
  %49 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %50 = load i8*, i8** %cstr, align 8
  %call72 = call %struct._GString* @g_string_append(%struct._GString* %49, i8* %50)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.71, %if.then.70
  store i32 1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.60
  %51 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %51, %struct._GValue** %__val76, align 8
  store i64 60, i64* %__t78, align 8
  %52 = load %struct._GValue*, %struct._GValue** %__val76, align 8
  %tobool81 = icmp ne %struct._GValue* %52, null
  br i1 %tobool81, label %if.else.83, label %if.then.82

if.then.82:                                       ; preds = %if.end.74
  store i32 0, i32* %__r80, align 4
  br label %if.end.90

if.else.83:                                       ; preds = %if.end.74
  %53 = load %struct._GValue*, %struct._GValue** %__val76, align 8
  %g_type84 = getelementptr inbounds %struct._GValue, %struct._GValue* %53, i32 0, i32 0
  %54 = load i64, i64* %g_type84, align 8
  %55 = load i64, i64* %__t78, align 8
  %cmp85 = icmp eq i64 %54, %55
  br i1 %cmp85, label %if.then.86, label %if.else.87

if.then.86:                                       ; preds = %if.else.83
  store i32 1, i32* %__r80, align 4
  br label %if.end.89

if.else.87:                                       ; preds = %if.else.83
  %56 = load %struct._GValue*, %struct._GValue** %__val76, align 8
  %57 = load i64, i64* %__t78, align 8
  %call88 = call i32 @g_type_check_value_holds(%struct._GValue* %56, i64 %57) #5
  store i32 %call88, i32* %__r80, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.87, %if.then.86
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.82
  %58 = load i32, i32* %__r80, align 4
  store i32 %58, i32* %tmp91
  %59 = load i32, i32* %tmp91
  %tobool92 = icmp ne i32 %59, 0
  br i1 %tobool92, label %if.then.111, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.90
  %60 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %60, %struct._GValue** %__val94, align 8
  store i64 56, i64* %__t96, align 8
  %61 = load %struct._GValue*, %struct._GValue** %__val94, align 8
  %tobool99 = icmp ne %struct._GValue* %61, null
  br i1 %tobool99, label %if.else.101, label %if.then.100

if.then.100:                                      ; preds = %lor.lhs.false
  store i32 0, i32* %__r98, align 4
  br label %if.end.108

if.else.101:                                      ; preds = %lor.lhs.false
  %62 = load %struct._GValue*, %struct._GValue** %__val94, align 8
  %g_type102 = getelementptr inbounds %struct._GValue, %struct._GValue* %62, i32 0, i32 0
  %63 = load i64, i64* %g_type102, align 8
  %64 = load i64, i64* %__t96, align 8
  %cmp103 = icmp eq i64 %63, %64
  br i1 %cmp103, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %if.else.101
  store i32 1, i32* %__r98, align 4
  br label %if.end.107

if.else.105:                                      ; preds = %if.else.101
  %65 = load %struct._GValue*, %struct._GValue** %__val94, align 8
  %66 = load i64, i64* %__t96, align 8
  %call106 = call i32 @g_type_check_value_holds(%struct._GValue* %65, i64 %66) #5
  store i32 %call106, i32* %__r98, align 4
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.105, %if.then.104
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %if.then.100
  %67 = load i32, i32* %__r98, align 4
  store i32 %67, i32* %tmp109
  %68 = load i32, i32* %tmp109
  %tobool110 = icmp ne i32 %68, 0
  br i1 %tobool110, label %if.then.111, label %if.end.140

if.then.111:                                      ; preds = %if.end.108, %if.end.90
  %69 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %69, %struct._GValue** %__val115, align 8
  store i64 60, i64* %__t117, align 8
  %70 = load %struct._GValue*, %struct._GValue** %__val115, align 8
  %tobool120 = icmp ne %struct._GValue* %70, null
  br i1 %tobool120, label %if.else.122, label %if.then.121

if.then.121:                                      ; preds = %if.then.111
  store i32 0, i32* %__r119, align 4
  br label %if.end.129

if.else.122:                                      ; preds = %if.then.111
  %71 = load %struct._GValue*, %struct._GValue** %__val115, align 8
  %g_type123 = getelementptr inbounds %struct._GValue, %struct._GValue* %71, i32 0, i32 0
  %72 = load i64, i64* %g_type123, align 8
  %73 = load i64, i64* %__t117, align 8
  %cmp124 = icmp eq i64 %72, %73
  br i1 %cmp124, label %if.then.125, label %if.else.126

if.then.125:                                      ; preds = %if.else.122
  store i32 1, i32* %__r119, align 4
  br label %if.end.128

if.else.126:                                      ; preds = %if.else.122
  %74 = load %struct._GValue*, %struct._GValue** %__val115, align 8
  %75 = load i64, i64* %__t117, align 8
  %call127 = call i32 @g_type_check_value_holds(%struct._GValue* %74, i64 %75) #5
  store i32 %call127, i32* %__r119, align 4
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.126, %if.then.125
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.121
  %76 = load i32, i32* %__r119, align 4
  store i32 %76, i32* %tmp130
  %77 = load i32, i32* %tmp130
  %tobool131 = icmp ne i32 %77, 0
  br i1 %tobool131, label %if.then.132, label %if.else.134

if.then.132:                                      ; preds = %if.end.129
  %78 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call133 = call double @g_value_get_double(%struct._GValue* %78)
  store double %call133, double* %v_double, align 8
  br label %if.end.136

if.else.134:                                      ; preds = %if.end.129
  %79 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call135 = call float @g_value_get_float(%struct._GValue* %79)
  %conv = fpext float %call135 to double
  store double %conv, double* %v_double, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.134, %if.then.132
  %arraydecay = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %80 = load double, double* %v_double, align 8
  %call137 = call i8* @g_ascii_formatd(i8* %arraydecay, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %80)
  %81 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %arraydecay138 = getelementptr inbounds [39 x i8], [39 x i8]* %buf, i32 0, i32 0
  %call139 = call %struct._GString* @g_string_append(%struct._GString* %81, i8* %arraydecay138)
  store i32 1, i32* %retval
  br label %return

if.end.140:                                       ; preds = %if.end.108
  %82 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %82, %struct._GValue** %__val142, align 8
  %call145 = call i64 @gimp_rgb_get_type() #6
  store i64 %call145, i64* %__t144, align 8
  %83 = load %struct._GValue*, %struct._GValue** %__val142, align 8
  %tobool148 = icmp ne %struct._GValue* %83, null
  br i1 %tobool148, label %if.else.150, label %if.then.149

if.then.149:                                      ; preds = %if.end.140
  store i32 0, i32* %__r147, align 4
  br label %if.end.158

if.else.150:                                      ; preds = %if.end.140
  %84 = load %struct._GValue*, %struct._GValue** %__val142, align 8
  %g_type151 = getelementptr inbounds %struct._GValue, %struct._GValue* %84, i32 0, i32 0
  %85 = load i64, i64* %g_type151, align 8
  %86 = load i64, i64* %__t144, align 8
  %cmp152 = icmp eq i64 %85, %86
  br i1 %cmp152, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %if.else.150
  store i32 1, i32* %__r147, align 4
  br label %if.end.157

if.else.155:                                      ; preds = %if.else.150
  %87 = load %struct._GValue*, %struct._GValue** %__val142, align 8
  %88 = load i64, i64* %__t144, align 8
  %call156 = call i32 @g_type_check_value_holds(%struct._GValue* %87, i64 %88) #5
  store i32 %call156, i32* %__r147, align 4
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.155, %if.then.154
  br label %if.end.158

if.end.158:                                       ; preds = %if.end.157, %if.then.149
  %89 = load i32, i32* %__r147, align 4
  store i32 %89, i32* %tmp159
  %90 = load i32, i32* %tmp159
  %tobool160 = icmp ne i32 %90, 0
  br i1 %tobool160, label %if.then.161, label %if.end.163

if.then.161:                                      ; preds = %if.end.158
  %91 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %92 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %call162 = call i32 @gimp_config_serialize_rgb(%struct._GValue* %91, %struct._GString* %92, i32 1)
  store i32 %call162, i32* %retval
  br label %return

if.end.163:                                       ; preds = %if.end.158
  %93 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  store %struct._GValue* %93, %struct._GValue** %__val165, align 8
  %call168 = call i64 @gimp_matrix2_get_type() #6
  store i64 %call168, i64* %__t167, align 8
  %94 = load %struct._GValue*, %struct._GValue** %__val165, align 8
  %tobool171 = icmp ne %struct._GValue* %94, null
  br i1 %tobool171, label %if.else.173, label %if.then.172

if.then.172:                                      ; preds = %if.end.163
  store i32 0, i32* %__r170, align 4
  br label %if.end.181

if.else.173:                                      ; preds = %if.end.163
  %95 = load %struct._GValue*, %struct._GValue** %__val165, align 8
  %g_type174 = getelementptr inbounds %struct._GValue, %struct._GValue* %95, i32 0, i32 0
  %96 = load i64, i64* %g_type174, align 8
  %97 = load i64, i64* %__t167, align 8
  %cmp175 = icmp eq i64 %96, %97
  br i1 %cmp175, label %if.then.177, label %if.else.178

if.then.177:                                      ; preds = %if.else.173
  store i32 1, i32* %__r170, align 4
  br label %if.end.180

if.else.178:                                      ; preds = %if.else.173
  %98 = load %struct._GValue*, %struct._GValue** %__val165, align 8
  %99 = load i64, i64* %__t167, align 8
  %call179 = call i32 @g_type_check_value_holds(%struct._GValue* %98, i64 %99) #5
  store i32 %call179, i32* %__r170, align 4
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.178, %if.then.177
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.172
  %100 = load i32, i32* %__r170, align 4
  store i32 %100, i32* %tmp182
  %101 = load i32, i32* %tmp182
  %tobool183 = icmp ne i32 %101, 0
  br i1 %tobool183, label %if.then.184, label %if.end.221

if.then.184:                                      ; preds = %if.end.181
  %102 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call186 = call i8* @g_value_get_boxed(%struct._GValue* %102)
  %103 = bitcast i8* %call186 to %struct._GimpMatrix2*
  store %struct._GimpMatrix2* %103, %struct._GimpMatrix2** %trafo, align 8
  %104 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %trafo, align 8
  %tobool187 = icmp ne %struct._GimpMatrix2* %104, null
  br i1 %tobool187, label %if.then.188, label %if.else.218

if.then.188:                                      ; preds = %if.then.184
  store i32 0, i32* %i, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.207, %if.then.188
  %105 = load i32, i32* %i, align 4
  %cmp194 = icmp slt i32 %105, 2
  br i1 %cmp194, label %for.body, label %for.end.209

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.196

for.cond.196:                                     ; preds = %for.inc, %for.body
  %106 = load i32, i32* %j, align 4
  %cmp197 = icmp slt i32 %106, 2
  br i1 %cmp197, label %for.body.199, label %for.end

for.body.199:                                     ; preds = %for.cond.196
  %107 = load i32, i32* %k, align 4
  %idxprom = sext i32 %107 to i64
  %arrayidx = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf190, i32 0, i64 %idxprom
  %arraydecay200 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx, i32 0, i32 0
  %108 = load i32, i32* %j, align 4
  %idxprom201 = sext i32 %108 to i64
  %109 = load i32, i32* %i, align 4
  %idxprom202 = sext i32 %109 to i64
  %110 = load %struct._GimpMatrix2*, %struct._GimpMatrix2** %trafo, align 8
  %coeff = getelementptr inbounds %struct._GimpMatrix2, %struct._GimpMatrix2* %110, i32 0, i32 0
  %arrayidx203 = getelementptr inbounds [2 x [2 x double]], [2 x [2 x double]]* %coeff, i32 0, i64 %idxprom202
  %arrayidx204 = getelementptr inbounds [2 x double], [2 x double]* %arrayidx203, i32 0, i64 %idxprom201
  %111 = load double, double* %arrayidx204, align 8
  %call205 = call i8* @g_ascii_formatd(i8* %arraydecay200, i32 39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), double %111)
  br label %for.inc

for.inc:                                          ; preds = %for.body.199
  %112 = load i32, i32* %j, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %j, align 4
  %113 = load i32, i32* %k, align 4
  %inc206 = add nsw i32 %113, 1
  store i32 %inc206, i32* %k, align 4
  br label %for.cond.196

for.end:                                          ; preds = %for.cond.196
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.end
  %114 = load i32, i32* %i, align 4
  %inc208 = add nsw i32 %114, 1
  store i32 %inc208, i32* %i, align 4
  br label %for.cond

for.end.209:                                      ; preds = %for.cond
  %115 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %arrayidx210 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf190, i32 0, i64 0
  %arraydecay211 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx210, i32 0, i32 0
  %arrayidx212 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf190, i32 0, i64 1
  %arraydecay213 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx212, i32 0, i32 0
  %arrayidx214 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf190, i32 0, i64 2
  %arraydecay215 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [4 x [39 x i8]], [4 x [39 x i8]]* %buf190, i32 0, i64 3
  %arraydecay217 = getelementptr inbounds [39 x i8], [39 x i8]* %arrayidx216, i32 0, i32 0
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %115, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0), i8* %arraydecay211, i8* %arraydecay213, i8* %arraydecay215, i8* %arraydecay217)
  br label %if.end.220

if.else.218:                                      ; preds = %if.then.184
  %116 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %call219 = call %struct._GString* @g_string_append(%struct._GString* %116, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.220

if.end.220:                                       ; preds = %if.else.218, %for.end.209
  store i32 1, i32* %retval
  br label %return

if.end.221:                                       ; preds = %if.end.181
  %117 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %g_type222 = getelementptr inbounds %struct._GValue, %struct._GValue* %117, i32 0, i32 0
  %118 = load i64, i64* %g_type222, align 8
  %call223 = call i64 @g_value_array_get_type() #6
  %cmp224 = icmp eq i64 %118, %call223
  br i1 %cmp224, label %if.then.226, label %if.end.250

if.then.226:                                      ; preds = %if.end.221
  %119 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call228 = call i8* @g_value_get_boxed(%struct._GValue* %119)
  %120 = bitcast i8* %call228 to %struct._GValueArray*
  store %struct._GValueArray* %120, %struct._GValueArray** %array, align 8
  %121 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %tobool229 = icmp ne %struct._GValueArray* %121, null
  br i1 %tobool229, label %if.then.230, label %if.else.247

if.then.230:                                      ; preds = %if.then.226
  %122 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %123 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %n_values = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %123, i32 0, i32 0
  %124 = load i32, i32* %n_values, align 4
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i32 %124)
  store i32 0, i32* %i232, align 4
  br label %for.cond.233

for.cond.233:                                     ; preds = %for.inc.244, %if.then.230
  %125 = load i32, i32* %i232, align 4
  %126 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %n_values234 = getelementptr inbounds %struct._GValueArray, %struct._GValueArray* %126, i32 0, i32 0
  %127 = load i32, i32* %n_values234, align 4
  %cmp235 = icmp ult i32 %125, %127
  br i1 %cmp235, label %for.body.237, label %for.end.246

for.body.237:                                     ; preds = %for.cond.233
  %128 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %call238 = call %struct._GString* @g_string_append(%struct._GString* %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %129 = load %struct._GValueArray*, %struct._GValueArray** %array, align 8
  %130 = load i32, i32* %i232, align 4
  %call239 = call %struct._GValue* @g_value_array_get_nth(%struct._GValueArray* %129, i32 %130)
  %131 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %call240 = call i32 @gimp_config_serialize_value(%struct._GValue* %call239, %struct._GString* %131, i32 1)
  %tobool241 = icmp ne i32 %call240, 0
  br i1 %tobool241, label %if.end.243, label %if.then.242

if.then.242:                                      ; preds = %for.body.237
  store i32 0, i32* %retval
  br label %return

if.end.243:                                       ; preds = %for.body.237
  br label %for.inc.244

for.inc.244:                                      ; preds = %if.end.243
  %132 = load i32, i32* %i232, align 4
  %inc245 = add nsw i32 %132, 1
  store i32 %inc245, i32* %i232, align 4
  br label %for.cond.233

for.end.246:                                      ; preds = %for.cond.233
  br label %if.end.249

if.else.247:                                      ; preds = %if.then.226
  %133 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %call248 = call %struct._GString* @g_string_append(%struct._GString* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.249

if.end.249:                                       ; preds = %if.else.247, %for.end.246
  store i32 1, i32* %retval
  br label %return

if.end.250:                                       ; preds = %if.end.221
  %134 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %g_type251 = getelementptr inbounds %struct._GValue, %struct._GValue* %134, i32 0, i32 0
  %135 = load i64, i64* %g_type251, align 8
  %call252 = call i32 @g_value_type_transformable(i64 %135, i64 64)
  %tobool253 = icmp ne i32 %call252, 0
  br i1 %tobool253, label %if.then.254, label %if.end.260

if.then.254:                                      ; preds = %if.end.250
  %136 = bitcast %struct._GValue* %tmp_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %136, i8 0, i64 24, i32 8, i1 false)
  %call256 = call %struct._GValue* @g_value_init(%struct._GValue* %tmp_value, i64 64)
  %137 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call257 = call i32 @g_value_transform(%struct._GValue* %137, %struct._GValue* %tmp_value)
  %138 = load %struct._GString*, %struct._GString** %str.addr, align 8
  %call258 = call i8* @g_value_get_string(%struct._GValue* %tmp_value)
  %call259 = call %struct._GString* @g_string_append(%struct._GString* %138, i8* %call258)
  call void @g_value_unset(%struct._GValue* %tmp_value)
  store i32 1, i32* %retval
  br label %return

if.end.260:                                       ; preds = %if.end.250
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.260, %if.then.254, %if.end.249, %if.then.242, %if.end.220, %if.then.161, %if.end.136, %if.end.73, %if.then.67, %if.else.41, %if.then.38, %if.then.5
  %139 = load i32, i32* %retval
  ret i32 %139
}

declare void @gimp_config_writer_print(%struct._GimpConfigWriter*, i8*, i32) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_config_serialize_property_by_name(%struct._GimpConfig* %config, i8* %prop_name, %struct._GimpConfigWriter* %writer) #0 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %prop_name.addr = alloca i8*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %pspec = alloca %struct._GParamSpec*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i8* %prop_name, i8** %prop_name.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GObjectClass*
  %4 = load i8*, i8** %prop_name.addr, align 8
  %call = call %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass* %3, i8* %4)
  store %struct._GParamSpec* %call, %struct._GParamSpec** %pspec, align 8
  %5 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %tobool = icmp ne %struct._GParamSpec* %5, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %7 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call1 = call i32 @gimp_config_serialize_property(%struct._GimpConfig* %6, %struct._GParamSpec* %7, %struct._GimpConfigWriter* %8)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct._GParamSpec* @g_object_class_find_property(%struct._GObjectClass*, i8*) #2

declare i32 @g_value_get_boolean(%struct._GValue*) #2

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #2

declare %struct._GEnumValue* @g_enum_get_value(%struct._GEnumClass*, i32) #2

declare i32 @g_value_get_enum(%struct._GValue*) #2

declare i8* @g_value_get_string(%struct._GValue*) #2

declare void @gimp_config_string_append_escaped(%struct._GString*, i8*) #2

declare double @g_value_get_double(%struct._GValue*) #2

declare float @g_value_get_float(%struct._GValue*) #2

declare i8* @g_ascii_formatd(i8*, i32, i8*, double) #2

; Function Attrs: nounwind readnone
declare i64 @gimp_matrix2_get_type() #4

declare i8* @g_value_get_boxed(%struct._GValue*) #2

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i64 @g_value_array_get_type() #4

declare %struct._GValue* @g_value_array_get_nth(%struct._GValueArray*, i32) #2

declare i32 @g_value_type_transformable(i64, i64) #2

declare i32 @g_value_transform(%struct._GValue*, %struct._GValue*) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
