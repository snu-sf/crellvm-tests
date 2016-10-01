; ModuleID = './MultiSource.Benchmarks.MallocBench/106.cfrac.padd.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: nounwind uwtable
define %struct.precisionType* @padd(%struct.precisionType* %u, %struct.precisionType* %v) #0 {
entry:
  %retval = alloca %struct.precisionType*, align 8
  %u.addr = alloca %struct.precisionType*, align 8
  %v.addr = alloca %struct.precisionType*, align 8
  %wPtr = alloca i16*, align 8
  %uPtr = alloca i16*, align 8
  %vPtr = alloca i16*, align 8
  %w = alloca %struct.precisionType*, align 8
  %temp = alloca i32, align 4
  %carry = alloca i16, align 2
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
  br i1 %cmp12, label %if.then, label %if.else.42

if.then:                                          ; preds = %land.end.7
  store %struct.precisionType* null, %struct.precisionType** %w, align 8
  %16 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign14 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %16, i32 0, i32 3
  %17 = load i8, i8* %sign14, align 1
  %tobool15 = icmp ne i8 %17, 0
  br i1 %tobool15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then
  %18 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign17 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %18, i32 0, i32 3
  %19 = load i8, i8* %sign17, align 1
  %tobool18 = icmp ne i8 %19, 0
  %lnot = xor i1 %tobool18, true
  %lnot.ext = zext i1 %lnot to i32
  %conv19 = trunc i32 %lnot.ext to i8
  %20 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign20 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %20, i32 0, i32 3
  store i8 %conv19, i8* %sign20, align 1
  %21 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %22 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %call = call %struct.precisionType* @psub(%struct.precisionType* %21, %struct.precisionType* %22)
  %call21 = call %struct.precisionType* @psetq(%struct.precisionType** %w, %struct.precisionType* %call)
  %23 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign22 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %23, i32 0, i32 3
  %24 = load i8, i8* %sign22, align 1
  %tobool23 = icmp ne i8 %24, 0
  %lnot24 = xor i1 %tobool23, true
  %lnot.ext25 = zext i1 %lnot24 to i32
  %conv26 = trunc i32 %lnot.ext25 to i8
  %25 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %sign27 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %25, i32 0, i32 3
  store i8 %conv26, i8* %sign27, align 1
  br label %if.end

if.else:                                          ; preds = %if.then
  %26 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign28 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %26, i32 0, i32 3
  %27 = load i8, i8* %sign28, align 1
  %tobool29 = icmp ne i8 %27, 0
  %lnot30 = xor i1 %tobool29, true
  %lnot.ext31 = zext i1 %lnot30 to i32
  %conv32 = trunc i32 %lnot.ext31 to i8
  %28 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign33 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %28, i32 0, i32 3
  store i8 %conv32, i8* %sign33, align 1
  %29 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %30 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call34 = call %struct.precisionType* @psub(%struct.precisionType* %29, %struct.precisionType* %30)
  %call35 = call %struct.precisionType* @psetq(%struct.precisionType** %w, %struct.precisionType* %call34)
  %31 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign36 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %31, i32 0, i32 3
  %32 = load i8, i8* %sign36, align 1
  %tobool37 = icmp ne i8 %32, 0
  %lnot38 = xor i1 %tobool37, true
  %lnot.ext39 = zext i1 %lnot38 to i32
  %conv40 = trunc i32 %lnot.ext39 to i8
  %33 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign41 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %33, i32 0, i32 3
  store i8 %conv40, i8* %sign41, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %if.end.101

if.else.42:                                       ; preds = %land.end.7
  %34 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %34, i32 0, i32 2
  %35 = load i16, i16* %size, align 2
  %conv43 = zext i16 %35 to i32
  %36 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %size44 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %36, i32 0, i32 2
  %37 = load i16, i16* %size44, align 2
  %conv45 = zext i16 %37 to i32
  %cmp46 = icmp slt i32 %conv43, %conv45
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.else.42
  %38 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  store %struct.precisionType* %38, %struct.precisionType** %w, align 8
  %39 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  store %struct.precisionType* %39, %struct.precisionType** %u.addr, align 8
  %40 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %40, %struct.precisionType** %v.addr, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %if.else.42
  %41 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size50 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %41, i32 0, i32 2
  %42 = load i16, i16* %size50, align 2
  %conv51 = zext i16 %42 to i32
  %add = add nsw i32 %conv51, 1
  %call52 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 %add)
  store %struct.precisionType* %call52, %struct.precisionType** %w, align 8
  %43 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %cmp53 = icmp eq %struct.precisionType* %43, null
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.49
  %44 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  store %struct.precisionType* %44, %struct.precisionType** %retval
  br label %return

