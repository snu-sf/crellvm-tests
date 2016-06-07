; ModuleID = 'gauge_stuff.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@gauge_action_nloops = global i32 3, align 4
@gauge_action_nreps = global i32 1, align 4
@make_loop_table.loop_ind = internal global [3 x [6 x i32]] [[6 x i32] [i32 0, i32 1, i32 7, i32 6, i32 -1, i32 -1], [6 x i32] [i32 0, i32 0, i32 1, i32 7, i32 7, i32 6], [6 x i32] [i32 0, i32 1, i32 2, i32 7, i32 6, i32 5]], align 16
@make_loop_table.loop_length_in = internal global [3 x i32] [i32 4, i32 6, i32 6], align 4
@loop_num = common global [3 x i32] zeroinitializer, align 4
@loop_length = common global [3 x i32] zeroinitializer, align 4
@loop_coeff = common global [3 x [1 x double]] zeroinitializer, align 16
@u0 = external global double, align 8
@gauge_action_description = common global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [36 x i8] c"\22Symanzik 1x1 + 1x2 + 1x1x1 action\22\00", align 1
@this_node = external global i32, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Symanzik 1x1 + 1x2 + 1x1x1 action\0A\00", align 1
@loop_char = common global [16 x i32] zeroinitializer, align 16
@loop_table = common global [3 x [16 x [6 x i32]]] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [25 x i8] c"OOPS: MAX_NUM too small\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"loop coefficients: nloop rep loop_coeff  multiplicity\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"                    %d %d      %e     %d\0A\00", align 1
@lattice = external global %struct.site*, align 8
@sites_on_node = external global i32, align 4
@beta = external global double, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"PLAQ:\09%f\09%f\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"P_LOOP:\09%e\09%e\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"G_LOOP:  %d  %d  %d   \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\09%e\00", align 1
@volume = external global i32, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"\09( \00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" )\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"GACTION: %e\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.13 = private unnamed_addr constant [13 x i8] c",  L = %d )\0A\00", align 1
@loop_ind = common global [3 x [6 x i32]] zeroinitializer, align 16
@loop_expect = common global [3 x [1 x [16 x double]]] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @make_loop_table() #0 {
entry:
  %perm = alloca [8 x i32], align 16
  %pp = alloca [8 x i32], align 16
  %ir = alloca [4 x i32], align 16
  %length = alloca i32, align 4
  %iloop = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %chr = alloca i32, align 4
  %vec = alloca [6 x i32], align 16
  %count = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %0 = load i32, i32* %j, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %j, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @loop_num, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  %2 = load i32, i32* %j, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [3 x i32], [3 x i32]* @make_loop_table.loop_length_in, i32 0, i64 %idxprom1
  %3 = load i32, i32* %arrayidx2, align 4
  %4 = load i32, i32* %j, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [3 x i32], [3 x i32]* @loop_length, i32 0, i64 %idxprom3
  store i32 %3, i32* %arrayidx4, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %5 = load i32, i32* %i, align 4
  %cmp6 = icmp slt i32 %5, 1
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %6 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %6 to i64
  %7 = load i32, i32* %j, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [3 x [1 x double]], [3 x [1 x double]]* @loop_coeff, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [1 x double], [1 x double]* %arrayidx10, i32 0, i64 %idxprom8
  store double 0.000000e+00, double* %arrayidx11, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %9 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %9, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  store double 1.000000e+00, double* getelementptr inbounds ([3 x [1 x double]], [3 x [1 x double]]* @loop_coeff, i32 0, i64 0, i64 0), align 8
  %10 = load double, double* @u0, align 8
  %mul = fmul double 2.000000e+01, %10
  %11 = load double, double* @u0, align 8
  %mul15 = fmul double %mul, %11
  %div = fdiv double -1.000000e+00, %mul15
  %12 = load double, double* @u0, align 8
  %call = call double @log(double %12) #4
  %mul16 = fmul double 6.264000e-01, %call
  %sub = fsub double 1.000000e+00, %mul16
  %mul17 = fmul double %div, %sub
  store double %mul17, double* getelementptr inbounds ([3 x [1 x double]], [3 x [1 x double]]* @loop_coeff, i32 0, i64 1, i64 0), align 8
  %13 = load double, double* @u0, align 8
  %14 = load double, double* @u0, align 8
  %mul18 = fmul double %13, %14
  %div19 = fdiv double 1.000000e+00, %mul18
  %mul20 = fmul double %div19, 4.335000e-02
  %15 = load double, double* @u0, align 8
  %call21 = call double @log(double %15) #4
  %mul22 = fmul double %mul20, %call21
  store double %mul22, double* getelementptr inbounds ([3 x [1 x double]], [3 x [1 x double]]* @loop_coeff, i32 0, i64 2, i64 0), align 8
  %call23 = call i8* @strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @gauge_action_description, i32 0, i32 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0)) #4
  %16 = load i32, i32* @this_node, align 4
  %cmp24 = icmp eq i32 %16, 0
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.14
  %call25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.14
  store i32 0, i32* %iloop, align 4
  br label %for.cond.26

for.cond.26:                                      ; preds = %for.inc.207, %if.end
  %17 = load i32, i32* %iloop, align 4
  %cmp27 = icmp slt i32 %17, 3
  br i1 %cmp27, label %for.body.28, label %for.end.209

for.body.28:                                      ; preds = %for.cond.26
  %18 = load i32, i32* %iloop, align 4
  %idxprom29 = sext i32 %18 to i64
  %arrayidx30 = getelementptr inbounds [3 x i32], [3 x i32]* @loop_length, i32 0, i64 %idxprom29
  %19 = load i32, i32* %arrayidx30, align 4
  store i32 %19, i32* %length, align 4
  store i32 0, i32* %count, align 4
  %arrayidx31 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  store i32 0, i32* %arrayidx31, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.203, %for.body.28
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  %20 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp slt i32 %20, 4
  br i1 %cmp34, label %for.body.35, label %for.end.206

for.body.35:                                      ; preds = %for.cond.32
  %arrayidx36 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  store i32 0, i32* %arrayidx36, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.199, %for.body.35
  %arrayidx38 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  %21 = load i32, i32* %arrayidx38, align 4
  %cmp39 = icmp slt i32 %21, 4
  br i1 %cmp39, label %for.body.40, label %for.end.202

for.body.40:                                      ; preds = %for.cond.37
  %arrayidx41 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  store i32 0, i32* %arrayidx41, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.195, %for.body.40
  %arrayidx43 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  %22 = load i32, i32* %arrayidx43, align 4
  %cmp44 = icmp slt i32 %22, 4
  br i1 %cmp44, label %for.body.45, label %for.end.198

for.body.45:                                      ; preds = %for.cond.42
  %arrayidx46 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  store i32 0, i32* %arrayidx46, align 4
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.191, %for.body.45
  %arrayidx48 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  %23 = load i32, i32* %arrayidx48, align 4
  %cmp49 = icmp slt i32 %23, 4
  br i1 %cmp49, label %for.body.50, label %for.end.194

for.body.50:                                      ; preds = %for.cond.47
  %arrayidx51 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  %24 = load i32, i32* %arrayidx51, align 4
  %arrayidx52 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  %25 = load i32, i32* %arrayidx52, align 4
  %cmp53 = icmp ne i32 %24, %25
  br i1 %cmp53, label %land.lhs.true, label %if.end.190

land.lhs.true:                                    ; preds = %for.body.50
  %arrayidx54 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  %26 = load i32, i32* %arrayidx54, align 4
  %arrayidx55 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  %27 = load i32, i32* %arrayidx55, align 4
  %cmp56 = icmp ne i32 %26, %27
  br i1 %cmp56, label %land.lhs.true.57, label %if.end.190

land.lhs.true.57:                                 ; preds = %land.lhs.true
  %arrayidx58 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  %28 = load i32, i32* %arrayidx58, align 4
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  %29 = load i32, i32* %arrayidx59, align 4
  %cmp60 = icmp ne i32 %28, %29
  br i1 %cmp60, label %land.lhs.true.61, label %if.end.190

land.lhs.true.61:                                 ; preds = %land.lhs.true.57
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  %30 = load i32, i32* %arrayidx62, align 4
  %arrayidx63 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  %31 = load i32, i32* %arrayidx63, align 4
  %cmp64 = icmp ne i32 %30, %31
  br i1 %cmp64, label %land.lhs.true.65, label %if.end.190

land.lhs.true.65:                                 ; preds = %land.lhs.true.61
  %arrayidx66 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  %32 = load i32, i32* %arrayidx66, align 4
  %arrayidx67 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  %33 = load i32, i32* %arrayidx67, align 4
  %cmp68 = icmp ne i32 %32, %33
  br i1 %cmp68, label %land.lhs.true.69, label %if.end.190

land.lhs.true.69:                                 ; preds = %land.lhs.true.65
  %arrayidx70 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  %34 = load i32, i32* %arrayidx70, align 4
  %arrayidx71 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  %35 = load i32, i32* %arrayidx71, align 4
  %cmp72 = icmp ne i32 %34, %35
  br i1 %cmp72, label %if.then.73, label %if.end.190

if.then.73:                                       ; preds = %land.lhs.true.69
  %arrayidx74 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 0
  store i32 0, i32* %arrayidx74, align 4
  br label %for.cond.75

for.cond.75:                                      ; preds = %for.inc.186, %if.then.73
  %arrayidx76 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 0
  %36 = load i32, i32* %arrayidx76, align 4
  %cmp77 = icmp slt i32 %36, 2
  br i1 %cmp77, label %for.body.78, label %for.end.189

for.body.78:                                      ; preds = %for.cond.75
  %arrayidx79 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 1
  store i32 0, i32* %arrayidx79, align 4
  br label %for.cond.80

