; ModuleID = './libgimpbase/gimpreloc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GError = type { i32, i32, i8* }

@exe = internal global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bin\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"share\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"gimp\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"2.0\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"lib\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"libexec\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"etc\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Cannot allocate memory.\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Unable to open /proc/self/maps for reading.\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"Unable to read from /proc/self/maps.\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"The file format of /proc/self/maps is invalid.\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Binary relocation support is disabled.\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"Unknown error.\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"GBinReloc\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_reloc_init(%struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %errcode = alloca i32, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %errcode, align 4
  %call = call i8* @_br_find_exe(i32* %errcode)
  store i8* %call, i8** @exe, align 8
  %0 = load i8*, i8** @exe, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %2 = load i32, i32* %errcode, align 4
  call void @set_gerror(%struct._GError** %1, i32 %2)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal i8* @_br_find_exe(i32* %error) #0 {
entry:
  %error.addr = alloca i32*, align 8
  store i32* %error, i32** %error.addr, align 8
  %0 = load i32*, i32** %error.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %error.addr, align 8
  store i32 4, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* null
}

; Function Attrs: nounwind uwtable
define internal void @set_gerror(%struct._GError** %error, i32 %errcode) #0 {
entry:
  %error.addr = alloca %struct._GError**, align 8
  %errcode.addr = alloca i32, align 4
  %error_message = alloca i8*, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 %errcode, i32* %errcode.addr, align 4
  %0 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp = icmp eq %struct._GError** %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %errcode.addr, align 4
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.3
    i32 4, label %sw.bb.4
  ]

sw.bb:                                            ; preds = %if.end
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i8** %error_message, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10, i32 0, i32 0), i8** %error_message, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i8** %error_message, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i8** %error_message, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0), i8** %error_message, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0), i8** %error_message, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call i32 @g_quark_from_static_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0))
  %3 = load i32, i32* %errcode.addr, align 4
  %4 = load i8*, i8** %error_message, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call, i32 %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* %4)
  br label %return

return:                                           ; preds = %sw.epilog, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @_gimp_reloc_init_lib(%struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %errcode = alloca i32, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 0, i32* %errcode, align 4
  %call = call i8* @_br_find_exe_for_symbol(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i32* %errcode)
  store i8* %call, i8** @exe, align 8
  %0 = load i8*, i8** @exe, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %2 = load i32, i32* %errcode, align 4
  call void @set_gerror(%struct._GError** %1, i32 %2)
  %3 = load i8*, i8** @exe, align 8
  %cmp1 = icmp ne i8* %3, null
  %conv = zext i1 %cmp1 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define internal i8* @_br_find_exe_for_symbol(i8* %symbol, i32* %error) #0 {
entry:
  %symbol.addr = alloca i8*, align 8
  %error.addr = alloca i32*, align 8
  store i8* %symbol, i8** %symbol.addr, align 8
  store i32* %error, i32** %error.addr, align 8
  %0 = load i32*, i32** %error.addr, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** %error.addr, align 8
  store i32 4, i32* %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i8* null
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_reloc_find_exe(i8* %default_exe) #0 {
entry:
  %retval = alloca i8*, align 8
  %default_exe.addr = alloca i8*, align 8
  store i8* %default_exe, i8** %default_exe.addr, align 8
  %0 = load i8*, i8** @exe, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %default_exe.addr, align 8
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %default_exe.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %2)
  store i8* %call, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** @exe, align 8
  %call3 = call noalias i8* @g_strdup(i8* %3)
  store i8* %call3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.2
  %4 = load i8*, i8** %retval
  ret i8* %4
}

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_reloc_find_exe_dir(i8* %default_dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %default_dir.addr = alloca i8*, align 8
  store i8* %default_dir, i8** %default_dir.addr, align 8
  %0 = load i8*, i8** @exe, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %default_dir.addr, align 8
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %default_dir.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %2)
  store i8* %call, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** @exe, align 8
  %call3 = call noalias i8* @g_path_get_dirname(i8* %3)
  store i8* %call3, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.2
  %4 = load i8*, i8** %retval
  ret i8* %4
}

