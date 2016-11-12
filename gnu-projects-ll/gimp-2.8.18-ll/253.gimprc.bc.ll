; ModuleID = './app/config/gimprc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GInterfaceInfo = type { void (i8*, i8*)*, void (i8*, i8*)*, i8* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GimpRcClass = type { %struct._GimpPluginConfigClass }
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
%struct._GimpRc = type { %struct._GimpPluginConfig, i8*, i8*, i32, i32, i32 }
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
%struct._GimpConfigInterface = type { %struct._GTypeInterface, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)*, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GimpConfigWriter*)*, i32 (%struct._GimpConfig*, i32, %struct._GValue*, %struct._GParamSpec*, %struct._GScanner*, i32*)*, %struct._GimpConfig* (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*)*, void (%struct._GimpConfig*)*, i32 (%struct._GimpConfig*, %struct._GimpConfig*, i32)* }
%struct._GTypeInterface = type { i64, i64 }
%struct._GimpConfig = type opaque
%struct._GimpConfigWriter = type opaque
%struct._GScanner = type { i8*, i32, i32, i8*, %struct._GData*, %struct._GScannerConfig*, i32, %union._GTokenValue, i32, i32, i32, %union._GTokenValue, i32, i32, %struct._GHashTable*, i32, i8*, i8*, i8*, i32, void (%struct._GScanner*, i8*, i32)* }
%struct._GScannerConfig = type { i8*, i8*, i8*, i8*, i24, i32 }
%union._GTokenValue = type { i8* }
%struct._GHashTable = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GString = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@gimp_rc_get_type.g_define_type_id__volatile = internal global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"GimpRc\00", align 1
@gimp_rc_get_type.g_implement_interface_info = internal constant %struct._GInterfaceInfo { void (i8*, i8*)* bitcast (void (%struct._GimpConfigInterface*)* @gimp_rc_config_iface_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null }, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"system-gimprc\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"user-gimprc\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@__func__.gimp_rc_set_autosave = private unnamed_addr constant [21 x i8] c"gimp_rc_set_autosave\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"GIMP_IS_RC (rc)\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"notify\00", align 1
@__func__.gimp_rc_query = private unnamed_addr constant [14 x i8] c"gimp_rc_query\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"key != NULL\00", align 1
@gimp_rc_query.path_tokens = internal constant [5 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [9 x i8] c"gimp_dir\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"gimp_data_dir\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"gimp_plug_in_dir\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"gimp_plugin_dir\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"gimp_sysconf_dir\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"${%s}\00", align 1
@__func__.gimp_rc_set_unknown_token = private unnamed_addr constant [26 x i8] c"gimp_rc_set_unknown_token\00", align 1
@.str.14 = private unnamed_addr constant [151 x i8] c"GIMP gimprc\0A\0AThis is your personal gimprc file.  Any variable defined in this file takes precedence over the value defined in the system-wide gimprc: \00", align 1
@.str.15 = private unnamed_addr constant [88 x i8] c"\0AMost values can be set within GIMP by changing some options in the Preferences dialog.\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"end of gimprc\00", align 1
@__func__.gimp_rc_save = private unnamed_addr constant [13 x i8] c"gimp_rc_save\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__func__.gimp_rc_migrate = private unnamed_addr constant [16 x i8] c"gimp_rc_migrate\00", align 1
@gimp_rc_parent_class = internal global i8* null, align 8
@GimpRc_private_offset = internal global i32 0, align 4
@.str.19 = private unnamed_addr constant [7 x i8] c"gimprc\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"%s:%u: invalid %s id %u for \22%s\22 of type '%s' in '%s'\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"gimprc.c\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"property\00", align 1
@__func__.gimp_rc_load = private unnamed_addr constant [13 x i8] c"gimp_rc_load\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_rc_get_type() #0 {
entry:
  %tmp = alloca i32, align 4
  %tmp1 = alloca i8*, align 8
  %g_define_type_id = alloca i64, align 8
  fence seq_cst
  %0 = load volatile i64, i64* @gimp_rc_get_type.g_define_type_id__volatile, align 8
  %1 = inttoptr i64 %0 to i8*
  store i8* %1, i8** %tmp1
  %2 = load i8*, i8** %tmp1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %call = call i32 @g_once_init_enter(i8* bitcast (i64* @gimp_rc_get_type.g_define_type_id__volatile to i8*))
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
  %call5 = call i64 @gimp_plugin_config_get_type() #6
  %call6 = call i8* @g_intern_static_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0))
  %call7 = call i64 @g_type_register_static_simple(i64 %call5, i8* %call6, i32 136, void (i8*, i8*)* bitcast (void (i8*)* @gimp_rc_class_intern_init to void (i8*, i8*)*), i32 808, void (%struct._GTypeInstance*, i8*)* bitcast (void (%struct._GimpRc*)* @gimp_rc_init to void (%struct._GTypeInstance*, i8*)*), i32 0)
  store i64 %call7, i64* %g_define_type_id, align 8
  %5 = load i64, i64* %g_define_type_id, align 8
  %call8 = call i64 @gimp_config_interface_get_type() #6
  call void @g_type_add_interface_static(i64 %5, i64 %call8, %struct._GInterfaceInfo* @gimp_rc_get_type.g_implement_interface_info)
  %6 = load i64, i64* %g_define_type_id, align 8
  call void @g_once_init_leave(i8* bitcast (i64* @gimp_rc_get_type.g_define_type_id__volatile to i8*), i64 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  %7 = load volatile i64, i64* @gimp_rc_get_type.g_define_type_id__volatile, align 8
  ret i64 %7
}

declare i32 @g_once_init_enter(i8*) #1

declare i64 @g_type_register_static_simple(i64, i8*, i32, void (i8*, i8*)*, i32, void (%struct._GTypeInstance*, i8*)*, i32) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_plugin_config_get_type() #2