for.cond.80:                                      ; preds = %for.inc.182, %for.body.78
  %arrayidx81 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 1
  %37 = load i32, i32* %arrayidx81, align 4
  %cmp82 = icmp slt i32 %37, 2
  br i1 %cmp82, label %for.body.83, label %for.end.185

for.body.83:                                      ; preds = %for.cond.80
  %arrayidx84 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 2
  store i32 0, i32* %arrayidx84, align 4
  br label %for.cond.85

for.cond.85:                                      ; preds = %for.inc.178, %for.body.83
  %arrayidx86 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 2
  %38 = load i32, i32* %arrayidx86, align 4
  %cmp87 = icmp slt i32 %38, 2
  br i1 %cmp87, label %for.body.88, label %for.end.181

for.body.88:                                      ; preds = %for.cond.85
  %arrayidx89 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 3
  store i32 0, i32* %arrayidx89, align 4
  br label %for.cond.90

for.cond.90:                                      ; preds = %for.inc.174, %for.body.88
  %arrayidx91 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 3
  %39 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp slt i32 %39, 2
  br i1 %cmp92, label %for.body.93, label %for.end.177

for.body.93:                                      ; preds = %for.cond.90
  store i32 0, i32* %j, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.117, %for.body.93
  %40 = load i32, i32* %j, align 4
  %cmp95 = icmp slt i32 %40, 4
  br i1 %cmp95, label %for.body.96, label %for.end.119

for.body.96:                                      ; preds = %for.cond.94
  %41 = load i32, i32* %j, align 4
  %idxprom97 = sext i32 %41 to i64
  %arrayidx98 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 %idxprom97
  %42 = load i32, i32* %arrayidx98, align 4
  %43 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %43 to i64
  %arrayidx100 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom99
  store i32 %42, i32* %arrayidx100, align 4
  %44 = load i32, i32* %j, align 4
  %idxprom101 = sext i32 %44 to i64
  %arrayidx102 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 %idxprom101
  %45 = load i32, i32* %arrayidx102, align 4
  %cmp103 = icmp eq i32 %45, 1
  br i1 %cmp103, label %if.then.104, label %if.end.110

if.then.104:                                      ; preds = %for.body.96
  %46 = load i32, i32* %j, align 4
  %idxprom105 = sext i32 %46 to i64
  %arrayidx106 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom105
  %47 = load i32, i32* %arrayidx106, align 4
  %sub107 = sub nsw i32 7, %47
  %48 = load i32, i32* %j, align 4
  %idxprom108 = sext i32 %48 to i64
  %arrayidx109 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom108
  store i32 %sub107, i32* %arrayidx109, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.104, %for.body.96
  %49 = load i32, i32* %j, align 4
  %idxprom111 = sext i32 %49 to i64
  %arrayidx112 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom111
  %50 = load i32, i32* %arrayidx112, align 4
  %sub113 = sub nsw i32 7, %50
  %51 = load i32, i32* %j, align 4
  %sub114 = sub nsw i32 7, %51
  %idxprom115 = sext i32 %sub114 to i64
  %arrayidx116 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom115
  store i32 %sub113, i32* %arrayidx116, align 4
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.110
  %52 = load i32, i32* %j, align 4
  %inc118 = add nsw i32 %52, 1
  store i32 %inc118, i32* %j, align 4
  br label %for.cond.94

for.end.119:                                      ; preds = %for.cond.94
  store i32 0, i32* %j, align 4
  br label %for.cond.120

for.cond.120:                                     ; preds = %for.inc.131, %for.end.119
  %53 = load i32, i32* %j, align 4
  %54 = load i32, i32* %length, align 4
  %cmp121 = icmp slt i32 %53, %54
  br i1 %cmp121, label %for.body.122, label %for.end.133

for.body.122:                                     ; preds = %for.cond.120
  %55 = load i32, i32* %j, align 4
  %idxprom123 = sext i32 %55 to i64
  %56 = load i32, i32* %iloop, align 4
  %idxprom124 = sext i32 %56 to i64
  %arrayidx125 = getelementptr inbounds [3 x [6 x i32]], [3 x [6 x i32]]* @make_loop_table.loop_ind, i32 0, i64 %idxprom124
  %arrayidx126 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx125, i32 0, i64 %idxprom123
  %57 = load i32, i32* %arrayidx126, align 4
  %idxprom127 = sext i32 %57 to i64
  %arrayidx128 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom127
  %58 = load i32, i32* %arrayidx128, align 4
  %59 = load i32, i32* %j, align 4
  %idxprom129 = sext i32 %59 to i64
  %arrayidx130 = getelementptr inbounds [6 x i32], [6 x i32]* %vec, i32 0, i64 %idxprom129
  store i32 %58, i32* %arrayidx130, align 4
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.122
  %60 = load i32, i32* %j, align 4
  %inc132 = add nsw i32 %60, 1
  store i32 %inc132, i32* %j, align 4
  br label %for.cond.120

for.end.133:                                      ; preds = %for.cond.120
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %vec, i32 0, i32 0
  %61 = load i32, i32* %length, align 4
  call void @char_num(i32* %arraydecay, i32* %chr, i32 %61)
  store i32 0, i32* %flag, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.142, %for.end.133
  %62 = load i32, i32* %j, align 4
  %63 = load i32, i32* %count, align 4
  %cmp135 = icmp slt i32 %62, %63
  br i1 %cmp135, label %for.body.136, label %for.end.144

for.body.136:                                     ; preds = %for.cond.134
  %64 = load i32, i32* %chr, align 4
  %65 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %65 to i64
  %arrayidx138 = getelementptr inbounds [16 x i32], [16 x i32]* @loop_char, i32 0, i64 %idxprom137
  %66 = load i32, i32* %arrayidx138, align 4
  %cmp139 = icmp eq i32 %64, %66
  br i1 %cmp139, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %for.body.136
  store i32 1, i32* %flag, align 4
  br label %if.end.141

if.end.141:                                       ; preds = %if.then.140, %for.body.136
  br label %for.inc.142

for.inc.142:                                      ; preds = %if.end.141
  %67 = load i32, i32* %j, align 4
  %inc143 = add nsw i32 %67, 1
  store i32 %inc143, i32* %j, align 4
  br label %for.cond.134

for.end.144:                                      ; preds = %for.cond.134
  %68 = load i32, i32* %flag, align 4
  %cmp145 = icmp eq i32 %68, 0
  br i1 %cmp145, label %if.then.146, label %if.end.164

if.then.146:                                      ; preds = %for.end.144
  %69 = load i32, i32* %chr, align 4
  %70 = load i32, i32* %count, align 4
  %idxprom147 = sext i32 %70 to i64
  %arrayidx148 = getelementptr inbounds [16 x i32], [16 x i32]* @loop_char, i32 0, i64 %idxprom147
  store i32 %69, i32* %arrayidx148, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.160, %if.then.146
  %71 = load i32, i32* %j, align 4
  %72 = load i32, i32* %length, align 4
  %cmp150 = icmp slt i32 %71, %72
  br i1 %cmp150, label %for.body.151, label %for.end.162

for.body.151:                                     ; preds = %for.cond.149
  %73 = load i32, i32* %j, align 4
  %idxprom152 = sext i32 %73 to i64
  %arrayidx153 = getelementptr inbounds [6 x i32], [6 x i32]* %vec, i32 0, i64 %idxprom152
  %74 = load i32, i32* %arrayidx153, align 4
  %75 = load i32, i32* %j, align 4
  %idxprom154 = sext i32 %75 to i64
  %76 = load i32, i32* %count, align 4
  %idxprom155 = sext i32 %76 to i64
  %77 = load i32, i32* %iloop, align 4
  %idxprom156 = sext i32 %77 to i64
  %arrayidx157 = getelementptr inbounds [3 x [16 x [6 x i32]]], [3 x [16 x [6 x i32]]]* @loop_table, i32 0, i64 %idxprom156
  %arrayidx158 = getelementptr inbounds [16 x [6 x i32]], [16 x [6 x i32]]* %arrayidx157, i32 0, i64 %idxprom155
  %arrayidx159 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx158, i32 0, i64 %idxprom154
  store i32 %74, i32* %arrayidx159, align 4
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.151
  %78 = load i32, i32* %j, align 4
  %inc161 = add nsw i32 %78, 1
  store i32 %inc161, i32* %j, align 4
  br label %for.cond.149

for.end.162:                                      ; preds = %for.cond.149
  %79 = load i32, i32* %count, align 4
  %inc163 = add nsw i32 %79, 1
  store i32 %inc163, i32* %count, align 4
  br label %if.end.164

if.end.164:                                       ; preds = %for.end.162, %for.end.144
  %80 = load i32, i32* %count, align 4
  %cmp165 = icmp sgt i32 %80, 16
  br i1 %cmp165, label %if.then.166, label %if.end.171

if.then.166:                                      ; preds = %if.end.164
  %81 = load i32, i32* @this_node, align 4
  %cmp167 = icmp eq i32 %81, 0
  br i1 %cmp167, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %if.then.166
  %call169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.168, %if.then.166
  call void @exit(i32 0) #5
  unreachable

if.end.171:                                       ; preds = %if.end.164
  %82 = load i32, i32* %count, align 4
  %83 = load i32, i32* %iloop, align 4
  %idxprom172 = sext i32 %83 to i64
  %arrayidx173 = getelementptr inbounds [3 x i32], [3 x i32]* @loop_num, i32 0, i64 %idxprom172
  store i32 %82, i32* %arrayidx173, align 4
  br label %for.inc.174

for.inc.174:                                      ; preds = %if.end.171
  %arrayidx175 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 3
  %84 = load i32, i32* %arrayidx175, align 4
  %inc176 = add nsw i32 %84, 1
  store i32 %inc176, i32* %arrayidx175, align 4
  br label %for.cond.90

for.end.177:                                      ; preds = %for.cond.90
  br label %for.inc.178