declare noalias i8* @g_path_get_dirname(i8*) #1

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_reloc_find_prefix(i8* %default_prefix) #0 {
entry:
  %retval = alloca i8*, align 8
  %default_prefix.addr = alloca i8*, align 8
  %dir1 = alloca i8*, align 8
  %dir2 = alloca i8*, align 8
  store i8* %default_prefix, i8** %default_prefix.addr, align 8
  %0 = load i8*, i8** @exe, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %default_prefix.addr, align 8
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %default_prefix.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %2)
  store i8* %call, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** @exe, align 8
  %call3 = call noalias i8* @g_path_get_dirname(i8* %3)
  store i8* %call3, i8** %dir1, align 8
  %4 = load i8*, i8** %dir1, align 8
  %call4 = call noalias i8* @g_path_get_dirname(i8* %4)
  store i8* %call4, i8** %dir2, align 8
  %5 = load i8*, i8** %dir1, align 8
  call void @g_free(i8* %5)
  %6 = load i8*, i8** %dir2, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.2
  %7 = load i8*, i8** %retval
  ret i8* %7
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_reloc_find_bin_dir(i8* %default_bin_dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %default_bin_dir.addr = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %dir = alloca i8*, align 8
  store i8* %default_bin_dir, i8** %default_bin_dir.addr, align 8
  %call = call i8* @_gimp_reloc_find_prefix(i8* null)
  store i8* %call, i8** %prefix, align 8
  %0 = load i8*, i8** %prefix, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %default_bin_dir.addr, align 8
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %default_bin_dir.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %2)
  store i8* %call3, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %prefix, align 8
  %call4 = call noalias i8* (i8*, ...) @g_build_filename(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* null)
  store i8* %call4, i8** %dir, align 8
  %4 = load i8*, i8** %prefix, align 8
  call void @g_free(i8* %4)
  %5 = load i8*, i8** %dir, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.2
  %6 = load i8*, i8** %retval
  ret i8* %6
}

