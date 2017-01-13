; ModuleID = './SingleSource.Benchmarks.Shootout/11.ary3.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca i32*, align 8
  %y = alloca i32*, align 8
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
  %call = call i32 @atoi(i8* %2) #4
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ 1500000, %cond.false ]
  store i32 %cond, i32* %n, align 4
  %3 = load i32, i32* %n, align 4
  %conv = sext i32 %3 to i64
  %call1 = call noalias i8* @calloc(i64 %conv, i64 4) #5
  %4 = bitcast i8* %call1 to i32*
  store i32* %4, i32** %x, align 8
  %5 = load i32, i32* %n, align 4
  %conv2 = sext i32 %5 to i64
  %call3 = call noalias i8* @calloc(i64 %conv2, i64 4) #5
  %6 = bitcast i8* %call3 to i32*
  store i32* %6, i32** %y, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* %n, align 4
  %cmp4 = icmp slt i32 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %add = add nsw i32 %9, 1
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load i32*, i32** %x, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %11, i64 %idxprom
  store i32 %add, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.22, %for.end
  %13 = load i32, i32* %k, align 4
  %cmp8 = icmp slt i32 %13, 1000
  br i1 %cmp8, label %for.body.10, label %for.end.24

for.body.10:                                      ; preds = %for.cond.7
  %14 = load i32, i32* %n, align 4
  %sub = sub nsw i32 %14, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.20, %for.body.10
  %15 = load i32, i32* %i, align 4
  %cmp12 = icmp sge i32 %15, 0
  br i1 %cmp12, label %for.body.14, label %for.end.21

for.body.14:                                      ; preds = %for.cond.11
  %16 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %16 to i64
  %17 = load i32*, i32** %x, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %17, i64 %idxprom15
  %18 = load i32, i32* %arrayidx16, align 4
  %19 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load i32*, i32** %y, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %20, i64 %idxprom17
  %21 = load i32, i32* %arrayidx18, align 4
  %add19 = add nsw i32 %21, %18
  store i32 %add19, i32* %arrayidx18, align 4
  br label %for.inc.20

for.inc.20:                                       ; preds = %for.body.14
  %22 = load i32, i32* %i, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.11

for.end.21:                                       ; preds = %for.cond.11
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end.21
  %23 = load i32, i32* %k, align 4
  %inc23 = add nsw i32 %23, 1
  store i32 %inc23, i32* %k, align 4
  br label %for.cond.7

for.end.24:                                       ; preds = %for.cond.7
  %24 = load i32*, i32** %y, align 8
  %arrayidx25 = getelementptr inbounds i32, i32* %24, i64 0
  %25 = load i32, i32* %arrayidx25, align 4
  %26 = load i32, i32* %n, align 4
  %sub26 = sub nsw i32 %26, 1
  %idxprom27 = sext i32 %sub26 to i64
  %27 = load i32*, i32** %y, align 8
  %arrayidx28 = getelementptr inbounds i32, i32* %27, i64 %idxprom27
  %28 = load i32, i32* %arrayidx28, align 4
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 %25, i32 %28)
  %29 = load i32*, i32** %x, align 8
  %30 = bitcast i32* %29 to i8*
  call void @free(i8* %30) #5
  %31 = load i32*, i32** %y, align 8
  %32 = bitcast i32* %31 to i8*
  call void @free(i8* %32) #5
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
