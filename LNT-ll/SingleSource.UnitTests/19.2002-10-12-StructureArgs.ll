; ModuleID = './SingleSource.UnitTests/19.2002-10-12-StructureArgs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vec2 = type { double, double }

@.str = private unnamed_addr constant [16 x i8] c"%f, %f, %f, %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @print(double %S.coerce0, double %S.coerce1, double %T.coerce0, double %T.coerce1) #0 {
entry:
  %S = alloca %struct.vec2, align 8
  %T = alloca %struct.vec2, align 8
  %0 = bitcast %struct.vec2* %S to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  store double %S.coerce0, double* %1
  %2 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  store double %S.coerce1, double* %2
  %3 = bitcast %struct.vec2* %T to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  store double %T.coerce0, double* %4
  %5 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  store double %T.coerce1, double* %5
  %X = getelementptr inbounds %struct.vec2, %struct.vec2* %S, i32 0, i32 0
  %6 = load double, double* %X, align 8
  %Y = getelementptr inbounds %struct.vec2, %struct.vec2* %S, i32 0, i32 1
  %7 = load double, double* %Y, align 8
  %X1 = getelementptr inbounds %struct.vec2, %struct.vec2* %T, i32 0, i32 0
  %8 = load double, double* %X1, align 8
  %Y2 = getelementptr inbounds %struct.vec2, %struct.vec2* %T, i32 0, i32 1
  %9 = load double, double* %Y2, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0), double %6, double %7, double %8, double %9)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %U = alloca %struct.vec2, align 8
  %V = alloca %struct.vec2, align 8
  store i32 0, i32* %retval
  %X = getelementptr inbounds %struct.vec2, %struct.vec2* %U, i32 0, i32 0
  store double 5.000000e-01, double* %X, align 8
  %Y = getelementptr inbounds %struct.vec2, %struct.vec2* %U, i32 0, i32 1
  store double 1.200000e+00, double* %Y, align 8
  %X1 = getelementptr inbounds %struct.vec2, %struct.vec2* %V, i32 0, i32 0
  store double -1.230100e+02, double* %X1, align 8
  %Y2 = getelementptr inbounds %struct.vec2, %struct.vec2* %V, i32 0, i32 1
  store double 0x3FD5555555555555, double* %Y2, align 8
  %0 = bitcast %struct.vec2* %U to { double, double }*
  %1 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 0
  %2 = load double, double* %1, align 1
  %3 = getelementptr { double, double }, { double, double }* %0, i32 0, i32 1
  %4 = load double, double* %3, align 1
  %5 = bitcast %struct.vec2* %V to { double, double }*
  %6 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 0
  %7 = load double, double* %6, align 1
  %8 = getelementptr { double, double }, { double, double }* %5, i32 0, i32 1
  %9 = load double, double* %8, align 1
  call void @print(double %2, double %4, double %7, double %9)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
