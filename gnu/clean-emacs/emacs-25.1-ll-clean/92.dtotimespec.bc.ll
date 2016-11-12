; ModuleID = './lib/dtotimespec.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }

; Function Attrs: nounwind readnone uwtable
define { i64, i64 } @dtotimespec(double %sec) #0 {
entry:
  %retval = alloca %struct.timespec, align 8
  %sec.addr = alloca double, align 8
  %min_representable = alloca double, align 8
  %max_representable = alloca double, align 8
  %s = alloca i64, align 8
  %frac = alloca double, align 8
  %ns = alloca i64, align 8
  store double %sec, double* %sec.addr, align 8
  store double 0xC3E0000000000000, double* %min_representable, align 8
  store double 0x43E0000000000000, double* %max_representable, align 8
  %0 = load double, double* %min_representable, align 8
  %1 = load double, double* %sec.addr, align 8
  %cmp = fcmp olt double %0, %1
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call { i64, i64 } @make_timespec(i64 -9223372036854775808, i64 0)
  %2 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %3 = getelementptr { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %4 = extractvalue { i64, i64 } %call, 0
  store i64 %4, i64* %3, align 8
  %5 = getelementptr { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %6 = extractvalue { i64, i64 } %call, 1
  store i64 %6, i64* %5, align 8
  br label %return

if.else:                                          ; preds = %entry
  %7 = load double, double* %sec.addr, align 8
  %8 = load double, double* %max_representable, align 8
  %cmp1 = fcmp olt double %7, %8
  br i1 %cmp1, label %if.else.4, label %if.then.2

if.then.2:                                        ; preds = %if.else
  %call3 = call { i64, i64 } @make_timespec(i64 9223372036854775807, i64 999999999)
  %9 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %10 = getelementptr { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %11 = extractvalue { i64, i64 } %call3, 0
  store i64 %11, i64* %10, align 8
  %12 = getelementptr { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %13 = extractvalue { i64, i64 } %call3, 1
  store i64 %13, i64* %12, align 8
  br label %return

if.else.4:                                        ; preds = %if.else
  %14 = load double, double* %sec.addr, align 8
  %conv = fptosi double %14 to i64
  store i64 %conv, i64* %s, align 8
  %15 = load double, double* %sec.addr, align 8
  %16 = load i64, i64* %s, align 8
  %conv5 = sitofp i64 %16 to double
  %sub = fsub double %15, %conv5
  %mul = fmul double 1.000000e+09, %sub
  store double %mul, double* %frac, align 8
  %17 = load double, double* %frac, align 8
  %conv6 = fptosi double %17 to i64
  store i64 %conv6, i64* %ns, align 8
  %18 = load i64, i64* %ns, align 8
  %conv7 = sitofp i64 %18 to double
  %19 = load double, double* %frac, align 8
  %cmp8 = fcmp olt double %conv7, %19
  %conv9 = zext i1 %cmp8 to i32
  %conv10 = sext i32 %conv9 to i64
  %20 = load i64, i64* %ns, align 8
  %add = add nsw i64 %20, %conv10
  store i64 %add, i64* %ns, align 8
  %21 = load i64, i64* %ns, align 8
  %div = sdiv i64 %21, 1000000000
  %22 = load i64, i64* %s, align 8
  %add11 = add nsw i64 %22, %div
  store i64 %add11, i64* %s, align 8
  %23 = load i64, i64* %ns, align 8
  %rem = srem i64 %23, 1000000000
  store i64 %rem, i64* %ns, align 8
  %24 = load i64, i64* %ns, align 8
  %cmp12 = icmp slt i64 %24, 0
  br i1 %cmp12, label %if.then.14, label %if.end

if.then.14:                                       ; preds = %if.else.4
  %25 = load i64, i64* %s, align 8
  %dec = add nsw i64 %25, -1
  store i64 %dec, i64* %s, align 8
  %26 = load i64, i64* %ns, align 8
  %add15 = add nsw i64 %26, 1000000000
  store i64 %add15, i64* %ns, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.14, %if.else.4
  %27 = load i64, i64* %s, align 8
  %28 = load i64, i64* %ns, align 8
  %call16 = call { i64, i64 } @make_timespec(i64 %27, i64 %28)
  %29 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %30 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %31 = extractvalue { i64, i64 } %call16, 0
  store i64 %31, i64* %30, align 8
  %32 = getelementptr { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %33 = extractvalue { i64, i64 } %call16, 1
  store i64 %33, i64* %32, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then.2, %if.then
  %34 = bitcast %struct.timespec* %retval to { i64, i64 }*
  %35 = load { i64, i64 }, { i64, i64 }* %34, align 8
  ret { i64, i64 } %35
}

declare { i64, i64 } @make_timespec(i64, i64) #1

attributes #0 = { nounwind readnone uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
