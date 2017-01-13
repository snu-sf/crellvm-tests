; ModuleID = './MultiSource.Benchmarks.Prolangs-C/92.loader.convert.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"NUM_TO_STR called illegally.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @eoln(i8 signext %CH) #0 {
entry:
  %CH.addr = alloca i8, align 1
  store i8 %CH, i8* %CH.addr, align 1
  %0 = load i8, i8* %CH.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  %conv1 = zext i1 %cmp to i32
  ret i32 %conv1
}

; Function Attrs: nounwind uwtable
define i32 @CHAR_TO_DIGIT(i8 signext %CH, i32 %NUM_BASE) #0 {
entry:
  %CH.addr = alloca i8, align 1
  %NUM_BASE.addr = alloca i32, align 4
  %DIGIT = alloca i32, align 4
  store i8 %CH, i8* %CH.addr, align 1
  store i32 %NUM_BASE, i32* %NUM_BASE.addr, align 4
  store i32 -1, i32* %DIGIT, align 4
  %0 = load i8, i8* %CH.addr, align 1
  %conv = sext i8 %0 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8, i8* %CH.addr, align 1
  %conv2 = sext i8 %1 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i8, i8* %CH.addr, align 1
  %conv5 = sext i8 %2 to i32
  %sub = sub nsw i32 %conv5, 48
  store i32 %sub, i32* %DIGIT, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i8, i8* %CH.addr, align 1
  %conv6 = sext i8 %3 to i32
  %cmp7 = icmp sge i32 %conv6, 65
  br i1 %cmp7, label %land.lhs.true.9, label %if.end.16

land.lhs.true.9:                                  ; preds = %if.end
  %4 = load i8, i8* %CH.addr, align 1
  %conv10 = sext i8 %4 to i32
  %cmp11 = icmp sle i32 %conv10, 90
  br i1 %cmp11, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true.9
  %5 = load i8, i8* %CH.addr, align 1
  %conv14 = sext i8 %5 to i32
  %sub15 = sub nsw i32 %conv14, 65
  %add = add nsw i32 %sub15, 10
  store i32 %add, i32* %DIGIT, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %land.lhs.true.9, %if.end
  %6 = load i32, i32* %DIGIT, align 4
  %7 = load i32, i32* %NUM_BASE.addr, align 4
  %cmp17 = icmp sge i32 %6, %7
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i32 -1, i32* %DIGIT, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.16
  %8 = load i32, i32* %DIGIT, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @NUM_TO_STR(i32 %NUM, i32 %BASE, i32 %LEN, i8* %STR) #0 {
