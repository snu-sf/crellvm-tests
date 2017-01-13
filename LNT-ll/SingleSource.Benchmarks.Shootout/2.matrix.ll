; ModuleID = './SingleSource.Benchmarks.Shootout/2.matrix.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32** @mkmatrix(i32 %rows, i32 %cols) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %cols.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %m = alloca i32**, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %cols, i32* %cols.addr, align 4
  store i32 1, i32* %count, align 4
  %0 = load i32, i32* %rows.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 8
  %call = call noalias i8* @malloc(i64 %mul) #4
  %1 = bitcast i8* %call to i32**
  store i32** %1, i32*** %m, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.14, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %rows.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.16

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %cols.addr, align 4
  %conv2 = sext i32 %4 to i64
  %mul3 = mul i64 %conv2, 4
  %call4 = call noalias i8* @malloc(i64 %mul3) #4
  %5 = bitcast i8* %call4 to i32*
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32**, i32*** %m, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %7, i64 %idxprom
  store i32* %5, i32** %arrayidx, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4
  %9 = load i32, i32* %cols.addr, align 4
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.5
  %10 = load i32, i32* %count, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %count, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i32**, i32*** %m, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %13, i64 %idxprom10
  %14 = load i32*, i32** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %14, i64 %idxprom9
  store i32 %10, i32* %arrayidx12, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %15 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.end
  %16 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %16, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond

for.end.16:                                       ; preds = %for.cond
  %17 = load i32**, i32*** %m, align 8
  ret i32** %17
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @zeromatrix(i32 %rows, i32 %cols, i32** %m) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %cols.addr = alloca i32, align 4
  %m.addr = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %cols, i32* %cols.addr, align 4
  store i32** %m, i32*** %m.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.6, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %rows.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.8

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %cols.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %6 = load i32**, i32*** %m.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %6, i64 %idxprom4
  %7 = load i32*, i32** %arrayidx, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %7, i64 %idxprom
  store i32 0, i32* %arrayidx5, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.3
  %8 = load i32, i32* %j, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.6

for.inc.6:                                        ; preds = %for.end
  %9 = load i32, i32* %i, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, i32* %i, align 4
  br label %for.cond

for.end.8:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @freematrix(i32 %rows, i32** %m) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %m.addr = alloca i32**, align 8
  store i32 %rows, i32* %rows.addr, align 4
  store i32** %m, i32*** %m.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %rows.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %rows.addr, align 4
  %cmp = icmp sgt i32 %dec, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, i32* %rows.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i32**, i32*** %m.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %2, i64 %idxprom
  %3 = load i32*, i32** %arrayidx, align 8
  %4 = bitcast i32* %3 to i8*
  call void @free(i8* %4) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %5 = load i32**, i32*** %m.addr, align 8
  %6 = bitcast i32** %5 to i8*
  call void @free(i8* %6) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32** @mmult(i32 %rows, i32 %cols, i32** %m1, i32** %m2, i32** %m3) #0 {
