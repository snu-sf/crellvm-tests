; ModuleID = './lib/xstrtol.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtol = private unnamed_addr constant [71 x i8] c"strtol_error xstrtol(const char *, char **, int, long *, const char *)\00", align 1

; Function Attrs: nounwind uwtable
define i32 @xstrtol(i8* %s, i8** %ptr, i32 %strtol_base, i64* %val, i8* %valid_suffixes) #0 {
entry:
  %retval = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %ptr.addr = alloca i8**, align 8
  %strtol_base.addr = alloca i32, align 4
  %val.addr = alloca i64*, align 8
  %valid_suffixes.addr = alloca i8*, align 8
  %t_ptr = alloca i8*, align 8
  %p = alloca i8**, align 8
  %tmp = alloca i64, align 8
  %base = alloca i32, align 4
  %suffixes = alloca i32, align 4
  %overflow = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i8** %ptr, i8*** %ptr.addr, align 8
  store i32 %strtol_base, i32* %strtol_base.addr, align 4
  store i64* %val, i64** %val.addr, align 8
  store i8* %valid_suffixes, i8** %valid_suffixes.addr, align 8
  %0 = load i32, i32* %strtol_base.addr, align 4
  %cmp = icmp sle i32 0, %0
  br i1 %cmp, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %strtol_base.addr, align 4
  %cmp1 = icmp sle i32 %1, 36
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), i32 123, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xstrtol, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %2, %cond.true
  %3 = load i8**, i8*** %ptr.addr, align 8
  %tobool = icmp ne i8** %3, null
  br i1 %tobool, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.end
  %4 = load i8**, i8*** %ptr.addr, align 8
  br label %cond.end.4

cond.false.3:                                     ; preds = %cond.end
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.false.3, %cond.true.2
  %cond = phi i8** [ %4, %cond.true.2 ], [ %t_ptr, %cond.false.3 ]
  store i8** %cond, i8*** %p, align 8
  %call = call i32* @__errno_location() #6
  store i32 0, i32* %call, align 4
  %5 = load i8*, i8** %s.addr, align 8
  %6 = load i8**, i8*** %p, align 8
  %7 = load i32, i32* %strtol_base.addr, align 4
  %call5 = call i64 @strtol(i8* %5, i8** %6, i32 %7) #7
  store i64 %call5, i64* %tmp, align 8
  %call6 = call i32* @__errno_location() #6
  %8 = load i32, i32* %call6, align 4
  %cmp7 = icmp ne i32 %8, 0
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.4
  store i32 3, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.4
  %9 = load i8**, i8*** %p, align 8
  %10 = load i8*, i8** %9, align 8
  %11 = load i8*, i8** %s.addr, align 8
  %cmp8 = icmp eq i8* %10, %11
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %12 = load i8*, i8** %valid_suffixes.addr, align 8
  %tobool11 = icmp ne i8* %12, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.10
  %13 = load i64, i64* %tmp, align 8
  %14 = load i64*, i64** %val.addr, align 8
  store i64 %13, i64* %14, align 8
  store i32 0, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.10
  %15 = load i8**, i8*** %p, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %conv = sext i8 %17 to i32
  %cmp14 = icmp ne i32 %conv, 0
  br i1 %cmp14, label %if.then.16, label %if.end.61

if.then.16:                                       ; preds = %if.end.13
  store i32 1024, i32* %base, align 4
  store i32 1, i32* %suffixes, align 4
  %18 = load i8*, i8** %valid_suffixes.addr, align 8
  %19 = load i8**, i8*** %p, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %conv20 = sext i8 %21 to i32
  %call21 = call i8* @strchr(i8* %18, i32 %conv20) #8
  %tobool22 = icmp ne i8* %call21, null
  br i1 %tobool22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %if.then.16
  %22 = load i64, i64* %tmp, align 8
  %23 = load i64*, i64** %val.addr, align 8
  store i64 %22, i64* %23, align 8
  store i32 2, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.16
  %24 = load i8*, i8** %valid_suffixes.addr, align 8
  %call25 = call i8* @strchr(i8* %24, i32 48) #8
  %tobool26 = icmp ne i8* %call25, null
  br i1 %tobool26, label %if.then.27, label %if.end.32

