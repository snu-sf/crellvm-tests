; ModuleID = './MultiSource.Benchmarks.VersaBench/36.dbms.penalty.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IndexEntry = type { %union.anon, %struct.IndexKey, %struct.IndexEntry* }
%union.anon = type { %struct.IndexNode* }
%struct.IndexNode = type { i64, %struct.IndexEntry* }
%struct.IndexKey = type { %struct.IndexPoint, %struct.IndexPoint }
%struct.IndexPoint = type { float, float, float, float }

; Function Attrs: nounwind uwtable
define float @penalty(%struct.IndexEntry* byval align 8 %A, %struct.IndexEntry* byval align 8 %B) #0 {
entry:
  %penalty = alloca float, align 4
  %key = alloca %struct.IndexKey, align 8
  %key1 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %A, i32 0, i32 1
  %key2 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %B, i32 0, i32 1
  call void @keyUnion(%struct.IndexKey* %key1, %struct.IndexKey* %key2, %struct.IndexKey* %key)
  %call = call float @volume(%struct.IndexKey* byval align 8 %key)
  %key3 = getelementptr inbounds %struct.IndexEntry, %struct.IndexEntry* %A, i32 0, i32 1
  %call4 = call float @volume(%struct.IndexKey* byval align 8 %key3)
  %sub = fsub float %call, %call4
  store float %sub, float* %penalty, align 4
  %0 = load float, float* %penalty, align 4
  ret float %0
}

declare void @keyUnion(%struct.IndexKey*, %struct.IndexKey*, %struct.IndexKey*) #1

declare float @volume(%struct.IndexKey* byval align 8) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
