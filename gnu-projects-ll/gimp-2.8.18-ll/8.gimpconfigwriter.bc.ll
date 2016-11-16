; ModuleID = './libgimpconfig/gimpconfigwriter.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._GimpConfigWriter = type { i32, i8*, i8*, %struct._GError*, %struct._GString*, i32, i32, i32 }
%struct._GError = type { i32, i32, i8* }
%struct._GString = type { i8*, i64, i64 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [14 x i8] c"LibGimpConfig\00", align 1
@__func__.gimp_config_writer_new_file = private unnamed_addr constant [28 x i8] c"gimp_config_writer_new_file\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"filename != NULL\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"error == NULL || *error == NULL\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"gimp20-libgimp\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Could not create temporary file for '%s': %s\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Could not open '%s' for writing: %s\00", align 1
@__func__.gimp_config_writer_new_fd = private unnamed_addr constant [26 x i8] c"gimp_config_writer_new_fd\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"fd > 0\00", align 1
@__func__.gimp_config_writer_new_string = private unnamed_addr constant [30 x i8] c"gimp_config_writer_new_string\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"string != NULL\00", align 1
@__func__.gimp_config_writer_comment_mode = private unnamed_addr constant [32 x i8] c"gimp_config_writer_comment_mode\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"writer != NULL\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"# \00", align 1
@__func__.gimp_config_writer_open = private unnamed_addr constant [24 x i8] c"gimp_config_writer_open\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"name != NULL\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"(%s\00", align 1
@__func__.gimp_config_writer_print = private unnamed_addr constant [25 x i8] c"gimp_config_writer_print\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"len == 0 || string != NULL\00", align 1
@__func__.gimp_config_writer_printf = private unnamed_addr constant [26 x i8] c"gimp_config_writer_printf\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"format != NULL\00", align 1
@__func__.gimp_config_writer_string = private unnamed_addr constant [26 x i8] c"gimp_config_writer_string\00", align 1
@__func__.gimp_config_writer_identifier = private unnamed_addr constant [30 x i8] c"gimp_config_writer_identifier\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"identifier != NULL\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@__func__.gimp_config_writer_data = private unnamed_addr constant [24 x i8] c"gimp_config_writer_data\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"length > 0\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"data != NULL\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" \22\00", align 1
@g_ascii_table = external constant i16*, align 8
@.str.20 = private unnamed_addr constant [4 x i8] c"\5C%o\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@__func__.gimp_config_writer_revert = private unnamed_addr constant [26 x i8] c"gimp_config_writer_revert\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"writer->depth > 0\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"writer->marker != -1\00", align 1
@__func__.gimp_config_writer_close = private unnamed_addr constant [25 x i8] c"gimp_config_writer_close\00", align 1
@__func__.gimp_config_writer_finish = private unnamed_addr constant [26 x i8] c"gimp_config_writer_finish\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"gimp_config_writer_finish: depth < 0 !!\00", align 1
@__func__.gimp_config_writer_linefeed = private unnamed_addr constant [28 x i8] c"gimp_config_writer_linefeed\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@__func__.gimp_config_writer_comment = private unnamed_addr constant [27 x i8] c"gimp_config_writer_comment\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"writer->depth == 0\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"Error writing to '%s': %s\00", align 1
@__func__.gimp_config_writer_close_file = private unnamed_addr constant [30 x i8] c"gimp_config_writer_close_file\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"writer->fd != 0\00", align 1
@.str.30 = private unnamed_addr constant [85 x i8] c"Error writing to temporary file for '%s': %s\0AThe original file has not been touched.\00", align 1
@.str.31 = private unnamed_addr constant [71 x i8] c"Error writing to temporary file for '%s': %s\0ANo file has been created.\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Could not create '%s': %s\00", align 1

; Function Attrs: nounwind uwtable
define %struct._GimpConfigWriter* @gimp_config_writer_new_file(i8* %filename, i32 %atomic, i8* %header, %struct._GError** %error) #0 {
entry:
  %retval = alloca %struct._GimpConfigWriter*, align 8
  %filename.addr = alloca i8*, align 8
  %atomic.addr = alloca i32, align 4
  %header.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %writer = alloca %struct._GimpConfigWriter*, align 8
  %tmpname = alloca i8*, align 8
  %fd = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %atomic, i32* %atomic.addr, align 4
  store i8* %header, i8** %header.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i8* null, i8** %tmpname, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i8*, i8** %filename.addr, align 8
  %cmp = icmp ne i8* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_config_writer_new_file, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  store %struct._GimpConfigWriter* null, %struct._GimpConfigWriter** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp2 = icmp eq %struct._GError** %1, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %3 = load %struct._GError*, %struct._GError** %2, align 8
  %cmp3 = icmp eq %struct._GError* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_config_writer_new_file, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store %struct._GimpConfigWriter* null, %struct._GimpConfigWriter** %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %4 = load i32, i32* %atomic.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then.8, label %if.else.18

if.then.8:                                        ; preds = %do.end.7
  %5 = load i8*, i8** %filename.addr, align 8
  %call = call noalias i8* (i8*, ...) @g_strconcat(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* null)
  store i8* %call, i8** %tmpname, align 8
  %6 = load i8*, i8** %tmpname, align 8
  %call9 = call i32 @g_mkstemp(i8* %6)
  store i32 %call9, i32* %fd, align 4
  %7 = load i32, i32* %fd, align 4
  %cmp10 = icmp eq i32 %7, -1
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.then.8
  %8 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call12 = call i32 @gimp_config_error_quark() #7
  %call13 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0)) #6
  %9 = load i8*, i8** %filename.addr, align 8
  %call14 = call i8* @gimp_filename_to_utf8(i8* %9)
  %call15 = call i32* @__errno_location() #7
  %10 = load i32, i32* %call15, align 4
  %call16 = call i8* @g_strerror(i32 %10) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %8, i32 %call12, i32 2, i8* %call13, i8* %call14, i8* %call16)
  %11 = load i8*, i8** %tmpname, align 8
  call void @g_free(i8* %11)
  store %struct._GimpConfigWriter* null, %struct._GimpConfigWriter** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.8
  br label %if.end.28

