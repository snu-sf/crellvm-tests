; ModuleID = './MultiSource.Applications.spiff/12.misc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@_Z_qflag = internal global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"spiff -- \00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Out of Memory\0A\00", align 1
@Z_err_buf = common global [1024 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [41 x i8] c"The files differ in more than %d places\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @Z_setquiet() #0 {
entry:
  store i32 1, i32* @_Z_qflag, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Z_chatter(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i32, i32* @_Z_qflag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %1)
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 @fputs(i8* %2, %struct._IO_FILE* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @Z_complain(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i32, i32* @_Z_qflag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %str.addr, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* %1, %struct._IO_FILE* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Z_qfatal(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void (...) @V_cleanup()
  call void (...) @O_cleanup()
  %0 = load i8*, i8** %str.addr, align 8
  call void @Z_complain(i8* %0)
  call void @_Z_errexit()
  ret void
}

declare void @V_cleanup(...) #1

declare void @O_cleanup(...) #1

; Function Attrs: nounwind uwtable
define void @Z_fatal(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  call void (...) @V_cleanup()
  call void (...) @O_cleanup()
  %0 = load i8*, i8** %str.addr, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 @fputs(i8* %0, %struct._IO_FILE* %1)
  call void @_Z_errexit()
  ret void
}

; Function Attrs: nounwind uwtable
define i32* @_Z_myalloc(i32 %k) #0 {
entry:
  %retval = alloca i32*, align 8
  %k.addr = alloca i32, align 4
  %tmp = alloca i32*, align 8
  store i32 %k, i32* %k.addr, align 4
  %0 = load i32, i32* %k.addr, align 4
  %conv = zext i32 %0 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 1) #4
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %tmp, align 8
  %cmp = icmp ne i32* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %tmp, align 8
  store i32* %2, i32** %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @Z_fatal(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  %3 = load i32*, i32** %tmp, align 8
  store i32* %3, i32** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32*, i32** %retval
  ret i32* %4
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @Z_exceed(i32 %d) #0 {
entry:
  %d.addr = alloca i32, align 4
  store i32 %d, i32* %d.addr, align 4
  %0 = load i32, i32* %d.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i32 0, i32 0), i32 %0) #4
  call void @_Z_qfatal(i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @Z_err_buf, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal void @_Z_errexit() #0 {
entry:
  call void @exit(i32 2) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
