; ModuleID = 'quark_stuff.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { [7 x i32], i32, double, double }
%struct.site = type { i16, i16, i16, i16, i8, i32, %struct.double_prn, i32, [4 x %struct.su3_matrix], [4 x %struct.anti_hermitmat], [4 x double], %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, %struct.su3_vector, [4 x %struct.su3_vector], [4 x %struct.su3_vector], %struct.su3_vector, %struct.su3_matrix, %struct.su3_matrix }
%struct.double_prn = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double }
%struct.anti_hermitmat = type { %struct.complex, %struct.complex, %struct.complex, double, double, double, double }
%struct.complex = type { double, double }
%struct.su3_vector = type { [3 x %struct.complex] }
%struct.su3_matrix = type { [3 x [3 x %struct.complex]] }
%struct.msg_tag = type { i32, i32, i8*, i32 }
%struct.half_wilson_vector = type { [2 x %struct.su3_vector] }

@this_node = external global i32, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@quark_action_description = internal global [72 x i8] c"\22O(a^2): couplings(pi)=0, Naik term, No O(a^2) errors, tadpole weights\22\00", align 16
@num_q_paths = common global i32 0, align 4
@num_basic_paths = common global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"path coefficients: npath  path_coeff  multiplicity\0A\00", align 1
@quark_action_npaths = internal global i32 6, align 4
@path_coeff = internal global [6 x double] [double 6.250000e-01, double 0xBFA5555555555555, double -6.250000e-02, double 1.562500e-02, double 0xBF65555555555555, double -6.250000e-02], align 16
@path_length_in = internal global [6 x i32] [i32 1, i32 3, i32 3, i32 5, i32 7, i32 5], align 16
@u0 = external global double, align 8
@act_path_coeff = internal global [6 x double] zeroinitializer, align 16
@path_ind = internal global [6 x [7 x i32]] [[7 x i32] [i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0], [7 x i32] [i32 0, i32 0, i32 0, i32 -1, i32 -1, i32 -1, i32 0], [7 x i32] [i32 1, i32 0, i32 6, i32 -1, i32 -1, i32 -1, i32 0], [7 x i32] [i32 1, i32 2, i32 0, i32 5, i32 6, i32 -1, i32 0], [7 x i32] [i32 1, i32 2, i32 3, i32 0, i32 4, i32 5, i32 6], [7 x i32] [i32 1, i32 1, i32 0, i32 6, i32 6, i32 -1, i32 0]], align 16
@.str.2 = private unnamed_addr constant [39 x i8] c"                    %d      %e     %d\0A\00", align 1
@q_paths = common global [688 x %struct.anon] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [25 x i8] c"OOPS: MAX_NUM too small\0A\00", align 1
@sites_on_node = external global i32, align 4
@even_sites_on_node = external global i32, align 4
@lattice = external global %struct.site*, align 8
@gen_pt = external global [16 x i8**], align 16
@phases_in = external global i32, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"BOTCH: load_longlinks needs phases in\0A\00", align 1
@t_longlink = external global %struct.su3_matrix*, align 8
@valid_longlinks = external global i32, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"BOTCH: load_fatlinks needs phases in\0A\00", align 1
@t_fatlink = external global %struct.su3_matrix*, align 8
@valid_fatlinks = external global i32, align 4
@path_num = common global [6 x i32] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define void @make_path_table() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %this_coeff = alloca double, align 8
  %0 = load i32, i32* @this_node, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @quark_action_description, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* @num_q_paths, align 4
  store i32 0, i32* @num_basic_paths, align 4
  %1 = load i32, i32* @this_node, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  store i32 0, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.22, %if.end.4
  %2 = load i32, i32* %j, align 4
  %3 = load i32, i32* @quark_action_npaths, align 4
  %cmp5 = icmp slt i32 %2, %3
  br i1 %cmp5, label %for.body, label %for.end.24

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %j, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [6 x double], [6 x double]* @path_coeff, i32 0, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8
  store double %5, double* %this_coeff, align 8
  store i32 1, i32* %k, align 4
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %k, align 4
  %7 = load i32, i32* %j, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [6 x i32], [6 x i32]* @path_length_in, i32 0, i64 %idxprom7
  %8 = load i32, i32* %arrayidx8, align 4
  %cmp9 = icmp slt i32 %6, %8
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.6
  %9 = load double, double* @u0, align 8
  %10 = load double, double* %this_coeff, align 8
  %div = fdiv double %10, %9
  store double %div, double* %this_coeff, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.10
  %11 = load i32, i32* %k, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  %12 = load double, double* %this_coeff, align 8
  %13 = load i32, i32* %j, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [6 x double], [6 x double]* @act_path_coeff, i32 0, i64 %idxprom11
  store double %12, double* %arrayidx12, align 8
  %14 = load i32, i32* %j, align 4
  %idxprom13 = sext i32 %14 to i64
  %arrayidx14 = getelementptr inbounds [6 x [7 x i32]], [6 x [7 x i32]]* @path_ind, i32 0, i64 %idxprom13
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %arrayidx14, i32 0, i32 0
  %15 = load i32, i32* %j, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [6 x i32], [6 x i32]* @path_length_in, i32 0, i64 %idxprom15
  %16 = load i32, i32* %arrayidx16, align 4
  %17 = load double, double* %this_coeff, align 8
  %call17 = call i32 @add_basic_path(i32* %arraydecay, i32 %16, double %17)
  store i32 %call17, i32* %i, align 4
  %18 = load i32, i32* @this_node, align 4
  %cmp18 = icmp eq i32 %18, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %for.end
  %19 = load i32, i32* %j, align 4
  %20 = load double, double* %this_coeff, align 8
  %21 = load i32, i32* %i, align 4
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i32 0, i32 0), i32 %19, double %20, i32 %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %for.end
  br label %for.inc.22

for.inc.22:                                       ; preds = %if.end.21
  %22 = load i32, i32* %j, align 4
  %inc23 = add nsw i32 %22, 1
  store i32 %inc23, i32* %j, align 4
  br label %for.cond

for.end.24:                                       ; preds = %for.cond
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @add_basic_path(i32* %basic_vec, i32 %length, double %coeff) #0 {
entry:
  %basic_vec.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %coeff.addr = alloca double, align 8
  %perm = alloca [8 x i32], align 16
  %pp = alloca [8 x i32], align 16
  %ir = alloca [4 x i32], align 16
  %j = alloca i32, align 4
  %path_num = alloca i32, align 4
  %vec = alloca [7 x i32], align 16
  %flag = alloca i32, align 4
  store i32* %basic_vec, i32** %basic_vec.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store double %coeff, double* %coeff.addr, align 8
  store i32 0, i32* %path_num, align 4
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  store i32 0, i32* %arrayidx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.184, %entry
  %arrayidx1 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  %0 = load i32, i32* %arrayidx1, align 4
  %cmp = icmp slt i32 %0, 4
  br i1 %cmp, label %for.body, label %for.end.187

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  store i32 0, i32* %arrayidx2, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.180, %for.body
  %arrayidx4 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  %1 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp slt i32 %1, 4
  br i1 %cmp5, label %for.body.6, label %for.end.183

for.body.6:                                       ; preds = %for.cond.3
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  store i32 0, i32* %arrayidx7, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.176, %for.body.6
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  %2 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp slt i32 %2, 4
  br i1 %cmp10, label %for.body.11, label %for.end.179

for.body.11:                                      ; preds = %for.cond.8
  %arrayidx12 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  store i32 0, i32* %arrayidx12, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc.172, %for.body.11
  %arrayidx14 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  %3 = load i32, i32* %arrayidx14, align 4
  %cmp15 = icmp slt i32 %3, 4
  br i1 %cmp15, label %for.body.16, label %for.end.175

for.body.16:                                      ; preds = %for.cond.13
  %arrayidx17 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  %4 = load i32, i32* %arrayidx17, align 4
  %arrayidx18 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  %5 = load i32, i32* %arrayidx18, align 4
  %cmp19 = icmp ne i32 %4, %5
  br i1 %cmp19, label %land.lhs.true, label %if.end.171

land.lhs.true:                                    ; preds = %for.body.16
  %arrayidx20 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  %6 = load i32, i32* %arrayidx20, align 4
  %arrayidx21 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  %7 = load i32, i32* %arrayidx21, align 4
  %cmp22 = icmp ne i32 %6, %7
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.171

land.lhs.true.23:                                 ; preds = %land.lhs.true
  %arrayidx24 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  %8 = load i32, i32* %arrayidx24, align 4
  %arrayidx25 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  %9 = load i32, i32* %arrayidx25, align 4
  %cmp26 = icmp ne i32 %8, %9
  br i1 %cmp26, label %land.lhs.true.27, label %if.end.171

land.lhs.true.27:                                 ; preds = %land.lhs.true.23
  %arrayidx28 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  %10 = load i32, i32* %arrayidx28, align 4
  %arrayidx29 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  %11 = load i32, i32* %arrayidx29, align 4
  %cmp30 = icmp ne i32 %10, %11
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.171

land.lhs.true.31:                                 ; preds = %land.lhs.true.27
  %arrayidx32 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  %12 = load i32, i32* %arrayidx32, align 4
  %arrayidx33 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  %13 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp ne i32 %12, %13
  br i1 %cmp34, label %land.lhs.true.35, label %if.end.171

land.lhs.true.35:                                 ; preds = %land.lhs.true.31
  %arrayidx36 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  %14 = load i32, i32* %arrayidx36, align 4
  %arrayidx37 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  %15 = load i32, i32* %arrayidx37, align 4
  %cmp38 = icmp ne i32 %14, %15
  br i1 %cmp38, label %if.then, label %if.end.171

if.then:                                          ; preds = %land.lhs.true.35
  %arrayidx39 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 0
  store i32 0, i32* %arrayidx39, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.167, %if.then
  %arrayidx41 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 0
  %16 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp slt i32 %16, 2
  br i1 %cmp42, label %for.body.43, label %for.end.170

for.body.43:                                      ; preds = %for.cond.40
  %arrayidx44 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 1
  store i32 0, i32* %arrayidx44, align 4
  br label %for.cond.45

for.cond.45:                                      ; preds = %for.inc.163, %for.body.43
  %arrayidx46 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 1
  %17 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp slt i32 %17, 2
  br i1 %cmp47, label %for.body.48, label %for.end.166

for.body.48:                                      ; preds = %for.cond.45
  %arrayidx49 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 2
  store i32 0, i32* %arrayidx49, align 4
  br label %for.cond.50

for.cond.50:                                      ; preds = %for.inc.159, %for.body.48
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 2
  %18 = load i32, i32* %arrayidx51, align 4
  %cmp52 = icmp slt i32 %18, 2
  br i1 %cmp52, label %for.body.53, label %for.end.162

for.body.53:                                      ; preds = %for.cond.50
  %arrayidx54 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 3
  store i32 0, i32* %arrayidx54, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.155, %for.body.53
  %arrayidx56 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 3
  %19 = load i32, i32* %arrayidx56, align 4
  %cmp57 = icmp slt i32 %19, 2
  br i1 %cmp57, label %for.body.58, label %for.end.158

for.body.58:                                      ; preds = %for.cond.55
  store i32 0, i32* %j, align 4
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc, %for.body.58
  %20 = load i32, i32* %j, align 4
  %cmp60 = icmp slt i32 %20, 4
  br i1 %cmp60, label %for.body.61, label %for.end

for.body.61:                                      ; preds = %for.cond.59
  %21 = load i32, i32* %j, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx62 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 %idxprom
  %22 = load i32, i32* %arrayidx62, align 4
  %23 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %23 to i64
  %arrayidx64 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom63
  store i32 %22, i32* %arrayidx64, align 4
  %24 = load i32, i32* %j, align 4
  %idxprom65 = sext i32 %24 to i64
  %arrayidx66 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 %idxprom65
  %25 = load i32, i32* %arrayidx66, align 4
  %cmp67 = icmp eq i32 %25, 1
  br i1 %cmp67, label %if.then.68, label %if.end

if.then.68:                                       ; preds = %for.body.61
  %26 = load i32, i32* %j, align 4
  %idxprom69 = sext i32 %26 to i64
  %arrayidx70 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom69
  %27 = load i32, i32* %arrayidx70, align 4
  %sub = sub nsw i32 7, %27
  %28 = load i32, i32* %j, align 4
  %idxprom71 = sext i32 %28 to i64
  %arrayidx72 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom71
  store i32 %sub, i32* %arrayidx72, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.68, %for.body.61
  %29 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %29 to i64
  %arrayidx74 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom73
  %30 = load i32, i32* %arrayidx74, align 4
  %sub75 = sub nsw i32 7, %30
  %31 = load i32, i32* %j, align 4
  %sub76 = sub nsw i32 7, %31
  %idxprom77 = sext i32 %sub76 to i64
  %arrayidx78 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom77
  store i32 %sub75, i32* %arrayidx78, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %32 = load i32, i32* %j, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.59

for.end:                                          ; preds = %for.cond.59
  store i32 0, i32* %j, align 4
  br label %for.cond.79

for.cond.79:                                      ; preds = %for.inc.88, %for.end
  %33 = load i32, i32* %j, align 4
  %34 = load i32, i32* %length.addr, align 4
  %cmp80 = icmp slt i32 %33, %34
  br i1 %cmp80, label %for.body.81, label %for.end.90

for.body.81:                                      ; preds = %for.cond.79
  %35 = load i32, i32* %j, align 4
  %idxprom82 = sext i32 %35 to i64
  %36 = load i32*, i32** %basic_vec.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %36, i64 %idxprom82
  %37 = load i32, i32* %arrayidx83, align 4
  %idxprom84 = sext i32 %37 to i64
  %arrayidx85 = getelementptr inbounds [8 x i32], [8 x i32]* %pp, i32 0, i64 %idxprom84
  %38 = load i32, i32* %arrayidx85, align 4
  %39 = load i32, i32* %j, align 4
  %idxprom86 = sext i32 %39 to i64
  %arrayidx87 = getelementptr inbounds [7 x i32], [7 x i32]* %vec, i32 0, i64 %idxprom86
  store i32 %38, i32* %arrayidx87, align 4
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.body.81
  %40 = load i32, i32* %j, align 4
  %inc89 = add nsw i32 %40, 1
  store i32 %inc89, i32* %j, align 4
  br label %for.cond.79

for.end.90:                                       ; preds = %for.cond.79
  %41 = load i32, i32* %length.addr, align 4
  store i32 %41, i32* %j, align 4
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.96, %for.end.90
  %42 = load i32, i32* %j, align 4
  %cmp92 = icmp slt i32 %42, 7
  br i1 %cmp92, label %for.body.93, label %for.end.98

for.body.93:                                      ; preds = %for.cond.91
  %43 = load i32, i32* %j, align 4
  %idxprom94 = sext i32 %43 to i64
  %arrayidx95 = getelementptr inbounds [7 x i32], [7 x i32]* %vec, i32 0, i64 %idxprom94
  store i32 -1, i32* %arrayidx95, align 4
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.93
  %44 = load i32, i32* %j, align 4
  %inc97 = add nsw i32 %44, 1
  store i32 %inc97, i32* %j, align 4
  br label %for.cond.91

for.end.98:                                       ; preds = %for.cond.91
  store i32 0, i32* %flag, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.99

for.cond.99:                                      ; preds = %for.inc.108, %for.end.98
  %45 = load i32, i32* %j, align 4
  %46 = load i32, i32* @num_q_paths, align 4
  %cmp100 = icmp slt i32 %45, %46
  br i1 %cmp100, label %for.body.101, label %for.end.110

for.body.101:                                     ; preds = %for.cond.99
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %vec, i32 0, i32 0
  %47 = load i32, i32* %j, align 4
  %idxprom102 = sext i32 %47 to i64
  %arrayidx103 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom102
  %dir = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx103, i32 0, i32 0
  %arraydecay104 = getelementptr inbounds [7 x i32], [7 x i32]* %dir, i32 0, i32 0
  %call = call i32 @is_path_equal(i32* %arraydecay, i32* %arraydecay104, i32 7)
  store i32 %call, i32* %flag, align 4
  %48 = load i32, i32* %flag, align 4
  %cmp105 = icmp eq i32 %48, 1
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %for.body.101
  br label %for.end.110

if.end.107:                                       ; preds = %for.body.101
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %49 = load i32, i32* %j, align 4
  %inc109 = add nsw i32 %49, 1
  store i32 %inc109, i32* %j, align 4
  br label %for.cond.99

for.end.110:                                      ; preds = %if.then.106, %for.cond.99
  %50 = load i32, i32* %flag, align 4
  %cmp111 = icmp eq i32 %50, 0
  br i1 %cmp111, label %if.then.112, label %if.end.154

if.then.112:                                      ; preds = %for.end.110
  %51 = load i32, i32* @num_q_paths, align 4
  %cmp113 = icmp sge i32 %51, 688
  br i1 %cmp113, label %if.then.114, label %if.end.119

if.then.114:                                      ; preds = %if.then.112
  %52 = load i32, i32* @this_node, align 4
  %cmp115 = icmp eq i32 %52, 0
  br i1 %cmp115, label %if.then.116, label %if.end.118

if.then.116:                                      ; preds = %if.then.114
  %call117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.118

if.end.118:                                       ; preds = %if.then.116, %if.then.114
  call void @exit(i32 0) #5
  unreachable

if.end.119:                                       ; preds = %if.then.112
  %53 = load i32, i32* %length.addr, align 4
  %54 = load i32, i32* @num_q_paths, align 4
  %idxprom120 = sext i32 %54 to i64
  %arrayidx121 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom120
  %length122 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx121, i32 0, i32 1
  store i32 %53, i32* %length122, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc.133, %if.end.119
  %55 = load i32, i32* %j, align 4
  %cmp124 = icmp slt i32 %55, 7
  br i1 %cmp124, label %for.body.125, label %for.end.135

for.body.125:                                     ; preds = %for.cond.123
  %56 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %56 to i64
  %arrayidx127 = getelementptr inbounds [7 x i32], [7 x i32]* %vec, i32 0, i64 %idxprom126
  %57 = load i32, i32* %arrayidx127, align 4
  %58 = load i32, i32* %j, align 4
  %idxprom128 = sext i32 %58 to i64
  %59 = load i32, i32* @num_q_paths, align 4
  %idxprom129 = sext i32 %59 to i64
  %arrayidx130 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom129
  %dir131 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx130, i32 0, i32 0
  %arrayidx132 = getelementptr inbounds [7 x i32], [7 x i32]* %dir131, i32 0, i64 %idxprom128
  store i32 %57, i32* %arrayidx132, align 4
  br label %for.inc.133

for.inc.133:                                      ; preds = %for.body.125
  %60 = load i32, i32* %j, align 4
  %inc134 = add nsw i32 %60, 1
  store i32 %inc134, i32* %j, align 4
  br label %for.cond.123

for.end.135:                                      ; preds = %for.cond.123
  %arrayidx136 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 0
  %61 = load i32, i32* %arrayidx136, align 4
  %cmp137 = icmp eq i32 %61, 0
  br i1 %cmp137, label %if.then.138, label %if.else

if.then.138:                                      ; preds = %for.end.135
  %62 = load double, double* %coeff.addr, align 8
  %63 = load i32, i32* @num_q_paths, align 4
  %idxprom139 = sext i32 %63 to i64
  %arrayidx140 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom139
  %coeff141 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx140, i32 0, i32 2
  store double %62, double* %coeff141, align 8
  %64 = load i32, i32* @num_q_paths, align 4
  %idxprom142 = sext i32 %64 to i64
  %arrayidx143 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom142
  %forwback = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx143, i32 0, i32 3
  store double 1.000000e+00, double* %forwback, align 8
  br label %if.end.151

if.else:                                          ; preds = %for.end.135
  %65 = load double, double* %coeff.addr, align 8
  %sub144 = fsub double -0.000000e+00, %65
  %66 = load i32, i32* @num_q_paths, align 4
  %idxprom145 = sext i32 %66 to i64
  %arrayidx146 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom145
  %coeff147 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx146, i32 0, i32 2
  store double %sub144, double* %coeff147, align 8
  %67 = load i32, i32* @num_q_paths, align 4
  %idxprom148 = sext i32 %67 to i64
  %arrayidx149 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom148
  %forwback150 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx149, i32 0, i32 3
  store double -1.000000e+00, double* %forwback150, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %if.else, %if.then.138
  %68 = load i32, i32* @num_q_paths, align 4
  %inc152 = add nsw i32 %68, 1
  store i32 %inc152, i32* @num_q_paths, align 4
  %69 = load i32, i32* %path_num, align 4
  %inc153 = add nsw i32 %69, 1
  store i32 %inc153, i32* %path_num, align 4
  br label %if.end.154

if.end.154:                                       ; preds = %if.end.151, %for.end.110
  br label %for.inc.155

for.inc.155:                                      ; preds = %if.end.154
  %arrayidx156 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 3
  %70 = load i32, i32* %arrayidx156, align 4
  %inc157 = add nsw i32 %70, 1
  store i32 %inc157, i32* %arrayidx156, align 4
  br label %for.cond.55

for.end.158:                                      ; preds = %for.cond.55
  br label %for.inc.159

for.inc.159:                                      ; preds = %for.end.158
  %arrayidx160 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 2
  %71 = load i32, i32* %arrayidx160, align 4
  %inc161 = add nsw i32 %71, 1
  store i32 %inc161, i32* %arrayidx160, align 4
  br label %for.cond.50

for.end.162:                                      ; preds = %for.cond.50
  br label %for.inc.163

for.inc.163:                                      ; preds = %for.end.162
  %arrayidx164 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 1
  %72 = load i32, i32* %arrayidx164, align 4
  %inc165 = add nsw i32 %72, 1
  store i32 %inc165, i32* %arrayidx164, align 4
  br label %for.cond.45

for.end.166:                                      ; preds = %for.cond.45
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.end.166
  %arrayidx168 = getelementptr inbounds [4 x i32], [4 x i32]* %ir, i32 0, i64 0
  %73 = load i32, i32* %arrayidx168, align 4
  %inc169 = add nsw i32 %73, 1
  store i32 %inc169, i32* %arrayidx168, align 4
  br label %for.cond.40

for.end.170:                                      ; preds = %for.cond.40
  br label %if.end.171

if.end.171:                                       ; preds = %for.end.170, %land.lhs.true.35, %land.lhs.true.31, %land.lhs.true.27, %land.lhs.true.23, %land.lhs.true, %for.body.16
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171
  %arrayidx173 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 3
  %74 = load i32, i32* %arrayidx173, align 4
  %inc174 = add nsw i32 %74, 1
  store i32 %inc174, i32* %arrayidx173, align 4
  br label %for.cond.13

for.end.175:                                      ; preds = %for.cond.13
  br label %for.inc.176

for.inc.176:                                      ; preds = %for.end.175
  %arrayidx177 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 2
  %75 = load i32, i32* %arrayidx177, align 4
  %inc178 = add nsw i32 %75, 1
  store i32 %inc178, i32* %arrayidx177, align 4
  br label %for.cond.8

for.end.179:                                      ; preds = %for.cond.8
  br label %for.inc.180

for.inc.180:                                      ; preds = %for.end.179
  %arrayidx181 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 1
  %76 = load i32, i32* %arrayidx181, align 4
  %inc182 = add nsw i32 %76, 1
  store i32 %inc182, i32* %arrayidx181, align 4
  br label %for.cond.3

for.end.183:                                      ; preds = %for.cond.3
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.end.183
  %arrayidx185 = getelementptr inbounds [8 x i32], [8 x i32]* %perm, i32 0, i64 0
  %77 = load i32, i32* %arrayidx185, align 4
  %inc186 = add nsw i32 %77, 1
  store i32 %inc186, i32* %arrayidx185, align 4
  br label %for.cond

for.end.187:                                      ; preds = %for.cond
  %78 = load i32, i32* @num_basic_paths, align 4
  %inc188 = add nsw i32 %78, 1
  store i32 %inc188, i32* @num_basic_paths, align 4
  %79 = load i32, i32* %path_num, align 4
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define i32 @is_path_equal(i32* %path1, i32* %path2, i32 %length) #0 {
entry:
  %retval = alloca i32, align 4
  %path1.addr = alloca i32*, align 8
  %path2.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i32* %path1, i32** %path1.addr, align 8
  store i32* %path2, i32** %path2.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %path1.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %5 to i64
  %6 = load i32*, i32** %path2.addr, align 8
  %arrayidx2 = getelementptr inbounds i32, i32* %6, i64 %idxprom1
  %7 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp ne i32 %4, %7
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: nounwind uwtable
define void @path_transport(i32 %src, i32 %dest, i32 %parity, i32* %dir, i32 %length) #0 {
entry:
  %src.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %dir.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %mtag0 = alloca %struct.msg_tag*, align 8
  %j = alloca i32, align 4
  %tmp_src = alloca %struct.su3_vector*, align 8
  %tmp_dest = alloca %struct.su3_vector*, align 8
  %tmp_work = alloca %struct.su3_vector*, align 8
  %tmp_pt = alloca %struct.su3_vector*, align 8
  %tmp_parity = alloca i32, align 4
  %tmp_otherparity = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  store i32* %dir, i32** %dir.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.164

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @sites_on_node, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 48) #4
  %2 = bitcast i8* %call to %struct.su3_vector*
  store %struct.su3_vector* %2, %struct.su3_vector** %tmp_src, align 8
  %3 = load i32, i32* @sites_on_node, align 4
  %conv1 = sext i32 %3 to i64
  %call2 = call noalias i8* @calloc(i64 %conv1, i64 48) #4
  %4 = bitcast i8* %call2 to %struct.su3_vector*
  store %struct.su3_vector* %4, %struct.su3_vector** %tmp_dest, align 8
  %5 = load i32, i32* @sites_on_node, align 4
  %conv3 = sext i32 %5 to i64
  %call4 = call noalias i8* @calloc(i64 %conv3, i64 48) #4
  %6 = bitcast i8* %call4 to %struct.su3_vector*
  store %struct.su3_vector* %6, %struct.su3_vector** %tmp_work, align 8
  %7 = load i32, i32* %length.addr, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.136, %if.then
  %8 = load i32, i32* %j, align 4
  %cmp5 = icmp sge i32 %8, 0
  br i1 %cmp5, label %for.body, label %for.end.137

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %j, align 4
  %rem = srem i32 %9, 2
  %cmp7 = icmp eq i32 %rem, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body
  %10 = load i32, i32* %parity.addr, align 4
  store i32 %10, i32* %tmp_parity, align 4
  %11 = load i32, i32* %tmp_parity, align 4
  switch i32 %11, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.10
    i32 3, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.then.9
  store i32 1, i32* %tmp_otherparity, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then.9
  store i32 2, i32* %tmp_otherparity, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then.9
  store i32 3, i32* %tmp_otherparity, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.9, %sw.bb.11, %sw.bb.10, %sw.bb
  br label %if.end

if.else:                                          ; preds = %for.body
  %12 = load i32, i32* %parity.addr, align 4
  store i32 %12, i32* %tmp_otherparity, align 4
  %13 = load i32, i32* %tmp_otherparity, align 4
  switch i32 %13, label %sw.epilog.15 [
    i32 2, label %sw.bb.12
    i32 1, label %sw.bb.13
    i32 3, label %sw.bb.14
  ]

