; ModuleID = './app/gui/themes.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GHashTable = type opaque
%struct._Gimp = type { %struct._GimpObject, %struct._GimpCoreConfig*, %struct._GimpCoreConfig*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._GimpGui, i32, i32, i32, %struct._GList*, i32, %struct._GimpParasiteList*, %struct._GimpContainer*, %struct._GimpPaintInfo*, %struct._GimpModuleDB*, i32, %struct._GimpPlugInManager*, %struct._GimpContainer*, i32, i32, %struct._GimpIdTable*, %struct._GimpIdTable*, %struct._GimpContainer*, i32, %struct._GList*, %struct._GimpBuffer*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpDataFactory*, %struct._GimpTagCache*, %struct._GimpPDB*, %struct._GimpContainer*, %struct._GimpToolInfo*, %struct._GimpContainer*, %struct._GimpContainer*, %struct._GimpTemplate*, %struct._GList*, %struct._GimpContext*, %struct._GimpContext* }
%struct._GimpObject = type { %struct._GObject, %struct._GimpObjectPrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpObjectPrivate = type opaque
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type { %struct._GObject, i32, i8*, i8*, i8*, i32, i8*, i32, i32, i8*, i32, %struct._GimpRGB, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()*, void ()* }
%struct._GimpRGB = type { double, double, double, double }
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
%struct._GimpContainer = type opaque
%struct._GimpTemplate = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpContext = type opaque
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayOptions = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GClosure = type { i32, void (%struct._GClosure*, %struct._GValue*, i32, %struct._GValue*, i8*, i8*)*, i8*, %struct._GClosureNotifyData* }
%struct._GValue = type { i64, [2 x %union.anon] }
%union.anon = type { i64 }
%struct._GClosureNotifyData = type { i8*, {}* }
%struct._GimpDatafileData = type { i8*, i8*, i8*, i64, i64, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._GParamSpec = type { %struct._GTypeInstance, i8*, i32, i64, i64, i8*, i8*, %struct._GData*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Gimp-GUI\00", align 1
@__func__.themes_init = private unnamed_addr constant [12 x i8] c"themes_init\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"GIMP_IS_GIMP (gimp)\00", align 1
@themes_hash = internal global %struct._GHashTable* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"themerc\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"notify::theme\00", align 1
@__func__.themes_exit = private unnamed_addr constant [12 x i8] c"themes_exit\00", align 1
@__func__.themes_list_themes = private unnamed_addr constant [19 x i8] c"themes_list_themes\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"n_themes != NULL\00", align 1
@__func__.themes_get_theme_dir = private unnamed_addr constant [21 x i8] c"themes_get_theme_dir\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@__func__.themes_get_theme_file = private unnamed_addr constant [22 x i8] c"themes_get_theme_file\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"first_component != NULL\00", align 1
@__func__.themes_apply_theme = private unnamed_addr constant [19 x i8] c"themes_apply_theme\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"gtkrc\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Writing '%s'\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.11 = private unnamed_addr constant [219 x i8] c"# GIMP themerc\0A#\0A# This file is written on GIMP startup and on every theme change.\0A# It is NOT supposed to be edited manually. Edit your personal\0A# gtkrc file instead (%s).\0A\0Ainclude \22%s\22\0Ainclude \22%s\22\0A\0A# end of themerc\0A\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"Adding theme '%s' (%s)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @themes_init(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %config = alloca %struct._GimpGuiConfig*, align 8
  %themerc = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %path = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.themes_init, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config11 = getelementptr inbounds %struct._Gimp, %struct._Gimp* %13, i32 0, i32 1
  %14 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config11, align 8
  %15 = bitcast %struct._GimpCoreConfig* %14 to %struct._GTypeInstance*
  %call12 = call i64 @gimp_gui_config_get_type() #6
  %call13 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %15, i64 %call12)
  %16 = bitcast %struct._GTypeInstance* %call13 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %16, %struct._GimpGuiConfig** %config, align 8
  %call14 = call %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)* @g_str_hash, i32 (i8*, i8*)* @g_str_equal, void (i8*)* @g_free, void (i8*)* @g_free)
  store %struct._GHashTable* %call14, %struct._GHashTable** @themes_hash, align 8
  %17 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %theme_path = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %17, i32 0, i32 19
  %18 = load i8*, i8** %theme_path, align 8
  %tobool15 = icmp ne i8* %18, null
  br i1 %tobool15, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %do.end
  %19 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %theme_path18 = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %19, i32 0, i32 19
  %20 = load i8*, i8** %theme_path18, align 8
  %call19 = call noalias i8* @gimp_config_path_expand(i8* %20, i32 1, %struct._GError** null)
  store i8* %call19, i8** %path, align 8
  %21 = load i8*, i8** %path, align 8
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %23 = bitcast %struct._Gimp* %22 to i8*
  call void @gimp_datafiles_read_directories(i8* %21, i32 4, void (%struct._GimpDatafileData*, i8*)* @themes_directories_foreach, i8* %23)
  %24 = load i8*, i8** %path, align 8
  call void @g_free(i8* %24)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.16, %do.end
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %26 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %theme = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %26, i32 0, i32 20
  %27 = load i8*, i8** %theme, align 8
  call void @themes_apply_theme(%struct._Gimp* %25, i8* %27)
  %call21 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call21, i8** %themerc, align 8
  %28 = load i8*, i8** %themerc, align 8
  call void @gtk_rc_parse(i8* %28)
  %29 = load i8*, i8** %themerc, align 8
  call void @g_free(i8* %29)
  %30 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config, align 8
  %31 = bitcast %struct._GimpGuiConfig* %30 to i8*
  %32 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %33 = bitcast %struct._Gimp* %32 to i8*
  %call22 = call i64 @g_signal_connect_data(i8* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i32 0, i32 0), void ()* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._Gimp*)* @themes_theme_change_notify to void ()*), i8* %33, void (i8*, %struct._GClosure*)* null, i32 0)
  br label %return