for.inc.178:                                      ; preds = %for.end.177
  %arrayidx179 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 2
  %85 = load i32, i32* %arrayidx179, align 4
  %inc180 = add nsw i32 %85, 1
  store i32 %inc180, i32* %arrayidx179, align 4
  br label %for.cond.85

for.end.181:                                      ; preds = %for.cond.85
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.end.181
  %arrayidx183 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 1
  %86 = load i32, i32* %arrayidx183, align 4
  %inc184 = add nsw i32 %86, 1
  store i32 %inc184, i32* %arrayidx183, align 4
  br label %for.cond.80

for.end.185:                                      ; preds = %for.cond.80
  br label %for.inc.186

for.inc.186:                                      ; preds = %for.end.185
  %arrayidx187 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 0
  %87 = load i32, i32* %arrayidx187, align 4
  %inc188 = add nsw i32 %87, 1
  store i32 %inc188, i32* %arrayidx187, align 4
  br label %for.cond.75

for.end.189:                                      ; preds = %for.cond.75
  br label %if.end.190

if.end.190:                                       ; preds = %for.end.189, %land.lhs.true.69, %land.lhs.true.65, %land.lhs.true.61, %land.lhs.true.57, %land.lhs.true, %for.body.50
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.190
  %arrayidx192 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  %88 = load i32, i32* %arrayidx192, align 4
  %inc193 = add nsw i32 %88, 1
  store i32 %inc193, i32* %arrayidx192, align 4
  br label %for.cond.47

for.end.194:                                      ; preds = %for.cond.47
  br label %for.inc.195

for.inc.195:                                      ; preds = %for.end.194
  %arrayidx196 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  %89 = load i32, i32* %arrayidx196, align 4
  %inc197 = add nsw i32 %89, 1
  store i32 %inc197, i32* %arrayidx196, align 4
  br label %for.cond.42

for.end.198:                                      ; preds = %for.cond.42
  br label %for.inc.199

for.inc.199:                                      ; preds = %for.end.198
  %arrayidx200 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  %90 = load i32, i32* %arrayidx200, align 4
  %inc201 = add nsw i32 %90, 1
  store i32 %inc201, i32* %arrayidx200, align 4
  br label %for.cond.37

for.end.202:                                      ; preds = %for.cond.37
  br label %for.inc.203

for.inc.203:                                      ; preds = %for.end.202
  %arrayidx204 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  %91 = load i32, i32* %arrayidx204, align 4
  %inc205 = add nsw i32 %91, 1
  store i32 %inc205, i32* %arrayidx204, align 4
  br label %for.cond.32

for.end.206:                                      ; preds = %for.cond.32
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.end.206
  %92 = load i32, i32* %iloop, align 4
  %inc208 = add nsw i32 %92, 1
  store i32 %inc208, i32* %iloop, align 4
  br label %for.cond.26

for.end.209:                                      ; preds = %for.cond.26
  %93 = load i32, i32* @this_node, align 4
  %cmp210 = icmp eq i32 %93, 0
  br i1 %cmp210, label %if.then.211, label %if.end.213

if.then.211:                                      ; preds = %for.end.209
  %call212 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.211, %for.end.209
  store i32 0, i32* %i, align 4
  br label %for.cond.214

for.cond.214:                                     ; preds = %for.inc.233, %if.end.213
  %94 = load i32, i32* %i, align 4
  %cmp215 = icmp slt i32 %94, 1
  br i1 %cmp215, label %for.body.216, label %for.end.235

for.body.216:                                     ; preds = %for.cond.214
  store i32 0, i32* %j, align 4
  br label %for.cond.217

for.cond.217:                                     ; preds = %for.inc.230, %for.body.216
  %95 = load i32, i32* %j, align 4
  %cmp218 = icmp slt i32 %95, 3
  br i1 %cmp218, label %for.body.219, label %for.end.232

for.body.219:                                     ; preds = %for.cond.217
  %96 = load i32, i32* @this_node, align 4
  %cmp220 = icmp eq i32 %96, 0
  br i1 %cmp220, label %if.then.221, label %if.end.229

if.then.221:                                      ; preds = %for.body.219
  %97 = load i32, i32* %j, align 4
  %98 = load i32, i32* %i, align 4
  %99 = load i32, i32* %i, align 4
  %idxprom222 = sext i32 %99 to i64
  %100 = load i32, i32* %j, align 4
  %idxprom223 = sext i32 %100 to i64
  %arrayidx224 = getelementptr inbounds [3 x [1 x double]], [3 x [1 x double]]* @loop_coeff, i32 0, i64 %idxprom223
  %arrayidx225 = getelementptr inbounds [1 x double], [1 x double]* %arrayidx224, i32 0, i64 %idxprom222
  %101 = load double, double* %arrayidx225, align 8
  %102 = load i32, i32* %j, align 4
  %idxprom226 = sext i32 %102 to i64
  %arrayidx227 = getelementptr inbounds [3 x i32], [3 x i32]* @loop_num, i32 0, i64 %idxprom226
  %103 = load i32, i32* %arrayidx227, align 4
  %call228 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0), i32 %97, i32 %98, double %101, i32 %103)
  br label %if.end.229

if.end.229:                                       ; preds = %if.then.221, %for.body.219
  br label %for.inc.230

for.inc.230:                                      ; preds = %if.end.229
  %104 = load i32, i32* %j, align 4
  %inc231 = add nsw i32 %104, 1
  store i32 %inc231, i32* %j, align 4
  br label %for.cond.217

for.end.232:                                      ; preds = %for.cond.217
  br label %for.inc.233

for.inc.233:                                      ; preds = %for.end.232
  %105 = load i32, i32* %i, align 4
  %inc234 = add nsw i32 %105, 1
  store i32 %inc234, i32* %i, align 4
  br label %for.cond.214

for.end.235:                                      ; preds = %for.cond.214
  ret void
}

; Function Attrs: nounwind
declare double @log(double) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @char_num(i32* %dig, i32* %chr, i32 %length) #0 {
entry:
  %dig.addr = alloca i32*, align 8
  %chr.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %bdig = alloca [6 x i32], align 16
  %tenl = alloca i32, align 4
  %newv = alloca i32, align 4
  %old = alloca i32, align 4
  store i32* %dig, i32** %dig.addr, align 8
  store i32* %chr, i32** %chr.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 1, i32* %tenl, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %j, align 4
  %1 = load i32, i32* %length.addr, align 4
  %sub = sub nsw i32 %1, 1
  %cmp = icmp slt i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %tenl, align 4
  %mul = mul nsw i32 %2, 10
  store i32 %mul, i32* %tenl, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, i32* %j, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %4 = load i32, i32* %length.addr, align 4
  %sub1 = sub nsw i32 %4, 1
  %idxprom = sext i32 %sub1 to i64
  %5 = load i32*, i32** %dig.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %7 = load i32*, i32** %chr.addr, align 8
  store i32 %6, i32* %7, align 4
  %8 = load i32, i32* %length.addr, align 4
  %sub2 = sub nsw i32 %8, 2
  store i32 %sub2, i32* %j, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.9, %for.end
  %9 = load i32, i32* %j, align 4
  %cmp4 = icmp sge i32 %9, 0
  br i1 %cmp4, label %for.body.5, label %for.end.10

for.body.5:                                       ; preds = %for.cond.3
  %10 = load i32*, i32** %chr.addr, align 8
  %11 = load i32, i32* %10, align 4
  %mul6 = mul nsw i32 %11, 10
  %12 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %12 to i64
  %13 = load i32*, i32** %dig.addr, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %13, i64 %idxprom7
  %14 = load i32, i32* %arrayidx8, align 4
  %add = add nsw i32 %mul6, %14
  %15 = load i32*, i32** %chr.addr, align 8
  store i32 %add, i32* %15, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.5
  %16 = load i32, i32* %j, align 4
  %dec = add nsw i32 %16, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.3

for.end.10:                                       ; preds = %for.cond.3
  %17 = load i32*, i32** %chr.addr, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %old, align 4
  %19 = load i32, i32* %length.addr, align 4
  %sub11 = sub nsw i32 %19, 1
  store i32 %sub11, i32* %j, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc.24, %for.end.10
  %20 = load i32, i32* %j, align 4
  %cmp13 = icmp sge i32 %20, 1
  br i1 %cmp13, label %for.body.14, label %for.end.26

for.body.14:                                      ; preds = %for.cond.12
  %21 = load i32, i32* %old, align 4
  %22 = load i32, i32* %tenl, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %23 to i64
  %24 = load i32*, i32** %dig.addr, align 8
  %arrayidx16 = getelementptr inbounds i32, i32* %24, i64 %idxprom15
  %25 = load i32, i32* %arrayidx16, align 4
  %mul17 = mul nsw i32 %22, %25
  %sub18 = sub nsw i32 %21, %mul17
  store i32 %sub18, i32* %newv, align 4
  %26 = load i32, i32* %newv, align 4
  %mul19 = mul nsw i32 %26, 10
  %27 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load i32*, i32** %dig.addr, align 8
  %arrayidx21 = getelementptr inbounds i32, i32* %28, i64 %idxprom20
  %29 = load i32, i32* %arrayidx21, align 4
  %add22 = add nsw i32 %mul19, %29
  store i32 %add22, i32* %newv, align 4
  %30 = load i32, i32* %newv, align 4
  %31 = load i32*, i32** %chr.addr, align 8
  %32 = load i32, i32* %31, align 4
  %cmp23 = icmp slt i32 %30, %32
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.14
  %33 = load i32, i32* %newv, align 4
  %34 = load i32*, i32** %chr.addr, align 8
  store i32 %33, i32* %34, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.14
  %35 = load i32, i32* %newv, align 4
  store i32 %35, i32* %old, align 4
  br label %for.inc.24

