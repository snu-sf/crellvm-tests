; ModuleID = './MultiSource.Benchmarks.MallocBench/108.cfrac.utop.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: nounwind uwtable
define %struct.precisionType* @utop(i32 %i) #0 {
entry:
  %retval = alloca %struct.precisionType*, align 8
  %i.addr = alloca i32, align 4
  %uPtr = alloca i16*, align 8
  %u = alloca %struct.precisionType*, align 8
  store i32 %i, i32* %i.addr, align 4
  %call = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 2)
  store %struct.precisionType* %call, %struct.precisionType** %u, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %cmp = icmp eq %struct.precisionType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.precisionType* null, %struct.precisionType** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %1, i32 0, i32 3
  store i8 0, i8* %sign, align 1
  %2 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %2, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  store i16* %arraydecay, i16** %uPtr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %3 = load i32, i32* %i.addr, align 4
  %and = and i32 %3, 65535
  %conv = trunc i32 %and to i16
  %4 = load i16*, i16** %uPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %4, i32 1
  store i16* %incdec.ptr, i16** %uPtr, align 8
  store i16 %conv, i16* %4, align 2
  %5 = load i32, i32* %i.addr, align 4
  %shr = lshr i32 %5, 16
  store i32 %shr, i32* %i.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %6 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %7 = load i16*, i16** %uPtr, align 8
  %8 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %value3 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %8, i32 0, i32 4
  %arraydecay4 = getelementptr inbounds [1 x i16], [1 x i16]* %value3, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i16* %7 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %arraydecay4 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv5 = trunc i64 %sub.ptr.div to i16
  %9 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %9, i32 0, i32 2
  store i16 %conv5, i16* %size, align 2
  %10 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %call6 = call %struct.precisionType* @presult(%struct.precisionType* %10)
  store %struct.precisionType* %call6, %struct.precisionType** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %11 = load %struct.precisionType*, %struct.precisionType** %retval
  ret %struct.precisionType* %11
}

declare %struct.precisionType* @palloc(...) #1

declare %struct.precisionType* @presult(%struct.precisionType*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
