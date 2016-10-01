; ModuleID = './MultiSource.Benchmarks.ASC_Sequoia/14.AMGmk.hypre_error.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hypre__global_error = global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"[No error] \00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"[Generic error] \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"[Memory error] \00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"[Error in argument %d] \00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"[Method did not converge] \00", align 1

; Function Attrs: nounwind uwtable
define void @hypre_error_handler(i8* %filename, i32 %line, i32 %ierr) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %ierr.addr = alloca i32, align 4
  store i8* %filename, i8** %filename.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store i32 %ierr, i32* %ierr.addr, align 4
  %0 = load i32, i32* %ierr.addr, align 4
  %1 = load i32, i32* @hypre__global_error, align 4
  %or = or i32 %1, %0
  store i32 %or, i32* @hypre__global_error, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @HYPRE_GetError() #0 {
entry:
  %0 = load i32, i32* @hypre__global_error, align 4
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define i32 @HYPRE_CheckError(i32 %ierr, i32 %hypre_error_code) #0 {
entry:
  %ierr.addr = alloca i32, align 4
  %hypre_error_code.addr = alloca i32, align 4
  store i32 %ierr, i32* %ierr.addr, align 4
  store i32 %hypre_error_code, i32* %hypre_error_code.addr, align 4
  %0 = load i32, i32* %ierr.addr, align 4
  %1 = load i32, i32* %hypre_error_code.addr, align 4
  %and = and i32 %0, %1
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define void @HYPRE_DescribeError(i32 %ierr, i8* %msg) #0 {
entry:
  %ierr.addr = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  store i32 %ierr, i32* %ierr.addr, align 4
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load i32, i32* %ierr.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0)) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %ierr.addr, align 4
  %and = and i32 %2, 1
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.3

if.then.1:                                        ; preds = %if.end
  %3 = load i8*, i8** %msg.addr, align 8
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0)) #2
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.1, %if.end
  %4 = load i32, i32* %ierr.addr, align 4
  %and4 = and i32 %4, 2
  %tobool5 = icmp ne i32 %and4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.3
  %5 = load i8*, i8** %msg.addr, align 8
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0)) #2
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.3
  %6 = load i32, i32* %ierr.addr, align 4
  %and9 = and i32 %6, 4
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.8
  %7 = load i8*, i8** %msg.addr, align 8
  %call12 = call i32 @HYPRE_GetErrorArg()
  %call13 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i32 0, i32 0), i32 %call12) #2
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.11, %if.end.8
  %8 = load i32, i32* %ierr.addr, align 4
  %and15 = and i32 %8, 256
  %tobool16 = icmp ne i32 %and15, 0
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.14
  %9 = load i8*, i8** %msg.addr, align 8
  %call18 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0)) #2
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.end.14
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @HYPRE_GetErrorArg() #0 {
entry:
  %0 = load i32, i32* @hypre__global_error, align 4
  %shr = ashr i32 %0, 3
  %and = and i32 %shr, 31
  ret i32 %and
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