for.inc.24:                                       ; preds = %if.end
  %36 = load i32, i32* %j, align 4
  %dec25 = add nsw i32 %36, -1
  store i32 %dec25, i32* %j, align 4
  br label %for.cond.12

for.end.26:                                       ; preds = %for.cond.12
  store i32 0, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.37, %for.end.26
  %37 = load i32, i32* %j, align 4
  %38 = load i32, i32* %length.addr, align 4
  %cmp28 = icmp slt i32 %37, %38
  br i1 %cmp28, label %for.body.29, label %for.end.39

for.body.29:                                      ; preds = %for.cond.27
  %39 = load i32, i32* %length.addr, align 4
  %40 = load i32, i32* %j, align 4
  %sub30 = sub nsw i32 %39, %40
  %sub31 = sub nsw i32 %sub30, 1
  %idxprom32 = sext i32 %sub31 to i64
  %41 = load i32*, i32** %dig.addr, align 8
  %arrayidx33 = getelementptr inbounds i32, i32* %41, i64 %idxprom32
  %42 = load i32, i32* %arrayidx33, align 4
  %sub34 = sub nsw i32 7, %42
  %43 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %43 to i64
  %arrayidx36 = getelementptr inbounds [6 x i32], [6 x i32]* %bdig, i32 0, i64 %idxprom35
  store i32 %sub34, i32* %arrayidx36, align 4
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.29
  %44 = load i32, i32* %j, align 4
  %inc38 = add nsw i32 %44, 1
  store i32 %inc38, i32* %j, align 4
  br label %for.cond.27

for.end.39:                                       ; preds = %for.cond.27
  %45 = load i32, i32* %length.addr, align 4
  %sub40 = sub nsw i32 %45, 1
  %idxprom41 = sext i32 %sub40 to i64
  %arrayidx42 = getelementptr inbounds [6 x i32], [6 x i32]* %bdig, i32 0, i64 %idxprom41
  %46 = load i32, i32* %arrayidx42, align 4
  store i32 %46, i32* %old, align 4
  %47 = load i32, i32* %length.addr, align 4
  %sub43 = sub nsw i32 %47, 2
  store i32 %sub43, i32* %j, align 4
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.51, %for.end.39
  %48 = load i32, i32* %j, align 4
  %cmp45 = icmp sge i32 %48, 0
  br i1 %cmp45, label %for.body.46, label %for.end.53

for.body.46:                                      ; preds = %for.cond.44
  %49 = load i32, i32* %old, align 4
  %mul47 = mul nsw i32 %49, 10
  %50 = load i32, i32* %j, align 4
  %idxprom48 = sext i32 %50 to i64
  %arrayidx49 = getelementptr inbounds [6 x i32], [6 x i32]* %bdig, i32 0, i64 %idxprom48
  %51 = load i32, i32* %arrayidx49, align 4
  %add50 = add nsw i32 %mul47, %51
  store i32 %add50, i32* %old, align 4
  br label %for.inc.51

for.inc.51:                                       ; preds = %for.body.46
  %52 = load i32, i32* %j, align 4
  %dec52 = add nsw i32 %52, -1
  store i32 %dec52, i32* %j, align 4
  br label %for.cond.44

for.end.53:                                       ; preds = %for.cond.44
  %53 = load i32, i32* %old, align 4
  %54 = load i32*, i32** %chr.addr, align 8
  %55 = load i32, i32* %54, align 4
  %cmp54 = icmp slt i32 %53, %55
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %for.end.53
  %56 = load i32, i32* %old, align 4
  %57 = load i32*, i32** %chr.addr, align 8
  store i32 %56, i32* %57, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %for.end.53
  %58 = load i32, i32* %length.addr, align 4
  %sub57 = sub nsw i32 %58, 1
  store i32 %sub57, i32* %j, align 4
  br label %for.cond.58

for.cond.58:                                      ; preds = %for.inc.72, %if.end.56
  %59 = load i32, i32* %j, align 4
  %cmp59 = icmp sge i32 %59, 1
  br i1 %cmp59, label %for.body.60, label %for.end.74

for.body.60:                                      ; preds = %for.cond.58
  %60 = load i32, i32* %old, align 4
  %61 = load i32, i32* %tenl, align 4
  %62 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %62 to i64
  %arrayidx62 = getelementptr inbounds [6 x i32], [6 x i32]* %bdig, i32 0, i64 %idxprom61
  %63 = load i32, i32* %arrayidx62, align 4
  %mul63 = mul nsw i32 %61, %63
  %sub64 = sub nsw i32 %60, %mul63
  store i32 %sub64, i32* %newv, align 4
  %64 = load i32, i32* %newv, align 4
  %mul65 = mul nsw i32 %64, 10
  %65 = load i32, i32* %j, align 4
  %idxprom66 = sext i32 %65 to i64
  %arrayidx67 = getelementptr inbounds [6 x i32], [6 x i32]* %bdig, i32 0, i64 %idxprom66
  %66 = load i32, i32* %arrayidx67, align 4
  %add68 = add nsw i32 %mul65, %66
  store i32 %add68, i32* %newv, align 4
  %67 = load i32, i32* %newv, align 4
  %68 = load i32*, i32** %chr.addr, align 8
  %69 = load i32, i32* %68, align 4
  %cmp69 = icmp slt i32 %67, %69
  br i1 %cmp69, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %for.body.60
  %70 = load i32, i32* %newv, align 4
  %71 = load i32*, i32** %chr.addr, align 8
  store i32 %70, i32* %71, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %for.body.60
  %72 = load i32, i32* %newv, align 4
  store i32 %72, i32* %old, align 4
  br label %for.inc.72

for.inc.72:                                       ; preds = %if.end.71
  %73 = load i32, i32* %j, align 4
  %dec73 = add nsw i32 %73, -1
  store i32 %dec73, i32* %j, align 4
  br label %for.cond.58

for.end.74:                                       ; preds = %for.cond.58
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind uwtable
define double @imp_gauge_action() #0 {
entry:
  %i = alloca i32, align 4
  %rep = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %trace = alloca %struct.complex, align 8
  %g_action = alloca double, align 8
  %action = alloca double, align 8
  %act2 = alloca double, align 8
  %total_action = alloca double, align 8
  %length = alloca i32, align 4
  %ln = alloca i32, align 4
  %iloop = alloca i32, align 4
  %coerce = alloca %struct.complex, align 8
  store double 0.000000e+00, double* %g_action, align 8
  store i32 0, i32* %iloop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %0 = load i32, i32* %iloop, align 4
  %cmp = icmp slt i32 %0, 3
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %iloop, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @loop_length, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  store i32 %2, i32* %length, align 4
  store i32 0, i32* %ln, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.29, %for.body
  %3 = load i32, i32* %ln, align 4
  %4 = load i32, i32* %iloop, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [3 x i32], [3 x i32]* @loop_num, i32 0, i64 %idxprom2
  %5 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp slt i32 %3, %5
  br i1 %cmp4, label %for.body.5, label %for.end.31

for.body.5:                                       ; preds = %for.cond.1
  %6 = load i32, i32* %ln, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load i32, i32* %iloop, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [3 x [16 x [6 x i32]]], [3 x [16 x [6 x i32]]]* @loop_table, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [16 x [6 x i32]], [16 x [6 x i32]]* %arrayidx8, i32 0, i64 %idxprom6
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx9, i32 0, i32 0
  %8 = load i32, i32* %length, align 4
  call void @path_product(i32* %arraydecay, i32 %8)
  store i32 0, i32* %i, align 4
  %9 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %9, %struct.site** %s, align 8
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.26, %for.body.5
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @sites_on_node, align 4
  %cmp11 = icmp slt i32 %10, %11
  br i1 %cmp11, label %for.body.12, label %for.end.28

for.body.12:                                      ; preds = %for.cond.10
  %12 = load %struct.site*, %struct.site** %s, align 8
  %tempmat1 = getelementptr inbounds %struct.site, %struct.site* %12, i32 0, i32 20
  %call = call { double, double } @trace_su3(%struct.su3_matrix* %tempmat1)
  %13 = bitcast %struct.complex* %coerce to { double, double }*
  %14 = getelementptr { double, double }, { double, double }* %13, i32 0, i32 0
  %15 = extractvalue { double, double } %call, 0
  store double %15, double* %14, align 8
  %16 = getelementptr { double, double }, { double, double }* %13, i32 0, i32 1
  %17 = extractvalue { double, double } %call, 1
  store double %17, double* %16, align 8
  %18 = bitcast %struct.complex* %trace to i8*
  %19 = bitcast %struct.complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %18, i8* %19, i64 16, i32 8, i1 false)
  %real = getelementptr inbounds %struct.complex, %struct.complex* %trace, i32 0, i32 0
  %20 = load double, double* %real, align 8
  %sub = fsub double 3.000000e+00, %20
  store double %sub, double* %action, align 8
  %21 = load i32, i32* %iloop, align 4
  %idxprom13 = sext i32 %21 to i64
  %arrayidx14 = getelementptr inbounds [3 x [1 x double]], [3 x [1 x double]]* @loop_coeff, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [1 x double], [1 x double]* %arrayidx14, i32 0, i64 0
  %22 = load double, double* %arrayidx15, align 8
  %23 = load double, double* %action, align 8
  %mul = fmul double %22, %23
  store double %mul, double* %total_action, align 8
  %24 = load double, double* %action, align 8
  store double %24, double* %act2, align 8
  store i32 1, i32* %rep, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body.12
  %25 = load i32, i32* %rep, align 4
  %cmp17 = icmp slt i32 %25, 1
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %26 = load double, double* %action, align 8
  %27 = load double, double* %act2, align 8
  %mul19 = fmul double %27, %26
  store double %mul19, double* %act2, align 8
  %28 = load i32, i32* %rep, align 4
  %idxprom20 = sext i32 %28 to i64
  %29 = load i32, i32* %iloop, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds [3 x [1 x double]], [3 x [1 x double]]* @loop_coeff, i32 0, i64 %idxprom21
  %arrayidx23 = getelementptr inbounds [1 x double], [1 x double]* %arrayidx22, i32 0, i64 %idxprom20
  %30 = load double, double* %arrayidx23, align 8
  %31 = load double, double* %act2, align 8
  %mul24 = fmul double %30, %31
  %32 = load double, double* %total_action, align 8
  %add = fadd double %32, %mul24
  store double %add, double* %total_action, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %33 = load i32, i32* %rep, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %rep, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  %34 = load double, double* %total_action, align 8
  %35 = load double, double* %g_action, align 8
  %add25 = fadd double %35, %34
  store double %add25, double* %g_action, align 8
  br label %for.inc.26

