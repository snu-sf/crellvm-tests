; ModuleID = 'insn-opinit.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optab = type { i32, [59 x %struct.anon] }
%struct.anon = type { i32, %struct.rtx_def* }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }

@target_flags = external global i32, align 4
@extendtab = external global [59 x [59 x [2 x i32]]], align 16
@floattab = external global [59 x [59 x [2 x i32]]], align 16
@x86_qimode_math = external constant i32, align 4
@ix86_cpu = external global i32, align 4
@optab_table = external global [49 x %struct.optab*], align 16
@x86_himode_math = external constant i32, align 4
@flag_unsafe_math_optimizations = external global i32, align 4
@x86_partial_reg_stall = external constant i32, align 4
@optimize_size = external global i32, align 4
@reload_out_optab = external global [59 x i32], align 16
@fixtrunctab = external global [59 x [59 x [2 x i32]]], align 16
@ix86_fpmath = external global i32, align 4
@setcc_gen_code = external global [153 x i32], align 16
@bcc_gen_fctn = external global [153 x %struct.rtx_def* (%struct.rtx_def*)*], align 16
@movstr_optab = external global [59 x i32], align 16
@clrstr_optab = external global [59 x i32], align 16
@movcc_gen_code = external global [59 x i32], align 16
@x86_cmove = external constant i32, align 4
@ix86_arch = external global i32, align 4

; Function Attrs: nounwind uwtable
define void @init_all_optabs() #0 {
entry:
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 117, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 5, i64 3, i64 1), align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* @target_flags, align 4
  %and1 = and i32 %1, 33554432
  %tobool2 = icmp ne i32 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 118, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 5, i64 2, i64 1), align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %2 = load i32, i32* @target_flags, align 4
  %and5 = and i32 %2, 33554432
  %tobool6 = icmp ne i32 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i32 121, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 5, i64 3, i64 0), align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.4
  %3 = load i32, i32* @target_flags, align 4
  %and9 = and i32 %3, 33554432
  %tobool10 = icmp ne i32 %and9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i32 122, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 5, i64 2, i64 0), align 4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %if.end.8
  store i32 123, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 4, i64 3, i64 0), align 4
  store i32 125, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 3, i64 2, i64 0), align 4
  store i32 126, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 4, i64 2, i64 0), align 4
  %4 = load i32, i32* @target_flags, align 4
  %and13 = and i32 %4, 1
  %tobool14 = icmp ne i32 %and13, 0
  br i1 %tobool14, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.12
  %5 = load i32, i32* @target_flags, align 4
  %and15 = and i32 %5, 327680
  %cmp = icmp ne i32 %and15, 0
  br i1 %cmp, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %land.lhs.true
  store i32 167, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 15, i64 3, i64 0), align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true, %if.end.12
  %6 = load i32, i32* @target_flags, align 4
  %and18 = and i32 %6, 1
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %land.lhs.true.20, label %if.end.24

land.lhs.true.20:                                 ; preds = %if.end.17
  %7 = load i32, i32* @target_flags, align 4
  %and21 = and i32 %7, 262144
  %cmp22 = icmp ne i32 %and21, 0
  br i1 %cmp22, label %if.end.24, label %if.then.23

if.then.23:                                       ; preds = %land.lhs.true.20
  store i32 173, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 16, i64 3, i64 0), align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %land.lhs.true.20, %if.end.17
  %8 = load i32, i32* @target_flags, align 4
  %and25 = and i32 %8, 33554432
  %tobool26 = icmp ne i32 %and25, 0
  br i1 %tobool26, label %if.end.31, label %land.lhs.true.27

land.lhs.true.27:                                 ; preds = %if.end.24
  %9 = load i32, i32* @target_flags, align 4
  %and28 = and i32 %9, 1
  %tobool29 = icmp ne i32 %and28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %land.lhs.true.27
  store i32 179, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 17, i64 3, i64 0), align 4
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.30, %land.lhs.true.27, %if.end.24
  %10 = load i32, i32* @target_flags, align 4
  %and32 = and i32 %10, 1
  %tobool33 = icmp ne i32 %and32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.end.31
  store i32 180, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 18, i64 3, i64 0), align 4
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %if.end.31
  %11 = load i32, i32* @target_flags, align 4
  %and36 = and i32 %11, 33554432
  %tobool37 = icmp ne i32 %and36, 0
  br i1 %tobool37, label %if.end.42, label %land.lhs.true.38

land.lhs.true.38:                                 ; preds = %if.end.35
  %12 = load i32, i32* @target_flags, align 4
  %and39 = and i32 %12, 1
  %tobool40 = icmp ne i32 %and39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %land.lhs.true.38
  store i32 181, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 17, i64 4, i64 0), align 4
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %land.lhs.true.38, %if.end.35
  %13 = load i32, i32* @target_flags, align 4
  %and43 = and i32 %13, 1
  %tobool44 = icmp ne i32 %and43, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  store i32 182, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 18, i64 4, i64 0), align 4
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %14 = load i32, i32* @target_flags, align 4
  %and47 = and i32 %14, 33554432
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.end.53, label %land.lhs.true.49

land.lhs.true.49:                                 ; preds = %if.end.46
  %15 = load i32, i32* @target_flags, align 4
  %and50 = and i32 %15, 1
  %tobool51 = icmp ne i32 %and50, 0
  br i1 %tobool51, label %if.then.52, label %if.end.53

if.then.52:                                       ; preds = %land.lhs.true.49
  store i32 183, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 17, i64 5, i64 0), align 4
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %land.lhs.true.49, %if.end.46
  %16 = load i32, i32* @target_flags, align 4
  %and54 = and i32 %16, 1
  %tobool55 = icmp ne i32 %and54, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.53
  store i32 184, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 18, i64 5, i64 0), align 4
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.56, %if.end.53
  %17 = load i32, i32* @x86_qimode_math, align 4
  %18 = load i32, i32* @ix86_cpu, align 4
  %shl = shl i32 1, %18
  %and58 = and i32 %17, %shl
  %tobool59 = icmp ne i32 %and58, 0
  br i1 %tobool59, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.57
  %19 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %19, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers, i32 0, i64 2
  %insn_code = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx, i32 0, i32 0
  store i32 266, i32* %insn_code, align 4
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.60, %if.end.57
  %20 = load i32, i32* @x86_qimode_math, align 4
  %21 = load i32, i32* @ix86_cpu, align 4
  %shl62 = shl i32 1, %21
  %and63 = and i32 %20, %shl62
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %if.then.65, label %if.end.69

if.then.65:                                       ; preds = %if.end.61
  %22 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 13), align 8
  %handlers66 = getelementptr inbounds %struct.optab, %struct.optab* %22, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers66, i32 0, i64 2
  %insn_code68 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx67, i32 0, i32 0
  store i32 267, i32* %insn_code68, align 4
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.65, %if.end.61
  %23 = load i32, i32* @x86_himode_math, align 4
  %24 = load i32, i32* @ix86_cpu, align 4
  %shl70 = shl i32 1, %24
  %and71 = and i32 %23, %shl70
  %tobool72 = icmp ne i32 %and71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.77

if.then.73:                                       ; preds = %if.end.69
  %25 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  %handlers74 = getelementptr inbounds %struct.optab, %struct.optab* %25, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers74, i32 0, i64 3
  %insn_code76 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx75, i32 0, i32 0
  store i32 274, i32* %insn_code76, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.73, %if.end.69
  %26 = load i32, i32* @target_flags, align 4
  %and78 = and i32 %26, 33554432
  %tobool79 = icmp ne i32 %and78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.84

if.then.80:                                       ; preds = %if.end.77
  %27 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 14), align 8
  %handlers81 = getelementptr inbounds %struct.optab, %struct.optab* %27, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers81, i32 0, i64 5
  %insn_code83 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx82, i32 0, i32 0
  store i32 275, i32* %insn_code83, align 4
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.80, %if.end.77
  %28 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 14), align 8
  %handlers85 = getelementptr inbounds %struct.optab, %struct.optab* %28, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers85, i32 0, i64 4
  %insn_code87 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx86, i32 0, i32 0
  store i32 277, i32* %insn_code87, align 4
  %29 = load i32, i32* @target_flags, align 4
  %and88 = and i32 %29, 33554432
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.end.104, label %land.lhs.true.90

land.lhs.true.90:                                 ; preds = %if.end.84
  %30 = load i32, i32* @target_flags, align 4
  %and91 = and i32 %30, 1
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %land.lhs.true.93, label %if.end.104

land.lhs.true.93:                                 ; preds = %land.lhs.true.90
  %31 = load i32, i32* @target_flags, align 4
  %and94 = and i32 %31, 64
  %tobool95 = icmp ne i32 %and94, 0
  br i1 %tobool95, label %if.end.104, label %land.lhs.true.96

land.lhs.true.96:                                 ; preds = %land.lhs.true.93
  %32 = load i32, i32* @target_flags, align 4
  %and97 = and i32 %32, 16
  %tobool98 = icmp ne i32 %and97, 0
  br i1 %tobool98, label %if.then.100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.96
  %33 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool99 = icmp ne i32 %33, 0
  br i1 %tobool99, label %if.then.100, label %if.end.104

if.then.100:                                      ; preds = %lor.lhs.false, %land.lhs.true.96
  %34 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 38), align 8
  %handlers101 = getelementptr inbounds %struct.optab, %struct.optab* %34, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers101, i32 0, i64 17
  %insn_code103 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx102, i32 0, i32 0
  store i32 566, i32* %insn_code103, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.100, %lor.lhs.false, %land.lhs.true.93, %land.lhs.true.90, %if.end.84
  %35 = load i32, i32* @target_flags, align 4
  %and105 = and i32 %35, 64
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.end.119, label %land.lhs.true.107

land.lhs.true.107:                                ; preds = %if.end.104
  %36 = load i32, i32* @target_flags, align 4
  %and108 = and i32 %36, 1
  %tobool109 = icmp ne i32 %and108, 0
  br i1 %tobool109, label %land.lhs.true.110, label %if.end.119

land.lhs.true.110:                                ; preds = %land.lhs.true.107
  %37 = load i32, i32* @target_flags, align 4
  %and111 = and i32 %37, 16
  %tobool112 = icmp ne i32 %and111, 0
  br i1 %tobool112, label %if.then.115, label %lor.lhs.false.113

lor.lhs.false.113:                                ; preds = %land.lhs.true.110
  %38 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool114 = icmp ne i32 %38, 0
  br i1 %tobool114, label %if.then.115, label %if.end.119

if.then.115:                                      ; preds = %lor.lhs.false.113, %land.lhs.true.110
  %39 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 38), align 8
  %handlers116 = getelementptr inbounds %struct.optab, %struct.optab* %39, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers116, i32 0, i64 18
  %insn_code118 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx117, i32 0, i32 0
  store i32 567, i32* %insn_code118, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.then.115, %lor.lhs.false.113, %land.lhs.true.107, %if.end.104
  %40 = load i32, i32* @target_flags, align 4
  %and120 = and i32 %40, 64
  %tobool121 = icmp ne i32 %and120, 0
  br i1 %tobool121, label %if.end.131, label %land.lhs.true.122

land.lhs.true.122:                                ; preds = %if.end.119
  %41 = load i32, i32* @target_flags, align 4
  %and123 = and i32 %41, 1
  %tobool124 = icmp ne i32 %and123, 0
  br i1 %tobool124, label %land.lhs.true.125, label %if.end.131

land.lhs.true.125:                                ; preds = %land.lhs.true.122
  %42 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool126 = icmp ne i32 %42, 0
  br i1 %tobool126, label %if.then.127, label %if.end.131

if.then.127:                                      ; preds = %land.lhs.true.125
  %43 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 39), align 8
  %handlers128 = getelementptr inbounds %struct.optab, %struct.optab* %43, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers128, i32 0, i64 16
  %insn_code130 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx129, i32 0, i32 0
  store i32 572, i32* %insn_code130, align 4
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.127, %land.lhs.true.125, %land.lhs.true.122, %if.end.119
  %44 = load i32, i32* @target_flags, align 4
  %and132 = and i32 %44, 64
  %tobool133 = icmp ne i32 %and132, 0
  br i1 %tobool133, label %if.end.143, label %land.lhs.true.134

land.lhs.true.134:                                ; preds = %if.end.131
  %45 = load i32, i32* @target_flags, align 4
  %and135 = and i32 %45, 1
  %tobool136 = icmp ne i32 %and135, 0
  br i1 %tobool136, label %land.lhs.true.137, label %if.end.143

land.lhs.true.137:                                ; preds = %land.lhs.true.134
  %46 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool138 = icmp ne i32 %46, 0
  br i1 %tobool138, label %if.then.139, label %if.end.143

if.then.139:                                      ; preds = %land.lhs.true.137
  %47 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 39), align 8
  %handlers140 = getelementptr inbounds %struct.optab, %struct.optab* %47, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers140, i32 0, i64 15
  %insn_code142 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx141, i32 0, i32 0
  store i32 573, i32* %insn_code142, align 4
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.139, %land.lhs.true.137, %land.lhs.true.134, %if.end.131
  %48 = load i32, i32* @target_flags, align 4
  %and144 = and i32 %48, 33554432
  %tobool145 = icmp ne i32 %and144, 0
  br i1 %tobool145, label %if.end.158, label %land.lhs.true.146

land.lhs.true.146:                                ; preds = %if.end.143
  %49 = load i32, i32* @target_flags, align 4
  %and147 = and i32 %49, 1
  %tobool148 = icmp ne i32 %and147, 0
  br i1 %tobool148, label %land.lhs.true.149, label %if.end.158

land.lhs.true.149:                                ; preds = %land.lhs.true.146
  %50 = load i32, i32* @target_flags, align 4
  %and150 = and i32 %50, 64
  %tobool151 = icmp ne i32 %and150, 0
  br i1 %tobool151, label %if.end.158, label %land.lhs.true.152

land.lhs.true.152:                                ; preds = %land.lhs.true.149
  %51 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool153 = icmp ne i32 %51, 0
  br i1 %tobool153, label %if.then.154, label %if.end.158

if.then.154:                                      ; preds = %land.lhs.true.152
  %52 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 39), align 8
  %handlers155 = getelementptr inbounds %struct.optab, %struct.optab* %52, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers155, i32 0, i64 17
  %insn_code157 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx156, i32 0, i32 0
  store i32 575, i32* %insn_code157, align 4
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.154, %land.lhs.true.152, %land.lhs.true.149, %land.lhs.true.146, %if.end.143
  %53 = load i32, i32* @target_flags, align 4
  %and159 = and i32 %53, 64
  %tobool160 = icmp ne i32 %and159, 0
  br i1 %tobool160, label %if.end.170, label %land.lhs.true.161

land.lhs.true.161:                                ; preds = %if.end.158
  %54 = load i32, i32* @target_flags, align 4
  %and162 = and i32 %54, 1
  %tobool163 = icmp ne i32 %and162, 0
  br i1 %tobool163, label %land.lhs.true.164, label %if.end.170

land.lhs.true.164:                                ; preds = %land.lhs.true.161
  %55 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool165 = icmp ne i32 %55, 0
  br i1 %tobool165, label %if.then.166, label %if.end.170

if.then.166:                                      ; preds = %land.lhs.true.164
  %56 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 39), align 8
  %handlers167 = getelementptr inbounds %struct.optab, %struct.optab* %56, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers167, i32 0, i64 18
  %insn_code169 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx168, i32 0, i32 0
  store i32 576, i32* %insn_code169, align 4
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.166, %land.lhs.true.164, %land.lhs.true.161, %if.end.158
  %57 = load i32, i32* @target_flags, align 4
  %and171 = and i32 %57, 64
  %tobool172 = icmp ne i32 %and171, 0
  br i1 %tobool172, label %if.end.182, label %land.lhs.true.173

land.lhs.true.173:                                ; preds = %if.end.170
  %58 = load i32, i32* @target_flags, align 4
  %and174 = and i32 %58, 1
  %tobool175 = icmp ne i32 %and174, 0
  br i1 %tobool175, label %land.lhs.true.176, label %if.end.182

land.lhs.true.176:                                ; preds = %land.lhs.true.173
  %59 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool177 = icmp ne i32 %59, 0
  br i1 %tobool177, label %if.then.178, label %if.end.182

if.then.178:                                      ; preds = %land.lhs.true.176
  %60 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 40), align 8
  %handlers179 = getelementptr inbounds %struct.optab, %struct.optab* %60, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers179, i32 0, i64 16
  %insn_code181 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx180, i32 0, i32 0
  store i32 577, i32* %insn_code181, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.178, %land.lhs.true.176, %land.lhs.true.173, %if.end.170
  %61 = load i32, i32* @target_flags, align 4
  %and183 = and i32 %61, 64
  %tobool184 = icmp ne i32 %and183, 0
  br i1 %tobool184, label %if.end.194, label %land.lhs.true.185

land.lhs.true.185:                                ; preds = %if.end.182
  %62 = load i32, i32* @target_flags, align 4
  %and186 = and i32 %62, 1
  %tobool187 = icmp ne i32 %and186, 0
  br i1 %tobool187, label %land.lhs.true.188, label %if.end.194

land.lhs.true.188:                                ; preds = %land.lhs.true.185
  %63 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool189 = icmp ne i32 %63, 0
  br i1 %tobool189, label %if.then.190, label %if.end.194

if.then.190:                                      ; preds = %land.lhs.true.188
  %64 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 40), align 8
  %handlers191 = getelementptr inbounds %struct.optab, %struct.optab* %64, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers191, i32 0, i64 15
  %insn_code193 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx192, i32 0, i32 0
  store i32 578, i32* %insn_code193, align 4
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.190, %land.lhs.true.188, %land.lhs.true.185, %if.end.182
  %65 = load i32, i32* @target_flags, align 4
  %and195 = and i32 %65, 64
  %tobool196 = icmp ne i32 %and195, 0
  br i1 %tobool196, label %if.end.206, label %land.lhs.true.197

land.lhs.true.197:                                ; preds = %if.end.194
  %66 = load i32, i32* @target_flags, align 4
  %and198 = and i32 %66, 1
  %tobool199 = icmp ne i32 %and198, 0
  br i1 %tobool199, label %land.lhs.true.200, label %if.end.206

land.lhs.true.200:                                ; preds = %land.lhs.true.197
  %67 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool201 = icmp ne i32 %67, 0
  br i1 %tobool201, label %if.then.202, label %if.end.206

if.then.202:                                      ; preds = %land.lhs.true.200
  %68 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 40), align 8
  %handlers203 = getelementptr inbounds %struct.optab, %struct.optab* %68, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers203, i32 0, i64 17
  %insn_code205 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx204, i32 0, i32 0
  store i32 580, i32* %insn_code205, align 4
  br label %if.end.206

if.end.206:                                       ; preds = %if.then.202, %land.lhs.true.200, %land.lhs.true.197, %if.end.194
  %69 = load i32, i32* @target_flags, align 4
  %and207 = and i32 %69, 64
  %tobool208 = icmp ne i32 %and207, 0
  br i1 %tobool208, label %if.end.218, label %land.lhs.true.209

land.lhs.true.209:                                ; preds = %if.end.206
  %70 = load i32, i32* @target_flags, align 4
  %and210 = and i32 %70, 1
  %tobool211 = icmp ne i32 %and210, 0
  br i1 %tobool211, label %land.lhs.true.212, label %if.end.218

land.lhs.true.212:                                ; preds = %land.lhs.true.209
  %71 = load i32, i32* @flag_unsafe_math_optimizations, align 4
  %tobool213 = icmp ne i32 %71, 0
  br i1 %tobool213, label %if.then.214, label %if.end.218

if.then.214:                                      ; preds = %land.lhs.true.212
  %72 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 40), align 8
  %handlers215 = getelementptr inbounds %struct.optab, %struct.optab* %72, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers215, i32 0, i64 18
  %insn_code217 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx216, i32 0, i32 0
  store i32 581, i32* %insn_code217, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.214, %land.lhs.true.212, %land.lhs.true.209, %if.end.206
  %73 = load i32, i32* @target_flags, align 4
  %and219 = and i32 %73, 327680
  %cmp220 = icmp ne i32 %and219, 0
  br i1 %cmp220, label %if.then.221, label %if.end.228