declare i8* @g_intern_static_string(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_class_intern_init(i8* %klass) #3 {
entry:
  %klass.addr = alloca i8*, align 8
  store i8* %klass, i8** %klass.addr, align 8
  %0 = load i8*, i8** %klass.addr, align 8
  %call = call i8* @g_type_class_peek_parent(i8* %0)
  store i8* %call, i8** @gimp_rc_parent_class, align 8
  %1 = load i32, i32* @GimpRc_private_offset, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %klass.addr, align 8
  call void @g_type_class_adjust_private_offset(i8* %2, i32* @GimpRc_private_offset)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %klass.addr, align 8
  %4 = bitcast i8* %3 to %struct._GimpRcClass*
  call void @gimp_rc_class_init(%struct._GimpRcClass* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_init(%struct._GimpRc* %rc) #3 {
entry:
  %rc.addr = alloca %struct._GimpRc*, align 8
  store %struct._GimpRc* %rc, %struct._GimpRc** %rc.addr, align 8
  %0 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %autosave = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %0, i32 0, i32 4
  store i32 0, i32* %autosave, align 4
  %1 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %save_idle_id = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %1, i32 0, i32 5
  store i32 0, i32* %save_idle_id, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_config_iface_init(%struct._GimpConfigInterface* %iface) #3 {
entry:
  %iface.addr = alloca %struct._GimpConfigInterface*, align 8
  store %struct._GimpConfigInterface* %iface, %struct._GimpConfigInterface** %iface.addr, align 8
  %0 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %serialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %0, i32 0, i32 1
  store i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)* @gimp_rc_serialize, i32 (%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*)** %serialize, align 8
  %1 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %deserialize = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %1, i32 0, i32 2
  store i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)* @gimp_rc_deserialize, i32 (%struct._GimpConfig*, %struct._GScanner*, i32, i8*)** %deserialize, align 8
  %2 = load %struct._GimpConfigInterface*, %struct._GimpConfigInterface** %iface.addr, align 8
  %duplicate = getelementptr inbounds %struct._GimpConfigInterface, %struct._GimpConfigInterface* %2, i32 0, i32 5
  store %struct._GimpConfig* (%struct._GimpConfig*)* @gimp_rc_duplicate, %struct._GimpConfig* (%struct._GimpConfig*)** %duplicate, align 8
  ret void
}

declare void @g_type_add_interface_static(i64, i64, %struct._GInterfaceInfo*) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #2

declare void @g_once_init_leave(i8*, i64) #1

; Function Attrs: nounwind uwtable
define %struct._GimpRc* @gimp_rc_new(i8* %system_gimprc, i8* %user_gimprc, i32 %verbose) #3 {
entry:
  %system_gimprc.addr = alloca i8*, align 8
  %user_gimprc.addr = alloca i8*, align 8
  %verbose.addr = alloca i32, align 4
  %rc = alloca %struct._GimpRc*, align 8
  store i8* %system_gimprc, i8** %system_gimprc.addr, align 8
  store i8* %user_gimprc, i8** %user_gimprc.addr, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  %call = call i64 @gimp_rc_get_type() #6
  %0 = load i32, i32* %verbose.addr, align 4
  %1 = load i8*, i8** %system_gimprc.addr, align 8
  %2 = load i8*, i8** %user_gimprc.addr, align 8
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* %2, i8* null)
  %3 = bitcast i8* %call1 to %struct._GimpRc*
  store %struct._GimpRc* %3, %struct._GimpRc** %rc, align 8
  %4 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  call void @gimp_rc_load(%struct._GimpRc* %4)
  %5 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  ret %struct._GimpRc* %5
}

declare i8* @g_object_new(i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_load(%struct._GimpRc* %rc) #3 {
entry:
  %rc.addr = alloca %struct._GimpRc*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRc* %rc, %struct._GimpRc** %rc.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %1 = bitcast %struct._GimpRc* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rc_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_rc_load, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.43

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %verbose = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %13, i32 0, i32 3
  %14 = load i32, i32* %verbose, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %15 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %system_gimprc = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %15, i32 0, i32 2
  %16 = load i8*, i8** %system_gimprc, align 8
  %call13 = call i8* @gimp_filename_to_utf8(i8* %16)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* %call13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %do.end
  %17 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %18 = bitcast %struct._GimpRc* %17 to %struct._GTypeInstance*
  %call15 = call i64 @gimp_config_interface_get_type() #6
  %call16 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %18, i64 %call15)
  %19 = bitcast %struct._GTypeInstance* %call16 to %struct._GimpConfig*
  %20 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %system_gimprc17 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %20, i32 0, i32 2
  %21 = load i8*, i8** %system_gimprc17, align 8
  %call18 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %19, i8* %21, i8* null, %struct._GError** %error)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.24, label %if.then.20

if.then.20:                                       ; preds = %if.end.14
  %22 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %22, i32 0, i32 1
  %23 = load i32, i32* %code, align 4
  %cmp21 = icmp ne i32 %23, 1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.20
  %24 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %24, i32 0, i32 2
  %25 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %25)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.22, %if.then.20
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.14
  %26 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %verbose25 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %26, i32 0, i32 3
  %27 = load i32, i32* %verbose25, align 4
  %tobool26 = icmp ne i32 %27, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.24
  %28 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %user_gimprc = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %28, i32 0, i32 1
  %29 = load i8*, i8** %user_gimprc, align 8
  %call28 = call i8* @gimp_filename_to_utf8(i8* %29)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* %call28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.end.24
  %30 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %31 = bitcast %struct._GimpRc* %30 to %struct._GTypeInstance*
  %call30 = call i64 @gimp_config_interface_get_type() #6
  %call31 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call30)
  %32 = bitcast %struct._GTypeInstance* %call31 to %struct._GimpConfig*
  %33 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %user_gimprc32 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %33, i32 0, i32 1
  %34 = load i8*, i8** %user_gimprc32, align 8
  %call33 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %32, i8* %34, i8* null, %struct._GError** %error)
  %tobool34 = icmp ne i32 %call33, 0
  br i1 %tobool34, label %if.end.43, label %if.then.35

if.then.35:                                       ; preds = %if.end.29
  %35 = load %struct._GError*, %struct._GError** %error, align 8
  %code36 = getelementptr inbounds %struct._GError, %struct._GError* %35, i32 0, i32 1
  %36 = load i32, i32* %code36, align 4
  %cmp37 = icmp ne i32 %36, 1
  br i1 %cmp37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.then.35
  %37 = load %struct._GError*, %struct._GError** %error, align 8
  %message39 = getelementptr inbounds %struct._GError, %struct._GError* %37, i32 0, i32 2
  %38 = load i8*, i8** %message39, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %38)
  %39 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %user_gimprc40 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %39, i32 0, i32 1
  %40 = load i8*, i8** %user_gimprc40, align 8
  %call41 = call i32 @gimp_config_file_backup_on_error(i8* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct._GError** null)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.then.35
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.9, %if.end.42, %if.end.29
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_rc_set_autosave(%struct._GimpRc* %rc, i32 %autosave) #3 {
entry:
  %rc.addr = alloca %struct._GimpRc*, align 8
  %autosave.addr = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRc* %rc, %struct._GimpRc** %rc.addr, align 8
  store i32 %autosave, i32* %autosave.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %1 = bitcast %struct._GimpRc* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rc_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_rc_set_autosave, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i32, i32* %autosave.addr, align 4
  %tobool11 = icmp ne i32 %13, 0
  %cond = select i1 %tobool11, i32 1, i32 0
  store i32 %cond, i32* %autosave.addr, align 4
  %14 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %autosave12 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %14, i32 0, i32 4
  %15 = load i32, i32* %autosave12, align 4
  %16 = load i32, i32* %autosave.addr, align 4
  %cmp13 = icmp eq i32 %15, %16
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  br label %return

