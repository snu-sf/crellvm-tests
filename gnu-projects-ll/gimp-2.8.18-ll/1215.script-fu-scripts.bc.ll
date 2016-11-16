; ModuleID = './plug-ins/script-fu/script-fu-scripts.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GTree = type opaque
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GimpParam = type { i32, %union._GimpParamData }
%union._GimpParamData = type { %struct._GimpRGB }
%struct._GimpRGB = type { double, double, double, double }
%struct.anon.5 = type { i8*, i8* }
%struct.SFScript = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, %struct.SFArg* }
%struct.SFArg = type { i32, i8*, %union.SFArgValue, %union.SFArgValue }
%union.SFArgValue = type { %struct.SFAdjustment }
%struct.SFAdjustment = type { %struct._GtkAdjustment*, double, double, double, double, double, i32, i32 }
%struct._GtkAdjustment = type { %struct._GtkObject, double, double, double, double, double, double }
%struct._GtkObject = type { %struct._GObject, i32 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpDatafileData = type { i8*, i8*, i8*, i64, i64, i64 }
%struct._GError = type { i32, i32, i8* }
%struct.SFMenu = type { %struct.SFScript*, i8* }
%struct.scheme = type { i8* (i64)*, void (i8*)*, i32, i32, [50 x i8*], [50 x %struct.cell*], i32, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, i32, i32, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, i64, %struct.cell*, %struct.cell*, %struct.cell*, %struct.cell*, [64 x %struct.port], [64 x i32], i32, i32, i8, i8, [1024 x i8], [1024 x i8], %struct._IO_FILE*, i32, i32, %struct.cell*, i32, i8*, i64, %struct.scheme_interface*, i8*, i32, [2 x i32], i32 }
%struct.cell = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { i8*, i32 }
%struct.port = type { i8, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { %struct._IO_FILE*, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.scheme_interface = type { void (%struct.scheme*, %struct.cell*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i64)*, %struct.cell* (%struct.scheme*, double)*, %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*)*, %struct.cell* (%struct.scheme*, i8*)*, %struct.cell* (%struct.scheme*, i8*, i32)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, i32)*, %struct.cell* (%struct.scheme*, {}*)*, %struct.cell* (%struct.scheme*, %struct.cell*, %struct.cell*)*, void (%struct.scheme*, i8*)*, void (%struct.scheme*, i32)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, { i8, i64 } (%struct.cell*)*, i64 (%struct.cell*)*, double (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)*, i64 (%struct.cell*)*, void (%struct.cell*, %struct.cell*)*, %struct.cell* (%struct.cell*, i32)*, %struct.cell* (%struct.cell*, i32, %struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*, %struct.cell*)*, %struct.cell* (%struct.cell*, %struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i8* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, i32 (%struct.cell*)*, void (%struct.cell*)*, void (%struct.scheme*, %struct._IO_FILE*)*, void (%struct.scheme*, i8*)* }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct.SFFilename = type { i8* }
%struct.SFBrush = type { i8*, double, i32, i32 }
%struct.SFOption = type { %struct._GSList*, i32 }
%struct._GSList = type { i8*, %struct._GSList* }
%struct.SFEnum = type { i8*, i32 }
%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GString = type { i8*, i64, i64 }

@script_tree = internal global %struct._GTree* null, align 8
@script_menu_list = internal global %struct._GList* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"Too few arguments to 'script-fu-register' call\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"script-fu-register: argument types must be integer values\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"script-fu-register: missing type specifier\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"script-fu-register: argument labels must be strings\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"script-fu-register: missing arguments label\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"script-fu-register: default IDs must be integer values\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"script-fu-register: invalid default color name\00", align 1
@.str.7 = private unnamed_addr constant [80 x i8] c"script-fu-register: color defaults must be a list of 3 integers or a color name\00", align 1
@.str.8 = private unnamed_addr constant [60 x i8] c"script-fu-register: toggle default must be an integer value\00", align 1
@.str.9 = private unnamed_addr constant [57 x i8] c"script-fu-register: value defaults must be string values\00", align 1
@.str.10 = private unnamed_addr constant [58 x i8] c"script-fu-register: string defaults must be string values\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"script-fu-register: adjustment defaults must be a list\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"script-fu-register: filename defaults must be string values\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"script-fu-register: dirname defaults must be string values\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"script-fu-register: font defaults must be string values\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"script-fu-register: palette defaults must be string values\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"script-fu-register: pattern defaults must be string values\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"script-fu-register: brush defaults must be a list\00", align 1
@.str.18 = private unnamed_addr constant [60 x i8] c"script-fu-register: gradient defaults must be string values\00", align 1
@.str.19 = private unnamed_addr constant [51 x i8] c"script-fu-register: option defaults must be a list\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"script-fu-register: enum defaults must be a list\00", align 1
@.str.21 = private unnamed_addr constant [71 x i8] c"script-fu-register: first element in enum defaults must be a type-name\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"Gimp\00", align 1
@.str.23 = private unnamed_addr constant [89 x i8] c"script-fu-register: first element in enum defaults must be the name of a registered type\00", align 1
@.str.24 = private unnamed_addr constant [69 x i8] c"script-fu-register: second element in enum defaults must be a string\00", align 1
@.str.25 = private unnamed_addr constant [45 x i8] c"script-fu-register: missing default argument\00", align 1
@.str.26 = private unnamed_addr constant [58 x i8] c"Incorrect number of arguments for script-fu-menu-register\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"Procedure %s in script-fu-menu-register does not exist\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c".scm\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"(load \22%s\22)\00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"Error while loading %s:\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"%s\0A\0A%s\00", align 1
@.str.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@script_fu_script_proc.values = internal global [2 x %struct._GimpParam] zeroinitializer, align 16
@script_fu_menu_map.mapping = internal constant [8 x %struct.anon.5] [%struct.anon.5 { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.34, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.46, i32 0, i32 0) }, %struct.anon.5 { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.40, i32 0, i32 0) }], align 16
@.str.33 = private unnamed_addr constant [26 x i8] c"<Image>/Script-Fu/Alchemy\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"<Image>/Filters/Artistic\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"<Image>/Script-Fu/Alpha to Logo\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"<Image>/Filters/Alpha to Logo\00", align 1
@.str.37 = private unnamed_addr constant [28 x i8] c"<Image>/Script-Fu/Animators\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"<Image>/Filters/Animation/Animators\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"<Image>/Script-Fu/Decor\00", align 1
@.str.40 = private unnamed_addr constant [22 x i8] c"<Image>/Filters/Decor\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"<Image>/Script-Fu/Render\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"<Image>/Filters/Render\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"<Image>/Script-Fu/Selection\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"<Image>/Select/Modify\00", align 1
@.str.45 = private unnamed_addr constant [25 x i8] c"<Image>/Script-Fu/Shadow\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"<Image>/Filters/Light and Shadow/Shadow\00", align 1
@.str.47 = private unnamed_addr constant [30 x i8] c"<Image>/Script-Fu/Stencil Ops\00", align 1

; Function Attrs: nounwind uwtable
define void @script_fu_find_scripts(i8* %path) #0 {
entry:
  %path.addr = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  %0 = load %struct._GTree*, %struct._GTree** @script_tree, align 8
  %cmp = icmp ne %struct._GTree* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._GTree*, %struct._GTree** @script_tree, align 8
  call void @g_tree_foreach(%struct._GTree* %1, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct._GList*, i8*)* @script_fu_remove_script to i32 (i8*, i8*, i8*)*), i8* null)
  %2 = load %struct._GTree*, %struct._GTree** @script_tree, align 8
  call void @g_tree_destroy(%struct._GTree* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %path.addr, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  br label %return

if.end.2:                                         ; preds = %if.end
  %call = call %struct._GTree* @g_tree_new(i32 (i8*, i8*)* @g_utf8_collate)
  store %struct._GTree* %call, %struct._GTree** @script_tree, align 8
  %4 = load i8*, i8** %path.addr, align 8
  call void @gimp_datafiles_read_directories(i8* %4, i32 1, void (%struct._GimpDatafileData*, i8*)* @script_fu_load_script, i8* null)
  %5 = load %struct._GTree*, %struct._GTree** @script_tree, align 8
  call void @g_tree_foreach(%struct._GTree* %5, i32 (i8*, i8*, i8*)* bitcast (i32 (i8*, %struct._GList*, i8*)* @script_fu_install_script to i32 (i8*, i8*, i8*)*), i8* null)
  %6 = load %struct._GList*, %struct._GList** @script_menu_list, align 8
  %call3 = call %struct._GList* @g_list_sort(%struct._GList* %6, i32 (i8*, i8*)* @script_fu_menu_compare)
  store %struct._GList* %call3, %struct._GList** @script_menu_list, align 8
  %7 = load %struct._GList*, %struct._GList** @script_menu_list, align 8
  call void @g_list_free_full(%struct._GList* %7, void (i8*)* bitcast (void (%struct.SFMenu*)* @script_fu_install_menu to void (i8*)*))
  store %struct._GList* null, %struct._GList** @script_menu_list, align 8
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1
  ret void
}

