; ModuleID = './libgimpconfig/gimpconfig-path.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTypeInfo = type { i16, void (i8*)*, void (i8*)*, void (i8*, i8*)*, void (i8*, i8*)*, i8*, i16, i16, void (%struct._GTypeInstance*, i8*)*, %struct._GTypeValueTable* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GTypeValueTable = type { void (%struct._GValue*)*, void (%struct._GValue*)*, void (%struct._GValue*, %struct._GValue*)*, i8* (%struct._GValue*)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)*, i8*, i8* (%struct._GValue*, i32, %union._GTypeCValue*, i32)* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%union._GTypeCValue = type opaque
%struct._GParamSpecClass = type { %struct._GTypeClass, i64, void (%struct._GParamSpec*)*, void (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*)*, i32 (%struct._GParamSpec*, %struct._GValue*, %struct._GValue*)*, [4 x i8*] }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GData = type opaque
%struct._GParamSpecString = type { %struct._GParamSpec, i8*, i8*, i8*, i8, i8 }
%struct._GimpParamSpecConfigPath = type { %struct._GParamSpecString, i32 }
%struct._GError = type { i32, i32, i8* }

@gimp_config_path_get_type.path_type = internal global i64 0, align 8
@gimp_config_path_get_type.type_info = internal constant %struct._GTypeInfo zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"GimpConfigPath\00", align 1
@gimp_param_config_path_get_type.spec_type = internal global i64 0, align 8
@gimp_param_config_path_get_type.type_info = internal constant %struct._GTypeInfo { i16 80, void (i8*)* null, void (i8*)* null, void (i8*, i8*)* bitcast (void (%struct._GParamSpecClass*)* @gimp_param_config_path_class_init to void (i8*, i8*)*), void (i8*, i8*)* null, i8* null, i16 112, i16 0, void (%struct._GTypeInstance*, i8*)* null, %struct._GTypeValueTable* null }, align 8
@g_param_spec_types = external global i64*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"GimpParamConfigPath\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"LibGimpConfig\00", align 1
@__func__.gimp_param_spec_config_path_type = private unnamed_addr constant [33 x i8] c"gimp_param_spec_config_path_type\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"GIMP_IS_PARAM_SPEC_CONFIG_PATH (pspec)\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"${gimp_dir}\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"${gimp_data_dir}\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"${gimp_plug_in_dir}\00", align 1
@__func__.gimp_config_path_expand = private unnamed_addr constant [24 x i8] c"gimp_config_path_expand\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"path != NULL\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"gimp_dir\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"gimp_data_dir\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"gimp_plug_in_dir\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"gimp_plugin_dir\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"gimp_sysconf_dir\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"gimp_installation_dir\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"Cannot expand ${%s}\00", align 1
@g_utf8_skip = external constant i8*, align 8
@.str.19 = private unnamed_addr constant [3 x i8] c"${\00", align 1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_config_path_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_config_path_get_type.path_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i64 @g_type_register_static(i64 64, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), %struct._GTypeInfo* @gimp_config_path_get_type.type_info, i32 0)
  store i64 %call, i64* @gimp_config_path_get_type.path_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i64, i64* @gimp_config_path_get_type.path_type, align 8
  ret i64 %1
}

declare i64 @g_type_register_static(i64, i8*, %struct._GTypeInfo*, i32) #1

; Function Attrs: nounwind readnone uwtable
define i64 @gimp_param_config_path_get_type() #0 {
entry:
  %0 = load i64, i64* @gimp_param_config_path_get_type.spec_type, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i64*, i64** @g_param_spec_types, align 8
  %arrayidx = getelementptr inbounds i64, i64* %1, i64 14
  %2 = load i64, i64* %arrayidx, align 8
  %call = call i64 @g_type_register_static(i64 %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), %struct._GTypeInfo* @gimp_param_config_path_get_type.type_info, i32 0)
  store i64 %call, i64* @gimp_param_config_path_get_type.spec_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, i64* @gimp_param_config_path_get_type.spec_type, align 8
  ret i64 %3
}

