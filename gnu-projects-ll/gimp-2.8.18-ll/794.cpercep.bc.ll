; ModuleID = './app/base/cpercep.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpercep_init.initialized = internal global i32 0, align 4
@powtable = internal global [256 x double] zeroinitializer, align 16
@xnn = internal global double 0.000000e+00, align 8
@znn = internal global double 0.000000e+00, align 8
@Mrgb_to_xyz = internal global [3 x [3 x double]] zeroinitializer, align 16
@Mxyz_to_rgb = internal global [3 x [3 x double]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @cpercep_init() #0 {
entry:
  %0 = load i32, i32* @cpercep_init.initialized, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @rgbxyzrgb_init()
  store i32 1, i32* @cpercep_init.initialized, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgbxyzrgb_init() #0 {
entry:
  %MRC = alloca [3 x [3 x double]], align 16
  %MRCi = alloca [3 x [3 x double]], align 16
  %C1 = alloca double, align 8
  %C2 = alloca double, align 8
  %C3 = alloca double, align 8
  call void @init_powtable(double 0x40019999A0000000)
  store double 0x3FEE6A147600B560, double* @xnn, align 8
  store double 0x3FF16C33DF4C53F2, double* @znn, align 8
  %arrayidx = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 0
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 0
  store double 0x3FE47AE140000000, double* %arrayidx1, align 8
  %arrayidx2 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 0
  %arrayidx3 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx2, i32 0, i64 1
  store double 0x3FD3333340000000, double* %arrayidx3, align 8
  %arrayidx4 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 0
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx4, i32 0, i64 2
  store double 0x3FC3333340000000, double* %arrayidx5, align 8
  %arrayidx6 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 1
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 0
  store double 0x3FD51EB860000000, double* %arrayidx7, align 8
  %arrayidx8 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 1
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx8, i32 0, i64 1
  store double 0x3FE3333340000000, double* %arrayidx9, align 8
  %arrayidx10 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 1
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx10, i32 0, i64 2
  store double 0x3FAEB851E0000000, double* %arrayidx11, align 8
  %arrayidx12 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 2
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx12, i32 0, i64 0
  store double 0x3F9EB85200000000, double* %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 2
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx14, i32 0, i64 1
  store double 0x3FB9999900000000, double* %arrayidx15, align 8
  %arrayidx16 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 2
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx16, i32 0, i64 2
  store double 0x3FE947AE12000000, double* %arrayidx17, align 8
  %arraydecay = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i32 0
  %arraydecay18 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRCi, i32 0, i32 0
  %call = call i32 @Minvert([3 x double]* %arraydecay, [3 x double]* %arraydecay18)
  %arrayidx19 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRCi, i32 0, i64 0
  %arrayidx20 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx19, i32 0, i64 0
  %0 = load double, double* %arrayidx20, align 8
  %1 = load double, double* @xnn, align 8
  %mul = fmul double %0, %1
  %arrayidx21 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRCi, i32 0, i64 0
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx21, i32 0, i64 1
  %2 = load double, double* %arrayidx22, align 8
  %add = fadd double %mul, %2
  %arrayidx23 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRCi, i32 0, i64 0
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx23, i32 0, i64 2
  %3 = load double, double* %arrayidx24, align 8
  %4 = load double, double* @znn, align 8
  %mul25 = fmul double %3, %4
  %add26 = fadd double %add, %mul25
  store double %add26, double* %C1, align 8
  %arrayidx27 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRCi, i32 0, i64 1
  %arrayidx28 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx27, i32 0, i64 0
  %5 = load double, double* %arrayidx28, align 8
  %6 = load double, double* @xnn, align 8
  %mul29 = fmul double %5, %6
  %arrayidx30 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRCi, i32 0, i64 1
  %arrayidx31 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx30, i32 0, i64 1
  %7 = load double, double* %arrayidx31, align 8
  %add32 = fadd double %mul29, %7
  %arrayidx33 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRCi, i32 0, i64 1
  %arrayidx34 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx33, i32 0, i64 2
  %8 = load double, double* %arrayidx34, align 8
  %9 = load double, double* @znn, align 8
  %mul35 = fmul double %8, %9
  %add36 = fadd double %add32, %mul35
  store double %add36, double* %C2, align 8
  %arrayidx37 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRCi, i32 0, i64 2
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx37, i32 0, i64 0
  %10 = load double, double* %arrayidx38, align 8
  %11 = load double, double* @xnn, align 8
  %mul39 = fmul double %10, %11
  %arrayidx40 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRCi, i32 0, i64 2
  %arrayidx41 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx40, i32 0, i64 1
  %12 = load double, double* %arrayidx41, align 8
  %add42 = fadd double %mul39, %12
  %arrayidx43 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRCi, i32 0, i64 2
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx43, i32 0, i64 2
  %13 = load double, double* %arrayidx44, align 8
  %14 = load double, double* @znn, align 8
  %mul45 = fmul double %13, %14
  %add46 = fadd double %add42, %mul45
  store double %add46, double* %C3, align 8
  %arrayidx47 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 0
  %arrayidx48 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx47, i32 0, i64 0
  %15 = load double, double* %arrayidx48, align 8
  %16 = load double, double* %C1, align 8
  %mul49 = fmul double %15, %16
  store double %mul49, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 0, i64 0), align 8
  %arrayidx50 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 0
  %arrayidx51 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx50, i32 0, i64 1
  %17 = load double, double* %arrayidx51, align 8
  %18 = load double, double* %C2, align 8
  %mul52 = fmul double %17, %18
  store double %mul52, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 0, i64 1), align 8
  %arrayidx53 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 0
  %arrayidx54 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx53, i32 0, i64 2
  %19 = load double, double* %arrayidx54, align 8
  %20 = load double, double* %C3, align 8
  %mul55 = fmul double %19, %20
  store double %mul55, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 0, i64 2), align 8
  %arrayidx56 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 1
  %arrayidx57 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx56, i32 0, i64 0
  %21 = load double, double* %arrayidx57, align 8
  %22 = load double, double* %C1, align 8
  %mul58 = fmul double %21, %22
  store double %mul58, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 1, i64 0), align 8
  %arrayidx59 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 1
  %arrayidx60 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx59, i32 0, i64 1
  %23 = load double, double* %arrayidx60, align 8
  %24 = load double, double* %C2, align 8
  %mul61 = fmul double %23, %24
  store double %mul61, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 1, i64 1), align 8
  %arrayidx62 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 1
  %arrayidx63 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx62, i32 0, i64 2
  %25 = load double, double* %arrayidx63, align 8
  %26 = load double, double* %C3, align 8
  %mul64 = fmul double %25, %26
  store double %mul64, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 1, i64 2), align 8
  %arrayidx65 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 2
  %arrayidx66 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx65, i32 0, i64 0
  %27 = load double, double* %arrayidx66, align 8
  %28 = load double, double* %C1, align 8
  %mul67 = fmul double %27, %28
  store double %mul67, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 2, i64 0), align 8
  %arrayidx68 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 2
  %arrayidx69 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx68, i32 0, i64 1
  %29 = load double, double* %arrayidx69, align 8
  %30 = load double, double* %C2, align 8
  %mul70 = fmul double %29, %30
  store double %mul70, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 2, i64 1), align 8
  %arrayidx71 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %MRC, i32 0, i64 2
  %arrayidx72 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx71, i32 0, i64 2
  %31 = load double, double* %arrayidx72, align 8
  %32 = load double, double* %C3, align 8
  %mul73 = fmul double %31, %32
  store double %mul73, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 2, i64 2), align 8
  %call74 = call i32 @Minvert([3 x double]* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i32 0), [3 x double]* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mxyz_to_rgb, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpercep_rgb_to_space(double %inr, double %ing, double %inb, double* %outr, double* %outg, double* %outb) #0 {