if.end.15:                                        ; preds = %do.end
  %17 = load i32, i32* %autosave.addr, align 4
  %tobool16 = icmp ne i32 %17, 0
  br i1 %tobool16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.end.15
  %18 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %19 = bitcast %struct._GimpRc* %18 to i8*
  %call18 = call i64 @g_signal_connect_data(i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), void ()* bitcast (void (%struct._GimpRc*, %struct._GParamSpec*, i8*)* @gimp_rc_notify to void ()*), i8* null, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %if.end.21

if.else.19:                                       ; preds = %if.end.15
  %20 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %21 = bitcast %struct._GimpRc* %20 to i8*
  %call20 = call i32 @g_signal_handlers_disconnect_matched(i8* %21, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpRc*, %struct._GParamSpec*, i8*)* @gimp_rc_notify to i8*), i8* null)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.17
  %22 = load i32, i32* %autosave.addr, align 4
  %23 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %autosave22 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %23, i32 0, i32 4
  store i32 %22, i32* %autosave22, align 4
  br label %return

return:                                           ; preds = %if.end.21, %if.then.14, %if.else.9
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #4

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_notify(%struct._GimpRc* %rc, %struct._GParamSpec* %param, i8* %data) #3 {
entry:
  %rc.addr = alloca %struct._GimpRc*, align 8
  %param.addr = alloca %struct._GParamSpec*, align 8
  %data.addr = alloca i8*, align 8
  store %struct._GimpRc* %rc, %struct._GimpRc** %rc.addr, align 8
  store %struct._GParamSpec* %param, %struct._GParamSpec** %param.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %autosave = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %0, i32 0, i32 4
  %1 = load i32, i32* %autosave, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.4

if.end:                                           ; preds = %entry
  %2 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %save_idle_id = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %2, i32 0, i32 5
  %3 = load i32, i32* %save_idle_id, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end.4, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %5 = bitcast %struct._GimpRc* %4 to i8*
  %call = call i32 @g_idle_add(i32 (i8*)* bitcast (i32 (%struct._GimpRc*)* @gimp_rc_idle_save to i32 (i8*)*), i8* %5)
  %6 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %save_idle_id3 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %6, i32 0, i32 5
  store i32 %call, i32* %save_idle_id3, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then, %if.then.2, %if.end
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_rc_query(%struct._GimpRc* %rc, i8* %key) #3 {
entry:
  %retval = alloca i8*, align 8
  %rc.addr = alloca %struct._GimpRc*, align 8
  %key.addr = alloca i8*, align 8
  %klass = alloca %struct._GObjectClass*, align 8
  %rc_object = alloca %struct._GObject*, align 8
  %property_specs = alloca %struct._GParamSpec**, align 8
  %prop_spec = alloca %struct._GParamSpec*, align 8
  %i = alloca i32, align 4
  %n_property_specs = alloca i32, align 4
  %retval1 = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %str = alloca %struct._GString*, align 8
  %value = alloca %struct._GValue, align 8
  %tmp77 = alloca i8*, align 8
  store %struct._GimpRc* %rc, %struct._GimpRc** %rc.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* null, i8** %retval1, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %1 = bitcast %struct._GimpRc* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rc_get_type() #6
  store i64 %call, i64* %__t, align 8
  %2 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %tobool = icmp ne %struct._GTypeInstance* %2, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %do.body
  store i32 0, i32* %__r, align 4
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %3 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %3, i32 0, i32 0
  %4 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %tobool2 = icmp ne %struct._GTypeClass* %4, null
  br i1 %tobool2, label %land.lhs.true, label %if.else.5

land.lhs.true:                                    ; preds = %if.else
  %5 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %g_class3 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %5, i32 0, i32 0
  %6 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class3, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %6, i32 0, i32 0
  %7 = load i64, i64* %g_type, align 8
  %8 = load i64, i64* %__t, align 8
  %cmp = icmp eq i64 %7, %8
  br i1 %cmp, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %land.lhs.true
  store i32 1, i32* %__r, align 4
  br label %if.end

if.else.5:                                        ; preds = %land.lhs.true, %if.else
  %9 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst, align 8
  %10 = load i64, i64* %__t, align 8
  %call6 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %9, i64 %10) #7
  store i32 %call6, i32* %__r, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %if.then
  %11 = load i32, i32* %__r, align 4
  store i32 %11, i32* %tmp
  %12 = load i32, i32* %tmp
  %tobool8 = icmp ne i32 %12, 0
  br i1 %tobool8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.end.7
  br label %if.end.11

if.else.10:                                       ; preds = %if.end.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_rc_query, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  br label %do.body.12

do.body.12:                                       ; preds = %do.end
  %13 = load i8*, i8** %key.addr, align 8
  %cmp13 = icmp ne i8* %13, null
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__func__.gimp_rc_query, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %14 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %15 = bitcast %struct._GimpRc* %14 to %struct._GTypeInstance*
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 80)
  %16 = bitcast %struct._GTypeInstance* %call18 to %struct._GObject*
  store %struct._GObject* %16, %struct._GObject** %rc_object, align 8
  %17 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %18 = bitcast %struct._GimpRc* %17 to %struct._GTypeInstance*
  %g_class19 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %18, i32 0, i32 0
  %19 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class19, align 8
  %20 = bitcast %struct._GTypeClass* %19 to %struct._GObjectClass*
  store %struct._GObjectClass* %20, %struct._GObjectClass** %klass, align 8
  %21 = load %struct._GObjectClass*, %struct._GObjectClass** %klass, align 8
  %call20 = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %21, i32* %n_property_specs)
  store %struct._GParamSpec** %call20, %struct._GParamSpec*** %property_specs, align 8
  %22 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %tobool21 = icmp ne %struct._GParamSpec** %22, null
  br i1 %tobool21, label %if.end.23, label %if.then.22

if.then.22:                                       ; preds = %do.end.17
  store i8* null, i8** %retval
  br label %return

if.end.23:                                        ; preds = %do.end.17
  store i32 0, i32* %i, align 4
  store %struct._GParamSpec* null, %struct._GParamSpec** %prop_spec, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* %n_property_specs, align 4
  %cmp24 = icmp ult i32 %23, %24
  br i1 %cmp24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %25 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %tobool25 = icmp ne %struct._GParamSpec* %25, null
  %lnot = xor i1 %tobool25, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %26 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %26, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %27 = load i32, i32* %i, align 4
  %idxprom = zext i32 %27 to i64
  %28 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %28, i64 %idxprom
  %29 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %29, %struct._GParamSpec** %prop_spec, align 8
  %30 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %flags = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %30, i32 0, i32 2
  %31 = load i32, i32* %flags, align 4
  %and = and i32 %31, 256
  %tobool26 = icmp ne i32 %and, 0
  br i1 %tobool26, label %lor.lhs.false, label %if.then.29

