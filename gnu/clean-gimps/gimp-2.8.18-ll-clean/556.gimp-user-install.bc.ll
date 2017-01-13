; ModuleID = './app/core/gimp-user-install.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }
%struct._GimpUserInstall = type { i32, i8*, i32, i32, i8*, void (i8*, i32, i8*)*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GDir = type opaque
%struct._GimpRc = type { %struct._GimpPluginConfig, i8*, i8*, i32, i32, i32 }
%struct._GimpPluginConfig = type { %struct._GimpGuiConfig, i8*, i8*, i8*, i8*, i8* }
%struct._GimpGuiConfig = type { %struct._GimpDisplayConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i8*, i8*, i32, i32, i8*, i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32 }
%struct._GimpDisplayConfig = type { %struct._GimpCoreConfig, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, double, double, i32, i32, %struct._GimpDisplayOptions*, %struct._GimpDisplayOptions*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._GimpCoreConfig = type { %struct._GimpBaseConfig, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, %struct._GimpTemplate*, %struct._GimpGrid*, i32, i64, i32, i32, i8*, i32, i32, i32, i64, %struct._GimpColorConfig*, i32, i32, %struct._GimpRGB, i32 }
%struct._GimpBaseConfig = type { %struct._GObject, i8*, i8*, i32, i64 }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GimpTemplate = type opaque
%struct._GimpGrid = type opaque
%struct._GimpColorConfig = type opaque
%struct._GimpRGB = type { double, double, double, double }
%struct._GimpDisplayOptions = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Core\00", align 1
@__func__.gimp_user_install_run = private unnamed_addr constant [22 x i8] c"gimp_user_install_run\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"install != NULL\00", align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"It seems you have used GIMP %s before.  GIMP will now migrate your user settings to '%s'.\00", align 1
@.str.3 = private unnamed_addr constant [124 x i8] c"It appears that you are using GIMP for the first time.  GIMP will now create a folder named '%s' and copy some files to it.\00", align 1
@__func__.gimp_user_install_free = private unnamed_addr constant [23 x i8] c"gimp_user_install_free\00", align 1
@__func__.gimp_user_install_set_log_handler = private unnamed_addr constant [34 x i8] c"gimp_user_install_set_log_handler\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2.8\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Creating folder '%s'...\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Cannot create folder '%s': %s\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"(unknown error)\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"error: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@gimp_user_install_items = internal constant [23 x %struct.anon] [%struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i32 1 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 0 }, %struct.anon { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i32 0, i32 0), i32 0 }], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"tags.xml\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"gtkrc\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"menurc\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"brushes\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"dynamics\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"fonts\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"gradients\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"palettes\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"patterns\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"tool-presets\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"plug-ins\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"interpreters\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"environ\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"scripts\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"templates\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"themes\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"curves\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"levels\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"fractalexplorer\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"gfig\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"gflare\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"gimpressionist\00", align 1
@.str.37 = private unnamed_addr constant [31 x i8] c"Copying file '%s' from '%s'...\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"documents\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"gimpswap.\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"pluginrc\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"themerc\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"toolrc\00", align 1
@.str.43 = private unnamed_addr constant [13 x i8] c"tool-options\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpUserInstall* @gimp_user_install_new(i32 %verbose) #0 {
entry:
  %verbose.addr = alloca i32, align 4
  %install = alloca %struct._GimpUserInstall*, align 8
  store i32 %verbose, i32* %verbose.addr, align 4
  %call = call noalias i8* @g_slice_alloc0(i64 48)
  %0 = bitcast i8* %call to %struct._GimpUserInstall*
  store %struct._GimpUserInstall* %0, %struct._GimpUserInstall** %install, align 8
  %1 = load i32, i32* %verbose.addr, align 4
  %2 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install, align 8
  %verbose1 = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %2, i32 0, i32 0
  store i32 %1, i32* %verbose1, align 4
  %3 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install, align 8
  %call2 = call i8* @gimp_directory() #6
  %call3 = call i32 @gimp_user_install_detect_old(%struct._GimpUserInstall* %3, i8* %call2)
  %4 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install, align 8
  ret %struct._GimpUserInstall* %4
}

declare noalias i8* @g_slice_alloc0(i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @gimp_user_install_detect_old(%struct._GimpUserInstall* %install, i8* %gimp_dir) #0 {
entry:
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %gimp_dir.addr = alloca i8*, align 8
  %dir = alloca i8*, align 8
  %version = alloca i8*, align 8
  %migrate = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  store i8* %gimp_dir, i8** %gimp_dir.addr, align 8
  %0 = load i8*, i8** %gimp_dir.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  store i8* %call, i8** %dir, align 8
  store i32 0, i32* %migrate, align 4
  %1 = load i8*, i8** %dir, align 8
  %call1 = call i8* @strstr(i8* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #7
  store i8* %call1, i8** %version, align 8
  %2 = load i8*, i8** %version, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  store i32 8, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %version, align 8
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 2
  %5 = load i32, i32* %i, align 4
  %call2 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %add.ptr, i64 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 %5)
  %6 = load i8*, i8** %dir, align 8
  %call3 = call i32 @g_file_test(i8* %6, i32 4)
  store i32 %call3, i32* %migrate, align 4
  %7 = load i32, i32* %migrate, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %for.body
  %8 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %old_major = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %8, i32 0, i32 2
  store i32 2, i32* %old_major, align 4
  %9 = load i32, i32* %i, align 4
  %10 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %old_minor = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %10, i32 0, i32 3
  store i32 %9, i32* %old_minor, align 4
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %11, 2
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.5, %for.cond
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %entry
  %12 = load i32, i32* %migrate, align 4
  %tobool7 = icmp ne i32 %12, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %13 = load i8*, i8** %dir, align 8
  %14 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %old_dir = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %14, i32 0, i32 1
  store i8* %13, i8** %old_dir, align 8
  %15 = load i8*, i8** %version, align 8
  %16 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %migrate9 = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %16, i32 0, i32 4
  store i8* %15, i8** %migrate9, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end.6
  %17 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %17)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.8
  %18 = load i32, i32* %migrate, align 4
  ret i32 %18
}

