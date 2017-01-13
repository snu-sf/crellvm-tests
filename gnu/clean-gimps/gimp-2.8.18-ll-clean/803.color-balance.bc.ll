; ModuleID = './app/base/color-balance.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ColorBalance = type { i32, [3 x double], [3 x double], [3 x double], [256 x i8], [256 x i8], [256 x i8] }
%struct._PixelRegion = type { i8*, %struct._TileManager*, %struct._Tile*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct._TileManager = type opaque
%struct._Tile = type opaque

@.str = private unnamed_addr constant [10 x i8] c"Gimp-Base\00", align 1
@__func__.color_balance_init = private unnamed_addr constant [19 x i8] c"color_balance_init\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"cb != NULL\00", align 1
@__func__.color_balance_create_lookup_tables = private unnamed_addr constant [35 x i8] c"color_balance_create_lookup_tables\00", align 1
@transfer_initialized = internal global i32 0, align 4
@shadows = internal global [256 x double] zeroinitializer, align 16
@midtones = internal global [256 x double] zeroinitializer, align 16
@highlights = internal global [256 x double] zeroinitializer, align 16
@color_balance_transfer_init.a = internal constant double 6.400000e+01, align 8
@color_balance_transfer_init.b = internal constant double 8.500000e+01, align 8
@color_balance_transfer_init.scale = internal constant double 1.785000e+00, align 8

; Function Attrs: nounwind uwtable
define void @color_balance_init(%struct._ColorBalance* %cb) #0 {
entry:
  %cb.addr = alloca %struct._ColorBalance*, align 8
  %range = alloca i32, align 4
  store %struct._ColorBalance* %cb, %struct._ColorBalance** %cb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %cmp = icmp ne %struct._ColorBalance* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.color_balance_init, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %return

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  store i32 0, i32* %range, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %1 = load i32, i32* %range, align 4
  %cmp1 = icmp ule i32 %1, 2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %range, align 4
  %idxprom = zext i32 %2 to i64
  %3 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %cyan_red = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %cyan_red, i32 0, i64 %idxprom
  store double 0.000000e+00, double* %arrayidx, align 8
  %4 = load i32, i32* %range, align 4
  %idxprom2 = zext i32 %4 to i64
  %5 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %magenta_green = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %5, i32 0, i32 2
  %arrayidx3 = getelementptr inbounds [3 x double], [3 x double]* %magenta_green, i32 0, i64 %idxprom2
  store double 0.000000e+00, double* %arrayidx3, align 8
  %6 = load i32, i32* %range, align 4
  %idxprom4 = zext i32 %6 to i64
  %7 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %yellow_blue = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %7, i32 0, i32 3
  %arrayidx5 = getelementptr inbounds [3 x double], [3 x double]* %yellow_blue, i32 0, i64 %idxprom4
  store double 0.000000e+00, double* %arrayidx5, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %range, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %range, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %preserve_luminosity = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %9, i32 0, i32 0
  store i32 1, i32* %preserve_luminosity, align 4
  br label %return

return:                                           ; preds = %for.end, %if.else
  ret void
}

declare void @g_return_if_fail_warning(i8*, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @color_balance_create_lookup_tables(%struct._ColorBalance* %cb) #0 {
entry:
  %cb.addr = alloca %struct._ColorBalance*, align 8
  %i = alloca i32, align 4
  %r_n = alloca i32, align 4
  %g_n = alloca i32, align 4
  %b_n = alloca i32, align 4
  store %struct._ColorBalance* %cb, %struct._ColorBalance** %cb.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %cmp = icmp ne %struct._ColorBalance* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  call void @g_return_if_fail_warning(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @__func__.color_balance_create_lookup_tables, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0))
  br label %for.end

