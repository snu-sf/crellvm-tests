; ModuleID = './MultiSource.Benchmarks.MallocBench/114.cfrac.pimod.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [6 x i8] c"pimod\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"divisor too big for single digit\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pimod(%struct.precisionType* %u, i32 %v) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  %v.addr = alloca i32, align 4
  %uPtr = alloca i16*, align 8
  %temp = alloca i32, align 4
  %r = alloca i16, align 2
  %d = alloca i16, align 2
  %res = alloca i32, align 4
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  store i32 %v, i32* %v.addr, align 4
  store i16 0, i16* %r, align 2
  store i32 0, i32* %res, align 4
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
  %6 = load i32, i32* %v.addr, align 4
  %cmp1 = icmp slt i32 %6, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.end
  %7 = load i32, i32* %v.addr, align 4
  %sub = sub nsw i32 0, %7
  %conv3 = trunc i32 %sub to i16
  store i16 %conv3, i16* %d, align 2
  br label %if.end

if.else:                                          ; preds = %land.end
  %8 = load i32, i32* %v.addr, align 4
  %conv4 = trunc i32 %8 to i16
  store i16 %conv4, i16* %d, align 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load i16, i16* %d, align 2
  %conv5 = zext i16 %9 to i32
  %cmp6 = icmp sge i32 %conv5, 65536
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %call = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  br label %done

if.end.9:                                         ; preds = %if.end
  %10 = load i16, i16* %d, align 2
  %conv10 = zext i16 %10 to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.9
  %call14 = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  br label %done

if.end.15:                                        ; preds = %if.end.9
  %11 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %11, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  %12 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %12, i32 0, i32 2
  %13 = load i16, i16* %size, align 2
  %conv16 = zext i16 %13 to i32
  %idx.ext = sext i32 %conv16 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  store i16* %add.ptr, i16** %uPtr, align 8
  store i16 0, i16* %r, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.15
  %14 = load i16, i16* %r, align 2
  %conv17 = zext i16 %14 to i32
  %shl = shl i32 %conv17, 16
  store i32 %shl, i32* %temp, align 4
  %15 = load i16*, i16** %uPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %15, i32 -1
  store i16* %incdec.ptr, i16** %uPtr, align 8
  %16 = load i16, i16* %incdec.ptr, align 2
  %conv18 = zext i16 %16 to i32
  %17 = load i32, i32* %temp, align 4
  %add = add i32 %17, %conv18
  store i32 %add, i32* %temp, align 4
  %18 = load i32, i32* %temp, align 4
  %19 = load i16, i16* %d, align 2
  %conv19 = zext i16 %19 to i32
  %rem = urem i32 %18, %conv19
  %conv20 = trunc i32 %rem to i16
  store i16 %conv20, i16* %r, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %20 = load i16*, i16** %uPtr, align 8
  %21 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value21 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %21, i32 0, i32 4
  %arraydecay22 = getelementptr inbounds [1 x i16], [1 x i16]* %value21, i32 0, i32 0
  %cmp23 = icmp ugt i16* %20, %arraydecay22
  br i1 %cmp23, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %22 = load i16, i16* %r, align 2
  %conv25 = zext i16 %22 to i32
  store i32 %conv25, i32* %res, align 4
  %23 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %23, i32 0, i32 3
  %24 = load i8, i8* %sign, align 1
  %tobool26 = icmp ne i8 %24, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end
  %25 = load i32, i32* %res, align 4
  %sub28 = sub nsw i32 0, %25
  store i32 %sub28, i32* %res, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %do.end
  br label %done

done:                                             ; preds = %if.end.29, %if.then.13, %if.then.8
  %26 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp30 = icmp ne %struct.precisionType* %26, null
  br i1 %cmp30, label %land.lhs.true, label %land.end.38

land.lhs.true:                                    ; preds = %done
  %27 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %28 = bitcast %struct.precisionType* %27 to i16*
  %29 = load i16, i16* %28, align 2
  %dec = add i16 %29, -1
  store i16 %dec, i16* %28, align 2
  %conv32 = zext i16 %dec to i32
  %cmp33 = icmp eq i32 %conv32, 0
  br i1 %cmp33, label %land.rhs.35, label %land.end.38

land.rhs.35:                                      ; preds = %land.lhs.true
  %30 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call36 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %30)
  %tobool37 = icmp ne i32 %call36, 0
  br label %land.end.38

land.end.38:                                      ; preds = %land.rhs.35, %land.lhs.true, %done
  %31 = phi i1 [ false, %land.lhs.true ], [ false, %done ], [ %tobool37, %land.rhs.35 ]
  %land.ext39 = zext i1 %31 to i32
  %32 = load i32, i32* %res, align 4
  ret i32 %32
}

declare %struct.precisionType* @errorp(i32, i8*, i8*) #1

declare i32 @pfree(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
