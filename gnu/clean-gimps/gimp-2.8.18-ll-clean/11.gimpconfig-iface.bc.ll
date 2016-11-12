; ModuleID = './libgimpconfig/gimpconfig-iface.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GData = type opaque
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParameter = type { i8*, %struct._GValue }

@gimp_config_interface_get_type.config_iface_type = internal global i64 0, align 8
@gimp_config_interface_get_type.config_iface_info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_config_iface_base_init to void (i8*)*), void (i8*)* null, void (i8*, i8*)* null, void (i8*, i8*)* null, i8* null, i16 0, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@.str = private unnamed_addr constant [20 x i8] c"GimpConfigInterface\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"LibGimpConfig\00", align 1
@__func__.gimp_config_serialize_to_file = private unnamed_addr constant [30 x i8] c"gimp_config_serialize_to_file\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GIMP_IS_CONFIG (config)\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@__func__.gimp_config_serialize_to_fd = private unnamed_addr constant [28 x i8] c"gimp_config_serialize_to_fd\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"fd > 0\00", align 1
@__func__.gimp_config_serialize_to_string = private unnamed_addr constant [32 x i8] c"gimp_config_serialize_to_string\00", align 1
@__func__.gimp_config_deserialize_file = private unnamed_addr constant [29 x i8] c"gimp_config_deserialize_file\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"gimpconfig-iface.c\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"error == NULL || *error != NULL\00", align 1
@__func__.gimp_config_deserialize_string = private unnamed_addr constant [31 x i8] c"gimp_config_deserialize_string\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"text != NULL || text_len == 0\00", align 1
@__func__.gimp_config_deserialize_return = private unnamed_addr constant [31 x i8] c"gimp_config_deserialize_return\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"scanner != NULL\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"fatal parse error\00", align 1
@__func__.gimp_config_serialize = private unnamed_addr constant [22 x i8] c"gimp_config_serialize\00", align 1
@__func__.gimp_config_deserialize = private unnamed_addr constant [24 x i8] c"gimp_config_deserialize\00", align 1
@__func__.gimp_config_duplicate = private unnamed_addr constant [22 x i8] c"gimp_config_duplicate\00", align 1
@__func__.gimp_config_is_equal_to = private unnamed_addr constant [24 x i8] c"gimp_config_is_equal_to\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"GIMP_IS_CONFIG (a)\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"GIMP_IS_CONFIG (b)\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c"G_TYPE_FROM_INSTANCE (a) == G_TYPE_FROM_INSTANCE (b)\00", align 1
@__func__.gimp_config_reset = private unnamed_addr constant [18 x i8] c"gimp_config_reset\00", align 1
@__func__.gimp_config_copy = private unnamed_addr constant [17 x i8] c"gimp_config_copy\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"GIMP_IS_CONFIG (src)\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"GIMP_IS_CONFIG (dest)\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"G_TYPE_FROM_INSTANCE (src) == G_TYPE_FROM_INSTANCE (dest)\00", align 1
@g_param_spec_types = external global i64*, align 8

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_config_interface_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_config_interface_get_type.config_iface_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_config_interface_get_type.config_iface_info, i32 0)
  store i64 %call, i64* @gimp_config_interface_get_type.config_iface_type, align 8
  %1 = load i64, i64* @gimp_config_interface_get_type.config_iface_type, align 8
  call void @g_type_interface_add_prerequisite(i64 %1, i64 80)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* @gimp_config_interface_get_type.config_iface_type, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal void @gimp_config_iface_base_init(%struct._GimpConfigInterface* %config_iface) #1 {
entry:
  %config_iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %config_iface, %struct._GimpConfigInterface** %config_iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface.addr, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 1
  %1 = load i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %tobool = icmp ne i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface.addr, align 8
  %serialize1 = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %2, i32 0, i32 1
  store i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)* @gimp_config_iface_serialize, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize1, align 8
  %3 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface.addr, align 8
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %3, i32 0, i32 2
  store i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)* @gimp_config_iface_deserialize, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %4 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface.addr, align 8
  %duplicate = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %4, i32 0, i32 5
  store %struct._GimpConfig* (%struct._GimpConfig*)* @gimp_config_iface_duplicate, %struct._GimpConfig* (%struct._GimpConfig*)** %duplicate, align 8
  %5 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface.addr, align 8
  %equal = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %5, i32 0, i32 6
  store i32 (%struct._GimpConfig*, %struct._GimpConfig*)* @gimp_config_iface_equal, i32 (%struct._GimpConfig*, %struct._GimpConfig*)** %equal, align 8
  %6 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface.addr, align 8
  %reset = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %6, i32 0, i32 7
  store void (%struct._GimpConfig*)* @gimp_config_iface_reset, void (%struct._GimpConfig*)** %reset, align 8
  %7 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface.addr, align 8
  %copy = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %7, i32 0, i32 8
  store i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* @gimp_config_iface_copy, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)** %copy, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface.addr, align 8
  %serialize_property = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %8, i32 0, i32 3
  store i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)* null, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)** %serialize_property, align 8
  %9 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %config_iface.addr, align 8
  %deserialize_property = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %9, i32 0, i32 4
  store i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)* null, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)** %deserialize_property, align 8
  ret void
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #2

