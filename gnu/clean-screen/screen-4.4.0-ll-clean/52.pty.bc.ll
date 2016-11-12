; ModuleID = './pty.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pty_preopen = global i32 0, align 4
@PtyName = internal global [32 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"/dev/ptmx\00", align 1
@TtyName = internal global [32 x i8] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @InitPTY(i32 %f) #0 {
entry:
  %f.addr = alloca i32, align 4
  store i32 %f, i32* %f.addr, align 4
  %0 = load i32, i32* %f.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @OpenPTY(i8** %ttyn) #0 {
entry:
  %retval = alloca i32, align 4
  %ttyn.addr = alloca i8**, align 8
  %f = alloca i32, align 4
  %m = alloca i8*, align 8
  %sigcld = alloca void (i32)*, align 8
  store i8** %ttyn, i8*** %ttyn.addr, align 8
  %call = call i8* @strcpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @PtyName, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0)) #3
  %call1 = call i32 @getpt()
  store i32 %call1, i32* %f, align 4
  %cmp = icmp eq i32 %call1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call void (i32)* @xsignal(i32 17, void (i32)* null)
  store void (i32)* %call2, void (i32)** %sigcld, align 8
  %0 = load i32, i32* %f, align 4
  %call3 = call i8* @ptsname(i32 %0) #3
  store i8* %call3, i8** %m, align 8
  %cmp4 = icmp eq i8* %call3, null
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %1 = load i32, i32* %f, align 4
  %call5 = call i32 @grantpt(i32 %1) #3
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.9, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %f, align 4
  %call7 = call i32 @unlockpt(i32 %2) #3
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end
  %3 = load void (i32)*, void (i32)** %sigcld, align 8
  %call10 = call void (i32)* @xsignal(i32 17, void (i32)* %3)
  %4 = load i32, i32* %f, align 4
  %call11 = call i32 @close(i32 %4)
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false.6
  %5 = load void (i32)*, void (i32)** %sigcld, align 8
  %call13 = call void (i32)* @xsignal(i32 17, void (i32)* %5)
  %6 = load i8*, i8** %m, align 8
  %call14 = call i8* @strncpy(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @TtyName, i32 0, i32 0), i8* %6, i64 32) #3
  %7 = load i32, i32* %f, align 4
  call void @initmaster(i32 %7)
  %8 = load i8**, i8*** %ttyn.addr, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @TtyName, i32 0, i32 0), i8** %8, align 8
  %9 = load i32, i32* %f, align 4
  store i32 %9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.9, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @getpt() #2

declare void (i32)* @xsignal(i32, void (i32)*) #2

; Function Attrs: nounwind
declare i8* @ptsname(i32) #1

; Function Attrs: nounwind
declare i32 @grantpt(i32) #1

; Function Attrs: nounwind
declare i32 @unlockpt(i32) #1

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @initmaster(i32 %f) #0 {
entry:
  %f.addr = alloca i32, align 4
  store i32 %f, i32* %f.addr, align 4
  %0 = load i32, i32* %f.addr, align 4
  %call = call i32 @tcflush(i32 %0, i32 2) #3
  ret void
}

; Function Attrs: nounwind
declare i32 @tcflush(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