sw.bb.12:                                         ; preds = %if.else
  store i32 1, i32* %tmp_parity, align 4
  br label %sw.epilog.15

sw.bb.13:                                         ; preds = %if.else
  store i32 2, i32* %tmp_parity, align 4
  br label %sw.epilog.15

sw.bb.14:                                         ; preds = %if.else
  store i32 3, i32* %tmp_parity, align 4
  br label %sw.epilog.15

sw.epilog.15:                                     ; preds = %if.else, %sw.bb.14, %sw.bb.13, %sw.bb.12
  br label %if.end

if.end:                                           ; preds = %sw.epilog.15, %sw.epilog
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %length.addr, align 4
  %sub16 = sub nsw i32 %15, 1
  %cmp17 = icmp eq i32 %14, %sub16
  br i1 %cmp17, label %if.then.19, label %if.end.34

if.then.19:                                       ; preds = %if.end
  %16 = load i32, i32* %tmp_otherparity, align 4
  %cmp20 = icmp eq i32 %16, 1
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %17 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %19, i64 %idxprom
  store %struct.site* %arrayidx, %struct.site** %s, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %cond.end
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %tmp_otherparity, align 4
  %cmp23 = icmp eq i32 %21, 2
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %for.cond.22
  %22 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.27

cond.false.26:                                    ; preds = %for.cond.22
  %23 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi i32 [ %22, %cond.true.25 ], [ %23, %cond.false.26 ]
  %cmp29 = icmp slt i32 %20, %cond28
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %cond.end.27
  %24 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load %struct.su3_vector*, %struct.su3_vector** %tmp_src, align 8
  %arrayidx33 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %25, i64 %idxprom32
  %26 = load %struct.site*, %struct.site** %s, align 8
  %27 = bitcast %struct.site* %26 to i8*
  %28 = load i32, i32* %src.addr, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  %29 = bitcast i8* %add.ptr to %struct.su3_vector*
  %30 = bitcast %struct.su3_vector* %arrayidx33 to i8*
  %31 = bitcast %struct.su3_vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 48, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  %33 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %33, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.22

for.end:                                          ; preds = %cond.end.27
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %if.end
  %34 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %34 to i64
  %35 = load i32*, i32** %dir.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %35, i64 %idxprom35
  %36 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp sle i32 %36, 3
  br i1 %cmp37, label %if.then.39, label %if.else.73

if.then.39:                                       ; preds = %if.end.34
  %37 = load %struct.su3_vector*, %struct.su3_vector** %tmp_src, align 8
  %38 = bitcast %struct.su3_vector* %37 to i8*
  %39 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load i32*, i32** %dir.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %40, i64 %idxprom40
  %41 = load i32, i32* %arrayidx41, align 4
  %42 = load i32, i32* %tmp_parity, align 4
  %43 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call42 = call %struct.msg_tag* @start_gather_from_temp(i8* %38, i32 48, i32 %41, i32 %42, i8** %43)
  store %struct.msg_tag* %call42, %struct.msg_tag** %mtag0, align 8
  %44 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %44)
  %45 = load i32, i32* %tmp_parity, align 4
  %cmp43 = icmp eq i32 %45, 1
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.then.39
  %46 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.47

cond.false.46:                                    ; preds = %if.then.39
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.45
  %cond48 = phi i32 [ %46, %cond.true.45 ], [ 0, %cond.false.46 ]
  store i32 %cond48, i32* %i, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %47 to i64
  %48 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx50 = getelementptr inbounds %struct.site, %struct.site* %48, i64 %idxprom49
  store %struct.site* %arrayidx50, %struct.site** %s, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.69, %cond.end.47
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %tmp_parity, align 4
  %cmp52 = icmp eq i32 %50, 2
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %for.cond.51
  %51 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.56

cond.false.55:                                    ; preds = %for.cond.51
  %52 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi i32 [ %51, %cond.true.54 ], [ %52, %cond.false.55 ]
  %cmp58 = icmp slt i32 %49, %cond57
  br i1 %cmp58, label %for.body.60, label %for.end.72

for.body.60:                                      ; preds = %cond.end.56
  %53 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %53 to i64
  %54 = load i32*, i32** %dir.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %54, i64 %idxprom61
  %55 = load i32, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %56, i32 0, i32 8
  %arrayidx64 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom63
  %57 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %57 to i64
  %58 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %58, i64 %idxprom65
  %59 = load i8*, i8** %arrayidx66, align 8
  %60 = bitcast i8* %59 to %struct.su3_vector*
  %61 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %61 to i64
  %62 = load %struct.su3_vector*, %struct.su3_vector** %tmp_dest, align 8
  %arrayidx68 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %62, i64 %idxprom67
  call void @mult_su3_mat_vec(%struct.su3_matrix* %arrayidx64, %struct.su3_vector* %60, %struct.su3_vector* %arrayidx68)
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.60
  %63 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %63, 1
  store i32 %inc70, i32* %i, align 4
  %64 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr71 = getelementptr inbounds %struct.site, %struct.site* %64, i32 1
  store %struct.site* %incdec.ptr71, %struct.site** %s, align 8
  br label %for.cond.51

for.end.72:                                       ; preds = %cond.end.56
  %65 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %65)
  br label %if.end.135

if.else.73:                                       ; preds = %if.end.34
  %66 = load i32, i32* %tmp_otherparity, align 4
  %cmp74 = icmp eq i32 %66, 1
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %if.else.73
  %67 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.78

cond.false.77:                                    ; preds = %if.else.73
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi i32 [ %67, %cond.true.76 ], [ 0, %cond.false.77 ]
  store i32 %cond79, i32* %i, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %68 to i64
  %69 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx81 = getelementptr inbounds %struct.site, %struct.site* %69, i64 %idxprom80
  store %struct.site* %arrayidx81, %struct.site** %s, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.102, %cond.end.78
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %tmp_otherparity, align 4
  %cmp83 = icmp eq i32 %71, 2
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %for.cond.82
  %72 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.87

cond.false.86:                                    ; preds = %for.cond.82
  %73 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.86, %cond.true.85
  %cond88 = phi i32 [ %72, %cond.true.85 ], [ %73, %cond.false.86 ]
  %cmp89 = icmp slt i32 %70, %cond88
  br i1 %cmp89, label %for.body.91, label %for.end.105

for.body.91:                                      ; preds = %cond.end.87
  %74 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %74 to i64
  %75 = load i32*, i32** %dir.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %75, i64 %idxprom92
  %76 = load i32, i32* %arrayidx93, align 4
  %sub94 = sub nsw i32 7, %76
  %idxprom95 = sext i32 %sub94 to i64
  %77 = load %struct.site*, %struct.site** %s, align 8
  %link96 = getelementptr inbounds %struct.site, %struct.site* %77, i32 0, i32 8
  %arrayidx97 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link96, i32 0, i64 %idxprom95
  %78 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %78 to i64
  %79 = load %struct.su3_vector*, %struct.su3_vector** %tmp_src, align 8
  %arrayidx99 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %79, i64 %idxprom98
  %80 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %80 to i64
  %81 = load %struct.su3_vector*, %struct.su3_vector** %tmp_work, align 8
  %arrayidx101 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %81, i64 %idxprom100
  call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %arrayidx97, %struct.su3_vector* %arrayidx99, %struct.su3_vector* %arrayidx101)
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.91
  %82 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %82, 1
  store i32 %inc103, i32* %i, align 4
  %83 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr104 = getelementptr inbounds %struct.site, %struct.site* %83, i32 1
  store %struct.site* %incdec.ptr104, %struct.site** %s, align 8
  br label %for.cond.82

for.end.105:                                      ; preds = %cond.end.87
  %84 = load %struct.su3_vector*, %struct.su3_vector** %tmp_work, align 8
  %85 = bitcast %struct.su3_vector* %84 to i8*
  %86 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %86 to i64
  %87 = load i32*, i32** %dir.addr, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %87, i64 %idxprom106
  %88 = load i32, i32* %arrayidx107, align 4
  %89 = load i32, i32* %tmp_parity, align 4
  %90 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call108 = call %struct.msg_tag* @start_gather_from_temp(i8* %85, i32 48, i32 %88, i32 %89, i8** %90)
  store %struct.msg_tag* %call108, %struct.msg_tag** %mtag0, align 8
  %91 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %91)
  %92 = load i32, i32* %tmp_parity, align 4
  %cmp109 = icmp eq i32 %92, 1
  br i1 %cmp109, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %for.end.105
  %93 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.113

cond.false.112:                                   ; preds = %for.end.105
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.111
  %cond114 = phi i32 [ %93, %cond.true.111 ], [ 0, %cond.false.112 ]
  store i32 %cond114, i32* %i, align 4
  %94 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %94 to i64
  %95 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx116 = getelementptr inbounds %struct.site, %struct.site* %95, i64 %idxprom115
  store %struct.site* %arrayidx116, %struct.site** %s, align 8
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.131, %cond.end.113
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %tmp_parity, align 4
  %cmp118 = icmp eq i32 %97, 2
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %for.cond.117
  %98 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.122

cond.false.121:                                   ; preds = %for.cond.117
  %99 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.120
  %cond123 = phi i32 [ %98, %cond.true.120 ], [ %99, %cond.false.121 ]
  %cmp124 = icmp slt i32 %96, %cond123
  br i1 %cmp124, label %for.body.126, label %for.end.134

for.body.126:                                     ; preds = %cond.end.122
  %100 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %100 to i64
  %101 = load %struct.su3_vector*, %struct.su3_vector** %tmp_dest, align 8
  %arrayidx128 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %101, i64 %idxprom127
  %102 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %102 to i64
  %103 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %103, i64 %idxprom129
  %104 = load i8*, i8** %arrayidx130, align 8
  %105 = bitcast i8* %104 to %struct.su3_vector*
  %106 = bitcast %struct.su3_vector* %arrayidx128 to i8*
  %107 = bitcast %struct.su3_vector* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 48, i32 8, i1 false)
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.126
  %108 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %108, 1
  store i32 %inc132, i32* %i, align 4
  %109 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr133 = getelementptr inbounds %struct.site, %struct.site* %109, i32 1
  store %struct.site* %incdec.ptr133, %struct.site** %s, align 8
  br label %for.cond.117

for.end.134:                                      ; preds = %cond.end.122
  %110 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %110)
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.134, %for.end.72
  %111 = load %struct.su3_vector*, %struct.su3_vector** %tmp_src, align 8
  store %struct.su3_vector* %111, %struct.su3_vector** %tmp_pt, align 8
  %112 = load %struct.su3_vector*, %struct.su3_vector** %tmp_dest, align 8
  store %struct.su3_vector* %112, %struct.su3_vector** %tmp_src, align 8
  %113 = load %struct.su3_vector*, %struct.su3_vector** %tmp_pt, align 8
  store %struct.su3_vector* %113, %struct.su3_vector** %tmp_dest, align 8
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.135
  %114 = load i32, i32* %j, align 4
  %dec = add nsw i32 %114, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end.137:                                      ; preds = %for.cond
  %115 = load i32, i32* %parity.addr, align 4
  %cmp138 = icmp eq i32 %115, 1
  br i1 %cmp138, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %for.end.137
  %116 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.142

cond.false.141:                                   ; preds = %for.end.137
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.141, %cond.true.140
  %cond143 = phi i32 [ %116, %cond.true.140 ], [ 0, %cond.false.141 ]
  store i32 %cond143, i32* %i, align 4
  %117 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %117 to i64
  %118 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx145 = getelementptr inbounds %struct.site, %struct.site* %118, i64 %idxprom144
  store %struct.site* %arrayidx145, %struct.site** %s, align 8
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.160, %cond.end.142
  %119 = load i32, i32* %i, align 4
  %120 = load i32, i32* %parity.addr, align 4
  %cmp147 = icmp eq i32 %120, 2
  br i1 %cmp147, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %for.cond.146
  %121 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.151

cond.false.150:                                   ; preds = %for.cond.146
  %122 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.150, %cond.true.149
  %cond152 = phi i32 [ %121, %cond.true.149 ], [ %122, %cond.false.150 ]
  %cmp153 = icmp slt i32 %119, %cond152
  br i1 %cmp153, label %for.body.155, label %for.end.163

for.body.155:                                     ; preds = %cond.end.151
  %123 = load %struct.site*, %struct.site** %s, align 8
  %124 = bitcast %struct.site* %123 to i8*
  %125 = load i32, i32* %dest.addr, align 4
  %idx.ext156 = sext i32 %125 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %124, i64 %idx.ext156
  %126 = bitcast i8* %add.ptr157 to %struct.su3_vector*
  %127 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %127 to i64
  %128 = load %struct.su3_vector*, %struct.su3_vector** %tmp_src, align 8
  %arrayidx159 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %128, i64 %idxprom158
  %129 = bitcast %struct.su3_vector* %126 to i8*
  %130 = bitcast %struct.su3_vector* %arrayidx159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %130, i64 48, i32 8, i1 false)
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.155
  %131 = load i32, i32* %i, align 4
  %inc161 = add nsw i32 %131, 1
  store i32 %inc161, i32* %i, align 4
  %132 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr162 = getelementptr inbounds %struct.site, %struct.site* %132, i32 1
  store %struct.site* %incdec.ptr162, %struct.site** %s, align 8
  br label %for.cond.146

for.end.163:                                      ; preds = %cond.end.151
  %133 = load %struct.su3_vector*, %struct.su3_vector** %tmp_src, align 8
  %134 = bitcast %struct.su3_vector* %133 to i8*
  call void @free(i8* %134) #4
  %135 = load %struct.su3_vector*, %struct.su3_vector** %tmp_dest, align 8
  %136 = bitcast %struct.su3_vector* %135 to i8*
  call void @free(i8* %136) #4
  %137 = load %struct.su3_vector*, %struct.su3_vector** %tmp_work, align 8
  %138 = bitcast %struct.su3_vector* %137 to i8*
  call void @free(i8* %138) #4
  br label %if.end.195

if.else.164:                                      ; preds = %entry
  %139 = load i32, i32* %src.addr, align 4
  %140 = load i32, i32* %dest.addr, align 4
  %cmp165 = icmp ne i32 %139, %140
  br i1 %cmp165, label %if.then.167, label %if.end.194

if.then.167:                                      ; preds = %if.else.164
  %141 = load i32, i32* %parity.addr, align 4
  %cmp168 = icmp eq i32 %141, 1
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %if.then.167
  %142 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.172

cond.false.171:                                   ; preds = %if.then.167
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.171, %cond.true.170
  %cond173 = phi i32 [ %142, %cond.true.170 ], [ 0, %cond.false.171 ]
  store i32 %cond173, i32* %i, align 4
  %143 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %143 to i64
  %144 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx175 = getelementptr inbounds %struct.site, %struct.site* %144, i64 %idxprom174
  store %struct.site* %arrayidx175, %struct.site** %s, align 8
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.190, %cond.end.172
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* %parity.addr, align 4
  %cmp177 = icmp eq i32 %146, 2
  br i1 %cmp177, label %cond.true.179, label %cond.false.180

cond.true.179:                                    ; preds = %for.cond.176
  %147 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.181

cond.false.180:                                   ; preds = %for.cond.176
  %148 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.180, %cond.true.179
  %cond182 = phi i32 [ %147, %cond.true.179 ], [ %148, %cond.false.180 ]
  %cmp183 = icmp slt i32 %145, %cond182
  br i1 %cmp183, label %for.body.185, label %for.end.193

for.body.185:                                     ; preds = %cond.end.181
  %149 = load %struct.site*, %struct.site** %s, align 8
  %150 = bitcast %struct.site* %149 to i8*
  %151 = load i32, i32* %dest.addr, align 4
  %idx.ext186 = sext i32 %151 to i64
  %add.ptr187 = getelementptr inbounds i8, i8* %150, i64 %idx.ext186
  %152 = bitcast i8* %add.ptr187 to %struct.su3_vector*
  %153 = load %struct.site*, %struct.site** %s, align 8
  %154 = bitcast %struct.site* %153 to i8*
  %155 = load i32, i32* %src.addr, align 4
  %idx.ext188 = sext i32 %155 to i64
  %add.ptr189 = getelementptr inbounds i8, i8* %154, i64 %idx.ext188
  %156 = bitcast i8* %add.ptr189 to %struct.su3_vector*
  %157 = bitcast %struct.su3_vector* %152 to i8*
  %158 = bitcast %struct.su3_vector* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %158, i64 48, i32 8, i1 false)
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.185
  %159 = load i32, i32* %i, align 4
  %inc191 = add nsw i32 %159, 1
  store i32 %inc191, i32* %i, align 4
  %160 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr192 = getelementptr inbounds %struct.site, %struct.site* %160, i32 1
  store %struct.site* %incdec.ptr192, %struct.site** %s, align 8
  br label %for.cond.176

for.end.193:                                      ; preds = %cond.end.181
  br label %if.end.194

if.end.194:                                       ; preds = %for.end.193, %if.else.164
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %for.end.163
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #4

declare %struct.msg_tag* @start_gather_from_temp(i8*, i32, i32, i32, i8**) #1

declare void @wait_gather(%struct.msg_tag*) #1

declare void @mult_su3_mat_vec(%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*) #1

declare void @cleanup_gather(%struct.msg_tag*) #1

declare void @mult_adj_su3_mat_vec(%struct.su3_matrix*, %struct.su3_vector*, %struct.su3_vector*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @path_transport_hwv(i32 %src, i32 %dest, i32 %parity, i32* %dir, i32 %length) #0 {
entry:
  %src.addr = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %parity.addr = alloca i32, align 4
  %dir.addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %mtag0 = alloca %struct.msg_tag*, align 8
  %j = alloca i32, align 4
  %tmp_src = alloca %struct.half_wilson_vector*, align 8
  %tmp_dest = alloca %struct.half_wilson_vector*, align 8
  %tmp_work = alloca %struct.half_wilson_vector*, align 8
  %tmp_pt = alloca %struct.half_wilson_vector*, align 8
  %tmp_parity = alloca i32, align 4
  %tmp_otherparity = alloca i32, align 4
  store i32 %src, i32* %src.addr, align 4
  store i32 %dest, i32* %dest.addr, align 4
  store i32 %parity, i32* %parity.addr, align 4
  store i32* %dir, i32** %dir.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else.164

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @sites_on_node, align 4
  %conv = sext i32 %1 to i64
  %call = call noalias i8* @calloc(i64 %conv, i64 96) #4
  %2 = bitcast i8* %call to %struct.half_wilson_vector*
  store %struct.half_wilson_vector* %2, %struct.half_wilson_vector** %tmp_src, align 8
  %3 = load i32, i32* @sites_on_node, align 4
  %conv1 = sext i32 %3 to i64
  %call2 = call noalias i8* @calloc(i64 %conv1, i64 96) #4
  %4 = bitcast i8* %call2 to %struct.half_wilson_vector*
  store %struct.half_wilson_vector* %4, %struct.half_wilson_vector** %tmp_dest, align 8
  %5 = load i32, i32* @sites_on_node, align 4
  %conv3 = sext i32 %5 to i64
  %call4 = call noalias i8* @calloc(i64 %conv3, i64 96) #4
  %6 = bitcast i8* %call4 to %struct.half_wilson_vector*
  store %struct.half_wilson_vector* %6, %struct.half_wilson_vector** %tmp_work, align 8
  %7 = load i32, i32* %length.addr, align 4
  %sub = sub nsw i32 %7, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.136, %if.then
  %8 = load i32, i32* %j, align 4
  %cmp5 = icmp sge i32 %8, 0
  br i1 %cmp5, label %for.body, label %for.end.137

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %j, align 4
  %rem = srem i32 %9, 2
  %cmp7 = icmp eq i32 %rem, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body
  %10 = load i32, i32* %parity.addr, align 4
  store i32 %10, i32* %tmp_parity, align 4
  %11 = load i32, i32* %tmp_parity, align 4
  switch i32 %11, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.10
    i32 3, label %sw.bb.11
  ]

sw.bb:                                            ; preds = %if.then.9
  store i32 1, i32* %tmp_otherparity, align 4
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then.9
  store i32 2, i32* %tmp_otherparity, align 4
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.then.9
  store i32 3, i32* %tmp_otherparity, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.9, %sw.bb.11, %sw.bb.10, %sw.bb
  br label %if.end

if.else:                                          ; preds = %for.body
  %12 = load i32, i32* %parity.addr, align 4
  store i32 %12, i32* %tmp_otherparity, align 4
  %13 = load i32, i32* %tmp_otherparity, align 4
  switch i32 %13, label %sw.epilog.15 [
    i32 2, label %sw.bb.12
    i32 1, label %sw.bb.13
    i32 3, label %sw.bb.14
  ]

sw.bb.12:                                         ; preds = %if.else
  store i32 1, i32* %tmp_parity, align 4
  br label %sw.epilog.15

sw.bb.13:                                         ; preds = %if.else
  store i32 2, i32* %tmp_parity, align 4
  br label %sw.epilog.15

sw.bb.14:                                         ; preds = %if.else
  store i32 3, i32* %tmp_parity, align 4
  br label %sw.epilog.15

sw.epilog.15:                                     ; preds = %if.else, %sw.bb.14, %sw.bb.13, %sw.bb.12
  br label %if.end

if.end:                                           ; preds = %sw.epilog.15, %sw.epilog
  %14 = load i32, i32* %j, align 4
  %15 = load i32, i32* %length.addr, align 4
  %sub16 = sub nsw i32 %15, 1
  %cmp17 = icmp eq i32 %14, %sub16
  br i1 %cmp17, label %if.then.19, label %if.end.34

if.then.19:                                       ; preds = %if.end
  %16 = load i32, i32* %tmp_otherparity, align 4
  %cmp20 = icmp eq i32 %16, 1
  br i1 %cmp20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.19
  %17 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.19
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %i, align 4
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %19, i64 %idxprom
  store %struct.site* %arrayidx, %struct.site** %s, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %cond.end
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %tmp_otherparity, align 4
  %cmp23 = icmp eq i32 %21, 2
  br i1 %cmp23, label %cond.true.25, label %cond.false.26

cond.true.25:                                     ; preds = %for.cond.22
  %22 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.27

cond.false.26:                                    ; preds = %for.cond.22
  %23 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.26, %cond.true.25
  %cond28 = phi i32 [ %22, %cond.true.25 ], [ %23, %cond.false.26 ]
  %cmp29 = icmp slt i32 %20, %cond28
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %cond.end.27
  %24 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %24 to i64
  %25 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_src, align 8
  %arrayidx33 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %25, i64 %idxprom32
  %26 = load %struct.site*, %struct.site** %s, align 8
  %27 = bitcast %struct.site* %26 to i8*
  %28 = load i32, i32* %src.addr, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  %29 = bitcast i8* %add.ptr to %struct.half_wilson_vector*
  %30 = bitcast %struct.half_wilson_vector* %arrayidx33 to i8*
  %31 = bitcast %struct.half_wilson_vector* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 96, i32 8, i1 false)
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %32 = load i32, i32* %i, align 4
  %inc = add nsw i32 %32, 1
  store i32 %inc, i32* %i, align 4
  %33 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %33, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.22

for.end:                                          ; preds = %cond.end.27
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %if.end
  %34 = load i32, i32* %j, align 4
  %idxprom35 = sext i32 %34 to i64
  %35 = load i32*, i32** %dir.addr, align 8
  %arrayidx36 = getelementptr inbounds i32, i32* %35, i64 %idxprom35
  %36 = load i32, i32* %arrayidx36, align 4
  %cmp37 = icmp sle i32 %36, 3
  br i1 %cmp37, label %if.then.39, label %if.else.73

if.then.39:                                       ; preds = %if.end.34
  %37 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_src, align 8
  %38 = bitcast %struct.half_wilson_vector* %37 to i8*
  %39 = load i32, i32* %j, align 4
  %idxprom40 = sext i32 %39 to i64
  %40 = load i32*, i32** %dir.addr, align 8
  %arrayidx41 = getelementptr inbounds i32, i32* %40, i64 %idxprom40
  %41 = load i32, i32* %arrayidx41, align 4
  %42 = load i32, i32* %tmp_parity, align 4
  %43 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call42 = call %struct.msg_tag* @start_gather_from_temp(i8* %38, i32 96, i32 %41, i32 %42, i8** %43)
  store %struct.msg_tag* %call42, %struct.msg_tag** %mtag0, align 8
  %44 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %44)
  %45 = load i32, i32* %tmp_parity, align 4
  %cmp43 = icmp eq i32 %45, 1
  br i1 %cmp43, label %cond.true.45, label %cond.false.46

cond.true.45:                                     ; preds = %if.then.39
  %46 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.47

cond.false.46:                                    ; preds = %if.then.39
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.46, %cond.true.45
  %cond48 = phi i32 [ %46, %cond.true.45 ], [ 0, %cond.false.46 ]
  store i32 %cond48, i32* %i, align 4
  %47 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %47 to i64
  %48 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx50 = getelementptr inbounds %struct.site, %struct.site* %48, i64 %idxprom49
  store %struct.site* %arrayidx50, %struct.site** %s, align 8
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.69, %cond.end.47
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %tmp_parity, align 4
  %cmp52 = icmp eq i32 %50, 2
  br i1 %cmp52, label %cond.true.54, label %cond.false.55

cond.true.54:                                     ; preds = %for.cond.51
  %51 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.56

cond.false.55:                                    ; preds = %for.cond.51
  %52 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.56

cond.end.56:                                      ; preds = %cond.false.55, %cond.true.54
  %cond57 = phi i32 [ %51, %cond.true.54 ], [ %52, %cond.false.55 ]
  %cmp58 = icmp slt i32 %49, %cond57
  br i1 %cmp58, label %for.body.60, label %for.end.72

for.body.60:                                      ; preds = %cond.end.56
  %53 = load i32, i32* %j, align 4
  %idxprom61 = sext i32 %53 to i64
  %54 = load i32*, i32** %dir.addr, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %54, i64 %idxprom61
  %55 = load i32, i32* %arrayidx62, align 4
  %idxprom63 = sext i32 %55 to i64
  %56 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %56, i32 0, i32 8
  %arrayidx64 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom63
  %57 = load i32, i32* %i, align 4
  %idxprom65 = sext i32 %57 to i64
  %58 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx66 = getelementptr inbounds i8*, i8** %58, i64 %idxprom65
  %59 = load i8*, i8** %arrayidx66, align 8
  %60 = bitcast i8* %59 to %struct.half_wilson_vector*
  %61 = load i32, i32* %i, align 4
  %idxprom67 = sext i32 %61 to i64
  %62 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_dest, align 8
  %arrayidx68 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %62, i64 %idxprom67
  call void @mult_su3_mat_hwvec(%struct.su3_matrix* %arrayidx64, %struct.half_wilson_vector* %60, %struct.half_wilson_vector* %arrayidx68)
  br label %for.inc.69