entry:
  %inr.addr = alloca double, align 8
  %ing.addr = alloca double, align 8
  %inb.addr = alloca double, align 8
  %outr.addr = alloca double*, align 8
  %outg.addr = alloca double*, align 8
  %outb.addr = alloca double*, align 8
  store double %inr, double* %inr.addr, align 8
  store double %ing, double* %ing.addr, align 8
  store double %inb, double* %inb.addr, align 8
  store double* %outr, double** %outr.addr, align 8
  store double* %outg, double** %outg.addr, align 8
  store double* %outb, double** %outb.addr, align 8
  %0 = load double, double* %inr.addr, align 8
  %conv = fptosi double %0 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* @powtable, i32 0, i64 %idxprom
  %1 = load double, double* %arrayidx, align 8
  store double %1, double* %inr.addr, align 8
  %2 = load double, double* %ing.addr, align 8
  %conv1 = fptosi double %2 to i32
  %idxprom2 = sext i32 %conv1 to i64
  %arrayidx3 = getelementptr inbounds [256 x double], [256 x double]* @powtable, i32 0, i64 %idxprom2
  %3 = load double, double* %arrayidx3, align 8
  store double %3, double* %ing.addr, align 8
  %4 = load double, double* %inb.addr, align 8
  %conv4 = fptosi double %4 to i32
  %idxprom5 = sext i32 %conv4 to i64
  %arrayidx6 = getelementptr inbounds [256 x double], [256 x double]* @powtable, i32 0, i64 %idxprom5
  %5 = load double, double* %arrayidx6, align 8
  store double %5, double* %inb.addr, align 8
  call void @rgb_to_xyz(double* %inr.addr, double* %ing.addr, double* %inb.addr)
  call void @xyz_to_lab(double* %inr.addr, double* %ing.addr, double* %inb.addr)
  %6 = load double, double* %inr.addr, align 8
  %7 = load double*, double** %outr.addr, align 8
  store double %6, double* %7, align 8
  %8 = load double, double* %ing.addr, align 8
  %9 = load double*, double** %outg.addr, align 8
  store double %8, double* %9, align 8
  %10 = load double, double* %inb.addr, align 8
  %11 = load double*, double** %outb.addr, align 8
  store double %10, double* %11, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rgb_to_xyz(double* %inr_outx, double* %ing_outy, double* %inb_outz) #0 {
entry:
  %inr_outx.addr = alloca double*, align 8
  %ing_outy.addr = alloca double*, align 8
  %inb_outz.addr = alloca double*, align 8
  %r = alloca double, align 8
  %g = alloca double, align 8
  %b = alloca double, align 8
  store double* %inr_outx, double** %inr_outx.addr, align 8
  store double* %ing_outy, double** %ing_outy.addr, align 8
  store double* %inb_outz, double** %inb_outz.addr, align 8
  %0 = load double*, double** %inr_outx.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %r, align 8
  %2 = load double*, double** %ing_outy.addr, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* %g, align 8
  %4 = load double*, double** %inb_outz.addr, align 8
  %5 = load double, double* %4, align 8
  store double %5, double* %b, align 8
  %6 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 0, i64 0), align 8
  %7 = load double, double* %r, align 8
  %mul = fmul double %6, %7
  %8 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 0, i64 1), align 8
  %9 = load double, double* %g, align 8
  %mul1 = fmul double %8, %9
  %add = fadd double %mul, %mul1
  %10 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 0, i64 2), align 8
  %11 = load double, double* %b, align 8
  %mul2 = fmul double %10, %11
  %add3 = fadd double %add, %mul2
  %12 = load double*, double** %inr_outx.addr, align 8
  store double %add3, double* %12, align 8
  %13 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 1, i64 0), align 8
  %14 = load double, double* %r, align 8
  %mul4 = fmul double %13, %14
  %15 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 1, i64 1), align 8
  %16 = load double, double* %g, align 8
  %mul5 = fmul double %15, %16
  %add6 = fadd double %mul4, %mul5
  %17 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 1, i64 2), align 8
  %18 = load double, double* %b, align 8
  %mul7 = fmul double %17, %18
  %add8 = fadd double %add6, %mul7
  %19 = load double*, double** %ing_outy.addr, align 8
  store double %add8, double* %19, align 8
  %20 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 2, i64 0), align 8
  %21 = load double, double* %r, align 8
  %mul9 = fmul double %20, %21
  %22 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 2, i64 1), align 8
  %23 = load double, double* %g, align 8
  %mul10 = fmul double %22, %23
  %add11 = fadd double %mul9, %mul10
  %24 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mrgb_to_xyz, i32 0, i64 2, i64 2), align 8
  %25 = load double, double* %b, align 8
  %mul12 = fmul double %24, %25
  %add13 = fadd double %add11, %mul12
  %26 = load double*, double** %inb_outz.addr, align 8
  store double %add13, double* %26, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xyz_to_lab(double* %inx, double* %iny, double* %inz) #0 {
