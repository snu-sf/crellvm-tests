; ModuleID = './gp_upapr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gp_defaultpapersize(i8* %ptr, i32* %plen) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %plen.addr = alloca i32*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32* %plen, i32** %plen.addr, align 8, !tbaa !1
  %0 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  %1 = load i32, i32* %0, align 4, !tbaa !5
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  store i8 0, i8* %2, align 1, !tbaa !7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  store i32 1, i32* %3, align 4, !tbaa !5
  ret i32 1
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
