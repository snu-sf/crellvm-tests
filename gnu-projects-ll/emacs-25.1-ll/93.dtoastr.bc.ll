; ModuleID = './lib/dtoastr.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @dtoastr(i8* %buf, i64 %bufsize, i32 %flags, i32 %width, double %x) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %width.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %format = alloca [11 x i8], align 1
  %abs_x = alloca double, align 8
  %prec = alloca i32, align 4
  %p = alloca i8*, align 8
  %n = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  store i32 %flags, i32* %flags.addr, align 4
  store i32 %width, i32* %width.addr, align 4
  store double %x, double* %x.addr, align 8
  %0 = load double, double* %x.addr, align 8
  %cmp = fcmp olt double %0, 0.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load double, double* %x.addr, align 8
  %sub = fsub double -0.000000e+00, %1
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load double, double* %x.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %sub, %cond.true ], [ %2, %cond.false ]
  store double %cond, double* %abs_x, align 8
  %arraydecay = getelementptr inbounds [11 x i8], [11 x i8]* %format, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %3 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %3, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 37, i8* %3, align 1
  %4 = load i8*, i8** %p, align 8
  store i8 45, i8* %4, align 1
  %5 = load i32, i32* %flags.addr, align 4
  %and = and i32 %5, 1
  %cmp1 = icmp ne i32 %and, 0
  %conv = zext i1 %cmp1 to i32
  %6 = load i8*, i8** %p, align 8
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %idx.ext
  store i8* %add.ptr, i8** %p, align 8
  %7 = load i8*, i8** %p, align 8
  store i8 43, i8* %7, align 1
  %8 = load i32, i32* %flags.addr, align 4
  %and2 = and i32 %8, 2
  %cmp3 = icmp ne i32 %and2, 0
  %conv4 = zext i1 %cmp3 to i32
  %9 = load i8*, i8** %p, align 8
  %idx.ext5 = sext i32 %conv4 to i64
  %add.ptr6 = getelementptr inbounds i8, i8* %9, i64 %idx.ext5
  store i8* %add.ptr6, i8** %p, align 8
  %10 = load i8*, i8** %p, align 8
  store i8 32, i8* %10, align 1
  %11 = load i32, i32* %flags.addr, align 4
  %and7 = and i32 %11, 4
  %cmp8 = icmp ne i32 %and7, 0
  %conv9 = zext i1 %cmp8 to i32
  %12 = load i8*, i8** %p, align 8
  %idx.ext10 = sext i32 %conv9 to i64
  %add.ptr11 = getelementptr inbounds i8, i8* %12, i64 %idx.ext10
  store i8* %add.ptr11, i8** %p, align 8
  %13 = load i8*, i8** %p, align 8
  store i8 48, i8* %13, align 1
  %14 = load i32, i32* %flags.addr, align 4
  %and12 = and i32 %14, 8
  %cmp13 = icmp ne i32 %and12, 0
  %conv14 = zext i1 %cmp13 to i32
  %15 = load i8*, i8** %p, align 8
  %idx.ext15 = sext i32 %conv14 to i64
  %add.ptr16 = getelementptr inbounds i8, i8* %15, i64 %idx.ext15
  store i8* %add.ptr16, i8** %p, align 8
  %16 = load i8*, i8** %p, align 8
  %incdec.ptr17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr17, i8** %p, align 8
  store i8 42, i8* %16, align 1
  %17 = load i8*, i8** %p, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr18, i8** %p, align 8
  store i8 46, i8* %17, align 1
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr19, i8** %p, align 8
  store i8 42, i8* %18, align 1
  %19 = load i8*, i8** %p, align 8
  store i8 76, i8* %19, align 1
  %20 = load i8*, i8** %p, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %20, i64 0
  store i8* %add.ptr20, i8** %p, align 8
  %21 = load i32, i32* %flags.addr, align 4
  %and21 = and i32 %21, 16
  %tobool = icmp ne i32 %and21, 0
  %cond22 = select i1 %tobool, i32 71, i32 103
  %conv23 = trunc i32 %cond22 to i8
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr24 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr24, i8** %p, align 8
  store i8 %conv23, i8* %22, align 1
  %23 = load i8*, i8** %p, align 8
  store i8 0, i8* %23, align 1
  %24 = load double, double* %abs_x, align 8
  %cmp25 = fcmp olt double %24, 0x10000000000000
  %cond27 = select i1 %cmp25, i32 1, i32 15
  store i32 %cond27, i32* %prec, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end
  %25 = load i8*, i8** %buf.addr, align 8
  %26 = load i64, i64* %bufsize.addr, align 8
  %arraydecay28 = getelementptr inbounds [11 x i8], [11 x i8]* %format, i32 0, i32 0
  %27 = load i32, i32* %width.addr, align 4
  %28 = load i32, i32* %prec, align 4
  %29 = load double, double* %x.addr, align 8
  %call = call i32 @ftoastr_snprintf(i8* %25, i64 %26, i8* %arraydecay28, i32 %27, i32 %28, double %29)
  store i32 %call, i32* %n, align 4
  %30 = load i32, i32* %n, align 4
  %cmp29 = icmp slt i32 %30, 0
  br i1 %cmp29, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %31 = load i32, i32* %prec, align 4
  %cmp31 = icmp sle i32 17, %31
  br i1 %cmp31, label %if.then, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false
  %32 = load i32, i32* %n, align 4
  %conv34 = sext i32 %32 to i64
  %33 = load i64, i64* %bufsize.addr, align 8
  %cmp35 = icmp ult i64 %conv34, %33
  br i1 %cmp35, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.33
  %34 = load i8*, i8** %buf.addr, align 8
  %call37 = call double @strtod(i8* %34, i8** null) #2
  %35 = load double, double* %x.addr, align 8
  %cmp38 = fcmp oeq double %call37, %35
  br i1 %cmp38, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %lor.lhs.false, %for.cond
  %36 = load i32, i32* %n, align 4
  ret i32 %36

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.33
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %37 = load i32, i32* %prec, align 4
  %inc = add nsw i32 %37, 1
  store i32 %inc, i32* %prec, align 4
  br label %for.cond
}

