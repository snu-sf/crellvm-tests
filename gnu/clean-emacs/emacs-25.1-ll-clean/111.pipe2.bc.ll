; ModuleID = './lib/pipe2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rpl_pipe2.have_pipe2_really = internal global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @rpl_pipe2(i32* nonnull %fd, i32 %flags) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32*, align 8
  %flags.addr = alloca i32, align 4
  %tmp = alloca [2 x i32], align 4
  %result = alloca i32, align 4
  %fcntl_flags = alloca i32, align 4
  %fcntl_flags43 = alloca i32, align 4
  %saved_errno = alloca i32, align 4
  store i32* %fd, i32** %fd.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  %0 = load i32*, i32** %fd.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 0
  %1 = load i32, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [2 x i32], [2 x i32]* %tmp, i32 0, i64 0
  store i32 %1, i32* %arrayidx1, align 4
  %2 = load i32*, i32** %fd.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %2, i64 1
  %3 = load i32, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %tmp, i32 0, i64 1
  store i32 %3, i32* %arrayidx3, align 4
  %4 = load i32, i32* @rpl_pipe2.have_pipe2_really, align 4
  %cmp = icmp sge i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %5 = load i32*, i32** %fd.addr, align 8
  %6 = load i32, i32* %flags.addr, align 4
  %call = call i32 @pipe2(i32* %5, i32 %6) #4
  store i32 %call, i32* %result, align 4
  %7 = load i32, i32* %result, align 4
  %cmp5 = icmp slt i32 %7, 0
  br i1 %cmp5, label %land.lhs.true, label %if.then.8

land.lhs.true:                                    ; preds = %if.then
  %call6 = call i32* @__errno_location() #5
  %8 = load i32, i32* %call6, align 4
  %cmp7 = icmp eq i32 %8, 38
  br i1 %cmp7, label %if.end, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true, %if.then
  store i32 1, i32* @rpl_pipe2.have_pipe2_really, align 4
  %9 = load i32, i32* %result, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  store i32 -1, i32* @rpl_pipe2.have_pipe2_really, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %10 = load i32, i32* %flags.addr, align 4
  %and = and i32 %10, -526337
  %cmp10 = icmp ne i32 %and, 0
  br i1 %cmp10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %call12 = call i32* @__errno_location() #5
  store i32 22, i32* %call12, align 4
  store i32 -1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %11 = load i32*, i32** %fd.addr, align 8
  %call14 = call i32 @pipe(i32* %11) #4
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %12 = load i32, i32* %flags.addr, align 4
  %and18 = and i32 %12, 2048
  %tobool = icmp ne i32 %and18, 0
  br i1 %tobool, label %if.then.19, label %if.end.38

if.then.19:                                       ; preds = %if.end.17
  %13 = load i32*, i32** %fd.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %13, i64 1
  %14 = load i32, i32* %arrayidx21, align 4
  %call22 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %14, i32 3, i32 0)
  store i32 %call22, i32* %fcntl_flags, align 4
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then.36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.19
  %15 = load i32*, i32** %fd.addr, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %15, i64 1
  %16 = load i32, i32* %arrayidx24, align 4
  %17 = load i32, i32* %fcntl_flags, align 4
  %or = or i32 %17, 2048
  %call25 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %16, i32 4, i32 %or)
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then.36, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false
  %18 = load i32*, i32** %fd.addr, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %18, i64 0
  %19 = load i32, i32* %arrayidx28, align 4
  %call29 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %19, i32 3, i32 0)
  store i32 %call29, i32* %fcntl_flags, align 4
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.36, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.27
  %20 = load i32*, i32** %fd.addr, align 8
  %arrayidx32 = getelementptr inbounds i32, i32* %20, i64 0
  %21 = load i32, i32* %arrayidx32, align 4
  %22 = load i32, i32* %fcntl_flags, align 4
  %or33 = or i32 %22, 2048
  %call34 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %21, i32 4, i32 %or33)
  %cmp35 = icmp eq i32 %call34, -1
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %lor.lhs.false.31, %lor.lhs.false.27, %lor.lhs.false, %if.then.19
  br label %fail

