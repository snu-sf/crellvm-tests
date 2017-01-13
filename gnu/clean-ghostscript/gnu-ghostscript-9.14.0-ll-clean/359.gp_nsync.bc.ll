; ModuleID = './gp_nsync.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.gp_semaphore = type { i8* }
%union.gp_monitor = type { i8* }

; Function Attrs: nounwind uwtable
define i32 @gp_semaphore_sizeof() #0 {
entry:
  ret i32 8
}

; Function Attrs: nounwind uwtable
define i32 @gp_semaphore_open(%union.gp_semaphore* %sema) #0 {
entry:
  %sema.addr = alloca %union.gp_semaphore*, align 8
  store %union.gp_semaphore* %sema, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %0 = load %union.gp_semaphore*, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %tobool = icmp ne %union.gp_semaphore* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.gp_semaphore*, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %2 = bitcast %union.gp_semaphore* %1 to i32*
  store i32 0, i32* %2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gp_semaphore_close(%union.gp_semaphore* %sema) #0 {
entry:
  %sema.addr = alloca %union.gp_semaphore*, align 8
  store %union.gp_semaphore* %sema, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gp_semaphore_wait(%union.gp_semaphore* %sema) #0 {
entry:
  %retval = alloca i32, align 4
  %sema.addr = alloca %union.gp_semaphore*, align 8
  store %union.gp_semaphore* %sema, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %0 = load %union.gp_semaphore*, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %1 = bitcast %union.gp_semaphore* %0 to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %union.gp_semaphore*, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %4 = bitcast %union.gp_semaphore* %3 to i32*
  %5 = load i32, i32* %4, align 4, !tbaa !5
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %4, align 4, !tbaa !5
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define i32 @gp_semaphore_signal(%union.gp_semaphore* %sema) #0 {
entry:
  %sema.addr = alloca %union.gp_semaphore*, align 8
  store %union.gp_semaphore* %sema, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %0 = load %union.gp_semaphore*, %union.gp_semaphore** %sema.addr, align 8, !tbaa !1
  %1 = bitcast %union.gp_semaphore* %0 to i32*
  %2 = load i32, i32* %1, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %1, align 4, !tbaa !5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gp_monitor_sizeof() #0 {
entry:
  ret i32 8
}

; Function Attrs: nounwind uwtable
define i32 @gp_monitor_open(%union.gp_monitor* %mon) #0 {
entry:
  %mon.addr = alloca %union.gp_monitor*, align 8
  store %union.gp_monitor* %mon, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  %0 = load %union.gp_monitor*, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  %tobool = icmp ne %union.gp_monitor* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %union.gp_monitor*, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  %dummy_ = bitcast %union.gp_monitor* %1 to i8**
  store i8* null, i8** %dummy_, align 8, !tbaa !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gp_monitor_close(%union.gp_monitor* %mon) #0 {
entry:
  %mon.addr = alloca %union.gp_monitor*, align 8
  store %union.gp_monitor* %mon, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @gp_monitor_enter(%union.gp_monitor* %mon) #0 {
entry:
  %retval = alloca i32, align 4
  %mon.addr = alloca %union.gp_monitor*, align 8
  store %union.gp_monitor* %mon, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  %0 = load %union.gp_monitor*, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  %dummy_ = bitcast %union.gp_monitor* %0 to i8**
  %1 = load i8*, i8** %dummy_, align 8, !tbaa !1
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %union.gp_monitor*, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  %3 = bitcast %union.gp_monitor* %2 to i8*
  %4 = load %union.gp_monitor*, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  %dummy_1 = bitcast %union.gp_monitor* %4 to i8**
  store i8* %3, i8** %dummy_1, align 8, !tbaa !1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gp_monitor_leave(%union.gp_monitor* %mon) #0 {
entry:
  %retval = alloca i32, align 4
  %mon.addr = alloca %union.gp_monitor*, align 8
  store %union.gp_monitor* %mon, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  %0 = load %union.gp_monitor*, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  %dummy_ = bitcast %union.gp_monitor* %0 to i8**
  %1 = load i8*, i8** %dummy_, align 8, !tbaa !1
  %2 = load %union.gp_monitor*, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  %3 = bitcast %union.gp_monitor* %2 to i8*
  %cmp = icmp ne i8* %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %union.gp_monitor*, %union.gp_monitor** %mon.addr, align 8, !tbaa !1
  %dummy_1 = bitcast %union.gp_monitor* %4 to i8**
  store i8* null, i8** %dummy_1, align 8, !tbaa !1
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @gp_create_thread(void (i8*)* %proc, i8* %proc_data) #0 {
entry:
  %proc.addr = alloca void (i8*)*, align 8
  %proc_data.addr = alloca i8*, align 8
  store void (i8*)* %proc, void (i8*)** %proc.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define i32 @gp_thread_start(void (i8*)* %proc, i8* %proc_data, i8** %thread) #0 {
entry:
  %proc.addr = alloca void (i8*)*, align 8
  %proc_data.addr = alloca i8*, align 8
  %thread.addr = alloca i8**, align 8
  store void (i8*)* %proc, void (i8*)** %proc.addr, align 8, !tbaa !1
  store i8* %proc_data, i8** %proc_data.addr, align 8, !tbaa !1
  store i8** %thread, i8*** %thread.addr, align 8, !tbaa !1
  %0 = load i8**, i8*** %thread.addr, align 8, !tbaa !1
  store i8* null, i8** %0, align 8, !tbaa !1
  ret i32 -1
}

; Function Attrs: nounwind uwtable
define void @gp_thread_finish(i8* %thread) #0 {
entry:
  %thread.addr = alloca i8*, align 8
  store i8* %thread, i8** %thread.addr, align 8, !tbaa !1
  ret void
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