if.end:                                           ; preds = %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %1 = load i32, i32* @transfer_initialized, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %do.end
  call void @color_balance_transfer_init()
  store i32 1, i32* @transfer_initialized, align 4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %do.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.2
  %2 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %2, 256
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  store i32 %3, i32* %r_n, align 4
  %4 = load i32, i32* %i, align 4
  store i32 %4, i32* %g_n, align 4
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %b_n, align 4
  %6 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %cyan_red = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [3 x double], [3 x double]* %cyan_red, i32 0, i64 0
  %7 = load double, double* %arrayidx, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds [256 x double], [256 x double]* @shadows, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx4, align 8
  %mul = fmul double %7, %9
  %10 = load i32, i32* %r_n, align 4
  %conv = sitofp i32 %10 to double
  %add = fadd double %conv, %mul
  %conv5 = fptosi double %add to i32
  store i32 %conv5, i32* %r_n, align 4
  %11 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %cyan_red6 = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %11, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [3 x double], [3 x double]* %cyan_red6, i32 0, i64 1
  %12 = load double, double* %arrayidx7, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [256 x double], [256 x double]* @midtones, i32 0, i64 %idxprom8
  %14 = load double, double* %arrayidx9, align 8
  %mul10 = fmul double %12, %14
  %15 = load i32, i32* %r_n, align 4
  %conv11 = sitofp i32 %15 to double
  %add12 = fadd double %conv11, %mul10
  %conv13 = fptosi double %add12 to i32
  store i32 %conv13, i32* %r_n, align 4
  %16 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %cyan_red14 = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %16, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [3 x double], [3 x double]* %cyan_red14, i32 0, i64 2
  %17 = load double, double* %arrayidx15, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [256 x double], [256 x double]* @highlights, i32 0, i64 %idxprom16
  %19 = load double, double* %arrayidx17, align 8
  %mul18 = fmul double %17, %19
  %20 = load i32, i32* %r_n, align 4
  %conv19 = sitofp i32 %20 to double
  %add20 = fadd double %conv19, %mul18
  %conv21 = fptosi double %add20 to i32
  store i32 %conv21, i32* %r_n, align 4
  %21 = load i32, i32* %r_n, align 4
  %cmp22 = icmp sgt i32 %21, 255
  br i1 %cmp22, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.28

cond.false:                                       ; preds = %for.body
  %22 = load i32, i32* %r_n, align 4
  %cmp24 = icmp slt i32 %22, 0
  br i1 %cmp24, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.false
  br label %cond.end

cond.false.27:                                    ; preds = %cond.false
  %23 = load i32, i32* %r_n, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.27, %cond.true.26
  %cond = phi i32 [ 0, %cond.true.26 ], [ %23, %cond.false.27 ]
  br label %cond.end.28

