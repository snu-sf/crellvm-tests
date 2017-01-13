; ModuleID = './MultiSource.Applications.ClamAV/51.libclamav_text.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.text = type { i8*, %struct.text* }
%struct.message = type { i32, i32*, i32, i8*, i32, i8**, i8*, %struct.text*, %struct.text*, %struct.cli_ctx*, i8, i8, i8, i32, i8, %struct.text*, %struct.text*, %struct.text*, %struct.text*, %struct.text* }
%struct.cli_ctx = type { i8**, i64*, %struct.cli_matcher*, %struct.cl_engine*, %struct.cl_limits*, i32, i32, i32, i32, %struct.cli_dconf* }
%struct.cli_matcher = type opaque
%struct.cl_engine = type { i32, i16, i32, i8**, i8**, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.cl_limits = type { i32, i32, i32, i32, i16, i64 }
%struct.cli_dconf = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.blob = type { i8*, i8*, i64, i64, i32 }
%struct.fileblob = type { %struct._IO_FILE*, %struct.blob, i8*, i8, i64, %struct.cli_ctx* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [29 x i8] c"textMove fails sanity check\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Couldn't grow the blob: we may be low on memory\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"textToFileBlob, destroy = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"textToFileBlob to %s, destroy = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"textAdd fails sanity check\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"textAdd: count = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @textDestroy(%struct.text* %t_head) #0 {
entry:
  %t_head.addr = alloca %struct.text*, align 8
  %t_next = alloca %struct.text*, align 8
  store %struct.text* %t_head, %struct.text** %t_head.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %tobool = icmp ne %struct.text* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next1 = getelementptr inbounds %struct.text, %struct.text* %1, i32 0, i32 1
  %2 = load %struct.text*, %struct.text** %t_next1, align 8
  store %struct.text* %2, %struct.text** %t_next, align 8
  %3 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %3, i32 0, i32 0
  %4 = load i8*, i8** %t_line, align 8
  %tobool2 = icmp ne i8* %4, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %5 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_line3 = getelementptr inbounds %struct.text, %struct.text* %5, i32 0, i32 0
  %6 = load i8*, i8** %t_line3, align 8
  %call = call i8* @lineUnlink(i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %8 = bitcast %struct.text* %7 to i8*
  call void @free(i8* %8) #4
  %9 = load %struct.text*, %struct.text** %t_next, align 8
  store %struct.text* %9, %struct.text** %t_head.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare i8* @lineUnlink(i8*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define %struct.text* @textAddMessage(%struct.text* %aText, %struct.message* %aMessage) #0 {
entry:
  %retval = alloca %struct.text*, align 8
  %aText.addr = alloca %struct.text*, align 8
  %aMessage.addr = alloca %struct.message*, align 8
  %anotherText = alloca %struct.text*, align 8
  store %struct.text* %aText, %struct.text** %aText.addr, align 8
  store %struct.message* %aMessage, %struct.message** %aMessage.addr, align 8
  %0 = load %struct.message*, %struct.message** %aMessage.addr, align 8
  %call = call i32 @messageGetEncoding(%struct.message* %0)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.text*, %struct.text** %aText.addr, align 8
  %2 = load %struct.message*, %struct.message** %aMessage.addr, align 8
  %call1 = call %struct.text* @messageGetBody(%struct.message* %2)
  %call2 = call %struct.text* @textAdd(%struct.text* %1, %struct.text* %call1)
  store %struct.text* %call2, %struct.text** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.message*, %struct.message** %aMessage.addr, align 8
  %call3 = call %struct.text* @messageToText(%struct.message* %3)
  store %struct.text* %call3, %struct.text** %anotherText, align 8
  %4 = load %struct.text*, %struct.text** %aText.addr, align 8
  %tobool = icmp ne %struct.text* %4, null
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %5 = load %struct.text*, %struct.text** %aText.addr, align 8
  %6 = load %struct.text*, %struct.text** %anotherText, align 8
  %call5 = call %struct.text* @textMove(%struct.text* %5, %struct.text* %6)
  store %struct.text* %call5, %struct.text** %retval
  br label %return

if.end:                                           ; preds = %if.else
  %7 = load %struct.text*, %struct.text** %anotherText, align 8
  store %struct.text* %7, %struct.text** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then.4, %if.then
  %8 = load %struct.text*, %struct.text** %retval
  ret %struct.text* %8
}

declare i32 @messageGetEncoding(%struct.message*) #1

; Function Attrs: nounwind uwtable
define internal %struct.text* @textAdd(%struct.text* %t_head, %struct.text* %t) #0 {
entry:
  %retval = alloca %struct.text*, align 8
  %t_head.addr = alloca %struct.text*, align 8
  %t.addr = alloca %struct.text*, align 8
  %ret = alloca %struct.text*, align 8
  %count = alloca i32, align 4
  store %struct.text* %t_head, %struct.text** %t_head.addr, align 8
  store %struct.text* %t, %struct.text** %t.addr, align 8
  %0 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %cmp = icmp eq %struct.text* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load %struct.text*, %struct.text** %t.addr, align 8
  %cmp1 = icmp eq %struct.text* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  store %struct.text* null, %struct.text** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %2 = load %struct.text*, %struct.text** %t.addr, align 8
  %call = call %struct.text* @textCopy(%struct.text* %2)
  store %struct.text* %call, %struct.text** %retval
  br label %return

if.end.3:                                         ; preds = %entry
  %3 = load %struct.text*, %struct.text** %t.addr, align 8
  %cmp4 = icmp eq %struct.text* %3, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %4 = load %struct.text*, %struct.text** %t_head.addr, align 8
  store %struct.text* %4, %struct.text** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %5 = load %struct.text*, %struct.text** %t_head.addr, align 8
  store %struct.text* %5, %struct.text** %ret, align 8
  store i32 0, i32* %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.6
  %6 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %6, i32 0, i32 1
  %7 = load %struct.text*, %struct.text** %t_next, align 8
  %tobool = icmp ne %struct.text* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load i32, i32* %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %count, align 4
  %9 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next7 = getelementptr inbounds %struct.text, %struct.text* %9, i32 0, i32 1
  %10 = load %struct.text*, %struct.text** %t_next7, align 8
  store %struct.text* %10, %struct.text** %t_head.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load i32, i32* %count, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i32 %11)
  br label %while.cond.8

while.cond.8:                                     ; preds = %if.end.20, %while.end
  %12 = load %struct.text*, %struct.text** %t.addr, align 8
  %tobool9 = icmp ne %struct.text* %12, null
  br i1 %tobool9, label %while.body.10, label %while.end.22

while.body.10:                                    ; preds = %while.cond.8
  %call11 = call i8* @cli_malloc(i64 16)
  %13 = bitcast i8* %call11 to %struct.text*
  %14 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next12 = getelementptr inbounds %struct.text, %struct.text* %14, i32 0, i32 1
  store %struct.text* %13, %struct.text** %t_next12, align 8
  %15 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next13 = getelementptr inbounds %struct.text, %struct.text* %15, i32 0, i32 1
  %16 = load %struct.text*, %struct.text** %t_next13, align 8
  store %struct.text* %16, %struct.text** %t_head.addr, align 8
  %17 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %17, i32 0, i32 0
  %18 = load i8*, i8** %t_line, align 8
  %tobool14 = icmp ne i8* %18, null
  br i1 %tobool14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %while.body.10
  %19 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_line16 = getelementptr inbounds %struct.text, %struct.text* %19, i32 0, i32 0
  %20 = load i8*, i8** %t_line16, align 8
  %call17 = call i8* @lineLink(i8* %20)
  %21 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_line18 = getelementptr inbounds %struct.text, %struct.text* %21, i32 0, i32 0
  store i8* %call17, i8** %t_line18, align 8
  br label %if.end.20

if.else:                                          ; preds = %while.body.10
  %22 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_line19 = getelementptr inbounds %struct.text, %struct.text* %22, i32 0, i32 0
  store i8* null, i8** %t_line19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.15
  %23 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next21 = getelementptr inbounds %struct.text, %struct.text* %23, i32 0, i32 1
  %24 = load %struct.text*, %struct.text** %t_next21, align 8
  store %struct.text* %24, %struct.text** %t.addr, align 8
  br label %while.cond.8

while.end.22:                                     ; preds = %while.cond.8
  %25 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next23 = getelementptr inbounds %struct.text, %struct.text* %25, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next23, align 8
  %26 = load %struct.text*, %struct.text** %ret, align 8
  store %struct.text* %26, %struct.text** %retval
  br label %return

return:                                           ; preds = %while.end.22, %if.then.5, %if.end, %if.then.2
  %27 = load %struct.text*, %struct.text** %retval
  ret %struct.text* %27
}

declare %struct.text* @messageGetBody(%struct.message*) #1

declare %struct.text* @messageToText(%struct.message*) #1

; Function Attrs: nounwind uwtable
define %struct.text* @textMove(%struct.text* %t_head, %struct.text* %t) #0 {
entry:
  %retval = alloca %struct.text*, align 8
  %t_head.addr = alloca %struct.text*, align 8
  %t.addr = alloca %struct.text*, align 8
  %ret = alloca %struct.text*, align 8
  store %struct.text* %t_head, %struct.text** %t_head.addr, align 8
  store %struct.text* %t, %struct.text** %t.addr, align 8
  %0 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %cmp = icmp eq %struct.text* %0, null
  br i1 %cmp, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %1 = load %struct.text*, %struct.text** %t.addr, align 8
  %cmp1 = icmp eq %struct.text* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  call void (i8*, ...) @cli_errmsg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  store %struct.text* null, %struct.text** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %call = call i8* @cli_malloc(i64 16)
  %2 = bitcast i8* %call to %struct.text*
  store %struct.text* %2, %struct.text** %t_head.addr, align 8
  %3 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %cmp3 = icmp eq %struct.text* %3, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store %struct.text* null, %struct.text** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %4, i32 0, i32 0
  %5 = load i8*, i8** %t_line, align 8
  %6 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_line6 = getelementptr inbounds %struct.text, %struct.text* %6, i32 0, i32 0
  store i8* %5, i8** %t_line6, align 8
  %7 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %7, i32 0, i32 1
  %8 = load %struct.text*, %struct.text** %t_next, align 8
  %9 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next7 = getelementptr inbounds %struct.text, %struct.text* %9, i32 0, i32 1
  store %struct.text* %8, %struct.text** %t_next7, align 8
  %10 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_line8 = getelementptr inbounds %struct.text, %struct.text* %10, i32 0, i32 0
  store i8* null, i8** %t_line8, align 8
  %11 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next9 = getelementptr inbounds %struct.text, %struct.text* %11, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next9, align 8
  %12 = load %struct.text*, %struct.text** %t_head.addr, align 8
  store %struct.text* %12, %struct.text** %retval
  br label %return

if.end.10:                                        ; preds = %entry
  %13 = load %struct.text*, %struct.text** %t.addr, align 8
  %cmp11 = icmp eq %struct.text* %13, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.10
  %14 = load %struct.text*, %struct.text** %t_head.addr, align 8
  store %struct.text* %14, %struct.text** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %15 = load %struct.text*, %struct.text** %t_head.addr, align 8
  store %struct.text* %15, %struct.text** %ret, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.13
  %16 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next14 = getelementptr inbounds %struct.text, %struct.text* %16, i32 0, i32 1
  %17 = load %struct.text*, %struct.text** %t_next14, align 8
  %tobool = icmp ne %struct.text* %17, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %18 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next15 = getelementptr inbounds %struct.text, %struct.text* %18, i32 0, i32 1
  %19 = load %struct.text*, %struct.text** %t_next15, align 8
  store %struct.text* %19, %struct.text** %t_head.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call16 = call i8* @cli_malloc(i64 16)
  %20 = bitcast i8* %call16 to %struct.text*
  %21 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next17 = getelementptr inbounds %struct.text, %struct.text* %21, i32 0, i32 1
  store %struct.text* %20, %struct.text** %t_next17, align 8
  %22 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next18 = getelementptr inbounds %struct.text, %struct.text* %22, i32 0, i32 1
  %23 = load %struct.text*, %struct.text** %t_next18, align 8
  %cmp19 = icmp eq %struct.text* %23, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %while.end
  store %struct.text* null, %struct.text** %retval
  br label %return

if.end.21:                                        ; preds = %while.end
  %24 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next22 = getelementptr inbounds %struct.text, %struct.text* %24, i32 0, i32 1
  %25 = load %struct.text*, %struct.text** %t_next22, align 8
  store %struct.text* %25, %struct.text** %t_head.addr, align 8
  %26 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_line23 = getelementptr inbounds %struct.text, %struct.text* %26, i32 0, i32 0
  %27 = load i8*, i8** %t_line23, align 8
  %tobool24 = icmp ne i8* %27, null
  br i1 %tobool24, label %if.then.25, label %if.else

if.then.25:                                       ; preds = %if.end.21
  %28 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_line26 = getelementptr inbounds %struct.text, %struct.text* %28, i32 0, i32 0
  %29 = load i8*, i8** %t_line26, align 8
  %30 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_line27 = getelementptr inbounds %struct.text, %struct.text* %30, i32 0, i32 0
  store i8* %29, i8** %t_line27, align 8
  %31 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_line28 = getelementptr inbounds %struct.text, %struct.text* %31, i32 0, i32 0
  store i8* null, i8** %t_line28, align 8
  br label %if.end.30

if.else:                                          ; preds = %if.end.21
  %32 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_line29 = getelementptr inbounds %struct.text, %struct.text* %32, i32 0, i32 0
  store i8* null, i8** %t_line29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.25
  %33 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next31 = getelementptr inbounds %struct.text, %struct.text* %33, i32 0, i32 1
  %34 = load %struct.text*, %struct.text** %t_next31, align 8
  %35 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next32 = getelementptr inbounds %struct.text, %struct.text* %35, i32 0, i32 1
  store %struct.text* %34, %struct.text** %t_next32, align 8
  %36 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next33 = getelementptr inbounds %struct.text, %struct.text* %36, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next33, align 8
  %37 = load %struct.text*, %struct.text** %ret, align 8
  store %struct.text* %37, %struct.text** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.20, %if.then.12, %if.end.5, %if.then.4, %if.then.2
  %38 = load %struct.text*, %struct.text** %retval
  ret %struct.text* %38
}