if.then.221:                                      ; preds = %if.end.218
  %74 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers222 = getelementptr inbounds %struct.optab, %struct.optab* %74, i32 0, i32 1
  %arrayidx223 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers222, i32 0, i64 46
  %insn_code224 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx223, i32 0, i32 0
  store i32 690, i32* %insn_code224, align 4
  %75 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  %handlers225 = getelementptr inbounds %struct.optab, %struct.optab* %75, i32 0, i32 1
  %arrayidx226 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers225, i32 0, i64 46
  %insn_code227 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx226, i32 0, i32 0
  store i32 690, i32* %insn_code227, align 4
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.221, %if.end.218
  %76 = load i32, i32* @target_flags, align 4
  %and229 = and i32 %76, 327680
  %cmp230 = icmp ne i32 %and229, 0
  br i1 %cmp230, label %if.then.231, label %if.end.238

if.then.231:                                      ; preds = %if.end.228
  %77 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers232 = getelementptr inbounds %struct.optab, %struct.optab* %77, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers232, i32 0, i64 46
  %insn_code234 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx233, i32 0, i32 0
  store i32 692, i32* %insn_code234, align 4
  %78 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  %handlers235 = getelementptr inbounds %struct.optab, %struct.optab* %78, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers235, i32 0, i64 46
  %insn_code237 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx236, i32 0, i32 0
  store i32 692, i32* %insn_code237, align 4
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.231, %if.end.228
  %79 = load i32, i32* @target_flags, align 4
  %and239 = and i32 %79, 327680
  %cmp240 = icmp ne i32 %and239, 0
  br i1 %cmp240, label %if.then.241, label %if.end.248

if.then.241:                                      ; preds = %if.end.238
  %80 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers242 = getelementptr inbounds %struct.optab, %struct.optab* %80, i32 0, i32 1
  %arrayidx243 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers242, i32 0, i64 46
  %insn_code244 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx243, i32 0, i32 0
  store i32 694, i32* %insn_code244, align 4
  %81 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  %handlers245 = getelementptr inbounds %struct.optab, %struct.optab* %81, i32 0, i32 1
  %arrayidx246 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers245, i32 0, i64 46
  %insn_code247 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx246, i32 0, i32 0
  store i32 694, i32* %insn_code247, align 4
  br label %if.end.248

if.end.248:                                       ; preds = %if.then.241, %if.end.238
  %82 = load i32, i32* @target_flags, align 4
  %and249 = and i32 %82, 327680
  %cmp250 = icmp ne i32 %and249, 0
  br i1 %cmp250, label %if.then.251, label %if.end.255

if.then.251:                                      ; preds = %if.end.248
  %83 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %handlers252 = getelementptr inbounds %struct.optab, %struct.optab* %83, i32 0, i32 1
  %arrayidx253 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers252, i32 0, i64 46
  %insn_code254 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx253, i32 0, i32 0
  store i32 696, i32* %insn_code254, align 4
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.251, %if.end.248
  %84 = load i32, i32* @target_flags, align 4
  %and256 = and i32 %84, 327680
  %cmp257 = icmp ne i32 %and256, 0
  br i1 %cmp257, label %if.then.258, label %if.end.262

if.then.258:                                      ; preds = %if.end.255
  %85 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 38), align 8
  %handlers259 = getelementptr inbounds %struct.optab, %struct.optab* %85, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers259, i32 0, i64 46
  %insn_code261 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx260, i32 0, i32 0
  store i32 702, i32* %insn_code261, align 4
  br label %if.end.262

if.end.262:                                       ; preds = %if.then.258, %if.end.255
  %86 = load i32, i32* @target_flags, align 4
  %and263 = and i32 %86, 16384
  %cmp264 = icmp ne i32 %and263, 0
  br i1 %cmp264, label %if.then.265, label %if.end.269

if.then.265:                                      ; preds = %if.end.262
  %87 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers266 = getelementptr inbounds %struct.optab, %struct.optab* %87, i32 0, i32 1
  %arrayidx267 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers266, i32 0, i64 39
  %insn_code268 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx267, i32 0, i32 0
  store i32 745, i32* %insn_code268, align 4
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.265, %if.end.262
  %88 = load i32, i32* @target_flags, align 4
  %and270 = and i32 %88, 16384
  %cmp271 = icmp ne i32 %and270, 0
  br i1 %cmp271, label %if.then.272, label %if.end.276

if.then.272:                                      ; preds = %if.end.269
  %89 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers273 = getelementptr inbounds %struct.optab, %struct.optab* %89, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers273, i32 0, i64 36
  %insn_code275 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx274, i32 0, i32 0
  store i32 746, i32* %insn_code275, align 4
  br label %if.end.276

if.end.276:                                       ; preds = %if.then.272, %if.end.269
  %90 = load i32, i32* @target_flags, align 4
  %and277 = and i32 %90, 16384
  %cmp278 = icmp ne i32 %and277, 0
  br i1 %cmp278, label %if.then.279, label %if.end.283

if.then.279:                                      ; preds = %if.end.276
  %91 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers280 = getelementptr inbounds %struct.optab, %struct.optab* %91, i32 0, i32 1
  %arrayidx281 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers280, i32 0, i64 33
  %insn_code282 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx281, i32 0, i32 0
  store i32 747, i32* %insn_code282, align 4
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.279, %if.end.276
  %92 = load i32, i32* @target_flags, align 4
  %and284 = and i32 %92, 16384
  %cmp285 = icmp ne i32 %and284, 0
  br i1 %cmp285, label %if.then.286, label %if.end.290

if.then.286:                                      ; preds = %if.end.283
  %93 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers287 = getelementptr inbounds %struct.optab, %struct.optab* %93, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers287, i32 0, i64 39
  %insn_code289 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx288, i32 0, i32 0
  store i32 752, i32* %insn_code289, align 4
  br label %if.end.290

if.end.290:                                       ; preds = %if.then.286, %if.end.283
  %94 = load i32, i32* @target_flags, align 4
  %and291 = and i32 %94, 16384
  %cmp292 = icmp ne i32 %and291, 0
  br i1 %cmp292, label %if.then.293, label %if.end.297

if.then.293:                                      ; preds = %if.end.290
  %95 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers294 = getelementptr inbounds %struct.optab, %struct.optab* %95, i32 0, i32 1
  %arrayidx295 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers294, i32 0, i64 36
  %insn_code296 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx295, i32 0, i32 0
  store i32 753, i32* %insn_code296, align 4
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.293, %if.end.290
  %96 = load i32, i32* @target_flags, align 4
  %and298 = and i32 %96, 16384
  %cmp299 = icmp ne i32 %and298, 0
  br i1 %cmp299, label %if.then.300, label %if.end.304

if.then.300:                                      ; preds = %if.end.297
  %97 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers301 = getelementptr inbounds %struct.optab, %struct.optab* %97, i32 0, i32 1
  %arrayidx302 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers301, i32 0, i64 33
  %insn_code303 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx302, i32 0, i32 0
  store i32 754, i32* %insn_code303, align 4
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.300, %if.end.297
  %98 = load i32, i32* @target_flags, align 4
  %and305 = and i32 %98, 16384
  %cmp306 = icmp ne i32 %and305, 0
  br i1 %cmp306, label %if.then.307, label %if.end.311

if.then.307:                                      ; preds = %if.end.304
  %99 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers308 = getelementptr inbounds %struct.optab, %struct.optab* %99, i32 0, i32 1
  %arrayidx309 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers308, i32 0, i64 36
  %insn_code310 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx309, i32 0, i32 0
  store i32 759, i32* %insn_code310, align 4
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.307, %if.end.304
  %100 = load i32, i32* @target_flags, align 4
  %and312 = and i32 %100, 16384
  %cmp313 = icmp ne i32 %and312, 0
  br i1 %cmp313, label %if.then.314, label %if.end.318

if.then.314:                                      ; preds = %if.end.311
  %101 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 6), align 8
  %handlers315 = getelementptr inbounds %struct.optab, %struct.optab* %101, i32 0, i32 1
  %arrayidx316 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers315, i32 0, i64 36
  %insn_code317 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx316, i32 0, i32 0
  store i32 760, i32* %insn_code317, align 4
  br label %if.end.318

if.end.318:                                       ; preds = %if.then.314, %if.end.311
  %102 = load i32, i32* @target_flags, align 4
  %and319 = and i32 %102, 327680
  %cmp320 = icmp ne i32 %and319, 0
  br i1 %cmp320, label %if.then.324, label %lor.lhs.false.321

lor.lhs.false.321:                                ; preds = %if.end.318
  %103 = load i32, i32* @target_flags, align 4
  %and322 = and i32 %103, 4194304
  %cmp323 = icmp ne i32 %and322, 0
  br i1 %cmp323, label %if.then.324, label %if.end.328

if.then.324:                                      ; preds = %lor.lhs.false.321, %if.end.318
  %104 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 7), align 8
  %handlers325 = getelementptr inbounds %struct.optab, %struct.optab* %104, i32 0, i32 1
  %arrayidx326 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers325, i32 0, i64 36
  %insn_code327 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx326, i32 0, i32 0
  store i32 761, i32* %insn_code327, align 4
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.324, %lor.lhs.false.321
  %105 = load i32, i32* @target_flags, align 4
  %and329 = and i32 %105, 327680
  %cmp330 = icmp ne i32 %and329, 0
  br i1 %cmp330, label %if.then.334, label %lor.lhs.false.331

lor.lhs.false.331:                                ; preds = %if.end.328
  %106 = load i32, i32* @target_flags, align 4
  %and332 = and i32 %106, 4194304
  %cmp333 = icmp ne i32 %and332, 0
  br i1 %cmp333, label %if.then.334, label %if.end.338

if.then.334:                                      ; preds = %lor.lhs.false.331, %if.end.328
  %107 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 29), align 8
  %handlers335 = getelementptr inbounds %struct.optab, %struct.optab* %107, i32 0, i32 1
  %arrayidx336 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers335, i32 0, i64 39
  %insn_code337 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx336, i32 0, i32 0
  store i32 780, i32* %insn_code337, align 4
  br label %if.end.338

if.end.338:                                       ; preds = %if.then.334, %lor.lhs.false.331
  %108 = load i32, i32* @target_flags, align 4
  %and339 = and i32 %108, 327680
  %cmp340 = icmp ne i32 %and339, 0
  br i1 %cmp340, label %if.then.344, label %lor.lhs.false.341

lor.lhs.false.341:                                ; preds = %if.end.338
  %109 = load i32, i32* @target_flags, align 4
  %and342 = and i32 %109, 4194304
  %cmp343 = icmp ne i32 %and342, 0
  br i1 %cmp343, label %if.then.344, label %if.end.348

if.then.344:                                      ; preds = %lor.lhs.false.341, %if.end.338
  %110 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 27), align 8
  %handlers345 = getelementptr inbounds %struct.optab, %struct.optab* %110, i32 0, i32 1
  %arrayidx346 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers345, i32 0, i64 36
  %insn_code347 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx346, i32 0, i32 0
  store i32 781, i32* %insn_code347, align 4
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.344, %lor.lhs.false.341
  %111 = load i32, i32* @target_flags, align 4
  %and349 = and i32 %111, 327680
  %cmp350 = icmp ne i32 %and349, 0
  br i1 %cmp350, label %if.then.354, label %lor.lhs.false.351

lor.lhs.false.351:                                ; preds = %if.end.348
  %112 = load i32, i32* @target_flags, align 4
  %and352 = and i32 %112, 4194304
  %cmp353 = icmp ne i32 %and352, 0
  br i1 %cmp353, label %if.then.354, label %if.end.358

if.then.354:                                      ; preds = %lor.lhs.false.351, %if.end.348
  %113 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 28), align 8
  %handlers355 = getelementptr inbounds %struct.optab, %struct.optab* %113, i32 0, i32 1
  %arrayidx356 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers355, i32 0, i64 39
  %insn_code357 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx356, i32 0, i32 0
  store i32 782, i32* %insn_code357, align 4
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.354, %lor.lhs.false.351
  %114 = load i32, i32* @target_flags, align 4
  %and359 = and i32 %114, 327680
  %cmp360 = icmp ne i32 %and359, 0
  br i1 %cmp360, label %if.then.364, label %lor.lhs.false.361

lor.lhs.false.361:                                ; preds = %if.end.358
  %115 = load i32, i32* @target_flags, align 4
  %and362 = and i32 %115, 4194304
  %cmp363 = icmp ne i32 %and362, 0
  br i1 %cmp363, label %if.then.364, label %if.end.368

if.then.364:                                      ; preds = %lor.lhs.false.361, %if.end.358
  %116 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 26), align 8
  %handlers365 = getelementptr inbounds %struct.optab, %struct.optab* %116, i32 0, i32 1
  %arrayidx366 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers365, i32 0, i64 36
  %insn_code367 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx366, i32 0, i32 0
  store i32 783, i32* %insn_code367, align 4
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.364, %lor.lhs.false.361
  %117 = load i32, i32* @target_flags, align 4
  %and369 = and i32 %117, 16384
  %cmp370 = icmp ne i32 %and369, 0
  br i1 %cmp370, label %if.then.371, label %if.end.375

if.then.371:                                      ; preds = %if.end.368
  %118 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  %handlers372 = getelementptr inbounds %struct.optab, %struct.optab* %118, i32 0, i32 1
  %arrayidx373 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers372, i32 0, i64 36
  %insn_code374 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx373, i32 0, i32 0
  store i32 784, i32* %insn_code374, align 4
  br label %if.end.375

if.end.375:                                       ; preds = %if.then.371, %if.end.368
  %119 = load i32, i32* @target_flags, align 4
  %and376 = and i32 %119, 16384
  %cmp377 = icmp ne i32 %and376, 0
  br i1 %cmp377, label %if.then.378, label %if.end.382

if.then.378:                                      ; preds = %if.end.375
  %120 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  %handlers379 = getelementptr inbounds %struct.optab, %struct.optab* %120, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers379, i32 0, i64 33
  %insn_code381 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx380, i32 0, i32 0
  store i32 785, i32* %insn_code381, align 4
  br label %if.end.382

if.end.382:                                       ; preds = %if.then.378, %if.end.375
  %121 = load i32, i32* @target_flags, align 4
  %and383 = and i32 %121, 16384
  %cmp384 = icmp ne i32 %and383, 0
  br i1 %cmp384, label %if.then.385, label %if.end.389

if.then.385:                                      ; preds = %if.end.382
  %122 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %handlers386 = getelementptr inbounds %struct.optab, %struct.optab* %122, i32 0, i32 1
  %arrayidx387 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers386, i32 0, i64 36
  %insn_code388 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx387, i32 0, i32 0
  store i32 786, i32* %insn_code388, align 4
  br label %if.end.389

if.end.389:                                       ; preds = %if.then.385, %if.end.382
  %123 = load i32, i32* @target_flags, align 4
  %and390 = and i32 %123, 16384
  %cmp391 = icmp ne i32 %and390, 0
  br i1 %cmp391, label %if.then.392, label %if.end.396

if.then.392:                                      ; preds = %if.end.389
  %124 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %handlers393 = getelementptr inbounds %struct.optab, %struct.optab* %124, i32 0, i32 1
  %arrayidx394 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers393, i32 0, i64 33
  %insn_code395 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx394, i32 0, i32 0
  store i32 787, i32* %insn_code395, align 4
  br label %if.end.396

if.end.396:                                       ; preds = %if.then.392, %if.end.389
  %125 = load i32, i32* @target_flags, align 4
  %and397 = and i32 %125, 16384
  %cmp398 = icmp ne i32 %and397, 0
  br i1 %cmp398, label %if.then.399, label %if.end.403

if.then.399:                                      ; preds = %if.end.396
  %126 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %handlers400 = getelementptr inbounds %struct.optab, %struct.optab* %126, i32 0, i32 1
  %arrayidx401 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers400, i32 0, i64 36
  %insn_code402 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx401, i32 0, i32 0
  store i32 789, i32* %insn_code402, align 4
  br label %if.end.403

if.end.403:                                       ; preds = %if.then.399, %if.end.396
  %127 = load i32, i32* @target_flags, align 4
  %and404 = and i32 %127, 16384
  %cmp405 = icmp ne i32 %and404, 0
  br i1 %cmp405, label %if.then.406, label %if.end.410

if.then.406:                                      ; preds = %if.end.403
  %128 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %handlers407 = getelementptr inbounds %struct.optab, %struct.optab* %128, i32 0, i32 1
  %arrayidx408 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers407, i32 0, i64 33
  %insn_code409 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx408, i32 0, i32 0
  store i32 790, i32* %insn_code409, align 4
  br label %if.end.410

if.end.410:                                       ; preds = %if.then.406, %if.end.403
  %129 = load i32, i32* @target_flags, align 4
  %and411 = and i32 %129, 1048576
  %cmp412 = icmp ne i32 %and411, 0
  br i1 %cmp412, label %if.then.413, label %if.end.420

if.then.413:                                      ; preds = %if.end.410
  %130 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers414 = getelementptr inbounds %struct.optab, %struct.optab* %130, i32 0, i32 1
  %arrayidx415 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers414, i32 0, i64 44
  %insn_code416 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx415, i32 0, i32 0
  store i32 806, i32* %insn_code416, align 4
  %131 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  %handlers417 = getelementptr inbounds %struct.optab, %struct.optab* %131, i32 0, i32 1
  %arrayidx418 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers417, i32 0, i64 44
  %insn_code419 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx418, i32 0, i32 0
  store i32 806, i32* %insn_code419, align 4
  br label %if.end.420

if.end.420:                                       ; preds = %if.then.413, %if.end.410
  %132 = load i32, i32* @target_flags, align 4
  %and421 = and i32 %132, 1048576
  %cmp422 = icmp ne i32 %and421, 0
  br i1 %cmp422, label %if.then.423, label %if.end.430

if.then.423:                                      ; preds = %if.end.420
  %133 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers424 = getelementptr inbounds %struct.optab, %struct.optab* %133, i32 0, i32 1
  %arrayidx425 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers424, i32 0, i64 44
  %insn_code426 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx425, i32 0, i32 0
  store i32 807, i32* %insn_code426, align 4
  %134 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  %handlers427 = getelementptr inbounds %struct.optab, %struct.optab* %134, i32 0, i32 1
  %arrayidx428 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers427, i32 0, i64 44
  %insn_code429 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx428, i32 0, i32 0
  store i32 807, i32* %insn_code429, align 4
  br label %if.end.430

if.end.430:                                       ; preds = %if.then.423, %if.end.420
  %135 = load i32, i32* @target_flags, align 4
  %and431 = and i32 %135, 1048576
  %cmp432 = icmp ne i32 %and431, 0
  br i1 %cmp432, label %if.then.433, label %if.end.440

if.then.433:                                      ; preds = %if.end.430
  %136 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers434 = getelementptr inbounds %struct.optab, %struct.optab* %136, i32 0, i32 1
  %arrayidx435 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers434, i32 0, i64 44
  %insn_code436 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx435, i32 0, i32 0
  store i32 814, i32* %insn_code436, align 4
  %137 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  %handlers437 = getelementptr inbounds %struct.optab, %struct.optab* %137, i32 0, i32 1
  %arrayidx438 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers437, i32 0, i64 44
  %insn_code439 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx438, i32 0, i32 0
  store i32 814, i32* %insn_code439, align 4
  br label %if.end.440

if.end.440:                                       ; preds = %if.then.433, %if.end.430
  %138 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers441 = getelementptr inbounds %struct.optab, %struct.optab* %138, i32 0, i32 1
  %arrayidx442 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers441, i32 0, i64 5
  %insn_code443 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx442, i32 0, i32 0
  store i32 834, i32* %insn_code443, align 4
  %139 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers444 = getelementptr inbounds %struct.optab, %struct.optab* %139, i32 0, i32 1
  %arrayidx445 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers444, i32 0, i64 4
  %insn_code446 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx445, i32 0, i32 0
  store i32 835, i32* %insn_code446, align 4
  %140 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers447 = getelementptr inbounds %struct.optab, %struct.optab* %140, i32 0, i32 1
  %arrayidx448 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers447, i32 0, i64 3
  %insn_code449 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx448, i32 0, i32 0
  store i32 836, i32* %insn_code449, align 4
  %141 = load i32, i32* @x86_qimode_math, align 4
  %142 = load i32, i32* @ix86_cpu, align 4
  %shl450 = shl i32 1, %142
  %and451 = and i32 %141, %shl450
  %tobool452 = icmp ne i32 %and451, 0
  br i1 %tobool452, label %if.then.453, label %if.end.457

if.then.453:                                      ; preds = %if.end.440
  %143 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers454 = getelementptr inbounds %struct.optab, %struct.optab* %143, i32 0, i32 1
  %arrayidx455 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers454, i32 0, i64 2
  %insn_code456 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx455, i32 0, i32 0
  store i32 837, i32* %insn_code456, align 4
  br label %if.end.457