; Function Attrs: nounwind readnone
declare i8* @gimp_directory() #2

; Function Attrs: nounwind uwtable
define i32 @gimp_user_install_run(%struct._GimpUserInstall* %install) #0 {
entry:
  %retval = alloca i32, align 4
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %dirname = alloca i8*, align 8
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %cmp = icmp ne %struct._GimpUserInstall* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_user_install_run, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i8* @gimp_directory() #6
  %call1 = call noalias i8* @g_filename_display_name(i8* %call)
  store i8* %call1, i8** %dirname, align 8
  %1 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %migrate = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %1, i32 0, i32 4
  %2 = load i8*, i8** %migrate, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %do.end
  %3 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %call3 = call i8* @gettext(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i32 0, i32 0)) #5
  %4 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %migrate4 = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %4, i32 0, i32 4
  %5 = load i8*, i8** %migrate4, align 8
  %6 = load i8*, i8** %dirname, align 8
  call void (%struct._GimpUserInstall*, i8*, ...) @user_install_log(%struct._GimpUserInstall* %3, i8* %call3, i8* %5, i8* %6)
  br label %if.end.7

if.else.5:                                        ; preds = %do.end
  %7 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i32 0, i32 0)) #5
  %8 = load i8*, i8** %dirname, align 8
  call void (%struct._GimpUserInstall*, i8*, ...) @user_install_log(%struct._GimpUserInstall* %7, i8* %call6, i8* %8)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else.5, %if.then.2
  %9 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %9)
  %10 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  call void @user_install_log_newline(%struct._GimpUserInstall* %10)
  %11 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %call8 = call i8* @gimp_directory() #6
  %call9 = call i32 @user_install_mkdir_with_parents(%struct._GimpUserInstall* %11, i8* %call8)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  %12 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %migrate13 = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %12, i32 0, i32 4
  %13 = load i8*, i8** %migrate13, align 8
  %tobool14 = icmp ne i8* %13, null
  br i1 %tobool14, label %if.then.15, label %if.end.20

