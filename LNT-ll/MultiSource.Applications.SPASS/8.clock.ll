; ModuleID = './MultiSource.Applications.SPASS/8.clock.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.timeb = type { i64, i16, i16, i16 }

@clock_Akku = common global [6 x float] zeroinitializer, align 16
@.str = private unnamed_addr constant [29 x i8] c" No Timing on this machine. \00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@clock_Counters = common global [6 x %struct.timeb] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @clock_Init() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  call void @clock_InitCounter(i32 %1)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @clock_InitCounter(i32 %ClockCounter) #0 {
entry:
  %ClockCounter.addr = alloca i32, align 4
  store i32 %ClockCounter, i32* %ClockCounter.addr, align 4
  %0 = load i32, i32* %ClockCounter.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [6 x float], [6 x float]* @clock_Akku, i32 0, i64 %idxprom
  store float 0.000000e+00, float* %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @clock_StartCounter(i32 %ClockCounter) #0 {
entry:
  %ClockCounter.addr = alloca i32, align 4
  store i32 %ClockCounter, i32* %ClockCounter.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @clock_StopPassedTime(i32 %ClockCounter) #0 {
entry:
  %ClockCounter.addr = alloca i32, align 4
  store i32 %ClockCounter, i32* %ClockCounter.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @clock_StopAddPassedTime(i32 %ClockCounter) #0 {
entry:
  %ClockCounter.addr = alloca i32, align 4
  store i32 %ClockCounter, i32* %ClockCounter.addr, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define float @clock_GetSeconds(i32 %ClockCounter) #0 {
entry:
  %ClockCounter.addr = alloca i32, align 4
  store i32 %ClockCounter, i32* %ClockCounter.addr, align 4
  ret float 0.000000e+00
}

; Function Attrs: nounwind uwtable
define void @clock_PrintTime(i32 %ClockCounter) #0 {
entry:
  %ClockCounter.addr = alloca i32, align 4
  store i32 %ClockCounter, i32* %ClockCounter.addr, align 4
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0), %struct._IO_FILE* %0)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
