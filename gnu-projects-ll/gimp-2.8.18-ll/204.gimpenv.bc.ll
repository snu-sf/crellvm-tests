; ModuleID = './libgimpbase/gimpenv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GString = type { i8*, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@gimp_major_version = constant i32 2, align 4
@gimp_minor_version = constant i32 8, align 4
@gimp_micro_version = constant i32 18, align 4
@gimp_env_init.gimp_env_initialized = internal global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"gimp_env_init() must only be called once!\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"LD_LIBRARY_PATH\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Failed to create the data directory '%s': %s\00", align 1
@gimp_directory.gimp_dir = internal global i8* null, align 8
@gimp_directory.last_env_gimp_dir = internal global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"GIMP2_DIRECTORY\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c".gimp-2.8\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"warning: no home directory.\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c".gimp-2.8.\00", align 1
@gimp_installation_directory.toplevel = internal global i8* null, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"/usr/local\00", align 1
@gimp_data_directory.gimp_data_dir = internal global i8* null, align 8
@.str.9 = private unnamed_addr constant [26 x i8] c"/usr/local/share/gimp/2.0\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"GIMP2_DATADIR\00", align 1
@gimp_locale_directory.gimp_locale_dir = internal global i8* null, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"GIMP2_LOCALEDIR\00", align 1
@gimp_sysconf_directory.gimp_sysconf_dir = internal global i8* null, align 8
@.str.13 = private unnamed_addr constant [24 x i8] c"/usr/local/etc/gimp/2.0\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"GIMP2_SYSCONFDIR\00", align 1
@gimp_plug_in_directory.gimp_plug_in_dir = internal global i8* null, align 8
@.str.15 = private unnamed_addr constant [24 x i8] c"/usr/local/lib/gimp/2.0\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"GIMP2_PLUGINDIR\00", align 1
@gimp_gtkrc.gimp_gtkrc_filename = internal global i8* null, align 8
@.str.17 = private unnamed_addr constant [7 x i8] c"themes\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"gtkrc\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"LibGimpBase\00", align 1
@__func__.gimp_path_get_user_writable_dir = private unnamed_addr constant [32 x i8] c"gimp_path_get_user_writable_dir\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"path != NULL\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"/usr/local/\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"%s environment variable should be an absolute path.\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_env_init(i32 %plug_in) #0 {
entry:
  %plug_in.addr = alloca i32, align 4
  %data_home = alloca i8*, align 8
  %ldpath = alloca i8*, align 8
  %libdir = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  store i32 %plug_in, i32* %plug_in.addr, align 4
  %call = call i8* @g_get_user_data_dir()
  store i8* %call, i8** %data_home, align 8
  %0 = load i32, i32* @gimp_env_init.gimp_env_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 1, i32* @gimp_env_init.gimp_env_initialized, align 4
  %1 = load i32, i32* %plug_in.addr, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %call3 = call i32 @_gimp_reloc_init_lib(%struct._GError** null)
  br label %if.end.18

if.else:                                          ; preds = %if.end
  %call4 = call i32 @_gimp_reloc_init(%struct._GError** null)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.17

if.then.6:                                        ; preds = %if.else
  %call7 = call i8* @g_getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store i8* %call7, i8** %ldpath, align 8
  %call8 = call i8* @_gimp_reloc_find_lib_dir(i8* null)
  store i8* %call8, i8** %libdir, align 8
  %2 = load i8*, i8** %ldpath, align 8
  %tobool9 = icmp ne i8* %2, null
  br i1 %tobool9, label %land.lhs.true, label %if.else.14

land.lhs.true:                                    ; preds = %if.then.6
  %3 = load i8*, i8** %ldpath, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %tobool10 = icmp ne i32 %conv, 0
  br i1 %tobool10, label %if.then.11, label %if.else.14

if.then.11:                                       ; preds = %land.lhs.true
  %5 = load i8*, i8** %libdir, align 8
  %6 = load i8*, i8** %ldpath, align 8
  %call12 = call noalias i8* (i8*, ...) @g_strconcat(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8* %6, i8* null)
  store i8* %call12, i8** %tmp, align 8
  %7 = load i8*, i8** %tmp, align 8
  %call13 = call i32 @g_setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %7, i32 1)
  %8 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %8)
  br label %if.end.16