; Function Attrs: nounwind uwtable
define internal void @gimp_param_config_path_class_init(%struct._GParamSpecClass* %class) #2 {
entry:
  %class.addr = alloca %struct._GParamSpecClass*, align 8
  store %struct._GParamSpecClass* %class, %struct._GParamSpecClass** %class.addr, align 8
  %call = call i64 @gimp_config_path_get_type() #7
  %0 = load %struct._GParamSpecClass*, %struct._GParamSpecClass** %class.addr, align 8
  %value_type = getelementptr inbounds %struct._GParamSpecClass, %struct._GParamSpecClass* %0, i32 0, i32 1
  store i64 %call, i64* %value_type, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GParamSpec* @gimp_param_spec_config_path(i8* %name, i8* %nick, i8* %blurb, i32 %type, i8* %default_value, i32 %flags) #2 {
entry:
  %name.addr = alloca i8*, align 8
  %nick.addr = alloca i8*, align 8
  %blurb.addr = alloca i8*, align 8
  %type.addr = alloca i32, align 4
  %default_value.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %pspec = alloca %struct._GParamSpecString*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8* %nick, i8** %nick.addr, align 8
  store i8* %blurb, i8** %blurb.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %default_value, i8** %default_value.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %call = call i64 @gimp_param_config_path_get_type() #7
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %nick.addr, align 8
  %2 = load i8*, i8** %blurb.addr, align 8
  %3 = load i32, i32* %flags.addr, align 4
  %call1 = call i8* @g_param_spec_internal(i64 %call, i8* %0, i8* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call1 to %struct._GParamSpecString*
  store %struct._GParamSpecString* %4, %struct._GParamSpecString** %pspec, align 8
  %5 = load i8*, i8** %default_value.addr, align 8
  %call2 = call noalias i8* @g_strdup(i8* %5)
  %6 = load %struct._GParamSpecString*, %struct._GParamSpecString** %pspec, align 8
  %default_value3 = getelementptr inbounds %struct._GParamSpecString, %struct._GParamSpecString* %6, i32 0, i32 1
  store i8* %call2, i8** %default_value3, align 8
  %7 = load i32, i32* %type.addr, align 4
  %8 = load %struct._GParamSpecString*, %struct._GParamSpecString** %pspec, align 8
  %9 = bitcast %struct._GParamSpecString* %8 to %struct._GTypeInstance*
  %call4 = call i64 @gimp_param_config_path_get_type() #7
  %call5 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %9, i64 %call4)
  %10 = bitcast %struct._GTypeInstance* %call5 to %struct._GimpParamSpecConfigPath*
  %type6 = getelementptr inbounds %struct._GimpParamSpecConfigPath, %struct._GimpParamSpecConfigPath* %10, i32 0, i32 1
  store i32 %7, i32* %type6, align 4
  %11 = load %struct._GParamSpecString*, %struct._GParamSpecString** %pspec, align 8
  %12 = bitcast %struct._GParamSpecString* %11 to %struct._GTypeInstance*
  %call7 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %12, i64 76)
  %13 = bitcast %struct._GTypeInstance* %call7 to %struct._GParamSpec*
  ret %struct._GParamSpec* %13
}

declare i8* @g_param_spec_internal(i64, i8*, i8*, i8*, i32) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @gimp_param_spec_config_path_type(%struct._GParamSpec* %pspec) #2 {
entry:
  %retval = alloca i32, align 4
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %1 = bitcast %struct._GParamSpec* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_param_config_path_get_type() #7
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_param_spec_config_path_type, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GParamSpec*, %struct._GParamSpec** %pspec.addr, align 8
  %14 = bitcast %struct._GParamSpec* %13 to %struct._GTypeInstance*
  %call11 = call i64 @gimp_param_config_path_get_type() #7
  %call12 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %14, i64 %call11)
  %15 = bitcast %struct._GTypeInstance* %call12 to %struct._GimpParamSpecConfigPath*
  %type = getelementptr inbounds %struct._GimpParamSpecConfigPath, %struct._GimpParamSpecConfigPath* %15, i32 0, i32 1
  %16 = load i32, i32* %type, align 4
  store i32 %16, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.else.9
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #3

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_config_build_data_path(i8* %name) #2 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* %1, i8* null)
  ret i8* %call
}