for.inc.69:                                       ; preds = %for.body.60
  %63 = load i32, i32* %i, align 4
  %inc70 = add nsw i32 %63, 1
  store i32 %inc70, i32* %i, align 4
  %64 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr71 = getelementptr inbounds %struct.site, %struct.site* %64, i32 1
  store %struct.site* %incdec.ptr71, %struct.site** %s, align 8
  br label %for.cond.51

for.end.72:                                       ; preds = %cond.end.56
  %65 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %65)
  br label %if.end.135

if.else.73:                                       ; preds = %if.end.34
  %66 = load i32, i32* %tmp_otherparity, align 4
  %cmp74 = icmp eq i32 %66, 1
  br i1 %cmp74, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %if.else.73
  %67 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.78

cond.false.77:                                    ; preds = %if.else.73
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi i32 [ %67, %cond.true.76 ], [ 0, %cond.false.77 ]
  store i32 %cond79, i32* %i, align 4
  %68 = load i32, i32* %i, align 4
  %idxprom80 = sext i32 %68 to i64
  %69 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx81 = getelementptr inbounds %struct.site, %struct.site* %69, i64 %idxprom80
  store %struct.site* %arrayidx81, %struct.site** %s, align 8
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.102, %cond.end.78
  %70 = load i32, i32* %i, align 4
  %71 = load i32, i32* %tmp_otherparity, align 4
  %cmp83 = icmp eq i32 %71, 2
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %for.cond.82
  %72 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.87

cond.false.86:                                    ; preds = %for.cond.82
  %73 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.86, %cond.true.85
  %cond88 = phi i32 [ %72, %cond.true.85 ], [ %73, %cond.false.86 ]
  %cmp89 = icmp slt i32 %70, %cond88
  br i1 %cmp89, label %for.body.91, label %for.end.105

for.body.91:                                      ; preds = %cond.end.87
  %74 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %74 to i64
  %75 = load i32*, i32** %dir.addr, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %75, i64 %idxprom92
  %76 = load i32, i32* %arrayidx93, align 4
  %sub94 = sub nsw i32 7, %76
  %idxprom95 = sext i32 %sub94 to i64
  %77 = load %struct.site*, %struct.site** %s, align 8
  %link96 = getelementptr inbounds %struct.site, %struct.site* %77, i32 0, i32 8
  %arrayidx97 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link96, i32 0, i64 %idxprom95
  %78 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %78 to i64
  %79 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_src, align 8
  %arrayidx99 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %79, i64 %idxprom98
  %80 = load i32, i32* %i, align 4
  %idxprom100 = sext i32 %80 to i64
  %81 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_work, align 8
  %arrayidx101 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %81, i64 %idxprom100
  call void @mult_adj_su3_mat_hwvec(%struct.su3_matrix* %arrayidx97, %struct.half_wilson_vector* %arrayidx99, %struct.half_wilson_vector* %arrayidx101)
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.91
  %82 = load i32, i32* %i, align 4
  %inc103 = add nsw i32 %82, 1
  store i32 %inc103, i32* %i, align 4
  %83 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr104 = getelementptr inbounds %struct.site, %struct.site* %83, i32 1
  store %struct.site* %incdec.ptr104, %struct.site** %s, align 8
  br label %for.cond.82

for.end.105:                                      ; preds = %cond.end.87
  %84 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_work, align 8
  %85 = bitcast %struct.half_wilson_vector* %84 to i8*
  %86 = load i32, i32* %j, align 4
  %idxprom106 = sext i32 %86 to i64
  %87 = load i32*, i32** %dir.addr, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %87, i64 %idxprom106
  %88 = load i32, i32* %arrayidx107, align 4
  %89 = load i32, i32* %tmp_parity, align 4
  %90 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call108 = call %struct.msg_tag* @start_gather_from_temp(i8* %85, i32 96, i32 %88, i32 %89, i8** %90)
  store %struct.msg_tag* %call108, %struct.msg_tag** %mtag0, align 8
  %91 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %91)
  %92 = load i32, i32* %tmp_parity, align 4
  %cmp109 = icmp eq i32 %92, 1
  br i1 %cmp109, label %cond.true.111, label %cond.false.112

cond.true.111:                                    ; preds = %for.end.105
  %93 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.113

cond.false.112:                                   ; preds = %for.end.105
  br label %cond.end.113

cond.end.113:                                     ; preds = %cond.false.112, %cond.true.111
  %cond114 = phi i32 [ %93, %cond.true.111 ], [ 0, %cond.false.112 ]
  store i32 %cond114, i32* %i, align 4
  %94 = load i32, i32* %i, align 4
  %idxprom115 = sext i32 %94 to i64
  %95 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx116 = getelementptr inbounds %struct.site, %struct.site* %95, i64 %idxprom115
  store %struct.site* %arrayidx116, %struct.site** %s, align 8
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.131, %cond.end.113
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %tmp_parity, align 4
  %cmp118 = icmp eq i32 %97, 2
  br i1 %cmp118, label %cond.true.120, label %cond.false.121

cond.true.120:                                    ; preds = %for.cond.117
  %98 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.122

cond.false.121:                                   ; preds = %for.cond.117
  %99 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.false.121, %cond.true.120
  %cond123 = phi i32 [ %98, %cond.true.120 ], [ %99, %cond.false.121 ]
  %cmp124 = icmp slt i32 %96, %cond123
  br i1 %cmp124, label %for.body.126, label %for.end.134

for.body.126:                                     ; preds = %cond.end.122
  %100 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %100 to i64
  %101 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_dest, align 8
  %arrayidx128 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %101, i64 %idxprom127
  %102 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %102 to i64
  %103 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx130 = getelementptr inbounds i8*, i8** %103, i64 %idxprom129
  %104 = load i8*, i8** %arrayidx130, align 8
  %105 = bitcast i8* %104 to %struct.half_wilson_vector*
  %106 = bitcast %struct.half_wilson_vector* %arrayidx128 to i8*
  %107 = bitcast %struct.half_wilson_vector* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %106, i8* %107, i64 96, i32 8, i1 false)
  br label %for.inc.131

for.inc.131:                                      ; preds = %for.body.126
  %108 = load i32, i32* %i, align 4
  %inc132 = add nsw i32 %108, 1
  store i32 %inc132, i32* %i, align 4
  %109 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr133 = getelementptr inbounds %struct.site, %struct.site* %109, i32 1
  store %struct.site* %incdec.ptr133, %struct.site** %s, align 8
  br label %for.cond.117

for.end.134:                                      ; preds = %cond.end.122
  %110 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %110)
  br label %if.end.135

if.end.135:                                       ; preds = %for.end.134, %for.end.72
  %111 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_src, align 8
  store %struct.half_wilson_vector* %111, %struct.half_wilson_vector** %tmp_pt, align 8
  %112 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_dest, align 8
  store %struct.half_wilson_vector* %112, %struct.half_wilson_vector** %tmp_src, align 8
  %113 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_pt, align 8
  store %struct.half_wilson_vector* %113, %struct.half_wilson_vector** %tmp_dest, align 8
  br label %for.inc.136

for.inc.136:                                      ; preds = %if.end.135
  %114 = load i32, i32* %j, align 4
  %dec = add nsw i32 %114, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end.137:                                      ; preds = %for.cond
  %115 = load i32, i32* %parity.addr, align 4
  %cmp138 = icmp eq i32 %115, 1
  br i1 %cmp138, label %cond.true.140, label %cond.false.141

cond.true.140:                                    ; preds = %for.end.137
  %116 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.142

cond.false.141:                                   ; preds = %for.end.137
  br label %cond.end.142

cond.end.142:                                     ; preds = %cond.false.141, %cond.true.140
  %cond143 = phi i32 [ %116, %cond.true.140 ], [ 0, %cond.false.141 ]
  store i32 %cond143, i32* %i, align 4
  %117 = load i32, i32* %i, align 4
  %idxprom144 = sext i32 %117 to i64
  %118 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx145 = getelementptr inbounds %struct.site, %struct.site* %118, i64 %idxprom144
  store %struct.site* %arrayidx145, %struct.site** %s, align 8
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.160, %cond.end.142
  %119 = load i32, i32* %i, align 4
  %120 = load i32, i32* %parity.addr, align 4
  %cmp147 = icmp eq i32 %120, 2
  br i1 %cmp147, label %cond.true.149, label %cond.false.150

cond.true.149:                                    ; preds = %for.cond.146
  %121 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.151

cond.false.150:                                   ; preds = %for.cond.146
  %122 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.150, %cond.true.149
  %cond152 = phi i32 [ %121, %cond.true.149 ], [ %122, %cond.false.150 ]
  %cmp153 = icmp slt i32 %119, %cond152
  br i1 %cmp153, label %for.body.155, label %for.end.163

for.body.155:                                     ; preds = %cond.end.151
  %123 = load %struct.site*, %struct.site** %s, align 8
  %124 = bitcast %struct.site* %123 to i8*
  %125 = load i32, i32* %dest.addr, align 4
  %idx.ext156 = sext i32 %125 to i64
  %add.ptr157 = getelementptr inbounds i8, i8* %124, i64 %idx.ext156
  %126 = bitcast i8* %add.ptr157 to %struct.half_wilson_vector*
  %127 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %127 to i64
  %128 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_src, align 8
  %arrayidx159 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %128, i64 %idxprom158
  %129 = bitcast %struct.half_wilson_vector* %126 to i8*
  %130 = bitcast %struct.half_wilson_vector* %arrayidx159 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %129, i8* %130, i64 96, i32 8, i1 false)
  br label %for.inc.160

for.inc.160:                                      ; preds = %for.body.155
  %131 = load i32, i32* %i, align 4
  %inc161 = add nsw i32 %131, 1
  store i32 %inc161, i32* %i, align 4
  %132 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr162 = getelementptr inbounds %struct.site, %struct.site* %132, i32 1
  store %struct.site* %incdec.ptr162, %struct.site** %s, align 8
  br label %for.cond.146

for.end.163:                                      ; preds = %cond.end.151
  %133 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_src, align 8
  %134 = bitcast %struct.half_wilson_vector* %133 to i8*
  call void @free(i8* %134) #4
  %135 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_dest, align 8
  %136 = bitcast %struct.half_wilson_vector* %135 to i8*
  call void @free(i8* %136) #4
  %137 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmp_work, align 8
  %138 = bitcast %struct.half_wilson_vector* %137 to i8*
  call void @free(i8* %138) #4
  br label %if.end.195

if.else.164:                                      ; preds = %entry
  %139 = load i32, i32* %src.addr, align 4
  %140 = load i32, i32* %dest.addr, align 4
  %cmp165 = icmp ne i32 %139, %140
  br i1 %cmp165, label %if.then.167, label %if.end.194

if.then.167:                                      ; preds = %if.else.164
  %141 = load i32, i32* %parity.addr, align 4
  %cmp168 = icmp eq i32 %141, 1
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %if.then.167
  %142 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.172

cond.false.171:                                   ; preds = %if.then.167
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.171, %cond.true.170
  %cond173 = phi i32 [ %142, %cond.true.170 ], [ 0, %cond.false.171 ]
  store i32 %cond173, i32* %i, align 4
  %143 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %143 to i64
  %144 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx175 = getelementptr inbounds %struct.site, %struct.site* %144, i64 %idxprom174
  store %struct.site* %arrayidx175, %struct.site** %s, align 8
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.190, %cond.end.172
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* %parity.addr, align 4
  %cmp177 = icmp eq i32 %146, 2
  br i1 %cmp177, label %cond.true.179, label %cond.false.180

cond.true.179:                                    ; preds = %for.cond.176
  %147 = load i32, i32* @even_sites_on_node, align 4
  br label %cond.end.181

cond.false.180:                                   ; preds = %for.cond.176
  %148 = load i32, i32* @sites_on_node, align 4
  br label %cond.end.181

cond.end.181:                                     ; preds = %cond.false.180, %cond.true.179
  %cond182 = phi i32 [ %147, %cond.true.179 ], [ %148, %cond.false.180 ]
  %cmp183 = icmp slt i32 %145, %cond182
  br i1 %cmp183, label %for.body.185, label %for.end.193

for.body.185:                                     ; preds = %cond.end.181
  %149 = load %struct.site*, %struct.site** %s, align 8
  %150 = bitcast %struct.site* %149 to i8*
  %151 = load i32, i32* %dest.addr, align 4
  %idx.ext186 = sext i32 %151 to i64
  %add.ptr187 = getelementptr inbounds i8, i8* %150, i64 %idx.ext186
  %152 = bitcast i8* %add.ptr187 to %struct.half_wilson_vector*
  %153 = load %struct.site*, %struct.site** %s, align 8
  %154 = bitcast %struct.site* %153 to i8*
  %155 = load i32, i32* %src.addr, align 4
  %idx.ext188 = sext i32 %155 to i64
  %add.ptr189 = getelementptr inbounds i8, i8* %154, i64 %idx.ext188
  %156 = bitcast i8* %add.ptr189 to %struct.half_wilson_vector*
  %157 = bitcast %struct.half_wilson_vector* %152 to i8*
  %158 = bitcast %struct.half_wilson_vector* %156 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %157, i8* %158, i64 96, i32 8, i1 false)
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.185
  %159 = load i32, i32* %i, align 4
  %inc191 = add nsw i32 %159, 1
  store i32 %inc191, i32* %i, align 4
  %160 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr192 = getelementptr inbounds %struct.site, %struct.site* %160, i32 1
  store %struct.site* %incdec.ptr192, %struct.site** %s, align 8
  br label %for.cond.176

for.end.193:                                      ; preds = %cond.end.181
  br label %if.end.194

if.end.194:                                       ; preds = %for.end.193, %if.else.164
  br label %if.end.195

if.end.195:                                       ; preds = %if.end.194, %for.end.163
  ret void
}

declare void @mult_su3_mat_hwvec(%struct.su3_matrix*, %struct.half_wilson_vector*, %struct.half_wilson_vector*) #1

declare void @mult_adj_su3_mat_hwvec(%struct.su3_matrix*, %struct.half_wilson_vector*, %struct.half_wilson_vector*) #1

; Function Attrs: nounwind uwtable
define void @load_longlinks() #0 {
entry:
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %ipath = alloca i32, align 4
  %dir = alloca i32, align 4
  %disp = alloca [4 x i32], align 16
  %long1 = alloca %struct.su3_matrix*, align 8
  %0 = load i32, i32* @phases_in, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @this_node, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  call void @terminate(i32 0)
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  store i32 0, i32* %dir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.91, %if.end.3
  %2 = load i32, i32* %dir, align 4
  %cmp4 = icmp sle i32 %2, 3
  br i1 %cmp4, label %for.body, label %for.end.93

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %3 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %3, %struct.site** %s, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @sites_on_node, align 4
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %6 = load i32, i32* %i, align 4
  %mul = mul nsw i32 4, %6
  %7 = load i32, i32* %dir, align 4
  %add = add nsw i32 %mul, %7
  %idxprom = sext i32 %add to i64
  %8 = load %struct.su3_matrix*, %struct.su3_matrix** @t_longlink, align 8
  %arrayidx = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %8, i64 %idxprom
  store %struct.su3_matrix* %arrayidx, %struct.su3_matrix** %long1, align 8
  %9 = load %struct.su3_matrix*, %struct.su3_matrix** %long1, align 8
  call void @clear_su3mat(%struct.su3_matrix* %9)
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  %11 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %11, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  store i32 0, i32* %ipath, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.88, %for.end
  %12 = load i32, i32* %ipath, align 4
  %13 = load i32, i32* @num_q_paths, align 4
  %cmp9 = icmp slt i32 %12, %13
  br i1 %cmp9, label %for.body.10, label %for.end.90

for.body.10:                                      ; preds = %for.cond.8
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.16, %for.body.10
  %14 = load i32, i32* %i, align 4
  %cmp12 = icmp sle i32 %14, 3
  br i1 %cmp12, label %for.body.13, label %for.end.18

for.body.13:                                      ; preds = %for.cond.11
  %15 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %15 to i64
  %arrayidx15 = getelementptr inbounds [4 x i32], [4 x i32]* %disp, i32 0, i64 %idxprom14
  store i32 0, i32* %arrayidx15, align 4
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.13
  %16 = load i32, i32* %i, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, i32* %i, align 4
  br label %for.cond.11

for.end.18:                                       ; preds = %for.cond.11
  store i32 0, i32* %i, align 4
  br label %for.cond.19

for.cond.19:                                      ; preds = %for.inc.47, %for.end.18
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %ipath, align 4
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom20
  %length = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx21, i32 0, i32 1
  %19 = load i32, i32* %length, align 4
  %cmp22 = icmp slt i32 %17, %19
  br i1 %cmp22, label %for.body.23, label %for.end.49

for.body.23:                                      ; preds = %for.cond.19
  %20 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load i32, i32* %ipath, align 4
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom25
  %dir27 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [7 x i32], [7 x i32]* %dir27, i32 0, i64 %idxprom24
  %22 = load i32, i32* %arrayidx28, align 4
  %cmp29 = icmp sle i32 %22, 3
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %for.body.23
  %23 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %23 to i64
  %24 = load i32, i32* %ipath, align 4
  %idxprom32 = sext i32 %24 to i64
  %arrayidx33 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom32
  %dir34 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx33, i32 0, i32 0
  %arrayidx35 = getelementptr inbounds [7 x i32], [7 x i32]* %dir34, i32 0, i64 %idxprom31
  %25 = load i32, i32* %arrayidx35, align 4
  %idxprom36 = sext i32 %25 to i64
  %arrayidx37 = getelementptr inbounds [4 x i32], [4 x i32]* %disp, i32 0, i64 %idxprom36
  %26 = load i32, i32* %arrayidx37, align 4
  %inc38 = add nsw i32 %26, 1
  store i32 %inc38, i32* %arrayidx37, align 4
  br label %if.end.46

if.else:                                          ; preds = %for.body.23
  %27 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %27 to i64
  %28 = load i32, i32* %ipath, align 4
  %idxprom40 = sext i32 %28 to i64
  %arrayidx41 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom40
  %dir42 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx41, i32 0, i32 0
  %arrayidx43 = getelementptr inbounds [7 x i32], [7 x i32]* %dir42, i32 0, i64 %idxprom39
  %29 = load i32, i32* %arrayidx43, align 4
  %sub = sub nsw i32 7, %29
  %idxprom44 = sext i32 %sub to i64
  %arrayidx45 = getelementptr inbounds [4 x i32], [4 x i32]* %disp, i32 0, i64 %idxprom44
  %30 = load i32, i32* %arrayidx45, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %arrayidx45, align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.else, %if.then.30
  br label %for.inc.47

for.inc.47:                                       ; preds = %if.end.46
  %31 = load i32, i32* %i, align 4
  %inc48 = add nsw i32 %31, 1
  store i32 %inc48, i32* %i, align 4
  br label %for.cond.19

for.end.49:                                       ; preds = %for.cond.19
  %32 = load i32, i32* %dir, align 4
  %idxprom50 = sext i32 %32 to i64
  %arrayidx51 = getelementptr inbounds [4 x i32], [4 x i32]* %disp, i32 0, i64 %idxprom50
  %33 = load i32, i32* %arrayidx51, align 4
  %add52 = add nsw i32 %33, 3
  store i32 %add52, i32* %arrayidx51, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.61, %for.end.49
  %34 = load i32, i32* %i, align 4
  %cmp54 = icmp sle i32 %34, 3
  br i1 %cmp54, label %for.body.55, label %for.end.63

for.body.55:                                      ; preds = %for.cond.53
  %35 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %35 to i64
  %arrayidx57 = getelementptr inbounds [4 x i32], [4 x i32]* %disp, i32 0, i64 %idxprom56
  %36 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp ne i32 %36, 0
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %for.body.55
  br label %for.end.63

if.end.60:                                        ; preds = %for.body.55
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %37 = load i32, i32* %i, align 4
  %inc62 = add nsw i32 %37, 1
  store i32 %inc62, i32* %i, align 4
  br label %for.cond.53

for.end.63:                                       ; preds = %if.then.59, %for.cond.53
  %38 = load i32, i32* %i, align 4
  %cmp64 = icmp sle i32 %38, 3
  br i1 %cmp64, label %if.then.65, label %if.end.66

if.then.65:                                       ; preds = %for.end.63
  br label %for.inc.88

if.end.66:                                        ; preds = %for.end.63
  %39 = load i32, i32* %ipath, align 4
  %idxprom67 = sext i32 %39 to i64
  %arrayidx68 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom67
  %dir69 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx68, i32 0, i32 0
  %arraydecay = getelementptr inbounds [7 x i32], [7 x i32]* %dir69, i32 0, i32 0
  %40 = load i32, i32* %ipath, align 4
  %idxprom70 = sext i32 %40 to i64
  %arrayidx71 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom70
  %length72 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx71, i32 0, i32 1
  %41 = load i32, i32* %length72, align 4
  call void @path_product(i32* %arraydecay, i32 %41)
  store i32 0, i32* %i, align 4
  %42 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %42, %struct.site** %s, align 8
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.84, %if.end.66
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* @sites_on_node, align 4
  %cmp74 = icmp slt i32 %43, %44
  br i1 %cmp74, label %for.body.75, label %for.end.87

for.body.75:                                      ; preds = %for.cond.73
  %45 = load %struct.site*, %struct.site** %s, align 8
  %tempmat1 = getelementptr inbounds %struct.site, %struct.site* %45, i32 0, i32 20
  %46 = load %struct.site*, %struct.site** %s, align 8
  %staple = getelementptr inbounds %struct.site, %struct.site* %46, i32 0, i32 21
  call void @su3_adjoint(%struct.su3_matrix* %tempmat1, %struct.su3_matrix* %staple)
  %47 = load i32, i32* %i, align 4
  %mul76 = mul nsw i32 4, %47
  %48 = load i32, i32* %dir, align 4
  %add77 = add nsw i32 %mul76, %48
  %idxprom78 = sext i32 %add77 to i64
  %49 = load %struct.su3_matrix*, %struct.su3_matrix** @t_longlink, align 8
  %arrayidx79 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %49, i64 %idxprom78
  store %struct.su3_matrix* %arrayidx79, %struct.su3_matrix** %long1, align 8
  %50 = load %struct.su3_matrix*, %struct.su3_matrix** %long1, align 8
  %51 = load %struct.site*, %struct.site** %s, align 8
  %staple80 = getelementptr inbounds %struct.site, %struct.site* %51, i32 0, i32 21
  %52 = load i32, i32* %ipath, align 4
  %idxprom81 = sext i32 %52 to i64
  %arrayidx82 = getelementptr inbounds [688 x %struct.anon], [688 x %struct.anon]* @q_paths, i32 0, i64 %idxprom81
  %coeff = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx82, i32 0, i32 2
  %53 = load double, double* %coeff, align 8
  %sub83 = fsub double -0.000000e+00, %53
  %54 = load %struct.su3_matrix*, %struct.su3_matrix** %long1, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %50, %struct.su3_matrix* %staple80, double %sub83, %struct.su3_matrix* %54)
  br label %for.inc.84

for.inc.84:                                       ; preds = %for.body.75
  %55 = load i32, i32* %i, align 4
  %inc85 = add nsw i32 %55, 1
  store i32 %inc85, i32* %i, align 4
  %56 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr86 = getelementptr inbounds %struct.site, %struct.site* %56, i32 1
  store %struct.site* %incdec.ptr86, %struct.site** %s, align 8
  br label %for.cond.73

for.end.87:                                       ; preds = %for.cond.73
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.87, %if.then.65
  %57 = load i32, i32* %ipath, align 4
  %inc89 = add nsw i32 %57, 1
  store i32 %inc89, i32* %ipath, align 4
  br label %for.cond.8

for.end.90:                                       ; preds = %for.cond.8
  br label %for.inc.91

for.inc.91:                                       ; preds = %for.end.90
  %58 = load i32, i32* %dir, align 4
  %inc92 = add nsw i32 %58, 1
  store i32 %inc92, i32* %dir, align 4
  br label %for.cond

for.end.93:                                       ; preds = %for.cond
  store i32 1, i32* @valid_longlinks, align 4
  ret void
}

declare void @terminate(i32) #1

declare void @clear_su3mat(%struct.su3_matrix*) #1

declare void @path_product(i32*, i32) #1

declare void @su3_adjoint(%struct.su3_matrix*, %struct.su3_matrix*) #1

declare void @scalar_mult_add_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, double, %struct.su3_matrix*) #1

; Function Attrs: nounwind uwtable
define void @load_fatlinks() #0 {
entry:
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %dir = alloca i32, align 4
  %fat1 = alloca %struct.su3_matrix*, align 8
  %nu = alloca i32, align 4
  %rho = alloca i32, align 4
  %sig = alloca i32, align 4
  %one_link = alloca double, align 8
  %0 = load i32, i32* @phases_in, align 4
  %cmp = icmp ne i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %1 = load i32, i32* @this_node, align 4
  %cmp1 = icmp eq i32 %1, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  call void @terminate(i32 0)
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 0), align 8
  %3 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 5), align 8
  %mul = fmul double 6.000000e+00, %3
  %sub = fsub double %2, %mul
  store double %sub, double* %one_link, align 8
  store i32 0, i32* %dir, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.88, %if.end.3
  %4 = load i32, i32* %dir, align 4
  %cmp4 = icmp sle i32 %4, 3
  br i1 %cmp4, label %for.body, label %for.end.90

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  %5 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %5, %struct.site** %s, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %i, align 4
  %7 = load i32, i32* @sites_on_node, align 4
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %8 = load i32, i32* %i, align 4
  %mul8 = mul nsw i32 4, %8
  %9 = load i32, i32* %dir, align 4
  %add = add nsw i32 %mul8, %9
  %idxprom = sext i32 %add to i64
  %10 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %10, i64 %idxprom
  store %struct.su3_matrix* %arrayidx, %struct.su3_matrix** %fat1, align 8
  %11 = load i32, i32* %dir, align 4
  %idxprom9 = sext i32 %11 to i64
  %12 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %12, i32 0, i32 8
  %arrayidx10 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom9
  %13 = load double, double* %one_link, align 8
  %14 = load %struct.su3_matrix*, %struct.su3_matrix** %fat1, align 8
  call void @scalar_mult_su3_matrix(%struct.su3_matrix* %arrayidx10, double %13, %struct.su3_matrix* %14)
  br label %for.inc

for.inc:                                          ; preds = %for.body.7
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %16, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  store i32 0, i32* %nu, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.85, %for.end
  %17 = load i32, i32* %nu, align 4
  %cmp12 = icmp sle i32 %17, 3
  br i1 %cmp12, label %for.body.13, label %for.end.87

for.body.13:                                      ; preds = %for.cond.11
  %18 = load i32, i32* %nu, align 4
  %19 = load i32, i32* %dir, align 4
  %cmp14 = icmp ne i32 %18, %19
  br i1 %cmp14, label %if.then.15, label %if.end.84

