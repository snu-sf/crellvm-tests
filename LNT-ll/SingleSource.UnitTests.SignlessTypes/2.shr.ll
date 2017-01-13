; ModuleID = './SingleSource.UnitTests.SignlessTypes/2.shr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"ShrTest1(-1, 11, 0xFF000000) = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ShrTest2(-73, 11, 1) = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ShrTest3(-73) = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ShrTest4(-73) = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ShrTest5(7773, 11) = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"ShrTest6(-73, 11) = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"ShrTest7(-737) = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"ShrTest8(73) = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"ShrTest9(13, 7773, 11) = %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"ShrTest10(13, 7773, 11) = %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"ShrTest11(13, 7773, 11) = %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [37 x i8] c"ShrTest12(7773, -73, 11, 3773) = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"ShrTest13(7773, -73, 11, 3773) = %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"ShrTest14(7773, -73, 11, 3773) = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"ShrTest15(7773, 13, 11) = %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"ShrTest16(-73, 11, 13) = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ShrTest1(i32 %X, i32 %C1, i32 %C2) #0 {
entry:
  %X.addr = alloca i32, align 4
  %C1.addr = alloca i32, align 4
  %C2.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %C1, i32* %C1.addr, align 4
  store i32 %C2, i32* %C2.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %1 = load i32, i32* %C1.addr, align 4
  %shr = lshr i32 %0, %1
  %2 = load i32, i32* %C2.addr, align 4
  %and = and i32 %shr, %2
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest2(i32 %X, i32 %C1, i32 %C2) #0 {
entry:
  %X.addr = alloca i32, align 4
  %C1.addr = alloca i32, align 4
  %C2.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %C1, i32* %C1.addr, align 4
  store i32 %C2, i32* %C2.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %1 = load i32, i32* %C1.addr, align 4
  %shr = ashr i32 %0, %1
  %2 = load i32, i32* %C2.addr, align 4
  %and = and i32 %shr, %2
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest3(i32 %X) #0 {
entry:
  %X.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %shr = lshr i32 %0, 31
  %sub = sub i32 0, %shr
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest4(i32 %X) #0 {
entry:
  %X.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %shr = ashr i32 %0, 31
  %sub = sub nsw i32 0, %shr
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest5(i32 %X, i32 %C) #0 {
entry:
  %X.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  %AndRHS = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %C, i32* %C.addr, align 4
  %0 = load i32, i32* %C.addr, align 4
  %shr = lshr i32 -1, %0
  store i32 %shr, i32* %AndRHS, align 4
  %1 = load i32, i32* %X.addr, align 4
  %2 = load i32, i32* %C.addr, align 4
  %shr1 = lshr i32 %1, %2
  %3 = load i32, i32* %AndRHS, align 4
  %and = and i32 %shr1, %3
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest6(i32 %X, i32 %C) #0 {
entry:
  %X.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  %AndRHS = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %C, i32* %C.addr, align 4
  %0 = load i32, i32* %C.addr, align 4
  %shr = lshr i32 -1, %0
  store i32 %shr, i32* %AndRHS, align 4
  %1 = load i32, i32* %X.addr, align 4
  %2 = load i32, i32* %C.addr, align 4
  %shr1 = ashr i32 %1, %2
  %3 = load i32, i32* %AndRHS, align 4
  %and = and i32 %shr1, %3
  ret i32 %and
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest7(i32 %X) #0 {
entry:
  %X.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %shr = ashr i32 %0, 0
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest8(i32 %C) #0 {
entry:
  %C.addr = alloca i32, align 4
  store i32 %C, i32* %C.addr, align 4
  %0 = load i32, i32* %C.addr, align 4
  %shr = ashr i32 -1, %0
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest9(i32 %Y, i32 %X, i32 %C) #0 {
entry:
  %Y.addr = alloca i32, align 4
  %X.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  store i32 %Y, i32* %Y.addr, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %C, i32* %C.addr, align 4
  %0 = load i32, i32* %Y.addr, align 4
  %1 = load i32, i32* %X.addr, align 4
  %2 = load i32, i32* %C.addr, align 4
  %shr = ashr i32 %1, %2
  %add = add nsw i32 %0, %shr
  %3 = load i32, i32* %C.addr, align 4
  %shl = shl i32 %add, %3
  ret i32 %shl
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest10(i32 %Y, i32 %X, i32 %C) #0 {
entry:
  %Y.addr = alloca i32, align 4
  %X.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  store i32 %Y, i32* %Y.addr, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %C, i32* %C.addr, align 4
  %0 = load i32, i32* %Y.addr, align 4
  %1 = load i32, i32* %X.addr, align 4
  %2 = load i32, i32* %C.addr, align 4
  %shr = ashr i32 %1, %2
  %and = and i32 %0, %shr
  %3 = load i32, i32* %C.addr, align 4
  %shl = shl i32 %and, %3
  ret i32 %shl
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest11(i32 %Y, i32 %X, i32 %C) #0 {
entry:
  %Y.addr = alloca i32, align 4
  %X.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  store i32 %Y, i32* %Y.addr, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %C, i32* %C.addr, align 4
  %0 = load i32, i32* %Y.addr, align 4
  %1 = load i32, i32* %X.addr, align 4
  %2 = load i32, i32* %C.addr, align 4
  %shr = ashr i32 %1, %2
  %or = or i32 %0, %shr
  %3 = load i32, i32* %C.addr, align 4
  %shl = shl i32 %or, %3
  ret i32 %shl
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest12(i32 %Y, i32 %X, i32 %C, i32 %CC) #0 {
entry:
  %Y.addr = alloca i32, align 4
  %X.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  %CC.addr = alloca i32, align 4
  store i32 %Y, i32* %Y.addr, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %C, i32* %C.addr, align 4
  store i32 %CC, i32* %CC.addr, align 4
  %0 = load i32, i32* %Y.addr, align 4
  %1 = load i32, i32* %X.addr, align 4
  %2 = load i32, i32* %C.addr, align 4
  %shr = ashr i32 %1, %2
  %3 = load i32, i32* %CC.addr, align 4
  %and = and i32 %shr, %3
  %add = add nsw i32 %0, %and
  %4 = load i32, i32* %C.addr, align 4
  %shl = shl i32 %add, %4
  ret i32 %shl
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest13(i32 %Y, i32 %X, i32 %C, i32 %CC) #0 {
entry:
  %Y.addr = alloca i32, align 4
  %X.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  %CC.addr = alloca i32, align 4
  store i32 %Y, i32* %Y.addr, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %C, i32* %C.addr, align 4
  store i32 %CC, i32* %CC.addr, align 4
  %0 = load i32, i32* %Y.addr, align 4
  %1 = load i32, i32* %X.addr, align 4
  %2 = load i32, i32* %C.addr, align 4
  %shr = ashr i32 %1, %2
  %3 = load i32, i32* %CC.addr, align 4
  %and = and i32 %shr, %3
  %and1 = and i32 %0, %and
  %4 = load i32, i32* %C.addr, align 4
  %shl = shl i32 %and1, %4
  ret i32 %shl
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest14(i32 %Y, i32 %X, i32 %C, i32 %CC) #0 {
entry:
  %Y.addr = alloca i32, align 4
  %X.addr = alloca i32, align 4
  %C.addr = alloca i32, align 4
  %CC.addr = alloca i32, align 4
  store i32 %Y, i32* %Y.addr, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %C, i32* %C.addr, align 4
  store i32 %CC, i32* %CC.addr, align 4
  %0 = load i32, i32* %Y.addr, align 4
  %1 = load i32, i32* %X.addr, align 4
  %2 = load i32, i32* %C.addr, align 4
  %shr = ashr i32 %1, %2
  %3 = load i32, i32* %CC.addr, align 4
  %and = and i32 %shr, %3
  %or = or i32 %0, %and
  %4 = load i32, i32* %C.addr, align 4
  %shl = shl i32 %or, %4
  ret i32 %shl
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest15(i32 %A, i32 %C1, i32 %C2) #0 {
entry:
  %A.addr = alloca i32, align 4
  %C1.addr = alloca i32, align 4
  %C2.addr = alloca i32, align 4
  store i32 %A, i32* %A.addr, align 4
  store i32 %C1, i32* %C1.addr, align 4
  store i32 %C2, i32* %C2.addr, align 4
  %0 = load i32, i32* %A.addr, align 4
  %1 = load i32, i32* %C1.addr, align 4
  %shl = shl i32 %0, %1
  %2 = load i32, i32* %C2.addr, align 4
  %shr = lshr i32 %shl, %2
  ret i32 %shr
}

