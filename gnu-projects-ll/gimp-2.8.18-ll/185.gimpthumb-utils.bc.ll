; ModuleID = './libgimpthumb/gimpthumb-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GEnumClass = type { %struct._GTypeClass, i32, i32, i32, %struct._GEnumValue* }
%struct._GTypeClass = type { i64 }
%struct._GEnumValue = type { i32, i8*, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GError = type { i32, i32, i8* }
%struct._GChecksum = type opaque
%struct._GFile = type opaque
%struct._GFileInfo = type opaque
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GData = type opaque
%struct._GCancellablePrivate = type opaque

@.str = private unnamed_addr constant [13 x i8] c"LibGimpThumb\00", align 1
@__func__.gimp_thumb_init = private unnamed_addr constant [16 x i8] c"gimp_thumb_init\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"creator != NULL\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"thumb_basedir == NULL || g_path_is_absolute (thumb_basedir)\00", align 1
@gimp_thumb_initialized = internal global i32 0, align 4
@thumb_dir = internal global i8* null, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c".thumbnails\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.5 = private unnamed_addr constant [115 x i8] c"Cannot determine a valid home directory.\0AThumbnails will be stored in the folder for temporary files (%s) instead.\00", align 1
@thumb_num_sizes = internal global i32 0, align 4
@thumb_sizes = internal global i32* null, align 8
@thumb_sizenames = internal global i8** null, align 8
@thumb_subdirs = internal global i8** null, align 8
@thumb_fail_subdir = internal global i8* null, align 8
@__func__.gimp_thumb_get_thumb_dir = private unnamed_addr constant [25 x i8] c"gimp_thumb_get_thumb_dir\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"gimp_thumb_initialized\00", align 1
@__func__.gimp_thumb_get_thumb_dir_local = private unnamed_addr constant [31 x i8] c"gimp_thumb_get_thumb_dir_local\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"dirname != NULL\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"size > GIMP_THUMB_SIZE_FAIL\00", align 1
@__func__.gimp_thumb_ensure_thumb_dir = private unnamed_addr constant [28 x i8] c"gimp_thumb_ensure_thumb_dir\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"Failed to create thumbnail folder '%s'.\00", align 1
@__func__.gimp_thumb_ensure_thumb_dir_local = private unnamed_addr constant [34 x i8] c"gimp_thumb_ensure_thumb_dir_local\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"g_path_is_absolute (dirname)\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c".thumblocal\00", align 1
@__func__.gimp_thumb_name_from_uri = private unnamed_addr constant [25 x i8] c"gimp_thumb_name_from_uri\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"uri != NULL\00", align 1
@__func__.gimp_thumb_name_from_uri_local = private unnamed_addr constant [31 x i8] c"gimp_thumb_name_from_uri_local\00", align 1
@__func__.gimp_thumb_find_thumb = private unnamed_addr constant [22 x i8] c"gimp_thumb_find_thumb\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"size != NULL\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"*size > GIMP_THUMB_SIZE_FAIL\00", align 1
@__func__.gimp_thumb_file_test = private unnamed_addr constant [21 x i8] c"gimp_thumb_file_test\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"standard::type,standard::size,time::modified\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"time::modified\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"standard::type\00", align 1
@__func__.gimp_thumbs_delete_for_uri = private unnamed_addr constant [27 x i8] c"gimp_thumbs_delete_for_uri\00", align 1
@__func__.gimp_thumbs_delete_for_uri_local = private unnamed_addr constant [33 x i8] c"gimp_thumbs_delete_for_uri_local\00", align 1
@__func__._gimp_thumbs_delete_others = private unnamed_addr constant [27 x i8] c"_gimp_thumbs_delete_others\00", align 1
@__func__._gimp_thumb_filename_from_uri = private unnamed_addr constant [30 x i8] c"_gimp_thumb_filename_from_uri\00", align 1
@gimp_thumb_png_name.name = internal global [40 x i8] zeroinitializer, align 16
@.str.20 = private unnamed_addr constant [5 x i8] c".png\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_thumb_init(i8* %creator, i8* %thumb_basedir) #0 {
entry:
  %retval = alloca i32, align 4
  %creator.addr = alloca i8*, align 8
  %thumb_basedir.addr = alloca i8*, align 8
  %enum_class = alloca %struct._GEnumClass*, align 8
  %enum_value = alloca %struct._GEnumValue*, align 8
  %i = alloca i32, align 4
  %home_dir = alloca i8*, align 8
  %name = alloca i8*, align 8
  store i8* %creator, i8** %creator.addr, align 8
  store i8* %thumb_basedir, i8** %thumb_basedir.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %creator.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_thumb_init, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %thumb_basedir.addr, align 8
  %cmp2 = icmp eq i8* %1, null
  br i1 %cmp2, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load i8*, i8** %thumb_basedir.addr, align 8
  %call = call i32 @g_path_is_absolute(i8* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__func__.gimp_thumb_init, i32 0, i32 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %3 = load i32, i32* @gimp_thumb_initialized, align 4
  %tobool7 = icmp ne i32 %3, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end.6
  call void @gimp_thumb_exit()
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.end.6
  %4 = load i8*, i8** %thumb_basedir.addr, align 8
  %tobool10 = icmp ne i8* %4, null
  br i1 %tobool10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.end.9
  %5 = load i8*, i8** %thumb_basedir.addr, align 8
  %call12 = call noalias i8* @g_strdup(i8* %5)
  store i8* %call12, i8** @thumb_dir, align 8
  br label %if.end.29

if.else.13:                                       ; preds = %if.end.9
  %call14 = call i8* @g_get_home_dir()
  store i8* %call14, i8** %home_dir, align 8
  %6 = load i8*, i8** %home_dir, align 8
  %tobool15 = icmp ne i8* %6, null
  br i1 %tobool15, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %if.else.13
  %7 = load i8*, i8** %home_dir, align 8
  %call16 = call i32 @g_file_test(i8* %7, i32 4)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true
  %8 = load i8*, i8** %home_dir, align 8
  %call19 = call noalias i8* (i8*, ...) @g_build_filename(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* null)
  store i8* %call19, i8** @thumb_dir, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %land.lhs.true, %if.else.13
  %9 = load i8*, i8** @thumb_dir, align 8
  %tobool21 = icmp ne i8* %9, null
  br i1 %tobool21, label %if.end.28, label %if.then.22

if.then.22:                                       ; preds = %if.end.20
  %call23 = call i8* @g_get_tmp_dir()
  %call24 = call noalias i8* @g_filename_display_name(i8* %call23)
  store i8* %call24, i8** %name, align 8
  %call25 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.5, i32 0, i32 0)) #5
  %10 = load i8*, i8** %name, align 8
  call void (i8*, ...) @g_message(i8* %call25, i8* %10)
  %11 = load i8*, i8** %name, align 8
  call void @g_free(i8* %11)
  %call26 = call i8* @g_get_tmp_dir()
  %call27 = call noalias i8* (i8*, ...) @g_build_filename(i8* %call26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i8* null)
  store i8* %call27, i8** @thumb_dir, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.22, %if.end.20
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.then.11
  %call30 = call i64 @gimp_thumb_size_get_type() #6
  %call31 = call i8* @g_type_class_ref(i64 %call30)
  %12 = bitcast i8* %call31 to %struct._GEnumClass*
  store %struct._GEnumClass* %12, %struct._GEnumClass** %enum_class, align 8
  %13 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %n_values = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %13, i32 0, i32 3
  %14 = load i32, i32* %n_values, align 4
  store i32 %14, i32* @thumb_num_sizes, align 4
  %15 = load i32, i32* @thumb_num_sizes, align 4
  %conv = sext i32 %15 to i64
  %call32 = call noalias i8* @g_malloc_n(i64 %conv, i64 4)
  %16 = bitcast i8* %call32 to i32*
  store i32* %16, i32** @thumb_sizes, align 8
  %17 = load i32, i32* @thumb_num_sizes, align 4
  %conv33 = sext i32 %17 to i64
  %call34 = call noalias i8* @g_malloc_n(i64 %conv33, i64 8)
  %18 = bitcast i8* %call34 to i8**
  store i8** %18, i8*** @thumb_sizenames, align 8
  %19 = load i32, i32* @thumb_num_sizes, align 4
  %conv35 = sext i32 %19 to i64
  %call36 = call noalias i8* @g_malloc_n(i64 %conv35, i64 8)
  %20 = bitcast i8* %call36 to i8**
  store i8** %20, i8*** @thumb_subdirs, align 8
  store i32 0, i32* %i, align 4
  %21 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %values = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %21, i32 0, i32 4
  %22 = load %struct._GEnumValue*, %struct._GEnumValue** %values, align 8
  store %struct._GEnumValue* %22, %struct._GEnumValue** %enum_value, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.29
  %23 = load i32, i32* %i, align 4
  %24 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %n_values37 = getelementptr inbounds %struct._GEnumClass, %struct._GEnumClass* %24, i32 0, i32 3
  %25 = load i32, i32* %n_values37, align 4
  %cmp38 = icmp ult i32 %23, %25
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %26, i32 0, i32 0
  %27 = load i32, i32* %value, align 4
  %28 = load i32, i32* %i, align 4
  %idxprom = sext i32 %28 to i64
  %29 = load i32*, i32** @thumb_sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %29, i64 %idxprom
  store i32 %27, i32* %arrayidx, align 4
  %30 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_nick = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %30, i32 0, i32 2
  %31 = load i8*, i8** %value_nick, align 8
  %32 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %32 to i64
  %33 = load i8**, i8*** @thumb_sizenames, align 8
  %arrayidx41 = getelementptr inbounds i8*, i8** %33, i64 %idxprom40
  store i8* %31, i8** %arrayidx41, align 8
  %34 = load i8*, i8** @thumb_dir, align 8
  %35 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %value_nick42 = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %35, i32 0, i32 2
  %36 = load i8*, i8** %value_nick42, align 8
  %call43 = call noalias i8* (i8*, ...) @g_build_filename(i8* %34, i8* %36, i8* null)
  %37 = load i32, i32* %i, align 4
  %idxprom44 = sext i32 %37 to i64
  %38 = load i8**, i8*** @thumb_subdirs, align 8
  %arrayidx45 = getelementptr inbounds i8*, i8** %38, i64 %idxprom44
  store i8* %call43, i8** %arrayidx45, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  %40 = load %struct._GEnumValue*, %struct._GEnumValue** %enum_value, align 8
  %incdec.ptr = getelementptr inbounds %struct._GEnumValue, %struct._GEnumValue* %40, i32 1
  store %struct._GEnumValue* %incdec.ptr, %struct._GEnumValue** %enum_value, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load i8**, i8*** @thumb_subdirs, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %41, i64 0
  %42 = load i8*, i8** %arrayidx46, align 8
  store i8* %42, i8** @thumb_fail_subdir, align 8
  %43 = load i8*, i8** @thumb_fail_subdir, align 8
  %44 = load i8*, i8** %creator.addr, align 8
  %call47 = call noalias i8* (i8*, ...) @g_build_filename(i8* %43, i8* %44, i8* null)
  %45 = load i8**, i8*** @thumb_subdirs, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %45, i64 0
  store i8* %call47, i8** %arrayidx48, align 8
  %46 = load %struct._GEnumClass*, %struct._GEnumClass** %enum_class, align 8
  %47 = bitcast %struct._GEnumClass* %46 to i8*
  call void @g_type_class_unref(i8* %47)
  store i32 1, i32* @gimp_thumb_initialized, align 4
  %48 = load i32, i32* @gimp_thumb_initialized, align 4
  store i32 %48, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  %49 = load i32, i32* %retval
  ret i32 %49
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare i32 @g_path_is_absolute(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @gimp_thumb_exit() #0 {
entry:
  %i = alloca i32, align 4
  %0 = load i8*, i8** @thumb_dir, align 8
  call void @g_free(i8* %0)
  %1 = load i32*, i32** @thumb_sizes, align 8
  %2 = bitcast i32* %1 to i8*
  call void @g_free(i8* %2)
  %3 = load i8**, i8*** @thumb_sizenames, align 8
  %4 = bitcast i8** %3 to i8*
  call void @g_free(i8* %4)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* @thumb_num_sizes, align 4
  %cmp = icmp slt i32 %5, %6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i8**, i8*** @thumb_subdirs, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 %idxprom
  %9 = load i8*, i8** %arrayidx, align 8
  call void @g_free(i8* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i8**, i8*** @thumb_subdirs, align 8
  %12 = bitcast i8** %11 to i8*
  call void @g_free(i8* %12)
  %13 = load i8*, i8** @thumb_fail_subdir, align 8
  call void @g_free(i8* %13)
  store i32 0, i32* @thumb_num_sizes, align 4
  store i32* null, i32** @thumb_sizes, align 8
  store i8** null, i8*** @thumb_sizenames, align 8
  store i8* null, i8** @thumb_dir, align 8
  store i8** null, i8*** @thumb_subdirs, align 8
  store i8* null, i8** @thumb_fail_subdir, align 8
  store i32 0, i32* @gimp_thumb_initialized, align 4
  ret void
}

declare noalias i8* @g_strdup(i8*) #1

declare i8* @g_get_home_dir() #1

declare i32 @g_file_test(i8*, i32) #1

declare noalias i8* @g_build_filename(i8*, ...) #1

declare noalias i8* @g_filename_display_name(i8*) #1

declare i8* @g_get_tmp_dir() #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #2

declare void @g_free(i8*) #1

declare i8* @g_type_class_ref(i64) #1

; Function Attrs: nounwind readnone
declare i64 @gimp_thumb_size_get_type() #3

declare noalias i8* @g_malloc_n(i64, i64) #1

declare void @g_type_class_unref(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @gimp_thumb_get_thumb_dir(i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_thumb_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_thumb_get_thumb_dir, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* %size.addr, align 4
  %call = call i32 @gimp_thumb_size(i32 %1)
  store i32 %call, i32* %size.addr, align 4
  %2 = load i32, i32* %size.addr, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i8**, i8*** @thumb_subdirs, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 %idxprom
  %4 = load i8*, i8** %arrayidx, align 8
  store i8* %4, i8** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_thumb_size(i32 %size) #0 {
entry:
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %size, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  %0 = load i32, i32* %size.addr, align 4
  %cmp = icmp ugt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* @thumb_num_sizes, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load i32*, i32** @thumb_sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %6 = load i32, i32* %size.addr, align 4
  %cmp2 = icmp ult i32 %5, %6
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp2, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @thumb_num_sizes, align 4
  %cmp3 = icmp eq i32 %9, %10
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %dec = add nsw i32 %11, -1
  store i32 %dec, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.4, %for.end
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %entry
  %12 = load i32, i32* %i, align 4
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_thumb_get_thumb_dir_local(i8* %dirname, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %dirname.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %dirname, i8** %dirname.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_thumb_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_thumb_get_thumb_dir_local, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %dirname.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_thumb_get_thumb_dir_local, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load i32, i32* %size.addr, align 4
  %cmp7 = icmp ugt i32 %2, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.10

if.else.9:                                        ; preds = %do.body.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_thumb_get_thumb_dir_local, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %3 = load i32, i32* %size.addr, align 4
  %call = call i32 @gimp_thumb_size(i32 %3)
  store i32 %call, i32* %size.addr, align 4
  %4 = load i8*, i8** %dirname.addr, align 8
  %5 = load i32, i32* %size.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load i8**, i8*** @thumb_sizenames, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call12 = call noalias i8* (i8*, ...) @g_build_filename(i8* %4, i8* %7, i8* null)
  store i8* %call12, i8** %retval
  br label %return

return:                                           ; preds = %do.end.11, %if.else.9, %if.else.3, %if.else
  %8 = load i8*, i8** %retval
  ret i8* %8
}

; Function Attrs: nounwind uwtable
define i32 @gimp_thumb_ensure_thumb_dir(i32 %size, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_thumb_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_thumb_ensure_thumb_dir, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp = icmp eq %struct._GError** %1, null
  br i1 %cmp, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %3 = load %struct._GError*, %struct._GError** %2, align 8
  %cmp2 = icmp eq %struct._GError* %3, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_thumb_ensure_thumb_dir, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %4 = load i32, i32* %size.addr, align 4
  %call = call i32 @gimp_thumb_size(i32 %4)
  store i32 %call, i32* %size.addr, align 4
  %5 = load i32, i32* %size.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load i8**, i8*** @thumb_subdirs, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %call7 = call i32 @g_file_test(i8* %7, i32 4)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.end.6
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %do.end.6
  %8 = load i8*, i8** @thumb_dir, align 8
  %call11 = call i32 @g_file_test(i8* %8, i32 4)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.then.16, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %if.end.10
  %9 = load i8*, i8** @thumb_dir, align 8
  %call14 = call i32 @g_mkdir_with_parents(i8* %9, i32 448)
  %cmp15 = icmp eq i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.24

if.then.16:                                       ; preds = %lor.lhs.false.13, %if.end.10
  %10 = load i32, i32* %size.addr, align 4
  %cmp17 = icmp eq i32 %10, 0
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.16
  %11 = load i8*, i8** @thumb_fail_subdir, align 8
  %call19 = call i32 @g_mkdir_with_parents(i8* %11, i32 448)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.16
  %12 = load i32, i32* %size.addr, align 4
  %idxprom21 = zext i32 %12 to i64
  %13 = load i8**, i8*** @thumb_subdirs, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %13, i64 %idxprom21
  %14 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i32 @g_mkdir_with_parents(i8* %14, i32 448)
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.20, %lor.lhs.false.13
  %15 = load i32, i32* %size.addr, align 4
  %idxprom25 = zext i32 %15 to i64
  %16 = load i8**, i8*** @thumb_subdirs, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %16, i64 %idxprom25
  %17 = load i8*, i8** %arrayidx26, align 8
  %call27 = call i32 @g_file_test(i8* %17, i32 4)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.24
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %if.end.24
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call31 = call i32 @gimp_thumb_error_quark() #6
  %call32 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0)) #5
  %19 = load i32, i32* %size.addr, align 4
  %idxprom33 = zext i32 %19 to i64
  %20 = load i8**, i8*** @thumb_subdirs, align 8
  %arrayidx34 = getelementptr inbounds i8*, i8** %20, i64 %idxprom33
  %21 = load i8*, i8** %arrayidx34, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %18, i32 %call31, i32 2, i8* %call32, i8* %21)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.29, %if.then.9, %if.else.4, %if.else
  %22 = load i32, i32* %retval
  ret i32 %22
}

