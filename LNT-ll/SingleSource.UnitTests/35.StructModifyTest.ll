; ModuleID = './SingleSource.UnitTests/35.StructModifyTest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S1Ty = type { i32, float, double, i64 }
%struct.S2Ty = type { %struct.S1Ty, %struct.S1Ty }

@.str = private unnamed_addr constant [18 x i8] c"%d, %f, %f, %lld\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @printS1(%struct.S1Ty* %V) #0 {
entry:
  %V.addr = alloca %struct.S1Ty*, align 8
  store %struct.S1Ty* %V, %struct.S1Ty** %V.addr, align 8
  %0 = load %struct.S1Ty*, %struct.S1Ty** %V.addr, align 8
  %w = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %0, i32 0, i32 0
  %1 = load i32, i32* %w, align 4
  %2 = load %struct.S1Ty*, %struct.S1Ty** %V.addr, align 8
  %x = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %2, i32 0, i32 1
  %3 = load float, float* %x, align 4
  %conv = fpext float %3 to double
  %4 = load %struct.S1Ty*, %struct.S1Ty** %V.addr, align 8
  %y = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %4, i32 0, i32 2
  %5 = load double, double* %y, align 8
  %6 = load %struct.S1Ty*, %struct.S1Ty** %V.addr, align 8
  %z = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %6, i32 0, i32 3
  %7 = load i64, i64* %z, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i32 %1, double %conv, double %5, i64 %7)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %E = alloca %struct.S2Ty, align 8
  store i32 0, i32* %retval
  %A = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %E, i32 0, i32 0
  %w = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %A, i32 0, i32 0
  store i32 1, i32* %w, align 4
  %A1 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %E, i32 0, i32 0
  %x = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %A1, i32 0, i32 1
  store float 0x405EDAE140000000, float* %x, align 4
  %A2 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %E, i32 0, i32 0
  %y = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %A2, i32 0, i32 2
  store double 1.900000e+01, double* %y, align 8
  %A3 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %E, i32 0, i32 0
  %z = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %A3, i32 0, i32 3
  store i64 123455678902, i64* %z, align 8
  %B = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %E, i32 0, i32 1
  %w4 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %B, i32 0, i32 0
  store i32 2, i32* %w4, align 4
  %B5 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %E, i32 0, i32 1
  %x6 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %B5, i32 0, i32 1
  store float 0x40376B8520000000, float* %x6, align 4
  %B7 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %E, i32 0, i32 1
  %y8 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %B7, i32 0, i32 2
  store double 2.900000e+01, double* %y8, align 8
  %B9 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %E, i32 0, i32 1
  %z10 = getelementptr inbounds %struct.S1Ty, %struct.S1Ty* %B9, i32 0, i32 3
  store i64 23455678902, i64* %z10, align 8
  %A11 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %E, i32 0, i32 0
  call void @printS1(%struct.S1Ty* %A11)
  %B12 = getelementptr inbounds %struct.S2Ty, %struct.S2Ty* %E, i32 0, i32 1
  call void @printS1(%struct.S1Ty* %B12)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
