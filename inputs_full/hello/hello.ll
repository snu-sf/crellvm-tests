; ModuleID = './hello/hello.bc'
target datalayout = "e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"hello, clang!\0A\00", align 1
@.str1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @foo(i32 %x) #0 {
  %1 = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  store i32 %x, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = add nsw i32 %2, 1
  store i32 %3, i32* %y, align 4
  %4 = load i32, i32* %y, align 4
  %5 = add nsw i32 %4, 2
  store i32 %5, i32* %z, align 4
  %6 = load i32, i32* %z, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  %3 = call i32 @foo(i32 0)
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str1, i32 0, i32 0), i32 %3)
  %5 = load i32, i32* %1
  ret i32 %5
}

declare i32 @printf(i8*, ...)

attributes #0 = { nounwind uwtable }
