; ModuleID = './app/config/gimpconfig-file.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GError = type { i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for reading: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Error writing '%s': %s\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Error reading '%s': %s\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Gimp-Config\00", align 1
@__func__.gimp_config_file_backup_on_error = private unnamed_addr constant [33 x i8] c"gimp_config_file_backup_on_error\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.11 = private unnamed_addr constant [129 x i8] c"There was an error parsing your '%s' file. Default values will be used. A backup of your configuration has been created at '%s'.\00", align 1

; Function Attrs: nounwind uwtable
define i32 @gimp_config_file_copy(i8* %source, i8* %dest, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %source.addr = alloca i8*, align 8
  %dest.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %buffer = alloca [8192 x i8], align 16
  %sfile = alloca %struct._IO_FILE*, align 8
  %dfile = alloca %struct._IO_FILE*, align 8
  %stat_buf = alloca %struct.stat, align 8
  %nbytes = alloca i32, align 4
  store i8* %source, i8** %source.addr, align 8
  store i8* %dest, i8** %dest.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  %0 = load i8*, i8** %source.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %sfile, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call1 = call i32 @g_file_error_quark()
  %call2 = call i32* @__errno_location() #5
  %3 = load i32, i32* %call2, align 4
  %call3 = call i32 @g_file_error_from_errno(i32 %3)
  %call4 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i32 0, i32 0)) #4
  %4 = load i8*, i8** %source.addr, align 8
  %call5 = call i8* @gimp_filename_to_utf8(i8* %4)
  %call6 = call i32* @__errno_location() #5
  %5 = load i32, i32* %call6, align 4
  %call7 = call i8* @g_strerror(i32 %5) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %2, i32 %call1, i32 %call3, i8* %call4, i8* %call5, i8* %call7)
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %dest.addr, align 8
  %call8 = call %struct._IO_FILE* @fopen(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call8, %struct._IO_FILE** %dfile, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %dfile, align 8
  %cmp9 = icmp eq %struct._IO_FILE* %7, null
  br i1 %cmp9, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %if.end
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call11 = call i32 @g_file_error_quark()
  %call12 = call i32* @__errno_location() #5
  %9 = load i32, i32* %call12, align 4
  %call13 = call i32 @g_file_error_from_errno(i32 %9)
  %call14 = call i8* @gettext(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0)) #4
  %10 = load i8*, i8** %dest.addr, align 8
  %call15 = call i8* @gimp_filename_to_utf8(i8* %10)
  %call16 = call i32* @__errno_location() #5
  %11 = load i32, i32* %call16, align 4
  %call17 = call i8* @g_strerror(i32 %11) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %8, i32 %call11, i32 %call13, i8* %call14, i8* %call15, i8* %call17)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8
  %call18 = call i32 @fclose(%struct._IO_FILE* %12)
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end.39, %if.end.19
  %arraydecay = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8
  %call20 = call i64 @fread(i8* %arraydecay, i64 1, i64 8192, %struct._IO_FILE* %13)
  %conv = trunc i64 %call20 to i32
  store i32 %conv, i32* %nbytes, align 4
  %cmp21 = icmp sgt i32 %conv, 0
  br i1 %cmp21, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay23 = getelementptr inbounds [8192 x i8], [8192 x i8]* %buffer, i32 0, i32 0
  %14 = load i32, i32* %nbytes, align 4
  %conv24 = sext i32 %14 to i64
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %dfile, align 8
  %call25 = call i64 @fwrite(i8* %arraydecay23, i64 1, i64 %conv24, %struct._IO_FILE* %15)
  %16 = load i32, i32* %nbytes, align 4
  %conv26 = sext i32 %16 to i64
  %cmp27 = icmp ult i64 %call25, %conv26
  br i1 %cmp27, label %if.then.29, label %if.end.39

if.then.29:                                       ; preds = %while.body
  %17 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call30 = call i32 @g_file_error_quark()
  %call31 = call i32* @__errno_location() #5
  %18 = load i32, i32* %call31, align 4
  %call32 = call i32 @g_file_error_from_errno(i32 %18)
  %call33 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #4
  %19 = load i8*, i8** %dest.addr, align 8
  %call34 = call i8* @gimp_filename_to_utf8(i8* %19)
  %call35 = call i32* @__errno_location() #5
  %20 = load i32, i32* %call35, align 4
  %call36 = call i8* @g_strerror(i32 %20) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %17, i32 %call30, i32 %call32, i8* %call33, i8* %call34, i8* %call36)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8
  %call37 = call i32 @fclose(%struct._IO_FILE* %21)
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %dfile, align 8
  %call38 = call i32 @fclose(%struct._IO_FILE* %22)
  store i32 0, i32* %retval
  br label %return