declare void @cli_errmsg(i8*, ...) #1

declare i8* @cli_malloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.blob* @textToBlob(%struct.text* %t, %struct.blob* %b, i32 %destroy) #0 {
entry:
  %retval = alloca %struct.blob*, align 8
  %t.addr = alloca %struct.text*, align 8
  %b.addr = alloca %struct.blob*, align 8
  %destroy.addr = alloca i32, align 4
  %s = alloca i64, align 8
  %bin = alloca %struct.blob*, align 8
  store %struct.text* %t, %struct.text** %t.addr, align 8
  store %struct.blob* %b, %struct.blob** %b.addr, align 8
  store i32 %destroy, i32* %destroy.addr, align 4
  %0 = load %struct.text*, %struct.text** %t.addr, align 8
  %cmp = icmp eq %struct.text* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.blob* null, %struct.blob** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %s, align 8
  %1 = load %struct.text*, %struct.text** %t.addr, align 8
  %2 = bitcast i64* %s to i8*
  %call = call i8* @textIterate(%struct.text* %1, void (i8*, i8*)* @getLength, i8* %2, i32 0)
  %3 = load i64, i64* %s, align 8
  %cmp1 = icmp eq i64 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.blob*, %struct.blob** %b.addr, align 8
  store %struct.blob* %4, %struct.blob** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %5 = load %struct.blob*, %struct.blob** %b.addr, align 8
  store %struct.blob* %5, %struct.blob** %bin, align 8
  %6 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %cmp4 = icmp eq %struct.blob* %6, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct.blob* @blobCreate()
  store %struct.blob* %call6, %struct.blob** %b.addr, align 8
  %7 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %cmp7 = icmp eq %struct.blob* %7, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  store %struct.blob* null, %struct.blob** %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.3
  %8 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %9 = load i64, i64* %s, align 8
  %call11 = call i32 @blobGrow(%struct.blob* %8, i64 %9)
  %cmp12 = icmp ne i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.10
  call void (i8*, ...) @cli_warnmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i32 0, i32 0))
  %10 = load %struct.blob*, %struct.blob** %bin, align 8
  %cmp14 = icmp eq %struct.blob* %10, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %11 = load %struct.blob*, %struct.blob** %b.addr, align 8
  call void @blobDestroy(%struct.blob* %11)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  store %struct.blob* null, %struct.blob** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %12 = load %struct.text*, %struct.text** %t.addr, align 8
  %13 = load %struct.blob*, %struct.blob** %b.addr, align 8
  %14 = bitcast %struct.blob* %13 to i8*
  %15 = load i32, i32* %destroy.addr, align 4
  %call18 = call i8* @textIterate(%struct.text* %12, void (i8*, i8*)* @addToBlob, i8* %14, i32 %15)
  %16 = load i32, i32* %destroy.addr, align 4
  %tobool = icmp ne i32 %16, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end.17
  %17 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %17, i32 0, i32 1
  %18 = load %struct.text*, %struct.text** %t_next, align 8
  %tobool19 = icmp ne %struct.text* %18, null
  br i1 %tobool19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %land.lhs.true
  %19 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next21 = getelementptr inbounds %struct.text, %struct.text* %19, i32 0, i32 1
  %20 = load %struct.text*, %struct.text** %t_next21, align 8
  call void @textDestroy(%struct.text* %20)
  %21 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next22 = getelementptr inbounds %struct.text, %struct.text* %21, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %land.lhs.true, %if.end.17
  %22 = load %struct.blob*, %struct.blob** %b.addr, align 8
  call void @blobClose(%struct.blob* %22)
  %23 = load %struct.blob*, %struct.blob** %b.addr, align 8
  store %struct.blob* %23, %struct.blob** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.end.16, %if.then.8, %if.then.2, %if.then
  %24 = load %struct.blob*, %struct.blob** %retval
  ret %struct.blob* %24
}