if.then.15:                                       ; preds = %for.body.13
  %20 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx16 = getelementptr inbounds %struct.site, %struct.site* %20, i64 0
  %staple = getelementptr inbounds %struct.site, %struct.site* %arrayidx16, i32 0, i32 21
  %21 = bitcast %struct.su3_matrix* %staple to i8*
  %22 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx17 = getelementptr inbounds %struct.site, %struct.site* %22, i64 0
  %23 = bitcast %struct.site* %arrayidx17 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %21 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %23 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %24 = load i32, i32* %dir, align 4
  %25 = load i32, i32* %nu, align 4
  %26 = load i32, i32* %dir, align 4
  %idxprom18 = sext i32 %26 to i64
  %27 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx19 = getelementptr inbounds %struct.site, %struct.site* %27, i64 0
  %link20 = getelementptr inbounds %struct.site, %struct.site* %arrayidx19, i32 0, i32 8
  %arrayidx21 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link20, i32 0, i64 %idxprom18
  %28 = bitcast %struct.su3_matrix* %arrayidx21 to i8*
  %29 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx22 = getelementptr inbounds %struct.site, %struct.site* %29, i64 0
  %30 = bitcast %struct.site* %arrayidx22 to i8*
  %sub.ptr.lhs.cast23 = ptrtoint i8* %28 to i64
  %sub.ptr.rhs.cast24 = ptrtoint i8* %30 to i64
  %sub.ptr.sub25 = sub i64 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %conv26 = trunc i64 %sub.ptr.sub25 to i32
  %31 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 2), align 8
  call void @compute_gen_staple(i32 %conv, i32 %24, i32 %25, i32 %conv26, double %31)
  %32 = load i32, i32* %dir, align 4
  %33 = load i32, i32* %nu, align 4
  %34 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx27 = getelementptr inbounds %struct.site, %struct.site* %34, i64 0
  %staple28 = getelementptr inbounds %struct.site, %struct.site* %arrayidx27, i32 0, i32 21
  %35 = bitcast %struct.su3_matrix* %staple28 to i8*
  %36 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx29 = getelementptr inbounds %struct.site, %struct.site* %36, i64 0
  %37 = bitcast %struct.site* %arrayidx29 to i8*
  %sub.ptr.lhs.cast30 = ptrtoint i8* %35 to i64
  %sub.ptr.rhs.cast31 = ptrtoint i8* %37 to i64
  %sub.ptr.sub32 = sub i64 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  %conv33 = trunc i64 %sub.ptr.sub32 to i32
  %38 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 5), align 8
  call void @compute_gen_staple(i32 -1, i32 %32, i32 %33, i32 %conv33, double %38)
  store i32 0, i32* %rho, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.81, %if.then.15
  %39 = load i32, i32* %rho, align 4
  %cmp35 = icmp sle i32 %39, 3
  br i1 %cmp35, label %for.body.37, label %for.end.83

for.body.37:                                      ; preds = %for.cond.34
  %40 = load i32, i32* %rho, align 4
  %41 = load i32, i32* %dir, align 4
  %cmp38 = icmp ne i32 %40, %41
  br i1 %cmp38, label %land.lhs.true, label %if.end.80

land.lhs.true:                                    ; preds = %for.body.37
  %42 = load i32, i32* %rho, align 4
  %43 = load i32, i32* %nu, align 4
  %cmp40 = icmp ne i32 %42, %43
  br i1 %cmp40, label %if.then.42, label %if.end.80

if.then.42:                                       ; preds = %land.lhs.true
  %44 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx43 = getelementptr inbounds %struct.site, %struct.site* %44, i64 0
  %tempmat1 = getelementptr inbounds %struct.site, %struct.site* %arrayidx43, i32 0, i32 20
  %45 = bitcast %struct.su3_matrix* %tempmat1 to i8*
  %46 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx44 = getelementptr inbounds %struct.site, %struct.site* %46, i64 0
  %47 = bitcast %struct.site* %arrayidx44 to i8*
  %sub.ptr.lhs.cast45 = ptrtoint i8* %45 to i64
  %sub.ptr.rhs.cast46 = ptrtoint i8* %47 to i64
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46
  %conv48 = trunc i64 %sub.ptr.sub47 to i32
  %48 = load i32, i32* %dir, align 4
  %49 = load i32, i32* %rho, align 4
  %50 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx49 = getelementptr inbounds %struct.site, %struct.site* %50, i64 0
  %staple50 = getelementptr inbounds %struct.site, %struct.site* %arrayidx49, i32 0, i32 21
  %51 = bitcast %struct.su3_matrix* %staple50 to i8*
  %52 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx51 = getelementptr inbounds %struct.site, %struct.site* %52, i64 0
  %53 = bitcast %struct.site* %arrayidx51 to i8*
  %sub.ptr.lhs.cast52 = ptrtoint i8* %51 to i64
  %sub.ptr.rhs.cast53 = ptrtoint i8* %53 to i64
  %sub.ptr.sub54 = sub i64 %sub.ptr.lhs.cast52, %sub.ptr.rhs.cast53
  %conv55 = trunc i64 %sub.ptr.sub54 to i32
  %54 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 3), align 8
  call void @compute_gen_staple(i32 %conv48, i32 %48, i32 %49, i32 %conv55, double %54)
  store i32 0, i32* %sig, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.77, %if.then.42
  %55 = load i32, i32* %sig, align 4
  %cmp57 = icmp sle i32 %55, 3
  br i1 %cmp57, label %for.body.59, label %for.end.79

for.body.59:                                      ; preds = %for.cond.56
  %56 = load i32, i32* %sig, align 4
  %57 = load i32, i32* %dir, align 4
  %cmp60 = icmp ne i32 %56, %57
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.76

land.lhs.true.62:                                 ; preds = %for.body.59
  %58 = load i32, i32* %sig, align 4
  %59 = load i32, i32* %nu, align 4
  %cmp63 = icmp ne i32 %58, %59
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.76

land.lhs.true.65:                                 ; preds = %land.lhs.true.62
  %60 = load i32, i32* %sig, align 4
  %61 = load i32, i32* %rho, align 4
  %cmp66 = icmp ne i32 %60, %61
  br i1 %cmp66, label %if.then.68, label %if.end.76

if.then.68:                                       ; preds = %land.lhs.true.65
  %62 = load i32, i32* %dir, align 4
  %63 = load i32, i32* %sig, align 4
  %64 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx69 = getelementptr inbounds %struct.site, %struct.site* %64, i64 0
  %tempmat170 = getelementptr inbounds %struct.site, %struct.site* %arrayidx69, i32 0, i32 20
  %65 = bitcast %struct.su3_matrix* %tempmat170 to i8*
  %66 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx71 = getelementptr inbounds %struct.site, %struct.site* %66, i64 0
  %67 = bitcast %struct.site* %arrayidx71 to i8*
  %sub.ptr.lhs.cast72 = ptrtoint i8* %65 to i64
  %sub.ptr.rhs.cast73 = ptrtoint i8* %67 to i64
  %sub.ptr.sub74 = sub i64 %sub.ptr.lhs.cast72, %sub.ptr.rhs.cast73
  %conv75 = trunc i64 %sub.ptr.sub74 to i32
  %68 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 4), align 8
  call void @compute_gen_staple(i32 -1, i32 %62, i32 %63, i32 %conv75, double %68)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.68, %land.lhs.true.65, %land.lhs.true.62, %for.body.59
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %69 = load i32, i32* %sig, align 4
  %inc78 = add nsw i32 %69, 1
  store i32 %inc78, i32* %sig, align 4
  br label %for.cond.56

for.end.79:                                       ; preds = %for.cond.56
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.79, %land.lhs.true, %for.body.37
  br label %for.inc.81

for.inc.81:                                       ; preds = %if.end.80
  %70 = load i32, i32* %rho, align 4
  %inc82 = add nsw i32 %70, 1
  store i32 %inc82, i32* %rho, align 4
  br label %for.cond.34

for.end.83:                                       ; preds = %for.cond.34
  br label %if.end.84

if.end.84:                                        ; preds = %for.end.83, %for.body.13
  br label %for.inc.85

for.inc.85:                                       ; preds = %if.end.84
  %71 = load i32, i32* %nu, align 4
  %inc86 = add nsw i32 %71, 1
  store i32 %inc86, i32* %nu, align 4
  br label %for.cond.11

for.end.87:                                       ; preds = %for.cond.11
  br label %for.inc.88

for.inc.88:                                       ; preds = %for.end.87
  %72 = load i32, i32* %dir, align 4
  %inc89 = add nsw i32 %72, 1
  store i32 %inc89, i32* %dir, align 4
  br label %for.cond

for.end.90:                                       ; preds = %for.cond
  store i32 1, i32* @valid_fatlinks, align 4
  ret void
}

declare void @scalar_mult_su3_matrix(%struct.su3_matrix*, double, %struct.su3_matrix*) #1

; Function Attrs: nounwind uwtable
define void @compute_gen_staple(i32 %staple, i32 %mu, i32 %nu, i32 %link, double %coef) #0 {
entry:
  %staple.addr = alloca i32, align 4
  %mu.addr = alloca i32, align 4
  %nu.addr = alloca i32, align 4
  %link.addr = alloca i32, align 4
  %coef.addr = alloca double, align 8
  %tmat1 = alloca %struct.su3_matrix, align 8
  %tmat2 = alloca %struct.su3_matrix, align 8
  %mtag0 = alloca %struct.msg_tag*, align 8
  %mtag1 = alloca %struct.msg_tag*, align 8
  %tempmat = alloca %struct.su3_matrix*, align 8
  %s = alloca %struct.site*, align 8
  %i = alloca i32, align 4
  %fat1 = alloca %struct.su3_matrix*, align 8
  store i32 %staple, i32* %staple.addr, align 4
  store i32 %mu, i32* %mu.addr, align 4
  store i32 %nu, i32* %nu.addr, align 4
  store i32 %link, i32* %link.addr, align 4
  store double %coef, double* %coef.addr, align 8
  %0 = load i32, i32* %link.addr, align 4
  %1 = load i32, i32* %nu.addr, align 4
  %2 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call = call %struct.msg_tag* @start_gather(i32 %0, i32 144, i32 %1, i32 3, i8** %2)
  store %struct.msg_tag* %call, %struct.msg_tag** %mtag0, align 8
  %3 = load i32, i32* %nu.addr, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx = getelementptr inbounds %struct.site, %struct.site* %4, i64 0
  %link1 = getelementptr inbounds %struct.site, %struct.site* %arrayidx, i32 0, i32 8
  %arrayidx2 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link1, i32 0, i64 %idxprom
  %5 = bitcast %struct.su3_matrix* %arrayidx2 to i8*
  %6 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx3 = getelementptr inbounds %struct.site, %struct.site* %6, i64 0
  %7 = bitcast %struct.site* %arrayidx3 to i8*
  %sub.ptr.lhs.cast = ptrtoint i8* %5 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv = trunc i64 %sub.ptr.sub to i32
  %8 = load i32, i32* %mu.addr, align 4
  %9 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 1), align 8
  %call4 = call %struct.msg_tag* @start_gather(i32 %conv, i32 144, i32 %8, i32 3, i8** %9)
  store %struct.msg_tag* %call4, %struct.msg_tag** %mtag1, align 8
  %10 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %10)
  %11 = load %struct.msg_tag*, %struct.msg_tag** %mtag1, align 8
  call void @wait_gather(%struct.msg_tag* %11)
  %12 = load i32, i32* %staple.addr, align 4
  %cmp = icmp ne i32 %12, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  %13 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %13, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %14 = load i32, i32* %i, align 4
  %15 = load i32, i32* @sites_on_node, align 4
  %cmp6 = icmp slt i32 %14, %15
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %16 to i64
  %17 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %17, i64 %idxprom8
  %18 = load i8*, i8** %arrayidx9, align 8
  %19 = bitcast i8* %18 to %struct.su3_matrix*
  %20 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %20 to i64
  %21 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 1), align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %21, i64 %idxprom10
  %22 = load i8*, i8** %arrayidx11, align 8
  %23 = bitcast i8* %22 to %struct.su3_matrix*
  call void @mult_su3_na(%struct.su3_matrix* %19, %struct.su3_matrix* %23, %struct.su3_matrix* %tmat1)
  %24 = load i32, i32* %nu.addr, align 4
  %idxprom12 = sext i32 %24 to i64
  %25 = load %struct.site*, %struct.site** %s, align 8
  %link13 = getelementptr inbounds %struct.site, %struct.site* %25, i32 0, i32 8
  %arrayidx14 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link13, i32 0, i64 %idxprom12
  %26 = load %struct.site*, %struct.site** %s, align 8
  %27 = bitcast %struct.site* %26 to i8*
  %28 = load i32, i32* %staple.addr, align 4
  %idx.ext = sext i32 %28 to i64
  %add.ptr = getelementptr inbounds i8, i8* %27, i64 %idx.ext
  %29 = bitcast i8* %add.ptr to %struct.su3_matrix*
  call void @mult_su3_nn(%struct.su3_matrix* %arrayidx14, %struct.su3_matrix* %tmat1, %struct.su3_matrix* %29)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  %31 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %31, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  %32 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %32, %struct.site** %s, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.28, %if.else
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* @sites_on_node, align 4
  %cmp16 = icmp slt i32 %33, %34
  br i1 %cmp16, label %for.body.18, label %for.end.31

for.body.18:                                      ; preds = %for.cond.15
  %35 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %35 to i64
  %36 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx20 = getelementptr inbounds i8*, i8** %36, i64 %idxprom19
  %37 = load i8*, i8** %arrayidx20, align 8
  %38 = bitcast i8* %37 to %struct.su3_matrix*
  %39 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %39 to i64
  %40 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 1), align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %40, i64 %idxprom21
  %41 = load i8*, i8** %arrayidx22, align 8
  %42 = bitcast i8* %41 to %struct.su3_matrix*
  call void @mult_su3_na(%struct.su3_matrix* %38, %struct.su3_matrix* %42, %struct.su3_matrix* %tmat1)
  %43 = load i32, i32* %nu.addr, align 4
  %idxprom23 = sext i32 %43 to i64
  %44 = load %struct.site*, %struct.site** %s, align 8
  %link24 = getelementptr inbounds %struct.site, %struct.site* %44, i32 0, i32 8
  %arrayidx25 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link24, i32 0, i64 %idxprom23
  call void @mult_su3_nn(%struct.su3_matrix* %arrayidx25, %struct.su3_matrix* %tmat1, %struct.su3_matrix* %tmat2)
  %45 = load i32, i32* %i, align 4
  %mul = mul nsw i32 4, %45
  %46 = load i32, i32* %mu.addr, align 4
  %add = add nsw i32 %mul, %46
  %idxprom26 = sext i32 %add to i64
  %47 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx27 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %47, i64 %idxprom26
  store %struct.su3_matrix* %arrayidx27, %struct.su3_matrix** %fat1, align 8
  %48 = load %struct.su3_matrix*, %struct.su3_matrix** %fat1, align 8
  %49 = load double, double* %coef.addr, align 8
  %50 = load %struct.su3_matrix*, %struct.su3_matrix** %fat1, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %48, %struct.su3_matrix* %tmat2, double %49, %struct.su3_matrix* %50)
  br label %for.inc.28

for.inc.28:                                       ; preds = %for.body.18
  %51 = load i32, i32* %i, align 4
  %inc29 = add nsw i32 %51, 1
  store i32 %inc29, i32* %i, align 4
  %52 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr30 = getelementptr inbounds %struct.site, %struct.site* %52, i32 1
  store %struct.site* %incdec.ptr30, %struct.site** %s, align 8
  br label %for.cond.15

for.end.31:                                       ; preds = %for.cond.15
  br label %if.end

if.end:                                           ; preds = %for.end.31, %for.end
  %53 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %53)
  %54 = load %struct.msg_tag*, %struct.msg_tag** %mtag1, align 8
  call void @cleanup_gather(%struct.msg_tag* %54)
  %55 = load i32, i32* @sites_on_node, align 4
  %conv32 = sext i32 %55 to i64
  %call33 = call noalias i8* @calloc(i64 %conv32, i64 144) #4
  %56 = bitcast i8* %call33 to %struct.su3_matrix*
  store %struct.su3_matrix* %56, %struct.su3_matrix** %tempmat, align 8
  %57 = load i32, i32* %nu.addr, align 4
  %idxprom34 = sext i32 %57 to i64
  %58 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx35 = getelementptr inbounds %struct.site, %struct.site* %58, i64 0
  %link36 = getelementptr inbounds %struct.site, %struct.site* %arrayidx35, i32 0, i32 8
  %arrayidx37 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link36, i32 0, i64 %idxprom34
  %59 = bitcast %struct.su3_matrix* %arrayidx37 to i8*
  %60 = load %struct.site*, %struct.site** @lattice, align 8
  %arrayidx38 = getelementptr inbounds %struct.site, %struct.site* %60, i64 0
  %61 = bitcast %struct.site* %arrayidx38 to i8*
  %sub.ptr.lhs.cast39 = ptrtoint i8* %59 to i64
  %sub.ptr.rhs.cast40 = ptrtoint i8* %61 to i64
  %sub.ptr.sub41 = sub i64 %sub.ptr.lhs.cast39, %sub.ptr.rhs.cast40
  %conv42 = trunc i64 %sub.ptr.sub41 to i32
  %62 = load i32, i32* %mu.addr, align 4
  %63 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call43 = call %struct.msg_tag* @start_gather(i32 %conv42, i32 144, i32 %62, i32 3, i8** %63)
  store %struct.msg_tag* %call43, %struct.msg_tag** %mtag0, align 8
  %64 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %64)
  store i32 0, i32* %i, align 4
  %65 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %65, %struct.site** %s, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %for.inc.57, %if.end
  %66 = load i32, i32* %i, align 4
  %67 = load i32, i32* @sites_on_node, align 4
  %cmp45 = icmp slt i32 %66, %67
  br i1 %cmp45, label %for.body.47, label %for.end.60

for.body.47:                                      ; preds = %for.cond.44
  %68 = load i32, i32* %nu.addr, align 4
  %idxprom48 = sext i32 %68 to i64
  %69 = load %struct.site*, %struct.site** %s, align 8
  %link49 = getelementptr inbounds %struct.site, %struct.site* %69, i32 0, i32 8
  %arrayidx50 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link49, i32 0, i64 %idxprom48
  %70 = load %struct.site*, %struct.site** %s, align 8
  %71 = bitcast %struct.site* %70 to i8*
  %72 = load i32, i32* %link.addr, align 4
  %idx.ext51 = sext i32 %72 to i64
  %add.ptr52 = getelementptr inbounds i8, i8* %71, i64 %idx.ext51
  %73 = bitcast i8* %add.ptr52 to %struct.su3_matrix*
  call void @mult_su3_an(%struct.su3_matrix* %arrayidx50, %struct.su3_matrix* %73, %struct.su3_matrix* %tmat1)
  %74 = load i32, i32* %i, align 4
  %idxprom53 = sext i32 %74 to i64
  %75 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx54 = getelementptr inbounds i8*, i8** %75, i64 %idxprom53
  %76 = load i8*, i8** %arrayidx54, align 8
  %77 = bitcast i8* %76 to %struct.su3_matrix*
  %78 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %78 to i64
  %79 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat, align 8
  %arrayidx56 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %79, i64 %idxprom55
  call void @mult_su3_nn(%struct.su3_matrix* %tmat1, %struct.su3_matrix* %77, %struct.su3_matrix* %arrayidx56)
  br label %for.inc.57

for.inc.57:                                       ; preds = %for.body.47
  %80 = load i32, i32* %i, align 4
  %inc58 = add nsw i32 %80, 1
  store i32 %inc58, i32* %i, align 4
  %81 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr59 = getelementptr inbounds %struct.site, %struct.site* %81, i32 1
  store %struct.site* %incdec.ptr59, %struct.site** %s, align 8
  br label %for.cond.44

for.end.60:                                       ; preds = %for.cond.44
  %82 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %82)
  %83 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat, align 8
  %84 = bitcast %struct.su3_matrix* %83 to i8*
  %85 = load i32, i32* %nu.addr, align 4
  %sub = sub nsw i32 7, %85
  %86 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call61 = call %struct.msg_tag* @start_gather_from_temp(i8* %84, i32 144, i32 %sub, i32 3, i8** %86)
  store %struct.msg_tag* %call61, %struct.msg_tag** %mtag0, align 8
  %87 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @wait_gather(%struct.msg_tag* %87)
  %88 = load i32, i32* %staple.addr, align 4
  %cmp62 = icmp ne i32 %88, -1
  br i1 %cmp62, label %if.then.64, label %if.else.85

if.then.64:                                       ; preds = %for.end.60
  store i32 0, i32* %i, align 4
  %89 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %89, %struct.site** %s, align 8
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.81, %if.then.64
  %90 = load i32, i32* %i, align 4
  %91 = load i32, i32* @sites_on_node, align 4
  %cmp66 = icmp slt i32 %90, %91
  br i1 %cmp66, label %for.body.68, label %for.end.84

for.body.68:                                      ; preds = %for.cond.65
  %92 = load %struct.site*, %struct.site** %s, align 8
  %93 = bitcast %struct.site* %92 to i8*
  %94 = load i32, i32* %staple.addr, align 4
  %idx.ext69 = sext i32 %94 to i64
  %add.ptr70 = getelementptr inbounds i8, i8* %93, i64 %idx.ext69
  %95 = bitcast i8* %add.ptr70 to %struct.su3_matrix*
  %96 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %96 to i64
  %97 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx72 = getelementptr inbounds i8*, i8** %97, i64 %idxprom71
  %98 = load i8*, i8** %arrayidx72, align 8
  %99 = bitcast i8* %98 to %struct.su3_matrix*
  %100 = load %struct.site*, %struct.site** %s, align 8
  %101 = bitcast %struct.site* %100 to i8*
  %102 = load i32, i32* %staple.addr, align 4
  %idx.ext73 = sext i32 %102 to i64
  %add.ptr74 = getelementptr inbounds i8, i8* %101, i64 %idx.ext73
  %103 = bitcast i8* %add.ptr74 to %struct.su3_matrix*
  call void @add_su3_matrix(%struct.su3_matrix* %95, %struct.su3_matrix* %99, %struct.su3_matrix* %103)
  %104 = load i32, i32* %i, align 4
  %mul75 = mul nsw i32 4, %104
  %105 = load i32, i32* %mu.addr, align 4
  %add76 = add nsw i32 %mul75, %105
  %idxprom77 = sext i32 %add76 to i64
  %106 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx78 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %106, i64 %idxprom77
  store %struct.su3_matrix* %arrayidx78, %struct.su3_matrix** %fat1, align 8
  %107 = load %struct.su3_matrix*, %struct.su3_matrix** %fat1, align 8
  %108 = load %struct.site*, %struct.site** %s, align 8
  %109 = bitcast %struct.site* %108 to i8*
  %110 = load i32, i32* %staple.addr, align 4
  %idx.ext79 = sext i32 %110 to i64
  %add.ptr80 = getelementptr inbounds i8, i8* %109, i64 %idx.ext79
  %111 = bitcast i8* %add.ptr80 to %struct.su3_matrix*
  %112 = load double, double* %coef.addr, align 8
  %113 = load %struct.su3_matrix*, %struct.su3_matrix** %fat1, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %107, %struct.su3_matrix* %111, double %112, %struct.su3_matrix* %113)
  br label %for.inc.81

for.inc.81:                                       ; preds = %for.body.68
  %114 = load i32, i32* %i, align 4
  %inc82 = add nsw i32 %114, 1
  store i32 %inc82, i32* %i, align 4
  %115 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr83 = getelementptr inbounds %struct.site, %struct.site* %115, i32 1
  store %struct.site* %incdec.ptr83, %struct.site** %s, align 8
  br label %for.cond.65

for.end.84:                                       ; preds = %for.cond.65
  br label %if.end.100

if.else.85:                                       ; preds = %for.end.60
  store i32 0, i32* %i, align 4
  %116 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %116, %struct.site** %s, align 8
  br label %for.cond.86

for.cond.86:                                      ; preds = %for.inc.96, %if.else.85
  %117 = load i32, i32* %i, align 4
  %118 = load i32, i32* @sites_on_node, align 4
  %cmp87 = icmp slt i32 %117, %118
  br i1 %cmp87, label %for.body.89, label %for.end.99

for.body.89:                                      ; preds = %for.cond.86
  %119 = load i32, i32* %i, align 4
  %mul90 = mul nsw i32 4, %119
  %120 = load i32, i32* %mu.addr, align 4
  %add91 = add nsw i32 %mul90, %120
  %idxprom92 = sext i32 %add91 to i64
  %121 = load %struct.su3_matrix*, %struct.su3_matrix** @t_fatlink, align 8
  %arrayidx93 = getelementptr inbounds %struct.su3_matrix, %struct.su3_matrix* %121, i64 %idxprom92
  store %struct.su3_matrix* %arrayidx93, %struct.su3_matrix** %fat1, align 8
  %122 = load %struct.su3_matrix*, %struct.su3_matrix** %fat1, align 8
  %123 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %123 to i64
  %124 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx95 = getelementptr inbounds i8*, i8** %124, i64 %idxprom94
  %125 = load i8*, i8** %arrayidx95, align 8
  %126 = bitcast i8* %125 to %struct.su3_matrix*
  %127 = load double, double* %coef.addr, align 8
  %128 = load %struct.su3_matrix*, %struct.su3_matrix** %fat1, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %122, %struct.su3_matrix* %126, double %127, %struct.su3_matrix* %128)
  br label %for.inc.96

for.inc.96:                                       ; preds = %for.body.89
  %129 = load i32, i32* %i, align 4
  %inc97 = add nsw i32 %129, 1
  store i32 %inc97, i32* %i, align 4
  %130 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr98 = getelementptr inbounds %struct.site, %struct.site* %130, i32 1
  store %struct.site* %incdec.ptr98, %struct.site** %s, align 8
  br label %for.cond.86

for.end.99:                                       ; preds = %for.cond.86
  br label %if.end.100

if.end.100:                                       ; preds = %for.end.99, %for.end.84
  %131 = load %struct.su3_matrix*, %struct.su3_matrix** %tempmat, align 8
  %132 = bitcast %struct.su3_matrix* %131 to i8*
  call void @free(i8* %132) #4
  %133 = load %struct.msg_tag*, %struct.msg_tag** %mtag0, align 8
  call void @cleanup_gather(%struct.msg_tag* %133)
  ret void
}