return:                                           ; preds = %if.end.20, %if.else.9
  ret void
}

; Function Attrs: nounwind readnone
declare i64 @gimp_get_type() #1

; Function Attrs: nounwind readonly
declare i32 @g_type_check_instance_is_a(%struct._GTypeInstance*, i64) #2

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #3

declare %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance*, i64) #3

; Function Attrs: nounwind readnone
declare i64 @gimp_gui_config_get_type() #1

declare %struct._GHashTable* @g_hash_table_new_full(i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, void (i8*)*) #3

declare i32 @g_str_hash(i8*) #3

declare i32 @g_str_equal(i8*, i8*) #3

declare void @g_free(i8*) #3

declare noalias i8* @gimp_config_path_expand(i8*, i32, %struct._GError**) #3

declare void @gimp_datafiles_read_directories(i8*, i32, void (%struct._GimpDatafileData*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @themes_directories_foreach(%struct._GimpDatafileData* %file_data, i8* %user_data) #0 {
entry:
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %user_data.addr = alloca i8*, align 8
  %gimp = alloca %struct._Gimp*, align 8
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load i8*, i8** %user_data.addr, align 8
  %1 = bitcast i8* %0 to %struct._GTypeInstance*
  %call = call i64 @gimp_get_type() #6
  %call1 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %1, i64 %call)
  %2 = bitcast %struct._GTypeInstance* %call1 to %struct._Gimp*
  store %struct._Gimp* %2, %struct._Gimp** %gimp, align 8
  %3 = load %struct._Gimp*, %struct._Gimp** %gimp, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %3, i32 0, i32 4
  %4 = load i32, i32* %be_verbose, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %basename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %5, i32 0, i32 2
  %6 = load i8*, i8** %basename, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %6)
  %7 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %7, i32 0, i32 0
  %8 = load i8*, i8** %filename, align 8
  %call3 = call i8* @gimp_filename_to_utf8(i8* %8)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0), i8* %call2, i8* %call3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct._GHashTable*, %struct._GHashTable** @themes_hash, align 8
  %10 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %basename4 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %10, i32 0, i32 2
  %11 = load i8*, i8** %basename4, align 8
  %call5 = call noalias i8* @g_strdup(i8* %11)
  %12 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename6 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %12, i32 0, i32 0
  %13 = load i8*, i8** %filename6, align 8
  %call7 = call noalias i8* @g_strdup(i8* %13)
  %call8 = call i32 @g_hash_table_insert(%struct._GHashTable* %9, i8* %call5, i8* %call7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @themes_apply_theme(%struct._Gimp* %gimp, i8* %theme_name) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %theme_name.addr = alloca i8*, align 8
  %theme_dir = alloca i8*, align 8
  %gtkrc_theme = alloca i8*, align 8
  %gtkrc_user = alloca i8*, align 8
  %themerc = alloca i8*, align 8
  %file = alloca %struct._IO_FILE*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %esc_gtkrc_theme = alloca i8*, align 8
  %esc_gtkrc_user = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %theme_name, i8** %theme_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.themes_apply_theme, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %14 = load i8*, i8** %theme_name.addr, align 8
  %call11 = call i8* @themes_get_theme_dir(%struct._Gimp* %13, i8* %14)
  store i8* %call11, i8** %theme_dir, align 8
  %15 = load i8*, i8** %theme_dir, align 8
  %tobool12 = icmp ne i8* %15, null
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %do.end
  %16 = load i8*, i8** %theme_dir, align 8
  %call14 = call noalias i8* (i8*, ...) @g_build_filename(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0), i8* null)
  store i8* %call14, i8** %gtkrc_theme, align 8
  br label %if.end.18

