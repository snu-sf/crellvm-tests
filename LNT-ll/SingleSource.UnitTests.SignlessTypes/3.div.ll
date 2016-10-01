; ModuleID = './SingleSource.UnitTests.SignlessTypes/3.div.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"uDivTest1(42,3) = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"uDivTest2(42,3) = %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"uDivTest3(42,3) = %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"uDivTest4(42,3) = %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"uDivTest5(42,3) = %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"uDivTest6(42,3) = %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"uDivTest7(42,3) = %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"uDivTest8(42,3) = %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"uDivTest9(42,3) = %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"uDivTest10(42,3) = %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"uDivTest11(42,3) = %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"uDivTest12(42,3) = %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"uDivTest13(42,3) = %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"uDivTest14(42,3) = %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"uDivTest15(42,3) = %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"uDivTest16(42,3) = %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"uDivTest17(42,3) = %u\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @uDivTest1(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %div = udiv i32 0, %0
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest2(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %div = udiv i32 %0, 1
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest3(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %div = udiv i32 %0, -1
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest4(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %1 = load i32, i32* %Y.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %Y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest5(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %1 = load i32, i32* %Y.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %Y.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %2, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest6(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %1 = load i32, i32* %Y.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %Y.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest7(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %1 = load i32, i32* %Y.addr, align 4
  %cmp = icmp ne i32 %0, %1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load i32, i32* %Y.addr, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest8(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %div = udiv i32 %0, 2
  %div1 = udiv i32 %div, 4
  ret i32 %div1
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest9(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %div = udiv i32 %0, 2
  %div1 = udiv i32 %div, 4
  ret i32 %div1
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest10(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %div = udiv i32 %0, 4
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest11(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %div = udiv i32 %0, 4
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest12(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %1 = load i32, i32* %Y.addr, align 4
  %shl = shl i32 4, %1
  %div = udiv i32 %0, %shl
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest13(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %1 = load i32, i32* %Y.addr, align 4
  %shl = shl i32 4, %1
  %div = udiv i32 %0, %shl
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest14(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %1 = load i32, i32* %X.addr, align 4
  %2 = load i32, i32* %Y.addr, align 4
  %cmp = icmp eq i32 %1, %2
  %conv = zext i1 %cmp to i32
  %div = udiv i32 %0, 4
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest15(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %1 = load i32, i32* %X.addr, align 4
  %2 = load i32, i32* %Y.addr, align 4
  %cmp = icmp eq i32 %1, %2
  %conv = zext i1 %cmp to i32
  %div = udiv i32 %0, 4
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest16(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %sub = sub i32 0, %0
  %div = udiv i32 %sub, 2
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @uDivTest17(i32 %X, i32 %Y) #0 {
entry:
  %X.addr = alloca i32, align 4
  %Y.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %Y, i32* %Y.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %sub = sub i32 0, %0
  %div = udiv i32 %sub, 2
  ret i32 %div
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call i32 @uDivTest1(i32 42, i32 3)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %call)
  %call2 = call i32 @uDivTest2(i32 42, i32 3)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i32 0, i32 0), i32 %call2)
  %call4 = call i32 @uDivTest3(i32 42, i32 3)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0), i32 %call4)
  %call6 = call i32 @uDivTest4(i32 42, i32 3)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), i32 %call6)
  %call8 = call i32 @uDivTest5(i32 42, i32 3)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i32 %call8)
  %call10 = call i32 @uDivTest6(i32 42, i32 3)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 %call10)
  %call12 = call i32 @uDivTest7(i32 42, i32 3)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i32 0, i32 0), i32 %call12)
  %call14 = call i32 @uDivTest8(i32 42, i32 3)
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), i32 %call14)
  %call16 = call i32 @uDivTest9(i32 42, i32 3)
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0), i32 %call16)
  %call18 = call i32 @uDivTest10(i32 42, i32 3)
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i32 0, i32 0), i32 %call18)
  %call20 = call i32 @uDivTest11(i32 42, i32 3)
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i32 %call20)
  %call22 = call i32 @uDivTest12(i32 42, i32 3)
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0), i32 %call22)
  %call24 = call i32 @uDivTest13(i32 42, i32 3)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i32 0, i32 0), i32 %call24)
  %call26 = call i32 @uDivTest14(i32 42, i32 3)
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i32 0, i32 0), i32 %call26)
  %call28 = call i32 @uDivTest15(i32 42, i32 3)
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i32 %call28)
  %call30 = call i32 @uDivTest16(i32 42, i32 3)
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i32 0, i32 0), i32 %call30)
  %call32 = call i32 @uDivTest17(i32 42, i32 3)
  %call33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i32 %call32)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
