; ModuleID = './MultiSource.Benchmarks.MallocBench/111.cfrac.pmul.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: nounwind uwtable
define %struct.precisionType* @pmul(%struct.precisionType* %u, %struct.precisionType* %v) #0 {
entry:
  %retval = alloca %struct.precisionType*, align 8
  %u.addr = alloca %struct.precisionType*, align 8
  %v.addr = alloca %struct.precisionType*, align 8
  %vPtr = alloca i16*, align 8
  %uPtr = alloca i16*, align 8
  %wPtr = alloca i16*, align 8
  %HiDigit = alloca i16*, align 8
  %temp = alloca i32, align 4
  %vdigit = alloca i16, align 2
  %hi = alloca i16, align 2
  %w = alloca %struct.precisionType*, align 8
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
  %call = call i32 @pcmpz(%struct.precisionType* %12)
  %cmp9 = icmp eq i32 %call, 0
  br i1 %cmp9, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.end.7
  %13 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %call11 = call i32 @pcmpz(%struct.precisionType* %13)
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.end.7
  %call14 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 1)
  store %struct.precisionType* %call14, %struct.precisionType** %w, align 8
  %14 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %cmp15 = icmp eq %struct.precisionType* %14, null
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then
  %15 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %15, %struct.precisionType** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %16 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %16, i32 0, i32 3
  store i8 0, i8* %sign, align 1
  %17 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %17, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i64 0
  store i16 0, i16* %arrayidx, align 2
  br label %if.end.102

if.else:                                          ; preds = %lor.lhs.false
  %18 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %18, i32 0, i32 2
  %19 = load i16, i16* %size, align 2
  %conv18 = zext i16 %19 to i32
  %20 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %size19 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %20, i32 0, i32 2
  %21 = load i16, i16* %size19, align 2
  %conv20 = zext i16 %21 to i32
  %cmp21 = icmp slt i32 %conv18, %conv20
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.else
  %22 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  store %struct.precisionType* %22, %struct.precisionType** %w, align 8
  %23 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  store %struct.precisionType* %23, %struct.precisionType** %u.addr, align 8
  %24 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %24, %struct.precisionType** %v.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.else
  %25 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size25 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %25, i32 0, i32 2
  %26 = load i16, i16* %size25, align 2
  %conv26 = zext i16 %26 to i32
  %27 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %size27 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %27, i32 0, i32 2
  %28 = load i16, i16* %size27, align 2
  %conv28 = zext i16 %28 to i32
  %add = add nsw i32 %conv26, %conv28
  %call29 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 %add)
  store %struct.precisionType* %call29, %struct.precisionType** %w, align 8
  %29 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %cmp30 = icmp eq %struct.precisionType* %29, null
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.24
  %30 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %30, %struct.precisionType** %retval
  br label %return

if.end.33:                                        ; preds = %if.end.24
  %31 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign34 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %31, i32 0, i32 3
  %32 = load i8, i8* %sign34, align 1
  %conv35 = zext i8 %32 to i32
  %33 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign36 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %33, i32 0, i32 3
  %34 = load i8, i8* %sign36, align 1
  %conv37 = zext i8 %34 to i32
  %cmp38 = icmp ne i32 %conv35, %conv37
  %conv39 = zext i1 %cmp38 to i32
  %conv40 = trunc i32 %conv39 to i8
  %35 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %sign41 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %35, i32 0, i32 3
  store i8 %conv40, i8* %sign41, align 1
  %36 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value42 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %36, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value42, i32 0, i32 0
  store i16* %arraydecay, i16** %uPtr, align 8
  %37 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value43 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %37, i32 0, i32 4
  %arraydecay44 = getelementptr inbounds [1 x i16], [1 x i16]* %value43, i32 0, i32 0
  store i16* %arraydecay44, i16** %vPtr, align 8
  %38 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value45 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %38, i32 0, i32 4
  %arraydecay46 = getelementptr inbounds [1 x i16], [1 x i16]* %value45, i32 0, i32 0
  %39 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size47 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %39, i32 0, i32 2
  %40 = load i16, i16* %size47, align 2
  %conv48 = zext i16 %40 to i32
  %idx.ext = sext i32 %conv48 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay46, i64 %idx.ext
  store i16* %add.ptr, i16** %wPtr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.33
  %41 = load i16*, i16** %wPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %41, i32 -1
  store i16* %incdec.ptr, i16** %wPtr, align 8
  store i16 0, i16* %incdec.ptr, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %42 = load i16*, i16** %wPtr, align 8
  %43 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value49 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %43, i32 0, i32 4
  %arraydecay50 = getelementptr inbounds [1 x i16], [1 x i16]* %value49, i32 0, i32 0
  %cmp51 = icmp ugt i16* %42, %arraydecay50
  br i1 %cmp51, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %44 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value53 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %44, i32 0, i32 4
  %arraydecay54 = getelementptr inbounds [1 x i16], [1 x i16]* %value53, i32 0, i32 0
  store i16* %arraydecay54, i16** %vPtr, align 8
  %45 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value55 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %45, i32 0, i32 4
  %arraydecay56 = getelementptr inbounds [1 x i16], [1 x i16]* %value55, i32 0, i32 0
  %46 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size57 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %46, i32 0, i32 2
  %47 = load i16, i16* %size57, align 2
  %conv58 = zext i16 %47 to i32
  %idx.ext59 = sext i32 %conv58 to i64
  %add.ptr60 = getelementptr inbounds i16, i16* %arraydecay56, i64 %idx.ext59
  store i16* %add.ptr60, i16** %HiDigit, align 8
  br label %do.body.61

