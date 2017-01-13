; ModuleID = './MultiSource.Benchmarks.Prolangs-C/62.gnugo.opening.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tnode = type { i32, i32, i32, [8 x i32] }

@opening.tree = internal global [21 x %struct.tnode] [%struct.tnode { i32 -1, i32 -1, i32 8, [8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 20] }, %struct.tnode { i32 2, i32 3, i32 2, [8 x i32] [i32 8, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 2, i32 4, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 3, i32 2, i32 2, [8 x i32] [i32 11, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 3, i32 3, i32 6, [8 x i32] [i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 0, i32 0] }, %struct.tnode { i32 3, i32 4, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 4, i32 2, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 4, i32 3, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 4, i32 2, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 4, i32 3, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 3, i32 2, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 2, i32 4, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 3, i32 4, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 2, i32 3, i32 0, [8 x i32] zeroinitializer }, %struct.tnode { i32 2, i32 5, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 2, i32 6, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 3, i32 5, i32 1, [8 x i32] [i32 10, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 5, i32 2, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 5, i32 3, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 6, i32 2, i32 1, [8 x i32] [i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0] }, %struct.tnode { i32 2, i32 2, i32 0, [8 x i32] zeroinitializer }], align 16
@rd = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @opening(i32* %i, i32* %j, i32* %cnd, i32 %type) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %cnd.addr = alloca i32*, align 8
  %type.addr = alloca i32, align 4
  %m = alloca i32, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32* %cnd, i32** %cnd.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %type.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load i32*, i32** %cnd.addr, align 8
  %3 = load i32, i32* %2, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i32 0, i64 %idxprom
  %i2 = getelementptr inbounds %struct.tnode, %struct.tnode* %arrayidx, i32 0, i32 0
  %4 = load i32, i32* %i2, align 4
  %sub = sub nsw i32 18, %4
  %5 = load i32*, i32** %i.addr, align 8
  store i32 %sub, i32* %5, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %6 = load i32*, i32** %cnd.addr, align 8
  %7 = load i32, i32* %6, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i32 0, i64 %idxprom3
  %i5 = getelementptr inbounds %struct.tnode, %struct.tnode* %arrayidx4, i32 0, i32 0
  %8 = load i32, i32* %i5, align 4
  %9 = load i32*, i32** %i.addr, align 8
  store i32 %8, i32* %9, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load i32, i32* %type.addr, align 4
  %cmp6 = icmp eq i32 %10, 2
  br i1 %cmp6, label %if.then.9, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %if.end
  %11 = load i32, i32* %type.addr, align 4
  %cmp8 = icmp eq i32 %11, 3
  br i1 %cmp8, label %if.then.9, label %if.else.14

if.then.9:                                        ; preds = %lor.lhs.false.7, %if.end
  %12 = load i32*, i32** %cnd.addr, align 8
  %13 = load i32, i32* %12, align 4
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i32 0, i64 %idxprom10
  %j12 = getelementptr inbounds %struct.tnode, %struct.tnode* %arrayidx11, i32 0, i32 1
  %14 = load i32, i32* %j12, align 4
  %sub13 = sub nsw i32 18, %14
  %15 = load i32*, i32** %j.addr, align 8
  store i32 %sub13, i32* %15, align 4
  br label %if.end.18

if.else.14:                                       ; preds = %lor.lhs.false.7
  %16 = load i32*, i32** %cnd.addr, align 8
  %17 = load i32, i32* %16, align 4
  %idxprom15 = sext i32 %17 to i64
  %arrayidx16 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i32 0, i64 %idxprom15
  %j17 = getelementptr inbounds %struct.tnode, %struct.tnode* %arrayidx16, i32 0, i32 1
  %18 = load i32, i32* %j17, align 4
  %19 = load i32*, i32** %j.addr, align 8
  store i32 %18, i32* %19, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.else.14, %if.then.9
  %20 = load i32*, i32** %cnd.addr, align 8
  %21 = load i32, i32* %20, align 4
  %idxprom19 = sext i32 %21 to i64
  %arrayidx20 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i32 0, i64 %idxprom19
  %ndct = getelementptr inbounds %struct.tnode, %struct.tnode* %arrayidx20, i32 0, i32 2
  %22 = load i32, i32* %ndct, align 4
  %tobool = icmp ne i32 %22, 0
  br i1 %tobool, label %if.then.21, label %if.else.29

if.then.21:                                       ; preds = %if.end.18
  call void @random_nasko(i32* @rd)
  %23 = load i32, i32* @rd, align 4
  %24 = load i32*, i32** %cnd.addr, align 8
  %25 = load i32, i32* %24, align 4
  %idxprom22 = sext i32 %25 to i64
  %arrayidx23 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i32 0, i64 %idxprom22
  %ndct24 = getelementptr inbounds %struct.tnode, %struct.tnode* %arrayidx23, i32 0, i32 2
  %26 = load i32, i32* %ndct24, align 4
  %rem = srem i32 %23, %26
  store i32 %rem, i32* %m, align 4
  %27 = load i32, i32* %m, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load i32*, i32** %cnd.addr, align 8
  %29 = load i32, i32* %28, align 4
  %idxprom26 = sext i32 %29 to i64
  %arrayidx27 = getelementptr inbounds [21 x %struct.tnode], [21 x %struct.tnode]* @opening.tree, i32 0, i64 %idxprom26
  %next = getelementptr inbounds %struct.tnode, %struct.tnode* %arrayidx27, i32 0, i32 3
  %arrayidx28 = getelementptr inbounds [8 x i32], [8 x i32]* %next, i32 0, i64 %idxprom25
  %30 = load i32, i32* %arrayidx28, align 4
  %31 = load i32*, i32** %cnd.addr, align 8
  store i32 %30, i32* %31, align 4
  store i32 1, i32* %retval
  br label %return

if.else.29:                                       ; preds = %if.end.18
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.29, %if.then.21
  %32 = load i32, i32* %retval
  ret i32 %32
}

declare void @random_nasko(i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
