; ModuleID = './app/widgets/gimpcairo-wilber.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cairo_path = type { i32, %union._cairo_path_data_t*, i32 }
%union._cairo_path_data_t = type { %struct.anon.0 }
%struct.anon.0 = type { double, double }
%struct._cairo = type opaque
%struct._cairo_surface = type opaque
%struct.ParsePathContext = type { %struct._cairo*, double, double, double, double, i8, i32, i32, [7 x double] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@wilber_x1 = internal global double 0.000000e+00, align 8
@wilber_y1 = internal global double 0.000000e+00, align 8
@wilber_cairo_path = internal global %struct.cairo_path* null, align 8
@wilber_x2 = internal global double 0.000000e+00, align 8
@wilber_y2 = internal global double 0.000000e+00, align 8
@wilber_path = internal constant [2297 x i8] c"M 509.72445,438.68864 C 501.47706,469.77945 464.95038,491.54566 431.85915,497.74874 C 438.5216,503.01688 442.87782,511.227 442.87782,520.37375 C 442.87783,536.24746 429.95607,549.0223 414.08235,549.0223 C 398.20863,549.0223 385.28688,536.24746 385.28688,520.37375 C 385.28688,511.52403 389.27666,503.61286 395.57098,498.3364 C 359.36952,495.90384 343.70976,463.95812 343.70975,463.95814 L 342.68134,509.64891 C 342.68134,514.35021 342.08391,519.96098 340.18378,528.3072 C 339.84664,527.80364 339.51399,527.33515 339.15537,526.83804 C 330.25511,514.5011 317.25269,507.81431 306.39317,508.76741 C 302.77334,509.08511 299.47017,510.33348 296.54982,512.4403 C 284.86847,520.86757 284.97665,540.94721 296.84366,557.3965 C 306.96274,571.42287 322.32232,578.25612 333.8664,574.73254 C 391.94635,615.17624 532.16931,642.41915 509.72445,438.68864 z M 363.24953,501.1278 C 373.83202,501.12778 382.49549,509.79127 382.49549,520.37375 C 382.49549,530.95624 373.83201,539.47279 363.24953,539.47279 C 352.66706,539.47279 344.1505,530.95624 344.1505,520.37375 C 344.15049,509.79129 352.66706,501.1278 363.24953,501.1278 z M 305.80551,516.1132 C 311.68466,516.11318 316.38344,521.83985 316.38344,528.89486 C 316.38345,535.94982 311.68467,541.67652 305.80551,541.67652 C 299.92636,541.67652 295.08067,535.94987 295.08067,528.89486 C 295.08065,521.83985 299.92636,516.1132 305.80551,516.1132 z M 440.821,552.54828 C 440.821,552.54828 448.7504,554.02388 453.8965,559.45332 C 457.41881,563.16951 457.75208,569.15506 456.98172,577.37703 C 456.21143,573.8833 454.89571,571.76659 453.8965,569.29666 C 443.01388,582.47662 413.42981,583.08929 376.0312,569.88433 C 416.63248,578.00493 437.38806,570.56014 449.48903,561.2163 C 446.29383,557.08917 440.821,552.54828 440.821,552.54828 z M 434.64723,524.59684 C 434.64723,532.23974 428.44429,538.44268 420.80139,538.44268 C 413.15849,538.44268 406.95555,532.23974 406.95555,524.59684 C 406.95555,516.95394 413.15849,510.751 420.80139,510.751 C 428.44429,510.751 434.64723,516.95394 434.64723,524.59684 z M 378.00043,522.99931 C 378.00043,527.70264 374.18324,531.51984 369.47991,531.51984 C 364.77658,531.51984 360.95939,527.70264 360.95939,522.99931 C 360.95939,518.29599 364.77658,514.47879 369.47991,514.47879 C 374.18324,514.47879 378.00043,518.29599 378.00043,522.99931 z \00", align 16
@.str = private unnamed_addr constant [41 x i8] c"quadratic bezier curveto not implemented\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"truetype quadratic bezier curveto not implemented\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"conicto not implemented\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"arcto not implemented\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Gimp-Widgets\00", align 1

; Function Attrs: nounwind uwtable
define void @gimp_cairo_wilber(%struct._cairo* %cr, double %x, double %y) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %x.addr = alloca double, align 8
  %y.addr = alloca double, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store double %x, double* %x.addr, align 8
  store double %y, double* %y.addr, align 8
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @wilber_get_extents(%struct._cairo* %0)
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_save(%struct._cairo* %1)
  %2 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %3 = load double, double* %x.addr, align 8
  %4 = load double, double* @wilber_x1, align 8
  %sub = fsub double %3, %4
  %5 = load double, double* %y.addr, align 8
  %6 = load double, double* @wilber_y1, align 8
  %sub1 = fsub double %5, %6
  call void @cairo_translate(%struct._cairo* %2, double %sub, double %sub1)
  %7 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %8 = load %struct.cairo_path*, %struct.cairo_path** @wilber_cairo_path, align 8
  call void @cairo_append_path(%struct._cairo* %7, %struct.cairo_path* %8)
  %9 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @cairo_restore(%struct._cairo* %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wilber_get_extents(%struct._cairo* %unused) #0 {
entry:
  %unused.addr = alloca %struct._cairo*, align 8
  %s = alloca %struct._cairo_surface*, align 8
  %cr = alloca %struct._cairo*, align 8
  store %struct._cairo* %unused, %struct._cairo** %unused.addr, align 8
  %0 = load %struct.cairo_path*, %struct.cairo_path** @wilber_cairo_path, align 8
  %tobool = icmp ne %struct.cairo_path* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._cairo_surface* @cairo_image_surface_create(i32 2, i32 1, i32 1)
  store %struct._cairo_surface* %call, %struct._cairo_surface** %s, align 8
  %1 = load %struct._cairo_surface*, %struct._cairo_surface** %s, align 8
  %call1 = call %struct._cairo* @cairo_create(%struct._cairo_surface* %1)
  store %struct._cairo* %call1, %struct._cairo** %cr, align 8
  %2 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @wilber_parse_path_data(%struct._cairo* %2, i8* getelementptr inbounds ([2297 x i8], [2297 x i8]* @wilber_path, i32 0, i32 0))
  %3 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_fill_extents(%struct._cairo* %3, double* @wilber_x1, double* @wilber_y1, double* @wilber_x2, double* @wilber_y2)
  %4 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %call2 = call %struct.cairo_path* @cairo_copy_path(%struct._cairo* %4)
  store %struct.cairo_path* %call2, %struct.cairo_path** @wilber_cairo_path, align 8
  %5 = load %struct._cairo*, %struct._cairo** %cr, align 8
  call void @cairo_destroy(%struct._cairo* %5)
  %6 = load %struct._cairo_surface*, %struct._cairo_surface** %s, align 8
  call void @cairo_surface_destroy(%struct._cairo_surface* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @cairo_save(%struct._cairo*) #1

declare void @cairo_translate(%struct._cairo*, double, double) #1

declare void @cairo_append_path(%struct._cairo*, %struct.cairo_path*) #1

declare void @cairo_restore(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define void @gimp_cairo_wilber_get_size(%struct._cairo* %cr, double* %width, double* %height) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %width.addr = alloca double*, align 8
  %height.addr = alloca double*, align 8
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store double* %width, double** %width.addr, align 8
  store double* %height, double** %height.addr, align 8
  %0 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  call void @wilber_get_extents(%struct._cairo* %0)
  %1 = load double, double* @wilber_x2, align 8
  %2 = load double, double* @wilber_x1, align 8
  %sub = fsub double %1, %2
  %3 = load double*, double** %width.addr, align 8
  store double %sub, double* %3, align 8
  %4 = load double, double* @wilber_y2, align 8
  %5 = load double, double* @wilber_y1, align 8
  %sub1 = fsub double %4, %5
  %6 = load double*, double** %height.addr, align 8
  store double %sub1, double* %6, align 8
  ret void
}

declare %struct._cairo_surface* @cairo_image_surface_create(i32, i32, i32) #1

declare %struct._cairo* @cairo_create(%struct._cairo_surface*) #1

; Function Attrs: nounwind uwtable
define internal void @wilber_parse_path_data(%struct._cairo* %cr, i8* %data) #0 {
entry:
  %cr.addr = alloca %struct._cairo*, align 8
  %data.addr = alloca i8*, align 8
  %ctx = alloca %struct.ParsePathContext, align 8
  %in_num = alloca i32, align 4
  %in_frac = alloca i32, align 4
  %in_exp = alloca i32, align 4
  %exp_wait_sign = alloca i32, align 4
  %val = alloca double, align 8
  %c = alloca i8, align 1
  %sign = alloca i32, align 4
  %exp = alloca i32, align 4
  %exp_sign = alloca i32, align 4
  %frac = alloca double, align 8
  %i = alloca i32, align 4
  store %struct._cairo* %cr, %struct._cairo** %cr.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 0, i32* %in_num, align 4
  store i32 0, i32* %in_frac, align 4
  store i32 0, i32* %in_exp, align 4
  store i32 0, i32* %exp_wait_sign, align 4
  store double 0.000000e+00, double* %val, align 8
  store i8 0, i8* %c, align 1
  store i32 0, i32* %sign, align 4
  store i32 0, i32* %exp, align 4
  store i32 0, i32* %exp_sign, align 4
  store double 0.000000e+00, double* %frac, align 8
  %0 = bitcast %struct.ParsePathContext* %ctx to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 112, i32 8, i1 false)
  %1 = load %struct._cairo*, %struct._cairo** %cr.addr, align 8
  %cr1 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 0
  store %struct._cairo* %1, %struct._cairo** %cr1, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i8*, i8** %data.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %3, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  store i8 %4, i8* %c, align 1
  %5 = load i8, i8* %c, align 1
  %conv = sext i8 %5 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.lhs.true, label %if.else.30

land.lhs.true:                                    ; preds = %for.cond
  %6 = load i8, i8* %c, align 1
  %conv3 = sext i8 %6 to i32
  %cmp4 = icmp sle i32 %conv3, 57
  br i1 %cmp4, label %if.then, label %if.else.30

if.then:                                          ; preds = %land.lhs.true
  %7 = load i32, i32* %in_num, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.6, label %if.else.25

if.then.6:                                        ; preds = %if.then
  %8 = load i32, i32* %in_exp, align 4
  %tobool7 = icmp ne i32 %8, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.6
  %9 = load i32, i32* %exp, align 4
  %mul = mul nsw i32 %9, 10
  %10 = load i8, i8* %c, align 1
  %conv9 = sext i8 %10 to i32
  %add = add nsw i32 %mul, %conv9
  %sub = sub nsw i32 %add, 48
  store i32 %sub, i32* %exp, align 4
  store i32 0, i32* %exp_wait_sign, align 4
  br label %if.end.24

if.else:                                          ; preds = %if.then.6
  %11 = load i32, i32* %in_frac, align 4
  %tobool10 = icmp ne i32 %11, 0
  br i1 %tobool10, label %if.then.11, label %if.else.18

if.then.11:                                       ; preds = %if.else
  %12 = load double, double* %frac, align 8
  %mul12 = fmul double %12, 1.000000e-01
  store double %mul12, double* %frac, align 8
  %13 = load i8, i8* %c, align 1
  %conv13 = sext i8 %13 to i32
  %sub14 = sub nsw i32 %conv13, 48
  %conv15 = sitofp i32 %sub14 to double
  %mul16 = fmul double %mul12, %conv15
  %14 = load double, double* %val, align 8
  %add17 = fadd double %14, %mul16
  store double %add17, double* %val, align 8
  br label %if.end

if.else.18:                                       ; preds = %if.else
  %15 = load double, double* %val, align 8
  %mul19 = fmul double %15, 1.000000e+01
  %16 = load i8, i8* %c, align 1
  %conv20 = sext i8 %16 to i32
  %conv21 = sitofp i32 %conv20 to double
  %add22 = fadd double %mul19, %conv21
  %sub23 = fsub double %add22, 4.800000e+01
  store double %sub23, double* %val, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.18, %if.then.11
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.8
  br label %if.end.29

if.else.25:                                       ; preds = %if.then
  store i32 1, i32* %in_num, align 4
  store i32 0, i32* %in_frac, align 4
  store i32 0, i32* %in_exp, align 4
  store i32 0, i32* %exp, align 4
  store i32 1, i32* %exp_sign, align 4
  store i32 0, i32* %exp_wait_sign, align 4
  %17 = load i8, i8* %c, align 1
  %conv26 = sext i8 %17 to i32
  %sub27 = sub nsw i32 %conv26, 48
  %conv28 = sitofp i32 %sub27 to double
  store double %conv28, double* %val, align 8
  store i32 1, i32* %sign, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.25, %if.end.24
  br label %if.end.116

if.else.30:                                       ; preds = %land.lhs.true, %for.cond
  %18 = load i8, i8* %c, align 1
  %conv31 = sext i8 %18 to i32
  %cmp32 = icmp eq i32 %conv31, 46
  br i1 %cmp32, label %if.then.34, label %if.else.38

if.then.34:                                       ; preds = %if.else.30
  %19 = load i32, i32* %in_num, align 4
  %tobool35 = icmp ne i32 %19, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.then.34
  store i32 1, i32* %in_num, align 4
  store double 0.000000e+00, double* %val, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.36, %if.then.34
  store i32 1, i32* %in_frac, align 4
  store double 1.000000e+00, double* %frac, align 8
  br label %if.end.115

if.else.38:                                       ; preds = %if.else.30
  %20 = load i8, i8* %c, align 1
  %conv39 = sext i8 %20 to i32
  %cmp40 = icmp eq i32 %conv39, 69
  br i1 %cmp40, label %land.lhs.true.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.38
  %21 = load i8, i8* %c, align 1
  %conv42 = sext i8 %21 to i32
  %cmp43 = icmp eq i32 %conv42, 101
  br i1 %cmp43, label %land.lhs.true.45, label %if.else.48

land.lhs.true.45:                                 ; preds = %lor.lhs.false, %if.else.38
  %22 = load i32, i32* %in_num, align 4
  %tobool46 = icmp ne i32 %22, 0
  br i1 %tobool46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %land.lhs.true.45
  store i32 1, i32* %in_exp, align 4
  store i32 1, i32* %exp_wait_sign, align 4
  store i32 0, i32* %exp, align 4
  store i32 1, i32* %exp_sign, align 4
  br label %if.end.114

if.else.48:                                       ; preds = %land.lhs.true.45, %lor.lhs.false
  %23 = load i8, i8* %c, align 1
  %conv49 = sext i8 %23 to i32
  %cmp50 = icmp eq i32 %conv49, 43
  br i1 %cmp50, label %land.lhs.true.56, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %if.else.48
  %24 = load i8, i8* %c, align 1
  %conv53 = sext i8 %24 to i32
  %cmp54 = icmp eq i32 %conv53, 45
  br i1 %cmp54, label %land.lhs.true.56, label %if.else.62

land.lhs.true.56:                                 ; preds = %lor.lhs.false.52, %if.else.48
  %25 = load i32, i32* %in_exp, align 4
  %tobool57 = icmp ne i32 %25, 0
  br i1 %tobool57, label %if.then.58, label %if.else.62

if.then.58:                                       ; preds = %land.lhs.true.56
  %26 = load i8, i8* %c, align 1
  %conv59 = sext i8 %26 to i32
  %cmp60 = icmp eq i32 %conv59, 43
  %cond = select i1 %cmp60, i32 1, i32 -1
  store i32 %cond, i32* %exp_sign, align 4
  br label %if.end.113

if.else.62:                                       ; preds = %land.lhs.true.56, %lor.lhs.false.52
  %27 = load i32, i32* %in_num, align 4
  %tobool63 = icmp ne i32 %27, 0
  br i1 %tobool63, label %if.then.64, label %if.end.112

if.then.64:                                       ; preds = %if.else.62
  %28 = load i32, i32* %sign, align 4
  %conv65 = sitofp i32 %28 to double
  %29 = load i32, i32* %exp_sign, align 4
  %30 = load i32, i32* %exp, align 4
  %mul66 = mul nsw i32 %29, %30
  %conv67 = sitofp i32 %mul66 to double
  %call = call double @pow(double 1.000000e+01, double %conv67) #2
  %mul68 = fmul double %conv65, %call
  %31 = load double, double* %val, align 8
  %mul69 = fmul double %31, %mul68
  store double %mul69, double* %val, align 8
  %rel = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 7
  %32 = load i32, i32* %rel, align 4
  %tobool70 = icmp ne i32 %32, 0
  br i1 %tobool70, label %if.then.71, label %if.end.108

if.then.71:                                       ; preds = %if.then.64
  %cmd = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 5
  %33 = load i8, i8* %cmd, align 1
  %conv72 = sext i8 %33 to i32
  switch i32 %conv72, label %sw.epilog [
    i32 108, label %sw.bb
    i32 109, label %sw.bb
    i32 99, label %sw.bb
    i32 115, label %sw.bb
    i32 113, label %sw.bb
    i32 116, label %sw.bb
    i32 97, label %sw.bb.86
    i32 104, label %sw.bb.102
    i32 118, label %sw.bb.105
  ]

sw.bb:                                            ; preds = %if.then.71, %if.then.71, %if.then.71, %if.then.71, %if.then.71, %if.then.71
  %param = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 6
  %34 = load i32, i32* %param, align 4
  %and = and i32 %34, 1
  %cmp73 = icmp eq i32 %and, 0
  br i1 %cmp73, label %if.then.75, label %if.else.77

if.then.75:                                       ; preds = %sw.bb
  %cpx = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 1
  %35 = load double, double* %cpx, align 8
  %36 = load double, double* %val, align 8
  %add76 = fadd double %36, %35
  store double %add76, double* %val, align 8
  br label %if.end.85

if.else.77:                                       ; preds = %sw.bb
  %param78 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 6
  %37 = load i32, i32* %param78, align 4
  %and79 = and i32 %37, 1
  %cmp80 = icmp eq i32 %and79, 1
  br i1 %cmp80, label %if.then.82, label %if.end.84

if.then.82:                                       ; preds = %if.else.77
  %cpy = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 2
  %38 = load double, double* %cpy, align 8
  %39 = load double, double* %val, align 8
  %add83 = fadd double %39, %38
  store double %add83, double* %val, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.82, %if.else.77
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.84, %if.then.75
  br label %sw.epilog

sw.bb.86:                                         ; preds = %if.then.71
  %param87 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 6
  %40 = load i32, i32* %param87, align 4
  %cmp88 = icmp eq i32 %40, 5
  br i1 %cmp88, label %if.then.90, label %if.else.93

if.then.90:                                       ; preds = %sw.bb.86
  %cpx91 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 1
  %41 = load double, double* %cpx91, align 8
  %42 = load double, double* %val, align 8
  %add92 = fadd double %42, %41
  store double %add92, double* %val, align 8
  br label %if.end.101

if.else.93:                                       ; preds = %sw.bb.86
  %param94 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 6
  %43 = load i32, i32* %param94, align 4
  %cmp95 = icmp eq i32 %43, 6
  br i1 %cmp95, label %if.then.97, label %if.end.100

if.then.97:                                       ; preds = %if.else.93
  %cpy98 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 2
  %44 = load double, double* %cpy98, align 8
  %45 = load double, double* %val, align 8
  %add99 = fadd double %45, %44
  store double %add99, double* %val, align 8
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.97, %if.else.93
  br label %if.end.101

if.end.101:                                       ; preds = %if.end.100, %if.then.90
  br label %sw.epilog

sw.bb.102:                                        ; preds = %if.then.71
  %cpx103 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 1
  %46 = load double, double* %cpx103, align 8
  %47 = load double, double* %val, align 8
  %add104 = fadd double %47, %46
  store double %add104, double* %val, align 8
  br label %sw.epilog

sw.bb.105:                                        ; preds = %if.then.71
  %cpy106 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 2
  %48 = load double, double* %cpy106, align 8
  %49 = load double, double* %val, align 8
  %add107 = fadd double %49, %48
  store double %add107, double* %val, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.71, %sw.bb.105, %sw.bb.102, %if.end.101, %if.end.85
  br label %if.end.108

if.end.108:                                       ; preds = %sw.epilog, %if.then.64
  %50 = load double, double* %val, align 8
  %param109 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 6
  %51 = load i32, i32* %param109, align 4
  %inc = add nsw i32 %51, 1
  store i32 %inc, i32* %param109, align 4
  %idxprom110 = sext i32 %51 to i64
  %params = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 8
  %arrayidx111 = getelementptr inbounds [7 x double], [7 x double]* %params, i32 0, i64 %idxprom110
  store double %50, double* %arrayidx111, align 8
  call void @parse_path_do_cmd(%struct.ParsePathContext* %ctx, i32 0)
  store i32 0, i32* %in_num, align 4
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.108, %if.else.62
  br label %if.end.113

if.end.113:                                       ; preds = %if.end.112, %if.then.58
  br label %if.end.114

if.end.114:                                       ; preds = %if.end.113, %if.then.47
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114, %if.end.37
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115, %if.end.29
  %52 = load i8, i8* %c, align 1
  %conv117 = sext i8 %52 to i32
  %cmp118 = icmp eq i32 %conv117, 0
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %if.end.116
  br label %for.end

if.else.121:                                      ; preds = %if.end.116
  %53 = load i8, i8* %c, align 1
  %conv122 = sext i8 %53 to i32
  %cmp123 = icmp eq i32 %conv122, 43
  br i1 %cmp123, label %land.lhs.true.129, label %lor.lhs.false.125

lor.lhs.false.125:                                ; preds = %if.else.121
  %54 = load i8, i8* %c, align 1
  %conv126 = sext i8 %54 to i32
  %cmp127 = icmp eq i32 %conv126, 45
  br i1 %cmp127, label %land.lhs.true.129, label %if.else.136

land.lhs.true.129:                                ; preds = %lor.lhs.false.125, %if.else.121
  %55 = load i32, i32* %exp_wait_sign, align 4
  %tobool130 = icmp ne i32 %55, 0
  br i1 %tobool130, label %if.else.136, label %if.then.131

if.then.131:                                      ; preds = %land.lhs.true.129
  %56 = load i8, i8* %c, align 1
  %conv132 = sext i8 %56 to i32
  %cmp133 = icmp eq i32 %conv132, 43
  %cond135 = select i1 %cmp133, i32 1, i32 -1
  store i32 %cond135, i32* %sign, align 4
  store double 0.000000e+00, double* %val, align 8
  store i32 1, i32* %in_num, align 4
  store i32 0, i32* %in_frac, align 4
  store i32 0, i32* %in_exp, align 4
  store i32 0, i32* %exp, align 4
  store i32 1, i32* %exp_sign, align 4
  store i32 0, i32* %exp_wait_sign, align 4
  br label %if.end.195

if.else.136:                                      ; preds = %land.lhs.true.129, %lor.lhs.false.125
  %57 = load i8, i8* %c, align 1
  %conv137 = sext i8 %57 to i32
  %cmp138 = icmp eq i32 %conv137, 122
  br i1 %cmp138, label %if.then.144, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %if.else.136
  %58 = load i8, i8* %c, align 1
  %conv141 = sext i8 %58 to i32
  %cmp142 = icmp eq i32 %conv141, 90
  br i1 %cmp142, label %if.then.144, label %if.else.150

if.then.144:                                      ; preds = %lor.lhs.false.140, %if.else.136
  %param145 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 6
  %59 = load i32, i32* %param145, align 4
  %tobool146 = icmp ne i32 %59, 0
  br i1 %tobool146, label %if.then.147, label %if.end.148

if.then.147:                                      ; preds = %if.then.144
  call void @parse_path_do_cmd(%struct.ParsePathContext* %ctx, i32 1)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.147, %if.then.144
  %cr149 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 0
  %60 = load %struct._cairo*, %struct._cairo** %cr149, align 8
  call void @cairo_close_path(%struct._cairo* %60)
  br label %if.end.194

if.else.150:                                      ; preds = %lor.lhs.false.140
  %61 = load i8, i8* %c, align 1
  %conv151 = sext i8 %61 to i32
  %cmp152 = icmp sge i32 %conv151, 65
  br i1 %cmp152, label %land.lhs.true.154, label %if.else.173

land.lhs.true.154:                                ; preds = %if.else.150
  %62 = load i8, i8* %c, align 1
  %conv155 = sext i8 %62 to i32
  %cmp156 = icmp sle i32 %conv155, 90
  br i1 %cmp156, label %land.lhs.true.158, label %if.else.173

land.lhs.true.158:                                ; preds = %land.lhs.true.154
  %63 = load i8, i8* %c, align 1
  %conv159 = sext i8 %63 to i32
  %cmp160 = icmp ne i32 %conv159, 69
  br i1 %cmp160, label %if.then.162, label %if.else.173

if.then.162:                                      ; preds = %land.lhs.true.158
  %param163 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 6
  %64 = load i32, i32* %param163, align 4
  %tobool164 = icmp ne i32 %64, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %if.then.162
  call void @parse_path_do_cmd(%struct.ParsePathContext* %ctx, i32 1)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %if.then.162
  %65 = load i8, i8* %c, align 1
  %conv167 = sext i8 %65 to i32
  %add168 = add nsw i32 %conv167, 97
  %sub169 = sub nsw i32 %add168, 65
  %conv170 = trunc i32 %sub169 to i8
  %cmd171 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 5
  store i8 %conv170, i8* %cmd171, align 1
  %rel172 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 7
  store i32 0, i32* %rel172, align 4
  br label %if.end.193

if.else.173:                                      ; preds = %land.lhs.true.158, %land.lhs.true.154, %if.else.150
  %66 = load i8, i8* %c, align 1
  %conv174 = sext i8 %66 to i32
  %cmp175 = icmp sge i32 %conv174, 97
  br i1 %cmp175, label %land.lhs.true.177, label %if.end.192

land.lhs.true.177:                                ; preds = %if.else.173
  %67 = load i8, i8* %c, align 1
  %conv178 = sext i8 %67 to i32
  %cmp179 = icmp sle i32 %conv178, 122
  br i1 %cmp179, label %land.lhs.true.181, label %if.end.192

land.lhs.true.181:                                ; preds = %land.lhs.true.177
  %68 = load i8, i8* %c, align 1
  %conv182 = sext i8 %68 to i32
  %cmp183 = icmp ne i32 %conv182, 101
  br i1 %cmp183, label %if.then.185, label %if.end.192

if.then.185:                                      ; preds = %land.lhs.true.181
  %param186 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 6
  %69 = load i32, i32* %param186, align 4
  %tobool187 = icmp ne i32 %69, 0
  br i1 %tobool187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.then.185
  call void @parse_path_do_cmd(%struct.ParsePathContext* %ctx, i32 1)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %if.then.185
  %70 = load i8, i8* %c, align 1
  %cmd190 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 5
  store i8 %70, i8* %cmd190, align 1
  %rel191 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %ctx, i32 0, i32 7
  store i32 1, i32* %rel191, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.end.189, %land.lhs.true.181, %land.lhs.true.177, %if.else.173
  br label %if.end.193

if.end.193:                                       ; preds = %if.end.192, %if.end.166
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.end.148
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %if.then.131
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195
  br label %for.inc

for.inc:                                          ; preds = %if.end.196
  %71 = load i32, i32* %i, align 4
  %inc197 = add nsw i32 %71, 1
  store i32 %inc197, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.120
  ret void
}

declare void @cairo_fill_extents(%struct._cairo*, double*, double*, double*, double*) #1

declare %struct.cairo_path* @cairo_copy_path(%struct._cairo*) #1

declare void @cairo_destroy(%struct._cairo*) #1

declare void @cairo_surface_destroy(%struct._cairo_surface*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare double @pow(double, double) #3

; Function Attrs: nounwind uwtable
define internal void @parse_path_do_cmd(%struct.ParsePathContext* %ctx, i32 %final) #0 {
entry:
  %ctx.addr = alloca %struct.ParsePathContext*, align 8
  %final.addr = alloca i32, align 4
  %x = alloca double, align 8
  %y = alloca double, align 8
  %x64 = alloca double, align 8
  %y65 = alloca double, align 8
  store %struct.ParsePathContext* %ctx, %struct.ParsePathContext** %ctx.addr, align 8
  store i32 %final, i32* %final.addr, align 4
  %0 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cmd = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %0, i32 0, i32 5
  %1 = load i8, i8* %cmd, align 1
  %conv = sext i8 %1 to i32
  switch i32 %conv, label %sw.default [
    i32 109, label %sw.bb
    i32 108, label %sw.bb.7
    i32 99, label %sw.bb.27
    i32 115, label %sw.bb.57
    i32 104, label %sw.bb.91
    i32 118, label %sw.bb.105
    i32 113, label %sw.bb.119
    i32 116, label %sw.bb.140
    i32 97, label %sw.bb.198
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %2, i32 0, i32 6
  %3 = load i32, i32* %param, align 4
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb
  %4 = load i32, i32* %final.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %sw.bb
  %5 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %5, i32 2)
  %6 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %6, i32 0, i32 8
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %params, i32 0, i64 0
  %7 = load double, double* %arrayidx, align 8
  %8 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %8, i32 0, i32 3
  store double %7, double* %rpx, align 8
  %9 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %9, i32 0, i32 1
  store double %7, double* %cpx, align 8
  %10 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params2 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %10, i32 0, i32 8
  %arrayidx3 = getelementptr inbounds [7 x double], [7 x double]* %params2, i32 0, i64 1
  %11 = load double, double* %arrayidx3, align 8
  %12 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %12, i32 0, i32 4
  store double %11, double* %rpy, align 8
  %13 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %13, i32 0, i32 2
  store double %11, double* %cpy, align 8
  %14 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cr = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %14, i32 0, i32 0
  %15 = load %struct._cairo*, %struct._cairo** %cr, align 8
  %16 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx4 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %16, i32 0, i32 1
  %17 = load double, double* %cpx4, align 8
  %18 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy5 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %18, i32 0, i32 2
  %19 = load double, double* %cpy5, align 8
  call void @cairo_move_to(%struct._cairo* %15, double %17, double %19)
  %20 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param6 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %20, i32 0, i32 6
  store i32 0, i32* %param6, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %sw.epilog

sw.bb.7:                                          ; preds = %entry
  %21 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param8 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %21, i32 0, i32 6
  %22 = load i32, i32* %param8, align 4
  %cmp9 = icmp eq i32 %22, 2
  br i1 %cmp9, label %if.then.13, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %sw.bb.7
  %23 = load i32, i32* %final.addr, align 4
  %tobool12 = icmp ne i32 %23, 0
  br i1 %tobool12, label %if.then.13, label %if.end.26

if.then.13:                                       ; preds = %lor.lhs.false.11, %sw.bb.7
  %24 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %24, i32 2)
  %25 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params14 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %25, i32 0, i32 8
  %arrayidx15 = getelementptr inbounds [7 x double], [7 x double]* %params14, i32 0, i64 0
  %26 = load double, double* %arrayidx15, align 8
  %27 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx16 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %27, i32 0, i32 3
  store double %26, double* %rpx16, align 8
  %28 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx17 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %28, i32 0, i32 1
  store double %26, double* %cpx17, align 8
  %29 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params18 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %29, i32 0, i32 8
  %arrayidx19 = getelementptr inbounds [7 x double], [7 x double]* %params18, i32 0, i64 1
  %30 = load double, double* %arrayidx19, align 8
  %31 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy20 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %31, i32 0, i32 4
  store double %30, double* %rpy20, align 8
  %32 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy21 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %32, i32 0, i32 2
  store double %30, double* %cpy21, align 8
  %33 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cr22 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %33, i32 0, i32 0
  %34 = load %struct._cairo*, %struct._cairo** %cr22, align 8
  %35 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx23 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %35, i32 0, i32 1
  %36 = load double, double* %cpx23, align 8
  %37 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy24 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %37, i32 0, i32 2
  %38 = load double, double* %cpy24, align 8
  call void @cairo_line_to(%struct._cairo* %34, double %36, double %38)
  %39 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param25 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %39, i32 0, i32 6
  store i32 0, i32* %param25, align 4
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.13, %lor.lhs.false.11
  br label %sw.epilog

sw.bb.27:                                         ; preds = %entry
  %40 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param28 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %40, i32 0, i32 6
  %41 = load i32, i32* %param28, align 4
  %cmp29 = icmp eq i32 %41, 6
  br i1 %cmp29, label %if.then.33, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %sw.bb.27
  %42 = load i32, i32* %final.addr, align 4
  %tobool32 = icmp ne i32 %42, 0
  br i1 %tobool32, label %if.then.33, label %if.end.56

if.then.33:                                       ; preds = %lor.lhs.false.31, %sw.bb.27
  %43 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %43, i32 6)
  %44 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params34 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %44, i32 0, i32 8
  %arrayidx35 = getelementptr inbounds [7 x double], [7 x double]* %params34, i32 0, i64 0
  %45 = load double, double* %arrayidx35, align 8
  store double %45, double* %x, align 8
  %46 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params36 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %46, i32 0, i32 8
  %arrayidx37 = getelementptr inbounds [7 x double], [7 x double]* %params36, i32 0, i64 1
  %47 = load double, double* %arrayidx37, align 8
  store double %47, double* %y, align 8
  %48 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params38 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %48, i32 0, i32 8
  %arrayidx39 = getelementptr inbounds [7 x double], [7 x double]* %params38, i32 0, i64 2
  %49 = load double, double* %arrayidx39, align 8
  %50 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx40 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %50, i32 0, i32 3
  store double %49, double* %rpx40, align 8
  %51 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params41 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %51, i32 0, i32 8
  %arrayidx42 = getelementptr inbounds [7 x double], [7 x double]* %params41, i32 0, i64 3
  %52 = load double, double* %arrayidx42, align 8
  %53 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy43 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %53, i32 0, i32 4
  store double %52, double* %rpy43, align 8
  %54 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params44 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %54, i32 0, i32 8
  %arrayidx45 = getelementptr inbounds [7 x double], [7 x double]* %params44, i32 0, i64 4
  %55 = load double, double* %arrayidx45, align 8
  %56 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx46 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %56, i32 0, i32 1
  store double %55, double* %cpx46, align 8
  %57 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params47 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %57, i32 0, i32 8
  %arrayidx48 = getelementptr inbounds [7 x double], [7 x double]* %params47, i32 0, i64 5
  %58 = load double, double* %arrayidx48, align 8
  %59 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy49 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %59, i32 0, i32 2
  store double %58, double* %cpy49, align 8
  %60 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cr50 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %60, i32 0, i32 0
  %61 = load %struct._cairo*, %struct._cairo** %cr50, align 8
  %62 = load double, double* %x, align 8
  %63 = load double, double* %y, align 8
  %64 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx51 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %64, i32 0, i32 3
  %65 = load double, double* %rpx51, align 8
  %66 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy52 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %66, i32 0, i32 4
  %67 = load double, double* %rpy52, align 8
  %68 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx53 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %68, i32 0, i32 1
  %69 = load double, double* %cpx53, align 8
  %70 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy54 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %70, i32 0, i32 2
  %71 = load double, double* %cpy54, align 8
  call void @cairo_curve_to(%struct._cairo* %61, double %62, double %63, double %65, double %67, double %69, double %71)
  %72 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param55 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %72, i32 0, i32 6
  store i32 0, i32* %param55, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.33, %lor.lhs.false.31
  br label %sw.epilog