declare noalias i8* @g_strconcat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_config_build_plug_in_path(i8* %name) #2 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8*, i8** %name.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* %1, i8* null)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_config_build_writable_path(i8* %name) #2 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8* %0, i8* null)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_config_path_expand(i8* %path, i32 %recode, %struct._GError** %error) #2 {
entry:
  %retval = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %recode.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %retval9 = alloca i8*, align 8
  %expanded = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 %recode, i32* %recode.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %path.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_config_path_expand, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp2 = icmp eq %struct._GError** %1, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %3 = load %struct._GError*, %struct._GError** %2, align 8
  %cmp3 = icmp eq %struct._GError* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_config_path_expand, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %4 = load i32, i32* %recode.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %do.end.7
  %5 = load i8*, i8** %path.addr, align 8
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call noalias i8* @gimp_config_path_expand_only(i8* %5, %struct._GError** %6)
  store i8* %call, i8** %expanded, align 8
  %7 = load i8*, i8** %expanded, align 8
  %tobool10 = icmp ne i8* %7, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.then.8
  store i8* null, i8** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  %8 = load i8*, i8** %expanded, align 8
  %9 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call13 = call noalias i8* @g_filename_from_utf8(i8* %8, i64 -1, i64* null, i64* null, %struct._GError** %9)
  store i8* %call13, i8** %retval9, align 8
  %10 = load i8*, i8** %expanded, align 8
  call void @g_free(i8* %10)
  %11 = load i8*, i8** %retval9, align 8
  store i8* %11, i8** %retval
  br label %return

if.end.14:                                        ; preds = %do.end.7
  %12 = load i8*, i8** %path.addr, align 8
  %13 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call15 = call noalias i8* @gimp_config_path_expand_only(i8* %12, %struct._GError** %13)
  store i8* %call15, i8** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.end.12, %if.then.11, %if.else.5, %if.else
  %14 = load i8*, i8** %retval
  ret i8* %14
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @gimp_config_path_expand_only(i8* %path, %struct._GError** %error) #2 {
entry:
  %retval = alloca i8*, align 8
  %path.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %home = alloca i8*, align 8
  %p = alloca i8*, align 8
  %s = alloca i8*, align 8
  %n = alloca i8*, align 8
  %token = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %expanded = alloca i8*, align 8
  %substs = alloca i8**, align 8
  %n_substs = alloca i32, align 4
  %length = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %path, i8** %path.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %filename, align 8
  store i8* null, i8** %expanded, align 8
  store i8** null, i8*** %substs, align 8
  store i32 0, i32* %n_substs, align 4
  store i32 0, i32* %length, align 4
  %call = call i8* @g_get_home_dir()
  store i8* %call, i8** %home, align 8
  %0 = load i8*, i8** %home, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %home, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %1)
  store i8* %call1, i8** %home, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %path.addr, align 8
  store i8* %2, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.110, %if.end
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %tobool2 = icmp ne i8 %4, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, 126
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %7 = load i8*, i8** %home, align 8
  %tobool4 = icmp ne i8* %7, null
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %8 = load i8*, i8** %home, align 8
  %call6 = call i64 @strlen(i8* %8) #8
  %9 = load i32, i32* %length, align 4
  %conv7 = sext i32 %9 to i64
  %add = add i64 %conv7, %call6
  %conv8 = trunc i64 %add to i32
  store i32 %conv8, i32* %length, align 4
  %10 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 1
  store i8* %add.ptr, i8** %p, align 8
  br label %if.end.110

if.else:                                          ; preds = %land.lhs.true, %while.body
  %call9 = call i8* @gimp_config_path_extract_token(i8** %p)
  store i8* %call9, i8** %token, align 8
  %cmp10 = icmp ne i8* %call9, null
  br i1 %cmp10, label %if.then.12, label %if.else.100

if.then.12:                                       ; preds = %if.else
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.12
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %n_substs, align 4
  %cmp13 = icmp ult i32 %11, %12
  br i1 %cmp13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4
  %mul = mul nsw i32 2, %13
  %idxprom = sext i32 %mul to i64
  %14 = load i8**, i8*** %substs, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  %15 = load i8*, i8** %arrayidx, align 8
  %16 = load i8*, i8** %token, align 8
  %call15 = call i32 @strcmp(i8* %15, i8* %16) #8
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.body
  br label %for.end

if.end.19:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.18, %for.cond
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %n_substs, align 4
  %cmp20 = icmp ult i32 %18, %19
  br i1 %cmp20, label %if.then.22, label %if.else.27

if.then.22:                                       ; preds = %for.end
  %20 = load i32, i32* %i, align 4
  %mul23 = mul nsw i32 2, %20
  %add24 = add nsw i32 %mul23, 1
  %idxprom25 = sext i32 %add24 to i64
  %21 = load i8**, i8*** %substs, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %21, i64 %idxprom25
  %22 = load i8*, i8** %arrayidx26, align 8
  store i8* %22, i8** %s, align 8
  br label %if.end.69

