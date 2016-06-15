; ModuleID = 'file.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"file.c\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s%c%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind uwtable
define i8* @FileDirname(i8* %file) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %dirname = alloca i8*, align 8
  %lastslash = alloca i8*, align 8
  %len = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #4
  store i8* %call, i8** %lastslash, align 8
  %1 = load i8*, i8** %lastslash, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i8*, i8** %lastslash, align 8
  %3 = load i8*, i8** %file.addr, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %2 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %3 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %conv, %cond.false ]
  store i32 %cond, i32* %len, align 4
  %4 = load i32, i32* %len, align 4
  %add = add nsw i32 %4, 2
  %conv1 = sext i32 %add to i64
  %mul = mul i64 1, %conv1
  %call2 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 73, i64 %mul)
  store i8* %call2, i8** %dirname, align 8
  %5 = load i32, i32* %len, align 4
  %cmp3 = icmp sgt i32 %5, 0
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %6 = load i8*, i8** %dirname, align 8
  %7 = load i8*, i8** %file.addr, align 8
  %8 = load i32, i32* %len, align 4
  %conv5 = sext i32 %8 to i64
  %call6 = call i8* @strncpy(i8* %6, i8* %7, i64 %conv5) #5
  br label %if.end.12

if.else:                                          ; preds = %cond.end
  %9 = load i8*, i8** %file.addr, align 8
  %10 = load i8, i8* %9, align 1
  %conv7 = sext i8 %10 to i32
  %cmp8 = icmp ne i32 %conv7, 47
  br i1 %cmp8, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.else
  %11 = load i8*, i8** %dirname, align 8
  store i8 46, i8* %11, align 1
  store i32 1, i32* %len, align 4
  br label %if.end

if.else.11:                                       ; preds = %if.else
  %12 = load i8*, i8** %dirname, align 8
  store i8 47, i8* %12, align 1
  store i32 1, i32* %len, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.10
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then
  %13 = load i32, i32* %len, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8*, i8** %dirname, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %15 = load i8*, i8** %dirname, align 8
  ret i8* %15
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #1

declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #3

