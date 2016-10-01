; ModuleID = './MultiSource.Benchmarks.VersaBench/15.dbms.chooseEntry.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

; Function Attrs: nounwind uwtable
define %struct.IndexEntry* @chooseEntry(%struct.IndexNode* %node, %struct.IndexEntry* %entry1) #0 {
entry:
  %node.addr = alloca %struct.IndexNode*, align 8
  %entry.addr = alloca %struct.IndexEntry*, align 8
  %minPenaltyEntry = alloca %struct.IndexEntry*, align 8
  %temp = alloca %struct.IndexEntry*, align 8
  %minPenalty = alloca float, align 4
  %tempPenalty = alloca float, align 4
  store %struct.IndexNode* %node, %struct.IndexNode** %node.addr, align 8
  store %struct.IndexEntry* %entry1, %struct.IndexEntry** %entry.addr, align 8
  %0 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %entries = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i32 0, i32 1
  %1 = load %struct.IndexEntry*, %struct.IndexEntry** %entries, align 8
  store %struct.IndexEntry* %1, %struct.IndexEntry** %minPenaltyEntry, align 8
  %2 = load %struct.IndexEntry*, %struct.IndexEntry** %minPenaltyEntry, align 8
  %3 = load %struct.IndexEntry*, %struct.IndexEntry** %entry.addr, align 8
  %call = call float @penalty(%struct.IndexEntry* byval align 8 %2, %struct.IndexEntry* byval align 8 %3)
  store float %call, float* %minPenalty, align 4
  %4 = load %struct.IndexEntry*, %struct.IndexEntry** %minPenaltyEntry, align 8
  %next = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %4, i32 0, i32 2
  %5 = load %struct.IndexEntry*, %struct.IndexEntry** %next, align 8
  store %struct.IndexEntry* %5, %struct.IndexEntry** %temp, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load %struct.IndexEntry*, %struct.IndexEntry** %temp, align 8
  %cmp = icmp ne %struct.IndexEntry* %6, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load %struct.IndexEntry*, %struct.IndexEntry** %temp, align 8
  %8 = load %struct.IndexEntry*, %struct.IndexEntry** %entry.addr, align 8
  %call2 = call float @penalty(%struct.IndexEntry* byval align 8 %7, %struct.IndexEntry* byval align 8 %8)
  store float %call2, float* %tempPenalty, align 4
  %9 = load float, float* %tempPenalty, align 4
  %10 = load float, float* %minPenalty, align 4
  %cmp3 = fcmp olt float %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load %struct.IndexEntry*, %struct.IndexEntry** %temp, align 8
  store %struct.IndexEntry* %11, %struct.IndexEntry** %minPenaltyEntry, align 8
  %12 = load float, float* %tempPenalty, align 4
  store float %12, float* %minPenalty, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.IndexEntry*, %struct.IndexEntry** %temp, align 8
  %next4 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %13, i32 0, i32 2
  %14 = load %struct.IndexEntry*, %struct.IndexEntry** %next4, align 8
  store %struct.IndexEntry* %14, %struct.IndexEntry** %temp, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %struct.IndexEntry*, %struct.IndexEntry** %minPenaltyEntry, align 8
  ret %struct.IndexEntry* %15
}

declare float @penalty(%struct.IndexEntry* byval align 8, %struct.IndexEntry* byval align 8) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