; Function Attrs: nounwind uwtable
define void @eo_fermion_force(double %eps, i32 %nflavors, i32 %x_off) #0 {
entry:
  %eps.addr = alloca double, align 8
  %nflavors.addr = alloca i32, align 4
  %x_off.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %mu = alloca i32, align 4
  %nu = alloca i32, align 4
  %rho = alloca i32, align 4
  %sig = alloca i32, align 4
  %DirectLinks = alloca [8 x i32], align 16
  %ferm_epsilon = alloca double, align 8
  %coeff = alloca double, align 8
  %OneLink = alloca double, align 8
  %Lepage = alloca double, align 8
  %Naik = alloca double, align 8
  %FiveSt = alloca double, align 8
  %ThreeSt = alloca double, align 8
  %SevenSt = alloca double, align 8
  %tempvec = alloca [8 x %struct.su3_vector*], align 16
  %temp_x = alloca %struct.su3_vector*, align 8
  store double %eps, double* %eps.addr, align 8
  store i32 %nflavors, i32* %nflavors.addr, align 4
  store i32 %x_off, i32* %x_off.addr, align 4
  %0 = load i32, i32* %nflavors.addr, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double %conv, 4.000000e+00
  %mul = fmul double 2.000000e+00, %div
  %1 = load double, double* %eps.addr, align 8
  %mul1 = fmul double %mul, %1
  store double %mul1, double* %ferm_epsilon, align 8
  %2 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 0), align 8
  %3 = load double, double* %ferm_epsilon, align 8
  %mul2 = fmul double %2, %3
  store double %mul2, double* %OneLink, align 8
  %4 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 1), align 8
  %5 = load double, double* %ferm_epsilon, align 8
  %mul3 = fmul double %4, %5
  store double %mul3, double* %Naik, align 8
  %6 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 2), align 8
  %7 = load double, double* %ferm_epsilon, align 8
  %mul4 = fmul double %6, %7
  store double %mul4, double* %ThreeSt, align 8
  %8 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 3), align 8
  %9 = load double, double* %ferm_epsilon, align 8
  %mul5 = fmul double %8, %9
  store double %mul5, double* %FiveSt, align 8
  %10 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 4), align 8
  %11 = load double, double* %ferm_epsilon, align 8
  %mul6 = fmul double %10, %11
  store double %mul6, double* %SevenSt, align 8
  %12 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 5), align 8
  %13 = load double, double* %ferm_epsilon, align 8
  %mul7 = fmul double %12, %13
  store double %mul7, double* %Lepage, align 8
  store i32 0, i32* %mu, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %14 = load i32, i32* %mu, align 4
  %cmp = icmp slt i32 %14, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %mu, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %DirectLinks, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %mu, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %mu, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %mu, align 4
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.16, %for.end
  %17 = load i32, i32* %mu, align 4
  %cmp10 = icmp slt i32 %17, 8
  br i1 %cmp10, label %for.body.12, label %for.end.18

for.body.12:                                      ; preds = %for.cond.9
  %18 = load i32, i32* @sites_on_node, align 4
  %conv13 = sext i32 %18 to i64
  %call = call noalias i8* @calloc(i64 %conv13, i64 48) #4
  %19 = bitcast i8* %call to %struct.su3_vector*
  %20 = load i32, i32* %mu, align 4
  %idxprom14 = sext i32 %20 to i64
  %arrayidx15 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 %idxprom14
  store %struct.su3_vector* %19, %struct.su3_vector** %arrayidx15, align 8
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.body.12
  %21 = load i32, i32* %mu, align 4
  %inc17 = add nsw i32 %21, 1
  store i32 %inc17, i32* %mu, align 4
  br label %for.cond.9

for.end.18:                                       ; preds = %for.cond.9
  %22 = load i32, i32* @sites_on_node, align 4
  %conv19 = sext i32 %22 to i64
  %call20 = call noalias i8* @calloc(i64 %conv19, i64 48) #4
  %23 = bitcast i8* %call20 to %struct.su3_vector*
  store %struct.su3_vector* %23, %struct.su3_vector** %temp_x, align 8
  store i32 0, i32* %i, align 4
  %24 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %24, %struct.site** %s, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.27, %for.end.18
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* @sites_on_node, align 4
  %cmp22 = icmp slt i32 %25, %26
  br i1 %cmp22, label %for.body.24, label %for.end.29

for.body.24:                                      ; preds = %for.cond.21
  %27 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %27 to i64
  %28 = load %struct.su3_vector*, %struct.su3_vector** %temp_x, align 8
  %arrayidx26 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %28, i64 %idxprom25
  %29 = load %struct.site*, %struct.site** %s, align 8
  %30 = bitcast %struct.site* %29 to i8*
  %31 = load i32, i32* %x_off.addr, align 4
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  %32 = bitcast i8* %add.ptr to %struct.su3_vector*
  %33 = bitcast %struct.su3_vector* %arrayidx26 to i8*
  %34 = bitcast %struct.su3_vector* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %33, i8* %34, i64 48, i32 8, i1 false)
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.24
  %35 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %35, 1
  store i32 %inc28, i32* %i, align 4
  %36 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %36, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.21

for.end.29:                                       ; preds = %for.cond.21
  store i32 0, i32* %sig, align 4
  br label %for.cond.30

for.cond.30:                                      ; preds = %for.inc.249, %for.end.29
  %37 = load i32, i32* %sig, align 4
  %cmp31 = icmp slt i32 %37, 8
  br i1 %cmp31, label %for.body.33, label %for.end.251

for.body.33:                                      ; preds = %for.cond.30
  store i32 0, i32* %mu, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.246, %for.body.33
  %38 = load i32, i32* %mu, align 4
  %cmp35 = icmp slt i32 %38, 8
  br i1 %cmp35, label %for.body.37, label %for.end.248

for.body.37:                                      ; preds = %for.cond.34
  %39 = load i32, i32* %mu, align 4
  %40 = load i32, i32* %sig, align 4
  %cmp38 = icmp ne i32 %39, %40
  br i1 %cmp38, label %land.lhs.true, label %if.end.245

land.lhs.true:                                    ; preds = %for.body.37
  %41 = load i32, i32* %mu, align 4
  %42 = load i32, i32* %sig, align 4
  %sub = sub nsw i32 7, %42
  %cmp40 = icmp ne i32 %41, %sub
  br i1 %cmp40, label %if.then, label %if.end.245

if.then:                                          ; preds = %land.lhs.true
  %43 = load %struct.su3_vector*, %struct.su3_vector** %temp_x, align 8
  %arrayidx42 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 0
  %44 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx42, align 8
  %45 = load i32, i32* %mu, align 4
  %sub43 = sub nsw i32 7, %45
  call void @u_shift_fermion(%struct.su3_vector* %43, %struct.su3_vector* %44, i32 %sub43)
  %arrayidx44 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 0
  %46 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 7
  %47 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx45, align 8
  %48 = load i32, i32* %sig, align 4
  call void @u_shift_fermion(%struct.su3_vector* %46, %struct.su3_vector* %47, i32 %48)
  %49 = load i32, i32* %sig, align 4
  %cmp46 = icmp sle i32 %49, 3
  br i1 %cmp46, label %if.then.48, label %if.end

if.then.48:                                       ; preds = %if.then
  %arrayidx49 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 7
  %50 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 0
  %51 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx50, align 8
  %52 = load i32, i32* %sig, align 4
  %53 = load double, double* %ThreeSt, align 8
  %sub51 = fsub double -0.000000e+00, %53
  call void @add_force_to_mom(%struct.su3_vector* %50, %struct.su3_vector* %51, i32 %52, double %sub51)
  br label %if.end

if.end:                                           ; preds = %if.then.48, %if.then
  store i32 0, i32* %nu, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.172, %if.end
  %54 = load i32, i32* %nu, align 4
  %cmp53 = icmp slt i32 %54, 8
  br i1 %cmp53, label %for.body.55, label %for.end.174

for.body.55:                                      ; preds = %for.cond.52
  %55 = load i32, i32* %nu, align 4
  %56 = load i32, i32* %mu, align 4
  %cmp56 = icmp ne i32 %55, %56
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.171

land.lhs.true.58:                                 ; preds = %for.body.55
  %57 = load i32, i32* %nu, align 4
  %58 = load i32, i32* %mu, align 4
  %sub59 = sub nsw i32 7, %58
  %cmp60 = icmp ne i32 %57, %sub59
  br i1 %cmp60, label %land.lhs.true.62, label %if.end.171

land.lhs.true.62:                                 ; preds = %land.lhs.true.58
  %59 = load i32, i32* %nu, align 4
  %60 = load i32, i32* %sig, align 4
  %cmp63 = icmp ne i32 %59, %60
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.171

land.lhs.true.65:                                 ; preds = %land.lhs.true.62
  %61 = load i32, i32* %nu, align 4
  %62 = load i32, i32* %sig, align 4
  %sub66 = sub nsw i32 7, %62
  %cmp67 = icmp ne i32 %61, %sub66
  br i1 %cmp67, label %if.then.69, label %if.end.171

if.then.69:                                       ; preds = %land.lhs.true.65
  %arrayidx70 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 0
  %63 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx70, align 8
  %arrayidx71 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %64 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx71, align 8
  %65 = load i32, i32* %nu, align 4
  %sub72 = sub nsw i32 7, %65
  call void @u_shift_fermion(%struct.su3_vector* %63, %struct.su3_vector* %64, i32 %sub72)
  %arrayidx73 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %66 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx73, align 8
  %arrayidx74 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 6
  %67 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx74, align 8
  %68 = load i32, i32* %sig, align 4
  call void @u_shift_fermion(%struct.su3_vector* %66, %struct.su3_vector* %67, i32 %68)
  %69 = load i32, i32* %sig, align 4
  %cmp75 = icmp sle i32 %69, 3
  br i1 %cmp75, label %if.then.77, label %if.end.80

if.then.77:                                       ; preds = %if.then.69
  %arrayidx78 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 6
  %70 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx78, align 8
  %arrayidx79 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %71 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx79, align 8
  %72 = load i32, i32* %sig, align 4
  %73 = load double, double* %FiveSt, align 8
  call void @add_force_to_mom(%struct.su3_vector* %70, %struct.su3_vector* %71, i32 %72, double %73)
  br label %if.end.80

if.end.80:                                        ; preds = %if.then.77, %if.then.69
  store i32 0, i32* %rho, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.143, %if.end.80
  %74 = load i32, i32* %rho, align 4
  %cmp82 = icmp slt i32 %74, 8
  br i1 %cmp82, label %for.body.84, label %for.end.145

for.body.84:                                      ; preds = %for.cond.81
  %75 = load i32, i32* %rho, align 4
  %76 = load i32, i32* %mu, align 4
  %cmp85 = icmp ne i32 %75, %76
  br i1 %cmp85, label %land.lhs.true.87, label %if.end.142

land.lhs.true.87:                                 ; preds = %for.body.84
  %77 = load i32, i32* %rho, align 4
  %78 = load i32, i32* %mu, align 4
  %sub88 = sub nsw i32 7, %78
  %cmp89 = icmp ne i32 %77, %sub88
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.142

land.lhs.true.91:                                 ; preds = %land.lhs.true.87
  %79 = load i32, i32* %rho, align 4
  %80 = load i32, i32* %nu, align 4
  %cmp92 = icmp ne i32 %79, %80
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.142

land.lhs.true.94:                                 ; preds = %land.lhs.true.91
  %81 = load i32, i32* %rho, align 4
  %82 = load i32, i32* %nu, align 4
  %sub95 = sub nsw i32 7, %82
  %cmp96 = icmp ne i32 %81, %sub95
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.142

land.lhs.true.98:                                 ; preds = %land.lhs.true.94
  %83 = load i32, i32* %rho, align 4
  %84 = load i32, i32* %sig, align 4
  %cmp99 = icmp ne i32 %83, %84
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.142

land.lhs.true.101:                                ; preds = %land.lhs.true.98
  %85 = load i32, i32* %rho, align 4
  %86 = load i32, i32* %sig, align 4
  %sub102 = sub nsw i32 7, %86
  %cmp103 = icmp ne i32 %85, %sub102
  br i1 %cmp103, label %if.then.105, label %if.end.142

if.then.105:                                      ; preds = %land.lhs.true.101
  %arrayidx106 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %87 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx106, align 8
  %arrayidx107 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 2
  %88 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx107, align 8
  %89 = load i32, i32* %rho, align 4
  %sub108 = sub nsw i32 7, %89
  call void @u_shift_fermion(%struct.su3_vector* %87, %struct.su3_vector* %88, i32 %sub108)
  %arrayidx109 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 2
  %90 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx109, align 8
  %arrayidx110 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %91 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx110, align 8
  %92 = load i32, i32* %sig, align 4
  call void @u_shift_fermion(%struct.su3_vector* %90, %struct.su3_vector* %91, i32 %92)
  %93 = load i32, i32* %sig, align 4
  %cmp111 = icmp sle i32 %93, 3
  br i1 %cmp111, label %if.then.113, label %if.end.117

if.then.113:                                      ; preds = %if.then.105
  %arrayidx114 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %94 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx114, align 8
  %arrayidx115 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 2
  %95 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx115, align 8
  %96 = load i32, i32* %sig, align 4
  %97 = load double, double* %SevenSt, align 8
  %sub116 = fsub double -0.000000e+00, %97
  call void @add_force_to_mom(%struct.su3_vector* %94, %struct.su3_vector* %95, i32 %96, double %sub116)
  br label %if.end.117

if.end.117:                                       ; preds = %if.then.113, %if.then.105
  %arrayidx118 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %98 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx118, align 8
  %arrayidx119 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 4
  %99 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx119, align 8
  %100 = load i32, i32* %rho, align 4
  call void @u_shift_fermion(%struct.su3_vector* %98, %struct.su3_vector* %99, i32 %100)
  %101 = load i32, i32* %rho, align 4
  %102 = load i32, i32* %sig, align 4
  %103 = load double, double* %SevenSt, align 8
  %arrayidx120 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %104 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx120, align 8
  %arrayidx121 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %105 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx121, align 8
  %arrayidx122 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 2
  %106 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx122, align 8
  %arrayidx123 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 4
  %107 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx123, align 8
  call void @side_link_force(i32 %101, i32 %102, double %103, %struct.su3_vector* %104, %struct.su3_vector* %105, %struct.su3_vector* %106, %struct.su3_vector* %107)
  %108 = load double, double* %SevenSt, align 8
  %109 = load double, double* %FiveSt, align 8
  %div124 = fdiv double %108, %109
  store double %div124, double* %coeff, align 8
  store i32 0, i32* %i, align 4
  %110 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %110, %struct.site** %s, align 8
  br label %for.cond.125

for.cond.125:                                     ; preds = %for.inc.138, %if.end.117
  %111 = load i32, i32* %i, align 4
  %112 = load i32, i32* @sites_on_node, align 4
  %cmp126 = icmp slt i32 %111, %112
  br i1 %cmp126, label %for.body.128, label %for.end.141

for.body.128:                                     ; preds = %for.cond.125
  %113 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %113 to i64
  %arrayidx130 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 6
  %114 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx130, align 8
  %arrayidx131 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %114, i64 %idxprom129
  %115 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %115 to i64
  %arrayidx133 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 4
  %116 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx133, align 8
  %arrayidx134 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %116, i64 %idxprom132
  %117 = load double, double* %coeff, align 8
  %118 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %118 to i64
  %arrayidx136 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 6
  %119 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %119, i64 %idxprom135
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx131, %struct.su3_vector* %arrayidx134, double %117, %struct.su3_vector* %arrayidx137)
  br label %for.inc.138

for.inc.138:                                      ; preds = %for.body.128
  %120 = load i32, i32* %i, align 4
  %inc139 = add nsw i32 %120, 1
  store i32 %inc139, i32* %i, align 4
  %121 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr140 = getelementptr inbounds %struct.site, %struct.site* %121, i32 1
  store %struct.site* %incdec.ptr140, %struct.site** %s, align 8
  br label %for.cond.125

for.end.141:                                      ; preds = %for.cond.125
  br label %if.end.142

if.end.142:                                       ; preds = %for.end.141, %land.lhs.true.101, %land.lhs.true.98, %land.lhs.true.94, %land.lhs.true.91, %land.lhs.true.87, %for.body.84
  br label %for.inc.143

for.inc.143:                                      ; preds = %if.end.142
  %122 = load i32, i32* %rho, align 4
  %inc144 = add nsw i32 %122, 1
  store i32 %inc144, i32* %rho, align 4
  br label %for.cond.81

for.end.145:                                      ; preds = %for.cond.81
  %arrayidx146 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 6
  %123 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx146, align 8
  %arrayidx147 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %124 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx147, align 8
  %125 = load i32, i32* %nu, align 4
  call void @u_shift_fermion(%struct.su3_vector* %123, %struct.su3_vector* %124, i32 %125)
  %126 = load i32, i32* %nu, align 4
  %127 = load i32, i32* %sig, align 4
  %128 = load double, double* %FiveSt, align 8
  %sub148 = fsub double -0.000000e+00, %128
  %arrayidx149 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 0
  %129 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx149, align 8
  %arrayidx150 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 6
  %130 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx150, align 8
  %arrayidx151 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %131 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx151, align 8
  %arrayidx152 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %132 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx152, align 8
  call void @side_link_force(i32 %126, i32 %127, double %sub148, %struct.su3_vector* %129, %struct.su3_vector* %130, %struct.su3_vector* %131, %struct.su3_vector* %132)
  %133 = load double, double* %FiveSt, align 8
  %134 = load double, double* %ThreeSt, align 8
  %div153 = fdiv double %133, %134
  store double %div153, double* %coeff, align 8
  store i32 0, i32* %i, align 4
  %135 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %135, %struct.site** %s, align 8
  br label %for.cond.154

for.cond.154:                                     ; preds = %for.inc.167, %for.end.145
  %136 = load i32, i32* %i, align 4
  %137 = load i32, i32* @sites_on_node, align 4
  %cmp155 = icmp slt i32 %136, %137
  br i1 %cmp155, label %for.body.157, label %for.end.170

for.body.157:                                     ; preds = %for.cond.154
  %138 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %138 to i64
  %arrayidx159 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 7
  %139 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx159, align 8
  %arrayidx160 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %139, i64 %idxprom158
  %140 = load i32, i32* %i, align 4
  %idxprom161 = sext i32 %140 to i64
  %arrayidx162 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %141 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx162, align 8
  %arrayidx163 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %141, i64 %idxprom161
  %142 = load double, double* %coeff, align 8
  %143 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %143 to i64
  %arrayidx165 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 7
  %144 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %144, i64 %idxprom164
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx160, %struct.su3_vector* %arrayidx163, double %142, %struct.su3_vector* %arrayidx166)
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.157
  %145 = load i32, i32* %i, align 4
  %inc168 = add nsw i32 %145, 1
  store i32 %inc168, i32* %i, align 4
  %146 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr169 = getelementptr inbounds %struct.site, %struct.site* %146, i32 1
  store %struct.site* %incdec.ptr169, %struct.site** %s, align 8
  br label %for.cond.154

for.end.170:                                      ; preds = %for.cond.154
  br label %if.end.171

if.end.171:                                       ; preds = %for.end.170, %land.lhs.true.65, %land.lhs.true.62, %land.lhs.true.58, %for.body.55
  br label %for.inc.172

for.inc.172:                                      ; preds = %if.end.171
  %147 = load i32, i32* %nu, align 4
  %inc173 = add nsw i32 %147, 1
  store i32 %inc173, i32* %nu, align 4
  br label %for.cond.52

for.end.174:                                      ; preds = %for.cond.52
  %arrayidx175 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 0
  %148 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx175, align 8
  %arrayidx176 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %149 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx176, align 8
  %150 = load i32, i32* %mu, align 4
  %sub177 = sub nsw i32 7, %150
  call void @u_shift_fermion(%struct.su3_vector* %148, %struct.su3_vector* %149, i32 %sub177)
  %arrayidx178 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %151 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx178, align 8
  %arrayidx179 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 6
  %152 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx179, align 8
  %153 = load i32, i32* %sig, align 4
  call void @u_shift_fermion(%struct.su3_vector* %151, %struct.su3_vector* %152, i32 %153)
  %154 = load i32, i32* %sig, align 4
  %cmp180 = icmp sle i32 %154, 3
  br i1 %cmp180, label %if.then.182, label %if.end.185

if.then.182:                                      ; preds = %for.end.174
  %arrayidx183 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 6
  %155 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx183, align 8
  %arrayidx184 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %156 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx184, align 8
  %157 = load i32, i32* %sig, align 4
  %158 = load double, double* %Lepage, align 8
  call void @add_force_to_mom(%struct.su3_vector* %155, %struct.su3_vector* %156, i32 %157, double %158)
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.182, %for.end.174
  %arrayidx186 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 6
  %159 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx186, align 8
  %arrayidx187 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %160 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx187, align 8
  %161 = load i32, i32* %mu, align 4
  call void @u_shift_fermion(%struct.su3_vector* %159, %struct.su3_vector* %160, i32 %161)
  %162 = load i32, i32* %mu, align 4
  %163 = load i32, i32* %sig, align 4
  %164 = load double, double* %Lepage, align 8
  %sub188 = fsub double -0.000000e+00, %164
  %arrayidx189 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 0
  %165 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx189, align 8
  %arrayidx190 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 6
  %166 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx190, align 8
  %arrayidx191 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %167 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx191, align 8
  %arrayidx192 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %168 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx192, align 8
  call void @side_link_force(i32 %162, i32 %163, double %sub188, %struct.su3_vector* %165, %struct.su3_vector* %166, %struct.su3_vector* %167, %struct.su3_vector* %168)
  %169 = load double, double* %Lepage, align 8
  %170 = load double, double* %ThreeSt, align 8
  %div193 = fdiv double %169, %170
  store double %div193, double* %coeff, align 8
  store i32 0, i32* %i, align 4
  %171 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %171, %struct.site** %s, align 8
  br label %for.cond.194

for.cond.194:                                     ; preds = %for.inc.207, %if.end.185
  %172 = load i32, i32* %i, align 4
  %173 = load i32, i32* @sites_on_node, align 4
  %cmp195 = icmp slt i32 %172, %173
  br i1 %cmp195, label %for.body.197, label %for.end.210

for.body.197:                                     ; preds = %for.cond.194
  %174 = load i32, i32* %i, align 4
  %idxprom198 = sext i32 %174 to i64
  %arrayidx199 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 7
  %175 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx199, align 8
  %arrayidx200 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %175, i64 %idxprom198
  %176 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %176 to i64
  %arrayidx202 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %177 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx202, align 8
  %arrayidx203 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %177, i64 %idxprom201
  %178 = load double, double* %coeff, align 8
  %179 = load i32, i32* %i, align 4
  %idxprom204 = sext i32 %179 to i64
  %arrayidx205 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 7
  %180 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx205, align 8
  %arrayidx206 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %180, i64 %idxprom204
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx200, %struct.su3_vector* %arrayidx203, double %178, %struct.su3_vector* %arrayidx206)
  br label %for.inc.207

for.inc.207:                                      ; preds = %for.body.197
  %181 = load i32, i32* %i, align 4
  %inc208 = add nsw i32 %181, 1
  store i32 %inc208, i32* %i, align 4
  %182 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr209 = getelementptr inbounds %struct.site, %struct.site* %182, i32 1
  store %struct.site* %incdec.ptr209, %struct.site** %s, align 8
  br label %for.cond.194

for.end.210:                                      ; preds = %for.cond.194
  %183 = load i32, i32* %mu, align 4
  %cmp211 = icmp sle i32 %183, 3
  br i1 %cmp211, label %if.then.213, label %if.end.216

if.then.213:                                      ; preds = %for.end.210
  %arrayidx214 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 7
  %184 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx214, align 8
  %arrayidx215 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %185 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx215, align 8
  %186 = load i32, i32* %mu, align 4
  call void @u_shift_fermion(%struct.su3_vector* %184, %struct.su3_vector* %185, i32 %186)
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.213, %for.end.210
  %187 = load i32, i32* %mu, align 4
  %188 = load i32, i32* %sig, align 4
  %189 = load double, double* %ThreeSt, align 8
  %190 = load %struct.su3_vector*, %struct.su3_vector** %temp_x, align 8
  %arrayidx217 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 7
  %191 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx217, align 8
  %arrayidx218 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 0
  %192 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 3
  %193 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx219, align 8
  call void @side_link_force(i32 %187, i32 %188, double %189, %struct.su3_vector* %190, %struct.su3_vector* %191, %struct.su3_vector* %192, %struct.su3_vector* %193)
  %194 = load i32, i32* %mu, align 4
  %idxprom220 = sext i32 %194 to i64
  %arrayidx221 = getelementptr inbounds [8 x i32], [8 x i32]* %DirectLinks, i32 0, i64 %idxprom220
  %195 = load i32, i32* %arrayidx221, align 4
  %tobool = icmp ne i32 %195, 0
  br i1 %tobool, label %if.end.244, label %if.then.222

if.then.222:                                      ; preds = %if.end.216
  %196 = load i32, i32* %mu, align 4
  %idxprom223 = sext i32 %196 to i64
  %arrayidx224 = getelementptr inbounds [8 x i32], [8 x i32]* %DirectLinks, i32 0, i64 %idxprom223
  store i32 1, i32* %arrayidx224, align 4
  %197 = load i32, i32* %mu, align 4
  %cmp225 = icmp sgt i32 %197, 3
  br i1 %cmp225, label %if.then.227, label %if.else

if.then.227:                                      ; preds = %if.then.222
  %arrayidx228 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 0
  %198 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx228, align 8
  %199 = load %struct.su3_vector*, %struct.su3_vector** %temp_x, align 8
  %200 = load i32, i32* %mu, align 4
  %sub229 = sub nsw i32 7, %200
  %201 = load double, double* %OneLink, align 8
  call void @add_force_to_mom(%struct.su3_vector* %198, %struct.su3_vector* %199, i32 %sub229, double %201)
  %202 = load %struct.su3_vector*, %struct.su3_vector** %temp_x, align 8
  %arrayidx230 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 4
  %203 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx230, align 8
  %204 = load i32, i32* %mu, align 4
  call void @u_shift_fermion(%struct.su3_vector* %202, %struct.su3_vector* %203, i32 %204)
  %arrayidx231 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %205 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx231, align 8
  %arrayidx232 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 4
  %206 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx232, align 8
  %207 = load i32, i32* %mu, align 4
  %sub233 = sub nsw i32 7, %207
  %208 = load double, double* %Naik, align 8
  %sub234 = fsub double -0.000000e+00, %208
  call void @add_force_to_mom(%struct.su3_vector* %205, %struct.su3_vector* %206, i32 %sub233, double %sub234)
  %arrayidx235 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %209 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx235, align 8
  %arrayidx236 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 4
  %210 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx236, align 8
  %211 = load i32, i32* %mu, align 4
  %sub237 = sub nsw i32 7, %211
  call void @u_shift_fermion(%struct.su3_vector* %209, %struct.su3_vector* %210, i32 %sub237)
  %arrayidx238 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 4
  %212 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx238, align 8
  %213 = load %struct.su3_vector*, %struct.su3_vector** %temp_x, align 8
  %214 = load i32, i32* %mu, align 4
  %sub239 = sub nsw i32 7, %214
  %215 = load double, double* %Naik, align 8
  call void @add_force_to_mom(%struct.su3_vector* %212, %struct.su3_vector* %213, i32 %sub239, double %215)
  br label %if.end.243

if.else:                                          ; preds = %if.then.222
  %216 = load %struct.su3_vector*, %struct.su3_vector** %temp_x, align 8
  %arrayidx240 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 4
  %217 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx240, align 8
  %218 = load i32, i32* %mu, align 4
  call void @u_shift_fermion(%struct.su3_vector* %216, %struct.su3_vector* %217, i32 %218)
  %arrayidx241 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 4
  %219 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx241, align 8
  %arrayidx242 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 1
  %220 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx242, align 8
  %221 = load i32, i32* %mu, align 4
  %222 = load double, double* %Naik, align 8
  call void @add_force_to_mom(%struct.su3_vector* %219, %struct.su3_vector* %220, i32 %221, double %222)
  br label %if.end.243

