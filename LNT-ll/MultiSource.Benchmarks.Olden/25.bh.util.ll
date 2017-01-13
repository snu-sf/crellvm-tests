; ModuleID = './MultiSource.Benchmarks.Olden/25.bh.util.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [6 x i8] c"Error\00", align 1

; Function Attrs: nounwind uwtable
define double @my_rand(double %seed) #0 {
entry:
  %seed.addr = alloca double, align 8
  %t = alloca double, align 8
  store double %seed, double* %seed.addr, align 8
  %0 = load double, double* %seed.addr, align 8
  %mul = fmul double 1.680700e+04, %0
  %add = fadd double %mul, 1.000000e+00
  store double %add, double* %t, align 8
  %1 = load double, double* %t, align 8
  %2 = load double, double* %t, align 8
  %div = fdiv double %2, 0x41DFFFFFFFC00000
  %call = call double @floor(double %div) #4
  %mul1 = fmul double 0x41DFFFFFFFC00000, %call
  %sub = fsub double %1, %mul1
  store double %sub, double* %seed.addr, align 8
  %3 = load double, double* %seed.addr, align 8
  ret double %3
}

; Function Attrs: nounwind readnone
declare double @floor(double) #1

; Function Attrs: nounwind uwtable
define double @xrand(double %xl, double %xh, double %r) #0 {
entry:
  %xl.addr = alloca double, align 8
  %xh.addr = alloca double, align 8
  %r.addr = alloca double, align 8
  %res = alloca double, align 8
  store double %xl, double* %xl.addr, align 8
  store double %xh, double* %xh.addr, align 8
  store double %r, double* %r.addr, align 8
  %0 = load double, double* %xl.addr, align 8
  %1 = load double, double* %xh.addr, align 8
  %2 = load double, double* %xl.addr, align 8
  %sub = fsub double %1, %2
  %3 = load double, double* %r.addr, align 8
  %mul = fmul double %sub, %3
  %div = fdiv double %mul, 0x41DFFFFFFFC00000
  %add = fadd double %0, %div
  store double %add, double* %res, align 8
  %4 = load double, double* %res, align 8
  ret double %4
}

; Function Attrs: nounwind uwtable
define i32 @error(i8* %msg) #0 {
entry:
  %retval = alloca i32, align 4
  %msg.addr = alloca i8*, align 8
  store i8* %msg, i8** %msg.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1 = load i8*, i8** %msg.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %1)
  %call1 = call i32* @__errno_location() #4
  %2 = load i32, i32* %call1, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @exit(i32 0) #5
  unreachable

return:                                           ; No predecessors!
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #1

declare void @perror(i8*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