if.then.27:                                       ; preds = %if.end.24
  %25 = load i8**, i8*** %p, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %25, i64 0
  %26 = load i8*, i8** %arrayidx, align 8
  %arrayidx28 = getelementptr inbounds i8, i8* %26, i64 1
  %27 = load i8, i8* %arrayidx28, align 1
  %conv29 = sext i8 %27 to i32
  switch i32 %conv29, label %sw.epilog [
    i32 66, label %sw.bb
    i32 68, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %if.then.27
  %28 = load i32, i32* %suffixes, align 4
  %inc = add nsw i32 %28, 1
  store i32 %inc, i32* %suffixes, align 4
  br label %sw.epilog

sw.bb.30:                                         ; preds = %if.then.27
  store i32 1000, i32* %base, align 4
  %29 = load i32, i32* %suffixes, align 4
  %inc31 = add nsw i32 %29, 1
  store i32 %inc31, i32* %suffixes, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.27, %sw.bb.30, %sw.bb
  br label %if.end.32

if.end.32:                                        ; preds = %sw.epilog, %if.end.24
  %30 = load i8**, i8*** %p, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %conv33 = sext i8 %32 to i32
  switch i32 %conv33, label %sw.default [
    i32 98, label %sw.bb.34
    i32 66, label %sw.bb.36
    i32 99, label %sw.bb.38
    i32 69, label %sw.bb.39
    i32 71, label %sw.bb.41
    i32 107, label %sw.bb.43
    i32 77, label %sw.bb.45
    i32 109, label %sw.bb.45
    i32 80, label %sw.bb.47
    i32 84, label %sw.bb.49
    i32 119, label %sw.bb.51
    i32 89, label %sw.bb.53
    i32 90, label %sw.bb.55
  ]

sw.bb.34:                                         ; preds = %if.end.32
  %call35 = call i32 @bkm_scale(i64* %tmp, i32 512)
  store i32 %call35, i32* %overflow, align 4
  br label %sw.epilog.57

sw.bb.36:                                         ; preds = %if.end.32
  %call37 = call i32 @bkm_scale(i64* %tmp, i32 1024)
  store i32 %call37, i32* %overflow, align 4
  br label %sw.epilog.57

sw.bb.38:                                         ; preds = %if.end.32
  store i32 0, i32* %overflow, align 4
  br label %sw.epilog.57

sw.bb.39:                                         ; preds = %if.end.32
  %33 = load i32, i32* %base, align 4
  %call40 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %33, i32 6)
  store i32 %call40, i32* %overflow, align 4
  br label %sw.epilog.57

sw.bb.41:                                         ; preds = %if.end.32
  %34 = load i32, i32* %base, align 4
  %call42 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %34, i32 3)
  store i32 %call42, i32* %overflow, align 4
  br label %sw.epilog.57

sw.bb.43:                                         ; preds = %if.end.32
  %35 = load i32, i32* %base, align 4
  %call44 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %35, i32 1)
  store i32 %call44, i32* %overflow, align 4
  br label %sw.epilog.57

sw.bb.45:                                         ; preds = %if.end.32, %if.end.32
  %36 = load i32, i32* %base, align 4
  %call46 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %36, i32 2)
  store i32 %call46, i32* %overflow, align 4
  br label %sw.epilog.57

sw.bb.47:                                         ; preds = %if.end.32
  %37 = load i32, i32* %base, align 4
  %call48 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %37, i32 5)
  store i32 %call48, i32* %overflow, align 4
  br label %sw.epilog.57

sw.bb.49:                                         ; preds = %if.end.32
  %38 = load i32, i32* %base, align 4
  %call50 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %38, i32 4)
  store i32 %call50, i32* %overflow, align 4
  br label %sw.epilog.57

