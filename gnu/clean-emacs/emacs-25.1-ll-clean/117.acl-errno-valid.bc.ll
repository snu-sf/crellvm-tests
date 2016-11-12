; ModuleID = './lib/acl-errno-valid.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone uwtable
define zeroext i1 @acl_errno_valid(i32 %errnum) #0 {
entry:
  %retval = alloca i1, align 1
  %errnum.addr = alloca i32, align 4
  store i32 %errnum, i32* %errnum.addr, align 4
  %0 = load i32, i32* %errnum.addr, align 4
  switch i32 %0, label %sw.default [
    i32 16, label %sw.bb
    i32 22, label %sw.bb.1
    i32 38, label %sw.bb.2
    i32 95, label %sw.bb.3
  ]

sw.bb:                                            ; preds = %entry
  store i1 false, i1* %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

sw.bb.2:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

sw.bb.3:                                          ; preds = %entry
  store i1 false, i1* %retval
  br label %return

sw.default:                                       ; preds = %entry
  store i1 true, i1* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.3, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i1, i1* %retval
  ret i1 %1
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
