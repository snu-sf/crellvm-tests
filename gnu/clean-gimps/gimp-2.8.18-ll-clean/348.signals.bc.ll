; ModuleID = './app/signals.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @gimp_init_signal_handlers(i32 %stack_trace_mode) #0 {
entry:
  %stack_trace_mode.addr = alloca i32, align 4
  store i32 %stack_trace_mode, i32* %stack_trace_mode.addr, align 4
  %call = call void (i32)* @gimp_signal_private(i32 1, void (i32)* @gimp_sigfatal_handler, i32 0)
  %call1 = call void (i32)* @gimp_signal_private(i32 2, void (i32)* @gimp_sigfatal_handler, i32 0)
  %call2 = call void (i32)* @gimp_signal_private(i32 3, void (i32)* @gimp_sigfatal_handler, i32 0)
  %call3 = call void (i32)* @gimp_signal_private(i32 6, void (i32)* @gimp_sigfatal_handler, i32 0)
  %call4 = call void (i32)* @gimp_signal_private(i32 15, void (i32)* @gimp_sigfatal_handler, i32 0)
  %0 = load i32, i32* %stack_trace_mode.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call5 = call void (i32)* @gimp_signal_private(i32 7, void (i32)* @gimp_sigfatal_handler, i32 0)
  %call6 = call void (i32)* @gimp_signal_private(i32 11, void (i32)* @gimp_sigfatal_handler, i32 0)
  %call7 = call void (i32)* @gimp_signal_private(i32 8, void (i32)* @gimp_sigfatal_handler, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call8 = call void (i32)* @gimp_signal_private(i32 13, void (i32)* inttoptr (i64 1 to void (i32)*), i32 0)
  %call9 = call void (i32)* @gimp_signal_private(i32 17, void (i32)* null, i32 268435456)
  ret void
}

declare void (i32)* @gimp_signal_private(i32, void (i32)*, i32) #1

; Function Attrs: noreturn nounwind uwtable
define internal void @gimp_sigfatal_handler(i32 %sig_num) #2 {
entry:
  %sig_num.addr = alloca i32, align 4
  store i32 %sig_num, i32* %sig_num.addr, align 4
  %0 = load i32, i32* %sig_num.addr, align 4
  switch i32 %0, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 6, label %sw.bb
    i32 15, label %sw.bb
    i32 7, label %sw.bb.1
    i32 11, label %sw.bb.1
    i32 8, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry
  %1 = load i32, i32* %sig_num.addr, align 4
  %call = call i8* @g_strsignal(i32 %1) #5
  call void @gimp_terminate(i8* %call) #6
  unreachable

sw.bb.1:                                          ; preds = %entry, %entry, %entry
  br label %sw.default

sw.default:                                       ; preds = %entry, %sw.bb.1
  %2 = load i32, i32* %sig_num.addr, align 4
  %call2 = call i8* @g_strsignal(i32 %2) #5
  call void @gimp_fatal_error(i8* %call2) #6
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: noreturn
declare void @gimp_terminate(i8*) #3

; Function Attrs: nounwind readnone
declare i8* @g_strsignal(i32) #4

; Function Attrs: noreturn
declare void @gimp_fatal_error(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
