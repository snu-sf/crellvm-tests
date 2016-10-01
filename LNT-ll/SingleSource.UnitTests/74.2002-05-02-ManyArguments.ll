; ModuleID = './SingleSource.UnitTests/74.2002-05-02-ManyArguments.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"%d, %d, %f, %f, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"%d, %ld, %ld, %d, %lld\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @printfn(i32 %a, i16 signext %b, double %C, float %D, i8 signext %E, i8 signext %F, i8* %G, double* %H, i32 %I, i64 %J) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i16, align 2
  %C.addr = alloca double, align 8
  %D.addr = alloca float, align 4
  %E.addr = alloca i8, align 1
  %F.addr = alloca i8, align 1
  %G.addr = alloca i8*, align 8
  %H.addr = alloca double*, align 8
  %I.addr = alloca i32, align 4
  %J.addr = alloca i64, align 8
  store i32 %a, i32* %a.addr, align 4
  store i16 %b, i16* %b.addr, align 2
  store double %C, double* %C.addr, align 8
  store float %D, float* %D.addr, align 4
  store i8 %E, i8* %E.addr, align 1
  store i8 %F, i8* %F.addr, align 1
  store i8* %G, i8** %G.addr, align 8
  store double* %H, double** %H.addr, align 8
  store i32 %I, i32* %I.addr, align 4
  store i64 %J, i64* %J.addr, align 8
  %0 = load i32, i32* %a.addr, align 4
  %1 = load i16, i16* %b.addr, align 2
  %conv = sext i16 %1 to i32
  %2 = load double, double* %C.addr, align 8
  %3 = load float, float* %D.addr, align 4
  %conv1 = fpext float %3 to double
  %4 = load i8, i8* %E.addr, align 1
  %conv2 = sext i8 %4 to i32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 %0, i32 %conv, double %2, double %conv1, i32 %conv2)
  %5 = load i8, i8* %F.addr, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load i8*, i8** %G.addr, align 8
  %7 = ptrtoint i8* %6 to i64
  %8 = load double*, double** %H.addr, align 8
  %9 = ptrtoint double* %8 to i64
  %10 = load i32, i32* %I.addr, align 4
  %11 = load i64, i64* %J.addr, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i32 0, i32 0), i32 %conv3, i64 %7, i64 %9, i32 %10, i64 %11)
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  call void @printfn(i32 12, i16 signext 2, double 1.232340e+02, float 0x40933C7E20000000, i8 signext -12, i8 signext 23, i8* inttoptr (i64 123456 to i8*), double* null, i32 1234567, i64 123124124124)
  ret i32 0
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