for.inc.26:                                       ; preds = %for.end
  %36 = load i32, i32* %i, align 4
  %inc27 = add nsw i32 %36, 1
  store i32 %inc27, i32* %i, align 4
  %37 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %37, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.10

for.end.28:                                       ; preds = %for.cond.10
  br label %for.inc.29

for.inc.29:                                       ; preds = %for.end.28
  %38 = load i32, i32* %ln, align 4
  %inc30 = add nsw i32 %38, 1
  store i32 %inc30, i32* %ln, align 4
  br label %for.cond.1

for.end.31:                                       ; preds = %for.cond.1
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end.31
  %39 = load i32, i32* %iloop, align 4
  %inc33 = add nsw i32 %39, 1
  store i32 %inc33, i32* %iloop, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  call void @g_doublesum(double* %g_action)
  %40 = load double, double* %g_action, align 8
  ret double %40
}

declare void @path_product(i32*, i32) #2

declare { double, double } @trace_su3(%struct.su3_matrix*) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare void @g_doublesum(double*) #2

; Function Attrs: nounwind uwtable
define void @imp_gauge_force(double %eps, i32 %mom_off) #0 {
entry:
  %eps.addr = alloca double, align 8
  %mom_off.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %dir = alloca i32, align 4
  %st = alloca %struct.site*, align 8
  %tmat1 = alloca %struct.su3_matrix, align 8
  %tmat2 = alloca %struct.su3_matrix, align 8
  %eb3 = alloca double, align 8
  %momentum = alloca %struct.anti_hermitmat*, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %dirs = alloca [6 x i32], align 16
  %length = alloca i32, align 4
  %path_dir = alloca [6 x i32], align 16
  %path_length = alloca i32, align 4
  %ln = alloca i32, align 4
  %iloop = alloca i32, align 4
  %action = alloca double, align 8
  %act2 = alloca double, align 8
  %new_term = alloca double, align 8
  %ncount = alloca i32, align 4
  %coerce = alloca %struct.complex, align 8
  store double %eps, double* %eps.addr, align 8
  store i32 %mom_off, i32* %mom_off.addr, align 4
  %0 = load double, double* %eps.addr, align 8
  %1 = load double, double* @beta, align 8
  %mul = fmul double %0, %1
  %div = fdiv double %mul, 3.000000e+00
  store double %div, double* %eb3, align 8
  store i32 0, i32* %dir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.150, %entry
  %2 = load i32, i32* %dir, align 4
  %cmp = icmp sle i32 %2, 3
  br i1 %cmp, label %for.body, label %for.end.152

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %3 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %3, %struct.site** %st, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.15, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @sites_on_node, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body.3, label %for.end.17

for.body.3:                                       ; preds = %for.cond.1
  store i32 0, i32* %j, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.12, %for.body.3
  %6 = load i32, i32* %j, align 4
  %cmp5 = icmp slt i32 %6, 3
  br i1 %cmp5, label %for.body.6, label %for.end.14

for.body.6:                                       ; preds = %for.cond.4
  store i32 0, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.6
  %7 = load i32, i32* %k, align 4
  %cmp8 = icmp slt i32 %7, 3
  br i1 %cmp8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %8 = load i32, i32* %k, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i32, i32* %j, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct.site*, %struct.site** %st, align 8
  %staple = getelementptr inbounds %struct.site, %struct.site* %10, i32 0, i32 21
  %e = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %staple, i32 0, i32 0
  %arrayidx = getelementptr inbounds [3 x [3 x %struct.complex]], [3 x [3 x %struct.complex]]* %e, i32 0, i64 %idxprom10
  %arrayidx11 = getelementptr inbounds [3 x %struct.complex], [3 x %struct.complex]* %arrayidx, i32 0, i64 %idxprom
  %call = call { double, double } @cmplx(double 0.000000e+00, double 0.000000e+00)
  %11 = bitcast %struct.complex* %coerce to { double, double }*
  %12 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 0
  %13 = extractvalue { double, double } %call, 0
  store double %13, double* %12, align 8
  %14 = getelementptr { double, double }, { double, double }* %11, i32 0, i32 1
  %15 = extractvalue { double, double } %call, 1
  store double %15, double* %14, align 8
  %16 = bitcast %struct.complex* %arrayidx11 to i8*
  %17 = bitcast %struct.complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %16, i8* %17, i64 16, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %18 = load i32, i32* %k, align 4
  %inc = add nsw i32 %18, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %19 = load i32, i32* %j, align 4
  %inc13 = add nsw i32 %19, 1
  store i32 %inc13, i32* %j, align 4
  br label %for.cond.4

for.end.14:                                       ; preds = %for.cond.4
  br label %for.inc.15

for.inc.15:                                       ; preds = %for.end.14
  %20 = load i32, i32* %i, align 4
  %inc16 = add nsw i32 %20, 1
  store i32 %inc16, i32* %i, align 4
  %21 = load %struct.site*, %struct.site** %st, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %21, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %st, align 8
  br label %for.cond.1

for.end.17:                                       ; preds = %for.cond.1
  store i32 0, i32* %ncount, align 4
  store i32 0, i32* %iloop, align 4
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.131, %for.end.17
  %22 = load i32, i32* %iloop, align 4
  %cmp19 = icmp slt i32 %22, 3
  br i1 %cmp19, label %for.body.20, label %for.end.133

for.body.20:                                      ; preds = %for.cond.18
  %23 = load i32, i32* %iloop, align 4
  %idxprom21 = sext i32 %23 to i64
  %arrayidx22 = getelementptr inbounds [3 x i32], [3 x i32]* @loop_length, i32 0, i64 %idxprom21
  %24 = load i32, i32* %arrayidx22, align 4
  store i32 %24, i32* %length, align 4
  store i32 0, i32* %ln, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.128, %for.body.20
  %25 = load i32, i32* %ln, align 4
  %26 = load i32, i32* %iloop, align 4
  %idxprom24 = sext i32 %26 to i64
  %arrayidx25 = getelementptr inbounds [3 x i32], [3 x i32]* @loop_num, i32 0, i64 %idxprom24
  %27 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp slt i32 %25, %27
  br i1 %cmp26, label %for.body.27, label %for.end.130

for.body.27:                                      ; preds = %for.cond.23
  store i32 0, i32* %k, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.57, %for.body.27
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* %length, align 4
  %cmp29 = icmp slt i32 %28, %29
  br i1 %cmp29, label %for.body.30, label %for.end.59

for.body.30:                                      ; preds = %for.cond.28
  %30 = load i32, i32* %k, align 4
  %idxprom31 = sext i32 %30 to i64
  %31 = load i32, i32* %ln, align 4
  %idxprom32 = sext i32 %31 to i64
  %32 = load i32, i32* %iloop, align 4
  %idxprom33 = sext i32 %32 to i64
  %arrayidx34 = getelementptr inbounds [3 x [16 x [6 x i32]]], [3 x [16 x [6 x i32]]]* @loop_table, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [16 x [6 x i32]], [16 x [6 x i32]]* %arrayidx34, i32 0, i64 %idxprom32
  %arrayidx36 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx35, i32 0, i64 %idxprom31
  %33 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp sle i32 %33, 3
  br i1 %cmp37, label %if.then, label %if.else

if.then:                                          ; preds = %for.body.30
  %34 = load i32, i32* %dir, align 4
  %35 = load i32, i32* %k, align 4
  %idxprom38 = sext i32 %35 to i64
  %36 = load i32, i32* %ln, align 4
  %idxprom39 = sext i32 %36 to i64
  %37 = load i32, i32* %iloop, align 4
  %idxprom40 = sext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds [3 x [16 x [6 x i32]]], [3 x [16 x [6 x i32]]]* @loop_table, i32 0, i64 %idxprom40
  %arrayidx42 = getelementptr inbounds [16 x [6 x i32]], [16 x [6 x i32]]* %arrayidx41, i32 0, i64 %idxprom39
  %arrayidx43 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx42, i32 0, i64 %idxprom38
  %38 = load i32, i32* %arrayidx43, align 4
  %add = add nsw i32 %34, %38
  %rem = srem i32 %add, 4
  %39 = load i32, i32* %k, align 4
  %idxprom44 = sext i32 %39 to i64
  %arrayidx45 = getelementptr inbounds [6 x i32], [6 x i32]* %dirs, i32 0, i64 %idxprom44
  store i32 %rem, i32* %arrayidx45, align 4
  br label %if.end

