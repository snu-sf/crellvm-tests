; ModuleID = './SingleSource.UnitTests/48.vla.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bork = global [4 x [3 x i32]] [[3 x i32] [i32 1, i32 2, i32 3], [3 x i32] [i32 4, i32 5, i32 6], [3 x i32] [i32 7, i32 8, i32 9], [3 x i32] [i32 10, i32 11, i32 12]], align 16
@bork2 = global [2 x [3 x [4 x i32]]] [[3 x [4 x i32]] [[4 x i32] [i32 1, i32 2, i32 3, i32 4], [4 x i32] [i32 5, i32 6, i32 7, i32 8], [4 x i32] [i32 9, i32 10, i32 11, i32 12]], [3 x [4 x i32]] [[4 x i32] [i32 13, i32 14, i32 15, i32 16], [4 x i32] [i32 17, i32 18, i32 19, i32 20], [4 x i32] [i32 21, i32 22, i32 23, i32 24]]], align 16

; Function Attrs: nounwind uwtable
define void @function(i16 signext %width, i32* %data) #0 {
entry:
  %width.addr = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i16 %width, i16* %width.addr, align 2
  store i32* %data, i32** %data.addr, align 8
  %0 = load i16, i16* %width.addr, align 2
  %1 = zext i16 %0 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.13, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 4
  br i1 %cmp, label %for.body, label %for.end.15

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %3 = load i32, i32* %j, align 4
  %4 = load i16, i16* %width.addr, align 2
  %conv = sext i16 %4 to i32
  %cmp2 = icmp slt i32 %3, %conv
  br i1 %cmp2, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %j, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @bork, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx6, align 4
  %8 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %8 to i64
  %9 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32*, i32** %data.addr, align 8
  %11 = mul nsw i64 %idxprom8, %1
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i64 %11
  %arrayidx10 = getelementptr inbounds i32, i32* %arrayidx9, i64 %idxprom7
  %12 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp ne i32 %7, %12
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %j, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.13

for.inc.13:                                       ; preds = %for.end
  %14 = load i32, i32* %i, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, i32* %i, align 4
  br label %for.cond

for.end.15:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: noreturn
declare void @abort() #1

; Function Attrs: nounwind uwtable
define void @test() #0 {
entry:
  call void @function(i16 signext 3, i32* getelementptr inbounds ([4 x [3 x i32]], [4 x [3 x i32]]* @bork, i32 0, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @function2(i16 signext %width, i16 signext %width2, i32* %data) #0 {
entry:
  %width.addr = alloca i16, align 2
  %width2.addr = alloca i16, align 2
  %data.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i16 %width, i16* %width.addr, align 2
  store i16 %width2, i16* %width2.addr, align 2
  store i32* %data, i32** %data.addr, align 8
  %0 = load i16, i16* %width.addr, align 2
  %1 = zext i16 %0 to i64
  %2 = load i16, i16* %width2.addr, align 2
  %3 = zext i16 %2 to i64
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %entry
  %4 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %4, 2
  br i1 %cmp, label %for.body, label %for.end.27

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.22, %for.body
  %5 = load i32, i32* %j, align 4
  %6 = load i16, i16* %width.addr, align 2
  %conv = sext i16 %6 to i32
  %cmp2 = icmp slt i32 %5, %conv
  br i1 %cmp2, label %for.body.4, label %for.end.24

for.body.4:                                       ; preds = %for.cond.1
  store i32 0, i32* %k, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body.4
  %7 = load i32, i32* %k, align 4
  %8 = load i16, i16* %width2.addr, align 2
  %conv6 = sext i16 %8 to i32
  %cmp7 = icmp slt i32 %7, %conv6
  br i1 %cmp7, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.5
  %9 = load i32, i32* %k, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [2 x [3 x [4 x i32]]], [2 x [3 x [4 x i32]]]* @bork2, i32 0, i64 %idxprom11
  %arrayidx12 = getelementptr inbounds [3 x [4 x i32]], [3 x [4 x i32]]* %arrayidx, i32 0, i64 %idxprom10
  %arrayidx13 = getelementptr inbounds [4 x i32], [4 x i32]* %arrayidx12, i32 0, i64 %idxprom
  %12 = load i32, i32* %arrayidx13, align 4
  %13 = load i32, i32* %k, align 4
  %idxprom14 = sext i32 %13 to i64
  %14 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %14 to i64
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load i32*, i32** %data.addr, align 8
  %17 = mul nuw i64 %1, %3
  %18 = mul nsw i64 %idxprom16, %17
  %arrayidx17 = getelementptr inbounds i32, i32* %16, i64 %18
  %19 = mul nsw i64 %idxprom15, %3
  %arrayidx18 = getelementptr inbounds i32, i32* %arrayidx17, i64 %19
  %arrayidx19 = getelementptr inbounds i32, i32* %arrayidx18, i64 %idxprom14
  %20 = load i32, i32* %arrayidx19, align 4
  %cmp20 = icmp ne i32 %12, %20
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.9
  call void @abort() #2
  unreachable

if.end:                                           ; preds = %for.body.9
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %k, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.22

for.inc.22:                                       ; preds = %for.end
  %22 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond.1

for.end.24:                                       ; preds = %for.cond.1
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end.24
  %23 = load i32, i32* %i, align 4
  %inc26 = add nsw i32 %23, 1
  store i32 %inc26, i32* %i, align 4
  br label %for.cond

for.end.27:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @test2() #0 {
entry:
  call void @function2(i16 signext 3, i16 signext 4, i32* getelementptr inbounds ([2 x [3 x [4 x i32]]], [2 x [3 x [4 x i32]]]* @bork2, i32 0, i32 0, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  call void @test()
  call void @test2()
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