cond.end.28:                                      ; preds = %cond.end, %cond.true
  %cond29 = phi i32 [ 255, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond29, i32* %r_n, align 4
  %24 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %magenta_green = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %24, i32 0, i32 2
  %arrayidx30 = getelementptr inbounds [3 x double], [3 x double]* %magenta_green, i32 0, i64 0
  %25 = load double, double* %arrayidx30, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %26 to i64
  %arrayidx32 = getelementptr inbounds [256 x double], [256 x double]* @shadows, i32 0, i64 %idxprom31
  %27 = load double, double* %arrayidx32, align 8
  %mul33 = fmul double %25, %27
  %28 = load i32, i32* %g_n, align 4
  %conv34 = sitofp i32 %28 to double
  %add35 = fadd double %conv34, %mul33
  %conv36 = fptosi double %add35 to i32
  store i32 %conv36, i32* %g_n, align 4
  %29 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %magenta_green37 = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %29, i32 0, i32 2
  %arrayidx38 = getelementptr inbounds [3 x double], [3 x double]* %magenta_green37, i32 0, i64 1
  %30 = load double, double* %arrayidx38, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %31 to i64
  %arrayidx40 = getelementptr inbounds [256 x double], [256 x double]* @midtones, i32 0, i64 %idxprom39
  %32 = load double, double* %arrayidx40, align 8
  %mul41 = fmul double %30, %32
  %33 = load i32, i32* %g_n, align 4
  %conv42 = sitofp i32 %33 to double
  %add43 = fadd double %conv42, %mul41
  %conv44 = fptosi double %add43 to i32
  store i32 %conv44, i32* %g_n, align 4
  %34 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %magenta_green45 = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %34, i32 0, i32 2
  %arrayidx46 = getelementptr inbounds [3 x double], [3 x double]* %magenta_green45, i32 0, i64 2
  %35 = load double, double* %arrayidx46, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom47 = sext i32 %36 to i64
  %arrayidx48 = getelementptr inbounds [256 x double], [256 x double]* @highlights, i32 0, i64 %idxprom47
  %37 = load double, double* %arrayidx48, align 8
  %mul49 = fmul double %35, %37
  %38 = load i32, i32* %g_n, align 4
  %conv50 = sitofp i32 %38 to double
  %add51 = fadd double %conv50, %mul49
  %conv52 = fptosi double %add51 to i32
  store i32 %conv52, i32* %g_n, align 4
  %39 = load i32, i32* %g_n, align 4
  %cmp53 = icmp sgt i32 %39, 255
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end.28
  br label %cond.end.63

cond.false.56:                                    ; preds = %cond.end.28
  %40 = load i32, i32* %g_n, align 4
  %cmp57 = icmp slt i32 %40, 0
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %cond.false.56
  br label %cond.end.61

cond.false.60:                                    ; preds = %cond.false.56
  %41 = load i32, i32* %g_n, align 4
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.59
  %cond62 = phi i32 [ 0, %cond.true.59 ], [ %41, %cond.false.60 ]
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.end.61, %cond.true.55
  %cond64 = phi i32 [ 255, %cond.true.55 ], [ %cond62, %cond.end.61 ]
  store i32 %cond64, i32* %g_n, align 4
  %42 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %yellow_blue = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %42, i32 0, i32 3
  %arrayidx65 = getelementptr inbounds [3 x double], [3 x double]* %yellow_blue, i32 0, i64 0
  %43 = load double, double* %arrayidx65, align 8
  %44 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %44 to i64
  %arrayidx67 = getelementptr inbounds [256 x double], [256 x double]* @shadows, i32 0, i64 %idxprom66
  %45 = load double, double* %arrayidx67, align 8
  %mul68 = fmul double %43, %45
  %46 = load i32, i32* %b_n, align 4
  %conv69 = sitofp i32 %46 to double
  %add70 = fadd double %conv69, %mul68
  %conv71 = fptosi double %add70 to i32
  store i32 %conv71, i32* %b_n, align 4
  %47 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %yellow_blue72 = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %47, i32 0, i32 3
  %arrayidx73 = getelementptr inbounds [3 x double], [3 x double]* %yellow_blue72, i32 0, i64 1
  %48 = load double, double* %arrayidx73, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom74 = sext i32 %49 to i64
  %arrayidx75 = getelementptr inbounds [256 x double], [256 x double]* @midtones, i32 0, i64 %idxprom74
  %50 = load double, double* %arrayidx75, align 8
  %mul76 = fmul double %48, %50
  %51 = load i32, i32* %b_n, align 4
  %conv77 = sitofp i32 %51 to double
  %add78 = fadd double %conv77, %mul76
  %conv79 = fptosi double %add78 to i32
  store i32 %conv79, i32* %b_n, align 4
  %52 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %yellow_blue80 = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %52, i32 0, i32 3
  %arrayidx81 = getelementptr inbounds [3 x double], [3 x double]* %yellow_blue80, i32 0, i64 2
  %53 = load double, double* %arrayidx81, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom82 = sext i32 %54 to i64
  %arrayidx83 = getelementptr inbounds [256 x double], [256 x double]* @highlights, i32 0, i64 %idxprom82
  %55 = load double, double* %arrayidx83, align 8
  %mul84 = fmul double %53, %55
  %56 = load i32, i32* %b_n, align 4
  %conv85 = sitofp i32 %56 to double
  %add86 = fadd double %conv85, %mul84
  %conv87 = fptosi double %add86 to i32
  store i32 %conv87, i32* %b_n, align 4
  %57 = load i32, i32* %b_n, align 4
  %cmp88 = icmp sgt i32 %57, 255
  br i1 %cmp88, label %cond.true.90, label %cond.false.91

cond.true.90:                                     ; preds = %cond.end.63
  br label %cond.end.98

cond.false.91:                                    ; preds = %cond.end.63
  %58 = load i32, i32* %b_n, align 4
  %cmp92 = icmp slt i32 %58, 0
  br i1 %cmp92, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %cond.false.91
  br label %cond.end.96

cond.false.95:                                    ; preds = %cond.false.91
  %59 = load i32, i32* %b_n, align 4
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.94
  %cond97 = phi i32 [ 0, %cond.true.94 ], [ %59, %cond.false.95 ]
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.end.96, %cond.true.90
  %cond99 = phi i32 [ 255, %cond.true.90 ], [ %cond97, %cond.end.96 ]
  store i32 %cond99, i32* %b_n, align 4
  %60 = load i32, i32* %r_n, align 4
  %conv100 = trunc i32 %60 to i8
  %61 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %61 to i64
  %62 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %r_lookup = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %62, i32 0, i32 4
  %arrayidx102 = getelementptr inbounds [256 x i8], [256 x i8]* %r_lookup, i32 0, i64 %idxprom101
  store i8 %conv100, i8* %arrayidx102, align 1
  %63 = load i32, i32* %g_n, align 4
  %conv103 = trunc i32 %63 to i8
  %64 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %64 to i64
  %65 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %g_lookup = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %65, i32 0, i32 5
  %arrayidx105 = getelementptr inbounds [256 x i8], [256 x i8]* %g_lookup, i32 0, i64 %idxprom104
  store i8 %conv103, i8* %arrayidx105, align 1
  %66 = load i32, i32* %b_n, align 4
  %conv106 = trunc i32 %66 to i8
  %67 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %67 to i64
  %68 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %b_lookup = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %68, i32 0, i32 6
  %arrayidx108 = getelementptr inbounds [256 x i8], [256 x i8]* %b_lookup, i32 0, i64 %idxprom107
  store i8 %conv106, i8* %arrayidx108, align 1
  br label %for.inc

for.inc:                                          ; preds = %cond.end.98
  %69 = load i32, i32* %i, align 4
  %inc = add nsw i32 %69, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.else, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @color_balance_transfer_init() #0 {
entry:
  %i = alloca i32, align 4
  %low = alloca double, align 8
  %mid = alloca double, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %conv = sitofp i32 %1 to double
  %sub = fsub double %conv, 8.500000e+01
  %div = fdiv double %sub, -6.400000e+01
  %add = fadd double %div, 5.000000e-01
  %cmp1 = fcmp ogt double %add, 1.000000e+00
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  br label %cond.end.15

cond.false:                                       ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %conv3 = sitofp i32 %2 to double
  %sub4 = fsub double %conv3, 8.500000e+01
  %div5 = fdiv double %sub4, -6.400000e+01
  %add6 = fadd double %div5, 5.000000e-01
  %cmp7 = fcmp olt double %add6, 0.000000e+00
  br i1 %cmp7, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.false
  br label %cond.end

cond.false.10:                                    ; preds = %cond.false
  %3 = load i32, i32* %i, align 4
  %conv11 = sitofp i32 %3 to double
  %sub12 = fsub double %conv11, 8.500000e+01
  %div13 = fdiv double %sub12, -6.400000e+01
  %add14 = fadd double %div13, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %cond.false.10, %cond.true.9
  %cond = phi double [ 0.000000e+00, %cond.true.9 ], [ %add14, %cond.false.10 ]
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.end, %cond.true
  %cond16 = phi double [ 1.000000e+00, %cond.true ], [ %cond, %cond.end ]
  %mul = fmul double %cond16, 1.785000e+00
  store double %mul, double* %low, align 8
  %4 = load i32, i32* %i, align 4
  %conv17 = sitofp i32 %4 to double
  %sub18 = fsub double %conv17, 8.500000e+01
  %div19 = fdiv double %sub18, 6.400000e+01
  %add20 = fadd double %div19, 5.000000e-01
  %cmp21 = fcmp ogt double %add20, 1.000000e+00
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end.15
  br label %cond.end.39

cond.false.24:                                    ; preds = %cond.end.15
  %5 = load i32, i32* %i, align 4
  %conv25 = sitofp i32 %5 to double
  %sub26 = fsub double %conv25, 8.500000e+01
  %div27 = fdiv double %sub26, 6.400000e+01
  %add28 = fadd double %div27, 5.000000e-01
  %cmp29 = fcmp olt double %add28, 0.000000e+00
  br i1 %cmp29, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %cond.false.24
  br label %cond.end.37

cond.false.32:                                    ; preds = %cond.false.24
  %6 = load i32, i32* %i, align 4
  %conv33 = sitofp i32 %6 to double
  %sub34 = fsub double %conv33, 8.500000e+01
  %div35 = fdiv double %sub34, 6.400000e+01
  %add36 = fadd double %div35, 5.000000e-01
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.32, %cond.true.31
  %cond38 = phi double [ 0.000000e+00, %cond.true.31 ], [ %add36, %cond.false.32 ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end.37, %cond.true.23
  %cond40 = phi double [ 1.000000e+00, %cond.true.23 ], [ %cond38, %cond.end.37 ]
  %7 = load i32, i32* %i, align 4
  %conv41 = sitofp i32 %7 to double
  %add42 = fadd double %conv41, 8.500000e+01
  %sub43 = fsub double %add42, 2.550000e+02
  %div44 = fdiv double %sub43, -6.400000e+01
  %add45 = fadd double %div44, 5.000000e-01
  %cmp46 = fcmp ogt double %add45, 1.000000e+00
  br i1 %cmp46, label %cond.true.48, label %cond.false.49

cond.true.48:                                     ; preds = %cond.end.39
  br label %cond.end.66

cond.false.49:                                    ; preds = %cond.end.39
  %8 = load i32, i32* %i, align 4
  %conv50 = sitofp i32 %8 to double
  %add51 = fadd double %conv50, 8.500000e+01
  %sub52 = fsub double %add51, 2.550000e+02
  %div53 = fdiv double %sub52, -6.400000e+01
  %add54 = fadd double %div53, 5.000000e-01
  %cmp55 = fcmp olt double %add54, 0.000000e+00
  br i1 %cmp55, label %cond.true.57, label %cond.false.58

cond.true.57:                                     ; preds = %cond.false.49
  br label %cond.end.64

cond.false.58:                                    ; preds = %cond.false.49
  %9 = load i32, i32* %i, align 4
  %conv59 = sitofp i32 %9 to double
  %add60 = fadd double %conv59, 8.500000e+01
  %sub61 = fsub double %add60, 2.550000e+02
  %div62 = fdiv double %sub61, -6.400000e+01
  %add63 = fadd double %div62, 5.000000e-01
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.58, %cond.true.57
  %cond65 = phi double [ 0.000000e+00, %cond.true.57 ], [ %add63, %cond.false.58 ]
  br label %cond.end.66

cond.end.66:                                      ; preds = %cond.end.64, %cond.true.48
  %cond67 = phi double [ 1.000000e+00, %cond.true.48 ], [ %cond65, %cond.end.64 ]
  %mul68 = fmul double %cond40, %cond67
  %mul69 = fmul double %mul68, 1.785000e+00
  store double %mul69, double* %mid, align 8
  %10 = load double, double* %low, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx = getelementptr inbounds [256 x double], [256 x double]* @shadows, i32 0, i64 %idxprom
  store double %10, double* %arrayidx, align 8
  %12 = load double, double* %mid, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom70 = sext i32 %13 to i64
  %arrayidx71 = getelementptr inbounds [256 x double], [256 x double]* @midtones, i32 0, i64 %idxprom70
  store double %12, double* %arrayidx71, align 8
  %14 = load double, double* %low, align 8
  %15 = load i32, i32* %i, align 4
  %sub72 = sub nsw i32 255, %15
  %idxprom73 = sext i32 %sub72 to i64
  %arrayidx74 = getelementptr inbounds [256 x double], [256 x double]* @highlights, i32 0, i64 %idxprom73
  store double %14, double* %arrayidx74, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end.66
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @color_balance(%struct._ColorBalance* %cb, %struct._PixelRegion* %srcPR, %struct._PixelRegion* %destPR) #0 {
entry:
  %cb.addr = alloca %struct._ColorBalance*, align 8
  %srcPR.addr = alloca %struct._PixelRegion*, align 8
  %destPR.addr = alloca %struct._PixelRegion*, align 8
  %src = alloca i8*, align 8
  %s = alloca i8*, align 8
  %dest = alloca i8*, align 8
  %d = alloca i8*, align 8
  %alpha = alloca i32, align 4
  %r = alloca i32, align 4
  %g = alloca i32, align 4
  %b = alloca i32, align 4
  %r_n = alloca i32, align 4
  %g_n = alloca i32, align 4
  %b_n = alloca i32, align 4
  %w = alloca i32, align 4
  %h = alloca i32, align 4
  store %struct._ColorBalance* %cb, %struct._ColorBalance** %cb.addr, align 8
  store %struct._PixelRegion* %srcPR, %struct._PixelRegion** %srcPR.addr, align 8
  store %struct._PixelRegion* %destPR, %struct._PixelRegion** %destPR.addr, align 8
  %0 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %h1 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %0, i32 0, i32 9
  %1 = load i32, i32* %h1, align 4
  store i32 %1, i32* %h, align 4
  %2 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %data = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %2, i32 0, i32 0
  %3 = load i8*, i8** %data, align 8
  store i8* %3, i8** %src, align 8
  %4 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %data2 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %4, i32 0, i32 0
  %5 = load i8*, i8** %data2, align 8
  store i8* %5, i8** %dest, align 8
  %6 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %call = call i32 @pixel_region_has_alpha(%struct._PixelRegion* %6)
  store i32 %call, i32* %alpha, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %7 = load i32, i32* %h, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, i32* %h, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %while.body, label %while.end.41

while.body:                                       ; preds = %while.cond
  %8 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %w3 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %8, i32 0, i32 8
  %9 = load i32, i32* %w3, align 4
  store i32 %9, i32* %w, align 4
  %10 = load i8*, i8** %src, align 8
  store i8* %10, i8** %s, align 8
  %11 = load i8*, i8** %dest, align 8
  store i8* %11, i8** %d, align 8
  br label %while.cond.4

while.cond.4:                                     ; preds = %if.end.32, %while.body
  %12 = load i32, i32* %w, align 4
  %dec5 = add nsw i32 %12, -1
  store i32 %dec5, i32* %w, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %while.body.7, label %while.end

while.body.7:                                     ; preds = %while.cond.4
  %13 = load i8*, i8** %s, align 8
  %arrayidx = getelementptr inbounds i8, i8* %13, i64 0
  %14 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %r, align 4
  %15 = load i8*, i8** %s, align 8
  %arrayidx8 = getelementptr inbounds i8, i8* %15, i64 1
  %16 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %16 to i32
  store i32 %conv9, i32* %g, align 4
  %17 = load i8*, i8** %s, align 8
  %arrayidx10 = getelementptr inbounds i8, i8* %17, i64 2
  %18 = load i8, i8* %arrayidx10, align 1
  %conv11 = zext i8 %18 to i32
  store i32 %conv11, i32* %b, align 4
  %19 = load i32, i32* %r, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %r_lookup = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %20, i32 0, i32 4
  %arrayidx12 = getelementptr inbounds [256 x i8], [256 x i8]* %r_lookup, i32 0, i64 %idxprom
  %21 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %21 to i32
  store i32 %conv13, i32* %r_n, align 4
  %22 = load i32, i32* %g, align 4
  %idxprom14 = sext i32 %22 to i64
  %23 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %g_lookup = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %23, i32 0, i32 5
  %arrayidx15 = getelementptr inbounds [256 x i8], [256 x i8]* %g_lookup, i32 0, i64 %idxprom14
  %24 = load i8, i8* %arrayidx15, align 1
  %conv16 = zext i8 %24 to i32
  store i32 %conv16, i32* %g_n, align 4
  %25 = load i32, i32* %b, align 4
  %idxprom17 = sext i32 %25 to i64
  %26 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %b_lookup = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %26, i32 0, i32 6
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* %b_lookup, i32 0, i64 %idxprom17
  %27 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %27 to i32
  store i32 %conv19, i32* %b_n, align 4
  %28 = load %struct._ColorBalance*, %struct._ColorBalance** %cb.addr, align 8
  %preserve_luminosity = getelementptr inbounds %struct._ColorBalance, %struct._ColorBalance* %28, i32 0, i32 0
  %29 = load i32, i32* %preserve_luminosity, align 4
  %tobool20 = icmp ne i32 %29, 0
  br i1 %tobool20, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.7
  call void @gimp_rgb_to_hsl_int(i32* %r_n, i32* %g_n, i32* %b_n)
  %30 = load i32, i32* %r, align 4
  %31 = load i32, i32* %g, align 4
  %32 = load i32, i32* %b, align 4
  %call21 = call i32 @gimp_rgb_to_l_int(i32 %30, i32 %31, i32 %32)
  store i32 %call21, i32* %b_n, align 4
  call void @gimp_hsl_to_rgb_int(i32* %r_n, i32* %g_n, i32* %b_n)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.7
  %33 = load i32, i32* %r_n, align 4
  %conv22 = trunc i32 %33 to i8
  %34 = load i8*, i8** %d, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %conv22, i8* %arrayidx23, align 1
  %35 = load i32, i32* %g_n, align 4
  %conv24 = trunc i32 %35 to i8
  %36 = load i8*, i8** %d, align 8
  %arrayidx25 = getelementptr inbounds i8, i8* %36, i64 1
  store i8 %conv24, i8* %arrayidx25, align 1
  %37 = load i32, i32* %b_n, align 4
  %conv26 = trunc i32 %37 to i8
  %38 = load i8*, i8** %d, align 8
  %arrayidx27 = getelementptr inbounds i8, i8* %38, i64 2
  store i8 %conv26, i8* %arrayidx27, align 1
  %39 = load i32, i32* %alpha, align 4
  %tobool28 = icmp ne i32 %39, 0
  br i1 %tobool28, label %if.then.29, label %if.end.32

if.then.29:                                       ; preds = %if.end
  %40 = load i8*, i8** %s, align 8
  %arrayidx30 = getelementptr inbounds i8, i8* %40, i64 3
  %41 = load i8, i8* %arrayidx30, align 1
  %42 = load i8*, i8** %d, align 8
  %arrayidx31 = getelementptr inbounds i8, i8* %42, i64 3
  store i8 %41, i8* %arrayidx31, align 1
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.29, %if.end
  %43 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %bytes = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %43, i32 0, i32 10
  %44 = load i32, i32* %bytes, align 4
  %45 = load i8*, i8** %s, align 8
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr inbounds i8, i8* %45, i64 %idx.ext
  store i8* %add.ptr, i8** %s, align 8
  %46 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %bytes33 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %46, i32 0, i32 10
  %47 = load i32, i32* %bytes33, align 4
  %48 = load i8*, i8** %d, align 8
  %idx.ext34 = sext i32 %47 to i64
  %add.ptr35 = getelementptr inbounds i8, i8* %48, i64 %idx.ext34
  store i8* %add.ptr35, i8** %d, align 8
  br label %while.cond.4

while.end:                                        ; preds = %while.cond.4
  %49 = load %struct._PixelRegion*, %struct._PixelRegion** %srcPR.addr, align 8
  %rowstride = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %49, i32 0, i32 5
  %50 = load i32, i32* %rowstride, align 4
  %51 = load i8*, i8** %src, align 8
  %idx.ext36 = sext i32 %50 to i64
  %add.ptr37 = getelementptr inbounds i8, i8* %51, i64 %idx.ext36
  store i8* %add.ptr37, i8** %src, align 8
  %52 = load %struct._PixelRegion*, %struct._PixelRegion** %destPR.addr, align 8
  %rowstride38 = getelementptr inbounds %struct._PixelRegion, %struct._PixelRegion* %52, i32 0, i32 5
  %53 = load i32, i32* %rowstride38, align 4
  %54 = load i8*, i8** %dest, align 8
  %idx.ext39 = sext i32 %53 to i64
  %add.ptr40 = getelementptr inbounds i8, i8* %54, i64 %idx.ext39
  store i8* %add.ptr40, i8** %dest, align 8
  br label %while.cond

while.end.41:                                     ; preds = %while.cond
  ret void
}

declare i32 @pixel_region_has_alpha(%struct._PixelRegion*) #1

declare void @gimp_rgb_to_hsl_int(i32*, i32*, i32*) #1

declare i32 @gimp_rgb_to_l_int(i32, i32, i32) #1

declare void @gimp_hsl_to_rgb_int(i32*, i32*, i32*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
