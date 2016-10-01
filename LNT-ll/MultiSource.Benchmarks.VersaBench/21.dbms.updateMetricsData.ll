; ModuleID = './MultiSource.Benchmarks.VersaBench/21.dbms.updateMetricsData.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

@updateMetricsData.name = internal global [18 x i8] c"updateMetricsData\00", align 16
@.str = private unnamed_addr constant [36 x i8] c"lastTimeMark doesn't seem to be set\00", align 1

; Function Attrs: nounwind uwtable
define void @updateMetricsData(%struct.Metrics* %metrics) #0 {
entry:
  %metrics.addr = alloca %struct.Metrics*, align 8
  %temp = alloca i64, align 8
  %commandMetric = alloca %struct.CommandMetric*, align 8
  store %struct.Metrics* %metrics, %struct.Metrics** %metrics.addr, align 8
  %0 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %lastCommand = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i32 0, i32 6
  %1 = load i32, i32* %lastCommand, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %2, i32 0, i32 3
  store %struct.CommandMetric* %insertCommandMetric, %struct.CommandMetric** %commandMetric, align 8
  br label %if.end.11

if.else:                                          ; preds = %entry
  %3 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %lastCommand1 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %3, i32 0, i32 6
  %4 = load i32, i32* %lastCommand1, align 4
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %if.then.3, label %if.else.4

if.then.3:                                        ; preds = %if.else
  %5 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %5, i32 0, i32 4
  store %struct.CommandMetric* %queryCommandMetric, %struct.CommandMetric** %commandMetric, align 8
  br label %if.end.10

if.else.4:                                        ; preds = %if.else
  %6 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %lastCommand5 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %6, i32 0, i32 6
  %7 = load i32, i32* %lastCommand5, align 4
  %cmp6 = icmp eq i32 %7, 3
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else.4
  %8 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %8, i32 0, i32 5
  store %struct.CommandMetric* %deleteCommandMetric, %struct.CommandMetric** %commandMetric, align 8
  br label %if.end

if.else.8:                                        ; preds = %if.else.4
  %9 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %lastCommand9 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %9, i32 0, i32 6
  store i32 5, i32* %lastCommand9, align 4
  br label %return

if.end:                                           ; preds = %if.then.7
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then.3
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.then
  %call = call i64 @getTime()
  %10 = load %struct.CommandMetric*, %struct.CommandMetric** %commandMetric, align 8
  %lastTimeMark = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %10, i32 0, i32 0
  %11 = load i64, i64* %lastTimeMark, align 8
  %sub = sub nsw i64 %call, %11
  store i64 %sub, i64* %temp, align 8
  %12 = load i64, i64* %temp, align 8
  %cmp12 = icmp slt i64 %12, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.end.11
  call void @errorMessage(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i8 signext 0)
  call void @errorMessage(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @updateMetricsData.name, i32 0, i32 0), i8 signext 1)
  call void @flushErrorMessage()
  br label %if.end.26

if.else.14:                                       ; preds = %if.end.11
  %13 = load i64, i64* %temp, align 8
  %14 = load %struct.CommandMetric*, %struct.CommandMetric** %commandMetric, align 8
  %best = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %14, i32 0, i32 5
  %15 = load i64, i64* %best, align 8
  %cmp15 = icmp slt i64 %13, %15
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.else.14
  %16 = load i64, i64* %temp, align 8
  %17 = load %struct.CommandMetric*, %struct.CommandMetric** %commandMetric, align 8
  %best17 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %17, i32 0, i32 5
  store i64 %16, i64* %best17, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.else.14
  %18 = load i64, i64* %temp, align 8
  %19 = load %struct.CommandMetric*, %struct.CommandMetric** %commandMetric, align 8
  %worst = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %19, i32 0, i32 4
  %20 = load i64, i64* %worst, align 8
  %cmp19 = icmp sgt i64 %18, %20
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.18
  %21 = load i64, i64* %temp, align 8
  %22 = load %struct.CommandMetric*, %struct.CommandMetric** %commandMetric, align 8
  %worst21 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %22, i32 0, i32 4
  store i64 %21, i64* %worst21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.18
  %23 = load i64, i64* %temp, align 8
  %conv = sitofp i64 %23 to double
  %24 = load %struct.CommandMetric*, %struct.CommandMetric** %commandMetric, align 8
  %sum = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %24, i32 0, i32 2
  %25 = load double, double* %sum, align 8
  %add = fadd double %25, %conv
  store double %add, double* %sum, align 8
  %26 = load i64, i64* %temp, align 8
  %conv23 = sitofp i64 %26 to double
  %27 = load i64, i64* %temp, align 8
  %conv24 = sitofp i64 %27 to double
  %mul = fmul double %conv23, %conv24
  %28 = load %struct.CommandMetric*, %struct.CommandMetric** %commandMetric, align 8
  %sumSquares = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %28, i32 0, i32 3
  %29 = load double, double* %sumSquares, align 8
  %add25 = fadd double %29, %mul
  store double %add25, double* %sumSquares, align 8
  %30 = load %struct.CommandMetric*, %struct.CommandMetric** %commandMetric, align 8
  %numOfCommands = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %30, i32 0, i32 1
  %31 = load i64, i64* %numOfCommands, align 8
  %inc = add nsw i64 %31, 1
  store i64 %inc, i64* %numOfCommands, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.22, %if.then.13
  %32 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %lastCommand27 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %32, i32 0, i32 6
  store i32 5, i32* %lastCommand27, align 4
  br label %return

return:                                           ; preds = %if.end.26, %if.else.8
  ret void
}

declare i64 @getTime() #1

declare void @errorMessage(i8*, i8 signext) #1

declare void @flushErrorMessage() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
