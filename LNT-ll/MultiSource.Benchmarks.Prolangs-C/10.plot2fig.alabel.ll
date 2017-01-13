; ModuleID = './MultiSource.Benchmarks.Prolangs-C/10.plot2fig.alabel.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"%d %d %d %d %d %d %d %.3f %d %d %d %d %d %s\01\0A\00", align 1
@font_id = external global i32, align 4
@font_size = external global i32, align 4
@text_rotation = external global float, align 4
@last_x = external global i32, align 4
@x_input_min = external global double, align 8
@x_scale = external global double, align 8
@x_output_min = external global double, align 8
@last_y = external global i32, align 4
@y_input_min = external global double, align 8
@y_scale = external global double, align 8
@y_output_min = external global double, align 8

; Function Attrs: nounwind uwtable
define i32 @alabel(i32 %x_justify, i32 %y_justify, i8* %s) #0 {
entry:
  %x_justify.addr = alloca i32, align 4
  %y_justify.addr = alloca i32, align 4
  %s.addr = alloca i8*, align 8
  %p = alloca i8*, align 8
  %x_justification = alloca i32, align 4
  %y_offset = alloca double, align 8
  store i32 %x_justify, i32* %x_justify.addr, align 4
  store i32 %y_justify, i32* %y_justify.addr, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %x_justification, align 4
  store double 0.000000e+00, double* %y_offset, align 8
  %call = call i32 (...) @draw_line()
  %0 = load i32, i32* %x_justify.addr, align 4
  switch i32 %0, label %sw.epilog [
    i32 108, label %sw.bb
    i32 99, label %sw.bb.1
    i32 114, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store i32 0, i32* %x_justification, align 4
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store i32 1, i32* %x_justification, align 4
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store i32 2, i32* %x_justification, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %y_justify.addr, align 4
  switch i32 %1, label %sw.epilog.6 [
    i32 116, label %sw.bb.3
    i32 99, label %sw.bb.4
    i32 98, label %sw.bb.5
  ]

sw.bb.3:                                          ; preds = %sw.epilog
  store double 1.100000e+00, double* %y_offset, align 8
  br label %sw.epilog.6

sw.bb.4:                                          ; preds = %sw.epilog
  store double 5.000000e-01, double* %y_offset, align 8
  br label %sw.epilog.6

sw.bb.5:                                          ; preds = %sw.epilog
  store double 0.000000e+00, double* %y_offset, align 8
  br label %sw.epilog.6

sw.epilog.6:                                      ; preds = %sw.epilog, %sw.bb.5, %sw.bb.4, %sw.bb.3
  %2 = load i8*, i8** %s.addr, align 8
  store i8* %2, i8** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %sw.epilog.6
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  %idxprom = sext i32 %conv to i64
  %call7 = call i16** @__ctype_b_loc() #4
  %5 = load i16*, i16** %call7, align 8
  %arrayidx = getelementptr inbounds i16, i16* %5, i64 %idxprom
  %6 = load i16, i16* %arrayidx, align 2
  %conv8 = zext i16 %6 to i32
  %and = and i32 %conv8, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i8*, i8** %p, align 8
  %call9 = call i64 @strlen(i8* %8) #5
  %tobool10 = icmp ne i64 %call9, 0
  br i1 %tobool10, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %9 = load i32, i32* %x_justification, align 4
  %10 = load i32, i32* @font_id, align 4
  %11 = load i32, i32* @font_size, align 4
  %12 = load float, float* @text_rotation, align 4
  %conv11 = fpext float %12 to double
  %13 = load i32, i32* @last_x, align 4
  %conv12 = sitofp i32 %13 to double
  %14 = load double, double* @x_input_min, align 8
  %sub = fsub double %conv12, %14
  %15 = load double, double* @x_scale, align 8
  %div = fdiv double %sub, %15
  %16 = load double, double* @x_output_min, align 8
  %add = fadd double %div, %16
  %conv13 = fptosi double %add to i32
  %17 = load i32, i32* @last_y, align 4
  %conv14 = sitofp i32 %17 to double
  %18 = load double, double* @y_input_min, align 8
  %sub15 = fsub double %conv14, %18
  %19 = load double, double* @y_scale, align 8
  %div16 = fdiv double %sub15, %19
  %20 = load double, double* @y_output_min, align 8
  %add17 = fadd double %div16, %20
  %21 = load i32, i32* @font_size, align 4
  %conv18 = sitofp i32 %21 to double
  %22 = load double, double* %y_offset, align 8
  %mul = fmul double %conv18, %22
  %mul19 = fmul double %mul, 7.200000e+01
  %div20 = fdiv double %mul19, 8.000000e+01
  %add21 = fadd double %add17, %div20
  %conv22 = fptosi double %add21 to i32
  %23 = load i8*, i8** %p, align 8
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i32 0, i32 0), i32 4, i32 %9, i32 %10, i32 %11, i32 0, i32 0, i32 0, double %conv11, i32 0, i32 8, i32 8, i32 %conv13, i32 %conv22, i8* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  ret i32 0
}

declare i32 @draw_line(...) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @printf(i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