lor.lhs.false:                                    ; preds = %for.body
  %32 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %32, i32 0, i32 1
  %33 = load i8*, i8** %name, align 8
  %34 = load i8*, i8** %key.addr, align 8
  %call27 = call i32 @strcmp(i8* %33, i8* %34) #7
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %for.body
  store %struct._GParamSpec* null, %struct._GParamSpec** %prop_spec, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %35 = load i32, i32* %i, align 4
  %inc = add i32 %35, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %tobool31 = icmp ne %struct._GParamSpec* %36, null
  br i1 %tobool31, label %if.then.32, label %if.else.45

if.then.32:                                       ; preds = %for.end
  %call34 = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call34, %struct._GString** %str, align 8
  %37 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 24, i32 8, i1 false)
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %38, i32 0, i32 3
  %39 = load i64, i64* %value_type, align 8
  %call36 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %39)
  %40 = load %struct._GObject*, %struct._GObject** %rc_object, align 8
  %41 = load %struct._GParamSpec*, %struct._GParamSpec** %prop_spec, align 8
  %name37 = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %41, i32 0, i32 1
  %42 = load i8*, i8** %name37, align 8
  call void @g_object_get_property(%struct._GObject* %40, i8* %42, %struct._GValue* %value)
  %43 = load %struct._GString*, %struct._GString** %str, align 8
  %call38 = call i32 @gimp_config_serialize_value(%struct._GValue* %value, %struct._GString* %43, i32 0)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.then.40, label %if.else.42

if.then.40:                                       ; preds = %if.then.32
  %44 = load %struct._GString*, %struct._GString** %str, align 8
  %call41 = call i8* @g_string_free(%struct._GString* %44, i32 0)
  store i8* %call41, i8** %retval1, align 8
  br label %if.end.44

if.else.42:                                       ; preds = %if.then.32
  %45 = load %struct._GString*, %struct._GString** %str, align 8
  %call43 = call i8* @g_string_free(%struct._GString* %45, i32 1)
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.42, %if.then.40
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.50

if.else.45:                                       ; preds = %for.end
  %46 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %47 = bitcast %struct._GimpRc* %46 to %struct._GTypeInstance*
  %call46 = call i64 @gimp_config_interface_get_type() #6
  %call47 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %47, i64 %call46)
  %48 = bitcast %struct._GTypeInstance* %call47 to %struct._GimpConfig*
  %49 = load i8*, i8** %key.addr, align 8
  %call48 = call i8* @gimp_rc_lookup_unknown_token(%struct._GimpConfig* %48, i8* %49)
  %call49 = call noalias i8* @g_strdup(i8* %call48)
  store i8* %call49, i8** %retval1, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.45, %if.end.44
  %50 = load %struct._GParamSpec**, %struct._GParamSpec*** %property_specs, align 8
  %51 = bitcast %struct._GParamSpec** %50 to i8*
  call void @g_free(i8* %51)
  %52 = load i8*, i8** %retval1, align 8
  %tobool51 = icmp ne i8* %52, null
  br i1 %tobool51, label %if.end.73, label %if.then.52

if.then.52:                                       ; preds = %if.end.50
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.70, %if.then.52
  %53 = load i8*, i8** %retval1, align 8
  %tobool54 = icmp ne i8* %53, null
  br i1 %tobool54, label %land.end.58, label %land.rhs.55

land.rhs.55:                                      ; preds = %for.cond.53
  %54 = load i32, i32* %i, align 4
  %conv = zext i32 %54 to i64
  %cmp56 = icmp ult i64 %conv, 5
  br label %land.end.58

land.end.58:                                      ; preds = %land.rhs.55, %for.cond.53
  %55 = phi i1 [ false, %for.cond.53 ], [ %cmp56, %land.rhs.55 ]
  br i1 %55, label %for.body.59, label %for.end.72

for.body.59:                                      ; preds = %land.end.58
  %56 = load i8*, i8** %key.addr, align 8
  %57 = load i32, i32* %i, align 4
  %idxprom60 = zext i32 %57 to i64
  %arrayidx61 = getelementptr inbounds [5 x i8*], [5 x i8*]* @gimp_rc_query.path_tokens, i32 0, i64 %idxprom60
  %58 = load i8*, i8** %arrayidx61, align 8
  %call62 = call i32 @strcmp(i8* %56, i8* %58) #7
  %cmp63 = icmp eq i32 %call62, 0
  br i1 %cmp63, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %for.body.59
  %59 = load i32, i32* %i, align 4
  %idxprom66 = zext i32 %59 to i64
  %arrayidx67 = getelementptr inbounds [5 x i8*], [5 x i8*]* @gimp_rc_query.path_tokens, i32 0, i64 %idxprom66
  %60 = load i8*, i8** %arrayidx67, align 8
  %call68 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* %60)
  store i8* %call68, i8** %retval1, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %for.body.59
  br label %for.inc.70

for.inc.70:                                       ; preds = %if.end.69
  %61 = load i32, i32* %i, align 4
  %inc71 = add i32 %61, 1
  store i32 %inc71, i32* %i, align 4
  br label %for.cond.53

for.end.72:                                       ; preds = %land.end.58
  br label %if.end.73

if.end.73:                                        ; preds = %for.end.72, %if.end.50
  %62 = load i8*, i8** %retval1, align 8
  %tobool74 = icmp ne i8* %62, null
  br i1 %tobool74, label %if.then.75, label %if.end.82

if.then.75:                                       ; preds = %if.end.73
  %63 = load i8*, i8** %retval1, align 8
  %call78 = call noalias i8* @gimp_config_path_expand(i8* %63, i32 0, %struct._GError** null)
  store i8* %call78, i8** %tmp77, align 8
  %64 = load i8*, i8** %tmp77, align 8
  %tobool79 = icmp ne i8* %64, null
  br i1 %tobool79, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.75
  %65 = load i8*, i8** %retval1, align 8
  call void @g_free(i8* %65)
  %66 = load i8*, i8** %tmp77, align 8
  store i8* %66, i8** %retval1, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.then.75
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %if.end.73
  %67 = load i8*, i8** %retval1, align 8
  store i8* %67, i8** %retval
  br label %return

