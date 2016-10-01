; ModuleID = './MultiSource.Benchmarks.Prolangs-C/59.gnugo.random.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @random_nasko(i32* %i) #0 {
entry:
  %i.addr = alloca i32*, align 8
  store i32* %i, i32** %i.addr, align 8
  %0 = load i32*, i32** %i.addr, align 8
  %1 = load i32, i32* %0, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %i.addr, align 8
  call void @seed(i32* %2)
  br label %if.end.3

if.else:                                          ; preds = %entry
  %3 = load i32*, i32** %i.addr, align 8
  %4 = load i32, i32* %3, align 4
  %mul = mul nsw i32 %4, 137
  %rem = srem i32 %mul, 3833
  %5 = load i32*, i32** %i.addr, align 8
  store i32 %rem, i32* %5, align 4
  %6 = load i32*, i32** %i.addr, align 8
  %7 = load i32, i32* %6, align 4
  %cmp1 = icmp slt i32 %7, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %8 = load i32*, i32** %i.addr, align 8
  %9 = load i32, i32* %8, align 4
  %sub = sub nsw i32 0, %9
  %10 = load i32*, i32** %i.addr, align 8
  store i32 %sub, i32* %10, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.else
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %if.then
  ret void
}

declare void @seed(i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