sw.bb.57:                                         ; preds = %entry
  %73 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param58 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %73, i32 0, i32 6
  %74 = load i32, i32* %param58, align 4
  %cmp59 = icmp eq i32 %74, 4
  br i1 %cmp59, label %if.then.63, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %sw.bb.57
  %75 = load i32, i32* %final.addr, align 4
  %tobool62 = icmp ne i32 %75, 0
  br i1 %tobool62, label %if.then.63, label %if.end.90

if.then.63:                                       ; preds = %lor.lhs.false.61, %sw.bb.57
  %76 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %76, i32 4)
  %77 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx66 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %77, i32 0, i32 1
  %78 = load double, double* %cpx66, align 8
  %mul = fmul double 2.000000e+00, %78
  %79 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx67 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %79, i32 0, i32 3
  %80 = load double, double* %rpx67, align 8
  %sub = fsub double %mul, %80
  store double %sub, double* %x64, align 8
  %81 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy68 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %81, i32 0, i32 2
  %82 = load double, double* %cpy68, align 8
  %mul69 = fmul double 2.000000e+00, %82
  %83 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy70 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %83, i32 0, i32 4
  %84 = load double, double* %rpy70, align 8
  %sub71 = fsub double %mul69, %84
  store double %sub71, double* %y65, align 8
  %85 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params72 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %85, i32 0, i32 8
  %arrayidx73 = getelementptr inbounds [7 x double], [7 x double]* %params72, i32 0, i64 0
  %86 = load double, double* %arrayidx73, align 8
  %87 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx74 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %87, i32 0, i32 3
  store double %86, double* %rpx74, align 8
  %88 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params75 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %88, i32 0, i32 8
  %arrayidx76 = getelementptr inbounds [7 x double], [7 x double]* %params75, i32 0, i64 1
  %89 = load double, double* %arrayidx76, align 8
  %90 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy77 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %90, i32 0, i32 4
  store double %89, double* %rpy77, align 8
  %91 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params78 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %91, i32 0, i32 8
  %arrayidx79 = getelementptr inbounds [7 x double], [7 x double]* %params78, i32 0, i64 2
  %92 = load double, double* %arrayidx79, align 8
  %93 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx80 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %93, i32 0, i32 1
  store double %92, double* %cpx80, align 8
  %94 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params81 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %94, i32 0, i32 8
  %arrayidx82 = getelementptr inbounds [7 x double], [7 x double]* %params81, i32 0, i64 3
  %95 = load double, double* %arrayidx82, align 8
  %96 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy83 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %96, i32 0, i32 2
  store double %95, double* %cpy83, align 8
  %97 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cr84 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %97, i32 0, i32 0
  %98 = load %struct._cairo*, %struct._cairo** %cr84, align 8
  %99 = load double, double* %x64, align 8
  %100 = load double, double* %y65, align 8
  %101 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx85 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %101, i32 0, i32 3
  %102 = load double, double* %rpx85, align 8
  %103 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy86 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %103, i32 0, i32 4
  %104 = load double, double* %rpy86, align 8
  %105 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx87 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %105, i32 0, i32 1
  %106 = load double, double* %cpx87, align 8
  %107 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy88 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %107, i32 0, i32 2
  %108 = load double, double* %cpy88, align 8
  call void @cairo_curve_to(%struct._cairo* %98, double %99, double %100, double %102, double %104, double %106, double %108)
  %109 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param89 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %109, i32 0, i32 6
  store i32 0, i32* %param89, align 4
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.63, %lor.lhs.false.61
  br label %sw.epilog

