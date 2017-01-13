; ModuleID = './MultiSource.Benchmarks.MallocBench/129.cfrac.pneg.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: nounwind uwtable
define %struct.precisionType* @pneg(%struct.precisionType* %u) #0 {
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
  %10 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %10, i32 0, i32 3
  %11 = load i8, i8* %sign, align 1
  %12 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %sign4 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %12, i32 0, i32 3
  store i8 %11, i8* %sign4, align 1
  %13 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call5 = call i32 @pcmpz(%struct.precisionType* %13)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %if.end
  %14 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %sign9 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %14, i32 0, i32 3
  %15 = load i8, i8* %sign9, align 1
  %tobool10 = icmp ne i8 %15, 0
  %lnot = xor i1 %tobool10, true
  %lnot.ext = zext i1 %lnot to i32
  %conv11 = trunc i32 %lnot.ext to i8
  %16 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %sign12 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %16, i32 0, i32 3
  store i8 %conv11, i8* %sign12, align 1
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.8, %if.end
  %17 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %17, i32 0, i32 4
  %18 = bitcast [1 x i16]* %value to i8*
  %19 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %19, i32 0, i32 4
  %20 = bitcast [1 x i16]* %value14 to i8*
  %21 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size15 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %21, i32 0, i32 2
  %22 = load i16, i16* %size15, align 2
  %conv16 = zext i16 %22 to i64
  %mul = mul i64 %conv16, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %20, i64 %mul, i32 2, i1 false)
  %23 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp17 = icmp ne %struct.precisionType* %23, null
  br i1 %cmp17, label %land.lhs.true, label %land.end.25

land.lhs.true:                                    ; preds = %if.end.13
  %24 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %25 = bitcast %struct.precisionType* %24 to i16*
  %26 = load i16, i16* %25, align 2
  %dec = add i16 %26, -1
  store i16 %dec, i16* %25, align 2
  %conv19 = zext i16 %dec to i32
  %cmp20 = icmp eq i32 %conv19, 0
  br i1 %cmp20, label %land.rhs.22, label %land.end.25

land.rhs.22:                                      ; preds = %land.lhs.true
  %27 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call23 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %27)
  %tobool24 = icmp ne i32 %call23, 0
  br label %land.end.25

land.end.25:                                      ; preds = %land.rhs.22, %land.lhs.true, %if.end.13
  %28 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.13 ], [ %tobool24, %land.rhs.22 ]
  %land.ext26 = zext i1 %28 to i32
  %29 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %call27 = call %struct.precisionType* @presult(%struct.precisionType* %29)
  store %struct.precisionType* %call27, %struct.precisionType** %retval
  br label %return

return:                                           ; preds = %land.end.25, %if.then
  %30 = load %struct.precisionType*, %struct.precisionType** %retval
  ret %struct.precisionType* %30
}

declare %struct.precisionType* @palloc(...) #1

declare i32 @pcmpz(%struct.precisionType*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @pfree(...) #1

declare %struct.precisionType* @presult(%struct.precisionType*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
