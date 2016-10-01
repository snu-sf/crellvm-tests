; ModuleID = './SingleSource.UnitTests/8.2002-05-19-DivTest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @testL(i64 %Arg) #0 {
entry:
  %Arg.addr = alloca i64, align 8
  store i64 %Arg, i64* %Arg.addr, align 8
  %0 = load i64, i64* %Arg.addr, align 8
  %div = sdiv i64 %0, 16
  %conv = trunc i64 %div to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %conv)
  %1 = load i64, i64* %Arg.addr, align 8
  %div1 = sdiv i64 %1, 70368744177664
  %conv2 = trunc i64 %div1 to i32
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %conv2)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @test(i32 %Arg) #0 {
entry:
  %Arg.addr = alloca i32, align 4
  store i32 %Arg, i32* %Arg.addr, align 4
  %0 = load i32, i32* %Arg.addr, align 4
  %div = sdiv i32 %0, 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %div)
  %1 = load i32, i32* %Arg.addr, align 4
  %div1 = sdiv i32 %1, 16
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %div1)
  %2 = load i32, i32* %Arg.addr, align 4
  %div3 = sdiv i32 %2, 262144
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %div3)
  %3 = load i32, i32* %Arg.addr, align 4
  %div5 = sdiv i32 %3, 1073741824
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %div5)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %B20 = alloca i32, align 4
  %B53 = alloca i64, align 8
  store i32 0, i32* %retval
  store i32 -1048576, i32* %B20, align 4
  store i64 -9007199254740992, i64* %B53, align 8
  %0 = load i32, i32* %B20, align 4
  %add = add nsw i32 %0, 32
  call void @test(i32 %add)
  %1 = load i32, i32* %B20, align 4
  %add1 = add nsw i32 %1, 33
  call void @test(i32 %add1)
  %2 = load i64, i64* %B53, align 8
  %add2 = add nsw i64 %2, 64
  call void @testL(i64 %add2)
  %3 = load i64, i64* %B53, align 8
  %add3 = add nsw i64 %3, 65
  call void @testL(i64 %add3)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