sw.bb.91:                                         ; preds = %entry
  %110 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param92 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %110, i32 0, i32 6
  %111 = load i32, i32* %param92, align 4
  %cmp93 = icmp eq i32 %111, 1
  br i1 %cmp93, label %if.then.95, label %if.end.104

if.then.95:                                       ; preds = %sw.bb.91
  %112 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params96 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %112, i32 0, i32 8
  %arrayidx97 = getelementptr inbounds [7 x double], [7 x double]* %params96, i32 0, i64 0
  %113 = load double, double* %arrayidx97, align 8
  %114 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx98 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %114, i32 0, i32 3
  store double %113, double* %rpx98, align 8
  %115 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx99 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %115, i32 0, i32 1
  store double %113, double* %cpx99, align 8
  %116 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cr100 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %116, i32 0, i32 0
  %117 = load %struct._cairo*, %struct._cairo** %cr100, align 8
  %118 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx101 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %118, i32 0, i32 1
  %119 = load double, double* %cpx101, align 8
  %120 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy102 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %120, i32 0, i32 2
  %121 = load double, double* %cpy102, align 8
  call void @cairo_line_to(%struct._cairo* %117, double %119, double %121)
  %122 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param103 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %122, i32 0, i32 6
  store i32 0, i32* %param103, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.95, %sw.bb.91
  br label %sw.epilog