if.then.15:                                       ; preds = %if.end.12
  %14 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %call16 = call i32 @user_install_migrate_files(%struct._GimpUserInstall* %14)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.then.15
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.15
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.12
  %15 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %call21 = call i32 @user_install_create_files(%struct._GimpUserInstall* %15)
  store i32 %call21, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.18, %if.then.11, %if.else
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_filename_display_name(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @user_install_log(%struct._GimpUserInstall* %install, i8* %format, ...) #0 {
entry:
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %message = alloca i8*, align 8
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call noalias i8* @g_strdup_vprintf(i8* %1, %struct.__va_list_tag* %arraydecay2)
  store i8* %call, i8** %message, align 8
  %2 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %verbose = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %2, i32 0, i32 0
  %3 = load i32, i32* %verbose, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.then
  %4 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %4)
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.then
  %5 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %log = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %5, i32 0, i32 5
  %6 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %log, align 8
  %tobool5 = icmp ne void (i8*, i32, i8*)* %6, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %7 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %log7 = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %7, i32 0, i32 5
  %8 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %log7, align 8
  %9 = load i8*, i8** %message, align 8
  %10 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %log_data = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %10, i32 0, i32 6
  %11 = load i8*, i8** %log_data, align 8
  call void %8(i8* %9, i32 0, i8* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %12 = load i8*, i8** %message, align 8
  call void @g_free(i8* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1011 = bitcast %struct.__va_list_tag* %arraydecay10 to i8*
  call void @llvm.va_end(i8* %arraydecay1011)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @user_install_log_newline(%struct._GimpUserInstall* %install) #0 {
entry:
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  %0 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %verbose = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %0, i32 0, i32 0
  %1 = load i32, i32* %verbose, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %log = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %2, i32 0, i32 5
  %3 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %log, align 8
  %tobool1 = icmp ne void (i8*, i32, i8*)* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %log3 = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %4, i32 0, i32 5
  %5 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %log3, align 8
  %6 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %log_data = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %6, i32 0, i32 6
  %7 = load i8*, i8** %log_data, align 8
  call void %5(i8* null, i32 0, i8* %7)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @user_install_mkdir_with_parents(%struct._GimpUserInstall* %install, i8* %dirname) #0 {
entry:
  %retval = alloca i32, align 4
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %dirname.addr = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  %0 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)) #5
  %1 = load i8*, i8** %dirname.addr, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %1)
  call void (%struct._GimpUserInstall*, i8*, ...) @user_install_log(%struct._GimpUserInstall* %0, i8* %call, i8* %call1)
  %2 = load i8*, i8** %dirname.addr, align 8
  %call2 = call i32 @g_mkdir_with_parents(i8* %2, i32 493)
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  %call3 = call i32 @g_file_error_quark()
  %call4 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call4, align 4
  %call5 = call i32 @g_file_error_from_errno(i32 %3)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)) #5
  %4 = load i8*, i8** %dirname.addr, align 8
  %call7 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call8 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call8, align 4
  %call9 = call i8* @g_strerror(i32 %5) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %error, i32 %call3, i32 %call5, i8* %call6, i8* %call7, i8* %call9)
  %6 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  call void @user_install_log_error(%struct._GimpUserInstall* %6, %struct._GError** %error)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @user_install_migrate_files(%struct._GimpUserInstall* %install) #0 {