; Function Attrs: nounwind uwtable
define internal i8* @textIterate(%struct.text* %t_text, void (i8*, i8*)* %cb, i8* %arg, i32 %destroy) #0 {
entry:
  %t_text.addr = alloca %struct.text*, align 8
  %cb.addr = alloca void (i8*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %destroy.addr = alloca i32, align 4
  store %struct.text* %t_text, %struct.text** %t_text.addr, align 8
  store void (i8*, i8*)* %cb, void (i8*, i8*)** %cb.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 %destroy, i32* %destroy.addr, align 4
  %0 = load i32, i32* %destroy.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %1 = load %struct.text*, %struct.text** %t_text.addr, align 8
  %tobool1 = icmp ne %struct.text* %1, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load void (i8*, i8*)*, void (i8*, i8*)** %cb.addr, align 8
  %3 = load %struct.text*, %struct.text** %t_text.addr, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %3, i32 0, i32 0
  %4 = load i8*, i8** %t_line, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  call void %2(i8* %4, i8* %5)
  %6 = load %struct.text*, %struct.text** %t_text.addr, align 8
  %t_line2 = getelementptr inbounds %struct.text, %struct.text* %6, i32 0, i32 0
  %7 = load i8*, i8** %t_line2, align 8
  %tobool3 = icmp ne i8* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %while.body
  %8 = load %struct.text*, %struct.text** %t_text.addr, align 8
  %t_line5 = getelementptr inbounds %struct.text, %struct.text* %8, i32 0, i32 0
  %9 = load i8*, i8** %t_line5, align 8
  %call = call i8* @lineUnlink(i8* %9)
  %10 = load %struct.text*, %struct.text** %t_text.addr, align 8
  %t_line6 = getelementptr inbounds %struct.text, %struct.text* %10, i32 0, i32 0
  store i8* null, i8** %t_line6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %while.body
  %11 = load %struct.text*, %struct.text** %t_text.addr, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %11, i32 0, i32 1
  %12 = load %struct.text*, %struct.text** %t_next, align 8
  store %struct.text* %12, %struct.text** %t_text.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.13

if.else:                                          ; preds = %entry
  br label %while.cond.7

while.cond.7:                                     ; preds = %while.body.9, %if.else
  %13 = load %struct.text*, %struct.text** %t_text.addr, align 8
  %tobool8 = icmp ne %struct.text* %13, null
  br i1 %tobool8, label %while.body.9, label %while.end.12

while.body.9:                                     ; preds = %while.cond.7
  %14 = load void (i8*, i8*)*, void (i8*, i8*)** %cb.addr, align 8
  %15 = load %struct.text*, %struct.text** %t_text.addr, align 8
  %t_line10 = getelementptr inbounds %struct.text, %struct.text* %15, i32 0, i32 0
  %16 = load i8*, i8** %t_line10, align 8
  %17 = load i8*, i8** %arg.addr, align 8
  call void %14(i8* %16, i8* %17)
  %18 = load %struct.text*, %struct.text** %t_text.addr, align 8
  %t_next11 = getelementptr inbounds %struct.text, %struct.text* %18, i32 0, i32 1
  %19 = load %struct.text*, %struct.text** %t_next11, align 8
  store %struct.text* %19, %struct.text** %t_text.addr, align 8
  br label %while.cond.7

while.end.12:                                     ; preds = %while.cond.7
  br label %if.end.13

if.end.13:                                        ; preds = %while.end.12, %while.end
  %20 = load i8*, i8** %arg.addr, align 8
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define internal void @getLength(i8* %line, i8* %arg) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %length = alloca i64*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to i64*
  store i64* %1, i64** %length, align 8
  %2 = load i8*, i8** %line.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %line.addr, align 8
  %call = call i8* @lineGetData(i8* %3)
  %call1 = call i64 @strlen(i8* %call) #5
  %add = add i64 %call1, 1
  %4 = load i64*, i64** %length, align 8
  %5 = load i64, i64* %4, align 8
  %add2 = add i64 %5, %add
  store i64 %add2, i64* %4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load i64*, i64** %length, align 8
  %7 = load i64, i64* %6, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %6, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.blob* @blobCreate() #1

declare i32 @blobGrow(%struct.blob*, i64) #1

declare void @cli_warnmsg(i8*, ...) #1

declare void @blobDestroy(%struct.blob*) #1

; Function Attrs: nounwind uwtable
define internal void @addToBlob(i8* %line, i8* %arg) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %b = alloca %struct.blob*, align 8
  %l = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to %struct.blob*
  store %struct.blob* %1, %struct.blob** %b, align 8
  %2 = load i8*, i8** %line.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %line.addr, align 8
  %call = call i8* @lineGetData(i8* %3)
  store i8* %call, i8** %l, align 8
  %4 = load %struct.blob*, %struct.blob** %b, align 8
  %5 = load i8*, i8** %l, align 8
  %6 = load i8*, i8** %l, align 8
  %call1 = call i64 @strlen(i8* %6) #5
  %call2 = call i32 @blobAddData(%struct.blob* %4, i8* %5, i64 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.blob*, %struct.blob** %b, align 8
  %call3 = call i32 @blobAddData(%struct.blob* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i64 1)
  ret void
}

declare void @blobClose(%struct.blob*) #1

; Function Attrs: nounwind uwtable
define %struct.fileblob* @textToFileblob(%struct.text* %t, %struct.fileblob* %fb, i32 %destroy) #0 {
entry:
  %retval = alloca %struct.fileblob*, align 8
  %t.addr = alloca %struct.text*, align 8
  %fb.addr = alloca %struct.fileblob*, align 8
  %destroy.addr = alloca i32, align 4
  store %struct.text* %t, %struct.text** %t.addr, align 8
  store %struct.fileblob* %fb, %struct.fileblob** %fb.addr, align 8
  store i32 %destroy, i32* %destroy.addr, align 4
  %0 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %cmp = icmp eq %struct.fileblob* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %destroy.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 %1)
  %call = call %struct.fileblob* @fileblobCreate()
  store %struct.fileblob* %call, %struct.fileblob** %fb.addr, align 8
  %2 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %cmp1 = icmp eq %struct.fileblob* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store %struct.fileblob* null, %struct.fileblob** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.else:                                          ; preds = %entry
  %3 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %call3 = call i8* @fileblobGetFilename(%struct.fileblob* %3)
  %4 = load i32, i32* %destroy.addr, align 4
  call void (i8*, ...) @cli_dbgmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i8* %call3, i32 %4)
  %5 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %ctx = getelementptr inbounds %struct.fileblob, %struct.fileblob* %5, i32 0, i32 5
  store %struct.cli_ctx* null, %struct.cli_ctx** %ctx, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.end
  %6 = load %struct.text*, %struct.text** %t.addr, align 8
  %7 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  %8 = bitcast %struct.fileblob* %7 to i8*
  %9 = load i32, i32* %destroy.addr, align 4
  %call5 = call i8* @textIterate(%struct.text* %6, void (i8*, i8*)* @addToFileblob, i8* %8, i32 %9)
  %10 = bitcast i8* %call5 to %struct.fileblob*
  store %struct.fileblob* %10, %struct.fileblob** %fb.addr, align 8
  %11 = load i32, i32* %destroy.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end.4
  %12 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %12, i32 0, i32 1
  %13 = load %struct.text*, %struct.text** %t_next, align 8
  %tobool6 = icmp ne %struct.text* %13, null
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %land.lhs.true
  %14 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next8 = getelementptr inbounds %struct.text, %struct.text* %14, i32 0, i32 1
  %15 = load %struct.text*, %struct.text** %t_next8, align 8
  call void @textDestroy(%struct.text* %15)
  %16 = load %struct.text*, %struct.text** %t.addr, align 8
  %t_next9 = getelementptr inbounds %struct.text, %struct.text* %16, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next9, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.7, %land.lhs.true, %if.end.4
  %17 = load %struct.fileblob*, %struct.fileblob** %fb.addr, align 8
  store %struct.fileblob* %17, %struct.fileblob** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.2
  %18 = load %struct.fileblob*, %struct.fileblob** %retval
  ret %struct.fileblob* %18
}