declare void @g_type_interface_add_prerequisite(i64, i64) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %config, i8* %filename, i8* %header, i8* %footer, i8* %data, %struct._GError** %error) #1 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %filename.addr = alloca i8*, align 8
  %header.addr = alloca i8*, align 8
  %footer.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %writer = alloca %struct._GimpConfigWriter*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %header, i8** %header.addr, align 8
  store i8* %footer, i8** %footer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_config_serialize_to_file, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_config_serialize_to_file, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %cmp19 = icmp eq %struct._GError* %16, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_config_serialize_to_file, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load i8*, i8** %filename.addr, align 8
  %18 = load i8*, i8** %header.addr, align 8
  %19 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call24 = call %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8* %17, i32 1, i8* %18, %struct._GError** %19)
  store %struct._GimpConfigWriter* %call24, %struct._GimpConfigWriter** %writer, align 8
  %20 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %tobool25 = icmp ne %struct._GimpConfigWriter* %20, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %do.end.23
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %do.end.23
  %21 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %22 = bitcast %struct._GimpConfig* %21 to %struct._GTypeInstance*
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %22, i32 0, i32 0
  %23 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %24 = bitcast %struct._GTypeClass* %23 to i8*
  %call29 = call i64 @gimp_config_interface_get_type() #7
  %call30 = call i8* @g_type_interface_peek(i8* %24, i64 %call29)
  %25 = bitcast i8* %call30 to %struct._GimpConfigInterface*
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %25, i32 0, i32 1
  %26 = load i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %27 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %28 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %29 = load i8*, i8** %data.addr, align 8
  %call31 = call i32 %26(%struct._GimpConfig* %27, %struct._GimpConfigWriter* %28, i8* %29)
  %30 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %31 = load i8*, i8** %footer.addr, align 8
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call32 = call i32 @gimp_config_writer_finish(%struct._GimpConfigWriter* %30, i8* %31, %struct._GError** %32)
  store i32 %call32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.26, %if.else.21, %if.else.14, %if.else.9
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #2

declare %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8*, i32, i8*, %struct._GError**) #2

declare i8* @g_type_interface_peek(i8*, i64) #2

declare i32 @gimp_config_writer_finish(%struct._GimpConfigWriter*, i8*, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_config_serialize_to_fd(%struct._GimpConfig* %config, i32 %fd, i8* %data) #1 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %fd.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %writer = alloca %struct._GimpConfigWriter*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_config_serialize_to_fd, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32, i32* %fd.addr, align 4
  %cmp12 = icmp sgt i32 %13, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_config_serialize_to_fd, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i32, i32* %fd.addr, align 4
  %call17 = call %struct._GimpConfigWriter* @gimp_config_writer_new_fd(i32 %14)
  store %struct._GimpConfigWriter* %call17, %struct._GimpConfigWriter** %writer, align 8
  %15 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %tobool18 = icmp ne %struct._GimpConfigWriter* %15, null
  br i1 %tobool18, label %if.end.20, label %if.then.19

if.then.19:                                       ; preds = %do.end.16
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end.16
  %16 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %17 = bitcast %struct._GimpConfig* %16 to %struct._GTypeInstance*
  %g_class21 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class21, align 8
  %19 = bitcast %struct._GTypeClass* %18 to i8*
  %call22 = call i64 @gimp_config_interface_get_type() #7
  %call23 = call i8* @g_type_interface_peek(i8* %19, i64 %call22)
  %20 = bitcast i8* %call23 to %struct._GimpConfigInterface*
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %20, i32 0, i32 1
  %21 = load i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %22 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %23 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %24 = load i8*, i8** %data.addr, align 8
  %call24 = call i32 %21(%struct._GimpConfig* %22, %struct._GimpConfigWriter* %23, i8* %24)
  %25 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %call25 = call i32 @gimp_config_writer_finish(%struct._GimpConfigWriter* %25, i8* null, %struct._GError** null)
  store i32 %call25, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.19, %if.else.14, %if.else.9
  %26 = load i32, i32* %retval
  ret i32 %26
}

declare %struct._GimpConfigWriter* @gimp_config_writer_new_fd(i32) #2

; Function Attrs: nounwind uwtable
define i8* @gimp_config_serialize_to_string(%struct._GimpConfig* %config, i8* %data) #1 {
entry:
  %retval = alloca i8*, align 8
  %config.addr = alloca %struct._GimpConfig*, align 8
  %data.addr = alloca i8*, align 8
  %writer = alloca %struct._GimpConfigWriter*, align 8
  %str = alloca %struct._GString*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_config_serialize_to_string, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call11, %struct._GString** %str, align 8
  %13 = load %struct._GString*, %struct._GString** %str, align 8
  %call12 = call %struct._GimpConfigWriter* @gimp_config_writer_new_string(%struct._GString* %13)
  store %struct._GimpConfigWriter* %call12, %struct._GimpConfigWriter** %writer, align 8
  %14 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %15 = bitcast %struct._GimpConfig* %14 to %struct._GTypeInstance*
  %g_class13 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %15, i32 0, i32 0
  %16 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class13, align 8
  %17 = bitcast %struct._GTypeClass* %16 to i8*
  %call14 = call i64 @gimp_config_interface_get_type() #7
  %call15 = call i8* @g_type_interface_peek(i8* %17, i64 %call14)
  %18 = bitcast i8* %call15 to %struct._GimpConfigInterface*
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %18, i32 0, i32 1
  %19 = load i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %20 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %21 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %22 = load i8*, i8** %data.addr, align 8
  %call16 = call i32 %19(%struct._GimpConfig* %20, %struct._GimpConfigWriter* %21, i8* %22)
  %23 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %call17 = call i32 @gimp_config_writer_finish(%struct._GimpConfigWriter* %23, i8* null, %struct._GError** null)
  %24 = load %struct._GString*, %struct._GString** %str, align 8
  %call18 = call i8* @g_string_free(%struct._GString* %24, i32 0)
  store i8* %call18, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %25 = load i8*, i8** %retval
  ret i8* %25
}

declare %struct._GString* @g_string_new(i8*) #2

declare %struct._GimpConfigWriter* @gimp_config_writer_new_string(%struct._GString*) #2

declare i8* @g_string_free(%struct._GString*, i32) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_config_deserialize_file(%struct._GimpConfig* %config, i8* %filename, i8* %data, %struct._GError** %error) #1 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %filename.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %scanner = alloca %struct._GScanner*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_config_deserialize_file, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %filename.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_config_deserialize_file, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  br label %do.body.17

