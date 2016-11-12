; ModuleID = './app/core/gimp-templates.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type opaque
%struct._GimpGui = type { {}*, {}*, {}*, {}*, {}*, void (%struct._Gimp*, %struct._GObject*, i32, i8*, i8*)*, void (%struct._Gimp*, %struct._GimpProgress*, i8*, i8*)*, i8* (%struct._Gimp*)*, i8* (%struct._Gimp*, i32, i32*)*, i32 (%struct._Gimp*)*, i8* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*)*, %struct._GimpObject* (%struct._Gimp*, i32)*, i32 (%struct._GimpObject*)*, i32 (%struct._GimpObject*)*, %struct._GimpObject* (%struct._Gimp*, %struct._GimpImage*, i32, double)*, void (%struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpImage*, %struct._GimpImage*)*, %struct._GimpProgress* (%struct._Gimp*, %struct._GimpObject*)*, void (%struct._Gimp*, %struct._GimpProgress*)*, i32 (%struct._Gimp*, %struct._GimpContext*, %struct._GimpProgress*, %struct._GimpContainer*, i8*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*, i8*, %struct.__va_list_tag*)*, i32 (%struct._Gimp*, %struct._GimpContainer*, i8*)*, i32 (%struct._Gimp*, i8*, i8*)*, {}* }
%struct._GimpProgress = type opaque
%struct._GimpImage = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpParasiteList = type opaque
%struct._GimpPaintInfo = type opaque
%struct._GimpModuleDB = type opaque
%struct._GimpPlugInManager = type opaque
%struct._GimpIdTable = type opaque
%struct._GimpBuffer = type opaque
%struct._GimpDataFactory = type opaque
%struct._GimpTagCache = type opaque
%struct._GimpPDB = type opaque
%struct._GimpToolInfo = type opaque
%struct._GimpContainer = type { %struct._GimpObject, %struct._GimpContainerPriv* }
%struct._GimpContainerPriv = type opaque
%struct._GimpTemplate = type { %struct._GimpViewable }
%struct._GimpViewable = type { %struct._GimpObject }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GimpConfig = type opaque
%struct._GimpList = type { %struct._GimpContainer, %struct._GList*, i32, i32 (i8*, i8*)*, i32 }
%struct._GimpContainerClass = type { %struct._GimpObjectClass, void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, %struct._GimpObject*, i32)*, void (%struct._GimpContainer*)*, void (%struct._GimpContainer*)*, void (%struct._GimpContainer*)*, i32 (%struct._GimpContainer*, %struct._GimpObject*)*, void (%struct._GimpContainer*, void (i8*, i8*)*, i8*)*, %struct._GimpObject* (%struct._GimpContainer*, i8*)*, %struct._GimpObject* (%struct._GimpContainer*, i32)*, i32 (%struct._GimpContainer*, %struct._GimpObject*)* }
%struct._GimpObjectClass = type { %struct._GObjectClass, void (%struct._GimpObject*)*, void (%struct._GimpObject*)*, i64 (%struct._GimpObject*, i64*)* }
%struct._GObjectClass = type { %struct._GTypeClass, %struct._GSList*, %struct._GObject* (i64, i32, %struct._GObjectConstructParam*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*, i32, %struct._GValue*, %struct._GParamSpec*)*, void (%struct._GObject*)*, void (%struct._GObject*)*, void (%struct._GObject*, i32, %struct._GParamSpec**)*, void (%struct._GObject*, %struct._GParamSpec*)*, void (%struct._GObject*)*, i64, [6 x i8*] }
%struct._GSList = type { i8*, %struct._GSList* }
%struct._GObjectConstructParam = type { %struct._GParamSpec*, %struct._GValue* }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_templates_load = private unnamed_addr constant [20 x i8] c"gimp_templates_load\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"GIMP_IS_LIST (gimp->templates)\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"templaterc\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Parsing '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [74 x i8] c"GIMP templaterc\0A\0AThis file will be entirely rewritten each time you exit.\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"end of templaterc\00", align 1
@__func__.gimp_templates_save = private unnamed_addr constant [20 x i8] c"gimp_templates_save\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"2.2\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"dpi\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"ppi\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"replaced: %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_templates_load(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_templates_load, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 48
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_list_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_templates_load, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call39, i8** %filename, align 8
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 4
  %28 = load i32, i32* %be_verbose, align 4
  %tobool40 = icmp ne i32 %28, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %do.end.38
  %29 = load i8*, i8** %filename, align 8
  %call42 = call i8* @gimp_filename_to_utf8(i8* %29)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i8* %call42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %do.end.38
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %templates44 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 48
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %templates44, align 8
  %32 = bitcast %struct._GimpContainer* %31 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_config_interface_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call45)
  %33 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpConfig*
  %34 = load i8*, i8** %filename, align 8
  %call47 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %33, i8* %34, i8* null, %struct._GError** %error)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.64, label %if.then.49

