; ModuleID = './MultiSource.Benchmarks.MallocBench/131.cfrac.phalf.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@ptwo = external global %struct.precisionType*, align 8

; Function Attrs: nounwind uwtable
define %struct.precisionType* @phalf(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %1 = load %struct.precisionType*, %struct.precisionType** @ptwo, align 8
  %call = call %struct.precisionType* @pdivmod(%struct.precisionType* %0, %struct.precisionType* %1, %struct.precisionType** inttoptr (i64 -1 to %struct.precisionType**), %struct.precisionType** null)
  ret %struct.precisionType* %call
}

declare %struct.precisionType* @pdivmod(%struct.precisionType*, %struct.precisionType*, %struct.precisionType**, %struct.precisionType**) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