if.else.18:                                       ; preds = %do.end.7
  %12 = load i8*, i8** %filename.addr, align 8
  %call19 = call i32 @creat(i8* %12, i32 420)
  store i32 %call19, i32* %fd, align 4
  %13 = load i32, i32* %fd, align 4
  %cmp20 = icmp eq i32 %13, -1
  br i1 %cmp20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.else.18
  %14 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call22 = call i32 @gimp_config_error_quark() #7
  %call23 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0)) #6
  %15 = load i8*, i8** %filename.addr, align 8
  %call24 = call i8* @gimp_filename_to_utf8(i8* %15)
  %call25 = call i32* @__errno_location() #7
  %16 = load i32, i32* %call25, align 4
  %call26 = call i8* @g_strerror(i32 %16) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %14, i32 %call22, i32 2, i8* %call23, i8* %call24, i8* %call26)
  store %struct._GimpConfigWriter* null, %struct._GimpConfigWriter** %retval
  br label %return

if.end.27:                                        ; preds = %if.else.18
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %if.end.17
  %call29 = call noalias i8* @g_slice_alloc0(i64 56)
  %17 = bitcast i8* %call29 to %struct._GimpConfigWriter*
  store %struct._GimpConfigWriter* %17, %struct._GimpConfigWriter** %writer, align 8
  %18 = load i32, i32* %fd, align 4
  %19 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %fd30 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %19, i32 0, i32 0
  store i32 %18, i32* %fd30, align 4
  %20 = load i8*, i8** %filename.addr, align 8
  %call31 = call noalias i8* @g_strdup(i8* %20)
  %21 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %filename32 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %21, i32 0, i32 1
  store i8* %call31, i8** %filename32, align 8
  %22 = load i8*, i8** %tmpname, align 8
  %23 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %tmpname33 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %23, i32 0, i32 2
  store i8* %22, i8** %tmpname33, align 8
  %call34 = call %struct._GString* @g_string_new(i8* null)
  %24 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %24, i32 0, i32 4
  store %struct._GString* %call34, %struct._GString** %buffer, align 8
  %25 = load i8*, i8** %header.addr, align 8
  %tobool35 = icmp ne i8* %25, null
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.28
  %26 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %27 = load i8*, i8** %header.addr, align 8
  call void @gimp_config_writer_comment(%struct._GimpConfigWriter* %26, i8* %27)
  %28 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %28)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.end.28
  %29 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  store %struct._GimpConfigWriter* %29, %struct._GimpConfigWriter** %retval
  br label %return

return:                                           ; preds = %if.end.37, %if.then.21, %if.then.11, %if.else.5, %if.else
  %30 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %retval
  ret %struct._GimpConfigWriter* %30
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

declare noalias i8* @g_strconcat(i8*, ...) #1

declare i32 @g_mkstemp(i8*) #1

declare void @g_set_error(%struct._GError**, i32, i32, i8*, ...) #1

; Function Attrs: nounwind readnone
declare i32 @gimp_config_error_quark() #2

; Function Attrs: nounwind
declare i8* @dgettext(i8*, i8*) #3

declare i8* @gimp_filename_to_utf8(i8*) #1

; Function Attrs: nounwind readnone
declare i8* @g_strerror(i32) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

declare void @g_free(i8*) #1

declare i32 @creat(i8*, i32) #1

declare noalias i8* @g_slice_alloc0(i64) #1

declare noalias i8* @g_strdup(i8*) #1