sw.bb.105:                                        ; preds = %entry
  %123 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param106 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %123, i32 0, i32 6
  %124 = load i32, i32* %param106, align 4
  %cmp107 = icmp eq i32 %124, 1
  br i1 %cmp107, label %if.then.109, label %if.end.118

if.then.109:                                      ; preds = %sw.bb.105
  %125 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params110 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %125, i32 0, i32 8
  %arrayidx111 = getelementptr inbounds [7 x double], [7 x double]* %params110, i32 0, i64 0
  %126 = load double, double* %arrayidx111, align 8
  %127 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy112 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %127, i32 0, i32 4
  store double %126, double* %rpy112, align 8
  %128 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy113 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %128, i32 0, i32 2
  store double %126, double* %cpy113, align 8
  %129 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cr114 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %129, i32 0, i32 0
  %130 = load %struct._cairo*, %struct._cairo** %cr114, align 8
  %131 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx115 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %131, i32 0, i32 1
  %132 = load double, double* %cpx115, align 8
  %133 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy116 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %133, i32 0, i32 2
  %134 = load double, double* %cpy116, align 8
  call void @cairo_line_to(%struct._cairo* %130, double %132, double %134)
  %135 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param117 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %135, i32 0, i32 6
  store i32 0, i32* %param117, align 4
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.109, %sw.bb.105
  br label %sw.epilog