declare i32 @g_mkdir_with_parents(i8*, i32) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_thumb_error_quark() #3

; Function Attrs: nounwind uwtable
define i32 @gimp_thumb_ensure_thumb_dir_local(i8* %dirname, i32 %size, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %dirname.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %error.addr = alloca %struct._GError**, align 8
  %basedir = alloca i8*, align 8
  %subdir = alloca i8*, align 8
  store i8* %dirname, i8** %dirname.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_thumb_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_thumb_ensure_thumb_dir_local, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %dirname.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_thumb_ensure_thumb_dir_local, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load i8*, i8** %dirname.addr, align 8
  %call = call i32 @g_path_is_absolute(i8* %2)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.10

if.else.9:                                        ; preds = %do.body.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_thumb_ensure_thumb_dir_local, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.11
  %3 = load i32, i32* %size.addr, align 4
  %cmp13 = icmp ugt i32 %3, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_thumb_ensure_thumb_dir_local, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %do.body.18

do.body.18:                                       ; preds = %do.end.17
  %4 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp19 = icmp eq %struct._GError** %4, null
  br i1 %cmp19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.18
  %5 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %6 = load %struct._GError*, %struct._GError** %5, align 8
  %cmp20 = icmp eq %struct._GError* %6, null
  br i1 %cmp20, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %lor.lhs.false, %do.body.18
  br label %if.end.23

if.else.22:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__func__.gimp_thumb_ensure_thumb_dir_local, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.then.21
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %7 = load i32, i32* %size.addr, align 4
  %call25 = call i32 @gimp_thumb_size(i32 %7)
  store i32 %call25, i32* %size.addr, align 4
  %8 = load i8*, i8** %dirname.addr, align 8
  %9 = load i32, i32* %size.addr, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load i8**, i8*** @thumb_sizenames, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx, align 8
  %call26 = call noalias i8* (i8*, ...) @g_build_filename(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* %11, i8* null)
  store i8* %call26, i8** %subdir, align 8
  %12 = load i8*, i8** %subdir, align 8
  %call27 = call i32 @g_file_test(i8* %12, i32 4)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.end.24
  %13 = load i8*, i8** %subdir, align 8
  call void @g_free(i8* %13)
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %do.end.24
  %14 = load i8*, i8** %dirname.addr, align 8
  %call31 = call noalias i8* (i8*, ...) @g_build_filename(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* null)
  store i8* %call31, i8** %basedir, align 8
  %15 = load i8*, i8** %basedir, align 8
  %call32 = call i32 @g_file_test(i8* %15, i32 4)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.37, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.end.30
  %16 = load i8*, i8** @thumb_dir, align 8
  %call35 = call i32 @mkdir(i8* %16, i32 448) #5
  %cmp36 = icmp eq i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %lor.lhs.false.34, %if.end.30
  %17 = load i8*, i8** %subdir, align 8
  %call38 = call i32 @mkdir(i8* %17, i32 448) #5
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %lor.lhs.false.34
  %18 = load i8*, i8** %basedir, align 8
  call void @g_free(i8* %18)
  %19 = load i8*, i8** %subdir, align 8
  %call40 = call i32 @g_file_test(i8* %19, i32 4)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.39
  %20 = load i8*, i8** %subdir, align 8
  call void @g_free(i8* %20)
  store i32 1, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.39
  %21 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call44 = call i32 @gimp_thumb_error_quark() #6
  %call45 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i32 0, i32 0)) #5
  %22 = load i8*, i8** %subdir, align 8
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %21, i32 %call44, i32 2, i8* %call45, i8* %22)
  %23 = load i8*, i8** %subdir, align 8
  call void @g_free(i8* %23)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.43, %if.then.42, %if.then.29, %if.else.22, %if.else.15, %if.else.9, %if.else.3, %if.else
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind
declare i32 @mkdir(i8*, i32) #2

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_thumb_name_from_uri(i8* %uri, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_thumb_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_thumb_name_from_uri, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_thumb_name_from_uri, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %2 = load i8*, i8** %uri.addr, align 8
  %3 = load i8*, i8** @thumb_dir, align 8
  %call = call i8* @strstr(i8* %2, i8* %3) #7
  %tobool6 = icmp ne i8* %call, null
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end.5
  store i8* null, i8** %retval
  br label %return

if.end.8:                                         ; preds = %do.end.5
  %4 = load i32, i32* %size.addr, align 4
  %call9 = call i32 @gimp_thumb_size(i32 %4)
  store i32 %call9, i32* %size.addr, align 4
  %5 = load i32, i32* %size.addr, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load i8**, i8*** @thumb_subdirs, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = load i8*, i8** %uri.addr, align 8
  %call10 = call i8* @gimp_thumb_png_name(i8* %8)
  %call11 = call noalias i8* (i8*, ...) @g_build_filename(i8* %7, i8* %call10, i8* null)
  store i8* %call11, i8** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.else.3, %if.else
  %9 = load i8*, i8** %retval
  ret i8* %9
}

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #4