entry:
  %rows.addr = alloca i32, align 4
  %cols.addr = alloca i32, align 4
  %m1.addr = alloca i32**, align 8
  %m2.addr = alloca i32**, align 8
  %m3.addr = alloca i32**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %val = alloca i32, align 4
  store i32 %rows, i32* %rows.addr, align 4
  store i32 %cols, i32* %cols.addr, align 4
  store i32** %m1, i32*** %m1.addr, align 8
  store i32** %m2, i32*** %m2.addr, align 8
  store i32** %m3, i32*** %m3.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.20, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %rows.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.22

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.17, %for.body
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* %cols.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.19

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %val, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body.3
  %4 = load i32, i32* %k, align 4
  %5 = load i32, i32* %cols.addr, align 4
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %6 = load i32, i32* %k, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i32**, i32*** %m1.addr, align 8
  %arrayidx = getelementptr inbounds i32*, i32** %8, i64 %idxprom7
  %9 = load i32*, i32** %arrayidx, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %9, i64 %idxprom
  %10 = load i32, i32* %arrayidx8, align 4
  %11 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load i32, i32* %k, align 4
  %idxprom10 = sext i32 %12 to i64
  %13 = load i32**, i32*** %m2.addr, align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %13, i64 %idxprom10
  %14 = load i32*, i32** %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds i32, i32* %14, i64 %idxprom9
  %15 = load i32, i32* %arrayidx12, align 4
  %mul = mul nsw i32 %10, %15
  %16 = load i32, i32* %val, align 4
  %add = add nsw i32 %16, %mul
  store i32 %add, i32* %val, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %17 = load i32, i32* %k, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  %18 = load i32, i32* %val, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %19 to i64
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load i32**, i32*** %m3.addr, align 8
  %arrayidx15 = getelementptr inbounds i32*, i32** %21, i64 %idxprom14
  %22 = load i32*, i32** %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %22, i64 %idxprom13
  store i32 %18, i32* %arrayidx16, align 4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end
  %23 = load i32, i32* %j, align 4
  %inc18 = add nsw i32 %23, 1
  store i32 %inc18, i32* %j, align 4
  br label %for.cond.1

for.end.19:                                       ; preds = %for.cond.1
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.end.19
  %24 = load i32, i32* %i, align 4
  %inc21 = add nsw i32 %24, 1
  store i32 %inc21, i32* %i, align 4
  br label %for.cond

for.end.22:                                       ; preds = %for.cond
  %25 = load i32**, i32*** %m3.addr, align 8
  ret i32** %25
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %m1 = alloca i32**, align 8
  %m2 = alloca i32**, align 8
  %mm = alloca i32**, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp eq i32 %0, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #5
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 3000000, %cond.false ]
  store i32 %cond, i32* %n, align 4
  %call1 = call i32** @mkmatrix(i32 10, i32 10)
  store i32** %call1, i32*** %m1, align 8
  %call2 = call i32** @mkmatrix(i32 10, i32 10)
  store i32** %call2, i32*** %m2, align 8
  %call3 = call i32** @mkmatrix(i32 10, i32 10)
  store i32** %call3, i32*** %mm, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n, align 4
  %cmp4 = icmp slt i32 %3, %4
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32**, i32*** %m1, align 8
  %6 = load i32**, i32*** %m2, align 8
  %7 = load i32**, i32*** %mm, align 8
  %call5 = call i32** @mmult(i32 10, i32 10, i32** %5, i32** %6, i32** %7)
  store i32** %call5, i32*** %mm, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load i32**, i32*** %mm, align 8
  %arrayidx6 = getelementptr inbounds i32*, i32** %9, i64 0
  %10 = load i32*, i32** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %10, i64 0
  %11 = load i32, i32* %arrayidx7, align 4
  %12 = load i32**, i32*** %mm, align 8
  %arrayidx8 = getelementptr inbounds i32*, i32** %12, i64 2
  %13 = load i32*, i32** %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %13, i64 3
  %14 = load i32, i32* %arrayidx9, align 4
  %15 = load i32**, i32*** %mm, align 8
  %arrayidx10 = getelementptr inbounds i32*, i32** %15, i64 3
  %16 = load i32*, i32** %arrayidx10, align 8
  %arrayidx11 = getelementptr inbounds i32, i32* %16, i64 2
  %17 = load i32, i32* %arrayidx11, align 4
  %18 = load i32**, i32*** %mm, align 8
  %arrayidx12 = getelementptr inbounds i32*, i32** %18, i64 4
  %19 = load i32*, i32** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %19, i64 4
  %20 = load i32, i32* %arrayidx13, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i32 0, i32 0), i32 %11, i32 %14, i32 %17, i32 %20)
  %21 = load i32**, i32*** %m1, align 8
  call void @freematrix(i32 10, i32** %21)
  %22 = load i32**, i32*** %m2, align 8
  call void @freematrix(i32 10, i32** %22)
  %23 = load i32**, i32*** %mm, align 8
  call void @freematrix(i32 10, i32** %23)
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #2

declare i32 @printf(i8*, ...) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