return:                                           ; preds = %if.end.82, %if.then.22, %if.else.15, %if.else.10
  %68 = load i8*, i8** %retval
  ret i8* %68
}

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

declare %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass*, i32*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct._GValue* @g_value_init(%struct._GValue*, i64) #1

declare void @g_object_get_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare i32 @gimp_config_serialize_value(%struct._GValue*, %struct._GString*, i32) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare void @g_value_unset(%struct._GValue*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i8* @gimp_rc_lookup_unknown_token(%struct._GimpConfig*, i8*) #1

declare void @g_free(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define void @gimp_rc_set_unknown_token(%struct._GimpRc* %rc, i8* %token, i8* %value) #3 {
entry:
  %rc.addr = alloca %struct._GimpRc*, align 8
  %token.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRc* %rc, %struct._GimpRc** %rc.addr, align 8
  store i8* %token, i8** %token.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %1 = bitcast %struct._GimpRc* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rc_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_rc_set_unknown_token, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end.15

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %14 = bitcast %struct._GimpRc* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_config_interface_get_type() #6
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpConfig*
  %16 = load i8*, i8** %token.addr, align 8
  %17 = load i8*, i8** %value.addr, align 8
  call void @gimp_rc_add_unknown_token(%struct._GimpConfig* %15, i8* %16, i8* %17)
  %18 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %autosave = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %18, i32 0, i32 4
  %19 = load i32, i32* %autosave, align 4
  %tobool13 = icmp ne i32 %19, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %do.end
  %20 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  call void @gimp_rc_notify(%struct._GimpRc* %20, %struct._GParamSpec* null, i8* null)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.9, %if.then.14, %do.end
  ret void
}

declare void @gimp_rc_add_unknown_token(%struct._GimpConfig*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_rc_save(%struct._GimpRc* %rc) #3 {
entry:
  %rc.addr = alloca %struct._GimpRc*, align 8
  %global = alloca %struct._GimpRc*, align 8
  %header = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %top = alloca i8*, align 8
  %bottom = alloca i8*, align 8
  %footer = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GimpRc* %rc, %struct._GimpRc** %rc.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  store i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str.14, i32 0, i32 0), i8** %top, align 8
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.15, i32 0, i32 0), i8** %bottom, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8** %footer, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %1 = bitcast %struct._GimpRc* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rc_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__func__.gimp_rc_save, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %call11 = call i64 @gimp_rc_get_type() #6
  %call12 = call i8* (i64, i8*, ...) @g_object_new(i64 %call11, i8* null)
  %13 = bitcast i8* %call12 to %struct._GimpRc*
  store %struct._GimpRc* %13, %struct._GimpRc** %global, align 8
  %14 = load %struct._GimpRc*, %struct._GimpRc** %global, align 8
  %15 = bitcast %struct._GimpRc* %14 to %struct._GTypeInstance*
  %call13 = call i64 @gimp_config_interface_get_type() #6
  %call14 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call13)
  %16 = bitcast %struct._GTypeInstance* %call14 to %struct._GimpConfig*
  %17 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %system_gimprc = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %17, i32 0, i32 2
  %18 = load i8*, i8** %system_gimprc, align 8
  %call15 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %16, i8* %18, i8* null, %struct._GError** null)
  %19 = load i8*, i8** %top, align 8
  %20 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %system_gimprc16 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %20, i32 0, i32 2
  %21 = load i8*, i8** %system_gimprc16, align 8
  %22 = load i8*, i8** %bottom, align 8
  %call17 = call noalias i8* (i8*, ...) @g_strconcat(i8* %19, i8* %21, i8* %22, i8* null)
  store i8* %call17, i8** %header, align 8
  %23 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %verbose = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %23, i32 0, i32 3
  %24 = load i32, i32* %verbose, align 4
  %tobool18 = icmp ne i32 %24, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %do.end
  %25 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %user_gimprc = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %25, i32 0, i32 1
  %26 = load i8*, i8** %user_gimprc, align 8
  %call20 = call i8* @gimp_filename_to_utf8(i8* %26)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* %call20)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %do.end
  %27 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %28 = bitcast %struct._GimpRc* %27 to %struct._GTypeInstance*
  %call22 = call i64 @gimp_config_interface_get_type() #6
  %call23 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call22)
  %29 = bitcast %struct._GTypeInstance* %call23 to %struct._GimpConfig*
  %30 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %user_gimprc24 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %30, i32 0, i32 1
  %31 = load i8*, i8** %user_gimprc24, align 8
  %32 = load i8*, i8** %header, align 8
  %33 = load i8*, i8** %footer, align 8
  %34 = load %struct._GimpRc*, %struct._GimpRc** %global, align 8
  %35 = bitcast %struct._GimpRc* %34 to i8*
  %call25 = call i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %29, i8* %31, i8* %32, i8* %33, i8* %35, %struct._GError** %error)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.end.28, label %if.then.27

if.then.27:                                       ; preds = %if.end.21
  %36 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %36, i32 0, i32 2
  %37 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i8* %37)
  %38 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %38)
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end.21
  %39 = load i8*, i8** %header, align 8
  call void @g_free(i8* %39)
  %40 = load %struct._GimpRc*, %struct._GimpRc** %global, align 8
  %41 = bitcast %struct._GimpRc* %40 to i8*
  call void @g_object_unref(i8* %41)
  br label %return

return:                                           ; preds = %if.end.28, %if.else.9
  ret void
}

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare void @g_print(i8*, ...) #1

declare i8* @gimp_filename_to_utf8(i8*) #1