if.else:                                          ; preds = %for.body.30
  %40 = load i32, i32* %dir, align 4
  %41 = load i32, i32* %k, align 4
  %idxprom46 = sext i32 %41 to i64
  %42 = load i32, i32* %ln, align 4
  %idxprom47 = sext i32 %42 to i64
  %43 = load i32, i32* %iloop, align 4
  %idxprom48 = sext i32 %43 to i64
  %arrayidx49 = getelementptr inbounds [3 x [16 x [6 x i32]]], [3 x [16 x [6 x i32]]]* @loop_table, i32 0, i64 %idxprom48
  %arrayidx50 = getelementptr inbounds [16 x [6 x i32]], [16 x [6 x i32]]* %arrayidx49, i32 0, i64 %idxprom47
  %arrayidx51 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx50, i32 0, i64 %idxprom46
  %44 = load i32, i32* %arrayidx51, align 4
  %sub = sub nsw i32 7, %44
  %add52 = add nsw i32 %40, %sub
  %rem53 = srem i32 %add52, 4
  %sub54 = sub nsw i32 7, %rem53
  %45 = load i32, i32* %k, align 4
  %idxprom55 = sext i32 %45 to i64
  %arrayidx56 = getelementptr inbounds [6 x i32], [6 x i32]* %dirs, i32 0, i64 %idxprom55
  store i32 %sub54, i32* %arrayidx56, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc.57

for.inc.57:                                       ; preds = %if.end
  %46 = load i32, i32* %k, align 4
  %inc58 = add nsw i32 %46, 1
  store i32 %inc58, i32* %k, align 4
  br label %for.cond.28

for.end.59:                                       ; preds = %for.cond.28
  %47 = load i32, i32* %length, align 4
  %sub60 = sub nsw i32 %47, 1
  store i32 %sub60, i32* %path_length, align 4
  store i32 0, i32* %k, align 4
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.125, %for.end.59
  %48 = load i32, i32* %k, align 4
  %49 = load i32, i32* %length, align 4
  %cmp62 = icmp slt i32 %48, %49
  br i1 %cmp62, label %for.body.63, label %for.end.127

for.body.63:                                      ; preds = %for.cond.61
  %50 = load i32, i32* %k, align 4
  %idxprom64 = sext i32 %50 to i64
  %arrayidx65 = getelementptr inbounds [6 x i32], [6 x i32]* %dirs, i32 0, i64 %idxprom64
  %51 = load i32, i32* %arrayidx65, align 4
  %52 = load i32, i32* %dir, align 4
  %cmp66 = icmp eq i32 %51, %52
  br i1 %cmp66, label %if.then.71, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.63
  %53 = load i32, i32* %k, align 4
  %idxprom67 = sext i32 %53 to i64
  %arrayidx68 = getelementptr inbounds [6 x i32], [6 x i32]* %dirs, i32 0, i64 %idxprom67
  %54 = load i32, i32* %arrayidx68, align 4
  %55 = load i32, i32* %dir, align 4
  %sub69 = sub nsw i32 7, %55
  %cmp70 = icmp eq i32 %54, %sub69
  br i1 %cmp70, label %if.then.71, label %if.end.124

if.then.71:                                       ; preds = %lor.lhs.false, %for.body.63
  %56 = load i32, i32* %k, align 4
  %idxprom72 = sext i32 %56 to i64
  %arrayidx73 = getelementptr inbounds [6 x i32], [6 x i32]* %dirs, i32 0, i64 %idxprom72
  %57 = load i32, i32* %arrayidx73, align 4
  %cmp74 = icmp sle i32 %57, 3
  br i1 %cmp74, label %if.then.75, label %if.end.89

if.then.75:                                       ; preds = %if.then.71
  store i32 0, i32* %j, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.86, %if.then.75
  %58 = load i32, i32* %j, align 4
  %59 = load i32, i32* %path_length, align 4
  %cmp77 = icmp slt i32 %58, %59
  br i1 %cmp77, label %for.body.78, label %for.end.88

for.body.78:                                      ; preds = %for.cond.76
  %60 = load i32, i32* %k, align 4
  %61 = load i32, i32* %j, align 4
  %add79 = add nsw i32 %60, %61
  %add80 = add nsw i32 %add79, 1
  %62 = load i32, i32* %length, align 4
  %rem81 = srem i32 %add80, %62
  %idxprom82 = sext i32 %rem81 to i64
  %arrayidx83 = getelementptr inbounds [6 x i32], [6 x i32]* %dirs, i32 0, i64 %idxprom82
  %63 = load i32, i32* %arrayidx83, align 4
  %64 = load i32, i32* %j, align 4
  %idxprom84 = sext i32 %64 to i64
  %arrayidx85 = getelementptr inbounds [6 x i32], [6 x i32]* %path_dir, i32 0, i64 %idxprom84
  store i32 %63, i32* %arrayidx85, align 4
  br label %for.inc.86

for.inc.86:                                       ; preds = %for.body.78
  %65 = load i32, i32* %j, align 4
  %inc87 = add nsw i32 %65, 1
  store i32 %inc87, i32* %j, align 4
  br label %for.cond.76

for.end.88:                                       ; preds = %for.cond.76
  br label %if.end.89

if.end.89:                                        ; preds = %for.end.88, %if.then.71
  %66 = load i32, i32* %k, align 4
  %idxprom90 = sext i32 %66 to i64
  %arrayidx91 = getelementptr inbounds [6 x i32], [6 x i32]* %dirs, i32 0, i64 %idxprom90
  %67 = load i32, i32* %arrayidx91, align 4
  %cmp92 = icmp sgt i32 %67, 3
  br i1 %cmp92, label %if.then.93, label %if.end.110

if.then.93:                                       ; preds = %if.end.89
  store i32 0, i32* %j, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.107, %if.then.93
  %68 = load i32, i32* %j, align 4
  %69 = load i32, i32* %path_length, align 4
  %cmp95 = icmp slt i32 %68, %69
  br i1 %cmp95, label %for.body.96, label %for.end.109

for.body.96:                                      ; preds = %for.cond.94
  %70 = load i32, i32* %k, align 4
  %71 = load i32, i32* %j, align 4
  %add97 = add nsw i32 %70, %71
  %add98 = add nsw i32 %add97, 1
  %72 = load i32, i32* %length, align 4
  %rem99 = srem i32 %add98, %72
  %idxprom100 = sext i32 %rem99 to i64
  %arrayidx101 = getelementptr inbounds [6 x i32], [6 x i32]* %dirs, i32 0, i64 %idxprom100
  %73 = load i32, i32* %arrayidx101, align 4
  %sub102 = sub nsw i32 7, %73
  %74 = load i32, i32* %path_length, align 4
  %sub103 = sub nsw i32 %74, 1
  %75 = load i32, i32* %j, align 4
  %sub104 = sub nsw i32 %sub103, %75
  %idxprom105 = sext i32 %sub104 to i64
  %arrayidx106 = getelementptr inbounds [6 x i32], [6 x i32]* %path_dir, i32 0, i64 %idxprom105
  store i32 %sub102, i32* %arrayidx106, align 4
  br label %for.inc.107

for.inc.107:                                      ; preds = %for.body.96
  %76 = load i32, i32* %j, align 4
  %inc108 = add nsw i32 %76, 1
  store i32 %inc108, i32* %j, align 4
  br label %for.cond.94

for.end.109:                                      ; preds = %for.cond.94
  br label %if.end.110

if.end.110:                                       ; preds = %for.end.109, %if.end.89
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %path_dir, i32 0, i32 0
  %77 = load i32, i32* %path_length, align 4
  call void @path_product(i32* %arraydecay, i32 %77)
  store i32 0, i32* %i, align 4
  %78 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %78, %struct.site** %st, align 8
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.119, %if.end.110
  %79 = load i32, i32* %i, align 4
  %80 = load i32, i32* @sites_on_node, align 4
  %cmp112 = icmp slt i32 %79, %80
  br i1 %cmp112, label %for.body.113, label %for.end.122

for.body.113:                                     ; preds = %for.cond.111
  %81 = load %struct.site*, %struct.site** %st, align 8
  %tempmat1 = getelementptr inbounds %struct.site, %struct.site* %81, i32 0, i32 20
  call void @su3_adjoint(%struct.su3_matrix* %tempmat1, %struct.su3_matrix* %tmat1)
  %82 = load i32, i32* %iloop, align 4
  %idxprom114 = sext i32 %82 to i64
  %arrayidx115 = getelementptr inbounds [3 x [1 x double]], [3 x [1 x double]]* @loop_coeff, i32 0, i64 %idxprom114
  %arrayidx116 = getelementptr inbounds [1 x double], [1 x double]* %arrayidx115, i32 0, i64 0
  %83 = load double, double* %arrayidx116, align 8
  store double %83, double* %new_term, align 8
  %84 = load %struct.site*, %struct.site** %st, align 8
  %staple117 = getelementptr inbounds %struct.site, %struct.site* %84, i32 0, i32 21
  %85 = load double, double* %new_term, align 8
  %86 = load %struct.site*, %struct.site** %st, align 8
  %staple118 = getelementptr inbounds %struct.site, %struct.site* %86, i32 0, i32 21
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %staple117, %struct.su3_matrix* %tmat1, double %85, %struct.su3_matrix* %staple118)
  br label %for.inc.119

for.inc.119:                                      ; preds = %for.body.113
  %87 = load i32, i32* %i, align 4
  %inc120 = add nsw i32 %87, 1
  store i32 %inc120, i32* %i, align 4
  %88 = load %struct.site*, %struct.site** %st, align 8
  %incdec.ptr121 = getelementptr inbounds %struct.site, %struct.site* %88, i32 1
  store %struct.site* %incdec.ptr121, %struct.site** %st, align 8
  br label %for.cond.111

for.end.122:                                      ; preds = %for.cond.111
  %89 = load i32, i32* %ncount, align 4
  %inc123 = add nsw i32 %89, 1
  store i32 %inc123, i32* %ncount, align 4
  br label %if.end.124

if.end.124:                                       ; preds = %for.end.122, %lor.lhs.false
  br label %for.inc.125

for.inc.125:                                      ; preds = %if.end.124
  %90 = load i32, i32* %k, align 4
  %inc126 = add nsw i32 %90, 1
  store i32 %inc126, i32* %k, align 4
  br label %for.cond.61

for.end.127:                                      ; preds = %for.cond.61
  br label %for.inc.128