if.end.457:                                       ; preds = %if.then.453, %if.end.440
  %144 = load i32, i32* @target_flags, align 4
  %and458 = and i32 %144, 33554432
  %tobool459 = icmp ne i32 %and458, 0
  br i1 %tobool459, label %if.end.467, label %land.lhs.true.460

land.lhs.true.460:                                ; preds = %if.end.457
  %145 = load i32, i32* @target_flags, align 4
  %and461 = and i32 %145, 1
  %tobool462 = icmp ne i32 %and461, 0
  br i1 %tobool462, label %if.then.463, label %if.end.467

if.then.463:                                      ; preds = %land.lhs.true.460
  %146 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers464 = getelementptr inbounds %struct.optab, %struct.optab* %146, i32 0, i32 1
  %arrayidx465 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers464, i32 0, i64 17
  %insn_code466 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx465, i32 0, i32 0
  store i32 841, i32* %insn_code466, align 4
  br label %if.end.467

if.end.467:                                       ; preds = %if.then.463, %land.lhs.true.460, %if.end.457
  %147 = load i32, i32* @target_flags, align 4
  %and468 = and i32 %147, 1
  %tobool469 = icmp ne i32 %and468, 0
  br i1 %tobool469, label %if.then.470, label %if.end.474

if.then.470:                                      ; preds = %if.end.467
  %148 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers471 = getelementptr inbounds %struct.optab, %struct.optab* %148, i32 0, i32 1
  %arrayidx472 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers471, i32 0, i64 18
  %insn_code473 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx472, i32 0, i32 0
  store i32 842, i32* %insn_code473, align 4
  br label %if.end.474

if.end.474:                                       ; preds = %if.then.470, %if.end.467
  %149 = load i32, i32* @target_flags, align 4
  %and475 = and i32 %149, 1
  %tobool476 = icmp ne i32 %and475, 0
  br i1 %tobool476, label %if.then.480, label %lor.lhs.false.477

lor.lhs.false.477:                                ; preds = %if.end.474
  %150 = load i32, i32* @target_flags, align 4
  %and478 = and i32 %150, 262144
  %cmp479 = icmp ne i32 %and478, 0
  br i1 %cmp479, label %if.then.480, label %if.end.484

if.then.480:                                      ; preds = %lor.lhs.false.477, %if.end.474
  %151 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers481 = getelementptr inbounds %struct.optab, %struct.optab* %151, i32 0, i32 1
  %arrayidx482 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers481, i32 0, i64 16
  %insn_code483 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx482, i32 0, i32 0
  store i32 843, i32* %insn_code483, align 4
  br label %if.end.484

if.end.484:                                       ; preds = %if.then.480, %lor.lhs.false.477
  %152 = load i32, i32* @target_flags, align 4
  %and485 = and i32 %152, 1
  %tobool486 = icmp ne i32 %and485, 0
  br i1 %tobool486, label %if.then.490, label %lor.lhs.false.487

lor.lhs.false.487:                                ; preds = %if.end.484
  %153 = load i32, i32* @target_flags, align 4
  %and488 = and i32 %153, 327680
  %cmp489 = icmp ne i32 %and488, 0
  br i1 %cmp489, label %if.then.490, label %if.end.494

if.then.490:                                      ; preds = %lor.lhs.false.487, %if.end.484
  %154 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers491 = getelementptr inbounds %struct.optab, %struct.optab* %154, i32 0, i32 1
  %arrayidx492 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers491, i32 0, i64 15
  %insn_code493 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx492, i32 0, i32 0
  store i32 844, i32* %insn_code493, align 4
  br label %if.end.494

if.end.494:                                       ; preds = %if.then.490, %lor.lhs.false.487
  %155 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers495 = getelementptr inbounds %struct.optab, %struct.optab* %155, i32 0, i32 1
  %arrayidx496 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers495, i32 0, i64 4
  %insn_code497 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx496, i32 0, i32 0
  store i32 846, i32* %insn_code497, align 4
  %156 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers498 = getelementptr inbounds %struct.optab, %struct.optab* %156, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers498, i32 0, i64 3
  %insn_code500 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx499, i32 0, i32 0
  store i32 847, i32* %insn_code500, align 4
  %157 = load i32, i32* @x86_partial_reg_stall, align 4
  %158 = load i32, i32* @ix86_cpu, align 4
  %shl501 = shl i32 1, %158
  %and502 = and i32 %157, %shl501
  %tobool503 = icmp ne i32 %and502, 0
  br i1 %tobool503, label %lor.lhs.false.504, label %if.then.506

lor.lhs.false.504:                                ; preds = %if.end.494
  %159 = load i32, i32* @optimize_size, align 4
  %tobool505 = icmp ne i32 %159, 0
  br i1 %tobool505, label %if.then.506, label %if.end.510

if.then.506:                                      ; preds = %lor.lhs.false.504, %if.end.494
  %160 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 31), align 8
  %handlers507 = getelementptr inbounds %struct.optab, %struct.optab* %160, i32 0, i32 1
  %arrayidx508 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers507, i32 0, i64 3
  %insn_code509 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx508, i32 0, i32 0
  store i32 848, i32* %insn_code509, align 4
  br label %if.end.510

if.end.510:                                       ; preds = %if.then.506, %lor.lhs.false.504
  %161 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers511 = getelementptr inbounds %struct.optab, %struct.optab* %161, i32 0, i32 1
  %arrayidx512 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers511, i32 0, i64 2
  %insn_code513 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx512, i32 0, i32 0
  store i32 849, i32* %insn_code513, align 4
  store i32 850, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @reload_out_optab, i32 0, i64 2), align 4
  %162 = load i32, i32* @x86_partial_reg_stall, align 4
  %163 = load i32, i32* @ix86_cpu, align 4
  %shl514 = shl i32 1, %163
  %and515 = and i32 %162, %shl514
  %tobool516 = icmp ne i32 %and515, 0
  br i1 %tobool516, label %if.end.521, label %if.then.517

if.then.517:                                      ; preds = %if.end.510
  %164 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 31), align 8
  %handlers518 = getelementptr inbounds %struct.optab, %struct.optab* %164, i32 0, i32 1
  %arrayidx519 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers518, i32 0, i64 2
  %insn_code520 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx519, i32 0, i32 0
  store i32 851, i32* %insn_code520, align 4
  br label %if.end.521

if.end.521:                                       ; preds = %if.then.517, %if.end.510
  %165 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers522 = getelementptr inbounds %struct.optab, %struct.optab* %165, i32 0, i32 1
  %arrayidx523 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers522, i32 0, i64 5
  %insn_code524 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx523, i32 0, i32 0
  store i32 852, i32* %insn_code524, align 4
  %166 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers525 = getelementptr inbounds %struct.optab, %struct.optab* %166, i32 0, i32 1
  %arrayidx526 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers525, i32 0, i64 15
  %insn_code527 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx526, i32 0, i32 0
  store i32 861, i32* %insn_code527, align 4
  %167 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers528 = getelementptr inbounds %struct.optab, %struct.optab* %167, i32 0, i32 1
  %arrayidx529 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers528, i32 0, i64 16
  %insn_code530 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx529, i32 0, i32 0
  store i32 865, i32* %insn_code530, align 4
  %168 = load i32, i32* @target_flags, align 4
  %and531 = and i32 %168, 33554432
  %tobool532 = icmp ne i32 %and531, 0
  br i1 %tobool532, label %if.end.537, label %if.then.533

if.then.533:                                      ; preds = %if.end.521
  %169 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers534 = getelementptr inbounds %struct.optab, %struct.optab* %169, i32 0, i32 1
  %arrayidx535 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers534, i32 0, i64 17
  %insn_code536 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx535, i32 0, i32 0
  store i32 870, i32* %insn_code536, align 4
  br label %if.end.537

if.end.537:                                       ; preds = %if.then.533, %if.end.521
  %170 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers538 = getelementptr inbounds %struct.optab, %struct.optab* %170, i32 0, i32 1
  %arrayidx539 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers538, i32 0, i64 18
  %insn_code540 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx539, i32 0, i32 0
  store i32 871, i32* %insn_code540, align 4
  store i32 878, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 4, i64 3, i64 1), align 4
  store i32 880, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 3, i64 2, i64 1), align 4
  store i32 884, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 4, i64 2, i64 1), align 4
  store i32 888, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 5, i64 4, i64 1), align 4
  store i32 892, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 5, i64 4, i64 0), align 4
  %171 = load i32, i32* @target_flags, align 4
  %and541 = and i32 %171, 1
  %tobool542 = icmp ne i32 %and541, 0
  br i1 %tobool542, label %if.then.546, label %lor.lhs.false.543

lor.lhs.false.543:                                ; preds = %if.end.537
  %172 = load i32, i32* @target_flags, align 4
  %and544 = and i32 %172, 262144
  %cmp545 = icmp ne i32 %and544, 0
  br i1 %cmp545, label %if.then.546, label %if.end.547

if.then.546:                                      ; preds = %lor.lhs.false.543, %if.end.537
  store i32 904, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 16, i64 15, i64 0), align 4
  br label %if.end.547

if.end.547:                                       ; preds = %if.then.546, %lor.lhs.false.543
  %173 = load i32, i32* @target_flags, align 4
  %and548 = and i32 %173, 33554432
  %tobool549 = icmp ne i32 %and548, 0
  br i1 %tobool549, label %if.end.554, label %land.lhs.true.550

land.lhs.true.550:                                ; preds = %if.end.547
  %174 = load i32, i32* @target_flags, align 4
  %and551 = and i32 %174, 1
  %tobool552 = icmp ne i32 %and551, 0
  br i1 %tobool552, label %if.then.553, label %if.end.554

if.then.553:                                      ; preds = %land.lhs.true.550
  store i32 905, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 17, i64 15, i64 0), align 4
  br label %if.end.554

if.end.554:                                       ; preds = %if.then.553, %land.lhs.true.550, %if.end.547
  %175 = load i32, i32* @target_flags, align 4
  %and555 = and i32 %175, 1
  %tobool556 = icmp ne i32 %and555, 0
  br i1 %tobool556, label %if.then.557, label %if.end.558

if.then.557:                                      ; preds = %if.end.554
  store i32 906, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 18, i64 15, i64 0), align 4
  br label %if.end.558

if.end.558:                                       ; preds = %if.then.557, %if.end.554
  %176 = load i32, i32* @target_flags, align 4
  %and559 = and i32 %176, 33554432
  %tobool560 = icmp ne i32 %and559, 0
  br i1 %tobool560, label %if.end.565, label %land.lhs.true.561

land.lhs.true.561:                                ; preds = %if.end.558
  %177 = load i32, i32* @target_flags, align 4
  %and562 = and i32 %177, 1
  %tobool563 = icmp ne i32 %and562, 0
  br i1 %tobool563, label %if.then.564, label %if.end.565

if.then.564:                                      ; preds = %land.lhs.true.561
  store i32 907, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 17, i64 16, i64 0), align 4
  br label %if.end.565

if.end.565:                                       ; preds = %if.then.564, %land.lhs.true.561, %if.end.558
  %178 = load i32, i32* @target_flags, align 4
  %and566 = and i32 %178, 1
  %tobool567 = icmp ne i32 %and566, 0
  br i1 %tobool567, label %if.then.568, label %if.end.569

if.then.568:                                      ; preds = %if.end.565
  store i32 908, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 18, i64 16, i64 0), align 4
  br label %if.end.569

if.end.569:                                       ; preds = %if.then.568, %if.end.565
  %179 = load i32, i32* @target_flags, align 4
  %and570 = and i32 %179, 33554432
  %tobool571 = icmp ne i32 %and570, 0
  br i1 %tobool571, label %if.end.576, label %land.lhs.true.572

land.lhs.true.572:                                ; preds = %if.end.569
  %180 = load i32, i32* @target_flags, align 4
  %and573 = and i32 %180, 1
  %tobool574 = icmp ne i32 %and573, 0
  br i1 %tobool574, label %if.then.575, label %if.end.576

if.then.575:                                      ; preds = %land.lhs.true.572
  store i32 925, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 17, i64 5, i64 0), align 4
  br label %if.end.576

if.end.576:                                       ; preds = %if.then.575, %land.lhs.true.572, %if.end.569
  %181 = load i32, i32* @target_flags, align 4
  %and577 = and i32 %181, 1
  %tobool578 = icmp ne i32 %and577, 0
  br i1 %tobool578, label %if.then.579, label %if.end.580

if.then.579:                                      ; preds = %if.end.576
  store i32 926, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 18, i64 5, i64 0), align 4
  br label %if.end.580

if.end.580:                                       ; preds = %if.then.579, %if.end.576
  %182 = load i32, i32* @target_flags, align 4
  %and581 = and i32 %182, 1
  %tobool582 = icmp ne i32 %and581, 0
  br i1 %tobool582, label %if.then.589, label %lor.lhs.false.583

lor.lhs.false.583:                                ; preds = %if.end.580
  %183 = load i32, i32* @target_flags, align 4
  %and584 = and i32 %183, 262144
  %cmp585 = icmp ne i32 %and584, 0
  br i1 %cmp585, label %land.lhs.true.586, label %if.end.590

land.lhs.true.586:                                ; preds = %lor.lhs.false.583
  %184 = load i32, i32* @target_flags, align 4
  %and587 = and i32 %184, 33554432
  %tobool588 = icmp ne i32 %and587, 0
  br i1 %tobool588, label %if.then.589, label %if.end.590

if.then.589:                                      ; preds = %land.lhs.true.586, %if.end.580
  store i32 927, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 16, i64 5, i64 0), align 4
  br label %if.end.590

if.end.590:                                       ; preds = %if.then.589, %land.lhs.true.586, %lor.lhs.false.583
  %185 = load i32, i32* @target_flags, align 4
  %and591 = and i32 %185, 1
  %tobool592 = icmp ne i32 %and591, 0
  br i1 %tobool592, label %if.then.599, label %lor.lhs.false.593

lor.lhs.false.593:                                ; preds = %if.end.590
  %186 = load i32, i32* @target_flags, align 4
  %and594 = and i32 %186, 327680
  %cmp595 = icmp ne i32 %and594, 0
  br i1 %cmp595, label %land.lhs.true.596, label %if.end.600

land.lhs.true.596:                                ; preds = %lor.lhs.false.593
  %187 = load i32, i32* @target_flags, align 4
  %and597 = and i32 %187, 33554432
  %tobool598 = icmp ne i32 %and597, 0
  br i1 %tobool598, label %if.then.599, label %if.end.600

if.then.599:                                      ; preds = %land.lhs.true.596, %if.end.590
  store i32 928, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 15, i64 5, i64 0), align 4
  br label %if.end.600

if.end.600:                                       ; preds = %if.then.599, %land.lhs.true.596, %lor.lhs.false.593
  %188 = load i32, i32* @target_flags, align 4
  %and601 = and i32 %188, 33554432
  %tobool602 = icmp ne i32 %and601, 0
  br i1 %tobool602, label %if.end.607, label %land.lhs.true.603

land.lhs.true.603:                                ; preds = %if.end.600
  %189 = load i32, i32* @target_flags, align 4
  %and604 = and i32 %189, 1
  %tobool605 = icmp ne i32 %and604, 0
  br i1 %tobool605, label %if.then.606, label %if.end.607

if.then.606:                                      ; preds = %land.lhs.true.603
  store i32 932, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 17, i64 4, i64 0), align 4
  br label %if.end.607

if.end.607:                                       ; preds = %if.then.606, %land.lhs.true.603, %if.end.600
  %190 = load i32, i32* @target_flags, align 4
  %and608 = and i32 %190, 1
  %tobool609 = icmp ne i32 %and608, 0
  br i1 %tobool609, label %if.then.610, label %if.end.611

if.then.610:                                      ; preds = %if.end.607
  store i32 933, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 18, i64 4, i64 0), align 4
  br label %if.end.611

if.end.611:                                       ; preds = %if.then.610, %if.end.607
  %191 = load i32, i32* @target_flags, align 4
  %and612 = and i32 %191, 1
  %tobool613 = icmp ne i32 %and612, 0
  br i1 %tobool613, label %if.then.617, label %lor.lhs.false.614

lor.lhs.false.614:                                ; preds = %if.end.611
  %192 = load i32, i32* @target_flags, align 4
  %and615 = and i32 %192, 262144
  %cmp616 = icmp ne i32 %and615, 0
  br i1 %cmp616, label %if.then.617, label %if.end.618

if.then.617:                                      ; preds = %lor.lhs.false.614, %if.end.611
  store i32 934, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 16, i64 4, i64 0), align 4
  br label %if.end.618

if.end.618:                                       ; preds = %if.then.617, %lor.lhs.false.614
  %193 = load i32, i32* @target_flags, align 4
  %and619 = and i32 %193, 1
  %tobool620 = icmp ne i32 %and619, 0
  br i1 %tobool620, label %if.then.624, label %lor.lhs.false.621

lor.lhs.false.621:                                ; preds = %if.end.618
  %194 = load i32, i32* @target_flags, align 4
  %and622 = and i32 %194, 327680
  %cmp623 = icmp ne i32 %and622, 0
  br i1 %cmp623, label %if.then.624, label %if.end.625

if.then.624:                                      ; preds = %lor.lhs.false.621, %if.end.618
  store i32 935, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 15, i64 4, i64 0), align 4
  br label %if.end.625

if.end.625:                                       ; preds = %if.then.624, %lor.lhs.false.621
  %195 = load i32, i32* @target_flags, align 4
  %and626 = and i32 %195, 33554432
  %tobool627 = icmp ne i32 %and626, 0
  br i1 %tobool627, label %if.end.632, label %land.lhs.true.628

land.lhs.true.628:                                ; preds = %if.end.625
  %196 = load i32, i32* @target_flags, align 4
  %and629 = and i32 %196, 1
  %tobool630 = icmp ne i32 %and629, 0
  br i1 %tobool630, label %if.then.631, label %if.end.632

if.then.631:                                      ; preds = %land.lhs.true.628
  store i32 939, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 17, i64 3, i64 0), align 4
  br label %if.end.632

if.end.632:                                       ; preds = %if.then.631, %land.lhs.true.628, %if.end.625
  %197 = load i32, i32* @target_flags, align 4
  %and633 = and i32 %197, 1
  %tobool634 = icmp ne i32 %and633, 0
  br i1 %tobool634, label %if.then.635, label %if.end.636

if.then.635:                                      ; preds = %if.end.632
  store i32 940, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 18, i64 3, i64 0), align 4
  br label %if.end.636

if.end.636:                                       ; preds = %if.then.635, %if.end.632
  %198 = load i32, i32* @target_flags, align 4
  %and637 = and i32 %198, 1
  %tobool638 = icmp ne i32 %and637, 0
  br i1 %tobool638, label %land.lhs.true.639, label %if.end.643

land.lhs.true.639:                                ; preds = %if.end.636
  %199 = load i32, i32* @target_flags, align 4
  %and640 = and i32 %199, 262144
  %cmp641 = icmp ne i32 %and640, 0
  br i1 %cmp641, label %if.end.643, label %if.then.642

if.then.642:                                      ; preds = %land.lhs.true.639
  store i32 941, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 16, i64 3, i64 0), align 4
  br label %if.end.643

if.end.643:                                       ; preds = %if.then.642, %land.lhs.true.639, %if.end.636
  %200 = load i32, i32* @target_flags, align 4
  %and644 = and i32 %200, 1
  %tobool645 = icmp ne i32 %and644, 0
  br i1 %tobool645, label %land.lhs.true.646, label %if.end.650

land.lhs.true.646:                                ; preds = %if.end.643
  %201 = load i32, i32* @target_flags, align 4
  %and647 = and i32 %201, 327680
  %cmp648 = icmp ne i32 %and647, 0
  br i1 %cmp648, label %if.end.650, label %if.then.649

if.then.649:                                      ; preds = %land.lhs.true.646
  store i32 942, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 15, i64 3, i64 0), align 4
  br label %if.end.650

if.end.650:                                       ; preds = %if.then.649, %land.lhs.true.646, %if.end.643
  %202 = load i32, i32* @target_flags, align 4
  %and651 = and i32 %202, 327680
  %cmp652 = icmp ne i32 %and651, 0
  br i1 %cmp652, label %if.then.656, label %lor.lhs.false.653

lor.lhs.false.653:                                ; preds = %if.end.650
  %203 = load i32, i32* @target_flags, align 4
  %and654 = and i32 %203, 1
  %tobool655 = icmp ne i32 %and654, 0
  br i1 %tobool655, label %if.then.656, label %if.end.657

