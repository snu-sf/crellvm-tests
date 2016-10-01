; ModuleID = './SingleSource.UnitTests.SignlessTypes/5.ccc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Y = global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Program requires integer parameter\00", align 1
@F1 = common global i32 0, align 4
@F2 = common global i32 0, align 4
@F3 = common global i32 0, align 4
@F4 = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%d %hd %hu\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ubyteArg(i8 zeroext %X) #0 {
entry:
  %X.addr = alloca i8, align 1
  store i8 %X, i8* %X.addr, align 1
  %0 = load i8, i8* %X.addr, align 1
  %conv = zext i8 %0 to i32
  %add = add nsw i32 %conv, 2
  %1 = load i32, i32* @Y, align 4
  %add1 = add nsw i32 %add, %1
  ret i32 %add1
}

; Function Attrs: nounwind uwtable
define i32 @sbyteArg(i8 signext %X) #0 {
entry:
  %X.addr = alloca i8, align 1
  store i8 %X, i8* %X.addr, align 1
  %0 = load i8, i8* %X.addr, align 1
  %conv = sext i8 %0 to i32
  %add = add nsw i32 %conv, 3
  %1 = load i32, i32* @Y, align 4
  %add1 = add nsw i32 %add, %1
  ret i32 %add1
}

; Function Attrs: nounwind uwtable
define i32 @ushortArg(i16 zeroext %X) #0 {
entry:
  %X.addr = alloca i16, align 2
  store i16 %X, i16* %X.addr, align 2
  %0 = load i16, i16* %X.addr, align 2
  %conv = zext i16 %0 to i32
  %add = add nsw i32 %conv, 4
  %1 = load i32, i32* @Y, align 4
  %add1 = add nsw i32 %add, %1
  ret i32 %add1
}

; Function Attrs: nounwind uwtable
define i32 @sshortArg(i16 signext %X) #0 {
entry:
  %X.addr = alloca i16, align 2
  store i16 %X, i16* %X.addr, align 2
  %0 = load i16, i16* %X.addr, align 2
  %conv = sext i16 %0 to i32
  %add = add nsw i32 %conv, 5
  %1 = load i32, i32* @Y, align 4
  %add1 = add nsw i32 %add, %1
  ret i32 %add1
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %TestVal = alloca i32, align 4
  %sh = alloca i16, align 2
  %ush = alloca i16, align 2
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  store i32 ptrtoint (i32 (i8)* @ubyteArg to i32), i32* @F1, align 4
  store i32 ptrtoint (i32 (i8)* @sbyteArg to i32), i32* @F2, align 4
  store i32 ptrtoint (i32 (i16)* @ushortArg to i32), i32* @F3, align 4
  store i32 ptrtoint (i32 (i16)* @sshortArg to i32), i32* @F4, align 4
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call1 = call i32 @atoi(i8* %2) #5
  store i32 %call1, i32* %TestVal, align 4
  store i16 -1, i16* %sh, align 2
  store i16 -1, i16* %ush, align 2
  %3 = load i32, i32* %TestVal, align 4
  %4 = load i16, i16* %sh, align 2
  %conv = sext i16 %4 to i32
  %5 = load i16, i16* %ush, align 2
  %conv2 = zext i16 %5 to i32
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %3, i32 %conv, i32 %conv2)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
