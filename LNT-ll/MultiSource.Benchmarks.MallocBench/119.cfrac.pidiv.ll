; ModuleID = './MultiSource.Benchmarks.MallocBench/119.cfrac.pidiv.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

@.str = private unnamed_addr constant [6 x i8] c"pidiv\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"divisor too big for single digit\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1

; Function Attrs: nounwind uwtable
define %struct.precisionType* @pidiv(%struct.precisionType* %u, i32 %v) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  %v.addr = alloca i32, align 4
  %uPtr = alloca i16*, align 8
  %qPtr = alloca i16*, align 8
  %temp = alloca i32, align 4
  %r = alloca i16, align 2
  %d = alloca i16, align 2
  %m = alloca i16, align 2
  %q = alloca %struct.precisionType*, align 8
  store %struct.precisionType* %u, %struct.precisionType** %u.addr, align 8
  store i32 %v, i32* %v.addr, align 4
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
  br i1 %cmp6, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %call = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0))
  %call9 = call %struct.precisionType* @pnew(%struct.precisionType* %call)
  store %struct.precisionType* %call9, %struct.precisionType** %q, align 8
  br label %done

if.end.10:                                        ; preds = %if.end
  %10 = load i16, i16* %d, align 2
  %conv11 = zext i16 %10 to i32
  %cmp12 = icmp eq i32 %conv11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.10
  %call15 = call %struct.precisionType* @errorp(i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0))
  %call16 = call %struct.precisionType* @pnew(%struct.precisionType* %call15)
  store %struct.precisionType* %call16, %struct.precisionType** %q, align 8
  br label %done

if.end.17:                                        ; preds = %if.end.10
  %11 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %11, i32 0, i32 2
  %12 = load i16, i16* %size, align 2
  store i16 %12, i16* %m, align 2
  %13 = load i16, i16* %m, align 2
  %conv18 = zext i16 %13 to i32
  %call19 = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 %conv18)
  store %struct.precisionType* %call19, %struct.precisionType** %q, align 8
  %14 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %cmp20 = icmp eq %struct.precisionType* %14, null
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.17
  br label %done

if.end.23:                                        ; preds = %if.end.17
  %15 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %15, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  %16 = load i16, i16* %m, align 2
  %conv24 = zext i16 %16 to i32
  %idx.ext = sext i32 %conv24 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  store i16* %add.ptr, i16** %qPtr, align 8
  %17 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value25 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %17, i32 0, i32 4
  %arraydecay26 = getelementptr inbounds [1 x i16], [1 x i16]* %value25, i32 0, i32 0
  %18 = load i16, i16* %m, align 2
  %conv27 = zext i16 %18 to i32
  %idx.ext28 = sext i32 %conv27 to i64
  %add.ptr29 = getelementptr inbounds i16, i16* %arraydecay26, i64 %idx.ext28
  store i16* %add.ptr29, i16** %uPtr, align 8
  store i16 0, i16* %r, align 2
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.23
  %19 = load i16, i16* %r, align 2
  %conv30 = zext i16 %19 to i32
  %shl = shl i32 %conv30, 16
  store i32 %shl, i32* %temp, align 4
  %20 = load i16*, i16** %uPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %20, i32 -1
  store i16* %incdec.ptr, i16** %uPtr, align 8
  %21 = load i16, i16* %incdec.ptr, align 2
  %conv31 = zext i16 %21 to i32
  %22 = load i32, i32* %temp, align 4
  %add = add i32 %22, %conv31
  store i32 %add, i32* %temp, align 4
  %23 = load i32, i32* %temp, align 4
  %24 = load i16, i16* %d, align 2
  %conv32 = zext i16 %24 to i32
  %div = udiv i32 %23, %conv32
  %conv33 = trunc i32 %div to i16
  %25 = load i16*, i16** %qPtr, align 8
  %incdec.ptr34 = getelementptr inbounds i16, i16* %25, i32 -1
  store i16* %incdec.ptr34, i16** %qPtr, align 8
  store i16 %conv33, i16* %incdec.ptr34, align 2
  %26 = load i32, i32* %temp, align 4
  %27 = load i16, i16* %d, align 2
  %conv35 = zext i16 %27 to i32
  %rem = urem i32 %26, %conv35
  %conv36 = trunc i32 %rem to i16
  store i16 %conv36, i16* %r, align 2
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %28 = load i16*, i16** %uPtr, align 8
  %29 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value37 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %29, i32 0, i32 4
  %arraydecay38 = getelementptr inbounds [1 x i16], [1 x i16]* %value37, i32 0, i32 0
  %cmp39 = icmp ugt i16* %28, %arraydecay38
  br i1 %cmp39, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %30 = load i16, i16* %m, align 2
  %conv41 = zext i16 %30 to i32
  %cmp42 = icmp sgt i32 %conv41, 1
  br i1 %cmp42, label %land.lhs.true, label %if.end.52

