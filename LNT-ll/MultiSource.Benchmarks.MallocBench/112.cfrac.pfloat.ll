; ModuleID = './MultiSource.Benchmarks.MallocBench/112.cfrac.pfloat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.precisionType = type { i16, i16, i16, i8, [1 x i16] }

; Function Attrs: nounwind uwtable
define %struct.precisionType* @dtop(double %f) #0 {
entry:
  %retval = alloca %struct.precisionType*, align 8
  %f.addr = alloca double, align 8
  %uPtr = alloca i16*, align 8
  %u = alloca %struct.precisionType*, align 8
  store double %f, double* %f.addr, align 8
  %call = call %struct.precisionType* (i32, ...) bitcast (%struct.precisionType* (...)* @palloc to %struct.precisionType* (i32, ...)*)(i32 129)
  store %struct.precisionType* %call, %struct.precisionType** %u, align 8
  %0 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %cmp = icmp eq %struct.precisionType* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  store %struct.precisionType* %1, %struct.precisionType** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load double, double* %f.addr, align 8
  %cmp1 = fcmp olt double %2, 0.000000e+00
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load double, double* %f.addr, align 8
  %sub = fsub double -0.000000e+00, %3
  store double %sub, double* %f.addr, align 8
  %4 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %4, i32 0, i32 3
  store i8 1, i8* %sign, align 1
  br label %if.end.4

if.else:                                          ; preds = %if.end
  %5 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %sign3 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %5, i32 0, i32 3
  store i8 0, i8* %sign3, align 1
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  %6 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  store i16* %arraydecay, i16** %uPtr, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end.4
  %7 = load double, double* %f.addr, align 8
  %call5 = call double @fmod(double %7, double 6.553600e+04) #4
  %conv = fptoui double %call5 to i16
  %8 = load i16*, i16** %uPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %8, i32 1
  store i16* %incdec.ptr, i16** %uPtr, align 8
  store i16 %conv, i16* %8, align 2
  %9 = load double, double* %f.addr, align 8
  %div = fdiv double %9, 6.553600e+04
  %call6 = call double @floor(double %div) #5
  store double %call6, double* %f.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %10 = load double, double* %f.addr, align 8
  %cmp7 = fcmp une double %10, 0.000000e+00
  br i1 %cmp7, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %11 = load i16*, i16** %uPtr, align 8
  %12 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %value9 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %12, i32 0, i32 4
  %arraydecay10 = getelementptr inbounds [1 x i16], [1 x i16]* %value9, i32 0, i32 0
  %sub.ptr.lhs.cast = ptrtoint i16* %11 to i64
  %sub.ptr.rhs.cast = ptrtoint i16* %arraydecay10 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv11 = trunc i64 %sub.ptr.div to i16
  %13 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %13, i32 0, i32 2
  store i16 %conv11, i16* %size, align 2
  %14 = load %struct.precisionType*, %struct.precisionType** %u, align 8
  %call12 = call %struct.precisionType* @presult(%struct.precisionType* %14)
  store %struct.precisionType* %call12, %struct.precisionType** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %15 = load %struct.precisionType*, %struct.precisionType** %retval
  ret %struct.precisionType* %15
}

declare %struct.precisionType* @palloc(...) #1

; Function Attrs: nounwind
declare double @fmod(double, double) #2

; Function Attrs: nounwind readnone
declare double @floor(double) #3

declare %struct.precisionType* @presult(%struct.precisionType*) #1

; Function Attrs: nounwind uwtable
define double @ptod(%struct.precisionType* %u) #0 {
entry:
  %u.addr = alloca %struct.precisionType*, align 8
  %uPtr = alloca i16*, align 8
  %f = alloca double, align 8
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
  %value = getelementptr inbounds %struct.precisionType, %struct.precisionType* %6, i32 0, i32 4
  %arraydecay = getelementptr inbounds [1 x i16], [1 x i16]* %value, i32 0, i32 0
  %7 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %size = getelementptr inbounds %struct.precisionType, %struct.precisionType* %7, i32 0, i32 2
  %8 = load i16, i16* %size, align 2
  %conv1 = zext i16 %8 to i32
  %idx.ext = sext i32 %conv1 to i64
  %add.ptr = getelementptr inbounds i16, i16* %arraydecay, i64 %idx.ext
  store i16* %add.ptr, i16** %uPtr, align 8
  store double 0.000000e+00, double* %f, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %land.end
  %9 = load double, double* %f, align 8
  %mul = fmul double %9, 6.553600e+04
  %10 = load i16*, i16** %uPtr, align 8
  %incdec.ptr = getelementptr inbounds i16, i16* %10, i32 -1
  store i16* %incdec.ptr, i16** %uPtr, align 8
  %11 = load i16, i16* %incdec.ptr, align 2
  %conv2 = uitofp i16 %11 to double
  %add = fadd double %mul, %conv2
  store double %add, double* %f, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %12 = load i16*, i16** %uPtr, align 8
  %13 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %value3 = getelementptr inbounds %struct.precisionType, %struct.precisionType* %13, i32 0, i32 4
  %arraydecay4 = getelementptr inbounds [1 x i16], [1 x i16]* %value3, i32 0, i32 0
  %cmp5 = icmp ugt i16* %12, %arraydecay4
  br i1 %cmp5, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %14 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %sign = getelementptr inbounds %struct.precisionType, %struct.precisionType* %14, i32 0, i32 3
  %15 = load i8, i8* %sign, align 1
  %tobool7 = icmp ne i8 %15, 0
  br i1 %tobool7, label %if.then, label %if.end

if.then:                                          ; preds = %do.end
  %16 = load double, double* %f, align 8
  %sub = fsub double -0.000000e+00, %16
  store double %sub, double* %f, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end
  %17 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %cmp8 = icmp ne %struct.precisionType* %17, null
  br i1 %cmp8, label %land.lhs.true, label %land.end.15

land.lhs.true:                                    ; preds = %if.end
  %18 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %19 = bitcast %struct.precisionType* %18 to i16*
  %20 = load i16, i16* %19, align 2
  %dec = add i16 %20, -1
  store i16 %dec, i16* %19, align 2
  %conv10 = zext i16 %dec to i32
  %cmp11 = icmp eq i32 %conv10, 0
  br i1 %cmp11, label %land.rhs.13, label %land.end.15

land.rhs.13:                                      ; preds = %land.lhs.true
  %21 = load %struct.precisionType*, %struct.precisionType** %u.addr, align 8
  %call = call i32 (%struct.precisionType*, ...) bitcast (i32 (...)* @pfree to i32 (%struct.precisionType*, ...)*)(%struct.precisionType* %21)
  %tobool14 = icmp ne i32 %call, 0
  br label %land.end.15

land.end.15:                                      ; preds = %land.rhs.13, %land.lhs.true, %if.end
  %22 = phi i1 [ false, %land.lhs.true ], [ false, %if.end ], [ %tobool14, %land.rhs.13 ]
  %land.ext16 = zext i1 %22 to i32
  %23 = load double, double* %f, align 8
  ret double %23
}

declare i32 @pfree(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