do.body.17:                                       ; preds = %do.end.16
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp18 = icmp eq %struct._GError** %14, null
  br i1 %cmp18, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.17
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %16 = load %struct._GError*, %struct._GError** %15, align 8
  %cmp19 = icmp eq %struct._GError* %16, null
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %lor.lhs.false, %do.body.17
  br label %if.end.22

if.else.21:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_config_deserialize_file, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.22:                                        ; preds = %if.then.20
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %17 = load i8*, i8** %filename.addr, align 8
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call24 = call %struct._GScanner* @gimp_scanner_new_file(i8* %17, %struct._GError** %18)
  store %struct._GScanner* %call24, %struct._GScanner** %scanner, align 8
  %19 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %tobool25 = icmp ne %struct._GScanner* %19, null
  br i1 %tobool25, label %if.end.27, label %if.then.26

if.then.26:                                       ; preds = %do.end.23
  store i32 0, i32* %retval
  br label %return

if.end.27:                                        ; preds = %do.end.23
  %20 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %21 = bitcast %struct._GimpConfig* %20 to %struct._GTypeInstance*
  %call28 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call28 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %22)
  %23 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %24 = bitcast %struct._GimpConfig* %23 to %struct._GTypeInstance*
  %g_class29 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class29, align 8
  %26 = bitcast %struct._GTypeClass* %25 to i8*
  %call30 = call i64 @gimp_config_interface_get_type() #7
  %call31 = call i8* @g_type_interface_peek(i8* %26, i64 %call30)
  %27 = bitcast i8* %call31 to %struct._GimpConfigInterface*
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %27, i32 0, i32 2
  %28 = load i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %29 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %30 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %31 = load i8*, i8** %data.addr, align 8
  %call32 = call i32 %28(%struct._GimpConfig* %29, %struct._GScanner* %30, i32 0, i8* %31)
  store i32 %call32, i32* %success, align 4
  %32 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %33 = bitcast %struct._GimpConfig* %32 to %struct._GTypeInstance*
  %call33 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %33, i64 80)
  %34 = bitcast %struct._GTypeInstance* %call33 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %34)
  %35 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @gimp_scanner_destroy(%struct._GScanner* %35)
  %36 = load i32, i32* %success, align 4
  %tobool34 = icmp ne i32 %36, 0
  br i1 %tobool34, label %if.end.44, label %if.then.35

if.then.35:                                       ; preds = %if.end.27
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %37 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp37 = icmp eq %struct._GError** %37, null
  br i1 %cmp37, label %if.then.40, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %do.body.36
  %38 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %39 = load %struct._GError*, %struct._GError** %38, align 8
  %cmp39 = icmp ne %struct._GError* %39, null
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %lor.lhs.false.38, %do.body.36
  br label %if.end.42

if.else.41:                                       ; preds = %lor.lhs.false.38
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 405, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.gimp_config_deserialize_file, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #9
  unreachable

if.end.42:                                        ; preds = %if.then.40
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %if.end.27
  %40 = load i32, i32* %success, align 4
  store i32 %40, i32* %retval
  br label %return

return:                                           ; preds = %if.end.44, %if.then.26, %if.else.21, %if.else.14, %if.else.9
  %41 = load i32, i32* %retval
  ret i32 %41
}

declare %struct._GScanner* @gimp_scanner_new_file(i8*, %struct._GError**) #2

declare void @g_object_freeze_notify(%struct._GObject*) #2

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #2

declare void @g_object_thaw_notify(%struct._GObject*) #2

declare void @gimp_scanner_destroy(%struct._GScanner*) #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(i8*, i8*, i32, i8*, i8*) #4

; Function Attrs: nounwind uwtable
define i32 @gimp_config_deserialize_string(%struct._GimpConfig* %config, i8* %text, i32 %text_len, i8* %data, %struct._GError** %error) #1 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %text.addr = alloca i8*, align 8
  %text_len.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %scanner = alloca %struct._GScanner*, align 8
  %success = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store i8* %text, i8** %text.addr, align 8
  store i32 %text_len, i32* %text_len.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_config_deserialize_string, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %text.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.11
  %14 = load i32, i32* %text_len.addr, align 4
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %lor.lhs.false, %do.body.11
  br label %if.end.16

if.else.15:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_config_deserialize_string, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %15 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp19 = icmp eq %struct._GError** %15, null
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %do.body.18
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %17 = load %struct._GError*, %struct._GError** %16, align 8
  %cmp21 = icmp eq %struct._GError* %17, null
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %lor.lhs.false.20, %do.body.18
  br label %if.end.24

if.else.23:                                       ; preds = %lor.lhs.false.20
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_config_deserialize_string, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.22
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %18 = load i8*, i8** %text.addr, align 8
  %19 = load i32, i32* %text_len.addr, align 4
  %20 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call26 = call %struct._GScanner* @gimp_scanner_new_string(i8* %18, i32 %19, %struct._GError** %20)
  store %struct._GScanner* %call26, %struct._GScanner** %scanner, align 8
  %21 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %22 = bitcast %struct._GimpConfig* %21 to %struct._GTypeInstance*
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %22, i64 80)
  %23 = bitcast %struct._GTypeInstance* %call27 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %23)
  %24 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %25 = bitcast %struct._GimpConfig* %24 to %struct._GTypeInstance*
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %27 = bitcast %struct._GTypeClass* %26 to i8*
  %call29 = call i64 @gimp_config_interface_get_type() #7
  %call30 = call i8* @g_type_interface_peek(i8* %27, i64 %call29)
  %28 = bitcast i8* %call30 to %struct._GimpConfigInterface*
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %28, i32 0, i32 2
  %29 = load i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %30 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %31 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  %32 = load i8*, i8** %data.addr, align 8
  %call31 = call i32 %29(%struct._GimpConfig* %30, %struct._GScanner* %31, i32 0, i8* %32)
  store i32 %call31, i32* %success, align 4
  %33 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %34 = bitcast %struct._GimpConfig* %33 to %struct._GTypeInstance*
  %call32 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %34, i64 80)
  %35 = bitcast %struct._GTypeInstance* %call32 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %35)
  %36 = load %struct._GScanner*, %struct._GScanner** %scanner, align 8
  call void @gimp_scanner_destroy(%struct._GScanner* %36)
  %37 = load i32, i32* %success, align 4
  %tobool33 = icmp ne i32 %37, 0
  br i1 %tobool33, label %if.end.43, label %if.then.34