declare %struct._GString* @g_string_new(i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_config_writer_comment(%struct._GimpConfigWriter* %writer, i8* %comment) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %comment.addr = alloca i8*, align 8
  %s = alloca i8*, align 8
  %comment_mode = alloca i32, align 4
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %space = alloca i32, align 4
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %comment, i8** %comment.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_config_writer_comment, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.50

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %1, i32 0, i32 3
  %2 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  br label %if.end.50

if.end.2:                                         ; preds = %do.end
  br label %do.body.3

do.body.3:                                        ; preds = %if.end.2
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %depth = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %3, i32 0, i32 6
  %4 = load i32, i32* %depth, align 4
  %cmp4 = icmp eq i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.7

if.else.6:                                        ; preds = %do.body.3
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__.gimp_config_writer_comment, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.50

if.end.7:                                         ; preds = %if.then.5
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %5 = load i8*, i8** %comment.addr, align 8
  %tobool9 = icmp ne i8* %5, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %do.end.8
  br label %if.end.50

if.end.11:                                        ; preds = %do.end.8
  %6 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %comment12 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %6, i32 0, i32 5
  %7 = load i32, i32* %comment12, align 4
  store i32 %7, i32* %comment_mode, align 4
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_comment_mode(%struct._GimpConfigWriter* %8, i32 1)
  %9 = load i8*, i8** %comment.addr, align 8
  %call = call i64 @strlen(i8* %9) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.45, %if.end.11
  %10 = load i32, i32* %len, align 4
  %cmp13 = icmp sgt i32 %10, 0
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i8*, i8** %comment.addr, align 8
  store i8* %11, i8** %s, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %space, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %12 = load i8*, i8** %s, align 8
  %13 = load i8, i8* %12, align 1
  %conv15 = sext i8 %13 to i32
  %cmp16 = icmp ne i32 %conv15, 10
  br i1 %cmp16, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %14 = load i32, i32* %i, align 4
  %cmp18 = icmp sle i32 %14, 75
  br i1 %cmp18, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load i32, i32* %space, align 4
  %cmp20 = icmp eq i32 %15, 0
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %len, align 4
  %cmp22 = icmp slt i32 %16, %17
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false, %for.cond
  %18 = phi i1 [ false, %lor.lhs.false ], [ false, %for.cond ], [ %cmp22, %land.rhs ]
  br i1 %18, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %19 = load i8*, i8** %s, align 8
  %20 = load i8, i8* %19, align 1
  %idxprom = zext i8 %20 to i64
  %21 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx = getelementptr inbounds i16, i16* %21, i64 %idxprom
  %22 = load i16, i16* %arrayidx, align 2
  %conv24 = zext i16 %22 to i32
  %and = and i32 %conv24, 256
  %cmp25 = icmp ne i32 %and, 0
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %for.body
  %23 = load i32, i32* %i, align 4
  store i32 %23, i32* %space, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %24 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %26 = load i32, i32* %i, align 4
  %cmp29 = icmp sgt i32 %26, 75
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.38

land.lhs.true.31:                                 ; preds = %for.end
  %27 = load i32, i32* %space, align 4
  %tobool32 = icmp ne i32 %27, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.38

land.lhs.true.33:                                 ; preds = %land.lhs.true.31
  %28 = load i8*, i8** %s, align 8
  %29 = load i8, i8* %28, align 1
  %conv34 = sext i8 %29 to i32
  %cmp35 = icmp ne i32 %conv34, 10
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %land.lhs.true.33
  %30 = load i32, i32* %space, align 4
  store i32 %30, i32* %i, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %land.lhs.true.33, %land.lhs.true.31, %for.end
  %31 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %31, i32 0, i32 4
  %32 = load %struct._GString*, %struct._GString** %buffer, align 8
  %33 = load i8*, i8** %comment.addr, align 8
  %34 = load i32, i32* %i, align 4
  %conv39 = sext i32 %34 to i64
  %call40 = call %struct._GString* @g_string_append_len(%struct._GString* %32, i8* %33, i64 %conv39)
  %35 = load i32, i32* %i, align 4
  %inc41 = add nsw i32 %35, 1
  store i32 %inc41, i32* %i, align 4
  %36 = load i32, i32* %i, align 4
  %37 = load i8*, i8** %comment.addr, align 8
  %idx.ext = sext i32 %36 to i64
  %add.ptr = getelementptr inbounds i8, i8* %37, i64 %idx.ext
  store i8* %add.ptr, i8** %comment.addr, align 8
  %38 = load i32, i32* %i, align 4
  %39 = load i32, i32* %len, align 4
  %sub = sub nsw i32 %39, %38
  store i32 %sub, i32* %len, align 4
  %40 = load i32, i32* %len, align 4
  %cmp42 = icmp sgt i32 %40, 0
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %if.end.38
  %41 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_newline(%struct._GimpConfigWriter* %41)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.44, %if.end.38
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %42 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %43 = load i32, i32* %comment_mode, align 4
  call void @gimp_config_writer_comment_mode(%struct._GimpConfigWriter* %42, i32 %43)
  %44 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_newline(%struct._GimpConfigWriter* %44)
  %45 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %depth46 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %45, i32 0, i32 6
  %46 = load i32, i32* %depth46, align 4
  %cmp47 = icmp eq i32 %46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %while.end
  %47 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_flush(%struct._GimpConfigWriter* %47)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.1, %if.else.6, %if.then.10, %if.then.49, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %writer) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__.gimp_config_writer_linefeed, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.14

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %1, i32 0, i32 3
  %2 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  br label %if.end.14

if.end.2:                                         ; preds = %do.end
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %3, i32 0, i32 4
  %4 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %4, i32 0, i32 1
  %5 = load i64, i64* %len, align 8
  %cmp3 = icmp eq i64 %5, 0
  br i1 %cmp3, label %land.lhs.true, label %if.else.13

land.lhs.true:                                    ; preds = %if.end.2
  %6 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %comment = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %6, i32 0, i32 5
  %7 = load i32, i32* %comment, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.else.13, label %if.then.5

if.then.5:                                        ; preds = %land.lhs.true
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %fd = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %8, i32 0, i32 0
  %9 = load i32, i32* %fd, align 4
  %call = call i64 @write(i32 %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i64 1)
  %cmp6 = icmp slt i64 %call, 0
  br i1 %cmp6, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.then.5
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error8 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %10, i32 0, i32 3
  %call9 = call i32 @gimp_config_error_quark() #7
  %call10 = call i32* @__errno_location() #7
  %11 = load i32, i32* %call10, align 4
  %call11 = call i8* @g_strerror(i32 %11) #7
  call void @g_set_error_literal(%struct._GError** %error8, i32 %call9, i32 2, i8* %call11)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.then.5
  br label %if.end.14

if.else.13:                                       ; preds = %land.lhs.true, %if.end.2
  %12 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_newline(%struct._GimpConfigWriter* %12)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.1, %if.else.13, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._GimpConfigWriter* @gimp_config_writer_new_fd(i32 %fd) #0 {
entry:
  %retval = alloca %struct._GimpConfigWriter*, align 8
  %fd.addr = alloca i32, align 4
  %writer = alloca %struct._GimpConfigWriter*, align 8
  store i32 %fd, i32* %fd.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load i32, i32* %fd.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_config_writer_new_fd, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0))
  store %struct._GimpConfigWriter* null, %struct._GimpConfigWriter** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call noalias i8* @g_slice_alloc0(i64 56)
  %1 = bitcast i8* %call to %struct._GimpConfigWriter*
  store %struct._GimpConfigWriter* %1, %struct._GimpConfigWriter** %writer, align 8
  %2 = load i32, i32* %fd.addr, align 4
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %fd1 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %3, i32 0, i32 0
  store i32 %2, i32* %fd1, align 4
  %call2 = call %struct._GString* @g_string_new(i8* null)
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %4, i32 0, i32 4
  store %struct._GString* %call2, %struct._GString** %buffer, align 8
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  store %struct._GimpConfigWriter* %5, %struct._GimpConfigWriter** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %6 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %retval
  ret %struct._GimpConfigWriter* %6
}

