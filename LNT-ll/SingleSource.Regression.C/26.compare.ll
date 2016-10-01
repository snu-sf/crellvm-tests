; ModuleID = './SingleSource.Regression.C/26.compare.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"x = %d (0x%x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"test_1(x) = %d (0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"test_2(x) = %d (0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @test_1(i32 %ly) #0 {
entry:
  %ly.addr = alloca i32, align 4
  store i32 %ly, i32* %ly.addr, align 4
  %0 = load i32, i32* %ly.addr, align 4
  %cmp = icmp sle i32 %0, -2147483648
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2147483647, i32* %ly.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %ly.addr, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind uwtable
define i32 @test_2(i32 %ly) #0 {
entry:
  %ly.addr = alloca i32, align 4
  store i32 %ly, i32* %ly.addr, align 4
  %0 = load i32, i32* %ly.addr, align 4
  %cmp = icmp sge i32 -2147483648, %0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -2147483647, i32* %ly.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %ly.addr, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 37, i32* %x, align 4
  %0 = load i32, i32* %x, align 4
  %1 = load i32, i32* %x, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i32 %0, i32 %1)
  %2 = load i32, i32* %x, align 4
  %call1 = call i32 @test_1(i32 %2)
  store i32 %call1, i32* %r1, align 4
  %3 = load i32, i32* %r1, align 4
  %4 = load i32, i32* %r1, align 4
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0), i32 %3, i32 %4)
  %5 = load i32, i32* %x, align 4
  %call3 = call i32 @test_2(i32 %5)
  store i32 %call3, i32* %r2, align 4
  %6 = load i32, i32* %r2, align 4
  %7 = load i32, i32* %r2, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i32 %6, i32 %7)
  ret i32 0
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