if.then.49:                                       ; preds = %if.end.43
  %35 = load %struct._GError*, %struct._GError** %error, align 8
  %code = getelementptr inbounds %struct._GError, %struct._GError* %35, i32 0, i32 1
  %36 = load i32, i32* %code, align 4
  %cmp50 = icmp eq i32 %36, 1
  br i1 %cmp50, label %if.then.51, label %if.else.61

if.then.51:                                       ; preds = %if.then.49
  call void @g_clear_error(%struct._GError** %error)
  %37 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %37)
  %call52 = call i8* @gimp_sysconf_directory() #5
  %call53 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* null)
  store i8* %call53, i8** %filename, align 8
  %38 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %templates54 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %38, i32 0, i32 48
  %39 = load %struct._GimpContainer*, %struct._GimpContainer** %templates54, align 8
  %40 = bitcast %struct._GimpContainer* %39 to %struct._GTypeInstance*
  %call55 = call i64 @gimp_config_interface_get_type() #5
  %call56 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %40, i64 %call55)
  %41 = bitcast %struct._GTypeInstance* %call56 to %struct._GimpConfig*
  %42 = load i8*, i8** %filename, align 8
  %call57 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %41, i8* %42, i8* null, %struct._GError** %error)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.then.51
  %43 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %44 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %44, i32 0, i32 2
  %45 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %43, %struct._GObject* null, i32 2, i8* %45)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.then.51
  br label %if.end.63

if.else.61:                                       ; preds = %if.then.49
  %46 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %47 = load %struct._GError*, %struct._GError** %error, align 8
  %message62 = getelementptr inbounds %struct._GError, %struct._GError* %47, i32 0, i32 2
  %48 = load i8*, i8** %message62, align 8
  call void @gimp_message_literal(%struct._Gimp* %46, %struct._GObject* null, i32 2, i8* %48)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.61, %if.end.60
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.end.43
  %49 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %templates65 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %49, i32 0, i32 48
  %50 = load %struct._GimpContainer*, %struct._GimpContainer** %templates65, align 8
  %51 = bitcast %struct._GimpContainer* %50 to %struct._GTypeInstance*
  %call66 = call i64 @gimp_list_get_type() #5
  %call67 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %51, i64 %call66)
  %52 = bitcast %struct._GTypeInstance* %call67 to %struct._GimpList*
  call void @gimp_list_reverse(%struct._GimpList* %52)
  %53 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %53)
  br label %return

return:                                           ; preds = %if.end.64, %if.else.36, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_list_get_type() #1

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare i32 @gimp_config_deserialize_file(%struct._GimpConfig*, i8*, i8*, %struct._GError**) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_config_interface_get_type() #1

declare void @g_clear_error(%struct._GError**) #3

declare void @g_free(i8*) #3

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_sysconf_directory() #1

declare void @gimp_message_literal(%struct._Gimp*, %struct._GObject*, i32, i8*) #3

declare void @gimp_list_reverse(%struct._GimpList*) #3

; Function Attrs: nounwind uwtable
define void @gimp_templates_save(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %header = alloca i8*, align 8
  %footer = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__inst13 = alloca %struct._GTypeInstance*, align 8
  %__t15 = alloca i64, align 8
  %__r18 = alloca i32, align 4
  %tmp33 = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.5, i32 0, i32 0), i8** %header, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0), i8** %footer, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #5
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_templates_save, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %templates = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 48
  %14 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %15 = bitcast %struct._GimpContainer* %14 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %15, %struct._GTypeInstance** %__inst13, align 8
  %call16 = call i64 @gimp_list_get_type() #5
  store i64 %call16, i64* %__t15, align 8
  %16 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %tobool19 = icmp ne %struct._GTypeInstance* %16, null
  br i1 %tobool19, label %if.else.21, label %if.then.20