if.else.15:                                       ; preds = %do.end
  %call16 = call i8* @gimp_gtkrc() #6
  %call17 = call noalias i8* @g_strdup(i8* %call16)
  store i8* %call17, i8** %gtkrc_theme, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.15, %if.then.13
  %call19 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  store i8* %call19, i8** %gtkrc_user, align 8
  %call20 = call noalias i8* @gimp_personal_rc_file(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0))
  store i8* %call20, i8** %themerc, align 8
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %be_verbose = getelementptr inbounds %struct._Gimp, %struct._Gimp* %17, i32 0, i32 4
  %18 = load i32, i32* %be_verbose, align 4
  %tobool21 = icmp ne i32 %18, 0
  br i1 %tobool21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.18
  %19 = load i8*, i8** %themerc, align 8
  %call23 = call i8* @gimp_filename_to_utf8(i8* %19)
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %call23)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.end.18
  %20 = load i8*, i8** %themerc, align 8
  %call25 = call %struct._IO_FILE* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  store %struct._IO_FILE* %call25, %struct._IO_FILE** %file, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %tobool26 = icmp ne %struct._IO_FILE* %21, null
  br i1 %tobool26, label %if.end.32, label %if.then.27

if.then.27:                                       ; preds = %if.end.24
  %22 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call28 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i32 0, i32 0)) #4
  %23 = load i8*, i8** %themerc, align 8
  %call29 = call i8* @gimp_filename_to_utf8(i8* %23)
  %call30 = call i32* @__errno_location() #6
  %24 = load i32, i32* %call30, align 4
  %call31 = call i8* @g_strerror(i32 %24) #6
  call void (%struct._Gimp*, %struct._GObject*, i32, i8*, ...) @gimp_message(%struct._Gimp* %22, %struct._GObject* null, i32 2, i8* %call28, i8* %call29, i8* %call31)
  br label %cleanup

if.end.32:                                        ; preds = %if.end.24
  %25 = load i8*, i8** %gtkrc_theme, align 8
  %call34 = call noalias i8* @g_strescape(i8* %25, i8* null)
  store i8* %call34, i8** %esc_gtkrc_theme, align 8
  %26 = load i8*, i8** %gtkrc_user, align 8
  %call36 = call noalias i8* @g_strescape(i8* %26, i8* null)
  store i8* %call36, i8** %esc_gtkrc_user, align 8
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %28 = load i8*, i8** %gtkrc_user, align 8
  %29 = load i8*, i8** %esc_gtkrc_theme, align 8
  %30 = load i8*, i8** %esc_gtkrc_user, align 8
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([219 x i8], [219 x i8]* @.str.11, i32 0, i32 0), i8* %28, i8* %29, i8* %30)
  %31 = load i8*, i8** %esc_gtkrc_theme, align 8
  call void @g_free(i8* %31)
  %32 = load i8*, i8** %esc_gtkrc_user, align 8
  call void @g_free(i8* %32)
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %file, align 8
  %call38 = call i32 @fclose(%struct._IO_FILE* %33)
  br label %cleanup

cleanup:                                          ; preds = %if.end.32, %if.then.27
  %34 = load i8*, i8** %gtkrc_theme, align 8
  call void @g_free(i8* %34)
  %35 = load i8*, i8** %gtkrc_user, align 8
  call void @g_free(i8* %35)
  %36 = load i8*, i8** %themerc, align 8
  call void @g_free(i8* %36)
  br label %return

return:                                           ; preds = %cleanup, %if.else.9
  ret void
}

