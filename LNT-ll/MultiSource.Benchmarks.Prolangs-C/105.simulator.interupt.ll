; ModuleID = './MultiSource.Benchmarks.Prolangs-C/105.simulator.interupt.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REGISTER = external global [10 x i32], align 16
@RETURN_STATUS = external global i32, align 4
@TYPE_OUT_MODE = common global [6 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @SIGNAL_INTERUPT(i32 %TYPE, i32 %CODE) #0 {
entry:
  %TYPE.addr = alloca i32, align 4
  %CODE.addr = alloca i32, align 4
  store i32 %TYPE, i32* %TYPE.addr, align 4
  store i32 %CODE, i32* %CODE.addr, align 4
  %0 = load i32, i32* %TYPE.addr, align 4
  switch i32 %0, label %sw.default [
    i32 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  %div = sdiv i32 %1, 256
  %mul = mul nsw i32 %div, 256
  %2 = load i32, i32* %CODE.addr, align 4
  %add = add nsw i32 %mul, %2
  store i32 %add, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @REGISTER, i32 0, i64 9), align 4
  store i32 2, i32* @RETURN_STATUS, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