entry:
  %retval = alloca i32, align 4
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %dir = alloca %struct._GDir*, align 8
  %basename = alloca i8*, align 8
  %dest = alloca [1024 x i8], align 16
  %gimprc = alloca %struct._GimpRc*, align 8
  %error = alloca %struct._GError*, align 8
  %source = alloca i8*, align 8
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %old_dir = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %0, i32 0, i32 1
  %1 = load i8*, i8** %old_dir, align 8
  %call = call %struct._GDir* @g_dir_open(i8* %1, i32 0, %struct._GError** %error)
  store %struct._GDir* %call, %struct._GDir** %dir, align 8
  %2 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %tobool = icmp ne %struct._GDir* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  call void @user_install_log_error(%struct._GimpUserInstall* %3, %struct._GError** %error)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %next_file, %if.end
  %4 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %call1 = call i8* @g_dir_read_name(%struct._GDir* %4)
  store i8* %call1, i8** %basename, align 8
  %cmp = icmp ne i8* %call1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %old_dir2 = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %5, i32 0, i32 1
  %6 = load i8*, i8** %old_dir2, align 8
  %7 = load i8*, i8** %basename, align 8
  %call3 = call noalias i8* (i8*, ...) @g_build_filename(i8* %6, i8* %7, i8* null)
  store i8* %call3, i8** %source, align 8
  %8 = load i8*, i8** %source, align 8
  %call4 = call i32 @g_file_test(i8* %8, i32 1)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %while.body
  %9 = load i8*, i8** %basename, align 8
  %call7 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0)) #7
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.6
  %10 = load i8*, i8** %basename, align 8
  %call9 = call i32 @g_str_has_prefix(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.39, i32 0, i32 0))
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.20, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %11 = load i8*, i8** %basename, align 8
  %call12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.40, i32 0, i32 0)) #7
  %cmp13 = icmp eq i32 %call12, 0
  br i1 %cmp13, label %if.then.20, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.11
  %12 = load i8*, i8** %basename, align 8
  %call15 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0)) #7
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.14
  %13 = load i8*, i8** %basename, align 8
  %call18 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0)) #7
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.17, %lor.lhs.false.14, %lor.lhs.false.11, %lor.lhs.false, %if.then.6
  br label %next_file

if.end.21:                                        ; preds = %lor.lhs.false.17
  %14 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %old_minor = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %14, i32 0, i32 3
  %15 = load i32, i32* %old_minor, align 4
  %cmp22 = icmp eq i32 %15, 0
  br i1 %cmp22, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.21
  %16 = load i8*, i8** %basename, align 8
  %call23 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)) #7
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  br label %next_file

if.end.26:                                        ; preds = %land.lhs.true, %if.end.21
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %call27 = call i8* @gimp_directory() #6
  %17 = load i8*, i8** %basename, align 8
  %call28 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* %call27, i32 47, i8* %17)
  %18 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %19 = load i8*, i8** %source, align 8
  %arraydecay29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %call30 = call i32 @user_install_file_copy(%struct._GimpUserInstall* %18, i8* %19, i8* %arraydecay29)
  br label %if.end.44

if.else:                                          ; preds = %while.body
  %20 = load i8*, i8** %source, align 8
  %call31 = call i32 @g_file_test(i8* %20, i32 4)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then.33, label %if.end.43

if.then.33:                                       ; preds = %if.else
  %21 = load i8*, i8** %basename, align 8
  %call34 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0)) #7
  %cmp35 = icmp eq i32 %call34, 0
  br i1 %cmp35, label %if.then.39, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %if.then.33
  %22 = load i8*, i8** %basename, align 8
  %call37 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.43, i32 0, i32 0)) #7
  %cmp38 = icmp eq i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %lor.lhs.false.36, %if.then.33
  br label %next_file

if.end.40:                                        ; preds = %lor.lhs.false.36
  %23 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %24 = load i8*, i8** %source, align 8
  %call41 = call i8* @gimp_directory() #6
  %call42 = call i32 @user_install_dir_copy(%struct._GimpUserInstall* %23, i8* %24, i8* %call41)
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.40, %if.else
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.end.26
  br label %next_file

