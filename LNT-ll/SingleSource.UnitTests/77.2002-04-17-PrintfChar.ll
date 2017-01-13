; ModuleID = './SingleSource.UnitTests/77.2002-04-17-PrintfChar.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"'%c' '%c'\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"e\00", align 1

; Function Attrs: nounwind uwtable
define void @printArgsNoRet(i8 signext %a3, i8* %a5) #0 {
entry:
  %a3.addr = alloca i8, align 1
  %a5.addr = alloca i8*, align 8
  store i8 %a3, i8* %a3.addr, align 1
  store i8* %a5, i8** %a5.addr, align 8
  %0 = load i8, i8* %a3.addr, align 1
  %conv = sext i8 %0 to i32
  %1 = load i8*, i8** %a5.addr, align 8
  %2 = load i8, i8* %1, align 1
  %conv1 = sext i8 %2 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 %conv, i32 %conv1)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  call void @printArgsNoRet(i8 signext 99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
