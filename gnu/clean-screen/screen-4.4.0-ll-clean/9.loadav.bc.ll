; ModuleID = './loadav.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@loadok = internal global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c" %2.2f\00", align 1
@loadav = internal global [3 x double] zeroinitializer, align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"/proc/loadavg\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind uwtable
define void @InitLoadav() #0 {
entry:
  store i32 1, i32* @loadok, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @AddLoadav(i8* %p) #0 {
entry:
  %p.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  %0 = load i32, i32* @loadok, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %call = call i32 @GetLoadav()
  store i32 %call, i32* %j, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %j, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p.addr, align 8
  %4 = load i32, i32* %i, align 4
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  %idx.ext = sext i32 %lnot.ext to i64
  %add.ptr = getelementptr inbounds i8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i64 %idx.ext
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* @loadav, i32 0, i64 %idxprom
  %6 = load double, double* %arrayidx, align 8
  %div = fdiv double %6, 1.000000e+00
  %call2 = call i32 (i8*, i8*, ...) @sprintf(i8* %3, i8* %add.ptr, double %div) #4
  %7 = load i8*, i8** %p.addr, align 8
  %call3 = call i64 @strlen(i8* %7) #5
  %8 = load i8*, i8** %p.addr, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %8, i64 %call3
  store i8* %add.ptr4, i8** %p.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @GetLoadav() #0 {
entry:
  %retval = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %buf = alloca [128 x i8], align 16
  %s = alloca i8*, align 8
  %i = alloca i32, align 4
  %d = alloca double, align 8
  %e = alloca double, align 8
  %call = call %struct._IO_FILE* @secfopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  store i8 0, i8* %arraydecay, align 1
  %arraydecay1 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call2 = call i8* @fgets(i8* %arraydecay1, i32 128, %struct._IO_FILE* %0)
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call3 = call i32 @fclose(%struct._IO_FILE* %1)
  %arraydecay4 = getelementptr inbounds [128 x i8], [128 x i8]* %buf, i32 0, i32 0
  store i8* %arraydecay4, i8** %s, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %cmp5 = icmp slt i32 %2, 3
  br i1 %cmp5, label %for.body, label %for.end.35

for.body:                                         ; preds = %for.cond
  store double 0.000000e+00, double* %e, align 8
  store double 0.000000e+00, double* %d, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body
  %3 = load i8*, i8** %s, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %cmp6 = icmp eq i32 %conv, 32
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i8*, i8** %s, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %s, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load i8*, i8** %s, align 8
  %7 = load i8, i8* %6, align 1
  %conv8 = sext i8 %7 to i32
  %cmp9 = icmp eq i32 %conv8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %while.end
  br label %for.end.35

if.end.12:                                        ; preds = %while.end
  br label %for.cond.13

for.cond.13:                                      ; preds = %if.end.32, %if.end.12
  %8 = load i8*, i8** %s, align 8
  %9 = load i8, i8* %8, align 1
  %conv14 = sext i8 %9 to i32
  %cmp15 = icmp eq i32 %conv14, 46
  br i1 %cmp15, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.cond.13
  store double 1.000000e+00, double* %e, align 8
  br label %if.end.32

if.else:                                          ; preds = %for.cond.13
  %10 = load i8*, i8** %s, align 8
  %11 = load i8, i8* %10, align 1
  %conv18 = sext i8 %11 to i32
  %cmp19 = icmp sge i32 %conv18, 48
  br i1 %cmp19, label %land.lhs.true, label %if.else.30

land.lhs.true:                                    ; preds = %if.else
  %12 = load i8*, i8** %s, align 8
  %13 = load i8, i8* %12, align 1
  %conv21 = sext i8 %13 to i32
  %cmp22 = icmp sle i32 %conv21, 57
  br i1 %cmp22, label %if.then.24, label %if.else.30

if.then.24:                                       ; preds = %land.lhs.true
  %14 = load double, double* %d, align 8
  %mul = fmul double %14, 1.000000e+01
  %15 = load i8*, i8** %s, align 8
  %16 = load i8, i8* %15, align 1
  %conv25 = sext i8 %16 to i32
  %sub = sub nsw i32 %conv25, 48
  %conv26 = sitofp i32 %sub to double
  %add = fadd double %mul, %conv26
  store double %add, double* %d, align 8
  %17 = load double, double* %e, align 8
  %tobool = fcmp une double %17, 0.000000e+00
  br i1 %tobool, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.then.24
  %18 = load double, double* %e, align 8
  %mul28 = fmul double %18, 1.000000e+01
  store double %mul28, double* %e, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.27, %if.then.24
  br label %if.end.31

if.else.30:                                       ; preds = %land.lhs.true, %if.else
  br label %for.end

if.end.31:                                        ; preds = %if.end.29
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.17
  %19 = load i8*, i8** %s, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr33, i8** %s, align 8
  br label %for.cond.13

for.end:                                          ; preds = %if.else.30
  %20 = load double, double* %e, align 8
  %tobool34 = fcmp une double %20, 0.000000e+00
  br i1 %tobool34, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.end
  %21 = load double, double* %d, align 8
  %22 = load double, double* %e, align 8
  %div = fdiv double %21, %22
  br label %cond.end

cond.false:                                       ; preds = %for.end
  %23 = load double, double* %d, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi double [ %div, %cond.true ], [ %23, %cond.false ]
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* @loadav, i32 0, i64 %idxprom
  store double %cond, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %25 = load i32, i32* %i, align 4
  %inc = add nsw i32 %25, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.35:                                       ; preds = %if.then.11, %for.cond
  %26 = load i32, i32* %i, align 4
  store i32 %26, i32* %retval
  br label %return

return:                                           ; preds = %for.end.35, %if.then
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct._IO_FILE* @secfopen(i8*, i8*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

declare i32 @fclose(%struct._IO_FILE*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