entry:
  %inx.addr = alloca double*, align 8
  %iny.addr = alloca double*, align 8
  %inz.addr = alloca double*, align 8
  %L = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  %ffuncY = alloca double, align 8
  %X = alloca double, align 8
  %Y = alloca double, align 8
  %Z = alloca double, align 8
  store double* %inx, double** %inx.addr, align 8
  store double* %iny, double** %iny.addr, align 8
  store double* %inz, double** %inz.addr, align 8
  %0 = load double*, double** %inx.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %X, align 8
  %2 = load double*, double** %iny.addr, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* %Y, align 8
  %4 = load double*, double** %inz.addr, align 8
  %5 = load double, double* %4, align 8
  store double %5, double* %Z, align 8
  %6 = load double, double* %Y, align 8
  %cmp = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %7 = load double, double* %Y, align 8
  %cmp1 = fcmp ogt double %7, 0x3F82231840000000
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %8 = load double, double* %Y, align 8
  %call = call double @cbrt(double %8) #3
  %mul = fmul double 1.160000e+02, %call
  %sub = fsub double %mul, 1.600000e+01
  store double %sub, double* %L, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = load double, double* %Y, align 8
  %mul3 = fmul double %9, 0x408C3A6660000000
  store double %mul3, double* %L, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.5

if.else.4:                                        ; preds = %entry
  store double 0.000000e+00, double* %L, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else.4, %if.end
  %10 = load double, double* %Y, align 8
  %call6 = call double @ffunc(double %10)
  store double %call6, double* %ffuncY, align 8
  %11 = load double, double* %X, align 8
  %12 = load double, double* @xnn, align 8
  %div = fdiv double %11, %12
  %call7 = call double @ffunc(double %div)
  %13 = load double, double* %ffuncY, align 8
  %sub8 = fsub double %call7, %13
  %mul9 = fmul double 5.000000e+02, %sub8
  store double %mul9, double* %a, align 8
  %14 = load double, double* %ffuncY, align 8
  %15 = load double, double* %Z, align 8
  %16 = load double, double* @znn, align 8
  %div10 = fdiv double %15, %16
  %call11 = call double @ffunc(double %div10)
  %sub12 = fsub double %14, %call11
  %mul13 = fmul double 2.000000e+02, %sub12
  store double %mul13, double* %b, align 8
  %17 = load double, double* %L, align 8
  %18 = load double*, double** %inx.addr, align 8
  store double %17, double* %18, align 8
  %19 = load double, double* %a, align 8
  %20 = load double*, double** %iny.addr, align 8
  store double %19, double* %20, align 8
  %21 = load double, double* %b, align 8
  %22 = load double*, double** %inz.addr, align 8
  store double %21, double* %22, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @cpercep_space_to_rgb(double %inr, double %ing, double %inb, double* %outr, double* %outg, double* %outb) #0 {
entry:
  %inr.addr = alloca double, align 8
  %ing.addr = alloca double, align 8
  %inb.addr = alloca double, align 8
  %outr.addr = alloca double*, align 8
  %outg.addr = alloca double*, align 8
  %outb.addr = alloca double*, align 8
  store double %inr, double* %inr.addr, align 8
  store double %ing, double* %ing.addr, align 8
  store double %inb, double* %inb.addr, align 8
  store double* %outr, double** %outr.addr, align 8
  store double* %outg, double** %outg.addr, align 8
  store double* %outb, double** %outb.addr, align 8
  call void @lab_to_xyz(double* %inr.addr, double* %ing.addr, double* %inb.addr)
  call void @xyz_to_rgb(double* %inr.addr, double* %ing.addr, double* %inb.addr)
  %0 = load double, double* %inr.addr, align 8
  %cmp = fcmp ogt double %0, 1.000000e+00
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end.4

cond.false:                                       ; preds = %entry
  %1 = load double, double* %inr.addr, align 8
  %cmp1 = fcmp olt double %1, 0.000000e+00
  br i1 %cmp1, label %cond.true.2, label %cond.false.3

cond.true.2:                                      ; preds = %cond.false
  br label %cond.end

cond.false.3:                                     ; preds = %cond.false
  %2 = load double, double* %inr.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.3, %cond.true.2
  %cond = phi double [ 0.000000e+00, %cond.true.2 ], [ %2, %cond.false.3 ]
  br label %cond.end.4

cond.end.4:                                       ; preds = %cond.end, %cond.true
  %cond5 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  store double %cond5, double* %inr.addr, align 8
  %3 = load double, double* %ing.addr, align 8
  %cmp6 = fcmp ogt double %3, 1.000000e+00
  br i1 %cmp6, label %cond.true.7, label %cond.false.8

cond.true.7:                                      ; preds = %cond.end.4
  br label %cond.end.14

cond.false.8:                                     ; preds = %cond.end.4
  %4 = load double, double* %ing.addr, align 8
  %cmp9 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %cond.false.8
  br label %cond.end.12

cond.false.11:                                    ; preds = %cond.false.8
  %5 = load double, double* %ing.addr, align 8
  br label %cond.end.12

