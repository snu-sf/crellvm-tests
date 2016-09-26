; ModuleID = './getcopyright.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cprt = internal constant [308 x i8] c"Copyright (c) 2001-2014 Python Software Foundation.\0AAll Rights Reserved.\0A\0ACopyright (c) 2000 BeOpen.com.\0AAll Rights Reserved.\0A\0ACopyright (c) 1995-2001 Corporation for National Research Initiatives.\0AAll Rights Reserved.\0A\0ACopyright (c) 1991-1995 Stichting Mathematisch Centrum, Amsterdam.\0AAll Rights Reserved.\00", align 16

; Function Attrs: nounwind uwtable
define i8* @Py_GetCopyright() #0 {
entry:
  ret i8* getelementptr inbounds ([308 x i8], [308 x i8]* @cprt, i32 0, i32 0)
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
