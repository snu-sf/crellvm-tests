; ModuleID = './MultiSource.Benchmarks.mediabench/69.gsm.toast.gsm_option.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_state = type { [280 x i16], i16, i64, i32, [8 x i16], [2 x [8 x i16]], i16, i16, [9 x i16], i16, i8, i8 }

; Function Attrs: nounwind uwtable
define i32 @gsm_option(%struct.gsm_state* %r, i32 %opt, i32* %val) #0 {
entry:
  %r.addr = alloca %struct.gsm_state*, align 8
  %opt.addr = alloca i32, align 4
  %val.addr = alloca i32*, align 8
  %result = alloca i32, align 4
  store %struct.gsm_state* %r, %struct.gsm_state** %r.addr, align 8
  store i32 %opt, i32* %opt.addr, align 4
  store i32* %val, i32** %val.addr, align 8
  store i32 -1, i32* %result, align 4
  %0 = load i32, i32* %opt.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %result, align 4
  ret i32 %1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