; Function Attrs: nounwind uwtable
define internal i8* @gimp_thumb_png_name(i8* %uri) #0 {
entry:
  %uri.addr = alloca i8*, align 8
  %checksum = alloca %struct._GChecksum*, align 8
  %digest = alloca [16 x i8], align 16
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %n = alloca i8, align 1
  store i8* %uri, i8** %uri.addr, align 8
  store i64 16, i64* %len, align 8
  %call = call %struct._GChecksum* @g_checksum_new(i32 0)
  store %struct._GChecksum* %call, %struct._GChecksum** %checksum, align 8
  %0 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %1 = load i8*, i8** %uri.addr, align 8
  call void @g_checksum_update(%struct._GChecksum* %0, i8* %1, i64 -1)
  %2 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i32 0
  call void @g_checksum_get_digest(%struct._GChecksum* %2, i8* %arraydecay, i64* %len)
  %3 = load %struct._GChecksum*, %struct._GChecksum** %checksum, align 8
  call void @g_checksum_free(%struct._GChecksum* %3)
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i64, i64* %i, align 8
  %5 = load i64, i64* %len, align 8
  %cmp = icmp ult i64 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, i64* %i, align 8
  %arrayidx = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i64 %6
  %7 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %shr = ashr i32 %conv, 4
  %and = and i32 %shr, 15
  %conv1 = trunc i32 %and to i8
  store i8 %conv1, i8* %n, align 1
  %8 = load i8, i8* %n, align 1
  %conv2 = zext i8 %8 to i32
  %cmp3 = icmp sgt i32 %conv2, 9
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %9 = load i8, i8* %n, align 1
  %conv5 = zext i8 %9 to i32
  %add = add nsw i32 97, %conv5
  %sub = sub nsw i32 %add, 10
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %10 = load i8, i8* %n, align 1
  %conv6 = zext i8 %10 to i32
  %add7 = add nsw i32 48, %conv6
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %sub, %cond.true ], [ %add7, %cond.false ]
  %conv8 = trunc i32 %cond to i8
  %11 = load i64, i64* %i, align 8
  %mul = mul i64 %11, 2
  %arrayidx9 = getelementptr inbounds [40 x i8], [40 x i8]* @gimp_thumb_png_name.name, i32 0, i64 %mul
  store i8 %conv8, i8* %arrayidx9, align 1
  %12 = load i64, i64* %i, align 8
  %arrayidx10 = getelementptr inbounds [16 x i8], [16 x i8]* %digest, i32 0, i64 %12
  %13 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %13 to i32
  %and12 = and i32 %conv11, 15
  %conv13 = trunc i32 %and12 to i8
  store i8 %conv13, i8* %n, align 1
  %14 = load i8, i8* %n, align 1
  %conv14 = zext i8 %14 to i32
  %cmp15 = icmp sgt i32 %conv14, 9
  br i1 %cmp15, label %cond.true.17, label %cond.false.21

