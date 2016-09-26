; ModuleID = './pymath.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define zeroext i16 @_Py_get_387controlword() #0 {
entry:
  %cw = alloca i16, align 2
  call void asm sideeffect "fnstcw $0", "=*m,~{dirflag},~{fpsr},~{flags}"(i16* %cw) #1, !srcloc !1
  %0 = load i16, i16* %cw, align 2
  ret i16 %0
}

; Function Attrs: nounwind uwtable
define void @_Py_set_387controlword(i16 zeroext %cw) #0 {
entry:
  %cw.addr = alloca i16, align 2
  store i16 %cw, i16* %cw.addr, align 2
  call void asm sideeffect "fldcw $0", "*m,~{dirflag},~{fpsr},~{flags}"(i16* %cw.addr) #1, !srcloc !2
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 263188}
!2 = !{i32 263307}