if.then.656:                                      ; preds = %lor.lhs.false.653, %if.end.650
  store i32 946, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 15, i64 4, i64 0), align 4
  br label %if.end.657

if.end.657:                                       ; preds = %if.then.656, %lor.lhs.false.653
  %204 = load i32, i32* @target_flags, align 4
  %and658 = and i32 %204, 33554432
  %tobool659 = icmp ne i32 %and658, 0
  br i1 %tobool659, label %land.lhs.true.660, label %lor.lhs.false.663

land.lhs.true.660:                                ; preds = %if.end.657
  %205 = load i32, i32* @target_flags, align 4
  %and661 = and i32 %205, 327680
  %cmp662 = icmp ne i32 %and661, 0
  br i1 %cmp662, label %if.then.666, label %lor.lhs.false.663

lor.lhs.false.663:                                ; preds = %land.lhs.true.660, %if.end.657
  %206 = load i32, i32* @target_flags, align 4
  %and664 = and i32 %206, 1
  %tobool665 = icmp ne i32 %and664, 0
  br i1 %tobool665, label %if.then.666, label %if.end.667

if.then.666:                                      ; preds = %lor.lhs.false.663, %land.lhs.true.660
  store i32 947, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 15, i64 5, i64 0), align 4
  br label %if.end.667

if.end.667:                                       ; preds = %if.then.666, %lor.lhs.false.663
  %207 = load i32, i32* @target_flags, align 4
  %and668 = and i32 %207, 1
  %tobool669 = icmp ne i32 %and668, 0
  br i1 %tobool669, label %if.then.673, label %lor.lhs.false.670

lor.lhs.false.670:                                ; preds = %if.end.667
  %208 = load i32, i32* @target_flags, align 4
  %and671 = and i32 %208, 262144
  %cmp672 = icmp ne i32 %and671, 0
  br i1 %cmp672, label %if.then.673, label %if.end.674

if.then.673:                                      ; preds = %lor.lhs.false.670, %if.end.667
  store i32 948, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 16, i64 4, i64 0), align 4
  br label %if.end.674

if.end.674:                                       ; preds = %if.then.673, %lor.lhs.false.670
  %209 = load i32, i32* @target_flags, align 4
  %and675 = and i32 %209, 33554432
  %tobool676 = icmp ne i32 %and675, 0
  br i1 %tobool676, label %land.lhs.true.677, label %lor.lhs.false.680

land.lhs.true.677:                                ; preds = %if.end.674
  %210 = load i32, i32* @target_flags, align 4
  %and678 = and i32 %210, 262144
  %cmp679 = icmp ne i32 %and678, 0
  br i1 %cmp679, label %if.then.683, label %lor.lhs.false.680

lor.lhs.false.680:                                ; preds = %land.lhs.true.677, %if.end.674
  %211 = load i32, i32* @target_flags, align 4
  %and681 = and i32 %211, 1
  %tobool682 = icmp ne i32 %and681, 0
  br i1 %tobool682, label %if.then.683, label %if.end.684

if.then.683:                                      ; preds = %lor.lhs.false.680, %land.lhs.true.677
  store i32 949, i32* getelementptr inbounds ([59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 16, i64 5, i64 0), align 4
  br label %if.end.684

if.end.684:                                       ; preds = %if.then.683, %lor.lhs.false.680
  %212 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers685 = getelementptr inbounds %struct.optab, %struct.optab* %212, i32 0, i32 1
  %arrayidx686 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers685, i32 0, i64 5
  %insn_code687 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx686, i32 0, i32 0
  store i32 951, i32* %insn_code687, align 4
  %213 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers688 = getelementptr inbounds %struct.optab, %struct.optab* %213, i32 0, i32 1
  %arrayidx689 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers688, i32 0, i64 4
  %insn_code690 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx689, i32 0, i32 0
  store i32 953, i32* %insn_code690, align 4
  %214 = load i32, i32* @x86_himode_math, align 4
  %215 = load i32, i32* @ix86_cpu, align 4
  %shl691 = shl i32 1, %215
  %and692 = and i32 %214, %shl691
  %tobool693 = icmp ne i32 %and692, 0
  br i1 %tobool693, label %if.then.694, label %if.end.698

if.then.694:                                      ; preds = %if.end.684
  %216 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers695 = getelementptr inbounds %struct.optab, %struct.optab* %216, i32 0, i32 1
  %arrayidx696 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers695, i32 0, i64 3
  %insn_code697 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx696, i32 0, i32 0
  store i32 963, i32* %insn_code697, align 4
  br label %if.end.698

if.end.698:                                       ; preds = %if.then.694, %if.end.684
  %217 = load i32, i32* @x86_qimode_math, align 4
  %218 = load i32, i32* @ix86_cpu, align 4
  %shl699 = shl i32 1, %218
  %and700 = and i32 %217, %shl699
  %tobool701 = icmp ne i32 %and700, 0
  br i1 %tobool701, label %if.then.702, label %if.end.706

if.then.702:                                      ; preds = %if.end.698
  %219 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers703 = getelementptr inbounds %struct.optab, %struct.optab* %219, i32 0, i32 1
  %arrayidx704 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers703, i32 0, i64 2
  %insn_code705 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx704, i32 0, i32 0
  store i32 964, i32* %insn_code705, align 4
  br label %if.end.706

if.end.706:                                       ; preds = %if.then.702, %if.end.698
  %220 = load i32, i32* @target_flags, align 4
  %and707 = and i32 %220, 33554432
  %tobool708 = icmp ne i32 %and707, 0
  br i1 %tobool708, label %if.end.719, label %land.lhs.true.709

land.lhs.true.709:                                ; preds = %if.end.706
  %221 = load i32, i32* @target_flags, align 4
  %and710 = and i32 %221, 1
  %tobool711 = icmp ne i32 %and710, 0
  br i1 %tobool711, label %if.then.712, label %if.end.719

if.then.712:                                      ; preds = %land.lhs.true.709
  %222 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers713 = getelementptr inbounds %struct.optab, %struct.optab* %222, i32 0, i32 1
  %arrayidx714 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers713, i32 0, i64 17
  %insn_code715 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx714, i32 0, i32 0
  store i32 965, i32* %insn_code715, align 4
  %223 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  %handlers716 = getelementptr inbounds %struct.optab, %struct.optab* %223, i32 0, i32 1
  %arrayidx717 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers716, i32 0, i64 17
  %insn_code718 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx717, i32 0, i32 0
  store i32 965, i32* %insn_code718, align 4
  br label %if.end.719

if.end.719:                                       ; preds = %if.then.712, %land.lhs.true.709, %if.end.706
  %224 = load i32, i32* @target_flags, align 4
  %and720 = and i32 %224, 1
  %tobool721 = icmp ne i32 %and720, 0
  br i1 %tobool721, label %if.then.722, label %if.end.729

if.then.722:                                      ; preds = %if.end.719
  %225 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers723 = getelementptr inbounds %struct.optab, %struct.optab* %225, i32 0, i32 1
  %arrayidx724 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers723, i32 0, i64 18
  %insn_code725 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx724, i32 0, i32 0
  store i32 966, i32* %insn_code725, align 4
  %226 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  %handlers726 = getelementptr inbounds %struct.optab, %struct.optab* %226, i32 0, i32 1
  %arrayidx727 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers726, i32 0, i64 18
  %insn_code728 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx727, i32 0, i32 0
  store i32 966, i32* %insn_code728, align 4
  br label %if.end.729

if.end.729:                                       ; preds = %if.then.722, %if.end.719
  %227 = load i32, i32* @target_flags, align 4
  %and730 = and i32 %227, 1
  %tobool731 = icmp ne i32 %and730, 0
  br i1 %tobool731, label %if.then.738, label %lor.lhs.false.732

lor.lhs.false.732:                                ; preds = %if.end.729
  %228 = load i32, i32* @target_flags, align 4
  %and733 = and i32 %228, 262144
  %cmp734 = icmp ne i32 %and733, 0
  br i1 %cmp734, label %land.lhs.true.735, label %if.end.745

land.lhs.true.735:                                ; preds = %lor.lhs.false.732
  %229 = load i32, i32* @ix86_fpmath, align 4
  %and736 = and i32 %229, 2
  %cmp737 = icmp ne i32 %and736, 0
  br i1 %cmp737, label %if.then.738, label %if.end.745

if.then.738:                                      ; preds = %land.lhs.true.735, %if.end.729
  %230 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers739 = getelementptr inbounds %struct.optab, %struct.optab* %230, i32 0, i32 1
  %arrayidx740 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers739, i32 0, i64 16
  %insn_code741 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx740, i32 0, i32 0
  store i32 967, i32* %insn_code741, align 4
  %231 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  %handlers742 = getelementptr inbounds %struct.optab, %struct.optab* %231, i32 0, i32 1
  %arrayidx743 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers742, i32 0, i64 16
  %insn_code744 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx743, i32 0, i32 0
  store i32 967, i32* %insn_code744, align 4
  br label %if.end.745

if.end.745:                                       ; preds = %if.then.738, %land.lhs.true.735, %lor.lhs.false.732
  %232 = load i32, i32* @target_flags, align 4
  %and746 = and i32 %232, 1
  %tobool747 = icmp ne i32 %and746, 0
  br i1 %tobool747, label %if.then.751, label %lor.lhs.false.748

lor.lhs.false.748:                                ; preds = %if.end.745
  %233 = load i32, i32* @ix86_fpmath, align 4
  %and749 = and i32 %233, 2
  %cmp750 = icmp ne i32 %and749, 0
  br i1 %cmp750, label %if.then.751, label %if.end.758

if.then.751:                                      ; preds = %lor.lhs.false.748, %if.end.745
  %234 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers752 = getelementptr inbounds %struct.optab, %struct.optab* %234, i32 0, i32 1
  %arrayidx753 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers752, i32 0, i64 15
  %insn_code754 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx753, i32 0, i32 0
  store i32 968, i32* %insn_code754, align 4
  %235 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  %handlers755 = getelementptr inbounds %struct.optab, %struct.optab* %235, i32 0, i32 1
  %arrayidx756 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers755, i32 0, i64 15
  %insn_code757 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx756, i32 0, i32 0
  store i32 968, i32* %insn_code757, align 4
  br label %if.end.758

if.end.758:                                       ; preds = %if.then.751, %lor.lhs.false.748
  %236 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers759 = getelementptr inbounds %struct.optab, %struct.optab* %236, i32 0, i32 1
  %arrayidx760 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers759, i32 0, i64 5
  %insn_code761 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx760, i32 0, i32 0
  store i32 969, i32* %insn_code761, align 4
  %237 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers762 = getelementptr inbounds %struct.optab, %struct.optab* %237, i32 0, i32 1
  %arrayidx763 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers762, i32 0, i64 4
  %insn_code764 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx763, i32 0, i32 0
  store i32 971, i32* %insn_code764, align 4
  %238 = load i32, i32* @x86_himode_math, align 4
  %239 = load i32, i32* @ix86_cpu, align 4
  %shl765 = shl i32 1, %239
  %and766 = and i32 %238, %shl765
  %tobool767 = icmp ne i32 %and766, 0
  br i1 %tobool767, label %if.then.768, label %if.end.772

if.then.768:                                      ; preds = %if.end.758
  %240 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers769 = getelementptr inbounds %struct.optab, %struct.optab* %240, i32 0, i32 1
  %arrayidx770 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers769, i32 0, i64 3
  %insn_code771 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx770, i32 0, i32 0
  store i32 972, i32* %insn_code771, align 4
  br label %if.end.772

if.end.772:                                       ; preds = %if.then.768, %if.end.758
  %241 = load i32, i32* @x86_qimode_math, align 4
  %242 = load i32, i32* @ix86_cpu, align 4
  %shl773 = shl i32 1, %242
  %and774 = and i32 %241, %shl773
  %tobool775 = icmp ne i32 %and774, 0
  br i1 %tobool775, label %if.then.776, label %if.end.780

if.then.776:                                      ; preds = %if.end.772
  %243 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers777 = getelementptr inbounds %struct.optab, %struct.optab* %243, i32 0, i32 1
  %arrayidx778 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers777, i32 0, i64 2
  %insn_code779 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx778, i32 0, i32 0
  store i32 973, i32* %insn_code779, align 4
  br label %if.end.780

if.end.780:                                       ; preds = %if.then.776, %if.end.772
  %244 = load i32, i32* @target_flags, align 4
  %and781 = and i32 %244, 33554432
  %tobool782 = icmp ne i32 %and781, 0
  br i1 %tobool782, label %if.end.793, label %land.lhs.true.783

land.lhs.true.783:                                ; preds = %if.end.780
  %245 = load i32, i32* @target_flags, align 4
  %and784 = and i32 %245, 1
  %tobool785 = icmp ne i32 %and784, 0
  br i1 %tobool785, label %if.then.786, label %if.end.793

if.then.786:                                      ; preds = %land.lhs.true.783
  %246 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers787 = getelementptr inbounds %struct.optab, %struct.optab* %246, i32 0, i32 1
  %arrayidx788 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers787, i32 0, i64 17
  %insn_code789 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx788, i32 0, i32 0
  store i32 974, i32* %insn_code789, align 4
  %247 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  %handlers790 = getelementptr inbounds %struct.optab, %struct.optab* %247, i32 0, i32 1
  %arrayidx791 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers790, i32 0, i64 17
  %insn_code792 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx791, i32 0, i32 0
  store i32 974, i32* %insn_code792, align 4
  br label %if.end.793

if.end.793:                                       ; preds = %if.then.786, %land.lhs.true.783, %if.end.780
  %248 = load i32, i32* @target_flags, align 4
  %and794 = and i32 %248, 1
  %tobool795 = icmp ne i32 %and794, 0
  br i1 %tobool795, label %if.then.796, label %if.end.803

if.then.796:                                      ; preds = %if.end.793
  %249 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers797 = getelementptr inbounds %struct.optab, %struct.optab* %249, i32 0, i32 1
  %arrayidx798 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers797, i32 0, i64 18
  %insn_code799 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx798, i32 0, i32 0
  store i32 975, i32* %insn_code799, align 4
  %250 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  %handlers800 = getelementptr inbounds %struct.optab, %struct.optab* %250, i32 0, i32 1
  %arrayidx801 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers800, i32 0, i64 18
  %insn_code802 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx801, i32 0, i32 0
  store i32 975, i32* %insn_code802, align 4
  br label %if.end.803

if.end.803:                                       ; preds = %if.then.796, %if.end.793
  %251 = load i32, i32* @target_flags, align 4
  %and804 = and i32 %251, 1
  %tobool805 = icmp ne i32 %and804, 0
  br i1 %tobool805, label %if.then.812, label %lor.lhs.false.806

lor.lhs.false.806:                                ; preds = %if.end.803
  %252 = load i32, i32* @target_flags, align 4
  %and807 = and i32 %252, 262144
  %cmp808 = icmp ne i32 %and807, 0
  br i1 %cmp808, label %land.lhs.true.809, label %if.end.819

land.lhs.true.809:                                ; preds = %lor.lhs.false.806
  %253 = load i32, i32* @ix86_fpmath, align 4
  %and810 = and i32 %253, 2
  %cmp811 = icmp ne i32 %and810, 0
  br i1 %cmp811, label %if.then.812, label %if.end.819

if.then.812:                                      ; preds = %land.lhs.true.809, %if.end.803
  %254 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers813 = getelementptr inbounds %struct.optab, %struct.optab* %254, i32 0, i32 1
  %arrayidx814 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers813, i32 0, i64 16
  %insn_code815 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx814, i32 0, i32 0
  store i32 976, i32* %insn_code815, align 4
  %255 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  %handlers816 = getelementptr inbounds %struct.optab, %struct.optab* %255, i32 0, i32 1
  %arrayidx817 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers816, i32 0, i64 16
  %insn_code818 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx817, i32 0, i32 0
  store i32 976, i32* %insn_code818, align 4
  br label %if.end.819

if.end.819:                                       ; preds = %if.then.812, %land.lhs.true.809, %lor.lhs.false.806
  %256 = load i32, i32* @target_flags, align 4
  %and820 = and i32 %256, 1
  %tobool821 = icmp ne i32 %and820, 0
  br i1 %tobool821, label %if.then.825, label %lor.lhs.false.822

lor.lhs.false.822:                                ; preds = %if.end.819
  %257 = load i32, i32* @ix86_fpmath, align 4
  %and823 = and i32 %257, 2
  %cmp824 = icmp ne i32 %and823, 0
  br i1 %cmp824, label %if.then.825, label %if.end.832

if.then.825:                                      ; preds = %lor.lhs.false.822, %if.end.819
  %258 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers826 = getelementptr inbounds %struct.optab, %struct.optab* %258, i32 0, i32 1
  %arrayidx827 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers826, i32 0, i64 15
  %insn_code828 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx827, i32 0, i32 0
  store i32 977, i32* %insn_code828, align 4
  %259 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  %handlers829 = getelementptr inbounds %struct.optab, %struct.optab* %259, i32 0, i32 1
  %arrayidx830 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers829, i32 0, i64 15
  %insn_code831 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx830, i32 0, i32 0
  store i32 977, i32* %insn_code831, align 4
  br label %if.end.832

if.end.832:                                       ; preds = %if.then.825, %lor.lhs.false.822
  %260 = load i32, i32* @target_flags, align 4
  %and833 = and i32 %260, 33554432
  %tobool834 = icmp ne i32 %and833, 0
  br i1 %tobool834, label %if.then.835, label %if.end.839

if.then.835:                                      ; preds = %if.end.832
  %261 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers836 = getelementptr inbounds %struct.optab, %struct.optab* %261, i32 0, i32 1
  %arrayidx837 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers836, i32 0, i64 5
  %insn_code838 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx837, i32 0, i32 0
  store i32 978, i32* %insn_code838, align 4
  br label %if.end.839

if.end.839:                                       ; preds = %if.then.835, %if.end.832
  %262 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers840 = getelementptr inbounds %struct.optab, %struct.optab* %262, i32 0, i32 1
  %arrayidx841 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers840, i32 0, i64 4
  %insn_code842 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx841, i32 0, i32 0
  store i32 979, i32* %insn_code842, align 4
  %263 = load i32, i32* @x86_himode_math, align 4
  %264 = load i32, i32* @ix86_cpu, align 4
  %shl843 = shl i32 1, %264
  %and844 = and i32 %263, %shl843
  %tobool845 = icmp ne i32 %and844, 0
  br i1 %tobool845, label %if.then.846, label %if.end.850

if.then.846:                                      ; preds = %if.end.839
  %265 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers847 = getelementptr inbounds %struct.optab, %struct.optab* %265, i32 0, i32 1
  %arrayidx848 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers847, i32 0, i64 3
  %insn_code849 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx848, i32 0, i32 0
  store i32 980, i32* %insn_code849, align 4
  br label %if.end.850

if.end.850:                                       ; preds = %if.then.846, %if.end.839
  %266 = load i32, i32* @x86_qimode_math, align 4
  %267 = load i32, i32* @ix86_cpu, align 4
  %shl851 = shl i32 1, %267
  %and852 = and i32 %266, %shl851
  %tobool853 = icmp ne i32 %and852, 0
  br i1 %tobool853, label %if.then.854, label %if.end.858

if.then.854:                                      ; preds = %if.end.850
  %268 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers855 = getelementptr inbounds %struct.optab, %struct.optab* %268, i32 0, i32 1
  %arrayidx856 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers855, i32 0, i64 2
  %insn_code857 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx856, i32 0, i32 0
  store i32 981, i32* %insn_code857, align 4
  br label %if.end.858

if.end.858:                                       ; preds = %if.then.854, %if.end.850
  %269 = load i32, i32* @x86_qimode_math, align 4
  %270 = load i32, i32* @ix86_cpu, align 4
  %shl859 = shl i32 1, %270
  %and860 = and i32 %269, %shl859
  %tobool861 = icmp ne i32 %and860, 0
  br i1 %tobool861, label %if.then.862, label %if.end.866

if.then.862:                                      ; preds = %if.end.858
  %271 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  %handlers863 = getelementptr inbounds %struct.optab, %struct.optab* %271, i32 0, i32 1
  %arrayidx864 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers863, i32 0, i64 3
  %insn_code865 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx864, i32 0, i32 0
  store i32 982, i32* %insn_code865, align 4
  br label %if.end.866

if.end.866:                                       ; preds = %if.then.862, %if.end.858
  %272 = load i32, i32* @x86_qimode_math, align 4
  %273 = load i32, i32* @ix86_cpu, align 4
  %shl867 = shl i32 1, %273
  %and868 = and i32 %272, %shl867
  %tobool869 = icmp ne i32 %and868, 0
  br i1 %tobool869, label %if.then.870, label %if.end.874

if.then.870:                                      ; preds = %if.end.866
  %274 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  %handlers871 = getelementptr inbounds %struct.optab, %struct.optab* %274, i32 0, i32 1
  %arrayidx872 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers871, i32 0, i64 3
  %insn_code873 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx872, i32 0, i32 0
  store i32 983, i32* %insn_code873, align 4
  br label %if.end.874

if.end.874:                                       ; preds = %if.then.870, %if.end.866
  %275 = load i32, i32* @target_flags, align 4
  %and875 = and i32 %275, 33554432
  %tobool876 = icmp ne i32 %and875, 0
  br i1 %tobool876, label %if.then.877, label %if.end.881

if.then.877:                                      ; preds = %if.end.874
  %276 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  %handlers878 = getelementptr inbounds %struct.optab, %struct.optab* %276, i32 0, i32 1
  %arrayidx879 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers878, i32 0, i64 6
  %insn_code880 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx879, i32 0, i32 0
  store i32 984, i32* %insn_code880, align 4
  br label %if.end.881

if.end.881:                                       ; preds = %if.then.877, %if.end.874
  %277 = load i32, i32* @target_flags, align 4
  %and882 = and i32 %277, 33554432
  %tobool883 = icmp ne i32 %and882, 0
  br i1 %tobool883, label %if.end.888, label %if.then.884

if.then.884:                                      ; preds = %if.end.881
  %278 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  %handlers885 = getelementptr inbounds %struct.optab, %struct.optab* %278, i32 0, i32 1
  %arrayidx886 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers885, i32 0, i64 5
  %insn_code887 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx886, i32 0, i32 0
  store i32 985, i32* %insn_code887, align 4
  br label %if.end.888

if.end.888:                                       ; preds = %if.then.884, %if.end.881
  %279 = load i32, i32* @target_flags, align 4
  %and889 = and i32 %279, 33554432
  %tobool890 = icmp ne i32 %and889, 0
  br i1 %tobool890, label %if.then.891, label %if.end.895

if.then.891:                                      ; preds = %if.end.888
  %280 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  %handlers892 = getelementptr inbounds %struct.optab, %struct.optab* %280, i32 0, i32 1
  %arrayidx893 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers892, i32 0, i64 6
  %insn_code894 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx893, i32 0, i32 0
  store i32 986, i32* %insn_code894, align 4
  br label %if.end.895

if.end.895:                                       ; preds = %if.then.891, %if.end.888
  %281 = load i32, i32* @target_flags, align 4
  %and896 = and i32 %281, 33554432
  %tobool897 = icmp ne i32 %and896, 0
  br i1 %tobool897, label %if.end.902, label %if.then.898

if.then.898:                                      ; preds = %if.end.895
  %282 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  %handlers899 = getelementptr inbounds %struct.optab, %struct.optab* %282, i32 0, i32 1
  %arrayidx900 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers899, i32 0, i64 5
  %insn_code901 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx900, i32 0, i32 0
  store i32 987, i32* %insn_code901, align 4
  br label %if.end.902

if.end.902:                                       ; preds = %if.then.898, %if.end.895
  %283 = load i32, i32* @target_flags, align 4
  %and903 = and i32 %283, 33554432
  %tobool904 = icmp ne i32 %and903, 0
  br i1 %tobool904, label %if.then.905, label %if.end.909

if.then.905:                                      ; preds = %if.end.902
  %284 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 7), align 8
  %handlers906 = getelementptr inbounds %struct.optab, %struct.optab* %284, i32 0, i32 1
  %arrayidx907 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers906, i32 0, i64 5
  %insn_code908 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx907, i32 0, i32 0
  store i32 988, i32* %insn_code908, align 4
  br label %if.end.909

