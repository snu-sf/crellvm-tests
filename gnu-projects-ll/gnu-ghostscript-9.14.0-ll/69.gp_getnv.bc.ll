; ModuleID = './gp_getnv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gp_getenv(i8* %key, i8* %ptr, i32* %plen) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %ptr.addr = alloca i8*, align 8
  %plen.addr = alloca i32*, align 8
  %str = alloca i8*, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store i8* %key, i8** %key.addr, align 8, !tbaa !1
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i32* %plen, i32** %plen.addr, align 8, !tbaa !1
  %0 = bitcast i8** %str to i8*
  call void @llvm.lifetime.start(i64 8, i8* %0) #1
  %1 = load i8*, i8** %key.addr, align 8, !tbaa !1
  %call = call i8* @getenv(i8* %1) #5
  store i8* %call, i8** %str, align 8, !tbaa !1
  %2 = load i8*, i8** %str, align 8, !tbaa !1
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %len to i8*
  call void @llvm.lifetime.start(i64 4, i8* %3) #1
  %4 = load i8*, i8** %str, align 8, !tbaa !1
  %call1 = call i64 @strlen(i8* %4) #6
  %conv = trunc i64 %call1 to i32
  store i32 %conv, i32* %len, align 4, !tbaa !5
  %5 = load i32, i32* %len, align 4, !tbaa !5
  %6 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  %7 = load i32, i32* %6, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, %7
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  %9 = load i8*, i8** %str, align 8, !tbaa !1
  %call4 = call i8* @strcpy(i8* %8, i8* %9) #7
  %10 = load i32, i32* %len, align 4, !tbaa !5
  %add = add nsw i32 %10, 1
  %11 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  store i32 %add, i32* %11, align 4, !tbaa !5
  store i32 0, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

if.end:                                           ; preds = %if.then
  %12 = load i32, i32* %len, align 4, !tbaa !5
  %add5 = add nsw i32 %12, 1
  %13 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  store i32 %add5, i32* %13, align 4, !tbaa !5
  store i32 -1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.3
  %14 = bitcast i32* %len to i8*
  call void @llvm.lifetime.end(i64 4, i8* %14) #1
  br label %cleanup.11

if.end.6:                                         ; preds = %entry
  %15 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  %16 = load i32, i32* %15, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %16, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %17 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  store i8 0, i8* %17, align 1, !tbaa !7
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end.6
  %18 = load i32*, i32** %plen.addr, align 8, !tbaa !1
  store i32 1, i32* %18, align 4, !tbaa !5
  store i32 1, i32* %retval
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.11

cleanup.11:                                       ; preds = %if.end.10, %cleanup
  %19 = bitcast i8** %str to i8*
  call void @llvm.lifetime.end(i64 8, i8* %19) #1
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

declare i8* @getenv(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin }
attributes #6 = { nobuiltin nounwind readonly }
attributes #7 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!3, !3, i64 0}