if.else.27:                                       ; preds = %for.end
  store i8* null, i8** %s, align 8
  %23 = load i8*, i8** %token, align 8
  %call28 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #8
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then.31, label %if.else.33

if.then.31:                                       ; preds = %if.else.27
  %call32 = call i8* @gimp_directory() #7
  store i8* %call32, i8** %s, align 8
  br label %if.end.64

if.else.33:                                       ; preds = %if.else.27
  %24 = load i8*, i8** %token, align 8
  %call34 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0)) #8
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.else.33
  %call38 = call i8* @gimp_data_directory() #7
  store i8* %call38, i8** %s, align 8
  br label %if.end.63

if.else.39:                                       ; preds = %if.else.33
  %25 = load i8*, i8** %token, align 8
  %call40 = call i32 @strcmp(i8* %25, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0)) #8
  %cmp41 = icmp eq i32 %call40, 0
  br i1 %cmp41, label %if.then.46, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.39
  %26 = load i8*, i8** %token, align 8
  %call43 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0)) #8
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.then.46, label %if.else.48

if.then.46:                                       ; preds = %lor.lhs.false, %if.else.39
  %call47 = call i8* @gimp_plug_in_directory() #7
  store i8* %call47, i8** %s, align 8
  br label %if.end.62

if.else.48:                                       ; preds = %lor.lhs.false
  %27 = load i8*, i8** %token, align 8
  %call49 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0)) #8
  %cmp50 = icmp eq i32 %call49, 0
  br i1 %cmp50, label %if.then.52, label %if.else.54

if.then.52:                                       ; preds = %if.else.48
  %call53 = call i8* @gimp_sysconf_directory() #7
  store i8* %call53, i8** %s, align 8
  br label %if.end.61

if.else.54:                                       ; preds = %if.else.48
  %28 = load i8*, i8** %token, align 8
  %call55 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0)) #8
  %cmp56 = icmp eq i32 %call55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.60

if.then.58:                                       ; preds = %if.else.54
  %call59 = call i8* @gimp_installation_directory() #7
  store i8* %call59, i8** %s, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.58, %if.else.54
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.52
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.46
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.then.37
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.31
  %29 = load i8*, i8** %s, align 8
  %tobool65 = icmp ne i8* %29, null
  br i1 %tobool65, label %if.end.68, label %if.then.66

if.then.66:                                       ; preds = %if.end.64
  %30 = load i8*, i8** %token, align 8
  %call67 = call i8* @g_getenv(i8* %30)
  store i8* %call67, i8** %s, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.end.64
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.then.22
  %31 = load i8*, i8** %s, align 8
  %tobool70 = icmp ne i8* %31, null
  br i1 %tobool70, label %if.end.74, label %if.then.71

if.then.71:                                       ; preds = %if.end.69
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call72 = call i32 @gimp_config_error_quark() #7
  %call73 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i32 0, i32 0)) #9
  %33 = load i8*, i8** %token, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %32, i32 %call72, i32 3, i8* %call73, i8* %33)
  %34 = load i8*, i8** %token, align 8
  call void @g_free(i8* %34)
  br label %cleanup

if.end.74:                                        ; preds = %if.end.69
  %35 = load i32, i32* %n_substs, align 4
  %rem = urem i32 %35, 4
  %cmp75 = icmp eq i32 %rem, 0
  br i1 %cmp75, label %if.then.77, label %if.end.82