declare i32 @gimp_config_serialize_to_file(%struct._GimpConfig*, i8*, i8*, i8*, i8*, %struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #3 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_error_free(%struct._GError*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_rc_migrate(%struct._GimpRc* %rc) #3 {
entry:
  %rc.addr = alloca %struct._GimpRc*, align 8
  %pspecs = alloca %struct._GParamSpec**, align 8
  %n_pspecs = alloca i32, align 4
  %i = alloca i32, align 4
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pspec = alloca %struct._GParamSpec*, align 8
  %__inst16 = alloca %struct._GTypeInstance*, align 8
  %__t18 = alloca i64, align 8
  %__r21 = alloca i32, align 4
  %tmp36 = alloca i32, align 4
  %value = alloca %struct._GValue, align 8
  store %struct._GimpRc* %rc, %struct._GimpRc** %rc.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %1 = bitcast %struct._GimpRc* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_rc_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_rc_migrate, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %14 = bitcast %struct._GimpRc* %13 to %struct._GTypeInstance*
  %g_class11 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %14, i32 0, i32 0
  %15 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class11, align 8
  %16 = bitcast %struct._GTypeClass* %15 to %struct._GObjectClass*
  %call12 = call %struct._GParamSpec** @g_object_class_list_properties(%struct._GObjectClass* %16, i32* %n_pspecs)
  store %struct._GParamSpec** %call12, %struct._GParamSpec*** %pspecs, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %n_pspecs, align 4
  %cmp13 = icmp ult i32 %17, %18
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs, align 8
  %arrayidx = getelementptr inbounds %struct._GParamSpec*, %struct._GParamSpec** %20, i64 %idxprom
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %arrayidx, align 8
  store %struct._GParamSpec* %21, %struct._GParamSpec** %pspec, align 8
  %22 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %23 = bitcast %struct._GParamSpec* %22 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %23, %struct._GTypeInstance** %__inst16, align 8
  %call19 = call i64 @gimp_param_config_path_get_type() #6
  store i64 %call19, i64* %__t18, align 8
  %24 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %tobool22 = icmp ne %struct._GTypeInstance* %24, null
  br i1 %tobool22, label %if.else.24, label %if.then.23

if.then.23:                                       ; preds = %for.body
  store i32 0, i32* %__r21, align 4
  br label %if.end.35

if.else.24:                                       ; preds = %for.body
  %25 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %25, i32 0, i32 0
  %26 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %tobool26 = icmp ne %struct._GTypeClass* %26, null
  br i1 %tobool26, label %land.lhs.true.27, label %if.else.32

land.lhs.true.27:                                 ; preds = %if.else.24
  %27 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %g_class28 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class28, align 8
  %g_type29 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type29, align 8
  %30 = load i64, i64* %__t18, align 8
  %cmp30 = icmp eq i64 %29, %30
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %land.lhs.true.27
  store i32 1, i32* %__r21, align 4
  br label %if.end.34

if.else.32:                                       ; preds = %land.lhs.true.27, %if.else.24
  %31 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst16, align 8
  %32 = load i64, i64* %__t18, align 8
  %call33 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %31, i64 %32) #7
  store i32 %call33, i32* %__r21, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.32, %if.then.31
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.23
  %33 = load i32, i32* %__r21, align 4
  store i32 %33, i32* %tmp36
  %34 = load i32, i32* %tmp36
  %tobool37 = icmp ne i32 %34, 0
  br i1 %tobool37, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.end.35
  %35 = bitcast %struct._GValue* %value to i8*
  call void @llvm.memset.p0i8.i64(i8* %35, i8 0, i64 24, i32 8, i1 false)
  %36 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %value_type = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %36, i32 0, i32 3
  %37 = load i64, i64* %value_type, align 8
  %call40 = call %struct._GValue* @g_value_init(%struct._GValue* %value, i64 %37)
  %38 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  call void @g_param_value_set_default(%struct._GParamSpec* %38, %struct._GValue* %value)
  %39 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %40 = bitcast %struct._GimpRc* %39 to %struct._GTypeInstance*
  %call41 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 80)
  %41 = bitcast %struct._GTypeInstance* %call41 to %struct._GObject*
  %42 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %42, i32 0, i32 1
  %43 = load i8*, i8** %name, align 8
  call void @g_object_set_property(%struct._GObject* %41, i8* %43, %struct._GValue* %value)
  call void @g_value_unset(%struct._GValue* %value)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.end.35
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %44 = load i32, i32* %i, align 4
  %inc = add nsw i32 %44, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load %struct._GParamSpec**, %struct._GParamSpec*** %pspecs, align 8
  %46 = bitcast %struct._GParamSpec** %45 to i8*
  call void @g_free(i8* %46)
  br label %return

return:                                           ; preds = %for.end, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_param_config_path_get_type() #2

declare void @g_param_value_set_default(%struct._GParamSpec*, %struct._GValue*) #1

declare void @g_object_set_property(%struct._GObject*, i8*, %struct._GValue*) #1

declare i8* @g_type_class_peek_parent(i8*) #1

declare void @g_type_class_adjust_private_offset(i8*, i32*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_class_init(%struct._GimpRcClass* %klass) #3 {
entry:
  %klass.addr = alloca %struct._GimpRcClass*, align 8
  %object_class = alloca %struct._GObjectClass*, align 8
  store %struct._GimpRcClass* %klass, %struct._GimpRcClass** %klass.addr, align 8
  %0 = load %struct._GimpRcClass*, %struct._GimpRcClass** %klass.addr, align 8
  %1 = bitcast %struct._GimpRcClass* %0 to %struct._GTypeClass*
  %call = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %1, i64 80)
  %2 = bitcast %struct._GTypeClass* %call to %struct._GObjectClass*
  store %struct._GObjectClass* %2, %struct._GObjectClass** %object_class, align 8
  %3 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %3, i32 0, i32 5
  store void (%struct._GObject*)* @gimp_rc_dispose, void (%struct._GObject*)** %dispose, align 8
  %4 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %4, i32 0, i32 6
  store void (%struct._GObject*)* @gimp_rc_finalize, void (%struct._GObject*)** %finalize, align 8
  %5 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %set_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %5, i32 0, i32 3
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_rc_set_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %set_property, align 8
  %6 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %get_property = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %6, i32 0, i32 4
  store void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)* @gimp_rc_get_property, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)** %get_property, align 8
  %7 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call1 = call %struct._GParamSpec* @g_param_spec_boolean(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* null, i8* null, i32 0, i32 7)
  call void @g_object_class_install_property(%struct._GObjectClass* %7, i32 1, %struct._GParamSpec* %call1)
  %8 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call2 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* null, i8* null, i8* null, i32 7)
  call void @g_object_class_install_property(%struct._GObjectClass* %8, i32 2, %struct._GParamSpec* %call2)
  %9 = load %struct._GObjectClass*, %struct._GObjectClass** %object_class, align 8
  %call3 = call %struct._GParamSpec* @g_param_spec_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* null, i8* null, i8* null, i32 7)
  call void @g_object_class_install_property(%struct._GObjectClass* %9, i32 3, %struct._GParamSpec* %call3)
  ret void
}