land.lhs.true:                                    ; preds = %do.end
  %31 = load i16, i16* %m, align 2
  %conv44 = zext i16 %31 to i32
  %sub45 = sub nsw i32 %conv44, 1
  %idxprom = sext i32 %sub45 to i64
  %32 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %value46 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %32, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1 x i16], [1 x i16]* %value46, i32 0, i64 %idxprom
  %33 = load i16, i16* %arrayidx, align 2
  %conv47 = zext i16 %33 to i32
  %cmp48 = icmp eq i32 %conv47, 0
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %land.lhs.true
  %34 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %size51 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %34, i32 0, i32 2
  %35 = load i16, i16* %size51, align 2
  %dec = add i16 %35, -1
  store i16 %dec, i16* %size51, align 2
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %land.lhs.true, %do.end
  %36 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %36, i32 0, i32 3
  %37 = load i8, i8* %sign, align 1
  %conv53 = zext i8 %37 to i32
  %38 = load i32, i32* %v.addr, align 4
  %cmp54 = icmp slt i32 %38, 0
  %conv55 = zext i1 %cmp54 to i32
  %cmp56 = icmp ne i32 %conv53, %conv55
  %conv57 = zext i1 %cmp56 to i32
  %conv58 = trunc i32 %conv57 to i8
  %39 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %sign59 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %39, i32 0, i32 3
  store i8 %conv58, i8* %sign59, align 1
  %40 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %size60 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %40, i32 0, i32 2
  %41 = load i16, i16* %size60, align 2
  %conv61 = zext i16 %41 to i32
  %cmp62 = icmp eq i32 %conv61, 1
  br i1 %cmp62, label %land.lhs.true.64, label %if.end.72

land.lhs.true.64:                                 ; preds = %if.end.52
  %42 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %value65 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %42, i32 0, i32 4
  %arraydecay66 = getelementptr inbounds [1 x i16], [1 x i16]* %value65, i32 0, i32 0
  %43 = load i16, i16* %arraydecay66, align 2
  %conv67 = zext i16 %43 to i32
  %cmp68 = icmp eq i32 %conv67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %land.lhs.true.64
  %44 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %sign71 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %44, i32 0, i32 3
  store i8 0, i8* %sign71, align 1
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %land.lhs.true.64, %if.end.52
  br label %done

done:                                             ; preds = %if.end.72, %if.then.22, %if.then.14, %if.then.8
  %45 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp73 = icmp ne %struct.precisionType* %45, null
  br i1 %cmp73, label %land.lhs.true.75, label %land.end.83

land.lhs.true.75:                                 ; preds = %done
  %46 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %47 = bitcast %struct.precisionType* %46 to i16*
  %48 = load i16, i16* %47, align 2
  %dec76 = add i16 %48, -1
  store i16 %dec76, i16* %47, align 2
  %conv77 = zext i16 %dec76 to i32
  %cmp78 = icmp eq i32 %conv77, 0
  br i1 %cmp78, label %land.rhs.80, label %land.end.83

land.rhs.80:                                      ; preds = %land.lhs.true.75
  %49 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call81 = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %49)
  %tobool82 = icmp ne i32 %call81, 0
  br label %land.end.83

land.end.83:                                      ; preds = %land.rhs.80, %land.lhs.true.75, %done
  %50 = phi i1 [ false, %land.lhs.true.75 ], [ false, %done ], [ %tobool82, %land.rhs.80 ]
  %land.ext84 = zext i1 %50 to i32
  %51 = load %struct.precisionType*, %struct.precisionType** %q, align 8
  %call85 = call %struct.precisionType* @presult(%struct.precisionType* %51)
  ret %struct.precisionType* %call85
}

declare %struct.precisionType* @pnew(%struct.precisionType*) #1

declare %struct.precisionType* @errorp(i32, i8*, i8*) #1

declare %struct.precisionType* @palloc(...) #1

declare i32 @pfree(...) #1

declare %struct.precisionType* @presult(%struct.precisionType*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
