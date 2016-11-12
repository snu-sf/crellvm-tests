; ModuleID = './libgimpbase/gimpdatafiles.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpDatafileData = type { i8*, i8*, i8*, i64, i64, i64 }
%struct._GList = type { i8*, %struct._GList*, %struct._GList* }
%struct._GDir = type opaque
%struct._GFile = type opaque
%struct._GFileInfo = type opaque
%struct._GError = type { i32, i32, i8* }
%struct._GCancellable = type { %struct._GObject, %struct._GCancellablePrivate* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque
%struct._GCancellablePrivate = type opaque

@.str = private unnamed_addr constant [12 x i8] c"LibGimpBase\00", align 1
@__func__.gimp_datafiles_check_extension = private unnamed_addr constant [31 x i8] c"gimp_datafiles_check_extension\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"extension != NULL\00", align 1
@__func__.gimp_datafiles_read_directories = private unnamed_addr constant [32 x i8] c"gimp_datafiles_read_directories\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"path_str != NULL\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"loader_func != NULL\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"standard::type,access::can-execute,time::*\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"time::access\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"time::modified\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"time::created\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"standard::type\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"access::can-execute\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_datafiles_check_extension(i8* %filename, i8* %extension) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %extension.addr = alloca i8*, align 8
  %name_len = alloca i32, align 4
  %ext_len = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %extension, i8** %extension.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_datafiles_check_extension, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %extension.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.gimp_datafiles_check_extension, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %2) #4
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %name_len, align 4
  %3 = load i8*, i8** %extension.addr, align 8
  %call7 = call i64 @strlen(i8* %3) #4
  %conv8 = trunc i64 %call7 to i32
  store i32 %conv8, i32* %ext_len, align 4
  %4 = load i32, i32* %name_len, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.then.13

land.lhs.true:                                    ; preds = %do.end.6
  %5 = load i32, i32* %ext_len, align 4
  %tobool9 = icmp ne i32 %5, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.then.13

land.lhs.true.10:                                 ; preds = %land.lhs.true
  %6 = load i32, i32* %name_len, align 4
  %7 = load i32, i32* %ext_len, align 4
  %cmp11 = icmp sgt i32 %6, %7
  br i1 %cmp11, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true.10, %land.lhs.true, %do.end.6
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.10
  %8 = load i32, i32* %name_len, align 4
  %9 = load i32, i32* %ext_len, align 4
  %sub = sub nsw i32 %8, %9
  %idxprom = sext i32 %sub to i64
  %10 = load i8*, i8** %filename.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8*, i8** %extension.addr, align 8
  %call15 = call i32 @g_ascii_strcasecmp(i8* %arrayidx, i8* %11)
  %cmp16 = icmp eq i32 %call15, 0
  %conv17 = zext i1 %cmp16 to i32
  store i32 %conv17, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.else.4, %if.else
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare i32 @g_ascii_strcasecmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_datafiles_read_directories(i8* %path_str, i32 %flags, void (%struct._GimpDatafileData*, i8*)* %loader_func, i8* %user_data) #0 {
entry:
  %path_str.addr = alloca i8*, align 8
  %flags.addr = alloca i32, align 4
  %loader_func.addr = alloca void (%struct._GimpDatafileData*, i8*)*, align 8
  %user_data.addr = alloca i8*, align 8
  %local_path = alloca i8*, align 8
  %path = alloca %struct._GList*, align 8
  %list = alloca %struct._GList*, align 8
  %dirname = alloca i8*, align 8
  %dir = alloca %struct._GDir*, align 8
  %dir_ent = alloca i8*, align 8
  %filename = alloca i8*, align 8
  %file = alloca %struct._GFile*, align 8
  %info = alloca %struct._GFileInfo*, align 8
  %file_data = alloca %struct._GimpDatafileData, align 8
  %file_type = alloca i32, align 4
  store i8* %path_str, i8** %path_str.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store void (%struct._GimpDatafileData*, i8*)* %loader_func, void (%struct._GimpDatafileData*, i8*)** %loader_func.addr, align 8
  store i8* %user_data, i8** %user_data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %path_str.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_datafiles_read_directories, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load void (%struct._GimpDatafileData*, i8*)*, void (%struct._GimpDatafileData*, i8*)** %loader_func.addr, align 8
  %cmp2 = icmp ne void (%struct._GimpDatafileData*, i8*)* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_datafiles_read_directories, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load i8*, i8** %path_str.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %2)
  store i8* %call, i8** %local_path, align 8
  %3 = load i8*, i8** %local_path, align 8
  %call7 = call %struct._GList* @gimp_path_parse(i8* %3, i32 256, i32 1, %struct._GList** null)
  store %struct._GList* %call7, %struct._GList** %path, align 8
  %4 = load %struct._GList*, %struct._GList** %path, align 8
  store %struct._GList* %4, %struct._GList** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %cond.end, %do.end.6
  %5 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool = icmp ne %struct._GList* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct._GList*, %struct._GList** %list, align 8
  %data = getelementptr inbounds %struct._GList, %struct._GList* %6, i32 0, i32 0
  %7 = load i8*, i8** %data, align 8
  store i8* %7, i8** %dirname, align 8
  %8 = load i8*, i8** %dirname, align 8
  %call8 = call %struct._GDir* @g_dir_open(i8* %8, i32 0, %struct._GError** null)
  store %struct._GDir* %call8, %struct._GDir** %dir, align 8
  %9 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %tobool9 = icmp ne %struct._GDir* %9, null
  br i1 %tobool9, label %if.then.10, label %if.end.64