if.end.39:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8
  %call40 = call i32 @ferror(%struct._IO_FILE* %23) #4
  %tobool = icmp ne i32 %call40, 0
  br i1 %tobool, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %while.end
  %24 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call42 = call i32 @g_file_error_quark()
  %call43 = call i32* @__errno_location() #5
  %25 = load i32, i32* %call43, align 4
  %call44 = call i32 @g_file_error_from_errno(i32 %25)
  %call45 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i32 0, i32 0)) #4
  %26 = load i8*, i8** %source.addr, align 8
  %call46 = call i8* @gimp_filename_to_utf8(i8* %26)
  %call47 = call i32* @__errno_location() #5
  %27 = load i32, i32* %call47, align 4
  %call48 = call i8* @g_strerror(i32 %27) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %24, i32 %call42, i32 %call44, i8* %call45, i8* %call46, i8* %call48)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8
  %call49 = call i32 @fclose(%struct._IO_FILE* %28)
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %dfile, align 8
  %call50 = call i32 @fclose(%struct._IO_FILE* %29)
  store i32 0, i32* %retval
  br label %return

if.end.51:                                        ; preds = %while.end
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %sfile, align 8
  %call52 = call i32 @fclose(%struct._IO_FILE* %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %dfile, align 8
  %call53 = call i32 @fclose(%struct._IO_FILE* %31)
  %cmp54 = icmp eq i32 %call53, -1
  br i1 %cmp54, label %if.then.56, label %if.end.64

if.then.56:                                       ; preds = %if.end.51
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call57 = call i32 @g_file_error_quark()
  %call58 = call i32* @__errno_location() #5
  %33 = load i32, i32* %call58, align 4
  %call59 = call i32 @g_file_error_from_errno(i32 %33)
  %call60 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0)) #4
  %34 = load i8*, i8** %dest.addr, align 8
  %call61 = call i8* @gimp_filename_to_utf8(i8* %34)
  %call62 = call i32* @__errno_location() #5
  %35 = load i32, i32* %call62, align 4
  %call63 = call i8* @g_strerror(i32 %35) #5
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %32, i32 %call57, i32 %call59, i8* %call60, i8* %call61, i8* %call63)
  store i32 0, i32* %retval
  br label %return

if.end.64:                                        ; preds = %if.end.51
  %36 = load i8*, i8** %source.addr, align 8
  %call65 = call i32 @stat(i8* %36, %struct.stat* %stat_buf) #4
  %cmp66 = icmp eq i32 %call65, 0
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.end.64
  %37 = load i8*, i8** %dest.addr, align 8
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %stat_buf, i32 0, i32 3
  %38 = load i32, i32* %st_mode, align 4
  %call69 = call i32 @chmod(i8* %37, i32 %38) #4
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.68, %if.end.64
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.70, %if.then.56, %if.then.41, %if.then.29, %if.then.10, %if.then
  %39 = load i32, i32* %retval
  ret i32 %39
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

declare i32 @g_file_error_quark() #1

declare i32 @g_file_error_from_errno(i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare i8* @gettext(i8*) #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

declare i32 @fclose(%struct._IO_FILE*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @chmod(i8*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @gimp_config_file_backup_on_error(i8* %filename, i8* %name, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %backup = alloca i8*, align 8
  %success = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_config_file_backup_on_error, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %name.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_config_file_backup_on_error, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp8 = icmp eq %struct._GError** %2, null
  br i1 %cmp8, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.7
  %3 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %4 = load %struct._GError*, %struct._GError** %3, align 8
  %cmp9 = icmp eq %struct._GError* %4, null
  br i1 %cmp9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %lor.lhs.false, %do.body.7
  br label %if.end.12

if.else.11:                                       ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__func__.gimp_config_file_backup_on_error, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.10
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  %5 = load i8*, i8** %filename.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8* null)
  store i8* %call, i8** %backup, align 8
  %6 = load i8*, i8** %filename.addr, align 8
  %7 = load i8*, i8** %backup, align 8
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call14 = call i32 @gimp_config_file_copy(i8* %6, i8* %7, %struct._GError** %8)
  store i32 %call14, i32* %success, align 4
  %9 = load i32, i32* %success, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %do.end.13
  %call16 = call i8* @gettext(i8* getelementptr inbounds ([129 x i8], [129 x i8]* @.str.11, i32 0, i32 0)) #4
  %10 = load i8*, i8** %name.addr, align 8
  %11 = load i8*, i8** %backup, align 8
  %call17 = call i8* @gimp_filename_to_utf8(i8* %11)
  call void (i8*, ...) @g_message(i8* %call16, i8* %10, i8* %call17)
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %do.end.13
  %12 = load i8*, i8** %backup, align 8
  call void @g_free(i8* %12)
  %13 = load i32, i32* %success, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %if.end.18, %if.else.11, %if.else.4, %if.else
  %14 = load i32, i32* %retval
  ret i32 %14
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

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
  call void @g_logv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0), i32 32, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

declare void @g_free(i8*) #1

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #4

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
