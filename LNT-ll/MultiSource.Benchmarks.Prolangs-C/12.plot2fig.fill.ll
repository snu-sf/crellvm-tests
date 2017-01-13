; ModuleID = './MultiSource.Benchmarks.Prolangs-C/12.plot2fig.fill.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fill_level = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @fill(i32 %level) #0 {
entry:
  %level.addr = alloca i32, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load i32, i32* %level.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* @fill_level, align 4
  br label %if.end.10

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %level.addr, align 4
  %conv = sitofp i32 %1 to double
  %sub = fsub double %conv, 1.000000e+00
  %mul = fmul double 5.000000e+00, %sub
  %div = fdiv double %mul, 6.553400e+04
  %conv1 = fptosi double %div to i32
  store i32 %conv1, i32* @fill_level, align 4
  %2 = load i32, i32* @fill_level, align 4
  %cmp2 = icmp sgt i32 %2, 5
  br i1 %cmp2, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  store i32 5, i32* @fill_level, align 4
  br label %if.end.9

if.else.5:                                        ; preds = %if.else
  %3 = load i32, i32* @fill_level, align 4
  %cmp6 = icmp slt i32 %3, 1
  br i1 %cmp6, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.else.5
  store i32 1, i32* @fill_level, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.else.5
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.then.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
