; ModuleID = './MultiSource.Benchmarks.Prolangs-C/15.plot2fig.arc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [67 x i8] c"%d %d %d %d %d %d %d %d %.3f %d %d %d %.3f %.3f %d %d %d %d %d %d\0A\00", align 1
@line_style = external global i32, align 4
@fill_level = external global i32, align 4
@dash_length = external global float, align 4
@x_input_min = external global double, align 8
@x_scale = external global double, align 8
@x_output_min = external global double, align 8
@y_input_min = external global double, align 8
@y_scale = external global double, align 8
@y_output_min = external global double, align 8

; Function Attrs: nounwind uwtable
define i32 @arc(i32 %xc, i32 %yc, i32 %x0, i32 %y0, i32 %x1, i32 %y1) #0 {
entry:
  %xc.addr = alloca i32, align 4
  %yc.addr = alloca i32, align 4
  %x0.addr = alloca i32, align 4
  %y0.addr = alloca i32, align 4
  %x1.addr = alloca i32, align 4
  %y1.addr = alloca i32, align 4
  store i32 %xc, i32* %xc.addr, align 4
  store i32 %yc, i32* %yc.addr, align 4
  store i32 %x0, i32* %x0.addr, align 4
  store i32 %y0, i32* %y0.addr, align 4
  store i32 %x1, i32* %x1.addr, align 4
  store i32 %y1, i32* %y1.addr, align 4
  %call = call i32 (...) @draw_line()
  %0 = load i32, i32* @line_style, align 4
  %1 = load i32, i32* @fill_level, align 4
  %2 = load float, float* @dash_length, align 4
  %conv = fpext float %2 to double
  %3 = load i32, i32* %xc.addr, align 4
  %conv1 = sitofp i32 %3 to double
  %4 = load double, double* @x_input_min, align 8
  %sub = fsub double %conv1, %4
  %5 = load double, double* @x_scale, align 8
  %div = fdiv double %sub, %5
  %6 = load double, double* @x_output_min, align 8
  %add = fadd double %div, %6
  %conv2 = fptosi double %add to i32
  %7 = load i32, i32* %yc.addr, align 4
  %conv3 = sitofp i32 %7 to double
  %8 = load double, double* @y_input_min, align 8
  %sub4 = fsub double %conv3, %8
  %9 = load double, double* @y_scale, align 8
  %div5 = fdiv double %sub4, %9
  %10 = load double, double* @y_output_min, align 8
  %add6 = fadd double %div5, %10
  %conv7 = fptosi double %add6 to i32
  %11 = load i32, i32* %x0.addr, align 4
  %conv8 = sitofp i32 %11 to double
  %12 = load double, double* @x_input_min, align 8
  %sub9 = fsub double %conv8, %12
  %13 = load double, double* @x_scale, align 8
  %div10 = fdiv double %sub9, %13
  %14 = load double, double* @x_output_min, align 8
  %add11 = fadd double %div10, %14
  %conv12 = fptosi double %add11 to i32
  %15 = load i32, i32* %y0.addr, align 4
  %conv13 = sitofp i32 %15 to double
  %16 = load double, double* @y_input_min, align 8
  %sub14 = fsub double %conv13, %16
  %17 = load double, double* @y_scale, align 8
  %div15 = fdiv double %sub14, %17
  %18 = load double, double* @y_output_min, align 8
  %add16 = fadd double %div15, %18
  %conv17 = fptosi double %add16 to i32
  %19 = load i32, i32* %x1.addr, align 4
  %conv18 = sitofp i32 %19 to double
  %20 = load double, double* @x_input_min, align 8
  %sub19 = fsub double %conv18, %20
  %21 = load double, double* @x_scale, align 8
  %div20 = fdiv double %sub19, %21
  %22 = load double, double* @x_output_min, align 8
  %add21 = fadd double %div20, %22
  %conv22 = fptosi double %add21 to i32
  %23 = load i32, i32* %y1.addr, align 4
  %conv23 = sitofp i32 %23 to double
  %24 = load double, double* @y_input_min, align 8
  %sub24 = fsub double %conv23, %24
  %25 = load double, double* @y_scale, align 8
  %div25 = fdiv double %sub24, %25
  %26 = load double, double* @y_output_min, align 8
  %add26 = fadd double %div25, %26
  %conv27 = fptosi double %add26 to i32
  %27 = load i32, i32* %x1.addr, align 4
  %conv28 = sitofp i32 %27 to double
  %28 = load double, double* @x_input_min, align 8
  %sub29 = fsub double %conv28, %28
  %29 = load double, double* @x_scale, align 8
  %div30 = fdiv double %sub29, %29
  %30 = load double, double* @x_output_min, align 8
  %add31 = fadd double %div30, %30
  %conv32 = fptosi double %add31 to i32
  %31 = load i32, i32* %y1.addr, align 4
  %conv33 = sitofp i32 %31 to double
  %32 = load double, double* @y_input_min, align 8
  %sub34 = fsub double %conv33, %32
  %33 = load double, double* @y_scale, align 8
  %div35 = fdiv double %sub34, %33
  %34 = load double, double* @y_output_min, align 8
  %add36 = fadd double %div35, %34
  %conv37 = fptosi double %add36 to i32
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i32 0, i32 0), i32 5, i32 1, i32 %0, i32 0, i32 0, i32 0, i32 0, i32 %1, double %conv, i32 0, i32 0, i32 0, i32 %conv2, i32 %conv7, i32 %conv12, i32 %conv17, i32 %conv22, i32 %conv27, i32 %conv32, i32 %conv37)
  %35 = load i32, i32* %xc.addr, align 4
  %36 = load i32, i32* %yc.addr, align 4
  %call39 = call i32 @move_nasko(i32 %35, i32 %36)
  ret i32 0
}

declare i32 @draw_line(...) #1

declare i32 @printf(i8*, ...) #1

declare i32 @move_nasko(i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