cond.true.17:                                     ; preds = %cond.end
  %15 = load i8, i8* %n, align 1
  %conv18 = zext i8 %15 to i32
  %add19 = add nsw i32 97, %conv18
  %sub20 = sub nsw i32 %add19, 10
  br label %cond.end.24

cond.false.21:                                    ; preds = %cond.end
  %16 = load i8, i8* %n, align 1
  %conv22 = zext i8 %16 to i32
  %add23 = add nsw i32 48, %conv22
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.21, %cond.true.17
  %cond25 = phi i32 [ %sub20, %cond.true.17 ], [ %add23, %cond.false.21 ]
  %conv26 = trunc i32 %cond25 to i8
  %17 = load i64, i64* %i, align 8
  %mul27 = mul i64 %17, 2
  %add28 = add i64 %mul27, 1
  %arrayidx29 = getelementptr inbounds [40 x i8], [40 x i8]* @gimp_thumb_png_name.name, i32 0, i64 %add28
  store i8 %conv26, i8* %arrayidx29, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.24
  %18 = load i64, i64* %i, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call30 = call i8* @strncpy(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @gimp_thumb_png_name.name, i32 0, i64 32), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i64 5) #5
  ret i8* getelementptr inbounds ([40 x i8], [40 x i8]* @gimp_thumb_png_name.name, i32 0, i32 0)
}

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_thumb_name_from_uri_local(i8* %uri, i32 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %filename = alloca i8*, align 8
  %result = alloca i8*, align 8
  %baseuri = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  store i8* null, i8** %result, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_thumb_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_thumb_name_from_uri_local, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_thumb_name_from_uri_local, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load i32, i32* %size.addr, align 4
  %cmp7 = icmp ugt i32 %2, 0
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.10

if.else.9:                                        ; preds = %do.body.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_thumb_name_from_uri_local, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %3 = load i8*, i8** %uri.addr, align 8
  %4 = load i8*, i8** @thumb_dir, align 8
  %call = call i8* @strstr(i8* %3, i8* %4) #7
  %tobool12 = icmp ne i8* %call, null
  br i1 %tobool12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end.11
  store i8* null, i8** %retval
  br label %return

if.end.14:                                        ; preds = %do.end.11
  %5 = load i8*, i8** %uri.addr, align 8
  %call15 = call i8* @_gimp_thumb_filename_from_uri(i8* %5)
  store i8* %call15, i8** %filename, align 8
  %6 = load i8*, i8** %filename, align 8
  %tobool16 = icmp ne i8* %6, null
  br i1 %tobool16, label %if.then.17, label %if.end.32

if.then.17:                                       ; preds = %if.end.14
  %7 = load i8*, i8** %uri.addr, align 8
  %call18 = call i8* @strrchr(i8* %7, i32 47) #7
  store i8* %call18, i8** %baseuri, align 8
  %8 = load i8*, i8** %baseuri, align 8
  %tobool19 = icmp ne i8* %8, null
  br i1 %tobool19, label %land.lhs.true, label %if.end.31

land.lhs.true:                                    ; preds = %if.then.17
  %9 = load i8*, i8** %baseuri, align 8
  %arrayidx = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %10 to i32
  %tobool20 = icmp ne i32 %conv, 0
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.31

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %11 = load i8*, i8** %baseuri, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %11, i64 1
  %12 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %12 to i32
  %tobool24 = icmp ne i32 %conv23, 0
  br i1 %tobool24, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %land.lhs.true.21
  %13 = load i8*, i8** %filename, align 8
  %call26 = call noalias i8* @g_path_get_dirname(i8* %13)
  store i8* %call26, i8** %dirname, align 8
  %14 = load i32, i32* %size.addr, align 4
  %call27 = call i32 @gimp_thumb_size(i32 %14)
  store i32 %call27, i32* %i, align 4
  %15 = load i8*, i8** %dirname, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load i8**, i8*** @thumb_sizenames, align 8
  %arrayidx28 = getelementptr inbounds i8*, i8** %17, i64 %idxprom
  %18 = load i8*, i8** %arrayidx28, align 8
  %19 = load i8*, i8** %uri.addr, align 8
  %call29 = call i8* @gimp_thumb_png_name(i8* %19)
  %call30 = call noalias i8* (i8*, ...) @g_build_filename(i8* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* %18, i8* %call29, i8* null)
  store i8* %call30, i8** %result, align 8
  %20 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %20)
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.25, %land.lhs.true.21, %land.lhs.true, %if.then.17
  %21 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %21)
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.end.14
  %22 = load i8*, i8** %result, align 8
  store i8* %22, i8** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.13, %if.else.9, %if.else.3, %if.else
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define hidden i8* @_gimp_thumb_filename_from_uri(i8* %uri) #0 {
entry:
  %retval = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %hostname = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__._gimp_thumb_filename_from_uri, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %uri.addr, align 8
  %call = call noalias i8* @g_filename_from_uri(i8* %1, i8** %hostname, %struct._GError** null)
  store i8* %call, i8** %filename, align 8
  %2 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store i8* null, i8** %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  %3 = load i8*, i8** %hostname, align 8
  %tobool3 = icmp ne i8* %3, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %4 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %4)
  store i8* null, i8** %filename, align 8
  %5 = load i8*, i8** %hostname, align 8
  call void @g_free(i8* %5)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end.2
  %6 = load i8*, i8** %filename, align 8
  store i8* %6, i8** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.1, %if.else
  %7 = load i8*, i8** %retval
  ret i8* %7
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