declare void @g_tree_foreach(%struct._GTree*, i32 (i8*, i8*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @script_fu_remove_script(i8* %foo, %struct._GList* %scripts, i8* %bar) #0 {
entry:
  %foo.addr = alloca i8*, align 8
  %scripts.addr = alloca %struct._GList*, align 8
  %bar.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %script = alloca %struct.SFScript*, align 8
  store i8* %foo, i8** %foo.addr, align 8
  store %struct._GList* %scripts, %struct._GList** %scripts.addr, align 8
  store i8* %bar, i8** %bar.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %scripts.addr, align 8
  store %struct._GList* %0, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct.SFScript*
  store %struct.SFScript* %4, %struct.SFScript** %script, align 8
  %5 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  call void @script_fu_script_uninstall_proc(%struct.SFScript* %5)
  %6 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  call void @script_fu_script_free(%struct.SFScript* %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %7, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %8 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %8, i32 0, i32 1
  %9 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %9, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct._GList*, %struct._GList** %scripts.addr, align 8
  call void @g_list_free(%struct._GList* %10)
  ret i32 0
}

declare void @g_tree_destroy(%struct._GTree*) #1

declare %struct._GTree* @g_tree_new(i32 (i8*, i8*)*) #1

; Function Attrs: nounwind readonly
declare i32 @g_utf8_collate(i8*, i8*) #2

declare void @gimp_datafiles_read_directories(i8*, i32, void (%struct._GimpDatafileData*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_load_script(%struct._GimpDatafileData* %file_data, i8* %user_data) #0 {
entry:
  %file_data.addr = alloca %struct._GimpDatafileData*, align 8
  %user_data.addr = alloca i8*, align 8
  %escaped = alloca i8*, align 8
  %command = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %display_name = alloca i8*, align 8
  %message = alloca i8*, align 8
  store %struct._GimpDatafileData* %file_data, %struct._GimpDatafileData** %file_data.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  %0 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %0, i32 0, i32 0
  %1 = load i8*, i8** %filename, align 8
  %call = call i32 @gimp_datafiles_check_extension(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %2 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename1 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %2, i32 0, i32 0
  %3 = load i8*, i8** %filename1, align 8
  %call2 = call i8* @script_fu_strescape(i8* %3)
  store i8* %call2, i8** %escaped, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %4 = load i8*, i8** %escaped, align 8
  %call3 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i32 0, i32 0), i8* %4)
  store i8* %call3, i8** %command, align 8
  %5 = load i8*, i8** %escaped, align 8
  call void @g_free(i8* %5)
  %6 = load i8*, i8** %command, align 8
  %call4 = call i32 @script_fu_run_command(i8* %6, %struct._GError** %error)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  %7 = load %struct._GimpDatafileData*, %struct._GimpDatafileData** %file_data.addr, align 8
  %filename7 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %7, i32 0, i32 0
  %8 = load i8*, i8** %filename7, align 8
  %call8 = call noalias i8* @g_filename_display_name(i8* %8)
  store i8* %call8, i8** %display_name, align 8
  %call9 = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.30, i32 0, i32 0)) #4
  %9 = load i8*, i8** %display_name, align 8
  %call10 = call noalias i8* (i8*, ...) @g_strdup_printf(i8* %call9, i8* %9)
  store i8* %call10, i8** %message, align 8
  %10 = load i8*, i8** %message, align 8
  %11 = load %struct._GError*, %struct._GError** %error, align 8
  %message11 = getelementptr inbounds %struct._GError, %struct._GError* %11, i32 0, i32 2
  %12 = load i8*, i8** %message11, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* %10, i8* %12)
  call void @g_clear_error(%struct._GError** %error)
  %13 = load i8*, i8** %message, align 8
  call void @g_free(i8* %13)
  %14 = load i8*, i8** %display_name, align 8
  call void @g_free(i8* %14)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %15 = load i8*, i8** %command, align 8
  call void @g_free(i8* %15)
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @script_fu_install_script(i8* %foo, %struct._GList* %scripts, i8* %bar) #0 {
entry:
  %foo.addr = alloca i8*, align 8
  %scripts.addr = alloca %struct._GList*, align 8
  %bar.addr = alloca i8*, align 8
  %list = alloca %struct._GList*, align 8
  %script = alloca %struct.SFScript*, align 8
  store i8* %foo, i8** %foo.addr, align 8
  store %struct._GList* %scripts, %struct._GList** %scripts.addr, align 8
  store i8* %bar, i8** %bar.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %scripts.addr, align 8
  store %struct._GList* %0, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct.SFScript*
  store %struct.SFScript* %4, %struct.SFScript** %script, align 8
  %5 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  call void @script_fu_script_install_proc(%struct.SFScript* %5, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)* @script_fu_script_proc)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool1 = icmp ne %struct._GList* %6, null
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %7 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %7, i32 0, i32 1
  %8 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %8, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare %struct._GList* @g_list_sort(%struct._GList*, i32 (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @script_fu_menu_compare(i8* %a, i8* %b) #0 {
entry:
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  %menu_a = alloca %struct.SFMenu*, align 8
  %menu_b = alloca %struct.SFMenu*, align 8
  %retval1 = alloca i32, align 4
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = bitcast i8* %0 to %struct.SFMenu*
  store %struct.SFMenu* %1, %struct.SFMenu** %menu_a, align 8
  %2 = load i8*, i8** %b.addr, align 8
  %3 = bitcast i8* %2 to %struct.SFMenu*
  store %struct.SFMenu* %3, %struct.SFMenu** %menu_b, align 8
  store i32 0, i32* %retval1, align 4
  %4 = load %struct.SFMenu*, %struct.SFMenu** %menu_a, align 8
  %menu_path = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %4, i32 0, i32 1
  %5 = load i8*, i8** %menu_path, align 8
  %tobool = icmp ne i8* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.22

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.SFMenu*, %struct.SFMenu** %menu_b, align 8
  %menu_path2 = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %6, i32 0, i32 1
  %7 = load i8*, i8** %menu_path2, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.then, label %if.end.22

if.then:                                          ; preds = %land.lhs.true
  %8 = load %struct.SFMenu*, %struct.SFMenu** %menu_a, align 8
  %menu_path4 = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %8, i32 0, i32 1
  %9 = load i8*, i8** %menu_path4, align 8
  %call = call i8* @gettext(i8* %9) #4
  %10 = load %struct.SFMenu*, %struct.SFMenu** %menu_b, align 8
  %menu_path5 = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %10, i32 0, i32 1
  %11 = load i8*, i8** %menu_path5, align 8
  %call6 = call i8* @gettext(i8* %11) #4
  %call7 = call i32 @g_utf8_collate(i8* %call, i8* %call6) #5
  store i32 %call7, i32* %retval1, align 4
  %12 = load i32, i32* %retval1, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %if.then
  %13 = load %struct.SFMenu*, %struct.SFMenu** %menu_a, align 8
  %script = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %13, i32 0, i32 0
  %14 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %menu_label = getelementptr inbounds %struct.SFScript, %struct.SFScript* %14, i32 0, i32 1
  %15 = load i8*, i8** %menu_label, align 8
  %tobool9 = icmp ne i8* %15, null
  br i1 %tobool9, label %land.lhs.true.10, label %if.end

land.lhs.true.10:                                 ; preds = %land.lhs.true.8
  %16 = load %struct.SFMenu*, %struct.SFMenu** %menu_b, align 8
  %script11 = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %16, i32 0, i32 0
  %17 = load %struct.SFScript*, %struct.SFScript** %script11, align 8
  %menu_label12 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %17, i32 0, i32 1
  %18 = load i8*, i8** %menu_label12, align 8
  %tobool13 = icmp ne i8* %18, null
  br i1 %tobool13, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %land.lhs.true.10
  %19 = load %struct.SFMenu*, %struct.SFMenu** %menu_a, align 8
  %script15 = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %19, i32 0, i32 0
  %20 = load %struct.SFScript*, %struct.SFScript** %script15, align 8
  %menu_label16 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %20, i32 0, i32 1
  %21 = load i8*, i8** %menu_label16, align 8
  %call17 = call i8* @gettext(i8* %21) #4
  %22 = load %struct.SFMenu*, %struct.SFMenu** %menu_b, align 8
  %script18 = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %22, i32 0, i32 0
  %23 = load %struct.SFScript*, %struct.SFScript** %script18, align 8
  %menu_label19 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %23, i32 0, i32 1
  %24 = load i8*, i8** %menu_label19, align 8
  %call20 = call i8* @gettext(i8* %24) #4
  %call21 = call i32 @g_utf8_collate(i8* %call17, i8* %call20) #5
  store i32 %call21, i32* %retval1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.14, %land.lhs.true.10, %land.lhs.true.8, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %land.lhs.true, %entry
  %25 = load i32, i32* %retval1, align 4
  ret i32 %25
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_install_menu(%struct.SFMenu* %menu) #0 {
entry:
  %menu.addr = alloca %struct.SFMenu*, align 8
  store %struct.SFMenu* %menu, %struct.SFMenu** %menu.addr, align 8
  %0 = load %struct.SFMenu*, %struct.SFMenu** %menu.addr, align 8
  %script = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %0, i32 0, i32 0
  %1 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %name = getelementptr inbounds %struct.SFScript, %struct.SFScript* %1, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %3 = load %struct.SFMenu*, %struct.SFMenu** %menu.addr, align 8
  %menu_path = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %3, i32 0, i32 1
  %4 = load i8*, i8** %menu_path, align 8
  %call = call i32 @gimp_plugin_menu_register(i8* %2, i8* %4)
  %5 = load %struct.SFMenu*, %struct.SFMenu** %menu.addr, align 8
  %menu_path1 = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %5, i32 0, i32 1
  %6 = load i8*, i8** %menu_path1, align 8
  call void @g_free(i8* %6)
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct.SFMenu*, %struct.SFMenu** %menu.addr, align 8
  %8 = bitcast %struct.SFMenu* %7 to i8*
  call void @g_slice_free1(i64 16, i8* %8)
  br label %do.end

do.end:                                           ; preds = %do.body
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.cell* @script_fu_add_script(%struct.scheme* %sc, %struct.cell* %a) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %a.addr = alloca %struct.cell*, align 8
  %script = alloca %struct.SFScript*, align 8
  %name = alloca i8*, align 8
  %menu_label = alloca i8*, align 8
  %blurb = alloca i8*, align 8
  %author = alloca i8*, align 8
  %copyright = alloca i8*, align 8
  %date = alloca i8*, align 8
  %image_types = alloca i8*, align 8
  %n_args = alloca i32, align 4
  %i = alloca i32, align 4
  %arg = alloca %struct.SFArg*, align 8
  %color_list = alloca %struct.cell*, align 8
  %r = alloca i8, align 1
  %g = alloca i8, align 1
  %b = alloca i8, align 1
  %adj_list = alloca %struct.cell*, align 8
  %brush_list = alloca %struct.cell*, align 8
  %option_list = alloca %struct.cell*, align 8
  %option_list628 = alloca %struct.cell*, align 8
  %val = alloca i8*, align 8
  %type_name = alloca i8*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %enum_type = alloca i64, align 8
  %mapped = alloca i8*, align 8
  %key = alloca i8*, align 8
  %list722 = alloca %struct._GList*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %a, %struct.cell** %a.addr, align 8
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %0, i32 0, i32 58
  %1 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %list_length = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1, i32 0, i32 29
  %2 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %list_length, align 8
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %4 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call = call i32 %2(%struct.scheme* %3, %struct.cell* %4)
  %cmp = icmp slt i32 %call, 7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i32 0, i32 0)) #4
  call void (i8*, ...) @g_message(i8* %call1)
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %5, i32 0, i32 17
  %6 = load %struct.cell*, %struct.cell** %NIL, align 8
  store %struct.cell* %6, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr2 = getelementptr inbounds %struct.scheme, %struct.scheme* %7, i32 0, i32 58
  %8 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr2, align 8
  %string_value = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %8, i32 0, i32 18
  %9 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value, align 8
  %10 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr3 = getelementptr inbounds %struct.scheme, %struct.scheme* %10, i32 0, i32 58
  %11 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr3, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %11, i32 0, i32 36
  %12 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %13 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call4 = call %struct.cell* %12(%struct.cell* %13)
  %call5 = call i8* %9(%struct.cell* %call4)
  store i8* %call5, i8** %name, align 8
  %14 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %14, i32 0, i32 58
  %15 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %pair_cdr = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %15, i32 0, i32 37
  %16 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr, align 8
  %17 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call7 = call %struct.cell* %16(%struct.cell* %17)
  store %struct.cell* %call7, %struct.cell** %a.addr, align 8
  %18 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr8 = getelementptr inbounds %struct.scheme, %struct.scheme* %18, i32 0, i32 58
  %19 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr8, align 8
  %string_value9 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %19, i32 0, i32 18
  %20 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value9, align 8
  %21 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr10 = getelementptr inbounds %struct.scheme, %struct.scheme* %21, i32 0, i32 58
  %22 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr10, align 8
  %pair_car11 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %22, i32 0, i32 36
  %23 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car11, align 8
  %24 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call12 = call %struct.cell* %23(%struct.cell* %24)
  %call13 = call i8* %20(%struct.cell* %call12)
  store i8* %call13, i8** %menu_label, align 8
  %25 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr14 = getelementptr inbounds %struct.scheme, %struct.scheme* %25, i32 0, i32 58
  %26 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr14, align 8
  %pair_cdr15 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %26, i32 0, i32 37
  %27 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr15, align 8
  %28 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call16 = call %struct.cell* %27(%struct.cell* %28)
  store %struct.cell* %call16, %struct.cell** %a.addr, align 8
  %29 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr17 = getelementptr inbounds %struct.scheme, %struct.scheme* %29, i32 0, i32 58
  %30 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr17, align 8
  %string_value18 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %30, i32 0, i32 18
  %31 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value18, align 8
  %32 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr19 = getelementptr inbounds %struct.scheme, %struct.scheme* %32, i32 0, i32 58
  %33 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr19, align 8
  %pair_car20 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %33, i32 0, i32 36
  %34 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car20, align 8
  %35 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call21 = call %struct.cell* %34(%struct.cell* %35)
  %call22 = call i8* %31(%struct.cell* %call21)
  store i8* %call22, i8** %blurb, align 8
  %36 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr23 = getelementptr inbounds %struct.scheme, %struct.scheme* %36, i32 0, i32 58
  %37 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr23, align 8
  %pair_cdr24 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %37, i32 0, i32 37
  %38 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr24, align 8
  %39 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call25 = call %struct.cell* %38(%struct.cell* %39)
  store %struct.cell* %call25, %struct.cell** %a.addr, align 8
  %40 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr26 = getelementptr inbounds %struct.scheme, %struct.scheme* %40, i32 0, i32 58
  %41 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr26, align 8
  %string_value27 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %41, i32 0, i32 18
  %42 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value27, align 8
  %43 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr28 = getelementptr inbounds %struct.scheme, %struct.scheme* %43, i32 0, i32 58
  %44 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr28, align 8
  %pair_car29 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %44, i32 0, i32 36
  %45 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car29, align 8
  %46 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call30 = call %struct.cell* %45(%struct.cell* %46)
  %call31 = call i8* %42(%struct.cell* %call30)
  store i8* %call31, i8** %author, align 8
  %47 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr32 = getelementptr inbounds %struct.scheme, %struct.scheme* %47, i32 0, i32 58
  %48 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr32, align 8
  %pair_cdr33 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %48, i32 0, i32 37
  %49 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr33, align 8
  %50 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call34 = call %struct.cell* %49(%struct.cell* %50)
  store %struct.cell* %call34, %struct.cell** %a.addr, align 8
  %51 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr35 = getelementptr inbounds %struct.scheme, %struct.scheme* %51, i32 0, i32 58
  %52 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr35, align 8
  %string_value36 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %52, i32 0, i32 18
  %53 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value36, align 8
  %54 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr37 = getelementptr inbounds %struct.scheme, %struct.scheme* %54, i32 0, i32 58
  %55 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr37, align 8
  %pair_car38 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %55, i32 0, i32 36
  %56 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car38, align 8
  %57 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call39 = call %struct.cell* %56(%struct.cell* %57)
  %call40 = call i8* %53(%struct.cell* %call39)
  store i8* %call40, i8** %copyright, align 8
  %58 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr41 = getelementptr inbounds %struct.scheme, %struct.scheme* %58, i32 0, i32 58
  %59 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr41, align 8
  %pair_cdr42 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %59, i32 0, i32 37
  %60 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr42, align 8
  %61 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call43 = call %struct.cell* %60(%struct.cell* %61)
  store %struct.cell* %call43, %struct.cell** %a.addr, align 8
  %62 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr44 = getelementptr inbounds %struct.scheme, %struct.scheme* %62, i32 0, i32 58
  %63 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr44, align 8
  %string_value45 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %63, i32 0, i32 18
  %64 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value45, align 8
  %65 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr46 = getelementptr inbounds %struct.scheme, %struct.scheme* %65, i32 0, i32 58
  %66 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr46, align 8
  %pair_car47 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %66, i32 0, i32 36
  %67 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car47, align 8
  %68 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call48 = call %struct.cell* %67(%struct.cell* %68)
  %call49 = call i8* %64(%struct.cell* %call48)
  store i8* %call49, i8** %date, align 8
  %69 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr50 = getelementptr inbounds %struct.scheme, %struct.scheme* %69, i32 0, i32 58
  %70 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr50, align 8
  %pair_cdr51 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %70, i32 0, i32 37
  %71 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr51, align 8
  %72 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call52 = call %struct.cell* %71(%struct.cell* %72)
  store %struct.cell* %call52, %struct.cell** %a.addr, align 8
  %73 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr53 = getelementptr inbounds %struct.scheme, %struct.scheme* %73, i32 0, i32 58
  %74 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr53, align 8
  %is_pair = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %74, i32 0, i32 35
  %75 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_pair, align 8
  %76 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call54 = call i32 %75(%struct.cell* %76)
  %tobool = icmp ne i32 %call54, 0
  br i1 %tobool, label %if.then.55, label %if.else

if.then.55:                                       ; preds = %if.end
  %77 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr56 = getelementptr inbounds %struct.scheme, %struct.scheme* %77, i32 0, i32 58
  %78 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr56, align 8
  %string_value57 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %78, i32 0, i32 18
  %79 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value57, align 8
  %80 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr58 = getelementptr inbounds %struct.scheme, %struct.scheme* %80, i32 0, i32 58
  %81 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr58, align 8
  %pair_car59 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %81, i32 0, i32 36
  %82 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car59, align 8
  %83 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call60 = call %struct.cell* %82(%struct.cell* %83)
  %call61 = call i8* %79(%struct.cell* %call60)
  store i8* %call61, i8** %image_types, align 8
  %84 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr62 = getelementptr inbounds %struct.scheme, %struct.scheme* %84, i32 0, i32 58
  %85 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr62, align 8
  %pair_cdr63 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %85, i32 0, i32 37
  %86 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr63, align 8
  %87 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call64 = call %struct.cell* %86(%struct.cell* %87)
  store %struct.cell* %call64, %struct.cell** %a.addr, align 8
  br label %if.end.69

if.else:                                          ; preds = %if.end
  %88 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr65 = getelementptr inbounds %struct.scheme, %struct.scheme* %88, i32 0, i32 58
  %89 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr65, align 8
  %string_value66 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %89, i32 0, i32 18
  %90 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value66, align 8
  %91 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call67 = call i8* %90(%struct.cell* %91)
  store i8* %call67, i8** %image_types, align 8
  %92 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL68 = getelementptr inbounds %struct.scheme, %struct.scheme* %92, i32 0, i32 17
  %93 = load %struct.cell*, %struct.cell** %NIL68, align 8
  store %struct.cell* %93, %struct.cell** %a.addr, align 8
  br label %if.end.69

if.end.69:                                        ; preds = %if.else, %if.then.55
  %94 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr70 = getelementptr inbounds %struct.scheme, %struct.scheme* %94, i32 0, i32 58
  %95 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr70, align 8
  %list_length71 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %95, i32 0, i32 29
  %96 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %list_length71, align 8
  %97 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %98 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call72 = call i32 %96(%struct.scheme* %97, %struct.cell* %98)
  %div = sdiv i32 %call72, 3
  store i32 %div, i32* %n_args, align 4
  %99 = load i8*, i8** %name, align 8
  %100 = load i8*, i8** %menu_label, align 8
  %101 = load i8*, i8** %blurb, align 8
  %102 = load i8*, i8** %author, align 8
  %103 = load i8*, i8** %copyright, align 8
  %104 = load i8*, i8** %date, align 8
  %105 = load i8*, i8** %image_types, align 8
  %106 = load i32, i32* %n_args, align 4
  %call73 = call %struct.SFScript* @script_fu_script_new(i8* %99, i8* %100, i8* %101, i8* %102, i8* %103, i8* %104, i8* %105, i32 %106)
  store %struct.SFScript* %call73, %struct.SFScript** %script, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.704, %if.end.69
  %107 = load i32, i32* %i, align 4
  %108 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %n_args74 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %108, i32 0, i32 7
  %109 = load i32, i32* %n_args74, align 4
  %cmp75 = icmp slt i32 %107, %109
  br i1 %cmp75, label %for.body, label %for.end.705

for.body:                                         ; preds = %for.cond
  %110 = load i32, i32* %i, align 4
  %idxprom = sext i32 %110 to i64
  %111 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %111, i32 0, i32 8
  %112 = load %struct.SFArg*, %struct.SFArg** %args, align 8
  %arrayidx = getelementptr inbounds %struct.SFArg, %struct.SFArg* %112, i64 %idxprom
  store %struct.SFArg* %arrayidx, %struct.SFArg** %arg, align 8
  %113 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %114 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL76 = getelementptr inbounds %struct.scheme, %struct.scheme* %114, i32 0, i32 17
  %115 = load %struct.cell*, %struct.cell** %NIL76, align 8
  %cmp77 = icmp ne %struct.cell* %113, %115
  br i1 %cmp77, label %if.then.78, label %if.else.96

