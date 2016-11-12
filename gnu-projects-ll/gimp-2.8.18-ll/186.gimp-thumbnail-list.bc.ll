; ModuleID = './libgimpthumb/gimp-thumbnail-list.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GOptionEntry = type { i8*, i8, i32, i32, i8*, i8*, i8* }
%struct._GOptionContext = type opaque
%struct._GDir = type opaque
%struct._GError = type { i32, i32, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._GimpThumbnail = type { %struct._GObject, i32, i8*, i8*, i64, i64, i32, i32, i32, i8*, i32, i32, i32, i8*, i64, i64, i8*, i8* }
%struct._GObject = type { %struct._GTypeInstance, i32, %struct._GData* }
%struct._GTypeInstance = type { %struct._GTypeClass* }
%struct._GTypeClass = type { i64 }
%struct._GData = type opaque

@main_entries = internal constant [4 x %struct._GOptionEntry] [%struct._GOptionEntry { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8 115, i32 0, i32 3, i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @parse_option_state to i8*), i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8 112, i32 0, i32 3, i8* bitcast (i32 (i8*, i8*, i8*, %struct._GError**)* @parse_option_path to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0) }, %struct._GOptionEntry { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i8 118, i32 0, i32 0, i8* bitcast (i32* @option_verbose to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i32 0, i32 0), i8* null }, %struct._GOptionEntry zeroinitializer], align 16
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c".thumbnails\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Error opening ~/.thumbnails: %s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.4 = private unnamed_addr constant [95 x i8] c"Filter by thumbnail state (unknown|remote|folder|special|not-found|exists|old|failed|ok|error)\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"<state>\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"Filter by original file's path\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"<path>\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@option_verbose = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"Print additional info per matched file\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@option_state = internal global i32 -1, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"folder\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"special\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"not-found\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"exists\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@option_path = internal global i8* null, align 8
@.str.21 = private unnamed_addr constant [13 x i8] c"LibGimpThumb\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"Error opening '%s': %s\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"%s '%s'\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %context = alloca %struct._GOptionContext*, align 8
  %dir = alloca %struct._GDir*, align 8
  %home = alloca i8*, align 8
  %thumb_folder = alloca i8*, align 8
  %folder = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  call void @g_type_init()
  %call = call %struct._GOptionContext* @g_option_context_new(i8* null)
  store %struct._GOptionContext* %call, %struct._GOptionContext** %context, align 8
  %0 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  call void @g_option_context_add_main_entries(%struct._GOptionContext* %0, %struct._GOptionEntry* getelementptr inbounds ([4 x %struct._GOptionEntry], [4 x %struct._GOptionEntry]* @main_entries, i32 0, i32 0), i8* null)
  %1 = load %struct._GOptionContext*, %struct._GOptionContext** %context, align 8
  %call1 = call i32 @g_option_context_parse(%struct._GOptionContext* %1, i32* %argc.addr, i8*** %argv.addr, %struct._GError** %error)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %2, i32 0, i32 2
  %3 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %3)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i8* @g_get_home_dir()
  store i8* %call2, i8** %home, align 8
  %4 = load i8*, i8** %home, align 8
  %call3 = call noalias i8* (i8*, ...) @g_build_filename(i8* %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* null)
  store i8* %call3, i8** %thumb_folder, align 8
  %5 = load i8*, i8** %thumb_folder, align 8
  %call4 = call %struct._GDir* @g_dir_open(i8* %5, i32 0, %struct._GError** %error)
  store %struct._GDir* %call4, %struct._GDir** %dir, align 8
  %6 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %tobool5 = icmp ne %struct._GDir* %6, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %7 = load %struct._GError*, %struct._GError** %error, align 8
  %message7 = getelementptr inbounds %struct._GError, %struct._GError* %7, i32 0, i32 2
  %8 = load i8*, i8** %message7, align 8
  call void (i8*, ...) @g_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0), i8* %8)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.15, %if.end.8
  %9 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %call9 = call i8* @g_dir_read_name(%struct._GDir* %9)
  store i8* %call9, i8** %folder, align 8
  %tobool10 = icmp ne i8* %call9, null
  br i1 %tobool10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load i8*, i8** %thumb_folder, align 8
  %11 = load i8*, i8** %folder, align 8
  %call11 = call noalias i8* (i8*, ...) @g_build_filename(i8* %10, i8* %11, i8* null)
  store i8* %call11, i8** %filename, align 8
  %12 = load i8*, i8** %filename, align 8
  %call12 = call i32 @g_file_test(i8* %12, i32 4)
  %tobool13 = icmp ne i32 %call12, 0
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %while.body
  %13 = load i8*, i8** %filename, align 8
  call void @process_folder(i8* %13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %while.body
  %14 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %14)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct._GDir*, %struct._GDir** %dir, align 8
  call void @g_dir_close(%struct._GDir* %15)
  %16 = load i8*, i8** %thumb_folder, align 8
  call void @g_free(i8* %16)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