if.else.14:                                       ; preds = %land.lhs.true, %if.then.6
  %9 = load i8*, i8** %libdir, align 8
  %call15 = call i32 @g_setenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0), i8* %9, i32 1)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.11
  %10 = load i8*, i8** %libdir, align 8
  call void @g_free(i8* %10)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.2
  %11 = load i8*, i8** %data_home, align 8
  %call19 = call i32 @g_file_test(i8* %11, i32 4)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.28, label %if.then.21

if.then.21:                                       ; preds = %if.end.18
  %12 = load i8*, i8** %data_home, align 8
  %call22 = call i32 @g_mkdir_with_parents(i8* %12, i32 448)
  %cmp = icmp ne i32 %call22, 0
  br i1 %cmp, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.then.21
  %13 = load i8*, i8** %data_home, align 8
  %call25 = call i32* @__errno_location() #8
  %14 = load i32, i32* %call25, align 4
  %call26 = call i8* @g_strerror(i32 %14) #8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i32 0, i32 0), i8* %13, i8* %call26)
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.then.21
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.18
  ret void
}

declare i8* @g_get_user_data_dir() #1

; Function Attrs: nounwind uwtable
define internal void @g_error(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

declare hidden i32 @_gimp_reloc_init_lib(%struct._GError**) #1

declare hidden i32 @_gimp_reloc_init(%struct._GError**) #1

declare i8* @g_getenv(i8*) #1

declare hidden i8* @_gimp_reloc_find_lib_dir(i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i32 @g_setenv(i8*, i8*, i32) #1

declare void @g_free(i8*) #1

declare i32 @g_file_test(i8*, i32) #1

declare i32 @g_mkdir_with_parents(i8*, i32) #1

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
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_directory() #3 {
entry:
  %retval = alloca i8*, align 8
  %env_gimp_dir = alloca i8*, align 8
  %home_dir = alloca i8*, align 8
  %gimp2_directory_changed = alloca i32, align 4
  %user_name = alloca i8*, align 8
  %subdir_name = alloca i8*, align 8
  %call = call i8* @g_getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0))
  store i8* %call, i8** %env_gimp_dir, align 8
  %0 = load i8*, i8** @gimp_directory.gimp_dir, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  store i32 0, i32* %gimp2_directory_changed, align 4
  %1 = load i8*, i8** %env_gimp_dir, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then
  %2 = load i8*, i8** @gimp_directory.last_env_gimp_dir, align 8
  %cmp1 = icmp ne i8* %2, null
  br i1 %cmp1, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.then
  %3 = load i8*, i8** %env_gimp_dir, align 8
  %cmp2 = icmp ne i8* %3, null
  br i1 %cmp2, label %land.lhs.true.3, label %lor.rhs

land.lhs.true.3:                                  ; preds = %lor.lhs.false
  %4 = load i8*, i8** @gimp_directory.last_env_gimp_dir, align 8
  %cmp4 = icmp eq i8* %4, null
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.3, %lor.lhs.false
  %5 = load i8*, i8** %env_gimp_dir, align 8
  %cmp5 = icmp ne i8* %5, null
  br i1 %cmp5, label %land.lhs.true.6, label %land.end