if.then.78:                                       ; preds = %for.body
  %116 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr79 = getelementptr inbounds %struct.scheme, %struct.scheme* %116, i32 0, i32 58
  %117 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr79, align 8
  %is_integer = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %117, i32 0, i32 23
  %118 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_integer, align 8
  %119 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr80 = getelementptr inbounds %struct.scheme, %struct.scheme* %119, i32 0, i32 58
  %120 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr80, align 8
  %pair_car81 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %120, i32 0, i32 36
  %121 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car81, align 8
  %122 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call82 = call %struct.cell* %121(%struct.cell* %122)
  %call83 = call i32 %118(%struct.cell* %call82)
  %tobool84 = icmp ne i32 %call83, 0
  br i1 %tobool84, label %if.end.87, label %if.then.85

if.then.85:                                       ; preds = %if.then.78
  %123 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call86 = call %struct.cell* @foreign_error(%struct.scheme* %123, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call86, %struct.cell** %retval
  br label %return

if.end.87:                                        ; preds = %if.then.78
  %124 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr88 = getelementptr inbounds %struct.scheme, %struct.scheme* %124, i32 0, i32 58
  %125 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr88, align 8
  %ivalue = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %125, i32 0, i32 21
  %126 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue, align 8
  %127 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr89 = getelementptr inbounds %struct.scheme, %struct.scheme* %127, i32 0, i32 58
  %128 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr89, align 8
  %pair_car90 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %128, i32 0, i32 36
  %129 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car90, align 8
  %130 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call91 = call %struct.cell* %129(%struct.cell* %130)
  %call92 = call i64 %126(%struct.cell* %call91)
  %conv = trunc i64 %call92 to i32
  %131 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %type = getelementptr inbounds %struct.SFArg, %struct.SFArg* %131, i32 0, i32 0
  store i32 %conv, i32* %type, align 4
  %132 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr93 = getelementptr inbounds %struct.scheme, %struct.scheme* %132, i32 0, i32 58
  %133 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr93, align 8
  %pair_cdr94 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %133, i32 0, i32 37
  %134 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr94, align 8
  %135 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call95 = call %struct.cell* %134(%struct.cell* %135)
  store %struct.cell* %call95, %struct.cell** %a.addr, align 8
  br label %if.end.98

if.else.96:                                       ; preds = %for.body
  %136 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call97 = call %struct.cell* @foreign_error(%struct.scheme* %136, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call97, %struct.cell** %retval
  br label %return

if.end.98:                                        ; preds = %if.end.87
  %137 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %138 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL99 = getelementptr inbounds %struct.scheme, %struct.scheme* %138, i32 0, i32 17
  %139 = load %struct.cell*, %struct.cell** %NIL99, align 8
  %cmp100 = icmp ne %struct.cell* %137, %139
  br i1 %cmp100, label %if.then.102, label %if.else.122

if.then.102:                                      ; preds = %if.end.98
  %140 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr103 = getelementptr inbounds %struct.scheme, %struct.scheme* %140, i32 0, i32 58
  %141 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr103, align 8
  %is_string = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %141, i32 0, i32 16
  %142 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string, align 8
  %143 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr104 = getelementptr inbounds %struct.scheme, %struct.scheme* %143, i32 0, i32 58
  %144 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr104, align 8
  %pair_car105 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %144, i32 0, i32 36
  %145 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car105, align 8
  %146 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call106 = call %struct.cell* %145(%struct.cell* %146)
  %call107 = call i32 %142(%struct.cell* %call106)
  %tobool108 = icmp ne i32 %call107, 0
  br i1 %tobool108, label %if.end.111, label %if.then.109

if.then.109:                                      ; preds = %if.then.102
  %147 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call110 = call %struct.cell* @foreign_error(%struct.scheme* %147, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call110, %struct.cell** %retval
  br label %return

if.end.111:                                       ; preds = %if.then.102
  %148 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr112 = getelementptr inbounds %struct.scheme, %struct.scheme* %148, i32 0, i32 58
  %149 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr112, align 8
  %string_value113 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %149, i32 0, i32 18
  %150 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value113, align 8
  %151 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr114 = getelementptr inbounds %struct.scheme, %struct.scheme* %151, i32 0, i32 58
  %152 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr114, align 8
  %pair_car115 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %152, i32 0, i32 36
  %153 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car115, align 8
  %154 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call116 = call %struct.cell* %153(%struct.cell* %154)
  %call117 = call i8* %150(%struct.cell* %call116)
  %call118 = call noalias i8* @g_strdup(i8* %call117)
  %155 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %label = getelementptr inbounds %struct.SFArg, %struct.SFArg* %155, i32 0, i32 1
  store i8* %call118, i8** %label, align 8
  %156 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr119 = getelementptr inbounds %struct.scheme, %struct.scheme* %156, i32 0, i32 58
  %157 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr119, align 8
  %pair_cdr120 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %157, i32 0, i32 37
  %158 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr120, align 8
  %159 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call121 = call %struct.cell* %158(%struct.cell* %159)
  store %struct.cell* %call121, %struct.cell** %a.addr, align 8
  br label %if.end.124

if.else.122:                                      ; preds = %if.end.98
  %160 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call123 = call %struct.cell* @foreign_error(%struct.scheme* %160, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call123, %struct.cell** %retval
  br label %return

if.end.124:                                       ; preds = %if.end.111
  %161 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %162 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL125 = getelementptr inbounds %struct.scheme, %struct.scheme* %162, i32 0, i32 17
  %163 = load %struct.cell*, %struct.cell** %NIL125, align 8
  %cmp126 = icmp ne %struct.cell* %161, %163
  br i1 %cmp126, label %if.then.128, label %if.else.701

if.then.128:                                      ; preds = %if.end.124
  %164 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %type129 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %164, i32 0, i32 0
  %165 = load i32, i32* %type129, align 4
  switch i32 %165, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 20, label %sw.bb
    i32 5, label %sw.bb.147
    i32 6, label %sw.bb.290
    i32 7, label %sw.bb.310
    i32 8, label %sw.bb.329
    i32 18, label %sw.bb.329
    i32 9, label %sw.bb.349
    i32 14, label %sw.bb.435
    i32 15, label %sw.bb.446
    i32 10, label %sw.bb.465
    i32 17, label %sw.bb.484
    i32 11, label %sw.bb.503
    i32 12, label %sw.bb.522
    i32 13, label %sw.bb.577
    i32 16, label %sw.bb.596
    i32 19, label %sw.bb.627
  ]

sw.bb:                                            ; preds = %if.then.128, %if.then.128, %if.then.128, %if.then.128, %if.then.128, %if.then.128
  %166 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr130 = getelementptr inbounds %struct.scheme, %struct.scheme* %166, i32 0, i32 58
  %167 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr130, align 8
  %is_integer131 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %167, i32 0, i32 23
  %168 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_integer131, align 8
  %169 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr132 = getelementptr inbounds %struct.scheme, %struct.scheme* %169, i32 0, i32 58
  %170 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr132, align 8
  %pair_car133 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %170, i32 0, i32 36
  %171 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car133, align 8
  %172 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call134 = call %struct.cell* %171(%struct.cell* %172)
  %call135 = call i32 %168(%struct.cell* %call134)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.end.139, label %if.then.137

if.then.137:                                      ; preds = %sw.bb
  %173 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call138 = call %struct.cell* @foreign_error(%struct.scheme* %173, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call138, %struct.cell** %retval
  br label %return

if.end.139:                                       ; preds = %sw.bb
  %174 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr140 = getelementptr inbounds %struct.scheme, %struct.scheme* %174, i32 0, i32 58
  %175 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr140, align 8
  %ivalue141 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %175, i32 0, i32 21
  %176 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue141, align 8
  %177 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr142 = getelementptr inbounds %struct.scheme, %struct.scheme* %177, i32 0, i32 58
  %178 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr142, align 8
  %pair_car143 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %178, i32 0, i32 36
  %179 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car143, align 8
  %180 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call144 = call %struct.cell* %179(%struct.cell* %180)
  %call145 = call i64 %176(%struct.cell* %call144)
  %conv146 = trunc i64 %call145 to i32
  %181 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value = getelementptr inbounds %struct.SFArg, %struct.SFArg* %181, i32 0, i32 2
  %sfa_image = bitcast %union.SFArgValue* %default_value to i32*
  store i32 %conv146, i32* %sfa_image, align 4
  br label %sw.epilog

sw.bb.147:                                        ; preds = %if.then.128
  %182 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr148 = getelementptr inbounds %struct.scheme, %struct.scheme* %182, i32 0, i32 58
  %183 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr148, align 8
  %is_string149 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %183, i32 0, i32 16
  %184 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string149, align 8
  %185 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr150 = getelementptr inbounds %struct.scheme, %struct.scheme* %185, i32 0, i32 58
  %186 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr150, align 8
  %pair_car151 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %186, i32 0, i32 36
  %187 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car151, align 8
  %188 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call152 = call %struct.cell* %187(%struct.cell* %188)
  %call153 = call i32 %184(%struct.cell* %call152)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.then.155, label %if.else.170

if.then.155:                                      ; preds = %sw.bb.147
  %189 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value156 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %189, i32 0, i32 2
  %sfa_color = bitcast %union.SFArgValue* %default_value156 to %struct._GimpRGB*
  %190 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr157 = getelementptr inbounds %struct.scheme, %struct.scheme* %190, i32 0, i32 58
  %191 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr157, align 8
  %string_value158 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %191, i32 0, i32 18
  %192 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value158, align 8
  %193 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr159 = getelementptr inbounds %struct.scheme, %struct.scheme* %193, i32 0, i32 58
  %194 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr159, align 8
  %pair_car160 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %194, i32 0, i32 36
  %195 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car160, align 8
  %196 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call161 = call %struct.cell* %195(%struct.cell* %196)
  %call162 = call i8* %192(%struct.cell* %call161)
  %call163 = call i32 @gimp_rgb_parse_css(%struct._GimpRGB* %sfa_color, i8* %call162, i32 -1)
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.end.167, label %if.then.165

if.then.165:                                      ; preds = %if.then.155
  %197 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call166 = call %struct.cell* @foreign_error(%struct.scheme* %197, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call166, %struct.cell** %retval
  br label %return

if.end.167:                                       ; preds = %if.then.155
  %198 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value168 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %198, i32 0, i32 2
  %sfa_color169 = bitcast %union.SFArgValue* %default_value168 to %struct._GimpRGB*
  call void @gimp_rgb_set_alpha(%struct._GimpRGB* %sfa_color169, double 1.000000e+00)
  br label %if.end.289

if.else.170:                                      ; preds = %sw.bb.147
  %199 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr171 = getelementptr inbounds %struct.scheme, %struct.scheme* %199, i32 0, i32 58
  %200 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr171, align 8
  %is_list = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %200, i32 0, i32 27
  %201 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %is_list, align 8
  %202 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %203 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr172 = getelementptr inbounds %struct.scheme, %struct.scheme* %203, i32 0, i32 58
  %204 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr172, align 8
  %pair_car173 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %204, i32 0, i32 36
  %205 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car173, align 8
  %206 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call174 = call %struct.cell* %205(%struct.cell* %206)
  %call175 = call i32 %201(%struct.scheme* %202, %struct.cell* %call174)
  %tobool176 = icmp ne i32 %call175, 0
  br i1 %tobool176, label %land.lhs.true, label %if.else.286

land.lhs.true:                                    ; preds = %if.else.170
  %207 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr177 = getelementptr inbounds %struct.scheme, %struct.scheme* %207, i32 0, i32 58
  %208 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr177, align 8
  %list_length178 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %208, i32 0, i32 29
  %209 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %list_length178, align 8
  %210 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %211 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr179 = getelementptr inbounds %struct.scheme, %struct.scheme* %211, i32 0, i32 58
  %212 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr179, align 8
  %pair_car180 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %212, i32 0, i32 36
  %213 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car180, align 8
  %214 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call181 = call %struct.cell* %213(%struct.cell* %214)
  %call182 = call i32 %209(%struct.scheme* %210, %struct.cell* %call181)
  %cmp183 = icmp eq i32 %call182, 3
  br i1 %cmp183, label %if.then.185, label %if.else.286

if.then.185:                                      ; preds = %land.lhs.true
  %215 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr186 = getelementptr inbounds %struct.scheme, %struct.scheme* %215, i32 0, i32 58
  %216 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr186, align 8
  %pair_car187 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %216, i32 0, i32 36
  %217 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car187, align 8
  %218 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call188 = call %struct.cell* %217(%struct.cell* %218)
  store %struct.cell* %call188, %struct.cell** %color_list, align 8
  %219 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr189 = getelementptr inbounds %struct.scheme, %struct.scheme* %219, i32 0, i32 58
  %220 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr189, align 8
  %ivalue190 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %220, i32 0, i32 21
  %221 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue190, align 8
  %222 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr191 = getelementptr inbounds %struct.scheme, %struct.scheme* %222, i32 0, i32 58
  %223 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr191, align 8
  %pair_car192 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %223, i32 0, i32 36
  %224 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car192, align 8
  %225 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call193 = call %struct.cell* %224(%struct.cell* %225)
  %call194 = call i64 %221(%struct.cell* %call193)
  %cmp195 = icmp sgt i64 %call194, 255
  br i1 %cmp195, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.185
  br label %cond.end.213

cond.false:                                       ; preds = %if.then.185
  %226 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr197 = getelementptr inbounds %struct.scheme, %struct.scheme* %226, i32 0, i32 58
  %227 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr197, align 8
  %ivalue198 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %227, i32 0, i32 21
  %228 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue198, align 8
  %229 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr199 = getelementptr inbounds %struct.scheme, %struct.scheme* %229, i32 0, i32 58
  %230 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr199, align 8
  %pair_car200 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %230, i32 0, i32 36
  %231 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car200, align 8
  %232 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call201 = call %struct.cell* %231(%struct.cell* %232)
  %call202 = call i64 %228(%struct.cell* %call201)
  %cmp203 = icmp slt i64 %call202, 0
  br i1 %cmp203, label %cond.true.205, label %cond.false.206

cond.true.205:                                    ; preds = %cond.false
  br label %cond.end

cond.false.206:                                   ; preds = %cond.false
  %233 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr207 = getelementptr inbounds %struct.scheme, %struct.scheme* %233, i32 0, i32 58
  %234 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr207, align 8
  %ivalue208 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %234, i32 0, i32 21
  %235 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue208, align 8
  %236 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr209 = getelementptr inbounds %struct.scheme, %struct.scheme* %236, i32 0, i32 58
  %237 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr209, align 8
  %pair_car210 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %237, i32 0, i32 36
  %238 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car210, align 8
  %239 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call211 = call %struct.cell* %238(%struct.cell* %239)
  %call212 = call i64 %235(%struct.cell* %call211)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.206, %cond.true.205
  %cond = phi i64 [ 0, %cond.true.205 ], [ %call212, %cond.false.206 ]
  br label %cond.end.213

cond.end.213:                                     ; preds = %cond.end, %cond.true
  %cond214 = phi i64 [ 255, %cond.true ], [ %cond, %cond.end ]
  %conv215 = trunc i64 %cond214 to i8
  store i8 %conv215, i8* %r, align 1
  %240 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr216 = getelementptr inbounds %struct.scheme, %struct.scheme* %240, i32 0, i32 58
  %241 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr216, align 8
  %pair_cdr217 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %241, i32 0, i32 37
  %242 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr217, align 8
  %243 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call218 = call %struct.cell* %242(%struct.cell* %243)
  store %struct.cell* %call218, %struct.cell** %color_list, align 8
  %244 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr219 = getelementptr inbounds %struct.scheme, %struct.scheme* %244, i32 0, i32 58
  %245 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr219, align 8
  %ivalue220 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %245, i32 0, i32 21
  %246 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue220, align 8
  %247 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr221 = getelementptr inbounds %struct.scheme, %struct.scheme* %247, i32 0, i32 58
  %248 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr221, align 8
  %pair_car222 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %248, i32 0, i32 36
  %249 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car222, align 8
  %250 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call223 = call %struct.cell* %249(%struct.cell* %250)
  %call224 = call i64 %246(%struct.cell* %call223)
  %cmp225 = icmp sgt i64 %call224, 255
  br i1 %cmp225, label %cond.true.227, label %cond.false.228

cond.true.227:                                    ; preds = %cond.end.213
  br label %cond.end.247

cond.false.228:                                   ; preds = %cond.end.213
  %251 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr229 = getelementptr inbounds %struct.scheme, %struct.scheme* %251, i32 0, i32 58
  %252 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr229, align 8
  %ivalue230 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %252, i32 0, i32 21
  %253 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue230, align 8
  %254 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr231 = getelementptr inbounds %struct.scheme, %struct.scheme* %254, i32 0, i32 58
  %255 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr231, align 8
  %pair_car232 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %255, i32 0, i32 36
  %256 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car232, align 8
  %257 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call233 = call %struct.cell* %256(%struct.cell* %257)
  %call234 = call i64 %253(%struct.cell* %call233)
  %cmp235 = icmp slt i64 %call234, 0
  br i1 %cmp235, label %cond.true.237, label %cond.false.238

cond.true.237:                                    ; preds = %cond.false.228
  br label %cond.end.245

cond.false.238:                                   ; preds = %cond.false.228
  %258 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr239 = getelementptr inbounds %struct.scheme, %struct.scheme* %258, i32 0, i32 58
  %259 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr239, align 8
  %ivalue240 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %259, i32 0, i32 21
  %260 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue240, align 8
  %261 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr241 = getelementptr inbounds %struct.scheme, %struct.scheme* %261, i32 0, i32 58
  %262 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr241, align 8
  %pair_car242 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %262, i32 0, i32 36
  %263 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car242, align 8
  %264 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call243 = call %struct.cell* %263(%struct.cell* %264)
  %call244 = call i64 %260(%struct.cell* %call243)
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.238, %cond.true.237
  %cond246 = phi i64 [ 0, %cond.true.237 ], [ %call244, %cond.false.238 ]
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.end.245, %cond.true.227
  %cond248 = phi i64 [ 255, %cond.true.227 ], [ %cond246, %cond.end.245 ]
  %conv249 = trunc i64 %cond248 to i8
  store i8 %conv249, i8* %g, align 1
  %265 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr250 = getelementptr inbounds %struct.scheme, %struct.scheme* %265, i32 0, i32 58
  %266 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr250, align 8
  %pair_cdr251 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %266, i32 0, i32 37
  %267 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr251, align 8
  %268 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call252 = call %struct.cell* %267(%struct.cell* %268)
  store %struct.cell* %call252, %struct.cell** %color_list, align 8
  %269 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr253 = getelementptr inbounds %struct.scheme, %struct.scheme* %269, i32 0, i32 58
  %270 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr253, align 8
  %ivalue254 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %270, i32 0, i32 21
  %271 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue254, align 8
  %272 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr255 = getelementptr inbounds %struct.scheme, %struct.scheme* %272, i32 0, i32 58
  %273 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr255, align 8
  %pair_car256 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %273, i32 0, i32 36
  %274 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car256, align 8
  %275 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call257 = call %struct.cell* %274(%struct.cell* %275)
  %call258 = call i64 %271(%struct.cell* %call257)
  %cmp259 = icmp sgt i64 %call258, 255
  br i1 %cmp259, label %cond.true.261, label %cond.false.262

cond.true.261:                                    ; preds = %cond.end.247
  br label %cond.end.281

cond.false.262:                                   ; preds = %cond.end.247
  %276 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr263 = getelementptr inbounds %struct.scheme, %struct.scheme* %276, i32 0, i32 58
  %277 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr263, align 8
  %ivalue264 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %277, i32 0, i32 21
  %278 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue264, align 8
  %279 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr265 = getelementptr inbounds %struct.scheme, %struct.scheme* %279, i32 0, i32 58
  %280 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr265, align 8
  %pair_car266 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %280, i32 0, i32 36
  %281 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car266, align 8
  %282 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call267 = call %struct.cell* %281(%struct.cell* %282)
  %call268 = call i64 %278(%struct.cell* %call267)
  %cmp269 = icmp slt i64 %call268, 0
  br i1 %cmp269, label %cond.true.271, label %cond.false.272

cond.true.271:                                    ; preds = %cond.false.262
  br label %cond.end.279

cond.false.272:                                   ; preds = %cond.false.262
  %283 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr273 = getelementptr inbounds %struct.scheme, %struct.scheme* %283, i32 0, i32 58
  %284 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr273, align 8
  %ivalue274 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %284, i32 0, i32 21
  %285 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue274, align 8
  %286 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr275 = getelementptr inbounds %struct.scheme, %struct.scheme* %286, i32 0, i32 58
  %287 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr275, align 8
  %pair_car276 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %287, i32 0, i32 36
  %288 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car276, align 8
  %289 = load %struct.cell*, %struct.cell** %color_list, align 8
  %call277 = call %struct.cell* %288(%struct.cell* %289)
  %call278 = call i64 %285(%struct.cell* %call277)
  br label %cond.end.279

cond.end.279:                                     ; preds = %cond.false.272, %cond.true.271
  %cond280 = phi i64 [ 0, %cond.true.271 ], [ %call278, %cond.false.272 ]
  br label %cond.end.281

cond.end.281:                                     ; preds = %cond.end.279, %cond.true.261
  %cond282 = phi i64 [ 255, %cond.true.261 ], [ %cond280, %cond.end.279 ]
  %conv283 = trunc i64 %cond282 to i8
  store i8 %conv283, i8* %b, align 1
  %290 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value284 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %290, i32 0, i32 2
  %sfa_color285 = bitcast %union.SFArgValue* %default_value284 to %struct._GimpRGB*
  %291 = load i8, i8* %r, align 1
  %292 = load i8, i8* %g, align 1
  %293 = load i8, i8* %b, align 1
  call void @gimp_rgb_set_uchar(%struct._GimpRGB* %sfa_color285, i8 zeroext %291, i8 zeroext %292, i8 zeroext %293)
  br label %if.end.288

if.else.286:                                      ; preds = %land.lhs.true, %if.else.170
  %294 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call287 = call %struct.cell* @foreign_error(%struct.scheme* %294, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.7, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call287, %struct.cell** %retval
  br label %return

if.end.288:                                       ; preds = %cond.end.281
  br label %if.end.289

if.end.289:                                       ; preds = %if.end.288, %if.end.167
  br label %sw.epilog

sw.bb.290:                                        ; preds = %if.then.128
  %295 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr291 = getelementptr inbounds %struct.scheme, %struct.scheme* %295, i32 0, i32 58
  %296 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr291, align 8
  %is_integer292 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %296, i32 0, i32 23
  %297 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_integer292, align 8
  %298 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr293 = getelementptr inbounds %struct.scheme, %struct.scheme* %298, i32 0, i32 58
  %299 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr293, align 8
  %pair_car294 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %299, i32 0, i32 36
  %300 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car294, align 8
  %301 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call295 = call %struct.cell* %300(%struct.cell* %301)
  %call296 = call i32 %297(%struct.cell* %call295)
  %tobool297 = icmp ne i32 %call296, 0
  br i1 %tobool297, label %if.end.300, label %if.then.298

if.then.298:                                      ; preds = %sw.bb.290
  %302 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call299 = call %struct.cell* @foreign_error(%struct.scheme* %302, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.8, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call299, %struct.cell** %retval
  br label %return

if.end.300:                                       ; preds = %sw.bb.290
  %303 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr301 = getelementptr inbounds %struct.scheme, %struct.scheme* %303, i32 0, i32 58
  %304 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr301, align 8
  %ivalue302 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %304, i32 0, i32 21
  %305 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue302, align 8
  %306 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr303 = getelementptr inbounds %struct.scheme, %struct.scheme* %306, i32 0, i32 58
  %307 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr303, align 8
  %pair_car304 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %307, i32 0, i32 36
  %308 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car304, align 8
  %309 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call305 = call %struct.cell* %308(%struct.cell* %309)
  %call306 = call i64 %305(%struct.cell* %call305)
  %tobool307 = icmp ne i64 %call306, 0
  %cond308 = select i1 %tobool307, i32 1, i32 0
  %310 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value309 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %310, i32 0, i32 2
  %sfa_toggle = bitcast %union.SFArgValue* %default_value309 to i32*
  store i32 %cond308, i32* %sfa_toggle, align 4
  br label %sw.epilog

sw.bb.310:                                        ; preds = %if.then.128
  %311 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr311 = getelementptr inbounds %struct.scheme, %struct.scheme* %311, i32 0, i32 58
  %312 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr311, align 8
  %is_string312 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %312, i32 0, i32 16
  %313 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string312, align 8
  %314 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr313 = getelementptr inbounds %struct.scheme, %struct.scheme* %314, i32 0, i32 58
  %315 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr313, align 8
  %pair_car314 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %315, i32 0, i32 36
  %316 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car314, align 8
  %317 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call315 = call %struct.cell* %316(%struct.cell* %317)
  %call316 = call i32 %313(%struct.cell* %call315)
  %tobool317 = icmp ne i32 %call316, 0
  br i1 %tobool317, label %if.end.320, label %if.then.318

if.then.318:                                      ; preds = %sw.bb.310
  %318 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call319 = call %struct.cell* @foreign_error(%struct.scheme* %318, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.9, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call319, %struct.cell** %retval
  br label %return

if.end.320:                                       ; preds = %sw.bb.310
  %319 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr321 = getelementptr inbounds %struct.scheme, %struct.scheme* %319, i32 0, i32 58
  %320 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr321, align 8
  %string_value322 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %320, i32 0, i32 18
  %321 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value322, align 8
  %322 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr323 = getelementptr inbounds %struct.scheme, %struct.scheme* %322, i32 0, i32 58
  %323 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr323, align 8
  %pair_car324 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %323, i32 0, i32 36
  %324 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car324, align 8
  %325 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call325 = call %struct.cell* %324(%struct.cell* %325)
  %call326 = call i8* %321(%struct.cell* %call325)
  %call327 = call noalias i8* @g_strdup(i8* %call326)
  %326 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value328 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %326, i32 0, i32 2
  %sfa_value = bitcast %union.SFArgValue* %default_value328 to i8**
  store i8* %call327, i8** %sfa_value, align 8
  br label %sw.epilog

sw.bb.329:                                        ; preds = %if.then.128, %if.then.128
  %327 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr330 = getelementptr inbounds %struct.scheme, %struct.scheme* %327, i32 0, i32 58
  %328 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr330, align 8
  %is_string331 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %328, i32 0, i32 16
  %329 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string331, align 8
  %330 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr332 = getelementptr inbounds %struct.scheme, %struct.scheme* %330, i32 0, i32 58
  %331 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr332, align 8
  %pair_car333 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %331, i32 0, i32 36
  %332 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car333, align 8
  %333 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call334 = call %struct.cell* %332(%struct.cell* %333)
  %call335 = call i32 %329(%struct.cell* %call334)
  %tobool336 = icmp ne i32 %call335, 0
  br i1 %tobool336, label %if.end.339, label %if.then.337

if.then.337:                                      ; preds = %sw.bb.329
  %334 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call338 = call %struct.cell* @foreign_error(%struct.scheme* %334, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.10, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call338, %struct.cell** %retval
  br label %return

if.end.339:                                       ; preds = %sw.bb.329
  %335 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr340 = getelementptr inbounds %struct.scheme, %struct.scheme* %335, i32 0, i32 58
  %336 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr340, align 8
  %string_value341 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %336, i32 0, i32 18
  %337 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value341, align 8
  %338 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr342 = getelementptr inbounds %struct.scheme, %struct.scheme* %338, i32 0, i32 58
  %339 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr342, align 8
  %pair_car343 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %339, i32 0, i32 36
  %340 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car343, align 8
  %341 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call344 = call %struct.cell* %340(%struct.cell* %341)
  %call345 = call i8* %337(%struct.cell* %call344)
  %call346 = call noalias i8* @g_strdup(i8* %call345)
  %342 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value347 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %342, i32 0, i32 2
  %sfa_value348 = bitcast %union.SFArgValue* %default_value347 to i8**
  store i8* %call346, i8** %sfa_value348, align 8
  br label %sw.epilog

sw.bb.349:                                        ; preds = %if.then.128
  %343 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr350 = getelementptr inbounds %struct.scheme, %struct.scheme* %343, i32 0, i32 58
  %344 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr350, align 8
  %is_list351 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %344, i32 0, i32 27
  %345 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %is_list351, align 8
  %346 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %347 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call352 = call i32 %345(%struct.scheme* %346, %struct.cell* %347)
  %tobool353 = icmp ne i32 %call352, 0
  br i1 %tobool353, label %if.end.356, label %if.then.354

if.then.354:                                      ; preds = %sw.bb.349
  %348 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call355 = call %struct.cell* @foreign_error(%struct.scheme* %348, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call355, %struct.cell** %retval
  br label %return

if.end.356:                                       ; preds = %sw.bb.349
  %349 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr357 = getelementptr inbounds %struct.scheme, %struct.scheme* %349, i32 0, i32 58
  %350 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr357, align 8
  %pair_car358 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %350, i32 0, i32 36
  %351 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car358, align 8
  %352 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call359 = call %struct.cell* %351(%struct.cell* %352)
  store %struct.cell* %call359, %struct.cell** %adj_list, align 8
  %353 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr360 = getelementptr inbounds %struct.scheme, %struct.scheme* %353, i32 0, i32 58
  %354 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr360, align 8
  %rvalue = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %354, i32 0, i32 22
  %355 = load double (%struct.cell*)*, double (%struct.cell*)** %rvalue, align 8
  %356 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr361 = getelementptr inbounds %struct.scheme, %struct.scheme* %356, i32 0, i32 58
  %357 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr361, align 8
  %pair_car362 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %357, i32 0, i32 36
  %358 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car362, align 8
  %359 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call363 = call %struct.cell* %358(%struct.cell* %359)
  %call364 = call double %355(%struct.cell* %call363)
  %360 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value365 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %360, i32 0, i32 2
  %sfa_adjustment = bitcast %union.SFArgValue* %default_value365 to %struct.SFAdjustment*
  %value = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment, i32 0, i32 1
  store double %call364, double* %value, align 8
  %361 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr366 = getelementptr inbounds %struct.scheme, %struct.scheme* %361, i32 0, i32 58
  %362 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr366, align 8
  %pair_cdr367 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %362, i32 0, i32 37
  %363 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr367, align 8
  %364 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call368 = call %struct.cell* %363(%struct.cell* %364)
  store %struct.cell* %call368, %struct.cell** %adj_list, align 8
  %365 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr369 = getelementptr inbounds %struct.scheme, %struct.scheme* %365, i32 0, i32 58
  %366 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr369, align 8
  %rvalue370 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %366, i32 0, i32 22
  %367 = load double (%struct.cell*)*, double (%struct.cell*)** %rvalue370, align 8
  %368 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr371 = getelementptr inbounds %struct.scheme, %struct.scheme* %368, i32 0, i32 58
  %369 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr371, align 8
  %pair_car372 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %369, i32 0, i32 36
  %370 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car372, align 8
  %371 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call373 = call %struct.cell* %370(%struct.cell* %371)
  %call374 = call double %367(%struct.cell* %call373)
  %372 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value375 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %372, i32 0, i32 2
  %sfa_adjustment376 = bitcast %union.SFArgValue* %default_value375 to %struct.SFAdjustment*
  %lower = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment376, i32 0, i32 2
  store double %call374, double* %lower, align 8
  %373 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr377 = getelementptr inbounds %struct.scheme, %struct.scheme* %373, i32 0, i32 58
  %374 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr377, align 8
  %pair_cdr378 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %374, i32 0, i32 37
  %375 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr378, align 8
  %376 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call379 = call %struct.cell* %375(%struct.cell* %376)
  store %struct.cell* %call379, %struct.cell** %adj_list, align 8
  %377 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr380 = getelementptr inbounds %struct.scheme, %struct.scheme* %377, i32 0, i32 58
  %378 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr380, align 8
  %rvalue381 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %378, i32 0, i32 22
  %379 = load double (%struct.cell*)*, double (%struct.cell*)** %rvalue381, align 8
  %380 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr382 = getelementptr inbounds %struct.scheme, %struct.scheme* %380, i32 0, i32 58
  %381 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr382, align 8
  %pair_car383 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %381, i32 0, i32 36
  %382 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car383, align 8
  %383 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call384 = call %struct.cell* %382(%struct.cell* %383)
  %call385 = call double %379(%struct.cell* %call384)
  %384 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value386 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %384, i32 0, i32 2
  %sfa_adjustment387 = bitcast %union.SFArgValue* %default_value386 to %struct.SFAdjustment*
  %upper = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment387, i32 0, i32 3
  store double %call385, double* %upper, align 8
  %385 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr388 = getelementptr inbounds %struct.scheme, %struct.scheme* %385, i32 0, i32 58
  %386 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr388, align 8
  %pair_cdr389 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %386, i32 0, i32 37
  %387 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr389, align 8
  %388 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call390 = call %struct.cell* %387(%struct.cell* %388)
  store %struct.cell* %call390, %struct.cell** %adj_list, align 8
  %389 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr391 = getelementptr inbounds %struct.scheme, %struct.scheme* %389, i32 0, i32 58
  %390 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr391, align 8
  %rvalue392 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %390, i32 0, i32 22
  %391 = load double (%struct.cell*)*, double (%struct.cell*)** %rvalue392, align 8
  %392 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr393 = getelementptr inbounds %struct.scheme, %struct.scheme* %392, i32 0, i32 58
  %393 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr393, align 8
  %pair_car394 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %393, i32 0, i32 36
  %394 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car394, align 8
  %395 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call395 = call %struct.cell* %394(%struct.cell* %395)
  %call396 = call double %391(%struct.cell* %call395)
  %396 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value397 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %396, i32 0, i32 2
  %sfa_adjustment398 = bitcast %union.SFArgValue* %default_value397 to %struct.SFAdjustment*
  %step = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment398, i32 0, i32 4
  store double %call396, double* %step, align 8
  %397 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr399 = getelementptr inbounds %struct.scheme, %struct.scheme* %397, i32 0, i32 58
  %398 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr399, align 8
  %pair_cdr400 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %398, i32 0, i32 37
  %399 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr400, align 8
  %400 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call401 = call %struct.cell* %399(%struct.cell* %400)
  store %struct.cell* %call401, %struct.cell** %adj_list, align 8
  %401 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr402 = getelementptr inbounds %struct.scheme, %struct.scheme* %401, i32 0, i32 58
  %402 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr402, align 8
  %rvalue403 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %402, i32 0, i32 22
  %403 = load double (%struct.cell*)*, double (%struct.cell*)** %rvalue403, align 8
  %404 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr404 = getelementptr inbounds %struct.scheme, %struct.scheme* %404, i32 0, i32 58
  %405 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr404, align 8
  %pair_car405 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %405, i32 0, i32 36
  %406 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car405, align 8
  %407 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call406 = call %struct.cell* %406(%struct.cell* %407)
  %call407 = call double %403(%struct.cell* %call406)
  %408 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value408 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %408, i32 0, i32 2
  %sfa_adjustment409 = bitcast %union.SFArgValue* %default_value408 to %struct.SFAdjustment*
  %page = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment409, i32 0, i32 5
  store double %call407, double* %page, align 8
  %409 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr410 = getelementptr inbounds %struct.scheme, %struct.scheme* %409, i32 0, i32 58
  %410 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr410, align 8
  %pair_cdr411 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %410, i32 0, i32 37
  %411 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr411, align 8
  %412 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call412 = call %struct.cell* %411(%struct.cell* %412)
  store %struct.cell* %call412, %struct.cell** %adj_list, align 8
  %413 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr413 = getelementptr inbounds %struct.scheme, %struct.scheme* %413, i32 0, i32 58
  %414 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr413, align 8
  %ivalue414 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %414, i32 0, i32 21
  %415 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue414, align 8
  %416 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr415 = getelementptr inbounds %struct.scheme, %struct.scheme* %416, i32 0, i32 58
  %417 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr415, align 8
  %pair_car416 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %417, i32 0, i32 36
  %418 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car416, align 8
  %419 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call417 = call %struct.cell* %418(%struct.cell* %419)
  %call418 = call i64 %415(%struct.cell* %call417)
  %conv419 = trunc i64 %call418 to i32
  %420 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value420 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %420, i32 0, i32 2
  %sfa_adjustment421 = bitcast %union.SFArgValue* %default_value420 to %struct.SFAdjustment*
  %digits = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment421, i32 0, i32 6
  store i32 %conv419, i32* %digits, align 4
  %421 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr422 = getelementptr inbounds %struct.scheme, %struct.scheme* %421, i32 0, i32 58
  %422 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr422, align 8
  %pair_cdr423 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %422, i32 0, i32 37
  %423 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr423, align 8
  %424 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call424 = call %struct.cell* %423(%struct.cell* %424)
  store %struct.cell* %call424, %struct.cell** %adj_list, align 8
  %425 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr425 = getelementptr inbounds %struct.scheme, %struct.scheme* %425, i32 0, i32 58
  %426 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr425, align 8
  %ivalue426 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %426, i32 0, i32 21
  %427 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue426, align 8
  %428 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr427 = getelementptr inbounds %struct.scheme, %struct.scheme* %428, i32 0, i32 58
  %429 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr427, align 8
  %pair_car428 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %429, i32 0, i32 36
  %430 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car428, align 8
  %431 = load %struct.cell*, %struct.cell** %adj_list, align 8
  %call429 = call %struct.cell* %430(%struct.cell* %431)
  %call430 = call i64 %427(%struct.cell* %call429)
  %conv431 = trunc i64 %call430 to i32
  %432 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value432 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %432, i32 0, i32 2
  %sfa_adjustment433 = bitcast %union.SFArgValue* %default_value432 to %struct.SFAdjustment*
  %type434 = getelementptr inbounds %struct.SFAdjustment, %struct.SFAdjustment* %sfa_adjustment433, i32 0, i32 7
  store i32 %conv431, i32* %type434, align 4
  br label %sw.epilog

sw.bb.435:                                        ; preds = %if.then.128
  %433 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr436 = getelementptr inbounds %struct.scheme, %struct.scheme* %433, i32 0, i32 58
  %434 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr436, align 8
  %is_string437 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %434, i32 0, i32 16
  %435 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string437, align 8
  %436 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr438 = getelementptr inbounds %struct.scheme, %struct.scheme* %436, i32 0, i32 58
  %437 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr438, align 8
  %pair_car439 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %437, i32 0, i32 36
  %438 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car439, align 8
  %439 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call440 = call %struct.cell* %438(%struct.cell* %439)
  %call441 = call i32 %435(%struct.cell* %call440)
  %tobool442 = icmp ne i32 %call441, 0
  br i1 %tobool442, label %if.end.445, label %if.then.443

if.then.443:                                      ; preds = %sw.bb.435
  %440 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call444 = call %struct.cell* @foreign_error(%struct.scheme* %440, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call444, %struct.cell** %retval
  br label %return

if.end.445:                                       ; preds = %sw.bb.435
  br label %sw.bb.446

sw.bb.446:                                        ; preds = %if.then.128, %if.end.445
  %441 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr447 = getelementptr inbounds %struct.scheme, %struct.scheme* %441, i32 0, i32 58
  %442 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr447, align 8
  %is_string448 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %442, i32 0, i32 16
  %443 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string448, align 8
  %444 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr449 = getelementptr inbounds %struct.scheme, %struct.scheme* %444, i32 0, i32 58
  %445 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr449, align 8
  %pair_car450 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %445, i32 0, i32 36
  %446 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car450, align 8
  %447 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call451 = call %struct.cell* %446(%struct.cell* %447)
  %call452 = call i32 %443(%struct.cell* %call451)
  %tobool453 = icmp ne i32 %call452, 0
  br i1 %tobool453, label %if.end.456, label %if.then.454

if.then.454:                                      ; preds = %sw.bb.446
  %448 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call455 = call %struct.cell* @foreign_error(%struct.scheme* %448, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call455, %struct.cell** %retval
  br label %return

if.end.456:                                       ; preds = %sw.bb.446
  %449 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr457 = getelementptr inbounds %struct.scheme, %struct.scheme* %449, i32 0, i32 58
  %450 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr457, align 8
  %string_value458 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %450, i32 0, i32 18
  %451 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value458, align 8
  %452 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr459 = getelementptr inbounds %struct.scheme, %struct.scheme* %452, i32 0, i32 58
  %453 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr459, align 8
  %pair_car460 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %453, i32 0, i32 36
  %454 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car460, align 8
  %455 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call461 = call %struct.cell* %454(%struct.cell* %455)
  %call462 = call i8* %451(%struct.cell* %call461)
  %call463 = call noalias i8* @g_strdup(i8* %call462)
  %456 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value464 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %456, i32 0, i32 2
  %sfa_file = bitcast %union.SFArgValue* %default_value464 to %struct.SFFilename*
  %filename = getelementptr inbounds %struct.SFFilename, %struct.SFFilename* %sfa_file, i32 0, i32 0
  store i8* %call463, i8** %filename, align 8
  br label %sw.epilog

sw.bb.465:                                        ; preds = %if.then.128
  %457 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr466 = getelementptr inbounds %struct.scheme, %struct.scheme* %457, i32 0, i32 58
  %458 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr466, align 8
  %is_string467 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %458, i32 0, i32 16
  %459 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string467, align 8
  %460 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr468 = getelementptr inbounds %struct.scheme, %struct.scheme* %460, i32 0, i32 58
  %461 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr468, align 8
  %pair_car469 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %461, i32 0, i32 36
  %462 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car469, align 8
  %463 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call470 = call %struct.cell* %462(%struct.cell* %463)
  %call471 = call i32 %459(%struct.cell* %call470)
  %tobool472 = icmp ne i32 %call471, 0
  br i1 %tobool472, label %if.end.475, label %if.then.473

if.then.473:                                      ; preds = %sw.bb.465
  %464 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call474 = call %struct.cell* @foreign_error(%struct.scheme* %464, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call474, %struct.cell** %retval
  br label %return

if.end.475:                                       ; preds = %sw.bb.465
  %465 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr476 = getelementptr inbounds %struct.scheme, %struct.scheme* %465, i32 0, i32 58
  %466 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr476, align 8
  %string_value477 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %466, i32 0, i32 18
  %467 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value477, align 8
  %468 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr478 = getelementptr inbounds %struct.scheme, %struct.scheme* %468, i32 0, i32 58
  %469 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr478, align 8
  %pair_car479 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %469, i32 0, i32 36
  %470 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car479, align 8
  %471 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call480 = call %struct.cell* %470(%struct.cell* %471)
  %call481 = call i8* %467(%struct.cell* %call480)
  %call482 = call noalias i8* @g_strdup(i8* %call481)
  %472 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value483 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %472, i32 0, i32 2
  %sfa_font = bitcast %union.SFArgValue* %default_value483 to i8**
  store i8* %call482, i8** %sfa_font, align 8
  br label %sw.epilog

sw.bb.484:                                        ; preds = %if.then.128
  %473 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr485 = getelementptr inbounds %struct.scheme, %struct.scheme* %473, i32 0, i32 58
  %474 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr485, align 8
  %is_string486 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %474, i32 0, i32 16
  %475 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string486, align 8
  %476 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr487 = getelementptr inbounds %struct.scheme, %struct.scheme* %476, i32 0, i32 58
  %477 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr487, align 8
  %pair_car488 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %477, i32 0, i32 36
  %478 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car488, align 8
  %479 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call489 = call %struct.cell* %478(%struct.cell* %479)
  %call490 = call i32 %475(%struct.cell* %call489)
  %tobool491 = icmp ne i32 %call490, 0
  br i1 %tobool491, label %if.end.494, label %if.then.492

if.then.492:                                      ; preds = %sw.bb.484
  %480 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call493 = call %struct.cell* @foreign_error(%struct.scheme* %480, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call493, %struct.cell** %retval
  br label %return

if.end.494:                                       ; preds = %sw.bb.484
  %481 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr495 = getelementptr inbounds %struct.scheme, %struct.scheme* %481, i32 0, i32 58
  %482 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr495, align 8
  %string_value496 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %482, i32 0, i32 18
  %483 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value496, align 8
  %484 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr497 = getelementptr inbounds %struct.scheme, %struct.scheme* %484, i32 0, i32 58
  %485 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr497, align 8
  %pair_car498 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %485, i32 0, i32 36
  %486 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car498, align 8
  %487 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call499 = call %struct.cell* %486(%struct.cell* %487)
  %call500 = call i8* %483(%struct.cell* %call499)
  %call501 = call noalias i8* @g_strdup(i8* %call500)
  %488 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value502 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %488, i32 0, i32 2
  %sfa_palette = bitcast %union.SFArgValue* %default_value502 to i8**
  store i8* %call501, i8** %sfa_palette, align 8
  br label %sw.epilog

sw.bb.503:                                        ; preds = %if.then.128
  %489 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr504 = getelementptr inbounds %struct.scheme, %struct.scheme* %489, i32 0, i32 58
  %490 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr504, align 8
  %is_string505 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %490, i32 0, i32 16
  %491 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string505, align 8
  %492 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr506 = getelementptr inbounds %struct.scheme, %struct.scheme* %492, i32 0, i32 58
  %493 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr506, align 8
  %pair_car507 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %493, i32 0, i32 36
  %494 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car507, align 8
  %495 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call508 = call %struct.cell* %494(%struct.cell* %495)
  %call509 = call i32 %491(%struct.cell* %call508)
  %tobool510 = icmp ne i32 %call509, 0
  br i1 %tobool510, label %if.end.513, label %if.then.511

if.then.511:                                      ; preds = %sw.bb.503
  %496 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call512 = call %struct.cell* @foreign_error(%struct.scheme* %496, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.16, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call512, %struct.cell** %retval
  br label %return

if.end.513:                                       ; preds = %sw.bb.503
  %497 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr514 = getelementptr inbounds %struct.scheme, %struct.scheme* %497, i32 0, i32 58
  %498 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr514, align 8
  %string_value515 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %498, i32 0, i32 18
  %499 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value515, align 8
  %500 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr516 = getelementptr inbounds %struct.scheme, %struct.scheme* %500, i32 0, i32 58
  %501 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr516, align 8
  %pair_car517 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %501, i32 0, i32 36
  %502 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car517, align 8
  %503 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call518 = call %struct.cell* %502(%struct.cell* %503)
  %call519 = call i8* %499(%struct.cell* %call518)
  %call520 = call noalias i8* @g_strdup(i8* %call519)
  %504 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value521 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %504, i32 0, i32 2
  %sfa_pattern = bitcast %union.SFArgValue* %default_value521 to i8**
  store i8* %call520, i8** %sfa_pattern, align 8
  br label %sw.epilog

sw.bb.522:                                        ; preds = %if.then.128
  %505 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr523 = getelementptr inbounds %struct.scheme, %struct.scheme* %505, i32 0, i32 58
  %506 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr523, align 8
  %is_list524 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %506, i32 0, i32 27
  %507 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %is_list524, align 8
  %508 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %509 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call525 = call i32 %507(%struct.scheme* %508, %struct.cell* %509)
  %tobool526 = icmp ne i32 %call525, 0
  br i1 %tobool526, label %if.end.529, label %if.then.527

if.then.527:                                      ; preds = %sw.bb.522
  %510 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call528 = call %struct.cell* @foreign_error(%struct.scheme* %510, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call528, %struct.cell** %retval
  br label %return

if.end.529:                                       ; preds = %sw.bb.522
  %511 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr530 = getelementptr inbounds %struct.scheme, %struct.scheme* %511, i32 0, i32 58
  %512 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr530, align 8
  %pair_car531 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %512, i32 0, i32 36
  %513 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car531, align 8
  %514 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call532 = call %struct.cell* %513(%struct.cell* %514)
  store %struct.cell* %call532, %struct.cell** %brush_list, align 8
  %515 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr533 = getelementptr inbounds %struct.scheme, %struct.scheme* %515, i32 0, i32 58
  %516 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr533, align 8
  %string_value534 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %516, i32 0, i32 18
  %517 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value534, align 8
  %518 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr535 = getelementptr inbounds %struct.scheme, %struct.scheme* %518, i32 0, i32 58
  %519 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr535, align 8
  %pair_car536 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %519, i32 0, i32 36
  %520 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car536, align 8
  %521 = load %struct.cell*, %struct.cell** %brush_list, align 8
  %call537 = call %struct.cell* %520(%struct.cell* %521)
  %call538 = call i8* %517(%struct.cell* %call537)
  %call539 = call noalias i8* @g_strdup(i8* %call538)
  %522 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value540 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %522, i32 0, i32 2
  %sfa_brush = bitcast %union.SFArgValue* %default_value540 to %struct.SFBrush*
  %name541 = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush, i32 0, i32 0
  store i8* %call539, i8** %name541, align 8
  %523 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr542 = getelementptr inbounds %struct.scheme, %struct.scheme* %523, i32 0, i32 58
  %524 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr542, align 8
  %pair_cdr543 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %524, i32 0, i32 37
  %525 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr543, align 8
  %526 = load %struct.cell*, %struct.cell** %brush_list, align 8
  %call544 = call %struct.cell* %525(%struct.cell* %526)
  store %struct.cell* %call544, %struct.cell** %brush_list, align 8
  %527 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr545 = getelementptr inbounds %struct.scheme, %struct.scheme* %527, i32 0, i32 58
  %528 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr545, align 8
  %rvalue546 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %528, i32 0, i32 22
  %529 = load double (%struct.cell*)*, double (%struct.cell*)** %rvalue546, align 8
  %530 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr547 = getelementptr inbounds %struct.scheme, %struct.scheme* %530, i32 0, i32 58
  %531 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr547, align 8
  %pair_car548 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %531, i32 0, i32 36
  %532 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car548, align 8
  %533 = load %struct.cell*, %struct.cell** %brush_list, align 8
  %call549 = call %struct.cell* %532(%struct.cell* %533)
  %call550 = call double %529(%struct.cell* %call549)
  %534 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value551 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %534, i32 0, i32 2
  %sfa_brush552 = bitcast %union.SFArgValue* %default_value551 to %struct.SFBrush*
  %opacity = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush552, i32 0, i32 1
  store double %call550, double* %opacity, align 8
  %535 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr553 = getelementptr inbounds %struct.scheme, %struct.scheme* %535, i32 0, i32 58
  %536 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr553, align 8
  %pair_cdr554 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %536, i32 0, i32 37
  %537 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr554, align 8
  %538 = load %struct.cell*, %struct.cell** %brush_list, align 8
  %call555 = call %struct.cell* %537(%struct.cell* %538)
  store %struct.cell* %call555, %struct.cell** %brush_list, align 8
  %539 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr556 = getelementptr inbounds %struct.scheme, %struct.scheme* %539, i32 0, i32 58
  %540 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr556, align 8
  %ivalue557 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %540, i32 0, i32 21
  %541 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue557, align 8
  %542 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr558 = getelementptr inbounds %struct.scheme, %struct.scheme* %542, i32 0, i32 58
  %543 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr558, align 8
  %pair_car559 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %543, i32 0, i32 36
  %544 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car559, align 8
  %545 = load %struct.cell*, %struct.cell** %brush_list, align 8
  %call560 = call %struct.cell* %544(%struct.cell* %545)
  %call561 = call i64 %541(%struct.cell* %call560)
  %conv562 = trunc i64 %call561 to i32
  %546 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value563 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %546, i32 0, i32 2
  %sfa_brush564 = bitcast %union.SFArgValue* %default_value563 to %struct.SFBrush*
  %spacing = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush564, i32 0, i32 2
  store i32 %conv562, i32* %spacing, align 4
  %547 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr565 = getelementptr inbounds %struct.scheme, %struct.scheme* %547, i32 0, i32 58
  %548 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr565, align 8
  %pair_cdr566 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %548, i32 0, i32 37
  %549 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr566, align 8
  %550 = load %struct.cell*, %struct.cell** %brush_list, align 8
  %call567 = call %struct.cell* %549(%struct.cell* %550)
  store %struct.cell* %call567, %struct.cell** %brush_list, align 8
  %551 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr568 = getelementptr inbounds %struct.scheme, %struct.scheme* %551, i32 0, i32 58
  %552 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr568, align 8
  %ivalue569 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %552, i32 0, i32 21
  %553 = load i64 (%struct.cell*)*, i64 (%struct.cell*)** %ivalue569, align 8
  %554 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr570 = getelementptr inbounds %struct.scheme, %struct.scheme* %554, i32 0, i32 58
  %555 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr570, align 8
  %pair_car571 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %555, i32 0, i32 36
  %556 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car571, align 8
  %557 = load %struct.cell*, %struct.cell** %brush_list, align 8
  %call572 = call %struct.cell* %556(%struct.cell* %557)
  %call573 = call i64 %553(%struct.cell* %call572)
  %conv574 = trunc i64 %call573 to i32
  %558 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value575 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %558, i32 0, i32 2
  %sfa_brush576 = bitcast %union.SFArgValue* %default_value575 to %struct.SFBrush*
  %paint_mode = getelementptr inbounds %struct.SFBrush, %struct.SFBrush* %sfa_brush576, i32 0, i32 3
  store i32 %conv574, i32* %paint_mode, align 4
  br label %sw.epilog

sw.bb.577:                                        ; preds = %if.then.128
  %559 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr578 = getelementptr inbounds %struct.scheme, %struct.scheme* %559, i32 0, i32 58
  %560 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr578, align 8
  %is_string579 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %560, i32 0, i32 16
  %561 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string579, align 8
  %562 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr580 = getelementptr inbounds %struct.scheme, %struct.scheme* %562, i32 0, i32 58
  %563 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr580, align 8
  %pair_car581 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %563, i32 0, i32 36
  %564 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car581, align 8
  %565 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call582 = call %struct.cell* %564(%struct.cell* %565)
  %call583 = call i32 %561(%struct.cell* %call582)
  %tobool584 = icmp ne i32 %call583, 0
  br i1 %tobool584, label %if.end.587, label %if.then.585

if.then.585:                                      ; preds = %sw.bb.577
  %566 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call586 = call %struct.cell* @foreign_error(%struct.scheme* %566, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.18, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call586, %struct.cell** %retval
  br label %return

if.end.587:                                       ; preds = %sw.bb.577
  %567 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr588 = getelementptr inbounds %struct.scheme, %struct.scheme* %567, i32 0, i32 58
  %568 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr588, align 8
  %string_value589 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %568, i32 0, i32 18
  %569 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value589, align 8
  %570 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr590 = getelementptr inbounds %struct.scheme, %struct.scheme* %570, i32 0, i32 58
  %571 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr590, align 8
  %pair_car591 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %571, i32 0, i32 36
  %572 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car591, align 8
  %573 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call592 = call %struct.cell* %572(%struct.cell* %573)
  %call593 = call i8* %569(%struct.cell* %call592)
  %call594 = call noalias i8* @g_strdup(i8* %call593)
  %574 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value595 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %574, i32 0, i32 2
  %sfa_gradient = bitcast %union.SFArgValue* %default_value595 to i8**
  store i8* %call594, i8** %sfa_gradient, align 8
  br label %sw.epilog

sw.bb.596:                                        ; preds = %if.then.128
  %575 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr597 = getelementptr inbounds %struct.scheme, %struct.scheme* %575, i32 0, i32 58
  %576 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr597, align 8
  %is_list598 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %576, i32 0, i32 27
  %577 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %is_list598, align 8
  %578 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %579 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call599 = call i32 %577(%struct.scheme* %578, %struct.cell* %579)
  %tobool600 = icmp ne i32 %call599, 0
  br i1 %tobool600, label %if.end.603, label %if.then.601

if.then.601:                                      ; preds = %sw.bb.596
  %580 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call602 = call %struct.cell* @foreign_error(%struct.scheme* %580, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.19, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call602, %struct.cell** %retval
  br label %return

if.end.603:                                       ; preds = %sw.bb.596
  %581 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr604 = getelementptr inbounds %struct.scheme, %struct.scheme* %581, i32 0, i32 58
  %582 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr604, align 8
  %pair_car605 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %582, i32 0, i32 36
  %583 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car605, align 8
  %584 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call606 = call %struct.cell* %583(%struct.cell* %584)
  store %struct.cell* %call606, %struct.cell** %option_list, align 8
  br label %for.cond.607

for.cond.607:                                     ; preds = %for.inc, %if.end.603
  %585 = load %struct.cell*, %struct.cell** %option_list, align 8
  %586 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL608 = getelementptr inbounds %struct.scheme, %struct.scheme* %586, i32 0, i32 17
  %587 = load %struct.cell*, %struct.cell** %NIL608, align 8
  %cmp609 = icmp ne %struct.cell* %585, %587
  br i1 %cmp609, label %for.body.611, label %for.end

for.body.611:                                     ; preds = %for.cond.607
  %588 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value612 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %588, i32 0, i32 2
  %sfa_option = bitcast %union.SFArgValue* %default_value612 to %struct.SFOption*
  %list = getelementptr inbounds %struct.SFOption, %struct.SFOption* %sfa_option, i32 0, i32 0
  %589 = load %struct._GSList*, %struct._GSList** %list, align 8
  %590 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr613 = getelementptr inbounds %struct.scheme, %struct.scheme* %590, i32 0, i32 58
  %591 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr613, align 8
  %string_value614 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %591, i32 0, i32 18
  %592 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value614, align 8
  %593 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr615 = getelementptr inbounds %struct.scheme, %struct.scheme* %593, i32 0, i32 58
  %594 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr615, align 8
  %pair_car616 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %594, i32 0, i32 36
  %595 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car616, align 8
  %596 = load %struct.cell*, %struct.cell** %option_list, align 8
  %call617 = call %struct.cell* %595(%struct.cell* %596)
  %call618 = call i8* %592(%struct.cell* %call617)
  %call619 = call noalias i8* @g_strdup(i8* %call618)
  %call620 = call %struct._GSList* @g_slist_append(%struct._GSList* %589, i8* %call619)
  %597 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value621 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %597, i32 0, i32 2
  %sfa_option622 = bitcast %union.SFArgValue* %default_value621 to %struct.SFOption*
  %list623 = getelementptr inbounds %struct.SFOption, %struct.SFOption* %sfa_option622, i32 0, i32 0
  store %struct._GSList* %call620, %struct._GSList** %list623, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.611
  %598 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr624 = getelementptr inbounds %struct.scheme, %struct.scheme* %598, i32 0, i32 58
  %599 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr624, align 8
  %pair_cdr625 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %599, i32 0, i32 37
  %600 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr625, align 8
  %601 = load %struct.cell*, %struct.cell** %option_list, align 8
  %call626 = call %struct.cell* %600(%struct.cell* %601)
  store %struct.cell* %call626, %struct.cell** %option_list, align 8
  br label %for.cond.607

for.end:                                          ; preds = %for.cond.607
  br label %sw.epilog

sw.bb.627:                                        ; preds = %if.then.128
  %602 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr629 = getelementptr inbounds %struct.scheme, %struct.scheme* %602, i32 0, i32 58
  %603 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr629, align 8
  %is_list630 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %603, i32 0, i32 27
  %604 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %is_list630, align 8
  %605 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %606 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call631 = call i32 %604(%struct.scheme* %605, %struct.cell* %606)
  %tobool632 = icmp ne i32 %call631, 0
  br i1 %tobool632, label %if.end.635, label %if.then.633

if.then.633:                                      ; preds = %sw.bb.627
  %607 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call634 = call %struct.cell* @foreign_error(%struct.scheme* %607, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.20, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call634, %struct.cell** %retval
  br label %return

if.end.635:                                       ; preds = %sw.bb.627
  %608 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr636 = getelementptr inbounds %struct.scheme, %struct.scheme* %608, i32 0, i32 58
  %609 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr636, align 8
  %pair_car637 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %609, i32 0, i32 36
  %610 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car637, align 8
  %611 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call638 = call %struct.cell* %610(%struct.cell* %611)
  store %struct.cell* %call638, %struct.cell** %option_list628, align 8
  %612 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr639 = getelementptr inbounds %struct.scheme, %struct.scheme* %612, i32 0, i32 58
  %613 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr639, align 8
  %is_string640 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %613, i32 0, i32 16
  %614 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string640, align 8
  %615 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr641 = getelementptr inbounds %struct.scheme, %struct.scheme* %615, i32 0, i32 58
  %616 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr641, align 8
  %pair_car642 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %616, i32 0, i32 36
  %617 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car642, align 8
  %618 = load %struct.cell*, %struct.cell** %option_list628, align 8
  %call643 = call %struct.cell* %617(%struct.cell* %618)
  %call644 = call i32 %614(%struct.cell* %call643)
  %tobool645 = icmp ne i32 %call644, 0
  br i1 %tobool645, label %if.end.648, label %if.then.646

if.then.646:                                      ; preds = %if.end.635
  %619 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call647 = call %struct.cell* @foreign_error(%struct.scheme* %619, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.21, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call647, %struct.cell** %retval
  br label %return

if.end.648:                                       ; preds = %if.end.635
  %620 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr649 = getelementptr inbounds %struct.scheme, %struct.scheme* %620, i32 0, i32 58
  %621 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr649, align 8
  %string_value650 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %621, i32 0, i32 18
  %622 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value650, align 8
  %623 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr651 = getelementptr inbounds %struct.scheme, %struct.scheme* %623, i32 0, i32 58
  %624 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr651, align 8
  %pair_car652 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %624, i32 0, i32 36
  %625 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car652, align 8
  %626 = load %struct.cell*, %struct.cell** %option_list628, align 8
  %call653 = call %struct.cell* %625(%struct.cell* %626)
  %call654 = call i8* %622(%struct.cell* %call653)
  store i8* %call654, i8** %val, align 8
  %627 = load i8*, i8** %val, align 8
  %call655 = call i32 @g_str_has_prefix(i8* %627, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0))
  %tobool656 = icmp ne i32 %call655, 0
  br i1 %tobool656, label %if.then.657, label %if.else.659

if.then.657:                                      ; preds = %if.end.648
  %628 = load i8*, i8** %val, align 8
  %call658 = call noalias i8* @g_strdup(i8* %628)
  store i8* %call658, i8** %type_name, align 8
  br label %if.end.661

if.else.659:                                      ; preds = %if.end.648
  %629 = load i8*, i8** %val, align 8
  %call660 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0), i8* %629, i8* null)
  store i8* %call660, i8** %type_name, align 8
  br label %if.end.661

if.end.661:                                       ; preds = %if.else.659, %if.then.657
  %630 = load i8*, i8** %type_name, align 8
  %call662 = call i64 @g_type_from_name(i8* %630)
  store i64 %call662, i64* %enum_type, align 8
  %631 = load i64, i64* %enum_type, align 8
  %call663 = call i64 @g_type_fundamental(i64 %631)
  %cmp664 = icmp eq i64 %call663, 48
  br i1 %cmp664, label %if.end.668, label %if.then.666

if.then.666:                                      ; preds = %if.end.661
  %632 = load i8*, i8** %type_name, align 8
  call void @g_free(i8* %632)
  %633 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call667 = call %struct.cell* @foreign_error(%struct.scheme* %633, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.23, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call667, %struct.cell** %retval
  br label %return

if.end.668:                                       ; preds = %if.end.661
  %634 = load i8*, i8** %type_name, align 8
  %635 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value669 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %635, i32 0, i32 2
  %sfa_enum = bitcast %union.SFArgValue* %default_value669 to %struct.SFEnum*
  %type_name670 = getelementptr inbounds %struct.SFEnum, %struct.SFEnum* %sfa_enum, i32 0, i32 0
  store i8* %634, i8** %type_name670, align 8
  %636 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr671 = getelementptr inbounds %struct.scheme, %struct.scheme* %636, i32 0, i32 58
  %637 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr671, align 8
  %pair_cdr672 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %637, i32 0, i32 37
  %638 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr672, align 8
  %639 = load %struct.cell*, %struct.cell** %option_list628, align 8
  %call673 = call %struct.cell* %638(%struct.cell* %639)
  store %struct.cell* %call673, %struct.cell** %option_list628, align 8
  %640 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr674 = getelementptr inbounds %struct.scheme, %struct.scheme* %640, i32 0, i32 58
  %641 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr674, align 8
  %is_string675 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %641, i32 0, i32 16
  %642 = load i32 (%struct.cell*)*, i32 (%struct.cell*)** %is_string675, align 8
  %643 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr676 = getelementptr inbounds %struct.scheme, %struct.scheme* %643, i32 0, i32 58
  %644 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr676, align 8
  %pair_car677 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %644, i32 0, i32 36
  %645 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car677, align 8
  %646 = load %struct.cell*, %struct.cell** %option_list628, align 8
  %call678 = call %struct.cell* %645(%struct.cell* %646)
  %call679 = call i32 %642(%struct.cell* %call678)
  %tobool680 = icmp ne i32 %call679, 0
  br i1 %tobool680, label %if.end.683, label %if.then.681

if.then.681:                                      ; preds = %if.end.668
  %647 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call682 = call %struct.cell* @foreign_error(%struct.scheme* %647, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.24, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call682, %struct.cell** %retval
  br label %return

if.end.683:                                       ; preds = %if.end.668
  %648 = load i64, i64* %enum_type, align 8
  %call684 = call i8* @g_type_class_peek(i64 %648)
  %649 = bitcast i8* %call684 to %struct._GEnumClass*
  %650 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr685 = getelementptr inbounds %struct.scheme, %struct.scheme* %650, i32 0, i32 58
  %651 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr685, align 8
  %string_value686 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %651, i32 0, i32 18
  %652 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value686, align 8
  %653 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr687 = getelementptr inbounds %struct.scheme, %struct.scheme* %653, i32 0, i32 58
  %654 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr687, align 8
  %pair_car688 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %654, i32 0, i32 36
  %655 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car688, align 8
  %656 = load %struct.cell*, %struct.cell** %option_list628, align 8
  %call689 = call %struct.cell* %655(%struct.cell* %656)
  %call690 = call i8* %652(%struct.cell* %call689)
  %call691 = call %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass* %649, i8* %call690)
  store %struct._GEnumValue* %call691, %struct._GEnumValue** %enum_value, align 8
  %657 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %tobool692 = icmp ne %struct._GEnumValue* %657, null
  br i1 %tobool692, label %if.then.693, label %if.end.697

if.then.693:                                      ; preds = %if.end.683
  %658 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value694 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %658, i32 0, i32 0
  %659 = load i32, i32* %value694, align 4
  %660 = load %struct.SFArg*, %struct.SFArg** %arg, align 8
  %default_value695 = getelementptr inbounds %struct.SFArg, %struct.SFArg* %660, i32 0, i32 2
  %sfa_enum696 = bitcast %union.SFArgValue* %default_value695 to %struct.SFEnum*
  %history = getelementptr inbounds %struct.SFEnum, %struct.SFEnum* %sfa_enum696, i32 0, i32 1
  store i32 %659, i32* %history, align 4
  br label %if.end.697

if.end.697:                                       ; preds = %if.then.693, %if.end.683
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.128, %if.end.697, %for.end, %if.end.587, %if.end.529, %if.end.513, %if.end.494, %if.end.475, %if.end.456, %if.end.356, %if.end.339, %if.end.320, %if.end.300, %if.end.289, %if.end.139
  %661 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr698 = getelementptr inbounds %struct.scheme, %struct.scheme* %661, i32 0, i32 58
  %662 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr698, align 8
  %pair_cdr699 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %662, i32 0, i32 37
  %663 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr699, align 8
  %664 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call700 = call %struct.cell* %663(%struct.cell* %664)
  store %struct.cell* %call700, %struct.cell** %a.addr, align 8
  br label %if.end.703

if.else.701:                                      ; preds = %if.end.124
  %665 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call702 = call %struct.cell* @foreign_error(%struct.scheme* %665, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.25, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call702, %struct.cell** %retval
  br label %return

if.end.703:                                       ; preds = %sw.epilog
  br label %for.inc.704

for.inc.704:                                      ; preds = %if.end.703
  %666 = load i32, i32* %i, align 4
  %inc = add nsw i32 %666, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.705:                                      ; preds = %for.cond
  %667 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  call void @script_fu_script_reset(%struct.SFScript* %667, i32 1)
  %668 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %menu_label706 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %668, i32 0, i32 1
  %669 = load i8*, i8** %menu_label706, align 8
  %arrayidx707 = getelementptr inbounds i8, i8* %669, i64 0
  %670 = load i8, i8* %arrayidx707, align 1
  %conv708 = sext i8 %670 to i32
  %cmp709 = icmp eq i32 %conv708, 60
  br i1 %cmp709, label %if.then.711, label %if.end.719

if.then.711:                                      ; preds = %for.end.705
  %671 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %menu_label712 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %671, i32 0, i32 1
  %672 = load i8*, i8** %menu_label712, align 8
  %call713 = call i8* @script_fu_menu_map(i8* %672)
  store i8* %call713, i8** %mapped, align 8
  %673 = load i8*, i8** %mapped, align 8
  %tobool714 = icmp ne i8* %673, null
  br i1 %tobool714, label %if.then.715, label %if.end.718

if.then.715:                                      ; preds = %if.then.711
  %674 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %menu_label716 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %674, i32 0, i32 1
  %675 = load i8*, i8** %menu_label716, align 8
  call void @g_free(i8* %675)
  %676 = load i8*, i8** %mapped, align 8
  %677 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %menu_label717 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %677, i32 0, i32 1
  store i8* %676, i8** %menu_label717, align 8
  br label %if.end.718

if.end.718:                                       ; preds = %if.then.715, %if.then.711
  br label %if.end.719

if.end.719:                                       ; preds = %if.end.718, %for.end.705
  %678 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %menu_label720 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %678, i32 0, i32 1
  %679 = load i8*, i8** %menu_label720, align 8
  %call721 = call i8* @gettext(i8* %679) #4
  store i8* %call721, i8** %key, align 8
  %680 = load %struct._GTree*, %struct._GTree** @script_tree, align 8
  %681 = load i8*, i8** %key, align 8
  %call723 = call i8* @g_tree_lookup(%struct._GTree* %680, i8* %681)
  %682 = bitcast i8* %call723 to %struct._GList*
  store %struct._GList* %682, %struct._GList** %list722, align 8
  %683 = load %struct._GTree*, %struct._GTree** @script_tree, align 8
  %684 = load i8*, i8** %key, align 8
  %685 = load %struct._GList*, %struct._GList** %list722, align 8
  %686 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %687 = bitcast %struct.SFScript* %686 to i8*
  %call724 = call %struct._GList* @g_list_append(%struct._GList* %685, i8* %687)
  %688 = bitcast %struct._GList* %call724 to i8*
  call void @g_tree_insert(%struct._GTree* %683, i8* %684, i8* %688)
  %689 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL725 = getelementptr inbounds %struct.scheme, %struct.scheme* %689, i32 0, i32 17
  %690 = load %struct.cell*, %struct.cell** %NIL725, align 8
  store %struct.cell* %690, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.719, %if.else.701, %if.then.681, %if.then.666, %if.then.646, %if.then.633, %if.then.601, %if.then.585, %if.then.527, %if.then.511, %if.then.492, %if.then.473, %if.then.454, %if.then.443, %if.then.354, %if.then.337, %if.then.318, %if.then.298, %if.else.286, %if.then.165, %if.then.137, %if.else.122, %if.then.109, %if.else.96, %if.then.85, %if.then
  %691 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %691
}

; Function Attrs: nounwind uwtable
define internal void @g_message(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* null, i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare %struct.SFScript* @script_fu_script_new(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32) #1

declare %struct.cell* @foreign_error(%struct.scheme*, i8*, %struct.cell*) #1

declare noalias i8* @g_strdup(i8*) #1

declare i32 @gimp_rgb_parse_css(%struct._GimpRGB*, i8*, i32) #1

declare void @gimp_rgb_set_alpha(%struct._GimpRGB*, double) #1

declare void @gimp_rgb_set_uchar(%struct._GimpRGB*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare %struct._GSList* @g_slist_append(%struct._GSList*, i8*) #1

declare i32 @g_str_has_prefix(i8*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i64 @g_type_from_name(i8*) #1

declare i64 @g_type_fundamental(i64) #1

declare void @g_free(i8*) #1

declare %struct._GEnumValue* @g_enum_get_value_by_nick(%struct._GEnumClass*, i8*) #1

declare i8* @g_type_class_peek(i64) #1

declare void @script_fu_script_reset(%struct.SFScript*, i32) #1

; Function Attrs: nounwind uwtable
define internal i8* @script_fu_menu_map(i8* %menu_path) #0 {
entry:
  %retval = alloca i8*, align 8
  %menu_path.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %suffix = alloca i8*, align 8
  store i8* %menu_path, i8** %menu_path.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i8*, i8** %menu_path.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x %struct.anon.5], [8 x %struct.anon.5]* @script_fu_menu_map.mapping, i32 0, i64 %idxprom
  %old = getelementptr inbounds %struct.anon.5, %struct.anon.5* %arrayidx, i32 0, i32 0
  %3 = load i8*, i8** %old, align 8
  %call = call i32 @g_str_has_prefix(i8* %1, i8* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.13

if.then:                                          ; preds = %for.body
  %4 = load i8*, i8** %menu_path.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [8 x %struct.anon.5], [8 x %struct.anon.5]* @script_fu_menu_map.mapping, i32 0, i64 %idxprom2
  %old4 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %arrayidx3, i32 0, i32 0
  %6 = load i8*, i8** %old4, align 8
  %call5 = call i64 @strlen(i8* %6) #5
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %call5
  store i8* %add.ptr, i8** %suffix, align 8
  %7 = load i8*, i8** %suffix, align 8
  %8 = load i8, i8* %7, align 1
  %tobool6 = icmp ne i8 %8, 0
  %lnot = xor i1 %tobool6, true
  %lnot.ext = zext i1 %lnot to i32
  %cmp7 = icmp eq i32 %lnot.ext, 47
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  br label %for.inc

if.end:                                           ; preds = %if.then
  %9 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [8 x %struct.anon.5], [8 x %struct.anon.5]* @script_fu_menu_map.mapping, i32 0, i64 %idxprom10
  %new = getelementptr inbounds %struct.anon.5, %struct.anon.5* %arrayidx11, i32 0, i32 1
  %10 = load i8*, i8** %new, align 8
  %11 = load i8*, i8** %suffix, align 8
  %call12 = call noalias i8* (i8*, ...) @g_strconcat(i8* %10, i8* %11, i8* null)
  store i8* %call12, i8** %retval
  br label %return

if.end.13:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.13, %if.then.9
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.end
  %13 = load i8*, i8** %retval
  ret i8* %13
}

declare i8* @g_tree_lookup(%struct._GTree*, i8*) #1

declare void @g_tree_insert(%struct._GTree*, i8*, i8*) #1

declare %struct._GList* @g_list_append(%struct._GList*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.cell* @script_fu_add_menu(%struct.scheme* %sc, %struct.cell* %a) #0 {
entry:
  %retval = alloca %struct.cell*, align 8
  %sc.addr = alloca %struct.scheme*, align 8
  %a.addr = alloca %struct.cell*, align 8
  %script = alloca %struct.SFScript*, align 8
  %menu = alloca %struct.SFMenu*, align 8
  %name = alloca i8*, align 8
  %path = alloca i8*, align 8
  store %struct.scheme* %sc, %struct.scheme** %sc.addr, align 8
  store %struct.cell* %a, %struct.cell** %a.addr, align 8
  %0 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr = getelementptr inbounds %struct.scheme, %struct.scheme* %0, i32 0, i32 58
  %1 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr, align 8
  %list_length = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %1, i32 0, i32 29
  %2 = load i32 (%struct.scheme*, %struct.cell*)*, i32 (%struct.scheme*, %struct.cell*)** %list_length, align 8
  %3 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %4 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call = call i32 %2(%struct.scheme* %3, %struct.cell* %4)
  %cmp = icmp ne i32 %call, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %call1 = call %struct.cell* @foreign_error(%struct.scheme* %5, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.26, i32 0, i32 0), %struct.cell* null)
  store %struct.cell* %call1, %struct.cell** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr2 = getelementptr inbounds %struct.scheme, %struct.scheme* %6, i32 0, i32 58
  %7 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr2, align 8
  %string_value = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %7, i32 0, i32 18
  %8 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value, align 8
  %9 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr3 = getelementptr inbounds %struct.scheme, %struct.scheme* %9, i32 0, i32 58
  %10 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr3, align 8
  %pair_car = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %10, i32 0, i32 36
  %11 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car, align 8
  %12 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call4 = call %struct.cell* %11(%struct.cell* %12)
  %call5 = call i8* %8(%struct.cell* %call4)
  store i8* %call5, i8** %name, align 8
  %13 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr6 = getelementptr inbounds %struct.scheme, %struct.scheme* %13, i32 0, i32 58
  %14 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr6, align 8
  %pair_cdr = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %14, i32 0, i32 37
  %15 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_cdr, align 8
  %16 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call7 = call %struct.cell* %15(%struct.cell* %16)
  store %struct.cell* %call7, %struct.cell** %a.addr, align 8
  %17 = load i8*, i8** %name, align 8
  %call8 = call %struct.SFScript* @script_fu_find_script(i8* %17)
  store %struct.SFScript* %call8, %struct.SFScript** %script, align 8
  %18 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %tobool = icmp ne %struct.SFScript* %18, null
  br i1 %tobool, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end
  %19 = load i8*, i8** %name, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i32 0, i32 0), i8* %19)
  %20 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL = getelementptr inbounds %struct.scheme, %struct.scheme* %20, i32 0, i32 17
  %21 = load %struct.cell*, %struct.cell** %NIL, align 8
  store %struct.cell* %21, %struct.cell** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %call11 = call noalias i8* @g_slice_alloc0(i64 16)
  %22 = bitcast i8* %call11 to %struct.SFMenu*
  store %struct.SFMenu* %22, %struct.SFMenu** %menu, align 8
  %23 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %24 = load %struct.SFMenu*, %struct.SFMenu** %menu, align 8
  %script12 = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %24, i32 0, i32 0
  store %struct.SFScript* %23, %struct.SFScript** %script12, align 8
  %25 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr13 = getelementptr inbounds %struct.scheme, %struct.scheme* %25, i32 0, i32 58
  %26 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr13, align 8
  %string_value14 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %26, i32 0, i32 18
  %27 = load i8* (%struct.cell*)*, i8* (%struct.cell*)** %string_value14, align 8
  %28 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %vptr15 = getelementptr inbounds %struct.scheme, %struct.scheme* %28, i32 0, i32 58
  %29 = load %struct.scheme_interface*, %struct.scheme_interface** %vptr15, align 8
  %pair_car16 = getelementptr inbounds %struct.scheme_interface, %struct.scheme_interface* %29, i32 0, i32 36
  %30 = load %struct.cell* (%struct.cell*)*, %struct.cell* (%struct.cell*)** %pair_car16, align 8
  %31 = load %struct.cell*, %struct.cell** %a.addr, align 8
  %call17 = call %struct.cell* %30(%struct.cell* %31)
  %call18 = call i8* %27(%struct.cell* %call17)
  store i8* %call18, i8** %path, align 8
  %32 = load i8*, i8** %path, align 8
  %call19 = call i8* @script_fu_menu_map(i8* %32)
  %33 = load %struct.SFMenu*, %struct.SFMenu** %menu, align 8
  %menu_path = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %33, i32 0, i32 1
  store i8* %call19, i8** %menu_path, align 8
  %34 = load %struct.SFMenu*, %struct.SFMenu** %menu, align 8
  %menu_path20 = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %34, i32 0, i32 1
  %35 = load i8*, i8** %menu_path20, align 8
  %tobool21 = icmp ne i8* %35, null
  br i1 %tobool21, label %if.end.25, label %if.then.22

if.then.22:                                       ; preds = %if.end.10
  %36 = load i8*, i8** %path, align 8
  %call23 = call noalias i8* @g_strdup(i8* %36)
  %37 = load %struct.SFMenu*, %struct.SFMenu** %menu, align 8
  %menu_path24 = getelementptr inbounds %struct.SFMenu, %struct.SFMenu* %37, i32 0, i32 1
  store i8* %call23, i8** %menu_path24, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.22, %if.end.10
  %38 = load %struct._GList*, %struct._GList** @script_menu_list, align 8
  %39 = load %struct.SFMenu*, %struct.SFMenu** %menu, align 8
  %40 = bitcast %struct.SFMenu* %39 to i8*
  %call26 = call %struct._GList* @g_list_prepend(%struct._GList* %38, i8* %40)
  store %struct._GList* %call26, %struct._GList** @script_menu_list, align 8
  %41 = load %struct.scheme*, %struct.scheme** %sc.addr, align 8
  %NIL27 = getelementptr inbounds %struct.scheme, %struct.scheme* %41, i32 0, i32 17
  %42 = load %struct.cell*, %struct.cell** %NIL27, align 8
  store %struct.cell* %42, %struct.cell** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.9, %if.then
  %43 = load %struct.cell*, %struct.cell** %retval
  ret %struct.cell* %43
}

; Function Attrs: nounwind uwtable
define internal %struct.SFScript* @script_fu_find_script(i8* %name) #0 {
entry:
  %retval = alloca %struct.SFScript*, align 8
  %name.addr = alloca i8*, align 8
  %script = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  store i8* %0, i8** %script, align 8
  %1 = load %struct._GTree*, %struct._GTree** @script_tree, align 8
  %2 = bitcast i8** %script to i8*
  call void @g_tree_foreach(%struct._GTree* %1, i32 (i8*, i8*, i8*)* bitcast (i32 (i8**, %struct._GList*, i8**)* @script_fu_lookup_script to i32 (i8*, i8*, i8*)*), i8* %2)
  %3 = load i8*, i8** %script, align 8
  %4 = load i8*, i8** %name.addr, align 8
  %cmp = icmp eq i8* %3, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.SFScript* null, %struct.SFScript** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i8*, i8** %script, align 8
  %6 = bitcast i8* %5 to %struct.SFScript*
  store %struct.SFScript* %6, %struct.SFScript** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct.SFScript*, %struct.SFScript** %retval
  ret %struct.SFScript* %7
}

declare noalias i8* @g_slice_alloc0(i64) #1

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

declare i32 @gimp_datafiles_check_extension(i8*, i8*) #1

declare i8* @script_fu_strescape(i8*) #1

declare noalias i8* @g_strdup_printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @script_fu_run_command(i8* %command, %struct._GError** %error) #0 {
entry:
  %command.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %output = alloca %struct._GString*, align 8
  %success = alloca i32, align 4
  store i8* %command, i8** %command.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %success, align 4
  %call = call %struct._GString* @g_string_new(i8* null)
  store %struct._GString* %call, %struct._GString** %output, align 8
  %0 = load %struct._GString*, %struct._GString** %output, align 8
  %1 = bitcast %struct._GString* %0 to i8*
  call void @ts_register_output_func(void (i32, i8*, i32, i8*)* @ts_gstring_output_func, i8* %1)
  %2 = load i8*, i8** %command.addr, align 8
  %call1 = call i32 @ts_interpret_string(i8* %2)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GString*, %struct._GString** %output, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %4, i32 0, i32 0
  %5 = load i8*, i8** %str, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %3, i32 0, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.32, i32 0, i32 0), i8* %5)
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* %success, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct._GString*, %struct._GString** %output, align 8
  %call2 = call i8* @g_string_free(%struct._GString* %6, i32 1)
  %7 = load i32, i32* %success, align 4
  ret i32 %7
}

declare noalias i8* @g_filename_display_name(i8*) #1

declare void @g_clear_error(%struct._GError**) #1

declare %struct._GString* @g_string_new(i8*) #1

declare void @ts_register_output_func(void (i32, i8*, i32, i8*)*, i8*) #1

declare void @ts_gstring_output_func(i32, i8*, i32, i8*) #1

declare i32 @ts_interpret_string(i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare void @script_fu_script_install_proc(%struct.SFScript*, void (i8*, i32, %struct._GimpParam*, i32*, %struct._GimpParam**)*) #1

; Function Attrs: nounwind uwtable
define internal void @script_fu_script_proc(i8* %name, i32 %nparams, %struct._GimpParam* %params, i32* %nreturn_vals, %struct._GimpParam** %return_vals) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %nparams.addr = alloca i32, align 4
  %params.addr = alloca %struct._GimpParam*, align 8
  %nreturn_vals.addr = alloca i32*, align 8
  %return_vals.addr = alloca %struct._GimpParam**, align 8
  %status = alloca i32, align 4
  %script = alloca %struct.SFScript*, align 8
  %error = alloca %struct._GError*, align 8
  %run_mode = alloca i32, align 4
  %min_args = alloca i32, align 4
  %command = alloca i8*, align 8
  %command26 = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %nparams, i32* %nparams.addr, align 4
  store %struct._GimpParam* %params, %struct._GimpParam** %params.addr, align 8
  store i32* %nreturn_vals, i32** %nreturn_vals.addr, align 8
  store %struct._GimpParam** %return_vals, %struct._GimpParam*** %return_vals.addr, align 8
  store i32 3, i32* %status, align 4
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i32, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_script_proc.values, i32 0, i64 1, i32 0), align 4
  %cmp = icmp eq i32 %0, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8*, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_script_proc.values, i32 0, i64 1, i32 1) to i8**), align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8*, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_script_proc.values, i32 0, i64 1, i32 1) to i8**), align 8
  call void @g_free(i8* %2)
  store i8* null, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_script_proc.values, i32 0, i64 1, i32 1) to i8**), align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct._GimpParam**, %struct._GimpParam*** %return_vals.addr, align 8
  store %struct._GimpParam* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_script_proc.values, i32 0, i32 0), %struct._GimpParam** %4, align 8
  store i32 21, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_script_proc.values, i32 0, i64 0, i32 0), align 4
  %5 = load i8*, i8** %name.addr, align 8
  %call = call %struct.SFScript* @script_fu_find_script(i8* %5)
  store %struct.SFScript* %call, %struct.SFScript** %script, align 8
  %6 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %tobool1 = icmp ne %struct.SFScript* %6, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %status, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %7 = load i32, i32* %status, align 4
  %cmp4 = icmp eq i32 %7, 3
  br i1 %cmp4, label %if.then.5, label %if.end.35

if.then.5:                                        ; preds = %if.end.3
  %8 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %arrayidx = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %8, i64 0
  %data = getelementptr inbounds %struct._GimpParam, %struct._GimpParam* %arrayidx, i32 0, i32 1
  %d_int32 = bitcast %union._GimpParamData* %data to i32*
  %9 = load i32, i32* %d_int32, align 4
  store i32 %9, i32* %run_mode, align 4
  %10 = load i32, i32* %run_mode, align 4
  call void @ts_set_run_mode(i32 %10)
  %11 = load i32, i32* %run_mode, align 4
  switch i32 %11, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.11
    i32 2, label %sw.bb.25
  ]

sw.bb:                                            ; preds = %if.then.5
  store i32 0, i32* %min_args, align 4
  %12 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %13 = load i32, i32* %nparams.addr, align 4
  %14 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %call6 = call i32 @script_fu_script_collect_standard_args(%struct.SFScript* %12, i32 %13, %struct._GimpParam* %14)
  store i32 %call6, i32* %min_args, align 4
  %15 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %n_args = getelementptr inbounds %struct.SFScript, %struct.SFScript* %15, i32 0, i32 7
  %16 = load i32, i32* %n_args, align 4
  %17 = load i32, i32* %min_args, align 4
  %cmp7 = icmp sgt i32 %16, %17
  br i1 %cmp7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %sw.bb
  %18 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %19 = load i32, i32* %min_args, align 4
  %call9 = call i32 @script_fu_interface(%struct.SFScript* %18, i32 %19)
  store i32 %call9, i32* %status, align 4
  br label %sw.epilog

if.end.10:                                        ; preds = %sw.bb
  br label %sw.bb.11

sw.bb.11:                                         ; preds = %if.then.5, %if.end.10
  %20 = load i32, i32* %nparams.addr, align 4
  %21 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %n_args12 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %21, i32 0, i32 7
  %22 = load i32, i32* %n_args12, align 4
  %add = add nsw i32 %22, 1
  %cmp13 = icmp ne i32 %20, %add
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %sw.bb.11
  store i32 1, i32* %status, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %sw.bb.11
  %23 = load i32, i32* %status, align 4
  %cmp16 = icmp eq i32 %23, 3
  br i1 %cmp16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.end.15
  %24 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %25 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %call18 = call i8* @script_fu_script_get_command_from_params(%struct.SFScript* %24, %struct._GimpParam* %25)
  store i8* %call18, i8** %command, align 8
  %26 = load i8*, i8** %command, align 8
  %call19 = call i32 @script_fu_run_command(i8* %26, %struct._GError** %error)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.23, label %if.then.21

if.then.21:                                       ; preds = %if.then.17
  store i32 0, i32* %status, align 4
  %27 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %27, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_script_proc.values, i32 0, i64 1, i32 0), align 4
  %28 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %28, i32 0, i32 2
  %29 = load i8*, i8** %message, align 8
  store i8* %29, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_script_proc.values, i32 0, i64 1, i32 1) to i8**), align 8
  %30 = load %struct._GError*, %struct._GError** %error, align 8
  %message22 = getelementptr inbounds %struct._GError, %struct._GError* %30, i32 0, i32 2
  store i8* null, i8** %message22, align 8
  %31 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %31)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.then.17
  %32 = load i8*, i8** %command, align 8
  call void @g_free(i8* %32)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %if.end.15
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.then.5
  %33 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %34 = load i32, i32* %nparams.addr, align 4
  %35 = load %struct._GimpParam*, %struct._GimpParam** %params.addr, align 8
  %call27 = call i32 @script_fu_script_collect_standard_args(%struct.SFScript* %33, i32 %34, %struct._GimpParam* %35)
  %36 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %call28 = call i8* @script_fu_script_get_command(%struct.SFScript* %36)
  store i8* %call28, i8** %command26, align 8
  %37 = load i8*, i8** %command26, align 8
  %call29 = call i32 @script_fu_run_command(i8* %37, %struct._GError** %error)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %sw.bb.25
  store i32 0, i32* %status, align 4
  %38 = load i32*, i32** %nreturn_vals.addr, align 8
  store i32 2, i32* %38, align 4
  store i32 4, i32* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_script_proc.values, i32 0, i64 1, i32 0), align 4
  %39 = load %struct._GError*, %struct._GError** %error, align 8
  %message32 = getelementptr inbounds %struct._GError, %struct._GError* %39, i32 0, i32 2
  %40 = load i8*, i8** %message32, align 8
  store i8* %40, i8** bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_script_proc.values, i32 0, i64 1, i32 1) to i8**), align 8
  %41 = load %struct._GError*, %struct._GError** %error, align 8
  %message33 = getelementptr inbounds %struct._GError, %struct._GError* %41, i32 0, i32 2
  store i8* null, i8** %message33, align 8
  %42 = load %struct._GError*, %struct._GError** %error, align 8
  call void @g_error_free(%struct._GError* %42)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.31, %sw.bb.25
  %43 = load i8*, i8** %command26, align 8
  call void @g_free(i8* %43)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then.5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.34, %if.end.24, %if.then.8
  br label %if.end.35