declare noalias i8* @g_path_get_dirname(i8*) #1

; Function Attrs: nounwind uwtable
define noalias i8* @gimp_thumb_find_thumb(i8* %uri, i32* %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %size.addr = alloca i32*, align 8
  %result = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %baseuri = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32* %size, i32** %size.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_thumb_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_thumb_find_thumb, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_thumb_find_thumb, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %2 = load i32*, i32** %size.addr, align 8
  %cmp7 = icmp ne i32* %2, null
  br i1 %cmp7, label %if.then.8, label %if.else.9

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.10

if.else.9:                                        ; preds = %do.body.6
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_thumb_find_thumb, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.10:                                        ; preds = %if.then.8
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  br label %do.body.12

do.body.12:                                       ; preds = %do.end.11
  %3 = load i32*, i32** %size.addr, align 8
  %4 = load i32, i32* %3, align 4
  %cmp13 = icmp ugt i32 %4, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body.12
  br label %if.end.16

if.else.15:                                       ; preds = %do.body.12
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.gimp_thumb_find_thumb, i32 0, i32 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0))
  store i8* null, i8** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.14
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %5 = load i8*, i8** %uri.addr, align 8
  %call = call i8* @gimp_thumb_png_name(i8* %5)
  %6 = load i32*, i32** %size.addr, align 8
  %call18 = call noalias i8* @gimp_thumb_png_lookup(i8* %call, i8* null, i32* %6)
  store i8* %call18, i8** %result, align 8
  %7 = load i8*, i8** %result, align 8
  %tobool19 = icmp ne i8* %7, null
  br i1 %tobool19, label %if.end.37, label %if.then.20

