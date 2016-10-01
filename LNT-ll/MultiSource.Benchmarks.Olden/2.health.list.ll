; ModuleID = './MultiSource.Benchmarks.Olden/2.health.list.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.List = type { %struct.List*, %struct.Patient*, %struct.List* }
%struct.Patient = type { i32, i32, i32, %struct.Village* }
%struct.Village = type { [4 x %struct.Village*], %struct.Village*, %struct.List, %struct.Hosp, i32, i64 }
%struct.Hosp = type { i32, i32, i32, %struct.List, %struct.List, %struct.List, %struct.List }

; Function Attrs: nounwind uwtable
define void @addList(%struct.List* %list, %struct.Patient* %patient) #0 {
entry:
  %list.addr = alloca %struct.List*, align 8
  %patient.addr = alloca %struct.Patient*, align 8
  %b = alloca %struct.List*, align 8
  store %struct.List* %list, %struct.List** %list.addr, align 8
  store %struct.Patient* %patient, %struct.Patient** %patient.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.List*, %struct.List** %list.addr, align 8
  %cmp = icmp ne %struct.List* %0, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.List*, %struct.List** %list.addr, align 8
  store %struct.List* %1, %struct.List** %b, align 8
  %2 = load %struct.List*, %struct.List** %list.addr, align 8
  %forward = getelementptr inbounds %struct.List, %struct.List* %2, i32 0, i32 0
  %3 = load %struct.List*, %struct.List** %forward, align 8
  store %struct.List* %3, %struct.List** %list.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call = call noalias i8* @malloc(i64 24) #2
  %4 = bitcast i8* %call to %struct.List*
  store %struct.List* %4, %struct.List** %list.addr, align 8
  %5 = load %struct.Patient*, %struct.Patient** %patient.addr, align 8
  %6 = load %struct.List*, %struct.List** %list.addr, align 8
  %patient1 = getelementptr inbounds %struct.List, %struct.List* %6, i32 0, i32 1
  store %struct.Patient* %5, %struct.Patient** %patient1, align 8
  %7 = load %struct.List*, %struct.List** %list.addr, align 8
  %forward2 = getelementptr inbounds %struct.List, %struct.List* %7, i32 0, i32 0
  store %struct.List* null, %struct.List** %forward2, align 8
  %8 = load %struct.List*, %struct.List** %b, align 8
  %9 = load %struct.List*, %struct.List** %list.addr, align 8
  %back = getelementptr inbounds %struct.List, %struct.List* %9, i32 0, i32 2
  store %struct.List* %8, %struct.List** %back, align 8
  %10 = load %struct.List*, %struct.List** %list.addr, align 8
  %11 = load %struct.List*, %struct.List** %b, align 8
  %forward3 = getelementptr inbounds %struct.List, %struct.List* %11, i32 0, i32 0
  store %struct.List* %10, %struct.List** %forward3, align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @removeList(%struct.List* %list, %struct.Patient* %patient) #0 {
entry:
  %list.addr = alloca %struct.List*, align 8
  %patient.addr = alloca %struct.Patient*, align 8
  %l1 = alloca %struct.List*, align 8
  %l2 = alloca %struct.List*, align 8
  %p = alloca %struct.Patient*, align 8
  store %struct.List* %list, %struct.List** %list.addr, align 8
  store %struct.Patient* %patient, %struct.Patient** %patient.addr, align 8
  %0 = load %struct.List*, %struct.List** %list.addr, align 8
  %patient1 = getelementptr inbounds %struct.List, %struct.List* %0, i32 0, i32 1
  %1 = load %struct.Patient*, %struct.Patient** %patient1, align 8
  store %struct.Patient* %1, %struct.Patient** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.Patient*, %struct.Patient** %p, align 8
  %3 = load %struct.Patient*, %struct.Patient** %patient.addr, align 8
  %cmp = icmp ne %struct.Patient* %2, %3
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load %struct.List*, %struct.List** %list.addr, align 8
  %forward = getelementptr inbounds %struct.List, %struct.List* %4, i32 0, i32 0
  %5 = load %struct.List*, %struct.List** %forward, align 8
  store %struct.List* %5, %struct.List** %list.addr, align 8
  %6 = load %struct.List*, %struct.List** %list.addr, align 8
  %patient2 = getelementptr inbounds %struct.List, %struct.List* %6, i32 0, i32 1
  %7 = load %struct.Patient*, %struct.Patient** %patient2, align 8
  store %struct.Patient* %7, %struct.Patient** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load %struct.List*, %struct.List** %list.addr, align 8
  %back = getelementptr inbounds %struct.List, %struct.List* %8, i32 0, i32 2
  %9 = load %struct.List*, %struct.List** %back, align 8
  store %struct.List* %9, %struct.List** %l1, align 8
  %10 = load %struct.List*, %struct.List** %list.addr, align 8
  %forward3 = getelementptr inbounds %struct.List, %struct.List* %10, i32 0, i32 0
  %11 = load %struct.List*, %struct.List** %forward3, align 8
  store %struct.List* %11, %struct.List** %l2, align 8
  %12 = load %struct.List*, %struct.List** %l2, align 8
  %13 = load %struct.List*, %struct.List** %l1, align 8
  %forward4 = getelementptr inbounds %struct.List, %struct.List* %13, i32 0, i32 0
  store %struct.List* %12, %struct.List** %forward4, align 8
  %14 = load %struct.List*, %struct.List** %list.addr, align 8
  %forward5 = getelementptr inbounds %struct.List, %struct.List* %14, i32 0, i32 0
  %15 = load %struct.List*, %struct.List** %forward5, align 8
  %cmp6 = icmp ne %struct.List* %15, null
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %16 = load %struct.List*, %struct.List** %list.addr, align 8
  %forward7 = getelementptr inbounds %struct.List, %struct.List* %16, i32 0, i32 0
  %17 = load %struct.List*, %struct.List** %forward7, align 8
  store %struct.List* %17, %struct.List** %l1, align 8
  %18 = load %struct.List*, %struct.List** %list.addr, align 8
  %back8 = getelementptr inbounds %struct.List, %struct.List* %18, i32 0, i32 2
  %19 = load %struct.List*, %struct.List** %back8, align 8
  store %struct.List* %19, %struct.List** %l2, align 8
  %20 = load %struct.List*, %struct.List** %l2, align 8
  %21 = load %struct.List*, %struct.List** %l1, align 8
  %back9 = getelementptr inbounds %struct.List, %struct.List* %21, i32 0, i32 2
  store %struct.List* %20, %struct.List** %back9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