entry:
  %NUM.addr = alloca i32, align 4
  %BASE.addr = alloca i32, align 4
  %LEN.addr = alloca i32, align 4
  %STR.addr = alloca i8*, align 8
  %I = alloca i32, align 4
  %DIGIT = alloca i32, align 4
  store i32 %NUM, i32* %NUM.addr, align 4
  store i32 %BASE, i32* %BASE.addr, align 4
  store i32 %LEN, i32* %LEN.addr, align 4
  store i8* %STR, i8** %STR.addr, align 8
  %0 = load i32, i32* %LEN.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8*, i8** %STR.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %1, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %2 = load i32, i32* %LEN.addr, align 4
  %sub = sub nsw i32 %2, 1
  store i32 %sub, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %I, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %NUM.addr, align 4
  %5 = load i32, i32* %NUM.addr, align 4
  %6 = load i32, i32* %BASE.addr, align 4
  %div = sdiv i32 %5, %6
  %7 = load i32, i32* %BASE.addr, align 4
  %mul = mul nsw i32 %div, %7
  %sub1 = sub nsw i32 %4, %mul
  store i32 %sub1, i32* %DIGIT, align 4
  %8 = load i32, i32* %BASE.addr, align 4
  %9 = load i32, i32* %NUM.addr, align 4
  %div2 = sdiv i32 %9, %8
  store i32 %div2, i32* %NUM.addr, align 4
  %10 = load i32, i32* %DIGIT, align 4
  %cmp3 = icmp sge i32 %10, 0
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %11 = load i32, i32* %DIGIT, align 4
  %cmp4 = icmp sle i32 %11, 9
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %12 = load i32, i32* %DIGIT, align 4
  %conv = trunc i32 %12 to i8
  %conv5 = sext i8 %conv to i32
  %add = add nsw i32 %conv5, 48
  %conv6 = trunc i32 %add to i8
  %13 = load i32, i32* %I, align 4
  %idxprom7 = sext i32 %13 to i64
  %14 = load i8*, i8** %STR.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %14, i64 %idxprom7
  store i8 %conv6, i8* %arrayidx8, align 1
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %for.body
  %15 = load i32, i32* %DIGIT, align 4
  %sub9 = sub nsw i32 %15, 10
  %conv10 = trunc i32 %sub9 to i8
  %conv11 = sext i8 %conv10 to i32
  %add12 = add nsw i32 %conv11, 65
  %conv13 = trunc i32 %add12 to i8
  %16 = load i32, i32* %I, align 4
  %idxprom14 = sext i32 %16 to i64
  %17 = load i8*, i8** %STR.addr, align 8
  %arrayidx15 = getelementptr inbounds i8, i8* %17, i64 %idxprom14
  store i8 %conv13, i8* %arrayidx15, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %18 = load i32, i32* %I, align 4
  %dec = add nsw i32 %18, -1
  store i32 %dec, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %NUM.addr, align 4
  %cmp16 = icmp ne i32 %19, 0
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %for.end
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.18, %for.end
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @GET_NUM(i8** %CURRENT_CHAR, i32 %BITS, i32 %NUM_BASE, i32* %ERROR) #0 {
entry:
  %CURRENT_CHAR.addr = alloca i8**, align 8
  %BITS.addr = alloca i32, align 4
  %NUM_BASE.addr = alloca i32, align 4
  %ERROR.addr = alloca i32*, align 8
  %CONVERT = alloca i32, align 4
  %MAX_UNSIGNED_INT = alloca i32, align 4
  %DIGIT = alloca i32, align 4
  store i8** %CURRENT_CHAR, i8*** %CURRENT_CHAR.addr, align 8
  store i32 %BITS, i32* %BITS.addr, align 4
  store i32 %NUM_BASE, i32* %NUM_BASE.addr, align 4
  store i32* %ERROR, i32** %ERROR.addr, align 8
  store i32 0, i32* %CONVERT, align 4
  %0 = load i32, i32* %BITS.addr, align 4
  %conv = sitofp i32 %0 to double
  %mul = fmul double %conv, 1.000000e+00
  %call = call double @pow(double 2.000000e+00, double %mul) #3
  %conv1 = fptosi double %call to i32
  store i32 %conv1, i32* %MAX_UNSIGNED_INT, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %1 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8, i8* %2, align 1
  %4 = load i32, i32* %NUM_BASE.addr, align 4
  %call2 = call i32 @CHAR_TO_DIGIT(i8 signext %3, i32 %4)
  store i32 %call2, i32* %DIGIT, align 4
  %cmp = icmp ne i32 %call2, -1
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %5 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = load i8, i8* %6, align 1
  %call4 = call i32 @eoln(i8 signext %7)
  %tobool = icmp ne i32 %call4, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %lnot, %land.rhs ]
  br i1 %8, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %9 = load i32, i32* %CONVERT, align 4
  %10 = load i32, i32* %MAX_UNSIGNED_INT, align 4
  %cmp5 = icmp sle i32 %9, %10
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %11 = load i32, i32* %CONVERT, align 4
  %12 = load i32, i32* %NUM_BASE.addr, align 4
  %mul7 = mul nsw i32 %11, %12
  %13 = load i32, i32* %DIGIT, align 4
  %add = add nsw i32 %mul7, %13
  store i32 %add, i32* %CONVERT, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %14 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %15 = load i8*, i8** %14, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %14, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %16 = load i32, i32* %CONVERT, align 4
  %17 = load i32, i32* %MAX_UNSIGNED_INT, align 4
  %sub = sub nsw i32 %17, 1
  %cmp8 = icmp sgt i32 %16, %sub
  br i1 %cmp8, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %18 = load i8**, i8*** %CURRENT_CHAR.addr, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %call10 = call i32 @eoln(i8 signext %20)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %lor.lhs.false, %while.end
  %21 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %21, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %lor.lhs.false
  %22 = load i32, i32* %CONVERT, align 4
  ret i32 %22
}

; Function Attrs: nounwind
declare double @pow(double, double) #2

; Function Attrs: nounwind uwtable
define void @STR_TO_NUM(i8* %STR, i32 %DIGITS, i32 %BASE, i32* %NUM, i32* %ERROR) #0 {
entry:
  %STR.addr = alloca i8*, align 8
  %DIGITS.addr = alloca i32, align 4
  %BASE.addr = alloca i32, align 4
  %NUM.addr = alloca i32*, align 8
  %ERROR.addr = alloca i32*, align 8
  %I = alloca i32, align 4
  %ONE_DIGIT = alloca i32, align 4
  %LOCAL_ERROR = alloca i32, align 4
  store i8* %STR, i8** %STR.addr, align 8
  store i32 %DIGITS, i32* %DIGITS.addr, align 4
  store i32 %BASE, i32* %BASE.addr, align 4
  store i32* %NUM, i32** %NUM.addr, align 8
  store i32* %ERROR, i32** %ERROR.addr, align 8
  store i32 0, i32* %LOCAL_ERROR, align 4
  %0 = load i32*, i32** %NUM.addr, align 8
  store i32 0, i32* %0, align 4
  store i32 0, i32* %I, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %I, align 4
  %2 = load i32, i32* %DIGITS.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool = icmp ne i32 %3, 0
  %lnot = xor i1 %tobool, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %5 = load i32, i32* %I, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i8*, i8** %STR.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %6, i64 %idxprom
  %7 = load i8, i8* %arrayidx, align 1
  %8 = load i32, i32* %BASE.addr, align 4
  %call = call i32 @CHAR_TO_DIGIT(i8 signext %7, i32 %8)
  store i32 %call, i32* %ONE_DIGIT, align 4
  %cmp1 = icmp eq i32 %call, -1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  store i32 1, i32* %LOCAL_ERROR, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %9 = load i32*, i32** %NUM.addr, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %BASE.addr, align 4
  %mul = mul nsw i32 %10, %11
  %12 = load i32, i32* %ONE_DIGIT, align 4
  %add = add nsw i32 %mul, %12
  %13 = load i32*, i32** %NUM.addr, align 8
  store i32 %add, i32* %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %I, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %I, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %15 = load i32, i32* %LOCAL_ERROR, align 4
  %tobool2 = icmp ne i32 %15, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.end
  %16 = load i32*, i32** %ERROR.addr, align 8
  store i32 1, i32* %16, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %for.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
