; ModuleID = './SingleSource.UnitTests/57.2003-05-31-CastToBool.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [34 x i8] c"y = %d, (y == 2 || y == 0) == %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"y = %d, (y > 2 || y < 5) == %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"y = %d, (y ^ 2 ^ ~y) == %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%lld \00", align 1

; Function Attrs: nounwind uwtable
define void @testCastOps(i32 %y) #0 {
entry:
  %y.addr = alloca i32, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* %y.addr, align 4
  %1 = load i32, i32* %y.addr, align 4
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %2 = load i32, i32* %y.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0), i32 %0, i32 %lor.ext)
  %4 = load i32, i32* %y.addr, align 4
  %5 = load i32, i32* %y.addr, align 4
  %cmp2 = icmp slt i32 %5, 2
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.end
  %6 = load i32, i32* %y.addr, align 4
  %cmp3 = icmp sgt i32 %6, -10
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %7 = phi i1 [ false, %lor.end ], [ %cmp3, %land.rhs ]
  %land.ext = zext i1 %7 to i32
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i32 %4, i32 %land.ext)
  %8 = load i32, i32* %y.addr, align 4
  %9 = load i32, i32* %y.addr, align 4
  %xor = xor i32 %9, 2
  %xor5 = xor i32 %xor, -6
  %tobool = icmp ne i32 %xor5, 0
  %conv = zext i1 %tobool to i32
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 %8, i32 %conv)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define void @testBool(i1 zeroext %X) #0 {
entry:
  %X.addr = alloca i8, align 1
  %frombool = zext i1 %X to i8
  store i8 %frombool, i8* %X.addr, align 1
  %0 = load i8, i8* %X.addr, align 1
  %tobool = trunc i8 %0 to i1
  %conv = zext i1 %tobool to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 %conv)
  ret void
}

; Function Attrs: nounwind uwtable
define void @testByte(i8 signext %X) #0 {
entry:
  %X.addr = alloca i8, align 1
  store i8 %X, i8* %X.addr, align 1
  %0 = load i8, i8* %X.addr, align 1
  %conv = sext i8 %0 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %conv)
  %1 = load i8, i8* %X.addr, align 1
  %conv1 = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv1, 0
  call void @testBool(i1 zeroext %cmp)
  ret void
}

; Function Attrs: nounwind uwtable
define void @testShort(i16 signext %X) #0 {
entry:
  %X.addr = alloca i16, align 2
  store i16 %X, i16* %X.addr, align 2
  %0 = load i16, i16* %X.addr, align 2
  %conv = sext i16 %0 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %conv)
  %1 = load i16, i16* %X.addr, align 2
  %conv1 = sext i16 %1 to i32
  %cmp = icmp ne i32 %conv1, 0
  call void @testBool(i1 zeroext %cmp)
  ret void
}

; Function Attrs: nounwind uwtable
define void @testInt(i32 %X) #0 {
entry:
  %X.addr = alloca i32, align 4
  store i32 %X, i32* %X.addr, align 4
  %0 = load i32, i32* %X.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i32 %0)
  %1 = load i32, i32* %X.addr, align 4
  %cmp = icmp ne i32 %1, 0
  call void @testBool(i1 zeroext %cmp)
  ret void
}

; Function Attrs: nounwind uwtable
define void @testLong(i64 %X) #0 {
entry:
  %X.addr = alloca i64, align 8
  store i64 %X, i64* %X.addr, align 8
  %0 = load i64, i64* %X.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i64 %0)
  %1 = load i64, i64* %X.addr, align 8
  %cmp = icmp ne i64 %1, 0
  call void @testBool(i1 zeroext %cmp)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  call void @testByte(i8 signext 0)
  call void @testByte(i8 signext 123)
  call void @testShort(i16 signext 0)
  call void @testShort(i16 signext 1234)
  call void @testInt(i32 0)
  call void @testInt(i32 1234)
  call void @testLong(i64 0)
  call void @testLong(i64 123121231231231)
  call void @testLong(i64 1230098424783699968)
  call void @testLong(i64 69920)
  call void @testCastOps(i32 2)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