declare noalias i8* @g_build_filename(i8*, ...) #1

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_reloc_find_data_dir(i8* %default_data_dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %default_data_dir.addr = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %dir = alloca i8*, align 8
  store i8* %default_data_dir, i8** %default_data_dir.addr, align 8
  %call = call i8* @_gimp_reloc_find_prefix(i8* null)
  store i8* %call, i8** %prefix, align 8
  %0 = load i8*, i8** %prefix, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %default_data_dir.addr, align 8
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %default_data_dir.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %2)
  store i8* %call3, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %prefix, align 8
  %call4 = call noalias i8* (i8*, ...) @g_build_filename(i8* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* null)
  store i8* %call4, i8** %dir, align 8
  %4 = load i8*, i8** %prefix, align 8
  call void @g_free(i8* %4)
  %5 = load i8*, i8** %dir, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.2
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_reloc_find_plugin_dir(i8* %default_plugin_dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %default_plugin_dir.addr = alloca i8*, align 8
  %libdir = alloca i8*, align 8
  %dir = alloca i8*, align 8
  store i8* %default_plugin_dir, i8** %default_plugin_dir.addr, align 8
  %call = call i8* @_gimp_reloc_find_lib_dir(i8* null)
  store i8* %call, i8** %libdir, align 8
  %0 = load i8*, i8** %libdir, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %default_plugin_dir.addr, align 8
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %default_plugin_dir.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %2)
  store i8* %call3, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %libdir, align 8
  %call4 = call noalias i8* (i8*, ...) @g_build_filename(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* null)
  store i8* %call4, i8** %dir, align 8
  %4 = load i8*, i8** %libdir, align 8
  call void @g_free(i8* %4)
  %5 = load i8*, i8** %dir, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.2
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_reloc_find_lib_dir(i8* %default_lib_dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %default_lib_dir.addr = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %dir = alloca i8*, align 8
  store i8* %default_lib_dir, i8** %default_lib_dir.addr, align 8
  %call = call i8* @_gimp_reloc_find_prefix(i8* null)
  store i8* %call, i8** %prefix, align 8
  %0 = load i8*, i8** %prefix, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %default_lib_dir.addr, align 8
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %default_lib_dir.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %2)
  store i8* %call3, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %prefix, align 8
  %call4 = call noalias i8* (i8*, ...) @g_build_filename(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* null)
  store i8* %call4, i8** %dir, align 8
  %4 = load i8*, i8** %prefix, align 8
  call void @g_free(i8* %4)
  %5 = load i8*, i8** %dir, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.2
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_reloc_find_locale_dir(i8* %default_locale_dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %default_locale_dir.addr = alloca i8*, align 8
  %data_dir = alloca i8*, align 8
  %dir = alloca i8*, align 8
  store i8* %default_locale_dir, i8** %default_locale_dir.addr, align 8
  %call = call i8* @_gimp_reloc_find_data_dir(i8* null)
  store i8* %call, i8** %data_dir, align 8
  %0 = load i8*, i8** %data_dir, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %default_locale_dir.addr, align 8
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %default_locale_dir.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %2)
  store i8* %call3, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %data_dir, align 8
  %call4 = call noalias i8* (i8*, ...) @g_build_filename(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0), i8* null)
  store i8* %call4, i8** %dir, align 8
  %4 = load i8*, i8** %data_dir, align 8
  call void @g_free(i8* %4)
  %5 = load i8*, i8** %dir, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.2
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_reloc_find_libexec_dir(i8* %default_libexec_dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %default_libexec_dir.addr = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %dir = alloca i8*, align 8
  store i8* %default_libexec_dir, i8** %default_libexec_dir.addr, align 8
  %call = call i8* @_gimp_reloc_find_prefix(i8* null)
  store i8* %call, i8** %prefix, align 8
  %0 = load i8*, i8** %prefix, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %default_libexec_dir.addr, align 8
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %default_libexec_dir.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %2)
  store i8* %call3, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %prefix, align 8
  %call4 = call noalias i8* (i8*, ...) @g_build_filename(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i8* null)
  store i8* %call4, i8** %dir, align 8
  %4 = load i8*, i8** %prefix, align 8
  call void @g_free(i8* %4)
  %5 = load i8*, i8** %dir, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.2
  %6 = load i8*, i8** %retval
  ret i8* %6
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_reloc_find_etc_dir(i8* %default_etc_dir) #0 {
entry:
  %retval = alloca i8*, align 8
  %default_etc_dir.addr = alloca i8*, align 8
  %prefix = alloca i8*, align 8
  %dir = alloca i8*, align 8
  store i8* %default_etc_dir, i8** %default_etc_dir.addr, align 8
  %call = call i8* @_gimp_reloc_find_prefix(i8* null)
  store i8* %call, i8** %prefix, align 8
  %0 = load i8*, i8** %prefix, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %default_etc_dir.addr, align 8
  %cmp1 = icmp ne i8* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load i8*, i8** %default_etc_dir.addr, align 8
  %call3 = call noalias i8* @g_strdup(i8* %2)
  store i8* %call3, i8** %retval
  br label %return

if.else:                                          ; preds = %if.then
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i8*, i8** %prefix, align 8
  %call4 = call noalias i8* (i8*, ...) @g_build_filename(i8* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* null)
  store i8* %call4, i8** %dir, align 8
  %4 = load i8*, i8** %prefix, align 8
  call void @g_free(i8* %4)
  %5 = load i8*, i8** %dir, align 8
  store i8* %5, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.else, %if.then.2
  %6 = load i8*, i8** %retval
  ret i8* %6
}

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_quark_from_static_string(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
