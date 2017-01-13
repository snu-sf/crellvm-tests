; ModuleID = './MultiSource.Benchmarks.MallocBench/116.cfrac.pabs.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: nounwind uwtable
define %struct.precisionType* @pabs(%struct.precisionType* %u) #0 {
entry:
  %retval = alloca %struct.precisionType*, align 8
  %u.addr = alloca %struct.precisionType*, align 8
  %w = alloca %struct.precisionType*, align 8
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
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 2
  %7 = load i16, i16* %size, align 2
  %conv1 = zext i16 %7 to i32
  %call = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 %conv1)
  store %struct.precisionType* %call, %struct.precisionType** %w, align 8
  %8 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %cmp2 = icmp eq %struct.precisionType* %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %9 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %9, %struct.precisionType** %retval
  br label %return

if.end:                                           ; preds = %land.end
  %10 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %10, i32 0, i32 3
  store i8 0, i8* %sign, align 1
  %11 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %11, i32 0, i32 4
  %12 = bitcast [1 x i16]* %value to i8*
  %13 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value4 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %13, i32 0, i32 4
  %14 = bitcast [1 x i16]* %value4 to i8*
  %15 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size5 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %15, i32 0, i32 2
  %16 = load i16, i16* %size5, align 2
  %conv6 = zext i16 %16 to i64
  %mul = mul i64 %conv6, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %12, i8* %14, i64 %mul, i32 2, i1 false)
  %17 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp7 = icmp ne %struct.precisionType* %17, null
  br i1 %cmp7, label %land.lhs.true, label %land.end.15

land.lhs.true:                                    ; preds = %if.end
  %18 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %19 = bitcast %struct.precisionType* %18 to i16*
  %20 = load i16, i16* %19, align 2
  %dec = add i16 %20, -1
  store i16 %dec, i16* %19, align 2
  %conv9 = zext i16 %dec to i32
  %cmp10 = icmp eq i32 %conv9, 0
  br i1 %cmp10, label %land.rhs.12, label %land.end.15

land.rhs.12:                                      ; preds = %land.lhs.true
  %21 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call13 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %21)
  %tobool14 = icmp ne i32 %call13, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.12, %land.lhs.true, %if.end
  %22 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %tobool14, %land.rhs.12 ]
  %land.ext16 = zext i1 %22 to i32
  %23 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %call17 = call %struct.precisionType* @presult(%struct.precisionType* %23)
  store %struct.precisionType* %call17, %struct.precisionType** %retval
  br label %return

return:                                           ; preds = %land.end.15, %if.then
  %24 = load %struct.precisionType*, %struct.precisionType** %retval
  ret %struct.precisionType* %24
}

declare %struct.precisionType* @palloc(...) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @pfree(...) #1

declare %struct.precisionType* @presult(%struct.precisionType*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