; Function Attrs: nounwind uwtable
define %struct._GimpConfigWriter* @gimp_config_writer_new_string(%struct._GString* %string) #0 {
entry:
  %retval = alloca %struct._GimpConfigWriter*, align 8
  %string.addr = alloca %struct._GString*, align 8
  %writer = alloca %struct._GimpConfigWriter*, align 8
  store %struct._GString* %string, %struct._GString** %string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %cmp = icmp ne %struct._GString* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_config_writer_new_string, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  store %struct._GimpConfigWriter* null, %struct._GimpConfigWriter** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %call = call noalias i8* @g_slice_alloc0(i64 56)
  %1 = bitcast i8* %call to %struct._GimpConfigWriter*
  store %struct._GimpConfigWriter* %1, %struct._GimpConfigWriter** %writer, align 8
  %2 = load %struct._GString*, %struct._GString** %string.addr, align 8
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %3, i32 0, i32 4
  store %struct._GString* %2, %struct._GString** %buffer, align 8
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer, align 8
  store %struct._GimpConfigWriter* %4, %struct._GimpConfigWriter** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %retval
  ret %struct._GimpConfigWriter* %5
}

; Function Attrs: nounwind uwtable
define void @gimp_config_writer_comment_mode(%struct._GimpConfigWriter* %writer, i32 %enable) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %enable.addr = alloca i32, align 4
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i32 %enable, i32* %enable.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.gimp_config_writer_comment_mode, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.15

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %1, i32 0, i32 3
  %2 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  br label %if.end.15

if.end.2:                                         ; preds = %do.end
  %3 = load i32, i32* %enable.addr, align 4
  %tobool3 = icmp ne i32 %3, 0
  %cond = select i1 %tobool3, i32 1, i32 0
  store i32 %cond, i32* %enable.addr, align 4
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %comment = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %4, i32 0, i32 5
  %5 = load i32, i32* %comment, align 4
  %6 = load i32, i32* %enable.addr, align 4
  %cmp4 = icmp eq i32 %5, %6
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  br label %if.end.15

if.end.6:                                         ; preds = %if.end.2
  %7 = load i32, i32* %enable.addr, align 4
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %comment7 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %8, i32 0, i32 5
  store i32 %7, i32* %comment7, align 4
  %9 = load i32, i32* %enable.addr, align 4
  %tobool8 = icmp ne i32 %9, 0
  br i1 %tobool8, label %if.then.9, label %if.end.15

if.then.9:                                        ; preds = %if.end.6
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %10, i32 0, i32 4
  %11 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %11, i32 0, i32 1
  %12 = load i64, i64* %len, align 8
  %cmp10 = icmp eq i64 %12, 0
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.then.9
  %13 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer12 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %13, i32 0, i32 4
  %14 = load %struct._GString*, %struct._GString** %buffer12, align 8
  %call = call %struct._GString* @g_string_append_len(%struct._GString* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i64 2)
  br label %if.end.14

if.else.13:                                       ; preds = %if.then.9
  %15 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_newline(%struct._GimpConfigWriter* %15)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.11
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.1, %if.then.5, %if.end.14, %if.end.6
  ret void
}

declare %struct._GString* @g_string_append_len(%struct._GString*, i8*, i64) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @gimp_config_writer_newline(%struct._GimpConfigWriter* %writer) #4 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %i = alloca i32, align 4
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %0, i32 0, i32 4
  %1 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call = call %struct._GString* @g_string_append_c_inline(%struct._GString* %1, i8 signext 10)
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %comment = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %2, i32 0, i32 5
  %3 = load i32, i32* %comment, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %4, i32 0, i32 4
  %5 = load %struct._GString*, %struct._GString** %buffer1, align 8
  %call2 = call %struct._GString* @g_string_append_len(%struct._GString* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i64 2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, i32* %i, align 4
  %7 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %depth = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %7, i32 0, i32 6
  %8 = load i32, i32* %depth, align 4
  %cmp = icmp slt i32 %6, %8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer3 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %9, i32 0, i32 4
  %10 = load %struct._GString*, %struct._GString** %buffer3, align 8
  %call4 = call %struct._GString* @g_string_append_len(%struct._GString* %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0), i64 4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_config_writer_open(%struct._GimpConfigWriter* %writer, i8* %name) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %name.addr = alloca i8*, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_config_writer_open, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
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
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_config_writer_open, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %2, i32 0, i32 3
  %3 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %3, null
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end.6
  br label %return

if.end.8:                                         ; preds = %do.end.6
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %4, i32 0, i32 4
  %5 = load %struct._GString*, %struct._GString** %buffer, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %5, i32 0, i32 1
  %6 = load i64, i64* %len, align 8
  %conv = trunc i64 %6 to i32
  %7 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %marker = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %7, i32 0, i32 7
  store i32 %conv, i32* %marker, align 4
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %depth = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %8, i32 0, i32 6
  %9 = load i32, i32* %depth, align 4
  %cmp9 = icmp sgt i32 %9, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_newline(%struct._GimpConfigWriter* %10)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  %11 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %depth13 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %11, i32 0, i32 6
  %12 = load i32, i32* %depth13, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %depth13, align 4
  %13 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer14 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %13, i32 0, i32 4
  %14 = load %struct._GString*, %struct._GString** %buffer14, align 8
  %15 = load i8*, i8** %name.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i8* %15)
  br label %return

return:                                           ; preds = %if.end.12, %if.then.7, %if.else.4, %if.else
  ret void
}

declare void @g_string_append_printf(%struct._GString*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @gimp_config_writer_print(%struct._GimpConfigWriter* %writer, i8* %string, i32 %len) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %string.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_config_writer_print, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.19

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %len.addr, align 4
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load i8*, i8** %string.addr, align 8
  %cmp3 = icmp ne i8* %2, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_config_writer_print, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  br label %if.end.19

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %3, i32 0, i32 3
  %4 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %4, null
  br i1 %tobool, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end.7
  br label %if.end.19

if.end.9:                                         ; preds = %do.end.7
  %5 = load i32, i32* %len.addr, align 4
  %cmp10 = icmp slt i32 %5, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.9
  %6 = load i8*, i8** %string.addr, align 8
  %call = call i64 @strlen(i8* %6) #8
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %len.addr, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.9
  %7 = load i32, i32* %len.addr, align 4
  %tobool13 = icmp ne i32 %7, 0
  br i1 %tobool13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end.12
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %8, i32 0, i32 4
  %9 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call15 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %9, i8 signext 32)
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer16 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %10, i32 0, i32 4
  %11 = load %struct._GString*, %struct._GString** %buffer16, align 8
  %12 = load i8*, i8** %string.addr, align 8
  %13 = load i32, i32* %len.addr, align 4
  %conv17 = sext i32 %13 to i64
  %call18 = call %struct._GString* @g_string_append_len(%struct._GString* %11, i8* %12, i64 %conv17)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.else.5, %if.then.8, %if.then.14, %if.end.12
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

