; ModuleID = './SingleSource.Regression.C/8.sumarray2d.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Sum(Array[%d,%d] = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @SumArray([100 x i32]* %Array, i32 %NumI, i32 %NumJ) #0 {
entry:
  %Array.addr = alloca [100 x i32]*, align 8
  %NumI.addr = alloca i32, align 4
  %NumJ.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %Result = alloca i32, align 4
  store [100 x i32]* %Array, [100 x i32]** %Array.addr, align 8
  store i32 %NumI, i32* %NumI.addr, align 4
  store i32 %NumJ, i32* %NumJ.addr, align 4
  store i32 0, i32* %Result, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %NumI.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %NumJ.addr, align 4
  %cmp2 = icmp ult i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %5 to i64
  %6 = load [100 x i32]*, [100 x i32]** %Array.addr, align 8
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %6, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx5, align 4
  %8 = load i32, i32* %Result, align 4
  %add = add nsw i32 %8, %7
  store i32 %add, i32* %Result, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %9 = load i32, i32* %j, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %10 = load i32, i32* %i, align 4
  %inc7 = add i32 %10, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  %11 = load i32, i32* %Result, align 4
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Array = alloca [100 x [100 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %sub = sub i32 0, %1
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom1 = zext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %Array, i32 0, i64 %idxprom1
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 %sub, i32* %arrayidx2, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.17, %for.end
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp ult i32 %5, 100
  br i1 %cmp4, label %for.body.5, label %for.end.19

for.body.5:                                       ; preds = %for.cond.3
  store i32 0, i32* %j, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.14, %for.body.5
  %6 = load i32, i32* %j, align 4
  %cmp7 = icmp ult i32 %6, 100
  br i1 %cmp7, label %for.body.8, label %for.end.16

for.body.8:                                       ; preds = %for.cond.6
  %7 = load i32, i32* %j, align 4
  %8 = load i32, i32* %i, align 4
  %cmp9 = icmp ne i32 %7, %8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.8
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %j, align 4
  %add = add i32 %9, %10
  %11 = load i32, i32* %j, align 4
  %idxprom10 = zext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom11 = zext i32 %12 to i64
  %arrayidx12 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %Array, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx12, i32 0, i64 %idxprom10
  store i32 %add, i32* %arrayidx13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.8
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc15 = add i32 %13, 1
  store i32 %inc15, i32* %j, align 4
  br label %for.cond.6

for.end.16:                                       ; preds = %for.cond.6
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end.16
  %14 = load i32, i32* %i, align 4
  %inc18 = add i32 %14, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond.3

for.end.19:                                       ; preds = %for.cond.3
  %arraydecay = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %Array, i32 0, i32 0
  %call = call i32 @SumArray([100 x i32]* %arraydecay, i32 100, i32 100)
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 100, i32 100, i32 %call)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