cond.end.12:                                      ; preds = %cond.false.11, %cond.true.10
  %cond13 = phi double [ 0.000000e+00, %cond.true.10 ], [ %5, %cond.false.11 ]
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.end.12, %cond.true.7
  %cond15 = phi double [ 1.000000e+00, %cond.true.7 ], [ %cond13, %cond.end.12 ]
  store double %cond15, double* %ing.addr, align 8
  %6 = load double, double* %inb.addr, align 8
  %cmp16 = fcmp ogt double %6, 1.000000e+00
  br i1 %cmp16, label %cond.true.17, label %cond.false.18

cond.true.17:                                     ; preds = %cond.end.14
  br label %cond.end.24

cond.false.18:                                    ; preds = %cond.end.14
  %7 = load double, double* %inb.addr, align 8
  %cmp19 = fcmp olt double %7, 0.000000e+00
  br i1 %cmp19, label %cond.true.20, label %cond.false.21

cond.true.20:                                     ; preds = %cond.false.18
  br label %cond.end.22

cond.false.21:                                    ; preds = %cond.false.18
  %8 = load double, double* %inb.addr, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.true.20
  %cond23 = phi double [ 0.000000e+00, %cond.true.20 ], [ %8, %cond.false.21 ]
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.end.22, %cond.true.17
  %cond25 = phi double [ 1.000000e+00, %cond.true.17 ], [ %cond23, %cond.end.22 ]
  store double %cond25, double* %inb.addr, align 8
  %9 = load double, double* %inr.addr, align 8
  %cmp26 = fcmp ole double %9, 0x3F68E7DC80000000
  br i1 %cmp26, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end.24
  %10 = load double, double* %inr.addr, align 8
  %mul = fmul double %10, 0x40A9BD3340000000
  store double %mul, double* %inr.addr, align 8
  br label %if.end

if.else:                                          ; preds = %cond.end.24
  %11 = load double, double* %inr.addr, align 8
  %call = call double @pow(double %11, double 0x3FDAAAAAA0000000) #3
  %mul27 = fmul double %call, 0x4070D06660000000
  %sub = fsub double %mul27, 0x402C0CCCC0000000
  store double %sub, double* %inr.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %12 = load double, double* %ing.addr, align 8
  %cmp28 = fcmp ole double %12, 0x3F68E7DC80000000
  br i1 %cmp28, label %if.then.29, label %if.else.31

if.then.29:                                       ; preds = %if.end
  %13 = load double, double* %ing.addr, align 8
  %mul30 = fmul double %13, 0x40A9BD3340000000
  store double %mul30, double* %ing.addr, align 8
  br label %if.end.35

if.else.31:                                       ; preds = %if.end
  %14 = load double, double* %ing.addr, align 8
  %call32 = call double @pow(double %14, double 0x3FDAAAAAA0000000) #3
  %mul33 = fmul double %call32, 0x4070D06660000000
  %sub34 = fsub double %mul33, 0x402C0CCCC0000000
  store double %sub34, double* %ing.addr, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.31, %if.then.29
  %15 = load double, double* %inb.addr, align 8
  %cmp36 = fcmp ole double %15, 0x3F68E7DC80000000
  br i1 %cmp36, label %if.then.37, label %if.else.39

if.then.37:                                       ; preds = %if.end.35
  %16 = load double, double* %inb.addr, align 8
  %mul38 = fmul double %16, 0x40A9BD3340000000
  store double %mul38, double* %inb.addr, align 8
  br label %if.end.43

if.else.39:                                       ; preds = %if.end.35
  %17 = load double, double* %inb.addr, align 8
  %call40 = call double @pow(double %17, double 0x3FDAAAAAA0000000) #3
  %mul41 = fmul double %call40, 0x4070D06660000000
  %sub42 = fsub double %mul41, 0x402C0CCCC0000000
  store double %sub42, double* %inb.addr, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.39, %if.then.37
  %18 = load double, double* %inr.addr, align 8
  %19 = load double*, double** %outr.addr, align 8
  store double %18, double* %19, align 8
  %20 = load double, double* %ing.addr, align 8
  %21 = load double*, double** %outg.addr, align 8
  store double %20, double* %21, align 8
  %22 = load double, double* %inb.addr, align 8
  %23 = load double*, double** %outb.addr, align 8
  store double %22, double* %23, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @lab_to_xyz(double* %inl, double* %ina, double* %inb) #0 {
