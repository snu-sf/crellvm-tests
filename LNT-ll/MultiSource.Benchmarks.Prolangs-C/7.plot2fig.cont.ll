; ModuleID = './MultiSource.Benchmarks.Prolangs-C/7.plot2fig.cont.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@last_x = global i32 0, align 4
@last_y = global i32 0, align 4
@PointsInLine = global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%d %d %d %d %d %d %d %d %.3f %d %d %d\0A\09\00", align 1
@line_style = external global i32, align 4
@fill_level = external global i32, align 4
@dash_length = external global float, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@x_input_min = external global double, align 8
@x_scale = external global double, align 8
@x_output_min = external global double, align 8
@y_input_min = external global double, align 8
@y_scale = external global double, align 8
@y_output_min = external global double, align 8

; Function Attrs: nounwind uwtable
define i32 @cont(i32 %x, i32 %y) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, i32* %x.addr, align 4
  store i32 %y, i32* %y.addr, align 4
  %0 = load i32, i32* @PointsInLine, align 4
  %cmp = icmp sle i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @line_style, align 4
  %2 = load i32, i32* @fill_level, align 4
  %3 = load float, float* @dash_length, align 4
  %conv = fpext float %3 to double
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i32 2, i32 1, i32 %1, i32 1, i32 0, i32 0, i32 0, i32 %2, double %conv, i32 0, i32 0, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* @PointsInLine, align 4
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  %5 = load i32, i32* @last_x, align 4
  %conv4 = sitofp i32 %5 to double
  %6 = load double, double* @x_input_min, align 8
  %sub = fsub double %conv4, %6
  %7 = load double, double* @x_scale, align 8
  %div = fdiv double %sub, %7
  %8 = load double, double* @x_output_min, align 8
  %add = fadd double %div, %8
  %conv5 = fptosi double %add to i32
  %9 = load i32, i32* @last_y, align 4
  %conv6 = sitofp i32 %9 to double
  %10 = load double, double* @y_input_min, align 8
  %sub7 = fsub double %conv6, %10
  %11 = load double, double* @y_scale, align 8
  %div8 = fdiv double %sub7, %11
  %12 = load double, double* @y_output_min, align 8
  %add9 = fadd double %div8, %12
  %conv10 = fptosi double %add9 to i32
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %conv5, i32 %conv10)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.3, %if.end
  %13 = load i32, i32* @PointsInLine, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* @PointsInLine, align 4
  %14 = load i32, i32* %x.addr, align 4
  %conv13 = sitofp i32 %14 to double
  %15 = load double, double* @x_input_min, align 8
  %sub14 = fsub double %conv13, %15
  %16 = load double, double* @x_scale, align 8
  %div15 = fdiv double %sub14, %16
  %17 = load double, double* @x_output_min, align 8
  %add16 = fadd double %div15, %17
  %conv17 = fptosi double %add16 to i32
  %18 = load i32, i32* %y.addr, align 4
  %conv18 = sitofp i32 %18 to double
  %19 = load double, double* @y_input_min, align 8
  %sub19 = fsub double %conv18, %19
  %20 = load double, double* @y_scale, align 8
  %div20 = fdiv double %sub19, %20
  %21 = load double, double* @y_output_min, align 8
  %add21 = fadd double %div20, %21
  %conv22 = fptosi double %add21 to i32
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 %conv17, i32 %conv22)
  %22 = load i32, i32* %x.addr, align 4
  store i32 %22, i32* @last_x, align 4
  %23 = load i32, i32* %y.addr, align 4
  store i32 %23, i32* @last_y, align 4
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
