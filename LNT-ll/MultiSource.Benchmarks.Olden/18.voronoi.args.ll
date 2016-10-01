; ModuleID = './MultiSource.Benchmarks.Olden/18.voronoi.args.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@flag = external global i32, align 4
@NumNodes = external global i32, align 4
@NDim = external global i32, align 4
@.str = private unnamed_addr constant [44 x i8] c"Voronoi with %d size on %d procs of dim %d\0A\00", align 1

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
  %size = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 3
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #3
  store i32 %call, i32* @flag, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 1, i32* @flag, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5) #3
  store i32 %call4, i32* @NumNodes, align 4
  br label %if.end.6

if.else.5:                                        ; preds = %if.end
  store i32 1, i32* @NumNodes, align 4
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.2
  %6 = load i32, i32* %argc.addr, align 4
  %cmp7 = icmp sgt i32 %6, 1
  br i1 %cmp7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %if.end.6
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %7, i64 1
  %8 = load i8*, i8** %arrayidx9, align 8
  %call10 = call i32 @atoi(i8* %8) #3
  store i32 %call10, i32* %size, align 4
  br label %if.end.12

if.else.11:                                       ; preds = %if.end.6
  store i32 32, i32* %size, align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.11, %if.then.8
  %9 = load i32, i32* @NumNodes, align 4
  %call13 = call i32 @mylog(i32 %9)
  store i32 %call13, i32* @NDim, align 4
  %10 = load i32, i32* %size, align 4
  %11 = load i32, i32* @NumNodes, align 4
  %12 = load i32, i32* @NDim, align 4
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), i32 %10, i32 %11, i32 %12)
  %13 = load i32, i32* %size, align 4
  ret i32 %13
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
