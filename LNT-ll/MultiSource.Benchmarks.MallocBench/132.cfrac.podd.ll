; ModuleID = './MultiSource.Benchmarks.MallocBench/132.cfrac.podd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: nounwind uwtable
define i32 @podd(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  %res = alloca i32, align 4
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp = icmp ne %struct.precisionType* %0, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %2 = bitcast %struct.precisionType* %1 to i16*
  %3 = load i16, i16* %2, align 2
  %inc = add i16 %3, 1
  store i16 %inc, i16* %2, align 2
  %conv = zext i16 %3 to i32
  %tobool = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %tobool, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %5 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %6 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  %7 = load i16, i16* %arraydecay, align 2
  %conv1 = zext i16 %7 to i32
  %and = and i32 %conv1, 1
  store i32 %and, i32* %res, align 4
  %8 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp2 = icmp ne %struct.precisionType* %8, null
  br i1 %cmp2, label %land.lhs.true, label %land.end.9

land.lhs.true:                                    ; preds = %land.end
  %9 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %10 = bitcast %struct.precisionType* %9 to i16*
  %11 = load i16, i16* %10, align 2
  %dec = add i16 %11, -1
  store i16 %dec, i16* %10, align 2
  %conv4 = zext i16 %dec to i32
  %cmp5 = icmp eq i32 %conv4, 0
  br i1 %cmp5, label %land.rhs.7, label %land.end.9

land.rhs.7:                                       ; preds = %land.lhs.true
  %12 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %12)
  %tobool8 = icmp ne i32 %call, 0
  br label %land.end.9

land.end.9:                                       ; preds = %land.rhs.7, %land.lhs.true, %land.end
  %13 = phi i1 [ false, %land.lhs.true ], [ false, %land.end ], [ %tobool8, %land.rhs.7 ]
  %land.ext10 = zext i1 %13 to i32
  %14 = load i32, i32* %res, align 4
  ret i32 %14
}

declare i32 @pfree(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
