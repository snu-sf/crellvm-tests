; ModuleID = './MultiSource.Benchmarks.VersaBench/12.dbms.volume.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

; Function Attrs: nounwind uwtable
define float @volume(%struct.IndexKey* byval align 8 %key) #0 {
entry:
  %vol = alloca float, align 4
  %p = alloca float*, align 8
  %upper = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key, i32 0, i32 1
  %T = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper, i32 0, i32 0
  %0 = load float, float* %T, align 4
  %lower = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key, i32 0, i32 0
  %T1 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower, i32 0, i32 0
  %1 = load float, float* %T1, align 4
  %sub = fsub float %0, %1
  store float %sub, float* %vol, align 4
  %upper2 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key, i32 0, i32 1
  %X = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper2, i32 0, i32 1
  %2 = load float, float* %X, align 4
  %lower3 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key, i32 0, i32 0
  %X4 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower3, i32 0, i32 1
  %3 = load float, float* %X4, align 4
  %sub5 = fsub float %2, %3
  %4 = load float, float* %vol, align 4
  %mul = fmul float %4, %sub5
  store float %mul, float* %vol, align 4
  %upper6 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key, i32 0, i32 1
  %Y = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper6, i32 0, i32 2
  %5 = load float, float* %Y, align 4
  %lower7 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key, i32 0, i32 0
  %Y8 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower7, i32 0, i32 2
  %6 = load float, float* %Y8, align 4
  %sub9 = fsub float %5, %6
  %7 = load float, float* %vol, align 4
  %mul10 = fmul float %7, %sub9
  store float %mul10, float* %vol, align 4
  %upper11 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key, i32 0, i32 1
  %Z = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %upper11, i32 0, i32 3
  %8 = load float, float* %Z, align 4
  %lower12 = getelementptr inbounds %struct.IndexKey, %struct.IndexKey* %key, i32 0, i32 0
  %Z13 = getelementptr inbounds %struct.IndexPoint, %struct.IndexPoint* %lower12, i32 0, i32 3
  %9 = load float, float* %Z13, align 4
  %sub14 = fsub float %8, %9
  %10 = load float, float* %vol, align 4
  %mul15 = fmul float %10, %sub14
  store float %mul15, float* %vol, align 4
  %11 = load float, float* %vol, align 4
  %conv = fpext float %11 to double
  %cmp = fcmp ole double %conv, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store float* null, float** %p, align 8
  %12 = load float*, float** %p, align 8
  %13 = load float, float* %12, align 4
  store float %13, float* %vol, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load float, float* %vol, align 4
  ret float %14
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