if.then.34:                                       ; preds = %do.end.25
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %38 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp36 = icmp eq %struct._GError** %38, null
  br i1 %cmp36, label %if.then.39, label %lor.lhs.false.37

lor.lhs.false.37:                                 ; preds = %do.body.35
  %39 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %40 = load %struct._GError*, %struct._GError** %39, align 8
  %cmp38 = icmp ne %struct._GError* %40, null
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %lor.lhs.false.37, %do.body.35
  br label %if.end.41

if.else.40:                                       ; preds = %lor.lhs.false.37
  call void @g_assertion_message_expr(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i32 0, i32 0), i32 452, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_config_deserialize_string, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i32 0, i32 0)) #9
  unreachable

if.end.41:                                        ; preds = %if.then.39
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.end.25
  %41 = load i32, i32* %success, align 4
  store i32 %41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.else.23, %if.else.15, %if.else.9
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare %struct._GScanner* @gimp_scanner_new_string(i8*, i32, %struct._GError**) #2

; Function Attrs: nounwind uwtable
define i32 @gimp_config_deserialize_return(%struct._GScanner* %scanner, i32 %expected_token, i32 %nest_level) #1 {
entry:
  %retval = alloca i32, align 4
  %scanner.addr = alloca %struct._GScanner*, align 8
  %expected_token.addr = alloca i32, align 4
  %nest_level.addr = alloca i32, align 4
  %next_token = alloca i32, align 4
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %expected_token, i32* %expected_token.addr, align 4
  store i32 %nest_level, i32* %nest_level.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %cmp = icmp ne %struct._GScanner* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_config_deserialize_return, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call = call i32 @g_scanner_peek_next_token(%struct._GScanner* %1)
  store i32 %call, i32* %next_token, align 4
  %2 = load i32, i32* %expected_token.addr, align 4
  %cmp1 = icmp ne i32 %2, 40
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %do.end
  %3 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call3 = call i32 @g_scanner_get_next_token(%struct._GScanner* %3)
  %4 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %5 = load i32, i32* %expected_token.addr, align 4
  %call4 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #6
  call void @g_scanner_unexp_token(%struct._GScanner* %4, i32 %5, i8* null, i8* null, i8* null, i8* %call4, i32 1)
  store i32 0, i32* %retval
  br label %return

if.else.5:                                        ; preds = %do.end
  %6 = load i32, i32* %nest_level.addr, align 4
  %cmp6 = icmp sgt i32 %6, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else.9

land.lhs.true:                                    ; preds = %if.else.5
  %7 = load i32, i32* %next_token, align 4
  %cmp7 = icmp eq i32 %7, 41
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.else.9:                                        ; preds = %land.lhs.true, %if.else.5
  %8 = load i32, i32* %next_token, align 4
  %cmp10 = icmp ne i32 %8, 0
  br i1 %cmp10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.else.9
  %9 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %call12 = call i32 @g_scanner_get_next_token(%struct._GScanner* %9)
  %10 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %11 = load i32, i32* %expected_token.addr, align 4
  %call13 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0)) #6
  call void @g_scanner_unexp_token(%struct._GScanner* %10, i32 %11, i8* null, i8* null, i8* null, i8* %call13, i32 1)
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.else.9
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.11, %if.then.8, %if.then.2, %if.else
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare i32 @g_scanner_peek_next_token(%struct._GScanner*) #2

declare i32 @g_scanner_get_next_token(%struct._GScanner*) #2

declare void @g_scanner_unexp_token(%struct._GScanner*, i32, i8*, i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define i32 @gimp_config_serialize(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer, i8* %data) #1 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_config_serialize, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %14 = bitcast %struct._GimpConfig* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_config_interface_get_type() #7
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpConfigInterface*
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %17, i32 0, i32 1
  %18 = load i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %19 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %20 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %21 = load i8*, i8** %data.addr, align 8
  %call14 = call i32 %18(%struct._GimpConfig* %19, %struct._GimpConfigWriter* %20, i8* %21)
  store i32 %call14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %22 = load i32, i32* %retval
  ret i32 %22
}

; Function Attrs: nounwind uwtable
define i32 @gimp_config_deserialize(%struct._GimpConfig* %config, %struct._GScanner* %scanner, i32 %nest_level, i8* %data) #1 {
entry:
  %retval = alloca i32, align 4
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_config_deserialize, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %14 = bitcast %struct._GimpConfig* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_config_interface_get_type() #7
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpConfigInterface*
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %17, i32 0, i32 2
  %18 = load i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %19 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %20 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %21 = load i32, i32* %nest_level.addr, align 4
  %22 = load i8*, i8** %data.addr, align 8
  %call14 = call i32 %18(%struct._GimpConfig* %19, %struct._GScanner* %20, i32 %21, i8* %22)
  store i32 %call14, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %23 = load i32, i32* %retval
  ret i32 %23
}

