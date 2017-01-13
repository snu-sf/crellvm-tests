; ModuleID = './SingleSource.UnitTests/1.2003-08-05-CastFPToUint.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"DC = %lf, DS = %lf, DI = %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"uc = %u, us = %u, ui = %u\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %DC = alloca double, align 8
  %DS = alloca double, align 8
  %DI = alloca double, align 8
  %uc = alloca i8, align 1
  %us = alloca i16, align 2
  %ui = alloca i32, align 4
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call double @getDC()
  store double %call, double* %DC, align 8
  %call1 = call double @getDS()
  store double %call1, double* %DS, align 8
  %call2 = call double @getDI()
  store double %call2, double* %DI, align 8
  %0 = load double, double* %DC, align 8
  %conv = fptoui double %0 to i8
  store i8 %conv, i8* %uc, align 1
  %1 = load double, double* %DS, align 8
  %conv3 = fptoui double %1 to i16
  store i16 %conv3, i16* %us, align 2
  %2 = load double, double* %DI, align 8
  %conv4 = fptoui double %2 to i32
  store i32 %conv4, i32* %ui, align 4
  %3 = load double, double* %DC, align 8
  %4 = load double, double* %DS, align 8
  %5 = load double, double* %DI, align 8
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), double %3, double %4, double %5)
  %6 = load i8, i8* %uc, align 1
  %conv6 = zext i8 %6 to i32
  %7 = load i16, i16* %us, align 2
  %conv7 = zext i16 %7 to i32
  %8 = load i32, i32* %ui, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i32 0, i32 0), i32 %conv6, i32 %conv7, i32 %8)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal double @getDC() #0 {
entry:
  ret double 2.400000e+02
}

; Function Attrs: nounwind uwtable
define internal double @getDS() #0 {
entry:
  ret double 6.552000e+04
}

; Function Attrs: nounwind uwtable
define internal double @getDI() #0 {
entry:
  ret double 0x41EFFFFFFE000000
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
