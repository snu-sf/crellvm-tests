; ModuleID = './MultiSource.Benchmarks.MallocBench/130.cfrac.pcmp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: nounwind uwtable
define i32 @pcmpz(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  %uPtr = alloca i16*, align 8
  %i = alloca i32, align 4
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
  store i32 0, i32* %i, align 4
  %6 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  store i16* %arraydecay, i16** %uPtr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %land.end
  %7 = load i16*, i16** %uPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %7, i32 1
  store i16* %incdec.ptr, i16** %uPtr, align 8
  %8 = load i16, i16* %7, align 2
  %conv1 = zext i16 %8 to i32
  %cmp2 = icmp ne i32 %conv1, 0
  br i1 %cmp2, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %9 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %9, i32 0, i32 3
  %10 = load i8, i8* %sign, align 1
  %tobool4 = icmp ne i8 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.then
  store i32 -1, i32* %i, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 1, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

if.end.6:                                         ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.6
  %11 = load i16*, i16** %uPtr, align 8
  %12 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value7 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %12, i32 0, i32 4
  %arraydecay8 = getelementptr inbounds [1 x i16], [1 x i16]* %value7, i32 0, i32 0
  %13 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %13, i32 0, i32 2
  %14 = load i16, i16* %size, align 2
  %conv9 = zext i16 %14 to i32
  %idx.ext = sext i32 %conv9 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay8, i64 %idx.ext
  %cmp10 = icmp ult i16* %11, %add.ptr
  br i1 %cmp10, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.end
  %15 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp12 = icmp ne %struct.precisionType* %15, null
  br i1 %cmp12, label %land.lhs.true, label %land.end.19

land.lhs.true:                                    ; preds = %do.end
  %16 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %17 = bitcast %struct.precisionType* %16 to i16*
  %18 = load i16, i16* %17, align 2
  %dec = add i16 %18, -1
  store i16 %dec, i16* %17, align 2
  %conv14 = zext i16 %dec to i32
  %cmp15 = icmp eq i32 %conv14, 0
  br i1 %cmp15, label %land.rhs.17, label %land.end.19

land.rhs.17:                                      ; preds = %land.lhs.true
  %19 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %19)
  %tobool18 = icmp ne i32 %call, 0
  br label %land.end.19

land.end.19:                                      ; preds = %land.rhs.17, %land.lhs.true, %do.end
  %20 = phi i1 [ false, %land.lhs.true ], [ false, %do.end ], [ %tobool18, %land.rhs.17 ]
  %land.ext20 = zext i1 %20 to i32
  %21 = load i32, i32* %i, align 4
  ret i32 %21
}

declare i32 @pfree(...) #1

; Function Attrs: nounwind uwtable
define i32 @pcmp(%struct.precisionType* %u, %struct.precisionType* %v) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  %v.addr = alloca %struct.precisionType*, align 8
  %uPtr = alloca i16*, align 8
  %vPtr = alloca i16*, align 8
  %i = alloca i32, align 4
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  store %struct.precisionType* %v, %struct.precisionType** %v.addr, align 8
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
  %6 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %cmp1 = icmp ne %struct.precisionType* %6, null
  br i1 %cmp1, label %land.rhs.3, label %land.end.7

land.rhs.3:                                       ; preds = %land.end
  %7 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %8 = bitcast %struct.precisionType* %7 to i16*
  %9 = load i16, i16* %8, align 2
  %inc4 = add i16 %9, 1
  store i16 %inc4, i16* %8, align 2
  %conv5 = zext i16 %9 to i32
  %tobool6 = icmp ne i32 %conv5, 0
  br label %land.end.7

land.end.7:                                       ; preds = %land.rhs.3, %land.end
  %10 = phi i1 [ false, %land.end ], [ %tobool6, %land.rhs.3 ]
  %land.ext8 = zext i1 %10 to i32
  %11 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %12 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %12, i32 0, i32 3
  %13 = load i8, i8* %sign, align 1
  %conv9 = zext i8 %13 to i32
  %14 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign10 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %14, i32 0, i32 3
  %15 = load i8, i8* %sign10, align 1
  %conv11 = zext i8 %15 to i32
  %cmp12 = icmp ne i32 %conv9, %conv11
  br i1 %cmp12, label %if.then, label %if.else.17

if.then:                                          ; preds = %land.end.7
  %16 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %16, i32 0, i32 3
  %17 = load i8, i8* %sign14, align 1
  %tobool15 = icmp ne i8 %17, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then
  store i32 -1, i32* %i, align 4
  br label %if.end

if.else:                                          ; preds = %if.then
  store i32 1, i32* %i, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %if.end.62

if.else.17:                                       ; preds = %land.end.7
  %18 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %18, i32 0, i32 2
  %19 = load i16, i16* %size, align 2
  %conv18 = zext i16 %19 to i32
  %20 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %size19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %20, i32 0, i32 2
  %21 = load i16, i16* %size19, align 2
  %conv20 = zext i16 %21 to i32
  %sub = sub nsw i32 %conv18, %conv20
  store i32 %sub, i32* %i, align 4
  %22 = load i32, i32* %i, align 4
  %cmp21 = icmp eq i32 %22, 0
  br i1 %cmp21, label %if.then.23, label %if.end.56