if.end.909:                                       ; preds = %if.then.905, %if.end.902
  %285 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 7), align 8
  %handlers910 = getelementptr inbounds %struct.optab, %struct.optab* %285, i32 0, i32 1
  %arrayidx911 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers910, i32 0, i64 4
  %insn_code912 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx911, i32 0, i32 0
  store i32 989, i32* %insn_code912, align 4
  %286 = load i32, i32* @target_flags, align 4
  %and913 = and i32 %286, 33554432
  %tobool914 = icmp ne i32 %and913, 0
  br i1 %tobool914, label %if.then.915, label %if.end.919

if.then.915:                                      ; preds = %if.end.909
  %287 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 6), align 8
  %handlers916 = getelementptr inbounds %struct.optab, %struct.optab* %287, i32 0, i32 1
  %arrayidx917 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers916, i32 0, i64 5
  %insn_code918 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx917, i32 0, i32 0
  store i32 990, i32* %insn_code918, align 4
  br label %if.end.919

if.end.919:                                       ; preds = %if.then.915, %if.end.909
  %288 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 6), align 8
  %handlers920 = getelementptr inbounds %struct.optab, %struct.optab* %288, i32 0, i32 1
  %arrayidx921 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers920, i32 0, i64 4
  %insn_code922 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx921, i32 0, i32 0
  store i32 991, i32* %insn_code922, align 4
  %289 = load i32, i32* @target_flags, align 4
  %and923 = and i32 %289, 33554432
  %tobool924 = icmp ne i32 %and923, 0
  br i1 %tobool924, label %if.end.935, label %land.lhs.true.925

land.lhs.true.925:                                ; preds = %if.end.919
  %290 = load i32, i32* @target_flags, align 4
  %and926 = and i32 %290, 1
  %tobool927 = icmp ne i32 %and926, 0
  br i1 %tobool927, label %if.then.928, label %if.end.935

if.then.928:                                      ; preds = %land.lhs.true.925
  %291 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers929 = getelementptr inbounds %struct.optab, %struct.optab* %291, i32 0, i32 1
  %arrayidx930 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers929, i32 0, i64 17
  %insn_code931 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx930, i32 0, i32 0
  store i32 992, i32* %insn_code931, align 4
  %292 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  %handlers932 = getelementptr inbounds %struct.optab, %struct.optab* %292, i32 0, i32 1
  %arrayidx933 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers932, i32 0, i64 17
  %insn_code934 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx933, i32 0, i32 0
  store i32 992, i32* %insn_code934, align 4
  br label %if.end.935

if.end.935:                                       ; preds = %if.then.928, %land.lhs.true.925, %if.end.919
  %293 = load i32, i32* @target_flags, align 4
  %and936 = and i32 %293, 1
  %tobool937 = icmp ne i32 %and936, 0
  br i1 %tobool937, label %if.then.938, label %if.end.945

if.then.938:                                      ; preds = %if.end.935
  %294 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers939 = getelementptr inbounds %struct.optab, %struct.optab* %294, i32 0, i32 1
  %arrayidx940 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers939, i32 0, i64 18
  %insn_code941 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx940, i32 0, i32 0
  store i32 993, i32* %insn_code941, align 4
  %295 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  %handlers942 = getelementptr inbounds %struct.optab, %struct.optab* %295, i32 0, i32 1
  %arrayidx943 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers942, i32 0, i64 18
  %insn_code944 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx943, i32 0, i32 0
  store i32 993, i32* %insn_code944, align 4
  br label %if.end.945

if.end.945:                                       ; preds = %if.then.938, %if.end.935
  %296 = load i32, i32* @target_flags, align 4
  %and946 = and i32 %296, 1
  %tobool947 = icmp ne i32 %and946, 0
  br i1 %tobool947, label %if.then.954, label %lor.lhs.false.948

lor.lhs.false.948:                                ; preds = %if.end.945
  %297 = load i32, i32* @target_flags, align 4
  %and949 = and i32 %297, 262144
  %cmp950 = icmp ne i32 %and949, 0
  br i1 %cmp950, label %land.lhs.true.951, label %if.end.961

land.lhs.true.951:                                ; preds = %lor.lhs.false.948
  %298 = load i32, i32* @ix86_fpmath, align 4
  %and952 = and i32 %298, 2
  %cmp953 = icmp ne i32 %and952, 0
  br i1 %cmp953, label %if.then.954, label %if.end.961

if.then.954:                                      ; preds = %land.lhs.true.951, %if.end.945
  %299 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers955 = getelementptr inbounds %struct.optab, %struct.optab* %299, i32 0, i32 1
  %arrayidx956 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers955, i32 0, i64 16
  %insn_code957 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx956, i32 0, i32 0
  store i32 994, i32* %insn_code957, align 4
  %300 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  %handlers958 = getelementptr inbounds %struct.optab, %struct.optab* %300, i32 0, i32 1
  %arrayidx959 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers958, i32 0, i64 16
  %insn_code960 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx959, i32 0, i32 0
  store i32 994, i32* %insn_code960, align 4
  br label %if.end.961

if.end.961:                                       ; preds = %if.then.954, %land.lhs.true.951, %lor.lhs.false.948
  %301 = load i32, i32* @target_flags, align 4
  %and962 = and i32 %301, 1
  %tobool963 = icmp ne i32 %and962, 0
  br i1 %tobool963, label %if.then.967, label %lor.lhs.false.964

lor.lhs.false.964:                                ; preds = %if.end.961
  %302 = load i32, i32* @ix86_fpmath, align 4
  %and965 = and i32 %302, 2
  %cmp966 = icmp ne i32 %and965, 0
  br i1 %cmp966, label %if.then.967, label %if.end.974

if.then.967:                                      ; preds = %lor.lhs.false.964, %if.end.961
  %303 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers968 = getelementptr inbounds %struct.optab, %struct.optab* %303, i32 0, i32 1
  %arrayidx969 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers968, i32 0, i64 15
  %insn_code970 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx969, i32 0, i32 0
  store i32 995, i32* %insn_code970, align 4
  %304 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  %handlers971 = getelementptr inbounds %struct.optab, %struct.optab* %304, i32 0, i32 1
  %arrayidx972 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers971, i32 0, i64 15
  %insn_code973 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx972, i32 0, i32 0
  store i32 995, i32* %insn_code973, align 4
  br label %if.end.974

if.end.974:                                       ; preds = %if.then.967, %lor.lhs.false.964
  %305 = load i32, i32* @target_flags, align 4
  %and975 = and i32 %305, 33554432
  %tobool976 = icmp ne i32 %and975, 0
  br i1 %tobool976, label %if.end.984, label %land.lhs.true.977

land.lhs.true.977:                                ; preds = %if.end.974
  %306 = load i32, i32* @target_flags, align 4
  %and978 = and i32 %306, 1
  %tobool979 = icmp ne i32 %and978, 0
  br i1 %tobool979, label %if.then.980, label %if.end.984

if.then.980:                                      ; preds = %land.lhs.true.977
  %307 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %handlers981 = getelementptr inbounds %struct.optab, %struct.optab* %307, i32 0, i32 1
  %arrayidx982 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers981, i32 0, i64 17
  %insn_code983 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx982, i32 0, i32 0
  store i32 996, i32* %insn_code983, align 4
  br label %if.end.984

if.end.984:                                       ; preds = %if.then.980, %land.lhs.true.977, %if.end.974
  %308 = load i32, i32* @target_flags, align 4
  %and985 = and i32 %308, 1
  %tobool986 = icmp ne i32 %and985, 0
  br i1 %tobool986, label %if.then.987, label %if.end.991

if.then.987:                                      ; preds = %if.end.984
  %309 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %handlers988 = getelementptr inbounds %struct.optab, %struct.optab* %309, i32 0, i32 1
  %arrayidx989 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers988, i32 0, i64 18
  %insn_code990 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx989, i32 0, i32 0
  store i32 997, i32* %insn_code990, align 4
  br label %if.end.991

if.end.991:                                       ; preds = %if.then.987, %if.end.984
  %310 = load i32, i32* @target_flags, align 4
  %and992 = and i32 %310, 1
  %tobool993 = icmp ne i32 %and992, 0
  br i1 %tobool993, label %if.then.1000, label %lor.lhs.false.994

lor.lhs.false.994:                                ; preds = %if.end.991
  %311 = load i32, i32* @target_flags, align 4
  %and995 = and i32 %311, 262144
  %cmp996 = icmp ne i32 %and995, 0
  br i1 %cmp996, label %land.lhs.true.997, label %if.end.1004

land.lhs.true.997:                                ; preds = %lor.lhs.false.994
  %312 = load i32, i32* @ix86_fpmath, align 4
  %and998 = and i32 %312, 2
  %cmp999 = icmp ne i32 %and998, 0
  br i1 %cmp999, label %if.then.1000, label %if.end.1004

if.then.1000:                                     ; preds = %land.lhs.true.997, %if.end.991
  %313 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %handlers1001 = getelementptr inbounds %struct.optab, %struct.optab* %313, i32 0, i32 1
  %arrayidx1002 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1001, i32 0, i64 16
  %insn_code1003 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1002, i32 0, i32 0
  store i32 998, i32* %insn_code1003, align 4
  br label %if.end.1004

if.end.1004:                                      ; preds = %if.then.1000, %land.lhs.true.997, %lor.lhs.false.994
  %314 = load i32, i32* @target_flags, align 4
  %and1005 = and i32 %314, 1
  %tobool1006 = icmp ne i32 %and1005, 0
  br i1 %tobool1006, label %if.then.1010, label %lor.lhs.false.1007

lor.lhs.false.1007:                               ; preds = %if.end.1004
  %315 = load i32, i32* @ix86_fpmath, align 4
  %and1008 = and i32 %315, 2
  %cmp1009 = icmp ne i32 %and1008, 0
  br i1 %cmp1009, label %if.then.1010, label %if.end.1014

if.then.1010:                                     ; preds = %lor.lhs.false.1007, %if.end.1004
  %316 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %handlers1011 = getelementptr inbounds %struct.optab, %struct.optab* %316, i32 0, i32 1
  %arrayidx1012 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1011, i32 0, i64 15
  %insn_code1013 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1012, i32 0, i32 0
  store i32 999, i32* %insn_code1013, align 4
  br label %if.end.1014

if.end.1014:                                      ; preds = %if.then.1010, %lor.lhs.false.1007
  %317 = load i32, i32* @target_flags, align 4
  %and1015 = and i32 %317, 33554432
  %tobool1016 = icmp ne i32 %and1015, 0
  br i1 %tobool1016, label %if.then.1017, label %if.end.1021

if.then.1017:                                     ; preds = %if.end.1014
  %318 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  %handlers1018 = getelementptr inbounds %struct.optab, %struct.optab* %318, i32 0, i32 1
  %arrayidx1019 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1018, i32 0, i64 5
  %insn_code1020 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1019, i32 0, i32 0
  store i32 1000, i32* %insn_code1020, align 4
  br label %if.end.1021

if.end.1021:                                      ; preds = %if.then.1017, %if.end.1014
  %319 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  %handlers1022 = getelementptr inbounds %struct.optab, %struct.optab* %319, i32 0, i32 1
  %arrayidx1023 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1022, i32 0, i64 4
  %insn_code1024 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1023, i32 0, i32 0
  store i32 1002, i32* %insn_code1024, align 4
  %320 = load i32, i32* @x86_himode_math, align 4
  %321 = load i32, i32* @ix86_cpu, align 4
  %shl1025 = shl i32 1, %321
  %and1026 = and i32 %320, %shl1025
  %tobool1027 = icmp ne i32 %and1026, 0
  br i1 %tobool1027, label %if.then.1028, label %if.end.1032

if.then.1028:                                     ; preds = %if.end.1021
  %322 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 14), align 8
  %handlers1029 = getelementptr inbounds %struct.optab, %struct.optab* %322, i32 0, i32 1
  %arrayidx1030 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1029, i32 0, i64 3
  %insn_code1031 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1030, i32 0, i32 0
  store i32 1006, i32* %insn_code1031, align 4
  br label %if.end.1032

if.end.1032:                                      ; preds = %if.then.1028, %if.end.1021
  %323 = load i32, i32* @target_flags, align 4
  %and1033 = and i32 %323, 33554432
  %tobool1034 = icmp ne i32 %and1033, 0
  br i1 %tobool1034, label %if.then.1035, label %if.end.1039

if.then.1035:                                     ; preds = %if.end.1032
  %324 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %handlers1036 = getelementptr inbounds %struct.optab, %struct.optab* %324, i32 0, i32 1
  %arrayidx1037 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1036, i32 0, i64 5
  %insn_code1038 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1037, i32 0, i32 0
  store i32 1011, i32* %insn_code1038, align 4
  br label %if.end.1039

if.end.1039:                                      ; preds = %if.then.1035, %if.end.1032
  %325 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %handlers1040 = getelementptr inbounds %struct.optab, %struct.optab* %325, i32 0, i32 1
  %arrayidx1041 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1040, i32 0, i64 4
  %insn_code1042 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1041, i32 0, i32 0
  store i32 1012, i32* %insn_code1042, align 4
  %326 = load i32, i32* @x86_himode_math, align 4
  %327 = load i32, i32* @ix86_cpu, align 4
  %shl1043 = shl i32 1, %327
  %and1044 = and i32 %326, %shl1043
  %tobool1045 = icmp ne i32 %and1044, 0
  br i1 %tobool1045, label %if.then.1046, label %if.end.1050

if.then.1046:                                     ; preds = %if.end.1039
  %328 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %handlers1047 = getelementptr inbounds %struct.optab, %struct.optab* %328, i32 0, i32 1
  %arrayidx1048 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1047, i32 0, i64 3
  %insn_code1049 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1048, i32 0, i32 0
  store i32 1016, i32* %insn_code1049, align 4
  br label %if.end.1050

if.end.1050:                                      ; preds = %if.then.1046, %if.end.1039
  %329 = load i32, i32* @x86_qimode_math, align 4
  %330 = load i32, i32* @ix86_cpu, align 4
  %shl1051 = shl i32 1, %330
  %and1052 = and i32 %329, %shl1051
  %tobool1053 = icmp ne i32 %and1052, 0
  br i1 %tobool1053, label %if.then.1054, label %if.end.1058

if.then.1054:                                     ; preds = %if.end.1050
  %331 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %handlers1055 = getelementptr inbounds %struct.optab, %struct.optab* %331, i32 0, i32 1
  %arrayidx1056 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1055, i32 0, i64 2
  %insn_code1057 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1056, i32 0, i32 0
  store i32 1017, i32* %insn_code1057, align 4
  br label %if.end.1058

if.end.1058:                                      ; preds = %if.then.1054, %if.end.1050
  %332 = load i32, i32* @target_flags, align 4
  %and1059 = and i32 %332, 33554432
  %tobool1060 = icmp ne i32 %and1059, 0
  br i1 %tobool1060, label %if.then.1061, label %if.end.1065

if.then.1061:                                     ; preds = %if.end.1058
  %333 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %handlers1062 = getelementptr inbounds %struct.optab, %struct.optab* %333, i32 0, i32 1
  %arrayidx1063 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1062, i32 0, i64 5
  %insn_code1064 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1063, i32 0, i32 0
  store i32 1018, i32* %insn_code1064, align 4
  br label %if.end.1065

if.end.1065:                                      ; preds = %if.then.1061, %if.end.1058
  %334 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %handlers1066 = getelementptr inbounds %struct.optab, %struct.optab* %334, i32 0, i32 1
  %arrayidx1067 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1066, i32 0, i64 4
  %insn_code1068 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1067, i32 0, i32 0
  store i32 1019, i32* %insn_code1068, align 4
  %335 = load i32, i32* @x86_himode_math, align 4
  %336 = load i32, i32* @ix86_cpu, align 4
  %shl1069 = shl i32 1, %336
  %and1070 = and i32 %335, %shl1069
  %tobool1071 = icmp ne i32 %and1070, 0
  br i1 %tobool1071, label %if.then.1072, label %if.end.1076

if.then.1072:                                     ; preds = %if.end.1065
  %337 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %handlers1073 = getelementptr inbounds %struct.optab, %struct.optab* %337, i32 0, i32 1
  %arrayidx1074 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1073, i32 0, i64 3
  %insn_code1075 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1074, i32 0, i32 0
  store i32 1020, i32* %insn_code1075, align 4
  br label %if.end.1076

if.end.1076:                                      ; preds = %if.then.1072, %if.end.1065
  %338 = load i32, i32* @x86_qimode_math, align 4
  %339 = load i32, i32* @ix86_cpu, align 4
  %shl1077 = shl i32 1, %339
  %and1078 = and i32 %338, %shl1077
  %tobool1079 = icmp ne i32 %and1078, 0
  br i1 %tobool1079, label %if.then.1080, label %if.end.1084

