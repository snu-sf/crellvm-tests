; ModuleID = './MultiSource.Benchmarks.Olden/21.em3d.util.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@percentcheck = internal global i32 0, align 4
@numlocal = internal global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"percentcheck=%d,numlocal=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @init_random(i32 %seed) #0 {
entry:
  %seed.addr = alloca i32, align 4
  store i32 %seed, i32* %seed.addr, align 4
  %0 = load i32, i32* %seed.addr, align 4
  %conv = sext i32 %0 to i64
  call void @srand48(i64 %conv) #3
  ret void
}

; Function Attrs: nounwind
declare void @srand48(i64) #1

; Function Attrs: nounwind uwtable
define i32 @gen_number(i32 %range) #0 {
entry:
  %range.addr = alloca i32, align 4
  store i32 %range, i32* %range.addr, align 4
  %call = call i64 @lrand48() #3
  %conv = trunc i64 %call to i32
  %0 = load i32, i32* %range.addr, align 4
  %rem = srem i32 %conv, %0
  ret i32 %rem
}

; Function Attrs: nounwind
declare i64 @lrand48() #1

; Function Attrs: nounwind uwtable
define i32 @gen_signed_number(i32 %range) #0 {
entry:
  %range.addr = alloca i32, align 4
  %temp = alloca i32, align 4
  store i32 %range, i32* %range.addr, align 4
  %call = call i64 @lrand48() #3
  %0 = load i32, i32* %range.addr, align 4
  %mul = mul nsw i32 2, %0
  %conv = sext i32 %mul to i64
  %rem = srem i64 %call, %conv
  %conv1 = trunc i64 %rem to i32
  store i32 %conv1, i32* %temp, align 4
  %1 = load i32, i32* %temp, align 4
  %2 = load i32, i32* %range.addr, align 4
  %sub = sub nsw i32 %1, %2
  store i32 %sub, i32* %temp, align 4
  %3 = load i32, i32* %temp, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %temp, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %temp, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %temp, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define double @gen_uniform_double() #0 {
entry:
  %call = call double @drand48() #3
  ret double %call
}

; Function Attrs: nounwind
declare double @drand48() #1

; Function Attrs: nounwind uwtable
define i32 @check_percent(i32 %percent) #0 {
entry:
  %percent.addr = alloca i32, align 4
  %retval1 = alloca i32, align 4
  store i32 %percent, i32* %percent.addr, align 4
  %call = call double @drand48() #3
  %0 = load i32, i32* %percent.addr, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double %conv, 1.000000e+02
  %cmp = fcmp olt double %call, %div
  %conv2 = zext i1 %cmp to i32
  store i32 %conv2, i32* %retval1, align 4
  %1 = load i32, i32* @percentcheck, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* @percentcheck, align 4
  %2 = load i32, i32* %retval1, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @numlocal, align 4
  %inc3 = add nsw i32 %3, 1
  store i32 %inc3, i32* @numlocal, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %retval1, align 4
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @printstats() #0 {
entry:
  %0 = load i32, i32* @percentcheck, align 4
  %1 = load i32, i32* @numlocal, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), i32 %0, i32 %1)
  ret void
}

declare i32 @printf(i8*, ...) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