if.end.243:                                       ; preds = %if.else, %if.then.227
  br label %if.end.244

if.end.244:                                       ; preds = %if.end.243, %if.end.216
  br label %if.end.245

if.end.245:                                       ; preds = %if.end.244, %land.lhs.true, %for.body.37
  br label %for.inc.246

for.inc.246:                                      ; preds = %if.end.245
  %223 = load i32, i32* %mu, align 4
  %inc247 = add nsw i32 %223, 1
  store i32 %inc247, i32* %mu, align 4
  br label %for.cond.34

for.end.248:                                      ; preds = %for.cond.34
  br label %for.inc.249

for.inc.249:                                      ; preds = %for.end.248
  %224 = load i32, i32* %sig, align 4
  %inc250 = add nsw i32 %224, 1
  store i32 %inc250, i32* %sig, align 4
  br label %for.cond.30

for.end.251:                                      ; preds = %for.cond.30
  %225 = load %struct.su3_vector*, %struct.su3_vector** %temp_x, align 8
  %226 = bitcast %struct.su3_vector* %225 to i8*
  call void @free(i8* %226) #4
  store i32 0, i32* %mu, align 4
  br label %for.cond.252

for.cond.252:                                     ; preds = %for.inc.258, %for.end.251
  %227 = load i32, i32* %mu, align 4
  %cmp253 = icmp slt i32 %227, 8
  br i1 %cmp253, label %for.body.255, label %for.end.260

for.body.255:                                     ; preds = %for.cond.252
  %228 = load i32, i32* %mu, align 4
  %idxprom256 = sext i32 %228 to i64
  %arrayidx257 = getelementptr inbounds [8 x %struct.su3_vector*], [8 x %struct.su3_vector*]* %tempvec, i32 0, i64 %idxprom256
  %229 = load %struct.su3_vector*, %struct.su3_vector** %arrayidx257, align 8
  %230 = bitcast %struct.su3_vector* %229 to i8*
  call void @free(i8* %230) #4
  br label %for.inc.258

for.inc.258:                                      ; preds = %for.body.255
  %231 = load i32, i32* %mu, align 4
  %inc259 = add nsw i32 %231, 1
  store i32 %inc259, i32* %mu, align 4
  br label %for.cond.252

for.end.260:                                      ; preds = %for.cond.252
  ret void
}

; Function Attrs: nounwind uwtable
define void @u_shift_fermion(%struct.su3_vector* %src, %struct.su3_vector* %dest, i32 %dir) #0 {
entry:
  %src.addr = alloca %struct.su3_vector*, align 8
  %dest.addr = alloca %struct.su3_vector*, align 8
  %dir.addr = alloca i32, align 4
  %tmpvec = alloca %struct.su3_vector*, align 8
  %mtag = alloca %struct.msg_tag*, align 8
  %s = alloca %struct.site*, align 8
  %i = alloca i32, align 4
  store %struct.su3_vector* %src, %struct.su3_vector** %src.addr, align 8
  store %struct.su3_vector* %dest, %struct.su3_vector** %dest.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load i32, i32* %dir.addr, align 4
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %2 = bitcast %struct.su3_vector* %1 to i8*
  %3 = load i32, i32* %dir.addr, align 4
  %4 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call = call %struct.msg_tag* @start_gather_from_temp(i8* %2, i32 48, i32 %3, i32 3, i8** %4)
  store %struct.msg_tag* %call, %struct.msg_tag** %mtag, align 8
  %5 = load %struct.msg_tag*, %struct.msg_tag** %mtag, align 8
  call void @wait_gather(%struct.msg_tag* %5)
  store i32 0, i32* %i, align 4
  %6 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %6, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @sites_on_node, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %dir.addr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %10, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %12, i64 %idxprom2
  %13 = load i8*, i8** %arrayidx3, align 8
  %14 = bitcast i8* %13 to %struct.su3_vector*
  %15 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct.su3_vector*, %struct.su3_vector** %dest.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %16, i64 %idxprom4
  call void @mult_su3_mat_vec(%struct.su3_matrix* %arrayidx, %struct.su3_vector* %14, %struct.su3_vector* %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  %18 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %18, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.msg_tag*, %struct.msg_tag** %mtag, align 8
  call void @cleanup_gather(%struct.msg_tag* %19)
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load i32, i32* @sites_on_node, align 4
  %conv = sext i32 %20 to i64
  %call6 = call noalias i8* @calloc(i64 %conv, i64 48) #4
  %21 = bitcast i8* %call6 to %struct.su3_vector*
  store %struct.su3_vector* %21, %struct.su3_vector** %tmpvec, align 8
  store i32 0, i32* %i, align 4
  %22 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %22, %struct.site** %s, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.18, %if.else
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* @sites_on_node, align 4
  %cmp8 = icmp slt i32 %23, %24
  br i1 %cmp8, label %for.body.10, label %for.end.21

for.body.10:                                      ; preds = %for.cond.7
  %25 = load i32, i32* %dir.addr, align 4
  %sub = sub nsw i32 7, %25
  %idxprom11 = sext i32 %sub to i64
  %26 = load %struct.site*, %struct.site** %s, align 8
  %link12 = getelementptr inbounds %struct.site, %struct.site* %26, i32 0, i32 8
  %arrayidx13 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link12, i32 0, i64 %idxprom11
  %27 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load %struct.su3_vector*, %struct.su3_vector** %src.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %28, i64 %idxprom14
  %29 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %29 to i64
  %30 = load %struct.su3_vector*, %struct.su3_vector** %tmpvec, align 8
  %arrayidx17 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %30, i64 %idxprom16
  call void @mult_adj_su3_mat_vec(%struct.su3_matrix* %arrayidx13, %struct.su3_vector* %arrayidx15, %struct.su3_vector* %arrayidx17)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.10
  %31 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %31, 1
  store i32 %inc19, i32* %i, align 4
  %32 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr20 = getelementptr inbounds %struct.site, %struct.site* %32, i32 1
  store %struct.site* %incdec.ptr20, %struct.site** %s, align 8
  br label %for.cond.7

for.end.21:                                       ; preds = %for.cond.7
  %33 = load %struct.su3_vector*, %struct.su3_vector** %tmpvec, align 8
  %34 = bitcast %struct.su3_vector* %33 to i8*
  %35 = load i32, i32* %dir.addr, align 4
  %36 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call22 = call %struct.msg_tag* @start_gather_from_temp(i8* %34, i32 48, i32 %35, i32 3, i8** %36)
  store %struct.msg_tag* %call22, %struct.msg_tag** %mtag, align 8
  %37 = load %struct.msg_tag*, %struct.msg_tag** %mtag, align 8
  call void @wait_gather(%struct.msg_tag* %37)
  store i32 0, i32* %i, align 4
  %38 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %38, %struct.site** %s, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.31, %for.end.21
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* @sites_on_node, align 4
  %cmp24 = icmp slt i32 %39, %40
  br i1 %cmp24, label %for.body.26, label %for.end.34

for.body.26:                                      ; preds = %for.cond.23
  %41 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %41 to i64
  %42 = load %struct.su3_vector*, %struct.su3_vector** %dest.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %42, i64 %idxprom27
  %43 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %43 to i64
  %44 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %44, i64 %idxprom29
  %45 = load i8*, i8** %arrayidx30, align 8
  %46 = bitcast i8* %45 to %struct.su3_vector*
  %47 = bitcast %struct.su3_vector* %arrayidx28 to i8*
  %48 = bitcast %struct.su3_vector* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 48, i32 8, i1 false)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.26
  %49 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %49, 1
  store i32 %inc32, i32* %i, align 4
  %50 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr33 = getelementptr inbounds %struct.site, %struct.site* %50, i32 1
  store %struct.site* %incdec.ptr33, %struct.site** %s, align 8
  br label %for.cond.23

for.end.34:                                       ; preds = %for.cond.23
  %51 = load %struct.msg_tag*, %struct.msg_tag** %mtag, align 8
  call void @cleanup_gather(%struct.msg_tag* %51)
  %52 = load %struct.su3_vector*, %struct.su3_vector** %tmpvec, align 8
  %53 = bitcast %struct.su3_vector* %52 to i8*
  call void @free(i8* %53) #4
  br label %if.end

if.end:                                           ; preds = %for.end.34, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_force_to_mom(%struct.su3_vector* %back, %struct.su3_vector* %forw, i32 %dir, double %coeff) #0 {
entry:
  %back.addr = alloca %struct.su3_vector*, align 8
  %forw.addr = alloca %struct.su3_vector*, align 8
  %dir.addr = alloca i32, align 4
  %coeff.addr = alloca double, align 8
  %s = alloca %struct.site*, align 8
  %i = alloca i32, align 4
  %tmp_coeff = alloca double, align 8
  %tmat = alloca %struct.su3_matrix, align 8
  %tmat2 = alloca %struct.su3_matrix, align 8
  store %struct.su3_vector* %back, %struct.su3_vector** %back.addr, align 8
  store %struct.su3_vector* %forw, %struct.su3_vector** %forw.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  store double %coeff, double* %coeff.addr, align 8
  %0 = load i32, i32* %dir.addr, align 4
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dir.addr, align 4
  %sub = sub nsw i32 7, %1
  store i32 %sub, i32* %dir.addr, align 4
  %2 = load double, double* %coeff.addr, align 8
  %sub1 = fsub double -0.000000e+00, %2
  store double %sub1, double* %coeff.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  %3 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %3, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @sites_on_node, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.site*, %struct.site** %s, align 8
  %parity = getelementptr inbounds %struct.site, %struct.site* %6, i32 0, i32 4
  %7 = load i8, i8* %parity, align 1
  %conv = sext i8 %7 to i32
  %cmp3 = icmp eq i32 %conv, 1
  br i1 %cmp3, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.body
  %8 = load double, double* %coeff.addr, align 8
  %sub6 = fsub double -0.000000e+00, %8
  store double %sub6, double* %tmp_coeff, align 8
  br label %if.end.7

if.else:                                          ; preds = %for.body
  %9 = load double, double* %coeff.addr, align 8
  store double %9, double* %tmp_coeff, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.5
  %10 = load i32, i32* %dir.addr, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.site*, %struct.site** %s, align 8
  %mom = getelementptr inbounds %struct.site, %struct.site* %11, i32 0, i32 9
  %arrayidx = getelementptr inbounds [4 x %struct.anti_hermitmat], [4 x %struct.anti_hermitmat]* %mom, i32 0, i64 %idxprom
  call void @uncompress_anti_hermitian(%struct.anti_hermitmat* %arrayidx, %struct.su3_matrix* %tmat2)
  %12 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.su3_vector*, %struct.su3_vector** %back.addr, align 8
  %arrayidx9 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %13, i64 %idxprom8
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %15 = load %struct.su3_vector*, %struct.su3_vector** %forw.addr, align 8
  %arrayidx11 = getelementptr inbounds %struct.su3_vector, %struct.su3_vector* %15, i64 %idxprom10
  call void @su3_projector(%struct.su3_vector* %arrayidx9, %struct.su3_vector* %arrayidx11, %struct.su3_matrix* %tmat)
  %16 = load double, double* %tmp_coeff, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %tmat2, %struct.su3_matrix* %tmat, double %16, %struct.su3_matrix* %tmat2)
  %17 = load i32, i32* %dir.addr, align 4
  %idxprom12 = sext i32 %17 to i64
  %18 = load %struct.site*, %struct.site** %s, align 8
  %mom13 = getelementptr inbounds %struct.site, %struct.site* %18, i32 0, i32 9
  %arrayidx14 = getelementptr inbounds [4 x %struct.anti_hermitmat], [4 x %struct.anti_hermitmat]* %mom13, i32 0, i64 %idxprom12
  call void @make_anti_hermitian(%struct.su3_matrix* %tmat2, %struct.anti_hermitmat* %arrayidx14)
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %19 = load i32, i32* %i, align 4
  %inc = add nsw i32 %19, 1
  store i32 %inc, i32* %i, align 4
  %20 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %20, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @side_link_force(i32 %mu, i32 %nu, double %coeff, %struct.su3_vector* %Path, %struct.su3_vector* %Path_nu, %struct.su3_vector* %Path_mu, %struct.su3_vector* %Path_numu) #0 {
entry:
  %mu.addr = alloca i32, align 4
  %nu.addr = alloca i32, align 4
  %coeff.addr = alloca double, align 8
  %Path.addr = alloca %struct.su3_vector*, align 8
  %Path_nu.addr = alloca %struct.su3_vector*, align 8
  %Path_mu.addr = alloca %struct.su3_vector*, align 8
  %Path_numu.addr = alloca %struct.su3_vector*, align 8
  store i32 %mu, i32* %mu.addr, align 4
  store i32 %nu, i32* %nu.addr, align 4
  store double %coeff, double* %coeff.addr, align 8
  store %struct.su3_vector* %Path, %struct.su3_vector** %Path.addr, align 8
  store %struct.su3_vector* %Path_nu, %struct.su3_vector** %Path_nu.addr, align 8
  store %struct.su3_vector* %Path_mu, %struct.su3_vector** %Path_mu.addr, align 8
  store %struct.su3_vector* %Path_numu, %struct.su3_vector** %Path_numu.addr, align 8
  %0 = load i32, i32* %mu.addr, align 4
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else.4

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %nu.addr, align 4
  %cmp1 = icmp sle i32 %1, 3
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %2 = load %struct.su3_vector*, %struct.su3_vector** %Path_numu.addr, align 8
  %3 = load %struct.su3_vector*, %struct.su3_vector** %Path.addr, align 8
  %4 = load i32, i32* %mu.addr, align 4
  %5 = load double, double* %coeff.addr, align 8
  call void @add_force_to_mom(%struct.su3_vector* %2, %struct.su3_vector* %3, i32 %4, double %5)
  br label %if.end

if.else:                                          ; preds = %if.then
  %6 = load %struct.su3_vector*, %struct.su3_vector** %Path.addr, align 8
  %7 = load %struct.su3_vector*, %struct.su3_vector** %Path_numu.addr, align 8
  %8 = load i32, i32* %mu.addr, align 4
  %sub = sub nsw i32 7, %8
  %9 = load double, double* %coeff.addr, align 8
  %sub3 = fsub double -0.000000e+00, %9
  call void @add_force_to_mom(%struct.su3_vector* %6, %struct.su3_vector* %7, i32 %sub, double %sub3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %if.end.11

if.else.4:                                        ; preds = %entry
  %10 = load i32, i32* %nu.addr, align 4
  %cmp5 = icmp sle i32 %10, 3
  br i1 %cmp5, label %if.then.6, label %if.else.8

if.then.6:                                        ; preds = %if.else.4
  %11 = load %struct.su3_vector*, %struct.su3_vector** %Path_nu.addr, align 8
  %12 = load %struct.su3_vector*, %struct.su3_vector** %Path_mu.addr, align 8
  %13 = load i32, i32* %mu.addr, align 4
  %14 = load double, double* %coeff.addr, align 8
  %sub7 = fsub double -0.000000e+00, %14
  call void @add_force_to_mom(%struct.su3_vector* %11, %struct.su3_vector* %12, i32 %13, double %sub7)
  br label %if.end.10

if.else.8:                                        ; preds = %if.else.4
  %15 = load %struct.su3_vector*, %struct.su3_vector** %Path_mu.addr, align 8
  %16 = load %struct.su3_vector*, %struct.su3_vector** %Path_nu.addr, align 8
  %17 = load i32, i32* %mu.addr, align 4
  %sub9 = sub nsw i32 7, %17
  %18 = load double, double* %coeff.addr, align 8
  call void @add_force_to_mom(%struct.su3_vector* %15, %struct.su3_vector* %16, i32 %sub9, double %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.8, %if.then.6
  br label %if.end.11

if.end.11:                                        ; preds = %if.end.10, %if.end
  ret void
}

declare void @scalar_mult_add_su3_vector(%struct.su3_vector*, %struct.su3_vector*, double, %struct.su3_vector*) #1

; Function Attrs: nounwind uwtable
define void @eo_fermion_force_3f(double %eps, i32 %nflav1, i32 %x1_off, i32 %nflav2, i32 %x2_off) #0 {
entry:
  %eps.addr = alloca double, align 8
  %nflav1.addr = alloca i32, align 4
  %x1_off.addr = alloca i32, align 4
  %nflav2.addr = alloca i32, align 4
  %x2_off.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %s = alloca %struct.site*, align 8
  %mu = alloca i32, align 4
  %nu = alloca i32, align 4
  %rho = alloca i32, align 4
  %sig = alloca i32, align 4
  %DirectLinks = alloca [8 x i32], align 16
  %coeff = alloca [2 x double], align 16
  %ferm_epsilon = alloca double, align 8
  %OneLink = alloca [2 x double], align 16
  %Lepage = alloca [2 x double], align 16
  %Naik = alloca [2 x double], align 16
  %FiveSt = alloca [2 x double], align 16
  %ThreeSt = alloca [2 x double], align 16
  %SevenSt = alloca [2 x double], align 16
  %mNaik = alloca [2 x double], align 16
  %mLepage = alloca [2 x double], align 16
  %mFiveSt = alloca [2 x double], align 16
  %mThreeSt = alloca [2 x double], align 16
  %mSevenSt = alloca [2 x double], align 16
  %hwvec = alloca [8 x %struct.half_wilson_vector*], align 16
  %temp_x = alloca %struct.half_wilson_vector*, align 8
  store double %eps, double* %eps.addr, align 8
  store i32 %nflav1, i32* %nflav1.addr, align 4
  store i32 %x1_off, i32* %x1_off.addr, align 4
  store i32 %nflav2, i32* %nflav2.addr, align 4
  store i32 %x2_off, i32* %x2_off.addr, align 4
  %0 = load i32, i32* %nflav1.addr, align 4
  %conv = sitofp i32 %0 to double
  %div = fdiv double %conv, 4.000000e+00
  %mul = fmul double 2.000000e+00, %div
  %1 = load double, double* %eps.addr, align 8
  %mul1 = fmul double %mul, %1
  store double %mul1, double* %ferm_epsilon, align 8
  %2 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 0), align 8
  %3 = load double, double* %ferm_epsilon, align 8
  %mul2 = fmul double %2, %3
  %arrayidx = getelementptr inbounds [2 x double], [2 x double]* %OneLink, i32 0, i64 0
  store double %mul2, double* %arrayidx, align 8
  %4 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 1), align 8
  %5 = load double, double* %ferm_epsilon, align 8
  %mul3 = fmul double %4, %5
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %Naik, i32 0, i64 0
  store double %mul3, double* %arrayidx4, align 8
  %arrayidx5 = getelementptr inbounds [2 x double], [2 x double]* %Naik, i32 0, i64 0
  %6 = load double, double* %arrayidx5, align 8
  %sub = fsub double -0.000000e+00, %6
  %arrayidx6 = getelementptr inbounds [2 x double], [2 x double]* %mNaik, i32 0, i64 0
  store double %sub, double* %arrayidx6, align 8
  %7 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 2), align 8
  %8 = load double, double* %ferm_epsilon, align 8
  %mul7 = fmul double %7, %8
  %arrayidx8 = getelementptr inbounds [2 x double], [2 x double]* %ThreeSt, i32 0, i64 0
  store double %mul7, double* %arrayidx8, align 8
  %arrayidx9 = getelementptr inbounds [2 x double], [2 x double]* %ThreeSt, i32 0, i64 0
  %9 = load double, double* %arrayidx9, align 8
  %sub10 = fsub double -0.000000e+00, %9
  %arrayidx11 = getelementptr inbounds [2 x double], [2 x double]* %mThreeSt, i32 0, i64 0
  store double %sub10, double* %arrayidx11, align 8
  %10 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 3), align 8
  %11 = load double, double* %ferm_epsilon, align 8
  %mul12 = fmul double %10, %11
  %arrayidx13 = getelementptr inbounds [2 x double], [2 x double]* %FiveSt, i32 0, i64 0
  store double %mul12, double* %arrayidx13, align 8
  %arrayidx14 = getelementptr inbounds [2 x double], [2 x double]* %FiveSt, i32 0, i64 0
  %12 = load double, double* %arrayidx14, align 8
  %sub15 = fsub double -0.000000e+00, %12
  %arrayidx16 = getelementptr inbounds [2 x double], [2 x double]* %mFiveSt, i32 0, i64 0
  store double %sub15, double* %arrayidx16, align 8
  %13 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 4), align 8
  %14 = load double, double* %ferm_epsilon, align 8
  %mul17 = fmul double %13, %14
  %arrayidx18 = getelementptr inbounds [2 x double], [2 x double]* %SevenSt, i32 0, i64 0
  store double %mul17, double* %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds [2 x double], [2 x double]* %SevenSt, i32 0, i64 0
  %15 = load double, double* %arrayidx19, align 8
  %sub20 = fsub double -0.000000e+00, %15
  %arrayidx21 = getelementptr inbounds [2 x double], [2 x double]* %mSevenSt, i32 0, i64 0
  store double %sub20, double* %arrayidx21, align 8
  %16 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 5), align 8
  %17 = load double, double* %ferm_epsilon, align 8
  %mul22 = fmul double %16, %17
  %arrayidx23 = getelementptr inbounds [2 x double], [2 x double]* %Lepage, i32 0, i64 0
  store double %mul22, double* %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds [2 x double], [2 x double]* %Lepage, i32 0, i64 0
  %18 = load double, double* %arrayidx24, align 8
  %sub25 = fsub double -0.000000e+00, %18
  %arrayidx26 = getelementptr inbounds [2 x double], [2 x double]* %mLepage, i32 0, i64 0
  store double %sub25, double* %arrayidx26, align 8
  %19 = load i32, i32* %nflav2.addr, align 4
  %conv27 = sitofp i32 %19 to double
  %div28 = fdiv double %conv27, 4.000000e+00
  %mul29 = fmul double 2.000000e+00, %div28
  %20 = load double, double* %eps.addr, align 8
  %mul30 = fmul double %mul29, %20
  store double %mul30, double* %ferm_epsilon, align 8
  %21 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 0), align 8
  %22 = load double, double* %ferm_epsilon, align 8
  %mul31 = fmul double %21, %22
  %arrayidx32 = getelementptr inbounds [2 x double], [2 x double]* %OneLink, i32 0, i64 1
  store double %mul31, double* %arrayidx32, align 8
  %23 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 1), align 8
  %24 = load double, double* %ferm_epsilon, align 8
  %mul33 = fmul double %23, %24
  %arrayidx34 = getelementptr inbounds [2 x double], [2 x double]* %Naik, i32 0, i64 1
  store double %mul33, double* %arrayidx34, align 8
  %arrayidx35 = getelementptr inbounds [2 x double], [2 x double]* %Naik, i32 0, i64 1
  %25 = load double, double* %arrayidx35, align 8
  %sub36 = fsub double -0.000000e+00, %25
  %arrayidx37 = getelementptr inbounds [2 x double], [2 x double]* %mNaik, i32 0, i64 1
  store double %sub36, double* %arrayidx37, align 8
  %26 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 2), align 8
  %27 = load double, double* %ferm_epsilon, align 8
  %mul38 = fmul double %26, %27
  %arrayidx39 = getelementptr inbounds [2 x double], [2 x double]* %ThreeSt, i32 0, i64 1
  store double %mul38, double* %arrayidx39, align 8
  %arrayidx40 = getelementptr inbounds [2 x double], [2 x double]* %ThreeSt, i32 0, i64 1
  %28 = load double, double* %arrayidx40, align 8
  %sub41 = fsub double -0.000000e+00, %28
  %arrayidx42 = getelementptr inbounds [2 x double], [2 x double]* %mThreeSt, i32 0, i64 1
  store double %sub41, double* %arrayidx42, align 8
  %29 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 3), align 8
  %30 = load double, double* %ferm_epsilon, align 8
  %mul43 = fmul double %29, %30
  %arrayidx44 = getelementptr inbounds [2 x double], [2 x double]* %FiveSt, i32 0, i64 1
  store double %mul43, double* %arrayidx44, align 8
  %arrayidx45 = getelementptr inbounds [2 x double], [2 x double]* %FiveSt, i32 0, i64 1
  %31 = load double, double* %arrayidx45, align 8
  %sub46 = fsub double -0.000000e+00, %31
  %arrayidx47 = getelementptr inbounds [2 x double], [2 x double]* %mFiveSt, i32 0, i64 1
  store double %sub46, double* %arrayidx47, align 8
  %32 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 4), align 8
  %33 = load double, double* %ferm_epsilon, align 8
  %mul48 = fmul double %32, %33
  %arrayidx49 = getelementptr inbounds [2 x double], [2 x double]* %SevenSt, i32 0, i64 1
  store double %mul48, double* %arrayidx49, align 8
  %arrayidx50 = getelementptr inbounds [2 x double], [2 x double]* %SevenSt, i32 0, i64 1
  %34 = load double, double* %arrayidx50, align 8
  %sub51 = fsub double -0.000000e+00, %34
  %arrayidx52 = getelementptr inbounds [2 x double], [2 x double]* %mSevenSt, i32 0, i64 1
  store double %sub51, double* %arrayidx52, align 8
  %35 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @act_path_coeff, i32 0, i64 5), align 8
  %36 = load double, double* %ferm_epsilon, align 8
  %mul53 = fmul double %35, %36
  %arrayidx54 = getelementptr inbounds [2 x double], [2 x double]* %Lepage, i32 0, i64 1
  store double %mul53, double* %arrayidx54, align 8
  %arrayidx55 = getelementptr inbounds [2 x double], [2 x double]* %Lepage, i32 0, i64 1
  %37 = load double, double* %arrayidx55, align 8
  %sub56 = fsub double -0.000000e+00, %37
  %arrayidx57 = getelementptr inbounds [2 x double], [2 x double]* %mLepage, i32 0, i64 1
  store double %sub56, double* %arrayidx57, align 8
  store i32 0, i32* %mu, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %38 = load i32, i32* %mu, align 4
  %cmp = icmp slt i32 %38, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %39 = load i32, i32* %mu, align 4
  %idxprom = sext i32 %39 to i64
  %arrayidx59 = getelementptr inbounds [8 x i32], [8 x i32]* %DirectLinks, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx59, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %mu, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %mu, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %mu, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.67, %for.end
  %41 = load i32, i32* %mu, align 4
  %cmp61 = icmp slt i32 %41, 8
  br i1 %cmp61, label %for.body.63, label %for.end.69

for.body.63:                                      ; preds = %for.cond.60
  %42 = load i32, i32* @sites_on_node, align 4
  %conv64 = sext i32 %42 to i64
  %call = call noalias i8* @calloc(i64 %conv64, i64 96) #4
  %43 = bitcast i8* %call to %struct.half_wilson_vector*
  %44 = load i32, i32* %mu, align 4
  %idxprom65 = sext i32 %44 to i64
  %arrayidx66 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 %idxprom65
  store %struct.half_wilson_vector* %43, %struct.half_wilson_vector** %arrayidx66, align 8
  br label %for.inc.67

for.inc.67:                                       ; preds = %for.body.63
  %45 = load i32, i32* %mu, align 4
  %inc68 = add nsw i32 %45, 1
  store i32 %inc68, i32* %mu, align 4
  br label %for.cond.60

