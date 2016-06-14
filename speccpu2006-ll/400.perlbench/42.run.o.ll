; ModuleID = 'run.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.op = type { %struct.op*, %struct.op*, %struct.op* ()*, i64, i16, i16, i8, i8 }

@PL_op = external global %struct.op*, align 8
@PL_sig_pending = external global i32, align 4
@PL_tainted = external global i8, align 1

; Function Attrs: nounwind uwtable
define i32 @Perl_runops_standard() #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.op*, %struct.op** @PL_op, align 8
  %op_ppaddr = getelementptr inbounds %struct.op, %struct.op* %0, i32 0, i32 2
  %1 = load %struct.op* ()*, %struct.op* ()** %op_ppaddr, align 8
  %call = call %struct.op* %1()
  store %struct.op* %call, %struct.op** @PL_op, align 8
  %tobool = icmp ne %struct.op* %call, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* @PL_sig_pending, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @Perl_despatch_signals()
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i8 0, i8* @PL_tainted, align 1
  ret i32 0
}

declare void @Perl_despatch_signals() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