; Function Attrs: nounwind uwtable
define i8* @gimp_config_duplicate(%struct._GimpConfig* %config) #1 {
entry:
  %retval = alloca i8*, align 8
  %config.addr = alloca %struct._GimpConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_config_duplicate, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %14 = bitcast %struct._GimpConfig* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to i8*
  %call12 = call i64 @gimp_config_interface_get_type() #7
  %call13 = call i8* @g_type_interface_peek(i8* %16, i64 %call12)
  %17 = bitcast i8* %call13 to %struct._GimpConfigInterface*
  %duplicate = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %17, i32 0, i32 5
  %18 = load %struct._GimpConfig* (%struct._GimpConfig*)*, %struct._GimpConfig* (%struct._GimpConfig*)** %duplicate, align 8
  %19 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %call14 = call %struct._GimpConfig* %18(%struct._GimpConfig* %19)
  %20 = bitcast %struct._GimpConfig* %call14 to i8*
  store i8* %20, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %21 = load i8*, i8** %retval
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define i32 @gimp_config_is_equal_to(%struct._GimpConfig* %a, %struct._GimpConfig* %b) #1 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca %struct._GimpConfig*, align 8
  %b.addr = alloca %struct._GimpConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpConfig* %a, %struct._GimpConfig** %a.addr, align 8
  store %struct._GimpConfig* %b, %struct._GimpConfig** %b.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %a.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_config_is_equal_to, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpConfig*, %struct._GimpConfig** %b.addr, align 8
  %14 = bitcast %struct._GimpConfig* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_config_interface_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_config_is_equal_to, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpConfig*, %struct._GimpConfig** %a.addr, align 8
  %27 = bitcast %struct._GimpConfig* %26 to %struct._GTypeInstance*
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %g_type41 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type41, align 8
  %30 = load %struct._GimpConfig*, %struct._GimpConfig** %b.addr, align 8
  %31 = bitcast %struct._GimpConfig* %30 to %struct._GTypeInstance*
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %g_type43 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type43, align 8
  %cmp44 = icmp eq i64 %29, %33
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.39
  br label %if.end.47

if.else.46:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_config_is_equal_to, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  %34 = load %struct._GimpConfig*, %struct._GimpConfig** %a.addr, align 8
  %35 = bitcast %struct._GimpConfig* %34 to %struct._GTypeInstance*
  %g_class49 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %35, i32 0, i32 0
  %36 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class49, align 8
  %37 = bitcast %struct._GTypeClass* %36 to i8*
  %call50 = call i64 @gimp_config_interface_get_type() #7
  %call51 = call i8* @g_type_interface_peek(i8* %37, i64 %call50)
  %38 = bitcast i8* %call51 to %struct._GimpConfigInterface*
  %equal = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %38, i32 0, i32 6
  %39 = load i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)** %equal, align 8
  %40 = load %struct._GimpConfig*, %struct._GimpConfig** %a.addr, align 8
  %41 = load %struct._GimpConfig*, %struct._GimpConfig** %b.addr, align 8
  %call52 = call i32 %39(%struct._GimpConfig* %40, %struct._GimpConfig* %41)
  store i32 %call52, i32* %retval
  br label %return

return:                                           ; preds = %do.end.48, %if.else.46, %if.else.36, %if.else.9
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define void @gimp_config_reset(%struct._GimpConfig* %config) #1 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.gimp_config_reset, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %14 = bitcast %struct._GimpConfig* %13 to %struct._GTypeInstance*
  %call11 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 80)
  %15 = bitcast %struct._GTypeInstance* %call11 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %15)
  %16 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %17 = bitcast %struct._GimpConfig* %16 to %struct._GTypeInstance*
  %g_class12 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class12, align 8
  %19 = bitcast %struct._GTypeClass* %18 to i8*
  %call13 = call i64 @gimp_config_interface_get_type() #7
  %call14 = call i8* @g_type_interface_peek(i8* %19, i64 %call13)
  %20 = bitcast i8* %call14 to %struct._GimpConfigInterface*
  %reset = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %20, i32 0, i32 7
  %21 = load void (%struct._GimpConfig*)*, void (%struct._GimpConfig*)** %reset, align 8
  %22 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  call void %21(%struct._GimpConfig* %22)
  %23 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %24 = bitcast %struct._GimpConfig* %23 to %struct._GTypeInstance*
  %call15 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %24, i64 80)
  %25 = bitcast %struct._GTypeInstance* %call15 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %25)
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_config_copy(%struct._GimpConfig* %src, %struct._GimpConfig* %dest, i32 %flags) #1 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca %struct._GimpConfig*, align 8
  %dest.addr = alloca %struct._GimpConfig*, align 8
  %flags.addr = alloca i32, align 4
  %changed = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._GimpConfig* %src, %struct._GimpConfig** %src.addr, align 8
  store %struct._GimpConfig* %dest, %struct._GimpConfig** %dest.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %src.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_config_interface_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_config_copy, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %14 = bitcast %struct._GimpConfig* %13 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %14, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_config_interface_get_type() #7
  store i64 %call16, i64* %__t15, align 8
  %15 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %15, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %16, i32 0, i32 0
  %17 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %17, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %18 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %19, i32 0, i32 0
  %20 = load i64, i64* %g_type26, align 8
  %21 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %20, %21
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %22 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %23 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %22, i64 %23) #8
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %24 = load i32, i32* %__r18, align 4
  store i32 %24, i32* %tmp33
  %25 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %25, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_config_copy, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  br label %do.body.39

do.body.39:                                       ; preds = %do.end.38
  %26 = load %struct._GimpConfig*, %struct._GimpConfig** %src.addr, align 8
  %27 = bitcast %struct._GimpConfig* %26 to %struct._GTypeInstance*
  %g_class40 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class40, align 8
  %g_type41 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type41, align 8
  %30 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %31 = bitcast %struct._GimpConfig* %30 to %struct._GTypeInstance*
  %g_class42 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class42, align 8
  %g_type43 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type43, align 8
  %cmp44 = icmp eq i64 %29, %33
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.39
  br label %if.end.47