for.inc.128:                                      ; preds = %for.end.127
  %91 = load i32, i32* %ln, align 4
  %inc129 = add nsw i32 %91, 1
  store i32 %inc129, i32* %ln, align 4
  br label %for.cond.23

for.end.130:                                      ; preds = %for.cond.23
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.end.130
  %92 = load i32, i32* %iloop, align 4
  %inc132 = add nsw i32 %92, 1
  store i32 %inc132, i32* %iloop, align 4
  br label %for.cond.18

for.end.133:                                      ; preds = %for.cond.18
  store i32 0, i32* %i, align 4
  %93 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %93, %struct.site** %st, align 8
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.146, %for.end.133
  %94 = load i32, i32* %i, align 4
  %95 = load i32, i32* @sites_on_node, align 4
  %cmp135 = icmp slt i32 %94, %95
  br i1 %cmp135, label %for.body.136, label %for.end.149

for.body.136:                                     ; preds = %for.cond.134
  %96 = load i32, i32* %dir, align 4
  %idxprom137 = sext i32 %96 to i64
  %97 = load %struct.site*, %struct.site** %st, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %97, i32 0, i32 8
  %arrayidx138 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom137
  %98 = load %struct.site*, %struct.site** %st, align 8
  %staple139 = getelementptr inbounds %struct.site, %struct.site* %98, i32 0, i32 21
  call void @mult_su3_na(%struct.su3_matrix* %arrayidx138, %struct.su3_matrix* %staple139, %struct.su3_matrix* %tmat1)
  %99 = load %struct.site*, %struct.site** %st, align 8
  %100 = bitcast %struct.site* %99 to i8*
  %101 = load i32, i32* %mom_off.addr, align 4
  %idx.ext = sext i32 %101 to i64
  %add.ptr = getelementptr inbounds i8, i8* %100, i64 %idx.ext
  %102 = bitcast i8* %add.ptr to %struct.anti_hermitmat*
  store %struct.anti_hermitmat* %102, %struct.anti_hermitmat** %momentum, align 8
  %103 = load i32, i32* %dir, align 4
  %idxprom140 = sext i32 %103 to i64
  %104 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %momentum, align 8
  %arrayidx141 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %104, i64 %idxprom140
  call void @uncompress_anti_hermitian(%struct.anti_hermitmat* %arrayidx141, %struct.su3_matrix* %tmat2)
  %105 = load double, double* %eb3, align 8
  %106 = load %struct.site*, %struct.site** %st, align 8
  %staple142 = getelementptr inbounds %struct.site, %struct.site* %106, i32 0, i32 21
  call void @scalar_mult_sub_su3_matrix(%struct.su3_matrix* %tmat2, %struct.su3_matrix* %tmat1, double %105, %struct.su3_matrix* %staple142)
  %107 = load %struct.site*, %struct.site** %st, align 8
  %staple143 = getelementptr inbounds %struct.site, %struct.site* %107, i32 0, i32 21
  %108 = load i32, i32* %dir, align 4
  %idxprom144 = sext i32 %108 to i64
  %109 = load %struct.anti_hermitmat*, %struct.anti_hermitmat** %momentum, align 8
  %arrayidx145 = getelementptr inbounds %struct.anti_hermitmat, %struct.anti_hermitmat* %109, i64 %idxprom144
  call void @make_anti_hermitian(%struct.su3_matrix* %staple143, %struct.anti_hermitmat* %arrayidx145)
  br label %for.inc.146

for.inc.146:                                      ; preds = %for.body.136
  %110 = load i32, i32* %i, align 4
  %inc147 = add nsw i32 %110, 1
  store i32 %inc147, i32* %i, align 4
  %111 = load %struct.site*, %struct.site** %st, align 8
  %incdec.ptr148 = getelementptr inbounds %struct.site, %struct.site* %111, i32 1
  store %struct.site* %incdec.ptr148, %struct.site** %st, align 8
  br label %for.cond.134

for.end.149:                                      ; preds = %for.cond.134
  br label %for.inc.150

for.inc.150:                                      ; preds = %for.end.149
  %112 = load i32, i32* %dir, align 4
  %inc151 = add nsw i32 %112, 1
  store i32 %inc151, i32* %dir, align 4
  br label %for.cond

for.end.152:                                      ; preds = %for.cond
  ret void
}

declare { double, double } @cmplx(double, double) #2

declare void @su3_adjoint(%struct.su3_matrix*, %struct.su3_matrix*) #2

declare void @scalar_mult_add_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, double, %struct.su3_matrix*) #2

declare void @mult_su3_na(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #2

declare void @uncompress_anti_hermitian(%struct.anti_hermitmat*, %struct.su3_matrix*) #2

declare void @scalar_mult_sub_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, double, %struct.su3_matrix*) #2

declare void @make_anti_hermitian(%struct.su3_matrix*, %struct.anti_hermitmat*) #2

; Function Attrs: nounwind uwtable
define void @g_measure() #0 {
entry:
  %ss_plaquette = alloca double, align 8
  %st_plaquette = alloca double, align 8
  %p_loop = alloca %struct.complex, align 8
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %trace = alloca %struct.complex, align 8
  %average = alloca [1 x double], align 8
  %action = alloca double, align 8
  %act2 = alloca double, align 8
  %total_action = alloca double, align 8
  %length = alloca i32, align 4
  %ln = alloca i32, align 4
  %iloop = alloca i32, align 4
  %rep = alloca i32, align 4
  %coerce = alloca %struct.complex, align 8
  %coerce25 = alloca %struct.complex, align 8
  call void @d_plaquette(double* %ss_plaquette, double* %st_plaquette)
  %0 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load double, double* %ss_plaquette, align 8
  %2 = load double, double* %st_plaquette, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), double %1, double %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call { double, double } @ploop()
  %3 = bitcast %struct.complex* %coerce to { double, double }*
  %4 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 0
  %5 = extractvalue { double, double } %call1, 0
  store double %5, double* %4, align 8
  %6 = getelementptr { double, double }, { double, double }* %3, i32 0, i32 1
  %7 = extractvalue { double, double } %call1, 1
  store double %7, double* %6, align 8
  %8 = bitcast %struct.complex* %p_loop to i8*
  %9 = bitcast %struct.complex* %coerce to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 16, i32 8, i1 false)
  %10 = load i32, i32* @this_node, align 4
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %real = getelementptr inbounds %struct.complex, %struct.complex* %p_loop, i32 0, i32 0
  %11 = load double, double* %real, align 8
  %imag = getelementptr inbounds %struct.complex, %struct.complex* %p_loop, i32 0, i32 1
  %12 = load double, double* %imag, align 8
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), double %11, double %12)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  store double 0.000000e+00, double* %total_action, align 8
  store i32 0, i32* %iloop, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.100, %if.end.5
  %13 = load i32, i32* %iloop, align 4
  %cmp6 = icmp slt i32 %13, 3
  br i1 %cmp6, label %for.body, label %for.end.102

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %iloop, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [3 x i32], [3 x i32]* @loop_length, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  store i32 %15, i32* %length, align 4
  store i32 0, i32* %ln, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.97, %for.body
  %16 = load i32, i32* %ln, align 4
  %17 = load i32, i32* %iloop, align 4
  %idxprom8 = sext i32 %17 to i64
  %arrayidx9 = getelementptr inbounds [3 x i32], [3 x i32]* @loop_num, i32 0, i64 %idxprom8
  %18 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp slt i32 %16, %18
  br i1 %cmp10, label %for.body.11, label %for.end.99

for.body.11:                                      ; preds = %for.cond.7
  %19 = load i32, i32* %ln, align 4
  %idxprom12 = sext i32 %19 to i64
  %20 = load i32, i32* %iloop, align 4
  %idxprom13 = sext i32 %20 to i64
  %arrayidx14 = getelementptr inbounds [3 x [16 x [6 x i32]]], [3 x [16 x [6 x i32]]]* @loop_table, i32 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [16 x [6 x i32]], [16 x [6 x i32]]* %arrayidx14, i32 0, i64 %idxprom12
  %arraydecay = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx15, i32 0, i32 0
  %21 = load i32, i32* %length, align 4
  call void @path_product(i32* %arraydecay, i32 %21)
  store i32 0, i32* %rep, align 4
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc, %for.body.11
  %22 = load i32, i32* %rep, align 4
  %cmp17 = icmp slt i32 %22, 1
  br i1 %cmp17, label %for.body.18, label %for.end

for.body.18:                                      ; preds = %for.cond.16
  %23 = load i32, i32* %rep, align 4
  %idxprom19 = sext i32 %23 to i64
  %arrayidx20 = getelementptr inbounds [1 x double], [1 x double]* %average, i32 0, i64 %idxprom19
  store double 0.000000e+00, double* %arrayidx20, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.18
  %24 = load i32, i32* %rep, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %rep, align 4
  br label %for.cond.16

for.end:                                          ; preds = %for.cond.16
  store i32 0, i32* %i, align 4
  %25 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %25, %struct.site** %s, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.49, %for.end
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* @sites_on_node, align 4
  %cmp22 = icmp slt i32 %26, %27
  br i1 %cmp22, label %for.body.23, label %for.end.51