if.then.1080:                                     ; preds = %if.end.1076
  %340 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %handlers1081 = getelementptr inbounds %struct.optab, %struct.optab* %340, i32 0, i32 1
  %arrayidx1082 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1081, i32 0, i64 2
  %insn_code1083 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1082, i32 0, i32 0
  store i32 1021, i32* %insn_code1083, align 4
  br label %if.end.1084

if.end.1084:                                      ; preds = %if.then.1080, %if.end.1076
  %341 = load i32, i32* @target_flags, align 4
  %and1085 = and i32 %341, 33554432
  %tobool1086 = icmp ne i32 %and1085, 0
  br i1 %tobool1086, label %if.then.1087, label %if.end.1091

if.then.1087:                                     ; preds = %if.end.1084
  %342 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %handlers1088 = getelementptr inbounds %struct.optab, %struct.optab* %342, i32 0, i32 1
  %arrayidx1089 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1088, i32 0, i64 5
  %insn_code1090 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1089, i32 0, i32 0
  store i32 1022, i32* %insn_code1090, align 4
  br label %if.end.1091

if.end.1091:                                      ; preds = %if.then.1087, %if.end.1084
  %343 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %handlers1092 = getelementptr inbounds %struct.optab, %struct.optab* %343, i32 0, i32 1
  %arrayidx1093 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1092, i32 0, i64 4
  %insn_code1094 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1093, i32 0, i32 0
  store i32 1023, i32* %insn_code1094, align 4
  %344 = load i32, i32* @x86_himode_math, align 4
  %345 = load i32, i32* @ix86_cpu, align 4
  %shl1095 = shl i32 1, %345
  %and1096 = and i32 %344, %shl1095
  %tobool1097 = icmp ne i32 %and1096, 0
  br i1 %tobool1097, label %if.then.1098, label %if.end.1102

if.then.1098:                                     ; preds = %if.end.1091
  %346 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %handlers1099 = getelementptr inbounds %struct.optab, %struct.optab* %346, i32 0, i32 1
  %arrayidx1100 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1099, i32 0, i64 3
  %insn_code1101 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1100, i32 0, i32 0
  store i32 1024, i32* %insn_code1101, align 4
  br label %if.end.1102

if.end.1102:                                      ; preds = %if.then.1098, %if.end.1091
  %347 = load i32, i32* @x86_qimode_math, align 4
  %348 = load i32, i32* @ix86_cpu, align 4
  %shl1103 = shl i32 1, %348
  %and1104 = and i32 %347, %shl1103
  %tobool1105 = icmp ne i32 %and1104, 0
  br i1 %tobool1105, label %if.then.1106, label %if.end.1110

if.then.1106:                                     ; preds = %if.end.1102
  %349 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %handlers1107 = getelementptr inbounds %struct.optab, %struct.optab* %349, i32 0, i32 1
  %arrayidx1108 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1107, i32 0, i64 2
  %insn_code1109 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1108, i32 0, i32 0
  store i32 1025, i32* %insn_code1109, align 4
  br label %if.end.1110

if.end.1110:                                      ; preds = %if.then.1106, %if.end.1102
  %350 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %handlers1111 = getelementptr inbounds %struct.optab, %struct.optab* %350, i32 0, i32 1
  %arrayidx1112 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1111, i32 0, i64 5
  %insn_code1113 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1112, i32 0, i32 0
  store i32 1027, i32* %insn_code1113, align 4
  %351 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %handlers1114 = getelementptr inbounds %struct.optab, %struct.optab* %351, i32 0, i32 1
  %arrayidx1115 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1114, i32 0, i64 4
  %insn_code1116 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1115, i32 0, i32 0
  store i32 1029, i32* %insn_code1116, align 4
  %352 = load i32, i32* @x86_himode_math, align 4
  %353 = load i32, i32* @ix86_cpu, align 4
  %shl1117 = shl i32 1, %353
  %and1118 = and i32 %352, %shl1117
  %tobool1119 = icmp ne i32 %and1118, 0
  br i1 %tobool1119, label %if.then.1120, label %if.end.1124

if.then.1120:                                     ; preds = %if.end.1110
  %354 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %handlers1121 = getelementptr inbounds %struct.optab, %struct.optab* %354, i32 0, i32 1
  %arrayidx1122 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1121, i32 0, i64 3
  %insn_code1123 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1122, i32 0, i32 0
  store i32 1030, i32* %insn_code1123, align 4
  br label %if.end.1124

if.end.1124:                                      ; preds = %if.then.1120, %if.end.1110
  %355 = load i32, i32* @x86_qimode_math, align 4
  %356 = load i32, i32* @ix86_cpu, align 4
  %shl1125 = shl i32 1, %356
  %and1126 = and i32 %355, %shl1125
  %tobool1127 = icmp ne i32 %and1126, 0
  br i1 %tobool1127, label %if.then.1128, label %if.end.1132

if.then.1128:                                     ; preds = %if.end.1124
  %357 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %handlers1129 = getelementptr inbounds %struct.optab, %struct.optab* %357, i32 0, i32 1
  %arrayidx1130 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1129, i32 0, i64 2
  %insn_code1131 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1130, i32 0, i32 0
  store i32 1031, i32* %insn_code1131, align 4
  br label %if.end.1132

if.end.1132:                                      ; preds = %if.then.1128, %if.end.1124
  %358 = load i32, i32* @target_flags, align 4
  %and1133 = and i32 %358, 1
  %tobool1134 = icmp ne i32 %and1133, 0
  br i1 %tobool1134, label %if.then.1135, label %if.end.1142

if.then.1135:                                     ; preds = %if.end.1132
  %359 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %handlers1136 = getelementptr inbounds %struct.optab, %struct.optab* %359, i32 0, i32 1
  %arrayidx1137 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1136, i32 0, i64 15
  %insn_code1138 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1137, i32 0, i32 0
  store i32 1032, i32* %insn_code1138, align 4
  %360 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  %handlers1139 = getelementptr inbounds %struct.optab, %struct.optab* %360, i32 0, i32 1
  %arrayidx1140 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1139, i32 0, i64 15
  %insn_code1141 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1140, i32 0, i32 0
  store i32 1032, i32* %insn_code1141, align 4
  br label %if.end.1142

if.end.1142:                                      ; preds = %if.then.1135, %if.end.1132
  %361 = load i32, i32* @target_flags, align 4
  %and1143 = and i32 %361, 1
  %tobool1144 = icmp ne i32 %and1143, 0
  br i1 %tobool1144, label %if.then.1145, label %if.end.1152

if.then.1145:                                     ; preds = %if.end.1142
  %362 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %handlers1146 = getelementptr inbounds %struct.optab, %struct.optab* %362, i32 0, i32 1
  %arrayidx1147 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1146, i32 0, i64 16
  %insn_code1148 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1147, i32 0, i32 0
  store i32 1039, i32* %insn_code1148, align 4
  %363 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  %handlers1149 = getelementptr inbounds %struct.optab, %struct.optab* %363, i32 0, i32 1
  %arrayidx1150 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1149, i32 0, i64 16
  %insn_code1151 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1150, i32 0, i32 0
  store i32 1039, i32* %insn_code1151, align 4
  br label %if.end.1152

if.end.1152:                                      ; preds = %if.then.1145, %if.end.1142
  %364 = load i32, i32* @target_flags, align 4
  %and1153 = and i32 %364, 33554432
  %tobool1154 = icmp ne i32 %and1153, 0
  br i1 %tobool1154, label %if.end.1165, label %land.lhs.true.1155

land.lhs.true.1155:                               ; preds = %if.end.1152
  %365 = load i32, i32* @target_flags, align 4
  %and1156 = and i32 %365, 1
  %tobool1157 = icmp ne i32 %and1156, 0
  br i1 %tobool1157, label %if.then.1158, label %if.end.1165

if.then.1158:                                     ; preds = %land.lhs.true.1155
  %366 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %handlers1159 = getelementptr inbounds %struct.optab, %struct.optab* %366, i32 0, i32 1
  %arrayidx1160 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1159, i32 0, i64 17
  %insn_code1161 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1160, i32 0, i32 0
  store i32 1046, i32* %insn_code1161, align 4
  %367 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  %handlers1162 = getelementptr inbounds %struct.optab, %struct.optab* %367, i32 0, i32 1
  %arrayidx1163 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1162, i32 0, i64 17
  %insn_code1164 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1163, i32 0, i32 0
  store i32 1046, i32* %insn_code1164, align 4
  br label %if.end.1165

if.end.1165:                                      ; preds = %if.then.1158, %land.lhs.true.1155, %if.end.1152
  %368 = load i32, i32* @target_flags, align 4
  %and1166 = and i32 %368, 1
  %tobool1167 = icmp ne i32 %and1166, 0
  br i1 %tobool1167, label %if.then.1168, label %if.end.1175

if.then.1168:                                     ; preds = %if.end.1165
  %369 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %handlers1169 = getelementptr inbounds %struct.optab, %struct.optab* %369, i32 0, i32 1
  %arrayidx1170 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1169, i32 0, i64 18
  %insn_code1171 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1170, i32 0, i32 0
  store i32 1047, i32* %insn_code1171, align 4
  %370 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  %handlers1172 = getelementptr inbounds %struct.optab, %struct.optab* %370, i32 0, i32 1
  %arrayidx1173 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1172, i32 0, i64 18
  %insn_code1174 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1173, i32 0, i32 0
  store i32 1047, i32* %insn_code1174, align 4
  br label %if.end.1175

if.end.1175:                                      ; preds = %if.then.1168, %if.end.1165
  %371 = load i32, i32* @target_flags, align 4
  %and1176 = and i32 %371, 1
  %tobool1177 = icmp ne i32 %and1176, 0
  br i1 %tobool1177, label %if.then.1178, label %if.end.1185

if.then.1178:                                     ; preds = %if.end.1175
  %372 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 34), align 8
  %handlers1179 = getelementptr inbounds %struct.optab, %struct.optab* %372, i32 0, i32 1
  %arrayidx1180 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1179, i32 0, i64 15
  %insn_code1181 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1180, i32 0, i32 0
  store i32 1052, i32* %insn_code1181, align 4
  %373 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 35), align 8
  %handlers1182 = getelementptr inbounds %struct.optab, %struct.optab* %373, i32 0, i32 1
  %arrayidx1183 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1182, i32 0, i64 15
  %insn_code1184 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1183, i32 0, i32 0
  store i32 1052, i32* %insn_code1184, align 4
  br label %if.end.1185

if.end.1185:                                      ; preds = %if.then.1178, %if.end.1175
  %374 = load i32, i32* @target_flags, align 4
  %and1186 = and i32 %374, 1
  %tobool1187 = icmp ne i32 %and1186, 0
  br i1 %tobool1187, label %if.then.1188, label %if.end.1195

if.then.1188:                                     ; preds = %if.end.1185
  %375 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 34), align 8
  %handlers1189 = getelementptr inbounds %struct.optab, %struct.optab* %375, i32 0, i32 1
  %arrayidx1190 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1189, i32 0, i64 16
  %insn_code1191 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1190, i32 0, i32 0
  store i32 1059, i32* %insn_code1191, align 4
  %376 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 35), align 8
  %handlers1192 = getelementptr inbounds %struct.optab, %struct.optab* %376, i32 0, i32 1
  %arrayidx1193 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1192, i32 0, i64 16
  %insn_code1194 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1193, i32 0, i32 0
  store i32 1059, i32* %insn_code1194, align 4
  br label %if.end.1195

if.end.1195:                                      ; preds = %if.then.1188, %if.end.1185
  %377 = load i32, i32* @target_flags, align 4
  %and1196 = and i32 %377, 33554432
  %tobool1197 = icmp ne i32 %and1196, 0
  br i1 %tobool1197, label %if.end.1208, label %land.lhs.true.1198

land.lhs.true.1198:                               ; preds = %if.end.1195
  %378 = load i32, i32* @target_flags, align 4
  %and1199 = and i32 %378, 1
  %tobool1200 = icmp ne i32 %and1199, 0
  br i1 %tobool1200, label %if.then.1201, label %if.end.1208

if.then.1201:                                     ; preds = %land.lhs.true.1198
  %379 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 34), align 8
  %handlers1202 = getelementptr inbounds %struct.optab, %struct.optab* %379, i32 0, i32 1
  %arrayidx1203 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1202, i32 0, i64 17
  %insn_code1204 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1203, i32 0, i32 0
  store i32 1065, i32* %insn_code1204, align 4
  %380 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 35), align 8
  %handlers1205 = getelementptr inbounds %struct.optab, %struct.optab* %380, i32 0, i32 1
  %arrayidx1206 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1205, i32 0, i64 17
  %insn_code1207 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1206, i32 0, i32 0
  store i32 1065, i32* %insn_code1207, align 4
  br label %if.end.1208

if.end.1208:                                      ; preds = %if.then.1201, %land.lhs.true.1198, %if.end.1195
  %381 = load i32, i32* @target_flags, align 4
  %and1209 = and i32 %381, 1
  %tobool1210 = icmp ne i32 %and1209, 0
  br i1 %tobool1210, label %if.then.1211, label %if.end.1218

if.then.1211:                                     ; preds = %if.end.1208
  %382 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 34), align 8
  %handlers1212 = getelementptr inbounds %struct.optab, %struct.optab* %382, i32 0, i32 1
  %arrayidx1213 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1212, i32 0, i64 18
  %insn_code1214 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1213, i32 0, i32 0
  store i32 1066, i32* %insn_code1214, align 4
  %383 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 35), align 8
  %handlers1215 = getelementptr inbounds %struct.optab, %struct.optab* %383, i32 0, i32 1
  %arrayidx1216 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1215, i32 0, i64 18
  %insn_code1217 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1216, i32 0, i32 0
  store i32 1066, i32* %insn_code1217, align 4
  br label %if.end.1218

if.end.1218:                                      ; preds = %if.then.1211, %if.end.1208
  %384 = load i32, i32* @target_flags, align 4
  %and1219 = and i32 %384, 33554432
  %tobool1220 = icmp ne i32 %and1219, 0
  br i1 %tobool1220, label %if.then.1221, label %if.end.1225

if.then.1221:                                     ; preds = %if.end.1218
  %385 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  %handlers1222 = getelementptr inbounds %struct.optab, %struct.optab* %385, i32 0, i32 1
  %arrayidx1223 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1222, i32 0, i64 5
  %insn_code1224 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1223, i32 0, i32 0
  store i32 1071, i32* %insn_code1224, align 4
  br label %if.end.1225

if.end.1225:                                      ; preds = %if.then.1221, %if.end.1218
  %386 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  %handlers1226 = getelementptr inbounds %struct.optab, %struct.optab* %386, i32 0, i32 1
  %arrayidx1227 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1226, i32 0, i64 4
  %insn_code1228 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1227, i32 0, i32 0
  store i32 1073, i32* %insn_code1228, align 4
  %387 = load i32, i32* @x86_himode_math, align 4
  %388 = load i32, i32* @ix86_cpu, align 4
  %shl1229 = shl i32 1, %388
  %and1230 = and i32 %387, %shl1229
  %tobool1231 = icmp ne i32 %and1230, 0
  br i1 %tobool1231, label %if.then.1232, label %if.end.1236

if.then.1232:                                     ; preds = %if.end.1225
  %389 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  %handlers1233 = getelementptr inbounds %struct.optab, %struct.optab* %389, i32 0, i32 1
  %arrayidx1234 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1233, i32 0, i64 3
  %insn_code1235 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1234, i32 0, i32 0
  store i32 1076, i32* %insn_code1235, align 4
  br label %if.end.1236

if.end.1236:                                      ; preds = %if.then.1232, %if.end.1225
  %390 = load i32, i32* @x86_qimode_math, align 4
  %391 = load i32, i32* @ix86_cpu, align 4
  %shl1237 = shl i32 1, %391
  %and1238 = and i32 %390, %shl1237
  %tobool1239 = icmp ne i32 %and1238, 0
  br i1 %tobool1239, label %if.then.1240, label %if.end.1244

if.then.1240:                                     ; preds = %if.end.1236
  %392 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  %handlers1241 = getelementptr inbounds %struct.optab, %struct.optab* %392, i32 0, i32 1
  %arrayidx1242 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1241, i32 0, i64 2
  %insn_code1243 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1242, i32 0, i32 0
  store i32 1078, i32* %insn_code1243, align 4
  br label %if.end.1244

if.end.1244:                                      ; preds = %if.then.1240, %if.end.1236
  %393 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %handlers1245 = getelementptr inbounds %struct.optab, %struct.optab* %393, i32 0, i32 1
  %arrayidx1246 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1245, i32 0, i64 5
  %insn_code1247 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1246, i32 0, i32 0
  store i32 1080, i32* %insn_code1247, align 4
  %394 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %handlers1248 = getelementptr inbounds %struct.optab, %struct.optab* %394, i32 0, i32 1
  %arrayidx1249 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1248, i32 0, i64 4
  %insn_code1250 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1249, i32 0, i32 0
  store i32 1086, i32* %insn_code1250, align 4
  %395 = load i32, i32* @x86_himode_math, align 4
  %396 = load i32, i32* @ix86_cpu, align 4
  %shl1251 = shl i32 1, %396
  %and1252 = and i32 %395, %shl1251
  %tobool1253 = icmp ne i32 %and1252, 0
  br i1 %tobool1253, label %if.then.1254, label %if.end.1258

if.then.1254:                                     ; preds = %if.end.1244
  %397 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %handlers1255 = getelementptr inbounds %struct.optab, %struct.optab* %397, i32 0, i32 1
  %arrayidx1256 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1255, i32 0, i64 3
  %insn_code1257 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1256, i32 0, i32 0
  store i32 1089, i32* %insn_code1257, align 4
  br label %if.end.1258

if.end.1258:                                      ; preds = %if.then.1254, %if.end.1244
  %398 = load i32, i32* @x86_qimode_math, align 4
  %399 = load i32, i32* @ix86_cpu, align 4
  %shl1259 = shl i32 1, %399
  %and1260 = and i32 %398, %shl1259
  %tobool1261 = icmp ne i32 %and1260, 0
  br i1 %tobool1261, label %if.then.1262, label %if.end.1266

if.then.1262:                                     ; preds = %if.end.1258
  %400 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %handlers1263 = getelementptr inbounds %struct.optab, %struct.optab* %400, i32 0, i32 1
  %arrayidx1264 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1263, i32 0, i64 2
  %insn_code1265 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1264, i32 0, i32 0
  store i32 1090, i32* %insn_code1265, align 4
  br label %if.end.1266

if.end.1266:                                      ; preds = %if.then.1262, %if.end.1258
  %401 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  %handlers1267 = getelementptr inbounds %struct.optab, %struct.optab* %401, i32 0, i32 1
  %arrayidx1268 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1267, i32 0, i64 5
  %insn_code1269 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1268, i32 0, i32 0
  store i32 1091, i32* %insn_code1269, align 4
  %402 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  %handlers1270 = getelementptr inbounds %struct.optab, %struct.optab* %402, i32 0, i32 1
  %arrayidx1271 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1270, i32 0, i64 4
  %insn_code1272 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1271, i32 0, i32 0
  store i32 1095, i32* %insn_code1272, align 4
  %403 = load i32, i32* @x86_himode_math, align 4
  %404 = load i32, i32* @ix86_cpu, align 4
  %shl1273 = shl i32 1, %404
  %and1274 = and i32 %403, %shl1273
  %tobool1275 = icmp ne i32 %and1274, 0
  br i1 %tobool1275, label %if.then.1276, label %if.end.1280

if.then.1276:                                     ; preds = %if.end.1266
  %405 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  %handlers1277 = getelementptr inbounds %struct.optab, %struct.optab* %405, i32 0, i32 1
  %arrayidx1278 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1277, i32 0, i64 3
  %insn_code1279 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1278, i32 0, i32 0
  store i32 1096, i32* %insn_code1279, align 4
  br label %if.end.1280

if.end.1280:                                      ; preds = %if.then.1276, %if.end.1266
  %406 = load i32, i32* @x86_qimode_math, align 4
  %407 = load i32, i32* @ix86_cpu, align 4
  %shl1281 = shl i32 1, %407
  %and1282 = and i32 %406, %shl1281
  %tobool1283 = icmp ne i32 %and1282, 0
  br i1 %tobool1283, label %if.then.1284, label %if.end.1288