; Function Attrs: nounwind uwtable
define i32 @ShrTest16(i32 %X, i32 %C1, i32 %C2) #0 {
entry:
  %X.addr = alloca i32, align 4
  %C1.addr = alloca i32, align 4
  %C2.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  store i32 %C1, i32* %C1.addr, align 4
  store i32 %C2, i32* %C2.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %1 = load i32, i32* %C1.addr, align 4
  %shr = ashr i32 %0, %1
  %2 = load i32, i32* %C2.addr, align 4
  %shl = shl i32 %shr, %2
  ret i32 %shl
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
  %call = call i32 @ShrTest1(i32 -1, i32 11, i32 -16777216)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0), i32 %call)
  %call2 = call i32 @ShrTest2(i32 -73, i32 11, i32 1)
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 %call2)
  %call4 = call i32 @ShrTest3(i32 -73)
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 %call4)
  %call6 = call i32 @ShrTest4(i32 -73)
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0), i32 %call6)
  %call8 = call i32 @ShrTest5(i32 7773, i32 11)
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i32 0, i32 0), i32 %call8)
  %call10 = call i32 @ShrTest6(i32 -73, i32 11)
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0), i32 %call10)
  %call12 = call i32 @ShrTest7(i32 -737)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i32 0, i32 0), i32 %call12)
  %call14 = call i32 @ShrTest8(i32 73)
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 %call14)
  %call16 = call i32 @ShrTest9(i32 13, i32 7773, i32 11)
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0), i32 %call16)
  %call18 = call i32 @ShrTest10(i32 13, i32 7773, i32 11)
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i32 0, i32 0), i32 %call18)
  %call20 = call i32 @ShrTest11(i32 13, i32 7773, i32 11)
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0), i32 %call20)
  %call22 = call i32 @ShrTest12(i32 7773, i32 -73, i32 11, i32 3773)
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i32 0, i32 0), i32 %call22)
  %call24 = call i32 @ShrTest13(i32 7773, i32 -73, i32 11, i32 3773)
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i32 0, i32 0), i32 %call24)
  %call26 = call i32 @ShrTest14(i32 7773, i32 -73, i32 11, i32 3773)
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0), i32 %call26)
  %call28 = call i32 @ShrTest15(i32 7773, i32 13, i32 11)
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i32 %call28)
  %call30 = call i32 @ShrTest16(i32 -73, i32 11, i32 13)
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i32 %call30)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