entry:
  %inl.addr = alloca double*, align 8
  %ina.addr = alloca double*, align 8
  %inb.addr = alloca double*, align 8
  %X = alloca double, align 8
  %Y = alloca double, align 8
  %Z = alloca double, align 8
  %P = alloca double, align 8
  %L = alloca double, align 8
  %a = alloca double, align 8
  %b = alloca double, align 8
  store double* %inl, double** %inl.addr, align 8
  store double* %ina, double** %ina.addr, align 8
  store double* %inb, double** %inb.addr, align 8
  %0 = load double*, double** %inl.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %L, align 8
  %2 = load double*, double** %ina.addr, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* %a, align 8
  %4 = load double*, double** %inb.addr, align 8
  %5 = load double, double* %4, align 8
  store double %5, double* %b, align 8
  %6 = load double, double* %L, align 8
  %cmp = fcmp ogt double %6, 0x401FFF9500000000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %7 = load double, double* %L, align 8
  %add = fadd double %7, 1.600000e+01
  %div = fdiv double %add, 1.160000e+02
  store double %div, double* %Y, align 8
  store double %div, double* %P, align 8
  %8 = load double, double* %Y, align 8
  %9 = load double, double* %Y, align 8
  %mul = fmul double %8, %9
  %10 = load double, double* %Y, align 8
  %mul1 = fmul double %mul, %10
  store double %mul1, double* %Y, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load double, double* %L, align 8
  %div2 = fdiv double %11, 0x408C3A6660000000
  store double %div2, double* %Y, align 8
  %12 = load double, double* %Y, align 8
  %mul3 = fmul double 0x401F25E360000000, %12
  %add4 = fadd double %mul3, 0x3FC1A7B960000000
  store double %add4, double* %P, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %13 = load double, double* %P, align 8
  %14 = load double, double* %a, align 8
  %div5 = fdiv double %14, 5.000000e+02
  %add6 = fadd double %13, %div5
  store double %add6, double* %X, align 8
  %15 = load double, double* @xnn, align 8
  %16 = load double, double* %X, align 8
  %call = call double @ffunc_inv(double %16)
  %mul7 = fmul double %15, %call
  store double %mul7, double* %X, align 8
  %17 = load double, double* %P, align 8
  %18 = load double, double* %b, align 8
  %div8 = fdiv double %18, 2.000000e+02
  %sub = fsub double %17, %div8
  store double %sub, double* %Z, align 8
  %19 = load double, double* @znn, align 8
  %20 = load double, double* %Z, align 8
  %call9 = call double @ffunc_inv(double %20)
  %mul10 = fmul double %19, %call9
  store double %mul10, double* %Z, align 8
  %21 = load double, double* %X, align 8
  %22 = load double*, double** %inl.addr, align 8
  store double %21, double* %22, align 8
  %23 = load double, double* %Y, align 8
  %24 = load double*, double** %ina.addr, align 8
  store double %23, double* %24, align 8
  %25 = load double, double* %Z, align 8
  %26 = load double*, double** %inb.addr, align 8
  store double %25, double* %26, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @xyz_to_rgb(double* %inx_outr, double* %iny_outg, double* %inz_outb) #0 {
entry:
  %inx_outr.addr = alloca double*, align 8
  %iny_outg.addr = alloca double*, align 8
  %inz_outb.addr = alloca double*, align 8
  %x = alloca double, align 8
  %y = alloca double, align 8
  %z = alloca double, align 8
  store double* %inx_outr, double** %inx_outr.addr, align 8
  store double* %iny_outg, double** %iny_outg.addr, align 8
  store double* %inz_outb, double** %inz_outb.addr, align 8
  %0 = load double*, double** %inx_outr.addr, align 8
  %1 = load double, double* %0, align 8
  store double %1, double* %x, align 8
  %2 = load double*, double** %iny_outg.addr, align 8
  %3 = load double, double* %2, align 8
  store double %3, double* %y, align 8
  %4 = load double*, double** %inz_outb.addr, align 8
  %5 = load double, double* %4, align 8
  store double %5, double* %z, align 8
  %6 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mxyz_to_rgb, i32 0, i64 0, i64 0), align 8
  %7 = load double, double* %x, align 8
  %mul = fmul double %6, %7
  %8 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mxyz_to_rgb, i32 0, i64 0, i64 1), align 8
  %9 = load double, double* %y, align 8
  %mul1 = fmul double %8, %9
  %add = fadd double %mul, %mul1
  %10 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mxyz_to_rgb, i32 0, i64 0, i64 2), align 8
  %11 = load double, double* %z, align 8
  %mul2 = fmul double %10, %11
  %add3 = fadd double %add, %mul2
  %12 = load double*, double** %inx_outr.addr, align 8
  store double %add3, double* %12, align 8
  %13 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mxyz_to_rgb, i32 0, i64 1, i64 0), align 8
  %14 = load double, double* %x, align 8
  %mul4 = fmul double %13, %14
  %15 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mxyz_to_rgb, i32 0, i64 1, i64 1), align 8
  %16 = load double, double* %y, align 8
  %mul5 = fmul double %15, %16
  %add6 = fadd double %mul4, %mul5
  %17 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mxyz_to_rgb, i32 0, i64 1, i64 2), align 8
  %18 = load double, double* %z, align 8
  %mul7 = fmul double %17, %18
  %add8 = fadd double %add6, %mul7
  %19 = load double*, double** %iny_outg.addr, align 8
  store double %add8, double* %19, align 8
  %20 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mxyz_to_rgb, i32 0, i64 2, i64 0), align 8
  %21 = load double, double* %x, align 8
  %mul9 = fmul double %20, %21
  %22 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mxyz_to_rgb, i32 0, i64 2, i64 1), align 8
  %23 = load double, double* %y, align 8
  %mul10 = fmul double %22, %23
  %add11 = fadd double %mul9, %mul10
  %24 = load double, double* getelementptr inbounds ([3 x [3 x double]], [3 x [3 x double]]* @Mxyz_to_rgb, i32 0, i64 2, i64 2), align 8
  %25 = load double, double* %z, align 8
  %mul12 = fmul double %24, %25
  %add13 = fadd double %add11, %mul12
  %26 = load double*, double** %inz_outb.addr, align 8
  store double %add13, double* %26, align 8
  ret void
}

; Function Attrs: nounwind
declare double @pow(double, double) #1

; Function Attrs: nounwind uwtable
define internal void @init_powtable(double %gamma) #0 {
entry:
  %gamma.addr = alloca double, align 8
  %i = alloca i32, align 4
  store double %gamma, double* %gamma.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to float
  %div = fdiv float %conv, 0x40A9BD3340000000
  %conv1 = fpext float %div to double
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* @powtable, i32 0, i64 %idxprom
  store double %conv1, double* %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.12, %for.end
  %4 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %4, 256
  br i1 %cmp3, label %for.body.5, label %for.end.14

for.body.5:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %i, align 4
  %conv6 = sitofp i32 %5 to float
  %div7 = fdiv float %conv6, 2.550000e+02
  %add = fadd float %div7, 0x3FAC28F5C0000000
  %div8 = fdiv float %add, 0x3FF0E147A0000000
  %conv9 = fpext float %div8 to double
  %call = call double @pow(double %conv9, double 0x4003333340000000) #3
  %6 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %6 to i64
  %arrayidx11 = getelementptr inbounds [256 x double], [256 x double]* @powtable, i32 0, i64 %idxprom10
  store double %call, double* %arrayidx11, align 8
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.5
  %7 = load i32, i32* %i, align 4
  %inc13 = add nsw i32 %7, 1
  store i32 %inc13, i32* %i, align 4
  br label %for.cond.2