if.then.1284:                                     ; preds = %if.end.1280
  %408 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  %handlers1285 = getelementptr inbounds %struct.optab, %struct.optab* %408, i32 0, i32 1
  %arrayidx1286 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1285, i32 0, i64 2
  %insn_code1287 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1286, i32 0, i32 0
  store i32 1097, i32* %insn_code1287, align 4
  br label %if.end.1288

if.end.1288:                                      ; preds = %if.then.1284, %if.end.1280
  %409 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %handlers1289 = getelementptr inbounds %struct.optab, %struct.optab* %409, i32 0, i32 1
  %arrayidx1290 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1289, i32 0, i64 5
  %insn_code1291 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1290, i32 0, i32 0
  store i32 1098, i32* %insn_code1291, align 4
  %410 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %handlers1292 = getelementptr inbounds %struct.optab, %struct.optab* %410, i32 0, i32 1
  %arrayidx1293 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1292, i32 0, i64 4
  %insn_code1294 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1293, i32 0, i32 0
  store i32 1101, i32* %insn_code1294, align 4
  %411 = load i32, i32* @x86_himode_math, align 4
  %412 = load i32, i32* @ix86_cpu, align 4
  %shl1295 = shl i32 1, %412
  %and1296 = and i32 %411, %shl1295
  %tobool1297 = icmp ne i32 %and1296, 0
  br i1 %tobool1297, label %if.then.1298, label %if.end.1302

if.then.1298:                                     ; preds = %if.end.1288
  %413 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %handlers1299 = getelementptr inbounds %struct.optab, %struct.optab* %413, i32 0, i32 1
  %arrayidx1300 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1299, i32 0, i64 3
  %insn_code1301 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1300, i32 0, i32 0
  store i32 1102, i32* %insn_code1301, align 4
  br label %if.end.1302

if.end.1302:                                      ; preds = %if.then.1298, %if.end.1288
  %414 = load i32, i32* @x86_qimode_math, align 4
  %415 = load i32, i32* @ix86_cpu, align 4
  %shl1303 = shl i32 1, %415
  %and1304 = and i32 %414, %shl1303
  %tobool1305 = icmp ne i32 %and1304, 0
  br i1 %tobool1305, label %if.then.1306, label %if.end.1310

if.then.1306:                                     ; preds = %if.end.1302
  %416 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %handlers1307 = getelementptr inbounds %struct.optab, %struct.optab* %416, i32 0, i32 1
  %arrayidx1308 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1307, i32 0, i64 2
  %insn_code1309 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1308, i32 0, i32 0
  store i32 1103, i32* %insn_code1309, align 4
  br label %if.end.1310

if.end.1310:                                      ; preds = %if.then.1306, %if.end.1302
  %417 = load i32, i32* @target_flags, align 4
  %and1311 = and i32 %417, 33554432
  %tobool1312 = icmp ne i32 %and1311, 0
  br i1 %tobool1312, label %if.then.1313, label %if.end.1317

if.then.1313:                                     ; preds = %if.end.1310
  %418 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 24), align 8
  %handlers1314 = getelementptr inbounds %struct.optab, %struct.optab* %418, i32 0, i32 1
  %arrayidx1315 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1314, i32 0, i64 5
  %insn_code1316 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1315, i32 0, i32 0
  store i32 1104, i32* %insn_code1316, align 4
  br label %if.end.1317

if.end.1317:                                      ; preds = %if.then.1313, %if.end.1310
  %419 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 24), align 8
  %handlers1318 = getelementptr inbounds %struct.optab, %struct.optab* %419, i32 0, i32 1
  %arrayidx1319 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1318, i32 0, i64 4
  %insn_code1320 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1319, i32 0, i32 0
  store i32 1105, i32* %insn_code1320, align 4
  %420 = load i32, i32* @x86_himode_math, align 4
  %421 = load i32, i32* @ix86_cpu, align 4
  %shl1321 = shl i32 1, %421
  %and1322 = and i32 %420, %shl1321
  %tobool1323 = icmp ne i32 %and1322, 0
  br i1 %tobool1323, label %if.then.1324, label %if.end.1328

if.then.1324:                                     ; preds = %if.end.1317
  %422 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 24), align 8
  %handlers1325 = getelementptr inbounds %struct.optab, %struct.optab* %422, i32 0, i32 1
  %arrayidx1326 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1325, i32 0, i64 3
  %insn_code1327 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1326, i32 0, i32 0
  store i32 1106, i32* %insn_code1327, align 4
  br label %if.end.1328

if.end.1328:                                      ; preds = %if.then.1324, %if.end.1317
  %423 = load i32, i32* @x86_qimode_math, align 4
  %424 = load i32, i32* @ix86_cpu, align 4
  %shl1329 = shl i32 1, %424
  %and1330 = and i32 %423, %shl1329
  %tobool1331 = icmp ne i32 %and1330, 0
  br i1 %tobool1331, label %if.then.1332, label %if.end.1336

if.then.1332:                                     ; preds = %if.end.1328
  %425 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 24), align 8
  %handlers1333 = getelementptr inbounds %struct.optab, %struct.optab* %425, i32 0, i32 1
  %arrayidx1334 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1333, i32 0, i64 2
  %insn_code1335 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1334, i32 0, i32 0
  store i32 1107, i32* %insn_code1335, align 4
  br label %if.end.1336

if.end.1336:                                      ; preds = %if.then.1332, %if.end.1328
  %426 = load i32, i32* @target_flags, align 4
  %and1337 = and i32 %426, 33554432
  %tobool1338 = icmp ne i32 %and1337, 0
  br i1 %tobool1338, label %if.then.1339, label %if.end.1343

if.then.1339:                                     ; preds = %if.end.1336
  %427 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 25), align 8
  %handlers1340 = getelementptr inbounds %struct.optab, %struct.optab* %427, i32 0, i32 1
  %arrayidx1341 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1340, i32 0, i64 5
  %insn_code1342 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1341, i32 0, i32 0
  store i32 1108, i32* %insn_code1342, align 4
  br label %if.end.1343

if.end.1343:                                      ; preds = %if.then.1339, %if.end.1336
  %428 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 25), align 8
  %handlers1344 = getelementptr inbounds %struct.optab, %struct.optab* %428, i32 0, i32 1
  %arrayidx1345 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1344, i32 0, i64 4
  %insn_code1346 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1345, i32 0, i32 0
  store i32 1109, i32* %insn_code1346, align 4
  %429 = load i32, i32* @x86_himode_math, align 4
  %430 = load i32, i32* @ix86_cpu, align 4
  %shl1347 = shl i32 1, %430
  %and1348 = and i32 %429, %shl1347
  %tobool1349 = icmp ne i32 %and1348, 0
  br i1 %tobool1349, label %if.then.1350, label %if.end.1354

if.then.1350:                                     ; preds = %if.end.1343
  %431 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 25), align 8
  %handlers1351 = getelementptr inbounds %struct.optab, %struct.optab* %431, i32 0, i32 1
  %arrayidx1352 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1351, i32 0, i64 3
  %insn_code1353 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1352, i32 0, i32 0
  store i32 1110, i32* %insn_code1353, align 4
  br label %if.end.1354

if.end.1354:                                      ; preds = %if.then.1350, %if.end.1343
  %432 = load i32, i32* @x86_qimode_math, align 4
  %433 = load i32, i32* @ix86_cpu, align 4
  %shl1355 = shl i32 1, %433
  %and1356 = and i32 %432, %shl1355
  %tobool1357 = icmp ne i32 %and1356, 0
  br i1 %tobool1357, label %if.then.1358, label %if.end.1362

if.then.1358:                                     ; preds = %if.end.1354
  %434 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 25), align 8
  %handlers1359 = getelementptr inbounds %struct.optab, %struct.optab* %434, i32 0, i32 1
  %arrayidx1360 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1359, i32 0, i64 2
  %insn_code1361 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1360, i32 0, i32 0
  store i32 1111, i32* %insn_code1361, align 4
  br label %if.end.1362

if.end.1362:                                      ; preds = %if.then.1358, %if.end.1354
  store i32 1115, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 103), align 4
  store i32 1116, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 102), align 4
  store i32 1117, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 105), align 4
  store i32 1118, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 109), align 4
  store i32 1119, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 107), align 4
  store i32 1120, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 111), align 4
  store i32 1121, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 104), align 4
  store i32 1122, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 108), align 4
  store i32 1123, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 106), align 4
  store i32 1124, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 110), align 4
  %435 = load i32, i32* @target_flags, align 4
  %and1363 = and i32 %435, 1
  %tobool1364 = icmp ne i32 %and1363, 0
  br i1 %tobool1364, label %if.then.1368, label %lor.lhs.false.1365

lor.lhs.false.1365:                               ; preds = %if.end.1362
  %436 = load i32, i32* @target_flags, align 4
  %and1366 = and i32 %436, 327680
  %cmp1367 = icmp ne i32 %and1366, 0
  br i1 %cmp1367, label %if.then.1368, label %if.end.1369

if.then.1368:                                     ; preds = %lor.lhs.false.1365, %if.end.1362
  store i32 1125, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 112), align 4
  br label %if.end.1369

if.end.1369:                                      ; preds = %if.then.1368, %lor.lhs.false.1365
  %437 = load i32, i32* @target_flags, align 4
  %and1370 = and i32 %437, 1
  %tobool1371 = icmp ne i32 %and1370, 0
  br i1 %tobool1371, label %if.then.1372, label %if.end.1373

if.then.1372:                                     ; preds = %if.end.1369
  store i32 1126, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 113), align 4
  br label %if.end.1373

if.end.1373:                                      ; preds = %if.then.1372, %if.end.1369
  %438 = load i32, i32* @target_flags, align 4
  %and1374 = and i32 %438, 1
  %tobool1375 = icmp ne i32 %and1374, 0
  br i1 %tobool1375, label %if.then.1379, label %lor.lhs.false.1376

lor.lhs.false.1376:                               ; preds = %if.end.1373
  %439 = load i32, i32* @target_flags, align 4
  %and1377 = and i32 %439, 327680
  %cmp1378 = icmp ne i32 %and1377, 0
  br i1 %cmp1378, label %if.then.1379, label %if.end.1380

if.then.1379:                                     ; preds = %lor.lhs.false.1376, %if.end.1373
  store i32 1127, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 114), align 4
  br label %if.end.1380

if.end.1380:                                      ; preds = %if.then.1379, %lor.lhs.false.1376
  %440 = load i32, i32* @target_flags, align 4
  %and1381 = and i32 %440, 1
  %tobool1382 = icmp ne i32 %and1381, 0
  br i1 %tobool1382, label %if.then.1386, label %lor.lhs.false.1383

lor.lhs.false.1383:                               ; preds = %if.end.1380
  %441 = load i32, i32* @target_flags, align 4
  %and1384 = and i32 %441, 327680
  %cmp1385 = icmp ne i32 %and1384, 0
  br i1 %cmp1385, label %if.then.1386, label %if.end.1387

if.then.1386:                                     ; preds = %lor.lhs.false.1383, %if.end.1380
  store i32 1128, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 115), align 4
  br label %if.end.1387

if.end.1387:                                      ; preds = %if.then.1386, %lor.lhs.false.1383
  %442 = load i32, i32* @target_flags, align 4
  %and1388 = and i32 %442, 1
  %tobool1389 = icmp ne i32 %and1388, 0
  br i1 %tobool1389, label %if.then.1393, label %lor.lhs.false.1390

lor.lhs.false.1390:                               ; preds = %if.end.1387
  %443 = load i32, i32* @target_flags, align 4
  %and1391 = and i32 %443, 327680
  %cmp1392 = icmp ne i32 %and1391, 0
  br i1 %cmp1392, label %if.then.1393, label %if.end.1394

if.then.1393:                                     ; preds = %lor.lhs.false.1390, %if.end.1387
  store i32 1129, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 116), align 4
  br label %if.end.1394

if.end.1394:                                      ; preds = %if.then.1393, %lor.lhs.false.1390
  %444 = load i32, i32* @target_flags, align 4
  %and1395 = and i32 %444, 1
  %tobool1396 = icmp ne i32 %and1395, 0
  br i1 %tobool1396, label %if.then.1400, label %lor.lhs.false.1397

lor.lhs.false.1397:                               ; preds = %if.end.1394
  %445 = load i32, i32* @target_flags, align 4
  %and1398 = and i32 %445, 327680
  %cmp1399 = icmp ne i32 %and1398, 0
  br i1 %cmp1399, label %if.then.1400, label %if.end.1401

if.then.1400:                                     ; preds = %lor.lhs.false.1397, %if.end.1394
  store i32 1130, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 117), align 4
  br label %if.end.1401

if.end.1401:                                      ; preds = %if.then.1400, %lor.lhs.false.1397
  %446 = load i32, i32* @target_flags, align 4
  %and1402 = and i32 %446, 1
  %tobool1403 = icmp ne i32 %and1402, 0
  br i1 %tobool1403, label %if.then.1407, label %lor.lhs.false.1404

lor.lhs.false.1404:                               ; preds = %if.end.1401
  %447 = load i32, i32* @target_flags, align 4
  %and1405 = and i32 %447, 327680
  %cmp1406 = icmp ne i32 %and1405, 0
  br i1 %cmp1406, label %if.then.1407, label %if.end.1408

if.then.1407:                                     ; preds = %lor.lhs.false.1404, %if.end.1401
  store i32 1131, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 118), align 4
  br label %if.end.1408

if.end.1408:                                      ; preds = %if.then.1407, %lor.lhs.false.1404
  %448 = load i32, i32* @target_flags, align 4
  %and1409 = and i32 %448, 1
  %tobool1410 = icmp ne i32 %and1409, 0
  br i1 %tobool1410, label %if.then.1414, label %lor.lhs.false.1411

lor.lhs.false.1411:                               ; preds = %if.end.1408
  %449 = load i32, i32* @target_flags, align 4
  %and1412 = and i32 %449, 327680
  %cmp1413 = icmp ne i32 %and1412, 0
  br i1 %cmp1413, label %if.then.1414, label %if.end.1415

if.then.1414:                                     ; preds = %lor.lhs.false.1411, %if.end.1408
  store i32 1132, i32* getelementptr inbounds ([153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 119), align 4
  br label %if.end.1415

if.end.1415:                                      ; preds = %if.then.1414, %lor.lhs.false.1411
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_beq, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 103), align 8
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bne, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 102), align 8
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bgt, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 105), align 8
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bgtu, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 109), align 8
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_blt, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 107), align 8
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bltu, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 111), align 8
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bge, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 104), align 8
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bgeu, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 108), align 8
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_ble, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 106), align 8
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bleu, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 110), align 8
  %450 = load i32, i32* @target_flags, align 4
  %and1416 = and i32 %450, 1
  %tobool1417 = icmp ne i32 %and1416, 0
  br i1 %tobool1417, label %if.then.1421, label %lor.lhs.false.1418

lor.lhs.false.1418:                               ; preds = %if.end.1415
  %451 = load i32, i32* @target_flags, align 4
  %and1419 = and i32 %451, 327680
  %cmp1420 = icmp ne i32 %and1419, 0
  br i1 %cmp1420, label %if.then.1421, label %if.end.1422

if.then.1421:                                     ; preds = %lor.lhs.false.1418, %if.end.1415
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bunordered, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 112), align 8
  br label %if.end.1422

if.end.1422:                                      ; preds = %if.then.1421, %lor.lhs.false.1418
  %452 = load i32, i32* @target_flags, align 4
  %and1423 = and i32 %452, 1
  %tobool1424 = icmp ne i32 %and1423, 0
  br i1 %tobool1424, label %if.then.1428, label %lor.lhs.false.1425

lor.lhs.false.1425:                               ; preds = %if.end.1422
  %453 = load i32, i32* @target_flags, align 4
  %and1426 = and i32 %453, 327680
  %cmp1427 = icmp ne i32 %and1426, 0
  br i1 %cmp1427, label %if.then.1428, label %if.end.1429

if.then.1428:                                     ; preds = %lor.lhs.false.1425, %if.end.1422
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bordered, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 113), align 8
  br label %if.end.1429

if.end.1429:                                      ; preds = %if.then.1428, %lor.lhs.false.1425
  %454 = load i32, i32* @target_flags, align 4
  %and1430 = and i32 %454, 1
  %tobool1431 = icmp ne i32 %and1430, 0
  br i1 %tobool1431, label %if.then.1435, label %lor.lhs.false.1432

lor.lhs.false.1432:                               ; preds = %if.end.1429
  %455 = load i32, i32* @target_flags, align 4
  %and1433 = and i32 %455, 327680
  %cmp1434 = icmp ne i32 %and1433, 0
  br i1 %cmp1434, label %if.then.1435, label %if.end.1436

if.then.1435:                                     ; preds = %lor.lhs.false.1432, %if.end.1429
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_buneq, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 114), align 8
  br label %if.end.1436

if.end.1436:                                      ; preds = %if.then.1435, %lor.lhs.false.1432
  %456 = load i32, i32* @target_flags, align 4
  %and1437 = and i32 %456, 1
  %tobool1438 = icmp ne i32 %and1437, 0
  br i1 %tobool1438, label %if.then.1442, label %lor.lhs.false.1439

lor.lhs.false.1439:                               ; preds = %if.end.1436
  %457 = load i32, i32* @target_flags, align 4
  %and1440 = and i32 %457, 327680
  %cmp1441 = icmp ne i32 %and1440, 0
  br i1 %cmp1441, label %if.then.1442, label %if.end.1443

if.then.1442:                                     ; preds = %lor.lhs.false.1439, %if.end.1436
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bunge, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 115), align 8
  br label %if.end.1443

if.end.1443:                                      ; preds = %if.then.1442, %lor.lhs.false.1439
  %458 = load i32, i32* @target_flags, align 4
  %and1444 = and i32 %458, 1
  %tobool1445 = icmp ne i32 %and1444, 0
  br i1 %tobool1445, label %if.then.1449, label %lor.lhs.false.1446

lor.lhs.false.1446:                               ; preds = %if.end.1443
  %459 = load i32, i32* @target_flags, align 4
  %and1447 = and i32 %459, 327680
  %cmp1448 = icmp ne i32 %and1447, 0
  br i1 %cmp1448, label %if.then.1449, label %if.end.1450

if.then.1449:                                     ; preds = %lor.lhs.false.1446, %if.end.1443
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bungt, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 116), align 8
  br label %if.end.1450

if.end.1450:                                      ; preds = %if.then.1449, %lor.lhs.false.1446
  %460 = load i32, i32* @target_flags, align 4
  %and1451 = and i32 %460, 1
  %tobool1452 = icmp ne i32 %and1451, 0
  br i1 %tobool1452, label %if.then.1456, label %lor.lhs.false.1453

lor.lhs.false.1453:                               ; preds = %if.end.1450
  %461 = load i32, i32* @target_flags, align 4
  %and1454 = and i32 %461, 327680
  %cmp1455 = icmp ne i32 %and1454, 0
  br i1 %cmp1455, label %if.then.1456, label %if.end.1457

if.then.1456:                                     ; preds = %lor.lhs.false.1453, %if.end.1450
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bunle, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 117), align 8
  br label %if.end.1457

if.end.1457:                                      ; preds = %if.then.1456, %lor.lhs.false.1453
  %462 = load i32, i32* @target_flags, align 4
  %and1458 = and i32 %462, 1
  %tobool1459 = icmp ne i32 %and1458, 0
  br i1 %tobool1459, label %if.then.1463, label %lor.lhs.false.1460

lor.lhs.false.1460:                               ; preds = %if.end.1457
  %463 = load i32, i32* @target_flags, align 4
  %and1461 = and i32 %463, 327680
  %cmp1462 = icmp ne i32 %and1461, 0
  br i1 %cmp1462, label %if.then.1463, label %if.end.1464

if.then.1463:                                     ; preds = %lor.lhs.false.1460, %if.end.1457
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bunlt, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 118), align 8
  br label %if.end.1464

if.end.1464:                                      ; preds = %if.then.1463, %lor.lhs.false.1460
  %464 = load i32, i32* @target_flags, align 4
  %and1465 = and i32 %464, 1
  %tobool1466 = icmp ne i32 %and1465, 0
  br i1 %tobool1466, label %if.then.1470, label %lor.lhs.false.1467

lor.lhs.false.1467:                               ; preds = %if.end.1464
  %465 = load i32, i32* @target_flags, align 4
  %and1468 = and i32 %465, 327680
  %cmp1469 = icmp ne i32 %and1468, 0
  br i1 %cmp1469, label %if.then.1470, label %if.end.1471