if.end.35:                                        ; preds = %sw.epilog, %if.end.3
  %44 = load i32, i32* %status, align 4
  store i32 %44, i32* bitcast (%union._GimpParamData* getelementptr inbounds ([2 x %struct._GimpParam], [2 x %struct._GimpParam]* @script_fu_script_proc.values, i32 0, i64 0, i32 1) to i32*), align 4
  ret void
}

declare void @ts_set_run_mode(i32) #1

declare i32 @script_fu_script_collect_standard_args(%struct.SFScript*, i32, %struct._GimpParam*) #1

declare i32 @script_fu_interface(%struct.SFScript*, i32) #1

declare i8* @script_fu_script_get_command_from_params(%struct.SFScript*, %struct._GimpParam*) #1

declare void @g_error_free(%struct._GError*) #1

declare i8* @script_fu_script_get_command(%struct.SFScript*) #1

declare i32 @gimp_plugin_menu_register(i8*, i8*) #1

declare void @g_slice_free1(i64, i8*) #1

declare void @script_fu_script_uninstall_proc(%struct.SFScript*) #1

declare void @script_fu_script_free(%struct.SFScript*) #1

declare void @g_list_free(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define internal i32 @script_fu_lookup_script(i8** %foo, %struct._GList* %scripts, i8** %name) #0 {
entry:
  %retval = alloca i32, align 4
  %foo.addr = alloca i8**, align 8
  %scripts.addr = alloca %struct._GList*, align 8
  %name.addr = alloca i8**, align 8
  %list = alloca %struct._GList*, align 8
  %script = alloca %struct.SFScript*, align 8
  store i8** %foo, i8*** %foo.addr, align 8
  store %struct._GList* %scripts, %struct._GList** %scripts.addr, align 8
  store i8** %name, i8*** %name.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %scripts.addr, align 8
  store %struct._GList* %0, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %entry
  %1 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  %4 = bitcast i8* %3 to %struct.SFScript*
  store %struct.SFScript* %4, %struct.SFScript** %script, align 8
  %5 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %name1 = getelementptr inbounds %struct.SFScript, %struct.SFScript* %5, i32 0, i32 0
  %6 = load i8*, i8** %name1, align 8
  %7 = load i8**, i8*** %name.addr, align 8
  %8 = load i8*, i8** %7, align 8
  %call = call i32 @strcmp(i8* %6, i8* %8) #5
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.SFScript*, %struct.SFScript** %script, align 8
  %10 = bitcast %struct.SFScript* %9 to i8*
  %11 = load i8**, i8*** %name.addr, align 8
  store i8* %10, i8** %11, align 8
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool2 = icmp ne %struct._GList* %12, null
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %13 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %13, i32 0, i32 1
  %14 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %14, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