if.then.20:                                       ; preds = %do.body.11
  store i32 0, i32* %__r18, align 4
  br label %if.end.32

if.else.21:                                       ; preds = %do.body.11
  %17 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class22 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %17, i32 0, i32 0
  %18 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class22, align 8
  %tobool23 = icmp ne %struct._GTypeClass* %18, null
  br i1 %tobool23, label %land.lhs.true.24, label %if.else.29

land.lhs.true.24:                                 ; preds = %if.else.21
  %19 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %g_class25 = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %19, i32 0, i32 0
  %20 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class25, align 8
  %g_type26 = getelementptr inbounds %struct._GTypeClass, %struct._GTypeClass* %20, i32 0, i32 0
  %21 = load i64, i64* %g_type26, align 8
  %22 = load i64, i64* %__t15, align 8
  %cmp27 = icmp eq i64 %21, %22
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %land.lhs.true.24
  store i32 1, i32* %__r18, align 4
  br label %if.end.31

if.else.29:                                       ; preds = %land.lhs.true.24, %if.else.21
  %23 = load %struct._GTypeInstance*, %struct._GTypeInstance** %__inst13, align 8
  %24 = load i64, i64* %__t15, align 8
  %call30 = call i32 @g_type_check_instance_is_a(%struct._GTypeInstance* %23, i64 %24) #6
  store i32 %call30, i32* %__r18, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.29, %if.then.28
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.20
  %25 = load i32, i32* %__r18, align 4
  store i32 %25, i32* %tmp33
  %26 = load i32, i32* %tmp33
  %tobool34 = icmp ne i32 %26, 0
  br i1 %tobool34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.end.32
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.32
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__func__.gimp_templates_save, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %return

if.end.37:                                        ; preds = %if.then.35
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call39, i8** %filename, align 8
  %27 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %27, i32 0, i32 4
  %28 = load i32, i32* %be_verbose, align 4
  %tobool40 = icmp ne i32 %28, 0
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %do.end.38
  %29 = load i8*, i8** %filename, align 8
  %call42 = call i8* @gimp_filename_to_utf8(i8* %29)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i32 0, i32 0), i8* %call42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %do.end.38
  %30 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %templates44 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %30, i32 0, i32 48
  %31 = load %struct._GimpContainer*, %struct._GimpContainer** %templates44, align 8
  %32 = bitcast %struct._GimpContainer* %31 to %struct._GTypeInstance*
  %call45 = call i64 @gimp_config_interface_get_type() #5
  %call46 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %32, i64 %call45)
  %33 = bitcast %struct._GTypeInstance* %call46 to %struct._GimpConfig*
  %34 = load i8*, i8** %filename, align 8
  %35 = load i8*, i8** %header, align 8
  %36 = load i8*, i8** %footer, align 8
  %call47 = call i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %33, i8* %34, i8* %35, i8* %36, i8* null, %struct._GError** %error)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %if.end.43
  %37 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %38 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %38, i32 0, i32 2
  %39 = load i8*, i8** %message, align 8
  call void @gimp_message_literal(%struct._Gimp* %37, %struct._GObject* null, i32 2, i8* %39)
  %40 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %40)
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.49, %if.end.43
  %41 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %41)
  br label %return

return:                                           ; preds = %if.end.50, %if.else.36, %if.else.9
  ret void
}

declare i32 @gimp_config_serialize_to_file(%struct._GimpConfig*, i8*, i8*, i8*, i8*, %struct._GError**) #3

declare void @g_error_free(%struct._GError*) #3