; Function Attrs: inlinehint nounwind uwtable
define internal %struct._GString* @g_string_append_c_inline(%struct._GString* %gstring, i8 signext %c) #4 {
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
define void @gimp_config_writer_printf(%struct._GimpConfigWriter* %writer, i8* %format, ...) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %format.addr = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_config_writer_printf, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %format.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_config_writer_printf, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %2, i32 0, i32 3
  %3 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %3, null
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end.6
  br label %return

if.end.8:                                         ; preds = %do.end.6
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay9 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay9)
  %4 = load i8*, i8** %format.addr, align 8
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %call = call noalias i8* @g_strdup_vprintf(i8* %4, %struct.__va_list_tag* %arraydecay10)
  store i8* %call, i8** %buffer, align 8
  %arraydecay11 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1112 = bitcast %struct.__va_list_tag* %arraydecay11 to i8*
  call void @llvm.va_end(i8* %arraydecay1112)
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer13 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %5, i32 0, i32 4
  %6 = load %struct._GString*, %struct._GString** %buffer13, align 8
  %call14 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %6, i8 signext 32)
  %7 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer15 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %7, i32 0, i32 4
  %8 = load %struct._GString*, %struct._GString** %buffer15, align 8
  %9 = load i8*, i8** %buffer, align 8
  %call16 = call %struct._GString* @g_string_append(%struct._GString* %8, i8* %9)
  %10 = load i8*, i8** %buffer, align 8
  call void @g_free(i8* %10)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare noalias i8* @g_strdup_vprintf(i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

declare %struct._GString* @g_string_append(%struct._GString*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_config_writer_string(%struct._GimpConfigWriter* %writer, i8* %string) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %string.addr = alloca i8*, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %string, i8** %string.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_config_writer_string, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %1, i32 0, i32 3
  %2 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  br label %return

if.end.2:                                         ; preds = %do.end
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %3, i32 0, i32 4
  %4 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call = call %struct._GString* @g_string_append_c_inline(%struct._GString* %4, i8 signext 32)
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer3 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %5, i32 0, i32 4
  %6 = load %struct._GString*, %struct._GString** %buffer3, align 8
  %7 = load i8*, i8** %string.addr, align 8
  call void @gimp_config_string_append_escaped(%struct._GString* %6, i8* %7)
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.else
  ret void
}

declare void @gimp_config_string_append_escaped(%struct._GString*, i8*) #1

; Function Attrs: nounwind uwtable
define void @gimp_config_writer_identifier(%struct._GimpConfigWriter* %writer, i8* %identifier) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %identifier.addr = alloca i8*, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %identifier, i8** %identifier.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_config_writer_identifier, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i8*, i8** %identifier.addr, align 8
  %cmp2 = icmp ne i8* %1, null
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_config_writer_identifier, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %2, i32 0, i32 3
  %3 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %3, null
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %do.end.6
  br label %return

if.end.8:                                         ; preds = %do.end.6
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %4, i32 0, i32 4
  %5 = load %struct._GString*, %struct._GString** %buffer, align 8
  %6 = load i8*, i8** %identifier.addr, align 8
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %6)
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_config_writer_data(%struct._GimpConfigWriter* %writer, i32 %length, i8* %data) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %length.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_config_writer_data, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load i32, i32* %length.addr, align 4
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %do.body.1
  br label %if.end.5

if.else.4:                                        ; preds = %do.body.1
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_config_writer_data, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i32 0, i32 0))
  br label %return

if.end.5:                                         ; preds = %if.then.3
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %2 = load i8*, i8** %data.addr, align 8
  %cmp8 = icmp ne i8* %2, null
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.7
  br label %if.end.11

if.else.10:                                       ; preds = %do.body.7
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.gimp_config_writer_data, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0))
  br label %return

if.end.11:                                        ; preds = %if.then.9
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %3, i32 0, i32 3
  %4 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %4, null
  br i1 %tobool, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.end.12
  br label %return

if.end.14:                                        ; preds = %do.end.12
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %5, i32 0, i32 4
  %6 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call = call %struct._GString* @g_string_append(%struct._GString* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.14
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %length.addr, align 4
  %cmp15 = icmp slt i32 %7, %8
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %10, i64 %idxprom
  %11 = load i8, i8* %arrayidx, align 1
  %idxprom16 = zext i8 %11 to i64
  %12 = load i16*, i16** @g_ascii_table, align 8
  %arrayidx17 = getelementptr inbounds i16, i16* %12, i64 %idxprom16
  %13 = load i16, i16* %arrayidx17, align 2
  %conv = zext i16 %13 to i32
  %and = and i32 %conv, 2
  %cmp18 = icmp ne i32 %and, 0
  br i1 %cmp18, label %if.then.20, label %if.else.25

if.then.20:                                       ; preds = %for.body
  %14 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer21 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %14, i32 0, i32 4
  %15 = load %struct._GString*, %struct._GString** %buffer21, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %16 to i64
  %17 = load i8*, i8** %data.addr, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %17, i64 %idxprom22
  %18 = load i8, i8* %arrayidx23, align 1
  %call24 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %15, i8 signext %18)
  br label %if.end.30