land.lhs.true.6:                                  ; preds = %lor.rhs
  %6 = load i8*, i8** @gimp_directory.last_env_gimp_dir, align 8
  %cmp7 = icmp ne i8* %6, null
  br i1 %cmp7, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.6
  %7 = load i8*, i8** %env_gimp_dir, align 8
  %8 = load i8*, i8** @gimp_directory.last_env_gimp_dir, align 8
  %call8 = call i32 @strcmp(i8* %7, i8* %8) #9
  %cmp9 = icmp ne i32 %call8, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.6, %lor.rhs
  %9 = phi i1 [ false, %land.lhs.true.6 ], [ false, %lor.rhs ], [ %cmp9, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.lhs.true.3, %land.lhs.true
  %10 = phi i1 [ true, %land.lhs.true.3 ], [ true, %land.lhs.true ], [ %9, %land.end ]
  %lor.ext = zext i1 %10 to i32
  store i32 %lor.ext, i32* %gimp2_directory_changed, align 4
  %11 = load i32, i32* %gimp2_directory_changed, align 4
  %tobool10 = icmp ne i32 %11, 0
  br i1 %tobool10, label %if.else, label %if.then.11

if.then.11:                                       ; preds = %lor.end
  %12 = load i8*, i8** @gimp_directory.gimp_dir, align 8
  store i8* %12, i8** %retval
  br label %return

if.else:                                          ; preds = %lor.end
  %13 = load i8*, i8** @gimp_directory.gimp_dir, align 8
  call void @g_free(i8* %13)
  store i8* null, i8** @gimp_directory.gimp_dir, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  %14 = load i8*, i8** @gimp_directory.last_env_gimp_dir, align 8
  call void @g_free(i8* %14)
  %15 = load i8*, i8** %env_gimp_dir, align 8
  %call13 = call noalias i8* @g_strdup(i8* %15)
  store i8* %call13, i8** @gimp_directory.last_env_gimp_dir, align 8
  %call14 = call i8* @g_get_home_dir()
  store i8* %call14, i8** %home_dir, align 8
  %16 = load i8*, i8** %env_gimp_dir, align 8
  %tobool15 = icmp ne i8* %16, null
  br i1 %tobool15, label %if.then.16, label %if.else.30

if.then.16:                                       ; preds = %if.end.12
  %17 = load i8*, i8** %env_gimp_dir, align 8
  %call17 = call i32 @g_path_is_absolute(i8* %17)
  %tobool18 = icmp ne i32 %call17, 0
  br i1 %tobool18, label %if.then.19, label %if.else.21

if.then.19:                                       ; preds = %if.then.16
  %18 = load i8*, i8** %env_gimp_dir, align 8
  %call20 = call noalias i8* @g_strdup(i8* %18)
  store i8* %call20, i8** @gimp_directory.gimp_dir, align 8
  br label %if.end.29

if.else.21:                                       ; preds = %if.then.16
  %19 = load i8*, i8** %home_dir, align 8
  %tobool22 = icmp ne i8* %19, null
  br i1 %tobool22, label %if.then.23, label %if.else.25

if.then.23:                                       ; preds = %if.else.21
  %20 = load i8*, i8** %home_dir, align 8
  %21 = load i8*, i8** %env_gimp_dir, align 8
  %call24 = call noalias i8* (i8*, ...) @g_build_filename(i8* %20, i8* %21, i8* null)
  store i8* %call24, i8** @gimp_directory.gimp_dir, align 8
  br label %if.end.28

if.else.25:                                       ; preds = %if.else.21
  %call26 = call i8* @gimp_data_directory() #8
  %22 = load i8*, i8** %env_gimp_dir, align 8
  %call27 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call26, i8* %22, i8* null)
  store i8* %call27, i8** @gimp_directory.gimp_dir, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.23
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.19
  br label %if.end.41

if.else.30:                                       ; preds = %if.end.12
  %23 = load i8*, i8** %home_dir, align 8
  %tobool31 = icmp ne i8* %23, null
  br i1 %tobool31, label %if.then.32, label %if.else.34

if.then.32:                                       ; preds = %if.else.30
  %24 = load i8*, i8** %home_dir, align 8
  %call33 = call noalias i8* (i8*, ...) @g_build_filename(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0), i8* null)
  store i8* %call33, i8** @gimp_directory.gimp_dir, align 8
  br label %if.end.40

if.else.34:                                       ; preds = %if.else.30
  %call35 = call i8* @g_get_user_name()
  %call36 = call noalias i8* @g_strdup(i8* %call35)
  store i8* %call36, i8** %user_name, align 8
  call void (i8*, ...) @g_message(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  %25 = load i8*, i8** %user_name, align 8
  %call37 = call noalias i8* (i8*, ...) @g_strconcat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i8* %25, i8* null)
  store i8* %call37, i8** %subdir_name, align 8
  %call38 = call i8* @gimp_data_directory() #8
  %26 = load i8*, i8** %subdir_name, align 8
  %call39 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call38, i8* %26, i8* null)
  store i8* %call39, i8** @gimp_directory.gimp_dir, align 8
  %27 = load i8*, i8** %user_name, align 8
  call void @g_free(i8* %27)
  %28 = load i8*, i8** %subdir_name, align 8
  call void @g_free(i8* %28)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.34, %if.then.32
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.29
  %29 = load i8*, i8** @gimp_directory.gimp_dir, align 8
  store i8* %29, i8** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.11
  %30 = load i8*, i8** %retval
  ret i8* %30
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_get_home_dir() #1

declare i32 @g_path_is_absolute(i8*) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_data_directory() #3 {
entry:
  %tmp = alloca i8*, align 8
  %0 = load i8*, i8** @gimp_data_directory.gimp_data_dir, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @_gimp_reloc_find_data_dir(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0))
  store i8* %call, i8** %tmp, align 8
  %1 = load i8*, i8** %tmp, align 8
  %call1 = call i8* @gimp_env_get_dir(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i32 0, i32 0), i8* %1)
  store i8* %call1, i8** @gimp_data_directory.gimp_data_dir, align 8
  %2 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** @gimp_data_directory.gimp_data_dir, align 8
  ret i8* %3
}

