; ModuleID = './app/display/gimpcanvasitem-utils.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_shift_to_north_west(i32 %anchor, double %x, double %y, i32 %width, i32 %height, double* %shifted_x, double* %shifted_y) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %shifted_x.addr = alloca double*, align 8
  %shifted_y.addr = alloca double*, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double* %shifted_x, double** %shifted_x.addr, align 8
  store double* %shifted_y, double** %shifted_y.addr, align 8
  %0 = load i32, i32* %anchor.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.4
    i32 2, label %sw.bb.8
    i32 3, label %sw.bb.9
    i32 4, label %sw.bb.12
    i32 5, label %sw.bb.18
    i32 6, label %sw.bb.21
    i32 7, label %sw.bb.26
    i32 8, label %sw.bb.30
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %width.addr, align 4
  %div = sdiv i32 %1, 2
  %conv = sitofp i32 %div to double
  %2 = load double, double* %x.addr, align 8
  %sub = fsub double %2, %conv
  store double %sub, double* %x.addr, align 8
  %3 = load i32, i32* %height.addr, align 4
  %div1 = sdiv i32 %3, 2
  %conv2 = sitofp i32 %div1 to double
  %4 = load double, double* %y.addr, align 8
  %sub3 = fsub double %4, %conv2
  store double %sub3, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %entry
  %5 = load i32, i32* %width.addr, align 4
  %div5 = sdiv i32 %5, 2
  %conv6 = sitofp i32 %div5 to double
  %6 = load double, double* %x.addr, align 8
  %sub7 = fsub double %6, %conv6
  store double %sub7, double* %x.addr, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %entry
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %7 = load i32, i32* %width.addr, align 4
  %conv10 = sitofp i32 %7 to double
  %8 = load double, double* %x.addr, align 8
  %sub11 = fsub double %8, %conv10
  store double %sub11, double* %x.addr, align 8
  br label %sw.epilog

sw.bb.12:                                         ; preds = %entry
  %9 = load i32, i32* %width.addr, align 4
  %div13 = sdiv i32 %9, 2
  %conv14 = sitofp i32 %div13 to double
  %10 = load double, double* %x.addr, align 8
  %sub15 = fsub double %10, %conv14
  store double %sub15, double* %x.addr, align 8
  %11 = load i32, i32* %height.addr, align 4
  %conv16 = sitofp i32 %11 to double
  %12 = load double, double* %y.addr, align 8
  %sub17 = fsub double %12, %conv16
  store double %sub17, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.18:                                         ; preds = %entry
  %13 = load i32, i32* %height.addr, align 4
  %conv19 = sitofp i32 %13 to double
  %14 = load double, double* %y.addr, align 8
  %sub20 = fsub double %14, %conv19
  store double %sub20, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.21:                                         ; preds = %entry
  %15 = load i32, i32* %width.addr, align 4
  %conv22 = sitofp i32 %15 to double
  %16 = load double, double* %x.addr, align 8
  %sub23 = fsub double %16, %conv22
  store double %sub23, double* %x.addr, align 8
  %17 = load i32, i32* %height.addr, align 4
  %conv24 = sitofp i32 %17 to double
  %18 = load double, double* %y.addr, align 8
  %sub25 = fsub double %18, %conv24
  store double %sub25, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %19 = load i32, i32* %height.addr, align 4
  %div27 = sdiv i32 %19, 2
  %conv28 = sitofp i32 %div27 to double
  %20 = load double, double* %y.addr, align 8
  %sub29 = fsub double %20, %conv28
  store double %sub29, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.30:                                         ; preds = %entry
  %21 = load i32, i32* %width.addr, align 4
  %conv31 = sitofp i32 %21 to double
  %22 = load double, double* %x.addr, align 8
  %sub32 = fsub double %22, %conv31
  store double %sub32, double* %x.addr, align 8
  %23 = load i32, i32* %height.addr, align 4
  %div33 = sdiv i32 %23, 2
  %conv34 = sitofp i32 %div33 to double
  %24 = load double, double* %y.addr, align 8
  %sub35 = fsub double %24, %conv34
  store double %sub35, double* %y.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.30, %sw.bb.26, %sw.bb.21, %sw.bb.18, %sw.bb.12, %sw.bb.9, %sw.bb.8, %sw.bb.4, %sw.bb
  %25 = load double*, double** %shifted_x.addr, align 8
  %tobool = icmp ne double* %25, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %26 = load double, double* %x.addr, align 8
  %27 = load double*, double** %shifted_x.addr, align 8
  store double %26, double* %27, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %28 = load double*, double** %shifted_y.addr, align 8
  %tobool36 = icmp ne double* %28, null
  br i1 %tobool36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end
  %29 = load double, double* %y.addr, align 8
  %30 = load double*, double** %shifted_y.addr, align 8
  store double %29, double* %30, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.37, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @gimp_canvas_item_shift_to_center(i32 %anchor, double %x, double %y, i32 %width, i32 %height, double* %shifted_x, double* %shifted_y) #0 {
