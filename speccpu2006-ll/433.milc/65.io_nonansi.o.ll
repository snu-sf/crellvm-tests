; ModuleID = 'io_nonansi.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [48 x i8] c"g_open: Node %d. Append not supported in PIOFS\0A\00", align 1
@this_node = external global i32, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"g_open: Node %d. mode %s not recognized\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"g_open: Node %d error %d opening %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"g_open: Node %d can't malloc fp\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @g_open(i8* %filename, i8* %mode) #0 {
entry:
  %retval = alloca %struct._IO_FILE*, align 8
  %filename.addr = alloca i8*, align 8
  %mode.addr = alloca i8*, align 8
  %fd = alloca i32, align 4
  %oflg = alloca i32, align 4
  %fp = alloca i32*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %mode, i8** %mode.addr, align 8
  %0 = load i8*, i8** %mode.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 97
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @this_node, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i32 0, i32 0), i32 %2)
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %mode.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %3, i64 0
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 119
  br i1 %cmp4, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %if.else
  store i32 65, i32* %oflg, align 4
  br label %if.end.20

if.else.7:                                        ; preds = %if.else
  %5 = load i8*, i8** %mode.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %5, i64 0
  %6 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv9, 114
  br i1 %cmp10, label %if.then.12, label %if.else.17

if.then.12:                                       ; preds = %if.else.7
  store i32 0, i32* %oflg, align 4
  %7 = load i8*, i8** %mode.addr, align 8
  %call13 = call i8* @strchr(i8* %7, i32 43) #5
  %cmp14 = icmp ne i8* %call13, null
  br i1 %cmp14, label %if.then.16, label %if.end

if.then.16:                                       ; preds = %if.then.12
  store i32 2, i32* %oflg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.16, %if.then.12
  br label %if.end.19

if.else.17:                                       ; preds = %if.else.7
  %8 = load i32, i32* @this_node, align 4
  %9 = load i8*, i8** %mode.addr, align 8
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i32 0, i32 0), i32 %8, i8* %9)
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.19:                                        ; preds = %if.end
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.then.6
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20
  %10 = load i8*, i8** %filename.addr, align 8
  %11 = load i32, i32* %oflg, align 4
  %call22 = call i32 (i8*, i32, ...) @open(i8* %10, i32 %11, i32 420)
  store i32 %call22, i32* %fd, align 4
  %cmp23 = icmp eq i32 %call22, -1
  br i1 %cmp23, label %if.then.25, label %if.end.28

if.then.25:                                       ; preds = %if.end.21
  %12 = load i32, i32* @this_node, align 4
  %call26 = call i32* @__errno_location() #6
  %13 = load i32, i32* %call26, align 4
  %14 = load i8*, i8** %filename.addr, align 8
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0), i32 %12, i32 %13, i8* %14)
  store %struct._IO_FILE* null, %struct._IO_FILE** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.21
  %call29 = call noalias i8* @calloc(i64 1, i64 4) #7
  %15 = bitcast i8* %call29 to i32*
  store i32* %15, i32** %fp, align 8
  %16 = load i32*, i32** %fp, align 8
  %cmp30 = icmp eq i32* %16, null
  br i1 %cmp30, label %if.then.32, label %if.end.35

if.then.32:                                       ; preds = %if.end.28
  %17 = load i32, i32* @this_node, align 4
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0), i32 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call34 = call i32 @fflush(%struct._IO_FILE* %18)
  call void @terminate(i32 1)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.32, %if.end.28
  %19 = load i32, i32* %fd, align 4
  %20 = load i32*, i32** %fp, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %fp, align 8
  %22 = bitcast i32* %21 to %struct._IO_FILE*
  store %struct._IO_FILE* %22, %struct._IO_FILE** %retval
  br label %return

return:                                           ; preds = %if.end.35, %if.then.25, %if.else.17, %if.then
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %retval
  ret %struct._IO_FILE* %23
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #2

declare i32 @open(i8*, i32, ...) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #4

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @terminate(i32) #1

; Function Attrs: nounwind uwtable
define i32 @g_seek(%struct._IO_FILE* %stream, i64 %offset, i32 %whence) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %offset.addr = alloca i64, align 8
  %whence.addr = alloca i32, align 4
  %fd = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %whence, i32* %whence.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = bitcast %struct._IO_FILE* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %4 = load i64, i64* %offset.addr, align 8
  %5 = load i32, i32* %whence.addr, align 4
  %call = call i64 @lseek(i32 %3, i64 %4, i32 %5) #7
  %conv = trunc i64 %call to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) #4

; Function Attrs: nounwind uwtable
define i64 @g_write(i8* %ptr, i64 %size, i64 %nmemb, %struct._IO_FILE* %stream) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %nmemb.addr = alloca i64, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %fd = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = bitcast %struct._IO_FILE* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i64, i64* %size.addr, align 8
  %6 = load i64, i64* %nmemb.addr, align 8
  %mul = mul i64 %5, %6
  %conv = trunc i64 %mul to i32
  %conv1 = sext i32 %conv to i64
  %call = call i64 @write(i32 %3, i8* %4, i64 %conv1)
  %7 = load i64, i64* %size.addr, align 8
  %div = udiv i64 %call, %7
  ret i64 %div
}

declare i64 @write(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i64 @g_read(i8* %ptr, i64 %size, i64 %nmemb, %struct._IO_FILE* %stream) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %nmemb.addr = alloca i64, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %fd = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  store i64 %nmemb, i64* %nmemb.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = bitcast %struct._IO_FILE* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %4 = load i8*, i8** %ptr.addr, align 8
  %5 = load i64, i64* %size.addr, align 8
  %6 = load i64, i64* %nmemb.addr, align 8
  %mul = mul i64 %5, %6
  %conv = trunc i64 %mul to i32
  %conv1 = sext i32 %conv to i64
  %call = call i64 @read(i32 %3, i8* %4, i64 %conv1)
  %7 = load i64, i64* %size.addr, align 8
  %div = udiv i64 %call, %7
  ret i64 %div
}

declare i64 @read(i32, i8*, i64) #1

; Function Attrs: nounwind uwtable
define i32 @g_close(%struct._IO_FILE* %stream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %fd = alloca i32, align 4
  %status = alloca i32, align 4
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %1 = bitcast %struct._IO_FILE* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %fd, align 4
  %3 = load i32, i32* %fd, align 4
  %call = call i32 @close(i32 %3)
  store i32 %call, i32* %status, align 4
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %5 = bitcast %struct._IO_FILE* %4 to i8*
  call void @free(i8* %5) #7
  %6 = load i32, i32* %status, align 4
  ret i32 %6
}

declare i32 @close(i32) #1

; Function Attrs: nounwind
declare void @free(i8*) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