for.end.69:                                       ; preds = %for.cond.60
  %46 = load i32, i32* @sites_on_node, align 4
  %conv70 = sext i32 %46 to i64
  %call71 = call noalias i8* @calloc(i64 %conv70, i64 96) #4
  %47 = bitcast i8* %call71 to %struct.half_wilson_vector*
  store %struct.half_wilson_vector* %47, %struct.half_wilson_vector** %temp_x, align 8
  store i32 0, i32* %i, align 4
  %48 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %48, %struct.site** %s, align 8
  br label %for.cond.72

for.cond.72:                                      ; preds = %for.inc.85, %for.end.69
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* @sites_on_node, align 4
  %cmp73 = icmp slt i32 %49, %50
  br i1 %cmp73, label %for.body.75, label %for.end.87

for.body.75:                                      ; preds = %for.cond.72
  %51 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %51 to i64
  %52 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %temp_x, align 8
  %arrayidx77 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %52, i64 %idxprom76
  %h = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx77, i32 0, i32 0
  %arrayidx78 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h, i32 0, i64 0
  %53 = load %struct.site*, %struct.site** %s, align 8
  %54 = bitcast %struct.site* %53 to i8*
  %55 = load i32, i32* %x1_off.addr, align 4
  %idx.ext = sext i32 %55 to i64
  %add.ptr = getelementptr inbounds i8, i8* %54, i64 %idx.ext
  %56 = bitcast i8* %add.ptr to %struct.su3_vector*
  %57 = bitcast %struct.su3_vector* %arrayidx78 to i8*
  %58 = bitcast %struct.su3_vector* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 48, i32 8, i1 false)
  %59 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %59 to i64
  %60 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %temp_x, align 8
  %arrayidx80 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %60, i64 %idxprom79
  %h81 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx80, i32 0, i32 0
  %arrayidx82 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h81, i32 0, i64 1
  %61 = load %struct.site*, %struct.site** %s, align 8
  %62 = bitcast %struct.site* %61 to i8*
  %63 = load i32, i32* %x2_off.addr, align 4
  %idx.ext83 = sext i32 %63 to i64
  %add.ptr84 = getelementptr inbounds i8, i8* %62, i64 %idx.ext83
  %64 = bitcast i8* %add.ptr84 to %struct.su3_vector*
  %65 = bitcast %struct.su3_vector* %arrayidx82 to i8*
  %66 = bitcast %struct.su3_vector* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %65, i8* %66, i64 48, i32 8, i1 false)
  br label %for.inc.85

for.inc.85:                                       ; preds = %for.body.75
  %67 = load i32, i32* %i, align 4
  %inc86 = add nsw i32 %67, 1
  store i32 %inc86, i32* %i, align 4
  %68 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %68, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond.72

for.end.87:                                       ; preds = %for.cond.72
  store i32 0, i32* %sig, align 4
  br label %for.cond.88

for.cond.88:                                      ; preds = %for.inc.404, %for.end.87
  %69 = load i32, i32* %sig, align 4
  %cmp89 = icmp slt i32 %69, 8
  br i1 %cmp89, label %for.body.91, label %for.end.406

for.body.91:                                      ; preds = %for.cond.88
  store i32 0, i32* %mu, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.401, %for.body.91
  %70 = load i32, i32* %mu, align 4
  %cmp93 = icmp slt i32 %70, 8
  br i1 %cmp93, label %for.body.95, label %for.end.403

for.body.95:                                      ; preds = %for.cond.92
  %71 = load i32, i32* %mu, align 4
  %72 = load i32, i32* %sig, align 4
  %cmp96 = icmp ne i32 %71, %72
  br i1 %cmp96, label %land.lhs.true, label %if.end.400

land.lhs.true:                                    ; preds = %for.body.95
  %73 = load i32, i32* %mu, align 4
  %74 = load i32, i32* %sig, align 4
  %sub98 = sub nsw i32 7, %74
  %cmp99 = icmp ne i32 %73, %sub98
  br i1 %cmp99, label %if.then, label %if.end.400

if.then:                                          ; preds = %land.lhs.true
  %75 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %temp_x, align 8
  %arrayidx101 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 0
  %76 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx101, align 8
  %77 = load i32, i32* %mu, align 4
  %sub102 = sub nsw i32 7, %77
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %75, %struct.half_wilson_vector* %76, i32 %sub102)
  %arrayidx103 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 0
  %78 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx103, align 8
  %arrayidx104 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %79 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx104, align 8
  %80 = load i32, i32* %sig, align 4
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %78, %struct.half_wilson_vector* %79, i32 %80)
  %81 = load i32, i32* %sig, align 4
  %cmp105 = icmp sle i32 %81, 3
  br i1 %cmp105, label %if.then.107, label %if.end

if.then.107:                                      ; preds = %if.then
  %arrayidx108 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %82 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx108, align 8
  %arrayidx109 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 0
  %83 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx109, align 8
  %84 = load i32, i32* %sig, align 4
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %mThreeSt, i32 0, i32 0
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %82, %struct.half_wilson_vector* %83, i32 %84, double* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.then.107, %if.then
  store i32 0, i32* %nu, align 4
  br label %for.cond.110

for.cond.110:                                     ; preds = %for.inc.292, %if.end
  %85 = load i32, i32* %nu, align 4
  %cmp111 = icmp slt i32 %85, 8
  br i1 %cmp111, label %for.body.113, label %for.end.294

for.body.113:                                     ; preds = %for.cond.110
  %86 = load i32, i32* %nu, align 4
  %87 = load i32, i32* %mu, align 4
  %cmp114 = icmp ne i32 %86, %87
  br i1 %cmp114, label %land.lhs.true.116, label %if.end.291

land.lhs.true.116:                                ; preds = %for.body.113
  %88 = load i32, i32* %nu, align 4
  %89 = load i32, i32* %mu, align 4
  %sub117 = sub nsw i32 7, %89
  %cmp118 = icmp ne i32 %88, %sub117
  br i1 %cmp118, label %land.lhs.true.120, label %if.end.291

land.lhs.true.120:                                ; preds = %land.lhs.true.116
  %90 = load i32, i32* %nu, align 4
  %91 = load i32, i32* %sig, align 4
  %cmp121 = icmp ne i32 %90, %91
  br i1 %cmp121, label %land.lhs.true.123, label %if.end.291

land.lhs.true.123:                                ; preds = %land.lhs.true.120
  %92 = load i32, i32* %nu, align 4
  %93 = load i32, i32* %sig, align 4
  %sub124 = sub nsw i32 7, %93
  %cmp125 = icmp ne i32 %92, %sub124
  br i1 %cmp125, label %if.then.127, label %if.end.291

if.then.127:                                      ; preds = %land.lhs.true.123
  %arrayidx128 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 0
  %94 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx128, align 8
  %arrayidx129 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %95 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx129, align 8
  %96 = load i32, i32* %nu, align 4
  %sub130 = sub nsw i32 7, %96
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %94, %struct.half_wilson_vector* %95, i32 %sub130)
  %arrayidx131 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %97 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx131, align 8
  %arrayidx132 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %98 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx132, align 8
  %99 = load i32, i32* %sig, align 4
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %97, %struct.half_wilson_vector* %98, i32 %99)
  %100 = load i32, i32* %sig, align 4
  %cmp133 = icmp sle i32 %100, 3
  br i1 %cmp133, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %if.then.127
  %arrayidx136 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %101 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx136, align 8
  %arrayidx137 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %102 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx137, align 8
  %103 = load i32, i32* %sig, align 4
  %arraydecay138 = getelementptr inbounds [2 x double], [2 x double]* %FiveSt, i32 0, i32 0
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %101, %struct.half_wilson_vector* %102, i32 %103, double* %arraydecay138)
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.135, %if.then.127
  store i32 0, i32* %rho, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.233, %if.end.139
  %104 = load i32, i32* %rho, align 4
  %cmp141 = icmp slt i32 %104, 8
  br i1 %cmp141, label %for.body.143, label %for.end.235

for.body.143:                                     ; preds = %for.cond.140
  %105 = load i32, i32* %rho, align 4
  %106 = load i32, i32* %mu, align 4
  %cmp144 = icmp ne i32 %105, %106
  br i1 %cmp144, label %land.lhs.true.146, label %if.end.232

land.lhs.true.146:                                ; preds = %for.body.143
  %107 = load i32, i32* %rho, align 4
  %108 = load i32, i32* %mu, align 4
  %sub147 = sub nsw i32 7, %108
  %cmp148 = icmp ne i32 %107, %sub147
  br i1 %cmp148, label %land.lhs.true.150, label %if.end.232

land.lhs.true.150:                                ; preds = %land.lhs.true.146
  %109 = load i32, i32* %rho, align 4
  %110 = load i32, i32* %nu, align 4
  %cmp151 = icmp ne i32 %109, %110
  br i1 %cmp151, label %land.lhs.true.153, label %if.end.232

land.lhs.true.153:                                ; preds = %land.lhs.true.150
  %111 = load i32, i32* %rho, align 4
  %112 = load i32, i32* %nu, align 4
  %sub154 = sub nsw i32 7, %112
  %cmp155 = icmp ne i32 %111, %sub154
  br i1 %cmp155, label %land.lhs.true.157, label %if.end.232

land.lhs.true.157:                                ; preds = %land.lhs.true.153
  %113 = load i32, i32* %rho, align 4
  %114 = load i32, i32* %sig, align 4
  %cmp158 = icmp ne i32 %113, %114
  br i1 %cmp158, label %land.lhs.true.160, label %if.end.232

land.lhs.true.160:                                ; preds = %land.lhs.true.157
  %115 = load i32, i32* %rho, align 4
  %116 = load i32, i32* %sig, align 4
  %sub161 = sub nsw i32 7, %116
  %cmp162 = icmp ne i32 %115, %sub161
  br i1 %cmp162, label %if.then.164, label %if.end.232

if.then.164:                                      ; preds = %land.lhs.true.160
  %arrayidx165 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %117 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx165, align 8
  %arrayidx166 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 2
  %118 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx166, align 8
  %119 = load i32, i32* %rho, align 4
  %sub167 = sub nsw i32 7, %119
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %117, %struct.half_wilson_vector* %118, i32 %sub167)
  %arrayidx168 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 2
  %120 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx168, align 8
  %arrayidx169 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %121 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx169, align 8
  %122 = load i32, i32* %sig, align 4
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %120, %struct.half_wilson_vector* %121, i32 %122)
  %123 = load i32, i32* %sig, align 4
  %cmp170 = icmp sle i32 %123, 3
  br i1 %cmp170, label %if.then.172, label %if.end.176

if.then.172:                                      ; preds = %if.then.164
  %arrayidx173 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %124 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx173, align 8
  %arrayidx174 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 2
  %125 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx174, align 8
  %126 = load i32, i32* %sig, align 4
  %arraydecay175 = getelementptr inbounds [2 x double], [2 x double]* %mSevenSt, i32 0, i32 0
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %124, %struct.half_wilson_vector* %125, i32 %126, double* %arraydecay175)
  br label %if.end.176

if.end.176:                                       ; preds = %if.then.172, %if.then.164
  %arrayidx177 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %127 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx177, align 8
  %arrayidx178 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 4
  %128 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx178, align 8
  %129 = load i32, i32* %rho, align 4
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %127, %struct.half_wilson_vector* %128, i32 %129)
  %130 = load i32, i32* %rho, align 4
  %131 = load i32, i32* %sig, align 4
  %arraydecay179 = getelementptr inbounds [2 x double], [2 x double]* %SevenSt, i32 0, i32 0
  %arrayidx180 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %132 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx180, align 8
  %arrayidx181 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %133 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx181, align 8
  %arrayidx182 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 2
  %134 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx182, align 8
  %arrayidx183 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 4
  %135 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx183, align 8
  call void @side_link_3f_force(i32 %130, i32 %131, double* %arraydecay179, %struct.half_wilson_vector* %132, %struct.half_wilson_vector* %133, %struct.half_wilson_vector* %134, %struct.half_wilson_vector* %135)
  %arrayidx184 = getelementptr inbounds [2 x double], [2 x double]* %SevenSt, i32 0, i64 0
  %136 = load double, double* %arrayidx184, align 8
  %arrayidx185 = getelementptr inbounds [2 x double], [2 x double]* %FiveSt, i32 0, i64 0
  %137 = load double, double* %arrayidx185, align 8
  %div186 = fdiv double %136, %137
  %arrayidx187 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 0
  store double %div186, double* %arrayidx187, align 8
  %arrayidx188 = getelementptr inbounds [2 x double], [2 x double]* %SevenSt, i32 0, i64 1
  %138 = load double, double* %arrayidx188, align 8
  %arrayidx189 = getelementptr inbounds [2 x double], [2 x double]* %FiveSt, i32 0, i64 1
  %139 = load double, double* %arrayidx189, align 8
  %div190 = fdiv double %138, %139
  %arrayidx191 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 1
  store double %div190, double* %arrayidx191, align 8
  store i32 0, i32* %i, align 4
  %140 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %140, %struct.site** %s, align 8
  br label %for.cond.192

for.cond.192:                                     ; preds = %for.inc.228, %if.end.176
  %141 = load i32, i32* %i, align 4
  %142 = load i32, i32* @sites_on_node, align 4
  %cmp193 = icmp slt i32 %141, %142
  br i1 %cmp193, label %for.body.195, label %for.end.231

for.body.195:                                     ; preds = %for.cond.192
  %143 = load i32, i32* %i, align 4
  %idxprom196 = sext i32 %143 to i64
  %arrayidx197 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %144 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx197, align 8
  %arrayidx198 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %144, i64 %idxprom196
  %h199 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx198, i32 0, i32 0
  %arrayidx200 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h199, i32 0, i64 0
  %145 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %145 to i64
  %arrayidx202 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 4
  %146 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx202, align 8
  %arrayidx203 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %146, i64 %idxprom201
  %h204 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx203, i32 0, i32 0
  %arrayidx205 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h204, i32 0, i64 0
  %arrayidx206 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 0
  %147 = load double, double* %arrayidx206, align 8
  %148 = load i32, i32* %i, align 4
  %idxprom207 = sext i32 %148 to i64
  %arrayidx208 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %149 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx208, align 8
  %arrayidx209 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %149, i64 %idxprom207
  %h210 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx209, i32 0, i32 0
  %arrayidx211 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h210, i32 0, i64 0
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx200, %struct.su3_vector* %arrayidx205, double %147, %struct.su3_vector* %arrayidx211)
  %150 = load i32, i32* %i, align 4
  %idxprom212 = sext i32 %150 to i64
  %arrayidx213 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %151 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx213, align 8
  %arrayidx214 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %151, i64 %idxprom212
  %h215 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx214, i32 0, i32 0
  %arrayidx216 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h215, i32 0, i64 1
  %152 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %152 to i64
  %arrayidx218 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 4
  %153 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx218, align 8
  %arrayidx219 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %153, i64 %idxprom217
  %h220 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx219, i32 0, i32 0
  %arrayidx221 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h220, i32 0, i64 1
  %arrayidx222 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 1
  %154 = load double, double* %arrayidx222, align 8
  %155 = load i32, i32* %i, align 4
  %idxprom223 = sext i32 %155 to i64
  %arrayidx224 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %156 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx224, align 8
  %arrayidx225 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %156, i64 %idxprom223
  %h226 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx225, i32 0, i32 0
  %arrayidx227 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h226, i32 0, i64 1
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx216, %struct.su3_vector* %arrayidx221, double %154, %struct.su3_vector* %arrayidx227)
  br label %for.inc.228

for.inc.228:                                      ; preds = %for.body.195
  %157 = load i32, i32* %i, align 4
  %inc229 = add nsw i32 %157, 1
  store i32 %inc229, i32* %i, align 4
  %158 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr230 = getelementptr inbounds %struct.site, %struct.site* %158, i32 1
  store %struct.site* %incdec.ptr230, %struct.site** %s, align 8
  br label %for.cond.192

for.end.231:                                      ; preds = %for.cond.192
  br label %if.end.232

if.end.232:                                       ; preds = %for.end.231, %land.lhs.true.160, %land.lhs.true.157, %land.lhs.true.153, %land.lhs.true.150, %land.lhs.true.146, %for.body.143
  br label %for.inc.233

for.inc.233:                                      ; preds = %if.end.232
  %159 = load i32, i32* %rho, align 4
  %inc234 = add nsw i32 %159, 1
  store i32 %inc234, i32* %rho, align 4
  br label %for.cond.140

for.end.235:                                      ; preds = %for.cond.140
  %arrayidx236 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %160 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx236, align 8
  %arrayidx237 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %161 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx237, align 8
  %162 = load i32, i32* %nu, align 4
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %160, %struct.half_wilson_vector* %161, i32 %162)
  %163 = load i32, i32* %nu, align 4
  %164 = load i32, i32* %sig, align 4
  %arraydecay238 = getelementptr inbounds [2 x double], [2 x double]* %mFiveSt, i32 0, i32 0
  %arrayidx239 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 0
  %165 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx239, align 8
  %arrayidx240 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %166 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx240, align 8
  %arrayidx241 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %167 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx241, align 8
  %arrayidx242 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %168 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx242, align 8
  call void @side_link_3f_force(i32 %163, i32 %164, double* %arraydecay238, %struct.half_wilson_vector* %165, %struct.half_wilson_vector* %166, %struct.half_wilson_vector* %167, %struct.half_wilson_vector* %168)
  %arrayidx243 = getelementptr inbounds [2 x double], [2 x double]* %FiveSt, i32 0, i64 0
  %169 = load double, double* %arrayidx243, align 8
  %arrayidx244 = getelementptr inbounds [2 x double], [2 x double]* %ThreeSt, i32 0, i64 0
  %170 = load double, double* %arrayidx244, align 8
  %div245 = fdiv double %169, %170
  %arrayidx246 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 0
  store double %div245, double* %arrayidx246, align 8
  %arrayidx247 = getelementptr inbounds [2 x double], [2 x double]* %FiveSt, i32 0, i64 1
  %171 = load double, double* %arrayidx247, align 8
  %arrayidx248 = getelementptr inbounds [2 x double], [2 x double]* %ThreeSt, i32 0, i64 1
  %172 = load double, double* %arrayidx248, align 8
  %div249 = fdiv double %171, %172
  %arrayidx250 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 1
  store double %div249, double* %arrayidx250, align 8
  store i32 0, i32* %i, align 4
  %173 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %173, %struct.site** %s, align 8
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.287, %for.end.235
  %174 = load i32, i32* %i, align 4
  %175 = load i32, i32* @sites_on_node, align 4
  %cmp252 = icmp slt i32 %174, %175
  br i1 %cmp252, label %for.body.254, label %for.end.290

for.body.254:                                     ; preds = %for.cond.251
  %176 = load i32, i32* %i, align 4
  %idxprom255 = sext i32 %176 to i64
  %arrayidx256 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %177 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx256, align 8
  %arrayidx257 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %177, i64 %idxprom255
  %h258 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx257, i32 0, i32 0
  %arrayidx259 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h258, i32 0, i64 0
  %178 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %178 to i64
  %arrayidx261 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %179 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx261, align 8
  %arrayidx262 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %179, i64 %idxprom260
  %h263 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx262, i32 0, i32 0
  %arrayidx264 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h263, i32 0, i64 0
  %arrayidx265 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 0
  %180 = load double, double* %arrayidx265, align 8
  %181 = load i32, i32* %i, align 4
  %idxprom266 = sext i32 %181 to i64
  %arrayidx267 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %182 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx267, align 8
  %arrayidx268 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %182, i64 %idxprom266
  %h269 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx268, i32 0, i32 0
  %arrayidx270 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h269, i32 0, i64 0
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx259, %struct.su3_vector* %arrayidx264, double %180, %struct.su3_vector* %arrayidx270)
  %183 = load i32, i32* %i, align 4
  %idxprom271 = sext i32 %183 to i64
  %arrayidx272 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %184 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx272, align 8
  %arrayidx273 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %184, i64 %idxprom271
  %h274 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx273, i32 0, i32 0
  %arrayidx275 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h274, i32 0, i64 1
  %185 = load i32, i32* %i, align 4
  %idxprom276 = sext i32 %185 to i64
  %arrayidx277 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %186 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx277, align 8
  %arrayidx278 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %186, i64 %idxprom276
  %h279 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx278, i32 0, i32 0
  %arrayidx280 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h279, i32 0, i64 1
  %arrayidx281 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 1
  %187 = load double, double* %arrayidx281, align 8
  %188 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %188 to i64
  %arrayidx283 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %189 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx283, align 8
  %arrayidx284 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %189, i64 %idxprom282
  %h285 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx284, i32 0, i32 0
  %arrayidx286 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h285, i32 0, i64 1
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx275, %struct.su3_vector* %arrayidx280, double %187, %struct.su3_vector* %arrayidx286)
  br label %for.inc.287

for.inc.287:                                      ; preds = %for.body.254
  %190 = load i32, i32* %i, align 4
  %inc288 = add nsw i32 %190, 1
  store i32 %inc288, i32* %i, align 4
  %191 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr289 = getelementptr inbounds %struct.site, %struct.site* %191, i32 1
  store %struct.site* %incdec.ptr289, %struct.site** %s, align 8
  br label %for.cond.251

for.end.290:                                      ; preds = %for.cond.251
  br label %if.end.291

if.end.291:                                       ; preds = %for.end.290, %land.lhs.true.123, %land.lhs.true.120, %land.lhs.true.116, %for.body.113
  br label %for.inc.292

for.inc.292:                                      ; preds = %if.end.291
  %192 = load i32, i32* %nu, align 4
  %inc293 = add nsw i32 %192, 1
  store i32 %inc293, i32* %nu, align 4
  br label %for.cond.110

for.end.294:                                      ; preds = %for.cond.110
  %arrayidx295 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 0
  %193 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx295, align 8
  %arrayidx296 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %194 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx296, align 8
  %195 = load i32, i32* %mu, align 4
  %sub297 = sub nsw i32 7, %195
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %193, %struct.half_wilson_vector* %194, i32 %sub297)
  %arrayidx298 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %196 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx298, align 8
  %arrayidx299 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %197 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx299, align 8
  %198 = load i32, i32* %sig, align 4
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %196, %struct.half_wilson_vector* %197, i32 %198)
  %199 = load i32, i32* %sig, align 4
  %cmp300 = icmp sle i32 %199, 3
  br i1 %cmp300, label %if.then.302, label %if.end.306

if.then.302:                                      ; preds = %for.end.294
  %arrayidx303 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %200 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx303, align 8
  %arrayidx304 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %201 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx304, align 8
  %202 = load i32, i32* %sig, align 4
  %arraydecay305 = getelementptr inbounds [2 x double], [2 x double]* %Lepage, i32 0, i32 0
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %200, %struct.half_wilson_vector* %201, i32 %202, double* %arraydecay305)
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.302, %for.end.294
  %arrayidx307 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %203 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx307, align 8
  %arrayidx308 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %204 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx308, align 8
  %205 = load i32, i32* %mu, align 4
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %203, %struct.half_wilson_vector* %204, i32 %205)
  %206 = load i32, i32* %mu, align 4
  %207 = load i32, i32* %sig, align 4
  %arraydecay309 = getelementptr inbounds [2 x double], [2 x double]* %mLepage, i32 0, i32 0
  %arrayidx310 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 0
  %208 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx310, align 8
  %arrayidx311 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 6
  %209 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx311, align 8
  %arrayidx312 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %210 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx312, align 8
  %arrayidx313 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %211 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx313, align 8
  call void @side_link_3f_force(i32 %206, i32 %207, double* %arraydecay309, %struct.half_wilson_vector* %208, %struct.half_wilson_vector* %209, %struct.half_wilson_vector* %210, %struct.half_wilson_vector* %211)
  %arrayidx314 = getelementptr inbounds [2 x double], [2 x double]* %Lepage, i32 0, i64 0
  %212 = load double, double* %arrayidx314, align 8
  %arrayidx315 = getelementptr inbounds [2 x double], [2 x double]* %ThreeSt, i32 0, i64 0
  %213 = load double, double* %arrayidx315, align 8
  %div316 = fdiv double %212, %213
  %arrayidx317 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 0
  store double %div316, double* %arrayidx317, align 8
  %arrayidx318 = getelementptr inbounds [2 x double], [2 x double]* %Lepage, i32 0, i64 1
  %214 = load double, double* %arrayidx318, align 8
  %arrayidx319 = getelementptr inbounds [2 x double], [2 x double]* %ThreeSt, i32 0, i64 1
  %215 = load double, double* %arrayidx319, align 8
  %div320 = fdiv double %214, %215
  %arrayidx321 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 1
  store double %div320, double* %arrayidx321, align 8
  store i32 0, i32* %i, align 4
  %216 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %216, %struct.site** %s, align 8
  br label %for.cond.322

for.cond.322:                                     ; preds = %for.inc.358, %if.end.306
  %217 = load i32, i32* %i, align 4
  %218 = load i32, i32* @sites_on_node, align 4
  %cmp323 = icmp slt i32 %217, %218
  br i1 %cmp323, label %for.body.325, label %for.end.361

for.body.325:                                     ; preds = %for.cond.322
  %219 = load i32, i32* %i, align 4
  %idxprom326 = sext i32 %219 to i64
  %arrayidx327 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %220 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx327, align 8
  %arrayidx328 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %220, i64 %idxprom326
  %h329 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx328, i32 0, i32 0
  %arrayidx330 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h329, i32 0, i64 0
  %221 = load i32, i32* %i, align 4
  %idxprom331 = sext i32 %221 to i64
  %arrayidx332 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %222 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx332, align 8
  %arrayidx333 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %222, i64 %idxprom331
  %h334 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx333, i32 0, i32 0
  %arrayidx335 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h334, i32 0, i64 0
  %arrayidx336 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 0
  %223 = load double, double* %arrayidx336, align 8
  %224 = load i32, i32* %i, align 4
  %idxprom337 = sext i32 %224 to i64
  %arrayidx338 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %225 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %225, i64 %idxprom337
  %h340 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx339, i32 0, i32 0
  %arrayidx341 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h340, i32 0, i64 0
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx330, %struct.su3_vector* %arrayidx335, double %223, %struct.su3_vector* %arrayidx341)
  %226 = load i32, i32* %i, align 4
  %idxprom342 = sext i32 %226 to i64
  %arrayidx343 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %227 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx343, align 8
  %arrayidx344 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %227, i64 %idxprom342
  %h345 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx344, i32 0, i32 0
  %arrayidx346 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h345, i32 0, i64 1
  %228 = load i32, i32* %i, align 4
  %idxprom347 = sext i32 %228 to i64
  %arrayidx348 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %229 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx348, align 8
  %arrayidx349 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %229, i64 %idxprom347
  %h350 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx349, i32 0, i32 0
  %arrayidx351 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h350, i32 0, i64 1
  %arrayidx352 = getelementptr inbounds [2 x double], [2 x double]* %coeff, i32 0, i64 1
  %230 = load double, double* %arrayidx352, align 8
  %231 = load i32, i32* %i, align 4
  %idxprom353 = sext i32 %231 to i64
  %arrayidx354 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %232 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx354, align 8
  %arrayidx355 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %232, i64 %idxprom353
  %h356 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx355, i32 0, i32 0
  %arrayidx357 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h356, i32 0, i64 1
  call void @scalar_mult_add_su3_vector(%struct.su3_vector* %arrayidx346, %struct.su3_vector* %arrayidx351, double %230, %struct.su3_vector* %arrayidx357)
  br label %for.inc.358