if.else.46:                                       ; preds = %do.body.39
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.gimp_config_copy, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.then.45
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  %34 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %35 = bitcast %struct._GimpConfig* %34 to %struct._GTypeInstance*
  %call49 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %35, i64 80)
  %36 = bitcast %struct._GTypeInstance* %call49 to %struct._GObject*
  call void @g_object_freeze_notify(%struct._GObject* %36)
  %37 = load %struct._GimpConfig*, %struct._GimpConfig** %src.addr, align 8
  %38 = bitcast %struct._GimpConfig* %37 to %struct._GTypeInstance*
  %g_class50 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class50, align 8
  %40 = bitcast %struct._GTypeClass* %39 to i8*
  %call51 = call i64 @gimp_config_interface_get_type() #7
  %call52 = call i8* @g_type_interface_peek(i8* %40, i64 %call51)
  %41 = bitcast i8* %call52 to %struct._GimpConfigInterface*
  %copy = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %41, i32 0, i32 8
  %42 = load i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)** %copy, align 8
  %43 = load %struct._GimpConfig*, %struct._GimpConfig** %src.addr, align 8
  %44 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %45 = load i32, i32* %flags.addr, align 4
  %call53 = call i32 %42(%struct._GimpConfig* %43, %struct._GimpConfig* %44, i32 %45)
  store i32 %call53, i32* %changed, align 4
  %46 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %47 = bitcast %struct._GimpConfig* %46 to %struct._GTypeInstance*
  %call54 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 80)
  %48 = bitcast %struct._GTypeInstance* %call54 to %struct._GObject*
  call void @g_object_thaw_notify(%struct._GObject* %48)
  %49 = load i32, i32* %changed, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %do.end.48, %if.else.46, %if.else.36, %if.else.9
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_iface_serialize(%struct._GimpConfig* %config, %struct._GimpConfigWriter* %writer, i8* %data) #1 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %call = call i32 @gimp_config_serialize_properties(%struct._GimpConfig* %0, %struct._GimpConfigWriter* %1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_iface_deserialize(%struct._GimpConfig* %config, %struct._GScanner* %scanner, i32 %nest_level, i8* %data) #1 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %scanner.addr = alloca %struct._GScanner*, align 8
  %nest_level.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  store %struct._GScanner* %scanner, %struct._GScanner** %scanner.addr, align 8
  store i32 %nest_level, i32* %nest_level.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = load %struct._GScanner*, %struct._GScanner** %scanner.addr, align 8
  %2 = load i32, i32* %nest_level.addr, align 4
  %call = call i32 @gimp_config_deserialize_properties(%struct._GimpConfig* %0, %struct._GScanner* %1, i32 %2)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal %struct._GimpConfig* @gimp_config_iface_duplicate(%struct._GimpConfig* %config) #1 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %object = alloca %struct._GObject*, align 8
  %klass = alloca %struct._GObjectClass*, align 8
  %property_specs = alloca %struct._GParamSpec**, align 8
  %n_property_specs = alloca i32, align 4
  %construct_params = alloca %struct._GParameter*, align 8
  %n_construct_params = alloca i32, align 4
  %i = alloca i32, align 4
  %dup = alloca %struct._GObject*, align 8
  %prop_spec = alloca %struct._GParamSpec*, align 8
  %construct_param = alloca %struct._GParameter*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  store %struct._GObject* %2, %struct._GObject** %object, align 8
  %3 = load %struct._GObject*, %struct._GObject** %object, align 8
  %4 = bitcast %struct._GObject* %3 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %4, i32 0, i32 0
  %5 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %6 = bitcast %struct._GTypeClass* %5 to %struct._GObjectClass*
  store %struct._GObjectClass* %6, %struct._GObjectClass** %klass, align 8
  store %struct._GParameter* null, %struct._GParameter** %construct_params, align 8
  store i32 0, i32* %n_construct_params, align 4
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %klass, align 8
  %call1 = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %7, i32* %n_property_specs)
  store %struct._GParamSpec** %call1, %struct._GParamSpec*** %property_specs, align 8
  %8 = load i32, i32* %n_property_specs, align 4
  %conv = zext i32 %8 to i64
  %call2 = call noalias i8* @g_malloc0_n(i64 %conv, i64 32)
  %9 = bitcast i8* %call2 to %struct._GParameter*
  store %struct._GParameter* %9, %struct._GParameter** %construct_params, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %n_property_specs, align 4
  %cmp = icmp ult i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %idxprom = zext i32 %12 to i64
  %13 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %13, i64 %idxprom
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %prop_spec, align 8
  %15 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %15, i32 0, i32 2
  %16 = load i32, i32* %flags, align 4
  %and = and i32 %16, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags4 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 2
  %18 = load i32, i32* %flags4, align 4
  %and5 = and i32 %18, 2
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags8 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %19, i32 0, i32 2
  %20 = load i32, i32* %flags8, align 4
  %and9 = and i32 %20, 8
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.7
  %21 = load i32, i32* %n_construct_params, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %n_construct_params, align 4
  %idxprom11 = sext i32 %21 to i64
  %22 = load %struct._GParameter*, %struct._GParameter** %construct_params, align 8
  %arrayidx12 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %22, i64 %idxprom11
  store %struct._GParameter* %arrayidx12, %struct._GParameter** %construct_param, align 8
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 1
  %24 = load i8*, i8** %name, align 8
  %25 = load %struct._GParameter*, %struct._GParameter** %construct_param, align 8
  %name13 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %25, i32 0, i32 0
  store i8* %24, i8** %name13, align 8
  %26 = load %struct._GParameter*, %struct._GParameter** %construct_param, align 8
  %value = getelementptr inbounds %struct._GParameter, %struct._GParameter* %26, i32 0, i32 1
  %27 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %27, i32 0, i32 3
  %28 = load i64, i64* %value_type, align 8
  %call14 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %28)
  %29 = load %struct._GObject*, %struct._GObject** %object, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name15 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %30, i32 0, i32 1
  %31 = load i8*, i8** %name15, align 8
  %32 = load %struct._GParameter*, %struct._GParameter** %construct_param, align 8
  %value16 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %32, i32 0, i32 1
  call void @g_object_get_property(%struct._GObject* %29, i8* %31, %struct._GValue* %value16)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.7, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %i, align 4
  %inc17 = add i32 %33, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %35 = bitcast %struct._GParamSpec** %34 to i8*
  call void @g_free(i8* %35)
  %36 = load %struct._GObject*, %struct._GObject** %object, align 8
  %37 = bitcast %struct._GObject* %36 to %struct._GTypeInstance*
  %g_class18 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %37, i32 0, i32 0
  %38 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class18, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %38, i32 0, i32 0
  %39 = load i64, i64* %g_type, align 8
  %40 = load i32, i32* %n_construct_params, align 4
  %41 = load %struct._GParameter*, %struct._GParameter** %construct_params, align 8
  %call19 = call i8* @g_object_newv(i64 %39, i32 %40, %struct._GParameter* %41)
  %42 = bitcast i8* %call19 to %struct._GObject*
  store %struct._GObject* %42, %struct._GObject** %dup, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.27, %for.end
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %n_construct_params, align 4
  %cmp21 = icmp ult i32 %43, %44
  br i1 %cmp21, label %for.body.23, label %for.end.29

