; ModuleID = './SingleSource.Regression.C/4.test_indvars.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [18 x i8] c"Checksum = %.0lf\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %Array = alloca [100 x [200 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca double, align 8
  store i32 0, i32* %retval
  store double 0.000000e+00, double* %sum, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end.7

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %1 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %1, 200
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %2 = load i32, i32* %j, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x [200 x i32]], [100 x [200 x i32]]* %Array, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [200 x i32], [200 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %4 = load i32, i32* %j, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %5 = load i32, i32* %i, align 4
  %add = add nsw i32 %5, 2
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end.7:                                        ; preds = %for.cond
  %arrayidx8 = getelementptr inbounds [100 x [200 x i32]], [100 x [200 x i32]]* %Array, i32 0, i64 0
  %arraydecay = getelementptr inbounds [200 x i32], [200 x i32]* %arrayidx8, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [100 x [200 x i32]], [100 x [200 x i32]]* %Array, i32 0, i32 0
  call void @test_indvars(i32* %arraydecay, [200 x i32]* %arraydecay9)
  store i32 0, i32* %i, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.24, %for.end.7
  %6 = load i32, i32* %i, align 4
  %cmp11 = icmp slt i32 %6, 100
  br i1 %cmp11, label %for.body.12, label %for.end.26

for.body.12:                                      ; preds = %for.cond.10
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.21, %for.body.12
  %7 = load i32, i32* %j, align 4
  %cmp14 = icmp slt i32 %7, 200
  br i1 %cmp14, label %for.body.15, label %for.end.23

for.body.15:                                      ; preds = %for.cond.13
  %8 = load i32, i32* %j, align 4
  %idxprom16 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %9 to i64
  %arrayidx18 = getelementptr inbounds [100 x [200 x i32]], [100 x [200 x i32]]* %Array, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [200 x i32], [200 x i32]* %arrayidx18, i32 0, i64 %idxprom16
  %10 = load i32, i32* %arrayidx19, align 4
  %conv = sitofp i32 %10 to double
  %11 = load double, double* %sum, align 8
  %add20 = fadd double %11, %conv
  store double %add20, double* %sum, align 8
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.15
  %12 = load i32, i32* %j, align 4
  %inc22 = add nsw i32 %12, 1
  store i32 %inc22, i32* %j, align 4
  br label %for.cond.13

for.end.23:                                       ; preds = %for.cond.13
  br label %for.inc.24

for.inc.24:                                       ; preds = %for.end.23
  %13 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %13, 2
  store i32 %add25, i32* %i, align 4
  br label %for.cond.10

for.end.26:                                       ; preds = %for.cond.10
  %14 = load double, double* %sum, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), double %14)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @test_indvars(i32* %Array1, [200 x i32]* %Array2) #0 {
entry:
  %Array1.addr = alloca i32*, align 8
  %Array2.addr = alloca [200 x i32]*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32* %Array1, i32** %Array1.addr, align 8
  store [200 x i32]* %Array2, [200 x i32]** %Array2.addr, align 8
  %0 = load [200 x i32]*, [200 x i32]** %Array2.addr, align 8
  %arrayidx = getelementptr inbounds [200 x i32], [200 x i32]* %0, i64 3
  %arrayidx1 = getelementptr inbounds [200 x i32], [200 x i32]* %arrayidx, i32 0, i64 6
  store i32 12345, i32* %arrayidx1, align 4
  %1 = load i32*, i32** %Array1.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %1, i64 1
  store i32 12345, i32* %arrayidx2, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp ult i32 %2, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load i32*, i32** %Array1.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  store i32 %3, i32* %arrayidx3, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %add = add i32 %6, 2
  store i32 %add, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 3, i32* %i, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.10, %for.end
  %7 = load i32, i32* %i, align 4
  %cmp5 = icmp ult i32 %7, 103
  br i1 %cmp5, label %for.body.6, label %for.end.11

for.body.6:                                       ; preds = %for.cond.4
  %8 = load i32, i32* %i, align 4
  %add7 = add i32 %8, 4
  %9 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %9 to i64
  %10 = load i32*, i32** %Array1.addr, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i64 %idxprom8
  store i32 %add7, i32* %arrayidx9, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %for.body.6
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.4

for.end.11:                                       ; preds = %for.cond.4
  store i32 13, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.29, %for.end.11
  %12 = load i32, i32* %i, align 4
  %cmp13 = icmp ult i32 %12, 100
  br i1 %cmp13, label %for.body.14, label %for.end.31

for.body.14:                                      ; preds = %for.cond.12
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.26, %for.body.14
  %13 = load i32, i32* %j, align 4
  %cmp16 = icmp ult i32 %13, 100
  br i1 %cmp16, label %for.body.17, label %for.end.28

for.body.17:                                      ; preds = %for.cond.15
  %14 = load i32, i32* %i, align 4
  %idxprom18 = zext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom19 = zext i32 %15 to i64
  %16 = load [200 x i32]*, [200 x i32]** %Array2.addr, align 8
  %arrayidx20 = getelementptr inbounds [200 x i32], [200 x i32]* %16, i64 %idxprom19
  %arrayidx21 = getelementptr inbounds [200 x i32], [200 x i32]* %arrayidx20, i32 0, i64 %idxprom18
  %17 = load i32, i32* %arrayidx21, align 4
  %18 = load i32, i32* %j, align 4
  %div = udiv i32 %18, 3
  %idxprom22 = zext i32 %div to i64
  %19 = load i32, i32* %i, align 4
  %idxprom23 = zext i32 %19 to i64
  %20 = load [200 x i32]*, [200 x i32]** %Array2.addr, align 8
  %arrayidx24 = getelementptr inbounds [200 x i32], [200 x i32]* %20, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [200 x i32], [200 x i32]* %arrayidx24, i32 0, i64 %idxprom22
  store i32 %17, i32* %arrayidx25, align 4
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.body.17
  %21 = load i32, i32* %j, align 4
  %add27 = add i32 %21, 3
  store i32 %add27, i32* %j, align 4
  br label %for.cond.15

for.end.28:                                       ; preds = %for.cond.15
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.28
  %22 = load i32, i32* %i, align 4
  %inc30 = add i32 %22, 1
  store i32 %inc30, i32* %i, align 4
  br label %for.cond.12

for.end.31:                                       ; preds = %for.cond.12
  ret void
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
