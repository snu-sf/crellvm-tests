; ModuleID = 'ecache.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ECacheType = type { i32, i32, i32 }

@hash = external global i32, align 4
@ECacheSize = external global i32, align 4
@ECache = common global %struct.ECacheType* null, align 8
@hold_hash = external global i32, align 4
@ECacheProbes = common global i32 0, align 4
@ECacheHits = common global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Out of memory allocating ECache.\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @storeECache(i32 %score) #0 {
entry:
  %score.addr = alloca i32, align 4
  %ecindex = alloca i32, align 4
  store i32 %score, i32* %score.addr, align 4
  %0 = load i32, i32* @hash, align 4
  %1 = load i32, i32* @ECacheSize, align 4
  %rem = urem i32 %0, %1
  store i32 %rem, i32* %ecindex, align 4
  %2 = load i32, i32* @hash, align 4
  %3 = load i32, i32* %ecindex, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %arrayidx = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %4, i64 %idxprom
  %stored_hash = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %arrayidx, i32 0, i32 0
  store i32 %2, i32* %stored_hash, align 4
  %5 = load i32, i32* @hold_hash, align 4
  %6 = load i32, i32* %ecindex, align 4
  %idxprom1 = sext i32 %6 to i64
  %7 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %arrayidx2 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %7, i64 %idxprom1
  %hold_hash = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %arrayidx2, i32 0, i32 1
  store i32 %5, i32* %hold_hash, align 4
  %8 = load i32, i32* %score.addr, align 4
  %9 = load i32, i32* %ecindex, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %arrayidx4 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %10, i64 %idxprom3
  %score5 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %arrayidx4, i32 0, i32 2
  store i32 %8, i32* %score5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @checkECache(i32* %score, i32* %in_cache) #0 {
entry:
  %score.addr = alloca i32*, align 8
  %in_cache.addr = alloca i32*, align 8
  %ecindex = alloca i32, align 4
  store i32* %score, i32** %score.addr, align 8
  store i32* %in_cache, i32** %in_cache.addr, align 8
  %0 = load i32, i32* @ECacheProbes, align 4
  %inc = add i32 %0, 1
  store i32 %inc, i32* @ECacheProbes, align 4
  %1 = load i32, i32* @hash, align 4
  %2 = load i32, i32* @ECacheSize, align 4
  %rem = urem i32 %1, %2
  store i32 %rem, i32* %ecindex, align 4
  %3 = load i32, i32* %ecindex, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %arrayidx = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %4, i64 %idxprom
  %stored_hash = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %stored_hash, align 4
  %6 = load i32, i32* @hash, align 4
  %cmp = icmp eq i32 %5, %6
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load i32, i32* %ecindex, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %arrayidx2 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %8, i64 %idxprom1
  %hold_hash = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %arrayidx2, i32 0, i32 1
  %9 = load i32, i32* %hold_hash, align 4
  %10 = load i32, i32* @hold_hash, align 4
  %cmp3 = icmp eq i32 %9, %10
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %11 = load i32, i32* @ECacheHits, align 4
  %inc4 = add i32 %11, 1
  store i32 %inc4, i32* @ECacheHits, align 4
  %12 = load i32*, i32** %in_cache.addr, align 8
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* %ecindex, align 4
  %idxprom5 = sext i32 %13 to i64
  %14 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %arrayidx6 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %14, i64 %idxprom5
  %score7 = getelementptr inbounds %struct.ECacheType, %struct.ECacheType* %arrayidx6, i32 0, i32 2
  %15 = load i32, i32* %score7, align 4
  %16 = load i32*, i32** %score.addr, align 8
  store i32 %15, i32* %16, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_ecache() #0 {
entry:
  %0 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %1 = bitcast %struct.ECacheType* %0 to i8*
  %2 = load i32, i32* @ECacheSize, align 4
  %conv = sext i32 %2 to i64
  %mul = mul i64 12, %conv
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 %mul, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @alloc_ecache() #0 {
entry:
  %0 = load i32, i32* @ECacheSize, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 12, %conv
  %call = call noalias i8* @malloc(i64 %mul) #1
  %1 = bitcast i8* %call to %struct.ECacheType*
  store %struct.ECacheType* %1, %struct.ECacheType** @ECache, align 8
  %2 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %cmp = icmp eq %struct.ECacheType* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  call void @exit(i32 1) #5
  unreachable

if.end:                                           ; preds = %entry
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind uwtable
define void @free_ecache() #0 {
entry:
  %0 = load %struct.ECacheType*, %struct.ECacheType** @ECache, align 8
  %1 = bitcast %struct.ECacheType* %0 to i8*
  call void @free(i8* %1) #1
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