sw.bb.119:                                        ; preds = %entry
  %136 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param120 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %136, i32 0, i32 6
  %137 = load i32, i32* %param120, align 4
  %cmp121 = icmp eq i32 %137, 4
  br i1 %cmp121, label %if.then.125, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %sw.bb.119
  %138 = load i32, i32* %final.addr, align 4
  %tobool124 = icmp ne i32 %138, 0
  br i1 %tobool124, label %if.then.125, label %if.end.139

if.then.125:                                      ; preds = %lor.lhs.false.123, %sw.bb.119
  %139 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %139, i32 4)
  %140 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params126 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %140, i32 0, i32 8
  %arrayidx127 = getelementptr inbounds [7 x double], [7 x double]* %params126, i32 0, i64 0
  %141 = load double, double* %arrayidx127, align 8
  %142 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx128 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %142, i32 0, i32 3
  store double %141, double* %rpx128, align 8
  %143 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params129 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %143, i32 0, i32 8
  %arrayidx130 = getelementptr inbounds [7 x double], [7 x double]* %params129, i32 0, i64 1
  %144 = load double, double* %arrayidx130, align 8
  %145 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy131 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %145, i32 0, i32 4
  store double %144, double* %rpy131, align 8
  %146 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params132 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %146, i32 0, i32 8
  %arrayidx133 = getelementptr inbounds [7 x double], [7 x double]* %params132, i32 0, i64 2
  %147 = load double, double* %arrayidx133, align 8
  %148 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx134 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %148, i32 0, i32 1
  store double %147, double* %cpx134, align 8
  %149 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params135 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %149, i32 0, i32 8
  %arrayidx136 = getelementptr inbounds [7 x double], [7 x double]* %params135, i32 0, i64 3
  %150 = load double, double* %arrayidx136, align 8
  %151 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy137 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %151, i32 0, i32 2
  store double %150, double* %cpy137, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  %152 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param138 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %152, i32 0, i32 6
  store i32 0, i32* %param138, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.125, %lor.lhs.false.123
  br label %sw.epilog

