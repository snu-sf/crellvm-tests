; ModuleID = './SingleSource.Regression.C/6.2003-05-22-LocalTypeTest.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sometimes.1 = type { i16, i16, i16, i16 }
%struct.sometimes = type { i32, i32 }
%struct.sometimes.0 = type { i8 }

@Y = common global %struct.sometimes.1 zeroinitializer, align 2
@.str = private unnamed_addr constant [14 x i8] c"Result is %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %X = alloca i32, align 4
  %S = alloca %struct.sometimes, align 4
  %S3 = alloca %struct.sometimes.0, align 1
  store i32 0, i32* %retval
  %X1 = getelementptr inbounds %struct.sometimes, %struct.sometimes* %S, i32 0, i32 0
  store i32 1, i32* %X1, align 4
  %X2 = getelementptr inbounds %struct.sometimes, %struct.sometimes* %S, i32 0, i32 0
  %0 = load i32, i32* %X2, align 4
  store i32 %0, i32* %X, align 4
  %X4 = getelementptr inbounds %struct.sometimes.0, %struct.sometimes.0* %S3, i32 0, i32 0
  store i8 -1, i8* %X4, align 1
  %X5 = getelementptr inbounds %struct.sometimes.0, %struct.sometimes.0* %S3, i32 0, i32 0
  %1 = load i8, i8* %X5, align 1
  %conv = sext i8 %1 to i32
  %2 = load i32, i32* %X, align 4
  %add = add nsw i32 %2, %conv
  store i32 %add, i32* %X, align 4
  %3 = load i16, i16* getelementptr inbounds (%struct.sometimes.1, %struct.sometimes.1* @Y, i32 0, i32 0), align 2
  %conv6 = sext i16 %3 to i32
  %4 = load i32, i32* %X, align 4
  %add7 = add nsw i32 %4, %conv6
  store i32 %add7, i32* %X, align 4
  %5 = load i32, i32* %X, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0), i32 %5)
  %6 = load i32, i32* %X, align 4
  ret i32 %6
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