next_file:                                        ; preds = %if.end.44, %if.then.39, %if.then.25, %if.then.20
  %25 = load i8*, i8** %source, align 8
  call void @g_free(i8* %25)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %arraydecay45 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %call46 = call i8* @gimp_directory() #6
  %call47 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay45, i64 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* %call46, i32 47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0))
  %26 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %arraydecay48 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %call49 = call i32 @user_install_mkdir(%struct._GimpUserInstall* %26, i8* %arraydecay48)
  %27 = load %struct._GDir*, %struct._GDir** %dir, align 8
  call void @g_dir_close(%struct._GDir* %27)
  %28 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %old_dir50 = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %28, i32 0, i32 1
  %29 = load i8*, i8** %old_dir50, align 8
  call void @gimp_templates_migrate(i8* %29)
  %call51 = call %struct._GimpRc* @gimp_rc_new(i8* null, i8* null, i32 0)
  store %struct._GimpRc* %call51, %struct._GimpRc** %gimprc, align 8
  %30 = load %struct._GimpRc*, %struct._GimpRc** %gimprc, align 8
  call void @gimp_rc_migrate(%struct._GimpRc* %30)
  %31 = load %struct._GimpRc*, %struct._GimpRc** %gimprc, align 8
  call void @gimp_rc_save(%struct._GimpRc* %31)
  %32 = load %struct._GimpRc*, %struct._GimpRc** %gimprc, align 8
  %33 = bitcast %struct._GimpRc* %32 to i8*
  call void @g_object_unref(i8* %33)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %34 = load i32, i32* %retval
  ret i32 %34
}

; Function Attrs: nounwind uwtable
define internal i32 @user_install_create_files(%struct._GimpUserInstall* %install) #0 {
entry:
  %retval = alloca i32, align 4
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %dest = alloca [1024 x i8], align 16
  %source = alloca [1024 x i8], align 16
  %i = alloca i32, align 4
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 23
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %call = call i8* @gimp_directory() #6
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [23 x %struct.anon], [23 x %struct.anon]* @gimp_user_install_items, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %call2 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* %call, i32 47, i8* %2)
  %arraydecay3 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %call4 = call i32 @g_file_test(i8* %arraydecay3, i32 16)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [23 x %struct.anon], [23 x %struct.anon]* @gimp_user_install_items, i32 0, i64 %idxprom5
  %action = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx6, i32 0, i32 1
  %4 = load i32, i32* %action, align 4
  switch i32 %4, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.12
  ]

sw.bb:                                            ; preds = %if.end
  %5 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %arraydecay7 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %call8 = call i32 @user_install_mkdir(%struct._GimpUserInstall* %5, i8* %arraydecay7)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %sw.bb
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %sw.bb
  br label %sw.epilog

sw.bb.12:                                         ; preds = %if.end
  %arraydecay13 = getelementptr inbounds [1024 x i8], [1024 x i8]* %source, i32 0, i32 0
  %call14 = call i8* @gimp_sysconf_directory() #6
  %6 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %6 to i64
  %arrayidx16 = getelementptr inbounds [23 x %struct.anon], [23 x %struct.anon]* @gimp_user_install_items, i32 0, i64 %idxprom15
  %name17 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx16, i32 0, i32 0
  %7 = load i8*, i8** %name17, align 8
  %call18 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay13, i64 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* %call14, i32 47, i8* %7)
  %8 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %arraydecay19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %source, i32 0, i32 0
  %arraydecay20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %call21 = call i32 @user_install_file_copy(%struct._GimpUserInstall* %8, i8* %arraydecay19, i8* %arraydecay20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %sw.bb.12
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %sw.bb.12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %if.end.24, %if.end.11
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.then
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arraydecay25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %call26 = call i8* @gimp_directory() #6
  %call27 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay25, i64 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* %call26, i32 47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0))
  %arraydecay28 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %call29 = call i32 @g_file_test(i8* %arraydecay28, i32 1)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.36, label %if.then.31

if.then.31:                                       ; preds = %for.end
  %call32 = call i32 @gimp_tags_user_install()
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %if.then.31
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.31
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %for.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.34, %if.then.23, %if.then.10
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define void @gimp_user_install_free(%struct._GimpUserInstall* %install) #0 {
entry:
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %cmp = icmp ne %struct._GimpUserInstall* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.gimp_user_install_free, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  br label %do.end.2

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %old_dir = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %1, i32 0, i32 1
  %2 = load i8*, i8** %old_dir, align 8
  call void @g_free(i8* %2)
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %3 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %4 = bitcast %struct._GimpUserInstall* %3 to i8*
  call void @g_slice_free1(i64 48, i8* %4)
  br label %do.end.2