for.body.23:                                      ; preds = %for.cond.20
  %45 = load i32, i32* %i, align 4
  %idxprom24 = zext i32 %45 to i64
  %46 = load %struct._GParameter*, %struct._GParameter** %construct_params, align 8
  %arrayidx25 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %46, i64 %idxprom24
  %value26 = getelementptr inbounds %struct._GParameter, %struct._GParameter* %arrayidx25, i32 0, i32 1
  call void @g_value_unset(%struct._GValue* %value26)
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.23
  %47 = load i32, i32* %i, align 4
  %inc28 = add i32 %47, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.20

for.end.29:                                       ; preds = %for.cond.20
  %48 = load %struct._GParameter*, %struct._GParameter** %construct_params, align 8
  %49 = bitcast %struct._GParameter* %48 to i8*
  call void @g_free(i8* %49)
  %50 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %51 = load %struct._GObject*, %struct._GObject** %dup, align 8
  %52 = bitcast %struct._GObject* %51 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_config_interface_get_type() #7
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %52, i64 %call30)
  %53 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpConfig*
  %call32 = call i32 @gimp_config_copy(%struct._GimpConfig* %50, %struct._GimpConfig* %53, i32 0)
  %54 = load %struct._GObject*, %struct._GObject** %dup, align 8
  %55 = bitcast %struct._GObject* %54 to %struct._GTypeInstance*
  %call33 = call i64 @gimp_config_interface_get_type() #7
  %call34 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %55, i64 %call33)
  %56 = bitcast %struct._GTypeInstance* %call34 to %struct._GimpConfig*
  ret %struct._GimpConfig* %56
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_iface_equal(%struct._GimpConfig* %a, %struct._GimpConfig* %b) #1 {
entry:
  %a.addr = alloca %struct._GimpConfig*, align 8
  %b.addr = alloca %struct._GimpConfig*, align 8
  %klass = alloca %struct._GObjectClass*, align 8
  %property_specs = alloca %struct._GParamSpec**, align 8
  %n_property_specs = alloca i32, align 4
  %i = alloca i32, align 4
  %equal = alloca i32, align 4
  %prop_spec = alloca %struct._GParamSpec*, align 8
  %a_value = alloca %struct._GValue, align 8
  %b_value = alloca %struct._GValue, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpConfig* %a, %struct._GimpConfig** %a.addr, align 8
  store %struct._GimpConfig* %b, %struct._GimpConfig** %b.addr, align 8
  store i32 1, i32* %equal, align 4
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %a.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %1, i32 0, i32 0
  %2 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %3 = bitcast %struct._GTypeClass* %2 to %struct._GObjectClass*
  store %struct._GObjectClass* %3, %struct._GObjectClass** %klass, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %klass, align 8
  %call = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %4, i32* %n_property_specs)
  store %struct._GParamSpec** %call, %struct._GParamSpec*** %property_specs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %equal, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* %n_property_specs, align 4
  %cmp = icmp ult i32 %6, %7
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %8 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %9 = bitcast %struct._GValue* %a_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 24, i32 8, i1 false)
  %10 = bitcast %struct._GValue* %b_value to i8*
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 24, i32 8, i1 false)
  %11 = load i32, i32* %i, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %12, i64 %idxprom
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %13, %struct._GParamSpec** %prop_spec, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %14, i32 0, i32 2
  %15 = load i32, i32* %flags, align 4
  %and = and i32 %15, 1
  %tobool1 = icmp ne i32 %and, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %16 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %16, i32 0, i32 3
  %17 = load i64, i64* %value_type, align 8
  %call2 = call %struct._GValue* @g_value_init(%struct._GValue* %a_value, i64 %17)
  %18 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type3 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %18, i32 0, i32 3
  %19 = load i64, i64* %value_type3, align 8
  %call4 = call %struct._GValue* @g_value_init(%struct._GValue* %b_value, i64 %19)
  %20 = load %struct._GimpConfig*, %struct._GimpConfig** %a.addr, align 8
  %21 = bitcast %struct._GimpConfig* %20 to %struct._GTypeInstance*
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %21, i64 80)
  %22 = bitcast %struct._GTypeInstance* %call5 to %struct._GObject*
  %23 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %23, i32 0, i32 1
  %24 = load i8*, i8** %name, align 8
  call void @g_object_get_property(%struct._GObject* %22, i8* %24, %struct._GValue* %a_value)
  %25 = load %struct._GimpConfig*, %struct._GimpConfig** %b.addr, align 8
  %26 = bitcast %struct._GimpConfig* %25 to %struct._GTypeInstance*
  %call6 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %26, i64 80)
  %27 = bitcast %struct._GTypeInstance* %call6 to %struct._GObject*
  %28 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name7 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %28, i32 0, i32 1
  %29 = load i8*, i8** %name7, align 8
  call void @g_object_get_property(%struct._GObject* %27, i8* %29, %struct._GValue* %b_value)
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %call8 = call i32 @g_param_values_cmp(%struct._GParamSpec* %30, %struct._GValue* %a_value, %struct._GValue* %b_value)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.43