if.end.56:                                        ; preds = %if.end.49
  %45 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign57 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %45, i32 0, i32 3
  %46 = load i8, i8* %sign57, align 1
  %47 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %sign58 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %47, i32 0, i32 3
  store i8 %46, i8* %sign58, align 1
  %48 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %48, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  store i16* %arraydecay, i16** %uPtr, align 8
  %49 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %value59 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %49, i32 0, i32 4
  %arraydecay60 = getelementptr inbounds [1 x i16], [1 x i16]* %value59, i32 0, i32 0
  store i16* %arraydecay60, i16** %wPtr, align 8
  %50 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value61 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %50, i32 0, i32 4
  %arraydecay62 = getelementptr inbounds [1 x i16], [1 x i16]* %value61, i32 0, i32 0
  store i16* %arraydecay62, i16** %vPtr, align 8
  store i16 0, i16* %carry, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.56
  %51 = load i16*, i16** %uPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %51, i32 1
  store i16* %incdec.ptr, i16** %uPtr, align 8
  %52 = load i16, i16* %51, align 2
  %conv63 = zext i16 %52 to i32
  %53 = load i16*, i16** %vPtr, align 8
  %incdec.ptr64 = getelementptr inbounds i16, i16* %53, i32 1
  store i16* %incdec.ptr64, i16** %vPtr, align 8
  %54 = load i16, i16* %53, align 2
  %conv65 = zext i16 %54 to i32
  %add66 = add nsw i32 %conv63, %conv65
  store i32 %add66, i32* %temp, align 4
  %55 = load i16, i16* %carry, align 2
  %conv67 = zext i16 %55 to i32
  %56 = load i32, i32* %temp, align 4
  %add68 = add i32 %56, %conv67
  store i32 %add68, i32* %temp, align 4
  %57 = load i32, i32* %temp, align 4
  %shr = lshr i32 %57, 16
  %conv69 = trunc i32 %shr to i16
  store i16 %conv69, i16* %carry, align 2
  %58 = load i32, i32* %temp, align 4
  %and = and i32 %58, 65535
  %conv70 = trunc i32 %and to i16
  %59 = load i16*, i16** %wPtr, align 8
  %incdec.ptr71 = getelementptr inbounds i16, i16* %59, i32 1
  store i16* %incdec.ptr71, i16** %wPtr, align 8
  store i16 %conv70, i16* %59, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %60 = load i16*, i16** %vPtr, align 8
  %61 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %value72 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %61, i32 0, i32 4
  %arraydecay73 = getelementptr inbounds [1 x i16], [1 x i16]* %value72, i32 0, i32 0
  %62 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %size74 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %62, i32 0, i32 2
  %63 = load i16, i16* %size74, align 2
  %conv75 = zext i16 %63 to i32
  %idx.ext = sext i32 %conv75 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay73, i64 %idx.ext
  %cmp76 = icmp ult i16* %60, %add.ptr
  br i1 %cmp76, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %while.cond

