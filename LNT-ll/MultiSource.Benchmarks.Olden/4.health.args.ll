; ModuleID = './MultiSource.Benchmarks.Olden/4.health.args.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@max_level = external global i32, align 4
@max_time = external global i64, align 8
@seed = external global i64, align 8
@.str = private unnamed_addr constant [37 x i8] c"max_level=%d  max_time=%d  seed=%d \0A\00", align 1

; Function Attrs: nounwind uwtable
define void @dealwithargs(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 3, i32* @max_level, align 4
  store i64 15, i64* @max_time, align 8
  store i64 4, i64* @seed, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #3
  store i32 %call, i32* @max_level, align 4
  %3 = load i8**, i8*** %argv.addr, align 8
  %arrayidx1 = getelementptr inbounds i8*, i8** %3, i64 2
  %4 = load i8*, i8** %arrayidx1, align 8
  %call2 = call i64 @atol(i8* %4) #3
  store i64 %call2, i64* @max_time, align 8
  %5 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %5, i64 3
  %6 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i64 @atol(i8* %6) #3
  store i64 %call4, i64* @seed, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load i32, i32* @max_level, align 4
  %8 = load i64, i64* @max_time, align 8
  %conv = trunc i64 %8 to i32
  %9 = load i64, i64* @seed, align 8
  %conv5 = trunc i64 %9 to i32
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0), i32 %7, i32 %conv, i32 %conv5)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @atol(i8*) #1

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
