; ModuleID = './lib/document.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s <%s>\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"<a href=\22mailto:%2$s\22>%1$s</a>\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"@@\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"url(\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [6 x i8] c")url(\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c")url\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"samp(\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c")samp\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"emph(\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c")emph\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"code(\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c")code\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"@example\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"@end example\0A\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"@end example\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"@itemize\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"@end itemize\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"@item\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"<a href=\22\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"\22>\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"</a>\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"<emph>\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"</emph>'\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"`<code>\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"</code>'\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"<code>\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"</code>\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"@example\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"<pre>\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"</pre>\00", align 1
@.str.41 = private unnamed_addr constant [9 x i8] c"@itemize\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"<ul>\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"</ul>\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"<li>\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"@emph{\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"@samp{\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"@code{\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"@href{\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"@itemize @minus\00", align 1
@.str.52 = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.53 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.54 = private unnamed_addr constant [14 x i8] c"Akim Demaille\00", align 1

; Function Attrs: nounwind uwtable
define void @authors_print_plain(i8* %authors, %struct._IO_FILE* %stream, i8* %before) #0 {
entry:
  %authors.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %before.addr = alloca i8*, align 8
  store i8* %authors, i8** %authors.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %before, i8** %before.addr, align 8
  %0 = load i8*, i8** %authors.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %2 = load i8*, i8** %before.addr, align 8
  call void @authors_print(i8* %0, %struct._IO_FILE* %1, i8* %2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @authors_print(i8* %authors, %struct._IO_FILE* %stream, i8* %before, i8* %author_fmt, i8* %between, i8* %after) #1 {
entry:
  %authors.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %before.addr = alloca i8*, align 8
  %author_fmt.addr = alloca i8*, align 8
  %between.addr = alloca i8*, align 8
  %after.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  %author = alloca i8*, align 8
  %email = alloca i8*, align 8
  %first = alloca i8, align 1
  %_tmp_ = alloca i8*, align 8
  store i8* %authors, i8** %authors.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %before, i8** %before.addr, align 8
  store i8* %author_fmt, i8** %author_fmt.addr, align 8
  store i8* %between, i8** %between.addr, align 8
  store i8* %after, i8** %after.addr, align 8
  store i8 1, i8* %first, align 1
  %0 = load i8*, i8** %authors.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %if.end.22

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %1 = load i8*, i8** %authors.addr, align 8
  store i8* %1, i8** %_tmp_, align 8
  %2 = load i8*, i8** %_tmp_, align 8
  %call = call i64 @strlen(i8* %2) #5
  %add = add i64 %call, 1
  %mul = mul i64 1, %add
  %3 = alloca i8, i64 %mul
  store i8* %3, i8** %cp, align 8
  %4 = load i8*, i8** %cp, align 8
  %5 = load i8*, i8** %_tmp_, align 8
  %call1 = call i8* @strcpy(i8* %4, i8* %5) #6
  br label %do.end

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %cp, align 8
  %call2 = call i8* @strtok(i8* %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #6
  store i8* %call2, i8** %cp, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %do.end
  %7 = load i8*, i8** %cp, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i8*, i8** %cp, align 8
  store i8* %8, i8** %author, align 8
  %9 = load i8*, i8** %author, align 8
  %10 = load i8*, i8** %author, align 8
  %call4 = call i64 @strcspn(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.52, i32 0, i32 0)) #5
  %add.ptr = getelementptr inbounds i8, i8* %9, i64 %call4
  store i8* %add.ptr, i8** %email, align 8
  %11 = load i8*, i8** %email, align 8
  %add.ptr5 = getelementptr inbounds i8, i8* %11, i64 -1
  store i8 0, i8* %add.ptr5, align 1
  %12 = load i8*, i8** %email, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %email, align 8
  %13 = load i8*, i8** %email, align 8
  %14 = load i8*, i8** %email, align 8
  %call6 = call i64 @strcspn(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.53, i32 0, i32 0)) #5
  %add.ptr7 = getelementptr inbounds i8, i8* %13, i64 %call6
  store i8 0, i8* %add.ptr7, align 1
  %15 = load i8*, i8** %email, align 8
  %add.ptr8 = getelementptr inbounds i8, i8* %15, i64 -1
  store i8 0, i8* %add.ptr8, align 1
  %16 = load i8*, i8** %author, align 8
  %call9 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.54, i32 0, i32 0)) #5
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.end.17, label %if.then.10