; Function Attrs: nounwind uwtable
define i8* @FileTail(i8* %file, i32 %noextension) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %noextension.addr = alloca i32, align 4
  %tail = alloca i8*, align 8
  %lastslash = alloca i8*, align 8
  %lastdot = alloca i8*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %noextension, i32* %noextension.addr, align 4
  %0 = load i8*, i8** %file.addr, align 8
  %call = call i8* @strrchr(i8* %0, i32 47) #4
  store i8* %call, i8** %lastslash, align 8
  %1 = load i8*, i8** %file.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #4
  %add = add i64 %call1, 1
  %mul = mul i64 1, %add
  %call2 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 105, i64 %mul)
  store i8* %call2, i8** %tail, align 8
  %2 = load i8*, i8** %lastslash, align 8
  %cmp = icmp eq i8* %2, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %tail, align 8
  %4 = load i8*, i8** %file.addr, align 8
  %call3 = call i8* @strcpy(i8* %3, i8* %4) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %5 = load i8*, i8** %tail, align 8
  %6 = load i8*, i8** %lastslash, align 8
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 1
  %call4 = call i8* @strcpy(i8* %5, i8* %add.ptr) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* %noextension.addr, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end
  %8 = load i8*, i8** %tail, align 8
  %call6 = call i8* @strrchr(i8* %8, i32 46) #4
  store i8* %call6, i8** %lastdot, align 8
  %cmp7 = icmp ne i8* %call6, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  %9 = load i8*, i8** %lastdot, align 8
  store i8 0, i8* %9, align 1
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %10 = load i8*, i8** %tail, align 8
  ret i8* %10
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @FileSameDirectory(i8* %file1, i8* %file2) #0 {
entry:
  %file1.addr = alloca i8*, align 8
  %file2.addr = alloca i8*, align 8
  %path = alloca i8*, align 8
  %tail = alloca i8*, align 8
  %result = alloca i8*, align 8
  %seems_ok = alloca i32, align 4
  store i8* %file1, i8** %file1.addr, align 8
  store i8* %file2, i8** %file2.addr, align 8
  store i32 1, i32* %seems_ok, align 4
  %0 = load i8*, i8** %file1.addr, align 8
  %call = call i8* @FileDirname(i8* %0)
  store i8* %call, i8** %path, align 8
  %1 = load i8*, i8** %file2.addr, align 8
  %call1 = call i8* @FileTail(i8* %1, i32 0)
  store i8* %call1, i8** %tail, align 8
  %2 = load i8*, i8** %file2.addr, align 8
  %3 = load i8*, i8** %tail, align 8
  %call2 = call i32 @strcmp(i8* %2, i8* %3) #4
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %seems_ok, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %path, align 8
  %5 = load i8*, i8** %tail, align 8
  %call3 = call i8* @FileConcat(i8* %4, i8* %5)
  store i8* %call3, i8** %result, align 8
  %6 = load i32, i32* %seems_ok, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.end.7, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %7 = load i8*, i8** %result, align 8
  %8 = load i8*, i8** %file2.addr, align 8
  %call4 = call i32 @strcmp(i8* %7, i8* %8) #4
  %cmp5 = icmp ne i32 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %land.lhs.true
  %9 = load i8*, i8** %result, align 8
  call void @free(i8* %9) #5
  store i8* null, i8** %result, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %land.lhs.true, %if.end
  %10 = load i8*, i8** %path, align 8
  call void @free(i8* %10) #5
  %11 = load i8*, i8** %tail, align 8
  call void @free(i8* %11) #5
  %12 = load i8*, i8** %result, align 8
  ret i8* %12
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8* @FileConcat(i8* %dir, i8* %file) #0 {
entry:
  %dir.addr = alloca i8*, align 8
  %file.addr = alloca i8*, align 8
  %full = alloca i8*, align 8
  store i8* %dir, i8** %dir.addr, align 8
  store i8* %file, i8** %file.addr, align 8
  %0 = load i8*, i8** %dir.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %1 = load i8*, i8** %file.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #4
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 2
  %mul = mul i64 1, %add2
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 170, i64 %mul)
  store i8* %call3, i8** %full, align 8
  %2 = load i8*, i8** %file.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load i8*, i8** %full, align 8
  %5 = load i8*, i8** %file.addr, align 8
  %call5 = call i8* @strcpy(i8* %4, i8* %5) #5
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i8*, i8** %full, align 8
  %7 = load i8*, i8** %dir.addr, align 8
  %8 = load i8*, i8** %file.addr, align 8
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* %7, i32 47, i8* %8) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i8*, i8** %full, align 8
  ret i8* %9
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define i8* @FileAddSuffix(i8* %filename, i8* %sfx) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %sfx.addr = alloca i8*, align 8
  %new = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %sfx, i8** %sfx.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %1 = load i8*, i8** %sfx.addr, align 8
  %call1 = call i64 @strlen(i8* %1) #4
  %add = add i64 %call, %call1
  %add2 = add i64 %add, 2
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 190, i64 %add2)
  store i8* %call3, i8** %new, align 8
  %2 = load i8*, i8** %new, align 8
  %3 = load i8*, i8** %filename.addr, align 8
  %4 = load i8*, i8** %sfx.addr, align 8
  %call4 = call i32 (i8*, i8*, ...) @sprintf(i8* %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* %3, i8* %4) #5
  %5 = load i8*, i8** %new, align 8
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @EnvFileOpen(i8* %fname, i8* %env, i8** %ret_dir) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %fname.addr = alloca i8*, align 8
  %env.addr = alloca i8*, align 8
  %ret_dir.addr = alloca i8**, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %path = alloca i8*, align 8
  %s = alloca i8*, align 8
  %full = alloca [1024 x i8], align 16
  store i8* %fname, i8** %fname.addr, align 8
  store i8* %env, i8** %env.addr, align 8
  store i8** %ret_dir, i8*** %ret_dir.addr, align 8
  %0 = load i8*, i8** %env.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %env.addr, align 8
  %call = call i8* @getenv(i8* %1) #5
  %call1 = call i8* @Strdup(i8* %call)
  store i8* %call1, i8** %path, align 8
  %cmp2 = icmp eq i8* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %2 = load i8*, i8** %path, align 8
  %call5 = call i8* @strtok(i8* %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %call5, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.21, %if.end.4
  %3 = load i8*, i8** %s, align 8
  %cmp6 = icmp ne i8* %3, null
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i8*, i8** %fname.addr, align 8
  %call7 = call i64 @strlen(i8* %4) #4
  %conv = trunc i64 %call7 to i32
  %5 = load i8*, i8** %s, align 8
  %call8 = call i64 @strlen(i8* %5) #4
  %conv9 = trunc i64 %call8 to i32
  %add = add nsw i32 %conv, %conv9
  %add10 = add nsw i32 %add, 2
  %cmp11 = icmp sgt i32 %add10, 1024
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %while.body
  %6 = load i8*, i8** %path, align 8
  call void @free(i8* %6) #5
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.14:                                        ; preds = %while.body
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %full, i32 0, i32 0
  %7 = load i8*, i8** %s, align 8
  %8 = load i8*, i8** %fname.addr, align 8
  %call15 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* %7, i32 47, i8* %8) #5
  %arraydecay16 = getelementptr inbounds [1024 x i8], [1024 x i8]* %full, i32 0, i32 0
  %call17 = call %struct._IO_FILE* @fopen(i8* %arraydecay16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call17, %struct._IO_FILE** %fp, align 8
  %cmp18 = icmp ne %struct._IO_FILE* %call17, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.14
  br label %while.end

if.end.21:                                        ; preds = %if.end.14
  %call22 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  store i8* %call22, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.20, %while.cond
  %9 = load i8**, i8*** %ret_dir.addr, align 8
  %cmp23 = icmp ne i8** %9, null
  br i1 %cmp23, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %while.end
  %10 = load i8*, i8** %s, align 8
  %call26 = call i8* @Strdup(i8* %10)
  %11 = load i8**, i8*** %ret_dir.addr, align 8
  store i8* %call26, i8** %11, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %while.end
  %12 = load i8*, i8** %path, align 8
  call void @free(i8* %12) #5
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  store %struct._IO_FILE* %13, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.13, %if.then.3, %if.then
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %14
}

declare i8* @Strdup(i8*) #2

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @FileExists(i8* %filename) #0 {
entry:
  %retval = alloca i32, align 4
  %filename.addr = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  %call = call %struct._IO_FILE* @fopen(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %tobool = icmp ne %struct._IO_FILE* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call1 = call i32 @fclose(%struct._IO_FILE* %1)
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare i32 @fclose(%struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
