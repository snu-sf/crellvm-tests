; ModuleID = './MultiSource.Benchmarks.SciMark2-C/1.Stopwatch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Stopwatch_struct = type { i32, double, double }

@seconds.t = internal global double 0.000000e+00, align 8

; Function Attrs: nounwind uwtable
define double @seconds() #0 {
entry:
  %0 = load double, double* @seconds.t, align 8
  %inc = fadd double %0, 1.000000e+00
  store double %inc, double* @seconds.t, align 8
  ret double %inc
}

; Function Attrs: nounwind uwtable
define void @Stopwtach_reset(%struct.Stopwatch_struct* %Q) #0 {
entry:
  %Q.addr = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %Q, %struct.Stopwatch_struct** %Q.addr, align 8
  %0 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %running = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i32 0, i32 0
  store i32 0, i32* %running, align 4
  %1 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %last_time = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %1, i32 0, i32 1
  store double 0.000000e+00, double* %last_time, align 8
  %2 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %total = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %2, i32 0, i32 2
  store double 0.000000e+00, double* %total, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.Stopwatch_struct* @new_Stopwatch() #0 {
entry:
  %retval = alloca %struct.Stopwatch_struct*, align 8
  %S = alloca %struct.Stopwatch_struct*, align 8
  %call = call noalias i8* @malloc(i64 24) #2
  %0 = bitcast i8* %call to %struct.Stopwatch_struct*
  store %struct.Stopwatch_struct* %0, %struct.Stopwatch_struct** %S, align 8
  %1 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %S, align 8
  %cmp = icmp eq %struct.Stopwatch_struct* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.Stopwatch_struct* null, %struct.Stopwatch_struct** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %S, align 8
  call void @Stopwtach_reset(%struct.Stopwatch_struct* %2)
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %S, align 8
  store %struct.Stopwatch_struct* %3, %struct.Stopwatch_struct** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %retval
  ret %struct.Stopwatch_struct* %4
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @Stopwatch_delete(%struct.Stopwatch_struct* %S) #0 {
entry:
  %S.addr = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %S, %struct.Stopwatch_struct** %S.addr, align 8
  %0 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %S.addr, align 8
  %cmp = icmp ne %struct.Stopwatch_struct* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %S.addr, align 8
  %2 = bitcast %struct.Stopwatch_struct* %1 to i8*
  call void @free(i8* %2) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @Stopwatch_start(%struct.Stopwatch_struct* %Q) #0 {
entry:
  %Q.addr = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %Q, %struct.Stopwatch_struct** %Q.addr, align 8
  %0 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %running = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %running, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %running1 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %2, i32 0, i32 0
  store i32 1, i32* %running1, align 4
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %total = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %3, i32 0, i32 2
  store double 0.000000e+00, double* %total, align 8
  %call = call double @seconds()
  %4 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %last_time = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %4, i32 0, i32 1
  store double %call, double* %last_time, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @Stopwatch_resume(%struct.Stopwatch_struct* %Q) #0 {
entry:
  %Q.addr = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %Q, %struct.Stopwatch_struct** %Q.addr, align 8
  %0 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %running = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %running, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call double @seconds()
  %2 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %last_time = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %2, i32 0, i32 1
  store double %call, double* %last_time, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %running1 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %3, i32 0, i32 0
  store i32 1, i32* %running1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @Stopwatch_stop(%struct.Stopwatch_struct* %Q) #0 {
entry:
  %Q.addr = alloca %struct.Stopwatch_struct*, align 8
  store %struct.Stopwatch_struct* %Q, %struct.Stopwatch_struct** %Q.addr, align 8
  %0 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %running = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %running, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call double @seconds()
  %2 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %last_time = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %2, i32 0, i32 1
  %3 = load double, double* %last_time, align 8
  %sub = fsub double %call, %3
  %4 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %total = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %4, i32 0, i32 2
  %5 = load double, double* %total, align 8
  %add = fadd double %5, %sub
  store double %add, double* %total, align 8
  %6 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %running1 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %6, i32 0, i32 0
  store i32 0, i32* %running1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define double @Stopwatch_read(%struct.Stopwatch_struct* %Q) #0 {
entry:
  %Q.addr = alloca %struct.Stopwatch_struct*, align 8
  %t = alloca double, align 8
  store %struct.Stopwatch_struct* %Q, %struct.Stopwatch_struct** %Q.addr, align 8
  %0 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %running = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %0, i32 0, i32 0
  %1 = load i32, i32* %running, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call double @seconds()
  store double %call, double* %t, align 8
  %2 = load double, double* %t, align 8
  %3 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %last_time = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %3, i32 0, i32 1
  %4 = load double, double* %last_time, align 8
  %sub = fsub double %2, %4
  %5 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %total = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %5, i32 0, i32 2
  %6 = load double, double* %total, align 8
  %add = fadd double %6, %sub
  store double %add, double* %total, align 8
  %7 = load double, double* %t, align 8
  %8 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %last_time1 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %8, i32 0, i32 1
  store double %7, double* %last_time1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %9 = load %struct.Stopwatch_struct*, %struct.Stopwatch_struct** %Q.addr, align 8
  %total2 = getelementptr inbounds %struct.Stopwatch_struct, %struct.Stopwatch_struct* %9, i32 0, i32 2
  %10 = load double, double* %total2, align 8
  ret double %10
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