do.body.61:                                       ; preds = %do.cond.85, %do.end
  %48 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value62 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %48, i32 0, i32 4
  %arraydecay63 = getelementptr inbounds [1 x i16], [1 x i16]* %value62, i32 0, i32 0
  store i16* %arraydecay63, i16** %uPtr, align 8
  %49 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value64 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %49, i32 0, i32 4
  %arraydecay65 = getelementptr inbounds [1 x i16], [1 x i16]* %value64, i32 0, i32 0
  %50 = load i16*, i16** %vPtr, align 8
  %51 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value66 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %51, i32 0, i32 4
  %arraydecay67 = getelementptr inbounds [1 x i16], [1 x i16]* %value66, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i16* %50 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %arraydecay67 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %add.ptr68 = getelementptr inbounds i16, i16* %arraydecay65, i64 %sub.ptr.div
  store i16* %add.ptr68, i16** %wPtr, align 8
  store i16 0, i16* %hi, align 2
  %52 = load i16*, i16** %vPtr, align 8
  %53 = load i16, i16* %52, align 2
  store i16 %53, i16* %vdigit, align 2
  br label %do.body.69

do.body.69:                                       ; preds = %do.cond.80, %do.body.61
  %54 = load i16, i16* %vdigit, align 2
  %conv70 = zext i16 %54 to i32
  %55 = load i16*, i16** %uPtr, align 8
  %incdec.ptr71 = getelementptr inbounds i16, i16* %55, i32 1
  store i16* %incdec.ptr71, i16** %uPtr, align 8
  %56 = load i16, i16* %55, align 2
  %conv72 = zext i16 %56 to i32
  %mul = mul nsw i32 %conv70, %conv72
  store i32 %mul, i32* %temp, align 4
  %57 = load i16*, i16** %wPtr, align 8
  %58 = load i16, i16* %57, align 2
  %conv73 = zext i16 %58 to i32
  %59 = load i32, i32* %temp, align 4
  %add74 = add i32 %59, %conv73
  store i32 %add74, i32* %temp, align 4
  %60 = load i16, i16* %hi, align 2
  %conv75 = zext i16 %60 to i32
  %61 = load i32, i32* %temp, align 4
  %add76 = add i32 %61, %conv75
  store i32 %add76, i32* %temp, align 4
  %62 = load i32, i32* %temp, align 4
  %shr = lshr i32 %62, 16
  %conv77 = trunc i32 %shr to i16
  store i16 %conv77, i16* %hi, align 2
  %63 = load i32, i32* %temp, align 4
  %and = and i32 %63, 65535
  %conv78 = trunc i32 %and to i16
  %64 = load i16*, i16** %wPtr, align 8
  %incdec.ptr79 = getelementptr inbounds i16, i16* %64, i32 1
  store i16* %incdec.ptr79, i16** %wPtr, align 8
  store i16 %conv78, i16* %64, align 2
  br label %do.cond.80

do.cond.80:                                       ; preds = %do.body.69
  %65 = load i16*, i16** %uPtr, align 8
  %66 = load i16*, i16** %HiDigit, align 8
  %cmp81 = icmp ult i16* %65, %66
  br i1 %cmp81, label %do.body.69, label %do.end.83