if.else.25:                                       ; preds = %for.body
  %19 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer26 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %19, i32 0, i32 4
  %20 = load %struct._GString*, %struct._GString** %buffer26, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %21 to i64
  %22 = load i8*, i8** %data.addr, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %22, i64 %idxprom27
  %23 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %23 to i32
  call void (%struct._GString*, i8*, ...) @g_string_append_printf(%struct._GString* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i32 %conv29)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.25, %if.then.20
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %24 = load i32, i32* %i, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer31 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %25, i32 0, i32 4
  %26 = load %struct._GString*, %struct._GString** %buffer31, align 8
  %call32 = call %struct._GString* @g_string_append(%struct._GString* %26, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  br label %return

return:                                           ; preds = %for.end, %if.then.13, %if.else.10, %if.else.4, %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_config_writer_revert(%struct._GimpConfigWriter* %writer) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_config_writer_revert, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %1, i32 0, i32 3
  %2 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  br label %return

if.end.2:                                         ; preds = %do.end
  br label %do.body.3

do.body.3:                                        ; preds = %if.end.2
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %depth = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %3, i32 0, i32 6
  %4 = load i32, i32* %depth, align 4
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.7

if.else.6:                                        ; preds = %do.body.3
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_config_writer_revert, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0))
  br label %return

if.end.7:                                         ; preds = %if.then.5
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  br label %do.body.9

do.body.9:                                        ; preds = %do.end.8
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %marker = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %5, i32 0, i32 7
  %6 = load i32, i32* %marker, align 4
  %cmp10 = icmp ne i32 %6, -1
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body.9
  br label %if.end.13

if.else.12:                                       ; preds = %do.body.9
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_config_writer_revert, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i32 0, i32 0))
  br label %return

if.end.13:                                        ; preds = %if.then.11
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  %7 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %7, i32 0, i32 4
  %8 = load %struct._GString*, %struct._GString** %buffer, align 8
  %9 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %marker15 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %9, i32 0, i32 7
  %10 = load i32, i32* %marker15, align 4
  %conv = sext i32 %10 to i64
  %call = call %struct._GString* @g_string_truncate(%struct._GString* %8, i64 %conv)
  %11 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %depth16 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %11, i32 0, i32 6
  %12 = load i32, i32* %depth16, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %depth16, align 4
  %13 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %marker17 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %13, i32 0, i32 7
  store i32 -1, i32* %marker17, align 4
  br label %return

return:                                           ; preds = %do.end.14, %if.else.12, %if.else.6, %if.then.1, %if.else
  ret void
}

declare %struct._GString* @g_string_truncate(%struct._GString*, i64) #1

; Function Attrs: nounwind uwtable
define void @gimp_config_writer_close(%struct._GimpConfigWriter* %writer) #0 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_config_writer_close, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.17

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %1, i32 0, i32 3
  %2 = load %struct._GError*, %struct._GError** %error, align 8
  %tobool = icmp ne %struct._GError* %2, null
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %do.end
  br label %if.end.17

if.end.2:                                         ; preds = %do.end
  br label %do.body.3

do.body.3:                                        ; preds = %if.end.2
  %3 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %depth = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %3, i32 0, i32 6
  %4 = load i32, i32* %depth, align 4
  %cmp4 = icmp sgt i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.7

if.else.6:                                        ; preds = %do.body.3
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__func__.gimp_config_writer_close, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.17

if.end.7:                                         ; preds = %if.then.5
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %5, i32 0, i32 4
  %6 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call = call %struct._GString* @g_string_append_c_inline(%struct._GString* %6, i8 signext 41)
  %7 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %depth9 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %7, i32 0, i32 6
  %8 = load i32, i32* %depth9, align 4
  %dec = add nsw i32 %8, -1
  store i32 %dec, i32* %depth9, align 4
  %cmp10 = icmp eq i32 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %do.end.8
  %9 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer12 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %9, i32 0, i32 4
  %10 = load %struct._GString*, %struct._GString** %buffer12, align 8
  %call13 = call %struct._GString* @g_string_append_c_inline(%struct._GString* %10, i8 signext 10)
  %11 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %fd = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %11, i32 0, i32 0
  %12 = load i32, i32* %fd, align 4
  %tobool14 = icmp ne i32 %12, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.11
  %13 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_flush(%struct._GimpConfigWriter* %13)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.1, %if.else.6, %if.end.16, %do.end.8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @gimp_config_writer_flush(%struct._GimpConfigWriter* %writer) #4 {