for.inc.358:                                      ; preds = %for.body.325
  %233 = load i32, i32* %i, align 4
  %inc359 = add nsw i32 %233, 1
  store i32 %inc359, i32* %i, align 4
  %234 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr360 = getelementptr inbounds %struct.site, %struct.site* %234, i32 1
  store %struct.site* %incdec.ptr360, %struct.site** %s, align 8
  br label %for.cond.322

for.end.361:                                      ; preds = %for.cond.322
  %235 = load i32, i32* %mu, align 4
  %cmp362 = icmp sle i32 %235, 3
  br i1 %cmp362, label %if.then.364, label %if.end.367

if.then.364:                                      ; preds = %for.end.361
  %arrayidx365 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %236 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx365, align 8
  %arrayidx366 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %237 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx366, align 8
  %238 = load i32, i32* %mu, align 4
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %236, %struct.half_wilson_vector* %237, i32 %238)
  br label %if.end.367

if.end.367:                                       ; preds = %if.then.364, %for.end.361
  %239 = load i32, i32* %mu, align 4
  %240 = load i32, i32* %sig, align 4
  %arraydecay368 = getelementptr inbounds [2 x double], [2 x double]* %ThreeSt, i32 0, i32 0
  %241 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %temp_x, align 8
  %arrayidx369 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 7
  %242 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx369, align 8
  %arrayidx370 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 0
  %243 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx370, align 8
  %arrayidx371 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 3
  %244 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx371, align 8
  call void @side_link_3f_force(i32 %239, i32 %240, double* %arraydecay368, %struct.half_wilson_vector* %241, %struct.half_wilson_vector* %242, %struct.half_wilson_vector* %243, %struct.half_wilson_vector* %244)
  %245 = load i32, i32* %mu, align 4
  %idxprom372 = sext i32 %245 to i64
  %arrayidx373 = getelementptr inbounds [8 x i32], [8 x i32]* %DirectLinks, i32 0, i64 %idxprom372
  %246 = load i32, i32* %arrayidx373, align 4
  %tobool = icmp ne i32 %246, 0
  br i1 %tobool, label %if.end.399, label %if.then.374

if.then.374:                                      ; preds = %if.end.367
  %247 = load i32, i32* %mu, align 4
  %idxprom375 = sext i32 %247 to i64
  %arrayidx376 = getelementptr inbounds [8 x i32], [8 x i32]* %DirectLinks, i32 0, i64 %idxprom375
  store i32 1, i32* %arrayidx376, align 4
  %248 = load i32, i32* %mu, align 4
  %cmp377 = icmp sgt i32 %248, 3
  br i1 %cmp377, label %if.then.379, label %if.else

if.then.379:                                      ; preds = %if.then.374
  %arrayidx380 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 0
  %249 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx380, align 8
  %250 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %temp_x, align 8
  %251 = load i32, i32* %mu, align 4
  %sub381 = sub nsw i32 7, %251
  %arraydecay382 = getelementptr inbounds [2 x double], [2 x double]* %OneLink, i32 0, i32 0
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %249, %struct.half_wilson_vector* %250, i32 %sub381, double* %arraydecay382)
  %252 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %temp_x, align 8
  %arrayidx383 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 4
  %253 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx383, align 8
  %254 = load i32, i32* %mu, align 4
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %252, %struct.half_wilson_vector* %253, i32 %254)
  %arrayidx384 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %255 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx384, align 8
  %arrayidx385 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 4
  %256 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx385, align 8
  %257 = load i32, i32* %mu, align 4
  %sub386 = sub nsw i32 7, %257
  %arraydecay387 = getelementptr inbounds [2 x double], [2 x double]* %mNaik, i32 0, i32 0
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %255, %struct.half_wilson_vector* %256, i32 %sub386, double* %arraydecay387)
  %arrayidx388 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %258 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx388, align 8
  %arrayidx389 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 4
  %259 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx389, align 8
  %260 = load i32, i32* %mu, align 4
  %sub390 = sub nsw i32 7, %260
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %258, %struct.half_wilson_vector* %259, i32 %sub390)
  %arrayidx391 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 4
  %261 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx391, align 8
  %262 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %temp_x, align 8
  %263 = load i32, i32* %mu, align 4
  %sub392 = sub nsw i32 7, %263
  %arraydecay393 = getelementptr inbounds [2 x double], [2 x double]* %Naik, i32 0, i32 0
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %261, %struct.half_wilson_vector* %262, i32 %sub392, double* %arraydecay393)
  br label %if.end.398

if.else:                                          ; preds = %if.then.374
  %264 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %temp_x, align 8
  %arrayidx394 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 4
  %265 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx394, align 8
  %266 = load i32, i32* %mu, align 4
  call void @u_shift_hw_fermion(%struct.half_wilson_vector* %264, %struct.half_wilson_vector* %265, i32 %266)
  %arrayidx395 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 4
  %267 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx395, align 8
  %arrayidx396 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 1
  %268 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx396, align 8
  %269 = load i32, i32* %mu, align 4
  %arraydecay397 = getelementptr inbounds [2 x double], [2 x double]* %Naik, i32 0, i32 0
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %267, %struct.half_wilson_vector* %268, i32 %269, double* %arraydecay397)
  br label %if.end.398

if.end.398:                                       ; preds = %if.else, %if.then.379
  br label %if.end.399

if.end.399:                                       ; preds = %if.end.398, %if.end.367
  br label %if.end.400

if.end.400:                                       ; preds = %if.end.399, %land.lhs.true, %for.body.95
  br label %for.inc.401

for.inc.401:                                      ; preds = %if.end.400
  %270 = load i32, i32* %mu, align 4
  %inc402 = add nsw i32 %270, 1
  store i32 %inc402, i32* %mu, align 4
  br label %for.cond.92

for.end.403:                                      ; preds = %for.cond.92
  br label %for.inc.404

for.inc.404:                                      ; preds = %for.end.403
  %271 = load i32, i32* %sig, align 4
  %inc405 = add nsw i32 %271, 1
  store i32 %inc405, i32* %sig, align 4
  br label %for.cond.88

for.end.406:                                      ; preds = %for.cond.88
  %272 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %temp_x, align 8
  %273 = bitcast %struct.half_wilson_vector* %272 to i8*
  call void @free(i8* %273) #4
  store i32 0, i32* %mu, align 4
  br label %for.cond.407

for.cond.407:                                     ; preds = %for.inc.413, %for.end.406
  %274 = load i32, i32* %mu, align 4
  %cmp408 = icmp slt i32 %274, 8
  br i1 %cmp408, label %for.body.410, label %for.end.415

for.body.410:                                     ; preds = %for.cond.407
  %275 = load i32, i32* %mu, align 4
  %idxprom411 = sext i32 %275 to i64
  %arrayidx412 = getelementptr inbounds [8 x %struct.half_wilson_vector*], [8 x %struct.half_wilson_vector*]* %hwvec, i32 0, i64 %idxprom411
  %276 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %arrayidx412, align 8
  %277 = bitcast %struct.half_wilson_vector* %276 to i8*
  call void @free(i8* %277) #4
  br label %for.inc.413

for.inc.413:                                      ; preds = %for.body.410
  %278 = load i32, i32* %mu, align 4
  %inc414 = add nsw i32 %278, 1
  store i32 %inc414, i32* %mu, align 4
  br label %for.cond.407

for.end.415:                                      ; preds = %for.cond.407
  ret void
}

; Function Attrs: nounwind uwtable
define void @u_shift_hw_fermion(%struct.half_wilson_vector* %src, %struct.half_wilson_vector* %dest, i32 %dir) #0 {
entry:
  %src.addr = alloca %struct.half_wilson_vector*, align 8
  %dest.addr = alloca %struct.half_wilson_vector*, align 8
  %dir.addr = alloca i32, align 4
  %tmpvec = alloca %struct.half_wilson_vector*, align 8
  %mtag = alloca %struct.msg_tag*, align 8
  %s = alloca %struct.site*, align 8
  %i = alloca i32, align 4
  store %struct.half_wilson_vector* %src, %struct.half_wilson_vector** %src.addr, align 8
  store %struct.half_wilson_vector* %dest, %struct.half_wilson_vector** %dest.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  %0 = load i32, i32* %dir.addr, align 4
  %cmp = icmp sle i32 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %2 = bitcast %struct.half_wilson_vector* %1 to i8*
  %3 = load i32, i32* %dir.addr, align 4
  %4 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call = call %struct.msg_tag* @start_gather_from_temp(i8* %2, i32 96, i32 %3, i32 3, i8** %4)
  store %struct.msg_tag* %call, %struct.msg_tag** %mtag, align 8
  %5 = load %struct.msg_tag*, %struct.msg_tag** %mtag, align 8
  call void @wait_gather(%struct.msg_tag* %5)
  store i32 0, i32* %i, align 4
  %6 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %6, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i32, i32* %i, align 4
  %8 = load i32, i32* @sites_on_node, align 4
  %cmp1 = icmp slt i32 %7, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %dir.addr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.site*, %struct.site** %s, align 8
  %link = getelementptr inbounds %struct.site, %struct.site* %10, i32 0, i32 8
  %arrayidx = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link, i32 0, i64 %idxprom
  %11 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %11 to i64
  %12 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %12, i64 %idxprom2
  %13 = load i8*, i8** %arrayidx3, align 8
  %14 = bitcast i8* %13 to %struct.half_wilson_vector*
  %15 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %15 to i64
  %16 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %16, i64 %idxprom4
  call void @mult_su3_mat_hwvec(%struct.su3_matrix* %arrayidx, %struct.half_wilson_vector* %14, %struct.half_wilson_vector* %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  %18 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %18, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.msg_tag*, %struct.msg_tag** %mtag, align 8
  call void @cleanup_gather(%struct.msg_tag* %19)
  br label %if.end

if.else:                                          ; preds = %entry
  %20 = load i32, i32* @sites_on_node, align 4
  %conv = sext i32 %20 to i64
  %call6 = call noalias i8* @calloc(i64 %conv, i64 96) #4
  %21 = bitcast i8* %call6 to %struct.half_wilson_vector*
  store %struct.half_wilson_vector* %21, %struct.half_wilson_vector** %tmpvec, align 8
  store i32 0, i32* %i, align 4
  %22 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %22, %struct.site** %s, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.18, %if.else
  %23 = load i32, i32* %i, align 4
  %24 = load i32, i32* @sites_on_node, align 4
  %cmp8 = icmp slt i32 %23, %24
  br i1 %cmp8, label %for.body.10, label %for.end.21

for.body.10:                                      ; preds = %for.cond.7
  %25 = load i32, i32* %dir.addr, align 4
  %sub = sub nsw i32 7, %25
  %idxprom11 = sext i32 %sub to i64
  %26 = load %struct.site*, %struct.site** %s, align 8
  %link12 = getelementptr inbounds %struct.site, %struct.site* %26, i32 0, i32 8
  %arrayidx13 = getelementptr inbounds [4 x %struct.su3_matrix], [4 x %struct.su3_matrix]* %link12, i32 0, i64 %idxprom11
  %27 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %27 to i64
  %28 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %src.addr, align 8
  %arrayidx15 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %28, i64 %idxprom14
  %29 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %29 to i64
  %30 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmpvec, align 8
  %arrayidx17 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %30, i64 %idxprom16
  call void @mult_adj_su3_mat_hwvec(%struct.su3_matrix* %arrayidx13, %struct.half_wilson_vector* %arrayidx15, %struct.half_wilson_vector* %arrayidx17)
  br label %for.inc.18

for.inc.18:                                       ; preds = %for.body.10
  %31 = load i32, i32* %i, align 4
  %inc19 = add nsw i32 %31, 1
  store i32 %inc19, i32* %i, align 4
  %32 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr20 = getelementptr inbounds %struct.site, %struct.site* %32, i32 1
  store %struct.site* %incdec.ptr20, %struct.site** %s, align 8
  br label %for.cond.7

for.end.21:                                       ; preds = %for.cond.7
  %33 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmpvec, align 8
  %34 = bitcast %struct.half_wilson_vector* %33 to i8*
  %35 = load i32, i32* %dir.addr, align 4
  %36 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %call22 = call %struct.msg_tag* @start_gather_from_temp(i8* %34, i32 96, i32 %35, i32 3, i8** %36)
  store %struct.msg_tag* %call22, %struct.msg_tag** %mtag, align 8
  %37 = load %struct.msg_tag*, %struct.msg_tag** %mtag, align 8
  call void @wait_gather(%struct.msg_tag* %37)
  store i32 0, i32* %i, align 4
  %38 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %38, %struct.site** %s, align 8
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.31, %for.end.21
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* @sites_on_node, align 4
  %cmp24 = icmp slt i32 %39, %40
  br i1 %cmp24, label %for.body.26, label %for.end.34

for.body.26:                                      ; preds = %for.cond.23
  %41 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %41 to i64
  %42 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %dest.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %42, i64 %idxprom27
  %43 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %43 to i64
  %44 = load i8**, i8*** getelementptr inbounds ([16 x i8**], [16 x i8**]* @gen_pt, i32 0, i64 0), align 8
  %arrayidx30 = getelementptr inbounds i8*, i8** %44, i64 %idxprom29
  %45 = load i8*, i8** %arrayidx30, align 8
  %46 = bitcast i8* %45 to %struct.half_wilson_vector*
  %47 = bitcast %struct.half_wilson_vector* %arrayidx28 to i8*
  %48 = bitcast %struct.half_wilson_vector* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %47, i8* %48, i64 96, i32 8, i1 false)
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.26
  %49 = load i32, i32* %i, align 4
  %inc32 = add nsw i32 %49, 1
  store i32 %inc32, i32* %i, align 4
  %50 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr33 = getelementptr inbounds %struct.site, %struct.site* %50, i32 1
  store %struct.site* %incdec.ptr33, %struct.site** %s, align 8
  br label %for.cond.23

for.end.34:                                       ; preds = %for.cond.23
  %51 = load %struct.msg_tag*, %struct.msg_tag** %mtag, align 8
  call void @cleanup_gather(%struct.msg_tag* %51)
  %52 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %tmpvec, align 8
  %53 = bitcast %struct.half_wilson_vector* %52 to i8*
  call void @free(i8* %53) #4
  br label %if.end

if.end:                                           ; preds = %for.end.34, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_3f_force_to_mom(%struct.half_wilson_vector* %back, %struct.half_wilson_vector* %forw, i32 %dir, double* %coeff) #0 {
entry:
  %back.addr = alloca %struct.half_wilson_vector*, align 8
  %forw.addr = alloca %struct.half_wilson_vector*, align 8
  %dir.addr = alloca i32, align 4
  %coeff.addr = alloca double*, align 8
  %s = alloca %struct.site*, align 8
  %i = alloca i32, align 4
  %tmp_coeff = alloca [2 x double], align 16
  %tmat = alloca %struct.su3_matrix, align 8
  %tmat2 = alloca %struct.su3_matrix, align 8
  store %struct.half_wilson_vector* %back, %struct.half_wilson_vector** %back.addr, align 8
  store %struct.half_wilson_vector* %forw, %struct.half_wilson_vector** %forw.addr, align 8
  store i32 %dir, i32* %dir.addr, align 4
  store double* %coeff, double** %coeff.addr, align 8
  %0 = load i32, i32* %dir.addr, align 4
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %dir.addr, align 4
  %sub = sub nsw i32 7, %1
  store i32 %sub, i32* %dir.addr, align 4
  %2 = load double*, double** %coeff.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %2, i64 0
  %3 = load double, double* %arrayidx, align 8
  %sub1 = fsub double -0.000000e+00, %3
  %4 = load double*, double** %coeff.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %4, i64 0
  store double %sub1, double* %arrayidx2, align 8
  %5 = load double*, double** %coeff.addr, align 8
  %arrayidx3 = getelementptr inbounds double, double* %5, i64 1
  %6 = load double, double* %arrayidx3, align 8
  %sub4 = fsub double -0.000000e+00, %6
  %7 = load double*, double** %coeff.addr, align 8
  %arrayidx5 = getelementptr inbounds double, double* %7, i64 1
  store double %sub4, double* %arrayidx5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i32 0, i32* %i, align 4
  %8 = load %struct.site*, %struct.site** @lattice, align 8
  store %struct.site* %8, %struct.site** %s, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* @sites_on_node, align 4
  %cmp6 = icmp slt i32 %9, %10
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.site*, %struct.site** %s, align 8
  %parity = getelementptr inbounds %struct.site, %struct.site* %11, i32 0, i32 4
  %12 = load i8, i8* %parity, align 1
  %conv = sext i8 %12 to i32
  %cmp7 = icmp eq i32 %conv, 1
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %for.body
  %13 = load double*, double** %coeff.addr, align 8
  %arrayidx10 = getelementptr inbounds double, double* %13, i64 0
  %14 = load double, double* %arrayidx10, align 8
  %sub11 = fsub double -0.000000e+00, %14
  %arrayidx12 = getelementptr inbounds [2 x double], [2 x double]* %tmp_coeff, i32 0, i64 0
  store double %sub11, double* %arrayidx12, align 8
  %15 = load double*, double** %coeff.addr, align 8
  %arrayidx13 = getelementptr inbounds double, double* %15, i64 1
  %16 = load double, double* %arrayidx13, align 8
  %sub14 = fsub double -0.000000e+00, %16
  %arrayidx15 = getelementptr inbounds [2 x double], [2 x double]* %tmp_coeff, i32 0, i64 1
  store double %sub14, double* %arrayidx15, align 8
  br label %if.end.20

if.else:                                          ; preds = %for.body
  %17 = load double*, double** %coeff.addr, align 8
  %arrayidx16 = getelementptr inbounds double, double* %17, i64 0
  %18 = load double, double* %arrayidx16, align 8
  %arrayidx17 = getelementptr inbounds [2 x double], [2 x double]* %tmp_coeff, i32 0, i64 0
  store double %18, double* %arrayidx17, align 8
  %19 = load double*, double** %coeff.addr, align 8
  %arrayidx18 = getelementptr inbounds double, double* %19, i64 1
  %20 = load double, double* %arrayidx18, align 8
  %arrayidx19 = getelementptr inbounds [2 x double], [2 x double]* %tmp_coeff, i32 0, i64 1
  store double %20, double* %arrayidx19, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.9
  %21 = load i32, i32* %dir.addr, align 4
  %idxprom = sext i32 %21 to i64
  %22 = load %struct.site*, %struct.site** %s, align 8
  %mom = getelementptr inbounds %struct.site, %struct.site* %22, i32 0, i32 9
  %arrayidx21 = getelementptr inbounds [4 x %struct.anti_hermitmat], [4 x %struct.anti_hermitmat]* %mom, i32 0, i64 %idxprom
  call void @uncompress_anti_hermitian(%struct.anti_hermitmat* %arrayidx21, %struct.su3_matrix* %tmat2)
  %23 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %23 to i64
  %24 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %back.addr, align 8
  %arrayidx23 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %24, i64 %idxprom22
  %h = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx23, i32 0, i32 0
  %arrayidx24 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h, i32 0, i64 0
  %25 = load i32, i32* %i, align 4
  %idxprom25 = sext i32 %25 to i64
  %26 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %forw.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %26, i64 %idxprom25
  %h27 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx26, i32 0, i32 0
  %arrayidx28 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h27, i32 0, i64 0
  call void @su3_projector(%struct.su3_vector* %arrayidx24, %struct.su3_vector* %arrayidx28, %struct.su3_matrix* %tmat)
  %arrayidx29 = getelementptr inbounds [2 x double], [2 x double]* %tmp_coeff, i32 0, i64 0
  %27 = load double, double* %arrayidx29, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %tmat2, %struct.su3_matrix* %tmat, double %27, %struct.su3_matrix* %tmat2)
  %28 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %28 to i64
  %29 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %back.addr, align 8
  %arrayidx31 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %29, i64 %idxprom30
  %h32 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx31, i32 0, i32 0
  %arrayidx33 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h32, i32 0, i64 1
  %30 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %30 to i64
  %31 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %forw.addr, align 8
  %arrayidx35 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %31, i64 %idxprom34
  %h36 = getelementptr inbounds %struct.half_wilson_vector, %struct.half_wilson_vector* %arrayidx35, i32 0, i32 0
  %arrayidx37 = getelementptr inbounds [2 x %struct.su3_vector], [2 x %struct.su3_vector]* %h36, i32 0, i64 1
  call void @su3_projector(%struct.su3_vector* %arrayidx33, %struct.su3_vector* %arrayidx37, %struct.su3_matrix* %tmat)
  %arrayidx38 = getelementptr inbounds [2 x double], [2 x double]* %tmp_coeff, i32 0, i64 1
  %32 = load double, double* %arrayidx38, align 8
  call void @scalar_mult_add_su3_matrix(%struct.su3_matrix* %tmat2, %struct.su3_matrix* %tmat, double %32, %struct.su3_matrix* %tmat2)
  %33 = load i32, i32* %dir.addr, align 4
  %idxprom39 = sext i32 %33 to i64
  %34 = load %struct.site*, %struct.site** %s, align 8
  %mom40 = getelementptr inbounds %struct.site, %struct.site* %34, i32 0, i32 9
  %arrayidx41 = getelementptr inbounds [4 x %struct.anti_hermitmat], [4 x %struct.anti_hermitmat]* %mom40, i32 0, i64 %idxprom39
  call void @make_anti_hermitian(%struct.su3_matrix* %tmat2, %struct.anti_hermitmat* %arrayidx41)
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %35 = load i32, i32* %i, align 4
  %inc = add nsw i32 %35, 1
  store i32 %inc, i32* %i, align 4
  %36 = load %struct.site*, %struct.site** %s, align 8
  %incdec.ptr = getelementptr inbounds %struct.site, %struct.site* %36, i32 1
  store %struct.site* %incdec.ptr, %struct.site** %s, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @side_link_3f_force(i32 %mu, i32 %nu, double* %coeff, %struct.half_wilson_vector* %Path, %struct.half_wilson_vector* %Path_nu, %struct.half_wilson_vector* %Path_mu, %struct.half_wilson_vector* %Path_numu) #0 {
entry:
  %mu.addr = alloca i32, align 4
  %nu.addr = alloca i32, align 4
  %coeff.addr = alloca double*, align 8
  %Path.addr = alloca %struct.half_wilson_vector*, align 8
  %Path_nu.addr = alloca %struct.half_wilson_vector*, align 8
  %Path_mu.addr = alloca %struct.half_wilson_vector*, align 8
  %Path_numu.addr = alloca %struct.half_wilson_vector*, align 8
  %m_coeff = alloca [2 x double], align 16
  store i32 %mu, i32* %mu.addr, align 4
  store i32 %nu, i32* %nu.addr, align 4
  store double* %coeff, double** %coeff.addr, align 8
  store %struct.half_wilson_vector* %Path, %struct.half_wilson_vector** %Path.addr, align 8
  store %struct.half_wilson_vector* %Path_nu, %struct.half_wilson_vector** %Path_nu.addr, align 8
  store %struct.half_wilson_vector* %Path_mu, %struct.half_wilson_vector** %Path_mu.addr, align 8
  store %struct.half_wilson_vector* %Path_numu, %struct.half_wilson_vector** %Path_numu.addr, align 8
  %0 = load double*, double** %coeff.addr, align 8
  %arrayidx = getelementptr inbounds double, double* %0, i64 0
  %1 = load double, double* %arrayidx, align 8
  %sub = fsub double -0.000000e+00, %1
  %arrayidx1 = getelementptr inbounds [2 x double], [2 x double]* %m_coeff, i32 0, i64 0
  store double %sub, double* %arrayidx1, align 8
  %2 = load double*, double** %coeff.addr, align 8
  %arrayidx2 = getelementptr inbounds double, double* %2, i64 1
  %3 = load double, double* %arrayidx2, align 8
  %sub3 = fsub double -0.000000e+00, %3
  %arrayidx4 = getelementptr inbounds [2 x double], [2 x double]* %m_coeff, i32 0, i64 1
  store double %sub3, double* %arrayidx4, align 8
  %4 = load i32, i32* %mu.addr, align 4
  %cmp = icmp sle i32 %4, 3
  br i1 %cmp, label %if.then, label %if.else.8

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %nu.addr, align 4
  %cmp5 = icmp sle i32 %5, 3
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.then
  %6 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %Path_numu.addr, align 8
  %7 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %Path.addr, align 8
  %8 = load i32, i32* %mu.addr, align 4
  %9 = load double*, double** %coeff.addr, align 8
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %6, %struct.half_wilson_vector* %7, i32 %8, double* %9)
  br label %if.end

if.else:                                          ; preds = %if.then
  %10 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %Path.addr, align 8
  %11 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %Path_numu.addr, align 8
  %12 = load i32, i32* %mu.addr, align 4
  %sub7 = sub nsw i32 7, %12
  %arraydecay = getelementptr inbounds [2 x double], [2 x double]* %m_coeff, i32 0, i32 0
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %10, %struct.half_wilson_vector* %11, i32 %sub7, double* %arraydecay)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.15

if.else.8:                                        ; preds = %entry
  %13 = load i32, i32* %nu.addr, align 4
  %cmp9 = icmp sle i32 %13, 3
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else.8
  %14 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %Path_nu.addr, align 8
  %15 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %Path_mu.addr, align 8
  %16 = load i32, i32* %mu.addr, align 4
  %arraydecay11 = getelementptr inbounds [2 x double], [2 x double]* %m_coeff, i32 0, i32 0
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %14, %struct.half_wilson_vector* %15, i32 %16, double* %arraydecay11)
  br label %if.end.14

if.else.12:                                       ; preds = %if.else.8
  %17 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %Path_mu.addr, align 8
  %18 = load %struct.half_wilson_vector*, %struct.half_wilson_vector** %Path_nu.addr, align 8
  %19 = load i32, i32* %mu.addr, align 4
  %sub13 = sub nsw i32 7, %19
  %20 = load double*, double** %coeff.addr, align 8
  call void @add_3f_force_to_mom(%struct.half_wilson_vector* %17, %struct.half_wilson_vector* %18, i32 %sub13, double* %20)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.10
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  ret void
}

declare %struct.msg_tag* @start_gather(i32, i32, i32, i32, i8**) #1

declare void @mult_su3_na(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #1

declare void @mult_su3_nn(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #1

declare void @mult_su3_an(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #1

declare void @add_su3_matrix(%struct.su3_matrix*, %struct.su3_matrix*, %struct.su3_matrix*) #1

declare void @uncompress_anti_hermitian(%struct.anti_hermitmat*, %struct.su3_matrix*) #1

declare void @su3_projector(%struct.su3_vector*, %struct.su3_vector*, %struct.su3_matrix*) #1

declare void @make_anti_hermitian(%struct.su3_matrix*, %struct.anti_hermitmat*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