declare void @cli_dbgmsg(i8*, ...) #1

declare %struct.fileblob* @fileblobCreate() #1

declare i8* @fileblobGetFilename(%struct.fileblob*) #1

; Function Attrs: nounwind uwtable
define internal void @addToFileblob(i8* %line, i8* %arg) #0 {
entry:
  %line.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %fb = alloca %struct.fileblob*, align 8
  %l = alloca i8*, align 8
  store i8* %line, i8** %line.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to %struct.fileblob*
  store %struct.fileblob* %1, %struct.fileblob** %fb, align 8
  %2 = load i8*, i8** %line.addr, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i8*, i8** %line.addr, align 8
  %call = call i8* @lineGetData(i8* %3)
  store i8* %call, i8** %l, align 8
  %4 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %5 = load i8*, i8** %l, align 8
  %6 = load i8*, i8** %l, align 8
  %call1 = call i64 @strlen(i8* %6) #5
  %call2 = call i32 @fileblobAddData(%struct.fileblob* %4, i8* %5, i64 %call1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.fileblob*, %struct.fileblob** %fb, align 8
  %call3 = call i32 @fileblobAddData(%struct.fileblob* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i64 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.text* @textCopy(%struct.text* %t_head) #0 {
entry:
  %retval = alloca %struct.text*, align 8
  %t_head.addr = alloca %struct.text*, align 8
  %first = alloca %struct.text*, align 8
  %last = alloca %struct.text*, align 8
  store %struct.text* %t_head, %struct.text** %t_head.addr, align 8
  store %struct.text* null, %struct.text** %first, align 8
  store %struct.text* null, %struct.text** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.16, %entry
  %0 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %tobool = icmp ne %struct.text* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.text*, %struct.text** %first, align 8
  %cmp = icmp eq %struct.text* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %call = call i8* @cli_malloc(i64 16)
  %2 = bitcast i8* %call to %struct.text*
  store %struct.text* %2, %struct.text** %first, align 8
  store %struct.text* %2, %struct.text** %last, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  %call1 = call i8* @cli_malloc(i64 16)
  %3 = bitcast i8* %call1 to %struct.text*
  %4 = load %struct.text*, %struct.text** %last, align 8
  %t_next = getelementptr inbounds %struct.text, %struct.text* %4, i32 0, i32 1
  store %struct.text* %3, %struct.text** %t_next, align 8
  %5 = load %struct.text*, %struct.text** %last, align 8
  %t_next2 = getelementptr inbounds %struct.text, %struct.text* %5, i32 0, i32 1
  %6 = load %struct.text*, %struct.text** %t_next2, align 8
  store %struct.text* %6, %struct.text** %last, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.text*, %struct.text** %last, align 8
  %cmp3 = icmp eq %struct.text* %7, null
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.text*, %struct.text** %first, align 8
  %tobool5 = icmp ne %struct.text* %8, null
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.4
  %9 = load %struct.text*, %struct.text** %first, align 8
  call void @textDestroy(%struct.text* %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.4
  store %struct.text* null, %struct.text** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %10 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_line = getelementptr inbounds %struct.text, %struct.text* %10, i32 0, i32 0
  %11 = load i8*, i8** %t_line, align 8
  %tobool9 = icmp ne i8* %11, null
  br i1 %tobool9, label %if.then.10, label %if.else.14

if.then.10:                                       ; preds = %if.end.8
  %12 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_line11 = getelementptr inbounds %struct.text, %struct.text* %12, i32 0, i32 0
  %13 = load i8*, i8** %t_line11, align 8
  %call12 = call i8* @lineLink(i8* %13)
  %14 = load %struct.text*, %struct.text** %last, align 8
  %t_line13 = getelementptr inbounds %struct.text, %struct.text* %14, i32 0, i32 0
  store i8* %call12, i8** %t_line13, align 8
  br label %if.end.16

if.else.14:                                       ; preds = %if.end.8
  %15 = load %struct.text*, %struct.text** %last, align 8
  %t_line15 = getelementptr inbounds %struct.text, %struct.text* %15, i32 0, i32 0
  store i8* null, i8** %t_line15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.14, %if.then.10
  %16 = load %struct.text*, %struct.text** %t_head.addr, align 8
  %t_next17 = getelementptr inbounds %struct.text, %struct.text* %16, i32 0, i32 1
  %17 = load %struct.text*, %struct.text** %t_next17, align 8
  store %struct.text* %17, %struct.text** %t_head.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.text*, %struct.text** %first, align 8
  %tobool18 = icmp ne %struct.text* %18, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %while.end
  %19 = load %struct.text*, %struct.text** %last, align 8
  %t_next20 = getelementptr inbounds %struct.text, %struct.text* %19, i32 0, i32 1
  store %struct.text* null, %struct.text** %t_next20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %while.end
  %20 = load %struct.text*, %struct.text** %first, align 8
  store %struct.text* %20, %struct.text** %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.end.7
  %21 = load %struct.text*, %struct.text** %retval
  ret %struct.text* %21
}

declare i8* @lineLink(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i8* @lineGetData(i8*) #1

declare i32 @blobAddData(%struct.blob*, i8*, i64) #1

declare i32 @fileblobAddData(%struct.fileblob*, i8*, i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
