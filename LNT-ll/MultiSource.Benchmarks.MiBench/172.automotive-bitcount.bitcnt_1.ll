; ModuleID = './MultiSource.Benchmarks.MiBench/172.automotive-bitcount.bitcnt_1.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @bit_count(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  %n = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8
  store i32 0, i32* %n, align 4
  %0 = load i64, i64* %x.addr, align 8
  %tobool = icmp ne i64 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then
  %1 = load i32, i32* %n, align 4
  %inc = add nsw i32 %1, 1
  store i32 %inc, i32* %n, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %2 = load i64, i64* %x.addr, align 8
  %3 = load i64, i64* %x.addr, align 8
  %sub = sub nsw i64 %3, 1
  %and = and i64 %2, %sub
  store i64 %and, i64* %x.addr, align 8
  %cmp = icmp ne i64 0, %and
  br i1 %cmp, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %entry
  %4 = load i32, i32* %n, align 4
  ret i32 %4
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