declare %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_dispose(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %rc = alloca %struct._GimpRc*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rc_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRc*
  store %struct._GimpRc* %2, %struct._GimpRc** %rc, align 8
  %3 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %save_idle_id = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %3, i32 0, i32 5
  %4 = load i32, i32* %save_idle_id, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %call2 = call i32 @gimp_rc_idle_save(%struct._GimpRc* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** @gimp_rc_parent_class, align 8
  %7 = bitcast i8* %6 to %struct._GTypeClass*
  %call3 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %7, i64 80)
  %8 = bitcast %struct._GTypeClass* %call3 to %struct._GObjectClass*
  %dispose = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %8, i32 0, i32 5
  %9 = load void (%struct._GObject*)*, void (%struct._GObject*)** %dispose, align 8
  %10 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %9(%struct._GObject* %10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_finalize(%struct._GObject* %object) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %rc = alloca %struct._GimpRc*, align 8
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rc_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRc*
  store %struct._GimpRc* %2, %struct._GimpRc** %rc, align 8
  %3 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %system_gimprc = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %3, i32 0, i32 2
  %4 = load i8*, i8** %system_gimprc, align 8
  %tobool = icmp ne i8* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %system_gimprc2 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %5, i32 0, i32 2
  %6 = load i8*, i8** %system_gimprc2, align 8
  call void @g_free(i8* %6)
  %7 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %system_gimprc3 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %7, i32 0, i32 2
  store i8* null, i8** %system_gimprc3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %user_gimprc = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %8, i32 0, i32 1
  %9 = load i8*, i8** %user_gimprc, align 8
  %tobool4 = icmp ne i8* %9, null
  br i1 %tobool4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %10 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %user_gimprc6 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %10, i32 0, i32 1
  %11 = load i8*, i8** %user_gimprc6, align 8
  call void @g_free(i8* %11)
  %12 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %user_gimprc7 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %12, i32 0, i32 1
  store i8* null, i8** %user_gimprc7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %if.end
  %13 = load i8*, i8** @gimp_rc_parent_class, align 8
  %14 = bitcast i8* %13 to %struct._GTypeClass*
  %call9 = call %struct._GTypeClass* @g_type_check_class_cast(%struct._GTypeClass* %14, i64 80)
  %15 = bitcast %struct._GTypeClass* %call9 to %struct._GObjectClass*
  %finalize = getelementptr inbounds %struct._GObjectClass, %struct._GObjectClass* %15, i32 0, i32 6
  %16 = load void (%struct._GObject*)*, void (%struct._GObject*)** %finalize, align 8
  %17 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  call void %16(%struct._GObject* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_set_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %rc = alloca %struct._GimpRc*, align 8
  %filename = alloca i8*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rc_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRc*
  store %struct._GimpRc* %2, %struct._GimpRc** %rc, align 8
  store i8* null, i8** %filename, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call2 = call i8* @g_value_get_string(%struct._GValue* %4)
  store i8* %call2, i8** %filename, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i32, i32* %property_id.addr, align 4
  switch i32 %5, label %sw.default.20 [
    i32 1, label %sw.bb.3
    i32 2, label %sw.bb.5
    i32 3, label %sw.bb.11
  ]

sw.bb.3:                                          ; preds = %sw.epilog
  %6 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %call4 = call i32 @g_value_get_boolean(%struct._GValue* %6)
  %7 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %verbose = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %7, i32 0, i32 3
  store i32 %call4, i32* %verbose, align 4
  br label %sw.epilog.25

sw.bb.5:                                          ; preds = %sw.epilog
  %8 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %system_gimprc = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %8, i32 0, i32 2
  %9 = load i8*, i8** %system_gimprc, align 8
  call void @g_free(i8* %9)
  %10 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %10, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.5
  %11 = load i8*, i8** %filename, align 8
  %call6 = call noalias i8* @g_strdup(i8* %11)
  %12 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %system_gimprc7 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %12, i32 0, i32 2
  store i8* %call6, i8** %system_gimprc7, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.5
  %call8 = call i8* @gimp_sysconf_directory() #6
  %call9 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* null)
  %13 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %system_gimprc10 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %13, i32 0, i32 2
  store i8* %call9, i8** %system_gimprc10, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %sw.epilog.25

sw.bb.11:                                         ; preds = %sw.epilog
  %14 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %user_gimprc = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %14, i32 0, i32 1
  %15 = load i8*, i8** %user_gimprc, align 8
  call void @g_free(i8* %15)
  %16 = load i8*, i8** %filename, align 8
  %tobool12 = icmp ne i8* %16, null
  br i1 %tobool12, label %if.then.13, label %if.else.16

if.then.13:                                       ; preds = %sw.bb.11
  %17 = load i8*, i8** %filename, align 8
  %call14 = call noalias i8* @g_strdup(i8* %17)
  %18 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %user_gimprc15 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %18, i32 0, i32 1
  store i8* %call14, i8** %user_gimprc15, align 8
  br label %if.end.19

if.else.16:                                       ; preds = %sw.bb.11
  %call17 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0))
  %19 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %user_gimprc18 = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %19, i32 0, i32 1
  store i8* %call17, i8** %user_gimprc18, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.13
  br label %sw.epilog.25

sw.default.20:                                    ; preds = %sw.epilog
  br label %do.body

do.body:                                          ; preds = %sw.default.20
  %20 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %20, %struct._GObject** %_glib__object, align 8
  %21 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %21, %struct._GParamSpec** %_glib__pspec, align 8
  %22 = load i32, i32* %property_id.addr, align 4
  store i32 %22, i32* %_glib__property_id, align 4
  %23 = load i32, i32* %_glib__property_id, align 4
  %24 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %24, i32 0, i32 1
  %25 = load i8*, i8** %name, align 8
  %26 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %27 = bitcast %struct._GParamSpec* %26 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %27, i32 0, i32 0
  %28 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %28, i32 0, i32 0
  %29 = load i64, i64* %g_type, align 8
  %call21 = call i8* @g_type_name(i64 %29)
  %30 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %31 = bitcast %struct._GObject* %30 to %struct._GTypeInstance*
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %31, i32 0, i32 0
  %32 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %g_type23 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %32, i32 0, i32 0
  %33 = load i64, i64* %g_type23, align 8
  %call24 = call i8* @g_type_name(i64 %33)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 192, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %23, i8* %25, i8* %call21, i8* %call24)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog.25

