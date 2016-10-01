; ModuleID = './MultiSource.Benchmarks.VersaBench/41.dbms.setMetricsData.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

; Function Attrs: nounwind uwtable
define void @setMetricsData(%struct.Metrics* %metrics, i32 %command) #0 {
entry:
  %metrics.addr = alloca %struct.Metrics*, align 8
  %command.addr = alloca i32, align 4
  %temp = alloca i64, align 8
  store %struct.Metrics* %metrics, %struct.Metrics** %metrics.addr, align 8
  store i32 %command, i32* %command.addr, align 4
  %call = call i64 @getTime()
  store i64 %call, i64* %temp, align 8
  %0 = load i32, i32* %command.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %temp, align 8
  %2 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %2, i32 0, i32 3
  %lastTimeMark = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric, i32 0, i32 0
  store i64 %1, i64* %lastTimeMark, align 8
  %3 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %lastCommand = getelementptr inbounds %struct.Metrics, %struct.Metrics* %3, i32 0, i32 6
  store i32 1, i32* %lastCommand, align 4
  br label %if.end.13

if.else:                                          ; preds = %entry
  %4 = load i32, i32* %command.addr, align 4
  %cmp1 = icmp eq i32 %4, 2
  br i1 %cmp1, label %if.then.2, label %if.else.5

if.then.2:                                        ; preds = %if.else
  %5 = load i64, i64* %temp, align 8
  %6 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %6, i32 0, i32 4
  %lastTimeMark3 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric, i32 0, i32 0
  store i64 %5, i64* %lastTimeMark3, align 8
  %7 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %lastCommand4 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %7, i32 0, i32 6
  store i32 2, i32* %lastCommand4, align 4
  br label %if.end.12

if.else.5:                                        ; preds = %if.else
  %8 = load i32, i32* %command.addr, align 4
  %cmp6 = icmp eq i32 %8, 3
  br i1 %cmp6, label %if.then.7, label %if.else.10

if.then.7:                                        ; preds = %if.else.5
  %9 = load i64, i64* %temp, align 8
  %10 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %10, i32 0, i32 5
  %lastTimeMark8 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric, i32 0, i32 0
  store i64 %9, i64* %lastTimeMark8, align 8
  %11 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %lastCommand9 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 6
  store i32 3, i32* %lastCommand9, align 4
  br label %if.end

if.else.10:                                       ; preds = %if.else.5
  %12 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %lastCommand11 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %12, i32 0, i32 6
  store i32 5, i32* %lastCommand11, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.10, %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %if.then.2
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then
  ret void
}

declare i64 @getTime() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