if.then.1470:                                     ; preds = %lor.lhs.false.1467, %if.end.1464
  store %struct.rtx_def* (%struct.rtx_def*)* @gen_bltgt, %struct.rtx_def* (%struct.rtx_def*)** getelementptr inbounds ([153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 119), align 8
  br label %if.end.1471

if.end.1471:                                      ; preds = %if.then.1470, %lor.lhs.false.1467
  %466 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 37), align 8
  %handlers1472 = getelementptr inbounds %struct.optab, %struct.optab* %466, i32 0, i32 1
  %arrayidx1473 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1472, i32 0, i64 4
  %insn_code1474 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1473, i32 0, i32 0
  store i32 1180, i32* %insn_code1474, align 4
  %467 = load i32, i32* @target_flags, align 4
  %and1475 = and i32 %467, 64
  %tobool1476 = icmp ne i32 %and1475, 0
  br i1 %tobool1476, label %lor.lhs.false.1480, label %land.lhs.true.1477

land.lhs.true.1477:                               ; preds = %if.end.1471
  %468 = load i32, i32* @target_flags, align 4
  %and1478 = and i32 %468, 1
  %tobool1479 = icmp ne i32 %and1478, 0
  br i1 %tobool1479, label %if.then.1483, label %lor.lhs.false.1480

lor.lhs.false.1480:                               ; preds = %land.lhs.true.1477, %if.end.1471
  %469 = load i32, i32* @ix86_fpmath, align 4
  %and1481 = and i32 %469, 2
  %cmp1482 = icmp ne i32 %and1481, 0
  br i1 %cmp1482, label %if.then.1483, label %if.end.1487

if.then.1483:                                     ; preds = %lor.lhs.false.1480, %land.lhs.true.1477
  %470 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 38), align 8
  %handlers1484 = getelementptr inbounds %struct.optab, %struct.optab* %470, i32 0, i32 1
  %arrayidx1485 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1484, i32 0, i64 15
  %insn_code1486 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1485, i32 0, i32 0
  store i32 1183, i32* %insn_code1486, align 4
  br label %if.end.1487

if.end.1487:                                      ; preds = %if.then.1483, %lor.lhs.false.1480
  %471 = load i32, i32* @target_flags, align 4
  %and1488 = and i32 %471, 64
  %tobool1489 = icmp ne i32 %and1488, 0
  br i1 %tobool1489, label %lor.lhs.false.1493, label %land.lhs.true.1490

land.lhs.true.1490:                               ; preds = %if.end.1487
  %472 = load i32, i32* @target_flags, align 4
  %and1491 = and i32 %472, 1
  %tobool1492 = icmp ne i32 %and1491, 0
  br i1 %tobool1492, label %if.then.1499, label %lor.lhs.false.1493

lor.lhs.false.1493:                               ; preds = %land.lhs.true.1490, %if.end.1487
  %473 = load i32, i32* @target_flags, align 4
  %and1494 = and i32 %473, 262144
  %cmp1495 = icmp ne i32 %and1494, 0
  br i1 %cmp1495, label %land.lhs.true.1496, label %if.end.1503

land.lhs.true.1496:                               ; preds = %lor.lhs.false.1493
  %474 = load i32, i32* @ix86_fpmath, align 4
  %and1497 = and i32 %474, 2
  %cmp1498 = icmp ne i32 %and1497, 0
  br i1 %cmp1498, label %if.then.1499, label %if.end.1503

if.then.1499:                                     ; preds = %land.lhs.true.1496, %land.lhs.true.1490
  %475 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 38), align 8
  %handlers1500 = getelementptr inbounds %struct.optab, %struct.optab* %475, i32 0, i32 1
  %arrayidx1501 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1500, i32 0, i64 16
  %insn_code1502 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1501, i32 0, i32 0
  store i32 1184, i32* %insn_code1502, align 4
  br label %if.end.1503

if.end.1503:                                      ; preds = %if.then.1499, %land.lhs.true.1496, %lor.lhs.false.1493
  store i32 1185, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @movstr_optab, i32 0, i64 4), align 4
  %476 = load i32, i32* @target_flags, align 4
  %and1504 = and i32 %476, 33554432
  %tobool1505 = icmp ne i32 %and1504, 0
  br i1 %tobool1505, label %if.then.1506, label %if.end.1507

if.then.1506:                                     ; preds = %if.end.1503
  store i32 1186, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @movstr_optab, i32 0, i64 5), align 4
  br label %if.end.1507

if.end.1507:                                      ; preds = %if.then.1506, %if.end.1503
  store i32 1194, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @clrstr_optab, i32 0, i64 4), align 4
  %477 = load i32, i32* @target_flags, align 4
  %and1508 = and i32 %477, 33554432
  %tobool1509 = icmp ne i32 %and1508, 0
  br i1 %tobool1509, label %if.then.1510, label %if.end.1511

if.then.1510:                                     ; preds = %if.end.1507
  store i32 1195, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @clrstr_optab, i32 0, i64 5), align 4
  br label %if.end.1511

if.end.1511:                                      ; preds = %if.then.1510, %if.end.1507
  %478 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 44), align 8
  %handlers1512 = getelementptr inbounds %struct.optab, %struct.optab* %478, i32 0, i32 1
  %arrayidx1513 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1512, i32 0, i64 4
  %insn_code1514 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1513, i32 0, i32 0
  store i32 1205, i32* %insn_code1514, align 4
  %479 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 44), align 8
  %handlers1515 = getelementptr inbounds %struct.optab, %struct.optab* %479, i32 0, i32 1
  %arrayidx1516 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1515, i32 0, i64 5
  %insn_code1517 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1516, i32 0, i32 0
  store i32 1206, i32* %insn_code1517, align 4
  %480 = load i32, i32* @target_flags, align 4
  %and1518 = and i32 %480, 33554432
  %tobool1519 = icmp ne i32 %and1518, 0
  br i1 %tobool1519, label %if.then.1520, label %if.end.1521

if.then.1520:                                     ; preds = %if.end.1511
  store i32 1209, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @movcc_gen_code, i32 0, i64 5), align 4
  br label %if.end.1521

if.end.1521:                                      ; preds = %if.then.1520, %if.end.1511
  store i32 1210, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @movcc_gen_code, i32 0, i64 4), align 4
  %481 = load i32, i32* @x86_cmove, align 4
  %482 = load i32, i32* @ix86_arch, align 4
  %shl1522 = shl i32 1, %482
  %and1523 = and i32 %481, %shl1522
  %tobool1524 = icmp ne i32 %and1523, 0
  br i1 %tobool1524, label %land.lhs.true.1528, label %lor.lhs.false.1525

lor.lhs.false.1525:                               ; preds = %if.end.1521
  %483 = load i32, i32* @target_flags, align 4
  %and1526 = and i32 %483, 327680
  %cmp1527 = icmp ne i32 %and1526, 0
  br i1 %cmp1527, label %land.lhs.true.1528, label %if.end.1533

land.lhs.true.1528:                               ; preds = %lor.lhs.false.1525, %if.end.1521
  %484 = load i32, i32* @x86_himode_math, align 4
  %485 = load i32, i32* @ix86_cpu, align 4
  %shl1529 = shl i32 1, %485
  %and1530 = and i32 %484, %shl1529
  %tobool1531 = icmp ne i32 %and1530, 0
  br i1 %tobool1531, label %if.then.1532, label %if.end.1533

if.then.1532:                                     ; preds = %land.lhs.true.1528
  store i32 1211, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @movcc_gen_code, i32 0, i64 3), align 4
  br label %if.end.1533

if.end.1533:                                      ; preds = %if.then.1532, %land.lhs.true.1528, %lor.lhs.false.1525
  %486 = load i32, i32* @x86_cmove, align 4
  %487 = load i32, i32* @ix86_arch, align 4
  %shl1534 = shl i32 1, %487
  %and1535 = and i32 %486, %shl1534
  %tobool1536 = icmp ne i32 %and1535, 0
  br i1 %tobool1536, label %if.then.1540, label %lor.lhs.false.1537

lor.lhs.false.1537:                               ; preds = %if.end.1533
  %488 = load i32, i32* @target_flags, align 4
  %and1538 = and i32 %488, 327680
  %cmp1539 = icmp ne i32 %and1538, 0
  br i1 %cmp1539, label %if.then.1540, label %if.end.1541

if.then.1540:                                     ; preds = %lor.lhs.false.1537, %if.end.1533
  store i32 1212, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @movcc_gen_code, i32 0, i64 15), align 4
  br label %if.end.1541

if.end.1541:                                      ; preds = %if.then.1540, %lor.lhs.false.1537
  %489 = load i32, i32* @x86_cmove, align 4
  %490 = load i32, i32* @ix86_arch, align 4
  %shl1542 = shl i32 1, %490
  %and1543 = and i32 %489, %shl1542
  %tobool1544 = icmp ne i32 %and1543, 0
  br i1 %tobool1544, label %if.then.1548, label %lor.lhs.false.1545

lor.lhs.false.1545:                               ; preds = %if.end.1541
  %491 = load i32, i32* @target_flags, align 4
  %and1546 = and i32 %491, 327680
  %cmp1547 = icmp ne i32 %and1546, 0
  br i1 %cmp1547, label %if.then.1548, label %if.end.1549

if.then.1548:                                     ; preds = %lor.lhs.false.1545, %if.end.1541
  store i32 1213, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @movcc_gen_code, i32 0, i64 16), align 4
  br label %if.end.1549

if.end.1549:                                      ; preds = %if.then.1548, %lor.lhs.false.1545
  %492 = load i32, i32* @target_flags, align 4
  %and1550 = and i32 %492, 33554432
  %tobool1551 = icmp ne i32 %and1550, 0
  br i1 %tobool1551, label %if.end.1560, label %land.lhs.true.1552

land.lhs.true.1552:                               ; preds = %if.end.1549
  %493 = load i32, i32* @x86_cmove, align 4
  %494 = load i32, i32* @ix86_arch, align 4
  %shl1553 = shl i32 1, %494
  %and1554 = and i32 %493, %shl1553
  %tobool1555 = icmp ne i32 %and1554, 0
  br i1 %tobool1555, label %if.then.1559, label %lor.lhs.false.1556

lor.lhs.false.1556:                               ; preds = %land.lhs.true.1552
  %495 = load i32, i32* @target_flags, align 4
  %and1557 = and i32 %495, 327680
  %cmp1558 = icmp ne i32 %and1557, 0
  br i1 %cmp1558, label %if.then.1559, label %if.end.1560

if.then.1559:                                     ; preds = %lor.lhs.false.1556, %land.lhs.true.1552
  store i32 1215, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @movcc_gen_code, i32 0, i64 17), align 4
  br label %if.end.1560

if.end.1560:                                      ; preds = %if.then.1559, %lor.lhs.false.1556, %if.end.1549
  %496 = load i32, i32* @x86_cmove, align 4
  %497 = load i32, i32* @ix86_arch, align 4
  %shl1561 = shl i32 1, %497
  %and1562 = and i32 %496, %shl1561
  %tobool1563 = icmp ne i32 %and1562, 0
  br i1 %tobool1563, label %if.then.1567, label %lor.lhs.false.1564

lor.lhs.false.1564:                               ; preds = %if.end.1560
  %498 = load i32, i32* @target_flags, align 4
  %and1565 = and i32 %498, 327680
  %cmp1566 = icmp ne i32 %and1565, 0
  br i1 %cmp1566, label %if.then.1567, label %if.end.1568

if.then.1567:                                     ; preds = %lor.lhs.false.1564, %if.end.1560
  store i32 1216, i32* getelementptr inbounds ([59 x i32], [59 x i32]* @movcc_gen_code, i32 0, i64 18), align 4
  br label %if.end.1568

if.end.1568:                                      ; preds = %if.then.1567, %lor.lhs.false.1564
  %499 = load i32, i32* @target_flags, align 4
  %and1569 = and i32 %499, 327680
  %cmp1570 = icmp ne i32 %and1569, 0
  br i1 %cmp1570, label %if.then.1571, label %if.end.1575

if.then.1571:                                     ; preds = %if.end.1568
  %500 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 26), align 8
  %handlers1572 = getelementptr inbounds %struct.optab, %struct.optab* %500, i32 0, i32 1
  %arrayidx1573 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1572, i32 0, i64 15
  %insn_code1574 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1573, i32 0, i32 0
  store i32 1217, i32* %insn_code1574, align 4
  br label %if.end.1575

if.end.1575:                                      ; preds = %if.then.1571, %if.end.1568
  %501 = load i32, i32* @target_flags, align 4
  %and1576 = and i32 %501, 262144
  %cmp1577 = icmp ne i32 %and1576, 0
  br i1 %cmp1577, label %land.lhs.true.1578, label %if.end.1585

land.lhs.true.1578:                               ; preds = %if.end.1575
  %502 = load i32, i32* @ix86_fpmath, align 4
  %and1579 = and i32 %502, 2
  %cmp1580 = icmp ne i32 %and1579, 0
  br i1 %cmp1580, label %if.then.1581, label %if.end.1585

if.then.1581:                                     ; preds = %land.lhs.true.1578
  %503 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 26), align 8
  %handlers1582 = getelementptr inbounds %struct.optab, %struct.optab* %503, i32 0, i32 1
  %arrayidx1583 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1582, i32 0, i64 16
  %insn_code1584 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1583, i32 0, i32 0
  store i32 1220, i32* %insn_code1584, align 4
  br label %if.end.1585

if.end.1585:                                      ; preds = %if.then.1581, %land.lhs.true.1578, %if.end.1575
  %504 = load i32, i32* @target_flags, align 4
  %and1586 = and i32 %504, 327680
  %cmp1587 = icmp ne i32 %and1586, 0
  br i1 %cmp1587, label %if.then.1588, label %if.end.1592

if.then.1588:                                     ; preds = %if.end.1585
  %505 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 27), align 8
  %handlers1589 = getelementptr inbounds %struct.optab, %struct.optab* %505, i32 0, i32 1
  %arrayidx1590 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1589, i32 0, i64 15
  %insn_code1591 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1590, i32 0, i32 0
  store i32 1223, i32* %insn_code1591, align 4
  br label %if.end.1592

if.end.1592:                                      ; preds = %if.then.1588, %if.end.1585
  %506 = load i32, i32* @target_flags, align 4
  %and1593 = and i32 %506, 262144
  %cmp1594 = icmp ne i32 %and1593, 0
  br i1 %cmp1594, label %land.lhs.true.1595, label %if.end.1602

land.lhs.true.1595:                               ; preds = %if.end.1592
  %507 = load i32, i32* @ix86_fpmath, align 4
  %and1596 = and i32 %507, 2
  %cmp1597 = icmp ne i32 %and1596, 0
  br i1 %cmp1597, label %if.then.1598, label %if.end.1602

if.then.1598:                                     ; preds = %land.lhs.true.1595
  %508 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 27), align 8
  %handlers1599 = getelementptr inbounds %struct.optab, %struct.optab* %508, i32 0, i32 1
  %arrayidx1600 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1599, i32 0, i64 16
  %insn_code1601 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1600, i32 0, i32 0
  store i32 1226, i32* %insn_code1601, align 4
  br label %if.end.1602

if.end.1602:                                      ; preds = %if.then.1598, %land.lhs.true.1595, %if.end.1592
  %509 = load i32, i32* @target_flags, align 4
  %and1603 = and i32 %509, 327680
  %cmp1604 = icmp ne i32 %and1603, 0
  br i1 %cmp1604, label %if.then.1608, label %lor.lhs.false.1605

lor.lhs.false.1605:                               ; preds = %if.end.1602
  %510 = load i32, i32* @target_flags, align 4
  %and1606 = and i32 %510, 33554432
  %tobool1607 = icmp ne i32 %and1606, 0
  br i1 %tobool1607, label %if.then.1608, label %if.end.1612

if.then.1608:                                     ; preds = %lor.lhs.false.1605, %if.end.1602
  %511 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers1609 = getelementptr inbounds %struct.optab, %struct.optab* %511, i32 0, i32 1
  %arrayidx1610 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1609, i32 0, i64 6
  %insn_code1611 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1610, i32 0, i32 0
  store i32 1299, i32* %insn_code1611, align 4
  br label %if.end.1612

if.end.1612:                                      ; preds = %if.then.1608, %lor.lhs.false.1605
  %512 = load i32, i32* @target_flags, align 4
  %and1613 = and i32 %512, 327680
  %cmp1614 = icmp ne i32 %and1613, 0
  br i1 %cmp1614, label %if.then.1615, label %if.end.1619

if.then.1615:                                     ; preds = %if.end.1612
  %513 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers1616 = getelementptr inbounds %struct.optab, %struct.optab* %513, i32 0, i32 1
  %arrayidx1617 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1616, i32 0, i64 46
  %insn_code1618 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1617, i32 0, i32 0
  store i32 1300, i32* %insn_code1618, align 4
  br label %if.end.1619

if.end.1619:                                      ; preds = %if.then.1615, %if.end.1612
  %514 = load i32, i32* @target_flags, align 4
  %and1620 = and i32 %514, 16384
  %cmp1621 = icmp ne i32 %and1620, 0
  br i1 %cmp1621, label %if.then.1622, label %if.end.1626

if.then.1622:                                     ; preds = %if.end.1619
  %515 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers1623 = getelementptr inbounds %struct.optab, %struct.optab* %515, i32 0, i32 1
  %arrayidx1624 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1623, i32 0, i64 37
  %insn_code1625 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1624, i32 0, i32 0
  store i32 1301, i32* %insn_code1625, align 4
  br label %if.end.1626

if.end.1626:                                      ; preds = %if.then.1622, %if.end.1619
  %516 = load i32, i32* @target_flags, align 4
  %and1627 = and i32 %516, 16384
  %cmp1628 = icmp ne i32 %and1627, 0
  br i1 %cmp1628, label %if.then.1629, label %if.end.1633

if.then.1629:                                     ; preds = %if.end.1626
  %517 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers1630 = getelementptr inbounds %struct.optab, %struct.optab* %517, i32 0, i32 1
  %arrayidx1631 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1630, i32 0, i64 33
  %insn_code1632 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1631, i32 0, i32 0
  store i32 1302, i32* %insn_code1632, align 4
  br label %if.end.1633

if.end.1633:                                      ; preds = %if.then.1629, %if.end.1626
  %518 = load i32, i32* @target_flags, align 4
  %and1634 = and i32 %518, 16384
  %cmp1635 = icmp ne i32 %and1634, 0
  br i1 %cmp1635, label %if.then.1636, label %if.end.1640

if.then.1636:                                     ; preds = %if.end.1633
  %519 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers1637 = getelementptr inbounds %struct.optab, %struct.optab* %519, i32 0, i32 1
  %arrayidx1638 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1637, i32 0, i64 36
  %insn_code1639 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1638, i32 0, i32 0
  store i32 1303, i32* %insn_code1639, align 4
  br label %if.end.1640

if.end.1640:                                      ; preds = %if.then.1636, %if.end.1633
  %520 = load i32, i32* @target_flags, align 4
  %and1641 = and i32 %520, 16384
  %cmp1642 = icmp ne i32 %and1641, 0
  br i1 %cmp1642, label %if.then.1643, label %if.end.1647

if.then.1643:                                     ; preds = %if.end.1640
  %521 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers1644 = getelementptr inbounds %struct.optab, %struct.optab* %521, i32 0, i32 1
  %arrayidx1645 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1644, i32 0, i64 39
  %insn_code1646 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1645, i32 0, i32 0
  store i32 1304, i32* %insn_code1646, align 4
  br label %if.end.1647

if.end.1647:                                      ; preds = %if.then.1643, %if.end.1640
  %522 = load i32, i32* @target_flags, align 4
  %and1648 = and i32 %522, 1048576
  %cmp1649 = icmp ne i32 %and1648, 0
  br i1 %cmp1649, label %if.then.1650, label %if.end.1654

if.then.1650:                                     ; preds = %if.end.1647
  %523 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers1651 = getelementptr inbounds %struct.optab, %struct.optab* %523, i32 0, i32 1
  %arrayidx1652 = getelementptr inbounds [59 x %struct.anon], [59 x %struct.anon]* %handlers1651, i32 0, i64 44
  %insn_code1653 = getelementptr inbounds %struct.anon, %struct.anon* %arrayidx1652, i32 0, i32 0
  store i32 1305, i32* %insn_code1653, align 4
  br label %if.end.1654

if.end.1654:                                      ; preds = %if.then.1650, %if.end.1647
  ret void
}

declare %struct.rtx_def* @gen_beq(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bne(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bgt(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bgtu(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_blt(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bltu(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bge(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bgeu(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_ble(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bleu(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bunordered(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bordered(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_buneq(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bunge(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bungt(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bunle(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bunlt(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_bltgt(%struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
