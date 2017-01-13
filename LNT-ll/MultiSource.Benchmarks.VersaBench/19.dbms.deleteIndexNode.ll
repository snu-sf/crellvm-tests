; ModuleID = './MultiSource.Benchmarks.VersaBench/19.dbms.deleteIndexNode.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

; Function Attrs: nounwind uwtable
define void @deleteIndexNode(%struct.IndexNode* %node) #0 {
entry:
  %node.addr = alloca %struct.IndexNode*, align 8
  %entry1 = alloca %struct.IndexEntry*, align 8
  %temp = alloca %struct.IndexEntry*, align 8
  store %struct.IndexNode* %node, %struct.IndexNode** %node.addr, align 8
  %0 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %entries = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %0, i32 0, i32 1
  %1 = load %struct.IndexEntry*, %struct.IndexEntry** %entries, align 8
  store %struct.IndexEntry* %1, %struct.IndexEntry** %entry1, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %cmp = icmp ne %struct.IndexEntry* %2, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %next = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %3, i32 0, i32 2
  %4 = load %struct.IndexEntry*, %struct.IndexEntry** %next, align 8
  store %struct.IndexEntry* %4, %struct.IndexEntry** %temp, align 8
  %5 = load %struct.IndexEntry*, %struct.IndexEntry** %entry1, align 8
  %6 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %level = getelementptr inbounds %struct.IndexNode, %struct.IndexNode* %6, i32 0, i32 0
  %7 = load i64, i64* %level, align 8
  call void @deleteIndexEntry(%struct.IndexEntry* %5, i64 %7)
  %8 = load %struct.IndexEntry*, %struct.IndexEntry** %temp, align 8
  store %struct.IndexEntry* %8, %struct.IndexEntry** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %9 = load %struct.IndexNode*, %struct.IndexNode** %node.addr, align 8
  %10 = bitcast %struct.IndexNode* %9 to i8*
  call void @free(i8* %10) #3
  store %struct.IndexNode* null, %struct.IndexNode** %node.addr, align 8
  ret void
}

declare void @deleteIndexEntry(%struct.IndexEntry*, i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