entry:
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %fd = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %0, i32 0, i32 0
  %1 = load i32, i32* %fd, align 4
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %2, i32 0, i32 4
  %3 = load %struct._GString*, %struct._GString** %buffer, align 8
  %str = getelementptr inbounds %struct._GString, %struct._GString* %3, i32 0, i32 0
  %4 = load i8*, i8** %str, align 8
  %5 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer1 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %5, i32 0, i32 4
  %6 = load %struct._GString*, %struct._GString** %buffer1, align 8
  %len = getelementptr inbounds %struct._GString, %struct._GString* %6, i32 0, i32 1
  %7 = load i64, i64* %len, align 8
  %call = call i64 @write(i32 %1, i8* %4, i64 %7)
  %cmp = icmp slt i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %8, i32 0, i32 3
  %call2 = call i32 @gimp_config_error_quark() #7
  %call3 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0)) #6
  %9 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %filename = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %9, i32 0, i32 1
  %10 = load i8*, i8** %filename, align 8
  %call4 = call i8* @gimp_filename_to_utf8(i8* %10)
  %call5 = call i32* @__errno_location() #7
  %11 = load i32, i32* %call5, align 4
  %call6 = call i8* @g_strerror(i32 %11) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %error, i32 %call2, i32 2, i8* %call3, i8* %call4, i8* %call6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer7 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %12, i32 0, i32 4
  %13 = load %struct._GString*, %struct._GString** %buffer7, align 8
  %call8 = call %struct._GString* @g_string_truncate(%struct._GString* %13, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @gimp_config_writer_finish(%struct._GimpConfigWriter* %writer, i8* %footer, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %footer.addr = alloca i8*, align 8
  %error.addr = alloca %struct._GError**, align 8
  %success = alloca i32, align 4
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store i8* %footer, i8** %footer.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  store i32 1, i32* %success, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %cmp = icmp ne %struct._GimpConfigWriter* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_config_writer_finish, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %1 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %cmp2 = icmp eq %struct._GError** %1, null
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.body.1
  %2 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %3 = load %struct._GError*, %struct._GError** %2, align 8
  %cmp3 = icmp eq %struct._GError* %3, null
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %lor.lhs.false, %do.body.1
  br label %if.end.6

if.else.5:                                        ; preds = %lor.lhs.false
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @__func__.gimp_config_writer_finish, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.4
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %depth = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %4, i32 0, i32 6
  %5 = load i32, i32* %depth, align 4
  %cmp8 = icmp slt i32 %5, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.end.7
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.12

if.else.10:                                       ; preds = %do.end.7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else.10
  %6 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %depth11 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %6, i32 0, i32 6
  %7 = load i32, i32* %depth11, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_close(%struct._GimpConfigWriter* %8)
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.12

if.end.12:                                        ; preds = %while.end, %if.then.9
  %9 = load i8*, i8** %footer.addr, align 8
  %tobool13 = icmp ne i8* %9, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  call void @gimp_config_writer_linefeed(%struct._GimpConfigWriter* %10)
  %11 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %12 = load i8*, i8** %footer.addr, align 8
  call void @gimp_config_writer_comment(%struct._GimpConfigWriter* %11, i8* %12)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %13 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %fd = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %13, i32 0, i32 0
  %14 = load i32, i32* %fd, align 4
  %tobool16 = icmp ne i32 %14, 0
  br i1 %tobool16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.end.15
  %15 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %16 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call = call i32 @gimp_config_writer_close_file(%struct._GimpConfigWriter* %15, %struct._GError** %16)
  store i32 %call, i32* %success, align 4
  %17 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %filename = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %17, i32 0, i32 1
  %18 = load i8*, i8** %filename, align 8
  call void @g_free(i8* %18)
  %19 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %tmpname = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %19, i32 0, i32 2
  %20 = load i8*, i8** %tmpname, align 8
  call void @g_free(i8* %20)
  %21 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %buffer = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %21, i32 0, i32 4
  %22 = load %struct._GString*, %struct._GString** %buffer, align 8
  %call18 = call i8* @g_string_free(%struct._GString* %22, i32 1)
  br label %if.end.20

if.else.19:                                       ; preds = %if.end.15
  store i32 1, i32* %success, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.19, %if.then.17
  %23 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error21 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %23, i32 0, i32 3
  %24 = load %struct._GError*, %struct._GError** %error21, align 8
  %tobool22 = icmp ne %struct._GError* %24, null
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.20
  %25 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %26 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error24 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %26, i32 0, i32 3
  %27 = load %struct._GError*, %struct._GError** %error24, align 8
  call void @g_propagate_error(%struct._GError** %25, %struct._GError* %27)
  store i32 0, i32* %success, align 4
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.20
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.25
  %28 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %29 = bitcast %struct._GimpConfigWriter* %28 to i8*
  call void @g_slice_free1(i64 56, i8* %29)
  br label %do.end.27

do.end.27:                                        ; preds = %do.body.26
  %30 = load i32, i32* %success, align 4
  store i32 %30, i32* %retval
  br label %return

return:                                           ; preds = %do.end.27, %if.else.5, %if.else
  %31 = load i32, i32* %retval
  ret i32 %31
}

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
  call void @g_logv(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @gimp_config_writer_close_file(%struct._GimpConfigWriter* %writer, %struct._GError** %error) #0 {
entry:
  %retval = alloca i32, align 4
  %writer.addr = alloca %struct._GimpConfigWriter*, align 8
  %error.addr = alloca %struct._GError**, align 8
  store %struct._GimpConfigWriter* %writer, %struct._GimpConfigWriter** %writer.addr, align 8
  store %struct._GError** %error, %struct._GError*** %error.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %fd = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %0, i32 0, i32 0
  %1 = load i32, i32* %fd, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.gimp_config_writer_close_file, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %2 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %filename = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %2, i32 0, i32 1
  %3 = load i8*, i8** %filename, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  store i32 1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %do.end
  %4 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %error3 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %4, i32 0, i32 3
  %5 = load %struct._GError*, %struct._GError** %error3, align 8
  %tobool4 = icmp ne %struct._GError* %5, null
  br i1 %tobool4, label %if.then.5, label %if.end.12

if.then.5:                                        ; preds = %if.end.2
  %6 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %fd6 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %6, i32 0, i32 0
  %7 = load i32, i32* %fd6, align 4
  %call = call i32 @close(i32 %7)
  %8 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %tmpname = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %8, i32 0, i32 2
  %9 = load i8*, i8** %tmpname, align 8
  %tobool7 = icmp ne i8* %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.then.5
  %10 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %tmpname9 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %10, i32 0, i32 2
  %11 = load i8*, i8** %tmpname9, align 8
  %call10 = call i32 @g_unlink(i8* %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %if.then.5
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.2
  %12 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %tmpname13 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %12, i32 0, i32 2
  %13 = load i8*, i8** %tmpname13, align 8
  %tobool14 = icmp ne i8* %13, null
  br i1 %tobool14, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.12
  %14 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %filename15 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %14, i32 0, i32 1
  %15 = load i8*, i8** %filename15, align 8
  %call16 = call i32 @g_file_test(i8* %15, i32 16)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.34

if.then.18:                                       ; preds = %land.lhs.true
  %16 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %fd19 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %16, i32 0, i32 0
  %17 = load i32, i32* %fd19, align 4
  %call20 = call i32 @fsync(i32 %17)
  %cmp21 = icmp ne i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.33

if.then.22:                                       ; preds = %if.then.18
  %18 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call23 = call i32 @gimp_config_error_quark() #7
  %call24 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.30, i32 0, i32 0)) #6
  %19 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %filename25 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %19, i32 0, i32 1
  %20 = load i8*, i8** %filename25, align 8
  %call26 = call i8* @gimp_filename_to_utf8(i8* %20)
  %call27 = call i32* @__errno_location() #7
  %21 = load i32, i32* %call27, align 4
  %call28 = call i8* @g_strerror(i32 %21) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %18, i32 %call23, i32 2, i8* %call24, i8* %call26, i8* %call28)
  %22 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %fd29 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %22, i32 0, i32 0
  %23 = load i32, i32* %fd29, align 4
  %call30 = call i32 @close(i32 %23)
  %24 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %tmpname31 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %24, i32 0, i32 2
  %25 = load i8*, i8** %tmpname31, align 8
  %call32 = call i32 @g_unlink(i8* %25)
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.18
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %land.lhs.true, %if.end.12
  %26 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %fd35 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %26, i32 0, i32 0
  %27 = load i32, i32* %fd35, align 4
  %call36 = call i32 @close(i32 %27)
  %cmp37 = icmp ne i32 %call36, 0
  br i1 %cmp37, label %if.then.38, label %if.end.70

