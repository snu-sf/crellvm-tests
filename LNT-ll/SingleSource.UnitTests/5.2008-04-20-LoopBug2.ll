; ModuleID = './SingleSource.UnitTests/5.2008-04-20-LoopBug2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @foo(i32 %i, i32* %array) #0 {
entry:
  %i.addr = alloca i32, align 4
  %array.addr = alloca i32*, align 8
  %j = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  store i32* %array, i32** %array.addr, align 8
  store i32 3, i32* %j, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %j, align 4
  %sub = sub i32 %0, 1
  %idxprom = zext i32 %sub to i64
  %1 = load i32*, i32** %array.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %3 = load i32, i32* %j, align 4
  %idxprom1 = zext i32 %3 to i64
  %4 = load i32*, i32** %array.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %4, i64 %idxprom1
  store i32 %2, i32* %arrayidx2, align 4
  %5 = load i32, i32* %j, align 4
  %dec = add i32 %5, -1
  store i32 %dec, i32* %j, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i32, i32* %j, align 4
  %7 = load i32, i32* %i.addr, align 4
  %cmp = icmp ugt i32 %6, %7
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %8 = load i32, i32* %i.addr, align 4
  %9 = load i32*, i32** %array.addr, align 8
  %arrayidx3 = getelementptr inbounds i32, i32* %9, i64 0
  %10 = load i32, i32* %arrayidx3, align 4
  %11 = load i32*, i32** %array.addr, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %11, i64 1
  %12 = load i32, i32* %arrayidx4, align 4
  %13 = load i32*, i32** %array.addr, align 8
  %arrayidx5 = getelementptr inbounds i32, i32* %13, i64 2
  %14 = load i32, i32* %arrayidx5, align 4
  %15 = load i32*, i32** %array.addr, align 8
  %arrayidx6 = getelementptr inbounds i32, i32* %15, i64 3
  %16 = load i32, i32* %arrayidx6, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), i32 %8, i32 %10, i32 %12, i32 %14, i32 %16)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %array = alloca [4 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %array, i32 0, i64 0
  store i32 5, i32* %arrayidx, align 4
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %array, i32 0, i64 1
  store i32 6, i32* %arrayidx1, align 4
  %arrayidx2 = getelementptr inbounds [4 x i32], [4 x i32]* %array, i32 0, i64 2
  store i32 7, i32* %arrayidx2, align 4
  %arrayidx3 = getelementptr inbounds [4 x i32], [4 x i32]* %array, i32 0, i64 3
  store i32 8, i32* %arrayidx3, align 4
  %1 = load i32, i32* %i, align 4
  %arraydecay = getelementptr inbounds [4 x i32], [4 x i32]* %array, i32 0, i32 0
  call void @foo(i32 %1, i32* %arraydecay)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds [4 x i32], [4 x i32]* %array, i32 0, i64 0
  store i32 5, i32* %arrayidx4, align 4
  %arrayidx5 = getelementptr inbounds [4 x i32], [4 x i32]* %array, i32 0, i64 1
  store i32 6, i32* %arrayidx5, align 4
  %arrayidx6 = getelementptr inbounds [4 x i32], [4 x i32]* %array, i32 0, i64 2
  store i32 7, i32* %arrayidx6, align 4
  %arrayidx7 = getelementptr inbounds [4 x i32], [4 x i32]* %array, i32 0, i64 3
  store i32 8, i32* %arrayidx7, align 4
  %arraydecay8 = getelementptr inbounds [4 x i32], [4 x i32]* %array, i32 0, i32 0
  call void @foo(i32 -1, i32* %arraydecay8)
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