declare void @g_type_init() #1

declare %struct._GOptionContext* @g_option_context_new(i8*) #1

declare void @g_option_context_add_main_entries(%struct._GOptionContext*, %struct._GOptionEntry*, i8*) #1

declare i32 @g_option_context_parse(%struct._GOptionContext*, i32*, i8***, %struct._GError**) #1

declare void @g_printerr(i8*, ...) #1

declare i8* @g_get_home_dir() #1

declare noalias i8* @g_build_filename(i8*, ...) #1

declare %struct._GDir* @g_dir_open(i8*, i32, %struct._GError**) #1

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
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i32 4, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br label %for.cond

return:                                           ; No predecessors!
  ret void
}

declare i8* @g_dir_read_name(%struct._GDir*) #1

declare i32 @g_file_test(i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @process_folder(i8* %folder) #0 {
entry:
  %folder.addr = alloca i8*, align 8
  %dir = alloca %struct._GDir*, align 8
  %name = alloca i8*, align 8
  %error = alloca %struct._GError*, align 8
  %filename = alloca i8*, align 8
  store i8* %folder, i8** %folder.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %0 = load i8*, i8** %folder.addr, align 8
  %call = call %struct._GDir* @g_dir_open(i8* %0, i32 0, %struct._GError** %error)
  store %struct._GDir* %call, %struct._GDir** %dir, align 8
  %1 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %tobool = icmp ne %struct._GDir* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %folder.addr, align 8
  %3 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %3, i32 0, i32 2
  %4 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_printerr(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i8* %2, i8* %4)
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.7, %if.end
  %5 = load %struct._GDir*, %struct._GDir** %dir, align 8
  %call1 = call i8* @g_dir_read_name(%struct._GDir* %5)
  store i8* %call1, i8** %name, align 8
  %tobool2 = icmp ne i8* %call1, null
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i8*, i8** %folder.addr, align 8
  %7 = load i8*, i8** %name, align 8
  %call3 = call noalias i8* (i8*, ...) @g_build_filename(i8* %6, i8* %7, i8* null)
  store i8* %call3, i8** %filename, align 8
  %8 = load i8*, i8** %filename, align 8
  %call4 = call i32 @g_file_test(i8* %8, i32 4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %while.body
  %9 = load i8*, i8** %filename, align 8
  call void @process_folder(i8* %9)
  br label %if.end.7

if.else:                                          ; preds = %while.body
  %10 = load i8*, i8** %filename, align 8
  call void @process_thumbnail(i8* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %11 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %11)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load %struct._GDir*, %struct._GDir** %dir, align 8
  call void @g_dir_close(%struct._GDir* %12)
  br label %return

return:                                           ; preds = %while.end, %if.then
  ret void
}

declare void @g_free(i8*) #1

declare void @g_dir_close(%struct._GDir*) #1

; Function Attrs: nounwind uwtable
define internal i32 @parse_option_state(i8* %option_name, i8* %value, i8* %data, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %option_name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store i8* %option_name, i8** %option_name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %call = call i32 @strcmp(i8* %0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0)) #4
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @option_state, align 4
  br label %if.end.45

if.else:                                          ; preds = %entry
  %1 = load i8*, i8** %value.addr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0)) #4
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  store i32 1, i32* @option_state, align 4
  br label %if.end.44

if.else.4:                                        ; preds = %if.else
  %2 = load i8*, i8** %value.addr, align 8
  %call5 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #4
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  store i32 2, i32* @option_state, align 4
  br label %if.end.43

if.else.8:                                        ; preds = %if.else.4
  %3 = load i8*, i8** %value.addr, align 8
  %call9 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #4
  %cmp10 = icmp eq i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %if.else.8
  store i32 3, i32* @option_state, align 4
  br label %if.end.42

if.else.12:                                       ; preds = %if.else.8
  %4 = load i8*, i8** %value.addr, align 8
  %call13 = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)) #4
  %cmp14 = icmp eq i32 %call13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else.12
  store i32 4, i32* @option_state, align 4
  br label %if.end.41

if.else.16:                                       ; preds = %if.else.12
  %5 = load i8*, i8** %value.addr, align 8
  %call17 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #4
  %cmp18 = icmp eq i32 %call17, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.else.16
  store i32 5, i32* @option_state, align 4
  br label %if.end.40

if.else.20:                                       ; preds = %if.else.16
  %6 = load i8*, i8** %value.addr, align 8
  %call21 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0)) #4
  %cmp22 = icmp eq i32 %call21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else.20
  store i32 6, i32* @option_state, align 4
  br label %if.end.39

if.else.24:                                       ; preds = %if.else.20
  %7 = load i8*, i8** %value.addr, align 8
  %call25 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #4
  %cmp26 = icmp eq i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %if.else.24
  store i32 7, i32* @option_state, align 4
  br label %if.end.38

if.else.28:                                       ; preds = %if.else.24
  %8 = load i8*, i8** %value.addr, align 8
  %call29 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #4
  %cmp30 = icmp eq i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %if.else.28
  store i32 8, i32* @option_state, align 4
  br label %if.end.37