if.then.20:                                       ; preds = %do.end.17
  %8 = load i8*, i8** %uri.addr, align 8
  %call21 = call i8* @_gimp_thumb_filename_from_uri(i8* %8)
  store i8* %call21, i8** %filename, align 8
  %9 = load i8*, i8** %filename, align 8
  %tobool22 = icmp ne i8* %9, null
  br i1 %tobool22, label %if.then.23, label %if.end.36

if.then.23:                                       ; preds = %if.then.20
  %10 = load i8*, i8** %uri.addr, align 8
  %call24 = call i8* @strrchr(i8* %10, i32 47) #7
  store i8* %call24, i8** %baseuri, align 8
  %11 = load i8*, i8** %baseuri, align 8
  %tobool25 = icmp ne i8* %11, null
  br i1 %tobool25, label %land.lhs.true, label %if.end.35

land.lhs.true:                                    ; preds = %if.then.23
  %12 = load i8*, i8** %baseuri, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 0
  %13 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %13 to i32
  %tobool26 = icmp ne i32 %conv, 0
  br i1 %tobool26, label %land.lhs.true.27, label %if.end.35

land.lhs.true.27:                                 ; preds = %land.lhs.true
  %14 = load i8*, i8** %baseuri, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %14, i64 1
  %15 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %15 to i32
  %tobool30 = icmp ne i32 %conv29, 0
  br i1 %tobool30, label %if.then.31, label %if.end.35

if.then.31:                                       ; preds = %land.lhs.true.27
  %16 = load i8*, i8** %filename, align 8
  %call32 = call noalias i8* @g_path_get_dirname(i8* %16)
  store i8* %call32, i8** %dirname, align 8
  %17 = load i8*, i8** %baseuri, align 8
  %add.ptr = getelementptr inbounds i8, i8* %17, i64 1
  %call33 = call i8* @gimp_thumb_png_name(i8* %add.ptr)
  %18 = load i8*, i8** %dirname, align 8
  %19 = load i32*, i32** %size.addr, align 8
  %call34 = call noalias i8* @gimp_thumb_png_lookup(i8* %call33, i8* %18, i32* %19)
  store i8* %call34, i8** %result, align 8
  %20 = load i8*, i8** %dirname, align 8
  call void @g_free(i8* %20)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.31, %land.lhs.true.27, %land.lhs.true, %if.then.23
  %21 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %21)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %if.then.20
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %do.end.17
  %22 = load i8*, i8** %result, align 8
  store i8* %22, i8** %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.else.15, %if.else.9, %if.else.3, %if.else
  %23 = load i8*, i8** %retval
  ret i8* %23
}

