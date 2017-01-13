; ModuleID = './MultiSource.Benchmarks.Prolangs-C/63.gnugo.getij.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @getij(i8* %move, i32* %i, i32* %j) #0 {
entry:
  %retval = alloca i32, align 4
  %move.addr = alloca i8*, align 8
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %k = alloca i32, align 4
  store i8* %move, i8** %move.addr, align 8
  store i32* %i, i32** %i.addr, align 8
  store i32* %j, i32** %j.addr, align 8
  %0 = load i8*, i8** %move.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 65
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i8*, i8** %move.addr, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %3 to i32
  %cmp4 = icmp sle i32 %conv3, 72
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %4 = load i8*, i8** %move.addr, align 8
  %arrayidx6 = getelementptr inbounds i8, i8* %4, i64 0
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = sext i8 %5 to i32
  %sub = sub nsw i32 %conv7, 65
  %6 = load i32*, i32** %j.addr, align 8
  store i32 %sub, i32* %6, align 4
  br label %if.end.52

if.else:                                          ; preds = %land.lhs.true, %entry
  %7 = load i8*, i8** %move.addr, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %7, i64 0
  %8 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %8 to i32
  %cmp10 = icmp sge i32 %conv9, 74
  br i1 %cmp10, label %land.lhs.true.12, label %if.else.21

land.lhs.true.12:                                 ; preds = %if.else
  %9 = load i8*, i8** %move.addr, align 8
  %arrayidx13 = getelementptr inbounds i8, i8* %9, i64 0
  %10 = load i8, i8* %arrayidx13, align 1
  %conv14 = sext i8 %10 to i32
  %cmp15 = icmp sle i32 %conv14, 84
  br i1 %cmp15, label %if.then.17, label %if.else.21

if.then.17:                                       ; preds = %land.lhs.true.12
  %11 = load i8*, i8** %move.addr, align 8
  %arrayidx18 = getelementptr inbounds i8, i8* %11, i64 0
  %12 = load i8, i8* %arrayidx18, align 1
  %conv19 = sext i8 %12 to i32
  %sub20 = sub nsw i32 %conv19, 66
  %13 = load i32*, i32** %j.addr, align 8
  store i32 %sub20, i32* %13, align 4
  br label %if.end.51

if.else.21:                                       ; preds = %land.lhs.true.12, %if.else
  %14 = load i8*, i8** %move.addr, align 8
  %arrayidx22 = getelementptr inbounds i8, i8* %14, i64 0
  %15 = load i8, i8* %arrayidx22, align 1
  %conv23 = sext i8 %15 to i32
  %cmp24 = icmp sge i32 %conv23, 97
  br i1 %cmp24, label %land.lhs.true.26, label %if.else.35

land.lhs.true.26:                                 ; preds = %if.else.21
  %16 = load i8*, i8** %move.addr, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %16, i64 0
  %17 = load i8, i8* %arrayidx27, align 1
  %conv28 = sext i8 %17 to i32
  %cmp29 = icmp sle i32 %conv28, 104
  br i1 %cmp29, label %if.then.31, label %if.else.35

if.then.31:                                       ; preds = %land.lhs.true.26
  %18 = load i8*, i8** %move.addr, align 8
  %arrayidx32 = getelementptr inbounds i8, i8* %18, i64 0
  %19 = load i8, i8* %arrayidx32, align 1
  %conv33 = sext i8 %19 to i32
  %sub34 = sub nsw i32 %conv33, 97
  %20 = load i32*, i32** %j.addr, align 8
  store i32 %sub34, i32* %20, align 4
  br label %if.end.50

if.else.35:                                       ; preds = %land.lhs.true.26, %if.else.21
  %21 = load i8*, i8** %move.addr, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %21, i64 0
  %22 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %22 to i32
  %cmp38 = icmp sge i32 %conv37, 106
  br i1 %cmp38, label %land.lhs.true.40, label %if.else.49

land.lhs.true.40:                                 ; preds = %if.else.35
  %23 = load i8*, i8** %move.addr, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %23, i64 0
  %24 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %24 to i32
  %cmp43 = icmp sle i32 %conv42, 116
  br i1 %cmp43, label %if.then.45, label %if.else.49

if.then.45:                                       ; preds = %land.lhs.true.40
  %25 = load i8*, i8** %move.addr, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %25, i64 0
  %26 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %26 to i32
  %sub48 = sub nsw i32 %conv47, 98
  %27 = load i32*, i32** %j.addr, align 8
  store i32 %sub48, i32* %27, align 4
  br label %if.end

if.else.49:                                       ; preds = %land.lhs.true.40, %if.else.35
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then.45
  br label %if.end.50

if.end.50:                                        ; preds = %if.end, %if.then.31
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.then.17
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %if.then
  %28 = load i8*, i8** %move.addr, align 8
  %arrayidx53 = getelementptr inbounds i8, i8* %28, i64 1
  %29 = load i8, i8* %arrayidx53, align 1
  %conv54 = sext i8 %29 to i32
  %sub55 = sub nsw i32 %conv54, 48
  store i32 %sub55, i32* %k, align 4
  %30 = load i8*, i8** %move.addr, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %30, i64 2
  %31 = load i8, i8* %arrayidx56, align 1
  %tobool = icmp ne i8 %31, 0
  br i1 %tobool, label %if.then.57, label %if.end.61

if.then.57:                                       ; preds = %if.end.52
  %32 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %32, 10
  %33 = load i8*, i8** %move.addr, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %33, i64 2
  %34 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %34 to i32
  %add = add nsw i32 %mul, %conv59
  %sub60 = sub nsw i32 %add, 48
  store i32 %sub60, i32* %k, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.57, %if.end.52
  %35 = load i32, i32* %k, align 4
  %sub62 = sub nsw i32 19, %35
  %36 = load i32*, i32** %i.addr, align 8
  store i32 %sub62, i32* %36, align 4
  %37 = load i32*, i32** %i.addr, align 8
  %38 = load i32, i32* %37, align 4
  %cmp63 = icmp sge i32 %38, 0
  br i1 %cmp63, label %land.lhs.true.65, label %if.else.69

land.lhs.true.65:                                 ; preds = %if.end.61
  %39 = load i32*, i32** %i.addr, align 8
  %40 = load i32, i32* %39, align 4
  %cmp66 = icmp sle i32 %40, 18
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %land.lhs.true.65
  store i32 1, i32* %retval
  br label %return

if.else.69:                                       ; preds = %land.lhs.true.65, %if.end.61
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.69, %if.then.68, %if.else.49
  %41 = load i32, i32* %retval
  ret i32 %41
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