declare i8* @g_get_user_name() #1

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
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_installation_directory() #3 {
entry:
  %retval = alloca i8*, align 8
  %0 = load i8*, i8** @gimp_installation_directory.toplevel, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** @gimp_installation_directory.toplevel, align 8
  store i8* %1, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call = call i8* @_gimp_reloc_find_prefix(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0))
  store i8* %call, i8** @gimp_installation_directory.toplevel, align 8
  %2 = load i8*, i8** @gimp_installation_directory.toplevel, align 8
  store i8* %2, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval
  ret i8* %3
}

declare hidden i8* @_gimp_reloc_find_prefix(i8*) #1

declare hidden i8* @_gimp_reloc_find_data_dir(i8*) #1

; Function Attrs: nounwind uwtable
define internal i8* @gimp_env_get_dir(i8* %gimp_env_name, i8* %env_dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %gimp_env_name.addr = alloca i8*, align 8
  %env_dir.addr = alloca i8*, align 8
  %env = alloca i8*, align 8
  %retval5 = alloca i8*, align 8
  store i8* %gimp_env_name, i8** %gimp_env_name.addr, align 8
  store i8* %env_dir, i8** %env_dir.addr, align 8
  %0 = load i8*, i8** %gimp_env_name.addr, align 8
  %call = call i8* @g_getenv(i8* %0)
  store i8* %call, i8** %env, align 8
  %1 = load i8*, i8** %env, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %env, align 8
  %call1 = call i32 @g_path_is_absolute(i8* %2)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %3 = load i8*, i8** %gimp_env_name.addr, align 8
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i32 0, i32 0), i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  %4 = load i8*, i8** %env, align 8
  %call4 = call noalias i8* @g_strdup(i8* %4)
  store i8* %call4, i8** %retval
  br label %return

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %env_dir.addr, align 8
  %call6 = call noalias i8* @g_strdup(i8* %5)
  store i8* %call6, i8** %retval5, align 8
  call void @gimp_path_runtime_fix(i8** %retval5)
  %6 = load i8*, i8** %retval5, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.else, %if.end
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_locale_directory() #3 {
entry:
  %tmp = alloca i8*, align 8
  %0 = load i8*, i8** @gimp_locale_directory.gimp_locale_dir, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @_gimp_reloc_find_locale_dir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i32 0, i32 0))
  store i8* %call, i8** %tmp, align 8
  %1 = load i8*, i8** %tmp, align 8
  %call1 = call i8* @gimp_env_get_dir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* %1)
  store i8* %call1, i8** @gimp_locale_directory.gimp_locale_dir, align 8
  %2 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** @gimp_locale_directory.gimp_locale_dir, align 8
  ret i8* %3
}

declare hidden i8* @_gimp_reloc_find_locale_dir(i8*) #1

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_sysconf_directory() #3 {
entry:
  %tmp = alloca i8*, align 8
  %0 = load i8*, i8** @gimp_sysconf_directory.gimp_sysconf_dir, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @_gimp_reloc_find_etc_dir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  store i8* %call, i8** %tmp, align 8
  %1 = load i8*, i8** %tmp, align 8
  %call1 = call i8* @gimp_env_get_dir(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0), i8* %1)
  store i8* %call1, i8** @gimp_sysconf_directory.gimp_sysconf_dir, align 8
  %2 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** @gimp_sysconf_directory.gimp_sysconf_dir, align 8
  ret i8* %3
}

declare hidden i8* @_gimp_reloc_find_etc_dir(i8*) #1

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_user_directory(i32 %type) #3 {
entry:
  %type.addr = alloca i32, align 4
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %call = call i8* @g_get_user_special_dir(i32 %0)
  ret i8* %call
}

declare i8* @g_get_user_special_dir(i32) #1

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_plug_in_directory() #3 {
entry:
  %tmp = alloca i8*, align 8
  %0 = load i8*, i8** @gimp_plug_in_directory.gimp_plug_in_dir, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @_gimp_reloc_find_plugin_dir(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  store i8* %call, i8** %tmp, align 8
  %1 = load i8*, i8** %tmp, align 8
  %call1 = call i8* @gimp_env_get_dir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* %1)
  store i8* %call1, i8** @gimp_plug_in_directory.gimp_plug_in_dir, align 8
  %2 = load i8*, i8** %tmp, align 8
  call void @g_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** @gimp_plug_in_directory.gimp_plug_in_dir, align 8
  ret i8* %3
}