declare noalias i8* @gimp_personal_rc_file(i8*) #3

declare void @gtk_rc_parse(i8*) #3

declare i64 @g_signal_connect_data(i8*, i8*, void ()*, i8*, void (i8*, %struct._GClosure*)*, i32) #3

; Function Attrs: nounwind uwtable
define internal void @themes_theme_change_notify(%struct._GimpGuiConfig* %config, %struct._GParamSpec* %pspec, %struct._Gimp* %gimp) #0 {
entry:
  %config.addr = alloca %struct._GimpGuiConfig*, align 8
  %pspec.addr = alloca %struct._GParamSpec*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  store %struct._GimpGuiConfig* %config, %struct._GimpGuiConfig** %config.addr, align 8
  store %struct._GParamSpec* %pspec, %struct._GParamSpec** %pspec.addr, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %config.addr, align 8
  %theme = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %1, i32 0, i32 20
  %2 = load i8*, i8** %theme, align 8
  call void @themes_apply_theme(%struct._Gimp* %0, i8* %2)
  %call = call i32 @gtk_rc_reparse_all()
  ret void
}

; Function Attrs: nounwind uwtable
define void @themes_exit(%struct._Gimp* %gimp) #0 {
entry:
  %gimp.addr = alloca %struct._Gimp*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.themes_exit, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.14

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load %struct._GHashTable*, %struct._GHashTable** @themes_hash, align 8
  %tobool11 = icmp ne %struct._GHashTable* %13, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %do.end
  %14 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %14, i32 0, i32 1
  %15 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %16 = bitcast %struct._GimpCoreConfig* %15 to i8*
  %17 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %18 = bitcast %struct._Gimp* %17 to i8*
  %call13 = call i32 @g_signal_handlers_disconnect_matched(i8* %16, i32 24, i32 0, i32 0, %struct._GClosure* null, i8* bitcast (void (%struct._GimpGuiConfig*, %struct._GParamSpec*, %struct._Gimp*)* @themes_theme_change_notify to i8*), i8* %18)
  %19 = load %struct._GHashTable*, %struct._GHashTable** @themes_hash, align 8
  call void @g_hash_table_destroy(%struct._GHashTable* %19)
  store %struct._GHashTable* null, %struct._GHashTable** @themes_hash, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.9, %if.then.12, %do.end
  ret void
}

declare i32 @g_signal_handlers_disconnect_matched(i8*, i32, i32, i32, %struct._GClosure*, i8*, i8*) #3

declare void @g_hash_table_destroy(%struct._GHashTable*) #3

; Function Attrs: nounwind uwtable
define i8** @themes_list_themes(%struct._Gimp* %gimp, i32* %n_themes) #0 {
entry:
  %retval = alloca i8**, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %n_themes.addr = alloca i32*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %themes = alloca i8**, align 8
  %index = alloca i8**, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i32* %n_themes, i32** %n_themes.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.themes_list_themes, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i32*, i32** %n_themes.addr, align 8
  %cmp12 = icmp ne i32* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.themes_list_themes, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  store i8** null, i8*** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load %struct._GHashTable*, %struct._GHashTable** @themes_hash, align 8
  %call17 = call i32 @g_hash_table_size(%struct._GHashTable* %14)
  %15 = load i32*, i32** %n_themes.addr, align 8
  store i32 %call17, i32* %15, align 4
  %16 = load i32*, i32** %n_themes.addr, align 8
  %17 = load i32, i32* %16, align 4
  %cmp18 = icmp sgt i32 %17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.24

if.then.19:                                       ; preds = %do.end.16
  %18 = load i32*, i32** %n_themes.addr, align 8
  %19 = load i32, i32* %18, align 4
  %add = add nsw i32 %19, 1
  %conv = sext i32 %add to i64
  %call22 = call noalias i8* @g_malloc0_n(i64 %conv, i64 8)
  %20 = bitcast i8* %call22 to i8**
  store i8** %20, i8*** %themes, align 8
  %21 = load i8**, i8*** %themes, align 8
  store i8** %21, i8*** %index, align 8
  %22 = load %struct._GHashTable*, %struct._GHashTable** @themes_hash, align 8
  %23 = bitcast i8*** %index to i8*
  call void @g_hash_table_foreach(%struct._GHashTable* %22, void (i8*, i8*, i8*)* @themes_list_themes_foreach, i8* %23)
  %24 = load i8**, i8*** %themes, align 8
  %25 = bitcast i8** %24 to i8*
  %26 = load i32*, i32** %n_themes.addr, align 8
  %27 = load i32, i32* %26, align 4
  %conv23 = sext i32 %27 to i64
  call void @qsort(i8* %25, i64 %conv23, i64 8, i32 (i8*, i8*)* @themes_name_compare)
  %28 = load i8**, i8*** %themes, align 8
  store i8** %28, i8*** %retval
  br label %return