; Function Attrs: nounwind uwtable
define internal noalias i8* @gimp_thumb_png_lookup(i8* %name, i8* %basedir, i32* %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %basedir.addr = alloca i8*, align 8
  %size.addr = alloca i32*, align 8
  %thumb_name = alloca i8*, align 8
  %subdirs = alloca i8**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %dir = alloca i8*, align 8
  %i4 = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i8* %basedir, i8** %basedir.addr, align 8
  store i32* %size, i32** %size.addr, align 8
  store i8* null, i8** %thumb_name, align 8
  store i8** null, i8*** %subdirs, align 8
  %0 = load i8*, i8** %basedir.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %basedir.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_build_filename(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* null)
  store i8* %call, i8** %dir, align 8
  %2 = load i8*, i8** %basedir.addr, align 8
  %call1 = call i32 @g_file_test(i8* %2, i32 4)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load i32, i32* @thumb_num_sizes, align 4
  %conv = sext i32 %3 to i64
  %call5 = call noalias i8* @g_malloc_n(i64 %conv, i64 8)
  %4 = bitcast i8* %call5 to i8**
  store i8** %4, i8*** %subdirs, align 8
  %5 = load i8**, i8*** %subdirs, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0
  store i8* null, i8** %arrayidx, align 8
  store i32 1, i32* %i4, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.3
  %6 = load i32, i32* %i4, align 4
  %7 = load i32, i32* @thumb_num_sizes, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %dir, align 8
  %9 = load i32, i32* %i4, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8**, i8*** @thumb_sizenames, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %10, i64 %idxprom
  %11 = load i8*, i8** %arrayidx7, align 8
  %call8 = call noalias i8* (i8*, ...) @g_build_filename(i8* %8, i8* %11, i8* null)
  %12 = load i32, i32* %i4, align 4
  %idxprom9 = sext i32 %12 to i64
  %13 = load i8**, i8*** %subdirs, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %13, i64 %idxprom9
  store i8* %call8, i8** %arrayidx10, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i4, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i4, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %15 = load i8*, i8** %dir, align 8
  call void @g_free(i8* %15)
  br label %if.end.11

if.else:                                          ; preds = %entry
  %16 = load i8**, i8*** @thumb_subdirs, align 8
  store i8** %16, i8*** %subdirs, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.end
  %17 = load i8**, i8*** %subdirs, align 8
  %tobool12 = icmp ne i8** %17, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.11
  store i8* null, i8** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %18 = load i32*, i32** %size.addr, align 8
  %19 = load i32, i32* %18, align 4
  %call15 = call i32 @gimp_thumb_size(i32 %19)
  store i32 %call15, i32* %n, align 4
  store i32 %call15, i32* %i, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.35, %if.end.14
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* @thumb_num_sizes, align 4
  %cmp17 = icmp slt i32 %20, %21
  br i1 %cmp17, label %for.body.19, label %for.end.37

for.body.19:                                      ; preds = %for.cond.16
  %22 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %22 to i64
  %23 = load i8**, i8*** %subdirs, align 8
  %arrayidx21 = getelementptr inbounds i8*, i8** %23, i64 %idxprom20
  %24 = load i8*, i8** %arrayidx21, align 8
  %tobool22 = icmp ne i8* %24, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %for.body.19
  br label %for.inc.35

if.end.24:                                        ; preds = %for.body.19
  %25 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load i8**, i8*** %subdirs, align 8
  %arrayidx26 = getelementptr inbounds i8*, i8** %26, i64 %idxprom25
  %27 = load i8*, i8** %arrayidx26, align 8
  %28 = load i8*, i8** %name.addr, align 8
  %call27 = call noalias i8* (i8*, ...) @g_build_filename(i8* %27, i8* %28, i8* null)
  store i8* %call27, i8** %thumb_name, align 8
  %29 = load i8*, i8** %thumb_name, align 8
  %call28 = call i32 @gimp_thumb_file_test(i8* %29, i64* null, i64* null, i32* null)
  %cmp29 = icmp eq i32 %call28, 1
  br i1 %cmp29, label %if.then.31, label %if.end.34

if.then.31:                                       ; preds = %if.end.24
  %30 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %30 to i64
  %31 = load i32*, i32** @thumb_sizes, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %31, i64 %idxprom32
  %32 = load i32, i32* %arrayidx33, align 4
  %33 = load i32*, i32** %size.addr, align 8
  store i32 %32, i32* %33, align 4
  br label %finish

if.end.34:                                        ; preds = %if.end.24
  %34 = load i8*, i8** %thumb_name, align 8
  call void @g_free(i8* %34)
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34, %if.then.23
  %35 = load i32, i32* %i, align 4
  %inc36 = add nsw i32 %35, 1
  store i32 %inc36, i32* %i, align 4
  br label %for.cond.16

for.end.37:                                       ; preds = %for.cond.16
  %36 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %36, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.38

for.cond.38:                                      ; preds = %for.inc.57, %for.end.37
  %37 = load i32, i32* %i, align 4
  %cmp39 = icmp sge i32 %37, 0
  br i1 %cmp39, label %for.body.41, label %for.end.58

for.body.41:                                      ; preds = %for.cond.38
  %38 = load i32, i32* %i, align 4
  %idxprom42 = sext i32 %38 to i64
  %39 = load i8**, i8*** %subdirs, align 8
  %arrayidx43 = getelementptr inbounds i8*, i8** %39, i64 %idxprom42
  %40 = load i8*, i8** %arrayidx43, align 8
  %tobool44 = icmp ne i8* %40, null
  br i1 %tobool44, label %if.end.46, label %if.then.45

if.then.45:                                       ; preds = %for.body.41
  br label %for.inc.57

if.end.46:                                        ; preds = %for.body.41
  %41 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %41 to i64
  %42 = load i8**, i8*** %subdirs, align 8
  %arrayidx48 = getelementptr inbounds i8*, i8** %42, i64 %idxprom47
  %43 = load i8*, i8** %arrayidx48, align 8
  %44 = load i8*, i8** %name.addr, align 8
  %call49 = call noalias i8* (i8*, ...) @g_build_filename(i8* %43, i8* %44, i8* null)
  store i8* %call49, i8** %thumb_name, align 8
  %45 = load i8*, i8** %thumb_name, align 8
  %call50 = call i32 @gimp_thumb_file_test(i8* %45, i64* null, i64* null, i32* null)
  %cmp51 = icmp eq i32 %call50, 1
  br i1 %cmp51, label %if.then.53, label %if.end.56

if.then.53:                                       ; preds = %if.end.46
  %46 = load i32, i32* %i, align 4
  %idxprom54 = sext i32 %46 to i64
  %47 = load i32*, i32** @thumb_sizes, align 8
  %arrayidx55 = getelementptr inbounds i32, i32* %47, i64 %idxprom54
  %48 = load i32, i32* %arrayidx55, align 4
  %49 = load i32*, i32** %size.addr, align 8
  store i32 %48, i32* %49, align 4
  br label %finish

if.end.56:                                        ; preds = %if.end.46
  %50 = load i8*, i8** %thumb_name, align 8
  call void @g_free(i8* %50)
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end.56, %if.then.45
  %51 = load i32, i32* %i, align 4
  %dec = add nsw i32 %51, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.38

for.end.58:                                       ; preds = %for.cond.38
  store i8* null, i8** %thumb_name, align 8
  br label %finish

finish:                                           ; preds = %for.end.58, %if.then.53, %if.then.31
  %52 = load i8*, i8** %basedir.addr, align 8
  %tobool59 = icmp ne i8* %52, null
  br i1 %tobool59, label %if.then.60, label %if.end.70

if.then.60:                                       ; preds = %finish
  store i32 0, i32* %i, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.67, %if.then.60
  %53 = load i32, i32* %i, align 4
  %54 = load i32, i32* @thumb_num_sizes, align 4
  %cmp62 = icmp slt i32 %53, %54
  br i1 %cmp62, label %for.body.64, label %for.end.69

for.body.64:                                      ; preds = %for.cond.61
  %55 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %55 to i64
  %56 = load i8**, i8*** %subdirs, align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %56, i64 %idxprom65
  %57 = load i8*, i8** %arrayidx66, align 8
  call void @g_free(i8* %57)
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.64
  %58 = load i32, i32* %i, align 4
  %inc68 = add nsw i32 %58, 1
  store i32 %inc68, i32* %i, align 4
  br label %for.cond.61

for.end.69:                                       ; preds = %for.cond.61
  %59 = load i8**, i8*** %subdirs, align 8
  %60 = bitcast i8** %59 to i8*
  call void @g_free(i8* %60)
  br label %if.end.70

if.end.70:                                        ; preds = %for.end.69, %finish
  %61 = load i8*, i8** %thumb_name, align 8
  store i8* %61, i8** %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.13
  %62 = load i8*, i8** %retval
  ret i8* %62
}

; Function Attrs: nounwind uwtable
define i32 @gimp_thumb_file_test(i8* %filename, i64* %mtime, i64* %size, i32* %err_no) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %mtime.addr = alloca i64*, align 8
  %size.addr = alloca i64*, align 8
  %err_no.addr = alloca i32*, align 8
  %type = alloca i32, align 4
  %file = alloca %struct._GFile*, align 8
  %info = alloca %struct._GFileInfo*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i64* %mtime, i64** %mtime.addr, align 8
  store i64* %size, i64** %size.addr, align 8
  store i32* %err_no, i32** %err_no.addr, align 8
  store i32 0, i32* %type, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__.gimp_thumb_file_test, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._GFile* @g_file_new_for_path(i8* %1)
  store %struct._GFile* %call, %struct._GFile** %file, align 8
  %2 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call1 = call %struct._GFileInfo* @g_file_query_info(%struct._GFile* %2, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i32 0, i32 0), i32 0, %struct._GCancellable* null, %struct._GError** null)
  store %struct._GFileInfo* %call1, %struct._GFileInfo** %info, align 8
  %3 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %tobool = icmp ne %struct._GFileInfo* %3, null
  br i1 %tobool, label %if.then.2, label %if.else.16