for.end.14:                                       ; preds = %for.cond.2
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @Minvert([3 x double]* %src, [3 x double]* %dest) #0 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca [3 x double]*, align 8
  %dest.addr = alloca [3 x double]*, align 8
  %det = alloca double, align 8
  store [3 x double]* %src, [3 x double]** %src.addr, align 8
  store [3 x double]* %dest, [3 x double]** %dest.addr, align 8
  %0 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %0, i64 1
  %arrayidx1 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx, i32 0, i64 1
  %1 = load double, double* %arrayidx1, align 8
  %2 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx2 = getelementptr inbounds [3 x double], [3 x double]* %2, i64 2
  %arrayidx3 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx2, i32 0, i64 2
  %3 = load double, double* %arrayidx3, align 8
  %mul = fmul double %1, %3
  %4 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx4 = getelementptr inbounds [3 x double], [3 x double]* %4, i64 1
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx4, i32 0, i64 2
  %5 = load double, double* %arrayidx5, align 8
  %6 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx6 = getelementptr inbounds [3 x double], [3 x double]* %6, i64 2
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx6, i32 0, i64 1
  %7 = load double, double* %arrayidx7, align 8
  %mul8 = fmul double %5, %7
  %sub = fsub double %mul, %mul8
  %8 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx9 = getelementptr inbounds [3 x double], [3 x double]* %8, i64 0
  %arrayidx10 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx9, i32 0, i64 0
  store double %sub, double* %arrayidx10, align 8
  %9 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx11 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0
  %arrayidx12 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx11, i32 0, i64 2
  %10 = load double, double* %arrayidx12, align 8
  %11 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx13 = getelementptr inbounds [3 x double], [3 x double]* %11, i64 2
  %arrayidx14 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx13, i32 0, i64 1
  %12 = load double, double* %arrayidx14, align 8
  %mul15 = fmul double %10, %12
  %13 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx16 = getelementptr inbounds [3 x double], [3 x double]* %13, i64 0
  %arrayidx17 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx16, i32 0, i64 1
  %14 = load double, double* %arrayidx17, align 8
  %15 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx18 = getelementptr inbounds [3 x double], [3 x double]* %15, i64 2
  %arrayidx19 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx18, i32 0, i64 2
  %16 = load double, double* %arrayidx19, align 8
  %mul20 = fmul double %14, %16
  %sub21 = fsub double %mul15, %mul20
  %17 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx22 = getelementptr inbounds [3 x double], [3 x double]* %17, i64 0
  %arrayidx23 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx22, i32 0, i64 1
  store double %sub21, double* %arrayidx23, align 8
  %18 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx24 = getelementptr inbounds [3 x double], [3 x double]* %18, i64 0
  %arrayidx25 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx24, i32 0, i64 1
  %19 = load double, double* %arrayidx25, align 8
  %20 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx26 = getelementptr inbounds [3 x double], [3 x double]* %20, i64 1
  %arrayidx27 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx26, i32 0, i64 2
  %21 = load double, double* %arrayidx27, align 8
  %mul28 = fmul double %19, %21
  %22 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx29 = getelementptr inbounds [3 x double], [3 x double]* %22, i64 0
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx29, i32 0, i64 2
  %23 = load double, double* %arrayidx30, align 8
  %24 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx31 = getelementptr inbounds [3 x double], [3 x double]* %24, i64 1
  %arrayidx32 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx31, i32 0, i64 1
  %25 = load double, double* %arrayidx32, align 8
  %mul33 = fmul double %23, %25
  %sub34 = fsub double %mul28, %mul33
  %26 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx35 = getelementptr inbounds [3 x double], [3 x double]* %26, i64 0
  %arrayidx36 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx35, i32 0, i64 2
  store double %sub34, double* %arrayidx36, align 8
  %27 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx37 = getelementptr inbounds [3 x double], [3 x double]* %27, i64 1
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx37, i32 0, i64 2
  %28 = load double, double* %arrayidx38, align 8
  %29 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx39 = getelementptr inbounds [3 x double], [3 x double]* %29, i64 2
  %arrayidx40 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx39, i32 0, i64 0
  %30 = load double, double* %arrayidx40, align 8
  %mul41 = fmul double %28, %30
  %31 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx42 = getelementptr inbounds [3 x double], [3 x double]* %31, i64 1
  %arrayidx43 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx42, i32 0, i64 0
  %32 = load double, double* %arrayidx43, align 8
  %33 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx44 = getelementptr inbounds [3 x double], [3 x double]* %33, i64 2
  %arrayidx45 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx44, i32 0, i64 2
  %34 = load double, double* %arrayidx45, align 8
  %mul46 = fmul double %32, %34
  %sub47 = fsub double %mul41, %mul46
  %35 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx48 = getelementptr inbounds [3 x double], [3 x double]* %35, i64 1
  %arrayidx49 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx48, i32 0, i64 0
  store double %sub47, double* %arrayidx49, align 8
  %36 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx50 = getelementptr inbounds [3 x double], [3 x double]* %36, i64 0
  %arrayidx51 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx50, i32 0, i64 0
  %37 = load double, double* %arrayidx51, align 8
  %38 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx52 = getelementptr inbounds [3 x double], [3 x double]* %38, i64 2
  %arrayidx53 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx52, i32 0, i64 2
  %39 = load double, double* %arrayidx53, align 8
  %mul54 = fmul double %37, %39
  %40 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx55 = getelementptr inbounds [3 x double], [3 x double]* %40, i64 0
  %arrayidx56 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx55, i32 0, i64 2
  %41 = load double, double* %arrayidx56, align 8
  %42 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx57 = getelementptr inbounds [3 x double], [3 x double]* %42, i64 2
  %arrayidx58 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx57, i32 0, i64 0
  %43 = load double, double* %arrayidx58, align 8
  %mul59 = fmul double %41, %43
  %sub60 = fsub double %mul54, %mul59
  %44 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx61 = getelementptr inbounds [3 x double], [3 x double]* %44, i64 1
  %arrayidx62 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx61, i32 0, i64 1
  store double %sub60, double* %arrayidx62, align 8
  %45 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx63 = getelementptr inbounds [3 x double], [3 x double]* %45, i64 0
  %arrayidx64 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx63, i32 0, i64 2
  %46 = load double, double* %arrayidx64, align 8
  %47 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx65 = getelementptr inbounds [3 x double], [3 x double]* %47, i64 1
  %arrayidx66 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx65, i32 0, i64 0
  %48 = load double, double* %arrayidx66, align 8
  %mul67 = fmul double %46, %48
  %49 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx68 = getelementptr inbounds [3 x double], [3 x double]* %49, i64 0
  %arrayidx69 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx68, i32 0, i64 0
  %50 = load double, double* %arrayidx69, align 8
  %51 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx70 = getelementptr inbounds [3 x double], [3 x double]* %51, i64 1
  %arrayidx71 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx70, i32 0, i64 2
  %52 = load double, double* %arrayidx71, align 8
  %mul72 = fmul double %50, %52
  %sub73 = fsub double %mul67, %mul72
  %53 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx74 = getelementptr inbounds [3 x double], [3 x double]* %53, i64 1
  %arrayidx75 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx74, i32 0, i64 2
  store double %sub73, double* %arrayidx75, align 8
  %54 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx76 = getelementptr inbounds [3 x double], [3 x double]* %54, i64 1
  %arrayidx77 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx76, i32 0, i64 0
  %55 = load double, double* %arrayidx77, align 8
  %56 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx78 = getelementptr inbounds [3 x double], [3 x double]* %56, i64 2
  %arrayidx79 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx78, i32 0, i64 1
  %57 = load double, double* %arrayidx79, align 8
  %mul80 = fmul double %55, %57
  %58 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx81 = getelementptr inbounds [3 x double], [3 x double]* %58, i64 1
  %arrayidx82 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx81, i32 0, i64 1
  %59 = load double, double* %arrayidx82, align 8
  %60 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx83 = getelementptr inbounds [3 x double], [3 x double]* %60, i64 2
  %arrayidx84 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx83, i32 0, i64 0
  %61 = load double, double* %arrayidx84, align 8
  %mul85 = fmul double %59, %61
  %sub86 = fsub double %mul80, %mul85
  %62 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx87 = getelementptr inbounds [3 x double], [3 x double]* %62, i64 2
  %arrayidx88 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx87, i32 0, i64 0
  store double %sub86, double* %arrayidx88, align 8
  %63 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx89 = getelementptr inbounds [3 x double], [3 x double]* %63, i64 0
  %arrayidx90 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx89, i32 0, i64 1
  %64 = load double, double* %arrayidx90, align 8
  %65 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx91 = getelementptr inbounds [3 x double], [3 x double]* %65, i64 2
  %arrayidx92 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx91, i32 0, i64 0
  %66 = load double, double* %arrayidx92, align 8
  %mul93 = fmul double %64, %66
  %67 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx94 = getelementptr inbounds [3 x double], [3 x double]* %67, i64 0
  %arrayidx95 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx94, i32 0, i64 0
  %68 = load double, double* %arrayidx95, align 8
  %69 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx96 = getelementptr inbounds [3 x double], [3 x double]* %69, i64 2
  %arrayidx97 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx96, i32 0, i64 1
  %70 = load double, double* %arrayidx97, align 8
  %mul98 = fmul double %68, %70
  %sub99 = fsub double %mul93, %mul98
  %71 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx100 = getelementptr inbounds [3 x double], [3 x double]* %71, i64 2
  %arrayidx101 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx100, i32 0, i64 1
  store double %sub99, double* %arrayidx101, align 8
  %72 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx102 = getelementptr inbounds [3 x double], [3 x double]* %72, i64 0
  %arrayidx103 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx102, i32 0, i64 0
  %73 = load double, double* %arrayidx103, align 8
  %74 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx104 = getelementptr inbounds [3 x double], [3 x double]* %74, i64 1
  %arrayidx105 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx104, i32 0, i64 1
  %75 = load double, double* %arrayidx105, align 8
  %mul106 = fmul double %73, %75
  %76 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx107 = getelementptr inbounds [3 x double], [3 x double]* %76, i64 0
  %arrayidx108 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx107, i32 0, i64 1
  %77 = load double, double* %arrayidx108, align 8
  %78 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx109 = getelementptr inbounds [3 x double], [3 x double]* %78, i64 1
  %arrayidx110 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx109, i32 0, i64 0
  %79 = load double, double* %arrayidx110, align 8
  %mul111 = fmul double %77, %79
  %sub112 = fsub double %mul106, %mul111
  %80 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx113 = getelementptr inbounds [3 x double], [3 x double]* %80, i64 2
  %arrayidx114 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx113, i32 0, i64 2
  store double %sub112, double* %arrayidx114, align 8
  %81 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx115 = getelementptr inbounds [3 x double], [3 x double]* %81, i64 0
  %arrayidx116 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx115, i32 0, i64 0
  %82 = load double, double* %arrayidx116, align 8
  %83 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx117 = getelementptr inbounds [3 x double], [3 x double]* %83, i64 0
  %arrayidx118 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx117, i32 0, i64 0
  %84 = load double, double* %arrayidx118, align 8
  %mul119 = fmul double %82, %84
  %85 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx120 = getelementptr inbounds [3 x double], [3 x double]* %85, i64 0
  %arrayidx121 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx120, i32 0, i64 1
  %86 = load double, double* %arrayidx121, align 8
  %87 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx122 = getelementptr inbounds [3 x double], [3 x double]* %87, i64 1
  %arrayidx123 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx122, i32 0, i64 0
  %88 = load double, double* %arrayidx123, align 8
  %mul124 = fmul double %86, %88
  %add = fadd double %mul119, %mul124
  %89 = load [3 x double]*, [3 x double]** %src.addr, align 8
  %arrayidx125 = getelementptr inbounds [3 x double], [3 x double]* %89, i64 0
  %arrayidx126 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx125, i32 0, i64 2
  %90 = load double, double* %arrayidx126, align 8
  %91 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx127 = getelementptr inbounds [3 x double], [3 x double]* %91, i64 2
  %arrayidx128 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx127, i32 0, i64 0
  %92 = load double, double* %arrayidx128, align 8
  %mul129 = fmul double %90, %92
  %add130 = fadd double %add, %mul129
  store double %add130, double* %det, align 8
  %93 = load double, double* %det, align 8
  %cmp = fcmp ole double %93, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %94 = load double, double* %det, align 8
  %95 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx131 = getelementptr inbounds [3 x double], [3 x double]* %95, i64 0
  %arrayidx132 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx131, i32 0, i64 0
  %96 = load double, double* %arrayidx132, align 8
  %div = fdiv double %96, %94
  store double %div, double* %arrayidx132, align 8
  %97 = load double, double* %det, align 8
  %98 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx133 = getelementptr inbounds [3 x double], [3 x double]* %98, i64 0
  %arrayidx134 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx133, i32 0, i64 1
  %99 = load double, double* %arrayidx134, align 8
  %div135 = fdiv double %99, %97
  store double %div135, double* %arrayidx134, align 8
  %100 = load double, double* %det, align 8
  %101 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx136 = getelementptr inbounds [3 x double], [3 x double]* %101, i64 0
  %arrayidx137 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx136, i32 0, i64 2
  %102 = load double, double* %arrayidx137, align 8
  %div138 = fdiv double %102, %100
  store double %div138, double* %arrayidx137, align 8
  %103 = load double, double* %det, align 8
  %104 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx139 = getelementptr inbounds [3 x double], [3 x double]* %104, i64 1
  %arrayidx140 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx139, i32 0, i64 0
  %105 = load double, double* %arrayidx140, align 8
  %div141 = fdiv double %105, %103
  store double %div141, double* %arrayidx140, align 8
  %106 = load double, double* %det, align 8
  %107 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx142 = getelementptr inbounds [3 x double], [3 x double]* %107, i64 1
  %arrayidx143 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx142, i32 0, i64 1
  %108 = load double, double* %arrayidx143, align 8
  %div144 = fdiv double %108, %106
  store double %div144, double* %arrayidx143, align 8
  %109 = load double, double* %det, align 8
  %110 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx145 = getelementptr inbounds [3 x double], [3 x double]* %110, i64 1
  %arrayidx146 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx145, i32 0, i64 2
  %111 = load double, double* %arrayidx146, align 8
  %div147 = fdiv double %111, %109
  store double %div147, double* %arrayidx146, align 8
  %112 = load double, double* %det, align 8
  %113 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx148 = getelementptr inbounds [3 x double], [3 x double]* %113, i64 2
  %arrayidx149 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx148, i32 0, i64 0
  %114 = load double, double* %arrayidx149, align 8
  %div150 = fdiv double %114, %112
  store double %div150, double* %arrayidx149, align 8
  %115 = load double, double* %det, align 8
  %116 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx151 = getelementptr inbounds [3 x double], [3 x double]* %116, i64 2
  %arrayidx152 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx151, i32 0, i64 1
  %117 = load double, double* %arrayidx152, align 8
  %div153 = fdiv double %117, %115
  store double %div153, double* %arrayidx152, align 8
  %118 = load double, double* %det, align 8
  %119 = load [3 x double]*, [3 x double]** %dest.addr, align 8
  %arrayidx154 = getelementptr inbounds [3 x double], [3 x double]* %119, i64 2
  %arrayidx155 = getelementptr inbounds [3 x double], [3 x double]* %arrayidx154, i32 0, i64 2
  %120 = load double, double* %arrayidx155, align 8
  %div156 = fdiv double %120, %118
  store double %div156, double* %arrayidx155, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %121 = load i32, i32* %retval
  ret i32 %121
}

