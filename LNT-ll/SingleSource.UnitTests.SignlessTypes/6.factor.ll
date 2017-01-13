; ModuleID = './SingleSource.UnitTests.SignlessTypes/6.factor.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@plane = internal global [50 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @fill() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i32 0, i64 %idxprom
  store i8 0, i8* %arrayidx, align 1
  %2 = load i32, i32* %i, align 4
  %rem = urem i32 %2, 17
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom2 = zext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %4 to i32
  %or = or i32 %conv, 128
  %conv4 = trunc i32 %or to i8
  store i8 %conv4, i8* %arrayidx3, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %5 = load i32, i32* %i, align 4
  %rem5 = urem i32 %5, 13
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %idxprom9 = zext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i32 0, i64 %idxprom9
  %7 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %7 to i32
  %or12 = or i32 %conv11, 64
  %conv13 = trunc i32 %or12 to i8
  store i8 %conv13, i8* %arrayidx10, align 1
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.8, %if.end
  %8 = load i32, i32* %i, align 4
  %rem15 = urem i32 %8, 11
  %cmp16 = icmp eq i32 %rem15, 0
  br i1 %cmp16, label %if.then.18, label %if.end.24

if.then.18:                                       ; preds = %if.end.14
  %9 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %9 to i64
  %arrayidx20 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i32 0, i64 %idxprom19
  %10 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %10 to i32
  %or22 = or i32 %conv21, 32
  %conv23 = trunc i32 %or22 to i8
  store i8 %conv23, i8* %arrayidx20, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.18, %if.end.14
  %11 = load i32, i32* %i, align 4
  %rem25 = urem i32 %11, 7
  %cmp26 = icmp eq i32 %rem25, 0
  br i1 %cmp26, label %if.then.28, label %if.end.34

if.then.28:                                       ; preds = %if.end.24
  %12 = load i32, i32* %i, align 4
  %idxprom29 = zext i32 %12 to i64
  %arrayidx30 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i32 0, i64 %idxprom29
  %13 = load i8, i8* %arrayidx30, align 1
  %conv31 = sext i8 %13 to i32
  %or32 = or i32 %conv31, 16
  %conv33 = trunc i32 %or32 to i8
  store i8 %conv33, i8* %arrayidx30, align 1
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.28, %if.end.24
  %14 = load i32, i32* %i, align 4
  %rem35 = urem i32 %14, 5
  %cmp36 = icmp eq i32 %rem35, 0
  br i1 %cmp36, label %if.then.38, label %if.end.44

if.then.38:                                       ; preds = %if.end.34
  %15 = load i32, i32* %i, align 4
  %idxprom39 = zext i32 %15 to i64
  %arrayidx40 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i32 0, i64 %idxprom39
  %16 = load i8, i8* %arrayidx40, align 1
  %conv41 = sext i8 %16 to i32
  %or42 = or i32 %conv41, 8
  %conv43 = trunc i32 %or42 to i8
  store i8 %conv43, i8* %arrayidx40, align 1
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.38, %if.end.34
  %17 = load i32, i32* %i, align 4
  %rem45 = urem i32 %17, 3
  %cmp46 = icmp eq i32 %rem45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.54

if.then.48:                                       ; preds = %if.end.44
  %18 = load i32, i32* %i, align 4
  %idxprom49 = zext i32 %18 to i64
  %arrayidx50 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i32 0, i64 %idxprom49
  %19 = load i8, i8* %arrayidx50, align 1
  %conv51 = sext i8 %19 to i32
  %or52 = or i32 %conv51, 4
  %conv53 = trunc i32 %or52 to i8
  store i8 %conv53, i8* %arrayidx50, align 1
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.48, %if.end.44
  %20 = load i32, i32* %i, align 4
  %rem55 = urem i32 %20, 2
  %cmp56 = icmp eq i32 %rem55, 0
  br i1 %cmp56, label %if.then.58, label %if.end.64

if.then.58:                                       ; preds = %if.end.54
  %21 = load i32, i32* %i, align 4
  %idxprom59 = zext i32 %21 to i64
  %arrayidx60 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i32 0, i64 %idxprom59
  %22 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %22 to i32
  %or62 = or i32 %conv61, 2
  %conv63 = trunc i32 %or62 to i8
  store i8 %conv63, i8* %arrayidx60, align 1
  br label %if.end.64

if.end.64:                                        ; preds = %if.then.58, %if.end.54
  %23 = load i32, i32* %i, align 4
  %idxprom65 = zext i32 %23 to i64
  %arrayidx66 = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i32 0, i64 %idxprom65
  %24 = load i8, i8* %arrayidx66, align 1
  %conv67 = sext i8 %24 to i32
  %or68 = or i32 %conv67, 1
  %conv69 = trunc i32 %or68 to i8
  store i8 %conv69, i8* %arrayidx66, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end.64
  %25 = load i32, i32* %i, align 4
  %inc = add i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @fill()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 50
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = zext i32 %1 to i64
  %arrayidx = getelementptr inbounds [50 x i8], [50 x i8]* @plane, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %and = and i32 %conv, 16
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
