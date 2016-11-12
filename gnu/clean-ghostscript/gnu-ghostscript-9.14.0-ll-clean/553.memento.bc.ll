; ModuleID = './memento.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @Memento_breakpoint() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @Memento_checkBlock(i8* %b) #0 {
entry:
  %b.addr = alloca i8*, align 8
  store i8* %b, i8** %b.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Memento_checkAllMemory() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Memento_check() #0 {
entry:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Memento_setParanoia(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Memento_paranoidAt(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Memento_breakAt(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Memento_getBlockNum(i8* %i) #0 {
entry:
  %i.addr = alloca i8*, align 8
  store i8* %i, i8** %i.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Memento_find(i8* %a) #0 {
entry:
  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @Memento_failAt(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @Memento_breakOnFree(i8* %a) #0 {
entry:
  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define void @Memento_breakOnRealloc(i8* %a) #0 {
entry:
  %a.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8, !tbaa !1
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @Memento_malloc(i64 %size) #0 {
entry:
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8, !tbaa !7
  %0 = load i64, i64* %size.addr, align 8, !tbaa !7
  %call = call noalias i8* @malloc(i64 %0) #2
  ret i8* %call
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @Memento_free(i8* %b) #0 {
entry:
  %b.addr = alloca i8*, align 8
  store i8* %b, i8** %b.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %b.addr, align 8, !tbaa !1
  call void @free(i8* %0) #2
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i8* @Memento_realloc(i8* %b, i64 %s) #0 {
entry:
  %b.addr = alloca i8*, align 8
  %s.addr = alloca i64, align 8
  store i8* %b, i8** %b.addr, align 8, !tbaa !1
  store i64 %s, i64* %s.addr, align 8, !tbaa !7
  %0 = load i8*, i8** %b.addr, align 8, !tbaa !1
  %1 = load i64, i64* %s.addr, align 8, !tbaa !7
  %call = call i8* @realloc(i8* %0, i64 %1) #2
  ret i8* %call
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i8* @Memento_calloc(i64 %n, i64 %s) #0 {
entry:
  %n.addr = alloca i64, align 8
  %s.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8, !tbaa !7
  store i64 %s, i64* %s.addr, align 8, !tbaa !7
  %0 = load i64, i64* %n.addr, align 8, !tbaa !7
  %1 = load i64, i64* %s.addr, align 8, !tbaa !7
  %call = call noalias i8* @calloc(i64 %0, i64 %1) #2
  ret i8* %call
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @Memento_listBlocks() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @Memento_listNewBlocks() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @Memento_setMax(i64 %max) #0 {
entry:
  %max.addr = alloca i64, align 8
  store i64 %max, i64* %max.addr, align 8, !tbaa !7
  ret i64 0
}

; Function Attrs: nounwind uwtable
define void @Memento_stats() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @Memento_label(i8* %ptr, i8* %label) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %label.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8, !tbaa !1
  store i8* %label, i8** %label.addr, align 8, !tbaa !1
  %0 = load i8*, i8** %ptr.addr, align 8, !tbaa !1
  ret i8* %0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nobuiltin nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{!2, !2, i64 0}
!2 = !{!"any pointer", !3, i64 0}
!3 = !{!"omnipotent char", !4, i64 0}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !3, i64 0}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !3, i64 0}
