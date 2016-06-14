; ModuleID = 'beam.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beam_t = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"beam.c\00", align 1

; Function Attrs: nounwind uwtable
define %struct.beam_t* @beam_init(double %svq, double %hmm, double %ptr, double %wd) #0 {
entry:
  %svq.addr = alloca double, align 8
  %hmm.addr = alloca double, align 8
  %ptr.addr = alloca double, align 8
  %wd.addr = alloca double, align 8
  %beam = alloca %struct.beam_t*, align 8
  store double %svq, double* %svq.addr, align 8
  store double %hmm, double* %hmm.addr, align 8
  store double %ptr, double* %ptr.addr, align 8
  store double %wd, double* %wd.addr, align 8
  %call = call i8* @__ckd_calloc__(i64 1, i64 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 61)
  %0 = bitcast i8* %call to %struct.beam_t*
  store %struct.beam_t* %0, %struct.beam_t** %beam, align 8
  %1 = load double, double* %svq.addr, align 8
  %call1 = call i32 @logs3(double %1)
  %2 = load %struct.beam_t*, %struct.beam_t** %beam, align 8
  %subvq = getelementptr inbounds %struct.beam_t, %struct.beam_t* %2, i32 0, i32 0
  store i32 %call1, i32* %subvq, align 4
  %3 = load double, double* %hmm.addr, align 8
  %call2 = call i32 @logs3(double %3)
  %4 = load %struct.beam_t*, %struct.beam_t** %beam, align 8
  %hmm3 = getelementptr inbounds %struct.beam_t, %struct.beam_t* %4, i32 0, i32 1
  store i32 %call2, i32* %hmm3, align 4
  %5 = load double, double* %ptr.addr, align 8
  %call4 = call i32 @logs3(double %5)
  %6 = load %struct.beam_t*, %struct.beam_t** %beam, align 8
  %ptrans = getelementptr inbounds %struct.beam_t, %struct.beam_t* %6, i32 0, i32 2
  store i32 %call4, i32* %ptrans, align 4
  %7 = load double, double* %wd.addr, align 8
  %call5 = call i32 @logs3(double %7)
  %8 = load %struct.beam_t*, %struct.beam_t** %beam, align 8
  %word = getelementptr inbounds %struct.beam_t, %struct.beam_t* %8, i32 0, i32 3
  store i32 %call5, i32* %word, align 4
  %9 = load %struct.beam_t*, %struct.beam_t** %beam, align 8
  ret %struct.beam_t* %9
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

declare i32 @logs3(double) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
