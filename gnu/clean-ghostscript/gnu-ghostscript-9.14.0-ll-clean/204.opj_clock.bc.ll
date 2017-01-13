; ModuleID = './opj_clock.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rusage = type { %struct.timeval, %struct.timeval, %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, %union.anon.3, %union.anon.4, %union.anon.5, %union.anon.6, %union.anon.7, %union.anon.8, %union.anon.9, %union.anon.10, %union.anon.11, %union.anon.12 }
%struct.timeval = type { i64, i64 }
%union.anon = type { i64 }
%union.anon.0 = type { i64 }
%union.anon.1 = type { i64 }
%union.anon.2 = type { i64 }
%union.anon.3 = type { i64 }
%union.anon.4 = type { i64 }
%union.anon.5 = type { i64 }
%union.anon.6 = type { i64 }
%union.anon.7 = type { i64 }
%union.anon.8 = type { i64 }
%union.anon.9 = type { i64 }
%union.anon.10 = type { i64 }
%union.anon.11 = type { i64 }
%union.anon.12 = type { i64 }

; Function Attrs: nounwind uwtable
define double @opj_clock() #0 {
entry:
  %t = alloca %struct.rusage, align 8
  %procTime = alloca double, align 8
  %0 = bitcast %struct.rusage* %t to i8*
  call void @llvm.lifetime.start(i64 144, i8* %0) #1
  %1 = bitcast double* %procTime to i8*
  call void @llvm.lifetime.start(i64 8, i8* %1) #1
  %call = call i32 @getrusage(i32 0, %struct.rusage* %t) #3
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %t, i32 0, i32 0
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime, i32 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8, !tbaa !1
  %ru_stime = getelementptr inbounds %struct.rusage, %struct.rusage* %t, i32 0, i32 1
  %tv_sec1 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime, i32 0, i32 0
  %3 = load i64, i64* %tv_sec1, align 8, !tbaa !7
  %add = add nsw i64 %2, %3
  %conv = sitofp i64 %add to double
  store double %conv, double* %procTime, align 8, !tbaa !8
  %4 = load double, double* %procTime, align 8, !tbaa !8
  %ru_utime2 = getelementptr inbounds %struct.rusage, %struct.rusage* %t, i32 0, i32 0
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime2, i32 0, i32 1
  %5 = load i64, i64* %tv_usec, align 8, !tbaa !10
  %ru_stime3 = getelementptr inbounds %struct.rusage, %struct.rusage* %t, i32 0, i32 1
  %tv_usec4 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime3, i32 0, i32 1
  %6 = load i64, i64* %tv_usec4, align 8, !tbaa !11
  %add5 = add nsw i64 %5, %6
  %conv6 = sitofp i64 %add5 to double
  %mul = fmul double %conv6, 1.000000e-06
  %add7 = fadd double %4, %mul
  %7 = bitcast double* %procTime to i8*
  call void @llvm.lifetime.end(i64 8, i8* %7) #1
  %8 = bitcast %struct.rusage* %t to i8*
  call void @llvm.lifetime.end(i64 144, i8* %8) #1
  ret double %add7
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !4, i64 0}
!2 = !{!"rusage", !3, i64 0, !3, i64 16, !5, i64 32, !5, i64 40, !5, i64 48, !5, i64 56, !5, i64 64, !5, i64 72, !5, i64 80, !5, i64 88, !5, i64 96, !5, i64 104, !5, i64 112, !5, i64 120, !5, i64 128, !5, i64 136}
!3 = !{!"timeval", !4, i64 0, !4, i64 8}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!2, !4, i64 16}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = !{!2, !4, i64 8}
!11 = !{!2, !4, i64 24}