; Function Attrs: nounwind uwtable
define void @gimp_templates_migrate(i8* %olddir) #0 {
entry:
  %olddir.addr = alloca i8*, align 8
  %templates = alloca %struct._GimpContainer*, align 8
  %filename = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %class = alloca %struct._GimpContainerClass*, align 8
  %func = alloca i8*, align 8
  store i8* %olddir, i8** %olddir.addr, align 8
  %call = call i64 @gimp_template_get_type() #5
  %call1 = call %struct._GimpContainer* @gimp_list_new(i64 %call, i32 1)
  store %struct._GimpContainer* %call1, %struct._GimpContainer** %templates, align 8
  %call2 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  store i8* %call2, i8** %filename, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call3 = call i64 @gimp_config_interface_get_type() #5
  %call4 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call3)
  %2 = bitcast %struct._GTypeInstance* %call4 to %struct._GimpConfig*
  %3 = load i8*, i8** %filename, align 8
  %call5 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %2, i8* %3, i8* null, %struct._GError** null)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %entry
  %call6 = call i8* @gimp_sysconf_directory() #5
  %call7 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8* null)
  store i8* %call7, i8** %tmp, align 8
  %4 = load i8*, i8** %olddir.addr, align 8
  %tobool8 = icmp ne i8* %4, null
  br i1 %tobool8, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %5 = load i8*, i8** %olddir.addr, align 8
  %call9 = call i8* @strstr(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0)) #6
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %6 = load i8*, i8** %olddir.addr, align 8
  %call11 = call i8* @strstr(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0)) #6
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %8 = bitcast %struct._GimpContainer* %7 to %struct._GTypeInstance*
  %g_class = getelementptr inbounds %struct._GTypeInstance, %struct._GTypeInstance* %8, i32 0, i32 0
  %9 = load %struct._GTypeClass*, %struct._GTypeClass** %g_class, align 8
  %10 = bitcast %struct._GTypeClass* %9 to %struct._GimpContainerClass*
  store %struct._GimpContainerClass* %10, %struct._GimpContainerClass** %class, align 8
  %11 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %class, align 8
  %get_child_by_name = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %11, i32 0, i32 9
  %12 = load %struct._GimpObject* (%struct._GimpContainer*, i8*)*, %struct._GimpObject* (%struct._GimpContainer*, i8*)** %get_child_by_name, align 8
  %13 = bitcast %struct._GimpObject* (%struct._GimpContainer*, i8*)* %12 to i8*
  store i8* %13, i8** %func, align 8
  %14 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %class, align 8
  %get_child_by_name16 = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %14, i32 0, i32 9
  store %struct._GimpObject* (%struct._GimpContainer*, i8*)* @gimp_templates_migrate_get_child_by_name, %struct._GimpObject* (%struct._GimpContainer*, i8*)** %get_child_by_name16, align 8
  %15 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %16 = bitcast %struct._GimpContainer* %15 to %struct._GTypeInstance*
  %call17 = call i64 @gimp_config_interface_get_type() #5
  %call18 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %16, i64 %call17)
  %17 = bitcast %struct._GTypeInstance* %call18 to %struct._GimpConfig*
  %18 = load i8*, i8** %tmp, align 8
  %call19 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %17, i8* %18, i8* null, %struct._GError** null)
  %19 = load i8*, i8** %func, align 8
  %20 = bitcast i8* %19 to %struct._GimpObject* (%struct._GimpContainer*, i8*)*
  %21 = load %struct._GimpContainerClass*, %struct._GimpContainerClass** %class, align 8
  %get_child_by_name20 = getelementptr inbounds %struct._GimpContainerClass, %struct._GimpContainerClass* %21, i32 0, i32 9
  store %struct._GimpObject* (%struct._GimpContainer*, i8*)* %20, %struct._GimpObject* (%struct._GimpContainer*, i8*)** %get_child_by_name20, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false, %if.then
  %22 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %23 = bitcast %struct._GimpContainer* %22 to %struct._GTypeInstance*
  %call21 = call i64 @gimp_config_interface_get_type() #5
  %call22 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %23, i64 %call21)
  %24 = bitcast %struct._GTypeInstance* %call22 to %struct._GimpConfig*
  %25 = load i8*, i8** %tmp, align 8
  %call23 = call i32 @gimp_config_deserialize_file(%struct._GimpConfig* %24, i8* %25, i8* null, %struct._GError** null)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  %26 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %26)
  %27 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %28 = bitcast %struct._GimpContainer* %27 to %struct._GTypeInstance*
  %call24 = call i64 @gimp_list_get_type() #5
  %call25 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %28, i64 %call24)
  %29 = bitcast %struct._GTypeInstance* %call25 to %struct._GimpList*
  call void @gimp_list_reverse(%struct._GimpList* %29)
  %30 = load %struct._GimpContainer*, %struct._GimpContainer** %templates, align 8
  %31 = bitcast %struct._GimpContainer* %30 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_config_interface_get_type() #5
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %31, i64 %call26)
  %32 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpConfig*
  %33 = load i8*, i8** %filename, align 8
  %call28 = call i32 @gimp_config_serialize_to_file(%struct._GimpConfig* %32, i8* %33, i8* null, i8* null, i8* null, %struct._GError** null)
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %entry
  %34 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %34)
  ret void
}

