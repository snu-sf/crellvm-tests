; ModuleID = './MultiSource.Benchmarks.VersaBench/38.dbms.initMetricsData.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

; Function Attrs: nounwind uwtable
define void @initMetricsData(%struct.Metrics* %metrics) #0 {
entry:
  %metrics.addr = alloca %struct.Metrics*, align 8
  %temp = alloca i64, align 8
  store %struct.Metrics* %metrics, %struct.Metrics** %metrics.addr, align 8
  call void @initTime()
  %call = call i64 @getTime()
  store i64 %call, i64* %temp, align 8
  %0 = load i64, i64* %temp, align 8
  %1 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %totalTime = getelementptr inbounds %struct.Metrics, %struct.Metrics* %1, i32 0, i32 0
  store i64 %0, i64* %totalTime, align 8
  %2 = load i64, i64* %temp, align 8
  %3 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %inputTime = getelementptr inbounds %struct.Metrics, %struct.Metrics* %3, i32 0, i32 1
  store i64 %2, i64* %inputTime, align 8
  %4 = load i64, i64* %temp, align 8
  %5 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %outputTime = getelementptr inbounds %struct.Metrics, %struct.Metrics* %5, i32 0, i32 2
  store i64 %4, i64* %outputTime, align 8
  %6 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %6, i32 0, i32 3
  %lastTimeMark = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric, i32 0, i32 0
  store i64 -2147483647, i64* %lastTimeMark, align 8
  %7 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric1 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %7, i32 0, i32 3
  %numOfCommands = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric1, i32 0, i32 1
  store i64 0, i64* %numOfCommands, align 8
  %8 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric2 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %8, i32 0, i32 3
  %sum = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric2, i32 0, i32 2
  store double 0.000000e+00, double* %sum, align 8
  %9 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric3 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %9, i32 0, i32 3
  %sumSquares = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric3, i32 0, i32 3
  store double 0.000000e+00, double* %sumSquares, align 8
  %10 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric4 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %10, i32 0, i32 3
  %worst = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric4, i32 0, i32 4
  store i64 -2147483647, i64* %worst, align 8
  %11 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric5 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %11, i32 0, i32 3
  %best = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric5, i32 0, i32 5
  store i64 2147483647, i64* %best, align 8
  %12 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric6 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %12, i32 0, i32 3
  %avg = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric6, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %avg, align 8
  %13 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric7 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %13, i32 0, i32 3
  %deviation = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric7, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %deviation, align 8
  %14 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %14, i32 0, i32 4
  %lastTimeMark8 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric, i32 0, i32 0
  store i64 -2147483647, i64* %lastTimeMark8, align 8
  %15 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric9 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %15, i32 0, i32 4
  %numOfCommands10 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric9, i32 0, i32 1
  store i64 0, i64* %numOfCommands10, align 8
  %16 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric11 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %16, i32 0, i32 4
  %sum12 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric11, i32 0, i32 2
  store double 0.000000e+00, double* %sum12, align 8
  %17 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric13 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %17, i32 0, i32 4
  %sumSquares14 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric13, i32 0, i32 3
  store double 0.000000e+00, double* %sumSquares14, align 8
  %18 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric15 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %18, i32 0, i32 4
  %worst16 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric15, i32 0, i32 4
  store i64 -2147483647, i64* %worst16, align 8
  %19 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric17 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %19, i32 0, i32 4
  %best18 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric17, i32 0, i32 5
  store i64 2147483647, i64* %best18, align 8
  %20 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric19 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %20, i32 0, i32 4
  %avg20 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric19, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %avg20, align 8
  %21 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric21 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %21, i32 0, i32 4
  %deviation22 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric21, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %deviation22, align 8
  %22 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %22, i32 0, i32 5
  %lastTimeMark23 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric, i32 0, i32 0
  store i64 -2147483647, i64* %lastTimeMark23, align 8
  %23 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric24 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %23, i32 0, i32 5
  %numOfCommands25 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric24, i32 0, i32 1
  store i64 0, i64* %numOfCommands25, align 8
  %24 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric26 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %24, i32 0, i32 5
  %sum27 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric26, i32 0, i32 2
  store double 0.000000e+00, double* %sum27, align 8
  %25 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric28 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %25, i32 0, i32 5
  %sumSquares29 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric28, i32 0, i32 3
  store double 0.000000e+00, double* %sumSquares29, align 8
  %26 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric30 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %26, i32 0, i32 5
  %worst31 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric30, i32 0, i32 4
  store i64 -2147483647, i64* %worst31, align 8
  %27 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric32 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %27, i32 0, i32 5
  %best33 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric32, i32 0, i32 5
  store i64 2147483647, i64* %best33, align 8
  %28 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric34 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %28, i32 0, i32 5
  %avg35 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric34, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %avg35, align 8
  %29 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric36 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %29, i32 0, i32 5
  %deviation37 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric36, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %deviation37, align 8
  %30 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %lastCommand = getelementptr inbounds %struct.Metrics, %struct.Metrics* %30, i32 0, i32 6
  store i32 5, i32* %lastCommand, align 4
  ret void
}

declare void @initTime() #1

declare i64 @getTime() #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
