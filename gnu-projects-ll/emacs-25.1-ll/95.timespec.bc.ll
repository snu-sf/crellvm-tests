; ModuleID = './lib/timespec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

; Function Attrs: inlinehint nounwind uwtable
define { i64, i64 } @make_timespec(i64 %s, i64 %ns) #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %s.addr = alloca i64, align 8
  %ns.addr = alloca i64, align 8
  %r = alloca %struct.timespec, align 8
  store i64 %s, i64* %s.addr, align 8
  store i64 %ns, i64* %ns.addr, align 8
  %0 = load i64, i64* %s.addr, align 8
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %r, i32 0, i32 0
  store i64 %0, i64* %tv_sec, align 8
  %1 = load i64, i64* %ns.addr, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %r, i32 0, i32 1
  store i64 %1, i64* %tv_nsec, align 8
  %2 = bitcast %struct.timespec* %retval to i8*
  %3 = bitcast %struct.timespec* %r to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  %4 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %5 = load { i64, i64 }, { i64, i64 }* %4, align 8
  ret { i64, i64 } %5
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: inlinehint nounwind readonly uwtable
define i32 @timespec_cmp(i64 %a.coerce0, i64 %a.coerce1, i64 %b.coerce0, i64 %b.coerce1) #2 {
entry:
  %a = alloca %struct.timespec, align 8
  %b = alloca %struct.timespec, align 8
  %0 = bitcast %struct.timespec* %a to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %a.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %a.coerce1, i64* %2
  %3 = bitcast %struct.timespec* %b to { i64, i64 }*
  %4 = getelementptr { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  store i64 %b.coerce0, i64* %4
  %5 = getelementptr { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  store i64 %b.coerce1, i64* %5
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %a, i32 0, i32 0
  %6 = load i64, i64* %tv_sec, align 8
  %tv_sec1 = getelementptr inbounds %struct.timespec, %struct.timespec* %b, i32 0, i32 0
  %7 = load i64, i64* %tv_sec1, align 8
  %cmp = icmp slt i64 %6, %7
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.8

cond.false:                                       ; preds = %entry
  %tv_sec2 = getelementptr inbounds %struct.timespec, %struct.timespec* %a, i32 0, i32 0
  %8 = load i64, i64* %tv_sec2, align 8
  %tv_sec3 = getelementptr inbounds %struct.timespec, %struct.timespec* %b, i32 0, i32 0
  %9 = load i64, i64* %tv_sec3, align 8
  %cmp4 = icmp sgt i64 %8, %9
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.false
  br label %cond.end

cond.false.6:                                     ; preds = %cond.false
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %a, i32 0, i32 1
  %10 = load i64, i64* %tv_nsec, align 8
  %tv_nsec7 = getelementptr inbounds %struct.timespec, %struct.timespec* %b, i32 0, i32 1
  %11 = load i64, i64* %tv_nsec7, align 8
  %sub = sub nsw i64 %10, %11
  %conv = trunc i64 %sub to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false.6, %cond.true.5
  %cond = phi i32 [ 1, %cond.true.5 ], [ %conv, %cond.false.6 ]
  br label %cond.end.8

cond.end.8:                                       ; preds = %cond.end, %cond.true
  %cond9 = phi i32 [ -1, %cond.true ], [ %cond, %cond.end ]
  ret i32 %cond9
}

; Function Attrs: inlinehint nounwind readonly uwtable
define i32 @timespec_sign(i64 %a.coerce0, i64 %a.coerce1) #2 {
entry:
  %a = alloca %struct.timespec, align 8
  %0 = bitcast %struct.timespec* %a to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %a.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %a.coerce1, i64* %2
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %a, i32 0, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %tv_sec1 = getelementptr inbounds %struct.timespec, %struct.timespec* %a, i32 0, i32 0
  %4 = load i64, i64* %tv_sec1, align 8
  %tobool = icmp ne i64 %4, 0
  br i1 %tobool, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.false
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %a, i32 0, i32 1
  %5 = load i64, i64* %tv_nsec, align 8
  %tobool2 = icmp ne i64 %5, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.false
  %6 = phi i1 [ true, %cond.false ], [ %tobool2, %lor.rhs ]
  %lor.ext = zext i1 %6 to i32
  br label %cond.end

cond.end:                                         ; preds = %lor.end, %cond.true
  %cond = phi i32 [ -1, %cond.true ], [ %lor.ext, %lor.end ]
  ret i32 %cond
}

; Function Attrs: inlinehint nounwind uwtable
define double @timespectod(i64 %a.coerce0, i64 %a.coerce1) #0 {
entry:
  %a = alloca %struct.timespec, align 8
  %0 = bitcast %struct.timespec* %a to { i64, i64 }*
  %1 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %a.coerce0, i64* %1
  %2 = getelementptr { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %a.coerce1, i64* %2
  %tv_sec = getelementptr inbounds %struct.timespec, %struct.timespec* %a, i32 0, i32 0
  %3 = load i64, i64* %tv_sec, align 8
  %conv = sitofp i64 %3 to double
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %a, i32 0, i32 1
  %4 = load i64, i64* %tv_nsec, align 8
  %conv1 = sitofp i64 %4 to double
  %div = fdiv double %conv1, 1.000000e+09
  %add = fadd double %conv, %div
  ret double %add
}

attributes #0 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { inlinehint nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