if.end.24:                                        ; preds = %do.end.16
  store i8** null, i8*** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.19, %if.else.14, %if.else.9
  %29 = load i8**, i8*** %retval
  ret i8** %29
}

declare i32 @g_hash_table_size(%struct._GHashTable*) #3

declare noalias i8* @g_malloc0_n(i64, i64) #3

declare void @g_hash_table_foreach(%struct._GHashTable*, void (i8*, i8*, i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @themes_list_themes_foreach(i8* %key, i8* %value, i8* %data) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %index = alloca i8***, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to i8***
  store i8*** %1, i8**** %index, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %2)
  %3 = load i8***, i8**** %index, align 8
  %4 = load i8**, i8*** %3, align 8
  store i8* %call, i8** %4, align 8
  %5 = load i8***, i8**** %index, align 8
  %6 = load i8**, i8*** %5, align 8
  %incdec.ptr = getelementptr inbounds i8*, i8** %6, i32 1
  store i8** %incdec.ptr, i8*** %5, align 8
  ret void
}

declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #3

; Function Attrs: nounwind uwtable
define internal i32 @themes_name_compare(i8* %p1, i8* %p2) #0 {
entry:
  %p1.addr = alloca i8*, align 8
  %p2.addr = alloca i8*, align 8
  store i8* %p1, i8** %p1.addr, align 8
  store i8* %p2, i8** %p2.addr, align 8
  %0 = load i8*, i8** %p1.addr, align 8
  %1 = bitcast i8* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %p2.addr, align 8
  %4 = bitcast i8* %3 to i8**
  %5 = load i8*, i8** %4, align 8
  %call = call i32 @strcmp(i8* %2, i8* %5) #7
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define i8* @themes_get_theme_dir(%struct._Gimp* %gimp, i8* %theme_name) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %theme_name.addr = alloca i8*, align 8
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %theme_name, i8** %theme_name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.themes_get_theme_dir, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %13 = load i8*, i8** %theme_name.addr, align 8
  %tobool11 = icmp ne i8* %13, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %do.end
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8** %theme_name.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.end
  %14 = load %struct._GHashTable*, %struct._GHashTable** @themes_hash, align 8
  %15 = load i8*, i8** %theme_name.addr, align 8
  %call14 = call i8* @g_hash_table_lookup(%struct._GHashTable* %14, i8* %15)
  store i8* %call14, i8** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.else.9
  %16 = load i8*, i8** %retval
  ret i8* %16
}

declare i8* @g_hash_table_lookup(%struct._GHashTable*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @themes_get_theme_file(%struct._Gimp* %gimp, i8* %first_component, ...) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp.addr = alloca %struct._Gimp*, align 8
  %first_component.addr = alloca i8*, align 8
  %gui_config = alloca %struct._GimpGuiConfig*, align 8
  %file = alloca i8*, align 8
  %component = alloca i8*, align 8
  %path = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %__inst = alloca %struct._GTypeInstance*, align 8
  %__t = alloca i64, align 8
  %__r = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp22 = alloca i8*, align 8
  store %struct._Gimp* %gimp, %struct._Gimp** %gimp.addr, align 8
  store i8* %first_component, i8** %first_component.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %1 = bitcast %struct._Gimp* %0 to %struct._GTypeInstance*
  store %struct._GTypeInstance* %1, %struct._GTypeInstance** %__inst, align 8
  %call = call i64 @gimp_get_type() #6
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.themes_get_theme_file, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.10
  br label %do.body.11

do.body.11:                                       ; preds = %do.end
  %13 = load i8*, i8** %first_component.addr, align 8
  %cmp12 = icmp ne i8* %13, null
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end.15

if.else.14:                                       ; preds = %do.body.11
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.themes_get_theme_file, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.13
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %14 = load i8*, i8** %first_component.addr, align 8
  %call17 = call noalias i8* @g_strdup(i8* %14)
  store i8* %call17, i8** %file, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay18 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay18)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end.16
  %arraydecay19 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %15 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 3
  %reg_save_area = load i8*, i8** %15
  %16 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %17 = bitcast i8* %16 to i8**
  %18 = add i32 %gp_offset, 8
  store i32 %18, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay19, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %19 = bitcast i8* %overflow_arg_area to i8**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i8** [ %17, %vaarg.in_reg ], [ %19, %vaarg.in_mem ]
  %20 = load i8*, i8** %vaarg.addr
  store i8* %20, i8** %component, align 8
  %tobool20 = icmp ne i8* %20, null
  br i1 %tobool20, label %while.body, label %while.end