for.body.23:                                      ; preds = %for.cond.21
  %28 = load %struct.site*, %struct.site** %s, align 8
  %tempmat1 = getelementptr inbounds %struct.site, %struct.site* %28, i32 0, i32 20
  %call24 = call { double, double } @trace_su3(%struct.su3_matrix* %tempmat1)
  %29 = bitcast %struct.complex* %coerce25 to { double, double }*
  %30 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 0
  %31 = extractvalue { double, double } %call24, 0
  store double %31, double* %30, align 8
  %32 = getelementptr { double, double }, { double, double }* %29, i32 0, i32 1
  %33 = extractvalue { double, double } %call24, 1
  store double %33, double* %32, align 8
  %34 = bitcast %struct.complex* %trace to i8*
  %35 = bitcast %struct.complex* %coerce25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %34, i8* %35, i64 16, i32 8, i1 false)
  %real26 = getelementptr inbounds %struct.complex, %struct.complex* %trace, i32 0, i32 0
  %36 = load double, double* %real26, align 8
  %arrayidx27 = getelementptr inbounds [1 x double], [1 x double]* %average, i32 0, i64 0
  %37 = load double, double* %arrayidx27, align 8
  %add = fadd double %37, %36
  store double %add, double* %arrayidx27, align 8
  %real28 = getelementptr inbounds %struct.complex, %struct.complex* %trace, i32 0, i32 0
  %38 = load double, double* %real28, align 8
  %sub = fsub double 3.000000e+00, %38
  store double %sub, double* %action, align 8
  %39 = load i32, i32* %iloop, align 4
  %idxprom29 = sext i32 %39 to i64
  %arrayidx30 = getelementptr inbounds [3 x [1 x double]], [3 x [1 x double]]* @loop_coeff, i32 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [1 x double], [1 x double]* %arrayidx30, i32 0, i64 0
  %40 = load double, double* %arrayidx31, align 8
  %41 = load double, double* %action, align 8
  %mul = fmul double %40, %41
  %42 = load double, double* %total_action, align 8
  %add32 = fadd double %42, %mul
  store double %add32, double* %total_action, align 8
  %43 = load double, double* %action, align 8
  store double %43, double* %act2, align 8
  store i32 1, i32* %rep, align 4
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.46, %for.body.23
  %44 = load i32, i32* %rep, align 4
  %cmp34 = icmp slt i32 %44, 1
  br i1 %cmp34, label %for.body.35, label %for.end.48

for.body.35:                                      ; preds = %for.cond.33
  %45 = load double, double* %action, align 8
  %46 = load double, double* %act2, align 8
  %mul36 = fmul double %46, %45
  store double %mul36, double* %act2, align 8
  %47 = load double, double* %act2, align 8
  %48 = load i32, i32* %rep, align 4
  %idxprom37 = sext i32 %48 to i64
  %arrayidx38 = getelementptr inbounds [1 x double], [1 x double]* %average, i32 0, i64 %idxprom37
  %49 = load double, double* %arrayidx38, align 8
  %add39 = fadd double %49, %47
  store double %add39, double* %arrayidx38, align 8
  %50 = load i32, i32* %rep, align 4
  %idxprom40 = sext i32 %50 to i64
  %51 = load i32, i32* %iloop, align 4
  %idxprom41 = sext i32 %51 to i64
  %arrayidx42 = getelementptr inbounds [3 x [1 x double]], [3 x [1 x double]]* @loop_coeff, i32 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [1 x double], [1 x double]* %arrayidx42, i32 0, i64 %idxprom40
  %52 = load double, double* %arrayidx43, align 8
  %53 = load double, double* %act2, align 8
  %mul44 = fmul double %52, %53
  %54 = load double, double* %total_action, align 8
  %add45 = fadd double %54, %mul44
  store double %add45, double* %total_action, align 8
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.35
  %55 = load i32, i32* %rep, align 4
  %inc47 = add nsw i32 %55, 1
  store i32 %inc47, i32* %rep, align 4
  br label %for.cond.33

for.end.48:                                       ; preds = %for.cond.33
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %56 = load i32, i32* %i, align 4
  %inc50 = add nsw i32 %56, 1
  store i32 %inc50, i32* %i, align 4
  %57 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %57, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.21

for.end.51:                                       ; preds = %for.cond.21
  %arraydecay52 = getelementptr inbounds [1 x double], [1 x double]* %average, i32 0, i32 0
  call void @g_vecdoublesum(double* %arraydecay52, i32 1)
  %58 = load i32, i32* @this_node, align 4
  %cmp53 = icmp eq i32 %58, 0
  br i1 %cmp53, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %for.end.51
  %59 = load i32, i32* %iloop, align 4
  %60 = load i32, i32* %ln, align 4
  %61 = load i32, i32* %length, align 4
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i32 0, i32 0), i32 %59, i32 %60, i32 %61)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %for.end.51
  store i32 0, i32* %rep, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.66, %if.end.56
  %62 = load i32, i32* %rep, align 4
  %cmp58 = icmp slt i32 %62, 1
  br i1 %cmp58, label %for.body.59, label %for.end.68

for.body.59:                                      ; preds = %for.cond.57
  %63 = load i32, i32* @this_node, align 4
  %cmp60 = icmp eq i32 %63, 0
  br i1 %cmp60, label %if.then.61, label %if.end.65

if.then.61:                                       ; preds = %for.body.59
  %64 = load i32, i32* %rep, align 4
  %idxprom62 = sext i32 %64 to i64
  %arrayidx63 = getelementptr inbounds [1 x double], [1 x double]* %average, i32 0, i64 %idxprom62
  %65 = load double, double* %arrayidx63, align 8
  %66 = load i32, i32* @volume, align 4
  %conv = sitofp i32 %66 to double
  %div = fdiv double %65, %conv
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), double %div)
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.61, %for.body.59
  br label %for.inc.66

for.inc.66:                                       ; preds = %if.end.65
  %67 = load i32, i32* %rep, align 4
  %inc67 = add nsw i32 %67, 1
  store i32 %inc67, i32* %rep, align 4
  br label %for.cond.57

for.end.68:                                       ; preds = %for.cond.57
  %68 = load i32, i32* @this_node, align 4
  %cmp69 = icmp eq i32 %68, 0
  br i1 %cmp69, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %for.end.68
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %for.end.68
  store i32 0, i32* %i, align 4
  br label %for.cond.74

for.cond.74:                                      ; preds = %for.inc.89, %if.end.73
  %69 = load i32, i32* %i, align 4
  %70 = load i32, i32* %length, align 4
  %cmp75 = icmp slt i32 %69, %70
  br i1 %cmp75, label %for.body.77, label %for.end.91

for.body.77:                                      ; preds = %for.cond.74
  %71 = load i32, i32* @this_node, align 4
  %cmp78 = icmp eq i32 %71, 0
  br i1 %cmp78, label %if.then.80, label %if.end.88

if.then.80:                                       ; preds = %for.body.77
  %72 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %72 to i64
  %73 = load i32, i32* %ln, align 4
  %idxprom82 = sext i32 %73 to i64
  %74 = load i32, i32* %iloop, align 4
  %idxprom83 = sext i32 %74 to i64
  %arrayidx84 = getelementptr inbounds [3 x [16 x [6 x i32]]], [3 x [16 x [6 x i32]]]* @loop_table, i32 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [16 x [6 x i32]], [16 x [6 x i32]]* %arrayidx84, i32 0, i64 %idxprom82
  %arrayidx86 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx85, i32 0, i64 %idxprom81
  %75 = load i32, i32* %arrayidx86, align 4
  %call87 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 %75)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.80, %for.body.77
  br label %for.inc.89

for.inc.89:                                       ; preds = %if.end.88
  %76 = load i32, i32* %i, align 4
  %inc90 = add nsw i32 %76, 1
  store i32 %inc90, i32* %i, align 4
  br label %for.cond.74

for.end.91:                                       ; preds = %for.cond.74
  %77 = load i32, i32* @this_node, align 4
  %cmp92 = icmp eq i32 %77, 0
  br i1 %cmp92, label %if.then.94, label %if.end.96

if.then.94:                                       ; preds = %for.end.91
  %call95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.94, %for.end.91
  br label %for.inc.97

for.inc.97:                                       ; preds = %if.end.96
  %78 = load i32, i32* %ln, align 4
  %inc98 = add nsw i32 %78, 1
  store i32 %inc98, i32* %ln, align 4
  br label %for.cond.7

for.end.99:                                       ; preds = %for.cond.7
  br label %for.inc.100

for.inc.100:                                      ; preds = %for.end.99
  %79 = load i32, i32* %iloop, align 4
  %inc101 = add nsw i32 %79, 1
  store i32 %inc101, i32* %iloop, align 4
  br label %for.cond

for.end.102:                                      ; preds = %for.cond
  call void @g_doublesum(double* %total_action)
  %80 = load i32, i32* @this_node, align 4
  %cmp103 = icmp eq i32 %80, 0
  br i1 %cmp103, label %if.then.105, label %if.end.109

if.then.105:                                      ; preds = %for.end.102
  %81 = load double, double* %total_action, align 8
  %82 = load i32, i32* @volume, align 4
  %conv106 = sitofp i32 %82 to double
  %div107 = fdiv double %81, %conv106
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), double %div107)
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.105, %for.end.102
  %83 = load i32, i32* @this_node, align 4
  %cmp110 = icmp eq i32 %83, 0
  br i1 %cmp110, label %if.then.112, label %if.end.114

if.then.112:                                      ; preds = %if.end.109
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call113 = call i32 @fflush(%struct._IO_FILE* %84)
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.112, %if.end.109
  ret void
}

declare void @d_plaquette(double*, double*) #2

declare { double, double } @ploop() #2

declare void @g_vecdoublesum(double*, i32) #2

declare i32 @fflush(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define void @printpath(i32* %path, i32 %length) #0 {
entry:
  %path.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %path, i32** %path.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %2 = load i32, i32* %length.addr, align 4
  %cmp1 = icmp slt i32 %1, %2
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* @this_node, align 4
  %cmp2 = icmp eq i32 %3, 0
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** %path.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx, align 4
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i32 %6)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %7 = load i32, i32* %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* @this_node, align 4
  %cmp6 = icmp eq i32 %8, 0
  br i1 %cmp6, label %if.then.7, label %if.end.9

if.then.7:                                        ; preds = %for.end
  %9 = load i32, i32* %length.addr, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i32 %9)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.7, %for.end
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
