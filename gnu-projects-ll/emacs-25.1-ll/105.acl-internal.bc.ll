; ModuleID = './lib/acl-internal.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.permission_context = type { i32 }

; Function Attrs: nounwind readnone uwtable
define void @free_permission_context(%struct.permission_context* %ctx) #0 {
entry:
  %ctx.addr = alloca %struct.permission_context*, align 8
  store %struct.permission_context* %ctx, %struct.permission_context** %ctx.addr, align 8
  ret void
}

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
