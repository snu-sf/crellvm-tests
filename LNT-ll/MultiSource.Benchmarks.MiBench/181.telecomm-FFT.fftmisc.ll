; ModuleID = './MultiSource.Benchmarks.MiBench/181.telecomm-FFT.fftmisc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [73 x i8] c">>> Error in fftmisc.c: argument %d to NumberOfBitsNeeded is too small.\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @IsPowerOfTwo(i32 %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  %0 = load i32, i32* %x.addr, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %x.addr, align 4
  %2 = load i32, i32* %x.addr, align 4
  %sub = sub i32 %2, 1
  %and = and i32 %1, %sub
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.2, %if.then.1, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define i32 @NumberOfBitsNeeded(i32 %PowerOfTwo) #0 {
entry:
  %PowerOfTwo.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %PowerOfTwo, i32* %PowerOfTwo.addr, align 4
  %0 = load i32, i32* %PowerOfTwo.addr, align 4
  %cmp = icmp ult i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i32, i32* %PowerOfTwo.addr, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i32 0, i32 0), i32 %2)
  call void @exit(i32 1) #3
  unreachable

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %PowerOfTwo.addr, align 4
  %4 = load i32, i32* %i, align 4
  %shl = shl i32 1, %4
  %and = and i32 %3, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  ret i32 %5

if.end.2:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end.2
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define i32 @ReverseBits(i32 %index, i32 %NumBits) #0 {
entry:
  %index.addr = alloca i32, align 4
  %NumBits.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %rev = alloca i32, align 4
  store i32 %index, i32* %index.addr, align 4
  store i32 %NumBits, i32* %NumBits.addr, align 4
  store i32 0, i32* %rev, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %NumBits.addr, align 4
  %cmp = icmp ult i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %rev, align 4
  %shl = shl i32 %2, 1
  %3 = load i32, i32* %index.addr, align 4
  %and = and i32 %3, 1
  %or = or i32 %shl, %and
  store i32 %or, i32* %rev, align 4
  %4 = load i32, i32* %index.addr, align 4
  %shr = lshr i32 %4, 1
  store i32 %shr, i32* %index.addr, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %inc = add i32 %5, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %rev, align 4
  ret i32 %6
}

; Function Attrs: nounwind uwtable
define double @Index_to_frequency(i32 %NumSamples, i32 %Index) #0 {
entry:
  %retval = alloca double, align 8
  %NumSamples.addr = alloca i32, align 4
  %Index.addr = alloca i32, align 4
  store i32 %NumSamples, i32* %NumSamples.addr, align 4
  store i32 %Index, i32* %Index.addr, align 4
  %0 = load i32, i32* %Index.addr, align 4
  %1 = load i32, i32* %NumSamples.addr, align 4
  %cmp = icmp uge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store double 0.000000e+00, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %Index.addr, align 4
  %3 = load i32, i32* %NumSamples.addr, align 4
  %div = udiv i32 %3, 2
  %cmp1 = icmp ule i32 %2, %div
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.else
  %4 = load i32, i32* %Index.addr, align 4
  %conv = uitofp i32 %4 to double
  %5 = load i32, i32* %NumSamples.addr, align 4
  %conv3 = uitofp i32 %5 to double
  %div4 = fdiv double %conv, %conv3
  store double %div4, double* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* %NumSamples.addr, align 4
  %7 = load i32, i32* %Index.addr, align 4
  %sub = sub i32 %6, %7
  %conv6 = uitofp i32 %sub to double
  %sub7 = fsub double -0.000000e+00, %conv6
  %8 = load i32, i32* %NumSamples.addr, align 4
  %conv8 = uitofp i32 %8 to double
  %div9 = fdiv double %sub7, %conv8
  store double %div9, double* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.2, %if.then
  %9 = load double, double* %retval
  ret double %9
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