sw.bb.140:                                        ; preds = %entry
  %153 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param141 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %153, i32 0, i32 6
  %154 = load i32, i32* %param141, align 4
  %cmp142 = icmp eq i32 %154, 2
  br i1 %cmp142, label %if.then.146, label %lor.lhs.false.144

lor.lhs.false.144:                                ; preds = %sw.bb.140
  %155 = load i32, i32* %final.addr, align 4
  %tobool145 = icmp ne i32 %155, 0
  br i1 %tobool145, label %if.then.146, label %if.else

if.then.146:                                      ; preds = %lor.lhs.false.144, %sw.bb.140
  %156 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %156, i32 2)
  %157 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx147 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %157, i32 0, i32 1
  %158 = load double, double* %cpx147, align 8
  %mul148 = fmul double 2.000000e+00, %158
  %159 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx149 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %159, i32 0, i32 3
  %160 = load double, double* %rpx149, align 8
  %sub150 = fsub double %mul148, %160
  %161 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx151 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %161, i32 0, i32 3
  store double %sub150, double* %rpx151, align 8
  %162 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy152 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %162, i32 0, i32 2
  %163 = load double, double* %cpy152, align 8
  %mul153 = fmul double 2.000000e+00, %163
  %164 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy154 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %164, i32 0, i32 4
  %165 = load double, double* %rpy154, align 8
  %sub155 = fsub double %mul153, %165
  %166 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy156 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %166, i32 0, i32 4
  store double %sub155, double* %rpy156, align 8
  %167 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params157 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %167, i32 0, i32 8
  %arrayidx158 = getelementptr inbounds [7 x double], [7 x double]* %params157, i32 0, i64 0
  %168 = load double, double* %arrayidx158, align 8
  %169 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx159 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %169, i32 0, i32 1
  store double %168, double* %cpx159, align 8
  %170 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params160 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %170, i32 0, i32 8
  %arrayidx161 = getelementptr inbounds [7 x double], [7 x double]* %params160, i32 0, i64 1
  %171 = load double, double* %arrayidx161, align 8
  %172 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy162 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %172, i32 0, i32 2
  store double %171, double* %cpy162, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i32 0, i32 0))
  %173 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param163 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %173, i32 0, i32 6
  store i32 0, i32* %param163, align 4
  br label %if.end.197

