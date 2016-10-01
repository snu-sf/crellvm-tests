; ModuleID = './MultiSource.Benchmarks.VersaBench/34.dbms.calcMetricsData.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Metrics = type { i64, i64, i64, %struct.CommandMetric, %struct.CommandMetric, %struct.CommandMetric, i32 }
%struct.CommandMetric = type { i64, i64, double, double, i64, i64, double, double }

; Function Attrs: nounwind uwtable
define void @calcMetricsData(%struct.Metrics* %metrics) #0 {
entry:
  %metrics.addr = alloca %struct.Metrics*, align 8
  %temp = alloca double, align 8
  store %struct.Metrics* %metrics, %struct.Metrics** %metrics.addr, align 8
  %call = call i64 @getTime()
  %0 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %totalTime = getelementptr inbounds %struct.Metrics, %struct.Metrics* %0, i32 0, i32 0
  %1 = load i64, i64* %totalTime, align 8
  %sub = sub nsw i64 %call, %1
  %2 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %totalTime1 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %2, i32 0, i32 0
  store i64 %sub, i64* %totalTime1, align 8
  %3 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %3, i32 0, i32 3
  %numOfCommands = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric, i32 0, i32 1
  %4 = load i64, i64* %numOfCommands, align 8
  %cmp = icmp sgt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.else.29

if.then:                                          ; preds = %entry
  %5 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric2 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %5, i32 0, i32 3
  %sum = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric2, i32 0, i32 2
  %6 = load double, double* %sum, align 8
  %7 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric3 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %7, i32 0, i32 3
  %numOfCommands4 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric3, i32 0, i32 1
  %8 = load i64, i64* %numOfCommands4, align 8
  %conv = sitofp i64 %8 to double
  %div = fdiv double %6, %conv
  %9 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric5 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %9, i32 0, i32 3
  %avg = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric5, i32 0, i32 6
  store double %div, double* %avg, align 8
  %10 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric6 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %10, i32 0, i32 3
  %sumSquares = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric6, i32 0, i32 3
  %11 = load double, double* %sumSquares, align 8
  %12 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric7 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %12, i32 0, i32 3
  %sum8 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric7, i32 0, i32 2
  %13 = load double, double* %sum8, align 8
  %14 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric9 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %14, i32 0, i32 3
  %sum10 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric9, i32 0, i32 2
  %15 = load double, double* %sum10, align 8
  %mul = fmul double %13, %15
  %16 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric11 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %16, i32 0, i32 3
  %numOfCommands12 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric11, i32 0, i32 1
  %17 = load i64, i64* %numOfCommands12, align 8
  %conv13 = sitofp i64 %17 to double
  %div14 = fdiv double %mul, %conv13
  %sub15 = fsub double %11, %div14
  store double %sub15, double* %temp, align 8
  %18 = load double, double* %temp, align 8
  %cmp16 = fcmp olt double %18, 0.000000e+00
  br i1 %cmp16, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.then
  %19 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric19 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %19, i32 0, i32 3
  %avg20 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric19, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %avg20, align 8
  %20 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric21 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %20, i32 0, i32 3
  %deviation = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric21, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %deviation, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %21 = load double, double* %temp, align 8
  %22 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric22 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %22, i32 0, i32 3
  %numOfCommands23 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric22, i32 0, i32 1
  %23 = load i64, i64* %numOfCommands23, align 8
  %conv24 = sitofp i64 %23 to double
  %div25 = fdiv double %21, %conv24
  %call26 = call double @sqrt(double %div25) #3
  %24 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric27 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %24, i32 0, i32 3
  %deviation28 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric27, i32 0, i32 7
  store double %call26, double* %deviation28, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.18
  br label %if.end.34

if.else.29:                                       ; preds = %entry
  %25 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric30 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %25, i32 0, i32 3
  %avg31 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric30, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %avg31, align 8
  %26 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %insertCommandMetric32 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %26, i32 0, i32 3
  %deviation33 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %insertCommandMetric32, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %deviation33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.29, %if.end
  %27 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %27, i32 0, i32 4
  %numOfCommands35 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric, i32 0, i32 1
  %28 = load i64, i64* %numOfCommands35, align 8
  %cmp36 = icmp sgt i64 %28, 0
  br i1 %cmp36, label %if.then.38, label %if.else.75

if.then.38:                                       ; preds = %if.end.34
  %29 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric39 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %29, i32 0, i32 4
  %sum40 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric39, i32 0, i32 2
  %30 = load double, double* %sum40, align 8
  %31 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric41 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %31, i32 0, i32 4
  %numOfCommands42 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric41, i32 0, i32 1
  %32 = load i64, i64* %numOfCommands42, align 8
  %conv43 = sitofp i64 %32 to double
  %div44 = fdiv double %30, %conv43
  %33 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric45 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %33, i32 0, i32 4
  %avg46 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric45, i32 0, i32 6
  store double %div44, double* %avg46, align 8
  %34 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric47 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %34, i32 0, i32 4
  %sumSquares48 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric47, i32 0, i32 3
  %35 = load double, double* %sumSquares48, align 8
  %36 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric49 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %36, i32 0, i32 4
  %sum50 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric49, i32 0, i32 2
  %37 = load double, double* %sum50, align 8
  %38 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric51 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %38, i32 0, i32 4
  %sum52 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric51, i32 0, i32 2
  %39 = load double, double* %sum52, align 8
  %mul53 = fmul double %37, %39
  %40 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric54 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %40, i32 0, i32 4
  %numOfCommands55 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric54, i32 0, i32 1
  %41 = load i64, i64* %numOfCommands55, align 8
  %conv56 = sitofp i64 %41 to double
  %div57 = fdiv double %mul53, %conv56
  %sub58 = fsub double %35, %div57
  store double %sub58, double* %temp, align 8
  %42 = load double, double* %temp, align 8
  %cmp59 = fcmp olt double %42, 0.000000e+00
  br i1 %cmp59, label %if.then.61, label %if.else.66