if.then.77:                                       ; preds = %if.end.74
  %36 = load i8**, i8*** %substs, align 8
  %37 = bitcast i8** %36 to i8*
  %38 = load i32, i32* %n_substs, align 4
  %add78 = add i32 %38, 4
  %mul79 = mul i32 2, %add78
  %conv80 = zext i32 %mul79 to i64
  %call81 = call i8* @g_realloc_n(i8* %37, i64 %conv80, i64 8)
  %39 = bitcast i8* %call81 to i8**
  store i8** %39, i8*** %substs, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.77, %if.end.74
  %40 = load i8*, i8** %token, align 8
  %41 = load i32, i32* %n_substs, align 4
  %mul83 = mul i32 2, %41
  %idxprom84 = zext i32 %mul83 to i64
  %42 = load i8**, i8*** %substs, align 8
  %arrayidx85 = getelementptr inbounds i8*, i8** %42, i64 %idxprom84
  store i8* %40, i8** %arrayidx85, align 8
  %43 = load i8*, i8** %s, align 8
  %call86 = call i8* @gimp_filename_to_utf8(i8* %43)
  %44 = load i32, i32* %n_substs, align 4
  %mul87 = mul i32 2, %44
  %add88 = add i32 %mul87, 1
  %idxprom89 = zext i32 %add88 to i64
  %45 = load i8**, i8*** %substs, align 8
  %arrayidx90 = getelementptr inbounds i8*, i8** %45, i64 %idxprom89
  store i8* %call86, i8** %arrayidx90, align 8
  %46 = load i32, i32* %n_substs, align 4
  %mul91 = mul i32 2, %46
  %add92 = add i32 %mul91, 1
  %idxprom93 = zext i32 %add92 to i64
  %47 = load i8**, i8*** %substs, align 8
  %arrayidx94 = getelementptr inbounds i8*, i8** %47, i64 %idxprom93
  %48 = load i8*, i8** %arrayidx94, align 8
  %call95 = call i64 @strlen(i8* %48) #8
  %49 = load i32, i32* %length, align 4
  %conv96 = sext i32 %49 to i64
  %add97 = add i64 %conv96, %call95
  %conv98 = trunc i64 %add97 to i32
  store i32 %conv98, i32* %length, align 4
  %50 = load i32, i32* %n_substs, align 4
  %inc99 = add i32 %50, 1
  store i32 %inc99, i32* %n_substs, align 4
  br label %if.end.109

if.else.100:                                      ; preds = %if.else
  %51 = load i8*, i8** %p, align 8
  %52 = load i8, i8* %51, align 1
  %idxprom101 = zext i8 %52 to i64
  %53 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx102 = getelementptr inbounds i8, i8* %53, i64 %idxprom101
  %54 = load i8, i8* %arrayidx102, align 1
  %conv103 = sext i8 %54 to i32
  %55 = load i32, i32* %length, align 4
  %add104 = add nsw i32 %55, %conv103
  store i32 %add104, i32* %length, align 4
  %56 = load i8*, i8** %p, align 8
  %57 = load i8*, i8** %p, align 8
  %58 = load i8, i8* %57, align 1
  %idxprom105 = zext i8 %58 to i64
  %59 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx106 = getelementptr inbounds i8, i8* %59, i64 %idxprom105
  %60 = load i8, i8* %arrayidx106, align 1
  %conv107 = sext i8 %60 to i32
  %idx.ext = sext i32 %conv107 to i64
  %add.ptr108 = getelementptr inbounds i8, i8* %56, i64 %idx.ext
  store i8* %add.ptr108, i8** %p, align 8
  br label %if.end.109

if.end.109:                                       ; preds = %if.else.100, %if.end.82
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.109, %if.then.5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %61 = load i32, i32* %n_substs, align 4
  %cmp111 = icmp eq i32 %61, 0
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %while.end
  %62 = load i8*, i8** %path.addr, align 8
  %call114 = call noalias i8* @g_strdup(i8* %62)
  store i8* %call114, i8** %retval
  br label %return

if.end.115:                                       ; preds = %while.end
  %63 = load i32, i32* %length, align 4
  %add116 = add nsw i32 %63, 1
  %conv117 = sext i32 %add116 to i64
  %call118 = call noalias i8* @g_malloc_n(i64 %conv117, i64 1)
  store i8* %call118, i8** %expanded, align 8
  %64 = load i8*, i8** %path.addr, align 8
  store i8* %64, i8** %p, align 8
  %65 = load i8*, i8** %expanded, align 8
  store i8* %65, i8** %n, align 8
  br label %while.cond.119

while.cond.119:                                   ; preds = %if.end.162, %if.end.115
  %66 = load i8*, i8** %p, align 8
  %67 = load i8, i8* %66, align 1
  %tobool120 = icmp ne i8 %67, 0
  br i1 %tobool120, label %while.body.121, label %while.end.163

while.body.121:                                   ; preds = %while.cond.119
  %68 = load i8*, i8** %p, align 8
  %69 = load i8, i8* %68, align 1
  %conv122 = sext i8 %69 to i32
  %cmp123 = icmp eq i32 %conv122, 126
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.132

land.lhs.true.125:                                ; preds = %while.body.121
  %70 = load i8*, i8** %home, align 8
  %tobool126 = icmp ne i8* %70, null
  br i1 %tobool126, label %if.then.127, label %if.else.132