do.end.2:                                         ; preds = %if.else, %do.body.1
  ret void
}

declare void @g_slice_free1(i64, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_user_install_set_log_handler(%struct._GimpUserInstall* %install, void (i8*, i32, i8*)* %log, i8* %user_data) #0 {
entry:
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %log.addr = alloca void (i8*, i32, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  store void (i8*, i32, i8*)* %log, void (i8*, i32, i8*)** %log.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %cmp = icmp ne %struct._GimpUserInstall* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_user_install_set_log_handler, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %log.addr, align 8
  %2 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %log1 = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %2, i32 0, i32 5
  store void (i8*, i32, i8*)* %1, void (i8*, i32, i8*)** %log1, align 8
  %3 = load i8*, i8** %user_data.addr, align 8
  %4 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %log_data = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %4, i32 0, i32 6
  store i8* %3, i8** %log_data, align 8
  br label %return

return:                                           ; preds = %do.end, %if.else
  ret void
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

declare i32 @g_snprintf(i8*, i64, i8*, ...) #1

declare i32 @g_file_test(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #1

declare void @g_print(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i8* @gimp_filename_to_utf8(i8*) #1

declare i32 @g_mkdir_with_parents(i8*, i32) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind uwtable
define internal void @user_install_log_error(%struct._GimpUserInstall* %install, %struct._GError** %error) #0 {
entry:
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %message = alloca i8*, align 8
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %tobool = icmp ne %struct._GError** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %2 = load %struct._GError*, %struct._GError** %1, align 8
  %tobool1 = icmp ne %struct._GError* %2, null
  br i1 %tobool1, label %if.then, label %if.end.8

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %message2 = getelementptr inbounds %struct._GError, %struct._GError* %4, i32 0, i32 2
  %5 = load i8*, i8** %message2, align 8
  %tobool3 = icmp ne i8* %5, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %7 = load %struct._GError*, %struct._GError** %6, align 8
  %message4 = getelementptr inbounds %struct._GError, %struct._GError* %7, i32 0, i32 2
  %8 = load i8*, i8** %message4, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %8, %cond.true ], [ getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %message, align 8
  %9 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %log = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %9, i32 0, i32 5
  %10 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %log, align 8
  %tobool5 = icmp ne void (i8*, i32, i8*)* %10, null
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %cond.end
  %11 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %log7 = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %11, i32 0, i32 5
  %12 = load void (i8*, i32, i8*)*, void (i8*, i32, i8*)** %log7, align 8
  %13 = load i8*, i8** %message, align 8
  %14 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %log_data = getelementptr inbounds %struct._GimpUserInstall, %struct._GimpUserInstall* %14, i32 0, i32 6
  %15 = load i8*, i8** %log_data, align 8
  call void %12(i8* %13, i32 1, i8* %15)
  br label %if.end

if.else:                                          ; preds = %cond.end
  %16 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i32 0, i32 0), i8* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  call void @g_clear_error(%struct._GError** %17)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %land.lhs.true, %entry
  ret void
}

declare void @g_clear_error(%struct._GError**) #1

; Function Attrs: nounwind uwtable
define internal i32 @user_install_mkdir(%struct._GimpUserInstall* %install, i8* %dirname) #0 {
entry:
  %retval = alloca i32, align 4
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %dirname.addr = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  %0 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i32 0, i32 0)) #5
  %1 = load i8*, i8** %dirname.addr, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %1)
  call void (%struct._GimpUserInstall*, i8*, ...) @user_install_log(%struct._GimpUserInstall* %0, i8* %call, i8* %call1)
  %2 = load i8*, i8** %dirname.addr, align 8
  %call2 = call i32 @mkdir(i8* %2, i32 493) #5
  %cmp = icmp eq i32 %call2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._GError* null, %struct._GError** %error, align 8
  %call3 = call i32 @g_file_error_quark()
  %call4 = call i32* @__errno_location() #6
  %3 = load i32, i32* %call4, align 4
  %call5 = call i32 @g_file_error_from_errno(i32 %3)
  %call6 = call i8* @gettext(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0)) #5
  %4 = load i8*, i8** %dirname.addr, align 8
  %call7 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call8 = call i32* @__errno_location() #6
  %5 = load i32, i32* %call8, align 4
  %call9 = call i8* @g_strerror(i32 %5) #6
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %error, i32 %call3, i32 %call5, i8* %call6, i8* %call7, i8* %call9)
  %6 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  call void @user_install_log_error(%struct._GimpUserInstall* %6, %struct._GError** %error)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare i8* @gimp_sysconf_directory() #2