if.then.10:                                       ; preds = %while.body
  %17 = load i8, i8* %first, align 1
  %tobool11 = trunc i8 %17 to i1
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.10
  %18 = load i8*, i8** %before.addr, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call13 = call i32 @fputs(i8* %18, %struct._IO_FILE* %19)
  store i8 0, i8* %first, align 1
  br label %if.end.15

if.else:                                          ; preds = %if.then.10
  %20 = load i8*, i8** %between.addr, align 8
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call14 = call i32 @fputs(i8* %20, %struct._IO_FILE* %21)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %23 = load i8*, i8** %author_fmt.addr, align 8
  %24 = load i8*, i8** %author, align 8
  %25 = load i8*, i8** %email, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* %23, i8* %24, i8* %25)
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.15, %while.body
  %call18 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0)) #6
  store i8* %call18, i8** %cp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %26 = load i8, i8* %first, align 1
  %tobool19 = trunc i8 %26 to i1
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %while.end
  %27 = load i8*, i8** %after.addr, align 8
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %call21 = call i32 @fputs(i8* %27, %struct._IO_FILE* %28)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then, %if.then.20, %while.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @authors_print_html(i8* %authors, %struct._IO_FILE* %stream, i8* %before) #0 {
entry:
  %authors.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %before.addr = alloca i8*, align 8
  store i8* %authors, i8** %authors.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %before, i8** %before.addr, align 8
  %0 = load i8*, i8** %authors.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %2 = load i8*, i8** %before.addr, align 8
  call void @authors_print(i8* %0, %struct._IO_FILE* %1, i8* %2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @authors_print_texinfo(i8* %authors, %struct._IO_FILE* %stream, i8* %before) #0 {
entry:
  %authors.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %before.addr = alloca i8*, align 8
  %cp = alloca i8*, align 8
  store i8* %authors, i8** %authors.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i8* %before, i8** %before.addr, align 8
  %0 = load i8*, i8** %authors.addr, align 8
  %call = call i8* (i8*, ...) @xvstrrpl(i8* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* null)
  store i8* %call, i8** %cp, align 8
  %1 = load i8*, i8** %cp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load i8*, i8** %before.addr, align 8
  call void @authors_print(i8* %1, %struct._IO_FILE* %2, i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %4 = load i8*, i8** %cp, align 8
  call void @free(i8* %4) #6
  ret void
}

declare i8* @xvstrrpl(i8*, ...) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @documentation_print_plain(i8* %documentation, i8* %format, %struct._IO_FILE* %stream) #0 {
entry:
  %documentation.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  store i8* %documentation, i8** %documentation.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8*, i8** %documentation.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %documentation.addr, align 8
  %call = call i8* (i8*, ...) @xvstrrpl(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* null)
  store i8* %call, i8** %cp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load i8*, i8** %format.addr, align 8
  %4 = load i8*, i8** %cp, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3, i8* %4)
  %5 = load i8*, i8** %cp, align 8
  call void @free(i8* %5) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @documentation_print_html(i8* %documentation, i8* %format, %struct._IO_FILE* %stream) #0 {
entry:
  %documentation.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  store i8* %documentation, i8** %documentation.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8*, i8** %documentation.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %documentation.addr, align 8
  %call = call i8* (i8*, ...) @xvstrrpl(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* null)
  store i8* %call, i8** %cp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load i8*, i8** %format.addr, align 8
  %4 = load i8*, i8** %cp, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3, i8* %4)
  %5 = load i8*, i8** %cp, align 8
  call void @free(i8* %5) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @documentation_print_texinfo(i8* %documentation, i8* %format, %struct._IO_FILE* %stream) #0 {
entry:
  %documentation.addr = alloca i8*, align 8
  %format.addr = alloca i8*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %cp = alloca i8*, align 8
  store i8* %documentation, i8** %documentation.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i8*, i8** %documentation.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %documentation.addr, align 8
  %call = call i8* (i8*, ...) @xvstrrpl(i8* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), i8* null)
  store i8* %call, i8** %cp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %3 = load i8*, i8** %format.addr, align 8
  %4 = load i8*, i8** %cp, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* %3, i8* %4)
  %5 = load i8*, i8** %cp, align 8
  call void @free(i8* %5) #6
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i64 @strcspn(i8*, i8*) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

declare i32 @fputs(i8*, %struct._IO_FILE*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