if.else:                                          ; preds = %lor.lhs.false.144
  %174 = load i32, i32* %final.addr, align 4
  %tobool164 = icmp ne i32 %174, 0
  br i1 %tobool164, label %if.then.165, label %if.end.196

if.then.165:                                      ; preds = %if.else
  %175 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param166 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %175, i32 0, i32 6
  %176 = load i32, i32* %param166, align 4
  %cmp167 = icmp sgt i32 %176, 2
  br i1 %cmp167, label %if.then.169, label %if.else.182

if.then.169:                                      ; preds = %if.then.165
  %177 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %177, i32 4)
  %178 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params170 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %178, i32 0, i32 8
  %arrayidx171 = getelementptr inbounds [7 x double], [7 x double]* %params170, i32 0, i64 0
  %179 = load double, double* %arrayidx171, align 8
  %180 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx172 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %180, i32 0, i32 3
  store double %179, double* %rpx172, align 8
  %181 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params173 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %181, i32 0, i32 8
  %arrayidx174 = getelementptr inbounds [7 x double], [7 x double]* %params173, i32 0, i64 1
  %182 = load double, double* %arrayidx174, align 8
  %183 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy175 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %183, i32 0, i32 4
  store double %182, double* %rpy175, align 8
  %184 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params176 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %184, i32 0, i32 8
  %arrayidx177 = getelementptr inbounds [7 x double], [7 x double]* %params176, i32 0, i64 2
  %185 = load double, double* %arrayidx177, align 8
  %186 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx178 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %186, i32 0, i32 1
  store double %185, double* %cpx178, align 8
  %187 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params179 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %187, i32 0, i32 8
  %arrayidx180 = getelementptr inbounds [7 x double], [7 x double]* %params179, i32 0, i64 3
  %188 = load double, double* %arrayidx180, align 8
  %189 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy181 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %189, i32 0, i32 2
  store double %188, double* %cpy181, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.194