declare hidden i8* @_gimp_reloc_find_plugin_dir(i8*) #1

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_personal_rc_file(i8* %basename) #0 {
entry:
  %basename.addr = alloca i8*, align 8
  store i8* %basename, i8** %basename.addr, align 8
  %call = call i8* @gimp_directory() #8
  %0 = load i8*, i8** %basename.addr, align 8
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call, i8* %0, i8* null)
  ret i8* %call1
}

; Function Attrs: nounwind readnone uwtable
define i8* @gimp_gtkrc() #3 {
entry:
  %0 = load i8*, i8** @gimp_gtkrc.gimp_gtkrc_filename, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @gimp_data_directory() #8
  %call1 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* null)
  store i8* %call1, i8** @gimp_gtkrc.gimp_gtkrc_filename, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i8*, i8** @gimp_gtkrc.gimp_gtkrc_filename, align 8
  ret i8* %1
}

; Function Attrs: nounwind uwtable
define %struct._GList* @gimp_path_parse(i8* %path, i32 %max_paths, i32 %check, %struct._GList** %check_failed) #0 {
entry:
  %retval = alloca %struct._GList*, align 8
  %path.addr = alloca i8*, align 8
  %max_paths.addr = alloca i32, align 4
  %check.addr = alloca i32, align 4
  %check_failed.addr = alloca %struct._GList**, align 8
  %home = alloca i8*, align 8
  %patharray = alloca i8**, align 8
  %list = alloca %struct._GList*, align 8
  %fail_list = alloca %struct._GList*, align 8
  %i = alloca i32, align 4
  %exists = alloca i32, align 4
  %dir = alloca %struct._GString*, align 8
  store i8* %path, i8** %path.addr, align 8
  store i32 %max_paths, i32* %max_paths.addr, align 4
  store i32 %check, i32* %check.addr, align 4
  store %struct._GList** %check_failed, %struct._GList*** %check_failed.addr, align 8
  store %struct._GList* null, %struct._GList** %list, align 8
  store %struct._GList* null, %struct._GList** %fail_list, align 8
  store i32 1, i32* %exists, align 4
  %0 = load i8*, i8** %path.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load i8*, i8** %path.addr, align 8
  %2 = load i8, i8* %1, align 1
  %tobool1 = icmp ne i8 %2, 0
  br i1 %tobool1, label %lor.lhs.false.2, label %if.then

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %3 = load i32, i32* %max_paths.addr, align 4
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false.2
  %4 = load i32, i32* %max_paths.addr, align 4
  %cmp4 = icmp sgt i32 %4, 256
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false.2, %lor.lhs.false, %entry
  store %struct._GList* null, %struct._GList** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %call = call i8* @g_get_home_dir()
  store i8* %call, i8** %home, align 8
  %5 = load i8*, i8** %path.addr, align 8
  %6 = load i32, i32* %max_paths.addr, align 4
  %call5 = call noalias i8** @g_strsplit(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i32 %6)
  store i8** %call5, i8*** %patharray, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %max_paths.addr, align 4
  %cmp6 = icmp slt i32 %7, %8
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** %patharray, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %for.body
  br label %for.end

if.end.9:                                         ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i8**, i8*** %patharray, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %13, i64 %idxprom10
  %14 = load i8*, i8** %arrayidx11, align 8
  %15 = load i8, i8* %14, align 1
  %conv = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv, 126
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.end.9
  %16 = load i8*, i8** %home, align 8
  %call15 = call %struct._GString* @g_string_new(i8* %16)
  store %struct._GString* %call15, %struct._GString** %dir, align 8
  %17 = load %struct._GString*, %struct._GString** %dir, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %19 = load i8**, i8*** %patharray, align 8
  %arrayidx17 = getelementptr inbounds i8*, i8** %19, i64 %idxprom16
  %20 = load i8*, i8** %arrayidx17, align 8
  %add.ptr = getelementptr inbounds i8, i8* %20, i64 1
  %call18 = call %struct._GString* @g_string_append(%struct._GString* %17, i8* %add.ptr)
  br label %if.end.24