if.then.10:                                       ; preds = %for.body
  br label %while.cond

while.cond:                                       ; preds = %if.end.63, %if.then.15, %if.then.10
  %10 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %call11 = call i8* @g_dir_read_name(%struct._GDir* %10)
  store i8* %call11, i8** %dir_ent, align 8
  %tobool12 = icmp ne i8* %call11, null
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %dir_ent, align 8
  %call13 = call i32 @is_hidden(i8* %11)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %while.body
  br label %while.cond

if.end.16:                                        ; preds = %while.body
  %12 = load i8*, i8** %dirname, align 8
  %13 = load i8*, i8** %dir_ent, align 8
  %call17 = call noalias i8* (i8*, ...) @g_build_filename(i8* %12, i8* %13, i8* null)
  store i8* %call17, i8** %filename, align 8
  %14 = load i8*, i8** %filename, align 8
  %call18 = call %struct._GFile* @g_file_new_for_path(i8* %14)
  store %struct._GFile* %call18, %struct._GFile** %file, align 8
  %15 = load %struct._GFile*, %struct._GFile** %file, align 8
  %call19 = call %struct._GFileInfo* @g_file_query_info(%struct._GFile* %15, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), i32 0, %struct._GCancellable* null, %struct._GError** null)
  store %struct._GFileInfo* %call19, %struct._GFileInfo** %info, align 8
  %16 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %tobool20 = icmp ne %struct._GFileInfo* %16, null
  br i1 %tobool20, label %if.then.21, label %if.end.63