while.cond:                                       ; preds = %while.body, %do.end
  %64 = load i16*, i16** %uPtr, align 8
  %65 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value78 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %65, i32 0, i32 4
  %arraydecay79 = getelementptr inbounds [1 x i16], [1 x i16]* %value78, i32 0, i32 0
  %66 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size80 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %66, i32 0, i32 2
  %67 = load i16, i16* %size80, align 2
  %conv81 = zext i16 %67 to i32
  %idx.ext82 = sext i32 %conv81 to i64
  %add.ptr83 = getelementptr inbounds i16, i16* %arraydecay79, i64 %idx.ext82
  %cmp84 = icmp ult i16* %64, %add.ptr83
  br i1 %cmp84, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %68 = load i16*, i16** %uPtr, align 8
  %incdec.ptr86 = getelementptr inbounds i16, i16* %68, i32 1
  store i16* %incdec.ptr86, i16** %uPtr, align 8
  %69 = load i16, i16* %68, align 2
  %conv87 = zext i16 %69 to i32
  %70 = load i16, i16* %carry, align 2
  %conv88 = zext i16 %70 to i32
  %add89 = add nsw i32 %conv87, %conv88
  store i32 %add89, i32* %temp, align 4
  %71 = load i32, i32* %temp, align 4
  %shr90 = lshr i32 %71, 16
  %conv91 = trunc i32 %shr90 to i16
  store i16 %conv91, i16* %carry, align 2
  %72 = load i32, i32* %temp, align 4
  %and92 = and i32 %72, 65535
  %conv93 = trunc i32 %and92 to i16
  %73 = load i16*, i16** %wPtr, align 8
  %incdec.ptr94 = getelementptr inbounds i16, i16* %73, i32 1
  store i16* %incdec.ptr94, i16** %wPtr, align 8
  store i16 %conv93, i16* %73, align 2
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %74 = load i16, i16* %carry, align 2
  %75 = load i16*, i16** %wPtr, align 8
  store i16 %74, i16* %75, align 2
  %76 = load i16, i16* %carry, align 2
  %conv95 = zext i16 %76 to i32
  %cmp96 = icmp eq i32 %conv95, 0
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %while.end
  %77 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %size99 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %77, i32 0, i32 2
  %78 = load i16, i16* %size99, align 2
  %dec = add i16 %78, -1
  store i16 %dec, i16* %size99, align 2
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %while.end
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.end
  %79 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp102 = icmp ne %struct.precisionType* %79, null
  br i1 %cmp102, label %land.lhs.true, label %land.end.111

land.lhs.true:                                    ; preds = %if.end.101
  %80 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %81 = bitcast %struct.precisionType* %80 to i16*
  %82 = load i16, i16* %81, align 2
  %dec104 = add i16 %82, -1
  store i16 %dec104, i16* %81, align 2
  %conv105 = zext i16 %dec104 to i32
  %cmp106 = icmp eq i32 %conv105, 0
  br i1 %cmp106, label %land.rhs.108, label %land.end.111

land.rhs.108:                                     ; preds = %land.lhs.true
  %83 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call109 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %83)
  %tobool110 = icmp ne i32 %call109, 0
  br label %land.end.111

land.end.111:                                     ; preds = %land.rhs.108, %land.lhs.true, %if.end.101
  %84 = phi i1 [ false, %land.lhs.true ], [ false, %if.end.101 ], [ %tobool110, %land.rhs.108 ]
  %land.ext112 = zext i1 %84 to i32
  %85 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %cmp113 = icmp ne %struct.precisionType* %85, null
  br i1 %cmp113, label %land.lhs.true.115, label %land.end.123

land.lhs.true.115:                                ; preds = %land.end.111
  %86 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %87 = bitcast %struct.precisionType* %86 to i16*
  %88 = load i16, i16* %87, align 2
  %dec116 = add i16 %88, -1
  store i16 %dec116, i16* %87, align 2
  %conv117 = zext i16 %dec116 to i32
  %cmp118 = icmp eq i32 %conv117, 0
  br i1 %cmp118, label %land.rhs.120, label %land.end.123

land.rhs.120:                                     ; preds = %land.lhs.true.115
  %89 = load %struct.precisionType*, %struct.precisionType** %v.addr, align 8
  %call121 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %89)
  %tobool122 = icmp ne i32 %call121, 0
  br label %land.end.123

land.end.123:                                     ; preds = %land.rhs.120, %land.lhs.true.115, %land.end.111
  %90 = phi i1 [ false, %land.lhs.true.115 ], [ false, %land.end.111 ], [ %tobool122, %land.rhs.120 ]
  %land.ext124 = zext i1 %90 to i32
  %91 = load %struct.precisionType*, %struct.precisionType** %w, align 8
  %call125 = call %struct.precisionType* @presult(%struct.precisionType* %91)
  store %struct.precisionType* %call125, %struct.precisionType** %retval
  br label %return

return:                                           ; preds = %land.end.123, %if.then.55
  %92 = load %struct.precisionType*, %struct.precisionType** %retval
  ret %struct.precisionType* %92
}

declare %struct.precisionType* @psetq(%struct.precisionType**, %struct.precisionType*) #1

declare %struct.precisionType* @psub(%struct.precisionType*, %struct.precisionType*) #1

declare %struct.precisionType* @palloc(...) #1

declare i32 @pfree(...) #1

declare %struct.precisionType* @presult(%struct.precisionType*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