; Function Attrs: nounwind uwtable
define internal i32 @ftoastr_snprintf(i8* %buf, i64 %bufsize, i8* %format, i32 %width, i32 %prec, double %x) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %bufsize.addr = alloca i64, align 8
  %format.addr = alloca i8*, align 8
  %width.addr = alloca i32, align 4
  %prec.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %width_0_buffer = alloca [40 x i8], align 16
  %n = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  store i64 %bufsize, i64* %bufsize.addr, align 8
  store i8* %format, i8** %format.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %prec, i32* %prec.addr, align 4
  store double %x, double* %x.addr, align 8
  %0 = load i32, i32* %width.addr, align 4
  store i32 %0, i32* %n, align 4
  %1 = load i64, i64* %bufsize.addr, align 8
  %cmp = icmp ult i64 %1, 40
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [40 x i8], [40 x i8]* %width_0_buffer, i32 0, i32 0
  %2 = load i8*, i8** %format.addr, align 8
  %3 = load i32, i32* %prec.addr, align 4
  %4 = load double, double* %x.addr, align 8
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* %2, i32 0, i32 %3, double %4) #2
  store i32 %call, i32* %n, align 4
  %5 = load i32, i32* %n, align 4
  %cmp1 = icmp slt i32 %5, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %6 = load i32, i32* %n, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %7 = load i32, i32* %n, align 4
  %8 = load i32, i32* %width.addr, align 4
  %cmp3 = icmp slt i32 %7, %8
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %9 = load i32, i32* %width.addr, align 4
  store i32 %9, i32* %n, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %if.end.5, %entry
  %10 = load i32, i32* %n, align 4
  %conv = sext i32 %10 to i64
  %11 = load i64, i64* %bufsize.addr, align 8
  %cmp7 = icmp ult i64 %conv, %11
  br i1 %cmp7, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.6
  %12 = load i8*, i8** %buf.addr, align 8
  %13 = load i8*, i8** %format.addr, align 8
  %14 = load i32, i32* %width.addr, align 4
  %15 = load i32, i32* %prec.addr, align 4
  %16 = load double, double* %x.addr, align 8
  %call10 = call i32 (i8*, i8*, ...) @sprintf(i8* %12, i8* %13, i32 %14, i32 %15, double %16) #2
  store i32 %call10, i32* %n, align 4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.6
  %17 = load i32, i32* %n, align 4
  store i32 %17, i32* %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.2
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind
declare double @strtod(i8*, i8**) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