if.else.182:                                      ; preds = %if.then.165
  %190 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  call void @parse_path_default_xy(%struct.ParsePathContext* %190, i32 2)
  %191 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params183 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %191, i32 0, i32 8
  %arrayidx184 = getelementptr inbounds [7 x double], [7 x double]* %params183, i32 0, i64 0
  %192 = load double, double* %arrayidx184, align 8
  %193 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx185 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %193, i32 0, i32 3
  store double %192, double* %rpx185, align 8
  %194 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx186 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %194, i32 0, i32 1
  store double %192, double* %cpx186, align 8
  %195 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params187 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %195, i32 0, i32 8
  %arrayidx188 = getelementptr inbounds [7 x double], [7 x double]* %params187, i32 0, i64 1
  %196 = load double, double* %arrayidx188, align 8
  %197 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy189 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %197, i32 0, i32 4
  store double %196, double* %rpy189, align 8
  %198 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy190 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %198, i32 0, i32 2
  store double %196, double* %cpy190, align 8
  %199 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cr191 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %199, i32 0, i32 0
  %200 = load %struct._cairo*, %struct._cairo** %cr191, align 8
  %201 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx192 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %201, i32 0, i32 1
  %202 = load double, double* %cpx192, align 8
  %203 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy193 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %203, i32 0, i32 2
  %204 = load double, double* %cpy193, align 8
  call void @cairo_line_to(%struct._cairo* %200, double %202, double %204)
  br label %if.end.194

if.end.194:                                       ; preds = %if.else.182, %if.then.169
  %205 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param195 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %205, i32 0, i32 6
  store i32 0, i32* %param195, align 4
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.194, %if.else
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.then.146
  br label %sw.epilog

sw.bb.198:                                        ; preds = %entry
  %206 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param199 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %206, i32 0, i32 6
  %207 = load i32, i32* %param199, align 4
  %cmp200 = icmp eq i32 %207, 7
  br i1 %cmp200, label %if.then.204, label %lor.lhs.false.202

lor.lhs.false.202:                                ; preds = %sw.bb.198
  %208 = load i32, i32* %final.addr, align 4
  %tobool203 = icmp ne i32 %208, 0
  br i1 %tobool203, label %if.then.204, label %if.end.214

if.then.204:                                      ; preds = %lor.lhs.false.202, %sw.bb.198
  %209 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params205 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %209, i32 0, i32 8
  %arrayidx206 = getelementptr inbounds [7 x double], [7 x double]* %params205, i32 0, i64 5
  %210 = load double, double* %arrayidx206, align 8
  %211 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpx207 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %211, i32 0, i32 3
  store double %210, double* %rpx207, align 8
  %212 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx208 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %212, i32 0, i32 1
  store double %210, double* %cpx208, align 8
  %213 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params209 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %213, i32 0, i32 8
  %arrayidx210 = getelementptr inbounds [7 x double], [7 x double]* %params209, i32 0, i64 6
  %214 = load double, double* %arrayidx210, align 8
  %215 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rpy211 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %215, i32 0, i32 4
  store double %214, double* %rpy211, align 8
  %216 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy212 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %216, i32 0, i32 2
  store double %214, double* %cpy212, align 8
  call void (i8*, ...) @g_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0))
  %217 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param213 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %217, i32 0, i32 6
  store i32 0, i32* %param213, align 4
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.204, %lor.lhs.false.202
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %218 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param215 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %218, i32 0, i32 6
  store i32 0, i32* %param215, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.214, %if.end.197, %if.end.139, %if.end.118, %if.end.104, %if.end.90, %if.end.56, %if.end.26, %if.end
  ret void
}

declare void @cairo_close_path(%struct._cairo*) #1

; Function Attrs: nounwind uwtable
define internal void @parse_path_default_xy(%struct.ParsePathContext* %ctx, i32 %n_params) #0 {
entry:
  %ctx.addr = alloca %struct.ParsePathContext*, align 8
  %n_params.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.ParsePathContext* %ctx, %struct.ParsePathContext** %ctx.addr, align 8
  store i32 %n_params, i32* %n_params.addr, align 4
  %0 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %rel = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %0, i32 0, i32 7
  %1 = load i32, i32* %rel, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.19

if.then:                                          ; preds = %entry
  %2 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %2, i32 0, i32 6
  %3 = load i32, i32* %param, align 4
  store i32 %3, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n_params.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %6, 2
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 2
  %idxprom = sext i32 %sub to i64
  %8 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %8, i32 0, i32 8
  %arrayidx = getelementptr inbounds [7 x double], [7 x double]* %params, i32 0, i64 %idxprom
  %9 = load double, double* %arrayidx, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %10 to i64
  %11 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params4 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %11, i32 0, i32 8
  %arrayidx5 = getelementptr inbounds [7 x double], [7 x double]* %params4, i32 0, i64 %idxprom3
  store double %9, double* %arrayidx5, align 8
  br label %if.end.18

if.else:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %cmp6 = icmp eq i32 %12, 1
  br i1 %cmp6, label %if.then.7, label %if.else.11

if.then.7:                                        ; preds = %if.else
  %13 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpy = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %13, i32 0, i32 2
  %14 = load double, double* %cpy, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params9 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %16, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [7 x double], [7 x double]* %params9, i32 0, i64 %idxprom8
  store double %14, double* %arrayidx10, align 8
  br label %if.end.17

if.else.11:                                       ; preds = %if.else
  %17 = load i32, i32* %i, align 4
  %cmp12 = icmp eq i32 %17, 0
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.else.11
  %18 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %cpx = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %18, i32 0, i32 1
  %19 = load double, double* %cpx, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %20 to i64
  %21 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params15 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %21, i32 0, i32 8
  %arrayidx16 = getelementptr inbounds [7 x double], [7 x double]* %params15, i32 0, i64 %idxprom14
  store double %19, double* %arrayidx16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.else.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.7
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.2
  br label %for.inc

for.inc:                                          ; preds = %if.end.18
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.30

if.else.19:                                       ; preds = %entry
  %23 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %param20 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %23, i32 0, i32 6
  %24 = load i32, i32* %param20, align 4
  store i32 %24, i32* %i, align 4
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.27, %if.else.19
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n_params.addr, align 4
  %cmp22 = icmp slt i32 %25, %26
  br i1 %cmp22, label %for.body.23, label %for.end.29

for.body.23:                                      ; preds = %for.cond.21
  %27 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %27 to i64
  %28 = load %struct.ParsePathContext*, %struct.ParsePathContext** %ctx.addr, align 8
  %params25 = getelementptr inbounds %struct.ParsePathContext, %struct.ParsePathContext* %28, i32 0, i32 8
  %arrayidx26 = getelementptr inbounds [7 x double], [7 x double]* %params25, i32 0, i64 %idxprom24
  store double 0.000000e+00, double* %arrayidx26, align 8
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.23
  %29 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %29, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond.21

for.end.29:                                       ; preds = %for.cond.21
  br label %if.end.30

if.end.30:                                        ; preds = %for.end.29, %for.end
  ret void
}

declare void @cairo_move_to(%struct._cairo*, double, double) #1

declare void @cairo_line_to(%struct._cairo*, double, double) #1

declare void @cairo_curve_to(%struct._cairo*, double, double, double, double, double, double) #1

; Function Attrs: nounwind uwtable
define internal void @g_warning(i8* %format, ...) #0 {
entry:
  %format.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %format, i8** %format.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i8*, i8** %format.addr, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  call void @g_logv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i32 16, i8* %0, %struct.__va_list_tag* %arraydecay2)
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i32 0, i32 0
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*
  call void @llvm.va_end(i8* %arraydecay34)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #2

declare void @g_logv(i8*, i32, i8*, %struct.__va_list_tag*) #1

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