if.else.32:                                       ; preds = %if.else.28
  %9 = load i8*, i8** %value.addr, align 8
  %call33 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0)) #4
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %if.else.32
  store i32 -2, i32* @option_state, align 4
  br label %if.end

if.else.36:                                       ; preds = %if.else.32
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.35
  br label %if.end.37

if.end.37:                                        ; preds = %if.end, %if.then.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.then.27
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.23
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then.19
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.15
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.then.11
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.7
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.3
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.else.36
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind uwtable
define internal i32 @parse_option_path(i8* %option_name, i8* %value, i8* %data, %struct._GError** %error) #0 {
entry:
  %option_name.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store i8* %option_name, i8** %option_name.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %value.addr, align 8
  %call = call noalias i8* @g_strdup(i8* %0)
  store i8* %call, i8** @option_path, align 8
  ret i32 1
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare noalias i8* @g_strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define internal void @process_thumbnail(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %thumbnail = alloca %struct._GimpThumbnail*, align 8
  %error = alloca %struct._GError*, align 8
  %state = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store %struct._GError* null, %struct._GError** %error, align 8
  %call = call %struct._GimpThumbnail* @gimp_thumbnail_new()
  store %struct._GimpThumbnail* %call, %struct._GimpThumbnail** %thumbnail, align 8
  %0 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %1 = load i8*, i8** %filename.addr, align 8
  %call1 = call i32 @gimp_thumbnail_set_from_thumb(%struct._GimpThumbnail* %0, i8* %1, %struct._GError** %error)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.else.6, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @option_state, align 4
  %cmp = icmp eq i32 %2, -2
  br i1 %cmp, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.then
  %3 = load i32, i32* @option_verbose, align 4
  %tobool3 = icmp ne i32 %3, 0
  br i1 %tobool3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %4 = load i8*, i8** %filename.addr, align 8
  %5 = load %struct._GError*, %struct._GError** %error, align 8
  %message = getelementptr inbounds %struct._GError, %struct._GError* %5, i32 0, i32 2
  %6 = load i8*, i8** %message, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* %4, i8* %6)
  br label %if.end

if.else:                                          ; preds = %if.then.2
  %7 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %if.then
  call void @g_clear_error(%struct._GError** %error)
  br label %if.end.21

if.else.6:                                        ; preds = %entry
  %8 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %call7 = call i32 @gimp_thumbnail_peek_image(%struct._GimpThumbnail* %8)
  store i32 %call7, i32* %state, align 4
  %9 = load i32, i32* @option_state, align 4
  %cmp8 = icmp eq i32 %9, -1
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.6
  %10 = load i32, i32* %state, align 4
  %11 = load i32, i32* @option_state, align 4
  %cmp9 = icmp eq i32 %10, %11
  br i1 %cmp9, label %land.lhs.true, label %if.end.20

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.else.6
  %12 = load i8*, i8** @option_path, align 8
  %cmp10 = icmp eq i8* %12, null
  br i1 %cmp10, label %if.then.14, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %land.lhs.true
  %13 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %13, i32 0, i32 2
  %14 = load i8*, i8** %image_uri, align 8
  %15 = load i8*, i8** @option_path, align 8
  %call12 = call i8* @strstr(i8* %14, i8* %15) #4
  %tobool13 = icmp ne i8* %call12, null
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %lor.lhs.false.11, %land.lhs.true
  %16 = load i32, i32* @option_verbose, align 4
  %tobool15 = icmp ne i32 %16, 0
  br i1 %tobool15, label %if.then.16, label %if.else.18

if.then.16:                                       ; preds = %if.then.14
  %17 = load i8*, i8** %filename.addr, align 8
  %18 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %image_uri17 = getelementptr inbounds %struct._GimpThumbnail, %struct._GimpThumbnail* %18, i32 0, i32 2
  %19 = load i8*, i8** %image_uri17, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8* %17, i8* %19)
  br label %if.end.19

if.else.18:                                       ; preds = %if.then.14
  %20 = load i8*, i8** %filename.addr, align 8
  call void (i8*, ...) @g_print(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %20)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.16
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %lor.lhs.false.11, %lor.lhs.false
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.5
  %21 = load %struct._GimpThumbnail*, %struct._GimpThumbnail** %thumbnail, align 8
  %22 = bitcast %struct._GimpThumbnail* %21 to i8*
  call void @g_object_unref(i8* %22)
  ret void
}

declare %struct._GimpThumbnail* @gimp_thumbnail_new() #1

declare i32 @gimp_thumbnail_set_from_thumb(%struct._GimpThumbnail*, i8*, %struct._GError**) #1

declare void @g_print(i8*, ...) #1

declare void @g_clear_error(%struct._GError**) #1

declare i32 @gimp_thumbnail_peek_image(%struct._GimpThumbnail*) #1

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

declare void @g_object_unref(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