sw.bb.51:                                         ; preds = %if.end.32
  %call52 = call i32 @bkm_scale(i64* %tmp, i32 2)
  store i32 %call52, i32* %overflow, align 4
  br label %sw.epilog.57

sw.bb.53:                                         ; preds = %if.end.32
  %39 = load i32, i32* %base, align 4
  %call54 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %39, i32 8)
  store i32 %call54, i32* %overflow, align 4
  br label %sw.epilog.57

sw.bb.55:                                         ; preds = %if.end.32
  %40 = load i32, i32* %base, align 4
  %call56 = call i32 @bkm_scale_by_power(i64* %tmp, i32 %40, i32 7)
  store i32 %call56, i32* %overflow, align 4
  br label %sw.epilog.57

sw.default:                                       ; preds = %if.end.32
  %41 = load i64, i64* %tmp, align 8
  %42 = load i64*, i64** %val.addr, align 8
  store i64 %41, i64* %42, align 8
  store i32 2, i32* %retval
  br label %return

sw.epilog.57:                                     ; preds = %sw.bb.55, %sw.bb.53, %sw.bb.51, %sw.bb.49, %sw.bb.47, %sw.bb.45, %sw.bb.43, %sw.bb.41, %sw.bb.39, %sw.bb.38, %sw.bb.36, %sw.bb.34
  %43 = load i32, i32* %overflow, align 4
  %tobool58 = icmp ne i32 %43, 0
  br i1 %tobool58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %sw.epilog.57
  store i32 3, i32* %retval
  br label %return

if.end.60:                                        ; preds = %sw.epilog.57
  %44 = load i32, i32* %suffixes, align 4
  %45 = load i8**, i8*** %p, align 8
  %46 = load i8*, i8** %45, align 8
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds i8, i8* %46, i64 %idx.ext
  store i8* %add.ptr, i8** %45, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.13
  %47 = load i64, i64* %tmp, align 8
  %48 = load i64*, i64** %val.addr, align 8
  store i64 %47, i64* %48, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.61, %if.then.59, %sw.default, %if.then.23, %if.then.12, %if.then.9, %if.then
  %49 = load i32, i32* %retval
  ret i32 %49
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #2

; Function Attrs: nounwind
declare i64 @strtol(i8*, i8**, i32) #3

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #4

; Function Attrs: nounwind uwtable
define internal i32 @bkm_scale(i64* %x, i32 %scale_factor) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i64*, align 8
  %scale_factor.addr = alloca i32, align 4
  %product = alloca i64, align 8
  store i64* %x, i64** %x.addr, align 8
  store i32 %scale_factor, i32* %scale_factor.addr, align 4
  %0 = load i64*, i64** %x.addr, align 8
  %1 = load i64, i64* %0, align 8
  %2 = load i32, i32* %scale_factor.addr, align 4
  %conv = sext i32 %2 to i64
  %mul = mul nsw i64 %1, %conv
  store i64 %mul, i64* %product, align 8
  %3 = load i64*, i64** %x.addr, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* %product, align 8
  %6 = load i32, i32* %scale_factor.addr, align 4
  %conv1 = sext i32 %6 to i64
  %div = sdiv i64 %5, %conv1
  %cmp = icmp ne i64 %4, %div
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i64, i64* %product, align 8
  %8 = load i64*, i64** %x.addr, align 8
  store i64 %7, i64* %8, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define internal i32 @bkm_scale_by_power(i64* %x, i32 %base, i32 %power) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i64*, align 8
  %base.addr = alloca i32, align 4
  %power.addr = alloca i32, align 4
  store i64* %x, i64** %x.addr, align 8
  store i32 %base, i32* %base.addr, align 4
  store i32 %power, i32* %power.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %power.addr, align 4
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %power.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64*, i64** %x.addr, align 8
  %2 = load i32, i32* %base.addr, align 4
  %call = call i32 @bkm_scale(i64* %1, i32 %2)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind readnone }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
