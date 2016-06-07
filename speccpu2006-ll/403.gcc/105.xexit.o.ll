; ModuleID = 'xexit.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_xexit_cleanup = common global void ()* null, align 8

; Function Attrs: noreturn nounwind uwtable
define void @xexit(i32 %code) #0 {
entry:
  %code.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  %0 = load void ()*, void ()** @_xexit_cleanup, align 8
  %cmp = icmp ne void ()* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load void ()*, void ()** @_xexit_cleanup, align 8
  call void %1()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %code.addr, align 4
  call void @exit(i32 %2) #2
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #1

attributes #0 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