if.then.61:                                       ; preds = %if.then.38
  %43 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric62 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %43, i32 0, i32 4
  %avg63 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric62, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %avg63, align 8
  %44 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric64 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %44, i32 0, i32 4
  %deviation65 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric64, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %deviation65, align 8
  br label %if.end.74

if.else.66:                                       ; preds = %if.then.38
  %45 = load double, double* %temp, align 8
  %46 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric67 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %46, i32 0, i32 4
  %numOfCommands68 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric67, i32 0, i32 1
  %47 = load i64, i64* %numOfCommands68, align 8
  %conv69 = sitofp i64 %47 to double
  %div70 = fdiv double %45, %conv69
  %call71 = call double @sqrt(double %div70) #3
  %48 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric72 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %48, i32 0, i32 4
  %deviation73 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric72, i32 0, i32 7
  store double %call71, double* %deviation73, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.66, %if.then.61
  br label %if.end.80

if.else.75:                                       ; preds = %if.end.34
  %49 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric76 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %49, i32 0, i32 4
  %avg77 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric76, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %avg77, align 8
  %50 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %queryCommandMetric78 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %50, i32 0, i32 4
  %deviation79 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %queryCommandMetric78, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %deviation79, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.75, %if.end.74
  %51 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric = getelementptr inbounds %struct.Metrics, %struct.Metrics* %51, i32 0, i32 5
  %numOfCommands81 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric, i32 0, i32 1
  %52 = load i64, i64* %numOfCommands81, align 8
  %cmp82 = icmp sgt i64 %52, 0
  br i1 %cmp82, label %if.then.84, label %if.else.121

if.then.84:                                       ; preds = %if.end.80
  %53 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric85 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %53, i32 0, i32 5
  %sum86 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric85, i32 0, i32 2
  %54 = load double, double* %sum86, align 8
  %55 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric87 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %55, i32 0, i32 5
  %numOfCommands88 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric87, i32 0, i32 1
  %56 = load i64, i64* %numOfCommands88, align 8
  %conv89 = sitofp i64 %56 to double
  %div90 = fdiv double %54, %conv89
  %57 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric91 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %57, i32 0, i32 5
  %avg92 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric91, i32 0, i32 6
  store double %div90, double* %avg92, align 8
  %58 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric93 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %58, i32 0, i32 5
  %sumSquares94 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric93, i32 0, i32 3
  %59 = load double, double* %sumSquares94, align 8
  %60 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric95 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %60, i32 0, i32 5
  %sum96 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric95, i32 0, i32 2
  %61 = load double, double* %sum96, align 8
  %62 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric97 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %62, i32 0, i32 5
  %sum98 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric97, i32 0, i32 2
  %63 = load double, double* %sum98, align 8
  %mul99 = fmul double %61, %63
  %64 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric100 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %64, i32 0, i32 5
  %numOfCommands101 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric100, i32 0, i32 1
  %65 = load i64, i64* %numOfCommands101, align 8
  %conv102 = sitofp i64 %65 to double
  %div103 = fdiv double %mul99, %conv102
  %sub104 = fsub double %59, %div103
  store double %sub104, double* %temp, align 8
  %66 = load double, double* %temp, align 8
  %cmp105 = fcmp olt double %66, 0.000000e+00
  br i1 %cmp105, label %if.then.107, label %if.else.112

if.then.107:                                      ; preds = %if.then.84
  %67 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric108 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %67, i32 0, i32 5
  %avg109 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric108, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %avg109, align 8
  %68 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric110 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %68, i32 0, i32 5
  %deviation111 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric110, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %deviation111, align 8
  br label %if.end.120

if.else.112:                                      ; preds = %if.then.84
  %69 = load double, double* %temp, align 8
  %70 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric113 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %70, i32 0, i32 5
  %numOfCommands114 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric113, i32 0, i32 1
  %71 = load i64, i64* %numOfCommands114, align 8
  %conv115 = sitofp i64 %71 to double
  %div116 = fdiv double %69, %conv115
  %call117 = call double @sqrt(double %div116) #3
  %72 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric118 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %72, i32 0, i32 5
  %deviation119 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric118, i32 0, i32 7
  store double %call117, double* %deviation119, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.112, %if.then.107
  br label %if.end.126

if.else.121:                                      ; preds = %if.end.80
  %73 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric122 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %73, i32 0, i32 5
  %avg123 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric122, i32 0, i32 6
  store double 0xC7EFFFFFE091FF3D, double* %avg123, align 8
  %74 = load %struct.Metrics*, %struct.Metrics** %metrics.addr, align 8
  %deleteCommandMetric124 = getelementptr inbounds %struct.Metrics, %struct.Metrics* %74, i32 0, i32 5
  %deviation125 = getelementptr inbounds %struct.CommandMetric, %struct.CommandMetric* %deleteCommandMetric124, i32 0, i32 7
  store double 0xC7EFFFFFE091FF3D, double* %deviation125, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.else.121, %if.end.120
  ret void
}

declare i64 @getTime() #1

; Function Attrs: nounwind
declare double @sqrt(double) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