if.then.23:                                       ; preds = %if.else.17
  %23 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %23, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  %24 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size24 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %24, i32 0, i32 2
  %25 = load i16, i16* %size24, align 2
  %conv25 = zext i16 %25 to i32
  %idx.ext = sext i32 %conv25 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  store i16* %add.ptr, i16** %uPtr, align 8
  %26 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value26 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %26, i32 0, i32 4
  %arraydecay27 = getelementptr inbounds [1 x i16], [1 x i16]* %value26, i32 0, i32 0
  %27 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %size28 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %27, i32 0, i32 2
  %28 = load i16, i16* %size28, align 2
  %conv29 = zext i16 %28 to i32
  %idx.ext30 = sext i32 %conv29 to i64
  %add.ptr31 = getelementptr inbounds i16, i16* %arraydecay27, i64 %idx.ext30
  store i16* %add.ptr31, i16** %vPtr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.23
  %29 = load i16*, i16** %uPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %29, i32 -1
  store i16* %incdec.ptr, i16** %uPtr, align 8
  %30 = load i16, i16* %incdec.ptr, align 2
  %conv32 = zext i16 %30 to i32
  %31 = load i16*, i16** %vPtr, align 8
  %incdec.ptr33 = getelementptr inbounds i16, i16* %31, i32 -1
  store i16* %incdec.ptr33, i16** %vPtr, align 8
  %32 = load i16, i16* %incdec.ptr33, align 2
  %conv34 = zext i16 %32 to i32
  %cmp35 = icmp ne i32 %conv32, %conv34
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.body
  br label %do.end

if.end.38:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.38
  %33 = load i16*, i16** %vPtr, align 8
  %34 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value39 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %34, i32 0, i32 4
  %arraydecay40 = getelementptr inbounds [1 x i16], [1 x i16]* %value39, i32 0, i32 0
  %cmp41 = icmp ugt i16* %33, %arraydecay40
  br i1 %cmp41, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.37
  %35 = load i16*, i16** %uPtr, align 8
  %36 = load i16, i16* %35, align 2
  %conv43 = zext i16 %36 to i32
  %37 = load i16*, i16** %vPtr, align 8
  %38 = load i16, i16* %37, align 2
  %conv44 = zext i16 %38 to i32
  %cmp45 = icmp sgt i32 %conv43, %conv44
  br i1 %cmp45, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.end
  store i32 1, i32* %i, align 4
  br label %if.end.55

if.else.48:                                       ; preds = %do.end
  %39 = load i16*, i16** %uPtr, align 8
  %40 = load i16, i16* %39, align 2
  %conv49 = zext i16 %40 to i32
  %41 = load i16*, i16** %vPtr, align 8
  %42 = load i16, i16* %41, align 2
  %conv50 = zext i16 %42 to i32
  %cmp51 = icmp slt i32 %conv49, %conv50
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.else.48
  store i32 -1, i32* %i, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.53, %if.else.48
  br label %if.end.55

if.end.55:                                        ; preds = %if.end.54, %if.then.47
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55, %if.else.17
  %43 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign57 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %43, i32 0, i32 3
  %44 = load i8, i8* %sign57, align 1
  %tobool58 = icmp ne i8 %44, 0
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.56
  %45 = load i32, i32* %i, align 4
  %sub60 = sub nsw i32 0, %45
  store i32 %sub60, i32* %i, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.56
  br label %if.end.62

if.end.62:                                        ; preds = %if.end.61, %if.end
  %46 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp63 = icmp ne %struct.precisionType* %46, null
  br i1 %cmp63, label %land.lhs.true, label %land.end.70

land.lhs.true:                                    ; preds = %if.end.62
  %47 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %48 = bitcast %struct.precisionType* %47 to i16*
  %49 = load i16, i16* %48, align 2
  %dec = add i16 %49, -1
  store i16 %dec, i16* %48, align 2
  %conv65 = zext i16 %dec to i32
  %cmp66 = icmp eq i32 %conv65, 0
  br i1 %cmp66, label %land.rhs.68, label %land.end.70

land.rhs.68:                                      ; preds = %land.lhs.true
  %50 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %50)
  %tobool69 = icmp ne i32 %call, 0
  br label %land.end.70

land.end.70:                                      ; preds = %land.rhs.68, %land.lhs.true, %if.end.62
  %51 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.62 ], [ %tobool69, %land.rhs.68 ]
  %land.ext71 = zext i1 %51 to i32
  %52 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %cmp72 = icmp ne %struct.precisionType* %52, null
  br i1 %cmp72, label %land.lhs.true.74, label %land.end.82

land.lhs.true.74:                                 ; preds = %land.end.70
  %53 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %54 = bitcast %struct.precisionType* %53 to i16*
  %55 = load i16, i16* %54, align 2
  %dec75 = add i16 %55, -1
  store i16 %dec75, i16* %54, align 2
  %conv76 = zext i16 %dec75 to i32
  %cmp77 = icmp eq i32 %conv76, 0
  br i1 %cmp77, label %land.rhs.79, label %land.end.82

land.rhs.79:                                      ; preds = %land.lhs.true.74
  %56 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %call80 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %56)
  %tobool81 = icmp ne i32 %call80, 0
  br label %land.end.82

land.end.82:                                      ; preds = %land.rhs.79, %land.lhs.true.74, %land.end.70
  %57 = phi i1 [ false, %land.lhs.true.74 ], [ false, %land.end.70 ], [ %tobool81, %land.rhs.79 ]
  %land.ext83 = zext i1 %57 to i32
  %58 = load i32, i32* %i, align 4
  ret i32 %58
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
