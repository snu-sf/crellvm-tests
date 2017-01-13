; ModuleID = './MultiSource.Benchmarks.VersaBench/35.dbms.outputMetricsData.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

@.str = private unnamed_addr constant [29 x i8] c"DIS Data Management Metrics\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"    total time  = %li msecs\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"    input time  = %li msecs\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"    output time = %li msecs\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"    Insert Commmand Metrics:\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"        best time          = %li msecs\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"        worst time         = %li msecs\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"        average            = %f msecs\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"        standard deviation = %f msecs\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"    Query Commmand Metrics:\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"    Delete Commmand Metrics:\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @outputMetricsData(%struct._IO_FILE* %file, %struct.Metrics* %metrics) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %metrics.addr = alloca %struct.Metrics*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.Metrics* %metrics, %struct.Metrics** %metrics.addr, align 8
  %0 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  call void @calcMetricsData(%struct.Metrics* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %3 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %totalTime = getelementptr inbounds %struct.Metrics, %struct.Metrics* %3, i32 0, i32 0
  %4 = load i64, i64* %totalTime, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i64 %4)
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %6 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %inputTime = getelementptr inbounds %struct.Metrics, %struct.Metrics* %6, i32 0, i32 1
  %7 = load i64, i64* %inputTime, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i64 %7)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %9 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %outputTime = getelementptr inbounds %struct.Metrics, %struct.Metrics* %9, i32 0, i32 2
  %10 = load i64, i64* %outputTime, align 8
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0), i64 %10)
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %13 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %13, i32 0, i32 3
  %best = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric, i32 0, i32 5
  %14 = load i64, i64* %best, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i64 %14)
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %16 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric6 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %16, i32 0, i32 3
  %worst = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric6, i32 0, i32 4
  %17 = load i64, i64* %worst, align 8
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i64 %17)
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %19 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric8 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %19, i32 0, i32 3
  %avg = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric8, i32 0, i32 6
  %20 = load double, double* %avg, align 8
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), double %20)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %22 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric10 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %22, i32 0, i32 3
  %deviation = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric10, i32 0, i32 7
  %23 = load double, double* %deviation, align 8
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), double %23)
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i32 0, i32 0))
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %26 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %26, i32 0, i32 4
  %best13 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric, i32 0, i32 5
  %27 = load i64, i64* %best13, align 8
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i64 %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %29 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric15 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %29, i32 0, i32 4
  %worst16 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric15, i32 0, i32 4
  %30 = load i64, i64* %worst16, align 8
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i64 %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %32 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric18 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %32, i32 0, i32 4
  %avg19 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric18, i32 0, i32 6
  %33 = load double, double* %avg19, align 8
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), double %33)
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %35 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric21 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %35, i32 0, i32 4
  %deviation22 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric21, i32 0, i32 7
  %36 = load double, double* %deviation22, align 8
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), double %36)
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %39 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %39, i32 0, i32 5
  %best25 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric, i32 0, i32 5
  %40 = load i64, i64* %best25, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i32 0, i32 0), i64 %40)
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %42 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric27 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %42, i32 0, i32 5
  %worst28 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric27, i32 0, i32 4
  %43 = load i64, i64* %worst28, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i64 %43)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %45 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric30 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %45, i32 0, i32 5
  %avg31 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric30, i32 0, i32 6
  %46 = load double, double* %avg31, align 8
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), double %46)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %48 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric33 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %48, i32 0, i32 5
  %deviation34 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric33, i32 0, i32 7
  %49 = load double, double* %deviation34, align 8
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), double %49)
  ret void
}

declare void @calcMetricsData(%struct.Metrics*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