if.then.127:                                      ; preds = %land.lhs.true.125
  %71 = load i8*, i8** %n, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %n, align 8
  %73 = load i8*, i8** %home, align 8
  %call128 = call i8* @strcat(i8* %72, i8* %73) #9
  %74 = load i8*, i8** %home, align 8
  %call129 = call i64 @strlen(i8* %74) #8
  %75 = load i8*, i8** %n, align 8
  %add.ptr130 = getelementptr inbounds i8, i8* %75, i64 %call129
  store i8* %add.ptr130, i8** %n, align 8
  %76 = load i8*, i8** %p, align 8
  %add.ptr131 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %add.ptr131, i8** %p, align 8
  br label %if.end.162

if.else.132:                                      ; preds = %land.lhs.true.125, %while.body.121
  %call133 = call i8* @gimp_config_path_extract_token(i8** %p)
  store i8* %call133, i8** %token, align 8
  %cmp134 = icmp ne i8* %call133, null
  br i1 %cmp134, label %if.then.136, label %if.else.159

if.then.136:                                      ; preds = %if.else.132
  store i32 0, i32* %i, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.156, %if.then.136
  %77 = load i32, i32* %i, align 4
  %78 = load i32, i32* %n_substs, align 4
  %cmp138 = icmp ult i32 %77, %78
  br i1 %cmp138, label %for.body.140, label %for.end.158

for.body.140:                                     ; preds = %for.cond.137
  %79 = load i32, i32* %i, align 4
  %mul141 = mul nsw i32 2, %79
  %idxprom142 = sext i32 %mul141 to i64
  %80 = load i8**, i8*** %substs, align 8
  %arrayidx143 = getelementptr inbounds i8*, i8** %80, i64 %idxprom142
  %81 = load i8*, i8** %arrayidx143, align 8
  %82 = load i8*, i8** %token, align 8
  %call144 = call i32 @strcmp(i8* %81, i8* %82) #8
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %if.then.147, label %if.end.155

if.then.147:                                      ; preds = %for.body.140
  %83 = load i32, i32* %i, align 4
  %mul148 = mul nsw i32 2, %83
  %add149 = add nsw i32 %mul148, 1
  %idxprom150 = sext i32 %add149 to i64
  %84 = load i8**, i8*** %substs, align 8
  %arrayidx151 = getelementptr inbounds i8*, i8** %84, i64 %idxprom150
  %85 = load i8*, i8** %arrayidx151, align 8
  store i8* %85, i8** %s, align 8
  %86 = load i8*, i8** %n, align 8
  store i8 0, i8* %86, align 1
  %87 = load i8*, i8** %n, align 8
  %88 = load i8*, i8** %s, align 8
  %call152 = call i8* @strcat(i8* %87, i8* %88) #9
  %89 = load i8*, i8** %s, align 8
  %call153 = call i64 @strlen(i8* %89) #8
  %90 = load i8*, i8** %n, align 8
  %add.ptr154 = getelementptr inbounds i8, i8* %90, i64 %call153
  store i8* %add.ptr154, i8** %n, align 8
  br label %for.end.158

if.end.155:                                       ; preds = %for.body.140
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.155
  %91 = load i32, i32* %i, align 4
  %inc157 = add nsw i32 %91, 1
  store i32 %inc157, i32* %i, align 4
  br label %for.cond.137

for.end.158:                                      ; preds = %if.then.147, %for.cond.137
  %92 = load i8*, i8** %token, align 8
  call void @g_free(i8* %92)
  br label %if.end.161

if.else.159:                                      ; preds = %if.else.132
  %93 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %n, align 8
  %incdec.ptr160 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr160, i8** %n, align 8
  store i8 %94, i8* %95, align 1
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.159, %for.end.158
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %if.then.127
  br label %while.cond.119

while.end.163:                                    ; preds = %while.cond.119
  %96 = load i8*, i8** %n, align 8
  store i8 0, i8* %96, align 1
  br label %cleanup

cleanup:                                          ; preds = %while.end.163, %if.then.71
  store i32 0, i32* %i, align 4
  br label %for.cond.164

for.cond.164:                                     ; preds = %for.inc.171, %cleanup
  %97 = load i32, i32* %i, align 4
  %98 = load i32, i32* %n_substs, align 4
  %cmp165 = icmp ult i32 %97, %98
  br i1 %cmp165, label %for.body.167, label %for.end.173