entry:
  %anchor.addr = alloca i32, align 4
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  %width.addr = alloca i32, align 4
  %height.addr = alloca i32, align 4
  %shifted_x.addr = alloca double*, align 8
  %shifted_y.addr = alloca double*, align 8
  store i32 %anchor, i32* %anchor.addr, align 4
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  store i32 %width, i32* %width.addr, align 4
  store i32 %height, i32* %height.addr, align 4
  store double* %shifted_x, double** %shifted_x.addr, align 8
  store double* %shifted_y, double** %shifted_y.addr, align 8
  %0 = load i32, i32* %anchor.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
    i32 3, label %sw.bb.9
    i32 4, label %sw.bb.15
    i32 5, label %sw.bb.19
    i32 6, label %sw.bb.26
    i32 7, label %sw.bb.33
    i32 8, label %sw.bb.37
  ]

sw.bb:                                            ; preds = %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %1 = load i32, i32* %height.addr, align 4
  %div = sdiv i32 %1, 2
  %conv = sitofp i32 %div to double
  %2 = load double, double* %y.addr, align 8
  %add = fadd double %2, %conv
  store double %add, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  %3 = load i32, i32* %width.addr, align 4
  %div3 = sdiv i32 %3, 2
  %conv4 = sitofp i32 %div3 to double
  %4 = load double, double* %x.addr, align 8
  %add5 = fadd double %4, %conv4
  store double %add5, double* %x.addr, align 8
  %5 = load i32, i32* %height.addr, align 4
  %div6 = sdiv i32 %5, 2
  %conv7 = sitofp i32 %div6 to double
  %6 = load double, double* %y.addr, align 8
  %add8 = fadd double %6, %conv7
  store double %add8, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.9:                                          ; preds = %entry
  %7 = load i32, i32* %width.addr, align 4
  %div10 = sdiv i32 %7, 2
  %conv11 = sitofp i32 %div10 to double
  %8 = load double, double* %x.addr, align 8
  %sub = fsub double %8, %conv11
  store double %sub, double* %x.addr, align 8
  %9 = load i32, i32* %height.addr, align 4
  %div12 = sdiv i32 %9, 2
  %conv13 = sitofp i32 %div12 to double
  %10 = load double, double* %y.addr, align 8
  %add14 = fadd double %10, %conv13
  store double %add14, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.15:                                         ; preds = %entry
  %11 = load i32, i32* %height.addr, align 4
  %div16 = sdiv i32 %11, 2
  %conv17 = sitofp i32 %div16 to double
  %12 = load double, double* %y.addr, align 8
  %sub18 = fsub double %12, %conv17
  store double %sub18, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %13 = load i32, i32* %width.addr, align 4
  %div20 = sdiv i32 %13, 2
  %conv21 = sitofp i32 %div20 to double
  %14 = load double, double* %x.addr, align 8
  %add22 = fadd double %14, %conv21
  store double %add22, double* %x.addr, align 8
  %15 = load i32, i32* %height.addr, align 4
  %div23 = sdiv i32 %15, 2
  %conv24 = sitofp i32 %div23 to double
  %16 = load double, double* %y.addr, align 8
  %sub25 = fsub double %16, %conv24
  store double %sub25, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.26:                                         ; preds = %entry
  %17 = load i32, i32* %width.addr, align 4
  %div27 = sdiv i32 %17, 2
  %conv28 = sitofp i32 %div27 to double
  %18 = load double, double* %x.addr, align 8
  %sub29 = fsub double %18, %conv28
  store double %sub29, double* %x.addr, align 8
  %19 = load i32, i32* %height.addr, align 4
  %div30 = sdiv i32 %19, 2
  %conv31 = sitofp i32 %div30 to double
  %20 = load double, double* %y.addr, align 8
  %sub32 = fsub double %20, %conv31
  store double %sub32, double* %y.addr, align 8
  br label %sw.epilog

sw.bb.33:                                         ; preds = %entry
  %21 = load i32, i32* %width.addr, align 4
  %div34 = sdiv i32 %21, 2
  %conv35 = sitofp i32 %div34 to double
  %22 = load double, double* %x.addr, align 8
  %add36 = fadd double %22, %conv35
  store double %add36, double* %x.addr, align 8
  br label %sw.epilog

sw.bb.37:                                         ; preds = %entry
  %23 = load i32, i32* %width.addr, align 4
  %div38 = sdiv i32 %23, 2
  %conv39 = sitofp i32 %div38 to double
  %24 = load double, double* %x.addr, align 8
  %sub40 = fsub double %24, %conv39
  store double %sub40, double* %x.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.37, %sw.bb.33, %sw.bb.26, %sw.bb.19, %sw.bb.15, %sw.bb.9, %sw.bb.2, %sw.bb.1, %sw.bb
  %25 = load double*, double** %shifted_x.addr, align 8
  %tobool = icmp ne double* %25, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  %26 = load double, double* %x.addr, align 8
  %27 = load double*, double** %shifted_x.addr, align 8
  store double %26, double* %27, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog
  %28 = load double*, double** %shifted_y.addr, align 8
  %tobool41 = icmp ne double* %28, null
  br i1 %tobool41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end
  %29 = load double, double* %y.addr, align 8
  %30 = load double*, double** %shifted_y.addr, align 8
  store double %29, double* %30, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.42, %if.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
