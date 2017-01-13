; ModuleID = './MultiSource.Benchmarks.Olden/32.tsp.args.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag = common global i32 0, align 4
@NumNodes = common global i32 0, align 4
@NDim = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @mylog(i32 %num) #0 {
entry:
  %num.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 %num, i32* %num.addr, align 4
  store i32 0, i32* %j, align 4
  store i32 1, i32* %k, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, i32* %k, align 4
  %1 = load i32, i32* %num.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %k, align 4
  %mul = mul nsw i32 %2, 2
  store i32 %mul, i32* %k, align 4
  %3 = load i32, i32* %j, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %j, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %j, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @dealwithargs(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %num = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 3
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2)
  store i32 %call, i32* @flag, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* @flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5)
  store i32 %call4, i32* @NumNodes, align 4
  br label %if.end.6

if.else.5:                                        ; preds = %if.end
  store i32 4, i32* @NumNodes, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.2
  %6 = load i32, i32* @NumNodes, align 4
  %call7 = call i32 @mylog(i32 %6)
  store i32 %call7, i32* @NDim, align 4
  %7 = load i32, i32* %argc.addr, align 4
  %cmp8 = icmp sgt i32 %7, 1
  br i1 %cmp8, label %if.then.9, label %if.else.12

if.then.9:                                        ; preds = %if.end.6
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 @atoi(i8* %9)
  store i32 %call11, i32* %num, align 4
  br label %if.end.13

if.else.12:                                       ; preds = %if.end.6
  store i32 65535, i32* %num, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.12, %if.then.9
  %10 = load i32, i32* %num, align 4
  ret i32 %10
}

declare i32 @atoi(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