for.body.167:                                     ; preds = %for.cond.164
  %99 = load i32, i32* %i, align 4
  %mul168 = mul nsw i32 2, %99
  %idxprom169 = sext i32 %mul168 to i64
  %100 = load i8**, i8*** %substs, align 8
  %arrayidx170 = getelementptr inbounds i8*, i8** %100, i64 %idxprom169
  %101 = load i8*, i8** %arrayidx170, align 8
  call void @g_free(i8* %101)
  br label %for.inc.171

for.inc.171:                                      ; preds = %for.body.167
  %102 = load i32, i32* %i, align 4
  %inc172 = add nsw i32 %102, 1
  store i32 %inc172, i32* %i, align 4
  br label %for.cond.164

for.end.173:                                      ; preds = %for.cond.164
  %103 = load i8**, i8*** %substs, align 8
  %104 = bitcast i8** %103 to i8*
  call void @g_free(i8* %104)
  %105 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %105)
  %106 = load i8*, i8** %expanded, align 8
  store i8* %106, i8** %retval
  br label %return

return:                                           ; preds = %for.end.173, %if.then.113
  %107 = load i8*, i8** %retval
  ret i8* %107
}

declare noalias i8* @g_filename_from_utf8(i8*, i64, i64*, i64*, %struct._GError**) #1

declare void @g_free(i8*) #1

declare i8* @g_get_home_dir() #1

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal i8* @gimp_config_path_extract_token(i8** %str) #4 {
entry:
  %retval = alloca i8*, align 8
  %str.addr = alloca i8**, align 8
  %p = alloca i8*, align 8
  %token = alloca i8*, align 8
  store i8** %str, i8*** %str.addr, align 8
  %0 = load i8**, i8*** %str.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i64 2) #8
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8**, i8*** %str.addr, align 8
  %3 = load i8*, i8** %2, align 8
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 2
  store i8* %add.ptr, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i8*, i8** %p, align 8
  %5 = load i8, i8* %4, align 1
  %conv = sext i8 %5 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br i1 %tobool1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv2 = sext i8 %7 to i32
  %cmp = icmp ne i32 %conv2, 125
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i8*, i8** %p, align 8
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %idxprom = zext i8 %11 to i64
  %12 = load i8*, i8** @g_utf8_skip, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv4 = sext i8 %13 to i32
  %idx.ext = sext i32 %conv4 to i64
  %add.ptr5 = getelementptr inbounds i8, i8* %9, i64 %idx.ext
  store i8* %add.ptr5, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %tobool6 = icmp ne i8 %15, 0
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %while.end
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %while.end
  %16 = load i8**, i8*** %str.addr, align 8
  %17 = load i8*, i8** %16, align 8
  %add.ptr9 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8**, i8*** %str.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %add.ptr10 = getelementptr inbounds i8, i8* %19, i64 2
  %20 = load i8*, i8** %p, align 8
  %call11 = call i64 @g_utf8_pointer_to_offset(i8* %add.ptr10, i8* %20) #8
  %call12 = call noalias i8* @g_strndup(i8* %add.ptr9, i64 %call11)
  store i8* %call12, i8** %token, align 8
  %21 = load i8*, i8** %p, align 8
  %add.ptr13 = getelementptr inbounds i8, i8* %21, i64 1
  %22 = load i8**, i8*** %str.addr, align 8
  store i8* %add.ptr13, i8** %22, align 8
  %23 = load i8*, i8** %token, align 8
  store i8* %23, i8** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then
  %24 = load i8*, i8** %retval
  ret i8* %24
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #5

; Function Attrs: nounwind readnone
declare i8* @gimp_data_directory() #5

; Function Attrs: nounwind readnone
declare i8* @gimp_plug_in_directory() #5

; Function Attrs: nounwind readnone
declare i8* @gimp_sysconf_directory() #5

; Function Attrs: nounwind readnone
declare i8* @gimp_installation_directory() #5

declare i8* @g_getenv(i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_config_error_quark() #5

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #6

declare i8* @g_realloc_n(i8*, i64, i64) #1

declare noalias i8* @g_malloc_n(i64, i64) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #6

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

declare noalias i8* @g_strndup(i8*, i64) #1

; Function Attrs: nounwind readonly
declare i64 @g_utf8_pointer_to_offset(i8*, i8*) #3

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