if.end.37:                                        ; preds = %lor.lhs.false.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.17
  %23 = load i32, i32* %flags.addr, align 4
  %and39 = and i32 %23, 524288
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.63

if.then.41:                                       ; preds = %if.end.38
  %24 = load i32*, i32** %fd.addr, align 8
  %arrayidx44 = getelementptr inbounds i32, i32* %24, i64 1
  %25 = load i32, i32* %arrayidx44, align 4
  %call45 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %25, i32 1, i32 0)
  store i32 %call45, i32* %fcntl_flags43, align 4
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.61, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %if.then.41
  %26 = load i32*, i32** %fd.addr, align 8
  %arrayidx48 = getelementptr inbounds i32, i32* %26, i64 1
  %27 = load i32, i32* %arrayidx48, align 4
  %28 = load i32, i32* %fcntl_flags43, align 4
  %or49 = or i32 %28, 1
  %call50 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %27, i32 2, i32 %or49)
  %cmp51 = icmp eq i32 %call50, -1
  br i1 %cmp51, label %if.then.61, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.47
  %29 = load i32*, i32** %fd.addr, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %29, i64 0
  %30 = load i32, i32* %arrayidx53, align 4
  %call54 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %30, i32 1, i32 0)
  store i32 %call54, i32* %fcntl_flags43, align 4
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.61, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.52
  %31 = load i32*, i32** %fd.addr, align 8
  %arrayidx57 = getelementptr inbounds i32, i32* %31, i64 0
  %32 = load i32, i32* %arrayidx57, align 4
  %33 = load i32, i32* %fcntl_flags43, align 4
  %or58 = or i32 %33, 1
  %call59 = call i32 (i32, i32, ...) @rpl_fcntl(i32 %32, i32 2, i32 %or58)
  %cmp60 = icmp eq i32 %call59, -1
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %lor.lhs.false.56, %lor.lhs.false.52, %lor.lhs.false.47, %if.then.41
  br label %fail

if.end.62:                                        ; preds = %lor.lhs.false.56
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62, %if.end.38
  store i32 0, i32* %retval
  br label %return

fail:                                             ; preds = %if.then.61, %if.then.36
  %call65 = call i32* @__errno_location() #5
  %34 = load i32, i32* %call65, align 4
  store i32 %34, i32* %saved_errno, align 4
  %35 = load i32*, i32** %fd.addr, align 8
  %arrayidx66 = getelementptr inbounds i32, i32* %35, i64 0
  %36 = load i32, i32* %arrayidx66, align 4
  %call67 = call i32 @close(i32 %36)
  %37 = load i32*, i32** %fd.addr, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %37, i64 1
  %38 = load i32, i32* %arrayidx68, align 4
  %call69 = call i32 @close(i32 %38)
  %arrayidx70 = getelementptr inbounds [2 x i32], [2 x i32]* %tmp, i32 0, i64 0
  %39 = load i32, i32* %arrayidx70, align 4
  %40 = load i32*, i32** %fd.addr, align 8
  %arrayidx71 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %39, i32* %arrayidx71, align 4
  %arrayidx72 = getelementptr inbounds [2 x i32], [2 x i32]* %tmp, i32 0, i64 1
  %41 = load i32, i32* %arrayidx72, align 4
  %42 = load i32*, i32** %fd.addr, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %arrayidx73, align 4
  %43 = load i32, i32* %saved_errno, align 4
  %call74 = call i32* @__errno_location() #5
  store i32 %43, i32* %call74, align 4
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %fail, %if.end.63, %if.then.16, %if.then.11, %if.then.8
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind
declare i32 @pipe2(i32*, i32) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare i32 @pipe(i32*) #1

declare i32 @rpl_fcntl(i32, i32, ...) #3

declare i32 @close(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