if.else:                                          ; preds = %if.end.9
  %21 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load i8**, i8*** %patharray, align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %22, i64 %idxprom19
  call void @gimp_path_runtime_fix(i8** %arrayidx20)
  %23 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %23 to i64
  %24 = load i8**, i8*** %patharray, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %24, i64 %idxprom21
  %25 = load i8*, i8** %arrayidx22, align 8
  %call23 = call %struct._GString* @g_string_new(i8* %25)
  store %struct._GString* %call23, %struct._GString** %dir, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.14
  %26 = load i32, i32* %check.addr, align 4
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %27 = load %struct._GString*, %struct._GString** %dir, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %27, i32 0, i32 0
  %28 = load i8*, i8** %str, align 8
  %call27 = call i32 @g_file_test(i8* %28, i32 4)
  store i32 %call27, i32* %exists, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %29 = load i32, i32* %exists, align 4
  %tobool29 = icmp ne i32 %29, 0
  br i1 %tobool29, label %if.then.30, label %if.else.34

if.then.30:                                       ; preds = %if.end.28
  %30 = load %struct._GList*, %struct._GList** %list, align 8
  %31 = load %struct._GString*, %struct._GString** %dir, align 8
  %str31 = getelementptr inbounds %struct._GString, %struct._GString* %31, i32 0, i32 0
  %32 = load i8*, i8** %str31, align 8
  %call32 = call noalias i8* @g_strdup(i8* %32)
  %call33 = call %struct._GList* @g_list_prepend(%struct._GList* %30, i8* %call32)
  store %struct._GList* %call33, %struct._GList** %list, align 8
  br label %if.end.41

if.else.34:                                       ; preds = %if.end.28
  %33 = load %struct._GList**, %struct._GList*** %check_failed.addr, align 8
  %tobool35 = icmp ne %struct._GList** %33, null
  br i1 %tobool35, label %if.then.36, label %if.end.40

if.then.36:                                       ; preds = %if.else.34
  %34 = load %struct._GList*, %struct._GList** %fail_list, align 8
  %35 = load %struct._GString*, %struct._GString** %dir, align 8
  %str37 = getelementptr inbounds %struct._GString, %struct._GString* %35, i32 0, i32 0
  %36 = load i8*, i8** %str37, align 8
  %call38 = call noalias i8* @g_strdup(i8* %36)
  %call39 = call %struct._GList* @g_list_prepend(%struct._GList* %34, i8* %call38)
  store %struct._GList* %call39, %struct._GList** %fail_list, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.36, %if.else.34
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.30
  %37 = load %struct._GString*, %struct._GString** %dir, align 8
  %call42 = call i8* @g_string_free(%struct._GString* %37, i32 1)
  br label %for.inc

for.inc:                                          ; preds = %if.end.41
  %38 = load i32, i32* %i, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.8, %for.cond
  %39 = load i8**, i8*** %patharray, align 8
  call void @g_strfreev(i8** %39)
  %40 = load %struct._GList*, %struct._GList** %list, align 8
  %call43 = call %struct._GList* @g_list_reverse(%struct._GList* %40)
  store %struct._GList* %call43, %struct._GList** %list, align 8
  %41 = load i32, i32* %check.addr, align 4
  %tobool44 = icmp ne i32 %41, 0
  br i1 %tobool44, label %land.lhs.true, label %if.end.48

land.lhs.true:                                    ; preds = %for.end
  %42 = load %struct._GList**, %struct._GList*** %check_failed.addr, align 8
  %tobool45 = icmp ne %struct._GList** %42, null
  br i1 %tobool45, label %if.then.46, label %if.end.48

if.then.46:                                       ; preds = %land.lhs.true
  %43 = load %struct._GList*, %struct._GList** %fail_list, align 8
  %call47 = call %struct._GList* @g_list_reverse(%struct._GList* %43)
  store %struct._GList* %call47, %struct._GList** %fail_list, align 8
  %44 = load %struct._GList*, %struct._GList** %fail_list, align 8
  %45 = load %struct._GList**, %struct._GList*** %check_failed.addr, align 8
  store %struct._GList* %44, %struct._GList** %45, align 8
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.46, %land.lhs.true, %for.end
  %46 = load %struct._GList*, %struct._GList** %list, align 8
  store %struct._GList* %46, %struct._GList** %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.then
  %47 = load %struct._GList*, %struct._GList** %retval
  ret %struct._GList* %47
}

declare noalias i8** @g_strsplit(i8*, i8*, i32) #1

