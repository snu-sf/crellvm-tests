; ModuleID = './MultiSource.Benchmarks.MallocBench/122.cfrac.itop.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: nounwind uwtable
define %struct.precisionType* @itop(i32 %i) #0 {
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
  %1 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  store %struct.precisionType* %1, %struct.precisionType** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %i.addr, align 4
  %cmp1 = icmp slt i32 %2, 0
  %conv = zext i1 %cmp1 to i32
  %conv2 = trunc i32 %conv to i8
  %3 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %3, i32 0, i32 3
  store i8 %conv2, i8* %sign, align 1
  %tobool = icmp ne i8 %conv2, 0
  br i1 %tobool, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %4 = load i32, i32* %i.addr, align 4
  %sub = sub nsw i32 0, %4
  store i32 %sub, i32* %i.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %5 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %5, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  store i16* %arraydecay, i16** %uPtr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.4
  %6 = load i32, i32* %i.addr, align 4
  %and = and i32 %6, 65535
  %conv5 = trunc i32 %and to i16
  %7 = load i16*, i16** %uPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %7, i32 1
  store i16* %incdec.ptr, i16** %uPtr, align 8
  store i16 %conv5, i16* %7, align 2
  %8 = load i32, i32* %i.addr, align 4
  %shr = ashr i32 %8, 16
  store i32 %shr, i32* %i.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %9 = load i32, i32* %i.addr, align 4
  %cmp6 = icmp ne i32 %9, 0
  br i1 %cmp6, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %10 = load i16*, i16** %uPtr, align 8
  %11 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %value8 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %11, i32 0, i32 4
  %arraydecay9 = getelementptr inbounds [1 x i16], [1 x i16]* %value8, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i16* %10 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %arraydecay9 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv10 = trunc i64 %sub.ptr.div to i16
  %12 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %12, i32 0, i32 2
  store i16 %conv10, i16* %size, align 2
  %13 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %call11 = call %struct.precisionType* @presult(%struct.precisionType* %13)
  store %struct.precisionType* %call11, %struct.precisionType** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %14 = load %struct.precisionType*, %struct.precisionType** %retval
  ret %struct.precisionType* %14
}

declare %struct.precisionType* @palloc(...) #1

declare %struct.precisionType* @presult(%struct.precisionType*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