declare %struct._GimpContainer* @gimp_list_new(i64, i32) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_template_get_type() #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct._GimpObject* @gimp_templates_migrate_get_child_by_name(%struct._GimpContainer* %container, i8* %name) #0 {
entry:
  %container.addr = alloca %struct._GimpContainer*, align 8
  %name.addr = alloca i8*, align 8
  %list = alloca %struct._GimpList*, align 8
  %retval2 = alloca %struct._GimpObject*, align 8
  %glist = alloca %struct._GList*, align 8
  %object = alloca %struct._GimpObject*, align 8
  %str1 = alloca i8*, align 8
  %str2 = alloca i8*, align 8
  %dpi = alloca i8*, align 8
  store %struct._GimpContainer* %container, %struct._GimpContainer** %container.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._GimpContainer*, %struct._GimpContainer** %container.addr, align 8
  %1 = bitcast %struct._GimpContainer* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_list_get_type() #5
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._GimpList*
  store %struct._GimpList* %2, %struct._GimpList** %list, align 8
  store %struct._GimpObject* null, %struct._GimpObject** %retval2, align 8
  %3 = load %struct._GimpList*, %struct._GimpList** %list, align 8
  %list3 = getelementptr inbounds %struct._GimpList, %struct._GimpList* %3, i32 0, i32 1
  %4 = load %struct._GList*, %struct._GList** %list3, align 8
  store %struct._GList* %4, %struct._GList** %glist, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %5 = load %struct._GList*, %struct._GList** %glist, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %glist, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  %8 = bitcast i8* %7 to %struct._GimpObject*
  store %struct._GimpObject* %8, %struct._GimpObject** %object, align 8
  %9 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  %10 = bitcast %struct._GimpObject* %9 to i8*
  %call4 = call i8* @gimp_object_get_name(i8* %10)
  %call5 = call noalias i8* @g_ascii_strdown(i8* %call4, i64 -1)
  store i8* %call5, i8** %str1, align 8
  %11 = load i8*, i8** %name.addr, align 8
  %call6 = call noalias i8* @g_ascii_strdown(i8* %11, i64 -1)
  store i8* %call6, i8** %str2, align 8
  %12 = load i8*, i8** %str1, align 8
  %13 = load i8*, i8** %str2, align 8
  %call7 = call i32 @strcmp(i8* %12, i8* %13) #6
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %14 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  store %struct._GimpObject* %14, %struct._GimpObject** %retval2, align 8
  br label %if.end.17

if.else:                                          ; preds = %for.body
  %15 = load i8*, i8** %str1, align 8
  %call9 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #6
  store i8* %call9, i8** %dpi, align 8
  %16 = load i8*, i8** %dpi, align 8
  %tobool10 = icmp ne i8* %16, null
  br i1 %tobool10, label %if.then.11, label %if.end.16

if.then.11:                                       ; preds = %if.else
  %17 = load i8*, i8** %dpi, align 8
  %call12 = call i8* @strncpy(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0), i64 3) #7
  %18 = load i8*, i8** %str1, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i32 0, i32 0), i8* %18)
  %19 = load i8*, i8** %str1, align 8
  %20 = load i8*, i8** %str2, align 8
  %call13 = call i32 @strcmp(i8* %19, i8* %20) #6
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end, label %if.then.15

if.then.15:                                       ; preds = %if.then.11
  %21 = load %struct._GimpObject*, %struct._GimpObject** %object, align 8
  store %struct._GimpObject* %21, %struct._GimpObject** %retval2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then
  %22 = load i8*, i8** %str1, align 8
  call void @g_free(i8* %22)
  %23 = load i8*, i8** %str2, align 8
  call void @g_free(i8* %23)
  br label %for.inc

for.inc:                                          ; preds = %if.end.17
  %24 = load %struct._GList*, %struct._GList** %glist, align 8
  %tobool18 = icmp ne %struct._GList* %24, null
  br i1 %tobool18, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %25 = load %struct._GList*, %struct._GList** %glist, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %25, i32 0, i32 1
  %26 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %26, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %glist, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %27 = load %struct._GimpObject*, %struct._GimpObject** %retval2, align 8
  ret %struct._GimpObject* %27
}

declare noalias i8* @g_ascii_strdown(i8*, i64) #3

declare i8* @gimp_object_get_name(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #4

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
