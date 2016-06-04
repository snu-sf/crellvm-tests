; ModuleID = 'xstrerror.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@xstrerror_buf = internal global [43 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [23 x i8] c"undocumented error #%d\00", align 1

; Function Attrs: nounwind uwtable
define i8* @xstrerror(i32 %errnum) #0 {
entry:
  %errnum.addr = alloca i32, align 4
  %errstr = alloca i8*, align 8
  store i32 %errnum, i32* %errnum.addr, align 4
  %0 = load i32, i32* %errnum.addr, align 4
  %call = call i8* @strerror(i32 %0)
  store i8* %call, i8** %errstr, align 8
  %1 = load i8*, i8** %errstr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %errnum.addr, align 4
  %call1 = call i32 (i8*, i8*, ...) @sprintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @xstrerror_buf, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %2) #3
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @xstrerror_buf, i32 0, i32 0), i8** %errstr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8*, i8** %errstr, align 8
  ret i8* %3
}

declare i8* @strerror(i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