if.then.2:                                        ; preds = %do.end
  %4 = load i64*, i64** %mtime.addr, align 8
  %tobool3 = icmp ne i64* %4, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.2
  %5 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call5 = call i64 @g_file_info_get_attribute_uint64(%struct._GFileInfo* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0))
  %6 = load i64*, i64** %mtime.addr, align 8
  store i64 %call5, i64* %6, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.2
  %7 = load i64*, i64** %size.addr, align 8
  %tobool7 = icmp ne i64* %7, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end.6
  %8 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call9 = call i64 @g_file_info_get_size(%struct._GFileInfo* %8)
  %9 = load i64*, i64** %size.addr, align 8
  store i64 %call9, i64* %9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end.6
  %10 = load i32*, i32** %err_no.addr, align 8
  %tobool11 = icmp ne i32* %10, null
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %11 = load i32*, i32** %err_no.addr, align 8
  store i32 0, i32* %11, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end.10
  %12 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call14 = call i32 @g_file_info_get_attribute_uint32(%struct._GFileInfo* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0))
  switch i32 %call14, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.end.13
  store i32 1, i32* %type, align 4
  br label %sw.epilog

sw.bb.15:                                         ; preds = %if.end.13
  store i32 2, i32* %type, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.13
  store i32 3, i32* %type, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.15, %sw.bb
  %13 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %14 = bitcast %struct._GFileInfo* %13 to i8*
  call void @g_object_unref(i8* %14)
  br label %if.end.26

if.else.16:                                       ; preds = %do.end
  %15 = load i64*, i64** %mtime.addr, align 8
  %tobool17 = icmp ne i64* %15, null
  br i1 %tobool17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.else.16
  %16 = load i64*, i64** %mtime.addr, align 8
  store i64 0, i64* %16, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %if.else.16
  %17 = load i64*, i64** %size.addr, align 8
  %tobool20 = icmp ne i64* %17, null
  br i1 %tobool20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %if.end.19
  %18 = load i64*, i64** %size.addr, align 8
  store i64 0, i64* %18, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %if.end.19
  %19 = load i32*, i32** %err_no.addr, align 8
  %tobool23 = icmp ne i32* %19, null
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  %20 = load i32*, i32** %err_no.addr, align 8
  store i32 2, i32* %20, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %if.end.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %sw.epilog
  %21 = load %struct._GFile*, %struct._GFile** %file, align 8
  %22 = bitcast %struct._GFile* %21 to i8*
  call void @g_object_unref(i8* %22)
  %23 = load i32, i32* %type, align 4
  store i32 %23, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.else
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare %struct._GFile* @g_file_new_for_path(i8*) #1

declare %struct._GFileInfo* @g_file_query_info(%struct._GFile*, i8*, i32, %struct._GCancellable*, %struct._GError**) #1

declare i64 @g_file_info_get_attribute_uint64(%struct._GFileInfo*, i8*) #1

declare i64 @g_file_info_get_size(%struct._GFileInfo*) #1

declare i32 @g_file_info_get_attribute_uint32(%struct._GFileInfo*, i8*) #1

declare void @g_object_unref(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_thumbs_delete_for_uri(i8* %uri) #0 {
entry:
  %uri.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %filename = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_thumb_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_thumbs_delete_for_uri, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_thumbs_delete_for_uri, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  br label %for.end

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.5
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @thumb_num_sizes, align 4
  %cmp6 = icmp slt i32 %2, %3
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %uri.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** @thumb_sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %call = call noalias i8* @gimp_thumb_name_from_uri(i8* %4, i32 %7)
  store i8* %call, i8** %filename, align 8
  %8 = load i8*, i8** %filename, align 8
  %tobool7 = icmp ne i8* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.body
  %9 = load i8*, i8** %filename, align 8
  %call9 = call i32 @g_unlink(i8* %9)
  %10 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %10)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %if.else.3, %for.cond
  ret void
}

declare i32 @g_unlink(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_thumbs_delete_for_uri_local(i8* %uri) #0 {
entry:
  %uri.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %filename = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_thumb_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_thumbs_delete_for_uri_local, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_thumbs_delete_for_uri_local, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  br label %for.end

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.5
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* @thumb_num_sizes, align 4
  %cmp6 = icmp slt i32 %2, %3
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %uri.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32*, i32** @thumb_sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %6, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %call = call noalias i8* @gimp_thumb_name_from_uri_local(i8* %4, i32 %7)
  store i8* %call, i8** %filename, align 8
  %8 = load i8*, i8** %filename, align 8
  %tobool7 = icmp ne i8* %8, null
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %for.body
  %9 = load i8*, i8** %filename, align 8
  %call9 = call i32 @g_unlink(i8* %9)
  %10 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %10)
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %if.else.3, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_gimp_thumbs_delete_others(i8* %uri, i32 %size) #0 {
entry:
  %uri.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %filename = alloca i8*, align 8
  store i8* %uri, i8** %uri.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* @gimp_thumb_initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__._gimp_thumbs_delete_others, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %uri.addr, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %do.body.1
  br label %if.end.4

if.else.3:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__._gimp_thumbs_delete_others, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i32 0, i32 0))
  br label %for.end

if.end.4:                                         ; preds = %if.then.2
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  %2 = load i32, i32* %size.addr, align 4
  %call = call i32 @gimp_thumb_size(i32 %2)
  store i32 %call, i32* %size.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.5
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @thumb_num_sizes, align 4
  %cmp6 = icmp slt i32 %3, %4
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %6 = load i32, i32* %size.addr, align 4
  %cmp7 = icmp eq i32 %5, %6
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.inc

if.end.9:                                         ; preds = %for.body
  %7 = load i8*, i8** %uri.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32*, i32** @thumb_sizes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx, align 4
  %call10 = call noalias i8* @gimp_thumb_name_from_uri(i8* %7, i32 %10)
  store i8* %call10, i8** %filename, align 8
  %11 = load i8*, i8** %filename, align 8
  %tobool11 = icmp ne i8* %11, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %12 = load i8*, i8** %filename, align 8
  %call13 = call i32 @g_unlink(i8* %12)
  %13 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %13)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  br label %for.inc

for.inc:                                          ; preds = %if.end.14, %if.then.8
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %if.else.3, %for.cond
  ret void
}

declare noalias i8* @g_filename_from_uri(i8*, i8**, %struct._GError**) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare %struct._GChecksum* @g_checksum_new(i32) #1

declare void @g_checksum_update(%struct._GChecksum*, i8*, i64) #1

declare void @g_checksum_get_digest(%struct._GChecksum*, i8*, i64*) #1

declare void @g_checksum_free(%struct._GChecksum*) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