do.end.83:                                        ; preds = %do.cond.80
  %67 = load i16, i16* %hi, align 2
  %68 = load i16*, i16** %wPtr, align 8
  %incdec.ptr84 = getelementptr inbounds i16, i16* %68, i32 1
  store i16* %incdec.ptr84, i16** %wPtr, align 8
  store i16 %67, i16* %68, align 2
  br label %do.cond.85

do.cond.85:                                       ; preds = %do.end.83
  %69 = load i16*, i16** %vPtr, align 8
  %incdec.ptr86 = getelementptr inbounds i16, i16* %69, i32 1
  store i16* %incdec.ptr86, i16** %vPtr, align 8
  %70 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value87 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %70, i32 0, i32 4
  %arraydecay88 = getelementptr inbounds [1 x i16], [1 x i16]* %value87, i32 0, i32 0
  %71 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %size89 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %71, i32 0, i32 2
  %72 = load i16, i16* %size89, align 2
  %conv90 = zext i16 %72 to i32
  %idx.ext91 = sext i32 %conv90 to i64
  %add.ptr92 = getelementptr inbounds i16, i16* %arraydecay88, i64 %idx.ext91
  %cmp93 = icmp ult i16* %incdec.ptr86, %add.ptr92
  br i1 %cmp93, label %do.body.61, label %do.end.95

do.end.95:                                        ; preds = %do.cond.85
  %73 = load i16, i16* %hi, align 2
  %conv96 = zext i16 %73 to i32
  %cmp97 = icmp eq i32 %conv96, 0
  br i1 %cmp97, label %if.then.99, label %if.end.101

if.then.99:                                       ; preds = %do.end.95
  %74 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %size100 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %74, i32 0, i32 2
  %75 = load i16, i16* %size100, align 2
  %dec = add i16 %75, -1
  store i16 %dec, i16* %size100, align 2
  br label %if.end.101

if.end.101:                                       ; preds = %if.then.99, %do.end.95
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %if.end
  %76 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp103 = icmp ne %struct.precisionType* %76, null
  br i1 %cmp103, label %land.lhs.true, label %land.end.112

land.lhs.true:                                    ; preds = %if.end.102
  %77 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %78 = bitcast %struct.precisionType* %77 to i16*
  %79 = load i16, i16* %78, align 2
  %dec105 = add i16 %79, -1
  store i16 %dec105, i16* %78, align 2
  %conv106 = zext i16 %dec105 to i32
  %cmp107 = icmp eq i32 %conv106, 0
  br i1 %cmp107, label %land.rhs.109, label %land.end.112

land.rhs.109:                                     ; preds = %land.lhs.true
  %80 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call110 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %80)
  %tobool111 = icmp ne i32 %call110, 0
  br label %land.end.112

land.end.112:                                     ; preds = %land.rhs.109, %land.lhs.true, %if.end.102
  %81 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.102 ], [ %tobool111, %land.rhs.109 ]
  %land.ext113 = zext i1 %81 to i32
  %82 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %cmp114 = icmp ne %struct.precisionType* %82, null
  br i1 %cmp114, label %land.lhs.true.116, label %land.end.124

land.lhs.true.116:                                ; preds = %land.end.112
  %83 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %84 = bitcast %struct.precisionType* %83 to i16*
  %85 = load i16, i16* %84, align 2
  %dec117 = add i16 %85, -1
  store i16 %dec117, i16* %84, align 2
  %conv118 = zext i16 %dec117 to i32
  %cmp119 = icmp eq i32 %conv118, 0
  br i1 %cmp119, label %land.rhs.121, label %land.end.124

land.rhs.121:                                     ; preds = %land.lhs.true.116
  %86 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %call122 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %86)
  %tobool123 = icmp ne i32 %call122, 0
  br label %land.end.124

land.end.124:                                     ; preds = %land.rhs.121, %land.lhs.true.116, %land.end.112
  %87 = phi i1 [ false, %land.lhs.true.116 ], [ false, %land.end.112 ], [ %tobool123, %land.rhs.121 ]
  %land.ext125 = zext i1 %87 to i32
  %88 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %call126 = call %struct.precisionType* @presult(%struct.precisionType* %88)
  store %struct.precisionType* %call126, %struct.precisionType** %retval
  br label %return

return:                                           ; preds = %land.end.124, %if.then.32, %if.then.17
  %89 = load %struct.precisionType*, %struct.precisionType** %retval
  ret %struct.precisionType* %89
}

declare i32 @pcmpz(%struct.precisionType*) #1

declare %struct.precisionType* @palloc(...) #1

declare i32 @pfree(...) #1

declare %struct.precisionType* @presult(%struct.precisionType*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
