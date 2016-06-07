; ModuleID = 'agc.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @agc_max(float** %mfc, i32 %n_frame) #0 {
entry:
  %mfc.addr = alloca float**, align 8
  %n_frame.addr = alloca i32, align 4
  %maxc0 = alloca float, align 4
  %i = alloca i32, align 4
  store float** %mfc, float*** %mfc.addr, align 8
  store i32 %n_frame, i32* %n_frame.addr, align 4
  %0 = load float**, float*** %mfc.addr, align 8
  %arrayidx = getelementptr inbounds float*, float** %0, i64 0
  %1 = load float*, float** %arrayidx, align 8
  %arrayidx1 = getelementptr inbounds float, float* %1, i64 0
  %2 = load float, float* %arrayidx1, align 4
  store float %2, float* %maxc0, align 4
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* %n_frame.addr, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load float**, float*** %mfc.addr, align 8
  %arrayidx2 = getelementptr inbounds float*, float** %6, i64 %idxprom
  %7 = load float*, float** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds float, float* %7, i64 0
  %8 = load float, float* %arrayidx3, align 4
  %9 = load float, float* %maxc0, align 4
  %cmp4 = fcmp ogt float %8, %9
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %10 to i64
  %11 = load float**, float*** %mfc.addr, align 8
  %arrayidx6 = getelementptr inbounds float*, float** %11, i64 %idxprom5
  %12 = load float*, float** %arrayidx6, align 8
  %arrayidx7 = getelementptr inbounds float, float* %12, i64 0
  %13 = load float, float* %arrayidx7, align 4
  store float %13, float* %maxc0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.14, %for.end
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %n_frame.addr, align 4
  %cmp9 = icmp slt i32 %15, %16
  br i1 %cmp9, label %for.body.10, label %for.end.16

for.body.10:                                      ; preds = %for.cond.8
  %17 = load float, float* %maxc0, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom11 = sext i32 %18 to i64
  %19 = load float**, float*** %mfc.addr, align 8
  %arrayidx12 = getelementptr inbounds float*, float** %19, i64 %idxprom11
  %20 = load float*, float** %arrayidx12, align 8
  %arrayidx13 = getelementptr inbounds float, float* %20, i64 0
  %21 = load float, float* %arrayidx13, align 4
  %sub = fsub float %21, %17
  store float %sub, float* %arrayidx13, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.10
  %22 = load i32, i32* %i, align 4
  %inc15 = add nsw i32 %22, 1
  store i32 %inc15, i32* %i, align 4
  br label %for.cond.8

for.end.16:                                       ; preds = %for.cond.8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