if.then.38:                                       ; preds = %if.end.34
  %28 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %tmpname39 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %28, i32 0, i32 2
  %29 = load i8*, i8** %tmpname39, align 8
  %tobool40 = icmp ne i8* %29, null
  br i1 %tobool40, label %if.then.41, label %if.else.62

if.then.41:                                       ; preds = %if.then.38
  %30 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %filename42 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %30, i32 0, i32 1
  %31 = load i8*, i8** %filename42, align 8
  %call43 = call i32 @g_file_test(i8* %31, i32 16)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.then.45, label %if.else.52

if.then.45:                                       ; preds = %if.then.41
  %32 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call46 = call i32 @gimp_config_error_quark() #7
  %call47 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.30, i32 0, i32 0)) #6
  %33 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %filename48 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %33, i32 0, i32 1
  %34 = load i8*, i8** %filename48, align 8
  %call49 = call i8* @gimp_filename_to_utf8(i8* %34)
  %call50 = call i32* @__errno_location() #7
  %35 = load i32, i32* %call50, align 4
  %call51 = call i8* @g_strerror(i32 %35) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %32, i32 %call46, i32 2, i8* %call47, i8* %call49, i8* %call51)
  br label %if.end.59

if.else.52:                                       ; preds = %if.then.41
  %36 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call53 = call i32 @gimp_config_error_quark() #7
  %call54 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.31, i32 0, i32 0)) #6
  %37 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %filename55 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %37, i32 0, i32 1
  %38 = load i8*, i8** %filename55, align 8
  %call56 = call i8* @gimp_filename_to_utf8(i8* %38)
  %call57 = call i32* @__errno_location() #7
  %39 = load i32, i32* %call57, align 4
  %call58 = call i8* @g_strerror(i32 %39) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %36, i32 %call53, i32 2, i8* %call54, i8* %call56, i8* %call58)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.52, %if.then.45
  %40 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %tmpname60 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %40, i32 0, i32 2
  %41 = load i8*, i8** %tmpname60, align 8
  %call61 = call i32 @g_unlink(i8* %41)
  br label %if.end.69

if.else.62:                                       ; preds = %if.then.38
  %42 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call63 = call i32 @gimp_config_error_quark() #7
  %call64 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0)) #6
  %43 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %filename65 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %43, i32 0, i32 1
  %44 = load i8*, i8** %filename65, align 8
  %call66 = call i8* @gimp_filename_to_utf8(i8* %44)
  %call67 = call i32* @__errno_location() #7
  %45 = load i32, i32* %call67, align 4
  %call68 = call i8* @g_strerror(i32 %45) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %42, i32 %call63, i32 2, i8* %call64, i8* %call66, i8* %call68)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.62, %if.end.59
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.34
  %46 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %tmpname71 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %46, i32 0, i32 2
  %47 = load i8*, i8** %tmpname71, align 8
  %tobool72 = icmp ne i8* %47, null
  br i1 %tobool72, label %if.then.73, label %if.end.88

if.then.73:                                       ; preds = %if.end.70
  %48 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %tmpname74 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %48, i32 0, i32 2
  %49 = load i8*, i8** %tmpname74, align 8
  %50 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %filename75 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %50, i32 0, i32 1
  %51 = load i8*, i8** %filename75, align 8
  %call76 = call i32 @rename(i8* %49, i8* %51) #6
  %cmp77 = icmp eq i32 %call76, -1
  br i1 %cmp77, label %if.then.78, label %if.end.87

if.then.78:                                       ; preds = %if.then.73
  %52 = load %struct._GError**, %struct._GError*** %error.addr, align 8
  %call79 = call i32 @gimp_config_error_quark() #7
  %call80 = call i8* @dgettext(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i32 0, i32 0)) #6
  %53 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %filename81 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %53, i32 0, i32 1
  %54 = load i8*, i8** %filename81, align 8
  %call82 = call i8* @gimp_filename_to_utf8(i8* %54)
  %call83 = call i32* @__errno_location() #7
  %55 = load i32, i32* %call83, align 4
  %call84 = call i8* @g_strerror(i32 %55) #7
  call void (%struct._GError**, i32, i32, i8*, ...) @g_set_error(%struct._GError** %52, i32 %call79, i32 2, i8* %call80, i8* %call82, i8* %call84)
  %56 = load %struct._GimpConfigWriter*, %struct._GimpConfigWriter** %writer.addr, align 8
  %tmpname85 = getelementptr inbounds %struct._GimpConfigWriter, %struct._GimpConfigWriter* %56, i32 0, i32 2
  %57 = load i8*, i8** %tmpname85, align 8
  %call86 = call i32 @g_unlink(i8* %57)
  store i32 0, i32* %retval
  br label %return

if.end.87:                                        ; preds = %if.then.73
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87, %if.end.70
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.88, %if.then.78, %if.end.69, %if.then.22, %if.end.11, %if.then.1, %if.else
  %58 = load i32, i32* %retval
  ret i32 %58
}

declare i8* @g_string_free(%struct._GString*, i32) #1

declare void @g_propagate_error(%struct._GError**, %struct._GError*) #1

declare void @g_slice_free1(i64, i8*) #1

declare i64 @write(i32, i8*, i64) #1

declare void @g_set_error_literal(%struct._GError**, i32, i32, i8*) #1

declare %struct._GString* @g_string_insert_c(%struct._GString*, i64, i8 signext) #1

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

declare i32 @close(i32) #1

declare i32 @g_unlink(i8*) #1

declare i32 @g_file_test(i8*, i32) #1

declare i32 @fsync(i32) #1

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