; Function Attrs: nounwind uwtable
define internal i32 @user_install_file_copy(%struct._GimpUserInstall* %install, i8* %source, i8* %dest) #0 {
entry:
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %source.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %success = alloca i32, align 4
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.37, i32 0, i32 0)) #5
  %1 = load i8*, i8** %dest.addr, align 8
  %call1 = call i8* @gimp_filename_to_utf8(i8* %1)
  %2 = load i8*, i8** %source.addr, align 8
  %call2 = call i8* @gimp_filename_to_utf8(i8* %2)
  call void (%struct._GimpUserInstall*, i8*, ...) @user_install_log(%struct._GimpUserInstall* %0, i8* %call, i8* %call1, i8* %call2)
  %3 = load i8*, i8** %source.addr, align 8
  %4 = load i8*, i8** %dest.addr, align 8
  %call3 = call i32 @gimp_config_file_copy(i8* %3, i8* %4, %struct._GError** %error)
  store i32 %call3, i32* %success, align 4
  %5 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  call void @user_install_log_error(%struct._GimpUserInstall* %5, %struct._GError** %error)
  %6 = load i32, i32* %success, align 4
  ret i32 %6
}

declare i32 @gimp_tags_user_install() #1

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #3

declare i32 @gimp_config_file_copy(i8*, i8*, %struct._GError**) #1

declare %struct._GDir* @g_dir_open(i8*, i32, %struct._GError**) #1

