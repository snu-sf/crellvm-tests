; ModuleID = './SingleSource.Benchmarks.BenchmarkGame/2.nsieve-bits.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"Primes up to %8d %8d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %m = alloca i32, align 4
  %sz = alloca i32, align 4
  %primes = alloca i32*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %count = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 40960000, i32* %sz, align 4
  %0 = load i32, i32* %sz, align 4
  %div = udiv i32 %0, 8
  %conv = zext i32 %div to i64
  %add = add i64 %conv, 4
  %call = call noalias i8* @malloc(i64 %add) #2
  %1 = bitcast i8* %call to i32*
  store i32* %1, i32** %primes, align 8
  %2 = load i32*, i32** %primes, align 8
  %tobool = icmp ne i32* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.43, %if.end
  %3 = load i32, i32* %m, align 4
  %cmp = icmp ule i32 %3, 2
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %count, align 4
  %4 = load i32, i32* %sz, align 4
  %5 = load i32, i32* %m, align 4
  %shr = lshr i32 %4, %5
  store i32 %shr, i32* %n, align 4
  %6 = load i32*, i32** %primes, align 8
  %7 = bitcast i32* %6 to i8*
  %8 = load i32, i32* %n, align 4
  %div2 = udiv i32 %8, 8
  %conv3 = zext i32 %div2 to i64
  %add4 = add i64 %conv3, 4
  call void @llvm.memset.p0i8.i64(i8* %7, i8 -1, i64 %add4, i32 4, i1 false)
  store i32 2, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.39, %for.body
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %n, align 4
  %cmp6 = icmp ule i32 %9, %10
  br i1 %cmp6, label %for.body.8, label %for.end.41

for.body.8:                                       ; preds = %for.cond.5
  %11 = load i32, i32* %i, align 4
  %conv9 = zext i32 %11 to i64
  %div10 = udiv i64 %conv9, 32
  %12 = load i32*, i32** %primes, align 8
  %arrayidx = getelementptr inbounds i32, i32* %12, i64 %div10
  %13 = load i32, i32* %arrayidx, align 4
  %14 = load i32, i32* %i, align 4
  %conv11 = zext i32 %14 to i64
  %rem = urem i64 %conv11, 32
  %sh_prom = trunc i64 %rem to i32
  %shl = shl i32 1, %sh_prom
  %and = and i32 %13, %shl
  %tobool12 = icmp ne i32 %and, 0
  br i1 %tobool12, label %if.then.13, label %if.end.38

if.then.13:                                       ; preds = %for.body.8
  %15 = load i32, i32* %count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, i32* %count, align 4
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* %i, align 4
  %add14 = add i32 %16, %17
  store i32 %add14, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc, %if.then.13
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %n, align 4
  %cmp16 = icmp ule i32 %18, %19
  br i1 %cmp16, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.15
  %20 = load i32, i32* %j, align 4
  %conv19 = zext i32 %20 to i64
  %div20 = udiv i64 %conv19, 32
  %21 = load i32*, i32** %primes, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %21, i64 %div20
  %22 = load i32, i32* %arrayidx21, align 4
  %23 = load i32, i32* %j, align 4
  %conv22 = zext i32 %23 to i64
  %rem23 = urem i64 %conv22, 32
  %sh_prom24 = trunc i64 %rem23 to i32
  %shl25 = shl i32 1, %sh_prom24
  %and26 = and i32 %22, %shl25
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %if.then.28, label %if.end.36

if.then.28:                                       ; preds = %for.body.18
  %24 = load i32, i32* %j, align 4
  %conv29 = zext i32 %24 to i64
  %rem30 = urem i64 %conv29, 32
  %sh_prom31 = trunc i64 %rem30 to i32
  %shl32 = shl i32 1, %sh_prom31
  %25 = load i32, i32* %j, align 4
  %conv33 = zext i32 %25 to i64
  %div34 = udiv i64 %conv33, 32
  %26 = load i32*, i32** %primes, align 8
  %arrayidx35 = getelementptr inbounds i32, i32* %26, i64 %div34
  %27 = load i32, i32* %arrayidx35, align 4
  %xor = xor i32 %27, %shl32
  store i32 %xor, i32* %arrayidx35, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.28, %for.body.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %28 = load i32, i32* %i, align 4
  %29 = load i32, i32* %j, align 4
  %add37 = add i32 %29, %28
  store i32 %add37, i32* %j, align 4
  br label %for.cond.15

for.end:                                          ; preds = %for.cond.15
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %for.body.8
  br label %for.inc.39

for.inc.39:                                       ; preds = %if.end.38
  %30 = load i32, i32* %i, align 4
  %inc40 = add i32 %30, 1
  store i32 %inc40, i32* %i, align 4
  br label %for.cond.5

for.end.41:                                       ; preds = %for.cond.5
  %31 = load i32, i32* %n, align 4
  %32 = load i32, i32* %count, align 4
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), i32 %31, i32 %32)
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.end.41
  %33 = load i32, i32* %m, align 4
  %inc44 = add i32 %33, 1
  store i32 %inc44, i32* %m, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  %34 = load i32*, i32** %primes, align 8
  %35 = bitcast i32* %34 to i8*
  call void @free(i8* %35) #2
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.45, %if.then
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