declare %struct._GString* @g_string_new(i8*) #1

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_path_runtime_fix(i8** %path) #0 {
entry:
  %path.addr = alloca i8**, align 8
  %p = alloca i8*, align 8
  store i8** %path, i8*** %path.addr, align 8
  %0 = load i8**, i8*** %path.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %call = call i32 @strncmp(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i64 11) #9
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8**, i8*** %path.addr, align 8
  %3 = load i8*, i8** %2, align 8
  store i8* %3, i8** %p, align 8
  %call1 = call i8* @gimp_installation_directory() #8
  %4 = load i8**, i8*** %path.addr, align 8
  %5 = load i8*, i8** %4, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 11
  %call2 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call1, i8* %add.ptr, i8* null)
  %6 = load i8**, i8*** %path.addr, align 8
  store i8* %call2, i8** %6, align 8
  %7 = load i8*, i8** %p, align 8
  call void @g_free(i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._GList* @g_list_prepend(%struct._GList*, i8*) #1

declare i8* @g_string_free(%struct._GString*, i32) #1

declare void @g_strfreev(i8**) #1

declare %struct._GList* @g_list_reverse(%struct._GList*) #1

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_path_to_str(%struct._GList* %path) #0 {
entry:
  %path.addr = alloca %struct._GList*, align 8
  %str = alloca %struct._GString*, align 8
  %list = alloca %struct._GList*, align 8
  %retval1 = alloca i8*, align 8
  %dir = alloca i8*, align 8
  store %struct._GList* %path, %struct._GList** %path.addr, align 8
  store %struct._GString* null, %struct._GString** %str, align 8
  store i8* null, i8** %retval1, align 8
  %0 = load %struct._GList*, %struct._GList** %path.addr, align 8
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
  store i8* %3, i8** %dir, align 8
  %4 = load %struct._GString*, %struct._GString** %str, align 8
  %tobool2 = icmp ne %struct._GString* %4, null
  br i1 %tobool2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %5 = load %struct._GString*, %struct._GString** %str, align 8
  %call = call %struct._GString* @g_string_append_c_inline(%struct._GString* %5, i8 signext 58)
  %6 = load %struct._GString*, %struct._GString** %str, align 8
  %7 = load i8*, i8** %dir, align 8
  %call3 = call %struct._GString* @g_string_append(%struct._GString* %6, i8* %7)
  br label %if.end

if.else:                                          ; preds = %for.body
  %8 = load i8*, i8** %dir, align 8
  %call4 = call %struct._GString* @g_string_new(i8* %8)
  store %struct._GString* %call4, %struct._GString** %str, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool5 = icmp ne %struct._GList* %9, null
  br i1 %tobool5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %10 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %10, i32 0, i32 1
  %11 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %11, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %12 = load %struct._GString*, %struct._GString** %str, align 8
  %tobool6 = icmp ne %struct._GString* %12, null
  br i1 %tobool6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %for.end
  %13 = load %struct._GString*, %struct._GString** %str, align 8
  %call8 = call i8* @g_string_free(%struct._GString* %13, i32 0)
  store i8* %call8, i8** %retval1, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %for.end
  %14 = load i8*, i8** %retval1, align 8
  ret i8* %14
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #5 {
entry:
  %gstring.addr = alloca %struct._GString*, align 8
  %c.addr = alloca i8, align 1
  store %struct._GString* %gstring, %struct._GString** %gstring.addr, align 8
  store i8 %c, i8* %c.addr, align 1
  %0 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %0, i32 0, i32 1
  %1 = load i64, i64* %len, align 8
  %add = add i64 %1, 1
  %2 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %allocated_len = getelementptr inbounds %struct._GString, %struct._GString* %2, i32 0, i32 2
  %3 = load i64, i64* %allocated_len, align 8
  %cmp = icmp ult i64 %add, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %c.addr, align 1
  %5 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len1 = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len1, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %len1, align 8
  %7 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %7, i32 0, i32 0
  %8 = load i8*, i8** %str, align 8
  %arrayidx = getelementptr inbounds i8, i8* %8, i64 %6
  store i8 %4, i8* %arrayidx, align 1
  %9 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %len2 = getelementptr inbounds %struct._GString, %struct._GString* %9, i32 0, i32 1
  %10 = load i64, i64* %len2, align 8
  %11 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %str3 = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 0
  %12 = load i8*, i8** %str3, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %12, i64 %10
  store i8 0, i8* %arrayidx4, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  %13 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  %14 = load i8, i8* %c.addr, align 1
  %call = call %struct._GString* @g_string_insert_c(%struct._GString* %13, i64 -1, i8 signext %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = load %struct._GString*, %struct._GString** %gstring.addr, align 8
  ret %struct._GString* %15
}

; Function Attrs: nounwind uwtable
define void @gimp_path_free(%struct._GList* %path) #0 {
entry:
  %path.addr = alloca %struct._GList*, align 8
  store %struct._GList* %path, %struct._GList** %path.addr, align 8
  %0 = load %struct._GList*, %struct._GList** %path.addr, align 8
  call void @g_list_free_full(%struct._GList* %0, void (i8*)* @g_free)
  ret void
}