while.body:                                       ; preds = %vaarg.end
  %21 = load i8*, i8** %file, align 8
  %22 = load i8*, i8** %component, align 8
  %call23 = call noalias i8* (i8*, ...) @g_build_filename(i8* %21, i8* %22, i8* null)
  store i8* %call23, i8** %tmp22, align 8
  %23 = load i8*, i8** %file, align 8
  call void @g_free(i8* %23)
  %24 = load i8*, i8** %tmp22, align 8
  store i8* %24, i8** %file, align 8
  br label %while.cond

while.end:                                        ; preds = %vaarg.end
  %arraydecay24 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay2425 = bitcast %struct.__va_list_tag* %arraydecay24 to i8*
  call void @llvm.va_end(i8* %arraydecay2425)
  %25 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %config = getelementptr inbounds %struct._Gimp, %struct._Gimp* %25, i32 0, i32 1
  %26 = load %struct._GimpCoreConfig*, %struct._GimpCoreConfig** %config, align 8
  %27 = bitcast %struct._GimpCoreConfig* %26 to %struct._GTypeInstance*
  %call26 = call i64 @gimp_gui_config_get_type() #6
  %call27 = call %struct._GTypeInstance* @g_type_check_instance_cast(%struct._GTypeInstance* %27, i64 %call26)
  %28 = bitcast %struct._GTypeInstance* %call27 to %struct._GimpGuiConfig*
  store %struct._GimpGuiConfig* %28, %struct._GimpGuiConfig** %gui_config, align 8
  %29 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %30 = load %struct._GimpGuiConfig*, %struct._GimpGuiConfig** %gui_config, align 8
  %theme = getelementptr inbounds %struct._GimpGuiConfig, %struct._GimpGuiConfig* %30, i32 0, i32 20
  %31 = load i8*, i8** %theme, align 8
  %call28 = call i8* @themes_get_theme_dir(%struct._Gimp* %29, i8* %31)
  %32 = load i8*, i8** %file, align 8
  %call29 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call28, i8* %32, i8* null)
  store i8* %call29, i8** %path, align 8
  %33 = load i8*, i8** %path, align 8
  %call30 = call i32 @g_file_test(i8* %33, i32 16)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %if.end.35, label %if.then.32

if.then.32:                                       ; preds = %while.end
  %34 = load i8*, i8** %path, align 8
  call void @g_free(i8* %34)
  %35 = load %struct._Gimp*, %struct._Gimp** %gimp.addr, align 8
  %call33 = call i8* @themes_get_theme_dir(%struct._Gimp* %35, i8* null)
  %36 = load i8*, i8** %file, align 8
  %call34 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call33, i8* %36, i8* null)
  store i8* %call34, i8** %path, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %while.end
  %37 = load i8*, i8** %file, align 8
  call void @g_free(i8* %37)
  %38 = load i8*, i8** %path, align 8
  store i8* %38, i8** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.else.14, %if.else.9
  %39 = load i8*, i8** %retval
  ret i8* %39
}

declare noalias i8* @g_strdup(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare noalias i8* @g_build_filename(i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @g_file_test(i8*, i32) #3

; Function Attrs: nounwind readnone
declare i8* @gimp_gtkrc() #1

declare void @g_print(i8*, ...) #3

declare i8* @gimp_filename_to_utf8(i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare void @gimp_message(%struct._Gimp*, %struct._GObject*, i32, i8*, ...) #3

; Function Attrs: nounwind
declare i8* @gettext(i8*) #5

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

declare noalias i8* @g_strescape(i8*, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fclose(%struct._IO_FILE*) #3

declare i32 @g_hash_table_insert(%struct._GHashTable*, i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @gtk_rc_reparse_all() #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
