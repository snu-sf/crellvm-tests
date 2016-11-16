; ModuleID = './rinkj-dither.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._RinkjDither = type { {}*, void (%struct._RinkjDither*)* }

; Function Attrs: nounwind uwtable
define void @rinkj_dither_line(%struct._RinkjDither* %self, i8* %dst, i8* %src) #0 {
entry:
  %self.addr = alloca %struct._RinkjDither*, align 8
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  store %struct._RinkjDither* %self, %struct._RinkjDither** %self.addr, align 8, !tbaa !1
  store i8* %dst, i8** %dst.addr, align 8, !tbaa !1
  store i8* %src, i8** %src.addr, align 8, !tbaa !1
  %0 = load %struct._RinkjDither*, %struct._RinkjDither** %self.addr, align 8, !tbaa !1
  %dither_line = getelementptr inbounds %struct._RinkjDither, %struct._RinkjDither* %0, i32 0, i32 0
  %dither_line1 = bitcast {}** %dither_line to void (%struct._RinkjDither*, i8*, i8*)**
  %1 = load void (%struct._RinkjDither*, i8*, i8*)*, void (%struct._RinkjDither*, i8*, i8*)** %dither_line1, align 8, !tbaa !5
  %2 = load %struct._RinkjDither*, %struct._RinkjDither** %self.addr, align 8, !tbaa !1
  %3 = load i8*, i8** %dst.addr, align 8, !tbaa !1
  %4 = load i8*, i8** %src.addr, align 8, !tbaa !1
  call void %1(%struct._RinkjDither* %2, i8* %3, i8* %4) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @rinkj_dither_close(%struct._RinkjDither* %self) #0 {
entry:
  %self.addr = alloca %struct._RinkjDither*, align 8
  store %struct._RinkjDither* %self, %struct._RinkjDither** %self.addr, align 8, !tbaa !1
  %0 = load %struct._RinkjDither*, %struct._RinkjDither** %self.addr, align 8, !tbaa !1
  %close = getelementptr inbounds %struct._RinkjDither, %struct._RinkjDither* %0, i32 0, i32 1
  %1 = load void (%struct._RinkjDither*)*, void (%struct._RinkjDither*)** %close, align 8, !tbaa !7
  %2 = load %struct._RinkjDither*, %struct._RinkjDither** %self.addr, align 8, !tbaa !1
  call void %1(%struct._RinkjDither* %2) #1
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !2, i64 0}
!6 = !{!"_RinkjDither", !2, i64 0, !2, i64 8}
!7 = !{!6, !2, i64 8}