sw.epilog.25:                                     ; preds = %do.end, %if.end.19, %if.end, %sw.bb.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_get_property(%struct._GObject* %object, i32 %property_id, %struct._GValue* %value, %struct._GParamSpec* %pspec) #3 {
entry:
  %object.addr = alloca %struct._GObject*, align 8
  %property_id.addr = alloca i32, align 4
  %value.addr = alloca %struct._GValue*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %rc = alloca %struct._GimpRc*, align 8
  %_glib__object = alloca %struct._GObject*, align 8
  %_glib__pspec = alloca %struct._GParamSpec*, align 8
  %_glib__property_id = alloca i32, align 4
  store %struct._GObject* %object, %struct._GObject** %object.addr, align 8
  store i32 %property_id, i32* %property_id.addr, align 4
  store %struct._GValue* %value, %struct._GValue** %value.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  %0 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  %1 = bitcast %struct._GObject* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_rc_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpRc*
  store %struct._GimpRc* %2, %struct._GimpRc** %rc, align 8
  %3 = load i32, i32* %property_id.addr, align 4
  switch i32 %3, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  %4 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %5 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %verbose = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %5, i32 0, i32 3
  %6 = load i32, i32* %verbose, align 4
  call void @g_value_set_boolean(%struct._GValue* %4, i32 %6)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %7 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %8 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %system_gimprc = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %8, i32 0, i32 2
  %9 = load i8*, i8** %system_gimprc, align 8
  call void @g_value_set_string(%struct._GValue* %7, i8* %9)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %entry
  %10 = load %struct._GValue*, %struct._GValue** %value.addr, align 8
  %11 = load %struct._GimpRc*, %struct._GimpRc** %rc, align 8
  %user_gimprc = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %11, i32 0, i32 1
  %12 = load i8*, i8** %user_gimprc, align 8
  call void @g_value_set_string(%struct._GValue* %10, i8* %12)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %sw.default
  %13 = load %struct._GObject*, %struct._GObject** %object.addr, align 8
  store %struct._GObject* %13, %struct._GObject** %_glib__object, align 8
  %14 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._GParamSpec* %14, %struct._GParamSpec** %_glib__pspec, align 8
  %15 = load i32, i32* %property_id.addr, align 4
  store i32 %15, i32* %_glib__property_id, align 4
  %16 = load i32, i32* %_glib__property_id, align 4
  %17 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %name = getelementptr inbounds %struct._GParamSpec, %struct._GParamSpec* %17, i32 0, i32 1
  %18 = load i8*, i8** %name, align 8
  %19 = load %struct._GParamSpec*, %struct._GParamSpec** %_glib__pspec, align 8
  %20 = bitcast %struct._GParamSpec* %19 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %20, i32 0, i32 0
  %21 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %g_type = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %21, i32 0, i32 0
  %22 = load i64, i64* %g_type, align 8
  %call4 = call i8* @g_type_name(i64 %22)
  %23 = load %struct._GObject*, %struct._GObject** %_glib__object, align 8
  %24 = bitcast %struct._GObject* %23 to %struct._GTypeInstance*
  %g_class5 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %24, i32 0, i32 0
  %25 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class5, align 8
  %g_type6 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %25, i32 0, i32 0
  %26 = load i64, i64* %g_type6, align 8
  %call7 = call i8* @g_type_name(i64 %26)
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 217, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i32 %16, i8* %18, i8* %call4, i8* %call7)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb.3, %sw.bb.2, %sw.bb
  ret void
}

declare void @g_object_class_install_property(%struct._GObjectClass*, i32, %struct._GParamSpec*) #1

declare %struct._GParamSpec* @g_param_spec_boolean(i8*, i8*, i8*, i32, i32) #1

declare %struct._GParamSpec* @g_param_spec_string(i8*, i8*, i8*, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_rc_idle_save(%struct._GimpRc* %rc) #3 {
entry:
  %rc.addr = alloca %struct._GimpRc*, align 8
  store %struct._GimpRc* %rc, %struct._GimpRc** %rc.addr, align 8
  %0 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  call void @gimp_rc_save(%struct._GimpRc* %0)
  %1 = load %struct._GimpRc*, %struct._GimpRc** %rc.addr, align 8
  %save_idle_id = getelementptr inbounds %struct._GimpRc, %struct._GimpRc* %1, i32 0, i32 5
  store i32 0, i32* %save_idle_id, align 4
  ret i32 0
}

declare i8* @g_value_get_string(%struct._GValue*) #1

declare i32 @g_value_get_boolean(%struct._GValue*) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone
declare i8* @gimp_sysconf_directory() #2

declare noalias i8* @gimp_personal_rc_file(i8*) #1

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
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
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

declare void @g_value_set_boolean(%struct._GValue*, i32) #1

declare void @g_value_set_string(%struct._GValue*, i8*) #1

declare i32 @gimp_rc_serialize(%struct._GimpConfig*, %struct._GimpConfigWriter*, i8*) #1

declare i32 @gimp_rc_deserialize(%struct._GimpConfig*, %struct._GScanner*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._GimpConfig* @gimp_rc_duplicate(%struct._GimpConfig* %config) #3 {
entry:
  %config.addr = alloca %struct._GimpConfig*, align 8
  %dup = alloca %struct._GimpConfig*, align 8
  store %struct._GimpConfig* %config, %struct._GimpConfig** %config.addr, align 8
  %call = call i64 @gimp_rc_get_type() #6
  %call1 = call i8* (i64, i8*, ...) @g_object_new(i64 %call, i8* null)
  %0 = bitcast i8* %call1 to %struct._GimpConfig*
  store %struct._GimpConfig* %0, %struct._GimpConfig** %dup, align 8
  %1 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %2 = bitcast %struct._GimpConfig* %1 to %struct._GTypeInstance*
  %call2 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %2, i64 80)
  %3 = bitcast %struct._GTypeInstance* %call2 to %struct._GObject*
  %4 = load %struct._GimpConfig*, %struct._GimpConfig** %dup, align 8
  %5 = bitcast %struct._GimpConfig* %4 to %struct._GTypeInstance*
  %call3 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %5, i64 80)
  %6 = bitcast %struct._GTypeInstance* %call3 to %struct._GObject*
  %call4 = call i32 @gimp_config_sync(%struct._GObject* %3, %struct._GObject* %6, i32 0)
  %7 = load %struct._GimpConfig*, %struct._GimpConfig** %config.addr, align 8
  %8 = load %struct._GimpConfig*, %struct._GimpConfig** %dup, align 8
  %9 = bitcast %struct._GimpConfig* %8 to i8*
  call void @gimp_rc_foreach_unknown_token(%struct._GimpConfig* %7, void (i8*, i8*, i8*)* @gimp_rc_duplicate_unknown_token, i8* %9)
  %10 = load %struct._GimpConfig*, %struct._GimpConfig** %dup, align 8
  ret %struct._GimpConfig* %10
}

declare i32 @gimp_config_sync(%struct._GObject*, %struct._GObject*, i32) #1

declare void @gimp_rc_foreach_unknown_token(%struct._GimpConfig*, void (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_rc_duplicate_unknown_token(i8* %key, i8* %value, i8* %user_data) #3 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %user_data.addr = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_config_interface_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpConfig*
  %3 = load i8*, i8** %key.addr, align 8
  %4 = load i8*, i8** %value.addr, align 8
  call void @gimp_rc_add_unknown_token(%struct._GimpConfig* %2, i8* %3, i8* %4)
  ret void
}

declare void @g_clear_error(%struct._GError**) #1

declare i32 @gimp_config_file_backup_on_error(i8*, i8*, %struct._GError**) #1

declare i32 @g_idle_add(i32 (i8*)*, i8*) #1

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