declare i8* @g_dir_read_name(%struct._GDir*) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @g_str_has_prefix(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @user_install_dir_copy(%struct._GimpUserInstall* %install, i8* %source, i8* %base) #0 {
entry:
  %install.addr = alloca %struct._GimpUserInstall*, align 8
  %source.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %source_dir = alloca %struct._GDir*, align 8
  %dest_dir = alloca %struct._GDir*, align 8
  %dest = alloca [1024 x i8], align 16
  %basename = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  %success = alloca i32, align 4
  %error = alloca %struct._GError*, align 8
  %basename1 = alloca i8*, align 8
  %name = alloca i8*, align 8
  store %struct._GimpUserInstall* %install, %struct._GimpUserInstall** %install.addr, align 8
  store i8* %source, i8** %source.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store %struct._GDir* null, %struct._GDir** %source_dir, align 8
  store %struct._GDir* null, %struct._GDir** %dest_dir, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i8*, i8** %source.addr, align 8
  %call = call noalias i8* @g_path_get_basename(i8* %0)
  store i8* %call, i8** %basename1, align 8
  %1 = load i8*, i8** %base.addr, align 8
  %2 = load i8*, i8** %basename1, align 8
  %call2 = call noalias i8* (i8*, ...) @g_build_filename(i8* %1, i8* %2, i8* null)
  store i8* %call2, i8** %dirname, align 8
  %3 = load i8*, i8** %basename1, align 8
  call void @g_free(i8* %3)
  %4 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %5 = load i8*, i8** %dirname, align 8
  %call3 = call i32 @user_install_mkdir(%struct._GimpUserInstall* %4, i8* %5)
  store i32 %call3, i32* %success, align 4
  %6 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %error.28

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %dirname, align 8
  %call4 = call %struct._GDir* @g_dir_open(i8* %7, i32 0, %struct._GError** %error)
  store %struct._GDir* %call4, %struct._GDir** %dest_dir, align 8
  %cmp = icmp ne %struct._GDir* %call4, null
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %success, align 4
  %8 = load i32, i32* %success, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  br label %error.28

if.end.7:                                         ; preds = %if.end
  %9 = load i8*, i8** %source.addr, align 8
  %call8 = call %struct._GDir* @g_dir_open(i8* %9, i32 0, %struct._GError** %error)
  store %struct._GDir* %call8, %struct._GDir** %source_dir, align 8
  %cmp9 = icmp ne %struct._GDir* %call8, null
  %conv10 = zext i1 %cmp9 to i32
  store i32 %conv10, i32* %success, align 4
  %10 = load i32, i32* %success, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.7
  br label %error.28

if.end.13:                                        ; preds = %if.end.7
  br label %while.cond

while.cond:                                       ; preds = %if.end.27, %if.end.13
  %11 = load %struct._GDir*, %struct._GDir** %source_dir, align 8
  %call14 = call i8* @g_dir_read_name(%struct._GDir* %11)
  store i8* %call14, i8** %basename, align 8
  %cmp15 = icmp ne i8* %call14, null
  br i1 %cmp15, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load i8*, i8** %source.addr, align 8
  %13 = load i8*, i8** %basename, align 8
  %call17 = call noalias i8* (i8*, ...) @g_build_filename(i8* %12, i8* %13, i8* null)
  store i8* %call17, i8** %name, align 8
  %14 = load i8*, i8** %name, align 8
  %call18 = call i32 @g_file_test(i8* %14, i32 1)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.27

if.then.20:                                       ; preds = %while.body
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %15 = load i8*, i8** %dirname, align 8
  %16 = load i8*, i8** %basename, align 8
  %call21 = call i32 (i8*, i64, i8*, ...) @g_snprintf(i8* %arraydecay, i64 1024, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* %15, i32 47, i8* %16)
  %17 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  %18 = load i8*, i8** %name, align 8
  %arraydecay22 = getelementptr inbounds [1024 x i8], [1024 x i8]* %dest, i32 0, i32 0
  %call23 = call i32 @user_install_file_copy(%struct._GimpUserInstall* %17, i8* %18, i8* %arraydecay22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.then.20
  %19 = load i8*, i8** %name, align 8
  call void @g_free(i8* %19)
  br label %error.28

if.end.26:                                        ; preds = %if.then.20
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.26, %while.body
  %20 = load i8*, i8** %name, align 8
  call void @g_free(i8* %20)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %error.28

error.28:                                         ; preds = %while.end, %if.then.25, %if.then.12, %if.then.6, %if.then
  %21 = load %struct._GimpUserInstall*, %struct._GimpUserInstall** %install.addr, align 8
  call void @user_install_log_error(%struct._GimpUserInstall* %21, %struct._GError** %error)
  %22 = load %struct._GDir*, %struct._GDir** %source_dir, align 8
  %tobool29 = icmp ne %struct._GDir* %22, null
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %error.28
  %23 = load %struct._GDir*, %struct._GDir** %source_dir, align 8
  call void @g_dir_close(%struct._GDir* %23)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %error.28
  %24 = load %struct._GDir*, %struct._GDir** %dest_dir, align 8
  %tobool32 = icmp ne %struct._GDir* %24, null
  br i1 %tobool32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.31
  %25 = load %struct._GDir*, %struct._GDir** %dest_dir, align 8
  call void @g_dir_close(%struct._GDir* %25)
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.33, %if.end.31
  %26 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %26)
  %27 = load i32, i32* %success, align 4
  ret i32 %27
}

declare void @g_dir_close(%struct._GDir*) #1

declare void @gimp_templates_migrate(i8*) #1

declare %struct._GimpRc* @gimp_rc_new(i8*, i8*, i32) #1

declare void @gimp_rc_migrate(%struct._GimpRc*) #1

declare void @gimp_rc_save(%struct._GimpRc*) #1

declare void @g_object_unref(i8*) #1

declare noalias i8* @g_path_get_basename(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