declare void @g_list_free_full(%struct._GList*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_path_get_user_writable_dir(%struct._GList* %path) #0 {
entry:
  %retval = alloca i8*, align 8
  %path.addr = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %euid = alloca i32, align 4
  %egid = alloca i32, align 4
  %filestat = alloca %struct.stat, align 8
  %err = alloca i32, align 4
  %dir = alloca i8*, align 8
  store %struct._GList* %path, %struct._GList** %path.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GList*, %struct._GList** %path.addr, align 8
  %cmp = icmp ne %struct._GList* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_path_get_user_writable_dir, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call i32 @geteuid() #7
  store i32 %call, i32* %euid, align 4
  %call1 = call i32 @getegid() #7
  store i32 %call1, i32* %egid, align 4
  %1 = load %struct._GList*, %struct._GList** %path.addr, align 8
  store %struct._GList* %1, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end
  %2 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %3, i32 0, i32 0
  %4 = load i8*, i8** %data, align 8
  store i8* %4, i8** %dir, align 8
  %5 = load i8*, i8** %dir, align 8
  %call2 = call i32 @stat(i8* %5, %struct.stat* %filestat) #7
  store i32 %call2, i32* %err, align 4
  %6 = load i32, i32* %err, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %if.end.25, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %filestat, i32 0, i32 3
  %7 = load i32, i32* %st_mode, align 4
  %and = and i32 %7, 61440
  %cmp4 = icmp eq i32 %and, 16384
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.25

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %st_mode6 = getelementptr inbounds %struct.stat, %struct.stat* %filestat, i32 0, i32 3
  %8 = load i32, i32* %st_mode6, align 4
  %and7 = and i32 %8, 128
  %tobool8 = icmp ne i32 %and7, 0
  br i1 %tobool8, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.5
  %st_mode9 = getelementptr inbounds %struct.stat, %struct.stat* %filestat, i32 0, i32 3
  %9 = load i32, i32* %st_mode9, align 4
  %and10 = and i32 %9, 16
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %land.lhs.true.12, label %lor.lhs.false.14

land.lhs.true.12:                                 ; preds = %lor.lhs.false
  %10 = load i32, i32* %euid, align 4
  %st_uid = getelementptr inbounds %struct.stat, %struct.stat* %filestat, i32 0, i32 4
  %11 = load i32, i32* %st_uid, align 4
  %cmp13 = icmp ne i32 %10, %11
  br i1 %cmp13, label %if.then.23, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %land.lhs.true.12, %lor.lhs.false
  %st_mode15 = getelementptr inbounds %struct.stat, %struct.stat* %filestat, i32 0, i32 3
  %12 = load i32, i32* %st_mode15, align 4
  %and16 = and i32 %12, 2
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.25

land.lhs.true.18:                                 ; preds = %lor.lhs.false.14
  %13 = load i32, i32* %euid, align 4
  %st_uid19 = getelementptr inbounds %struct.stat, %struct.stat* %filestat, i32 0, i32 4
  %14 = load i32, i32* %st_uid19, align 4
  %cmp20 = icmp ne i32 %13, %14
  br i1 %cmp20, label %land.lhs.true.21, label %if.end.25

land.lhs.true.21:                                 ; preds = %land.lhs.true.18
  %15 = load i32, i32* %egid, align 4
  %st_gid = getelementptr inbounds %struct.stat, %struct.stat* %filestat, i32 0, i32 5
  %16 = load i32, i32* %st_gid, align 4
  %cmp22 = icmp ne i32 %15, %16
  br i1 %cmp22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %land.lhs.true.21, %land.lhs.true.12, %land.lhs.true.5
  %17 = load i8*, i8** %dir, align 8
  %call24 = call noalias i8* @g_strdup(i8* %17)
  store i8* %call24, i8** %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true.21, %land.lhs.true.18, %lor.lhs.false.14, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.25
  %18 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool26 = icmp ne %struct._GList* %18, null
  br i1 %tobool26, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %19 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %19, i32 0, i32 1
  %20 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %20, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.23, %if.else
  %21 = load i8*, i8** %retval
  ret i8* %21
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @geteuid() #6

; Function Attrs: nounwind
declare i32 @getegid() #6

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #6

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #4

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