if.then.21:                                       ; preds = %if.end.16
  %17 = load i8*, i8** %filename, align 8
  %filename22 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %file_data, i32 0, i32 0
  store i8* %17, i8** %filename22, align 8
  %18 = load i8*, i8** %dirname, align 8
  %dirname23 = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %file_data, i32 0, i32 1
  store i8* %18, i8** %dirname23, align 8
  %19 = load i8*, i8** %dir_ent, align 8
  %basename = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %file_data, i32 0, i32 2
  store i8* %19, i8** %basename, align 8
  %20 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call24 = call i64 @g_file_info_get_attribute_uint64(%struct._GFileInfo* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0))
  %atime = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %file_data, i32 0, i32 3
  store i64 %call24, i64* %atime, align 8
  %21 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call25 = call i64 @g_file_info_get_attribute_uint64(%struct._GFileInfo* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i32 0, i32 0))
  %mtime = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %file_data, i32 0, i32 4
  store i64 %call25, i64* %mtime, align 8
  %22 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call26 = call i64 @g_file_info_get_attribute_uint64(%struct._GFileInfo* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0))
  %ctime = getelementptr inbounds %struct._GimpDatafileData, %struct._GimpDatafileData* %file_data, i32 0, i32 5
  store i64 %call26, i64* %ctime, align 8
  %23 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call27 = call i32 @g_file_info_get_attribute_uint32(%struct._GFileInfo* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  store i32 %call27, i32* %file_type, align 4
  %24 = load i32, i32* %flags.addr, align 4
  %and = and i32 %24, 16
  %tobool28 = icmp ne i32 %and, 0
  br i1 %tobool28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %if.then.21
  %25 = load void (%struct._GimpDatafileData*, i8*)*, void (%struct._GimpDatafileData*, i8*)** %loader_func.addr, align 8
  %26 = load i8*, i8** %user_data.addr, align 8
  call void %25(%struct._GimpDatafileData* %file_data, i8* %26)
  br label %if.end.62

if.else.30:                                       ; preds = %if.then.21
  %27 = load i32, i32* %flags.addr, align 4
  %and31 = and i32 %27, 1
  %tobool32 = icmp ne i32 %and31, 0
  br i1 %tobool32, label %land.lhs.true, label %if.else.35

land.lhs.true:                                    ; preds = %if.else.30
  %28 = load i32, i32* %file_type, align 4
  %cmp33 = icmp eq i32 %28, 1
  br i1 %cmp33, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %land.lhs.true
  %29 = load void (%struct._GimpDatafileData*, i8*)*, void (%struct._GimpDatafileData*, i8*)** %loader_func.addr, align 8
  %30 = load i8*, i8** %user_data.addr, align 8
  call void %29(%struct._GimpDatafileData* %file_data, i8* %30)
  br label %if.end.61

if.else.35:                                       ; preds = %land.lhs.true, %if.else.30
  %31 = load i32, i32* %flags.addr, align 4
  %and36 = and i32 %31, 4
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %land.lhs.true.38, label %if.else.41

land.lhs.true.38:                                 ; preds = %if.else.35
  %32 = load i32, i32* %file_type, align 4
  %cmp39 = icmp eq i32 %32, 2
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %land.lhs.true.38
  %33 = load void (%struct._GimpDatafileData*, i8*)*, void (%struct._GimpDatafileData*, i8*)** %loader_func.addr, align 8
  %34 = load i8*, i8** %user_data.addr, align 8
  call void %33(%struct._GimpDatafileData* %file_data, i8* %34)
  br label %if.end.60

if.else.41:                                       ; preds = %land.lhs.true.38, %if.else.35
  %35 = load i32, i32* %flags.addr, align 4
  %and42 = and i32 %35, 2
  %tobool43 = icmp ne i32 %and42, 0
  br i1 %tobool43, label %land.lhs.true.44, label %if.else.47

land.lhs.true.44:                                 ; preds = %if.else.41
  %36 = load i32, i32* %file_type, align 4
  %cmp45 = icmp eq i32 %36, 3
  br i1 %cmp45, label %if.then.46, label %if.else.47

if.then.46:                                       ; preds = %land.lhs.true.44
  %37 = load void (%struct._GimpDatafileData*, i8*)*, void (%struct._GimpDatafileData*, i8*)** %loader_func.addr, align 8
  %38 = load i8*, i8** %user_data.addr, align 8
  call void %37(%struct._GimpDatafileData* %file_data, i8* %38)
  br label %if.end.59

if.else.47:                                       ; preds = %land.lhs.true.44, %if.else.41
  %39 = load i32, i32* %flags.addr, align 4
  %and48 = and i32 %39, 8
  %tobool49 = icmp ne i32 %and48, 0
  br i1 %tobool49, label %land.lhs.true.50, label %if.end.58

land.lhs.true.50:                                 ; preds = %if.else.47
  %40 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %call51 = call i32 @g_file_info_get_attribute_boolean(%struct._GFileInfo* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  %tobool52 = icmp ne i32 %call51, 0
  br i1 %tobool52, label %if.then.57, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.50
  %41 = load i32, i32* %file_type, align 4
  %cmp53 = icmp eq i32 %41, 1
  br i1 %cmp53, label %land.lhs.true.54, label %if.end.58

land.lhs.true.54:                                 ; preds = %lor.lhs.false
  %42 = load i8*, i8** %filename, align 8
  %call55 = call i32 @is_script(i8* %42)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true.54, %land.lhs.true.50
  %43 = load void (%struct._GimpDatafileData*, i8*)*, void (%struct._GimpDatafileData*, i8*)** %loader_func.addr, align 8
  %44 = load i8*, i8** %user_data.addr, align 8
  call void %43(%struct._GimpDatafileData* %file_data, i8* %44)
  br label %if.end.58

if.end.58:                                        ; preds = %if.then.57, %land.lhs.true.54, %lor.lhs.false, %if.else.47
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %if.then.46
  br label %if.end.60

if.end.60:                                        ; preds = %if.end.59, %if.then.40
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.34
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.then.29
  %45 = load %struct._GFileInfo*, %struct._GFileInfo** %info, align 8
  %46 = bitcast %struct._GFileInfo* %45 to i8*
  call void @g_object_unref(i8* %46)
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.16
  %47 = load %struct._GFile*, %struct._GFile** %file, align 8
  %48 = bitcast %struct._GFile* %47 to i8*
  call void @g_object_unref(i8* %48)
  %49 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %49)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %50 = load %struct._GDir*, %struct._GDir** %dir, align 8
  call void @g_dir_close(%struct._GDir* %50)
  br label %if.end.64

if.end.64:                                        ; preds = %while.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %51 = load %struct._GList*, %struct._GList** %list, align 8
  %tobool65 = icmp ne %struct._GList* %51, null
  br i1 %tobool65, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.inc
  %52 = load %struct._GList*, %struct._GList** %list, align 8
  %next = getelementptr inbounds %struct._GList, %struct._GList* %52, i32 0, i32 1
  %53 = load %struct._GList*, %struct._GList** %next, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.inc
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._GList* [ %53, %cond.true ], [ null, %cond.false ]
  store %struct._GList* %cond, %struct._GList** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %54 = load %struct._GList*, %struct._GList** %path, align 8
  call void @gimp_path_free(%struct._GList* %54)
  %55 = load i8*, i8** %local_path, align 8
  call void @g_free(i8* %55)
  br label %return

return:                                           ; preds = %for.end, %if.else.4, %if.else
  ret void
}

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GList* @gimp_path_parse(i8*, i32, i32, %struct._GList**) #1

declare %struct._GDir* @g_dir_open(i8*, i32, %struct._GError**) #1

declare i8* @g_dir_read_name(%struct._GDir*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_hidden(i8* %filename) #3 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 46
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

declare noalias i8* @g_build_filename(i8*, ...) #1

declare %struct._GFile* @g_file_new_for_path(i8*) #1

declare %struct._GFileInfo* @g_file_query_info(%struct._GFile*, i8*, i32, %struct._GCancellable*, %struct._GError**) #1

declare i64 @g_file_info_get_attribute_uint64(%struct._GFileInfo*, i8*) #1

declare i32 @g_file_info_get_attribute_uint32(%struct._GFileInfo*, i8*) #1

declare i32 @g_file_info_get_attribute_boolean(%struct._GFileInfo*, i8*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @is_script(i8* %filename) #3 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  ret i32 0
}

declare void @g_object_unref(i8*) #1

declare void @g_free(i8*) #1

declare void @g_dir_close(%struct._GDir*) #1

declare void @gimp_path_free(%struct._GList*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
