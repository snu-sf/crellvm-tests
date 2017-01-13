; ModuleID = './MultiSource.Benchmarks.MallocBench/127.cfrac.ptou.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [5 x i8] c"ptou\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"negative argument\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ptou(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  %uPtr = alloca i16*, align 8
  %temp = alloca i32, align 4
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
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 3
  %7 = load i8, i8* %sign, align 1
  %tobool1 = icmp ne i8 %7, 0
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %call = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %8 = ptrtoint %struct.precisionType* %call to i32
  store i32 %8, i32* %temp, align 4
  br label %if.end.13

if.else:                                          ; preds = %land.end
  %9 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %9, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  %10 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %10, i32 0, i32 2
  %11 = load i16, i16* %size, align 2
  %conv2 = zext i16 %11 to i32
  %idx.ext = sext i32 %conv2 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  store i16* %add.ptr, i16** %uPtr, align 8
  store i32 0, i32* %temp, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.else
  %12 = load i32, i32* %temp, align 4
  %13 = load i16*, i16** %uPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %13, i32 -1
  store i16* %incdec.ptr, i16** %uPtr, align 8
  %14 = load i16, i16* %incdec.ptr, align 2
  %conv3 = zext i16 %14 to i32
  %sub = sub i32 -1, %conv3
  %shr = lshr i32 %sub, 16
  %cmp4 = icmp ugt i32 %12, %shr
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %do.body
  %call7 = call %struct.precisionType* @errorp(i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  %15 = ptrtoint %struct.precisionType* %call7 to i32
  store i32 %15, i32* %temp, align 4
  br label %do.end

if.end:                                           ; preds = %do.body
  %16 = load i32, i32* %temp, align 4
  %shl = shl i32 %16, 16
  store i32 %shl, i32* %temp, align 4
  %17 = load i16*, i16** %uPtr, align 8
  %18 = load i16, i16* %17, align 2
  %conv8 = zext i16 %18 to i32
  %19 = load i32, i32* %temp, align 4
  %add = add i32 %19, %conv8
  store i32 %add, i32* %temp, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %20 = load i16*, i16** %uPtr, align 8
  %21 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value9 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %21, i32 0, i32 4
  %arraydecay10 = getelementptr inbounds [1 x i16], [1 x i16]* %value9, i32 0, i32 0
  %cmp11 = icmp ugt i16* %20, %arraydecay10
  br i1 %cmp11, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.6
  br label %if.end.13

if.end.13:                                        ; preds = %do.end, %if.then
  %22 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp14 = icmp ne %struct.precisionType* %22, null
  br i1 %cmp14, label %land.lhs.true, label %land.end.22

land.lhs.true:                                    ; preds = %if.end.13
  %23 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %24 = bitcast %struct.precisionType* %23 to i16*
  %25 = load i16, i16* %24, align 2
  %dec = add i16 %25, -1
  store i16 %dec, i16* %24, align 2
  %conv16 = zext i16 %dec to i32
  %cmp17 = icmp eq i32 %conv16, 0
  br i1 %cmp17, label %land.rhs.19, label %land.end.22

land.rhs.19:                                      ; preds = %land.lhs.true
  %26 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call20 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %26)
  %tobool21 = icmp ne i32 %call20, 0
  br label %land.end.22

land.end.22:                                      ; preds = %land.rhs.19, %land.lhs.true, %if.end.13
  %27 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.13 ], [ %tobool21, %land.rhs.19 ]
  %land.ext23 = zext i1 %27 to i32
  %28 = load i32, i32* %temp, align 4
  ret i32 %28
}

declare %struct.precisionType* @errorp(i32, i8*, i8*) #1

declare i32 @pfree(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