; Function Attrs: nounwind
declare double @cbrt(double) #1

; Function Attrs: inlinehint nounwind uwtable
define internal double @ffunc(double %t) #2 {
entry:
  %retval = alloca double, align 8
  %t.addr = alloca double, align 8
  store double %t, double* %t.addr, align 8
  %0 = load double, double* %t.addr, align 8
  %cmp = fcmp ogt double %0, 0x3F82231840000000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %t.addr, align 8
  %call = call double @cbrt(double %1) #3
  store double %call, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load double, double* %t.addr, align 8
  %mul = fmul double 0x401F25E360000000, %2
  %add = fadd double %mul, 0x3FC1A7B960000000
  store double %add, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load double, double* %retval
  ret double %3
}

; Function Attrs: inlinehint nounwind uwtable
define internal double @ffunc_inv(double %t) #2 {
entry:
  %retval = alloca double, align 8
  %t.addr = alloca double, align 8
  store double %t, double* %t.addr, align 8
  %0 = load double, double* %t.addr, align 8
  %cmp = fcmp ogt double %0, 0x3FCA7B7840000000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load double, double* %t.addr, align 8
  %2 = load double, double* %t.addr, align 8
  %mul = fmul double %1, %2
  %3 = load double, double* %t.addr, align 8
  %mul1 = fmul double %mul, %3
  store double %mul1, double* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load double, double* %t.addr, align 8
  %sub = fsub double %4, 0x3FC1A7B960000000
  %div = fdiv double %sub, 0x401F25E360000000
  store double %div, double* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %5 = load double, double* %retval
  ret double %5
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