if.then.10:                                       ; preds = %if.end
  %31 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags11 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %31, i32 0, i32 2
  %32 = load i32, i32* %flags11, align 4
  %and12 = and i32 %32, 512
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %if.then.10
  %33 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %34 = bitcast %struct._GParamSpec* %33 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %34, %struct._GTypeInstance** %__inst, align 8
  %35 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %35, i64 19
  %36 = load i64, i64* %arrayidx14, align 8
  store i64 %36, i64* %__t, align 8
  %37 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool15 = icmp ne %struct._GTypeInstance* %37, null
  br i1 %tobool15, label %if.else, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true
  store i32 0, i32* %__r, align 4
  br label %if.end.26

if.else:                                          ; preds = %land.lhs.true
  %38 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class17 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %38, i32 0, i32 0
  %39 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class17, align 8
  %tobool18 = icmp ne %struct._GTypeClass* %39, null
  br i1 %tobool18, label %land.lhs.true.19, label %if.else.23

land.lhs.true.19:                                 ; preds = %if.else
  %40 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class20 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %40, i32 0, i32 0
  %41 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class20, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %41, i32 0, i32 0
  %42 = load i64, i64* %g_type, align 8
  %43 = load i64, i64* %__t, align 8
  %cmp21 = icmp eq i64 %42, %43
  br i1 %cmp21, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %land.lhs.true.19
  store i32 1, i32* %__r, align 4
  br label %if.end.25

if.else.23:                                       ; preds = %land.lhs.true.19, %if.else
  %44 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %45 = load i64, i64* %__t, align 8
  %call24 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %44, i64 %45) #8
  store i32 %call24, i32* %__r, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.16
  %46 = load i32, i32* %__r, align 4
  store i32 %46, i32* %tmp
  %47 = load i32, i32* %tmp
  %tobool27 = icmp ne i32 %47, 0
  br i1 %tobool27, label %land.lhs.true.28, label %if.else.41

land.lhs.true.28:                                 ; preds = %if.end.26
  %48 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type29 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %48, i32 0, i32 3
  %49 = load i64, i64* %value_type29, align 8
  %call30 = call i8* @g_type_class_peek(i64 %49)
  %call31 = call i64 @gimp_config_interface_get_type() #7
  %call32 = call i8* @g_type_interface_peek(i8* %call30, i64 %call31)
  %tobool33 = icmp ne i8* %call32, null
  br i1 %tobool33, label %if.then.34, label %if.else.41

if.then.34:                                       ; preds = %land.lhs.true.28
  %call35 = call i8* @g_value_get_object(%struct._GValue* %a_value)
  %50 = bitcast i8* %call35 to %struct._GimpConfig*
  %call36 = call i8* @g_value_get_object(%struct._GValue* %b_value)
  %51 = bitcast i8* %call36 to %struct._GimpConfig*
  %call37 = call i32 @gimp_config_is_equal_to(%struct._GimpConfig* %50, %struct._GimpConfig* %51)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.then.34
  store i32 0, i32* %equal, align 4
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.then.34
  br label %if.end.42

if.else.41:                                       ; preds = %land.lhs.true.28, %if.end.26, %if.then.10
  store i32 0, i32* %equal, align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.41, %if.end.40
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end
  call void @g_value_unset(%struct._GValue* %a_value)
  call void @g_value_unset(%struct._GValue* %b_value)
  br label %for.inc

for.inc:                                          ; preds = %if.end.43, %if.then
  %52 = load i32, i32* %i, align 4
  %inc = add i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %53 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %54 = bitcast %struct._GParamSpec** %53 to i8*
  call void @g_free(i8* %54)
  %55 = load i32, i32* %equal, align 4
  ret i32 %55
}

; Function Attrs: nounwind uwtable
define internal void @gimp_config_iface_reset(%struct._GimpConfig* %config) #1 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  call void @gimp_config_reset_properties(%struct._GObject* %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_iface_copy(%struct._GimpConfig* %src, %struct._GimpConfig* %dest, i32 %flags) #1 {
entry:
  %src.addr = alloca %struct._GimpConfig*, align 8
  %dest.addr = alloca %struct._GimpConfig*, align 8
  %flags.addr = alloca i32, align 4
  store %struct._GimpConfig* %src, %struct._GimpConfig** %src.addr, align 8
  store %struct._GimpConfig* %dest, %struct._GimpConfig** %dest.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load %struct._GimpConfig*, %struct._GimpConfig** %src.addr, align 8
  %1 = bitcast %struct._GimpConfig* %0 to %struct._GTypeInstance*
  %call = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 80)
  %2 = bitcast %struct._GTypeInstance* %call to %struct._GObject*
  %3 = load %struct._GimpConfig*, %struct._GimpConfig** %dest.addr, align 8
  %4 = bitcast %struct._GimpConfig* %3 to %struct._GTypeInstance*
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %4, i64 80)
  %5 = bitcast %struct._GTypeInstance* %call1 to %struct._GObject*
  %6 = load i32, i32* %flags.addr, align 4
  %call2 = call i32 @gimp_config_sync(%struct._GObject* %2, %struct._GObject* %5, i32 %6)
  ret i32 %call2
}

declare i32 @gimp_config_serialize_properties(%struct._GimpConfig*, %struct._GimpConfigWriter*) #2

declare i32 @gimp_config_deserialize_properties(%struct._GimpConfig*, %struct._GScanner*, i32) #2

declare %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass*, i32*) #2

declare noalias i8* @g_malloc0_n(i64, i64) #2

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #2

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #2

declare void @g_free(i8*) #2

declare i8* @g_object_newv(i64, i32, %struct._GParameter*) #2

declare void @g_value_unset(%struct._GValue*) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare i32 @g_param_values_cmp(%struct._GParamSpec*, %struct._GValue*, %struct._GValue*) #2

declare i8* @g_type_class_peek(i64) #2

declare i8* @g_value_get_object(%struct._GValue*) #2

declare void @gimp_config_reset_properties(%struct._GObject*) #2

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #2

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
