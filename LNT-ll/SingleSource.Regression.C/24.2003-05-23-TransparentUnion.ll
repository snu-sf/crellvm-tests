; ModuleID = './SingleSource.Regression.C/24.2003-05-23-TransparentUnion.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.UNION = type { float* }

@.str = private unnamed_addr constant [3 x i8] c"ok\00", align 1

; Function Attrs: nounwind uwtable
define i32 @try(float* %U.coerce) #0 {
entry:
  %U = alloca %union.UNION, align 8
  %coerce.dive = getelementptr %union.UNION, %union.UNION* %U, i32 0, i32 0
  store float* %U.coerce, float** %coerce.dive, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @test() #0 {
entry:
  %I = alloca i32, align 4
  %F = alloca float, align 4
  %agg.tmp = alloca %union.UNION, align 8
  %agg.tmp1 = alloca %union.UNION, align 8
  %__iptr = bitcast %union.UNION* %agg.tmp to i32**
  store i32* %I, i32** %__iptr, align 8
  %coerce.dive = getelementptr %union.UNION, %union.UNION* %agg.tmp, i32 0, i32 0
  %0 = load float*, float** %coerce.dive, align 8
  %call = call i32 @try(float* %0)
  %__fptr = bitcast %union.UNION* %agg.tmp1 to float**
  store float* %F, float** %__fptr, align 8
  %coerce.dive2 = getelementptr %union.UNION, %union.UNION* %agg.tmp1, i32 0, i32 0
  %1 = load float*, float** %coerce.dive2, align 8
  %call3 = call i32 @try(float* %1)
  %or = or i32 %call, %call3
  ret i32 %or
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval
  %call = call i32 @test()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
