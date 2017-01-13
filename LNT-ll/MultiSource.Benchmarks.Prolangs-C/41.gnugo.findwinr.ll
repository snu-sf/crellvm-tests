; ModuleID = './MultiSource.Benchmarks.Prolangs-C/41.gnugo.findwinr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@p = external global [19 x [19 x i8]], align 16
@umove = external global i32, align 4
@l = external global [19 x [19 x i8]], align 16
@lib = external global i32, align 4
@mymove = external global i32, align 4

; Function Attrs: nounwind uwtable
define i32 @findwinner(i32* %i, i32* %j, i32* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %val.addr = alloca i32*, align 8
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %ti = alloca [3 x i32], align 4
  %tj = alloca [3 x i32], align 4
  %tval = alloca i32, align 4
  %ct = alloca i32, align 4
  %u = alloca i32, align 4
  %v = alloca i32, align 4
  %lib1 = alloca i32, align 4
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  %0 = load i32*, i32** %i.addr, align 8
  store i32 -1, i32* %0, align 4
  %1 = load i32*, i32** %j.addr, align 8
  store i32 -1, i32* %1, align 4
  %2 = load i32*, i32** %val.addr, align 8
  store i32 -1, i32* %2, align 4
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.111, %entry
  %3 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %3, 19
  br i1 %cmp, label %for.body, label %for.end.113

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %n, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.108, %for.body
  %4 = load i32, i32* %n, align 4
  %cmp2 = icmp slt i32 %4, 19
  br i1 %cmp2, label %for.body.3, label %for.end.110

for.body.3:                                       ; preds = %for.cond.1
  %5 = load i32, i32* %n, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %m, align 4
  %idxprom4 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom4
  %arrayidx5 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %7 to i32
  %8 = load i32, i32* @umove, align 4
  %cmp6 = icmp eq i32 %conv, %8
  br i1 %cmp6, label %land.lhs.true, label %if.end.107

land.lhs.true:                                    ; preds = %for.body.3
  %9 = load i32, i32* %n, align 4
  %idxprom8 = sext i32 %9 to i64
  %10 = load i32, i32* %m, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx10, i32 0, i64 %idxprom8
  %11 = load i8, i8* %arrayidx11, align 1
  %conv12 = zext i8 %11 to i32
  %cmp13 = icmp slt i32 %conv12, 4
  br i1 %cmp13, label %if.then, label %if.end.107

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %ct, align 4
  call void @initmark()
  %12 = load i32, i32* %m, align 4
  %13 = load i32, i32* %n, align 4
  %arraydecay = getelementptr inbounds [3 x i32], [3 x i32]* %ti, i32 0, i32 0
  %arraydecay15 = getelementptr inbounds [3 x i32], [3 x i32]* %tj, i32 0, i32 0
  %14 = load i32, i32* @umove, align 4
  %15 = load i32, i32* %n, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load i32, i32* %m, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i32 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx18, i32 0, i64 %idxprom16
  %17 = load i8, i8* %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %call = call i32 @findopen(i32 %12, i32 %13, i32* %arraydecay, i32* %arraydecay15, i32 %14, i32 %conv20, i32* %ct)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.21, label %if.end.106

if.then.21:                                       ; preds = %if.then
  %18 = load i32, i32* %n, align 4
  %idxprom22 = sext i32 %18 to i64
  %19 = load i32, i32* %m, align 4
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i32 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx24, i32 0, i64 %idxprom22
  %20 = load i8, i8* %arrayidx25, align 1
  %conv26 = zext i8 %20 to i32
  %cmp27 = icmp eq i32 %conv26, 1
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %if.then.21
  %21 = load i32*, i32** %val.addr, align 8
  %22 = load i32, i32* %21, align 4
  %cmp30 = icmp slt i32 %22, 120
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then.29
  %23 = load i32*, i32** %val.addr, align 8
  store i32 120, i32* %23, align 4
  %arrayidx33 = getelementptr inbounds [3 x i32], [3 x i32]* %ti, i32 0, i64 0
  %24 = load i32, i32* %arrayidx33, align 4
  %25 = load i32*, i32** %i.addr, align 8
  store i32 %24, i32* %25, align 4
  %arrayidx34 = getelementptr inbounds [3 x i32], [3 x i32]* %tj, i32 0, i64 0
  %26 = load i32, i32* %arrayidx34, align 4
  %27 = load i32*, i32** %j.addr, align 8
  store i32 %26, i32* %27, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then.29
  br label %if.end.105

if.else:                                          ; preds = %if.then.21
  store i32 0, i32* %u, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.102, %if.else
  %28 = load i32, i32* %u, align 4
  %29 = load i32, i32* %n, align 4
  %idxprom36 = sext i32 %29 to i64
  %30 = load i32, i32* %m, align 4
  %idxprom37 = sext i32 %30 to i64
  %arrayidx38 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i32 0, i64 %idxprom37
  %arrayidx39 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx38, i32 0, i64 %idxprom36
  %31 = load i8, i8* %arrayidx39, align 1
  %conv40 = zext i8 %31 to i32
  %cmp41 = icmp slt i32 %28, %conv40
  br i1 %cmp41, label %for.body.43, label %for.end.104

for.body.43:                                      ; preds = %for.cond.35
  store i32 0, i32* %v, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc, %for.body.43
  %32 = load i32, i32* %v, align 4
  %33 = load i32, i32* %n, align 4
  %idxprom45 = sext i32 %33 to i64
  %34 = load i32, i32* %m, align 4
  %idxprom46 = sext i32 %34 to i64
  %arrayidx47 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @l, i32 0, i64 %idxprom46
  %arrayidx48 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx47, i32 0, i64 %idxprom45
  %35 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %35 to i32
  %cmp50 = icmp slt i32 %32, %conv49
  br i1 %cmp50, label %for.body.52, label %for.end

for.body.52:                                      ; preds = %for.cond.44
  %36 = load i32, i32* %u, align 4
  %37 = load i32, i32* %v, align 4
  %cmp53 = icmp ne i32 %36, %37
  br i1 %cmp53, label %if.then.55, label %if.end.101

if.then.55:                                       ; preds = %for.body.52
  store i32 0, i32* @lib, align 4
  %38 = load i32, i32* %u, align 4
  %idxprom56 = sext i32 %38 to i64
  %arrayidx57 = getelementptr inbounds [3 x i32], [3 x i32]* %ti, i32 0, i64 %idxprom56
  %39 = load i32, i32* %arrayidx57, align 4
  %40 = load i32, i32* %u, align 4
  %idxprom58 = sext i32 %40 to i64
  %arrayidx59 = getelementptr inbounds [3 x i32], [3 x i32]* %tj, i32 0, i64 %idxprom58
  %41 = load i32, i32* %arrayidx59, align 4
  %42 = load i32, i32* @mymove, align 4
  call void @countlib(i32 %39, i32 %41, i32 %42)
  %43 = load i32, i32* @lib, align 4
  %cmp60 = icmp sgt i32 %43, 0
  br i1 %cmp60, label %if.then.62, label %if.end.100

if.then.62:                                       ; preds = %if.then.55
  %44 = load i32, i32* @lib, align 4
  store i32 %44, i32* %lib1, align 4
  %45 = load i32, i32* @mymove, align 4
  %conv63 = trunc i32 %45 to i8
  %46 = load i32, i32* %u, align 4
  %idxprom64 = sext i32 %46 to i64
  %arrayidx65 = getelementptr inbounds [3 x i32], [3 x i32]* %tj, i32 0, i64 %idxprom64
  %47 = load i32, i32* %arrayidx65, align 4
  %idxprom66 = sext i32 %47 to i64
  %48 = load i32, i32* %u, align 4
  %idxprom67 = sext i32 %48 to i64
  %arrayidx68 = getelementptr inbounds [3 x i32], [3 x i32]* %ti, i32 0, i64 %idxprom67
  %49 = load i32, i32* %arrayidx68, align 4
  %idxprom69 = sext i32 %49 to i64
  %arrayidx70 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx70, i32 0, i64 %idxprom66
  store i8 %conv63, i8* %arrayidx71, align 1
  store i32 0, i32* @lib, align 4
  %50 = load i32, i32* %v, align 4
  %idxprom72 = sext i32 %50 to i64
  %arrayidx73 = getelementptr inbounds [3 x i32], [3 x i32]* %ti, i32 0, i64 %idxprom72
  %51 = load i32, i32* %arrayidx73, align 4
  %52 = load i32, i32* %v, align 4
  %idxprom74 = sext i32 %52 to i64
  %arrayidx75 = getelementptr inbounds [3 x i32], [3 x i32]* %tj, i32 0, i64 %idxprom74
  %53 = load i32, i32* %arrayidx75, align 4
  %54 = load i32, i32* @umove, align 4
  call void @countlib(i32 %51, i32 %53, i32 %54)
  %55 = load i32, i32* %lib1, align 4
  %cmp76 = icmp eq i32 %55, 1
  br i1 %cmp76, label %land.lhs.true.78, label %if.else.82

land.lhs.true.78:                                 ; preds = %if.then.62
  %56 = load i32, i32* @lib, align 4
  %cmp79 = icmp sgt i32 %56, 0
  br i1 %cmp79, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %land.lhs.true.78
  store i32 0, i32* %tval, align 4
  br label %if.end.83

if.else.82:                                       ; preds = %land.lhs.true.78, %if.then.62
  %57 = load i32, i32* @lib, align 4
  %mul = mul nsw i32 20, %57
  %sub = sub nsw i32 120, %mul
  store i32 %sub, i32* %tval, align 4
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.82, %if.then.81
  %58 = load i32*, i32** %val.addr, align 8
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %tval, align 4
  %cmp84 = icmp slt i32 %59, %60
  br i1 %cmp84, label %if.then.86, label %if.end.91

if.then.86:                                       ; preds = %if.end.83
  %61 = load i32, i32* %tval, align 4
  %62 = load i32*, i32** %val.addr, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* %u, align 4
  %idxprom87 = sext i32 %63 to i64
  %arrayidx88 = getelementptr inbounds [3 x i32], [3 x i32]* %ti, i32 0, i64 %idxprom87
  %64 = load i32, i32* %arrayidx88, align 4
  %65 = load i32*, i32** %i.addr, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %u, align 4
  %idxprom89 = sext i32 %66 to i64
  %arrayidx90 = getelementptr inbounds [3 x i32], [3 x i32]* %tj, i32 0, i64 %idxprom89
  %67 = load i32, i32* %arrayidx90, align 4
  %68 = load i32*, i32** %j.addr, align 8
  store i32 %67, i32* %68, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.86, %if.end.83
  %69 = load i32, i32* %u, align 4
  %idxprom92 = sext i32 %69 to i64
  %arrayidx93 = getelementptr inbounds [3 x i32], [3 x i32]* %tj, i32 0, i64 %idxprom92
  %70 = load i32, i32* %arrayidx93, align 4
  %idxprom94 = sext i32 %70 to i64
  %71 = load i32, i32* %u, align 4
  %idxprom95 = sext i32 %71 to i64
  %arrayidx96 = getelementptr inbounds [3 x i32], [3 x i32]* %ti, i32 0, i64 %idxprom95
  %72 = load i32, i32* %arrayidx96, align 4
  %idxprom97 = sext i32 %72 to i64
  %arrayidx98 = getelementptr inbounds [19 x [19 x i8]], [19 x [19 x i8]]* @p, i32 0, i64 %idxprom97
  %arrayidx99 = getelementptr inbounds [19 x i8], [19 x i8]* %arrayidx98, i32 0, i64 %idxprom94
  store i8 0, i8* %arrayidx99, align 1
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.91, %if.then.55
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %for.body.52
  br label %for.inc

for.inc:                                          ; preds = %if.end.101
  %73 = load i32, i32* %v, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %v, align 4
  br label %for.cond.44

for.end:                                          ; preds = %for.cond.44
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.end
  %74 = load i32, i32* %u, align 4
  %inc103 = add nsw i32 %74, 1
  store i32 %inc103, i32* %u, align 4
  br label %for.cond.35

for.end.104:                                      ; preds = %for.cond.35
  br label %if.end.105

if.end.105:                                       ; preds = %for.end.104, %if.end
  br label %if.end.106

if.end.106:                                       ; preds = %if.end.105, %if.then
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %land.lhs.true, %for.body.3
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %75 = load i32, i32* %n, align 4
  %inc109 = add nsw i32 %75, 1
  store i32 %inc109, i32* %n, align 4
  br label %for.cond.1

for.end.110:                                      ; preds = %for.cond.1
  br label %for.inc.111

for.inc.111:                                      ; preds = %for.end.110
  %76 = load i32, i32* %m, align 4
  %inc112 = add nsw i32 %76, 1
  store i32 %inc112, i32* %m, align 4
  br label %for.cond

for.end.113:                                      ; preds = %for.cond
  %77 = load i32*, i32** %val.addr, align 8
  %78 = load i32, i32* %77, align 4
  %cmp114 = icmp sgt i32 %78, 0
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %for.end.113
  store i32 1, i32* %retval
  br label %return

if.else.117:                                      ; preds = %for.end.113
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.117, %if.then.116
  %79 = load i32, i32* %retval
  ret i32 %79
}

declare void @initmark() #1

declare i32 @findopen(i32, i32, i32*, i32*, i32, i32, i32*) #1

declare void @countlib(i32, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
