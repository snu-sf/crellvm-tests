; ModuleID = 'cmplx.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { double, double }

; Function Attrs: nounwind uwtable
define { double, double } @cmplx(double %x, double %y) #0 {
entry:
  %retval = alloca %struct.complex, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %c = alloca %struct.complex, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %real = getelementptr inbounds %struct.complex, %struct.complex* %c, i32 0, i32 0
  store double %0, double* %real, align 8
  %1 = load double, double* %y.addr, align 8
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %c, i32 0, i32 1
  store double %1, double* %imag, align 8
  %2 = bitcast %struct.complex* %retval to i8*
  %3 = bitcast %struct.complex* %c to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = bitcast %struct.complex* %retval to { double, double }*
  %5 = load { double, double }, { double, double }* %4, align 8
  ret { double, double } %5
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
