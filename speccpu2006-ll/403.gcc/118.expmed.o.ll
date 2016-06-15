; ModuleID = 'expmed.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.optab = type { i32, [59 x %struct.anon.3] }
%struct.anon.3 = type { i32, %struct.rtx_def* }
%struct.insn_data = type { i8*, i8*, %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.insn_operand_data*, i8, i8, i8, i8 }
%struct.insn_operand_data = type { i32 (%struct.rtx_def*, i32)*, i8*, i16, i8, i8 }
%struct.mem_attrs = type { i64, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.function = type opaque
%struct.lang_decl = type opaque
%struct.realvaluetype = type { [3 x i64] }
%union.real_extract = type { %struct.realvaluetype }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.algorithm = type { i16, i16, [64 x i32], [64 x i8] }

@word_mode = external global i32, align 4
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@zero_cost = internal global i32 0, align 4
@add_cost = internal global i32 0, align 4
@shift_cost = internal global [64 x i32] zeroinitializer, align 16
@shiftsub_cost = internal global [64 x i32] zeroinitializer, align 16
@shiftadd_cost = internal global [64 x i32] zeroinitializer, align 16
@negate_cost = internal global i32 0, align 4
@sdiv_pow2_cheap = internal global i32 0, align 4
@smod_pow2_cheap = internal global i32 0, align 4
@class_narrowest_mode = external constant [9 x i32], align 16
@div_cost = internal global [59 x i32] zeroinitializer, align 16
@mul_cost = internal global [59 x i32] zeroinitializer, align 16
@mode_wider_mode = external constant [59 x i8], align 16
@mul_widen_cost = internal global [59 x i32] zeroinitializer, align 16
@mode_bitsize = external constant [59 x i16], align 16
@mul_highpart_cost = internal global [59 x i32] zeroinitializer, align 16
@optab_table = external global [49 x %struct.optab*], align 16
@insn_data = external constant [0 x %struct.insn_data], align 8
@.str = private unnamed_addr constant [9 x i8] c"expmed.c\00", align 1
@__FUNCTION__.mode_for_extraction = private unnamed_addr constant [20 x i8] c"mode_for_extraction\00", align 1
@target_flags = external global i32, align 4
@flag_force_mem = external global i32, align 4
@generating_concat_p = external global i32, align 4
@mode_size = external constant [59 x i8], align 16
@mode_class = external constant [59 x i32], align 16
@__FUNCTION__.store_bit_field = private unnamed_addr constant [16 x i8] c"store_bit_field\00", align 1
@volatile_ok = external global i32, align 4
@byte_mode = external global i32, align 4
@__FUNCTION__.extract_bit_field = private unnamed_addr constant [18 x i8] c"extract_bit_field\00", align 1
@__FUNCTION__.expand_shift = private unnamed_addr constant [13 x i8] c"expand_shift\00", align 1
@flag_trapv = external global i32, align 4
@__FUNCTION__.expand_mult = private unnamed_addr constant [12 x i8] c"expand_mult\00", align 1
@__FUNCTION__.expand_mult_highpart = private unnamed_addr constant [21 x i8] c"expand_mult_highpart\00", align 1
@expand_divmod.last_div_const = internal global i64 0, align 8
@__FUNCTION__.expand_divmod = private unnamed_addr constant [14 x i8] c"expand_divmod\00", align 1
@rtx_class = external constant [153 x i8], align 16
@ix86_branch_cost = external global i32, align 4
@setcc_gen_code = external global [153 x i32], align 16
@mode_mask_array = external constant [59 x i64], align 16
@const_true_rtx = external global %struct.rtx_def*, align 8
@flag_expensive_optimizations = external global i32, align 4
@__FUNCTION__.store_fixed_bit_field = private unnamed_addr constant [22 x i8] c"store_fixed_bit_field\00", align 1
@__FUNCTION__.choose_multiplier = private unnamed_addr constant [18 x i8] c"choose_multiplier\00", align 1
@__FUNCTION__.do_cmp_and_jump = private unnamed_addr constant [16 x i8] c"do_cmp_and_jump\00", align 1

; Function Attrs: nounwind uwtable
define void @init_expmed() #0 {
entry:
  %reg = alloca %struct.rtx_def*, align 8
  %shift_insn = alloca %struct.rtx_def*, align 8
  %shiftadd_insn = alloca %struct.rtx_def*, align 8
  %shiftsub_insn = alloca %struct.rtx_def*, align 8
  %dummy = alloca i32, align 4
  %m = alloca i32, align 4
  %mode = alloca i32, align 4
  %wider_mode = alloca i32, align 4
  %0 = load i32, i32* @word_mode, align 4
  %call = call %struct.rtx_def* @gen_rtx_REG(i32 %0, i32 10000)
  store %struct.rtx_def* %call, %struct.rtx_def** %reg, align 8
  call void @start_sequence()
  %1 = load i32, i32* @word_mode, align 4
  %call1 = call %struct.rtx_def* @gen_rtx_REG(i32 %1, i32 10000)
  store %struct.rtx_def* %call1, %struct.rtx_def** %reg, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call2 = call i32 @rtx_cost(%struct.rtx_def* %2, i32 0)
  store i32 %call2, i32* @zero_cost, align 4
  %3 = load i32, i32* @word_mode, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call3 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %3, %struct.rtx_def* %4, %struct.rtx_def* %5)
  %call4 = call i32 @rtx_cost(%struct.rtx_def* %call3, i32 47)
  store i32 %call4, i32* @add_cost, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %7 = load i32, i32* @word_mode, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call5 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 87, i32 %7, %struct.rtx_def* %8, %struct.rtx_def* %9)
  %call6 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %6, %struct.rtx_def* %call5)
  %call7 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call6)
  store %struct.rtx_def* %call7, %struct.rtx_def** %shift_insn, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %11 = load i32, i32* @word_mode, align 4
  %12 = load i32, i32* @word_mode, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call8 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 78, i32 %12, %struct.rtx_def* %13, %struct.rtx_def* %14)
  %15 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call9 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %11, %struct.rtx_def* %call8, %struct.rtx_def* %15)
  %call10 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %10, %struct.rtx_def* %call9)
  %call11 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call10)
  store %struct.rtx_def* %call11, %struct.rtx_def** %shiftadd_insn, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %17 = load i32, i32* @word_mode, align 4
  %18 = load i32, i32* @word_mode, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call12 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 78, i32 %18, %struct.rtx_def* %19, %struct.rtx_def* %20)
  %21 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call13 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %17, %struct.rtx_def* %call12, %struct.rtx_def* %21)
  %call14 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %16, %struct.rtx_def* %call13)
  %call15 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call14)
  store %struct.rtx_def* %call15, %struct.rtx_def** %shiftsub_insn, align 8
  call void @init_recog()
  store i32 0, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @shift_cost, i32 0, i64 0), align 4
  %22 = load i32, i32* @add_cost, align 4
  store i32 %22, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @shiftsub_cost, i32 0, i64 0), align 4
  store i32 %22, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @shiftadd_cost, i32 0, i64 0), align 4
  store i32 1, i32* %m, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %23 = load i32, i32* %m, align 4
  %cmp = icmp slt i32 %23, 64
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %m, align 4
  %idxprom = sext i32 %24 to i64
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* @shiftsub_cost, i32 0, i64 %idxprom
  store i32 32000, i32* %arrayidx, align 4
  %25 = load i32, i32* %m, align 4
  %idxprom16 = sext i32 %25 to i64
  %arrayidx17 = getelementptr inbounds [64 x i32], [64 x i32]* @shiftadd_cost, i32 0, i64 %idxprom16
  store i32 32000, i32* %arrayidx17, align 4
  %26 = load i32, i32* %m, align 4
  %idxprom18 = sext i32 %26 to i64
  %arrayidx19 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom18
  store i32 32000, i32* %arrayidx19, align 4
  %27 = load i32, i32* %m, align 4
  %conv = sext i32 %27 to i64
  %call20 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %shift_insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 1
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  store %struct.rtx_def* %call20, %struct.rtx_def** %rtx27, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %shift_insn, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 3
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %shift_insn, align 8
  %call31 = call i32 @recog(%struct.rtx_def* %32, %struct.rtx_def* %33, i32* %dummy)
  %cmp32 = icmp sge i32 %call31, 0
  br i1 %cmp32, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %34 = load %struct.rtx_def*, %struct.rtx_def** %shift_insn, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 3
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %call40 = call i32 @rtx_cost(%struct.rtx_def* %36, i32 47)
  %37 = load i32, i32* %m, align 4
  %idxprom41 = sext i32 %37 to i64
  %arrayidx42 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom41
  store i32 %call40, i32* %arrayidx42, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %38 = load i32, i32* %m, align 4
  %sh_prom = zext i32 %38 to i64
  %shl = shl i64 1, %sh_prom
  %call43 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %shl)
  %39 = load %struct.rtx_def*, %struct.rtx_def** %shiftadd_insn, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 3
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 1
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  store %struct.rtx_def* %call43, %struct.rtx_def** %rtx55, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %shiftadd_insn, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 3
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %shiftadd_insn, align 8
  %call59 = call i32 @recog(%struct.rtx_def* %44, %struct.rtx_def* %45, i32* %dummy)
  %cmp60 = icmp sge i32 %call59, 0
  br i1 %cmp60, label %if.then.62, label %if.end.72

if.then.62:                                       ; preds = %if.end
  %46 = load %struct.rtx_def*, %struct.rtx_def** %shiftadd_insn, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 3
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 1
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  %call69 = call i32 @rtx_cost(%struct.rtx_def* %48, i32 47)
  %49 = load i32, i32* %m, align 4
  %idxprom70 = sext i32 %49 to i64
  %arrayidx71 = getelementptr inbounds [64 x i32], [64 x i32]* @shiftadd_cost, i32 0, i64 %idxprom70
  store i32 %call69, i32* %arrayidx71, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.62, %if.end
  %50 = load i32, i32* %m, align 4
  %sh_prom73 = zext i32 %50 to i64
  %shl74 = shl i64 1, %sh_prom73
  %call75 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %shl74)
  %51 = load %struct.rtx_def*, %struct.rtx_def** %shiftsub_insn, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 3
  %rtx78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx78, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 1
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 1
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  store %struct.rtx_def* %call75, %struct.rtx_def** %rtx87, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %shiftsub_insn, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 3
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %shiftsub_insn, align 8
  %call91 = call i32 @recog(%struct.rtx_def* %56, %struct.rtx_def* %57, i32* %dummy)
  %cmp92 = icmp sge i32 %call91, 0
  br i1 %cmp92, label %if.then.94, label %if.end.104

if.then.94:                                       ; preds = %if.end.72
  %58 = load %struct.rtx_def*, %struct.rtx_def** %shiftsub_insn, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 3
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 1
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  %call101 = call i32 @rtx_cost(%struct.rtx_def* %60, i32 47)
  %61 = load i32, i32* %m, align 4
  %idxprom102 = sext i32 %61 to i64
  %arrayidx103 = getelementptr inbounds [64 x i32], [64 x i32]* @shiftsub_cost, i32 0, i64 %idxprom102
  store i32 %call101, i32* %arrayidx103, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.94, %if.end.72
  br label %for.inc

for.inc:                                          ; preds = %if.end.104
  %62 = load i32, i32* %m, align 4
  %inc = add nsw i32 %62, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %63 = load i32, i32* @word_mode, align 4
  %64 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call105 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 77, i32 %63, %struct.rtx_def* %64)
  %call106 = call i32 @rtx_cost(%struct.rtx_def* %call105, i32 47)
  store i32 %call106, i32* @negate_cost, align 4
  %65 = load i32, i32* @word_mode, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call107 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 32)
  %call108 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 79, i32 %65, %struct.rtx_def* %66, %struct.rtx_def* %call107)
  %call109 = call i32 @rtx_cost(%struct.rtx_def* %call108, i32 47)
  %67 = load i32, i32* @add_cost, align 4
  %mul = mul nsw i32 2, %67
  %cmp110 = icmp sle i32 %call109, %mul
  %conv111 = zext i1 %cmp110 to i32
  store i32 %conv111, i32* @sdiv_pow2_cheap, align 4
  %68 = load i32, i32* @word_mode, align 4
  %69 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call112 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 32)
  %call113 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 80, i32 %68, %struct.rtx_def* %69, %struct.rtx_def* %call112)
  %call114 = call i32 @rtx_cost(%struct.rtx_def* %call113, i32 47)
  %70 = load i32, i32* @add_cost, align 4
  %mul115 = mul nsw i32 2, %70
  %cmp116 = icmp sle i32 %call114, %mul115
  %conv117 = zext i1 %cmp116 to i32
  store i32 %conv117, i32* @smod_pow2_cheap, align 4
  %71 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 1), align 4
  store i32 %71, i32* %mode, align 4
  br label %for.cond.118

for.cond.118:                                     ; preds = %for.inc.156, %for.end
  %72 = load i32, i32* %mode, align 4
  %cmp119 = icmp ne i32 %72, 0
  br i1 %cmp119, label %for.body.121, label %for.end.160

for.body.121:                                     ; preds = %for.cond.118
  %73 = load i32, i32* %mode, align 4
  %call122 = call %struct.rtx_def* @gen_rtx_REG(i32 %73, i32 10000)
  store %struct.rtx_def* %call122, %struct.rtx_def** %reg, align 8
  %74 = load i32, i32* %mode, align 4
  %75 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call123 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 81, i32 %74, %struct.rtx_def* %75, %struct.rtx_def* %76)
  %call124 = call i32 @rtx_cost(%struct.rtx_def* %call123, i32 47)
  %77 = load i32, i32* %mode, align 4
  %idxprom125 = sext i32 %77 to i64
  %arrayidx126 = getelementptr inbounds [59 x i32], [59 x i32]* @div_cost, i32 0, i64 %idxprom125
  store i32 %call124, i32* %arrayidx126, align 4
  %78 = load i32, i32* %mode, align 4
  %79 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call127 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 78, i32 %78, %struct.rtx_def* %79, %struct.rtx_def* %80)
  %call128 = call i32 @rtx_cost(%struct.rtx_def* %call127, i32 47)
  %81 = load i32, i32* %mode, align 4
  %idxprom129 = sext i32 %81 to i64
  %arrayidx130 = getelementptr inbounds [59 x i32], [59 x i32]* @mul_cost, i32 0, i64 %idxprom129
  store i32 %call128, i32* %arrayidx130, align 4
  %82 = load i32, i32* %mode, align 4
  %idxprom131 = sext i32 %82 to i64
  %arrayidx132 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom131
  %83 = load i8, i8* %arrayidx132, align 1
  %conv133 = zext i8 %83 to i32
  store i32 %conv133, i32* %wider_mode, align 4
  %84 = load i32, i32* %wider_mode, align 4
  %cmp134 = icmp ne i32 %84, 0
  br i1 %cmp134, label %if.then.136, label %if.end.155

if.then.136:                                      ; preds = %for.body.121
  %85 = load i32, i32* %wider_mode, align 4
  %86 = load i32, i32* %wider_mode, align 4
  %87 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call137 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 121, i32 %86, %struct.rtx_def* %87)
  %88 = load i32, i32* %wider_mode, align 4
  %89 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call138 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 121, i32 %88, %struct.rtx_def* %89)
  %call139 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 78, i32 %85, %struct.rtx_def* %call137, %struct.rtx_def* %call138)
  %call140 = call i32 @rtx_cost(%struct.rtx_def* %call139, i32 47)
  %90 = load i32, i32* %wider_mode, align 4
  %idxprom141 = sext i32 %90 to i64
  %arrayidx142 = getelementptr inbounds [59 x i32], [59 x i32]* @mul_widen_cost, i32 0, i64 %idxprom141
  store i32 %call140, i32* %arrayidx142, align 4
  %91 = load i32, i32* %mode, align 4
  %92 = load i32, i32* %wider_mode, align 4
  %93 = load i32, i32* %wider_mode, align 4
  %94 = load i32, i32* %wider_mode, align 4
  %95 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call143 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 121, i32 %94, %struct.rtx_def* %95)
  %96 = load i32, i32* %wider_mode, align 4
  %97 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call144 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 121, i32 %96, %struct.rtx_def* %97)
  %call145 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 78, i32 %93, %struct.rtx_def* %call143, %struct.rtx_def* %call144)
  %98 = load i32, i32* %mode, align 4
  %idxprom146 = sext i32 %98 to i64
  %arrayidx147 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom146
  %99 = load i16, i16* %arrayidx147, align 2
  %conv148 = zext i16 %99 to i64
  %call149 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv148)
  %call150 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 90, i32 %92, %struct.rtx_def* %call145, %struct.rtx_def* %call149)
  %call151 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 122, i32 %91, %struct.rtx_def* %call150)
  %call152 = call i32 @rtx_cost(%struct.rtx_def* %call151, i32 47)
  %100 = load i32, i32* %mode, align 4
  %idxprom153 = sext i32 %100 to i64
  %arrayidx154 = getelementptr inbounds [59 x i32], [59 x i32]* @mul_highpart_cost, i32 0, i64 %idxprom153
  store i32 %call152, i32* %arrayidx154, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.136, %for.body.121
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.155
  %101 = load i32, i32* %mode, align 4
  %idxprom157 = sext i32 %101 to i64
  %arrayidx158 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom157
  %102 = load i8, i8* %arrayidx158, align 1
  %conv159 = zext i8 %102 to i32
  store i32 %conv159, i32* %mode, align 4
  br label %for.cond.118

for.end.160:                                      ; preds = %for.cond.118
  call void @end_sequence()
  ret void
}

declare %struct.rtx_def* @gen_rtx_REG(i32, i32) #1

declare void @start_sequence() #1

declare i32 @rtx_cost(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

declare void @init_recog() #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare i32 @recog(%struct.rtx_def*, %struct.rtx_def*, i32*) #1

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

declare void @end_sequence() #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @negate_rtx(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %result = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = load i32, i32* %mode.addr, align 4
  %call = call %struct.rtx_def* @simplify_unary_operation(i32 77, i32 %0, %struct.rtx_def* %1, i32 %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %result, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %cmp = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %mode.addr, align 4
  %5 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call1 = call %struct.rtx_def* @expand_unop(i32 %4, %struct.optab* %5, %struct.rtx_def* %6, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call1, %struct.rtx_def** %result, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  ret %struct.rtx_def* %7
}

declare %struct.rtx_def* @simplify_unary_operation(i32, i32, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @expand_unop(i32, %struct.optab*, %struct.rtx_def*, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @mode_for_extraction(i32 %pattern, i32 %opno) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca i32, align 4
  %opno.addr = alloca i32, align 4
  %data = alloca %struct.insn_data*, align 8
  store i32 %pattern, i32* %pattern.addr, align 4
  store i32 %opno, i32* %opno.addr, align 4
  %0 = load i32, i32* %pattern.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.1
    i32 2, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %entry
  store %struct.insn_data* getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1114), %struct.insn_data** %data, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  store %struct.insn_data* getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1112), %struct.insn_data** %data, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %entry
  store %struct.insn_data* getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1113), %struct.insn_data** %data, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 259, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.mode_for_extraction, i32 0, i32 0)) #4
  unreachable

sw.epilog:                                        ; preds = %sw.bb.2, %sw.bb.1, %sw.bb
  %1 = load i32, i32* %opno.addr, align 4
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %sw.epilog
  %2 = load i32, i32* %opno.addr, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.insn_data*, %struct.insn_data** %data, align 8
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %3, i32 0, i32 3
  %4 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %4, i64 %idxprom
  %mode = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx, i32 0, i32 2
  %bf.load = load i16, i16* %mode, align 8
  %bf.cast = zext i16 %bf.load to i32
  %cmp3 = icmp eq i32 %bf.cast, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  %5 = load i32, i32* @word_mode, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %6 = load i32, i32* %opno.addr, align 4
  %idxprom6 = sext i32 %6 to i64
  %7 = load %struct.insn_data*, %struct.insn_data** %data, align 8
  %operand7 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %7, i32 0, i32 3
  %8 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand7, align 8
  %arrayidx8 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %8, i64 %idxprom6
  %mode9 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx8, i32 0, i32 2
  %bf.load10 = load i16, i16* %mode9, align 8
  %bf.cast11 = zext i16 %bf.load10 to i32
  store i32 %bf.cast11, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @store_bit_field(%struct.rtx_def* %str_rtx, i64 %bitsize, i64 %bitnum, i32 %fieldmode, %struct.rtx_def* %value, i64 %total_size) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %str_rtx.addr = alloca %struct.rtx_def*, align 8
  %bitsize.addr = alloca i64, align 8
  %bitnum.addr = alloca i64, align 8
  %fieldmode.addr = alloca i32, align 4
  %value.addr = alloca %struct.rtx_def*, align 8
  %total_size.addr = alloca i64, align 8
  %unit = alloca i32, align 4
  %offset = alloca i64, align 8
  %bitpos = alloca i64, align 8
  %op0 = alloca %struct.rtx_def*, align 8
  %byte_offset = alloca i32, align 4
  %op_mode = alloca i32, align 4
  %old_generating_concat_p = alloca i32, align 4
  %imode = alloca i32, align 4
  %icode = alloca i32, align 4
  %backwards = alloca i32, align 4
  %nwords = alloca i32, align 4
  %i = alloca i32, align 4
  %wordnum = alloca i32, align 4
  %bit_offset = alloca i32, align 4
  %xbitpos = alloca i32, align 4
  %value1 = alloca %struct.rtx_def*, align 8
  %xop0 = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %maxmode = alloca i32, align 4
  %save_volatile_ok = alloca i32, align 4
  %tempreg = alloca %struct.rtx_def*, align 8
  %bestmode = alloca i32, align 4
  %tmp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %str_rtx, %struct.rtx_def** %str_rtx.addr, align 8
  store i64 %bitsize, i64* %bitsize.addr, align 8
  store i64 %bitnum, i64* %bitnum.addr, align 8
  store i32 %fieldmode, i32* %fieldmode.addr, align 4
  store %struct.rtx_def* %value, %struct.rtx_def** %value.addr, align 8
  store i64 %total_size, i64* %total_size.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %str_rtx.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i32 [ 8, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond1, i32* %unit, align 4
  %3 = load i64, i64* %bitnum.addr, align 8
  %4 = load i32, i32* %unit, align 4
  %conv = zext i32 %4 to i64
  %div = udiv i64 %3, %conv
  store i64 %div, i64* %offset, align 8
  %5 = load i64, i64* %bitnum.addr, align 8
  %6 = load i32, i32* %unit, align 4
  %conv2 = zext i32 %6 to i64
  %rem = urem i64 %5, %conv2
  store i64 %rem, i64* %bitpos, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %str_rtx.addr, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %op0, align 8
  %call = call i32 @mode_for_extraction(i32 0, i32 3)
  store i32 %call, i32* %op_mode, align 4
  %8 = load i64, i64* %total_size.addr, align 8
  %cmp3 = icmp sge i64 %8, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load i64, i64* %bitpos, align 8
  %div5 = udiv i64 %9, 128
  %mul = mul i64 %div5, 16
  %10 = load i64, i64* %total_size.addr, align 8
  %sub = sub i64 %10, %mul
  store i64 %sub, i64* %total_size.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load6 = load i32, i32* %12, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 63
  br i1 %cmp8, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %14 = load i32, i32* %rtuint, align 4
  %15 = load i32, i32* @target_flags, align 4
  %and10 = and i32 %15, 33554432
  %tobool11 = icmp ne i32 %and10, 0
  %cond12 = select i1 %tobool11, i32 8, i32 4
  %div13 = udiv i32 %14, %cond12
  %conv14 = zext i32 %div13 to i64
  %16 = load i64, i64* %offset, align 8
  %add = add i64 %16, %conv14
  store i64 %add, i64* %offset, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %op0, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %19 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call17 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %19, i32 0)
  store %struct.rtx_def* %call17, %struct.rtx_def** %value.addr, align 8
  %20 = load i32, i32* @flag_force_mem, align 4
  %tobool18 = icmp ne i32 %20, 0
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %while.end
  %21 = load i32, i32* @generating_concat_p, align 4
  store i32 %21, i32* %old_generating_concat_p, align 4
  store i32 0, i32* @generating_concat_p, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call20 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %22)
  store %struct.rtx_def* %call20, %struct.rtx_def** %value.addr, align 8
  %23 = load i32, i32* %old_generating_concat_p, align 4
  store i32 %23, i32* @generating_concat_p, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %while.end
  %24 = load i64, i64* %bitnum.addr, align 8
  %25 = load i32, i32* @target_flags, align 4
  %and22 = and i32 %25, 33554432
  %tobool23 = icmp ne i32 %and22, 0
  %cond24 = select i1 %tobool23, i32 64, i32 32
  %conv25 = sext i32 %cond24 to i64
  %rem26 = urem i64 %24, %conv25
  %div27 = udiv i64 %rem26, 8
  %26 = load i64, i64* %offset, align 8
  %27 = load i32, i32* @target_flags, align 4
  %and28 = and i32 %27, 33554432
  %tobool29 = icmp ne i32 %and28, 0
  %cond30 = select i1 %tobool29, i32 8, i32 4
  %conv31 = sext i32 %cond30 to i64
  %mul32 = mul i64 %26, %conv31
  %add33 = add i64 %div27, %mul32
  %conv34 = trunc i64 %add33 to i32
  store i32 %conv34, i32* %byte_offset, align 4
  %28 = load i64, i64* %bitpos, align 8
  %cmp35 = icmp eq i64 %28, 0
  br i1 %cmp35, label %land.lhs.true, label %if.end.143

land.lhs.true:                                    ; preds = %if.end.21
  %29 = load i64, i64* %bitsize.addr, align 8
  %30 = load i32, i32* %fieldmode.addr, align 4
  %idxprom = sext i32 %30 to i64
  %arrayidx37 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %31 = load i16, i16* %arrayidx37, align 2
  %conv38 = zext i16 %31 to i64
  %cmp39 = icmp eq i64 %29, %conv38
  br i1 %cmp39, label %land.lhs.true.41, label %if.end.143

land.lhs.true.41:                                 ; preds = %land.lhs.true
  %32 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load42 = load i32, i32* %33, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp ne i32 %bf.clear43, 66
  br i1 %cmp44, label %cond.true.46, label %cond.false.72

cond.true.46:                                     ; preds = %land.lhs.true.41
  %34 = load i32, i32* %fieldmode.addr, align 4
  %idxprom47 = sext i32 %34 to i64
  %arrayidx48 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom47
  %35 = load i8, i8* %arrayidx48, align 1
  %conv49 = zext i8 %35 to i32
  %36 = load i32, i32* @target_flags, align 4
  %and50 = and i32 %36, 33554432
  %tobool51 = icmp ne i32 %and50, 0
  %cond52 = select i1 %tobool51, i32 8, i32 4
  %cmp53 = icmp sge i32 %conv49, %cond52
  br i1 %cmp53, label %land.lhs.true.65, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.true.46
  %37 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load55 = load i32, i32* %38, align 8
  %bf.lshr = lshr i32 %bf.load55, 16
  %bf.clear56 = and i32 %bf.lshr, 255
  %idxprom57 = sext i32 %bf.clear56 to i64
  %arrayidx58 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom57
  %39 = load i8, i8* %arrayidx58, align 1
  %conv59 = zext i8 %39 to i32
  %40 = load i32, i32* %fieldmode.addr, align 4
  %idxprom60 = sext i32 %40 to i64
  %arrayidx61 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom60
  %41 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %41 to i32
  %cmp63 = icmp eq i32 %conv59, %conv62
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.143

land.lhs.true.65:                                 ; preds = %lor.lhs.false, %cond.true.46
  %42 = load i32, i32* %byte_offset, align 4
  %43 = load i32, i32* %fieldmode.addr, align 4
  %idxprom66 = sext i32 %43 to i64
  %arrayidx67 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom66
  %44 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %44 to i32
  %rem69 = srem i32 %42, %conv68
  %cmp70 = icmp eq i32 %rem69, 0
  br i1 %cmp70, label %if.then.96, label %if.end.143

cond.false.72:                                    ; preds = %land.lhs.true.41
  br i1 false, label %lor.lhs.false.73, label %if.then.96

lor.lhs.false.73:                                 ; preds = %cond.false.72
  %45 = load i64, i64* %offset, align 8
  %mul74 = mul i64 %45, 8
  %46 = load i64, i64* %bitsize.addr, align 8
  %rem75 = urem i64 %mul74, %46
  %cmp76 = icmp eq i64 %rem75, 0
  br i1 %cmp76, label %land.lhs.true.78, label %if.end.143

land.lhs.true.78:                                 ; preds = %lor.lhs.false.73
  %47 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx80 to %struct.mem_attrs**
  %48 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp81 = icmp ne %struct.mem_attrs* %48, null
  br i1 %cmp81, label %cond.true.83, label %cond.false.87

cond.true.83:                                     ; preds = %land.lhs.true.78
  %49 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 1
  %rtmem86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.mem_attrs**
  %50 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem86, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %50, i32 0, i32 4
  %51 = load i32, i32* %align, align 4
  br label %cond.end.88

cond.false.87:                                    ; preds = %land.lhs.true.78
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.87, %cond.true.83
  %cond89 = phi i32 [ %51, %cond.true.83 ], [ 8, %cond.false.87 ]
  %52 = load i32, i32* %fieldmode.addr, align 4
  %idxprom90 = sext i32 %52 to i64
  %arrayidx91 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom90
  %53 = load i16, i16* %arrayidx91, align 2
  %conv92 = zext i16 %53 to i32
  %rem93 = urem i32 %cond89, %conv92
  %cmp94 = icmp eq i32 %rem93, 0
  br i1 %cmp94, label %if.then.96, label %if.end.143

if.then.96:                                       ; preds = %cond.end.88, %cond.false.72, %land.lhs.true.65
  %54 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load97 = load i32, i32* %55, align 8
  %bf.lshr98 = lshr i32 %bf.load97, 16
  %bf.clear99 = and i32 %bf.lshr98, 255
  %56 = load i32, i32* %fieldmode.addr, align 4
  %cmp100 = icmp ne i32 %bf.clear99, %56
  br i1 %cmp100, label %if.then.102, label %if.end.141

if.then.102:                                      ; preds = %if.then.96
  %57 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load103 = load i32, i32* %58, align 8
  %bf.clear104 = and i32 %bf.load103, 65535
  %cmp105 = icmp eq i32 %bf.clear104, 63
  br i1 %cmp105, label %if.then.107, label %if.end.131

if.then.107:                                      ; preds = %if.then.102
  %59 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load111 = load i32, i32* %61, align 8
  %bf.lshr112 = lshr i32 %bf.load111, 16
  %bf.clear113 = and i32 %bf.lshr112, 255
  %62 = load i32, i32* %fieldmode.addr, align 4
  %cmp114 = icmp eq i32 %bf.clear113, %62
  br i1 %cmp114, label %if.then.126, label %lor.lhs.false.116

lor.lhs.false.116:                                ; preds = %if.then.107
  %63 = load i32, i32* %fieldmode.addr, align 4
  %idxprom117 = sext i32 %63 to i64
  %arrayidx118 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom117
  %64 = load i32, i32* %arrayidx118, align 4
  %cmp119 = icmp eq i32 %64, 1
  br i1 %cmp119, label %if.then.126, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %lor.lhs.false.116
  %65 = load i32, i32* %fieldmode.addr, align 4
  %idxprom122 = sext i32 %65 to i64
  %arrayidx123 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom122
  %66 = load i32, i32* %arrayidx123, align 4
  %cmp124 = icmp eq i32 %66, 3
  br i1 %cmp124, label %if.then.126, label %if.else

if.then.126:                                      ; preds = %lor.lhs.false.121, %lor.lhs.false.116, %if.then.107
  %67 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 0
  %rtx129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx129, align 8
  store %struct.rtx_def* %68, %struct.rtx_def** %op0, align 8
  br label %if.end.130

if.else:                                          ; preds = %lor.lhs.false.121
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 367, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.store_bit_field, i32 0, i32 0)) #4
  unreachable

if.end.130:                                       ; preds = %if.then.126
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.102
  %69 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load132 = load i32, i32* %70, align 8
  %bf.clear133 = and i32 %bf.load132, 65535
  %cmp134 = icmp eq i32 %bf.clear133, 61
  br i1 %cmp134, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %if.end.131
  %71 = load i32, i32* %fieldmode.addr, align 4
  %72 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %73 = load i32, i32* %byte_offset, align 4
  %call137 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %71, %struct.rtx_def* %72, i32 %73)
  store %struct.rtx_def* %call137, %struct.rtx_def** %op0, align 8
  br label %if.end.140

if.else.138:                                      ; preds = %if.end.131
  %74 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %75 = load i32, i32* %fieldmode.addr, align 4
  %76 = load i64, i64* %offset, align 8
  %call139 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %74, i32 %75, i64 %76, i32 1, i32 1)
  store %struct.rtx_def* %call139, %struct.rtx_def** %op0, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.else.138, %if.then.136
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.96
  %77 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call142 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %77, %struct.rtx_def* %78)
  %79 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  store %struct.rtx_def* %79, %struct.rtx_def** %retval
  br label %return

if.end.143:                                       ; preds = %cond.end.88, %lor.lhs.false.73, %land.lhs.true.65, %lor.lhs.false, %land.lhs.true, %if.end.21
  %80 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %81 = bitcast %struct.rtx_def* %80 to i32*
  %bf.load144 = load i32, i32* %81, align 8
  %bf.lshr145 = lshr i32 %bf.load144, 16
  %bf.clear146 = and i32 %bf.lshr145, 255
  %call147 = call i32 @int_mode_for_mode(i32 %bf.clear146)
  store i32 %call147, i32* %imode, align 4
  %82 = load i32, i32* %imode, align 4
  %83 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load148 = load i32, i32* %84, align 8
  %bf.lshr149 = lshr i32 %bf.load148, 16
  %bf.clear150 = and i32 %bf.lshr149, 255
  %cmp151 = icmp ne i32 %82, %bf.clear150
  br i1 %cmp151, label %if.then.153, label %if.end.168

if.then.153:                                      ; preds = %if.end.143
  %85 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load154 = load i32, i32* %86, align 8
  %bf.clear155 = and i32 %bf.load154, 65535
  %cmp156 = icmp eq i32 %bf.clear155, 66
  br i1 %cmp156, label %if.then.158, label %if.else.160

if.then.158:                                      ; preds = %if.then.153
  %87 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %88 = load i32, i32* %imode, align 4
  %call159 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %87, i32 %88, i64 0, i32 1, i32 1)
  store %struct.rtx_def* %call159, %struct.rtx_def** %op0, align 8
  br label %if.end.167

if.else.160:                                      ; preds = %if.then.153
  %89 = load i32, i32* %imode, align 4
  %cmp161 = icmp ne i32 %89, 51
  br i1 %cmp161, label %if.then.163, label %if.else.165

if.then.163:                                      ; preds = %if.else.160
  %90 = load i32, i32* %imode, align 4
  %91 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call164 = call %struct.rtx_def* @gen_lowpart(i32 %90, %struct.rtx_def* %91)
  store %struct.rtx_def* %call164, %struct.rtx_def** %op0, align 8
  br label %if.end.166

if.else.165:                                      ; preds = %if.else.160
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 391, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.store_bit_field, i32 0, i32 0)) #4
  unreachable

if.end.166:                                       ; preds = %if.then.163
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166, %if.then.158
  br label %if.end.168

if.end.168:                                       ; preds = %if.end.167, %if.end.143
  %92 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load169 = load i32, i32* %93, align 8
  %bf.clear170 = and i32 %bf.load169, 65535
  %cmp171 = icmp eq i32 %bf.clear170, 66
  br i1 %cmp171, label %if.then.173, label %if.end.175

if.then.173:                                      ; preds = %if.end.168
  %94 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call174 = call %struct.rtx_def* @shallow_copy_rtx(%struct.rtx_def* %94)
  store %struct.rtx_def* %call174, %struct.rtx_def** %op0, align 8
  %95 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %95, i64 0)
  %96 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  call void @set_mem_expr(%struct.rtx_def* %96, %union.tree_node* null)
  br label %if.end.175

if.end.175:                                       ; preds = %if.then.173, %if.end.168
  %97 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load176 = load i32, i32* %98, align 8
  %bf.clear177 = and i32 %bf.load176, 65535
  %cmp178 = icmp ne i32 %bf.clear177, 66
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.291

land.lhs.true.180:                                ; preds = %if.end.175
  br i1 false, label %cond.true.181, label %cond.false.186

cond.true.181:                                    ; preds = %land.lhs.true.180
  %99 = load i64, i64* %bitpos, align 8
  %100 = load i64, i64* %bitsize.addr, align 8
  %add182 = add i64 %99, %100
  %101 = load i32, i32* %unit, align 4
  %conv183 = zext i32 %101 to i64
  %cmp184 = icmp eq i64 %add182, %conv183
  br i1 %cmp184, label %land.lhs.true.189, label %if.end.291

cond.false.186:                                   ; preds = %land.lhs.true.180
  %102 = load i64, i64* %bitpos, align 8
  %cmp187 = icmp eq i64 %102, 0
  br i1 %cmp187, label %land.lhs.true.189, label %if.end.291

land.lhs.true.189:                                ; preds = %cond.false.186, %cond.true.181
  %103 = load i64, i64* %bitsize.addr, align 8
  %104 = load i32, i32* %fieldmode.addr, align 4
  %idxprom190 = sext i32 %104 to i64
  %arrayidx191 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom190
  %105 = load i16, i16* %arrayidx191, align 2
  %conv192 = zext i16 %105 to i64
  %cmp193 = icmp eq i64 %103, %conv192
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.291

land.lhs.true.195:                                ; preds = %land.lhs.true.189
  %106 = load i32, i32* %fieldmode.addr, align 4
  %idxprom196 = sext i32 %106 to i64
  %107 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 31), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %107, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom196
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx197, i32 0, i32 0
  %108 = load i32, i32* %insn_code, align 4
  %cmp198 = icmp ne i32 %108, 1317
  br i1 %cmp198, label %if.then.200, label %if.end.291

if.then.200:                                      ; preds = %land.lhs.true.195
  %109 = load i32, i32* %fieldmode.addr, align 4
  %idxprom201 = sext i32 %109 to i64
  %110 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 31), align 8
  %handlers202 = getelementptr inbounds %struct.optab, %struct.optab* %110, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers202, i32 0, i64 %idxprom201
  %insn_code204 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx203, i32 0, i32 0
  %111 = load i32, i32* %insn_code204, align 4
  store i32 %111, i32* %icode, align 4
  %112 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %bf.load205 = load i32, i32* %113, align 8
  %bf.clear206 = and i32 %bf.load205, 65535
  %cmp207 = icmp eq i32 %bf.clear206, 54
  br i1 %cmp207, label %if.then.214, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %if.then.200
  %114 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %bf.load210 = load i32, i32* %115, align 8
  %bf.clear211 = and i32 %bf.load210, 65535
  %cmp212 = icmp eq i32 %bf.clear211, 61
  br i1 %cmp212, label %if.then.214, label %if.else.216

if.then.214:                                      ; preds = %lor.lhs.false.209, %if.then.200
  %116 = load i32, i32* %fieldmode.addr, align 4
  %117 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call215 = call %struct.rtx_def* @gen_lowpart(i32 %116, %struct.rtx_def* %117)
  store %struct.rtx_def* %call215, %struct.rtx_def** %value.addr, align 8
  br label %if.end.234

if.else.216:                                      ; preds = %lor.lhs.false.209
  %118 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %119 = bitcast %struct.rtx_def* %118 to i32*
  %bf.load217 = load i32, i32* %119, align 8
  %bf.clear218 = and i32 %bf.load217, 65535
  %cmp219 = icmp eq i32 %bf.clear218, 68
  br i1 %cmp219, label %if.end.233, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %if.else.216
  %120 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load222 = load i32, i32* %121, align 8
  %bf.clear223 = and i32 %bf.load222, 65535
  %cmp224 = icmp eq i32 %bf.clear223, 67
  br i1 %cmp224, label %if.end.233, label %lor.lhs.false.226

lor.lhs.false.226:                                ; preds = %lor.lhs.false.221
  %122 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %123 = bitcast %struct.rtx_def* %122 to i32*
  %bf.load227 = load i32, i32* %123, align 8
  %bf.clear228 = and i32 %bf.load227, 65535
  %cmp229 = icmp eq i32 %bf.clear228, 58
  br i1 %cmp229, label %if.end.233, label %if.then.231

if.then.231:                                      ; preds = %lor.lhs.false.226
  %124 = load i32, i32* %fieldmode.addr, align 4
  %125 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call232 = call %struct.rtx_def* @convert_to_mode(i32 %124, %struct.rtx_def* %125, i32 0)
  store %struct.rtx_def* %call232, %struct.rtx_def** %value.addr, align 8
  br label %if.end.233

if.end.233:                                       ; preds = %if.then.231, %lor.lhs.false.226, %lor.lhs.false.221, %if.else.216
  br label %if.end.234

if.end.234:                                       ; preds = %if.end.233, %if.then.214
  %126 = load i32, i32* %icode, align 4
  %idxprom235 = sext i32 %126 to i64
  %arrayidx236 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom235
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx236, i32 0, i32 3
  %127 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx237 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %127, i64 1
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx237, i32 0, i32 0
  %128 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %130 = load i32, i32* %fieldmode.addr, align 4
  %call238 = call i32 %128(%struct.rtx_def* %129, i32 %130)
  %tobool239 = icmp ne i32 %call238, 0
  br i1 %tobool239, label %if.end.242, label %if.then.240

if.then.240:                                      ; preds = %if.end.234
  %131 = load i32, i32* %fieldmode.addr, align 4
  %132 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call241 = call %struct.rtx_def* @copy_to_mode_reg(i32 %131, %struct.rtx_def* %132)
  store %struct.rtx_def* %call241, %struct.rtx_def** %value.addr, align 8
  br label %if.end.242

if.end.242:                                       ; preds = %if.then.240, %if.end.234
  %133 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %134 = bitcast %struct.rtx_def* %133 to i32*
  %bf.load243 = load i32, i32* %134, align 8
  %bf.clear244 = and i32 %bf.load243, 65535
  %cmp245 = icmp eq i32 %bf.clear244, 63
  br i1 %cmp245, label %if.then.247, label %if.end.272

if.then.247:                                      ; preds = %if.end.242
  %135 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld248 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld248, i32 0, i64 0
  %rtx250 = bitcast %union.rtunion_def* %arrayidx249 to %struct.rtx_def**
  %136 = load %struct.rtx_def*, %struct.rtx_def** %rtx250, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load251 = load i32, i32* %137, align 8
  %bf.lshr252 = lshr i32 %bf.load251, 16
  %bf.clear253 = and i32 %bf.lshr252, 255
  %138 = load i32, i32* %fieldmode.addr, align 4
  %cmp254 = icmp eq i32 %bf.clear253, %138
  br i1 %cmp254, label %if.then.266, label %lor.lhs.false.256

lor.lhs.false.256:                                ; preds = %if.then.247
  %139 = load i32, i32* %fieldmode.addr, align 4
  %idxprom257 = sext i32 %139 to i64
  %arrayidx258 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom257
  %140 = load i32, i32* %arrayidx258, align 4
  %cmp259 = icmp eq i32 %140, 1
  br i1 %cmp259, label %if.then.266, label %lor.lhs.false.261

lor.lhs.false.261:                                ; preds = %lor.lhs.false.256
  %141 = load i32, i32* %fieldmode.addr, align 4
  %idxprom262 = sext i32 %141 to i64
  %arrayidx263 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom262
  %142 = load i32, i32* %arrayidx263, align 4
  %cmp264 = icmp eq i32 %142, 3
  br i1 %cmp264, label %if.then.266, label %if.else.270

if.then.266:                                      ; preds = %lor.lhs.false.261, %lor.lhs.false.256, %if.then.247
  %143 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld267 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx268 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld267, i32 0, i64 0
  %rtx269 = bitcast %union.rtunion_def* %arrayidx268 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %rtx269, align 8
  store %struct.rtx_def* %144, %struct.rtx_def** %op0, align 8
  br label %if.end.271

if.else.270:                                      ; preds = %lor.lhs.false.261
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 444, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.store_bit_field, i32 0, i32 0)) #4
  unreachable

if.end.271:                                       ; preds = %if.then.266
  br label %if.end.272

if.end.272:                                       ; preds = %if.end.271, %if.end.242
  %145 = load i32, i32* %icode, align 4
  %idxprom273 = sext i32 %145 to i64
  %arrayidx274 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom273
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx274, i32 0, i32 2
  %146 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %147 = load i32, i32* %fieldmode.addr, align 4
  %148 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %149 = load i64, i64* %bitnum.addr, align 8
  %150 = load i32, i32* @target_flags, align 4
  %and275 = and i32 %150, 33554432
  %tobool276 = icmp ne i32 %and275, 0
  %cond277 = select i1 %tobool276, i32 64, i32 32
  %conv278 = sext i32 %cond277 to i64
  %rem279 = urem i64 %149, %conv278
  %div280 = udiv i64 %rem279, 8
  %151 = load i64, i64* %offset, align 8
  %152 = load i32, i32* @target_flags, align 4
  %and281 = and i32 %152, 33554432
  %tobool282 = icmp ne i32 %and281, 0
  %cond283 = select i1 %tobool282, i32 8, i32 4
  %conv284 = sext i32 %cond283 to i64
  %mul285 = mul i64 %151, %conv284
  %add286 = add i64 %div280, %mul285
  %conv287 = trunc i64 %add286 to i32
  %call288 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %147, %struct.rtx_def* %148, i32 %conv287)
  %153 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call289 = call %struct.rtx_def* (%struct.rtx_def*, ...) %146(%struct.rtx_def* %call288, %struct.rtx_def* %153)
  %call290 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call289)
  %154 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  store %struct.rtx_def* %154, %struct.rtx_def** %retval
  br label %return

if.end.291:                                       ; preds = %land.lhs.true.195, %land.lhs.true.189, %cond.false.186, %cond.true.181, %if.end.175
  %155 = load i64, i64* %bitsize.addr, align 8
  %156 = load i32, i32* @target_flags, align 4
  %and292 = and i32 %156, 33554432
  %tobool293 = icmp ne i32 %and292, 0
  %cond294 = select i1 %tobool293, i32 64, i32 32
  %conv295 = sext i32 %cond294 to i64
  %cmp296 = icmp ugt i64 %155, %conv295
  br i1 %cmp296, label %if.then.298, label %if.end.396

if.then.298:                                      ; preds = %if.end.291
  store i32 0, i32* %backwards, align 4
  %157 = load i64, i64* %bitsize.addr, align 8
  %158 = load i32, i32* @target_flags, align 4
  %and299 = and i32 %158, 33554432
  %tobool300 = icmp ne i32 %and299, 0
  %cond301 = select i1 %tobool300, i32 64, i32 32
  %sub302 = sub nsw i32 %cond301, 1
  %conv303 = sext i32 %sub302 to i64
  %add304 = add i64 %157, %conv303
  %159 = load i32, i32* @target_flags, align 4
  %and305 = and i32 %159, 33554432
  %tobool306 = icmp ne i32 %and305, 0
  %cond307 = select i1 %tobool306, i32 64, i32 32
  %conv308 = sext i32 %cond307 to i64
  %div309 = udiv i64 %add304, %conv308
  %conv310 = trunc i64 %div309 to i32
  store i32 %conv310, i32* %nwords, align 4
  %160 = load i32, i32* %nwords, align 4
  %161 = load i32, i32* @target_flags, align 4
  %and311 = and i32 %161, 33554432
  %tobool312 = icmp ne i32 %and311, 0
  %cond313 = select i1 %tobool312, i32 64, i32 32
  %mul314 = mul i32 %160, %cond313
  %call315 = call i32 @smallest_mode_for_size(i32 %mul314, i32 1)
  store i32 %call315, i32* %fieldmode.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.298
  %162 = load i32, i32* %i, align 4
  %163 = load i32, i32* %nwords, align 4
  %cmp316 = icmp ult i32 %162, %163
  br i1 %cmp316, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %164 = load i32, i32* %backwards, align 4
  %tobool318 = icmp ne i32 %164, 0
  br i1 %tobool318, label %cond.true.319, label %cond.false.322

cond.true.319:                                    ; preds = %for.body
  %165 = load i32, i32* %nwords, align 4
  %166 = load i32, i32* %i, align 4
  %sub320 = sub i32 %165, %166
  %sub321 = sub i32 %sub320, 1
  br label %cond.end.323

cond.false.322:                                   ; preds = %for.body
  %167 = load i32, i32* %i, align 4
  br label %cond.end.323

cond.end.323:                                     ; preds = %cond.false.322, %cond.true.319
  %cond324 = phi i32 [ %sub321, %cond.true.319 ], [ %167, %cond.false.322 ]
  store i32 %cond324, i32* %wordnum, align 4
  %168 = load i32, i32* %backwards, align 4
  %tobool325 = icmp ne i32 %168, 0
  br i1 %tobool325, label %cond.true.326, label %cond.false.347

cond.true.326:                                    ; preds = %cond.end.323
  %169 = load i64, i64* %bitsize.addr, align 8
  %conv327 = trunc i64 %169 to i32
  %170 = load i32, i32* %i, align 4
  %add328 = add nsw i32 %170, 1
  %171 = load i32, i32* @target_flags, align 4
  %and329 = and i32 %171, 33554432
  %tobool330 = icmp ne i32 %and329, 0
  %cond331 = select i1 %tobool330, i32 64, i32 32
  %mul332 = mul nsw i32 %add328, %cond331
  %sub333 = sub nsw i32 %conv327, %mul332
  %cmp334 = icmp sgt i32 %sub333, 0
  br i1 %cmp334, label %cond.true.336, label %cond.false.344

cond.true.336:                                    ; preds = %cond.true.326
  %172 = load i64, i64* %bitsize.addr, align 8
  %conv337 = trunc i64 %172 to i32
  %173 = load i32, i32* %i, align 4
  %add338 = add nsw i32 %173, 1
  %174 = load i32, i32* @target_flags, align 4
  %and339 = and i32 %174, 33554432
  %tobool340 = icmp ne i32 %and339, 0
  %cond341 = select i1 %tobool340, i32 64, i32 32
  %mul342 = mul nsw i32 %add338, %cond341
  %sub343 = sub nsw i32 %conv337, %mul342
  br label %cond.end.345

cond.false.344:                                   ; preds = %cond.true.326
  br label %cond.end.345

cond.end.345:                                     ; preds = %cond.false.344, %cond.true.336
  %cond346 = phi i32 [ %sub343, %cond.true.336 ], [ 0, %cond.false.344 ]
  br label %cond.end.352

cond.false.347:                                   ; preds = %cond.end.323
  %175 = load i32, i32* %i, align 4
  %176 = load i32, i32* @target_flags, align 4
  %and348 = and i32 %176, 33554432
  %tobool349 = icmp ne i32 %and348, 0
  %cond350 = select i1 %tobool349, i32 64, i32 32
  %mul351 = mul nsw i32 %175, %cond350
  br label %cond.end.352

cond.end.352:                                     ; preds = %cond.false.347, %cond.end.345
  %cond353 = phi i32 [ %cond346, %cond.end.345 ], [ %mul351, %cond.false.347 ]
  store i32 %cond353, i32* %bit_offset, align 4
  %177 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %178 = load i32, i32* @target_flags, align 4
  %and354 = and i32 %178, 33554432
  %tobool355 = icmp ne i32 %and354, 0
  %cond356 = select i1 %tobool355, i32 64, i32 32
  %conv357 = sext i32 %cond356 to i64
  %179 = load i64, i64* %bitsize.addr, align 8
  %180 = load i32, i32* %i, align 4
  %181 = load i32, i32* @target_flags, align 4
  %and358 = and i32 %181, 33554432
  %tobool359 = icmp ne i32 %and358, 0
  %cond360 = select i1 %tobool359, i32 64, i32 32
  %mul361 = mul i32 %180, %cond360
  %conv362 = zext i32 %mul361 to i64
  %sub363 = sub i64 %179, %conv362
  %cmp364 = icmp ult i64 %conv357, %sub363
  br i1 %cmp364, label %cond.true.366, label %cond.false.371

cond.true.366:                                    ; preds = %cond.end.352
  %182 = load i32, i32* @target_flags, align 4
  %and367 = and i32 %182, 33554432
  %tobool368 = icmp ne i32 %and367, 0
  %cond369 = select i1 %tobool368, i32 64, i32 32
  %conv370 = sext i32 %cond369 to i64
  br label %cond.end.378

cond.false.371:                                   ; preds = %cond.end.352
  %183 = load i64, i64* %bitsize.addr, align 8
  %184 = load i32, i32* %i, align 4
  %185 = load i32, i32* @target_flags, align 4
  %and372 = and i32 %185, 33554432
  %tobool373 = icmp ne i32 %and372, 0
  %cond374 = select i1 %tobool373, i32 64, i32 32
  %mul375 = mul i32 %184, %cond374
  %conv376 = zext i32 %mul375 to i64
  %sub377 = sub i64 %183, %conv376
  br label %cond.end.378

cond.end.378:                                     ; preds = %cond.false.371, %cond.true.366
  %cond379 = phi i64 [ %conv370, %cond.true.366 ], [ %sub377, %cond.false.371 ]
  %186 = load i64, i64* %bitnum.addr, align 8
  %187 = load i32, i32* %bit_offset, align 4
  %conv380 = zext i32 %187 to i64
  %add381 = add i64 %186, %conv380
  %188 = load i32, i32* @word_mode, align 4
  %189 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %190 = load i32, i32* %wordnum, align 4
  %191 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %192 = bitcast %struct.rtx_def* %191 to i32*
  %bf.load382 = load i32, i32* %192, align 8
  %bf.lshr383 = lshr i32 %bf.load382, 16
  %bf.clear384 = and i32 %bf.lshr383, 255
  %cmp385 = icmp eq i32 %bf.clear384, 0
  br i1 %cmp385, label %cond.true.387, label %cond.false.388

cond.true.387:                                    ; preds = %cond.end.378
  %193 = load i32, i32* %fieldmode.addr, align 4
  br label %cond.end.392

cond.false.388:                                   ; preds = %cond.end.378
  %194 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %195 = bitcast %struct.rtx_def* %194 to i32*
  %bf.load389 = load i32, i32* %195, align 8
  %bf.lshr390 = lshr i32 %bf.load389, 16
  %bf.clear391 = and i32 %bf.lshr390, 255
  br label %cond.end.392

cond.end.392:                                     ; preds = %cond.false.388, %cond.true.387
  %cond393 = phi i32 [ %193, %cond.true.387 ], [ %bf.clear391, %cond.false.388 ]
  %call394 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %189, i32 %190, i32 %cond393)
  %196 = load i64, i64* %total_size.addr, align 8
  %call395 = call %struct.rtx_def* @store_bit_field(%struct.rtx_def* %177, i64 %cond379, i64 %add381, i32 %188, %struct.rtx_def* %call394, i64 %196)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.392
  %197 = load i32, i32* %i, align 4
  %inc = add i32 %197, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %198 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  store %struct.rtx_def* %198, %struct.rtx_def** %retval
  br label %return

if.end.396:                                       ; preds = %if.end.291
  %199 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %200 = bitcast %struct.rtx_def* %199 to i32*
  %bf.load397 = load i32, i32* %200, align 8
  %bf.clear398 = and i32 %bf.load397, 65535
  %cmp399 = icmp ne i32 %bf.clear398, 66
  br i1 %cmp399, label %if.then.401, label %if.else.463

if.then.401:                                      ; preds = %if.end.396
  %201 = load i64, i64* %offset, align 8
  %cmp402 = icmp ne i64 %201, 0
  br i1 %cmp402, label %if.then.416, label %lor.lhs.false.404

lor.lhs.false.404:                                ; preds = %if.then.401
  %202 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %203 = bitcast %struct.rtx_def* %202 to i32*
  %bf.load405 = load i32, i32* %203, align 8
  %bf.lshr406 = lshr i32 %bf.load405, 16
  %bf.clear407 = and i32 %bf.lshr406, 255
  %idxprom408 = sext i32 %bf.clear407 to i64
  %arrayidx409 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom408
  %204 = load i8, i8* %arrayidx409, align 1
  %conv410 = zext i8 %204 to i32
  %205 = load i32, i32* @target_flags, align 4
  %and411 = and i32 %205, 33554432
  %tobool412 = icmp ne i32 %and411, 0
  %cond413 = select i1 %tobool412, i32 8, i32 4
  %cmp414 = icmp sgt i32 %conv410, %cond413
  br i1 %cmp414, label %if.then.416, label %if.end.462

if.then.416:                                      ; preds = %lor.lhs.false.404, %if.then.401
  %206 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %207 = bitcast %struct.rtx_def* %206 to i32*
  %bf.load417 = load i32, i32* %207, align 8
  %bf.clear418 = and i32 %bf.load417, 65535
  %cmp419 = icmp ne i32 %bf.clear418, 61
  br i1 %cmp419, label %if.then.421, label %if.end.450

if.then.421:                                      ; preds = %if.then.416
  %208 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %209 = bitcast %struct.rtx_def* %208 to i32*
  %bf.load422 = load i32, i32* %209, align 8
  %bf.clear423 = and i32 %bf.load422, 65535
  %cmp424 = icmp eq i32 %bf.clear423, 63
  br i1 %cmp424, label %land.lhs.true.426, label %if.else.448

land.lhs.true.426:                                ; preds = %if.then.421
  %210 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %211 = bitcast %struct.rtx_def* %210 to i32*
  %bf.load427 = load i32, i32* %211, align 8
  %bf.lshr428 = lshr i32 %bf.load427, 16
  %bf.clear429 = and i32 %bf.lshr428, 255
  %idxprom430 = sext i32 %bf.clear429 to i64
  %arrayidx431 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom430
  %212 = load i8, i8* %arrayidx431, align 1
  %conv432 = zext i8 %212 to i32
  %213 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld433 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %213, i32 0, i32 1
  %arrayidx434 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld433, i32 0, i64 0
  %rtx435 = bitcast %union.rtunion_def* %arrayidx434 to %struct.rtx_def**
  %214 = load %struct.rtx_def*, %struct.rtx_def** %rtx435, align 8
  %215 = bitcast %struct.rtx_def* %214 to i32*
  %bf.load436 = load i32, i32* %215, align 8
  %bf.lshr437 = lshr i32 %bf.load436, 16
  %bf.clear438 = and i32 %bf.lshr437, 255
  %idxprom439 = sext i32 %bf.clear438 to i64
  %arrayidx440 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom439
  %216 = load i8, i8* %arrayidx440, align 1
  %conv441 = zext i8 %216 to i32
  %cmp442 = icmp eq i32 %conv432, %conv441
  br i1 %cmp442, label %if.then.444, label %if.else.448

if.then.444:                                      ; preds = %land.lhs.true.426
  %217 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld445 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx446 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld445, i32 0, i64 0
  %rtx447 = bitcast %union.rtunion_def* %arrayidx446 to %struct.rtx_def**
  %218 = load %struct.rtx_def*, %struct.rtx_def** %rtx447, align 8
  store %struct.rtx_def* %218, %struct.rtx_def** %op0, align 8
  br label %if.end.449

if.else.448:                                      ; preds = %land.lhs.true.426, %if.then.421
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 522, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.store_bit_field, i32 0, i32 0)) #4
  unreachable

if.end.449:                                       ; preds = %if.then.444
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %if.then.416
  %219 = load i32, i32* @target_flags, align 4
  %and451 = and i32 %219, 33554432
  %tobool452 = icmp ne i32 %and451, 0
  %cond453 = select i1 %tobool452, i32 64, i32 32
  %call454 = call i32 @mode_for_size(i32 %cond453, i32 1, i32 0)
  %220 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %221 = load i64, i64* %offset, align 8
  %222 = load i32, i32* @target_flags, align 4
  %and455 = and i32 %222, 33554432
  %tobool456 = icmp ne i32 %and455, 0
  %cond457 = select i1 %tobool456, i32 8, i32 4
  %conv458 = sext i32 %cond457 to i64
  %mul459 = mul i64 %221, %conv458
  %conv460 = trunc i64 %mul459 to i32
  %call461 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %call454, %struct.rtx_def* %220, i32 %conv460)
  store %struct.rtx_def* %call461, %struct.rtx_def** %op0, align 8
  br label %if.end.462

if.end.462:                                       ; preds = %if.end.450, %lor.lhs.false.404
  store i64 0, i64* %offset, align 8
  br label %if.end.465

if.else.463:                                      ; preds = %if.end.396
  %223 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call464 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %223, i32 1)
  store %struct.rtx_def* %call464, %struct.rtx_def** %op0, align 8
  br label %if.end.465

if.end.465:                                       ; preds = %if.else.463, %if.end.462
  %224 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %225 = bitcast %struct.rtx_def* %224 to i32*
  %bf.load466 = load i32, i32* %225, align 8
  %bf.lshr467 = lshr i32 %bf.load466, 16
  %bf.clear468 = and i32 %bf.lshr467, 255
  %idxprom469 = sext i32 %bf.clear468 to i64
  %arrayidx470 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom469
  %226 = load i32, i32* %arrayidx470, align 4
  %cmp471 = icmp ne i32 %226, 1
  br i1 %cmp471, label %land.lhs.true.473, label %if.end.483

land.lhs.true.473:                                ; preds = %if.end.465
  %227 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %228 = bitcast %struct.rtx_def* %227 to i32*
  %bf.load474 = load i32, i32* %228, align 8
  %bf.lshr475 = lshr i32 %bf.load474, 16
  %bf.clear476 = and i32 %bf.lshr475, 255
  %idxprom477 = sext i32 %bf.clear476 to i64
  %arrayidx478 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom477
  %229 = load i32, i32* %arrayidx478, align 4
  %cmp479 = icmp ne i32 %229, 3
  br i1 %cmp479, label %if.then.481, label %if.end.483

if.then.481:                                      ; preds = %land.lhs.true.473
  %230 = load i32, i32* @word_mode, align 4
  %231 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call482 = call %struct.rtx_def* @gen_lowpart(i32 %230, %struct.rtx_def* %231)
  store %struct.rtx_def* %call482, %struct.rtx_def** %value.addr, align 8
  br label %if.end.483

if.end.483:                                       ; preds = %if.then.481, %land.lhs.true.473, %if.end.465
  %232 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %233 = bitcast %struct.rtx_def* %232 to i32*
  %bf.load484 = load i32, i32* %233, align 8
  %bf.lshr485 = lshr i32 %bf.load484, 16
  %bf.clear486 = and i32 %bf.lshr485, 255
  %cmp487 = icmp ne i32 %bf.clear486, 51
  br i1 %cmp487, label %land.lhs.true.489, label %if.else.748

land.lhs.true.489:                                ; preds = %if.end.483
  %234 = load i64, i64* %bitsize.addr, align 8
  %cmp490 = icmp eq i64 %234, 1
  br i1 %cmp490, label %land.lhs.true.492, label %land.lhs.true.497

land.lhs.true.492:                                ; preds = %land.lhs.true.489
  %235 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %236 = bitcast %struct.rtx_def* %235 to i32*
  %bf.load493 = load i32, i32* %236, align 8
  %bf.clear494 = and i32 %bf.load493, 65535
  %cmp495 = icmp eq i32 %bf.clear494, 54
  br i1 %cmp495, label %if.else.748, label %land.lhs.true.497

land.lhs.true.497:                                ; preds = %land.lhs.true.492, %land.lhs.true.489
  %237 = load i32, i32* %op_mode, align 4
  %idxprom498 = sext i32 %237 to i64
  %arrayidx499 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom498
  %238 = load i16, i16* %arrayidx499, align 2
  %conv500 = zext i16 %238 to i64
  %239 = load i64, i64* %bitsize.addr, align 8
  %cmp501 = icmp uge i64 %conv500, %239
  br i1 %cmp501, label %land.lhs.true.503, label %if.else.748

land.lhs.true.503:                                ; preds = %land.lhs.true.497
  %240 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %241 = bitcast %struct.rtx_def* %240 to i32*
  %bf.load504 = load i32, i32* %241, align 8
  %bf.clear505 = and i32 %bf.load504, 65535
  %cmp506 = icmp eq i32 %bf.clear505, 61
  br i1 %cmp506, label %land.lhs.true.513, label %lor.lhs.false.508

lor.lhs.false.508:                                ; preds = %land.lhs.true.503
  %242 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %243 = bitcast %struct.rtx_def* %242 to i32*
  %bf.load509 = load i32, i32* %243, align 8
  %bf.clear510 = and i32 %bf.load509, 65535
  %cmp511 = icmp eq i32 %bf.clear510, 63
  br i1 %cmp511, label %land.lhs.true.513, label %if.then.520

land.lhs.true.513:                                ; preds = %lor.lhs.false.508, %land.lhs.true.503
  %244 = load i64, i64* %bitsize.addr, align 8
  %245 = load i64, i64* %bitpos, align 8
  %add514 = add i64 %244, %245
  %246 = load i32, i32* %op_mode, align 4
  %idxprom515 = sext i32 %246 to i64
  %arrayidx516 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom515
  %247 = load i16, i16* %arrayidx516, align 2
  %conv517 = zext i16 %247 to i64
  %cmp518 = icmp ugt i64 %add514, %conv517
  br i1 %cmp518, label %if.else.748, label %if.then.520

if.then.520:                                      ; preds = %land.lhs.true.513, %lor.lhs.false.508
  %248 = load i64, i64* %bitpos, align 8
  %conv521 = trunc i64 %248 to i32
  store i32 %conv521, i32* %xbitpos, align 4
  %249 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  store %struct.rtx_def* %249, %struct.rtx_def** %xop0, align 8
  %call522 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call522, %struct.rtx_def** %last, align 8
  %call523 = call i32 @mode_for_extraction(i32 0, i32 3)
  store i32 %call523, i32* %maxmode, align 4
  %250 = load i32, i32* @volatile_ok, align 4
  store i32 %250, i32* %save_volatile_ok, align 4
  store i32 1, i32* @volatile_ok, align 4
  %251 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %252 = bitcast %struct.rtx_def* %251 to i32*
  %bf.load524 = load i32, i32* %252, align 8
  %bf.clear525 = and i32 %bf.load524, 65535
  %cmp526 = icmp eq i32 %bf.clear525, 66
  br i1 %cmp526, label %land.lhs.true.528, label %if.end.595

land.lhs.true.528:                                ; preds = %if.then.520
  %253 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1114, i32 3), align 8
  %arrayidx529 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %253, i64 0
  %predicate530 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx529, i32 0, i32 0
  %254 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate530, align 8
  %255 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call531 = call i32 %254(%struct.rtx_def* %255, i32 0)
  %tobool532 = icmp ne i32 %call531, 0
  br i1 %tobool532, label %if.end.595, label %if.then.533

if.then.533:                                      ; preds = %land.lhs.true.528
  %256 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %257 = bitcast %struct.rtx_def* %256 to i32*
  %bf.load534 = load i32, i32* %257, align 8
  %bf.lshr535 = lshr i32 %bf.load534, 16
  %bf.clear536 = and i32 %bf.lshr535, 255
  %cmp537 = icmp eq i32 %bf.clear536, 51
  br i1 %cmp537, label %if.then.551, label %lor.lhs.false.539

lor.lhs.false.539:                                ; preds = %if.then.533
  %258 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %259 = bitcast %struct.rtx_def* %258 to i32*
  %bf.load540 = load i32, i32* %259, align 8
  %bf.lshr541 = lshr i32 %bf.load540, 16
  %bf.clear542 = and i32 %bf.lshr541, 255
  %idxprom543 = sext i32 %bf.clear542 to i64
  %arrayidx544 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom543
  %260 = load i8, i8* %arrayidx544, align 1
  %conv545 = zext i8 %260 to i32
  %261 = load i32, i32* %maxmode, align 4
  %idxprom546 = sext i32 %261 to i64
  %arrayidx547 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom546
  %262 = load i8, i8* %arrayidx547, align 1
  %conv548 = zext i8 %262 to i32
  %cmp549 = icmp sgt i32 %conv545, %conv548
  br i1 %cmp549, label %if.then.551, label %if.else.571

if.then.551:                                      ; preds = %lor.lhs.false.539, %if.then.533
  %263 = load i64, i64* %bitsize.addr, align 8
  %conv552 = trunc i64 %263 to i32
  %264 = load i64, i64* %bitnum.addr, align 8
  %conv553 = trunc i64 %264 to i32
  %265 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld554 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %arrayidx555 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld554, i32 0, i64 1
  %rtmem556 = bitcast %union.rtunion_def* %arrayidx555 to %struct.mem_attrs**
  %266 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem556, align 8
  %cmp557 = icmp ne %struct.mem_attrs* %266, null
  br i1 %cmp557, label %cond.true.559, label %cond.false.564

cond.true.559:                                    ; preds = %if.then.551
  %267 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld560 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %267, i32 0, i32 1
  %arrayidx561 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld560, i32 0, i64 1
  %rtmem562 = bitcast %union.rtunion_def* %arrayidx561 to %struct.mem_attrs**
  %268 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem562, align 8
  %align563 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %268, i32 0, i32 4
  %269 = load i32, i32* %align563, align 4
  br label %cond.end.565

cond.false.564:                                   ; preds = %if.then.551
  br label %cond.end.565

cond.end.565:                                     ; preds = %cond.false.564, %cond.true.559
  %cond566 = phi i32 [ %269, %cond.true.559 ], [ 8, %cond.false.564 ]
  %270 = load i32, i32* %maxmode, align 4
  %271 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %272 = bitcast %struct.rtx_def* %271 to i32*
  %bf.load567 = load i32, i32* %272, align 8
  %bf.lshr568 = lshr i32 %bf.load567, 27
  %bf.clear569 = and i32 %bf.lshr568, 1
  %call570 = call i32 @get_best_mode(i32 %conv552, i32 %conv553, i32 %cond566, i32 %270, i32 %bf.clear569)
  store i32 %call570, i32* %bestmode, align 4
  br label %if.end.575

if.else.571:                                      ; preds = %lor.lhs.false.539
  %273 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %274 = bitcast %struct.rtx_def* %273 to i32*
  %bf.load572 = load i32, i32* %274, align 8
  %bf.lshr573 = lshr i32 %bf.load572, 16
  %bf.clear574 = and i32 %bf.lshr573, 255
  store i32 %bf.clear574, i32* %bestmode, align 4
  br label %if.end.575

if.end.575:                                       ; preds = %if.else.571, %cond.end.565
  %275 = load i32, i32* %bestmode, align 4
  %cmp576 = icmp eq i32 %275, 0
  br i1 %cmp576, label %if.then.578, label %if.end.579

if.then.578:                                      ; preds = %if.end.575
  br label %insv_loses

if.end.579:                                       ; preds = %if.end.575
  %276 = load i32, i32* %bestmode, align 4
  %idxprom580 = sext i32 %276 to i64
  %arrayidx581 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom580
  %277 = load i16, i16* %arrayidx581, align 2
  %conv582 = zext i16 %277 to i32
  store i32 %conv582, i32* %unit, align 4
  %278 = load i64, i64* %bitnum.addr, align 8
  %279 = load i32, i32* %unit, align 4
  %conv583 = zext i32 %279 to i64
  %div584 = udiv i64 %278, %conv583
  %280 = load i32, i32* %bestmode, align 4
  %idxprom585 = sext i32 %280 to i64
  %arrayidx586 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom585
  %281 = load i8, i8* %arrayidx586, align 1
  %conv587 = zext i8 %281 to i64
  %mul588 = mul i64 %div584, %conv587
  store i64 %mul588, i64* %offset, align 8
  %282 = load i64, i64* %bitnum.addr, align 8
  %283 = load i32, i32* %unit, align 4
  %conv589 = zext i32 %283 to i64
  %rem590 = urem i64 %282, %conv589
  store i64 %rem590, i64* %bitpos, align 8
  %284 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %285 = load i32, i32* %bestmode, align 4
  %286 = load i64, i64* %offset, align 8
  %call591 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %284, i32 %285, i64 %286, i32 1, i32 1)
  store %struct.rtx_def* %call591, %struct.rtx_def** %op0, align 8
  %287 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call592 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %287)
  store %struct.rtx_def* %call592, %struct.rtx_def** %tempreg, align 8
  %288 = load %struct.rtx_def*, %struct.rtx_def** %tempreg, align 8
  %289 = load i64, i64* %bitsize.addr, align 8
  %290 = load i64, i64* %bitpos, align 8
  %291 = load i32, i32* %fieldmode.addr, align 4
  %292 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %293 = load i64, i64* %total_size.addr, align 8
  %call593 = call %struct.rtx_def* @store_bit_field(%struct.rtx_def* %288, i64 %289, i64 %290, i32 %291, %struct.rtx_def* %292, i64 %293)
  %294 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %295 = load %struct.rtx_def*, %struct.rtx_def** %tempreg, align 8
  %call594 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %294, %struct.rtx_def* %295)
  %296 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  store %struct.rtx_def* %296, %struct.rtx_def** %retval
  br label %return

if.end.595:                                       ; preds = %land.lhs.true.528, %if.then.520
  %297 = load i32, i32* %save_volatile_ok, align 4
  store i32 %297, i32* @volatile_ok, align 4
  %298 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %299 = bitcast %struct.rtx_def* %298 to i32*
  %bf.load596 = load i32, i32* %299, align 8
  %bf.clear597 = and i32 %bf.load596, 65535
  %cmp598 = icmp eq i32 %bf.clear597, 66
  br i1 %cmp598, label %if.then.600, label %if.end.602

if.then.600:                                      ; preds = %if.end.595
  %300 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %301 = load i32, i32* @byte_mode, align 4
  %302 = load i64, i64* %offset, align 8
  %call601 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %300, i32 %301, i64 %302, i32 1, i32 1)
  store %struct.rtx_def* %call601, %struct.rtx_def** %xop0, align 8
  br label %if.end.602

if.end.602:                                       ; preds = %if.then.600, %if.end.595
  %303 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %304 = bitcast %struct.rtx_def* %303 to i32*
  %bf.load603 = load i32, i32* %304, align 8
  %bf.clear604 = and i32 %bf.load603, 65535
  %cmp605 = icmp eq i32 %bf.clear604, 63
  br i1 %cmp605, label %if.then.607, label %if.end.615

if.then.607:                                      ; preds = %if.end.602
  %305 = load i32, i32* %maxmode, align 4
  %306 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %fld608 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %306, i32 0, i32 1
  %arrayidx609 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld608, i32 0, i64 0
  %rtx610 = bitcast %union.rtunion_def* %arrayidx609 to %struct.rtx_def**
  %307 = load %struct.rtx_def*, %struct.rtx_def** %rtx610, align 8
  %308 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %fld611 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %308, i32 0, i32 1
  %arrayidx612 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld611, i32 0, i64 1
  %rtuint613 = bitcast %union.rtunion_def* %arrayidx612 to i32*
  %309 = load i32, i32* %rtuint613, align 4
  %call614 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %305, %struct.rtx_def* %307, i32 %309)
  store %struct.rtx_def* %call614, %struct.rtx_def** %xop0, align 8
  br label %if.end.615

if.end.615:                                       ; preds = %if.then.607, %if.end.602
  %310 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %311 = bitcast %struct.rtx_def* %310 to i32*
  %bf.load616 = load i32, i32* %311, align 8
  %bf.clear617 = and i32 %bf.load616, 65535
  %cmp618 = icmp eq i32 %bf.clear617, 61
  br i1 %cmp618, label %land.lhs.true.620, label %if.end.628

land.lhs.true.620:                                ; preds = %if.end.615
  %312 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %313 = bitcast %struct.rtx_def* %312 to i32*
  %bf.load621 = load i32, i32* %313, align 8
  %bf.lshr622 = lshr i32 %bf.load621, 16
  %bf.clear623 = and i32 %bf.lshr622, 255
  %314 = load i32, i32* %maxmode, align 4
  %cmp624 = icmp ne i32 %bf.clear623, %314
  br i1 %cmp624, label %if.then.626, label %if.end.628

if.then.626:                                      ; preds = %land.lhs.true.620
  %315 = load i32, i32* %maxmode, align 4
  %316 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %call627 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %315, %struct.rtx_def* %316, i32 0)
  store %struct.rtx_def* %call627, %struct.rtx_def** %xop0, align 8
  br label %if.end.628

if.end.628:                                       ; preds = %if.then.626, %land.lhs.true.620, %if.end.615
  %317 = load i32, i32* %maxmode, align 4
  %idxprom629 = sext i32 %317 to i64
  %arrayidx630 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom629
  %318 = load i16, i16* %arrayidx630, align 2
  %conv631 = zext i16 %318 to i32
  store i32 %conv631, i32* %unit, align 4
  %319 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  store %struct.rtx_def* %319, %struct.rtx_def** %value1, align 8
  %320 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %321 = bitcast %struct.rtx_def* %320 to i32*
  %bf.load632 = load i32, i32* %321, align 8
  %bf.lshr633 = lshr i32 %bf.load632, 16
  %bf.clear634 = and i32 %bf.lshr633, 255
  %322 = load i32, i32* %maxmode, align 4
  %cmp635 = icmp ne i32 %bf.clear634, %322
  br i1 %cmp635, label %if.then.637, label %if.end.731

if.then.637:                                      ; preds = %if.end.628
  %323 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %324 = bitcast %struct.rtx_def* %323 to i32*
  %bf.load638 = load i32, i32* %324, align 8
  %bf.lshr639 = lshr i32 %bf.load638, 16
  %bf.clear640 = and i32 %bf.lshr639, 255
  %idxprom641 = sext i32 %bf.clear640 to i64
  %arrayidx642 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom641
  %325 = load i16, i16* %arrayidx642, align 2
  %conv643 = zext i16 %325 to i64
  %326 = load i64, i64* %bitsize.addr, align 8
  %cmp644 = icmp uge i64 %conv643, %326
  br i1 %cmp644, label %if.then.646, label %if.else.677

if.then.646:                                      ; preds = %if.then.637
  %327 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %328 = bitcast %struct.rtx_def* %327 to i32*
  %bf.load647 = load i32, i32* %328, align 8
  %bf.lshr648 = lshr i32 %bf.load647, 16
  %bf.clear649 = and i32 %bf.lshr648, 255
  %idxprom650 = sext i32 %bf.clear649 to i64
  %arrayidx651 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom650
  %329 = load i8, i8* %arrayidx651, align 1
  %conv652 = zext i8 %329 to i32
  %330 = load i32, i32* %maxmode, align 4
  %idxprom653 = sext i32 %330 to i64
  %arrayidx654 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom653
  %331 = load i8, i8* %arrayidx654, align 1
  %conv655 = zext i8 %331 to i32
  %cmp656 = icmp slt i32 %conv652, %conv655
  br i1 %cmp656, label %if.then.658, label %if.else.674

if.then.658:                                      ; preds = %if.then.646
  %332 = load i32, i32* %maxmode, align 4
  %333 = load %struct.rtx_def*, %struct.rtx_def** %value1, align 8
  %334 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %335 = bitcast %struct.rtx_def* %334 to i32*
  %bf.load659 = load i32, i32* %335, align 8
  %bf.lshr660 = lshr i32 %bf.load659, 16
  %bf.clear661 = and i32 %bf.lshr660, 255
  %call662 = call %struct.rtx_def* @simplify_subreg(i32 %332, %struct.rtx_def* %333, i32 %bf.clear661, i32 0)
  store %struct.rtx_def* %call662, %struct.rtx_def** %tmp, align 8
  %336 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %tobool663 = icmp ne %struct.rtx_def* %336, null
  br i1 %tobool663, label %if.end.673, label %if.then.664

if.then.664:                                      ; preds = %if.then.658
  %337 = load i32, i32* %maxmode, align 4
  %338 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %339 = bitcast %struct.rtx_def* %338 to i32*
  %bf.load665 = load i32, i32* %339, align 8
  %bf.lshr666 = lshr i32 %bf.load665, 16
  %bf.clear667 = and i32 %bf.lshr666, 255
  %340 = load %struct.rtx_def*, %struct.rtx_def** %value1, align 8
  %call668 = call %struct.rtx_def* @force_reg(i32 %bf.clear667, %struct.rtx_def* %340)
  %341 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %342 = bitcast %struct.rtx_def* %341 to i32*
  %bf.load669 = load i32, i32* %342, align 8
  %bf.lshr670 = lshr i32 %bf.load669, 16
  %bf.clear671 = and i32 %bf.lshr670, 255
  %call672 = call %struct.rtx_def* @simplify_gen_subreg(i32 %337, %struct.rtx_def* %call668, i32 %bf.clear671, i32 0)
  store %struct.rtx_def* %call672, %struct.rtx_def** %tmp, align 8
  br label %if.end.673

if.end.673:                                       ; preds = %if.then.664, %if.then.658
  %343 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %343, %struct.rtx_def** %value1, align 8
  br label %if.end.676

if.else.674:                                      ; preds = %if.then.646
  %344 = load i32, i32* %maxmode, align 4
  %345 = load %struct.rtx_def*, %struct.rtx_def** %value1, align 8
  %call675 = call %struct.rtx_def* @gen_lowpart(i32 %344, %struct.rtx_def* %345)
  store %struct.rtx_def* %call675, %struct.rtx_def** %value1, align 8
  br label %if.end.676

if.end.676:                                       ; preds = %if.else.674, %if.end.673
  br label %if.end.730

if.else.677:                                      ; preds = %if.then.637
  %346 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %347 = bitcast %struct.rtx_def* %346 to i32*
  %bf.load678 = load i32, i32* %347, align 8
  %bf.clear679 = and i32 %bf.load678, 65535
  %cmp680 = icmp eq i32 %bf.clear679, 54
  br i1 %cmp680, label %if.then.682, label %if.else.687

if.then.682:                                      ; preds = %if.else.677
  %348 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %fld683 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %348, i32 0, i32 1
  %arrayidx684 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld683, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx684 to i64*
  %349 = load i64, i64* %rtwint, align 8
  %350 = load i32, i32* %maxmode, align 4
  %call685 = call i64 @trunc_int_for_mode(i64 %349, i32 %350)
  %call686 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call685)
  store %struct.rtx_def* %call686, %struct.rtx_def** %value1, align 8
  br label %if.end.729

if.else.687:                                      ; preds = %if.else.677
  %351 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %352 = bitcast %struct.rtx_def* %351 to i32*
  %bf.load688 = load i32, i32* %352, align 8
  %bf.clear689 = and i32 %bf.load688, 65535
  %cmp690 = icmp eq i32 %bf.clear689, 67
  br i1 %cmp690, label %if.end.728, label %lor.lhs.false.692

lor.lhs.false.692:                                ; preds = %if.else.687
  %353 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %354 = bitcast %struct.rtx_def* %353 to i32*
  %bf.load693 = load i32, i32* %354, align 8
  %bf.clear694 = and i32 %bf.load693, 65535
  %cmp695 = icmp eq i32 %bf.clear694, 68
  br i1 %cmp695, label %if.end.728, label %lor.lhs.false.697

lor.lhs.false.697:                                ; preds = %lor.lhs.false.692
  %355 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %356 = bitcast %struct.rtx_def* %355 to i32*
  %bf.load698 = load i32, i32* %356, align 8
  %bf.clear699 = and i32 %bf.load698, 65535
  %cmp700 = icmp eq i32 %bf.clear699, 54
  br i1 %cmp700, label %if.end.728, label %lor.lhs.false.702

lor.lhs.false.702:                                ; preds = %lor.lhs.false.697
  %357 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %358 = bitcast %struct.rtx_def* %357 to i32*
  %bf.load703 = load i32, i32* %358, align 8
  %bf.clear704 = and i32 %bf.load703, 65535
  %cmp705 = icmp eq i32 %bf.clear704, 55
  br i1 %cmp705, label %if.end.728, label %lor.lhs.false.707

lor.lhs.false.707:                                ; preds = %lor.lhs.false.702
  %359 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %360 = bitcast %struct.rtx_def* %359 to i32*
  %bf.load708 = load i32, i32* %360, align 8
  %bf.clear709 = and i32 %bf.load708, 65535
  %cmp710 = icmp eq i32 %bf.clear709, 58
  br i1 %cmp710, label %if.end.728, label %lor.lhs.false.712

lor.lhs.false.712:                                ; preds = %lor.lhs.false.707
  %361 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %362 = bitcast %struct.rtx_def* %361 to i32*
  %bf.load713 = load i32, i32* %362, align 8
  %bf.clear714 = and i32 %bf.load713, 65535
  %cmp715 = icmp eq i32 %bf.clear714, 134
  br i1 %cmp715, label %if.end.728, label %lor.lhs.false.717

lor.lhs.false.717:                                ; preds = %lor.lhs.false.712
  %363 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %364 = bitcast %struct.rtx_def* %363 to i32*
  %bf.load718 = load i32, i32* %364, align 8
  %bf.clear719 = and i32 %bf.load718, 65535
  %cmp720 = icmp eq i32 %bf.clear719, 56
  br i1 %cmp720, label %if.end.728, label %lor.lhs.false.722

lor.lhs.false.722:                                ; preds = %lor.lhs.false.717
  %365 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %366 = bitcast %struct.rtx_def* %365 to i32*
  %bf.load723 = load i32, i32* %366, align 8
  %bf.clear724 = and i32 %bf.load723, 65535
  %cmp725 = icmp eq i32 %bf.clear724, 140
  br i1 %cmp725, label %if.end.728, label %if.then.727

if.then.727:                                      ; preds = %lor.lhs.false.722
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 665, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.store_bit_field, i32 0, i32 0)) #4
  unreachable

if.end.728:                                       ; preds = %lor.lhs.false.722, %lor.lhs.false.717, %lor.lhs.false.712, %lor.lhs.false.707, %lor.lhs.false.702, %lor.lhs.false.697, %lor.lhs.false.692, %if.else.687
  br label %if.end.729

if.end.729:                                       ; preds = %if.end.728, %if.then.682
  br label %if.end.730

if.end.730:                                       ; preds = %if.end.729, %if.end.676
  br label %if.end.731

if.end.731:                                       ; preds = %if.end.730, %if.end.628
  %367 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1114, i32 3), align 8
  %arrayidx732 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %367, i64 3
  %predicate733 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx732, i32 0, i32 0
  %368 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate733, align 8
  %369 = load %struct.rtx_def*, %struct.rtx_def** %value1, align 8
  %370 = load i32, i32* %maxmode, align 4
  %call734 = call i32 %368(%struct.rtx_def* %369, i32 %370)
  %tobool735 = icmp ne i32 %call734, 0
  br i1 %tobool735, label %if.end.738, label %if.then.736

if.then.736:                                      ; preds = %if.end.731
  %371 = load i32, i32* %maxmode, align 4
  %372 = load %struct.rtx_def*, %struct.rtx_def** %value1, align 8
  %call737 = call %struct.rtx_def* @force_reg(i32 %371, %struct.rtx_def* %372)
  store %struct.rtx_def* %call737, %struct.rtx_def** %value1, align 8
  br label %if.end.738

if.end.738:                                       ; preds = %if.then.736, %if.end.731
  %373 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %374 = load i64, i64* %bitsize.addr, align 8
  %call739 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %374)
  %375 = load i32, i32* %xbitpos, align 4
  %conv740 = sext i32 %375 to i64
  %call741 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv740)
  %376 = load %struct.rtx_def*, %struct.rtx_def** %value1, align 8
  %call742 = call %struct.rtx_def* @gen_insv(%struct.rtx_def* %373, %struct.rtx_def* %call739, %struct.rtx_def* %call741, %struct.rtx_def* %376)
  store %struct.rtx_def* %call742, %struct.rtx_def** %pat, align 8
  %377 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %tobool743 = icmp ne %struct.rtx_def* %377, null
  br i1 %tobool743, label %if.then.744, label %if.else.746

if.then.744:                                      ; preds = %if.end.738
  %378 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call745 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %378)
  br label %if.end.747

if.else.746:                                      ; preds = %if.end.738
  %379 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %379)
  %380 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %381 = load i64, i64* %offset, align 8
  %382 = load i64, i64* %bitsize.addr, align 8
  %383 = load i64, i64* %bitpos, align 8
  %384 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  call void @store_fixed_bit_field(%struct.rtx_def* %380, i64 %381, i64 %382, i64 %383, %struct.rtx_def* %384)
  br label %if.end.747

if.end.747:                                       ; preds = %if.else.746, %if.then.744
  br label %if.end.749

if.else.748:                                      ; preds = %land.lhs.true.513, %land.lhs.true.497, %land.lhs.true.492, %if.end.483
  br label %insv_loses

insv_loses:                                       ; preds = %if.else.748, %if.then.578
  %385 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %386 = load i64, i64* %offset, align 8
  %387 = load i64, i64* %bitsize.addr, align 8
  %388 = load i64, i64* %bitpos, align 8
  %389 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  call void @store_fixed_bit_field(%struct.rtx_def* %385, i64 %386, i64 %387, i64 %388, %struct.rtx_def* %389)
  br label %if.end.749

if.end.749:                                       ; preds = %insv_loses, %if.end.747
  %390 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  store %struct.rtx_def* %390, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.749, %if.end.579, %for.end, %if.end.272, %if.end.141
  %391 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %391
}

declare %struct.rtx_def* @protect_from_queue(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @force_not_mem(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_rtx_SUBREG(i32, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @adjust_address_1(%struct.rtx_def*, i32, i64, i32, i32) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @int_mode_for_mode(i32) #1

declare %struct.rtx_def* @gen_lowpart(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @shallow_copy_rtx(%struct.rtx_def*) #1

declare void @set_mem_alias_set(%struct.rtx_def*, i64) #1

declare void @set_mem_expr(%struct.rtx_def*, %union.tree_node*) #1

declare %struct.rtx_def* @convert_to_mode(i32, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @copy_to_mode_reg(i32, %struct.rtx_def*) #1

declare i32 @smallest_mode_for_size(i32, i32) #1

declare %struct.rtx_def* @operand_subword_force(%struct.rtx_def*, i32, i32) #1

declare i32 @mode_for_size(i32, i32, i32) #1

declare %struct.rtx_def* @get_last_insn() #1

declare i32 @get_best_mode(i32, i32, i32, i32, i32) #1

declare %struct.rtx_def* @copy_to_reg(%struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_subreg(i32, %struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @simplify_gen_subreg(i32, %struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @force_reg(i32, %struct.rtx_def*) #1

declare i64 @trunc_int_for_mode(i64, i32) #1

declare %struct.rtx_def* @gen_insv(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @delete_insns_since(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @store_fixed_bit_field(%struct.rtx_def* %op0, i64 %offset, i64 %bitsize, i64 %bitpos, %struct.rtx_def* %value) #0 {
entry:
  %op0.addr = alloca %struct.rtx_def*, align 8
  %offset.addr = alloca i64, align 8
  %bitsize.addr = alloca i64, align 8
  %bitpos.addr = alloca i64, align 8
  %value.addr = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %total_bits = alloca i32, align 4
  %subtarget = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %all_zero = alloca i32, align 4
  %all_one = alloca i32, align 4
  %v = alloca i64, align 8
  %must_and = alloca i32, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64 %bitsize, i64* %bitsize.addr, align 8
  store i64 %bitpos, i64* %bitpos.addr, align 8
  store %struct.rtx_def* %value, %struct.rtx_def** %value.addr, align 8
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  store i32 %cond, i32* %total_bits, align 4
  store i32 0, i32* %all_zero, align 4
  store i32 0, i32* %all_one, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 63
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i64, i64* %offset.addr, align 8
  %cmp4 = icmp ne i64 %5, 0
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 723, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.store_fixed_bit_field, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %if.then
  %6 = load i64, i64* %bitsize.addr, align 8
  %7 = load i64, i64* %bitpos.addr, align 8
  %add = add i64 %6, %7
  %8 = load i32, i32* @target_flags, align 4
  %and6 = and i32 %8, 33554432
  %tobool7 = icmp ne i32 %and6, 0
  %cond8 = select i1 %tobool7, i32 64, i32 32
  %conv = sext i32 %cond8 to i64
  %cmp9 = icmp ugt i64 %add, %conv
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %10 = load i64, i64* %bitsize.addr, align 8
  %11 = load i64, i64* %bitpos.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  call void @store_split_bit_field(%struct.rtx_def* %9, i64 %10, i64 %11, %struct.rtx_def* %12)
  br label %if.end.202

if.end.12:                                        ; preds = %if.end
  br label %if.end.76

if.else:                                          ; preds = %lor.lhs.false
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load13 = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load13, 16
  %bf.clear14 = and i32 %bf.lshr, 255
  store i32 %bf.clear14, i32* %mode, align 4
  %15 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2
  %conv15 = zext i16 %16 to i32
  %cmp16 = icmp eq i32 %conv15, 0
  br i1 %cmp16, label %if.then.27, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.else
  %17 = load i32, i32* %mode, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom19
  %18 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %18 to i32
  %19 = load i32, i32* @word_mode, align 4
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom22
  %20 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %20 to i32
  %cmp25 = icmp sgt i32 %conv21, %conv24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %lor.lhs.false.18, %if.else
  %21 = load i32, i32* @word_mode, align 4
  store i32 %21, i32* %mode, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %lor.lhs.false.18
  %22 = load i64, i64* %bitsize.addr, align 8
  %conv29 = trunc i64 %22 to i32
  %23 = load i64, i64* %bitpos.addr, align 8
  %24 = load i64, i64* %offset.addr, align 8
  %mul = mul i64 %24, 8
  %add30 = add i64 %23, %mul
  %conv31 = trunc i64 %add30 to i32
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx32 to %struct.mem_attrs**
  %26 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp33 = icmp ne %struct.mem_attrs* %26, null
  br i1 %cmp33, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.28
  %27 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtmem37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.mem_attrs**
  %28 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem37, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %28, i32 0, i32 4
  %29 = load i32, i32* %align, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.28
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond38 = phi i32 [ %29, %cond.true ], [ 8, %cond.false ]
  %30 = load i32, i32* %mode, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load39 = load i32, i32* %32, align 8
  %bf.lshr40 = lshr i32 %bf.load39, 27
  %bf.clear41 = and i32 %bf.lshr40, 1
  %call = call i32 @get_best_mode(i32 %conv29, i32 %conv31, i32 %cond38, i32 %30, i32 %bf.clear41)
  store i32 %call, i32* %mode, align 4
  %33 = load i32, i32* %mode, align 4
  %cmp42 = icmp eq i32 %33, 0
  br i1 %cmp42, label %if.then.44, label %if.end.47

if.then.44:                                       ; preds = %cond.end
  %34 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %35 = load i64, i64* %bitsize.addr, align 8
  %36 = load i64, i64* %bitpos.addr, align 8
  %37 = load i64, i64* %offset.addr, align 8
  %mul45 = mul i64 %37, 8
  %add46 = add i64 %36, %mul45
  %38 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  call void @store_split_bit_field(%struct.rtx_def* %34, i64 %35, i64 %add46, %struct.rtx_def* %38)
  br label %if.end.202

if.end.47:                                        ; preds = %cond.end
  %39 = load i32, i32* %mode, align 4
  %idxprom48 = sext i32 %39 to i64
  %arrayidx49 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom48
  %40 = load i16, i16* %arrayidx49, align 2
  %conv50 = zext i16 %40 to i32
  store i32 %conv50, i32* %total_bits, align 4
  %41 = load i64, i64* %bitpos.addr, align 8
  %42 = load i32, i32* %total_bits, align 4
  %conv51 = zext i32 %42 to i64
  %cmp52 = icmp uge i64 %41, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.66

if.then.54:                                       ; preds = %if.end.47
  %43 = load i64, i64* %bitpos.addr, align 8
  %44 = load i32, i32* %total_bits, align 4
  %conv55 = zext i32 %44 to i64
  %div = udiv i64 %43, %conv55
  %45 = load i32, i32* %total_bits, align 4
  %div56 = udiv i32 %45, 8
  %conv57 = zext i32 %div56 to i64
  %mul58 = mul i64 %div, %conv57
  %46 = load i64, i64* %offset.addr, align 8
  %add59 = add i64 %46, %mul58
  store i64 %add59, i64* %offset.addr, align 8
  %47 = load i64, i64* %bitpos.addr, align 8
  %48 = load i32, i32* %total_bits, align 4
  %conv60 = zext i32 %48 to i64
  %div61 = udiv i64 %47, %conv60
  %49 = load i32, i32* %total_bits, align 4
  %div62 = udiv i32 %49, 8
  %conv63 = zext i32 %div62 to i64
  %mul64 = mul i64 %div61, %conv63
  %mul65 = mul i64 %mul64, 8
  %50 = load i64, i64* %bitpos.addr, align 8
  %sub = sub i64 %50, %mul65
  store i64 %sub, i64* %bitpos.addr, align 8
  br label %if.end.66

if.end.66:                                        ; preds = %if.then.54, %if.end.47
  %51 = load i64, i64* %offset.addr, align 8
  %52 = load i32, i32* %total_bits, align 4
  %div67 = udiv i32 %52, 8
  %conv68 = zext i32 %div67 to i64
  %rem = urem i64 %51, %conv68
  %mul69 = mul i64 %rem, 8
  %53 = load i64, i64* %bitpos.addr, align 8
  %add70 = add i64 %53, %mul69
  store i64 %add70, i64* %bitpos.addr, align 8
  %54 = load i64, i64* %offset.addr, align 8
  %55 = load i32, i32* %total_bits, align 4
  %div71 = udiv i32 %55, 8
  %conv72 = zext i32 %div71 to i64
  %rem73 = urem i64 %54, %conv72
  %56 = load i64, i64* %offset.addr, align 8
  %sub74 = sub i64 %56, %rem73
  store i64 %sub74, i64* %offset.addr, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %58 = load i32, i32* %mode, align 4
  %59 = load i64, i64* %offset.addr, align 8
  %call75 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %57, i32 %58, i64 %59, i32 1, i32 1)
  store %struct.rtx_def* %call75, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.66, %if.end.12
  %60 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load77 = load i32, i32* %61, align 8
  %bf.lshr78 = lshr i32 %bf.load77, 16
  %bf.clear79 = and i32 %bf.lshr78, 255
  store i32 %bf.clear79, i32* %mode, align 4
  %62 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load80 = load i32, i32* %63, align 8
  %bf.clear81 = and i32 %bf.load80, 65535
  %cmp82 = icmp eq i32 %bf.clear81, 54
  br i1 %cmp82, label %if.then.84, label %if.else.115

if.then.84:                                       ; preds = %if.end.76
  %64 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx86 to i64*
  %65 = load i64, i64* %rtwint, align 8
  store i64 %65, i64* %v, align 8
  %66 = load i64, i64* %bitsize.addr, align 8
  %cmp87 = icmp ult i64 %66, 64
  br i1 %cmp87, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %if.then.84
  %67 = load i64, i64* %bitsize.addr, align 8
  %shl = shl i64 1, %67
  %sub90 = sub nsw i64 %shl, 1
  %68 = load i64, i64* %v, align 8
  %and91 = and i64 %68, %sub90
  store i64 %and91, i64* %v, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %if.then.84
  %69 = load i64, i64* %v, align 8
  %cmp93 = icmp eq i64 %69, 0
  br i1 %cmp93, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %if.end.92
  store i32 1, i32* %all_zero, align 4
  br label %if.end.111

if.else.96:                                       ; preds = %if.end.92
  %70 = load i64, i64* %bitsize.addr, align 8
  %cmp97 = icmp ult i64 %70, 64
  br i1 %cmp97, label %land.lhs.true, label %lor.lhs.false.103

land.lhs.true:                                    ; preds = %if.else.96
  %71 = load i64, i64* %v, align 8
  %72 = load i64, i64* %bitsize.addr, align 8
  %shl99 = shl i64 1, %72
  %sub100 = sub nsw i64 %shl99, 1
  %cmp101 = icmp eq i64 %71, %sub100
  br i1 %cmp101, label %if.then.109, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %land.lhs.true, %if.else.96
  %73 = load i64, i64* %bitsize.addr, align 8
  %cmp104 = icmp eq i64 %73, 64
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.110

land.lhs.true.106:                                ; preds = %lor.lhs.false.103
  %74 = load i64, i64* %v, align 8
  %cmp107 = icmp eq i64 %74, -1
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %land.lhs.true.106, %land.lhs.true
  store i32 1, i32* %all_one, align 4
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.109, %land.lhs.true.106, %lor.lhs.false.103
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %if.then.95
  %75 = load i32, i32* %mode, align 4
  %76 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %77 = load i64, i64* %bitpos.addr, align 8
  %conv112 = trunc i64 %77 to i32
  %78 = load i64, i64* %bitsize.addr, align 8
  %conv113 = trunc i64 %78 to i32
  %call114 = call %struct.rtx_def* @lshift_value(i32 %75, %struct.rtx_def* %76, i32 %conv112, i32 %conv113)
  store %struct.rtx_def* %call114, %struct.rtx_def** %value.addr, align 8
  br label %if.end.175

if.else.115:                                      ; preds = %if.end.76
  %79 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load116 = load i32, i32* %80, align 8
  %bf.lshr117 = lshr i32 %bf.load116, 16
  %bf.clear118 = and i32 %bf.lshr117, 255
  %idxprom119 = sext i32 %bf.clear118 to i64
  %arrayidx120 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom119
  %81 = load i16, i16* %arrayidx120, align 2
  %conv121 = zext i16 %81 to i64
  %82 = load i64, i64* %bitsize.addr, align 8
  %cmp122 = icmp ne i64 %conv121, %82
  br i1 %cmp122, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.else.115
  %83 = load i64, i64* %bitpos.addr, align 8
  %84 = load i64, i64* %bitsize.addr, align 8
  %add124 = add i64 %83, %84
  %85 = load i32, i32* %mode, align 4
  %idxprom125 = sext i32 %85 to i64
  %arrayidx126 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom125
  %86 = load i16, i16* %arrayidx126, align 2
  %conv127 = zext i16 %86 to i64
  %cmp128 = icmp ne i64 %add124, %conv127
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else.115
  %87 = phi i1 [ false, %if.else.115 ], [ %cmp128, %land.rhs ]
  %land.ext = zext i1 %87 to i32
  store i32 %land.ext, i32* %must_and, align 4
  %88 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %89 = bitcast %struct.rtx_def* %88 to i32*
  %bf.load130 = load i32, i32* %89, align 8
  %bf.lshr131 = lshr i32 %bf.load130, 16
  %bf.clear132 = and i32 %bf.lshr131, 255
  %90 = load i32, i32* %mode, align 4
  %cmp133 = icmp ne i32 %bf.clear132, %90
  br i1 %cmp133, label %if.then.135, label %if.end.162

if.then.135:                                      ; preds = %land.end
  %91 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %bf.load136 = load i32, i32* %92, align 8
  %bf.clear137 = and i32 %bf.load136, 65535
  %cmp138 = icmp eq i32 %bf.clear137, 61
  br i1 %cmp138, label %land.lhs.true.145, label %lor.lhs.false.140

lor.lhs.false.140:                                ; preds = %if.then.135
  %93 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load141 = load i32, i32* %94, align 8
  %bf.clear142 = and i32 %bf.load141, 65535
  %cmp143 = icmp eq i32 %bf.clear142, 63
  br i1 %cmp143, label %land.lhs.true.145, label %if.else.159

land.lhs.true.145:                                ; preds = %lor.lhs.false.140, %if.then.135
  %95 = load i32, i32* %mode, align 4
  %idxprom146 = sext i32 %95 to i64
  %arrayidx147 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom146
  %96 = load i8, i8* %arrayidx147, align 1
  %conv148 = zext i8 %96 to i32
  %97 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load149 = load i32, i32* %98, align 8
  %bf.lshr150 = lshr i32 %bf.load149, 16
  %bf.clear151 = and i32 %bf.lshr150, 255
  %idxprom152 = sext i32 %bf.clear151 to i64
  %arrayidx153 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom152
  %99 = load i8, i8* %arrayidx153, align 1
  %conv154 = zext i8 %99 to i32
  %cmp155 = icmp slt i32 %conv148, %conv154
  br i1 %cmp155, label %if.then.157, label %if.else.159

if.then.157:                                      ; preds = %land.lhs.true.145
  %100 = load i32, i32* %mode, align 4
  %101 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call158 = call %struct.rtx_def* @gen_lowpart(i32 %100, %struct.rtx_def* %101)
  store %struct.rtx_def* %call158, %struct.rtx_def** %value.addr, align 8
  br label %if.end.161

if.else.159:                                      ; preds = %land.lhs.true.145, %lor.lhs.false.140
  %102 = load i32, i32* %mode, align 4
  %103 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call160 = call %struct.rtx_def* @convert_to_mode(i32 %102, %struct.rtx_def* %103, i32 1)
  store %struct.rtx_def* %call160, %struct.rtx_def** %value.addr, align 8
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.159, %if.then.157
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %land.end
  %104 = load i32, i32* %must_and, align 4
  %tobool163 = icmp ne i32 %104, 0
  br i1 %tobool163, label %if.then.164, label %if.end.168

if.then.164:                                      ; preds = %if.end.162
  %105 = load i32, i32* %mode, align 4
  %106 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %108 = load i32, i32* %mode, align 4
  %109 = load i64, i64* %bitsize.addr, align 8
  %conv165 = trunc i64 %109 to i32
  %call166 = call %struct.rtx_def* @mask_rtx(i32 %108, i32 0, i32 %conv165, i32 0)
  %call167 = call %struct.rtx_def* @expand_binop(i32 %105, %struct.optab* %106, %struct.rtx_def* %107, %struct.rtx_def* %call166, %struct.rtx_def* null, i32 1, i32 3)
  store %struct.rtx_def* %call167, %struct.rtx_def** %value.addr, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.164, %if.end.162
  %110 = load i64, i64* %bitpos.addr, align 8
  %cmp169 = icmp ugt i64 %110, 0
  br i1 %cmp169, label %if.then.171, label %if.end.174

if.then.171:                                      ; preds = %if.end.168
  %111 = load i32, i32* %mode, align 4
  %112 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %113 = load i64, i64* %bitpos.addr, align 8
  %call172 = call %union.tree_node* @build_int_2_wide(i64 %113, i64 0)
  %call173 = call %struct.rtx_def* @expand_shift(i32 82, i32 %111, %struct.rtx_def* %112, %union.tree_node* %call172, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call173, %struct.rtx_def** %value.addr, align 8
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.171, %if.end.168
  br label %if.end.175

if.end.175:                                       ; preds = %if.end.174, %if.end.111
  %114 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %bf.load176 = load i32, i32* %115, align 8
  %bf.clear177 = and i32 %bf.load176, 65535
  %cmp178 = icmp eq i32 %bf.clear177, 61
  br i1 %cmp178, label %cond.true.182, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %if.end.175
  %116 = load i32, i32* @flag_force_mem, align 4
  %tobool181 = icmp ne i32 %116, 0
  br i1 %tobool181, label %cond.false.183, label %cond.true.182

cond.true.182:                                    ; preds = %lor.lhs.false.180, %if.end.175
  %117 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  br label %cond.end.184

cond.false.183:                                   ; preds = %lor.lhs.false.180
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.183, %cond.true.182
  %cond185 = phi %struct.rtx_def* [ %117, %cond.true.182 ], [ null, %cond.false.183 ]
  store %struct.rtx_def* %cond185, %struct.rtx_def** %subtarget, align 8
  %118 = load i32, i32* %all_one, align 4
  %tobool186 = icmp ne i32 %118, 0
  br i1 %tobool186, label %if.else.192, label %if.then.187

if.then.187:                                      ; preds = %cond.end.184
  %119 = load i32, i32* %mode, align 4
  %120 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %122 = load i32, i32* %mode, align 4
  %123 = load i64, i64* %bitpos.addr, align 8
  %conv188 = trunc i64 %123 to i32
  %124 = load i64, i64* %bitsize.addr, align 8
  %conv189 = trunc i64 %124 to i32
  %call190 = call %struct.rtx_def* @mask_rtx(i32 %122, i32 %conv188, i32 %conv189, i32 1)
  %125 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call191 = call %struct.rtx_def* @expand_binop(i32 %119, %struct.optab* %120, %struct.rtx_def* %121, %struct.rtx_def* %call190, %struct.rtx_def* %125, i32 1, i32 3)
  store %struct.rtx_def* %call191, %struct.rtx_def** %temp, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %126, %struct.rtx_def** %subtarget, align 8
  br label %if.end.193

if.else.192:                                      ; preds = %cond.end.184
  %127 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %127, %struct.rtx_def** %temp, align 8
  br label %if.end.193

if.end.193:                                       ; preds = %if.else.192, %if.then.187
  %128 = load i32, i32* %all_zero, align 4
  %tobool194 = icmp ne i32 %128, 0
  br i1 %tobool194, label %if.end.197, label %if.then.195

if.then.195:                                      ; preds = %if.end.193
  %129 = load i32, i32* %mode, align 4
  %130 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call196 = call %struct.rtx_def* @expand_binop(i32 %129, %struct.optab* %130, %struct.rtx_def* %131, %struct.rtx_def* %132, %struct.rtx_def* %133, i32 1, i32 3)
  store %struct.rtx_def* %call196, %struct.rtx_def** %temp, align 8
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %if.end.193
  %134 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %135 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp198 = icmp ne %struct.rtx_def* %134, %135
  br i1 %cmp198, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %if.end.197
  %136 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %137 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call201 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %136, %struct.rtx_def* %137)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.11, %if.then.44, %if.then.200, %if.end.197
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @extract_bit_field(%struct.rtx_def* %str_rtx, i64 %bitsize, i64 %bitnum, i32 %unsignedp, %struct.rtx_def* %target, i32 %mode, i32 %tmode, i64 %total_size) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %str_rtx.addr = alloca %struct.rtx_def*, align 8
  %bitsize.addr = alloca i64, align 8
  %bitnum.addr = alloca i64, align 8
  %unsignedp.addr = alloca i32, align 4
  %target.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %tmode.addr = alloca i32, align 4
  %total_size.addr = alloca i64, align 8
  %unit = alloca i32, align 4
  %offset = alloca i64, align 8
  %bitpos = alloca i64, align 8
  %op0 = alloca %struct.rtx_def*, align 8
  %spec_target = alloca %struct.rtx_def*, align 8
  %spec_target_subreg = alloca %struct.rtx_def*, align 8
  %int_mode = alloca i32, align 4
  %extv_mode = alloca i32, align 4
  %extzv_mode = alloca i32, align 4
  %mode1 = alloca i32, align 4
  %byte_offset = alloca i32, align 4
  %outer_size = alloca i32, align 4
  %inner_size = alloca i32, align 4
  %imode = alloca i32, align 4
  %nwords = alloca i32, align 4
  %i = alloca i32, align 4
  %wordnum = alloca i32, align 4
  %bit_offset = alloca i32, align 4
  %target_part = alloca %struct.rtx_def*, align 8
  %result_part = alloca %struct.rtx_def*, align 8
  %i336 = alloca i32, align 4
  %total_words = alloca i32, align 4
  %xbitpos = alloca i64, align 8
  %xoffset = alloca i64, align 8
  %bitsize_rtx = alloca %struct.rtx_def*, align 8
  %bitpos_rtx = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %xop0 = alloca %struct.rtx_def*, align 8
  %xtarget = alloca %struct.rtx_def*, align 8
  %xspec_target = alloca %struct.rtx_def*, align 8
  %xspec_target_subreg = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %maxmode = alloca i32, align 4
  %save_volatile_ok = alloca i32, align 4
  %bestmode = alloca i32, align 4
  %wider = alloca i32, align 4
  %xbitpos637 = alloca i32, align 4
  %xoffset639 = alloca i32, align 4
  %bitsize_rtx641 = alloca %struct.rtx_def*, align 8
  %bitpos_rtx642 = alloca %struct.rtx_def*, align 8
  %last643 = alloca %struct.rtx_def*, align 8
  %xop0645 = alloca %struct.rtx_def*, align 8
  %xtarget646 = alloca %struct.rtx_def*, align 8
  %xspec_target647 = alloca %struct.rtx_def*, align 8
  %xspec_target_subreg648 = alloca %struct.rtx_def*, align 8
  %pat649 = alloca %struct.rtx_def*, align 8
  %maxmode650 = alloca i32, align 4
  %bestmode665 = alloca i32, align 4
  %wider784 = alloca i32, align 4
  store %struct.rtx_def* %str_rtx, %struct.rtx_def** %str_rtx.addr, align 8
  store i64 %bitsize, i64* %bitsize.addr, align 8
  store i64 %bitnum, i64* %bitnum.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %tmode, i32* %tmode.addr, align 4
  store i64 %total_size, i64* %total_size.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %str_rtx.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond1 = phi i32 [ 8, %cond.true ], [ %cond, %cond.false ]
  store i32 %cond1, i32* %unit, align 4
  %3 = load i64, i64* %bitnum.addr, align 8
  %4 = load i32, i32* %unit, align 4
  %conv = zext i32 %4 to i64
  %div = udiv i64 %3, %conv
  store i64 %div, i64* %offset, align 8
  %5 = load i64, i64* %bitnum.addr, align 8
  %6 = load i32, i32* %unit, align 4
  %conv2 = zext i32 %6 to i64
  %rem = urem i64 %5, %conv2
  store i64 %rem, i64* %bitpos, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %str_rtx.addr, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %op0, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %spec_target, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %spec_target_subreg, align 8
  %call = call i32 @mode_for_extraction(i32 1, i32 0)
  store i32 %call, i32* %extv_mode, align 4
  %call3 = call i32 @mode_for_extraction(i32 2, i32 0)
  store i32 %call3, i32* %extzv_mode, align 4
  %9 = load i64, i64* %total_size.addr, align 8
  %cmp4 = icmp sge i64 %9, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %10 = load i64, i64* %bitpos, align 8
  %div6 = udiv i64 %10, 128
  %mul = mul i64 %div6, 16
  %11 = load i64, i64* %total_size.addr, align 8
  %sub = sub i64 %11, %mul
  store i64 %sub, i64* %total_size.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %12 = load i32, i32* %tmode.addr, align 4
  %cmp7 = icmp eq i32 %12, 0
  br i1 %cmp7, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  %13 = load i32, i32* %mode.addr, align 4
  store i32 %13, i32* %tmode.addr, align 4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.9, %if.end
  br label %while.cond

while.cond:                                       ; preds = %cond.end.42, %if.end.10
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load11 = load i32, i32* %15, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 63
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load15 = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load15, 16
  %bf.clear16 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear16 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %18 = load i16, i16* %arrayidx, align 2
  %conv17 = zext i16 %18 to i32
  store i32 %conv17, i32* %outer_size, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load19 = load i32, i32* %21, align 8
  %bf.lshr20 = lshr i32 %bf.load19, 16
  %bf.clear21 = and i32 %bf.lshr20, 255
  %idxprom22 = sext i32 %bf.clear21 to i64
  %arrayidx23 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom22
  %22 = load i16, i16* %arrayidx23, align 2
  %conv24 = zext i16 %22 to i32
  store i32 %conv24, i32* %inner_size, align 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx26 to i32*
  %24 = load i32, i32* %rtuint, align 4
  %25 = load i32, i32* @target_flags, align 4
  %and27 = and i32 %25, 33554432
  %tobool28 = icmp ne i32 %and27, 0
  %cond29 = select i1 %tobool28, i32 8, i32 4
  %div30 = udiv i32 %24, %cond29
  %conv31 = zext i32 %div30 to i64
  %26 = load i64, i64* %offset, align 8
  %add = add i64 %26, %conv31
  store i64 %add, i64* %offset, align 8
  %27 = load i32, i32* %inner_size, align 4
  %28 = load i32, i32* @target_flags, align 4
  %and32 = and i32 %28, 33554432
  %tobool33 = icmp ne i32 %and32, 0
  %cond34 = select i1 %tobool33, i32 64, i32 32
  %cmp35 = icmp slt i32 %27, %cond34
  br i1 %cmp35, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %while.body
  %29 = load i32, i32* %inner_size, align 4
  br label %cond.end.42

cond.false.38:                                    ; preds = %while.body
  %30 = load i32, i32* @target_flags, align 4
  %and39 = and i32 %30, 33554432
  %tobool40 = icmp ne i32 %and39, 0
  %cond41 = select i1 %tobool40, i32 64, i32 32
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.38, %cond.true.37
  %cond43 = phi i32 [ %29, %cond.true.37 ], [ %cond41, %cond.false.38 ]
  store i32 %cond43, i32* %inner_size, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %op0, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %33 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load47 = load i32, i32* %34, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 61
  br i1 %cmp49, label %land.lhs.true, label %if.end.69

land.lhs.true:                                    ; preds = %while.end
  %35 = load i32, i32* %mode.addr, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load51 = load i32, i32* %37, align 8
  %bf.lshr52 = lshr i32 %bf.load51, 16
  %bf.clear53 = and i32 %bf.lshr52, 255
  %cmp54 = icmp eq i32 %35, %bf.clear53
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.69

land.lhs.true.56:                                 ; preds = %land.lhs.true
  %38 = load i64, i64* %bitnum.addr, align 8
  %cmp57 = icmp eq i64 %38, 0
  br i1 %cmp57, label %land.lhs.true.59, label %if.end.69

land.lhs.true.59:                                 ; preds = %land.lhs.true.56
  %39 = load i64, i64* %bitsize.addr, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load60 = load i32, i32* %41, align 8
  %bf.lshr61 = lshr i32 %bf.load60, 16
  %bf.clear62 = and i32 %bf.lshr61, 255
  %idxprom63 = sext i32 %bf.clear62 to i64
  %arrayidx64 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom63
  %42 = load i16, i16* %arrayidx64, align 2
  %conv65 = zext i16 %42 to i64
  %cmp66 = icmp eq i64 %39, %conv65
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %land.lhs.true.59
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %retval
  br label %return

if.end.69:                                        ; preds = %land.lhs.true.59, %land.lhs.true.56, %land.lhs.true, %while.end
  %44 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load70 = load i32, i32* %45, align 8
  %bf.lshr71 = lshr i32 %bf.load70, 16
  %bf.clear72 = and i32 %bf.lshr71, 255
  %call73 = call i32 @int_mode_for_mode(i32 %bf.clear72)
  store i32 %call73, i32* %imode, align 4
  %46 = load i32, i32* %imode, align 4
  %47 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load74 = load i32, i32* %48, align 8
  %bf.lshr75 = lshr i32 %bf.load74, 16
  %bf.clear76 = and i32 %bf.lshr75, 255
  %cmp77 = icmp ne i32 %46, %bf.clear76
  br i1 %cmp77, label %if.then.79, label %if.end.93

if.then.79:                                       ; preds = %if.end.69
  %49 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load80 = load i32, i32* %50, align 8
  %bf.clear81 = and i32 %bf.load80, 65535
  %cmp82 = icmp eq i32 %bf.clear81, 66
  br i1 %cmp82, label %if.then.84, label %if.else

if.then.84:                                       ; preds = %if.then.79
  %51 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %52 = load i32, i32* %imode, align 4
  %call85 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %51, i32 %52, i64 0, i32 1, i32 1)
  store %struct.rtx_def* %call85, %struct.rtx_def** %op0, align 8
  br label %if.end.92

if.else:                                          ; preds = %if.then.79
  %53 = load i32, i32* %imode, align 4
  %cmp86 = icmp ne i32 %53, 51
  br i1 %cmp86, label %if.then.88, label %if.else.90

if.then.88:                                       ; preds = %if.else
  %54 = load i32, i32* %imode, align 4
  %55 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call89 = call %struct.rtx_def* @gen_lowpart(i32 %54, %struct.rtx_def* %55)
  store %struct.rtx_def* %call89, %struct.rtx_def** %op0, align 8
  br label %if.end.91

if.else.90:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1077, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.extract_bit_field, i32 0, i32 0)) #4
  unreachable

if.end.91:                                        ; preds = %if.then.88
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.then.84
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %if.end.69
  %56 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load94 = load i32, i32* %57, align 8
  %bf.clear95 = and i32 %bf.load94, 65535
  %cmp96 = icmp eq i32 %bf.clear95, 66
  br i1 %cmp96, label %if.then.98, label %if.end.100

if.then.98:                                       ; preds = %if.end.93
  %58 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call99 = call %struct.rtx_def* @shallow_copy_rtx(%struct.rtx_def* %58)
  store %struct.rtx_def* %call99, %struct.rtx_def** %op0, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  call void @set_mem_alias_set(%struct.rtx_def* %59, i64 0)
  %60 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  call void @set_mem_expr(%struct.rtx_def* %60, %union.tree_node* null)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.98, %if.end.93
  %61 = load i64, i64* %bitnum.addr, align 8
  %62 = load i32, i32* @target_flags, align 4
  %and101 = and i32 %62, 33554432
  %tobool102 = icmp ne i32 %and101, 0
  %cond103 = select i1 %tobool102, i32 64, i32 32
  %conv104 = sext i32 %cond103 to i64
  %rem105 = urem i64 %61, %conv104
  %div106 = udiv i64 %rem105, 8
  %63 = load i64, i64* %offset, align 8
  %64 = load i32, i32* @target_flags, align 4
  %and107 = and i32 %64, 33554432
  %tobool108 = icmp ne i32 %and107, 0
  %cond109 = select i1 %tobool108, i32 8, i32 4
  %conv110 = sext i32 %cond109 to i64
  %mul111 = mul i64 %63, %conv110
  %add112 = add i64 %div106, %mul111
  %conv113 = trunc i64 %add112 to i32
  store i32 %conv113, i32* %byte_offset, align 4
  %65 = load i32, i32* %tmode.addr, align 4
  %idxprom114 = sext i32 %65 to i64
  %arrayidx115 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom114
  %66 = load i32, i32* %arrayidx115, align 4
  %cmp116 = icmp eq i32 %66, 7
  br i1 %cmp116, label %cond.true.122, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.100
  %67 = load i32, i32* %tmode.addr, align 4
  %idxprom118 = sext i32 %67 to i64
  %arrayidx119 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom118
  %68 = load i32, i32* %arrayidx119, align 4
  %cmp120 = icmp eq i32 %68, 8
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %lor.lhs.false, %if.end.100
  %69 = load i32, i32* %mode.addr, align 4
  br label %cond.end.128

cond.false.123:                                   ; preds = %lor.lhs.false
  %70 = load i64, i64* %bitsize.addr, align 8
  %conv124 = trunc i64 %70 to i32
  %71 = load i32, i32* %tmode.addr, align 4
  %idxprom125 = sext i32 %71 to i64
  %arrayidx126 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom125
  %72 = load i32, i32* %arrayidx126, align 4
  %call127 = call i32 @mode_for_size(i32 %conv124, i32 %72, i32 0)
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.false.123, %cond.true.122
  %cond129 = phi i32 [ %69, %cond.true.122 ], [ %call127, %cond.false.123 ]
  store i32 %cond129, i32* %mode1, align 4
  %73 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load130 = load i32, i32* %74, align 8
  %bf.clear131 = and i32 %bf.load130, 65535
  %cmp132 = icmp ne i32 %bf.clear131, 66
  br i1 %cmp132, label %land.lhs.true.134, label %lor.lhs.false.147

land.lhs.true.134:                                ; preds = %cond.end.128
  %75 = load i32, i32* %mode1, align 4
  %idxprom135 = sext i32 %75 to i64
  %arrayidx136 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom135
  %76 = load i8, i8* %arrayidx136, align 1
  %conv137 = zext i8 %76 to i32
  %cmp138 = icmp ne i32 %conv137, 0
  br i1 %cmp138, label %land.lhs.true.140, label %lor.lhs.false.147

land.lhs.true.140:                                ; preds = %land.lhs.true.134
  %77 = load i32, i32* %byte_offset, align 4
  %78 = load i32, i32* %mode1, align 4
  %idxprom141 = sext i32 %78 to i64
  %arrayidx142 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom141
  %79 = load i8, i8* %arrayidx142, align 1
  %conv143 = zext i8 %79 to i32
  %rem144 = srem i32 %77, %conv143
  %cmp145 = icmp eq i32 %rem144, 0
  br i1 %cmp145, label %land.lhs.true.152, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %land.lhs.true.140, %land.lhs.true.134, %cond.end.128
  %80 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %81 = bitcast %struct.rtx_def* %80 to i32*
  %bf.load148 = load i32, i32* %81, align 8
  %bf.clear149 = and i32 %bf.load148, 65535
  %cmp150 = icmp eq i32 %bf.clear149, 66
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.244

land.lhs.true.152:                                ; preds = %lor.lhs.false.147, %land.lhs.true.140
  %82 = load i64, i64* %bitsize.addr, align 8
  %83 = load i32, i32* @target_flags, align 4
  %and153 = and i32 %83, 33554432
  %tobool154 = icmp ne i32 %and153, 0
  %cond155 = select i1 %tobool154, i32 64, i32 32
  %conv156 = sext i32 %cond155 to i64
  %cmp157 = icmp uge i64 %82, %conv156
  br i1 %cmp157, label %land.lhs.true.159, label %lor.lhs.false.173

land.lhs.true.159:                                ; preds = %land.lhs.true.152
  %84 = load i64, i64* %bitsize.addr, align 8
  %85 = load i32, i32* %mode.addr, align 4
  %idxprom160 = sext i32 %85 to i64
  %arrayidx161 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom160
  %86 = load i16, i16* %arrayidx161, align 2
  %conv162 = zext i16 %86 to i64
  %cmp163 = icmp eq i64 %84, %conv162
  br i1 %cmp163, label %land.lhs.true.165, label %lor.lhs.false.173

land.lhs.true.165:                                ; preds = %land.lhs.true.159
  %87 = load i64, i64* %bitpos, align 8
  %88 = load i32, i32* @target_flags, align 4
  %and166 = and i32 %88, 33554432
  %tobool167 = icmp ne i32 %and166, 0
  %cond168 = select i1 %tobool167, i32 64, i32 32
  %conv169 = sext i32 %cond168 to i64
  %rem170 = urem i64 %87, %conv169
  %cmp171 = icmp eq i64 %rem170, 0
  br i1 %cmp171, label %if.then.192, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %land.lhs.true.165, %land.lhs.true.159, %land.lhs.true.152
  %89 = load i64, i64* %bitsize.addr, align 8
  %conv174 = trunc i64 %89 to i32
  %90 = load i32, i32* %tmode.addr, align 4
  %idxprom175 = sext i32 %90 to i64
  %arrayidx176 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom175
  %91 = load i32, i32* %arrayidx176, align 4
  %call177 = call i32 @mode_for_size(i32 %conv174, i32 %91, i32 0)
  %cmp178 = icmp ne i32 %call177, 51
  br i1 %cmp178, label %land.lhs.true.180, label %if.end.244

land.lhs.true.180:                                ; preds = %lor.lhs.false.173
  br i1 false, label %cond.true.181, label %cond.false.189

cond.true.181:                                    ; preds = %land.lhs.true.180
  %92 = load i64, i64* %bitpos, align 8
  %93 = load i64, i64* %bitsize.addr, align 8
  %add182 = add i64 %92, %93
  %94 = load i32, i32* @target_flags, align 4
  %and183 = and i32 %94, 33554432
  %tobool184 = icmp ne i32 %and183, 0
  %cond185 = select i1 %tobool184, i32 64, i32 32
  %conv186 = sext i32 %cond185 to i64
  %cmp187 = icmp eq i64 %add182, %conv186
  br i1 %cmp187, label %if.then.192, label %if.end.244

cond.false.189:                                   ; preds = %land.lhs.true.180
  %95 = load i64, i64* %bitpos, align 8
  %cmp190 = icmp eq i64 %95, 0
  br i1 %cmp190, label %if.then.192, label %if.end.244

if.then.192:                                      ; preds = %cond.false.189, %cond.true.181, %land.lhs.true.165
  %96 = load i32, i32* %mode1, align 4
  %97 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load193 = load i32, i32* %98, align 8
  %bf.lshr194 = lshr i32 %bf.load193, 16
  %bf.clear195 = and i32 %bf.lshr194, 255
  %cmp196 = icmp ne i32 %96, %bf.clear195
  br i1 %cmp196, label %if.then.198, label %if.end.238

if.then.198:                                      ; preds = %if.then.192
  %99 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %100 = bitcast %struct.rtx_def* %99 to i32*
  %bf.load199 = load i32, i32* %100, align 8
  %bf.clear200 = and i32 %bf.load199, 65535
  %cmp201 = icmp eq i32 %bf.clear200, 63
  br i1 %cmp201, label %if.then.203, label %if.end.228

if.then.203:                                      ; preds = %if.then.198
  %101 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld204 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld204, i32 0, i64 0
  %rtx206 = bitcast %union.rtunion_def* %arrayidx205 to %struct.rtx_def**
  %102 = load %struct.rtx_def*, %struct.rtx_def** %rtx206, align 8
  %103 = bitcast %struct.rtx_def* %102 to i32*
  %bf.load207 = load i32, i32* %103, align 8
  %bf.lshr208 = lshr i32 %bf.load207, 16
  %bf.clear209 = and i32 %bf.lshr208, 255
  %104 = load i32, i32* %mode1, align 4
  %cmp210 = icmp eq i32 %bf.clear209, %104
  br i1 %cmp210, label %if.then.222, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %if.then.203
  %105 = load i32, i32* %mode1, align 4
  %idxprom213 = sext i32 %105 to i64
  %arrayidx214 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom213
  %106 = load i32, i32* %arrayidx214, align 4
  %cmp215 = icmp eq i32 %106, 1
  br i1 %cmp215, label %if.then.222, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %lor.lhs.false.212
  %107 = load i32, i32* %mode1, align 4
  %idxprom218 = sext i32 %107 to i64
  %arrayidx219 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom218
  %108 = load i32, i32* %arrayidx219, align 4
  %cmp220 = icmp eq i32 %108, 3
  br i1 %cmp220, label %if.then.222, label %if.else.226

if.then.222:                                      ; preds = %lor.lhs.false.217, %lor.lhs.false.212, %if.then.203
  %109 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %fld223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld223, i32 0, i64 0
  %rtx225 = bitcast %union.rtunion_def* %arrayidx224 to %struct.rtx_def**
  %110 = load %struct.rtx_def*, %struct.rtx_def** %rtx225, align 8
  store %struct.rtx_def* %110, %struct.rtx_def** %op0, align 8
  br label %if.end.227

if.else.226:                                      ; preds = %lor.lhs.false.217
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.extract_bit_field, i32 0, i32 0)) #4
  unreachable

if.end.227:                                       ; preds = %if.then.222
  br label %if.end.228

if.end.228:                                       ; preds = %if.end.227, %if.then.198
  %111 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load229 = load i32, i32* %112, align 8
  %bf.clear230 = and i32 %bf.load229, 65535
  %cmp231 = icmp eq i32 %bf.clear230, 61
  br i1 %cmp231, label %if.then.233, label %if.else.235

if.then.233:                                      ; preds = %if.end.228
  %113 = load i32, i32* %mode1, align 4
  %114 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %115 = load i32, i32* %byte_offset, align 4
  %call234 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %113, %struct.rtx_def* %114, i32 %115)
  store %struct.rtx_def* %call234, %struct.rtx_def** %op0, align 8
  br label %if.end.237

if.else.235:                                      ; preds = %if.end.228
  %116 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %117 = load i32, i32* %mode1, align 4
  %118 = load i64, i64* %offset, align 8
  %call236 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %116, i32 %117, i64 %118, i32 1, i32 1)
  store %struct.rtx_def* %call236, %struct.rtx_def** %op0, align 8
  br label %if.end.237

if.end.237:                                       ; preds = %if.else.235, %if.then.233
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %if.then.192
  %119 = load i32, i32* %mode1, align 4
  %120 = load i32, i32* %mode.addr, align 4
  %cmp239 = icmp ne i32 %119, %120
  br i1 %cmp239, label %if.then.241, label %if.end.243

if.then.241:                                      ; preds = %if.end.238
  %121 = load i32, i32* %tmode.addr, align 4
  %122 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %123 = load i32, i32* %unsignedp.addr, align 4
  %call242 = call %struct.rtx_def* @convert_to_mode(i32 %121, %struct.rtx_def* %122, i32 %123)
  store %struct.rtx_def* %call242, %struct.rtx_def** %retval
  br label %return

if.end.243:                                       ; preds = %if.end.238
  %124 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  store %struct.rtx_def* %124, %struct.rtx_def** %retval
  br label %return

if.end.244:                                       ; preds = %cond.false.189, %cond.true.181, %lor.lhs.false.173, %lor.lhs.false.147
  %125 = load i64, i64* %bitsize.addr, align 8
  %126 = load i32, i32* @target_flags, align 4
  %and245 = and i32 %126, 33554432
  %tobool246 = icmp ne i32 %and245, 0
  %cond247 = select i1 %tobool246, i32 64, i32 32
  %conv248 = sext i32 %cond247 to i64
  %cmp249 = icmp ugt i64 %125, %conv248
  br i1 %cmp249, label %if.then.251, label %if.end.370

if.then.251:                                      ; preds = %if.end.244
  %127 = load i64, i64* %bitsize.addr, align 8
  %128 = load i32, i32* @target_flags, align 4
  %and252 = and i32 %128, 33554432
  %tobool253 = icmp ne i32 %and252, 0
  %cond254 = select i1 %tobool253, i32 64, i32 32
  %sub255 = sub nsw i32 %cond254, 1
  %conv256 = sext i32 %sub255 to i64
  %add257 = add i64 %127, %conv256
  %129 = load i32, i32* @target_flags, align 4
  %and258 = and i32 %129, 33554432
  %tobool259 = icmp ne i32 %and258, 0
  %cond260 = select i1 %tobool259, i32 64, i32 32
  %conv261 = sext i32 %cond260 to i64
  %div262 = udiv i64 %add257, %conv261
  %conv263 = trunc i64 %div262 to i32
  store i32 %conv263, i32* %nwords, align 4
  %130 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp264 = icmp eq %struct.rtx_def* %130, null
  br i1 %cmp264, label %if.then.271, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %if.then.251
  %131 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %132 = bitcast %struct.rtx_def* %131 to i32*
  %bf.load267 = load i32, i32* %132, align 8
  %bf.clear268 = and i32 %bf.load267, 65535
  %cmp269 = icmp ne i32 %bf.clear268, 61
  br i1 %cmp269, label %if.then.271, label %if.end.273

if.then.271:                                      ; preds = %lor.lhs.false.266, %if.then.251
  %133 = load i32, i32* %mode.addr, align 4
  %call272 = call %struct.rtx_def* @gen_reg_rtx(i32 %133)
  store %struct.rtx_def* %call272, %struct.rtx_def** %target.addr, align 8
  br label %if.end.273

if.end.273:                                       ; preds = %if.then.271, %lor.lhs.false.266
  %134 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call274 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 0, %struct.rtx_def* %134)
  %call275 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call274)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.273
  %135 = load i32, i32* %i, align 4
  %136 = load i32, i32* %nwords, align 4
  %cmp276 = icmp ult i32 %135, %136
  br i1 %cmp276, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %137 = load i32, i32* %i, align 4
  store i32 %137, i32* %wordnum, align 4
  %138 = load i32, i32* %i, align 4
  %139 = load i32, i32* @target_flags, align 4
  %and278 = and i32 %139, 33554432
  %tobool279 = icmp ne i32 %and278, 0
  %cond280 = select i1 %tobool279, i32 64, i32 32
  %mul281 = mul nsw i32 %138, %cond280
  store i32 %mul281, i32* %bit_offset, align 4
  %140 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %141 = load i32, i32* %wordnum, align 4
  %call282 = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %140, i32 %141, i32 1, i32 0)
  store %struct.rtx_def* %call282, %struct.rtx_def** %target_part, align 8
  %142 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %143 = load i32, i32* @target_flags, align 4
  %and283 = and i32 %143, 33554432
  %tobool284 = icmp ne i32 %and283, 0
  %cond285 = select i1 %tobool284, i32 64, i32 32
  %conv286 = sext i32 %cond285 to i64
  %144 = load i64, i64* %bitsize.addr, align 8
  %145 = load i32, i32* %i, align 4
  %146 = load i32, i32* @target_flags, align 4
  %and287 = and i32 %146, 33554432
  %tobool288 = icmp ne i32 %and287, 0
  %cond289 = select i1 %tobool288, i32 64, i32 32
  %mul290 = mul i32 %145, %cond289
  %conv291 = zext i32 %mul290 to i64
  %sub292 = sub i64 %144, %conv291
  %cmp293 = icmp ult i64 %conv286, %sub292
  br i1 %cmp293, label %cond.true.295, label %cond.false.300

cond.true.295:                                    ; preds = %for.body
  %147 = load i32, i32* @target_flags, align 4
  %and296 = and i32 %147, 33554432
  %tobool297 = icmp ne i32 %and296, 0
  %cond298 = select i1 %tobool297, i32 64, i32 32
  %conv299 = sext i32 %cond298 to i64
  br label %cond.end.307

cond.false.300:                                   ; preds = %for.body
  %148 = load i64, i64* %bitsize.addr, align 8
  %149 = load i32, i32* %i, align 4
  %150 = load i32, i32* @target_flags, align 4
  %and301 = and i32 %150, 33554432
  %tobool302 = icmp ne i32 %and301, 0
  %cond303 = select i1 %tobool302, i32 64, i32 32
  %mul304 = mul i32 %149, %cond303
  %conv305 = zext i32 %mul304 to i64
  %sub306 = sub i64 %148, %conv305
  br label %cond.end.307

cond.end.307:                                     ; preds = %cond.false.300, %cond.true.295
  %cond308 = phi i64 [ %conv299, %cond.true.295 ], [ %sub306, %cond.false.300 ]
  %151 = load i64, i64* %bitnum.addr, align 8
  %152 = load i32, i32* %bit_offset, align 4
  %conv309 = zext i32 %152 to i64
  %add310 = add i64 %151, %conv309
  %153 = load %struct.rtx_def*, %struct.rtx_def** %target_part, align 8
  %154 = load i32, i32* %mode.addr, align 4
  %155 = load i32, i32* @word_mode, align 4
  %156 = load i64, i64* %total_size.addr, align 8
  %call311 = call %struct.rtx_def* @extract_bit_field(%struct.rtx_def* %142, i64 %cond308, i64 %add310, i32 1, %struct.rtx_def* %153, i32 %154, i32 %155, i64 %156)
  store %struct.rtx_def* %call311, %struct.rtx_def** %result_part, align 8
  %157 = load %struct.rtx_def*, %struct.rtx_def** %target_part, align 8
  %cmp312 = icmp eq %struct.rtx_def* %157, null
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %cond.end.307
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1199, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.extract_bit_field, i32 0, i32 0)) #4
  unreachable

if.end.315:                                       ; preds = %cond.end.307
  %158 = load %struct.rtx_def*, %struct.rtx_def** %result_part, align 8
  %159 = load %struct.rtx_def*, %struct.rtx_def** %target_part, align 8
  %cmp316 = icmp ne %struct.rtx_def* %158, %159
  br i1 %cmp316, label %if.then.318, label %if.end.320

if.then.318:                                      ; preds = %if.end.315
  %160 = load %struct.rtx_def*, %struct.rtx_def** %target_part, align 8
  %161 = load %struct.rtx_def*, %struct.rtx_def** %result_part, align 8
  %call319 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %160, %struct.rtx_def* %161)
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.318, %if.end.315
  br label %for.inc

for.inc:                                          ; preds = %if.end.320
  %162 = load i32, i32* %i, align 4
  %inc = add i32 %162, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %163 = load i32, i32* %unsignedp.addr, align 4
  %tobool321 = icmp ne i32 %163, 0
  br i1 %tobool321, label %if.then.322, label %if.end.357

if.then.322:                                      ; preds = %for.end
  %164 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %165 = bitcast %struct.rtx_def* %164 to i32*
  %bf.load323 = load i32, i32* %165, align 8
  %bf.lshr324 = lshr i32 %bf.load323, 16
  %bf.clear325 = and i32 %bf.lshr324, 255
  %idxprom326 = sext i32 %bf.clear325 to i64
  %arrayidx327 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom326
  %166 = load i8, i8* %arrayidx327, align 1
  %conv328 = zext i8 %166 to i32
  %167 = load i32, i32* %nwords, align 4
  %168 = load i32, i32* @target_flags, align 4
  %and329 = and i32 %168, 33554432
  %tobool330 = icmp ne i32 %and329, 0
  %cond331 = select i1 %tobool330, i32 8, i32 4
  %mul332 = mul i32 %167, %cond331
  %cmp333 = icmp ugt i32 %conv328, %mul332
  br i1 %cmp333, label %if.then.335, label %if.end.356

if.then.335:                                      ; preds = %if.then.322
  %169 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %170 = bitcast %struct.rtx_def* %169 to i32*
  %bf.load337 = load i32, i32* %170, align 8
  %bf.lshr338 = lshr i32 %bf.load337, 16
  %bf.clear339 = and i32 %bf.lshr338, 255
  %idxprom340 = sext i32 %bf.clear339 to i64
  %arrayidx341 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom340
  %171 = load i8, i8* %arrayidx341, align 1
  %conv342 = zext i8 %171 to i32
  %172 = load i32, i32* @target_flags, align 4
  %and343 = and i32 %172, 33554432
  %tobool344 = icmp ne i32 %and343, 0
  %cond345 = select i1 %tobool344, i32 8, i32 4
  %div346 = sdiv i32 %conv342, %cond345
  store i32 %div346, i32* %total_words, align 4
  %173 = load i32, i32* %nwords, align 4
  store i32 %173, i32* %i336, align 4
  br label %for.cond.347

for.cond.347:                                     ; preds = %for.inc.353, %if.then.335
  %174 = load i32, i32* %i336, align 4
  %175 = load i32, i32* %total_words, align 4
  %cmp348 = icmp ult i32 %174, %175
  br i1 %cmp348, label %for.body.350, label %for.end.355

for.body.350:                                     ; preds = %for.cond.347
  %176 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %177 = load i32, i32* %i336, align 4
  %call351 = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %176, i32 %177, i32 1, i32 0)
  %178 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call352 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call351, %struct.rtx_def* %178)
  br label %for.inc.353

for.inc.353:                                      ; preds = %for.body.350
  %179 = load i32, i32* %i336, align 4
  %inc354 = add i32 %179, 1
  store i32 %inc354, i32* %i336, align 4
  br label %for.cond.347

for.end.355:                                      ; preds = %for.cond.347
  br label %if.end.356

if.end.356:                                       ; preds = %for.end.355, %if.then.322
  %180 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %180, %struct.rtx_def** %retval
  br label %return

if.end.357:                                       ; preds = %for.end
  %181 = load i32, i32* %mode.addr, align 4
  %182 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %183 = load i32, i32* %mode.addr, align 4
  %idxprom358 = sext i32 %183 to i64
  %arrayidx359 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom358
  %184 = load i16, i16* %arrayidx359, align 2
  %conv360 = zext i16 %184 to i64
  %185 = load i64, i64* %bitsize.addr, align 8
  %sub361 = sub i64 %conv360, %185
  %call362 = call %union.tree_node* @build_int_2_wide(i64 %sub361, i64 0)
  %call363 = call %struct.rtx_def* @expand_shift(i32 82, i32 %181, %struct.rtx_def* %182, %union.tree_node* %call362, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call363, %struct.rtx_def** %target.addr, align 8
  %186 = load i32, i32* %mode.addr, align 4
  %187 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %188 = load i32, i32* %mode.addr, align 4
  %idxprom364 = sext i32 %188 to i64
  %arrayidx365 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom364
  %189 = load i16, i16* %arrayidx365, align 2
  %conv366 = zext i16 %189 to i64
  %190 = load i64, i64* %bitsize.addr, align 8
  %sub367 = sub i64 %conv366, %190
  %call368 = call %union.tree_node* @build_int_2_wide(i64 %sub367, i64 0)
  %call369 = call %struct.rtx_def* @expand_shift(i32 83, i32 %186, %struct.rtx_def* %187, %union.tree_node* %call368, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call369, %struct.rtx_def** %retval
  br label %return

if.end.370:                                       ; preds = %if.end.244
  %191 = load i32, i32* %tmode.addr, align 4
  %call371 = call i32 @int_mode_for_mode(i32 %191)
  store i32 %call371, i32* %int_mode, align 4
  %192 = load i32, i32* %int_mode, align 4
  %cmp372 = icmp eq i32 %192, 51
  br i1 %cmp372, label %if.then.374, label %if.end.376

if.then.374:                                      ; preds = %if.end.370
  %193 = load i32, i32* %mode.addr, align 4
  %call375 = call i32 @int_mode_for_mode(i32 %193)
  store i32 %call375, i32* %int_mode, align 4
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.374, %if.end.370
  %194 = load i32, i32* %int_mode, align 4
  %cmp377 = icmp eq i32 %194, 51
  br i1 %cmp377, label %if.then.379, label %if.end.380

if.then.379:                                      ; preds = %if.end.376
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1244, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.extract_bit_field, i32 0, i32 0)) #4
  unreachable

if.end.380:                                       ; preds = %if.end.376
  %195 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %196 = bitcast %struct.rtx_def* %195 to i32*
  %bf.load381 = load i32, i32* %196, align 8
  %bf.clear382 = and i32 %bf.load381, 65535
  %cmp383 = icmp ne i32 %bf.clear382, 66
  br i1 %cmp383, label %if.then.385, label %if.else.420

if.then.385:                                      ; preds = %if.end.380
  %197 = load i64, i64* %offset, align 8
  %cmp386 = icmp ne i64 %197, 0
  br i1 %cmp386, label %if.then.400, label %lor.lhs.false.388

lor.lhs.false.388:                                ; preds = %if.then.385
  %198 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %199 = bitcast %struct.rtx_def* %198 to i32*
  %bf.load389 = load i32, i32* %199, align 8
  %bf.lshr390 = lshr i32 %bf.load389, 16
  %bf.clear391 = and i32 %bf.lshr390, 255
  %idxprom392 = sext i32 %bf.clear391 to i64
  %arrayidx393 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom392
  %200 = load i8, i8* %arrayidx393, align 1
  %conv394 = zext i8 %200 to i32
  %201 = load i32, i32* @target_flags, align 4
  %and395 = and i32 %201, 33554432
  %tobool396 = icmp ne i32 %and395, 0
  %cond397 = select i1 %tobool396, i32 8, i32 4
  %cmp398 = icmp sgt i32 %conv394, %cond397
  br i1 %cmp398, label %if.then.400, label %if.end.419

if.then.400:                                      ; preds = %lor.lhs.false.388, %if.then.385
  %202 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %203 = bitcast %struct.rtx_def* %202 to i32*
  %bf.load401 = load i32, i32* %203, align 8
  %bf.clear402 = and i32 %bf.load401, 65535
  %cmp403 = icmp ne i32 %bf.clear402, 61
  br i1 %cmp403, label %if.then.405, label %if.end.407

if.then.405:                                      ; preds = %if.then.400
  %204 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %call406 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %204)
  store %struct.rtx_def* %call406, %struct.rtx_def** %op0, align 8
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.405, %if.then.400
  %205 = load i32, i32* @target_flags, align 4
  %and408 = and i32 %205, 33554432
  %tobool409 = icmp ne i32 %and408, 0
  %cond410 = select i1 %tobool409, i32 64, i32 32
  %call411 = call i32 @mode_for_size(i32 %cond410, i32 1, i32 0)
  %206 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %207 = load i64, i64* %offset, align 8
  %208 = load i32, i32* @target_flags, align 4
  %and412 = and i32 %208, 33554432
  %tobool413 = icmp ne i32 %and412, 0
  %cond414 = select i1 %tobool413, i32 8, i32 4
  %conv415 = sext i32 %cond414 to i64
  %mul416 = mul i64 %207, %conv415
  %conv417 = trunc i64 %mul416 to i32
  %call418 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %call411, %struct.rtx_def* %206, i32 %conv417)
  store %struct.rtx_def* %call418, %struct.rtx_def** %op0, align 8
  br label %if.end.419

if.end.419:                                       ; preds = %if.end.407, %lor.lhs.false.388
  store i64 0, i64* %offset, align 8
  br label %if.end.422

if.else.420:                                      ; preds = %if.end.380
  %209 = load %struct.rtx_def*, %struct.rtx_def** %str_rtx.addr, align 8
  %call421 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %209, i32 1)
  store %struct.rtx_def* %call421, %struct.rtx_def** %op0, align 8
  br label %if.end.422

if.end.422:                                       ; preds = %if.else.420, %if.end.419
  %210 = load i32, i32* %unsignedp.addr, align 4
  %tobool423 = icmp ne i32 %210, 0
  br i1 %tobool423, label %if.then.424, label %if.else.613

if.then.424:                                      ; preds = %if.end.422
  %211 = load i32, i32* %extzv_mode, align 4
  %idxprom425 = sext i32 %211 to i64
  %arrayidx426 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom425
  %212 = load i16, i16* %arrayidx426, align 2
  %conv427 = zext i16 %212 to i64
  %213 = load i64, i64* %bitsize.addr, align 8
  %cmp428 = icmp uge i64 %conv427, %213
  br i1 %cmp428, label %land.lhs.true.430, label %if.else.610

land.lhs.true.430:                                ; preds = %if.then.424
  %214 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %215 = bitcast %struct.rtx_def* %214 to i32*
  %bf.load431 = load i32, i32* %215, align 8
  %bf.clear432 = and i32 %bf.load431, 65535
  %cmp433 = icmp eq i32 %bf.clear432, 61
  br i1 %cmp433, label %land.lhs.true.440, label %lor.lhs.false.435

lor.lhs.false.435:                                ; preds = %land.lhs.true.430
  %216 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %217 = bitcast %struct.rtx_def* %216 to i32*
  %bf.load436 = load i32, i32* %217, align 8
  %bf.clear437 = and i32 %bf.load436, 65535
  %cmp438 = icmp eq i32 %bf.clear437, 63
  br i1 %cmp438, label %land.lhs.true.440, label %if.then.447

land.lhs.true.440:                                ; preds = %lor.lhs.false.435, %land.lhs.true.430
  %218 = load i64, i64* %bitsize.addr, align 8
  %219 = load i64, i64* %bitpos, align 8
  %add441 = add i64 %218, %219
  %220 = load i32, i32* %extzv_mode, align 4
  %idxprom442 = sext i32 %220 to i64
  %arrayidx443 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom442
  %221 = load i16, i16* %arrayidx443, align 2
  %conv444 = zext i16 %221 to i64
  %cmp445 = icmp ugt i64 %add441, %conv444
  br i1 %cmp445, label %if.else.610, label %if.then.447

if.then.447:                                      ; preds = %land.lhs.true.440, %lor.lhs.false.435
  %222 = load i64, i64* %bitpos, align 8
  store i64 %222, i64* %xbitpos, align 8
  %223 = load i64, i64* %offset, align 8
  store i64 %223, i64* %xoffset, align 8
  %call448 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call448, %struct.rtx_def** %last, align 8
  %224 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  store %struct.rtx_def* %224, %struct.rtx_def** %xop0, align 8
  %225 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %225, %struct.rtx_def** %xtarget, align 8
  %226 = load %struct.rtx_def*, %struct.rtx_def** %spec_target, align 8
  store %struct.rtx_def* %226, %struct.rtx_def** %xspec_target, align 8
  %227 = load %struct.rtx_def*, %struct.rtx_def** %spec_target_subreg, align 8
  store %struct.rtx_def* %227, %struct.rtx_def** %xspec_target_subreg, align 8
  %call449 = call i32 @mode_for_extraction(i32 2, i32 0)
  store i32 %call449, i32* %maxmode, align 4
  %228 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %229 = bitcast %struct.rtx_def* %228 to i32*
  %bf.load450 = load i32, i32* %229, align 8
  %bf.clear451 = and i32 %bf.load450, 65535
  %cmp452 = icmp eq i32 %bf.clear451, 66
  br i1 %cmp452, label %if.then.454, label %if.end.522

if.then.454:                                      ; preds = %if.then.447
  %230 = load i32, i32* @volatile_ok, align 4
  store i32 %230, i32* %save_volatile_ok, align 4
  store i32 1, i32* @volatile_ok, align 4
  %231 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1113, i32 3), align 8
  %arrayidx455 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %231, i64 1
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx455, i32 0, i32 0
  %232 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %234 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %235 = bitcast %struct.rtx_def* %234 to i32*
  %bf.load456 = load i32, i32* %235, align 8
  %bf.lshr457 = lshr i32 %bf.load456, 16
  %bf.clear458 = and i32 %bf.lshr457, 255
  %call459 = call i32 %232(%struct.rtx_def* %233, i32 %bf.clear458)
  %tobool460 = icmp ne i32 %call459, 0
  br i1 %tobool460, label %if.else.519, label %if.then.461

if.then.461:                                      ; preds = %if.then.454
  %236 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %237 = bitcast %struct.rtx_def* %236 to i32*
  %bf.load462 = load i32, i32* %237, align 8
  %bf.lshr463 = lshr i32 %bf.load462, 16
  %bf.clear464 = and i32 %bf.lshr463, 255
  %cmp465 = icmp eq i32 %bf.clear464, 51
  br i1 %cmp465, label %if.then.479, label %lor.lhs.false.467

lor.lhs.false.467:                                ; preds = %if.then.461
  %238 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %239 = bitcast %struct.rtx_def* %238 to i32*
  %bf.load468 = load i32, i32* %239, align 8
  %bf.lshr469 = lshr i32 %bf.load468, 16
  %bf.clear470 = and i32 %bf.lshr469, 255
  %idxprom471 = sext i32 %bf.clear470 to i64
  %arrayidx472 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom471
  %240 = load i8, i8* %arrayidx472, align 1
  %conv473 = zext i8 %240 to i32
  %241 = load i32, i32* %maxmode, align 4
  %idxprom474 = sext i32 %241 to i64
  %arrayidx475 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom474
  %242 = load i8, i8* %arrayidx475, align 1
  %conv476 = zext i8 %242 to i32
  %cmp477 = icmp sgt i32 %conv473, %conv476
  br i1 %cmp477, label %if.then.479, label %if.else.497

if.then.479:                                      ; preds = %lor.lhs.false.467, %if.then.461
  %243 = load i64, i64* %bitsize.addr, align 8
  %conv480 = trunc i64 %243 to i32
  %244 = load i64, i64* %bitnum.addr, align 8
  %conv481 = trunc i64 %244 to i32
  %245 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %fld482 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %245, i32 0, i32 1
  %arrayidx483 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld482, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx483 to %struct.mem_attrs**
  %246 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp484 = icmp ne %struct.mem_attrs* %246, null
  br i1 %cmp484, label %cond.true.486, label %cond.false.490

cond.true.486:                                    ; preds = %if.then.479
  %247 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %fld487 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %247, i32 0, i32 1
  %arrayidx488 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld487, i32 0, i64 1
  %rtmem489 = bitcast %union.rtunion_def* %arrayidx488 to %struct.mem_attrs**
  %248 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem489, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %248, i32 0, i32 4
  %249 = load i32, i32* %align, align 4
  br label %cond.end.491

cond.false.490:                                   ; preds = %if.then.479
  br label %cond.end.491

cond.end.491:                                     ; preds = %cond.false.490, %cond.true.486
  %cond492 = phi i32 [ %249, %cond.true.486 ], [ 8, %cond.false.490 ]
  %250 = load i32, i32* %maxmode, align 4
  %251 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %252 = bitcast %struct.rtx_def* %251 to i32*
  %bf.load493 = load i32, i32* %252, align 8
  %bf.lshr494 = lshr i32 %bf.load493, 27
  %bf.clear495 = and i32 %bf.lshr494, 1
  %call496 = call i32 @get_best_mode(i32 %conv480, i32 %conv481, i32 %cond492, i32 %250, i32 %bf.clear495)
  store i32 %call496, i32* %bestmode, align 4
  br label %if.end.501

if.else.497:                                      ; preds = %lor.lhs.false.467
  %253 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %254 = bitcast %struct.rtx_def* %253 to i32*
  %bf.load498 = load i32, i32* %254, align 8
  %bf.lshr499 = lshr i32 %bf.load498, 16
  %bf.clear500 = and i32 %bf.lshr499, 255
  store i32 %bf.clear500, i32* %bestmode, align 4
  br label %if.end.501

if.end.501:                                       ; preds = %if.else.497, %cond.end.491
  %255 = load i32, i32* %bestmode, align 4
  %cmp502 = icmp eq i32 %255, 0
  br i1 %cmp502, label %if.then.504, label %if.end.505

if.then.504:                                      ; preds = %if.end.501
  br label %extzv_loses

if.end.505:                                       ; preds = %if.end.501
  %256 = load i32, i32* %bestmode, align 4
  %idxprom506 = sext i32 %256 to i64
  %arrayidx507 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom506
  %257 = load i16, i16* %arrayidx507, align 2
  %conv508 = zext i16 %257 to i32
  store i32 %conv508, i32* %unit, align 4
  %258 = load i64, i64* %bitnum.addr, align 8
  %259 = load i32, i32* %unit, align 4
  %conv509 = zext i32 %259 to i64
  %div510 = udiv i64 %258, %conv509
  %260 = load i32, i32* %bestmode, align 4
  %idxprom511 = sext i32 %260 to i64
  %arrayidx512 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom511
  %261 = load i8, i8* %arrayidx512, align 1
  %conv513 = zext i8 %261 to i64
  %mul514 = mul i64 %div510, %conv513
  store i64 %mul514, i64* %xoffset, align 8
  %262 = load i64, i64* %bitnum.addr, align 8
  %263 = load i32, i32* %unit, align 4
  %conv515 = zext i32 %263 to i64
  %rem516 = urem i64 %262, %conv515
  store i64 %rem516, i64* %xbitpos, align 8
  %264 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %265 = load i32, i32* %bestmode, align 4
  %266 = load i64, i64* %xoffset, align 8
  %call517 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %264, i32 %265, i64 %266, i32 1, i32 1)
  store %struct.rtx_def* %call517, %struct.rtx_def** %xop0, align 8
  %267 = load i32, i32* %bestmode, align 4
  %268 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %call518 = call %struct.rtx_def* @force_reg(i32 %267, %struct.rtx_def* %268)
  store %struct.rtx_def* %call518, %struct.rtx_def** %xop0, align 8
  br label %if.end.521

if.else.519:                                      ; preds = %if.then.454
  %269 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %270 = load i32, i32* @byte_mode, align 4
  %271 = load i64, i64* %xoffset, align 8
  %call520 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %269, i32 %270, i64 %271, i32 1, i32 1)
  store %struct.rtx_def* %call520, %struct.rtx_def** %xop0, align 8
  br label %if.end.521

if.end.521:                                       ; preds = %if.else.519, %if.end.505
  %272 = load i32, i32* %save_volatile_ok, align 4
  store i32 %272, i32* @volatile_ok, align 4
  br label %if.end.522

if.end.522:                                       ; preds = %if.end.521, %if.then.447
  %273 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %274 = bitcast %struct.rtx_def* %273 to i32*
  %bf.load523 = load i32, i32* %274, align 8
  %bf.clear524 = and i32 %bf.load523, 65535
  %cmp525 = icmp eq i32 %bf.clear524, 63
  br i1 %cmp525, label %land.lhs.true.527, label %if.end.534

land.lhs.true.527:                                ; preds = %if.end.522
  %275 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %276 = bitcast %struct.rtx_def* %275 to i32*
  %bf.load528 = load i32, i32* %276, align 8
  %bf.lshr529 = lshr i32 %bf.load528, 16
  %bf.clear530 = and i32 %bf.lshr529, 255
  %277 = load i32, i32* %maxmode, align 4
  %cmp531 = icmp ne i32 %bf.clear530, %277
  br i1 %cmp531, label %if.then.533, label %if.end.534

if.then.533:                                      ; preds = %land.lhs.true.527
  br label %extzv_loses

if.end.534:                                       ; preds = %land.lhs.true.527, %if.end.522
  %278 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %279 = bitcast %struct.rtx_def* %278 to i32*
  %bf.load535 = load i32, i32* %279, align 8
  %bf.clear536 = and i32 %bf.load535, 65535
  %cmp537 = icmp eq i32 %bf.clear536, 61
  br i1 %cmp537, label %land.lhs.true.539, label %if.end.547

land.lhs.true.539:                                ; preds = %if.end.534
  %280 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %281 = bitcast %struct.rtx_def* %280 to i32*
  %bf.load540 = load i32, i32* %281, align 8
  %bf.lshr541 = lshr i32 %bf.load540, 16
  %bf.clear542 = and i32 %bf.lshr541, 255
  %282 = load i32, i32* %maxmode, align 4
  %cmp543 = icmp ne i32 %bf.clear542, %282
  br i1 %cmp543, label %if.then.545, label %if.end.547

if.then.545:                                      ; preds = %land.lhs.true.539
  %283 = load i32, i32* %maxmode, align 4
  %284 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %call546 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %283, %struct.rtx_def* %284, i32 0)
  store %struct.rtx_def* %call546, %struct.rtx_def** %xop0, align 8
  br label %if.end.547

if.end.547:                                       ; preds = %if.then.545, %land.lhs.true.539, %if.end.534
  %285 = load i32, i32* %maxmode, align 4
  %idxprom548 = sext i32 %285 to i64
  %arrayidx549 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom548
  %286 = load i16, i16* %arrayidx549, align 2
  %conv550 = zext i16 %286 to i32
  store i32 %conv550, i32* %unit, align 4
  %287 = load %struct.rtx_def*, %struct.rtx_def** %xtarget, align 8
  %cmp551 = icmp eq %struct.rtx_def* %287, null
  br i1 %cmp551, label %if.then.560, label %lor.lhs.false.553

lor.lhs.false.553:                                ; preds = %if.end.547
  %288 = load i32, i32* @flag_force_mem, align 4
  %tobool554 = icmp ne i32 %288, 0
  br i1 %tobool554, label %land.lhs.true.555, label %if.end.562

land.lhs.true.555:                                ; preds = %lor.lhs.false.553
  %289 = load %struct.rtx_def*, %struct.rtx_def** %xtarget, align 8
  %290 = bitcast %struct.rtx_def* %289 to i32*
  %bf.load556 = load i32, i32* %290, align 8
  %bf.clear557 = and i32 %bf.load556, 65535
  %cmp558 = icmp eq i32 %bf.clear557, 66
  br i1 %cmp558, label %if.then.560, label %if.end.562

if.then.560:                                      ; preds = %land.lhs.true.555, %if.end.547
  %291 = load i32, i32* %tmode.addr, align 4
  %call561 = call %struct.rtx_def* @gen_reg_rtx(i32 %291)
  store %struct.rtx_def* %call561, %struct.rtx_def** %xspec_target, align 8
  store %struct.rtx_def* %call561, %struct.rtx_def** %xtarget, align 8
  br label %if.end.562

if.end.562:                                       ; preds = %if.then.560, %land.lhs.true.555, %lor.lhs.false.553
  %292 = load %struct.rtx_def*, %struct.rtx_def** %xtarget, align 8
  %293 = bitcast %struct.rtx_def* %292 to i32*
  %bf.load563 = load i32, i32* %293, align 8
  %bf.lshr564 = lshr i32 %bf.load563, 16
  %bf.clear565 = and i32 %bf.lshr564, 255
  %294 = load i32, i32* %maxmode, align 4
  %cmp566 = icmp ne i32 %bf.clear565, %294
  br i1 %cmp566, label %if.then.568, label %if.end.592

if.then.568:                                      ; preds = %if.end.562
  %295 = load %struct.rtx_def*, %struct.rtx_def** %xtarget, align 8
  %296 = bitcast %struct.rtx_def* %295 to i32*
  %bf.load569 = load i32, i32* %296, align 8
  %bf.clear570 = and i32 %bf.load569, 65535
  %cmp571 = icmp eq i32 %bf.clear570, 61
  br i1 %cmp571, label %if.then.573, label %if.else.589

if.then.573:                                      ; preds = %if.then.568
  %297 = load i32, i32* %maxmode, align 4
  %idxprom574 = sext i32 %297 to i64
  %arrayidx575 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom574
  %298 = load i8, i8* %arrayidx575, align 1
  %conv576 = zext i8 %298 to i32
  %299 = load %struct.rtx_def*, %struct.rtx_def** %xtarget, align 8
  %300 = bitcast %struct.rtx_def* %299 to i32*
  %bf.load577 = load i32, i32* %300, align 8
  %bf.lshr578 = lshr i32 %bf.load577, 16
  %bf.clear579 = and i32 %bf.lshr578, 255
  %idxprom580 = sext i32 %bf.clear579 to i64
  %arrayidx581 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom580
  %301 = load i8, i8* %arrayidx581, align 1
  %conv582 = zext i8 %301 to i32
  %cmp583 = icmp sgt i32 %conv576, %conv582
  %conv584 = zext i1 %cmp583 to i32
  store i32 %conv584, i32* %wider, align 4
  %302 = load i32, i32* %maxmode, align 4
  %303 = load %struct.rtx_def*, %struct.rtx_def** %xtarget, align 8
  %call585 = call %struct.rtx_def* @gen_lowpart(i32 %302, %struct.rtx_def* %303)
  store %struct.rtx_def* %call585, %struct.rtx_def** %xtarget, align 8
  %304 = load i32, i32* %wider, align 4
  %tobool586 = icmp ne i32 %304, 0
  br i1 %tobool586, label %if.then.587, label %if.end.588

if.then.587:                                      ; preds = %if.then.573
  %305 = load %struct.rtx_def*, %struct.rtx_def** %xtarget, align 8
  store %struct.rtx_def* %305, %struct.rtx_def** %xspec_target_subreg, align 8
  br label %if.end.588

if.end.588:                                       ; preds = %if.then.587, %if.then.573
  br label %if.end.591

if.else.589:                                      ; preds = %if.then.568
  %306 = load i32, i32* %maxmode, align 4
  %call590 = call %struct.rtx_def* @gen_reg_rtx(i32 %306)
  store %struct.rtx_def* %call590, %struct.rtx_def** %xtarget, align 8
  br label %if.end.591

if.end.591:                                       ; preds = %if.else.589, %if.end.588
  br label %if.end.592

if.end.592:                                       ; preds = %if.end.591, %if.end.562
  %307 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1113, i32 3), align 8
  %arrayidx593 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %307, i64 0
  %predicate594 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx593, i32 0, i32 0
  %308 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate594, align 8
  %309 = load %struct.rtx_def*, %struct.rtx_def** %xtarget, align 8
  %310 = load i32, i32* %maxmode, align 4
  %call595 = call i32 %308(%struct.rtx_def* %309, i32 %310)
  %tobool596 = icmp ne i32 %call595, 0
  br i1 %tobool596, label %if.end.599, label %if.then.597

if.then.597:                                      ; preds = %if.end.592
  %311 = load i32, i32* %maxmode, align 4
  %call598 = call %struct.rtx_def* @gen_reg_rtx(i32 %311)
  store %struct.rtx_def* %call598, %struct.rtx_def** %xtarget, align 8
  br label %if.end.599

if.end.599:                                       ; preds = %if.then.597, %if.end.592
  %312 = load i64, i64* %bitsize.addr, align 8
  %call600 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %312)
  store %struct.rtx_def* %call600, %struct.rtx_def** %bitsize_rtx, align 8
  %313 = load i64, i64* %xbitpos, align 8
  %call601 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %313)
  store %struct.rtx_def* %call601, %struct.rtx_def** %bitpos_rtx, align 8
  %314 = load %struct.rtx_def*, %struct.rtx_def** %xtarget, align 8
  %call602 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %314, i32 1)
  %315 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %316 = load %struct.rtx_def*, %struct.rtx_def** %bitsize_rtx, align 8
  %317 = load %struct.rtx_def*, %struct.rtx_def** %bitpos_rtx, align 8
  %call603 = call %struct.rtx_def* @gen_extzv(%struct.rtx_def* %call602, %struct.rtx_def* %315, %struct.rtx_def* %316, %struct.rtx_def* %317)
  store %struct.rtx_def* %call603, %struct.rtx_def** %pat, align 8
  %318 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %tobool604 = icmp ne %struct.rtx_def* %318, null
  br i1 %tobool604, label %if.then.605, label %if.else.607

if.then.605:                                      ; preds = %if.end.599
  %319 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call606 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %319)
  %320 = load %struct.rtx_def*, %struct.rtx_def** %xtarget, align 8
  store %struct.rtx_def* %320, %struct.rtx_def** %target.addr, align 8
  %321 = load %struct.rtx_def*, %struct.rtx_def** %xspec_target, align 8
  store %struct.rtx_def* %321, %struct.rtx_def** %spec_target, align 8
  %322 = load %struct.rtx_def*, %struct.rtx_def** %xspec_target_subreg, align 8
  store %struct.rtx_def* %322, %struct.rtx_def** %spec_target_subreg, align 8
  br label %if.end.609

if.else.607:                                      ; preds = %if.end.599
  %323 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %323)
  %324 = load i32, i32* %int_mode, align 4
  %325 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %326 = load i64, i64* %offset, align 8
  %327 = load i64, i64* %bitsize.addr, align 8
  %328 = load i64, i64* %bitpos, align 8
  %329 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call608 = call %struct.rtx_def* @extract_fixed_bit_field(i32 %324, %struct.rtx_def* %325, i64 %326, i64 %327, i64 %328, %struct.rtx_def* %329, i32 1)
  store %struct.rtx_def* %call608, %struct.rtx_def** %target.addr, align 8
  br label %if.end.609

if.end.609:                                       ; preds = %if.else.607, %if.then.605
  br label %if.end.612

if.else.610:                                      ; preds = %land.lhs.true.440, %if.then.424
  br label %extzv_loses

extzv_loses:                                      ; preds = %if.else.610, %if.then.533, %if.then.504
  %330 = load i32, i32* %int_mode, align 4
  %331 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %332 = load i64, i64* %offset, align 8
  %333 = load i64, i64* %bitsize.addr, align 8
  %334 = load i64, i64* %bitpos, align 8
  %335 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call611 = call %struct.rtx_def* @extract_fixed_bit_field(i32 %330, %struct.rtx_def* %331, i64 %332, i64 %333, i64 %334, %struct.rtx_def* %335, i32 1)
  store %struct.rtx_def* %call611, %struct.rtx_def** %target.addr, align 8
  br label %if.end.612

if.end.612:                                       ; preds = %extzv_loses, %if.end.609
  br label %if.end.825

if.else.613:                                      ; preds = %if.end.422
  %336 = load i32, i32* %extv_mode, align 4
  %idxprom614 = sext i32 %336 to i64
  %arrayidx615 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom614
  %337 = load i16, i16* %arrayidx615, align 2
  %conv616 = zext i16 %337 to i64
  %338 = load i64, i64* %bitsize.addr, align 8
  %cmp617 = icmp uge i64 %conv616, %338
  br i1 %cmp617, label %land.lhs.true.619, label %if.else.822

land.lhs.true.619:                                ; preds = %if.else.613
  %339 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %340 = bitcast %struct.rtx_def* %339 to i32*
  %bf.load620 = load i32, i32* %340, align 8
  %bf.clear621 = and i32 %bf.load620, 65535
  %cmp622 = icmp eq i32 %bf.clear621, 61
  br i1 %cmp622, label %land.lhs.true.629, label %lor.lhs.false.624

lor.lhs.false.624:                                ; preds = %land.lhs.true.619
  %341 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %342 = bitcast %struct.rtx_def* %341 to i32*
  %bf.load625 = load i32, i32* %342, align 8
  %bf.clear626 = and i32 %bf.load625, 65535
  %cmp627 = icmp eq i32 %bf.clear626, 63
  br i1 %cmp627, label %land.lhs.true.629, label %if.then.636

land.lhs.true.629:                                ; preds = %lor.lhs.false.624, %land.lhs.true.619
  %343 = load i64, i64* %bitsize.addr, align 8
  %344 = load i64, i64* %bitpos, align 8
  %add630 = add i64 %343, %344
  %345 = load i32, i32* %extv_mode, align 4
  %idxprom631 = sext i32 %345 to i64
  %arrayidx632 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom631
  %346 = load i16, i16* %arrayidx632, align 2
  %conv633 = zext i16 %346 to i64
  %cmp634 = icmp ugt i64 %add630, %conv633
  br i1 %cmp634, label %if.else.822, label %if.then.636

if.then.636:                                      ; preds = %land.lhs.true.629, %lor.lhs.false.624
  %347 = load i64, i64* %bitpos, align 8
  %conv638 = trunc i64 %347 to i32
  store i32 %conv638, i32* %xbitpos637, align 4
  %348 = load i64, i64* %offset, align 8
  %conv640 = trunc i64 %348 to i32
  store i32 %conv640, i32* %xoffset639, align 4
  %call644 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call644, %struct.rtx_def** %last643, align 8
  %349 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  store %struct.rtx_def* %349, %struct.rtx_def** %xop0645, align 8
  %350 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %350, %struct.rtx_def** %xtarget646, align 8
  %351 = load %struct.rtx_def*, %struct.rtx_def** %spec_target, align 8
  store %struct.rtx_def* %351, %struct.rtx_def** %xspec_target647, align 8
  %352 = load %struct.rtx_def*, %struct.rtx_def** %spec_target_subreg, align 8
  store %struct.rtx_def* %352, %struct.rtx_def** %xspec_target_subreg648, align 8
  %call651 = call i32 @mode_for_extraction(i32 1, i32 0)
  store i32 %call651, i32* %maxmode650, align 4
  %353 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %354 = bitcast %struct.rtx_def* %353 to i32*
  %bf.load652 = load i32, i32* %354, align 8
  %bf.clear653 = and i32 %bf.load652, 65535
  %cmp654 = icmp eq i32 %bf.clear653, 66
  br i1 %cmp654, label %if.then.656, label %if.end.732

if.then.656:                                      ; preds = %if.then.636
  %355 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1112, i32 3), align 8
  %arrayidx657 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %355, i64 1
  %predicate658 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx657, i32 0, i32 0
  %356 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate658, align 8
  %357 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %358 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %359 = bitcast %struct.rtx_def* %358 to i32*
  %bf.load659 = load i32, i32* %359, align 8
  %bf.lshr660 = lshr i32 %bf.load659, 16
  %bf.clear661 = and i32 %bf.lshr660, 255
  %call662 = call i32 %356(%struct.rtx_def* %357, i32 %bf.clear661)
  %tobool663 = icmp ne i32 %call662, 0
  br i1 %tobool663, label %if.else.728, label %if.then.664

if.then.664:                                      ; preds = %if.then.656
  %360 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %361 = bitcast %struct.rtx_def* %360 to i32*
  %bf.load666 = load i32, i32* %361, align 8
  %bf.lshr667 = lshr i32 %bf.load666, 16
  %bf.clear668 = and i32 %bf.lshr667, 255
  %cmp669 = icmp eq i32 %bf.clear668, 51
  br i1 %cmp669, label %if.then.683, label %lor.lhs.false.671

lor.lhs.false.671:                                ; preds = %if.then.664
  %362 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %363 = bitcast %struct.rtx_def* %362 to i32*
  %bf.load672 = load i32, i32* %363, align 8
  %bf.lshr673 = lshr i32 %bf.load672, 16
  %bf.clear674 = and i32 %bf.lshr673, 255
  %idxprom675 = sext i32 %bf.clear674 to i64
  %arrayidx676 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom675
  %364 = load i8, i8* %arrayidx676, align 1
  %conv677 = zext i8 %364 to i32
  %365 = load i32, i32* %maxmode650, align 4
  %idxprom678 = sext i32 %365 to i64
  %arrayidx679 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom678
  %366 = load i8, i8* %arrayidx679, align 1
  %conv680 = zext i8 %366 to i32
  %cmp681 = icmp sgt i32 %conv677, %conv680
  br i1 %cmp681, label %if.then.683, label %if.else.703

if.then.683:                                      ; preds = %lor.lhs.false.671, %if.then.664
  %367 = load i64, i64* %bitsize.addr, align 8
  %conv684 = trunc i64 %367 to i32
  %368 = load i64, i64* %bitnum.addr, align 8
  %conv685 = trunc i64 %368 to i32
  %369 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %fld686 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %369, i32 0, i32 1
  %arrayidx687 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld686, i32 0, i64 1
  %rtmem688 = bitcast %union.rtunion_def* %arrayidx687 to %struct.mem_attrs**
  %370 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem688, align 8
  %cmp689 = icmp ne %struct.mem_attrs* %370, null
  br i1 %cmp689, label %cond.true.691, label %cond.false.696

cond.true.691:                                    ; preds = %if.then.683
  %371 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %fld692 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %371, i32 0, i32 1
  %arrayidx693 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld692, i32 0, i64 1
  %rtmem694 = bitcast %union.rtunion_def* %arrayidx693 to %struct.mem_attrs**
  %372 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem694, align 8
  %align695 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %372, i32 0, i32 4
  %373 = load i32, i32* %align695, align 4
  br label %cond.end.697

cond.false.696:                                   ; preds = %if.then.683
  br label %cond.end.697

cond.end.697:                                     ; preds = %cond.false.696, %cond.true.691
  %cond698 = phi i32 [ %373, %cond.true.691 ], [ 8, %cond.false.696 ]
  %374 = load i32, i32* %maxmode650, align 4
  %375 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %376 = bitcast %struct.rtx_def* %375 to i32*
  %bf.load699 = load i32, i32* %376, align 8
  %bf.lshr700 = lshr i32 %bf.load699, 27
  %bf.clear701 = and i32 %bf.lshr700, 1
  %call702 = call i32 @get_best_mode(i32 %conv684, i32 %conv685, i32 %cond698, i32 %374, i32 %bf.clear701)
  store i32 %call702, i32* %bestmode665, align 4
  br label %if.end.707

if.else.703:                                      ; preds = %lor.lhs.false.671
  %377 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %378 = bitcast %struct.rtx_def* %377 to i32*
  %bf.load704 = load i32, i32* %378, align 8
  %bf.lshr705 = lshr i32 %bf.load704, 16
  %bf.clear706 = and i32 %bf.lshr705, 255
  store i32 %bf.clear706, i32* %bestmode665, align 4
  br label %if.end.707

if.end.707:                                       ; preds = %if.else.703, %cond.end.697
  %379 = load i32, i32* %bestmode665, align 4
  %cmp708 = icmp eq i32 %379, 0
  br i1 %cmp708, label %if.then.710, label %if.end.711

if.then.710:                                      ; preds = %if.end.707
  br label %extv_loses

if.end.711:                                       ; preds = %if.end.707
  %380 = load i32, i32* %bestmode665, align 4
  %idxprom712 = sext i32 %380 to i64
  %arrayidx713 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom712
  %381 = load i16, i16* %arrayidx713, align 2
  %conv714 = zext i16 %381 to i32
  store i32 %conv714, i32* %unit, align 4
  %382 = load i64, i64* %bitnum.addr, align 8
  %383 = load i32, i32* %unit, align 4
  %conv715 = zext i32 %383 to i64
  %div716 = udiv i64 %382, %conv715
  %384 = load i32, i32* %bestmode665, align 4
  %idxprom717 = sext i32 %384 to i64
  %arrayidx718 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom717
  %385 = load i8, i8* %arrayidx718, align 1
  %conv719 = zext i8 %385 to i64
  %mul720 = mul i64 %div716, %conv719
  %conv721 = trunc i64 %mul720 to i32
  store i32 %conv721, i32* %xoffset639, align 4
  %386 = load i64, i64* %bitnum.addr, align 8
  %387 = load i32, i32* %unit, align 4
  %conv722 = zext i32 %387 to i64
  %rem723 = urem i64 %386, %conv722
  %conv724 = trunc i64 %rem723 to i32
  store i32 %conv724, i32* %xbitpos637, align 4
  %388 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %389 = load i32, i32* %bestmode665, align 4
  %390 = load i32, i32* %xoffset639, align 4
  %conv725 = sext i32 %390 to i64
  %call726 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %388, i32 %389, i64 %conv725, i32 1, i32 1)
  store %struct.rtx_def* %call726, %struct.rtx_def** %xop0645, align 8
  %391 = load i32, i32* %bestmode665, align 4
  %392 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %call727 = call %struct.rtx_def* @force_reg(i32 %391, %struct.rtx_def* %392)
  store %struct.rtx_def* %call727, %struct.rtx_def** %xop0645, align 8
  br label %if.end.731

if.else.728:                                      ; preds = %if.then.656
  %393 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %394 = load i32, i32* @byte_mode, align 4
  %395 = load i32, i32* %xoffset639, align 4
  %conv729 = sext i32 %395 to i64
  %call730 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %393, i32 %394, i64 %conv729, i32 1, i32 1)
  store %struct.rtx_def* %call730, %struct.rtx_def** %xop0645, align 8
  br label %if.end.731

if.end.731:                                       ; preds = %if.else.728, %if.end.711
  br label %if.end.732

if.end.732:                                       ; preds = %if.end.731, %if.then.636
  %396 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %397 = bitcast %struct.rtx_def* %396 to i32*
  %bf.load733 = load i32, i32* %397, align 8
  %bf.clear734 = and i32 %bf.load733, 65535
  %cmp735 = icmp eq i32 %bf.clear734, 63
  br i1 %cmp735, label %land.lhs.true.737, label %if.end.744

land.lhs.true.737:                                ; preds = %if.end.732
  %398 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %399 = bitcast %struct.rtx_def* %398 to i32*
  %bf.load738 = load i32, i32* %399, align 8
  %bf.lshr739 = lshr i32 %bf.load738, 16
  %bf.clear740 = and i32 %bf.lshr739, 255
  %400 = load i32, i32* %maxmode650, align 4
  %cmp741 = icmp ne i32 %bf.clear740, %400
  br i1 %cmp741, label %if.then.743, label %if.end.744

if.then.743:                                      ; preds = %land.lhs.true.737
  br label %extv_loses

if.end.744:                                       ; preds = %land.lhs.true.737, %if.end.732
  %401 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %402 = bitcast %struct.rtx_def* %401 to i32*
  %bf.load745 = load i32, i32* %402, align 8
  %bf.clear746 = and i32 %bf.load745, 65535
  %cmp747 = icmp eq i32 %bf.clear746, 61
  br i1 %cmp747, label %land.lhs.true.749, label %if.end.757

land.lhs.true.749:                                ; preds = %if.end.744
  %403 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %404 = bitcast %struct.rtx_def* %403 to i32*
  %bf.load750 = load i32, i32* %404, align 8
  %bf.lshr751 = lshr i32 %bf.load750, 16
  %bf.clear752 = and i32 %bf.lshr751, 255
  %405 = load i32, i32* %maxmode650, align 4
  %cmp753 = icmp ne i32 %bf.clear752, %405
  br i1 %cmp753, label %if.then.755, label %if.end.757

if.then.755:                                      ; preds = %land.lhs.true.749
  %406 = load i32, i32* %maxmode650, align 4
  %407 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %call756 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %406, %struct.rtx_def* %407, i32 0)
  store %struct.rtx_def* %call756, %struct.rtx_def** %xop0645, align 8
  br label %if.end.757

if.end.757:                                       ; preds = %if.then.755, %land.lhs.true.749, %if.end.744
  %408 = load i32, i32* %maxmode650, align 4
  %idxprom758 = sext i32 %408 to i64
  %arrayidx759 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom758
  %409 = load i16, i16* %arrayidx759, align 2
  %conv760 = zext i16 %409 to i32
  store i32 %conv760, i32* %unit, align 4
  %410 = load %struct.rtx_def*, %struct.rtx_def** %xtarget646, align 8
  %cmp761 = icmp eq %struct.rtx_def* %410, null
  br i1 %cmp761, label %if.then.770, label %lor.lhs.false.763

lor.lhs.false.763:                                ; preds = %if.end.757
  %411 = load i32, i32* @flag_force_mem, align 4
  %tobool764 = icmp ne i32 %411, 0
  br i1 %tobool764, label %land.lhs.true.765, label %if.end.772

land.lhs.true.765:                                ; preds = %lor.lhs.false.763
  %412 = load %struct.rtx_def*, %struct.rtx_def** %xtarget646, align 8
  %413 = bitcast %struct.rtx_def* %412 to i32*
  %bf.load766 = load i32, i32* %413, align 8
  %bf.clear767 = and i32 %bf.load766, 65535
  %cmp768 = icmp eq i32 %bf.clear767, 66
  br i1 %cmp768, label %if.then.770, label %if.end.772

if.then.770:                                      ; preds = %land.lhs.true.765, %if.end.757
  %414 = load i32, i32* %tmode.addr, align 4
  %call771 = call %struct.rtx_def* @gen_reg_rtx(i32 %414)
  store %struct.rtx_def* %call771, %struct.rtx_def** %xspec_target647, align 8
  store %struct.rtx_def* %call771, %struct.rtx_def** %xtarget646, align 8
  br label %if.end.772

if.end.772:                                       ; preds = %if.then.770, %land.lhs.true.765, %lor.lhs.false.763
  %415 = load %struct.rtx_def*, %struct.rtx_def** %xtarget646, align 8
  %416 = bitcast %struct.rtx_def* %415 to i32*
  %bf.load773 = load i32, i32* %416, align 8
  %bf.lshr774 = lshr i32 %bf.load773, 16
  %bf.clear775 = and i32 %bf.lshr774, 255
  %417 = load i32, i32* %maxmode650, align 4
  %cmp776 = icmp ne i32 %bf.clear775, %417
  br i1 %cmp776, label %if.then.778, label %if.end.803

if.then.778:                                      ; preds = %if.end.772
  %418 = load %struct.rtx_def*, %struct.rtx_def** %xtarget646, align 8
  %419 = bitcast %struct.rtx_def* %418 to i32*
  %bf.load779 = load i32, i32* %419, align 8
  %bf.clear780 = and i32 %bf.load779, 65535
  %cmp781 = icmp eq i32 %bf.clear780, 61
  br i1 %cmp781, label %if.then.783, label %if.else.800

if.then.783:                                      ; preds = %if.then.778
  %420 = load i32, i32* %maxmode650, align 4
  %idxprom785 = sext i32 %420 to i64
  %arrayidx786 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom785
  %421 = load i8, i8* %arrayidx786, align 1
  %conv787 = zext i8 %421 to i32
  %422 = load %struct.rtx_def*, %struct.rtx_def** %xtarget646, align 8
  %423 = bitcast %struct.rtx_def* %422 to i32*
  %bf.load788 = load i32, i32* %423, align 8
  %bf.lshr789 = lshr i32 %bf.load788, 16
  %bf.clear790 = and i32 %bf.lshr789, 255
  %idxprom791 = sext i32 %bf.clear790 to i64
  %arrayidx792 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom791
  %424 = load i8, i8* %arrayidx792, align 1
  %conv793 = zext i8 %424 to i32
  %cmp794 = icmp sgt i32 %conv787, %conv793
  %conv795 = zext i1 %cmp794 to i32
  store i32 %conv795, i32* %wider784, align 4
  %425 = load i32, i32* %maxmode650, align 4
  %426 = load %struct.rtx_def*, %struct.rtx_def** %xtarget646, align 8
  %call796 = call %struct.rtx_def* @gen_lowpart(i32 %425, %struct.rtx_def* %426)
  store %struct.rtx_def* %call796, %struct.rtx_def** %xtarget646, align 8
  %427 = load i32, i32* %wider784, align 4
  %tobool797 = icmp ne i32 %427, 0
  br i1 %tobool797, label %if.then.798, label %if.end.799

if.then.798:                                      ; preds = %if.then.783
  %428 = load %struct.rtx_def*, %struct.rtx_def** %xtarget646, align 8
  store %struct.rtx_def* %428, %struct.rtx_def** %xspec_target_subreg648, align 8
  br label %if.end.799

if.end.799:                                       ; preds = %if.then.798, %if.then.783
  br label %if.end.802

if.else.800:                                      ; preds = %if.then.778
  %429 = load i32, i32* %maxmode650, align 4
  %call801 = call %struct.rtx_def* @gen_reg_rtx(i32 %429)
  store %struct.rtx_def* %call801, %struct.rtx_def** %xtarget646, align 8
  br label %if.end.802

if.end.802:                                       ; preds = %if.else.800, %if.end.799
  br label %if.end.803

if.end.803:                                       ; preds = %if.end.802, %if.end.772
  %430 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1112, i32 3), align 8
  %arrayidx804 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %430, i64 0
  %predicate805 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx804, i32 0, i32 0
  %431 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate805, align 8
  %432 = load %struct.rtx_def*, %struct.rtx_def** %xtarget646, align 8
  %433 = load i32, i32* %maxmode650, align 4
  %call806 = call i32 %431(%struct.rtx_def* %432, i32 %433)
  %tobool807 = icmp ne i32 %call806, 0
  br i1 %tobool807, label %if.end.810, label %if.then.808

if.then.808:                                      ; preds = %if.end.803
  %434 = load i32, i32* %maxmode650, align 4
  %call809 = call %struct.rtx_def* @gen_reg_rtx(i32 %434)
  store %struct.rtx_def* %call809, %struct.rtx_def** %xtarget646, align 8
  br label %if.end.810

if.end.810:                                       ; preds = %if.then.808, %if.end.803
  %435 = load i64, i64* %bitsize.addr, align 8
  %call811 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %435)
  store %struct.rtx_def* %call811, %struct.rtx_def** %bitsize_rtx641, align 8
  %436 = load i32, i32* %xbitpos637, align 4
  %conv812 = sext i32 %436 to i64
  %call813 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv812)
  store %struct.rtx_def* %call813, %struct.rtx_def** %bitpos_rtx642, align 8
  %437 = load %struct.rtx_def*, %struct.rtx_def** %xtarget646, align 8
  %call814 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %437, i32 1)
  %438 = load %struct.rtx_def*, %struct.rtx_def** %xop0645, align 8
  %439 = load %struct.rtx_def*, %struct.rtx_def** %bitsize_rtx641, align 8
  %440 = load %struct.rtx_def*, %struct.rtx_def** %bitpos_rtx642, align 8
  %call815 = call %struct.rtx_def* @gen_extv(%struct.rtx_def* %call814, %struct.rtx_def* %438, %struct.rtx_def* %439, %struct.rtx_def* %440)
  store %struct.rtx_def* %call815, %struct.rtx_def** %pat649, align 8
  %441 = load %struct.rtx_def*, %struct.rtx_def** %pat649, align 8
  %tobool816 = icmp ne %struct.rtx_def* %441, null
  br i1 %tobool816, label %if.then.817, label %if.else.819

if.then.817:                                      ; preds = %if.end.810
  %442 = load %struct.rtx_def*, %struct.rtx_def** %pat649, align 8
  %call818 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %442)
  %443 = load %struct.rtx_def*, %struct.rtx_def** %xtarget646, align 8
  store %struct.rtx_def* %443, %struct.rtx_def** %target.addr, align 8
  %444 = load %struct.rtx_def*, %struct.rtx_def** %xspec_target647, align 8
  store %struct.rtx_def* %444, %struct.rtx_def** %spec_target, align 8
  %445 = load %struct.rtx_def*, %struct.rtx_def** %xspec_target_subreg648, align 8
  store %struct.rtx_def* %445, %struct.rtx_def** %spec_target_subreg, align 8
  br label %if.end.821

if.else.819:                                      ; preds = %if.end.810
  %446 = load %struct.rtx_def*, %struct.rtx_def** %last643, align 8
  call void @delete_insns_since(%struct.rtx_def* %446)
  %447 = load i32, i32* %int_mode, align 4
  %448 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %449 = load i64, i64* %offset, align 8
  %450 = load i64, i64* %bitsize.addr, align 8
  %451 = load i64, i64* %bitpos, align 8
  %452 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call820 = call %struct.rtx_def* @extract_fixed_bit_field(i32 %447, %struct.rtx_def* %448, i64 %449, i64 %450, i64 %451, %struct.rtx_def* %452, i32 0)
  store %struct.rtx_def* %call820, %struct.rtx_def** %target.addr, align 8
  br label %if.end.821

if.end.821:                                       ; preds = %if.else.819, %if.then.817
  br label %if.end.824

if.else.822:                                      ; preds = %land.lhs.true.629, %if.else.613
  br label %extv_loses

extv_loses:                                       ; preds = %if.else.822, %if.then.743, %if.then.710
  %453 = load i32, i32* %int_mode, align 4
  %454 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %455 = load i64, i64* %offset, align 8
  %456 = load i64, i64* %bitsize.addr, align 8
  %457 = load i64, i64* %bitpos, align 8
  %458 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call823 = call %struct.rtx_def* @extract_fixed_bit_field(i32 %453, %struct.rtx_def* %454, i64 %455, i64 %456, i64 %457, %struct.rtx_def* %458, i32 0)
  store %struct.rtx_def* %call823, %struct.rtx_def** %target.addr, align 8
  br label %if.end.824

if.end.824:                                       ; preds = %extv_loses, %if.end.821
  br label %if.end.825

if.end.825:                                       ; preds = %if.end.824, %if.end.612
  %459 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %460 = load %struct.rtx_def*, %struct.rtx_def** %spec_target, align 8
  %cmp826 = icmp eq %struct.rtx_def* %459, %460
  br i1 %cmp826, label %if.then.828, label %if.end.829

if.then.828:                                      ; preds = %if.end.825
  %461 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %461, %struct.rtx_def** %retval
  br label %return

if.end.829:                                       ; preds = %if.end.825
  %462 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %463 = load %struct.rtx_def*, %struct.rtx_def** %spec_target_subreg, align 8
  %cmp830 = icmp eq %struct.rtx_def* %462, %463
  br i1 %cmp830, label %if.then.832, label %if.end.833

if.then.832:                                      ; preds = %if.end.829
  %464 = load %struct.rtx_def*, %struct.rtx_def** %spec_target, align 8
  store %struct.rtx_def* %464, %struct.rtx_def** %retval
  br label %return

if.end.833:                                       ; preds = %if.end.829
  %465 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %466 = bitcast %struct.rtx_def* %465 to i32*
  %bf.load834 = load i32, i32* %466, align 8
  %bf.lshr835 = lshr i32 %bf.load834, 16
  %bf.clear836 = and i32 %bf.lshr835, 255
  %467 = load i32, i32* %tmode.addr, align 4
  %cmp837 = icmp ne i32 %bf.clear836, %467
  br i1 %cmp837, label %land.lhs.true.839, label %if.end.864

land.lhs.true.839:                                ; preds = %if.end.833
  %468 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %469 = bitcast %struct.rtx_def* %468 to i32*
  %bf.load840 = load i32, i32* %469, align 8
  %bf.lshr841 = lshr i32 %bf.load840, 16
  %bf.clear842 = and i32 %bf.lshr841, 255
  %470 = load i32, i32* %mode.addr, align 4
  %cmp843 = icmp ne i32 %bf.clear842, %470
  br i1 %cmp843, label %if.then.845, label %if.end.864

if.then.845:                                      ; preds = %land.lhs.true.839
  %471 = load i32, i32* %tmode.addr, align 4
  %idxprom846 = sext i32 %471 to i64
  %arrayidx847 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom846
  %472 = load i32, i32* %arrayidx847, align 4
  %cmp848 = icmp ne i32 %472, 1
  br i1 %cmp848, label %land.lhs.true.850, label %if.else.862

land.lhs.true.850:                                ; preds = %if.then.845
  %473 = load i32, i32* %tmode.addr, align 4
  %idxprom851 = sext i32 %473 to i64
  %arrayidx852 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom851
  %474 = load i32, i32* %arrayidx852, align 4
  %cmp853 = icmp ne i32 %474, 3
  br i1 %cmp853, label %if.then.855, label %if.else.862

if.then.855:                                      ; preds = %land.lhs.true.850
  %475 = load i32, i32* %tmode.addr, align 4
  %idxprom856 = sext i32 %475 to i64
  %arrayidx857 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom856
  %476 = load i16, i16* %arrayidx857, align 2
  %conv858 = zext i16 %476 to i32
  %call859 = call i32 @mode_for_size(i32 %conv858, i32 1, i32 0)
  %477 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %478 = load i32, i32* %unsignedp.addr, align 4
  %call860 = call %struct.rtx_def* @convert_to_mode(i32 %call859, %struct.rtx_def* %477, i32 %478)
  store %struct.rtx_def* %call860, %struct.rtx_def** %target.addr, align 8
  %479 = load i32, i32* %tmode.addr, align 4
  %480 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call861 = call %struct.rtx_def* @gen_lowpart(i32 %479, %struct.rtx_def* %480)
  store %struct.rtx_def* %call861, %struct.rtx_def** %retval
  br label %return

if.else.862:                                      ; preds = %land.lhs.true.850, %if.then.845
  %481 = load i32, i32* %tmode.addr, align 4
  %482 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %483 = load i32, i32* %unsignedp.addr, align 4
  %call863 = call %struct.rtx_def* @convert_to_mode(i32 %481, %struct.rtx_def* %482, i32 %483)
  store %struct.rtx_def* %call863, %struct.rtx_def** %retval
  br label %return

if.end.864:                                       ; preds = %land.lhs.true.839, %if.end.833
  %484 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %484, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.864, %if.else.862, %if.then.855, %if.then.832, %if.then.828, %if.end.357, %if.end.356, %if.end.243, %if.then.241, %if.then.68
  %485 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %485
}

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare %struct.rtx_def* @operand_subword(%struct.rtx_def*, i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_shift(i32 %code, i32 %mode, %struct.rtx_def* %shifted, %union.tree_node* %amount, %struct.rtx_def* %target, i32 %unsignedp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %shifted.addr = alloca %struct.rtx_def*, align 8
  %amount.addr = alloca %union.tree_node*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %op1 = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %left = alloca i32, align 4
  %rotate = alloca i32, align 4
  %try = alloca i32, align 4
  %methods = alloca i32, align 4
  %subtarget = alloca %struct.rtx_def*, align 8
  %temp1 = alloca %struct.rtx_def*, align 8
  %type = alloca %union.tree_node*, align 8
  %new_amount = alloca %union.tree_node*, align 8
  %other_amount = alloca %union.tree_node*, align 8
  %methods1 = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %shifted, %struct.rtx_def** %shifted.addr, align 8
  store %union.tree_node* %amount, %union.tree_node** %amount.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %temp, align 8
  %0 = load i32, i32* %code.addr, align 4
  %cmp = icmp eq i32 %0, 82
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %1 = load i32, i32* %code.addr, align 4
  %cmp1 = icmp eq i32 %1, 84
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %cmp1, %lor.rhs ]
  %lor.ext = zext i1 %2 to i32
  store i32 %lor.ext, i32* %left, align 4
  %3 = load i32, i32* %code.addr, align 4
  %cmp2 = icmp eq i32 %3, 84
  br i1 %cmp2, label %lor.end.5, label %lor.rhs.3

lor.rhs.3:                                        ; preds = %lor.end
  %4 = load i32, i32* %code.addr, align 4
  %cmp4 = icmp eq i32 %4, 85
  br label %lor.end.5

lor.end.5:                                        ; preds = %lor.rhs.3, %lor.end
  %5 = phi i1 [ true, %lor.end ], [ %cmp4, %lor.rhs.3 ]
  %lor.ext6 = zext i1 %5 to i32
  store i32 %lor.ext6, i32* %rotate, align 4
  %6 = load %union.tree_node*, %union.tree_node** %amount.addr, align 8
  %call = call %struct.rtx_def* @expand_expr(%union.tree_node* %6, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %op1, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp7 = icmp eq %struct.rtx_def* %7, %8
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end.5
  %9 = load %struct.rtx_def*, %struct.rtx_def** %shifted.addr, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.end.5
  store i32 0, i32* %try, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp8 = icmp eq %struct.rtx_def* %10, null
  br i1 %cmp8, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %11 = load i32, i32* %try, align 4
  %cmp9 = icmp slt i32 %11, 3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %12 = phi i1 [ false, %for.cond ], [ %cmp9, %land.rhs ]
  br i1 %12, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %13 = load i32, i32* %try, align 4
  %cmp10 = icmp eq i32 %13, 0
  br i1 %cmp10, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %for.body
  store i32 0, i32* %methods, align 4
  br label %if.end.16

if.else:                                          ; preds = %for.body
  %14 = load i32, i32* %try, align 4
  %cmp12 = icmp eq i32 %14, 1
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %if.else
  store i32 2, i32* %methods, align 4
  br label %if.end.15

if.else.14:                                       ; preds = %if.else
  store i32 3, i32* %methods, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.11
  %15 = load i32, i32* %rotate, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then.17, label %if.else.79

if.then.17:                                       ; preds = %if.end.16
  %16 = load i32, i32* %methods, align 4
  %cmp18 = icmp eq i32 %16, 2
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %if.then.17
  br label %for.inc

if.else.20:                                       ; preds = %if.then.17
  %17 = load i32, i32* %methods, align 4
  %cmp21 = icmp eq i32 %17, 3
  br i1 %cmp21, label %if.then.22, label %if.end.38

if.then.22:                                       ; preds = %if.else.20
  %18 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %shifted.addr, align 8
  %cmp23 = icmp eq %struct.rtx_def* %18, %19
  br i1 %cmp23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.22
  br label %cond.end

cond.false:                                       ; preds = %if.then.22
  %20 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ null, %cond.true ], [ %20, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %subtarget, align 8
  %21 = load %union.tree_node*, %union.tree_node** %amount.addr, align 8
  %common = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type24 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type24, align 8
  store %union.tree_node* %22, %union.tree_node** %type, align 8
  %23 = load %union.tree_node*, %union.tree_node** %type, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %call25 = call %union.tree_node* @make_tree(%union.tree_node* %23, %struct.rtx_def* %24)
  store %union.tree_node* %call25, %union.tree_node** %new_amount, align 8
  %25 = load %union.tree_node*, %union.tree_node** %type, align 8
  %26 = load %union.tree_node*, %union.tree_node** %type, align 8
  %27 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %28 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %28 to i64
  %call26 = call %union.tree_node* @build_int_2_wide(i64 %conv, i64 0)
  %call27 = call %union.tree_node* @convert(%union.tree_node* %26, %union.tree_node* %call26)
  %29 = load %union.tree_node*, %union.tree_node** %amount.addr, align 8
  %call28 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 60, %union.tree_node* %25, %union.tree_node* %call27, %union.tree_node* %29)
  %call29 = call %union.tree_node* @fold(%union.tree_node* %call28)
  store %union.tree_node* %call29, %union.tree_node** %other_amount, align 8
  %30 = load i32, i32* %mode.addr, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %shifted.addr, align 8
  %call30 = call %struct.rtx_def* @force_reg(i32 %30, %struct.rtx_def* %31)
  store %struct.rtx_def* %call30, %struct.rtx_def** %shifted.addr, align 8
  %32 = load i32, i32* %left, align 4
  %tobool31 = icmp ne i32 %32, 0
  %cond32 = select i1 %tobool31, i32 82, i32 83
  %33 = load i32, i32* %mode.addr, align 4
  %34 = load %struct.rtx_def*, %struct.rtx_def** %shifted.addr, align 8
  %35 = load %union.tree_node*, %union.tree_node** %new_amount, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call33 = call %struct.rtx_def* @expand_shift(i32 %cond32, i32 %33, %struct.rtx_def* %34, %union.tree_node* %35, %struct.rtx_def* %36, i32 1)
  store %struct.rtx_def* %call33, %struct.rtx_def** %temp, align 8
  %37 = load i32, i32* %left, align 4
  %tobool34 = icmp ne i32 %37, 0
  %cond35 = select i1 %tobool34, i32 83, i32 82
  %38 = load i32, i32* %mode.addr, align 4
  %39 = load %struct.rtx_def*, %struct.rtx_def** %shifted.addr, align 8
  %40 = load %union.tree_node*, %union.tree_node** %other_amount, align 8
  %call36 = call %struct.rtx_def* @expand_shift(i32 %cond35, i32 %38, %struct.rtx_def* %39, %union.tree_node* %40, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call36, %struct.rtx_def** %temp1, align 8
  %41 = load i32, i32* %mode.addr, align 4
  %42 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %46 = load i32, i32* %unsignedp.addr, align 4
  %47 = load i32, i32* %methods, align 4
  %call37 = call %struct.rtx_def* @expand_binop(i32 %41, %struct.optab* %42, %struct.rtx_def* %43, %struct.rtx_def* %44, %struct.rtx_def* %45, i32 %46, i32 %47)
  store %struct.rtx_def* %call37, %struct.rtx_def** %retval
  br label %return

if.end.38:                                        ; preds = %if.else.20
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38
  %48 = load i32, i32* %mode.addr, align 4
  %49 = load i32, i32* %left, align 4
  %tobool40 = icmp ne i32 %49, 0
  br i1 %tobool40, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %if.end.39
  %50 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 24), align 8
  br label %cond.end.43

cond.false.42:                                    ; preds = %if.end.39
  %51 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 25), align 8
  br label %cond.end.43

cond.end.43:                                      ; preds = %cond.false.42, %cond.true.41
  %cond44 = phi %struct.optab* [ %50, %cond.true.41 ], [ %51, %cond.false.42 ]
  %52 = load %struct.rtx_def*, %struct.rtx_def** %shifted.addr, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %55 = load i32, i32* %unsignedp.addr, align 4
  %56 = load i32, i32* %methods, align 4
  %call45 = call %struct.rtx_def* @expand_binop(i32 %48, %struct.optab* %cond44, %struct.rtx_def* %52, %struct.rtx_def* %53, %struct.rtx_def* %54, i32 %55, i32 %56)
  store %struct.rtx_def* %call45, %struct.rtx_def** %temp, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp46 = icmp eq %struct.rtx_def* %57, null
  br i1 %cmp46, label %land.lhs.true, label %if.end.78

land.lhs.true:                                    ; preds = %cond.end.43
  %58 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load = load i32, i32* %59, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp48 = icmp eq i32 %bf.clear, 54
  br i1 %cmp48, label %land.lhs.true.50, label %if.end.78

land.lhs.true.50:                                 ; preds = %land.lhs.true
  %60 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx51 to i64*
  %61 = load i64, i64* %rtwint, align 8
  %cmp52 = icmp sgt i64 %61, 0
  br i1 %cmp52, label %land.lhs.true.54, label %if.end.78

land.lhs.true.54:                                 ; preds = %land.lhs.true.50
  %62 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtwint57 = bitcast %union.rtunion_def* %arrayidx56 to i64*
  %63 = load i64, i64* %rtwint57, align 8
  %conv58 = trunc i64 %63 to i32
  %64 = load i32, i32* %mode.addr, align 4
  %idxprom59 = sext i32 %64 to i64
  %arrayidx60 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom59
  %65 = load i16, i16* %arrayidx60, align 2
  %conv61 = zext i16 %65 to i32
  %cmp62 = icmp ult i32 %conv58, %conv61
  br i1 %cmp62, label %if.then.64, label %if.end.78

if.then.64:                                       ; preds = %land.lhs.true.54
  %66 = load i32, i32* %mode.addr, align 4
  %67 = load i32, i32* %left, align 4
  %tobool65 = icmp ne i32 %67, 0
  br i1 %tobool65, label %cond.true.66, label %cond.false.67

cond.true.66:                                     ; preds = %if.then.64
  %68 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 25), align 8
  br label %cond.end.68

cond.false.67:                                    ; preds = %if.then.64
  %69 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 24), align 8
  br label %cond.end.68

cond.end.68:                                      ; preds = %cond.false.67, %cond.true.66
  %cond69 = phi %struct.optab* [ %68, %cond.true.66 ], [ %69, %cond.false.67 ]
  %70 = load %struct.rtx_def*, %struct.rtx_def** %shifted.addr, align 8
  %71 = load i32, i32* %mode.addr, align 4
  %idxprom70 = sext i32 %71 to i64
  %arrayidx71 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom70
  %72 = load i16, i16* %arrayidx71, align 2
  %conv72 = zext i16 %72 to i64
  %73 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtwint75 = bitcast %union.rtunion_def* %arrayidx74 to i64*
  %74 = load i64, i64* %rtwint75, align 8
  %sub = sub nsw i64 %conv72, %74
  %call76 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub)
  %75 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %76 = load i32, i32* %unsignedp.addr, align 4
  %77 = load i32, i32* %methods, align 4
  %call77 = call %struct.rtx_def* @expand_binop(i32 %66, %struct.optab* %cond69, %struct.rtx_def* %70, %struct.rtx_def* %call76, %struct.rtx_def* %75, i32 %76, i32 %77)
  store %struct.rtx_def* %call77, %struct.rtx_def** %temp, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %cond.end.68, %land.lhs.true.54, %land.lhs.true.50, %land.lhs.true, %cond.end.43
  br label %if.end.89

if.else.79:                                       ; preds = %if.end.16
  %78 = load i32, i32* %unsignedp.addr, align 4
  %tobool80 = icmp ne i32 %78, 0
  br i1 %tobool80, label %if.then.81, label %if.end.88

if.then.81:                                       ; preds = %if.else.79
  %79 = load i32, i32* %mode.addr, align 4
  %80 = load i32, i32* %left, align 4
  %tobool82 = icmp ne i32 %80, 0
  br i1 %tobool82, label %cond.true.83, label %cond.false.84

cond.true.83:                                     ; preds = %if.then.81
  %81 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  br label %cond.end.85

cond.false.84:                                    ; preds = %if.then.81
  %82 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.84, %cond.true.83
  %cond86 = phi %struct.optab* [ %81, %cond.true.83 ], [ %82, %cond.false.84 ]
  %83 = load %struct.rtx_def*, %struct.rtx_def** %shifted.addr, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %86 = load i32, i32* %unsignedp.addr, align 4
  %87 = load i32, i32* %methods, align 4
  %call87 = call %struct.rtx_def* @expand_binop(i32 %79, %struct.optab* %cond86, %struct.rtx_def* %83, %struct.rtx_def* %84, %struct.rtx_def* %85, i32 %86, i32 %87)
  store %struct.rtx_def* %call87, %struct.rtx_def** %temp, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %cond.end.85, %if.else.79
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.end.78
  %88 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp90 = icmp eq %struct.rtx_def* %88, null
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.110

land.lhs.true.92:                                 ; preds = %if.end.89
  %89 = load i32, i32* %rotate, align 4
  %tobool93 = icmp ne i32 %89, 0
  br i1 %tobool93, label %if.end.110, label %land.lhs.true.94

land.lhs.true.94:                                 ; preds = %land.lhs.true.92
  %90 = load i32, i32* %unsignedp.addr, align 4
  %tobool95 = icmp ne i32 %90, 0
  br i1 %tobool95, label %lor.lhs.false, label %if.then.100

lor.lhs.false:                                    ; preds = %land.lhs.true.94
  %91 = load i32, i32* %left, align 4
  %tobool96 = icmp ne i32 %91, 0
  br i1 %tobool96, label %if.end.110, label %land.lhs.true.97

land.lhs.true.97:                                 ; preds = %lor.lhs.false
  %92 = load i32, i32* %methods, align 4
  %cmp98 = icmp eq i32 %92, 2
  br i1 %cmp98, label %if.then.100, label %if.end.110

if.then.100:                                      ; preds = %land.lhs.true.97, %land.lhs.true.94
  %93 = load i32, i32* %methods, align 4
  store i32 %93, i32* %methods1, align 4
  %94 = load i32, i32* %unsignedp.addr, align 4
  %tobool101 = icmp ne i32 %94, 0
  br i1 %tobool101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.then.100
  store i32 4, i32* %methods1, align 4
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.102, %if.then.100
  %95 = load i32, i32* %mode.addr, align 4
  %96 = load i32, i32* %left, align 4
  %tobool104 = icmp ne i32 %96, 0
  br i1 %tobool104, label %cond.true.105, label %cond.false.106

cond.true.105:                                    ; preds = %if.end.103
  %97 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  br label %cond.end.107

cond.false.106:                                   ; preds = %if.end.103
  %98 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.105
  %cond108 = phi %struct.optab* [ %97, %cond.true.105 ], [ %98, %cond.false.106 ]
  %99 = load %struct.rtx_def*, %struct.rtx_def** %shifted.addr, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %102 = load i32, i32* %unsignedp.addr, align 4
  %103 = load i32, i32* %methods1, align 4
  %call109 = call %struct.rtx_def* @expand_binop(i32 %95, %struct.optab* %cond108, %struct.rtx_def* %99, %struct.rtx_def* %100, %struct.rtx_def* %101, i32 %102, i32 %103)
  store %struct.rtx_def* %call109, %struct.rtx_def** %temp, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %cond.end.107, %land.lhs.true.97, %lor.lhs.false, %land.lhs.true.92, %if.end.89
  br label %for.inc

for.inc:                                          ; preds = %if.end.110, %if.then.19
  %104 = load i32, i32* %try, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %try, align 4
  br label %for.cond

for.end:                                          ; preds = %land.end
  %105 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp111 = icmp eq %struct.rtx_def* %105, null
  br i1 %cmp111, label %if.then.113, label %if.end.114

if.then.113:                                      ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2043, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expand_shift, i32 0, i32 0)) #4
  unreachable

if.end.114:                                       ; preds = %for.end
  %106 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %106, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.114, %cond.end, %if.then
  %107 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %107
}

declare %union.tree_node* @build_int_2_wide(i64, i64) #1

declare %struct.rtx_def* @gen_extzv(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @extract_fixed_bit_field(i32 %tmode, %struct.rtx_def* %op0, i64 %offset, i64 %bitsize, i64 %bitpos, %struct.rtx_def* %target, i32 %unsignedp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %tmode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %offset.addr = alloca i64, align 8
  %bitsize.addr = alloca i64, align 8
  %bitpos.addr = alloca i64, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %total_bits = alloca i32, align 4
  %mode = alloca i32, align 4
  %amount = alloca %union.tree_node*, align 8
  %subtarget = alloca %struct.rtx_def*, align 8
  %amount135 = alloca %union.tree_node*, align 8
  %subtarget142 = alloca %struct.rtx_def*, align 8
  store i32 %tmode, i32* %tmode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i64 %bitsize, i64* %bitsize.addr, align 8
  store i64 %bitpos, i64* %bitpos.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  store i32 %cond, i32* %total_bits, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 61
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load i64, i64* %bitsize.addr, align 8
  %6 = load i64, i64* %bitpos.addr, align 8
  %add = add i64 %5, %6
  %7 = load i32, i32* @target_flags, align 4
  %and4 = and i32 %7, 33554432
  %tobool5 = icmp ne i32 %and4, 0
  %cond6 = select i1 %tobool5, i32 64, i32 32
  %conv = sext i32 %cond6 to i64
  %cmp7 = icmp ugt i64 %add, %conv
  br i1 %cmp7, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %if.then
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %9 = load i64, i64* %bitsize.addr, align 8
  %10 = load i64, i64* %bitpos.addr, align 8
  %11 = load i32, i32* %unsignedp.addr, align 4
  %call = call %struct.rtx_def* @extract_split_bit_field(%struct.rtx_def* %8, i64 %9, i64 %10, i32 %11)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.56

if.else:                                          ; preds = %lor.lhs.false
  %12 = load i64, i64* %bitsize.addr, align 8
  %conv10 = trunc i64 %12 to i32
  %13 = load i64, i64* %bitpos.addr, align 8
  %14 = load i64, i64* %offset.addr, align 8
  %mul = mul i64 %14, 8
  %add11 = add i64 %13, %mul
  %conv12 = trunc i64 %add11 to i32
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %16 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp13 = icmp ne %struct.mem_attrs* %16, null
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtmem17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.mem_attrs**
  %18 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem17, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %18, i32 0, i32 4
  %19 = load i32, i32* %align, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond18 = phi i32 [ %19, %cond.true ], [ 8, %cond.false ]
  %20 = load i32, i32* @word_mode, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load19 = load i32, i32* %22, align 8
  %bf.lshr = lshr i32 %bf.load19, 27
  %bf.clear20 = and i32 %bf.lshr, 1
  %call21 = call i32 @get_best_mode(i32 %conv10, i32 %conv12, i32 %cond18, i32 %20, i32 %bf.clear20)
  store i32 %call21, i32* %mode, align 4
  %23 = load i32, i32* %mode, align 4
  %cmp22 = icmp eq i32 %23, 0
  br i1 %cmp22, label %if.then.24, label %if.end.28

if.then.24:                                       ; preds = %cond.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %25 = load i64, i64* %bitsize.addr, align 8
  %26 = load i64, i64* %bitpos.addr, align 8
  %27 = load i64, i64* %offset.addr, align 8
  %mul25 = mul i64 %27, 8
  %add26 = add i64 %26, %mul25
  %28 = load i32, i32* %unsignedp.addr, align 4
  %call27 = call %struct.rtx_def* @extract_split_bit_field(%struct.rtx_def* %24, i64 %25, i64 %add26, i32 %28)
  store %struct.rtx_def* %call27, %struct.rtx_def** %retval
  br label %return

if.end.28:                                        ; preds = %cond.end
  %29 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %29 to i64
  %arrayidx29 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %30 = load i16, i16* %arrayidx29, align 2
  %conv30 = zext i16 %30 to i32
  store i32 %conv30, i32* %total_bits, align 4
  %31 = load i64, i64* %bitpos.addr, align 8
  %32 = load i32, i32* %total_bits, align 4
  %conv31 = zext i32 %32 to i64
  %cmp32 = icmp uge i64 %31, %conv31
  br i1 %cmp32, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %if.end.28
  %33 = load i64, i64* %bitpos.addr, align 8
  %34 = load i32, i32* %total_bits, align 4
  %conv35 = zext i32 %34 to i64
  %div = udiv i64 %33, %conv35
  %35 = load i32, i32* %total_bits, align 4
  %div36 = udiv i32 %35, 8
  %conv37 = zext i32 %div36 to i64
  %mul38 = mul i64 %div, %conv37
  %36 = load i64, i64* %offset.addr, align 8
  %add39 = add i64 %36, %mul38
  store i64 %add39, i64* %offset.addr, align 8
  %37 = load i64, i64* %bitpos.addr, align 8
  %38 = load i32, i32* %total_bits, align 4
  %conv40 = zext i32 %38 to i64
  %div41 = udiv i64 %37, %conv40
  %39 = load i32, i32* %total_bits, align 4
  %div42 = udiv i32 %39, 8
  %conv43 = zext i32 %div42 to i64
  %mul44 = mul i64 %div41, %conv43
  %mul45 = mul i64 %mul44, 8
  %40 = load i64, i64* %bitpos.addr, align 8
  %sub = sub i64 %40, %mul45
  store i64 %sub, i64* %bitpos.addr, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.34, %if.end.28
  %41 = load i64, i64* %offset.addr, align 8
  %42 = load i32, i32* %total_bits, align 4
  %div47 = udiv i32 %42, 8
  %conv48 = zext i32 %div47 to i64
  %rem = urem i64 %41, %conv48
  %mul49 = mul i64 %rem, 8
  %43 = load i64, i64* %bitpos.addr, align 8
  %add50 = add i64 %43, %mul49
  store i64 %add50, i64* %bitpos.addr, align 8
  %44 = load i64, i64* %offset.addr, align 8
  %45 = load i32, i32* %total_bits, align 4
  %div51 = udiv i32 %45, 8
  %conv52 = zext i32 %div51 to i64
  %rem53 = urem i64 %44, %conv52
  %46 = load i64, i64* %offset.addr, align 8
  %sub54 = sub i64 %46, %rem53
  store i64 %sub54, i64* %offset.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %48 = load i32, i32* %mode, align 4
  %49 = load i64, i64* %offset.addr, align 8
  %call55 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %47, i32 %48, i64 %49, i32 1, i32 1)
  store %struct.rtx_def* %call55, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.46, %if.end
  %50 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load57 = load i32, i32* %51, align 8
  %bf.lshr58 = lshr i32 %bf.load57, 16
  %bf.clear59 = and i32 %bf.lshr58, 255
  store i32 %bf.clear59, i32* %mode, align 4
  %52 = load i32, i32* %unsignedp.addr, align 4
  %tobool60 = icmp ne i32 %52, 0
  br i1 %tobool60, label %if.then.61, label %if.end.108

if.then.61:                                       ; preds = %if.end.56
  %53 = load i64, i64* %bitpos.addr, align 8
  %tobool62 = icmp ne i64 %53, 0
  br i1 %tobool62, label %if.then.63, label %if.end.85

if.then.63:                                       ; preds = %if.then.61
  %54 = load i64, i64* %bitpos.addr, align 8
  %call64 = call %union.tree_node* @build_int_2_wide(i64 %54, i64 0)
  store %union.tree_node* %call64, %union.tree_node** %amount, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp65 = icmp ne %struct.rtx_def* %55, null
  br i1 %cmp65, label %land.lhs.true, label %cond.false.77

land.lhs.true:                                    ; preds = %if.then.63
  %56 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load67 = load i32, i32* %57, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 61
  br i1 %cmp69, label %land.lhs.true.71, label %cond.false.77

land.lhs.true.71:                                 ; preds = %land.lhs.true
  %58 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load72 = load i32, i32* %59, align 8
  %bf.lshr73 = lshr i32 %bf.load72, 30
  %bf.clear74 = and i32 %bf.lshr73, 1
  %tobool75 = icmp ne i32 %bf.clear74, 0
  br i1 %tobool75, label %cond.false.77, label %cond.true.76

cond.true.76:                                     ; preds = %land.lhs.true.71
  %60 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end.78

cond.false.77:                                    ; preds = %land.lhs.true.71, %land.lhs.true, %if.then.63
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi %struct.rtx_def* [ %60, %cond.true.76 ], [ null, %cond.false.77 ]
  store %struct.rtx_def* %cond79, %struct.rtx_def** %subtarget, align 8
  %61 = load i32, i32* %tmode.addr, align 4
  %62 = load i32, i32* %mode, align 4
  %cmp80 = icmp ne i32 %61, %62
  br i1 %cmp80, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %cond.end.78
  store %struct.rtx_def* null, %struct.rtx_def** %subtarget, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %cond.end.78
  %63 = load i32, i32* %mode, align 4
  %64 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %65 = load %union.tree_node*, %union.tree_node** %amount, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call84 = call %struct.rtx_def* @expand_shift(i32 83, i32 %63, %struct.rtx_def* %64, %union.tree_node* %65, %struct.rtx_def* %66, i32 1)
  store %struct.rtx_def* %call84, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.end.83, %if.then.61
  %67 = load i32, i32* %mode, align 4
  %68 = load i32, i32* %tmode.addr, align 4
  %cmp86 = icmp ne i32 %67, %68
  br i1 %cmp86, label %if.then.88, label %if.end.90

if.then.88:                                       ; preds = %if.end.85
  %69 = load i32, i32* %tmode.addr, align 4
  %70 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call89 = call %struct.rtx_def* @convert_to_mode(i32 %69, %struct.rtx_def* %70, i32 1)
  store %struct.rtx_def* %call89, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.88, %if.end.85
  %71 = load i32, i32* %mode, align 4
  %idxprom91 = sext i32 %71 to i64
  %arrayidx92 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom91
  %72 = load i16, i16* %arrayidx92, align 2
  %conv93 = zext i16 %72 to i64
  %73 = load i64, i64* %bitpos.addr, align 8
  %74 = load i64, i64* %bitsize.addr, align 8
  %add94 = add i64 %73, %74
  %cmp95 = icmp ne i64 %conv93, %add94
  br i1 %cmp95, label %if.then.97, label %if.end.107

if.then.97:                                       ; preds = %if.end.90
  %75 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load98 = load i32, i32* %76, align 8
  %bf.lshr99 = lshr i32 %bf.load98, 16
  %bf.clear100 = and i32 %bf.lshr99, 255
  %77 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %79 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load101 = load i32, i32* %80, align 8
  %bf.lshr102 = lshr i32 %bf.load101, 16
  %bf.clear103 = and i32 %bf.lshr102, 255
  %81 = load i64, i64* %bitsize.addr, align 8
  %conv104 = trunc i64 %81 to i32
  %call105 = call %struct.rtx_def* @mask_rtx(i32 %bf.clear103, i32 0, i32 %conv104, i32 0)
  %82 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call106 = call %struct.rtx_def* @expand_binop(i32 %bf.clear100, %struct.optab* %77, %struct.rtx_def* %78, %struct.rtx_def* %call105, %struct.rtx_def* %82, i32 1, i32 3)
  store %struct.rtx_def* %call106, %struct.rtx_def** %retval
  br label %return

if.end.107:                                       ; preds = %if.end.90
  %83 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %83, %struct.rtx_def** %retval
  br label %return

if.end.108:                                       ; preds = %if.end.56
  %84 = load i32, i32* %mode, align 4
  %85 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call109 = call %struct.rtx_def* @force_reg(i32 %84, %struct.rtx_def* %85)
  store %struct.rtx_def* %call109, %struct.rtx_def** %op0.addr, align 8
  %86 = load i32, i32* %mode, align 4
  %87 = load i32, i32* %tmode.addr, align 4
  %cmp110 = icmp ne i32 %86, %87
  br i1 %cmp110, label %if.then.112, label %if.end.113

if.then.112:                                      ; preds = %if.end.108
  store %struct.rtx_def* null, %struct.rtx_def** %target.addr, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.112, %if.end.108
  %88 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 1), align 4
  store i32 %88, i32* %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.113
  %89 = load i32, i32* %mode, align 4
  %cmp114 = icmp ne i32 %89, 0
  br i1 %cmp114, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %90 = load i32, i32* %mode, align 4
  %idxprom116 = sext i32 %90 to i64
  %arrayidx117 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom116
  %91 = load i16, i16* %arrayidx117, align 2
  %conv118 = zext i16 %91 to i64
  %92 = load i64, i64* %bitsize.addr, align 8
  %93 = load i64, i64* %bitpos.addr, align 8
  %add119 = add i64 %92, %93
  %cmp120 = icmp uge i64 %conv118, %add119
  br i1 %cmp120, label %if.then.122, label %if.end.124

if.then.122:                                      ; preds = %for.body
  %94 = load i32, i32* %mode, align 4
  %95 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call123 = call %struct.rtx_def* @convert_to_mode(i32 %94, %struct.rtx_def* %95, i32 0)
  store %struct.rtx_def* %call123, %struct.rtx_def** %op0.addr, align 8
  br label %for.end

if.end.124:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.124
  %96 = load i32, i32* %mode, align 4
  %idxprom125 = sext i32 %96 to i64
  %arrayidx126 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom125
  %97 = load i8, i8* %arrayidx126, align 1
  %conv127 = zext i8 %97 to i32
  store i32 %conv127, i32* %mode, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.122, %for.cond
  %98 = load i32, i32* %mode, align 4
  %idxprom128 = sext i32 %98 to i64
  %arrayidx129 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom128
  %99 = load i16, i16* %arrayidx129, align 2
  %conv130 = zext i16 %99 to i64
  %100 = load i64, i64* %bitsize.addr, align 8
  %101 = load i64, i64* %bitpos.addr, align 8
  %add131 = add i64 %100, %101
  %cmp132 = icmp ne i64 %conv130, %add131
  br i1 %cmp132, label %if.then.134, label %if.end.160

if.then.134:                                      ; preds = %for.end
  %102 = load i32, i32* %mode, align 4
  %idxprom136 = sext i32 %102 to i64
  %arrayidx137 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom136
  %103 = load i16, i16* %arrayidx137, align 2
  %conv138 = zext i16 %103 to i64
  %104 = load i64, i64* %bitsize.addr, align 8
  %105 = load i64, i64* %bitpos.addr, align 8
  %add139 = add i64 %104, %105
  %sub140 = sub i64 %conv138, %add139
  %call141 = call %union.tree_node* @build_int_2_wide(i64 %sub140, i64 0)
  store %union.tree_node* %call141, %union.tree_node** %amount135, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp143 = icmp ne %struct.rtx_def* %106, null
  br i1 %cmp143, label %land.lhs.true.145, label %cond.false.156

land.lhs.true.145:                                ; preds = %if.then.134
  %107 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %bf.load146 = load i32, i32* %108, align 8
  %bf.clear147 = and i32 %bf.load146, 65535
  %cmp148 = icmp eq i32 %bf.clear147, 61
  br i1 %cmp148, label %land.lhs.true.150, label %cond.false.156

land.lhs.true.150:                                ; preds = %land.lhs.true.145
  %109 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %110 = bitcast %struct.rtx_def* %109 to i32*
  %bf.load151 = load i32, i32* %110, align 8
  %bf.lshr152 = lshr i32 %bf.load151, 30
  %bf.clear153 = and i32 %bf.lshr152, 1
  %tobool154 = icmp ne i32 %bf.clear153, 0
  br i1 %tobool154, label %cond.false.156, label %cond.true.155

cond.true.155:                                    ; preds = %land.lhs.true.150
  %111 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end.157

cond.false.156:                                   ; preds = %land.lhs.true.150, %land.lhs.true.145, %if.then.134
  br label %cond.end.157

cond.end.157:                                     ; preds = %cond.false.156, %cond.true.155
  %cond158 = phi %struct.rtx_def* [ %111, %cond.true.155 ], [ null, %cond.false.156 ]
  store %struct.rtx_def* %cond158, %struct.rtx_def** %subtarget142, align 8
  %112 = load i32, i32* %mode, align 4
  %113 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %114 = load %union.tree_node*, %union.tree_node** %amount135, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %subtarget142, align 8
  %call159 = call %struct.rtx_def* @expand_shift(i32 82, i32 %112, %struct.rtx_def* %113, %union.tree_node* %114, %struct.rtx_def* %115, i32 1)
  store %struct.rtx_def* %call159, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.160

if.end.160:                                       ; preds = %cond.end.157, %for.end
  %116 = load i32, i32* %mode, align 4
  %117 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %118 = load i32, i32* %mode, align 4
  %idxprom161 = sext i32 %118 to i64
  %arrayidx162 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom161
  %119 = load i16, i16* %arrayidx162, align 2
  %conv163 = zext i16 %119 to i64
  %120 = load i64, i64* %bitsize.addr, align 8
  %sub164 = sub i64 %conv163, %120
  %call165 = call %union.tree_node* @build_int_2_wide(i64 %sub164, i64 0)
  %121 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call166 = call %struct.rtx_def* @expand_shift(i32 83, i32 %116, %struct.rtx_def* %117, %union.tree_node* %call165, %struct.rtx_def* %121, i32 0)
  store %struct.rtx_def* %call166, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.160, %if.end.107, %if.then.97, %if.then.24, %if.then.9
  %122 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %122
}

declare %struct.rtx_def* @gen_extv(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @expand_inc(%struct.rtx_def* %target, %struct.rtx_def* %inc) #0 {
entry:
  %target.addr = alloca %struct.rtx_def*, align 8
  %inc.addr = alloca %struct.rtx_def*, align 8
  %value = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %inc, %struct.rtx_def** %inc.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %2 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %inc.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call = call %struct.rtx_def* @expand_binop(i32 %bf.clear, %struct.optab* %2, %struct.rtx_def* %3, %struct.rtx_def* %4, %struct.rtx_def* %5, i32 0, i32 3)
  store %struct.rtx_def* %call, %struct.rtx_def** %value, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp = icmp ne %struct.rtx_def* %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %call1 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %8, %struct.rtx_def* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.rtx_def* @expand_binop(i32, %struct.optab*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @expand_dec(%struct.rtx_def* %target, %struct.rtx_def* %dec) #0 {
entry:
  %target.addr = alloca %struct.rtx_def*, align 8
  %dec.addr = alloca %struct.rtx_def*, align 8
  %value = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %dec, %struct.rtx_def** %dec.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %2 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dec.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call = call %struct.rtx_def* @expand_binop(i32 %bf.clear, %struct.optab* %2, %struct.rtx_def* %3, %struct.rtx_def* %4, %struct.rtx_def* %5, i32 0, i32 3)
  store %struct.rtx_def* %call, %struct.rtx_def** %value, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp = icmp ne %struct.rtx_def* %6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %call1 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %8, %struct.rtx_def* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.rtx_def* @expand_expr(%union.tree_node*, %struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define %union.tree_node* @make_tree(%union.tree_node* %type, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %type.addr = alloca %union.tree_node*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %t = alloca %union.tree_node*, align 8
  %d = alloca %struct.realvaluetype, align 8
  %u = alloca %union.real_extract, align 8
  %i = alloca i32, align 4
  %units = alloca i32, align 4
  %elt = alloca %struct.rtx_def*, align 8
  %t38 = alloca %union.tree_node*, align 8
  store %union.tree_node* %type, %union.tree_node** %type.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 54, label %sw.bb
    i32 55, label %sw.bb.17
    i32 56, label %sw.bb.37
    i32 75, label %sw.bb.51
    i32 76, label %sw.bb.61
    i32 77, label %sw.bb.72
    i32 78, label %sw.bb.79
    i32 87, label %sw.bb.90
    i32 90, label %sw.bb.101
    i32 89, label %sw.bb.115
    i32 79, label %sw.bb.129
    i32 81, label %sw.bb.150
    i32 120, label %sw.bb.163
    i32 121, label %sw.bb.163
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %3 = load i64, i64* %rtwint, align 8
  %4 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common = bitcast %union.tree_node* %4 to %struct.tree_common*
  %unsigned_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load1 = load i32, i32* %unsigned_flag, align 8
  %bf.lshr = lshr i32 %bf.load1, 13
  %bf.clear2 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear2, 0
  br i1 %tobool, label %land.lhs.true, label %lor.rhs

land.lhs.true:                                    ; preds = %sw.bb
  %5 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %type3 = bitcast %union.tree_node* %5 to %struct.tree_type*
  %mode = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type3, i32 0, i32 6
  %bf.load4 = load i32, i32* %mode, align 4
  %bf.lshr5 = lshr i32 %bf.load4, 9
  %bf.clear6 = and i32 %bf.lshr5, 127
  %idxprom = sext i32 %bf.clear6 to i64
  %arrayidx7 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %6 = load i16, i16* %arrayidx7, align 2
  %conv = zext i16 %6 to i32
  %cmp = icmp slt i32 %conv, 64
  br i1 %cmp, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true, %sw.bb
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtwint11 = bitcast %union.rtunion_def* %arrayidx10 to i64*
  %8 = load i64, i64* %rtwint11, align 8
  %cmp12 = icmp sge i64 %8, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true
  %9 = phi i1 [ true, %land.lhs.true ], [ %cmp12, %lor.rhs ]
  %cond = select i1 %9, i32 0, i32 -1
  %conv14 = sext i32 %cond to i64
  %call = call %union.tree_node* @build_int_2_wide(i64 %3, i64 %conv14)
  store %union.tree_node* %call, %union.tree_node** %t, align 8
  %10 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %11 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common15 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %type16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 1
  store %union.tree_node* %10, %union.tree_node** %type16, align 8
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %12, %union.tree_node** %retval
  br label %return

sw.bb.17:                                         ; preds = %entry
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load18 = load i32, i32* %14, align 8
  %bf.lshr19 = lshr i32 %bf.load18, 16
  %bf.clear20 = and i32 %bf.lshr19, 255
  %cmp21 = icmp eq i32 %bf.clear20, 0
  br i1 %cmp21, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb.17
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 1
  %rtwint25 = bitcast %union.rtunion_def* %arrayidx24 to i64*
  %16 = load i64, i64* %rtwint25, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 2
  %rtwint28 = bitcast %union.rtunion_def* %arrayidx27 to i64*
  %18 = load i64, i64* %rtwint28, align 8
  %call29 = call %union.tree_node* @build_int_2_wide(i64 %16, i64 %18)
  store %union.tree_node* %call29, %union.tree_node** %t, align 8
  %19 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %20 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common30 = bitcast %union.tree_node* %20 to %struct.tree_common*
  %type31 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common30, i32 0, i32 1
  store %union.tree_node* %19, %union.tree_node** %type31, align 8
  br label %if.end

if.else:                                          ; preds = %sw.bb.17
  br label %do.body

do.body:                                          ; preds = %if.else
  %21 = bitcast %union.real_extract* %u to i8*
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 1
  %rtwint34 = bitcast %union.rtunion_def* %arrayidx33 to i64*
  %23 = bitcast i64* %rtwint34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %23, i64 24, i32 8, i1 false)
  %d35 = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %24 = bitcast %struct.realvaluetype* %d to i8*
  %25 = bitcast %struct.realvaluetype* %d35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %24, i8* %25, i64 24, i32 8, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %26 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call36 = call %union.tree_node* @build_real(%union.tree_node* %26, %struct.realvaluetype* byval align 8 %d)
  store %union.tree_node* %call36, %union.tree_node** %t, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then
  %27 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %27, %union.tree_node** %retval
  br label %return

sw.bb.37:                                         ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %t38, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtvec_def**
  %29 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %29, i32 0, i32 0
  %30 = load i32, i32* %num_elem, align 4
  store i32 %30, i32* %units, align 4
  %31 = load i32, i32* %units, align 4
  %sub = sub nsw i32 %31, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.37
  %32 = load i32, i32* %i, align 4
  %cmp41 = icmp sge i32 %32, 0
  br i1 %cmp41, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %33 to i64
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtvec46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtvec_def**
  %35 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec46, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %35, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom43
  %36 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx47, align 8
  store %struct.rtx_def* %36, %struct.rtx_def** %elt, align 8
  %37 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %elt, align 8
  %call48 = call %union.tree_node* @make_tree(%union.tree_node* %37, %struct.rtx_def* %38)
  %39 = load %union.tree_node*, %union.tree_node** %t38, align 8
  %call49 = call %union.tree_node* @tree_cons(%union.tree_node* null, %union.tree_node* %call48, %union.tree_node* %39)
  store %union.tree_node* %call49, %union.tree_node** %t38, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load i32, i32* %i, align 4
  %dec = add nsw i32 %40, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %42 = load %union.tree_node*, %union.tree_node** %t38, align 8
  %call50 = call %union.tree_node* @build_vector(%union.tree_node* %41, %union.tree_node* %42)
  store %union.tree_node* %call50, %union.tree_node** %retval
  br label %return

sw.bb.51:                                         ; preds = %entry
  %43 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %44 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call54 = call %union.tree_node* @make_tree(%union.tree_node* %44, %struct.rtx_def* %46)
  %47 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 1
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %call58 = call %union.tree_node* @make_tree(%union.tree_node* %47, %struct.rtx_def* %49)
  %call59 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 59, %union.tree_node* %43, %union.tree_node* %call54, %union.tree_node* %call58)
  %call60 = call %union.tree_node* @fold(%union.tree_node* %call59)
  store %union.tree_node* %call60, %union.tree_node** %retval
  br label %return

sw.bb.61:                                         ; preds = %entry
  %50 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %51 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %call65 = call %union.tree_node* @make_tree(%union.tree_node* %51, %struct.rtx_def* %53)
  %54 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 1
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  %call69 = call %union.tree_node* @make_tree(%union.tree_node* %54, %struct.rtx_def* %56)
  %call70 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 60, %union.tree_node* %50, %union.tree_node* %call65, %union.tree_node* %call69)
  %call71 = call %union.tree_node* @fold(%union.tree_node* %call70)
  store %union.tree_node* %call71, %union.tree_node** %retval
  br label %return

sw.bb.72:                                         ; preds = %entry
  %57 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %58 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %call76 = call %union.tree_node* @make_tree(%union.tree_node* %58, %struct.rtx_def* %60)
  %call77 = call %union.tree_node* @build1(i32 77, %union.tree_node* %57, %union.tree_node* %call76)
  %call78 = call %union.tree_node* @fold(%union.tree_node* %call77)
  store %union.tree_node* %call78, %union.tree_node** %retval
  br label %return

sw.bb.79:                                         ; preds = %entry
  %61 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %62 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %64 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  %call83 = call %union.tree_node* @make_tree(%union.tree_node* %62, %struct.rtx_def* %64)
  %65 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 1
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %67 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  %call87 = call %union.tree_node* @make_tree(%union.tree_node* %65, %struct.rtx_def* %67)
  %call88 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 61, %union.tree_node* %61, %union.tree_node* %call83, %union.tree_node* %call87)
  %call89 = call %union.tree_node* @fold(%union.tree_node* %call88)
  store %union.tree_node* %call89, %union.tree_node** %retval
  br label %return

sw.bb.90:                                         ; preds = %entry
  %68 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %69 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx93, align 8
  %call94 = call %union.tree_node* @make_tree(%union.tree_node* %69, %struct.rtx_def* %71)
  %72 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 1
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %call98 = call %union.tree_node* @make_tree(%union.tree_node* %72, %struct.rtx_def* %74)
  %call99 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 82, %union.tree_node* %68, %union.tree_node* %call94, %union.tree_node* %call98)
  %call100 = call %union.tree_node* @fold(%union.tree_node* %call99)
  store %union.tree_node* %call100, %union.tree_node** %retval
  br label %return

sw.bb.101:                                        ; preds = %entry
  %75 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %76 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call102 = call %union.tree_node* @unsigned_type(%union.tree_node* %76)
  %77 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call103 = call %union.tree_node* @unsigned_type(%union.tree_node* %77)
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %call107 = call %union.tree_node* @make_tree(%union.tree_node* %call103, %struct.rtx_def* %79)
  %80 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 1
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %call111 = call %union.tree_node* @make_tree(%union.tree_node* %80, %struct.rtx_def* %82)
  %call112 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 83, %union.tree_node* %call102, %union.tree_node* %call107, %union.tree_node* %call111)
  %call113 = call %union.tree_node* @convert(%union.tree_node* %75, %union.tree_node* %call112)
  %call114 = call %union.tree_node* @fold(%union.tree_node* %call113)
  store %union.tree_node* %call114, %union.tree_node** %retval
  br label %return

sw.bb.115:                                        ; preds = %entry
  %83 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %84 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call116 = call %union.tree_node* @signed_type(%union.tree_node* %84)
  %85 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call117 = call %union.tree_node* @signed_type(%union.tree_node* %85)
  %86 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 0
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  %call121 = call %union.tree_node* @make_tree(%union.tree_node* %call117, %struct.rtx_def* %87)
  %88 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 1
  %rtx124 = bitcast %union.rtunion_def* %arrayidx123 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx124, align 8
  %call125 = call %union.tree_node* @make_tree(%union.tree_node* %88, %struct.rtx_def* %90)
  %call126 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 83, %union.tree_node* %call116, %union.tree_node* %call121, %union.tree_node* %call125)
  %call127 = call %union.tree_node* @convert(%union.tree_node* %83, %union.tree_node* %call126)
  %call128 = call %union.tree_node* @fold(%union.tree_node* %call127)
  store %union.tree_node* %call128, %union.tree_node** %retval
  br label %return

sw.bb.129:                                        ; preds = %entry
  %91 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %common130 = bitcast %union.tree_node* %91 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common130, i32 0, i32 2
  %bf.load131 = load i32, i32* %code, align 8
  %bf.clear132 = and i32 %bf.load131, 255
  %cmp133 = icmp ne i32 %bf.clear132, 7
  br i1 %cmp133, label %if.then.135, label %if.else.137

if.then.135:                                      ; preds = %sw.bb.129
  %92 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call136 = call %union.tree_node* @signed_type(%union.tree_node* %92)
  store %union.tree_node* %call136, %union.tree_node** %t, align 8
  br label %if.end.138

if.else.137:                                      ; preds = %sw.bb.129
  %93 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  store %union.tree_node* %93, %union.tree_node** %t, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.137, %if.then.135
  %94 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %95 = load %union.tree_node*, %union.tree_node** %t, align 8
  %96 = load %union.tree_node*, %union.tree_node** %t, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 0
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  %call142 = call %union.tree_node* @make_tree(%union.tree_node* %96, %struct.rtx_def* %98)
  %99 = load %union.tree_node*, %union.tree_node** %t, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 1
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  %call146 = call %union.tree_node* @make_tree(%union.tree_node* %99, %struct.rtx_def* %101)
  %call147 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 62, %union.tree_node* %95, %union.tree_node* %call142, %union.tree_node* %call146)
  %call148 = call %union.tree_node* @convert(%union.tree_node* %94, %union.tree_node* %call147)
  %call149 = call %union.tree_node* @fold(%union.tree_node* %call148)
  store %union.tree_node* %call149, %union.tree_node** %retval
  br label %return

sw.bb.150:                                        ; preds = %entry
  %102 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %call151 = call %union.tree_node* @unsigned_type(%union.tree_node* %102)
  store %union.tree_node* %call151, %union.tree_node** %t, align 8
  %103 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %104 = load %union.tree_node*, %union.tree_node** %t, align 8
  %105 = load %union.tree_node*, %union.tree_node** %t, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 0
  %rtx154 = bitcast %union.rtunion_def* %arrayidx153 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx154, align 8
  %call155 = call %union.tree_node* @make_tree(%union.tree_node* %105, %struct.rtx_def* %107)
  %108 = load %union.tree_node*, %union.tree_node** %t, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 1
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %110 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  %call159 = call %union.tree_node* @make_tree(%union.tree_node* %108, %struct.rtx_def* %110)
  %call160 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 62, %union.tree_node* %104, %union.tree_node* %call155, %union.tree_node* %call159)
  %call161 = call %union.tree_node* @convert(%union.tree_node* %103, %union.tree_node* %call160)
  %call162 = call %union.tree_node* @fold(%union.tree_node* %call161)
  store %union.tree_node* %call162, %union.tree_node** %retval
  br label %return

sw.bb.163:                                        ; preds = %entry, %entry
  %111 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld164 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld164, i32 0, i64 0
  %rtx166 = bitcast %union.rtunion_def* %arrayidx165 to %struct.rtx_def**
  %112 = load %struct.rtx_def*, %struct.rtx_def** %rtx166, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %bf.load167 = load i32, i32* %113, align 8
  %bf.lshr168 = lshr i32 %bf.load167, 16
  %bf.clear169 = and i32 %bf.lshr168, 255
  %114 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %115 = bitcast %struct.rtx_def* %114 to i32*
  %bf.load170 = load i32, i32* %115, align 8
  %bf.clear171 = and i32 %bf.load170, 65535
  %cmp172 = icmp eq i32 %bf.clear171, 121
  %conv173 = zext i1 %cmp172 to i32
  %call174 = call %union.tree_node* @type_for_mode(i32 %bf.clear169, i32 %conv173)
  store %union.tree_node* %call174, %union.tree_node** %t, align 8
  %116 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %117 = load %union.tree_node*, %union.tree_node** %t, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 0
  %rtx177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtx_def**
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtx177, align 8
  %call178 = call %union.tree_node* @make_tree(%union.tree_node* %117, %struct.rtx_def* %119)
  %call179 = call %union.tree_node* @convert(%union.tree_node* %116, %union.tree_node* %call178)
  %call180 = call %union.tree_node* @fold(%union.tree_node* %call179)
  store %union.tree_node* %call180, %union.tree_node** %retval
  br label %return

sw.default:                                       ; preds = %entry
  %call181 = call %union.tree_node* @make_node(i32 120)
  store %union.tree_node* %call181, %union.tree_node** %t, align 8
  %120 = load %union.tree_node*, %union.tree_node** %type.addr, align 8
  %121 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common182 = bitcast %union.tree_node* %121 to %struct.tree_common*
  %type183 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common182, i32 0, i32 1
  store %union.tree_node* %120, %union.tree_node** %type183, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %123 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp = bitcast %union.tree_node* %123 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx184 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %124 = bitcast %union.tree_node** %arrayidx184 to %struct.rtx_def**
  store %struct.rtx_def* %122, %struct.rtx_def** %124, align 8
  %125 = load %union.tree_node*, %union.tree_node** %t, align 8
  %exp185 = bitcast %union.tree_node* %125 to %struct.tree_exp*
  %operands186 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp185, i32 0, i32 2
  %arrayidx187 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands186, i32 0, i64 0
  %126 = bitcast %union.tree_node** %arrayidx187 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %126, align 8
  %127 = load %union.tree_node*, %union.tree_node** %t, align 8
  store %union.tree_node* %127, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.163, %sw.bb.150, %if.end.138, %sw.bb.115, %sw.bb.101, %sw.bb.90, %sw.bb.79, %sw.bb.72, %sw.bb.61, %sw.bb.51, %for.end, %if.end, %lor.end
  %128 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %128
}

declare %union.tree_node* @fold(%union.tree_node*) #1

declare %union.tree_node* @build(i32, %union.tree_node*, ...) #1

declare %union.tree_node* @convert(%union.tree_node*, %union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_mult(i32 %mode, %struct.rtx_def* %op0, %struct.rtx_def* %op1, %struct.rtx_def* %target, i32 %unsignedp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %const_op1 = alloca %struct.rtx_def*, align 8
  %alg = alloca %struct.algorithm, align 4
  %alg2 = alloca %struct.algorithm, align 4
  %val = alloca i64, align 8
  %val_so_far = alloca i64, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %mult_cost = alloca i32, align 4
  %variant = alloca i32, align 4
  %opno = alloca i32, align 4
  %accum = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %nmode = alloca i32, align 4
  %log = alloca i32, align 4
  %preserve = alloca i32, align 4
  %shift_subtarget = alloca %struct.rtx_def*, align 8
  %add_target = alloca %struct.rtx_def*, align 8
  %accum_target = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %const_op1, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 55
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear2 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  %cmp3 = icmp eq i32 %5, 1
  br i1 %cmp3, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* @target_flags, align 4
  %and = and i32 %6, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  %cmp5 = icmp sge i32 32, %cond
  br i1 %cmp5, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true.4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtwint = bitcast %union.rtunion_def* %arrayidx7 to i64*
  %8 = load i64, i64* %rtwint, align 8
  %cmp8 = icmp eq i64 %8, 0
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.6
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 1
  %rtwint11 = bitcast %union.rtunion_def* %arrayidx10 to i64*
  %10 = load i64, i64* %rtwint11, align 8
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %10)
  store %struct.rtx_def* %call, %struct.rtx_def** %const_op1, align 8
  br label %if.end.28

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true.4, %land.lhs.true, %entry
  %11 = load i32, i32* %mode.addr, align 4
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom12
  %12 = load i16, i16* %arrayidx13, align 2
  %conv = zext i16 %12 to i32
  %cmp14 = icmp slt i32 32, %conv
  br i1 %cmp14, label %land.lhs.true.16, label %if.end

land.lhs.true.16:                                 ; preds = %if.else
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load17 = load i32, i32* %14, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 54
  br i1 %cmp19, label %land.lhs.true.21, label %if.end

land.lhs.true.21:                                 ; preds = %land.lhs.true.16
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtwint24 = bitcast %union.rtunion_def* %arrayidx23 to i64*
  %16 = load i64, i64* %rtwint24, align 8
  %cmp25 = icmp slt i64 %16, 0
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %land.lhs.true.21
  store %struct.rtx_def* null, %struct.rtx_def** %const_op1, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.27, %land.lhs.true.21, %land.lhs.true.16, %if.else
  br label %if.end.28

if.end.28:                                        ; preds = %if.end, %if.then
  %17 = load %struct.rtx_def*, %struct.rtx_def** %const_op1, align 8
  %tobool29 = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool29, label %land.lhs.true.30, label %if.end.288

land.lhs.true.30:                                 ; preds = %if.end.28
  %18 = load %struct.rtx_def*, %struct.rtx_def** %const_op1, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load31 = load i32, i32* %19, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 54
  br i1 %cmp33, label %land.lhs.true.35, label %if.end.288

land.lhs.true.35:                                 ; preds = %land.lhs.true.30
  %20 = load i32, i32* %unsignedp.addr, align 4
  %tobool36 = icmp ne i32 %20, 0
  br i1 %tobool36, label %if.then.38, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.35
  %21 = load i32, i32* @flag_trapv, align 4
  %tobool37 = icmp ne i32 %21, 0
  br i1 %tobool37, label %if.end.288, label %if.then.38

if.then.38:                                       ; preds = %lor.lhs.false, %land.lhs.true.35
  %22 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtwint41 = bitcast %union.rtunion_def* %arrayidx40 to i64*
  %23 = load i64, i64* %rtwint41, align 8
  store i64 %23, i64* %val, align 8
  store i32 0, i32* %variant, align 4
  %24 = load i32, i32* %mode.addr, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call42 = call %struct.rtx_def* @force_reg(i32 %24, %struct.rtx_def* %25)
  store %struct.rtx_def* %call42, %struct.rtx_def** %op0.addr, align 8
  %26 = load i32, i32* %mode.addr, align 4
  %27 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call43 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 78, i32 %26, %struct.rtx_def* %27, %struct.rtx_def* %28)
  %call44 = call i32 @rtx_cost(%struct.rtx_def* %call43, i32 47)
  store i32 %call44, i32* %mult_cost, align 4
  %29 = load i32, i32* @add_cost, align 4
  %mul = mul nsw i32 12, %29
  %30 = load i32, i32* %mult_cost, align 4
  %cmp45 = icmp slt i32 %mul, %30
  br i1 %cmp45, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.38
  %31 = load i32, i32* @add_cost, align 4
  %mul47 = mul nsw i32 12, %31
  br label %cond.end

cond.false:                                       ; preds = %if.then.38
  %32 = load i32, i32* %mult_cost, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond48 = phi i32 [ %mul47, %cond.true ], [ %32, %cond.false ]
  store i32 %cond48, i32* %mult_cost, align 4
  %33 = load i64, i64* %val, align 8
  %34 = load i32, i32* %mult_cost, align 4
  call void @synth_mult(%struct.algorithm* %alg, i64 %33, i32 %34)
  %35 = load i32, i32* %mode.addr, align 4
  %idxprom49 = sext i32 %35 to i64
  %arrayidx50 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom49
  %36 = load i16, i16* %arrayidx50, align 2
  %conv51 = zext i16 %36 to i32
  %cmp52 = icmp sge i32 32, %conv51
  br i1 %cmp52, label %if.then.54, label %if.end.73

if.then.54:                                       ; preds = %cond.end
  %37 = load i64, i64* %val, align 8
  %sub = sub nsw i64 0, %37
  %cost = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 0
  %38 = load i16, i16* %cost, align 2
  %conv55 = sext i16 %38 to i32
  %39 = load i32, i32* %mult_cost, align 4
  %cmp56 = icmp slt i32 %conv55, %39
  br i1 %cmp56, label %cond.true.58, label %cond.false.61

cond.true.58:                                     ; preds = %if.then.54
  %cost59 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 0
  %40 = load i16, i16* %cost59, align 2
  %conv60 = sext i16 %40 to i32
  br label %cond.end.62

cond.false.61:                                    ; preds = %if.then.54
  %41 = load i32, i32* %mult_cost, align 4
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.61, %cond.true.58
  %cond63 = phi i32 [ %conv60, %cond.true.58 ], [ %41, %cond.false.61 ]
  %42 = load i32, i32* @negate_cost, align 4
  %sub64 = sub nsw i32 %cond63, %42
  call void @synth_mult(%struct.algorithm* %alg2, i64 %sub, i32 %sub64)
  %cost65 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg2, i32 0, i32 0
  %43 = load i16, i16* %cost65, align 2
  %conv66 = sext i16 %43 to i32
  %44 = load i32, i32* @negate_cost, align 4
  %add = add nsw i32 %conv66, %44
  %cost67 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 0
  %45 = load i16, i16* %cost67, align 2
  %conv68 = sext i16 %45 to i32
  %cmp69 = icmp slt i32 %add, %conv68
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %cond.end.62
  %46 = bitcast %struct.algorithm* %alg to i8*
  %47 = bitcast %struct.algorithm* %alg2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %46, i8* %47, i64 324, i32 4, i1 false)
  store i32 1, i32* %variant, align 4
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.71, %cond.end.62
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %cond.end
  %48 = load i64, i64* %val, align 8
  %sub74 = sub nsw i64 %48, 1
  %cost75 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 0
  %49 = load i16, i16* %cost75, align 2
  %conv76 = sext i16 %49 to i32
  %50 = load i32, i32* %mult_cost, align 4
  %cmp77 = icmp slt i32 %conv76, %50
  br i1 %cmp77, label %cond.true.79, label %cond.false.82

cond.true.79:                                     ; preds = %if.end.73
  %cost80 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 0
  %51 = load i16, i16* %cost80, align 2
  %conv81 = sext i16 %51 to i32
  br label %cond.end.83

cond.false.82:                                    ; preds = %if.end.73
  %52 = load i32, i32* %mult_cost, align 4
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.true.79
  %cond84 = phi i32 [ %conv81, %cond.true.79 ], [ %52, %cond.false.82 ]
  %53 = load i32, i32* @add_cost, align 4
  %sub85 = sub nsw i32 %cond84, %53
  call void @synth_mult(%struct.algorithm* %alg2, i64 %sub74, i32 %sub85)
  %cost86 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg2, i32 0, i32 0
  %54 = load i16, i16* %cost86, align 2
  %conv87 = sext i16 %54 to i32
  %55 = load i32, i32* @add_cost, align 4
  %add88 = add nsw i32 %conv87, %55
  %cost89 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 0
  %56 = load i16, i16* %cost89, align 2
  %conv90 = sext i16 %56 to i32
  %cmp91 = icmp slt i32 %add88, %conv90
  br i1 %cmp91, label %if.then.93, label %if.end.94

if.then.93:                                       ; preds = %cond.end.83
  %57 = bitcast %struct.algorithm* %alg to i8*
  %58 = bitcast %struct.algorithm* %alg2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 324, i32 4, i1 false)
  store i32 2, i32* %variant, align 4
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.93, %cond.end.83
  %cost95 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 0
  %59 = load i16, i16* %cost95, align 2
  %conv96 = sext i16 %59 to i32
  %60 = load i32, i32* %mult_cost, align 4
  %cmp97 = icmp slt i32 %conv96, %60
  br i1 %cmp97, label %if.then.99, label %if.end.287

if.then.99:                                       ; preds = %if.end.94
  %61 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call100 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %61, i32 0)
  store %struct.rtx_def* %call100, %struct.rtx_def** %op0.addr, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load101 = load i32, i32* %63, align 8
  %bf.clear102 = and i32 %bf.load101, 65535
  %cmp103 = icmp eq i32 %bf.clear102, 66
  br i1 %cmp103, label %if.then.105, label %if.end.107

if.then.105:                                      ; preds = %if.then.99
  %64 = load i32, i32* %mode.addr, align 4
  %65 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call106 = call %struct.rtx_def* @force_reg(i32 %64, %struct.rtx_def* %65)
  store %struct.rtx_def* %call106, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.105, %if.then.99
  %op = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 2
  %arrayidx108 = getelementptr inbounds [64 x i32], [64 x i32]* %op, i32 0, i64 0
  %66 = load i32, i32* %arrayidx108, align 4
  %cmp109 = icmp eq i32 %66, 0
  br i1 %cmp109, label %if.then.111, label %if.else.113

if.then.111:                                      ; preds = %if.end.107
  %67 = load i32, i32* %mode.addr, align 4
  %68 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call112 = call %struct.rtx_def* @copy_to_mode_reg(i32 %67, %struct.rtx_def* %68)
  store %struct.rtx_def* %call112, %struct.rtx_def** %accum, align 8
  store i64 0, i64* %val_so_far, align 8
  br label %if.end.122

if.else.113:                                      ; preds = %if.end.107
  %op114 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 2
  %arrayidx115 = getelementptr inbounds [64 x i32], [64 x i32]* %op114, i32 0, i64 0
  %69 = load i32, i32* %arrayidx115, align 4
  %cmp116 = icmp eq i32 %69, 1
  br i1 %cmp116, label %if.then.118, label %if.else.120

if.then.118:                                      ; preds = %if.else.113
  %70 = load i32, i32* %mode.addr, align 4
  %71 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call119 = call %struct.rtx_def* @copy_to_mode_reg(i32 %70, %struct.rtx_def* %71)
  store %struct.rtx_def* %call119, %struct.rtx_def** %accum, align 8
  store i64 1, i64* %val_so_far, align 8
  br label %if.end.121

if.else.120:                                      ; preds = %if.else.113
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2446, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_mult, i32 0, i32 0)) #4
  unreachable

if.end.121:                                       ; preds = %if.then.118
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.111
  store i32 1, i32* %opno, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.122
  %72 = load i32, i32* %opno, align 4
  %ops = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 1
  %73 = load i16, i16* %ops, align 2
  %conv123 = sext i16 %73 to i32
  %cmp124 = icmp slt i32 %72, %conv123
  br i1 %cmp124, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %74 = load i32, i32* %opno, align 4
  %idxprom126 = sext i32 %74 to i64
  %log127 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 3
  %arrayidx128 = getelementptr inbounds [64 x i8], [64 x i8]* %log127, i32 0, i64 %idxprom126
  %75 = load i8, i8* %arrayidx128, align 1
  %conv129 = sext i8 %75 to i32
  store i32 %conv129, i32* %log, align 4
  %call130 = call i32 @preserve_subexpressions_p()
  store i32 %call130, i32* %preserve, align 4
  %76 = load i32, i32* %preserve, align 4
  %tobool131 = icmp ne i32 %76, 0
  br i1 %tobool131, label %cond.true.132, label %cond.false.133

cond.true.132:                                    ; preds = %for.body
  br label %cond.end.134

cond.false.133:                                   ; preds = %for.body
  %77 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.133, %cond.true.132
  %cond135 = phi %struct.rtx_def* [ null, %cond.true.132 ], [ %77, %cond.false.133 ]
  store %struct.rtx_def* %cond135, %struct.rtx_def** %shift_subtarget, align 8
  %78 = load i32, i32* %opno, align 4
  %ops136 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 1
  %79 = load i16, i16* %ops136, align 2
  %conv137 = sext i16 %79 to i32
  %sub138 = sub nsw i32 %conv137, 1
  %cmp139 = icmp eq i32 %78, %sub138
  br i1 %cmp139, label %land.lhs.true.141, label %cond.false.150

land.lhs.true.141:                                ; preds = %cond.end.134
  %80 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp142 = icmp ne %struct.rtx_def* %80, null
  br i1 %cmp142, label %land.lhs.true.144, label %cond.false.150

land.lhs.true.144:                                ; preds = %land.lhs.true.141
  %81 = load i32, i32* %variant, align 4
  %cmp145 = icmp ne i32 %81, 2
  br i1 %cmp145, label %land.lhs.true.147, label %cond.false.150

land.lhs.true.147:                                ; preds = %land.lhs.true.144
  %82 = load i32, i32* %preserve, align 4
  %tobool148 = icmp ne i32 %82, 0
  br i1 %tobool148, label %cond.false.150, label %cond.true.149

cond.true.149:                                    ; preds = %land.lhs.true.147
  %83 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end.151

cond.false.150:                                   ; preds = %land.lhs.true.147, %land.lhs.true.144, %land.lhs.true.141, %cond.end.134
  br label %cond.end.151

cond.end.151:                                     ; preds = %cond.false.150, %cond.true.149
  %cond152 = phi %struct.rtx_def* [ %83, %cond.true.149 ], [ null, %cond.false.150 ]
  store %struct.rtx_def* %cond152, %struct.rtx_def** %add_target, align 8
  %84 = load i32, i32* %preserve, align 4
  %tobool153 = icmp ne i32 %84, 0
  br i1 %tobool153, label %cond.true.154, label %cond.false.155

cond.true.154:                                    ; preds = %cond.end.151
  br label %cond.end.156

cond.false.155:                                   ; preds = %cond.end.151
  %85 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  br label %cond.end.156

cond.end.156:                                     ; preds = %cond.false.155, %cond.true.154
  %cond157 = phi %struct.rtx_def* [ null, %cond.true.154 ], [ %85, %cond.false.155 ]
  store %struct.rtx_def* %cond157, %struct.rtx_def** %accum_target, align 8
  %86 = load i32, i32* %opno, align 4
  %idxprom158 = sext i32 %86 to i64
  %op159 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %alg, i32 0, i32 2
  %arrayidx160 = getelementptr inbounds [64 x i32], [64 x i32]* %op159, i32 0, i64 %idxprom158
  %87 = load i32, i32* %arrayidx160, align 4
  switch i32 %87, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb.164
    i32 4, label %sw.bb.178
    i32 7, label %sw.bb.192
    i32 8, label %sw.bb.206
    i32 5, label %sw.bb.220
    i32 6, label %sw.bb.234
  ]

sw.bb:                                            ; preds = %cond.end.156
  %88 = load i32, i32* %mode.addr, align 4
  %89 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %90 = load i32, i32* %log, align 4
  %conv161 = sext i32 %90 to i64
  %call162 = call %union.tree_node* @build_int_2_wide(i64 %conv161, i64 0)
  %call163 = call %struct.rtx_def* @expand_shift(i32 82, i32 %88, %struct.rtx_def* %89, %union.tree_node* %call162, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call163, %struct.rtx_def** %accum, align 8
  %91 = load i32, i32* %log, align 4
  %92 = load i64, i64* %val_so_far, align 8
  %sh_prom = zext i32 %91 to i64
  %shl = shl i64 %92, %sh_prom
  store i64 %shl, i64* %val_so_far, align 8
  br label %sw.epilog

sw.bb.164:                                        ; preds = %cond.end.156
  %93 = load i32, i32* %mode.addr, align 4
  %94 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %95 = load i32, i32* %log, align 4
  %conv165 = sext i32 %95 to i64
  %call166 = call %union.tree_node* @build_int_2_wide(i64 %conv165, i64 0)
  %call167 = call %struct.rtx_def* @expand_shift(i32 82, i32 %93, %struct.rtx_def* %94, %union.tree_node* %call166, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call167, %struct.rtx_def** %tem, align 8
  %96 = load i32, i32* %mode.addr, align 4
  %97 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call168 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %96, %struct.rtx_def* %97, %struct.rtx_def* %98)
  %99 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  %tobool169 = icmp ne %struct.rtx_def* %99, null
  br i1 %tobool169, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %sw.bb.164
  %100 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  br label %cond.end.172

cond.false.171:                                   ; preds = %sw.bb.164
  %101 = load %struct.rtx_def*, %struct.rtx_def** %accum_target, align 8
  br label %cond.end.172

cond.end.172:                                     ; preds = %cond.false.171, %cond.true.170
  %cond173 = phi %struct.rtx_def* [ %100, %cond.true.170 ], [ %101, %cond.false.171 ]
  %call174 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call168, %struct.rtx_def* %cond173)
  store %struct.rtx_def* %call174, %struct.rtx_def** %accum, align 8
  %102 = load i32, i32* %log, align 4
  %sh_prom175 = zext i32 %102 to i64
  %shl176 = shl i64 1, %sh_prom175
  %103 = load i64, i64* %val_so_far, align 8
  %add177 = add nsw i64 %103, %shl176
  store i64 %add177, i64* %val_so_far, align 8
  br label %sw.epilog

sw.bb.178:                                        ; preds = %cond.end.156
  %104 = load i32, i32* %mode.addr, align 4
  %105 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %106 = load i32, i32* %log, align 4
  %conv179 = sext i32 %106 to i64
  %call180 = call %union.tree_node* @build_int_2_wide(i64 %conv179, i64 0)
  %call181 = call %struct.rtx_def* @expand_shift(i32 82, i32 %104, %struct.rtx_def* %105, %union.tree_node* %call180, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call181, %struct.rtx_def** %tem, align 8
  %107 = load i32, i32* %mode.addr, align 4
  %108 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call182 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %107, %struct.rtx_def* %108, %struct.rtx_def* %109)
  %110 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  %tobool183 = icmp ne %struct.rtx_def* %110, null
  br i1 %tobool183, label %cond.true.184, label %cond.false.185

cond.true.184:                                    ; preds = %sw.bb.178
  %111 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  br label %cond.end.186

cond.false.185:                                   ; preds = %sw.bb.178
  %112 = load %struct.rtx_def*, %struct.rtx_def** %accum_target, align 8
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.185, %cond.true.184
  %cond187 = phi %struct.rtx_def* [ %111, %cond.true.184 ], [ %112, %cond.false.185 ]
  %call188 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call182, %struct.rtx_def* %cond187)
  store %struct.rtx_def* %call188, %struct.rtx_def** %accum, align 8
  %113 = load i32, i32* %log, align 4
  %sh_prom189 = zext i32 %113 to i64
  %shl190 = shl i64 1, %sh_prom189
  %114 = load i64, i64* %val_so_far, align 8
  %sub191 = sub nsw i64 %114, %shl190
  store i64 %sub191, i64* %val_so_far, align 8
  br label %sw.epilog

sw.bb.192:                                        ; preds = %cond.end.156
  %115 = load i32, i32* %mode.addr, align 4
  %116 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %117 = load i32, i32* %log, align 4
  %conv193 = sext i32 %117 to i64
  %call194 = call %union.tree_node* @build_int_2_wide(i64 %conv193, i64 0)
  %118 = load %struct.rtx_def*, %struct.rtx_def** %shift_subtarget, align 8
  %call195 = call %struct.rtx_def* @expand_shift(i32 82, i32 %115, %struct.rtx_def* %116, %union.tree_node* %call194, %struct.rtx_def* %118, i32 0)
  store %struct.rtx_def* %call195, %struct.rtx_def** %accum, align 8
  %119 = load i32, i32* %mode.addr, align 4
  %120 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call196 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %119, %struct.rtx_def* %120, %struct.rtx_def* %121)
  %122 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  %tobool197 = icmp ne %struct.rtx_def* %122, null
  br i1 %tobool197, label %cond.true.198, label %cond.false.199

cond.true.198:                                    ; preds = %sw.bb.192
  %123 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  br label %cond.end.200

cond.false.199:                                   ; preds = %sw.bb.192
  %124 = load %struct.rtx_def*, %struct.rtx_def** %accum_target, align 8
  br label %cond.end.200

cond.end.200:                                     ; preds = %cond.false.199, %cond.true.198
  %cond201 = phi %struct.rtx_def* [ %123, %cond.true.198 ], [ %124, %cond.false.199 ]
  %call202 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call196, %struct.rtx_def* %cond201)
  store %struct.rtx_def* %call202, %struct.rtx_def** %accum, align 8
  %125 = load i64, i64* %val_so_far, align 8
  %126 = load i32, i32* %log, align 4
  %sh_prom203 = zext i32 %126 to i64
  %shl204 = shl i64 %125, %sh_prom203
  %add205 = add nsw i64 %shl204, 1
  store i64 %add205, i64* %val_so_far, align 8
  br label %sw.epilog

sw.bb.206:                                        ; preds = %cond.end.156
  %127 = load i32, i32* %mode.addr, align 4
  %128 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %129 = load i32, i32* %log, align 4
  %conv207 = sext i32 %129 to i64
  %call208 = call %union.tree_node* @build_int_2_wide(i64 %conv207, i64 0)
  %130 = load %struct.rtx_def*, %struct.rtx_def** %shift_subtarget, align 8
  %call209 = call %struct.rtx_def* @expand_shift(i32 82, i32 %127, %struct.rtx_def* %128, %union.tree_node* %call208, %struct.rtx_def* %130, i32 0)
  store %struct.rtx_def* %call209, %struct.rtx_def** %accum, align 8
  %131 = load i32, i32* %mode.addr, align 4
  %132 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call210 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %131, %struct.rtx_def* %132, %struct.rtx_def* %133)
  %134 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  %tobool211 = icmp ne %struct.rtx_def* %134, null
  br i1 %tobool211, label %cond.true.212, label %cond.false.213

cond.true.212:                                    ; preds = %sw.bb.206
  %135 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  br label %cond.end.214

cond.false.213:                                   ; preds = %sw.bb.206
  %136 = load %struct.rtx_def*, %struct.rtx_def** %accum_target, align 8
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.213, %cond.true.212
  %cond215 = phi %struct.rtx_def* [ %135, %cond.true.212 ], [ %136, %cond.false.213 ]
  %call216 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call210, %struct.rtx_def* %cond215)
  store %struct.rtx_def* %call216, %struct.rtx_def** %accum, align 8
  %137 = load i64, i64* %val_so_far, align 8
  %138 = load i32, i32* %log, align 4
  %sh_prom217 = zext i32 %138 to i64
  %shl218 = shl i64 %137, %sh_prom217
  %sub219 = sub nsw i64 %shl218, 1
  store i64 %sub219, i64* %val_so_far, align 8
  br label %sw.epilog

sw.bb.220:                                        ; preds = %cond.end.156
  %139 = load i32, i32* %mode.addr, align 4
  %140 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %141 = load i32, i32* %log, align 4
  %conv221 = sext i32 %141 to i64
  %call222 = call %union.tree_node* @build_int_2_wide(i64 %conv221, i64 0)
  %call223 = call %struct.rtx_def* @expand_shift(i32 82, i32 %139, %struct.rtx_def* %140, %union.tree_node* %call222, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call223, %struct.rtx_def** %tem, align 8
  %142 = load i32, i32* %mode.addr, align 4
  %143 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call224 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %142, %struct.rtx_def* %143, %struct.rtx_def* %144)
  %145 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  %tobool225 = icmp ne %struct.rtx_def* %145, null
  br i1 %tobool225, label %cond.true.226, label %cond.false.227

cond.true.226:                                    ; preds = %sw.bb.220
  %146 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  br label %cond.end.228

cond.false.227:                                   ; preds = %sw.bb.220
  %147 = load %struct.rtx_def*, %struct.rtx_def** %accum_target, align 8
  br label %cond.end.228

cond.end.228:                                     ; preds = %cond.false.227, %cond.true.226
  %cond229 = phi %struct.rtx_def* [ %146, %cond.true.226 ], [ %147, %cond.false.227 ]
  %call230 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call224, %struct.rtx_def* %cond229)
  store %struct.rtx_def* %call230, %struct.rtx_def** %accum, align 8
  %148 = load i64, i64* %val_so_far, align 8
  %149 = load i32, i32* %log, align 4
  %sh_prom231 = zext i32 %149 to i64
  %shl232 = shl i64 %148, %sh_prom231
  %150 = load i64, i64* %val_so_far, align 8
  %add233 = add nsw i64 %150, %shl232
  store i64 %add233, i64* %val_so_far, align 8
  br label %sw.epilog

sw.bb.234:                                        ; preds = %cond.end.156
  %151 = load i32, i32* %mode.addr, align 4
  %152 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %153 = load i32, i32* %log, align 4
  %conv235 = sext i32 %153 to i64
  %call236 = call %union.tree_node* @build_int_2_wide(i64 %conv235, i64 0)
  %call237 = call %struct.rtx_def* @expand_shift(i32 82, i32 %151, %struct.rtx_def* %152, %union.tree_node* %call236, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call237, %struct.rtx_def** %tem, align 8
  %154 = load i32, i32* %mode.addr, align 4
  %155 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %156 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %call238 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %154, %struct.rtx_def* %155, %struct.rtx_def* %156)
  %157 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  %tobool239 = icmp ne %struct.rtx_def* %157, null
  br i1 %tobool239, label %cond.true.240, label %cond.false.241

cond.true.240:                                    ; preds = %sw.bb.234
  %158 = load %struct.rtx_def*, %struct.rtx_def** %add_target, align 8
  br label %cond.end.247

cond.false.241:                                   ; preds = %sw.bb.234
  %159 = load i32, i32* %preserve, align 4
  %tobool242 = icmp ne i32 %159, 0
  br i1 %tobool242, label %cond.true.243, label %cond.false.244

cond.true.243:                                    ; preds = %cond.false.241
  br label %cond.end.245

cond.false.244:                                   ; preds = %cond.false.241
  %160 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.244, %cond.true.243
  %cond246 = phi %struct.rtx_def* [ null, %cond.true.243 ], [ %160, %cond.false.244 ]
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.end.245, %cond.true.240
  %cond248 = phi %struct.rtx_def* [ %158, %cond.true.240 ], [ %cond246, %cond.end.245 ]
  %call249 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call238, %struct.rtx_def* %cond248)
  store %struct.rtx_def* %call249, %struct.rtx_def** %accum, align 8
  %161 = load i64, i64* %val_so_far, align 8
  %162 = load i32, i32* %log, align 4
  %sh_prom250 = zext i32 %162 to i64
  %shl251 = shl i64 %161, %sh_prom250
  %163 = load i64, i64* %val_so_far, align 8
  %sub252 = sub nsw i64 %shl251, %163
  store i64 %sub252, i64* %val_so_far, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %cond.end.156
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2524, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_mult, i32 0, i32 0)) #4
  unreachable

sw.epilog:                                        ; preds = %cond.end.247, %cond.end.228, %cond.end.214, %cond.end.200, %cond.end.186, %cond.end.172, %sw.bb
  %164 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %164, %struct.rtx_def** %tem, align 8
  %165 = load i32, i32* %mode.addr, align 4
  store i32 %165, i32* %nmode, align 4
  %166 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %167 = bitcast %struct.rtx_def* %166 to i32*
  %bf.load253 = load i32, i32* %167, align 8
  %bf.clear254 = and i32 %bf.load253, 65535
  %cmp255 = icmp eq i32 %bf.clear254, 63
  br i1 %cmp255, label %if.then.257, label %if.end.264

if.then.257:                                      ; preds = %sw.epilog
  %168 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %fld258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %168, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld258, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx259 to %struct.rtx_def**
  %169 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %170 = bitcast %struct.rtx_def* %169 to i32*
  %bf.load260 = load i32, i32* %170, align 8
  %bf.lshr261 = lshr i32 %bf.load260, 16
  %bf.clear262 = and i32 %bf.lshr261, 255
  store i32 %bf.clear262, i32* %nmode, align 4
  %171 = load i32, i32* %nmode, align 4
  %172 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call263 = call %struct.rtx_def* @gen_lowpart(i32 %171, %struct.rtx_def* %172)
  store %struct.rtx_def* %call263, %struct.rtx_def** %tem, align 8
  br label %if.end.264

if.end.264:                                       ; preds = %if.then.257, %sw.epilog
  %call265 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call265, %struct.rtx_def** %insn, align 8
  %173 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %174 = load i32, i32* %nmode, align 4
  %175 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %176 = load i64, i64* %val_so_far, align 8
  %call266 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %176)
  %call267 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 78, i32 %174, %struct.rtx_def* %175, %struct.rtx_def* %call266)
  %call268 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %173, i32 4, %struct.rtx_def* %call267)
  br label %for.inc

for.inc:                                          ; preds = %if.end.264
  %177 = load i32, i32* %opno, align 4
  %inc = add nsw i32 %177, 1
  store i32 %inc, i32* %opno, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %178 = load i32, i32* %variant, align 4
  %cmp269 = icmp eq i32 %178, 1
  br i1 %cmp269, label %if.then.271, label %if.else.274

if.then.271:                                      ; preds = %for.end
  %179 = load i64, i64* %val_so_far, align 8
  %sub272 = sub nsw i64 0, %179
  store i64 %sub272, i64* %val_so_far, align 8
  %180 = load i32, i32* %mode.addr, align 4
  %181 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %182 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %183 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call273 = call %struct.rtx_def* @expand_unop(i32 %180, %struct.optab* %181, %struct.rtx_def* %182, %struct.rtx_def* %183, i32 0)
  store %struct.rtx_def* %call273, %struct.rtx_def** %accum, align 8
  br label %if.end.282

if.else.274:                                      ; preds = %for.end
  %184 = load i32, i32* %variant, align 4
  %cmp275 = icmp eq i32 %184, 2
  br i1 %cmp275, label %if.then.277, label %if.end.281

if.then.277:                                      ; preds = %if.else.274
  %185 = load i64, i64* %val_so_far, align 8
  %add278 = add nsw i64 %185, 1
  store i64 %add278, i64* %val_so_far, align 8
  %186 = load i32, i32* %mode.addr, align 4
  %187 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  %188 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call279 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %186, %struct.rtx_def* %187, %struct.rtx_def* %188)
  %189 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call280 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call279, %struct.rtx_def* %189)
  store %struct.rtx_def* %call280, %struct.rtx_def** %accum, align 8
  br label %if.end.281

if.end.281:                                       ; preds = %if.then.277, %if.else.274
  br label %if.end.282

if.end.282:                                       ; preds = %if.end.281, %if.then.271
  %190 = load i64, i64* %val, align 8
  %191 = load i64, i64* %val_so_far, align 8
  %cmp283 = icmp ne i64 %190, %191
  br i1 %cmp283, label %if.then.285, label %if.end.286

if.then.285:                                      ; preds = %if.end.282
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2558, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_mult, i32 0, i32 0)) #4
  unreachable

if.end.286:                                       ; preds = %if.end.282
  %192 = load %struct.rtx_def*, %struct.rtx_def** %accum, align 8
  store %struct.rtx_def* %192, %struct.rtx_def** %retval
  br label %return

if.end.287:                                       ; preds = %if.end.94
  br label %if.end.288

if.end.288:                                       ; preds = %if.end.287, %lor.lhs.false, %land.lhs.true.30, %if.end.28
  %193 = load i32, i32* %mode.addr, align 4
  %194 = load i32, i32* %unsignedp.addr, align 4
  %tobool289 = icmp ne i32 %194, 0
  br i1 %tobool289, label %cond.false.298, label %land.lhs.true.290

land.lhs.true.290:                                ; preds = %if.end.288
  %195 = load i32, i32* @flag_trapv, align 4
  %tobool291 = icmp ne i32 %195, 0
  br i1 %tobool291, label %land.lhs.true.292, label %cond.false.298

land.lhs.true.292:                                ; preds = %land.lhs.true.290
  %196 = load i32, i32* %mode.addr, align 4
  %idxprom293 = sext i32 %196 to i64
  %arrayidx294 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom293
  %197 = load i32, i32* %arrayidx294, align 4
  %cmp295 = icmp eq i32 %197, 1
  br i1 %cmp295, label %cond.true.297, label %cond.false.298

cond.true.297:                                    ; preds = %land.lhs.true.292
  %198 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  br label %cond.end.299

cond.false.298:                                   ; preds = %land.lhs.true.292, %land.lhs.true.290, %if.end.288
  %199 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  br label %cond.end.299

cond.end.299:                                     ; preds = %cond.false.298, %cond.true.297
  %cond300 = phi %struct.optab* [ %198, %cond.true.297 ], [ %199, %cond.false.298 ]
  %200 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %203 = load i32, i32* %unsignedp.addr, align 4
  %call301 = call %struct.rtx_def* @expand_binop(i32 %193, %struct.optab* %cond300, %struct.rtx_def* %200, %struct.rtx_def* %201, %struct.rtx_def* %202, i32 %203, i32 3)
  store %struct.rtx_def* %call301, %struct.rtx_def** %op0.addr, align 8
  %204 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %cmp302 = icmp eq %struct.rtx_def* %204, null
  br i1 %cmp302, label %if.then.304, label %if.end.305

if.then.304:                                      ; preds = %cond.end.299
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2572, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_mult, i32 0, i32 0)) #4
  unreachable

if.end.305:                                       ; preds = %cond.end.299
  %205 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %205, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.305, %if.end.286
  %206 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %206
}

; Function Attrs: nounwind uwtable
define internal void @synth_mult(%struct.algorithm* %alg_out, i64 %t, i32 %cost_limit) #0 {
entry:
  %alg_out.addr = alloca %struct.algorithm*, align 8
  %t.addr = alloca i64, align 8
  %cost_limit.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %alg_in = alloca %struct.algorithm*, align 8
  %best_alg = alloca %struct.algorithm*, align 8
  %cost = alloca i32, align 4
  %q = alloca i64, align 8
  %x = alloca %struct.algorithm*, align 8
  %w = alloca i64, align 8
  %x68 = alloca %struct.algorithm*, align 8
  %x87 = alloca %struct.algorithm*, align 8
  %d = alloca i64, align 8
  %x140 = alloca %struct.algorithm*, align 8
  %x192 = alloca %struct.algorithm*, align 8
  %x235 = alloca %struct.algorithm*, align 8
  %x272 = alloca %struct.algorithm*, align 8
  store %struct.algorithm* %alg_out, %struct.algorithm** %alg_out.addr, align 8
  store i64 %t, i64* %t.addr, align 8
  store i32 %cost_limit, i32* %cost_limit.addr, align 4
  %0 = load i32, i32* %cost_limit.addr, align 4
  %conv = trunc i32 %0 to i16
  %1 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %cost1 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %1, i32 0, i32 0
  store i16 %conv, i16* %cost1, align 2
  %2 = load i32, i32* %cost_limit.addr, align 4
  %cmp = icmp sle i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %t.addr, align 8
  %cmp3 = icmp eq i64 %3, 1
  br i1 %cmp3, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %4 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %ops = getelementptr inbounds %struct.algorithm, %struct.algorithm* %4, i32 0, i32 1
  store i16 1, i16* %ops, align 2
  %5 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %cost6 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %5, i32 0, i32 0
  store i16 0, i16* %cost6, align 2
  %6 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %op = getelementptr inbounds %struct.algorithm, %struct.algorithm* %6, i32 0, i32 2
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %op, i32 0, i64 0
  store i32 1, i32* %arrayidx, align 4
  br label %return

if.end.7:                                         ; preds = %if.end
  %7 = load i64, i64* %t.addr, align 8
  %cmp8 = icmp eq i64 %7, 0
  br i1 %cmp8, label %if.then.10, label %if.end.19

if.then.10:                                       ; preds = %if.end.7
  %8 = load i32, i32* @zero_cost, align 4
  %9 = load i32, i32* %cost_limit.addr, align 4
  %cmp11 = icmp sge i32 %8, %9
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then.10
  br label %return

if.else:                                          ; preds = %if.then.10
  %10 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %ops14 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %10, i32 0, i32 1
  store i16 1, i16* %ops14, align 2
  %11 = load i32, i32* @zero_cost, align 4
  %conv15 = trunc i32 %11 to i16
  %12 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %cost16 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %12, i32 0, i32 0
  store i16 %conv15, i16* %cost16, align 2
  %13 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %op17 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %13, i32 0, i32 2
  %arrayidx18 = getelementptr inbounds [64 x i32], [64 x i32]* %op17, i32 0, i64 0
  store i32 0, i32* %arrayidx18, align 4
  br label %return

if.end.19:                                        ; preds = %if.end.7
  %14 = alloca i8, i64 324
  %15 = bitcast i8* %14 to %struct.algorithm*
  store %struct.algorithm* %15, %struct.algorithm** %alg_in, align 8
  %16 = alloca i8, i64 324
  %17 = bitcast i8* %16 to %struct.algorithm*
  store %struct.algorithm* %17, %struct.algorithm** %best_alg, align 8
  %18 = load i64, i64* %t.addr, align 8
  %and = and i64 %18, 1
  %cmp20 = icmp eq i64 %and, 0
  br i1 %cmp20, label %if.then.22, label %if.end.45

if.then.22:                                       ; preds = %if.end.19
  %19 = load i64, i64* %t.addr, align 8
  %20 = load i64, i64* %t.addr, align 8
  %sub = sub i64 0, %20
  %and23 = and i64 %19, %sub
  %call = call i32 @floor_log2_wide(i64 %and23)
  store i32 %call, i32* %m, align 4
  %21 = load i32, i32* %m, align 4
  %22 = load i32, i32* @target_flags, align 4
  %and24 = and i32 %22, 33554432
  %tobool = icmp ne i32 %and24, 0
  %cond = select i1 %tobool, i32 64, i32 32
  %cmp25 = icmp slt i32 %21, %cond
  br i1 %cmp25, label %if.then.27, label %if.end.44

if.then.27:                                       ; preds = %if.then.22
  %23 = load i64, i64* %t.addr, align 8
  %24 = load i32, i32* %m, align 4
  %sh_prom = zext i32 %24 to i64
  %shr = lshr i64 %23, %sh_prom
  store i64 %shr, i64* %q, align 8
  %25 = load i32, i32* %m, align 4
  %idxprom = sext i32 %25 to i64
  %arrayidx28 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom
  %26 = load i32, i32* %arrayidx28, align 4
  store i32 %26, i32* %cost, align 4
  %27 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %28 = load i64, i64* %q, align 8
  %29 = load i32, i32* %cost_limit.addr, align 4
  %30 = load i32, i32* %cost, align 4
  %sub29 = sub nsw i32 %29, %30
  call void @synth_mult(%struct.algorithm* %27, i64 %28, i32 %sub29)
  %31 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %cost30 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %31, i32 0, i32 0
  %32 = load i16, i16* %cost30, align 2
  %conv31 = sext i16 %32 to i32
  %33 = load i32, i32* %cost, align 4
  %add = add nsw i32 %33, %conv31
  store i32 %add, i32* %cost, align 4
  %34 = load i32, i32* %cost, align 4
  %35 = load i32, i32* %cost_limit.addr, align 4
  %cmp32 = icmp slt i32 %34, %35
  br i1 %cmp32, label %if.then.34, label %if.end.43

if.then.34:                                       ; preds = %if.then.27
  %36 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  store %struct.algorithm* %36, %struct.algorithm** %x, align 8
  %37 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  store %struct.algorithm* %37, %struct.algorithm** %alg_in, align 8
  %38 = load %struct.algorithm*, %struct.algorithm** %x, align 8
  store %struct.algorithm* %38, %struct.algorithm** %best_alg, align 8
  %39 = load i32, i32* %m, align 4
  %conv35 = trunc i32 %39 to i8
  %40 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops36 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %40, i32 0, i32 1
  %41 = load i16, i16* %ops36, align 2
  %idxprom37 = sext i16 %41 to i64
  %42 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %log = getelementptr inbounds %struct.algorithm, %struct.algorithm* %42, i32 0, i32 3
  %arrayidx38 = getelementptr inbounds [64 x i8], [64 x i8]* %log, i32 0, i64 %idxprom37
  store i8 %conv35, i8* %arrayidx38, align 1
  %43 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops39 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %43, i32 0, i32 1
  %44 = load i16, i16* %ops39, align 2
  %idxprom40 = sext i16 %44 to i64
  %45 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %op41 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %45, i32 0, i32 2
  %arrayidx42 = getelementptr inbounds [64 x i32], [64 x i32]* %op41, i32 0, i64 %idxprom40
  store i32 2, i32* %arrayidx42, align 4
  %46 = load i32, i32* %cost, align 4
  store i32 %46, i32* %cost_limit.addr, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.34, %if.then.27
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %if.then.22
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.19
  %47 = load i64, i64* %t.addr, align 8
  %and46 = and i64 %47, 1
  %cmp47 = icmp ne i64 %and46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.98

if.then.49:                                       ; preds = %if.end.45
  store i64 1, i64* %w, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.49
  %48 = load i64, i64* %w, align 8
  %49 = load i64, i64* %t.addr, align 8
  %and50 = and i64 %48, %49
  %cmp51 = icmp ne i64 %and50, 0
  br i1 %cmp51, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %50 = load i64, i64* %w, align 8
  %shl = shl i64 %50, 1
  store i64 %shl, i64* %w, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %51 = load i64, i64* %w, align 8
  %cmp53 = icmp eq i64 %51, 0
  br i1 %cmp53, label %if.then.59, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %52 = load i64, i64* %w, align 8
  %cmp55 = icmp ugt i64 %52, 2
  br i1 %cmp55, label %land.lhs.true, label %if.else.78

land.lhs.true:                                    ; preds = %lor.lhs.false
  %53 = load i64, i64* %t.addr, align 8
  %cmp57 = icmp ne i64 %53, 3
  br i1 %cmp57, label %if.then.59, label %if.else.78

if.then.59:                                       ; preds = %land.lhs.true, %for.end
  %54 = load i32, i32* @add_cost, align 4
  store i32 %54, i32* %cost, align 4
  %55 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %56 = load i64, i64* %t.addr, align 8
  %add60 = add i64 %56, 1
  %57 = load i32, i32* %cost_limit.addr, align 4
  %58 = load i32, i32* %cost, align 4
  %sub61 = sub nsw i32 %57, %58
  call void @synth_mult(%struct.algorithm* %55, i64 %add60, i32 %sub61)
  %59 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %cost62 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %59, i32 0, i32 0
  %60 = load i16, i16* %cost62, align 2
  %conv63 = sext i16 %60 to i32
  %61 = load i32, i32* %cost, align 4
  %add64 = add nsw i32 %61, %conv63
  store i32 %add64, i32* %cost, align 4
  %62 = load i32, i32* %cost, align 4
  %63 = load i32, i32* %cost_limit.addr, align 4
  %cmp65 = icmp slt i32 %62, %63
  br i1 %cmp65, label %if.then.67, label %if.end.77

if.then.67:                                       ; preds = %if.then.59
  %64 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  store %struct.algorithm* %64, %struct.algorithm** %x68, align 8
  %65 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  store %struct.algorithm* %65, %struct.algorithm** %alg_in, align 8
  %66 = load %struct.algorithm*, %struct.algorithm** %x68, align 8
  store %struct.algorithm* %66, %struct.algorithm** %best_alg, align 8
  %67 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops69 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %67, i32 0, i32 1
  %68 = load i16, i16* %ops69, align 2
  %idxprom70 = sext i16 %68 to i64
  %69 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %log71 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %69, i32 0, i32 3
  %arrayidx72 = getelementptr inbounds [64 x i8], [64 x i8]* %log71, i32 0, i64 %idxprom70
  store i8 0, i8* %arrayidx72, align 1
  %70 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops73 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %70, i32 0, i32 1
  %71 = load i16, i16* %ops73, align 2
  %idxprom74 = sext i16 %71 to i64
  %72 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %op75 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %72, i32 0, i32 2
  %arrayidx76 = getelementptr inbounds [64 x i32], [64 x i32]* %op75, i32 0, i64 %idxprom74
  store i32 4, i32* %arrayidx76, align 4
  %73 = load i32, i32* %cost, align 4
  store i32 %73, i32* %cost_limit.addr, align 4
  br label %if.end.77

if.end.77:                                        ; preds = %if.then.67, %if.then.59
  br label %if.end.97

if.else.78:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %74 = load i32, i32* @add_cost, align 4
  store i32 %74, i32* %cost, align 4
  %75 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %76 = load i64, i64* %t.addr, align 8
  %sub79 = sub i64 %76, 1
  %77 = load i32, i32* %cost_limit.addr, align 4
  %78 = load i32, i32* %cost, align 4
  %sub80 = sub nsw i32 %77, %78
  call void @synth_mult(%struct.algorithm* %75, i64 %sub79, i32 %sub80)
  %79 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %cost81 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %79, i32 0, i32 0
  %80 = load i16, i16* %cost81, align 2
  %conv82 = sext i16 %80 to i32
  %81 = load i32, i32* %cost, align 4
  %add83 = add nsw i32 %81, %conv82
  store i32 %add83, i32* %cost, align 4
  %82 = load i32, i32* %cost, align 4
  %83 = load i32, i32* %cost_limit.addr, align 4
  %cmp84 = icmp slt i32 %82, %83
  br i1 %cmp84, label %if.then.86, label %if.end.96

if.then.86:                                       ; preds = %if.else.78
  %84 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  store %struct.algorithm* %84, %struct.algorithm** %x87, align 8
  %85 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  store %struct.algorithm* %85, %struct.algorithm** %alg_in, align 8
  %86 = load %struct.algorithm*, %struct.algorithm** %x87, align 8
  store %struct.algorithm* %86, %struct.algorithm** %best_alg, align 8
  %87 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops88 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %87, i32 0, i32 1
  %88 = load i16, i16* %ops88, align 2
  %idxprom89 = sext i16 %88 to i64
  %89 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %log90 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %89, i32 0, i32 3
  %arrayidx91 = getelementptr inbounds [64 x i8], [64 x i8]* %log90, i32 0, i64 %idxprom89
  store i8 0, i8* %arrayidx91, align 1
  %90 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops92 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %90, i32 0, i32 1
  %91 = load i16, i16* %ops92, align 2
  %idxprom93 = sext i16 %91 to i64
  %92 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %op94 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %92, i32 0, i32 2
  %arrayidx95 = getelementptr inbounds [64 x i32], [64 x i32]* %op94, i32 0, i64 %idxprom93
  store i32 3, i32* %arrayidx95, align 4
  %93 = load i32, i32* %cost, align 4
  store i32 %93, i32* %cost_limit.addr, align 4
  br label %if.end.96

if.end.96:                                        ; preds = %if.then.86, %if.else.78
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.77
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.end.45
  %94 = load i64, i64* %t.addr, align 8
  %sub99 = sub i64 %94, 1
  %call100 = call i32 @floor_log2_wide(i64 %sub99)
  store i32 %call100, i32* %m, align 4
  br label %for.cond.101

for.cond.101:                                     ; preds = %for.inc.204, %if.end.98
  %95 = load i32, i32* %m, align 4
  %cmp102 = icmp sge i32 %95, 2
  br i1 %cmp102, label %for.body.104, label %for.end.205

for.body.104:                                     ; preds = %for.cond.101
  %96 = load i32, i32* %m, align 4
  %sh_prom105 = zext i32 %96 to i64
  %shl106 = shl i64 1, %sh_prom105
  %add107 = add i64 %shl106, 1
  store i64 %add107, i64* %d, align 8
  %97 = load i64, i64* %t.addr, align 8
  %98 = load i64, i64* %d, align 8
  %rem = urem i64 %97, %98
  %cmp108 = icmp eq i64 %rem, 0
  br i1 %cmp108, label %land.lhs.true.110, label %if.end.151

land.lhs.true.110:                                ; preds = %for.body.104
  %99 = load i64, i64* %t.addr, align 8
  %100 = load i64, i64* %d, align 8
  %cmp111 = icmp ugt i64 %99, %100
  br i1 %cmp111, label %land.lhs.true.113, label %if.end.151

land.lhs.true.113:                                ; preds = %land.lhs.true.110
  %101 = load i32, i32* %m, align 4
  %102 = load i32, i32* @target_flags, align 4
  %and114 = and i32 %102, 33554432
  %tobool115 = icmp ne i32 %and114, 0
  %cond116 = select i1 %tobool115, i32 64, i32 32
  %cmp117 = icmp slt i32 %101, %cond116
  br i1 %cmp117, label %if.then.119, label %if.end.151

if.then.119:                                      ; preds = %land.lhs.true.113
  %103 = load i32, i32* %m, align 4
  %idxprom120 = sext i32 %103 to i64
  %arrayidx121 = getelementptr inbounds [64 x i32], [64 x i32]* @shiftadd_cost, i32 0, i64 %idxprom120
  %104 = load i32, i32* %arrayidx121, align 4
  %105 = load i32, i32* @add_cost, align 4
  %106 = load i32, i32* %m, align 4
  %idxprom122 = sext i32 %106 to i64
  %arrayidx123 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom122
  %107 = load i32, i32* %arrayidx123, align 4
  %add124 = add nsw i32 %105, %107
  %cmp125 = icmp slt i32 %104, %add124
  br i1 %cmp125, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.119
  %108 = load i32, i32* %m, align 4
  %idxprom127 = sext i32 %108 to i64
  %arrayidx128 = getelementptr inbounds [64 x i32], [64 x i32]* @shiftadd_cost, i32 0, i64 %idxprom127
  %109 = load i32, i32* %arrayidx128, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.119
  %110 = load i32, i32* @add_cost, align 4
  %111 = load i32, i32* %m, align 4
  %idxprom129 = sext i32 %111 to i64
  %arrayidx130 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom129
  %112 = load i32, i32* %arrayidx130, align 4
  %add131 = add nsw i32 %110, %112
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond132 = phi i32 [ %109, %cond.true ], [ %add131, %cond.false ]
  store i32 %cond132, i32* %cost, align 4
  %113 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %114 = load i64, i64* %t.addr, align 8
  %115 = load i64, i64* %d, align 8
  %div = udiv i64 %114, %115
  %116 = load i32, i32* %cost_limit.addr, align 4
  %117 = load i32, i32* %cost, align 4
  %sub133 = sub nsw i32 %116, %117
  call void @synth_mult(%struct.algorithm* %113, i64 %div, i32 %sub133)
  %118 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %cost134 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %118, i32 0, i32 0
  %119 = load i16, i16* %cost134, align 2
  %conv135 = sext i16 %119 to i32
  %120 = load i32, i32* %cost, align 4
  %add136 = add nsw i32 %120, %conv135
  store i32 %add136, i32* %cost, align 4
  %121 = load i32, i32* %cost, align 4
  %122 = load i32, i32* %cost_limit.addr, align 4
  %cmp137 = icmp slt i32 %121, %122
  br i1 %cmp137, label %if.then.139, label %if.end.150

if.then.139:                                      ; preds = %cond.end
  %123 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  store %struct.algorithm* %123, %struct.algorithm** %x140, align 8
  %124 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  store %struct.algorithm* %124, %struct.algorithm** %alg_in, align 8
  %125 = load %struct.algorithm*, %struct.algorithm** %x140, align 8
  store %struct.algorithm* %125, %struct.algorithm** %best_alg, align 8
  %126 = load i32, i32* %m, align 4
  %conv141 = trunc i32 %126 to i8
  %127 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops142 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %127, i32 0, i32 1
  %128 = load i16, i16* %ops142, align 2
  %idxprom143 = sext i16 %128 to i64
  %129 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %log144 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %129, i32 0, i32 3
  %arrayidx145 = getelementptr inbounds [64 x i8], [64 x i8]* %log144, i32 0, i64 %idxprom143
  store i8 %conv141, i8* %arrayidx145, align 1
  %130 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops146 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %130, i32 0, i32 1
  %131 = load i16, i16* %ops146, align 2
  %idxprom147 = sext i16 %131 to i64
  %132 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %op148 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %132, i32 0, i32 2
  %arrayidx149 = getelementptr inbounds [64 x i32], [64 x i32]* %op148, i32 0, i64 %idxprom147
  store i32 5, i32* %arrayidx149, align 4
  %133 = load i32, i32* %cost, align 4
  store i32 %133, i32* %cost_limit.addr, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.139, %cond.end
  br label %for.end.205

if.end.151:                                       ; preds = %land.lhs.true.113, %land.lhs.true.110, %for.body.104
  %134 = load i32, i32* %m, align 4
  %sh_prom152 = zext i32 %134 to i64
  %shl153 = shl i64 1, %sh_prom152
  %sub154 = sub i64 %shl153, 1
  store i64 %sub154, i64* %d, align 8
  %135 = load i64, i64* %t.addr, align 8
  %136 = load i64, i64* %d, align 8
  %rem155 = urem i64 %135, %136
  %cmp156 = icmp eq i64 %rem155, 0
  br i1 %cmp156, label %land.lhs.true.158, label %if.end.203

land.lhs.true.158:                                ; preds = %if.end.151
  %137 = load i64, i64* %t.addr, align 8
  %138 = load i64, i64* %d, align 8
  %cmp159 = icmp ugt i64 %137, %138
  br i1 %cmp159, label %land.lhs.true.161, label %if.end.203

land.lhs.true.161:                                ; preds = %land.lhs.true.158
  %139 = load i32, i32* %m, align 4
  %140 = load i32, i32* @target_flags, align 4
  %and162 = and i32 %140, 33554432
  %tobool163 = icmp ne i32 %and162, 0
  %cond164 = select i1 %tobool163, i32 64, i32 32
  %cmp165 = icmp slt i32 %139, %cond164
  br i1 %cmp165, label %if.then.167, label %if.end.203

if.then.167:                                      ; preds = %land.lhs.true.161
  %141 = load i32, i32* %m, align 4
  %idxprom168 = sext i32 %141 to i64
  %arrayidx169 = getelementptr inbounds [64 x i32], [64 x i32]* @shiftsub_cost, i32 0, i64 %idxprom168
  %142 = load i32, i32* %arrayidx169, align 4
  %143 = load i32, i32* @add_cost, align 4
  %144 = load i32, i32* %m, align 4
  %idxprom170 = sext i32 %144 to i64
  %arrayidx171 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom170
  %145 = load i32, i32* %arrayidx171, align 4
  %add172 = add nsw i32 %143, %145
  %cmp173 = icmp slt i32 %142, %add172
  br i1 %cmp173, label %cond.true.175, label %cond.false.178

cond.true.175:                                    ; preds = %if.then.167
  %146 = load i32, i32* %m, align 4
  %idxprom176 = sext i32 %146 to i64
  %arrayidx177 = getelementptr inbounds [64 x i32], [64 x i32]* @shiftsub_cost, i32 0, i64 %idxprom176
  %147 = load i32, i32* %arrayidx177, align 4
  br label %cond.end.182

cond.false.178:                                   ; preds = %if.then.167
  %148 = load i32, i32* @add_cost, align 4
  %149 = load i32, i32* %m, align 4
  %idxprom179 = sext i32 %149 to i64
  %arrayidx180 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom179
  %150 = load i32, i32* %arrayidx180, align 4
  %add181 = add nsw i32 %148, %150
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.178, %cond.true.175
  %cond183 = phi i32 [ %147, %cond.true.175 ], [ %add181, %cond.false.178 ]
  store i32 %cond183, i32* %cost, align 4
  %151 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %152 = load i64, i64* %t.addr, align 8
  %153 = load i64, i64* %d, align 8
  %div184 = udiv i64 %152, %153
  %154 = load i32, i32* %cost_limit.addr, align 4
  %155 = load i32, i32* %cost, align 4
  %sub185 = sub nsw i32 %154, %155
  call void @synth_mult(%struct.algorithm* %151, i64 %div184, i32 %sub185)
  %156 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %cost186 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %156, i32 0, i32 0
  %157 = load i16, i16* %cost186, align 2
  %conv187 = sext i16 %157 to i32
  %158 = load i32, i32* %cost, align 4
  %add188 = add nsw i32 %158, %conv187
  store i32 %add188, i32* %cost, align 4
  %159 = load i32, i32* %cost, align 4
  %160 = load i32, i32* %cost_limit.addr, align 4
  %cmp189 = icmp slt i32 %159, %160
  br i1 %cmp189, label %if.then.191, label %if.end.202

if.then.191:                                      ; preds = %cond.end.182
  %161 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  store %struct.algorithm* %161, %struct.algorithm** %x192, align 8
  %162 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  store %struct.algorithm* %162, %struct.algorithm** %alg_in, align 8
  %163 = load %struct.algorithm*, %struct.algorithm** %x192, align 8
  store %struct.algorithm* %163, %struct.algorithm** %best_alg, align 8
  %164 = load i32, i32* %m, align 4
  %conv193 = trunc i32 %164 to i8
  %165 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops194 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %165, i32 0, i32 1
  %166 = load i16, i16* %ops194, align 2
  %idxprom195 = sext i16 %166 to i64
  %167 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %log196 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %167, i32 0, i32 3
  %arrayidx197 = getelementptr inbounds [64 x i8], [64 x i8]* %log196, i32 0, i64 %idxprom195
  store i8 %conv193, i8* %arrayidx197, align 1
  %168 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops198 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %168, i32 0, i32 1
  %169 = load i16, i16* %ops198, align 2
  %idxprom199 = sext i16 %169 to i64
  %170 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %op200 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %170, i32 0, i32 2
  %arrayidx201 = getelementptr inbounds [64 x i32], [64 x i32]* %op200, i32 0, i64 %idxprom199
  store i32 6, i32* %arrayidx201, align 4
  %171 = load i32, i32* %cost, align 4
  store i32 %171, i32* %cost_limit.addr, align 4
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.191, %cond.end.182
  br label %for.end.205

if.end.203:                                       ; preds = %land.lhs.true.161, %land.lhs.true.158, %if.end.151
  br label %for.inc.204

for.inc.204:                                      ; preds = %if.end.203
  %172 = load i32, i32* %m, align 4
  %dec = add nsw i32 %172, -1
  store i32 %dec, i32* %m, align 4
  br label %for.cond.101

for.end.205:                                      ; preds = %if.end.202, %if.end.150, %for.cond.101
  %173 = load i64, i64* %t.addr, align 8
  %and206 = and i64 %173, 1
  %cmp207 = icmp ne i64 %and206, 0
  br i1 %cmp207, label %if.then.209, label %if.end.284

if.then.209:                                      ; preds = %for.end.205
  %174 = load i64, i64* %t.addr, align 8
  %sub210 = sub i64 %174, 1
  store i64 %sub210, i64* %q, align 8
  %175 = load i64, i64* %q, align 8
  %176 = load i64, i64* %q, align 8
  %sub211 = sub i64 0, %176
  %and212 = and i64 %175, %sub211
  store i64 %and212, i64* %q, align 8
  %177 = load i64, i64* %q, align 8
  %call213 = call i32 @exact_log2_wide(i64 %177)
  store i32 %call213, i32* %m, align 4
  %178 = load i32, i32* %m, align 4
  %cmp214 = icmp sge i32 %178, 0
  br i1 %cmp214, label %land.lhs.true.216, label %if.end.246

land.lhs.true.216:                                ; preds = %if.then.209
  %179 = load i32, i32* %m, align 4
  %180 = load i32, i32* @target_flags, align 4
  %and217 = and i32 %180, 33554432
  %tobool218 = icmp ne i32 %and217, 0
  %cond219 = select i1 %tobool218, i32 64, i32 32
  %cmp220 = icmp slt i32 %179, %cond219
  br i1 %cmp220, label %if.then.222, label %if.end.246

if.then.222:                                      ; preds = %land.lhs.true.216
  %181 = load i32, i32* %m, align 4
  %idxprom223 = sext i32 %181 to i64
  %arrayidx224 = getelementptr inbounds [64 x i32], [64 x i32]* @shiftadd_cost, i32 0, i64 %idxprom223
  %182 = load i32, i32* %arrayidx224, align 4
  store i32 %182, i32* %cost, align 4
  %183 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %184 = load i64, i64* %t.addr, align 8
  %sub225 = sub i64 %184, 1
  %185 = load i32, i32* %m, align 4
  %sh_prom226 = zext i32 %185 to i64
  %shr227 = lshr i64 %sub225, %sh_prom226
  %186 = load i32, i32* %cost_limit.addr, align 4
  %187 = load i32, i32* %cost, align 4
  %sub228 = sub nsw i32 %186, %187
  call void @synth_mult(%struct.algorithm* %183, i64 %shr227, i32 %sub228)
  %188 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %cost229 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %188, i32 0, i32 0
  %189 = load i16, i16* %cost229, align 2
  %conv230 = sext i16 %189 to i32
  %190 = load i32, i32* %cost, align 4
  %add231 = add nsw i32 %190, %conv230
  store i32 %add231, i32* %cost, align 4
  %191 = load i32, i32* %cost, align 4
  %192 = load i32, i32* %cost_limit.addr, align 4
  %cmp232 = icmp slt i32 %191, %192
  br i1 %cmp232, label %if.then.234, label %if.end.245

if.then.234:                                      ; preds = %if.then.222
  %193 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  store %struct.algorithm* %193, %struct.algorithm** %x235, align 8
  %194 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  store %struct.algorithm* %194, %struct.algorithm** %alg_in, align 8
  %195 = load %struct.algorithm*, %struct.algorithm** %x235, align 8
  store %struct.algorithm* %195, %struct.algorithm** %best_alg, align 8
  %196 = load i32, i32* %m, align 4
  %conv236 = trunc i32 %196 to i8
  %197 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops237 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %197, i32 0, i32 1
  %198 = load i16, i16* %ops237, align 2
  %idxprom238 = sext i16 %198 to i64
  %199 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %log239 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %199, i32 0, i32 3
  %arrayidx240 = getelementptr inbounds [64 x i8], [64 x i8]* %log239, i32 0, i64 %idxprom238
  store i8 %conv236, i8* %arrayidx240, align 1
  %200 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops241 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %200, i32 0, i32 1
  %201 = load i16, i16* %ops241, align 2
  %idxprom242 = sext i16 %201 to i64
  %202 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %op243 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %202, i32 0, i32 2
  %arrayidx244 = getelementptr inbounds [64 x i32], [64 x i32]* %op243, i32 0, i64 %idxprom242
  store i32 7, i32* %arrayidx244, align 4
  %203 = load i32, i32* %cost, align 4
  store i32 %203, i32* %cost_limit.addr, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %if.then.234, %if.then.222
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %land.lhs.true.216, %if.then.209
  %204 = load i64, i64* %t.addr, align 8
  %add247 = add i64 %204, 1
  store i64 %add247, i64* %q, align 8
  %205 = load i64, i64* %q, align 8
  %206 = load i64, i64* %q, align 8
  %sub248 = sub i64 0, %206
  %and249 = and i64 %205, %sub248
  store i64 %and249, i64* %q, align 8
  %207 = load i64, i64* %q, align 8
  %call250 = call i32 @exact_log2_wide(i64 %207)
  store i32 %call250, i32* %m, align 4
  %208 = load i32, i32* %m, align 4
  %cmp251 = icmp sge i32 %208, 0
  br i1 %cmp251, label %land.lhs.true.253, label %if.end.283

land.lhs.true.253:                                ; preds = %if.end.246
  %209 = load i32, i32* %m, align 4
  %210 = load i32, i32* @target_flags, align 4
  %and254 = and i32 %210, 33554432
  %tobool255 = icmp ne i32 %and254, 0
  %cond256 = select i1 %tobool255, i32 64, i32 32
  %cmp257 = icmp slt i32 %209, %cond256
  br i1 %cmp257, label %if.then.259, label %if.end.283

if.then.259:                                      ; preds = %land.lhs.true.253
  %211 = load i32, i32* %m, align 4
  %idxprom260 = sext i32 %211 to i64
  %arrayidx261 = getelementptr inbounds [64 x i32], [64 x i32]* @shiftsub_cost, i32 0, i64 %idxprom260
  %212 = load i32, i32* %arrayidx261, align 4
  store i32 %212, i32* %cost, align 4
  %213 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %214 = load i64, i64* %t.addr, align 8
  %add262 = add i64 %214, 1
  %215 = load i32, i32* %m, align 4
  %sh_prom263 = zext i32 %215 to i64
  %shr264 = lshr i64 %add262, %sh_prom263
  %216 = load i32, i32* %cost_limit.addr, align 4
  %217 = load i32, i32* %cost, align 4
  %sub265 = sub nsw i32 %216, %217
  call void @synth_mult(%struct.algorithm* %213, i64 %shr264, i32 %sub265)
  %218 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  %cost266 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %218, i32 0, i32 0
  %219 = load i16, i16* %cost266, align 2
  %conv267 = sext i16 %219 to i32
  %220 = load i32, i32* %cost, align 4
  %add268 = add nsw i32 %220, %conv267
  store i32 %add268, i32* %cost, align 4
  %221 = load i32, i32* %cost, align 4
  %222 = load i32, i32* %cost_limit.addr, align 4
  %cmp269 = icmp slt i32 %221, %222
  br i1 %cmp269, label %if.then.271, label %if.end.282

if.then.271:                                      ; preds = %if.then.259
  %223 = load %struct.algorithm*, %struct.algorithm** %alg_in, align 8
  store %struct.algorithm* %223, %struct.algorithm** %x272, align 8
  %224 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  store %struct.algorithm* %224, %struct.algorithm** %alg_in, align 8
  %225 = load %struct.algorithm*, %struct.algorithm** %x272, align 8
  store %struct.algorithm* %225, %struct.algorithm** %best_alg, align 8
  %226 = load i32, i32* %m, align 4
  %conv273 = trunc i32 %226 to i8
  %227 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops274 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %227, i32 0, i32 1
  %228 = load i16, i16* %ops274, align 2
  %idxprom275 = sext i16 %228 to i64
  %229 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %log276 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %229, i32 0, i32 3
  %arrayidx277 = getelementptr inbounds [64 x i8], [64 x i8]* %log276, i32 0, i64 %idxprom275
  store i8 %conv273, i8* %arrayidx277, align 1
  %230 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops278 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %230, i32 0, i32 1
  %231 = load i16, i16* %ops278, align 2
  %idxprom279 = sext i16 %231 to i64
  %232 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %op280 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %232, i32 0, i32 2
  %arrayidx281 = getelementptr inbounds [64 x i32], [64 x i32]* %op280, i32 0, i64 %idxprom279
  store i32 8, i32* %arrayidx281, align 4
  %233 = load i32, i32* %cost, align 4
  store i32 %233, i32* %cost_limit.addr, align 4
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.271, %if.then.259
  br label %if.end.283

if.end.283:                                       ; preds = %if.end.282, %land.lhs.true.253, %if.end.246
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %for.end.205
  %234 = load i32, i32* %cost_limit.addr, align 4
  %235 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %cost285 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %235, i32 0, i32 0
  %236 = load i16, i16* %cost285, align 2
  %conv286 = sext i16 %236 to i32
  %cmp287 = icmp eq i32 %234, %conv286
  br i1 %cmp287, label %if.then.289, label %if.end.290

if.then.289:                                      ; preds = %if.end.284
  br label %return

if.end.290:                                       ; preds = %if.end.284
  %237 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops291 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %237, i32 0, i32 1
  %238 = load i16, i16* %ops291, align 2
  %conv292 = sext i16 %238 to i32
  %cmp293 = icmp eq i32 %conv292, 64
  br i1 %cmp293, label %if.then.295, label %if.end.296

if.then.295:                                      ; preds = %if.end.290
  br label %return

if.end.296:                                       ; preds = %if.end.290
  %239 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %ops297 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %239, i32 0, i32 1
  %240 = load i16, i16* %ops297, align 2
  %conv298 = sext i16 %240 to i32
  %add299 = add nsw i32 %conv298, 1
  %conv300 = trunc i32 %add299 to i16
  %241 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %ops301 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %241, i32 0, i32 1
  store i16 %conv300, i16* %ops301, align 2
  %242 = load i32, i32* %cost_limit.addr, align 4
  %conv302 = trunc i32 %242 to i16
  %243 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %cost303 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %243, i32 0, i32 0
  store i16 %conv302, i16* %cost303, align 2
  %244 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %op304 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %244, i32 0, i32 2
  %245 = bitcast [64 x i32]* %op304 to i8*
  %246 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %op305 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %246, i32 0, i32 2
  %247 = bitcast [64 x i32]* %op305 to i8*
  %248 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %ops306 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %248, i32 0, i32 1
  %249 = load i16, i16* %ops306, align 2
  %conv307 = sext i16 %249 to i64
  %mul = mul i64 %conv307, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %245, i8* %247, i64 %mul, i32 4, i1 false)
  %250 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %log308 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %250, i32 0, i32 3
  %251 = bitcast [64 x i8]* %log308 to i8*
  %252 = load %struct.algorithm*, %struct.algorithm** %best_alg, align 8
  %log309 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %252, i32 0, i32 3
  %253 = bitcast [64 x i8]* %log309 to i8*
  %254 = load %struct.algorithm*, %struct.algorithm** %alg_out.addr, align 8
  %ops310 = getelementptr inbounds %struct.algorithm, %struct.algorithm* %254, i32 0, i32 1
  %255 = load i16, i16* %ops310, align 2
  %conv311 = sext i16 %255 to i64
  %mul312 = mul i64 %conv311, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %251, i8* %253, i64 %mul312, i32 4, i1 false)
  br label %return

return:                                           ; preds = %if.end.296, %if.then.295, %if.then.289, %if.else, %if.then.13, %if.then.5, %if.then
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @preserve_subexpressions_p() #1

declare %struct.rtx_def* @force_operand(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @ceil_log2(i64 %x) #0 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, i64* %x.addr, align 8
  %0 = load i64, i64* %x.addr, align 8
  %sub = sub i64 %0, 1
  %call = call i32 @floor_log2_wide(i64 %sub)
  %add = add nsw i32 %call, 1
  ret i32 %add
}

declare i32 @floor_log2_wide(i64) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_mult_highpart_adjust(i32 %mode, %struct.rtx_def* %adj_operand, %struct.rtx_def* %op0, %struct.rtx_def* %op1, %struct.rtx_def* %target, i32 %unsignedp) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %adj_operand.addr = alloca %struct.rtx_def*, align 8
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  %adj_code = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %adj_operand, %struct.rtx_def** %adj_operand.addr, align 8
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load i32, i32* %unsignedp.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, i32 75, i32 76
  store i32 %cond, i32* %adj_code, align 4
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %3 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %4 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %sub = sub nsw i32 %conv, 1
  %conv1 = sext i32 %sub to i64
  %call = call %union.tree_node* @build_int_2_wide(i64 %conv1, i64 0)
  %call2 = call %struct.rtx_def* @expand_shift(i32 83, i32 %1, %struct.rtx_def* %2, %union.tree_node* %call, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call2, %struct.rtx_def** %tem, align 8
  %5 = load i32, i32* %mode.addr, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call3 = call %struct.rtx_def* @expand_and(i32 %5, %struct.rtx_def* %6, %struct.rtx_def* %7, %struct.rtx_def* null)
  store %struct.rtx_def* %call3, %struct.rtx_def** %tem, align 8
  %8 = load i32, i32* %adj_code, align 4
  %9 = load i32, i32* %mode.addr, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %adj_operand.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call4 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %8, i32 %9, %struct.rtx_def* %10, %struct.rtx_def* %11)
  %12 = load %struct.rtx_def*, %struct.rtx_def** %adj_operand.addr, align 8
  %call5 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call4, %struct.rtx_def* %12)
  store %struct.rtx_def* %call5, %struct.rtx_def** %adj_operand.addr, align 8
  %13 = load i32, i32* %mode.addr, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %15 = load i32, i32* %mode.addr, align 4
  %idxprom6 = sext i32 %15 to i64
  %arrayidx7 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom6
  %16 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %16 to i32
  %sub9 = sub nsw i32 %conv8, 1
  %conv10 = sext i32 %sub9 to i64
  %call11 = call %union.tree_node* @build_int_2_wide(i64 %conv10, i64 0)
  %call12 = call %struct.rtx_def* @expand_shift(i32 83, i32 %13, %struct.rtx_def* %14, %union.tree_node* %call11, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call12, %struct.rtx_def** %tem, align 8
  %17 = load i32, i32* %mode.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call13 = call %struct.rtx_def* @expand_and(i32 %17, %struct.rtx_def* %18, %struct.rtx_def* %19, %struct.rtx_def* null)
  store %struct.rtx_def* %call13, %struct.rtx_def** %tem, align 8
  %20 = load i32, i32* %adj_code, align 4
  %21 = load i32, i32* %mode.addr, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %adj_operand.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call14 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %20, i32 %21, %struct.rtx_def* %22, %struct.rtx_def* %23)
  %24 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call15 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call14, %struct.rtx_def* %24)
  store %struct.rtx_def* %call15, %struct.rtx_def** %target.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  ret %struct.rtx_def* %25
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_and(i32 %mode, %struct.rtx_def* %op0, %struct.rtx_def* %op1, %struct.rtx_def* %target) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %tem, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  %cmp4 = icmp eq i32 %bf.clear3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load i32, i32* %mode.addr, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call = call %struct.rtx_def* @simplify_binary_operation(i32 83, i32 %4, %struct.rtx_def* %5, %struct.rtx_def* %6)
  store %struct.rtx_def* %call, %struct.rtx_def** %tem, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp5 = icmp eq %struct.rtx_def* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %8 = load i32, i32* %mode.addr, align 4
  %9 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call7 = call %struct.rtx_def* @expand_binop(i32 %8, %struct.optab* %9, %struct.rtx_def* %10, %struct.rtx_def* %11, %struct.rtx_def* %12, i32 0, i32 3)
  store %struct.rtx_def* %call7, %struct.rtx_def** %tem, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp9 = icmp eq %struct.rtx_def* %13, null
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.end.8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %target.addr, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end.8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp11 = icmp ne %struct.rtx_def* %15, %16
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.else
  %17 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call13 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %17, %struct.rtx_def* %18)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.then.10
  %19 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  ret %struct.rtx_def* %19
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_mult_highpart(i32 %mode, %struct.rtx_def* %op0, i64 %cnst1, %struct.rtx_def* %target, i32 %unsignedp, i32 %max_cost) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %cnst1.addr = alloca i64, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %max_cost.addr = alloca i32, align 4
  %wider_mode = alloca i32, align 4
  %mul_highpart_optab = alloca %struct.optab*, align 8
  %moptab = alloca %struct.optab*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %size = alloca i32, align 4
  %op1 = alloca %struct.rtx_def*, align 8
  %wide_op1 = alloca %struct.rtx_def*, align 8
  %regop1 = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store i64 %cnst1, i64* %cnst1.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i32 %max_cost, i32* %max_cost.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %wider_mode, align 4
  %2 = load i32, i32* %mode.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom1
  %3 = load i16, i16* %arrayidx2, align 2
  %conv3 = zext i16 %3 to i32
  store i32 %conv3, i32* %size, align 4
  %4 = load i32, i32* %size, align 4
  %cmp = icmp sgt i32 %4, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2790, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.expand_mult_highpart, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %5 = load i64, i64* %cnst1.addr, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %call = call i64 @trunc_int_for_mode(i64 %5, i32 %6)
  %call5 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call)
  store %struct.rtx_def* %call5, %struct.rtx_def** %op1, align 8
  %7 = load i64, i64* %cnst1.addr, align 8
  %8 = load i32, i32* %unsignedp.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %9 = load i64, i64* %cnst1.addr, align 8
  %shr = lshr i64 %9, 63
  %sub = sub i64 0, %shr
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %sub, %cond.false ]
  %10 = load i32, i32* %wider_mode, align 4
  %call6 = call %struct.rtx_def* @immed_double_const(i64 %7, i64 %cond, i32 %10)
  store %struct.rtx_def* %call6, %struct.rtx_def** %wide_op1, align 8
  %11 = load i32, i32* %size, align 4
  %12 = load i32, i32* @target_flags, align 4
  %and = and i32 %12, 33554432
  %tobool7 = icmp ne i32 %and, 0
  %cond8 = select i1 %tobool7, i32 64, i32 32
  %cmp9 = icmp slt i32 %11, %cond8
  br i1 %cmp9, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %cond.end
  %13 = load i32, i32* %wider_mode, align 4
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [59 x i32], [59 x i32]* @mul_cost, i32 0, i64 %idxprom11
  %14 = load i32, i32* %arrayidx12, align 4
  %15 = load i32, i32* %size, align 4
  %sub13 = sub nsw i32 %15, 1
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom14
  %16 = load i32, i32* %arrayidx15, align 4
  %add = add nsw i32 %14, %16
  %17 = load i32, i32* %max_cost.addr, align 4
  %cmp16 = icmp slt i32 %add, %17
  br i1 %cmp16, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %land.lhs.true
  %18 = load i32, i32* %wider_mode, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %20 = load i32, i32* %unsignedp.addr, align 4
  %call19 = call %struct.rtx_def* @convert_to_mode(i32 %18, %struct.rtx_def* %19, i32 %20)
  store %struct.rtx_def* %call19, %struct.rtx_def** %op0.addr, align 8
  %21 = load i32, i32* %wider_mode, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %wide_op1, align 8
  %call20 = call %struct.rtx_def* @expand_mult(i32 %21, %struct.rtx_def* %22, %struct.rtx_def* %23, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call20, %struct.rtx_def** %tem, align 8
  %24 = load i32, i32* %wider_mode, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %26 = load i32, i32* %size, align 4
  %conv21 = sext i32 %26 to i64
  %call22 = call %union.tree_node* @build_int_2_wide(i64 %conv21, i64 0)
  %call23 = call %struct.rtx_def* @expand_shift(i32 83, i32 %24, %struct.rtx_def* %25, %union.tree_node* %call22, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call23, %struct.rtx_def** %tem, align 8
  %27 = load i32, i32* %mode.addr, align 4
  %28 = load i32, i32* %wider_mode, align 4
  %29 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %30 = load i32, i32* %unsignedp.addr, align 4
  %call24 = call %struct.rtx_def* @convert_modes(i32 %27, i32 %28, %struct.rtx_def* %29, i32 %30)
  store %struct.rtx_def* %call24, %struct.rtx_def** %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true, %cond.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp26 = icmp eq %struct.rtx_def* %31, null
  br i1 %cmp26, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.end.25
  %32 = load i32, i32* %mode.addr, align 4
  %call29 = call %struct.rtx_def* @gen_reg_rtx(i32 %32)
  store %struct.rtx_def* %call29, %struct.rtx_def** %target.addr, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.end.25
  %33 = load i32, i32* %mode.addr, align 4
  %idxprom31 = sext i32 %33 to i64
  %arrayidx32 = getelementptr inbounds [59 x i32], [59 x i32]* @mul_highpart_cost, i32 0, i64 %idxprom31
  %34 = load i32, i32* %arrayidx32, align 4
  %35 = load i32, i32* %max_cost.addr, align 4
  %cmp33 = icmp slt i32 %34, %35
  br i1 %cmp33, label %if.then.35, label %if.end.45

if.then.35:                                       ; preds = %if.end.30
  %36 = load i32, i32* %unsignedp.addr, align 4
  %tobool36 = icmp ne i32 %36, 0
  br i1 %tobool36, label %cond.true.37, label %cond.false.38

cond.true.37:                                     ; preds = %if.then.35
  %37 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 7), align 8
  br label %cond.end.39

cond.false.38:                                    ; preds = %if.then.35
  %38 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 6), align 8
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.false.38, %cond.true.37
  %cond40 = phi %struct.optab* [ %37, %cond.true.37 ], [ %38, %cond.false.38 ]
  store %struct.optab* %cond40, %struct.optab** %mul_highpart_optab, align 8
  %39 = load i32, i32* %mode.addr, align 4
  %40 = load %struct.optab*, %struct.optab** %mul_highpart_optab, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %44 = load i32, i32* %unsignedp.addr, align 4
  %call41 = call %struct.rtx_def* @expand_binop(i32 %39, %struct.optab* %40, %struct.rtx_def* %41, %struct.rtx_def* %42, %struct.rtx_def* %43, i32 %44, i32 0)
  store %struct.rtx_def* %call41, %struct.rtx_def** %target.addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool42 = icmp ne %struct.rtx_def* %45, null
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %cond.end.39
  %46 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %46, %struct.rtx_def** %retval
  br label %return

if.end.44:                                        ; preds = %cond.end.39
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.30
  %47 = load i32, i32* %size, align 4
  %sub46 = sub nsw i32 %47, 1
  %48 = load i32, i32* @target_flags, align 4
  %and47 = and i32 %48, 33554432
  %tobool48 = icmp ne i32 %and47, 0
  %cond49 = select i1 %tobool48, i32 64, i32 32
  %cmp50 = icmp slt i32 %sub46, %cond49
  br i1 %cmp50, label %land.lhs.true.52, label %if.end.74

land.lhs.true.52:                                 ; preds = %if.end.45
  %49 = load i32, i32* %mode.addr, align 4
  %idxprom53 = sext i32 %49 to i64
  %arrayidx54 = getelementptr inbounds [59 x i32], [59 x i32]* @mul_highpart_cost, i32 0, i64 %idxprom53
  %50 = load i32, i32* %arrayidx54, align 4
  %51 = load i32, i32* %size, align 4
  %sub55 = sub nsw i32 %51, 1
  %idxprom56 = sext i32 %sub55 to i64
  %arrayidx57 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom56
  %52 = load i32, i32* %arrayidx57, align 4
  %mul = mul nsw i32 2, %52
  %add58 = add nsw i32 %50, %mul
  %53 = load i32, i32* @add_cost, align 4
  %mul59 = mul nsw i32 4, %53
  %add60 = add nsw i32 %add58, %mul59
  %54 = load i32, i32* %max_cost.addr, align 4
  %cmp61 = icmp slt i32 %add60, %54
  br i1 %cmp61, label %if.then.63, label %if.end.74

if.then.63:                                       ; preds = %land.lhs.true.52
  %55 = load i32, i32* %unsignedp.addr, align 4
  %tobool64 = icmp ne i32 %55, 0
  br i1 %tobool64, label %cond.true.65, label %cond.false.66

cond.true.65:                                     ; preds = %if.then.63
  %56 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 6), align 8
  br label %cond.end.67

cond.false.66:                                    ; preds = %if.then.63
  %57 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 7), align 8
  br label %cond.end.67

cond.end.67:                                      ; preds = %cond.false.66, %cond.true.65
  %cond68 = phi %struct.optab* [ %56, %cond.true.65 ], [ %57, %cond.false.66 ]
  store %struct.optab* %cond68, %struct.optab** %mul_highpart_optab, align 8
  %58 = load i32, i32* %mode.addr, align 4
  %59 = load %struct.optab*, %struct.optab** %mul_highpart_optab, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %63 = load i32, i32* %unsignedp.addr, align 4
  %call69 = call %struct.rtx_def* @expand_binop(i32 %58, %struct.optab* %59, %struct.rtx_def* %60, %struct.rtx_def* %61, %struct.rtx_def* %62, i32 %63, i32 0)
  store %struct.rtx_def* %call69, %struct.rtx_def** %target.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool70 = icmp ne %struct.rtx_def* %64, null
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %cond.end.67
  %65 = load i32, i32* %mode.addr, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %70 = load i32, i32* %unsignedp.addr, align 4
  %call72 = call %struct.rtx_def* @expand_mult_highpart_adjust(i32 %65, %struct.rtx_def* %66, %struct.rtx_def* %67, %struct.rtx_def* %68, %struct.rtx_def* %69, i32 %70)
  store %struct.rtx_def* %call72, %struct.rtx_def** %retval
  br label %return

if.end.73:                                        ; preds = %cond.end.67
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.73, %land.lhs.true.52, %if.end.45
  %71 = load i32, i32* %unsignedp.addr, align 4
  %tobool75 = icmp ne i32 %71, 0
  br i1 %tobool75, label %cond.true.76, label %cond.false.77

cond.true.76:                                     ; preds = %if.end.74
  %72 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  br label %cond.end.78

cond.false.77:                                    ; preds = %if.end.74
  %73 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  br label %cond.end.78

cond.end.78:                                      ; preds = %cond.false.77, %cond.true.76
  %cond79 = phi %struct.optab* [ %72, %cond.true.76 ], [ %73, %cond.false.77 ]
  store %struct.optab* %cond79, %struct.optab** %moptab, align 8
  %74 = load i32, i32* %wider_mode, align 4
  %idxprom80 = sext i32 %74 to i64
  %75 = load %struct.optab*, %struct.optab** %moptab, align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %75, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom80
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx81, i32 0, i32 0
  %76 = load i32, i32* %insn_code, align 4
  %cmp82 = icmp ne i32 %76, 1317
  br i1 %cmp82, label %land.lhs.true.84, label %if.end.91

land.lhs.true.84:                                 ; preds = %cond.end.78
  %77 = load i32, i32* %wider_mode, align 4
  %idxprom85 = sext i32 %77 to i64
  %arrayidx86 = getelementptr inbounds [59 x i32], [59 x i32]* @mul_widen_cost, i32 0, i64 %idxprom85
  %78 = load i32, i32* %arrayidx86, align 4
  %79 = load i32, i32* %max_cost.addr, align 4
  %cmp87 = icmp slt i32 %78, %79
  br i1 %cmp87, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %land.lhs.true.84
  %80 = load i32, i32* %mode.addr, align 4
  %81 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %call90 = call %struct.rtx_def* @force_reg(i32 %80, %struct.rtx_def* %81)
  store %struct.rtx_def* %call90, %struct.rtx_def** %op1, align 8
  br label %try

if.end.91:                                        ; preds = %land.lhs.true.84, %cond.end.78
  %82 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  store %struct.optab* %82, %struct.optab** %moptab, align 8
  %83 = load i32, i32* %wider_mode, align 4
  %idxprom92 = sext i32 %83 to i64
  %84 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers93 = getelementptr inbounds %struct.optab, %struct.optab* %84, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers93, i32 0, i64 %idxprom92
  %insn_code95 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx94, i32 0, i32 0
  %85 = load i32, i32* %insn_code95, align 4
  %cmp96 = icmp ne i32 %85, 1317
  br i1 %cmp96, label %land.lhs.true.98, label %if.end.115

land.lhs.true.98:                                 ; preds = %if.end.91
  %86 = load i32, i32* %size, align 4
  %sub99 = sub nsw i32 %86, 1
  %87 = load i32, i32* @target_flags, align 4
  %and100 = and i32 %87, 33554432
  %tobool101 = icmp ne i32 %and100, 0
  %cond102 = select i1 %tobool101, i32 64, i32 32
  %cmp103 = icmp slt i32 %sub99, %cond102
  br i1 %cmp103, label %land.lhs.true.105, label %if.end.115

land.lhs.true.105:                                ; preds = %land.lhs.true.98
  %88 = load i32, i32* %wider_mode, align 4
  %idxprom106 = sext i32 %88 to i64
  %arrayidx107 = getelementptr inbounds [59 x i32], [59 x i32]* @mul_cost, i32 0, i64 %idxprom106
  %89 = load i32, i32* %arrayidx107, align 4
  %90 = load i32, i32* %size, align 4
  %sub108 = sub nsw i32 %90, 1
  %idxprom109 = sext i32 %sub108 to i64
  %arrayidx110 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom109
  %91 = load i32, i32* %arrayidx110, align 4
  %add111 = add nsw i32 %89, %91
  %92 = load i32, i32* %max_cost.addr, align 4
  %cmp112 = icmp slt i32 %add111, %92
  br i1 %cmp112, label %if.then.114, label %if.end.115

if.then.114:                                      ; preds = %land.lhs.true.105
  %93 = load %struct.rtx_def*, %struct.rtx_def** %wide_op1, align 8
  store %struct.rtx_def* %93, %struct.rtx_def** %op1, align 8
  br label %try

if.end.115:                                       ; preds = %land.lhs.true.105, %land.lhs.true.98, %if.end.91
  %94 = load i32, i32* %unsignedp.addr, align 4
  %tobool116 = icmp ne i32 %94, 0
  br i1 %tobool116, label %cond.true.117, label %cond.false.118

cond.true.117:                                    ; preds = %if.end.115
  %95 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  br label %cond.end.119

cond.false.118:                                   ; preds = %if.end.115
  %96 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.117
  %cond120 = phi %struct.optab* [ %95, %cond.true.117 ], [ %96, %cond.false.118 ]
  store %struct.optab* %cond120, %struct.optab** %moptab, align 8
  %97 = load i32, i32* %wider_mode, align 4
  %idxprom121 = sext i32 %97 to i64
  %98 = load %struct.optab*, %struct.optab** %moptab, align 8
  %handlers122 = getelementptr inbounds %struct.optab, %struct.optab* %98, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers122, i32 0, i64 %idxprom121
  %insn_code124 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx123, i32 0, i32 0
  %99 = load i32, i32* %insn_code124, align 4
  %cmp125 = icmp ne i32 %99, 1317
  br i1 %cmp125, label %land.lhs.true.127, label %if.end.159

land.lhs.true.127:                                ; preds = %cond.end.119
  %100 = load i32, i32* %size, align 4
  %sub128 = sub nsw i32 %100, 1
  %101 = load i32, i32* @target_flags, align 4
  %and129 = and i32 %101, 33554432
  %tobool130 = icmp ne i32 %and129, 0
  %cond131 = select i1 %tobool130, i32 64, i32 32
  %cmp132 = icmp slt i32 %sub128, %cond131
  br i1 %cmp132, label %land.lhs.true.134, label %if.end.159

land.lhs.true.134:                                ; preds = %land.lhs.true.127
  %102 = load i32, i32* %wider_mode, align 4
  %idxprom135 = sext i32 %102 to i64
  %arrayidx136 = getelementptr inbounds [59 x i32], [59 x i32]* @mul_widen_cost, i32 0, i64 %idxprom135
  %103 = load i32, i32* %arrayidx136, align 4
  %104 = load i32, i32* %size, align 4
  %sub137 = sub nsw i32 %104, 1
  %idxprom138 = sext i32 %sub137 to i64
  %arrayidx139 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom138
  %105 = load i32, i32* %arrayidx139, align 4
  %mul140 = mul nsw i32 2, %105
  %add141 = add nsw i32 %103, %mul140
  %106 = load i32, i32* @add_cost, align 4
  %mul142 = mul nsw i32 4, %106
  %add143 = add nsw i32 %add141, %mul142
  %107 = load i32, i32* %max_cost.addr, align 4
  %cmp144 = icmp slt i32 %add143, %107
  br i1 %cmp144, label %if.then.146, label %if.end.159

if.then.146:                                      ; preds = %land.lhs.true.134
  %108 = load i32, i32* %mode.addr, align 4
  %109 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %call147 = call %struct.rtx_def* @force_reg(i32 %108, %struct.rtx_def* %109)
  store %struct.rtx_def* %call147, %struct.rtx_def** %regop1, align 8
  %110 = load i32, i32* %wider_mode, align 4
  %111 = load %struct.optab*, %struct.optab** %moptab, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %regop1, align 8
  %114 = load i32, i32* %unsignedp.addr, align 4
  %tobool148 = icmp ne i32 %114, 0
  %lnot = xor i1 %tobool148, true
  %lnot.ext = zext i1 %lnot to i32
  %call149 = call %struct.rtx_def* @expand_binop(i32 %110, %struct.optab* %111, %struct.rtx_def* %112, %struct.rtx_def* %113, %struct.rtx_def* null, i32 %lnot.ext, i32 2)
  store %struct.rtx_def* %call149, %struct.rtx_def** %tem, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp150 = icmp ne %struct.rtx_def* %115, null
  br i1 %cmp150, label %if.then.152, label %if.end.158

if.then.152:                                      ; preds = %if.then.146
  %116 = load i32, i32* %wider_mode, align 4
  %117 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %118 = load i32, i32* %size, align 4
  %conv153 = sext i32 %118 to i64
  %call154 = call %union.tree_node* @build_int_2_wide(i64 %conv153, i64 0)
  %call155 = call %struct.rtx_def* @expand_shift(i32 83, i32 %116, %struct.rtx_def* %117, %union.tree_node* %call154, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call155, %struct.rtx_def** %tem, align 8
  %119 = load i32, i32* %mode.addr, align 4
  %120 = load i32, i32* %wider_mode, align 4
  %121 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %122 = load i32, i32* %unsignedp.addr, align 4
  %call156 = call %struct.rtx_def* @convert_modes(i32 %119, i32 %120, %struct.rtx_def* %121, i32 %122)
  store %struct.rtx_def* %call156, %struct.rtx_def** %tem, align 8
  %123 = load i32, i32* %mode.addr, align 4
  %124 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %127 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %128 = load i32, i32* %unsignedp.addr, align 4
  %call157 = call %struct.rtx_def* @expand_mult_highpart_adjust(i32 %123, %struct.rtx_def* %124, %struct.rtx_def* %125, %struct.rtx_def* %126, %struct.rtx_def* %127, i32 %128)
  store %struct.rtx_def* %call157, %struct.rtx_def** %retval
  br label %return

if.end.158:                                       ; preds = %if.then.146
  br label %if.end.159

if.end.159:                                       ; preds = %if.end.158, %land.lhs.true.134, %land.lhs.true.127, %cond.end.119
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

try:                                              ; preds = %if.then.114, %if.then.89
  %129 = load i32, i32* %wider_mode, align 4
  %130 = load %struct.optab*, %struct.optab** %moptab, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %133 = load i32, i32* %unsignedp.addr, align 4
  %call160 = call %struct.rtx_def* @expand_binop(i32 %129, %struct.optab* %130, %struct.rtx_def* %131, %struct.rtx_def* %132, %struct.rtx_def* null, i32 %133, i32 2)
  store %struct.rtx_def* %call160, %struct.rtx_def** %tem, align 8
  %134 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp161 = icmp eq %struct.rtx_def* %134, null
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %try
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.164:                                       ; preds = %try
  %135 = load i32, i32* %mode.addr, align 4
  %136 = load i32, i32* @word_mode, align 4
  %cmp165 = icmp eq i32 %135, %136
  br i1 %cmp165, label %if.then.167, label %if.else

if.then.167:                                      ; preds = %if.end.164
  %137 = load i32, i32* %mode.addr, align 4
  %138 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call168 = call %struct.rtx_def* @gen_highpart(i32 %137, %struct.rtx_def* %138)
  store %struct.rtx_def* %call168, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %if.end.164
  %139 = load i32, i32* %wider_mode, align 4
  %140 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %141 = load i32, i32* %size, align 4
  %conv169 = sext i32 %141 to i64
  %call170 = call %union.tree_node* @build_int_2_wide(i64 %conv169, i64 0)
  %call171 = call %struct.rtx_def* @expand_shift(i32 83, i32 %139, %struct.rtx_def* %140, %union.tree_node* %call170, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call171, %struct.rtx_def** %tem, align 8
  %142 = load i32, i32* %mode.addr, align 4
  %143 = load i32, i32* %wider_mode, align 4
  %144 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %145 = load i32, i32* %unsignedp.addr, align 4
  %call172 = call %struct.rtx_def* @convert_modes(i32 %142, i32 %143, %struct.rtx_def* %144, i32 %145)
  store %struct.rtx_def* %call172, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.167, %if.then.163, %if.end.159, %if.then.152, %if.then.71, %if.then.43, %if.then.18
  %146 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %146
}

declare %struct.rtx_def* @immed_double_const(i64, i64, i32) #1

declare %struct.rtx_def* @convert_modes(i32, i32, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_highpart(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_divmod(i32 %rem_flag, i32 %code, i32 %mode, %struct.rtx_def* %op0, %struct.rtx_def* %op1, %struct.rtx_def* %target, i32 %unsignedp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %rem_flag.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %compute_mode = alloca i32, align 4
  %tquotient = alloca %struct.rtx_def*, align 8
  %quotient = alloca %struct.rtx_def*, align 8
  %remainder = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %size = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %optab1 = alloca %struct.optab*, align 8
  %optab2 = alloca %struct.optab*, align 8
  %op1_is_constant = alloca i32, align 4
  %op1_is_pow2 = alloca i32, align 4
  %max_cost = alloca i32, align 4
  %extra_cost = alloca i32, align 4
  %mh = alloca i64, align 8
  %ml = alloca i64, align 8
  %pre_shift = alloca i32, align 4
  %post_shift = alloca i32, align 4
  %dummy = alloca i32, align 4
  %d = alloca i64, align 8
  %t1 = alloca %struct.rtx_def*, align 8
  %t2 = alloca %struct.rtx_def*, align 8
  %t3 = alloca %struct.rtx_def*, align 8
  %t4 = alloca %struct.rtx_def*, align 8
  %t1391 = alloca %struct.rtx_def*, align 8
  %t2392 = alloca %struct.rtx_def*, align 8
  %ml473 = alloca i64, align 8
  %lgup = alloca i32, align 4
  %post_shift474 = alloca i32, align 4
  %d475 = alloca i64, align 8
  %abs_d = alloca i64, align 8
  %label = alloca %struct.rtx_def*, align 8
  %t1562 = alloca %struct.rtx_def*, align 8
  %t1572 = alloca %struct.rtx_def*, align 8
  %t2573 = alloca %struct.rtx_def*, align 8
  %t3574 = alloca %struct.rtx_def*, align 8
  %t1656 = alloca %struct.rtx_def*, align 8
  %t2657 = alloca %struct.rtx_def*, align 8
  %t3658 = alloca %struct.rtx_def*, align 8
  %t1703 = alloca %struct.rtx_def*, align 8
  %t2704 = alloca %struct.rtx_def*, align 8
  %t3705 = alloca %struct.rtx_def*, align 8
  %t4706 = alloca %struct.rtx_def*, align 8
  %mh817 = alloca i64, align 8
  %ml818 = alloca i64, align 8
  %pre_shift819 = alloca i32, align 4
  %lgup820 = alloca i32, align 4
  %post_shift821 = alloca i32, align 4
  %d822 = alloca i64, align 8
  %t1851 = alloca %struct.rtx_def*, align 8
  %t2852 = alloca %struct.rtx_def*, align 8
  %t3853 = alloca %struct.rtx_def*, align 8
  %t4854 = alloca %struct.rtx_def*, align 8
  %nsign = alloca %struct.rtx_def*, align 8
  %t1899 = alloca %struct.rtx_def*, align 8
  %t2900 = alloca %struct.rtx_def*, align 8
  %t3901 = alloca %struct.rtx_def*, align 8
  %t4902 = alloca %struct.rtx_def*, align 8
  %t5 = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %label963 = alloca %struct.rtx_def*, align 8
  %label1 = alloca %struct.rtx_def*, align 8
  %label2 = alloca %struct.rtx_def*, align 8
  %label3 = alloca %struct.rtx_def*, align 8
  %label4 = alloca %struct.rtx_def*, align 8
  %label5 = alloca %struct.rtx_def*, align 8
  %adjusted_op0 = alloca %struct.rtx_def*, align 8
  %tem974 = alloca %struct.rtx_def*, align 8
  %t11030 = alloca %struct.rtx_def*, align 8
  %t21031 = alloca %struct.rtx_def*, align 8
  %t31032 = alloca %struct.rtx_def*, align 8
  %d1033 = alloca i64, align 8
  %lab = alloca %struct.rtx_def*, align 8
  %label1094 = alloca %struct.rtx_def*, align 8
  %label11104 = alloca %struct.rtx_def*, align 8
  %label21105 = alloca %struct.rtx_def*, align 8
  %adjusted_op01106 = alloca %struct.rtx_def*, align 8
  %tem1107 = alloca %struct.rtx_def*, align 8
  %t11144 = alloca %struct.rtx_def*, align 8
  %t21145 = alloca %struct.rtx_def*, align 8
  %t31146 = alloca %struct.rtx_def*, align 8
  %d1147 = alloca i64, align 8
  %lab1163 = alloca %struct.rtx_def*, align 8
  %tem1209 = alloca %struct.rtx_def*, align 8
  %label1210 = alloca %struct.rtx_def*, align 8
  %label11221 = alloca %struct.rtx_def*, align 8
  %label21222 = alloca %struct.rtx_def*, align 8
  %label31223 = alloca %struct.rtx_def*, align 8
  %label41224 = alloca %struct.rtx_def*, align 8
  %label51225 = alloca %struct.rtx_def*, align 8
  %adjusted_op01226 = alloca %struct.rtx_def*, align 8
  %tem1227 = alloca %struct.rtx_def*, align 8
  %d1274 = alloca i64, align 8
  %ml1278 = alloca i64, align 8
  %pre_shift1279 = alloca i32, align 4
  %t11280 = alloca %struct.rtx_def*, align 8
  %tem1302 = alloca %struct.rtx_def*, align 8
  %label1303 = alloca %struct.rtx_def*, align 8
  %tem1311 = alloca %struct.rtx_def*, align 8
  %abs_rem = alloca %struct.rtx_def*, align 8
  %abs_op1 = alloca %struct.rtx_def*, align 8
  %tem1321 = alloca %struct.rtx_def*, align 8
  %mask = alloca %struct.rtx_def*, align 8
  %label1322 = alloca %struct.rtx_def*, align 8
  %tem1330 = alloca %struct.rtx_def*, align 8
  store i32 %rem_flag, i32* %rem_flag.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %quotient, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %remainder, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 54
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %op1_is_constant, align 4
  %2 = load i32, i32* %op1_is_constant, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.rhs, label %land.end.20

land.rhs:                                         ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %4 = load i64, i64* %rtwint, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtwint3 = bitcast %union.rtunion_def* %arrayidx2 to i64*
  %6 = load i64, i64* %rtwint3, align 8
  %sub = sub nsw i64 %6, 1
  %and = and i64 %4, %sub
  %cmp4 = icmp eq i64 %and, 0
  br i1 %cmp4, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.rhs
  %7 = load i32, i32* %unsignedp.addr, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %land.end, label %land.rhs.7

land.rhs.7:                                       ; preds = %lor.rhs
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtwint10 = bitcast %union.rtunion_def* %arrayidx9 to i64*
  %9 = load i64, i64* %rtwint10, align 8
  %sub11 = sub nsw i64 0, %9
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtwint14 = bitcast %union.rtunion_def* %arrayidx13 to i64*
  %11 = load i64, i64* %rtwint14, align 8
  %sub15 = sub nsw i64 0, %11
  %sub16 = sub nsw i64 %sub15, 1
  %and17 = and i64 %sub11, %sub16
  %cmp18 = icmp eq i64 %and17, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs.7, %lor.rhs
  %12 = phi i1 [ false, %lor.rhs ], [ %cmp18, %land.rhs.7 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %13 = phi i1 [ true, %land.rhs ], [ %12, %land.end ]
  br label %land.end.20

land.end.20:                                      ; preds = %lor.end, %entry
  %14 = phi i1 [ false, %entry ], [ %13, %lor.end ]
  %land.ext = zext i1 %14 to i32
  store i32 %land.ext, i32* %op1_is_pow2, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp21 = icmp eq %struct.rtx_def* %15, %16
  br i1 %cmp21, label %if.then, label %if.end

if.then:                                          ; preds = %land.end.20
  %17 = load i32, i32* %rem_flag.addr, align 4
  %tobool23 = icmp ne i32 %17, 0
  br i1 %tobool23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %18 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %18, %cond.true ], [ %19, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.end.20
  %20 = load i32, i32* %unsignedp.addr, align 4
  %tobool24 = icmp ne i32 %20, 0
  br i1 %tobool24, label %if.end.40, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %cmp25 = icmp eq %struct.rtx_def* %21, %22
  br i1 %cmp25, label %if.then.27, label %if.end.40

if.then.27:                                       ; preds = %land.lhs.true
  %23 = load i32, i32* %rem_flag.addr, align 4
  %tobool28 = icmp ne i32 %23, 0
  br i1 %tobool28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.then.27
  %24 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %retval
  br label %return

if.end.30:                                        ; preds = %if.then.27
  %25 = load i32, i32* %mode.addr, align 4
  %26 = load i32, i32* @flag_trapv, align 4
  %tobool31 = icmp ne i32 %26, 0
  br i1 %tobool31, label %land.lhs.true.32, label %cond.false.37

land.lhs.true.32:                                 ; preds = %if.end.30
  %27 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %27 to i64
  %arrayidx33 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %28 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp eq i32 %28, 1
  br i1 %cmp34, label %cond.true.36, label %cond.false.37

cond.true.36:                                     ; preds = %land.lhs.true.32
  %29 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  br label %cond.end.38

cond.false.37:                                    ; preds = %land.lhs.true.32, %if.end.30
  %30 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.37, %cond.true.36
  %cond39 = phi %struct.optab* [ %29, %cond.true.36 ], [ %30, %cond.false.37 ]
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call = call %struct.rtx_def* @expand_unop(i32 %25, %struct.optab* %cond39, %struct.rtx_def* %31, %struct.rtx_def* %32, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true, %if.end
  %33 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool41 = icmp ne %struct.rtx_def* %33, null
  br i1 %tobool41, label %land.lhs.true.42, label %if.end.81

land.lhs.true.42:                                 ; preds = %if.end.40
  %34 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load43 = load i32, i32* %35, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 61
  br i1 %cmp45, label %land.lhs.true.47, label %lor.lhs.false

land.lhs.true.47:                                 ; preds = %land.lhs.true.42
  %36 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load48 = load i32, i32* %37, align 8
  %bf.lshr = lshr i32 %bf.load48, 30
  %bf.clear49 = and i32 %bf.lshr, 1
  %tobool50 = icmp ne i32 %bf.clear49, 0
  br i1 %tobool50, label %if.then.80, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.47, %land.lhs.true.42
  %38 = load i32, i32* %rem_flag.addr, align 4
  %tobool51 = icmp ne i32 %38, 0
  br i1 %tobool51, label %land.lhs.true.54, label %lor.lhs.false.52

lor.lhs.false.52:                                 ; preds = %lor.lhs.false
  %39 = load i32, i32* %op1_is_constant, align 4
  %tobool53 = icmp ne i32 %39, 0
  br i1 %tobool53, label %land.lhs.true.54, label %lor.lhs.false.67

land.lhs.true.54:                                 ; preds = %lor.lhs.false.52, %lor.lhs.false
  %40 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call55 = call i32 @reg_mentioned_p(%struct.rtx_def* %40, %struct.rtx_def* %41)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.80, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %land.lhs.true.54
  %42 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load58 = load i32, i32* %43, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 66
  br i1 %cmp60, label %land.lhs.true.62, label %lor.lhs.false.67

land.lhs.true.62:                                 ; preds = %lor.lhs.false.57
  %44 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load63 = load i32, i32* %45, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 66
  br i1 %cmp65, label %if.then.80, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %land.lhs.true.62, %lor.lhs.false.57, %lor.lhs.false.52
  %46 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call68 = call i32 @reg_mentioned_p(%struct.rtx_def* %46, %struct.rtx_def* %47)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.then.80, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.67
  %48 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load71 = load i32, i32* %49, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 66
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.81

land.lhs.true.75:                                 ; preds = %lor.lhs.false.70
  %50 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load76 = load i32, i32* %51, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 66
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %land.lhs.true.75, %lor.lhs.false.67, %land.lhs.true.62, %land.lhs.true.54, %land.lhs.true.47
  store %struct.rtx_def* null, %struct.rtx_def** %target.addr, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %land.lhs.true.75, %lor.lhs.false.70, %if.end.40
  %52 = load i32, i32* %op1_is_pow2, align 4
  %tobool82 = icmp ne i32 %52, 0
  br i1 %tobool82, label %land.lhs.true.83, label %cond.false.92

land.lhs.true.83:                                 ; preds = %if.end.81
  %53 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp84 = icmp ne %struct.rtx_def* %53, %54
  br i1 %cmp84, label %cond.true.86, label %cond.false.92

cond.true.86:                                     ; preds = %land.lhs.true.83
  %55 = load i32, i32* %unsignedp.addr, align 4
  %tobool87 = icmp ne i32 %55, 0
  br i1 %tobool87, label %cond.true.88, label %cond.false.89

cond.true.88:                                     ; preds = %cond.true.86
  %56 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  br label %cond.end.90

cond.false.89:                                    ; preds = %cond.true.86
  %57 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.89, %cond.true.88
  %cond91 = phi %struct.optab* [ %56, %cond.true.88 ], [ %57, %cond.false.89 ]
  br label %cond.end.98

cond.false.92:                                    ; preds = %land.lhs.true.83, %if.end.81
  %58 = load i32, i32* %unsignedp.addr, align 4
  %tobool93 = icmp ne i32 %58, 0
  br i1 %tobool93, label %cond.true.94, label %cond.false.95

cond.true.94:                                     ; preds = %cond.false.92
  %59 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 13), align 8
  br label %cond.end.96

cond.false.95:                                    ; preds = %cond.false.92
  %60 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.true.94
  %cond97 = phi %struct.optab* [ %59, %cond.true.94 ], [ %60, %cond.false.95 ]
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.end.96, %cond.end.90
  %cond99 = phi %struct.optab* [ %cond91, %cond.end.90 ], [ %cond97, %cond.end.96 ]
  store %struct.optab* %cond99, %struct.optab** %optab1, align 8
  %61 = load i32, i32* %op1_is_pow2, align 4
  %tobool100 = icmp ne i32 %61, 0
  br i1 %tobool100, label %land.lhs.true.101, label %cond.false.105

land.lhs.true.101:                                ; preds = %cond.end.98
  %62 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp102 = icmp ne %struct.rtx_def* %62, %63
  br i1 %cmp102, label %cond.true.104, label %cond.false.105

cond.true.104:                                    ; preds = %land.lhs.true.101
  %64 = load %struct.optab*, %struct.optab** %optab1, align 8
  br label %cond.end.111

cond.false.105:                                   ; preds = %land.lhs.true.101, %cond.end.98
  %65 = load i32, i32* %unsignedp.addr, align 4
  %tobool106 = icmp ne i32 %65, 0
  br i1 %tobool106, label %cond.true.107, label %cond.false.108

cond.true.107:                                    ; preds = %cond.false.105
  %66 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 14), align 8
  br label %cond.end.109

cond.false.108:                                   ; preds = %cond.false.105
  %67 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  br label %cond.end.109

cond.end.109:                                     ; preds = %cond.false.108, %cond.true.107
  %cond110 = phi %struct.optab* [ %66, %cond.true.107 ], [ %67, %cond.false.108 ]
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.end.109, %cond.true.104
  %cond112 = phi %struct.optab* [ %64, %cond.true.104 ], [ %cond110, %cond.end.109 ]
  store %struct.optab* %cond112, %struct.optab** %optab2, align 8
  %68 = load i32, i32* %mode.addr, align 4
  store i32 %68, i32* %compute_mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.111
  %69 = load i32, i32* %compute_mode, align 4
  %cmp113 = icmp ne i32 %69, 0
  br i1 %cmp113, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %70 = load i32, i32* %compute_mode, align 4
  %idxprom115 = sext i32 %70 to i64
  %71 = load %struct.optab*, %struct.optab** %optab1, align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %71, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom115
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx116, i32 0, i32 0
  %72 = load i32, i32* %insn_code, align 4
  %cmp117 = icmp ne i32 %72, 1317
  br i1 %cmp117, label %if.then.126, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %for.body
  %73 = load i32, i32* %compute_mode, align 4
  %idxprom120 = sext i32 %73 to i64
  %74 = load %struct.optab*, %struct.optab** %optab2, align 8
  %handlers121 = getelementptr inbounds %struct.optab, %struct.optab* %74, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers121, i32 0, i64 %idxprom120
  %insn_code123 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx122, i32 0, i32 0
  %75 = load i32, i32* %insn_code123, align 4
  %cmp124 = icmp ne i32 %75, 1317
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %lor.lhs.false.119, %for.body
  br label %for.end

if.end.127:                                       ; preds = %lor.lhs.false.119
  br label %for.inc

for.inc:                                          ; preds = %if.end.127
  %76 = load i32, i32* %compute_mode, align 4
  %idxprom128 = sext i32 %76 to i64
  %arrayidx129 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom128
  %77 = load i8, i8* %arrayidx129, align 1
  %conv130 = zext i8 %77 to i32
  store i32 %conv130, i32* %compute_mode, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.126, %for.cond
  %78 = load i32, i32* %compute_mode, align 4
  %cmp131 = icmp eq i32 %78, 0
  br i1 %cmp131, label %if.then.133, label %if.end.155

if.then.133:                                      ; preds = %for.end
  %79 = load i32, i32* %mode.addr, align 4
  store i32 %79, i32* %compute_mode, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc.150, %if.then.133
  %80 = load i32, i32* %compute_mode, align 4
  %cmp135 = icmp ne i32 %80, 0
  br i1 %cmp135, label %for.body.137, label %for.end.154

for.body.137:                                     ; preds = %for.cond.134
  %81 = load i32, i32* %compute_mode, align 4
  %idxprom138 = sext i32 %81 to i64
  %82 = load %struct.optab*, %struct.optab** %optab1, align 8
  %handlers139 = getelementptr inbounds %struct.optab, %struct.optab* %82, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers139, i32 0, i64 %idxprom138
  %libfunc = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx140, i32 0, i32 1
  %83 = load %struct.rtx_def*, %struct.rtx_def** %libfunc, align 8
  %tobool141 = icmp ne %struct.rtx_def* %83, null
  br i1 %tobool141, label %if.then.148, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %for.body.137
  %84 = load i32, i32* %compute_mode, align 4
  %idxprom143 = sext i32 %84 to i64
  %85 = load %struct.optab*, %struct.optab** %optab2, align 8
  %handlers144 = getelementptr inbounds %struct.optab, %struct.optab* %85, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers144, i32 0, i64 %idxprom143
  %libfunc146 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx145, i32 0, i32 1
  %86 = load %struct.rtx_def*, %struct.rtx_def** %libfunc146, align 8
  %tobool147 = icmp ne %struct.rtx_def* %86, null
  br i1 %tobool147, label %if.then.148, label %if.end.149

if.then.148:                                      ; preds = %lor.lhs.false.142, %for.body.137
  br label %for.end.154

if.end.149:                                       ; preds = %lor.lhs.false.142
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %87 = load i32, i32* %compute_mode, align 4
  %idxprom151 = sext i32 %87 to i64
  %arrayidx152 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom151
  %88 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %88 to i32
  store i32 %conv153, i32* %compute_mode, align 4
  br label %for.cond.134

for.end.154:                                      ; preds = %if.then.148, %for.cond.134
  br label %if.end.155

if.end.155:                                       ; preds = %for.end.154, %for.end
  %89 = load i32, i32* %compute_mode, align 4
  %cmp156 = icmp eq i32 %89, 0
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %if.end.155
  %90 = load i32, i32* %mode.addr, align 4
  store i32 %90, i32* %compute_mode, align 4
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %if.end.155
  %91 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool160 = icmp ne %struct.rtx_def* %91, null
  br i1 %tobool160, label %land.lhs.true.161, label %if.else

land.lhs.true.161:                                ; preds = %if.end.159
  %92 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load162 = load i32, i32* %93, align 8
  %bf.lshr163 = lshr i32 %bf.load162, 16
  %bf.clear164 = and i32 %bf.lshr163, 255
  %94 = load i32, i32* %compute_mode, align 4
  %cmp165 = icmp eq i32 %bf.clear164, %94
  br i1 %cmp165, label %if.then.167, label %if.else

if.then.167:                                      ; preds = %land.lhs.true.161
  %95 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %95, %struct.rtx_def** %tquotient, align 8
  br label %if.end.169

if.else:                                          ; preds = %land.lhs.true.161, %if.end.159
  %96 = load i32, i32* %compute_mode, align 4
  %call168 = call %struct.rtx_def* @gen_reg_rtx(i32 %96)
  store %struct.rtx_def* %call168, %struct.rtx_def** %tquotient, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.else, %if.then.167
  %97 = load i32, i32* %compute_mode, align 4
  %idxprom170 = sext i32 %97 to i64
  %arrayidx171 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom170
  %98 = load i16, i16* %arrayidx171, align 2
  %conv172 = zext i16 %98 to i32
  store i32 %conv172, i32* %size, align 4
  %99 = load i32, i32* %compute_mode, align 4
  %idxprom173 = sext i32 %99 to i64
  %arrayidx174 = getelementptr inbounds [59 x i32], [59 x i32]* @div_cost, i32 0, i64 %idxprom173
  %100 = load i32, i32* %arrayidx174, align 4
  %101 = load i32, i32* %rem_flag.addr, align 4
  %tobool175 = icmp ne i32 %101, 0
  br i1 %tobool175, label %land.lhs.true.176, label %cond.false.190

land.lhs.true.176:                                ; preds = %if.end.169
  %102 = load i64, i64* @expand_divmod.last_div_const, align 8
  %cmp177 = icmp ne i64 %102, 0
  br i1 %cmp177, label %land.lhs.true.179, label %cond.true.187

land.lhs.true.179:                                ; preds = %land.lhs.true.176
  %103 = load i32, i32* %op1_is_constant, align 4
  %tobool180 = icmp ne i32 %103, 0
  br i1 %tobool180, label %land.lhs.true.181, label %cond.true.187

land.lhs.true.181:                                ; preds = %land.lhs.true.179
  %104 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 0
  %rtwint184 = bitcast %union.rtunion_def* %arrayidx183 to i64*
  %105 = load i64, i64* %rtwint184, align 8
  %106 = load i64, i64* @expand_divmod.last_div_const, align 8
  %cmp185 = icmp eq i64 %105, %106
  br i1 %cmp185, label %cond.false.190, label %cond.true.187

cond.true.187:                                    ; preds = %land.lhs.true.181, %land.lhs.true.179, %land.lhs.true.176
  %107 = load i32, i32* %compute_mode, align 4
  %idxprom188 = sext i32 %107 to i64
  %arrayidx189 = getelementptr inbounds [59 x i32], [59 x i32]* @mul_cost, i32 0, i64 %idxprom188
  %108 = load i32, i32* %arrayidx189, align 4
  %109 = load i32, i32* @add_cost, align 4
  %add = add nsw i32 %108, %109
  br label %cond.end.191

cond.false.190:                                   ; preds = %land.lhs.true.181, %if.end.169
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.190, %cond.true.187
  %cond192 = phi i32 [ %add, %cond.true.187 ], [ 0, %cond.false.190 ]
  %sub193 = sub nsw i32 %100, %cond192
  store i32 %sub193, i32* %max_cost, align 4
  %110 = load i32, i32* %rem_flag.addr, align 4
  %tobool194 = icmp ne i32 %110, 0
  br i1 %tobool194, label %cond.false.201, label %land.lhs.true.195

land.lhs.true.195:                                ; preds = %cond.end.191
  %111 = load i32, i32* %op1_is_constant, align 4
  %tobool196 = icmp ne i32 %111, 0
  br i1 %tobool196, label %cond.true.197, label %cond.false.201

cond.true.197:                                    ; preds = %land.lhs.true.195
  %112 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 0
  %rtwint200 = bitcast %union.rtunion_def* %arrayidx199 to i64*
  %113 = load i64, i64* %rtwint200, align 8
  br label %cond.end.202

cond.false.201:                                   ; preds = %land.lhs.true.195, %cond.end.191
  br label %cond.end.202

cond.end.202:                                     ; preds = %cond.false.201, %cond.true.197
  %cond203 = phi i64 [ %113, %cond.true.197 ], [ 0, %cond.false.201 ]
  store i64 %cond203, i64* @expand_divmod.last_div_const, align 8
  %114 = load i32, i32* %compute_mode, align 4
  %115 = load i32, i32* %mode.addr, align 4
  %cmp204 = icmp ne i32 %114, %115
  br i1 %cmp204, label %if.then.206, label %if.end.245

if.then.206:                                      ; preds = %cond.end.202
  %116 = load i32, i32* %compute_mode, align 4
  %117 = load i32, i32* %mode.addr, align 4
  %118 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %119 = load i32, i32* %unsignedp.addr, align 4
  %call207 = call %struct.rtx_def* @convert_modes(i32 %116, i32 %117, %struct.rtx_def* %118, i32 %119)
  store %struct.rtx_def* %call207, %struct.rtx_def** %op0.addr, align 8
  %120 = load i32, i32* %compute_mode, align 4
  %121 = load i32, i32* %mode.addr, align 4
  %122 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %123 = load i32, i32* %unsignedp.addr, align 4
  %call208 = call %struct.rtx_def* @convert_modes(i32 %120, i32 %121, %struct.rtx_def* %122, i32 %123)
  store %struct.rtx_def* %call208, %struct.rtx_def** %op1.addr, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %bf.load209 = load i32, i32* %125, align 8
  %bf.clear210 = and i32 %bf.load209, 65535
  %cmp211 = icmp eq i32 %bf.clear210, 54
  %conv212 = zext i1 %cmp211 to i32
  store i32 %conv212, i32* %op1_is_constant, align 4
  %126 = load i32, i32* %op1_is_constant, align 4
  %tobool213 = icmp ne i32 %126, 0
  br i1 %tobool213, label %land.rhs.214, label %land.end.243

land.rhs.214:                                     ; preds = %if.then.206
  %127 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 0
  %rtwint217 = bitcast %union.rtunion_def* %arrayidx216 to i64*
  %128 = load i64, i64* %rtwint217, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 0
  %rtwint220 = bitcast %union.rtunion_def* %arrayidx219 to i64*
  %130 = load i64, i64* %rtwint220, align 8
  %sub221 = sub nsw i64 %130, 1
  %and222 = and i64 %128, %sub221
  %cmp223 = icmp eq i64 %and222, 0
  br i1 %cmp223, label %lor.end.242, label %lor.rhs.225

lor.rhs.225:                                      ; preds = %land.rhs.214
  %131 = load i32, i32* %unsignedp.addr, align 4
  %tobool226 = icmp ne i32 %131, 0
  br i1 %tobool226, label %land.end.240, label %land.rhs.227

land.rhs.227:                                     ; preds = %lor.rhs.225
  %132 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld228, i32 0, i64 0
  %rtwint230 = bitcast %union.rtunion_def* %arrayidx229 to i64*
  %133 = load i64, i64* %rtwint230, align 8
  %sub231 = sub nsw i64 0, %133
  %134 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 0
  %rtwint234 = bitcast %union.rtunion_def* %arrayidx233 to i64*
  %135 = load i64, i64* %rtwint234, align 8
  %sub235 = sub nsw i64 0, %135
  %sub236 = sub nsw i64 %sub235, 1
  %and237 = and i64 %sub231, %sub236
  %cmp238 = icmp eq i64 %and237, 0
  br label %land.end.240

land.end.240:                                     ; preds = %land.rhs.227, %lor.rhs.225
  %136 = phi i1 [ false, %lor.rhs.225 ], [ %cmp238, %land.rhs.227 ]
  br label %lor.end.242

lor.end.242:                                      ; preds = %land.end.240, %land.rhs.214
  %137 = phi i1 [ true, %land.rhs.214 ], [ %136, %land.end.240 ]
  br label %land.end.243

land.end.243:                                     ; preds = %lor.end.242, %if.then.206
  %138 = phi i1 [ false, %if.then.206 ], [ %137, %lor.end.242 ]
  %land.ext244 = zext i1 %138 to i32
  store i32 %land.ext244, i32* %op1_is_pow2, align 4
  br label %if.end.245

if.end.245:                                       ; preds = %land.end.243, %cond.end.202
  %139 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %140 = bitcast %struct.rtx_def* %139 to i32*
  %bf.load246 = load i32, i32* %140, align 8
  %bf.clear247 = and i32 %bf.load246, 65535
  %cmp248 = icmp eq i32 %bf.clear247, 66
  br i1 %cmp248, label %land.lhs.true.250, label %if.end.257

land.lhs.true.250:                                ; preds = %if.end.245
  %141 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %142 = bitcast %struct.rtx_def* %141 to i32*
  %bf.load251 = load i32, i32* %142, align 8
  %bf.lshr252 = lshr i32 %bf.load251, 27
  %bf.clear253 = and i32 %bf.lshr252, 1
  %tobool254 = icmp ne i32 %bf.clear253, 0
  br i1 %tobool254, label %if.then.255, label %if.end.257

if.then.255:                                      ; preds = %land.lhs.true.250
  %143 = load i32, i32* %compute_mode, align 4
  %144 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call256 = call %struct.rtx_def* @force_reg(i32 %143, %struct.rtx_def* %144)
  store %struct.rtx_def* %call256, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.257

if.end.257:                                       ; preds = %if.then.255, %land.lhs.true.250, %if.end.245
  %145 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %146 = bitcast %struct.rtx_def* %145 to i32*
  %bf.load258 = load i32, i32* %146, align 8
  %bf.clear259 = and i32 %bf.load258, 65535
  %cmp260 = icmp eq i32 %bf.clear259, 66
  br i1 %cmp260, label %land.lhs.true.262, label %if.end.269

land.lhs.true.262:                                ; preds = %if.end.257
  %147 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %148 = bitcast %struct.rtx_def* %147 to i32*
  %bf.load263 = load i32, i32* %148, align 8
  %bf.lshr264 = lshr i32 %bf.load263, 27
  %bf.clear265 = and i32 %bf.lshr264, 1
  %tobool266 = icmp ne i32 %bf.clear265, 0
  br i1 %tobool266, label %if.then.267, label %if.end.269

if.then.267:                                      ; preds = %land.lhs.true.262
  %149 = load i32, i32* %compute_mode, align 4
  %150 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call268 = call %struct.rtx_def* @force_reg(i32 %149, %struct.rtx_def* %150)
  store %struct.rtx_def* %call268, %struct.rtx_def** %op1.addr, align 8
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.267, %land.lhs.true.262, %if.end.257
  %151 = load i32, i32* %rem_flag.addr, align 4
  %tobool270 = icmp ne i32 %151, 0
  br i1 %tobool270, label %if.then.273, label %lor.lhs.false.271

lor.lhs.false.271:                                ; preds = %if.end.269
  %152 = load i32, i32* %op1_is_constant, align 4
  %tobool272 = icmp ne i32 %152, 0
  br i1 %tobool272, label %if.then.273, label %if.end.275

if.then.273:                                      ; preds = %lor.lhs.false.271, %if.end.269
  %153 = load i32, i32* %compute_mode, align 4
  %154 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call274 = call %struct.rtx_def* @force_reg(i32 %153, %struct.rtx_def* %154)
  store %struct.rtx_def* %call274, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.273, %lor.lhs.false.271
  %call276 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call276, %struct.rtx_def** %last, align 8
  %155 = load i32, i32* %unsignedp.addr, align 4
  %tobool277 = icmp ne i32 %155, 0
  br i1 %tobool277, label %if.then.278, label %if.end.293

if.then.278:                                      ; preds = %if.end.275
  %156 = load i32, i32* %code.addr, align 4
  %cmp279 = icmp eq i32 %156, 64
  br i1 %cmp279, label %if.then.281, label %if.end.282

if.then.281:                                      ; preds = %if.then.278
  store i32 62, i32* %code.addr, align 4
  br label %if.end.282

if.end.282:                                       ; preds = %if.then.281, %if.then.278
  %157 = load i32, i32* %code.addr, align 4
  %cmp283 = icmp eq i32 %157, 68
  br i1 %cmp283, label %if.then.285, label %if.end.286

if.then.285:                                      ; preds = %if.end.282
  store i32 66, i32* %code.addr, align 4
  br label %if.end.286

if.end.286:                                       ; preds = %if.then.285, %if.end.282
  %158 = load i32, i32* %code.addr, align 4
  %cmp287 = icmp eq i32 %158, 71
  br i1 %cmp287, label %land.lhs.true.289, label %if.end.292

land.lhs.true.289:                                ; preds = %if.end.286
  %159 = load i32, i32* %op1_is_pow2, align 4
  %tobool290 = icmp ne i32 %159, 0
  br i1 %tobool290, label %if.then.291, label %if.end.292

if.then.291:                                      ; preds = %land.lhs.true.289
  store i32 62, i32* %code.addr, align 4
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.291, %land.lhs.true.289, %if.end.286
  br label %if.end.293

if.end.293:                                       ; preds = %if.end.292, %if.end.275
  %160 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %161 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp294 = icmp ne %struct.rtx_def* %160, %161
  br i1 %cmp294, label %if.then.296, label %if.end.1356

if.then.296:                                      ; preds = %if.end.293
  %162 = load i32, i32* %code.addr, align 4
  switch i32 %162, label %sw.default [
    i32 66, label %sw.bb
    i32 62, label %sw.bb
    i32 64, label %sw.bb.811
    i32 68, label %sw.bb.811
    i32 63, label %sw.bb.1014
    i32 67, label %sw.bb.1014
    i32 71, label %sw.bb.1268
    i32 65, label %sw.bb.1299
    i32 69, label %sw.bb.1299
  ]

sw.bb:                                            ; preds = %if.then.296, %if.then.296
  %163 = load i32, i32* %op1_is_constant, align 4
  %tobool297 = icmp ne i32 %163, 0
  br i1 %tobool297, label %if.then.298, label %if.end.810

if.then.298:                                      ; preds = %sw.bb
  %164 = load i32, i32* %unsignedp.addr, align 4
  %tobool299 = icmp ne i32 %164, 0
  br i1 %tobool299, label %if.then.300, label %if.else.472

if.then.300:                                      ; preds = %if.then.298
  %165 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld301 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx302 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld301, i32 0, i64 0
  %rtwint303 = bitcast %union.rtunion_def* %arrayidx302 to i64*
  %166 = load i64, i64* %rtwint303, align 8
  store i64 %166, i64* %d, align 8
  %167 = load i64, i64* %d, align 8
  %168 = load i64, i64* %d, align 8
  %sub304 = sub i64 %168, 1
  %and305 = and i64 %167, %sub304
  %cmp306 = icmp eq i64 %and305, 0
  br i1 %cmp306, label %if.then.308, label %if.else.323

if.then.308:                                      ; preds = %if.then.300
  %169 = load i64, i64* %d, align 8
  %call309 = call i32 @floor_log2_wide(i64 %169)
  store i32 %call309, i32* %pre_shift, align 4
  %170 = load i32, i32* %rem_flag.addr, align 4
  %tobool310 = icmp ne i32 %170, 0
  br i1 %tobool310, label %if.then.311, label %if.end.319

if.then.311:                                      ; preds = %if.then.308
  %171 = load i32, i32* %compute_mode, align 4
  %172 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %173 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %174 = load i32, i32* %pre_shift, align 4
  %sh_prom = zext i32 %174 to i64
  %shl = shl i64 1, %sh_prom
  %sub312 = sub nsw i64 %shl, 1
  %call313 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub312)
  %175 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call314 = call %struct.rtx_def* @expand_binop(i32 %171, %struct.optab* %172, %struct.rtx_def* %173, %struct.rtx_def* %call313, %struct.rtx_def* %175, i32 1, i32 3)
  store %struct.rtx_def* %call314, %struct.rtx_def** %remainder, align 8
  %176 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %tobool315 = icmp ne %struct.rtx_def* %176, null
  br i1 %tobool315, label %if.then.316, label %if.end.318

if.then.316:                                      ; preds = %if.then.311
  %177 = load i32, i32* %mode.addr, align 4
  %178 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call317 = call %struct.rtx_def* @gen_lowpart(i32 %177, %struct.rtx_def* %178)
  store %struct.rtx_def* %call317, %struct.rtx_def** %retval
  br label %return

if.end.318:                                       ; preds = %if.then.311
  br label %if.end.319

if.end.319:                                       ; preds = %if.end.318, %if.then.308
  %179 = load i32, i32* %compute_mode, align 4
  %180 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %181 = load i32, i32* %pre_shift, align 4
  %conv320 = sext i32 %181 to i64
  %call321 = call %union.tree_node* @build_int_2_wide(i64 %conv320, i64 0)
  %182 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call322 = call %struct.rtx_def* @expand_shift(i32 83, i32 %179, %struct.rtx_def* %180, %union.tree_node* %call321, %struct.rtx_def* %182, i32 1)
  store %struct.rtx_def* %call322, %struct.rtx_def** %quotient, align 8
  br label %if.end.427

if.else.323:                                      ; preds = %if.then.300
  %183 = load i32, i32* %size, align 4
  %cmp324 = icmp sle i32 %183, 64
  br i1 %cmp324, label %if.then.326, label %if.else.425

if.then.326:                                      ; preds = %if.else.323
  %184 = load i64, i64* %d, align 8
  %185 = load i32, i32* %size, align 4
  %sub327 = sub nsw i32 %185, 1
  %sh_prom328 = zext i32 %sub327 to i64
  %shl329 = shl i64 1, %sh_prom328
  %cmp330 = icmp uge i64 %184, %shl329
  br i1 %cmp330, label %if.then.332, label %if.else.338

if.then.332:                                      ; preds = %if.then.326
  %186 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %187 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %188 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %189 = load i32, i32* %compute_mode, align 4
  %call333 = call %struct.rtx_def* @emit_store_flag(%struct.rtx_def* %186, i32 108, %struct.rtx_def* %187, %struct.rtx_def* %188, i32 %189, i32 1, i32 1)
  store %struct.rtx_def* %call333, %struct.rtx_def** %quotient, align 8
  %190 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp334 = icmp eq %struct.rtx_def* %190, null
  br i1 %cmp334, label %if.then.336, label %if.end.337

if.then.336:                                      ; preds = %if.then.332
  br label %fail1

if.end.337:                                       ; preds = %if.then.332
  br label %if.end.424

if.else.338:                                      ; preds = %if.then.326
  %191 = load i64, i64* %d, align 8
  %192 = load i32, i32* %size, align 4
  %193 = load i32, i32* %size, align 4
  %call339 = call i64 @choose_multiplier(i64 %191, i32 %192, i32 %193, i64* %ml, i32* %post_shift, i32* %dummy)
  store i64 %call339, i64* %mh, align 8
  %194 = load i64, i64* %mh, align 8
  %cmp340 = icmp ne i64 %194, 0
  br i1 %cmp340, label %land.lhs.true.342, label %if.else.356

land.lhs.true.342:                                ; preds = %if.else.338
  %195 = load i64, i64* %d, align 8
  %and343 = and i64 %195, 1
  %cmp344 = icmp eq i64 %and343, 0
  br i1 %cmp344, label %if.then.346, label %if.else.356

if.then.346:                                      ; preds = %land.lhs.true.342
  %196 = load i64, i64* %d, align 8
  %197 = load i64, i64* %d, align 8
  %sub347 = sub i64 0, %197
  %and348 = and i64 %196, %sub347
  %call349 = call i32 @floor_log2_wide(i64 %and348)
  store i32 %call349, i32* %pre_shift, align 4
  %198 = load i64, i64* %d, align 8
  %199 = load i32, i32* %pre_shift, align 4
  %sh_prom350 = zext i32 %199 to i64
  %shr = lshr i64 %198, %sh_prom350
  %200 = load i32, i32* %size, align 4
  %201 = load i32, i32* %size, align 4
  %202 = load i32, i32* %pre_shift, align 4
  %sub351 = sub nsw i32 %201, %202
  %call352 = call i64 @choose_multiplier(i64 %shr, i32 %200, i32 %sub351, i64* %ml, i32* %post_shift, i32* %dummy)
  store i64 %call352, i64* %mh, align 8
  %203 = load i64, i64* %mh, align 8
  %tobool353 = icmp ne i64 %203, 0
  br i1 %tobool353, label %if.then.354, label %if.end.355

if.then.354:                                      ; preds = %if.then.346
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3200, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.expand_divmod, i32 0, i32 0)) #4
  unreachable

if.end.355:                                       ; preds = %if.then.346
  br label %if.end.357

if.else.356:                                      ; preds = %land.lhs.true.342, %if.else.338
  store i32 0, i32* %pre_shift, align 4
  br label %if.end.357

if.end.357:                                       ; preds = %if.else.356, %if.end.355
  %204 = load i64, i64* %mh, align 8
  %cmp358 = icmp ne i64 %204, 0
  br i1 %cmp358, label %if.then.360, label %if.else.390

if.then.360:                                      ; preds = %if.end.357
  %205 = load i32, i32* %post_shift, align 4
  %sub361 = sub nsw i32 %205, 1
  %206 = load i32, i32* @target_flags, align 4
  %and362 = and i32 %206, 33554432
  %tobool363 = icmp ne i32 %and362, 0
  %cond364 = select i1 %tobool363, i32 64, i32 32
  %cmp365 = icmp sge i32 %sub361, %cond364
  br i1 %cmp365, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %if.then.360
  br label %fail1

if.end.368:                                       ; preds = %if.then.360
  %207 = load i32, i32* %post_shift, align 4
  %sub369 = sub nsw i32 %207, 1
  %idxprom370 = sext i32 %sub369 to i64
  %arrayidx371 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom370
  %208 = load i32, i32* %arrayidx371, align 4
  %209 = load i32, i32* getelementptr inbounds ([64 x i32], [64 x i32]* @shift_cost, i32 0, i64 1), align 4
  %add372 = add nsw i32 %208, %209
  %210 = load i32, i32* @add_cost, align 4
  %mul = mul nsw i32 2, %210
  %add373 = add nsw i32 %add372, %mul
  store i32 %add373, i32* %extra_cost, align 4
  %211 = load i32, i32* %compute_mode, align 4
  %212 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %213 = load i64, i64* %ml, align 8
  %214 = load i32, i32* %max_cost, align 4
  %215 = load i32, i32* %extra_cost, align 4
  %sub374 = sub nsw i32 %214, %215
  %call375 = call %struct.rtx_def* @expand_mult_highpart(i32 %211, %struct.rtx_def* %212, i64 %213, %struct.rtx_def* null, i32 1, i32 %sub374)
  store %struct.rtx_def* %call375, %struct.rtx_def** %t1, align 8
  %216 = load %struct.rtx_def*, %struct.rtx_def** %t1, align 8
  %cmp376 = icmp eq %struct.rtx_def* %216, null
  br i1 %cmp376, label %if.then.378, label %if.end.379

if.then.378:                                      ; preds = %if.end.368
  br label %fail1

if.end.379:                                       ; preds = %if.end.368
  %217 = load i32, i32* %compute_mode, align 4
  %218 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %219 = load %struct.rtx_def*, %struct.rtx_def** %t1, align 8
  %call380 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %217, %struct.rtx_def* %218, %struct.rtx_def* %219)
  %call381 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call380, %struct.rtx_def* null)
  store %struct.rtx_def* %call381, %struct.rtx_def** %t2, align 8
  %220 = load i32, i32* %compute_mode, align 4
  %221 = load %struct.rtx_def*, %struct.rtx_def** %t2, align 8
  %call382 = call %union.tree_node* @build_int_2_wide(i64 1, i64 0)
  %call383 = call %struct.rtx_def* @expand_shift(i32 83, i32 %220, %struct.rtx_def* %221, %union.tree_node* %call382, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call383, %struct.rtx_def** %t3, align 8
  %222 = load i32, i32* %compute_mode, align 4
  %223 = load %struct.rtx_def*, %struct.rtx_def** %t1, align 8
  %224 = load %struct.rtx_def*, %struct.rtx_def** %t3, align 8
  %call384 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %222, %struct.rtx_def* %223, %struct.rtx_def* %224)
  %call385 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call384, %struct.rtx_def* null)
  store %struct.rtx_def* %call385, %struct.rtx_def** %t4, align 8
  %225 = load i32, i32* %compute_mode, align 4
  %226 = load %struct.rtx_def*, %struct.rtx_def** %t4, align 8
  %227 = load i32, i32* %post_shift, align 4
  %sub386 = sub nsw i32 %227, 1
  %conv387 = sext i32 %sub386 to i64
  %call388 = call %union.tree_node* @build_int_2_wide(i64 %conv387, i64 0)
  %228 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call389 = call %struct.rtx_def* @expand_shift(i32 83, i32 %225, %struct.rtx_def* %226, %union.tree_node* %call388, %struct.rtx_def* %228, i32 1)
  store %struct.rtx_def* %call389, %struct.rtx_def** %quotient, align 8
  br label %if.end.423

if.else.390:                                      ; preds = %if.end.357
  %229 = load i32, i32* %pre_shift, align 4
  %230 = load i32, i32* @target_flags, align 4
  %and393 = and i32 %230, 33554432
  %tobool394 = icmp ne i32 %and393, 0
  %cond395 = select i1 %tobool394, i32 64, i32 32
  %cmp396 = icmp sge i32 %229, %cond395
  br i1 %cmp396, label %if.then.404, label %lor.lhs.false.398

lor.lhs.false.398:                                ; preds = %if.else.390
  %231 = load i32, i32* %post_shift, align 4
  %232 = load i32, i32* @target_flags, align 4
  %and399 = and i32 %232, 33554432
  %tobool400 = icmp ne i32 %and399, 0
  %cond401 = select i1 %tobool400, i32 64, i32 32
  %cmp402 = icmp sge i32 %231, %cond401
  br i1 %cmp402, label %if.then.404, label %if.end.405

if.then.404:                                      ; preds = %lor.lhs.false.398, %if.else.390
  br label %fail1

if.end.405:                                       ; preds = %lor.lhs.false.398
  %233 = load i32, i32* %compute_mode, align 4
  %234 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %235 = load i32, i32* %pre_shift, align 4
  %conv406 = sext i32 %235 to i64
  %call407 = call %union.tree_node* @build_int_2_wide(i64 %conv406, i64 0)
  %call408 = call %struct.rtx_def* @expand_shift(i32 83, i32 %233, %struct.rtx_def* %234, %union.tree_node* %call407, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call408, %struct.rtx_def** %t1391, align 8
  %236 = load i32, i32* %pre_shift, align 4
  %idxprom409 = sext i32 %236 to i64
  %arrayidx410 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom409
  %237 = load i32, i32* %arrayidx410, align 4
  %238 = load i32, i32* %post_shift, align 4
  %idxprom411 = sext i32 %238 to i64
  %arrayidx412 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom411
  %239 = load i32, i32* %arrayidx412, align 4
  %add413 = add nsw i32 %237, %239
  store i32 %add413, i32* %extra_cost, align 4
  %240 = load i32, i32* %compute_mode, align 4
  %241 = load %struct.rtx_def*, %struct.rtx_def** %t1391, align 8
  %242 = load i64, i64* %ml, align 8
  %243 = load i32, i32* %max_cost, align 4
  %244 = load i32, i32* %extra_cost, align 4
  %sub414 = sub nsw i32 %243, %244
  %call415 = call %struct.rtx_def* @expand_mult_highpart(i32 %240, %struct.rtx_def* %241, i64 %242, %struct.rtx_def* null, i32 1, i32 %sub414)
  store %struct.rtx_def* %call415, %struct.rtx_def** %t2392, align 8
  %245 = load %struct.rtx_def*, %struct.rtx_def** %t2392, align 8
  %cmp416 = icmp eq %struct.rtx_def* %245, null
  br i1 %cmp416, label %if.then.418, label %if.end.419

if.then.418:                                      ; preds = %if.end.405
  br label %fail1

if.end.419:                                       ; preds = %if.end.405
  %246 = load i32, i32* %compute_mode, align 4
  %247 = load %struct.rtx_def*, %struct.rtx_def** %t2392, align 8
  %248 = load i32, i32* %post_shift, align 4
  %conv420 = sext i32 %248 to i64
  %call421 = call %union.tree_node* @build_int_2_wide(i64 %conv420, i64 0)
  %249 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call422 = call %struct.rtx_def* @expand_shift(i32 83, i32 %246, %struct.rtx_def* %247, %union.tree_node* %call421, %struct.rtx_def* %249, i32 1)
  store %struct.rtx_def* %call422, %struct.rtx_def** %quotient, align 8
  br label %if.end.423

if.end.423:                                       ; preds = %if.end.419, %if.end.379
  br label %if.end.424

if.end.424:                                       ; preds = %if.end.423, %if.end.337
  br label %if.end.426

if.else.425:                                      ; preds = %if.else.323
  br label %sw.epilog

if.end.426:                                       ; preds = %if.end.424
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %if.end.319
  %call428 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call428, %struct.rtx_def** %insn, align 8
  %250 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %251 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp429 = icmp ne %struct.rtx_def* %250, %251
  br i1 %cmp429, label %land.lhs.true.431, label %if.end.471

land.lhs.true.431:                                ; preds = %if.end.427
  %252 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %253 = bitcast %struct.rtx_def* %252 to i32*
  %bf.load432 = load i32, i32* %253, align 8
  %bf.clear433 = and i32 %bf.load432, 65535
  %idxprom434 = sext i32 %bf.clear433 to i64
  %arrayidx435 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom434
  %254 = load i8, i8* %arrayidx435, align 1
  %conv436 = sext i8 %254 to i32
  %cmp437 = icmp eq i32 %conv436, 105
  br i1 %cmp437, label %cond.true.439, label %cond.false.457

cond.true.439:                                    ; preds = %land.lhs.true.431
  %255 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld440 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %255, i32 0, i32 1
  %arrayidx441 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld440, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx441 to %struct.rtx_def**
  %256 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %257 = bitcast %struct.rtx_def* %256 to i32*
  %bf.load442 = load i32, i32* %257, align 8
  %bf.clear443 = and i32 %bf.load442, 65535
  %cmp444 = icmp eq i32 %bf.clear443, 47
  br i1 %cmp444, label %cond.true.446, label %cond.false.450

cond.true.446:                                    ; preds = %cond.true.439
  %258 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld447 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %258, i32 0, i32 1
  %arrayidx448 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld447, i32 0, i64 3
  %rtx449 = bitcast %union.rtunion_def* %arrayidx448 to %struct.rtx_def**
  %259 = load %struct.rtx_def*, %struct.rtx_def** %rtx449, align 8
  br label %cond.end.455

cond.false.450:                                   ; preds = %cond.true.439
  %260 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %261 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld451 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %261, i32 0, i32 1
  %arrayidx452 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld451, i32 0, i64 3
  %rtx453 = bitcast %union.rtunion_def* %arrayidx452 to %struct.rtx_def**
  %262 = load %struct.rtx_def*, %struct.rtx_def** %rtx453, align 8
  %call454 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %260, %struct.rtx_def* %262)
  br label %cond.end.455

cond.end.455:                                     ; preds = %cond.false.450, %cond.true.446
  %cond456 = phi %struct.rtx_def* [ %259, %cond.true.446 ], [ %call454, %cond.false.450 ]
  br label %cond.end.458

cond.false.457:                                   ; preds = %land.lhs.true.431
  br label %cond.end.458

cond.end.458:                                     ; preds = %cond.false.457, %cond.end.455
  %cond459 = phi %struct.rtx_def* [ %cond456, %cond.end.455 ], [ null, %cond.false.457 ]
  store %struct.rtx_def* %cond459, %struct.rtx_def** %set, align 8
  %cmp460 = icmp ne %struct.rtx_def* %cond459, null
  br i1 %cmp460, label %land.lhs.true.462, label %if.end.471

land.lhs.true.462:                                ; preds = %cond.end.458
  %263 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld463 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %263, i32 0, i32 1
  %arrayidx464 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld463, i32 0, i64 0
  %rtx465 = bitcast %union.rtunion_def* %arrayidx464 to %struct.rtx_def**
  %264 = load %struct.rtx_def*, %struct.rtx_def** %rtx465, align 8
  %265 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp466 = icmp eq %struct.rtx_def* %264, %265
  br i1 %cmp466, label %if.then.468, label %if.end.471

if.then.468:                                      ; preds = %land.lhs.true.462
  %266 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %267 = load i32, i32* %compute_mode, align 4
  %268 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %269 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call469 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 81, i32 %267, %struct.rtx_def* %268, %struct.rtx_def* %269)
  %call470 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %266, i32 4, %struct.rtx_def* %call469)
  br label %if.end.471

if.end.471:                                       ; preds = %if.then.468, %land.lhs.true.462, %cond.end.458, %if.end.427
  br label %if.end.809

if.else.472:                                      ; preds = %if.then.298
  %270 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld476 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %270, i32 0, i32 1
  %arrayidx477 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld476, i32 0, i64 0
  %rtwint478 = bitcast %union.rtunion_def* %arrayidx477 to i64*
  %271 = load i64, i64* %rtwint478, align 8
  store i64 %271, i64* %d475, align 8
  %272 = load i64, i64* %d475, align 8
  %cmp479 = icmp sge i64 %272, 0
  br i1 %cmp479, label %cond.true.481, label %cond.false.482

cond.true.481:                                    ; preds = %if.else.472
  %273 = load i64, i64* %d475, align 8
  br label %cond.end.484

cond.false.482:                                   ; preds = %if.else.472
  %274 = load i64, i64* %d475, align 8
  %sub483 = sub nsw i64 0, %274
  br label %cond.end.484

cond.end.484:                                     ; preds = %cond.false.482, %cond.true.481
  %cond485 = phi i64 [ %273, %cond.true.481 ], [ %sub483, %cond.false.482 ]
  store i64 %cond485, i64* %abs_d, align 8
  %275 = load i32, i32* %rem_flag.addr, align 4
  %tobool486 = icmp ne i32 %275, 0
  br i1 %tobool486, label %land.lhs.true.487, label %if.end.493

land.lhs.true.487:                                ; preds = %cond.end.484
  %276 = load i64, i64* %d475, align 8
  %cmp488 = icmp slt i64 %276, 0
  br i1 %cmp488, label %if.then.490, label %if.end.493

if.then.490:                                      ; preds = %land.lhs.true.487
  %277 = load i64, i64* %abs_d, align 8
  store i64 %277, i64* %d475, align 8
  %278 = load i64, i64* %abs_d, align 8
  %279 = load i32, i32* %compute_mode, align 4
  %call491 = call i64 @trunc_int_for_mode(i64 %278, i32 %279)
  %call492 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call491)
  store %struct.rtx_def* %call492, %struct.rtx_def** %op1.addr, align 8
  br label %if.end.493

if.end.493:                                       ; preds = %if.then.490, %land.lhs.true.487, %cond.end.484
  %280 = load i64, i64* %d475, align 8
  %cmp494 = icmp eq i64 %280, 1
  br i1 %cmp494, label %if.then.496, label %if.else.497

if.then.496:                                      ; preds = %if.end.493
  %281 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %281, %struct.rtx_def** %quotient, align 8
  br label %if.end.763

if.else.497:                                      ; preds = %if.end.493
  %282 = load i64, i64* %d475, align 8
  %cmp498 = icmp eq i64 %282, -1
  br i1 %cmp498, label %if.then.500, label %if.else.502

if.then.500:                                      ; preds = %if.else.497
  %283 = load i32, i32* %compute_mode, align 4
  %284 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %285 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %286 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call501 = call %struct.rtx_def* @expand_unop(i32 %283, %struct.optab* %284, %struct.rtx_def* %285, %struct.rtx_def* %286, i32 0)
  store %struct.rtx_def* %call501, %struct.rtx_def** %quotient, align 8
  br label %if.end.762

if.else.502:                                      ; preds = %if.else.497
  %287 = load i64, i64* %abs_d, align 8
  %288 = load i32, i32* %size, align 4
  %sub503 = sub nsw i32 %288, 1
  %sh_prom504 = zext i32 %sub503 to i64
  %shl505 = shl i64 1, %sh_prom504
  %cmp506 = icmp eq i64 %287, %shl505
  br i1 %cmp506, label %if.then.508, label %if.else.514

if.then.508:                                      ; preds = %if.else.502
  %289 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %290 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %291 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %292 = load i32, i32* %compute_mode, align 4
  %call509 = call %struct.rtx_def* @emit_store_flag(%struct.rtx_def* %289, i32 103, %struct.rtx_def* %290, %struct.rtx_def* %291, i32 %292, i32 1, i32 1)
  store %struct.rtx_def* %call509, %struct.rtx_def** %quotient, align 8
  %293 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp510 = icmp eq %struct.rtx_def* %293, null
  br i1 %cmp510, label %if.then.512, label %if.end.513

if.then.512:                                      ; preds = %if.then.508
  br label %fail1

if.end.513:                                       ; preds = %if.then.508
  br label %if.end.761

if.else.514:                                      ; preds = %if.else.502
  %294 = load i64, i64* %d475, align 8
  %295 = load i64, i64* %d475, align 8
  %sub515 = sub nsw i64 %295, 1
  %and516 = and i64 %294, %sub515
  %cmp517 = icmp eq i64 %and516, 0
  br i1 %cmp517, label %land.lhs.true.519, label %if.else.545

land.lhs.true.519:                                ; preds = %if.else.514
  %296 = load i32, i32* %rem_flag.addr, align 4
  %tobool520 = icmp ne i32 %296, 0
  br i1 %tobool520, label %cond.true.521, label %cond.false.523

cond.true.521:                                    ; preds = %land.lhs.true.519
  %297 = load i32, i32* @smod_pow2_cheap, align 4
  %tobool522 = icmp ne i32 %297, 0
  br i1 %tobool522, label %land.lhs.true.525, label %if.else.545

cond.false.523:                                   ; preds = %land.lhs.true.519
  %298 = load i32, i32* @sdiv_pow2_cheap, align 4
  %tobool524 = icmp ne i32 %298, 0
  br i1 %tobool524, label %land.lhs.true.525, label %if.else.545

land.lhs.true.525:                                ; preds = %cond.false.523, %cond.true.521
  %299 = load i32, i32* %compute_mode, align 4
  %idxprom526 = sext i32 %299 to i64
  %300 = load i32, i32* %rem_flag.addr, align 4
  %tobool527 = icmp ne i32 %300, 0
  br i1 %tobool527, label %cond.true.528, label %cond.false.529

cond.true.528:                                    ; preds = %land.lhs.true.525
  %301 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 15), align 8
  br label %cond.end.530

cond.false.529:                                   ; preds = %land.lhs.true.525
  %302 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  br label %cond.end.530

cond.end.530:                                     ; preds = %cond.false.529, %cond.true.528
  %cond531 = phi %struct.optab* [ %301, %cond.true.528 ], [ %302, %cond.false.529 ]
  %handlers532 = getelementptr inbounds %struct.optab, %struct.optab* %cond531, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers532, i32 0, i64 %idxprom526
  %insn_code534 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx533, i32 0, i32 0
  %303 = load i32, i32* %insn_code534, align 4
  %cmp535 = icmp ne i32 %303, 1317
  br i1 %cmp535, label %if.then.544, label %lor.lhs.false.537

lor.lhs.false.537:                                ; preds = %cond.end.530
  %304 = load i32, i32* %compute_mode, align 4
  %idxprom538 = sext i32 %304 to i64
  %305 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  %handlers539 = getelementptr inbounds %struct.optab, %struct.optab* %305, i32 0, i32 1
  %arrayidx540 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers539, i32 0, i64 %idxprom538
  %insn_code541 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx540, i32 0, i32 0
  %306 = load i32, i32* %insn_code541, align 4
  %cmp542 = icmp ne i32 %306, 1317
  br i1 %cmp542, label %if.then.544, label %if.else.545

if.then.544:                                      ; preds = %lor.lhs.false.537, %cond.end.530
  br label %if.end.760

if.else.545:                                      ; preds = %lor.lhs.false.537, %cond.false.523, %cond.true.521, %if.else.514
  %307 = load i64, i64* %abs_d, align 8
  %308 = load i64, i64* %abs_d, align 8
  %sub546 = sub i64 %308, 1
  %and547 = and i64 %307, %sub546
  %cmp548 = icmp eq i64 %and547, 0
  br i1 %cmp548, label %if.then.550, label %if.else.644

if.then.550:                                      ; preds = %if.else.545
  %309 = load i64, i64* %abs_d, align 8
  %call551 = call i32 @floor_log2_wide(i64 %309)
  store i32 %call551, i32* %lgup, align 4
  %310 = load i32, i32* @ix86_branch_cost, align 4
  %cmp552 = icmp slt i32 %310, 1
  br i1 %cmp552, label %if.then.560, label %lor.lhs.false.554

lor.lhs.false.554:                                ; preds = %if.then.550
  %311 = load i64, i64* %abs_d, align 8
  %cmp555 = icmp ne i64 %311, 2
  br i1 %cmp555, label %land.lhs.true.557, label %if.else.571

land.lhs.true.557:                                ; preds = %lor.lhs.false.554
  %312 = load i32, i32* @ix86_branch_cost, align 4
  %cmp558 = icmp slt i32 %312, 3
  br i1 %cmp558, label %if.then.560, label %if.else.571

if.then.560:                                      ; preds = %land.lhs.true.557, %if.then.550
  %call561 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call561, %struct.rtx_def** %label, align 8
  %313 = load i32, i32* %compute_mode, align 4
  %314 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call563 = call %struct.rtx_def* @copy_to_mode_reg(i32 %313, %struct.rtx_def* %314)
  store %struct.rtx_def* %call563, %struct.rtx_def** %t1562, align 8
  %315 = load %struct.rtx_def*, %struct.rtx_def** %t1562, align 8
  %316 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %317 = load i32, i32* %compute_mode, align 4
  %318 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %315, %struct.rtx_def* %316, i32 104, i32 %317, %struct.rtx_def* %318)
  %319 = load %struct.rtx_def*, %struct.rtx_def** %t1562, align 8
  %320 = load i64, i64* %abs_d, align 8
  %sub564 = sub i64 %320, 1
  %321 = load i32, i32* %compute_mode, align 4
  %call565 = call i64 @trunc_int_for_mode(i64 %sub564, i32 %321)
  %call566 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call565)
  call void @expand_inc(%struct.rtx_def* %319, %struct.rtx_def* %call566)
  %322 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call567 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %322)
  %323 = load i32, i32* %compute_mode, align 4
  %324 = load %struct.rtx_def*, %struct.rtx_def** %t1562, align 8
  %325 = load i32, i32* %lgup, align 4
  %conv568 = sext i32 %325 to i64
  %call569 = call %union.tree_node* @build_int_2_wide(i64 %conv568, i64 0)
  %326 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call570 = call %struct.rtx_def* @expand_shift(i32 83, i32 %323, %struct.rtx_def* %324, %union.tree_node* %call569, %struct.rtx_def* %326, i32 0)
  store %struct.rtx_def* %call570, %struct.rtx_def** %quotient, align 8
  br label %if.end.588

if.else.571:                                      ; preds = %land.lhs.true.557, %lor.lhs.false.554
  %327 = load i32, i32* %compute_mode, align 4
  %328 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %329 = load i32, i32* %size, align 4
  %sub575 = sub nsw i32 %329, 1
  %conv576 = sext i32 %sub575 to i64
  %call577 = call %union.tree_node* @build_int_2_wide(i64 %conv576, i64 0)
  %call578 = call %struct.rtx_def* @expand_shift(i32 83, i32 %327, %struct.rtx_def* %328, %union.tree_node* %call577, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call578, %struct.rtx_def** %t1572, align 8
  %330 = load i32, i32* %compute_mode, align 4
  %331 = load %struct.rtx_def*, %struct.rtx_def** %t1572, align 8
  %332 = load i32, i32* %size, align 4
  %333 = load i32, i32* %lgup, align 4
  %sub579 = sub nsw i32 %332, %333
  %conv580 = sext i32 %sub579 to i64
  %call581 = call %union.tree_node* @build_int_2_wide(i64 %conv580, i64 0)
  %call582 = call %struct.rtx_def* @expand_shift(i32 83, i32 %330, %struct.rtx_def* %331, %union.tree_node* %call581, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call582, %struct.rtx_def** %t2573, align 8
  %334 = load i32, i32* %compute_mode, align 4
  %335 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %336 = load %struct.rtx_def*, %struct.rtx_def** %t2573, align 8
  %call583 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %334, %struct.rtx_def* %335, %struct.rtx_def* %336)
  %call584 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call583, %struct.rtx_def* null)
  store %struct.rtx_def* %call584, %struct.rtx_def** %t3574, align 8
  %337 = load i32, i32* %compute_mode, align 4
  %338 = load %struct.rtx_def*, %struct.rtx_def** %t3574, align 8
  %339 = load i32, i32* %lgup, align 4
  %conv585 = sext i32 %339 to i64
  %call586 = call %union.tree_node* @build_int_2_wide(i64 %conv585, i64 0)
  %340 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call587 = call %struct.rtx_def* @expand_shift(i32 83, i32 %337, %struct.rtx_def* %338, %union.tree_node* %call586, %struct.rtx_def* %340, i32 0)
  store %struct.rtx_def* %call587, %struct.rtx_def** %quotient, align 8
  br label %if.end.588

if.end.588:                                       ; preds = %if.else.571, %if.then.560
  %341 = load i64, i64* %d475, align 8
  %cmp589 = icmp slt i64 %341, 0
  br i1 %cmp589, label %if.then.591, label %if.end.643

if.then.591:                                      ; preds = %if.end.588
  %call592 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call592, %struct.rtx_def** %insn, align 8
  %342 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %343 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp593 = icmp ne %struct.rtx_def* %342, %343
  br i1 %cmp593, label %land.lhs.true.595, label %if.end.641

land.lhs.true.595:                                ; preds = %if.then.591
  %344 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %345 = bitcast %struct.rtx_def* %344 to i32*
  %bf.load596 = load i32, i32* %345, align 8
  %bf.clear597 = and i32 %bf.load596, 65535
  %idxprom598 = sext i32 %bf.clear597 to i64
  %arrayidx599 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom598
  %346 = load i8, i8* %arrayidx599, align 1
  %conv600 = sext i8 %346 to i32
  %cmp601 = icmp eq i32 %conv600, 105
  br i1 %cmp601, label %cond.true.603, label %cond.false.622

cond.true.603:                                    ; preds = %land.lhs.true.595
  %347 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld604 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %347, i32 0, i32 1
  %arrayidx605 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld604, i32 0, i64 3
  %rtx606 = bitcast %union.rtunion_def* %arrayidx605 to %struct.rtx_def**
  %348 = load %struct.rtx_def*, %struct.rtx_def** %rtx606, align 8
  %349 = bitcast %struct.rtx_def* %348 to i32*
  %bf.load607 = load i32, i32* %349, align 8
  %bf.clear608 = and i32 %bf.load607, 65535
  %cmp609 = icmp eq i32 %bf.clear608, 47
  br i1 %cmp609, label %cond.true.611, label %cond.false.615

cond.true.611:                                    ; preds = %cond.true.603
  %350 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld612 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %350, i32 0, i32 1
  %arrayidx613 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld612, i32 0, i64 3
  %rtx614 = bitcast %union.rtunion_def* %arrayidx613 to %struct.rtx_def**
  %351 = load %struct.rtx_def*, %struct.rtx_def** %rtx614, align 8
  br label %cond.end.620

cond.false.615:                                   ; preds = %cond.true.603
  %352 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %353 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld616 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %353, i32 0, i32 1
  %arrayidx617 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld616, i32 0, i64 3
  %rtx618 = bitcast %union.rtunion_def* %arrayidx617 to %struct.rtx_def**
  %354 = load %struct.rtx_def*, %struct.rtx_def** %rtx618, align 8
  %call619 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %352, %struct.rtx_def* %354)
  br label %cond.end.620

cond.end.620:                                     ; preds = %cond.false.615, %cond.true.611
  %cond621 = phi %struct.rtx_def* [ %351, %cond.true.611 ], [ %call619, %cond.false.615 ]
  br label %cond.end.623

cond.false.622:                                   ; preds = %land.lhs.true.595
  br label %cond.end.623

cond.end.623:                                     ; preds = %cond.false.622, %cond.end.620
  %cond624 = phi %struct.rtx_def* [ %cond621, %cond.end.620 ], [ null, %cond.false.622 ]
  store %struct.rtx_def* %cond624, %struct.rtx_def** %set, align 8
  %cmp625 = icmp ne %struct.rtx_def* %cond624, null
  br i1 %cmp625, label %land.lhs.true.627, label %if.end.641

land.lhs.true.627:                                ; preds = %cond.end.623
  %355 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld628 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %355, i32 0, i32 1
  %arrayidx629 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld628, i32 0, i64 0
  %rtx630 = bitcast %union.rtunion_def* %arrayidx629 to %struct.rtx_def**
  %356 = load %struct.rtx_def*, %struct.rtx_def** %rtx630, align 8
  %357 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp631 = icmp eq %struct.rtx_def* %356, %357
  br i1 %cmp631, label %land.lhs.true.633, label %if.end.641

land.lhs.true.633:                                ; preds = %land.lhs.true.627
  %358 = load i64, i64* %abs_d, align 8
  %cmp634 = icmp ult i64 %358, -9223372036854775808
  br i1 %cmp634, label %if.then.636, label %if.end.641

if.then.636:                                      ; preds = %land.lhs.true.633
  %359 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %360 = load i32, i32* %compute_mode, align 4
  %361 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %362 = load i64, i64* %abs_d, align 8
  %363 = load i32, i32* %compute_mode, align 4
  %call637 = call i64 @trunc_int_for_mode(i64 %362, i32 %363)
  %call638 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call637)
  %call639 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 79, i32 %360, %struct.rtx_def* %361, %struct.rtx_def* %call638)
  %call640 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %359, i32 4, %struct.rtx_def* %call639)
  br label %if.end.641

if.end.641:                                       ; preds = %if.then.636, %land.lhs.true.633, %land.lhs.true.627, %cond.end.623, %if.then.591
  %364 = load i32, i32* %compute_mode, align 4
  %365 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %366 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %367 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %call642 = call %struct.rtx_def* @expand_unop(i32 %364, %struct.optab* %365, %struct.rtx_def* %366, %struct.rtx_def* %367, i32 0)
  store %struct.rtx_def* %call642, %struct.rtx_def** %quotient, align 8
  br label %if.end.643

if.end.643:                                       ; preds = %if.end.641, %if.end.588
  br label %if.end.759

if.else.644:                                      ; preds = %if.else.545
  %368 = load i32, i32* %size, align 4
  %cmp645 = icmp sle i32 %368, 64
  br i1 %cmp645, label %if.then.647, label %if.else.757

if.then.647:                                      ; preds = %if.else.644
  %369 = load i64, i64* %abs_d, align 8
  %370 = load i32, i32* %size, align 4
  %371 = load i32, i32* %size, align 4
  %sub648 = sub nsw i32 %371, 1
  %call649 = call i64 @choose_multiplier(i64 %369, i32 %370, i32 %sub648, i64* %ml473, i32* %post_shift474, i32* %lgup)
  %372 = load i64, i64* %ml473, align 8
  %373 = load i32, i32* %size, align 4
  %sub650 = sub nsw i32 %373, 1
  %sh_prom651 = zext i32 %sub650 to i64
  %shl652 = shl i64 1, %sh_prom651
  %cmp653 = icmp ult i64 %372, %shl652
  br i1 %cmp653, label %if.then.655, label %if.else.702

if.then.655:                                      ; preds = %if.then.647
  %374 = load i32, i32* %post_shift474, align 4
  %375 = load i32, i32* @target_flags, align 4
  %and659 = and i32 %375, 33554432
  %tobool660 = icmp ne i32 %and659, 0
  %cond661 = select i1 %tobool660, i32 64, i32 32
  %cmp662 = icmp sge i32 %374, %cond661
  br i1 %cmp662, label %if.then.671, label %lor.lhs.false.664

lor.lhs.false.664:                                ; preds = %if.then.655
  %376 = load i32, i32* %size, align 4
  %sub665 = sub nsw i32 %376, 1
  %377 = load i32, i32* @target_flags, align 4
  %and666 = and i32 %377, 33554432
  %tobool667 = icmp ne i32 %and666, 0
  %cond668 = select i1 %tobool667, i32 64, i32 32
  %cmp669 = icmp sge i32 %sub665, %cond668
  br i1 %cmp669, label %if.then.671, label %if.end.672

if.then.671:                                      ; preds = %lor.lhs.false.664, %if.then.655
  br label %fail1

if.end.672:                                       ; preds = %lor.lhs.false.664
  %378 = load i32, i32* %post_shift474, align 4
  %idxprom673 = sext i32 %378 to i64
  %arrayidx674 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom673
  %379 = load i32, i32* %arrayidx674, align 4
  %380 = load i32, i32* %size, align 4
  %sub675 = sub nsw i32 %380, 1
  %idxprom676 = sext i32 %sub675 to i64
  %arrayidx677 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom676
  %381 = load i32, i32* %arrayidx677, align 4
  %add678 = add nsw i32 %379, %381
  %382 = load i32, i32* @add_cost, align 4
  %add679 = add nsw i32 %add678, %382
  store i32 %add679, i32* %extra_cost, align 4
  %383 = load i32, i32* %compute_mode, align 4
  %384 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %385 = load i64, i64* %ml473, align 8
  %386 = load i32, i32* %max_cost, align 4
  %387 = load i32, i32* %extra_cost, align 4
  %sub680 = sub nsw i32 %386, %387
  %call681 = call %struct.rtx_def* @expand_mult_highpart(i32 %383, %struct.rtx_def* %384, i64 %385, %struct.rtx_def* null, i32 0, i32 %sub680)
  store %struct.rtx_def* %call681, %struct.rtx_def** %t1656, align 8
  %388 = load %struct.rtx_def*, %struct.rtx_def** %t1656, align 8
  %cmp682 = icmp eq %struct.rtx_def* %388, null
  br i1 %cmp682, label %if.then.684, label %if.end.685

if.then.684:                                      ; preds = %if.end.672
  br label %fail1

if.end.685:                                       ; preds = %if.end.672
  %389 = load i32, i32* %compute_mode, align 4
  %390 = load %struct.rtx_def*, %struct.rtx_def** %t1656, align 8
  %391 = load i32, i32* %post_shift474, align 4
  %conv686 = sext i32 %391 to i64
  %call687 = call %union.tree_node* @build_int_2_wide(i64 %conv686, i64 0)
  %call688 = call %struct.rtx_def* @expand_shift(i32 83, i32 %389, %struct.rtx_def* %390, %union.tree_node* %call687, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call688, %struct.rtx_def** %t2657, align 8
  %392 = load i32, i32* %compute_mode, align 4
  %393 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %394 = load i32, i32* %size, align 4
  %sub689 = sub nsw i32 %394, 1
  %conv690 = sext i32 %sub689 to i64
  %call691 = call %union.tree_node* @build_int_2_wide(i64 %conv690, i64 0)
  %call692 = call %struct.rtx_def* @expand_shift(i32 83, i32 %392, %struct.rtx_def* %393, %union.tree_node* %call691, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call692, %struct.rtx_def** %t3658, align 8
  %395 = load i64, i64* %d475, align 8
  %cmp693 = icmp slt i64 %395, 0
  br i1 %cmp693, label %if.then.695, label %if.else.698

if.then.695:                                      ; preds = %if.end.685
  %396 = load i32, i32* %compute_mode, align 4
  %397 = load %struct.rtx_def*, %struct.rtx_def** %t3658, align 8
  %398 = load %struct.rtx_def*, %struct.rtx_def** %t2657, align 8
  %call696 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %396, %struct.rtx_def* %397, %struct.rtx_def* %398)
  %399 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call697 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call696, %struct.rtx_def* %399)
  store %struct.rtx_def* %call697, %struct.rtx_def** %quotient, align 8
  br label %if.end.701

if.else.698:                                      ; preds = %if.end.685
  %400 = load i32, i32* %compute_mode, align 4
  %401 = load %struct.rtx_def*, %struct.rtx_def** %t2657, align 8
  %402 = load %struct.rtx_def*, %struct.rtx_def** %t3658, align 8
  %call699 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %400, %struct.rtx_def* %401, %struct.rtx_def* %402)
  %403 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call700 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call699, %struct.rtx_def* %403)
  store %struct.rtx_def* %call700, %struct.rtx_def** %quotient, align 8
  br label %if.end.701

if.end.701:                                       ; preds = %if.else.698, %if.then.695
  br label %if.end.756

if.else.702:                                      ; preds = %if.then.647
  %404 = load i32, i32* %post_shift474, align 4
  %405 = load i32, i32* @target_flags, align 4
  %and707 = and i32 %405, 33554432
  %tobool708 = icmp ne i32 %and707, 0
  %cond709 = select i1 %tobool708, i32 64, i32 32
  %cmp710 = icmp sge i32 %404, %cond709
  br i1 %cmp710, label %if.then.719, label %lor.lhs.false.712

lor.lhs.false.712:                                ; preds = %if.else.702
  %406 = load i32, i32* %size, align 4
  %sub713 = sub nsw i32 %406, 1
  %407 = load i32, i32* @target_flags, align 4
  %and714 = and i32 %407, 33554432
  %tobool715 = icmp ne i32 %and714, 0
  %cond716 = select i1 %tobool715, i32 64, i32 32
  %cmp717 = icmp sge i32 %sub713, %cond716
  br i1 %cmp717, label %if.then.719, label %if.end.720

if.then.719:                                      ; preds = %lor.lhs.false.712, %if.else.702
  br label %fail1

if.end.720:                                       ; preds = %lor.lhs.false.712
  %408 = load i32, i32* %size, align 4
  %sub721 = sub nsw i32 %408, 1
  %sh_prom722 = zext i32 %sub721 to i64
  %shl723 = shl i64 -1, %sh_prom722
  %409 = load i64, i64* %ml473, align 8
  %or = or i64 %409, %shl723
  store i64 %or, i64* %ml473, align 8
  %410 = load i32, i32* %post_shift474, align 4
  %idxprom724 = sext i32 %410 to i64
  %arrayidx725 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom724
  %411 = load i32, i32* %arrayidx725, align 4
  %412 = load i32, i32* %size, align 4
  %sub726 = sub nsw i32 %412, 1
  %idxprom727 = sext i32 %sub726 to i64
  %arrayidx728 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom727
  %413 = load i32, i32* %arrayidx728, align 4
  %add729 = add nsw i32 %411, %413
  %414 = load i32, i32* @add_cost, align 4
  %mul730 = mul nsw i32 2, %414
  %add731 = add nsw i32 %add729, %mul730
  store i32 %add731, i32* %extra_cost, align 4
  %415 = load i32, i32* %compute_mode, align 4
  %416 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %417 = load i64, i64* %ml473, align 8
  %418 = load i32, i32* %max_cost, align 4
  %419 = load i32, i32* %extra_cost, align 4
  %sub732 = sub nsw i32 %418, %419
  %call733 = call %struct.rtx_def* @expand_mult_highpart(i32 %415, %struct.rtx_def* %416, i64 %417, %struct.rtx_def* null, i32 0, i32 %sub732)
  store %struct.rtx_def* %call733, %struct.rtx_def** %t1703, align 8
  %420 = load %struct.rtx_def*, %struct.rtx_def** %t1703, align 8
  %cmp734 = icmp eq %struct.rtx_def* %420, null
  br i1 %cmp734, label %if.then.736, label %if.end.737

if.then.736:                                      ; preds = %if.end.720
  br label %fail1

if.end.737:                                       ; preds = %if.end.720
  %421 = load i32, i32* %compute_mode, align 4
  %422 = load %struct.rtx_def*, %struct.rtx_def** %t1703, align 8
  %423 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call738 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %421, %struct.rtx_def* %422, %struct.rtx_def* %423)
  %call739 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call738, %struct.rtx_def* null)
  store %struct.rtx_def* %call739, %struct.rtx_def** %t2704, align 8
  %424 = load i32, i32* %compute_mode, align 4
  %425 = load %struct.rtx_def*, %struct.rtx_def** %t2704, align 8
  %426 = load i32, i32* %post_shift474, align 4
  %conv740 = sext i32 %426 to i64
  %call741 = call %union.tree_node* @build_int_2_wide(i64 %conv740, i64 0)
  %call742 = call %struct.rtx_def* @expand_shift(i32 83, i32 %424, %struct.rtx_def* %425, %union.tree_node* %call741, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call742, %struct.rtx_def** %t3705, align 8
  %427 = load i32, i32* %compute_mode, align 4
  %428 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %429 = load i32, i32* %size, align 4
  %sub743 = sub nsw i32 %429, 1
  %conv744 = sext i32 %sub743 to i64
  %call745 = call %union.tree_node* @build_int_2_wide(i64 %conv744, i64 0)
  %call746 = call %struct.rtx_def* @expand_shift(i32 83, i32 %427, %struct.rtx_def* %428, %union.tree_node* %call745, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call746, %struct.rtx_def** %t4706, align 8
  %430 = load i64, i64* %d475, align 8
  %cmp747 = icmp slt i64 %430, 0
  br i1 %cmp747, label %if.then.749, label %if.else.752

if.then.749:                                      ; preds = %if.end.737
  %431 = load i32, i32* %compute_mode, align 4
  %432 = load %struct.rtx_def*, %struct.rtx_def** %t4706, align 8
  %433 = load %struct.rtx_def*, %struct.rtx_def** %t3705, align 8
  %call750 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %431, %struct.rtx_def* %432, %struct.rtx_def* %433)
  %434 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call751 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call750, %struct.rtx_def* %434)
  store %struct.rtx_def* %call751, %struct.rtx_def** %quotient, align 8
  br label %if.end.755

if.else.752:                                      ; preds = %if.end.737
  %435 = load i32, i32* %compute_mode, align 4
  %436 = load %struct.rtx_def*, %struct.rtx_def** %t3705, align 8
  %437 = load %struct.rtx_def*, %struct.rtx_def** %t4706, align 8
  %call753 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %435, %struct.rtx_def* %436, %struct.rtx_def* %437)
  %438 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call754 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call753, %struct.rtx_def* %438)
  store %struct.rtx_def* %call754, %struct.rtx_def** %quotient, align 8
  br label %if.end.755

if.end.755:                                       ; preds = %if.else.752, %if.then.749
  br label %if.end.756

if.end.756:                                       ; preds = %if.end.755, %if.end.701
  br label %if.end.758

if.else.757:                                      ; preds = %if.else.644
  br label %sw.epilog

if.end.758:                                       ; preds = %if.end.756
  br label %if.end.759

if.end.759:                                       ; preds = %if.end.758, %if.end.643
  br label %if.end.760

if.end.760:                                       ; preds = %if.end.759, %if.then.544
  br label %if.end.761

if.end.761:                                       ; preds = %if.end.760, %if.end.513
  br label %if.end.762

if.end.762:                                       ; preds = %if.end.761, %if.then.500
  br label %if.end.763

if.end.763:                                       ; preds = %if.end.762, %if.then.496
  %call764 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call764, %struct.rtx_def** %insn, align 8
  %439 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %440 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp765 = icmp ne %struct.rtx_def* %439, %440
  br i1 %cmp765, label %land.lhs.true.767, label %if.end.808

land.lhs.true.767:                                ; preds = %if.end.763
  %441 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %442 = bitcast %struct.rtx_def* %441 to i32*
  %bf.load768 = load i32, i32* %442, align 8
  %bf.clear769 = and i32 %bf.load768, 65535
  %idxprom770 = sext i32 %bf.clear769 to i64
  %arrayidx771 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom770
  %443 = load i8, i8* %arrayidx771, align 1
  %conv772 = sext i8 %443 to i32
  %cmp773 = icmp eq i32 %conv772, 105
  br i1 %cmp773, label %cond.true.775, label %cond.false.794

cond.true.775:                                    ; preds = %land.lhs.true.767
  %444 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld776 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %444, i32 0, i32 1
  %arrayidx777 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld776, i32 0, i64 3
  %rtx778 = bitcast %union.rtunion_def* %arrayidx777 to %struct.rtx_def**
  %445 = load %struct.rtx_def*, %struct.rtx_def** %rtx778, align 8
  %446 = bitcast %struct.rtx_def* %445 to i32*
  %bf.load779 = load i32, i32* %446, align 8
  %bf.clear780 = and i32 %bf.load779, 65535
  %cmp781 = icmp eq i32 %bf.clear780, 47
  br i1 %cmp781, label %cond.true.783, label %cond.false.787

cond.true.783:                                    ; preds = %cond.true.775
  %447 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld784 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %447, i32 0, i32 1
  %arrayidx785 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld784, i32 0, i64 3
  %rtx786 = bitcast %union.rtunion_def* %arrayidx785 to %struct.rtx_def**
  %448 = load %struct.rtx_def*, %struct.rtx_def** %rtx786, align 8
  br label %cond.end.792

cond.false.787:                                   ; preds = %cond.true.775
  %449 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %450 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld788 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %450, i32 0, i32 1
  %arrayidx789 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld788, i32 0, i64 3
  %rtx790 = bitcast %union.rtunion_def* %arrayidx789 to %struct.rtx_def**
  %451 = load %struct.rtx_def*, %struct.rtx_def** %rtx790, align 8
  %call791 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %449, %struct.rtx_def* %451)
  br label %cond.end.792

cond.end.792:                                     ; preds = %cond.false.787, %cond.true.783
  %cond793 = phi %struct.rtx_def* [ %448, %cond.true.783 ], [ %call791, %cond.false.787 ]
  br label %cond.end.795

cond.false.794:                                   ; preds = %land.lhs.true.767
  br label %cond.end.795

cond.end.795:                                     ; preds = %cond.false.794, %cond.end.792
  %cond796 = phi %struct.rtx_def* [ %cond793, %cond.end.792 ], [ null, %cond.false.794 ]
  store %struct.rtx_def* %cond796, %struct.rtx_def** %set, align 8
  %cmp797 = icmp ne %struct.rtx_def* %cond796, null
  br i1 %cmp797, label %land.lhs.true.799, label %if.end.808

land.lhs.true.799:                                ; preds = %cond.end.795
  %452 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld800 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %452, i32 0, i32 1
  %arrayidx801 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld800, i32 0, i64 0
  %rtx802 = bitcast %union.rtunion_def* %arrayidx801 to %struct.rtx_def**
  %453 = load %struct.rtx_def*, %struct.rtx_def** %rtx802, align 8
  %454 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp803 = icmp eq %struct.rtx_def* %453, %454
  br i1 %cmp803, label %if.then.805, label %if.end.808

if.then.805:                                      ; preds = %land.lhs.true.799
  %455 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %456 = load i32, i32* %compute_mode, align 4
  %457 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %458 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call806 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 79, i32 %456, %struct.rtx_def* %457, %struct.rtx_def* %458)
  %call807 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %455, i32 4, %struct.rtx_def* %call806)
  br label %if.end.808

if.end.808:                                       ; preds = %if.then.805, %land.lhs.true.799, %cond.end.795, %if.end.763
  br label %if.end.809

if.end.809:                                       ; preds = %if.end.808, %if.end.471
  br label %sw.epilog

if.end.810:                                       ; preds = %sw.bb
  br label %fail1

fail1:                                            ; preds = %if.end.810, %if.then.736, %if.then.719, %if.then.684, %if.then.671, %if.then.512, %if.then.418, %if.then.404, %if.then.378, %if.then.367, %if.then.336
  %459 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %459)
  br label %sw.epilog

sw.bb.811:                                        ; preds = %if.then.296, %if.then.296
  %460 = load i32, i32* %op1_is_constant, align 4
  %tobool812 = icmp ne i32 %460, 0
  br i1 %tobool812, label %land.lhs.true.813, label %if.end.920

land.lhs.true.813:                                ; preds = %sw.bb.811
  %461 = load i32, i32* %size, align 4
  %cmp814 = icmp sge i32 64, %461
  br i1 %cmp814, label %if.then.816, label %if.end.920

if.then.816:                                      ; preds = %land.lhs.true.813
  %462 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld823 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %462, i32 0, i32 1
  %arrayidx824 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld823, i32 0, i64 0
  %rtwint825 = bitcast %union.rtunion_def* %arrayidx824 to i64*
  %463 = load i64, i64* %rtwint825, align 8
  store i64 %463, i64* %d822, align 8
  %464 = load i64, i64* %d822, align 8
  %cmp826 = icmp sgt i64 %464, 0
  br i1 %cmp826, label %if.then.828, label %if.else.898

if.then.828:                                      ; preds = %if.then.816
  %465 = load i64, i64* %d822, align 8
  %466 = load i64, i64* %d822, align 8
  %sub829 = sub nsw i64 %466, 1
  %and830 = and i64 %465, %sub829
  %cmp831 = icmp eq i64 %and830, 0
  br i1 %cmp831, label %if.then.833, label %if.else.850

if.then.833:                                      ; preds = %if.then.828
  %467 = load i64, i64* %d822, align 8
  %call834 = call i32 @floor_log2_wide(i64 %467)
  store i32 %call834, i32* %pre_shift819, align 4
  %468 = load i32, i32* %rem_flag.addr, align 4
  %tobool835 = icmp ne i32 %468, 0
  br i1 %tobool835, label %if.then.836, label %if.end.846

if.then.836:                                      ; preds = %if.then.833
  %469 = load i32, i32* %compute_mode, align 4
  %470 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %471 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %472 = load i32, i32* %pre_shift819, align 4
  %sh_prom837 = zext i32 %472 to i64
  %shl838 = shl i64 1, %sh_prom837
  %sub839 = sub nsw i64 %shl838, 1
  %call840 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub839)
  %473 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call841 = call %struct.rtx_def* @expand_binop(i32 %469, %struct.optab* %470, %struct.rtx_def* %471, %struct.rtx_def* %call840, %struct.rtx_def* %473, i32 0, i32 3)
  store %struct.rtx_def* %call841, %struct.rtx_def** %remainder, align 8
  %474 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %tobool842 = icmp ne %struct.rtx_def* %474, null
  br i1 %tobool842, label %if.then.843, label %if.end.845

if.then.843:                                      ; preds = %if.then.836
  %475 = load i32, i32* %mode.addr, align 4
  %476 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call844 = call %struct.rtx_def* @gen_lowpart(i32 %475, %struct.rtx_def* %476)
  store %struct.rtx_def* %call844, %struct.rtx_def** %retval
  br label %return

if.end.845:                                       ; preds = %if.then.836
  br label %if.end.846

if.end.846:                                       ; preds = %if.end.845, %if.then.833
  %477 = load i32, i32* %compute_mode, align 4
  %478 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %479 = load i32, i32* %pre_shift819, align 4
  %conv847 = sext i32 %479 to i64
  %call848 = call %union.tree_node* @build_int_2_wide(i64 %conv847, i64 0)
  %480 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call849 = call %struct.rtx_def* @expand_shift(i32 83, i32 %477, %struct.rtx_def* %478, %union.tree_node* %call848, %struct.rtx_def* %480, i32 0)
  store %struct.rtx_def* %call849, %struct.rtx_def** %quotient, align 8
  br label %if.end.897

if.else.850:                                      ; preds = %if.then.828
  %481 = load i64, i64* %d822, align 8
  %482 = load i32, i32* %size, align 4
  %483 = load i32, i32* %size, align 4
  %sub855 = sub nsw i32 %483, 1
  %call856 = call i64 @choose_multiplier(i64 %481, i32 %482, i32 %sub855, i64* %ml818, i32* %post_shift821, i32* %lgup820)
  store i64 %call856, i64* %mh817, align 8
  %484 = load i64, i64* %mh817, align 8
  %tobool857 = icmp ne i64 %484, 0
  br i1 %tobool857, label %if.then.858, label %if.end.859

if.then.858:                                      ; preds = %if.else.850
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3488, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.expand_divmod, i32 0, i32 0)) #4
  unreachable

if.end.859:                                       ; preds = %if.else.850
  %485 = load i32, i32* %post_shift821, align 4
  %486 = load i32, i32* @target_flags, align 4
  %and860 = and i32 %486, 33554432
  %tobool861 = icmp ne i32 %and860, 0
  %cond862 = select i1 %tobool861, i32 64, i32 32
  %cmp863 = icmp slt i32 %485, %cond862
  br i1 %cmp863, label %land.lhs.true.865, label %if.end.896

land.lhs.true.865:                                ; preds = %if.end.859
  %487 = load i32, i32* %size, align 4
  %sub866 = sub nsw i32 %487, 1
  %488 = load i32, i32* @target_flags, align 4
  %and867 = and i32 %488, 33554432
  %tobool868 = icmp ne i32 %and867, 0
  %cond869 = select i1 %tobool868, i32 64, i32 32
  %cmp870 = icmp slt i32 %sub866, %cond869
  br i1 %cmp870, label %if.then.872, label %if.end.896

if.then.872:                                      ; preds = %land.lhs.true.865
  %489 = load i32, i32* %compute_mode, align 4
  %490 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %491 = load i32, i32* %size, align 4
  %sub873 = sub nsw i32 %491, 1
  %conv874 = sext i32 %sub873 to i64
  %call875 = call %union.tree_node* @build_int_2_wide(i64 %conv874, i64 0)
  %call876 = call %struct.rtx_def* @expand_shift(i32 83, i32 %489, %struct.rtx_def* %490, %union.tree_node* %call875, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call876, %struct.rtx_def** %t1851, align 8
  %492 = load i32, i32* %compute_mode, align 4
  %493 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %494 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %495 = load %struct.rtx_def*, %struct.rtx_def** %t1851, align 8
  %call877 = call %struct.rtx_def* @expand_binop(i32 %492, %struct.optab* %493, %struct.rtx_def* %494, %struct.rtx_def* %495, %struct.rtx_def* null, i32 0, i32 2)
  store %struct.rtx_def* %call877, %struct.rtx_def** %t2852, align 8
  %496 = load i32, i32* %post_shift821, align 4
  %idxprom878 = sext i32 %496 to i64
  %arrayidx879 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom878
  %497 = load i32, i32* %arrayidx879, align 4
  %498 = load i32, i32* %size, align 4
  %sub880 = sub nsw i32 %498, 1
  %idxprom881 = sext i32 %sub880 to i64
  %arrayidx882 = getelementptr inbounds [64 x i32], [64 x i32]* @shift_cost, i32 0, i64 %idxprom881
  %499 = load i32, i32* %arrayidx882, align 4
  %add883 = add nsw i32 %497, %499
  %500 = load i32, i32* @add_cost, align 4
  %mul884 = mul nsw i32 2, %500
  %add885 = add nsw i32 %add883, %mul884
  store i32 %add885, i32* %extra_cost, align 4
  %501 = load i32, i32* %compute_mode, align 4
  %502 = load %struct.rtx_def*, %struct.rtx_def** %t2852, align 8
  %503 = load i64, i64* %ml818, align 8
  %504 = load i32, i32* %max_cost, align 4
  %505 = load i32, i32* %extra_cost, align 4
  %sub886 = sub nsw i32 %504, %505
  %call887 = call %struct.rtx_def* @expand_mult_highpart(i32 %501, %struct.rtx_def* %502, i64 %503, %struct.rtx_def* null, i32 1, i32 %sub886)
  store %struct.rtx_def* %call887, %struct.rtx_def** %t3853, align 8
  %506 = load %struct.rtx_def*, %struct.rtx_def** %t3853, align 8
  %cmp888 = icmp ne %struct.rtx_def* %506, null
  br i1 %cmp888, label %if.then.890, label %if.end.895

if.then.890:                                      ; preds = %if.then.872
  %507 = load i32, i32* %compute_mode, align 4
  %508 = load %struct.rtx_def*, %struct.rtx_def** %t3853, align 8
  %509 = load i32, i32* %post_shift821, align 4
  %conv891 = sext i32 %509 to i64
  %call892 = call %union.tree_node* @build_int_2_wide(i64 %conv891, i64 0)
  %call893 = call %struct.rtx_def* @expand_shift(i32 83, i32 %507, %struct.rtx_def* %508, %union.tree_node* %call892, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call893, %struct.rtx_def** %t4854, align 8
  %510 = load i32, i32* %compute_mode, align 4
  %511 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %512 = load %struct.rtx_def*, %struct.rtx_def** %t4854, align 8
  %513 = load %struct.rtx_def*, %struct.rtx_def** %t1851, align 8
  %514 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call894 = call %struct.rtx_def* @expand_binop(i32 %510, %struct.optab* %511, %struct.rtx_def* %512, %struct.rtx_def* %513, %struct.rtx_def* %514, i32 0, i32 2)
  store %struct.rtx_def* %call894, %struct.rtx_def** %quotient, align 8
  br label %if.end.895

if.end.895:                                       ; preds = %if.then.890, %if.then.872
  br label %if.end.896

if.end.896:                                       ; preds = %if.end.895, %land.lhs.true.865, %if.end.859
  br label %if.end.897

if.end.897:                                       ; preds = %if.end.896, %if.end.846
  br label %if.end.919

if.else.898:                                      ; preds = %if.then.816
  %515 = load i32, i32* %compute_mode, align 4
  %516 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %517 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %call903 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %515, %struct.rtx_def* %516, %struct.rtx_def* %517)
  %call904 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call903, %struct.rtx_def* null)
  store %struct.rtx_def* %call904, %struct.rtx_def** %t1899, align 8
  %518 = load i32, i32* %compute_mode, align 4
  %519 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %520 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %521 = load %struct.rtx_def*, %struct.rtx_def** %t1899, align 8
  %call905 = call %struct.rtx_def* @expand_binop(i32 %518, %struct.optab* %519, %struct.rtx_def* %520, %struct.rtx_def* %521, %struct.rtx_def* null, i32 0, i32 2)
  store %struct.rtx_def* %call905, %struct.rtx_def** %t2900, align 8
  %522 = load i32, i32* %compute_mode, align 4
  %523 = load %struct.rtx_def*, %struct.rtx_def** %t2900, align 8
  %524 = load i32, i32* %size, align 4
  %sub906 = sub nsw i32 %524, 1
  %conv907 = sext i32 %sub906 to i64
  %call908 = call %union.tree_node* @build_int_2_wide(i64 %conv907, i64 0)
  %call909 = call %struct.rtx_def* @expand_shift(i32 83, i32 %522, %struct.rtx_def* %523, %union.tree_node* %call908, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call909, %struct.rtx_def** %nsign, align 8
  %525 = load i32, i32* %compute_mode, align 4
  %526 = load %struct.rtx_def*, %struct.rtx_def** %t1899, align 8
  %527 = load %struct.rtx_def*, %struct.rtx_def** %nsign, align 8
  %call910 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 76, i32 %525, %struct.rtx_def* %526, %struct.rtx_def* %527)
  %call911 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call910, %struct.rtx_def* null)
  store %struct.rtx_def* %call911, %struct.rtx_def** %t3901, align 8
  %528 = load i32, i32* %compute_mode, align 4
  %529 = load %struct.rtx_def*, %struct.rtx_def** %t3901, align 8
  %530 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call912 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %528, %struct.rtx_def* %529, %struct.rtx_def* %530, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call912, %struct.rtx_def** %t4902, align 8
  %531 = load %struct.rtx_def*, %struct.rtx_def** %t4902, align 8
  %tobool913 = icmp ne %struct.rtx_def* %531, null
  br i1 %tobool913, label %if.then.914, label %if.end.918

if.then.914:                                      ; preds = %if.else.898
  %532 = load i32, i32* %compute_mode, align 4
  %533 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  %534 = load %struct.rtx_def*, %struct.rtx_def** %nsign, align 8
  %call915 = call %struct.rtx_def* @expand_unop(i32 %532, %struct.optab* %533, %struct.rtx_def* %534, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call915, %struct.rtx_def** %t5, align 8
  %535 = load i32, i32* %compute_mode, align 4
  %536 = load %struct.rtx_def*, %struct.rtx_def** %t4902, align 8
  %537 = load %struct.rtx_def*, %struct.rtx_def** %t5, align 8
  %call916 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %535, %struct.rtx_def* %536, %struct.rtx_def* %537)
  %538 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call917 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call916, %struct.rtx_def* %538)
  store %struct.rtx_def* %call917, %struct.rtx_def** %quotient, align 8
  br label %if.end.918

if.end.918:                                       ; preds = %if.then.914, %if.else.898
  br label %if.end.919

if.end.919:                                       ; preds = %if.end.918, %if.end.897
  br label %if.end.920

if.end.920:                                       ; preds = %if.end.919, %land.lhs.true.813, %sw.bb.811
  %539 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp921 = icmp ne %struct.rtx_def* %539, null
  br i1 %cmp921, label %if.then.923, label %if.end.924

if.then.923:                                      ; preds = %if.end.920
  br label %sw.epilog

if.end.924:                                       ; preds = %if.end.920
  %540 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %540)
  %541 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp925 = icmp eq %struct.rtx_def* %541, null
  br i1 %cmp925, label %if.then.933, label %lor.lhs.false.927

lor.lhs.false.927:                                ; preds = %if.end.924
  %542 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %543 = bitcast %struct.rtx_def* %542 to i32*
  %bf.load928 = load i32, i32* %543, align 8
  %bf.lshr929 = lshr i32 %bf.load928, 16
  %bf.clear930 = and i32 %bf.lshr929, 255
  %544 = load i32, i32* %compute_mode, align 4
  %cmp931 = icmp ne i32 %bf.clear930, %544
  br i1 %cmp931, label %if.then.933, label %if.end.935

if.then.933:                                      ; preds = %lor.lhs.false.927, %if.end.924
  %545 = load i32, i32* %compute_mode, align 4
  %call934 = call %struct.rtx_def* @gen_reg_rtx(i32 %545)
  store %struct.rtx_def* %call934, %struct.rtx_def** %target.addr, align 8
  br label %if.end.935

if.end.935:                                       ; preds = %if.then.933, %lor.lhs.false.927
  %546 = load i32, i32* %rem_flag.addr, align 4
  %tobool936 = icmp ne i32 %546, 0
  br i1 %tobool936, label %if.then.937, label %if.else.948

if.then.937:                                      ; preds = %if.end.935
  %547 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %548 = bitcast %struct.rtx_def* %547 to i32*
  %bf.load938 = load i32, i32* %548, align 8
  %bf.clear939 = and i32 %bf.load938, 65535
  %cmp940 = icmp eq i32 %bf.clear939, 61
  br i1 %cmp940, label %cond.true.942, label %cond.false.943

cond.true.942:                                    ; preds = %if.then.937
  %549 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end.945

cond.false.943:                                   ; preds = %if.then.937
  %550 = load i32, i32* %compute_mode, align 4
  %call944 = call %struct.rtx_def* @gen_reg_rtx(i32 %550)
  br label %cond.end.945

cond.end.945:                                     ; preds = %cond.false.943, %cond.true.942
  %cond946 = phi %struct.rtx_def* [ %549, %cond.true.942 ], [ %call944, %cond.false.943 ]
  store %struct.rtx_def* %cond946, %struct.rtx_def** %remainder, align 8
  %551 = load i32, i32* %compute_mode, align 4
  %call947 = call %struct.rtx_def* @gen_reg_rtx(i32 %551)
  store %struct.rtx_def* %call947, %struct.rtx_def** %quotient, align 8
  br label %if.end.959

if.else.948:                                      ; preds = %if.end.935
  %552 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %553 = bitcast %struct.rtx_def* %552 to i32*
  %bf.load949 = load i32, i32* %553, align 8
  %bf.clear950 = and i32 %bf.load949, 65535
  %cmp951 = icmp eq i32 %bf.clear950, 61
  br i1 %cmp951, label %cond.true.953, label %cond.false.954

cond.true.953:                                    ; preds = %if.else.948
  %554 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end.956

cond.false.954:                                   ; preds = %if.else.948
  %555 = load i32, i32* %compute_mode, align 4
  %call955 = call %struct.rtx_def* @gen_reg_rtx(i32 %555)
  br label %cond.end.956

cond.end.956:                                     ; preds = %cond.false.954, %cond.true.953
  %cond957 = phi %struct.rtx_def* [ %554, %cond.true.953 ], [ %call955, %cond.false.954 ]
  store %struct.rtx_def* %cond957, %struct.rtx_def** %quotient, align 8
  %556 = load i32, i32* %compute_mode, align 4
  %call958 = call %struct.rtx_def* @gen_reg_rtx(i32 %556)
  store %struct.rtx_def* %call958, %struct.rtx_def** %remainder, align 8
  br label %if.end.959

if.end.959:                                       ; preds = %cond.end.956, %cond.end.945
  %557 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  %558 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %559 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %560 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %561 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call960 = call i32 @expand_twoval_binop(%struct.optab* %557, %struct.rtx_def* %558, %struct.rtx_def* %559, %struct.rtx_def* %560, %struct.rtx_def* %561, i32 0)
  %tobool961 = icmp ne i32 %call960, 0
  br i1 %tobool961, label %if.then.962, label %if.end.973

if.then.962:                                      ; preds = %if.end.959
  %call964 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call964, %struct.rtx_def** %label963, align 8
  %562 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %563 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %564 = load i32, i32* %compute_mode, align 4
  %565 = load %struct.rtx_def*, %struct.rtx_def** %label963, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %562, %struct.rtx_def* %563, i32 103, i32 %564, %struct.rtx_def* %565)
  %566 = load i32, i32* %compute_mode, align 4
  %567 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %568 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %569 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call965 = call %struct.rtx_def* @expand_binop(i32 %566, %struct.optab* %567, %struct.rtx_def* %568, %struct.rtx_def* %569, %struct.rtx_def* null, i32 0, i32 2)
  store %struct.rtx_def* %call965, %struct.rtx_def** %tem, align 8
  %570 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %571 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %572 = load i32, i32* %compute_mode, align 4
  %573 = load %struct.rtx_def*, %struct.rtx_def** %label963, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %570, %struct.rtx_def* %571, i32 104, i32 %572, %struct.rtx_def* %573)
  %574 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %575 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_dec(%struct.rtx_def* %574, %struct.rtx_def* %575)
  %576 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %577 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  call void @expand_inc(%struct.rtx_def* %576, %struct.rtx_def* %577)
  %578 = load %struct.rtx_def*, %struct.rtx_def** %label963, align 8
  %call966 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %578)
  %579 = load i32, i32* %mode.addr, align 4
  %580 = load i32, i32* %rem_flag.addr, align 4
  %tobool967 = icmp ne i32 %580, 0
  br i1 %tobool967, label %cond.true.968, label %cond.false.969

cond.true.968:                                    ; preds = %if.then.962
  %581 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  br label %cond.end.970

cond.false.969:                                   ; preds = %if.then.962
  %582 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  br label %cond.end.970

cond.end.970:                                     ; preds = %cond.false.969, %cond.true.968
  %cond971 = phi %struct.rtx_def* [ %581, %cond.true.968 ], [ %582, %cond.false.969 ]
  %call972 = call %struct.rtx_def* @gen_lowpart(i32 %579, %struct.rtx_def* %cond971)
  store %struct.rtx_def* %call972, %struct.rtx_def** %retval
  br label %return

if.end.973:                                       ; preds = %if.end.959
  %583 = load i32, i32* %compute_mode, align 4
  %call975 = call %struct.rtx_def* @gen_reg_rtx(i32 %583)
  store %struct.rtx_def* %call975, %struct.rtx_def** %quotient, align 8
  %584 = load i32, i32* %compute_mode, align 4
  %585 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call976 = call %struct.rtx_def* @copy_to_mode_reg(i32 %584, %struct.rtx_def* %585)
  store %struct.rtx_def* %call976, %struct.rtx_def** %adjusted_op0, align 8
  %call977 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call977, %struct.rtx_def** %label1, align 8
  %call978 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call978, %struct.rtx_def** %label2, align 8
  %call979 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call979, %struct.rtx_def** %label3, align 8
  %call980 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call980, %struct.rtx_def** %label4, align 8
  %call981 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call981, %struct.rtx_def** %label5, align 8
  %586 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %587 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %588 = load i32, i32* %compute_mode, align 4
  %589 = load %struct.rtx_def*, %struct.rtx_def** %label2, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %586, %struct.rtx_def* %587, i32 107, i32 %588, %struct.rtx_def* %589)
  %590 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op0, align 8
  %591 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %592 = load i32, i32* %compute_mode, align 4
  %593 = load %struct.rtx_def*, %struct.rtx_def** %label1, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %590, %struct.rtx_def* %591, i32 107, i32 %592, %struct.rtx_def* %593)
  %594 = load i32, i32* %compute_mode, align 4
  %595 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %596 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op0, align 8
  %597 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %598 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %call982 = call %struct.rtx_def* @expand_binop(i32 %594, %struct.optab* %595, %struct.rtx_def* %596, %struct.rtx_def* %597, %struct.rtx_def* %598, i32 0, i32 3)
  store %struct.rtx_def* %call982, %struct.rtx_def** %tem974, align 8
  %599 = load %struct.rtx_def*, %struct.rtx_def** %tem974, align 8
  %600 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp983 = icmp ne %struct.rtx_def* %599, %600
  br i1 %cmp983, label %if.then.985, label %if.end.987

if.then.985:                                      ; preds = %if.end.973
  %601 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %602 = load %struct.rtx_def*, %struct.rtx_def** %tem974, align 8
  %call986 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %601, %struct.rtx_def* %602)
  br label %if.end.987

if.end.987:                                       ; preds = %if.then.985, %if.end.973
  %603 = load %struct.rtx_def*, %struct.rtx_def** %label5, align 8
  %call988 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %603)
  %call989 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call988)
  %call990 = call %struct.rtx_def* @emit_barrier()
  %604 = load %struct.rtx_def*, %struct.rtx_def** %label1, align 8
  %call991 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %604)
  %605 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op0, align 8
  %606 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_inc(%struct.rtx_def* %605, %struct.rtx_def* %606)
  %607 = load %struct.rtx_def*, %struct.rtx_def** %label4, align 8
  %call992 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %607)
  %call993 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call992)
  %call994 = call %struct.rtx_def* @emit_barrier()
  %608 = load %struct.rtx_def*, %struct.rtx_def** %label2, align 8
  %call995 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %608)
  %609 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op0, align 8
  %610 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %611 = load i32, i32* %compute_mode, align 4
  %612 = load %struct.rtx_def*, %struct.rtx_def** %label3, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %609, %struct.rtx_def* %610, i32 105, i32 %611, %struct.rtx_def* %612)
  %613 = load i32, i32* %compute_mode, align 4
  %614 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %615 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op0, align 8
  %616 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %617 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %call996 = call %struct.rtx_def* @expand_binop(i32 %613, %struct.optab* %614, %struct.rtx_def* %615, %struct.rtx_def* %616, %struct.rtx_def* %617, i32 0, i32 3)
  store %struct.rtx_def* %call996, %struct.rtx_def** %tem974, align 8
  %618 = load %struct.rtx_def*, %struct.rtx_def** %tem974, align 8
  %619 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp997 = icmp ne %struct.rtx_def* %618, %619
  br i1 %cmp997, label %if.then.999, label %if.end.1001

if.then.999:                                      ; preds = %if.end.987
  %620 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %621 = load %struct.rtx_def*, %struct.rtx_def** %tem974, align 8
  %call1000 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %620, %struct.rtx_def* %621)
  br label %if.end.1001

if.end.1001:                                      ; preds = %if.then.999, %if.end.987
  %622 = load %struct.rtx_def*, %struct.rtx_def** %label5, align 8
  %call1002 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %622)
  %call1003 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call1002)
  %call1004 = call %struct.rtx_def* @emit_barrier()
  %623 = load %struct.rtx_def*, %struct.rtx_def** %label3, align 8
  %call1005 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %623)
  %624 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op0, align 8
  %625 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_dec(%struct.rtx_def* %624, %struct.rtx_def* %625)
  %626 = load %struct.rtx_def*, %struct.rtx_def** %label4, align 8
  %call1006 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %626)
  %627 = load i32, i32* %compute_mode, align 4
  %628 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %629 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op0, align 8
  %630 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %631 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %call1007 = call %struct.rtx_def* @expand_binop(i32 %627, %struct.optab* %628, %struct.rtx_def* %629, %struct.rtx_def* %630, %struct.rtx_def* %631, i32 0, i32 3)
  store %struct.rtx_def* %call1007, %struct.rtx_def** %tem974, align 8
  %632 = load %struct.rtx_def*, %struct.rtx_def** %tem974, align 8
  %633 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp1008 = icmp ne %struct.rtx_def* %632, %633
  br i1 %cmp1008, label %if.then.1010, label %if.end.1012

if.then.1010:                                     ; preds = %if.end.1001
  %634 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %635 = load %struct.rtx_def*, %struct.rtx_def** %tem974, align 8
  %call1011 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %634, %struct.rtx_def* %635)
  br label %if.end.1012

if.end.1012:                                      ; preds = %if.then.1010, %if.end.1001
  %636 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %637 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_dec(%struct.rtx_def* %636, %struct.rtx_def* %637)
  %638 = load %struct.rtx_def*, %struct.rtx_def** %label5, align 8
  %call1013 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %638)
  br label %sw.epilog

sw.bb.1014:                                       ; preds = %if.then.296, %if.then.296
  %639 = load i32, i32* %unsignedp.addr, align 4
  %tobool1015 = icmp ne i32 %639, 0
  br i1 %tobool1015, label %if.then.1016, label %if.else.1124

if.then.1016:                                     ; preds = %sw.bb.1014
  %640 = load i32, i32* %op1_is_constant, align 4
  %tobool1017 = icmp ne i32 %640, 0
  br i1 %tobool1017, label %land.lhs.true.1018, label %if.end.1055

land.lhs.true.1018:                               ; preds = %if.then.1016
  %641 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1019 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %641, i32 0, i32 1
  %arrayidx1020 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1019, i32 0, i64 0
  %rtwint1021 = bitcast %union.rtunion_def* %arrayidx1020 to i64*
  %642 = load i64, i64* %rtwint1021, align 8
  %643 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1022 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %643, i32 0, i32 1
  %arrayidx1023 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1022, i32 0, i64 0
  %rtwint1024 = bitcast %union.rtunion_def* %arrayidx1023 to i64*
  %644 = load i64, i64* %rtwint1024, align 8
  %sub1025 = sub nsw i64 %644, 1
  %and1026 = and i64 %642, %sub1025
  %cmp1027 = icmp eq i64 %and1026, 0
  br i1 %cmp1027, label %if.then.1029, label %if.end.1055

if.then.1029:                                     ; preds = %land.lhs.true.1018
  %645 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1034 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %645, i32 0, i32 1
  %arrayidx1035 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1034, i32 0, i64 0
  %rtwint1036 = bitcast %union.rtunion_def* %arrayidx1035 to i64*
  %646 = load i64, i64* %rtwint1036, align 8
  store i64 %646, i64* %d1033, align 8
  %647 = load i32, i32* %compute_mode, align 4
  %648 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %649 = load i64, i64* %d1033, align 8
  %call1037 = call i32 @floor_log2_wide(i64 %649)
  %conv1038 = sext i32 %call1037 to i64
  %call1039 = call %union.tree_node* @build_int_2_wide(i64 %conv1038, i64 0)
  %650 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call1040 = call %struct.rtx_def* @expand_shift(i32 83, i32 %647, %struct.rtx_def* %648, %union.tree_node* %call1039, %struct.rtx_def* %650, i32 1)
  store %struct.rtx_def* %call1040, %struct.rtx_def** %t11030, align 8
  %651 = load i32, i32* %compute_mode, align 4
  %652 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %653 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %654 = load i64, i64* %d1033, align 8
  %sub1041 = sub i64 %654, 1
  %call1042 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub1041)
  %call1043 = call %struct.rtx_def* @expand_binop(i32 %651, %struct.optab* %652, %struct.rtx_def* %653, %struct.rtx_def* %call1042, %struct.rtx_def* null, i32 1, i32 3)
  store %struct.rtx_def* %call1043, %struct.rtx_def** %t21031, align 8
  %655 = load i32, i32* %compute_mode, align 4
  %call1044 = call %struct.rtx_def* @gen_reg_rtx(i32 %655)
  store %struct.rtx_def* %call1044, %struct.rtx_def** %t31032, align 8
  %656 = load %struct.rtx_def*, %struct.rtx_def** %t31032, align 8
  %657 = load %struct.rtx_def*, %struct.rtx_def** %t21031, align 8
  %658 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %659 = load i32, i32* %compute_mode, align 4
  %call1045 = call %struct.rtx_def* @emit_store_flag(%struct.rtx_def* %656, i32 102, %struct.rtx_def* %657, %struct.rtx_def* %658, i32 %659, i32 1, i32 1)
  store %struct.rtx_def* %call1045, %struct.rtx_def** %t31032, align 8
  %660 = load %struct.rtx_def*, %struct.rtx_def** %t31032, align 8
  %cmp1046 = icmp eq %struct.rtx_def* %660, null
  br i1 %cmp1046, label %if.then.1048, label %if.else.1051

if.then.1048:                                     ; preds = %if.then.1029
  %call1049 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1049, %struct.rtx_def** %lab, align 8
  %661 = load %struct.rtx_def*, %struct.rtx_def** %t21031, align 8
  %662 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %663 = load i32, i32* %compute_mode, align 4
  %664 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %661, %struct.rtx_def* %662, i32 103, i32 %663, %struct.rtx_def* %664)
  %665 = load %struct.rtx_def*, %struct.rtx_def** %t11030, align 8
  %666 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_inc(%struct.rtx_def* %665, %struct.rtx_def* %666)
  %667 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %call1050 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %667)
  %668 = load %struct.rtx_def*, %struct.rtx_def** %t11030, align 8
  store %struct.rtx_def* %668, %struct.rtx_def** %quotient, align 8
  br label %if.end.1054

if.else.1051:                                     ; preds = %if.then.1029
  %669 = load i32, i32* %compute_mode, align 4
  %670 = load %struct.rtx_def*, %struct.rtx_def** %t11030, align 8
  %671 = load %struct.rtx_def*, %struct.rtx_def** %t31032, align 8
  %call1052 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %669, %struct.rtx_def* %670, %struct.rtx_def* %671)
  %672 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call1053 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call1052, %struct.rtx_def* %672)
  store %struct.rtx_def* %call1053, %struct.rtx_def** %quotient, align 8
  br label %if.end.1054

if.end.1054:                                      ; preds = %if.else.1051, %if.then.1048
  br label %sw.epilog

if.end.1055:                                      ; preds = %land.lhs.true.1018, %if.then.1016
  %673 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp1056 = icmp eq %struct.rtx_def* %673, null
  br i1 %cmp1056, label %if.then.1064, label %lor.lhs.false.1058

lor.lhs.false.1058:                               ; preds = %if.end.1055
  %674 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %675 = bitcast %struct.rtx_def* %674 to i32*
  %bf.load1059 = load i32, i32* %675, align 8
  %bf.lshr1060 = lshr i32 %bf.load1059, 16
  %bf.clear1061 = and i32 %bf.lshr1060, 255
  %676 = load i32, i32* %compute_mode, align 4
  %cmp1062 = icmp ne i32 %bf.clear1061, %676
  br i1 %cmp1062, label %if.then.1064, label %if.end.1066

if.then.1064:                                     ; preds = %lor.lhs.false.1058, %if.end.1055
  %677 = load i32, i32* %compute_mode, align 4
  %call1065 = call %struct.rtx_def* @gen_reg_rtx(i32 %677)
  store %struct.rtx_def* %call1065, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1066

if.end.1066:                                      ; preds = %if.then.1064, %lor.lhs.false.1058
  %678 = load i32, i32* %rem_flag.addr, align 4
  %tobool1067 = icmp ne i32 %678, 0
  br i1 %tobool1067, label %if.then.1068, label %if.else.1079

if.then.1068:                                     ; preds = %if.end.1066
  %679 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %680 = bitcast %struct.rtx_def* %679 to i32*
  %bf.load1069 = load i32, i32* %680, align 8
  %bf.clear1070 = and i32 %bf.load1069, 65535
  %cmp1071 = icmp eq i32 %bf.clear1070, 61
  br i1 %cmp1071, label %cond.true.1073, label %cond.false.1074

cond.true.1073:                                   ; preds = %if.then.1068
  %681 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end.1076

cond.false.1074:                                  ; preds = %if.then.1068
  %682 = load i32, i32* %compute_mode, align 4
  %call1075 = call %struct.rtx_def* @gen_reg_rtx(i32 %682)
  br label %cond.end.1076

cond.end.1076:                                    ; preds = %cond.false.1074, %cond.true.1073
  %cond1077 = phi %struct.rtx_def* [ %681, %cond.true.1073 ], [ %call1075, %cond.false.1074 ]
  store %struct.rtx_def* %cond1077, %struct.rtx_def** %remainder, align 8
  %683 = load i32, i32* %compute_mode, align 4
  %call1078 = call %struct.rtx_def* @gen_reg_rtx(i32 %683)
  store %struct.rtx_def* %call1078, %struct.rtx_def** %quotient, align 8
  br label %if.end.1090

if.else.1079:                                     ; preds = %if.end.1066
  %684 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %685 = bitcast %struct.rtx_def* %684 to i32*
  %bf.load1080 = load i32, i32* %685, align 8
  %bf.clear1081 = and i32 %bf.load1080, 65535
  %cmp1082 = icmp eq i32 %bf.clear1081, 61
  br i1 %cmp1082, label %cond.true.1084, label %cond.false.1085

cond.true.1084:                                   ; preds = %if.else.1079
  %686 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end.1087

cond.false.1085:                                  ; preds = %if.else.1079
  %687 = load i32, i32* %compute_mode, align 4
  %call1086 = call %struct.rtx_def* @gen_reg_rtx(i32 %687)
  br label %cond.end.1087

cond.end.1087:                                    ; preds = %cond.false.1085, %cond.true.1084
  %cond1088 = phi %struct.rtx_def* [ %686, %cond.true.1084 ], [ %call1086, %cond.false.1085 ]
  store %struct.rtx_def* %cond1088, %struct.rtx_def** %quotient, align 8
  %688 = load i32, i32* %compute_mode, align 4
  %call1089 = call %struct.rtx_def* @gen_reg_rtx(i32 %688)
  store %struct.rtx_def* %call1089, %struct.rtx_def** %remainder, align 8
  br label %if.end.1090

if.end.1090:                                      ; preds = %cond.end.1087, %cond.end.1076
  %689 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 14), align 8
  %690 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %691 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %692 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %693 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call1091 = call i32 @expand_twoval_binop(%struct.optab* %689, %struct.rtx_def* %690, %struct.rtx_def* %691, %struct.rtx_def* %692, %struct.rtx_def* %693, i32 1)
  %tobool1092 = icmp ne i32 %call1091, 0
  br i1 %tobool1092, label %if.then.1093, label %if.end.1103

if.then.1093:                                     ; preds = %if.end.1090
  %call1095 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1095, %struct.rtx_def** %label1094, align 8
  %694 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %695 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %696 = load i32, i32* %compute_mode, align 4
  %697 = load %struct.rtx_def*, %struct.rtx_def** %label1094, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %694, %struct.rtx_def* %695, i32 103, i32 %696, %struct.rtx_def* %697)
  %698 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %699 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_inc(%struct.rtx_def* %698, %struct.rtx_def* %699)
  %700 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %701 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  call void @expand_dec(%struct.rtx_def* %700, %struct.rtx_def* %701)
  %702 = load %struct.rtx_def*, %struct.rtx_def** %label1094, align 8
  %call1096 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %702)
  %703 = load i32, i32* %mode.addr, align 4
  %704 = load i32, i32* %rem_flag.addr, align 4
  %tobool1097 = icmp ne i32 %704, 0
  br i1 %tobool1097, label %cond.true.1098, label %cond.false.1099

cond.true.1098:                                   ; preds = %if.then.1093
  %705 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  br label %cond.end.1100

cond.false.1099:                                  ; preds = %if.then.1093
  %706 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  br label %cond.end.1100

cond.end.1100:                                    ; preds = %cond.false.1099, %cond.true.1098
  %cond1101 = phi %struct.rtx_def* [ %705, %cond.true.1098 ], [ %706, %cond.false.1099 ]
  %call1102 = call %struct.rtx_def* @gen_lowpart(i32 %703, %struct.rtx_def* %cond1101)
  store %struct.rtx_def* %call1102, %struct.rtx_def** %retval
  br label %return

if.end.1103:                                      ; preds = %if.end.1090
  %707 = load i32, i32* %compute_mode, align 4
  %call1108 = call %struct.rtx_def* @gen_reg_rtx(i32 %707)
  store %struct.rtx_def* %call1108, %struct.rtx_def** %quotient, align 8
  %708 = load i32, i32* %compute_mode, align 4
  %709 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1109 = call %struct.rtx_def* @copy_to_mode_reg(i32 %708, %struct.rtx_def* %709)
  store %struct.rtx_def* %call1109, %struct.rtx_def** %adjusted_op01106, align 8
  %call1110 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1110, %struct.rtx_def** %label11104, align 8
  %call1111 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1111, %struct.rtx_def** %label21105, align 8
  %710 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op01106, align 8
  %711 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %712 = load i32, i32* %compute_mode, align 4
  %713 = load %struct.rtx_def*, %struct.rtx_def** %label11104, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %710, %struct.rtx_def* %711, i32 102, i32 %712, %struct.rtx_def* %713)
  %714 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %715 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call1112 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %714, %struct.rtx_def* %715)
  %716 = load %struct.rtx_def*, %struct.rtx_def** %label21105, align 8
  %call1113 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %716)
  %call1114 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call1113)
  %call1115 = call %struct.rtx_def* @emit_barrier()
  %717 = load %struct.rtx_def*, %struct.rtx_def** %label11104, align 8
  %call1116 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %717)
  %718 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op01106, align 8
  %719 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_dec(%struct.rtx_def* %718, %struct.rtx_def* %719)
  %720 = load i32, i32* %compute_mode, align 4
  %721 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 13), align 8
  %722 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op01106, align 8
  %723 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %724 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %call1117 = call %struct.rtx_def* @expand_binop(i32 %720, %struct.optab* %721, %struct.rtx_def* %722, %struct.rtx_def* %723, %struct.rtx_def* %724, i32 1, i32 3)
  store %struct.rtx_def* %call1117, %struct.rtx_def** %tem1107, align 8
  %725 = load %struct.rtx_def*, %struct.rtx_def** %tem1107, align 8
  %726 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp1118 = icmp ne %struct.rtx_def* %725, %726
  br i1 %cmp1118, label %if.then.1120, label %if.end.1122

if.then.1120:                                     ; preds = %if.end.1103
  %727 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %728 = load %struct.rtx_def*, %struct.rtx_def** %tem1107, align 8
  %call1121 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %727, %struct.rtx_def* %728)
  br label %if.end.1122

if.end.1122:                                      ; preds = %if.then.1120, %if.end.1103
  %729 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %730 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_inc(%struct.rtx_def* %729, %struct.rtx_def* %730)
  %731 = load %struct.rtx_def*, %struct.rtx_def** %label21105, align 8
  %call1123 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %731)
  br label %if.end.1267

if.else.1124:                                     ; preds = %sw.bb.1014
  %732 = load i32, i32* %op1_is_constant, align 4
  %tobool1125 = icmp ne i32 %732, 0
  br i1 %tobool1125, label %land.lhs.true.1126, label %if.end.1170

land.lhs.true.1126:                               ; preds = %if.else.1124
  %733 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %733, i32 0, i32 1
  %arrayidx1128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1127, i32 0, i64 0
  %rtwint1129 = bitcast %union.rtunion_def* %arrayidx1128 to i64*
  %734 = load i64, i64* %rtwint1129, align 8
  %735 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1130 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %735, i32 0, i32 1
  %arrayidx1131 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1130, i32 0, i64 0
  %rtwint1132 = bitcast %union.rtunion_def* %arrayidx1131 to i64*
  %736 = load i64, i64* %rtwint1132, align 8
  %sub1133 = sub nsw i64 %736, 1
  %and1134 = and i64 %734, %sub1133
  %cmp1135 = icmp eq i64 %and1134, 0
  br i1 %cmp1135, label %land.lhs.true.1137, label %if.end.1170

land.lhs.true.1137:                               ; preds = %land.lhs.true.1126
  %737 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %737, i32 0, i32 1
  %arrayidx1139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1138, i32 0, i64 0
  %rtwint1140 = bitcast %union.rtunion_def* %arrayidx1139 to i64*
  %738 = load i64, i64* %rtwint1140, align 8
  %cmp1141 = icmp sge i64 %738, 0
  br i1 %cmp1141, label %if.then.1143, label %if.end.1170

if.then.1143:                                     ; preds = %land.lhs.true.1137
  %739 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %739, i32 0, i32 1
  %arrayidx1149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1148, i32 0, i64 0
  %rtwint1150 = bitcast %union.rtunion_def* %arrayidx1149 to i64*
  %740 = load i64, i64* %rtwint1150, align 8
  store i64 %740, i64* %d1147, align 8
  %741 = load i32, i32* %compute_mode, align 4
  %742 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %743 = load i64, i64* %d1147, align 8
  %call1151 = call i32 @floor_log2_wide(i64 %743)
  %conv1152 = sext i32 %call1151 to i64
  %call1153 = call %union.tree_node* @build_int_2_wide(i64 %conv1152, i64 0)
  %744 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call1154 = call %struct.rtx_def* @expand_shift(i32 83, i32 %741, %struct.rtx_def* %742, %union.tree_node* %call1153, %struct.rtx_def* %744, i32 0)
  store %struct.rtx_def* %call1154, %struct.rtx_def** %t11144, align 8
  %745 = load i32, i32* %compute_mode, align 4
  %746 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %747 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %748 = load i64, i64* %d1147, align 8
  %sub1155 = sub i64 %748, 1
  %call1156 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %sub1155)
  %call1157 = call %struct.rtx_def* @expand_binop(i32 %745, %struct.optab* %746, %struct.rtx_def* %747, %struct.rtx_def* %call1156, %struct.rtx_def* null, i32 1, i32 3)
  store %struct.rtx_def* %call1157, %struct.rtx_def** %t21145, align 8
  %749 = load i32, i32* %compute_mode, align 4
  %call1158 = call %struct.rtx_def* @gen_reg_rtx(i32 %749)
  store %struct.rtx_def* %call1158, %struct.rtx_def** %t31146, align 8
  %750 = load %struct.rtx_def*, %struct.rtx_def** %t31146, align 8
  %751 = load %struct.rtx_def*, %struct.rtx_def** %t21145, align 8
  %752 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %753 = load i32, i32* %compute_mode, align 4
  %call1159 = call %struct.rtx_def* @emit_store_flag(%struct.rtx_def* %750, i32 102, %struct.rtx_def* %751, %struct.rtx_def* %752, i32 %753, i32 1, i32 1)
  store %struct.rtx_def* %call1159, %struct.rtx_def** %t31146, align 8
  %754 = load %struct.rtx_def*, %struct.rtx_def** %t31146, align 8
  %cmp1160 = icmp eq %struct.rtx_def* %754, null
  br i1 %cmp1160, label %if.then.1162, label %if.else.1166

if.then.1162:                                     ; preds = %if.then.1143
  %call1164 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1164, %struct.rtx_def** %lab1163, align 8
  %755 = load %struct.rtx_def*, %struct.rtx_def** %t21145, align 8
  %756 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %757 = load i32, i32* %compute_mode, align 4
  %758 = load %struct.rtx_def*, %struct.rtx_def** %lab1163, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %755, %struct.rtx_def* %756, i32 103, i32 %757, %struct.rtx_def* %758)
  %759 = load %struct.rtx_def*, %struct.rtx_def** %t11144, align 8
  %760 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_inc(%struct.rtx_def* %759, %struct.rtx_def* %760)
  %761 = load %struct.rtx_def*, %struct.rtx_def** %lab1163, align 8
  %call1165 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %761)
  %762 = load %struct.rtx_def*, %struct.rtx_def** %t11144, align 8
  store %struct.rtx_def* %762, %struct.rtx_def** %quotient, align 8
  br label %if.end.1169

if.else.1166:                                     ; preds = %if.then.1143
  %763 = load i32, i32* %compute_mode, align 4
  %764 = load %struct.rtx_def*, %struct.rtx_def** %t11144, align 8
  %765 = load %struct.rtx_def*, %struct.rtx_def** %t31146, align 8
  %call1167 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %763, %struct.rtx_def* %764, %struct.rtx_def* %765)
  %766 = load %struct.rtx_def*, %struct.rtx_def** %tquotient, align 8
  %call1168 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %call1167, %struct.rtx_def* %766)
  store %struct.rtx_def* %call1168, %struct.rtx_def** %quotient, align 8
  br label %if.end.1169

if.end.1169:                                      ; preds = %if.else.1166, %if.then.1162
  br label %sw.epilog

if.end.1170:                                      ; preds = %land.lhs.true.1137, %land.lhs.true.1126, %if.else.1124
  %767 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp1171 = icmp eq %struct.rtx_def* %767, null
  br i1 %cmp1171, label %if.then.1179, label %lor.lhs.false.1173

lor.lhs.false.1173:                               ; preds = %if.end.1170
  %768 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %769 = bitcast %struct.rtx_def* %768 to i32*
  %bf.load1174 = load i32, i32* %769, align 8
  %bf.lshr1175 = lshr i32 %bf.load1174, 16
  %bf.clear1176 = and i32 %bf.lshr1175, 255
  %770 = load i32, i32* %compute_mode, align 4
  %cmp1177 = icmp ne i32 %bf.clear1176, %770
  br i1 %cmp1177, label %if.then.1179, label %if.end.1181

if.then.1179:                                     ; preds = %lor.lhs.false.1173, %if.end.1170
  %771 = load i32, i32* %compute_mode, align 4
  %call1180 = call %struct.rtx_def* @gen_reg_rtx(i32 %771)
  store %struct.rtx_def* %call1180, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1181

if.end.1181:                                      ; preds = %if.then.1179, %lor.lhs.false.1173
  %772 = load i32, i32* %rem_flag.addr, align 4
  %tobool1182 = icmp ne i32 %772, 0
  br i1 %tobool1182, label %if.then.1183, label %if.else.1194

if.then.1183:                                     ; preds = %if.end.1181
  %773 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %774 = bitcast %struct.rtx_def* %773 to i32*
  %bf.load1184 = load i32, i32* %774, align 8
  %bf.clear1185 = and i32 %bf.load1184, 65535
  %cmp1186 = icmp eq i32 %bf.clear1185, 61
  br i1 %cmp1186, label %cond.true.1188, label %cond.false.1189

cond.true.1188:                                   ; preds = %if.then.1183
  %775 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end.1191

cond.false.1189:                                  ; preds = %if.then.1183
  %776 = load i32, i32* %compute_mode, align 4
  %call1190 = call %struct.rtx_def* @gen_reg_rtx(i32 %776)
  br label %cond.end.1191

cond.end.1191:                                    ; preds = %cond.false.1189, %cond.true.1188
  %cond1192 = phi %struct.rtx_def* [ %775, %cond.true.1188 ], [ %call1190, %cond.false.1189 ]
  store %struct.rtx_def* %cond1192, %struct.rtx_def** %remainder, align 8
  %777 = load i32, i32* %compute_mode, align 4
  %call1193 = call %struct.rtx_def* @gen_reg_rtx(i32 %777)
  store %struct.rtx_def* %call1193, %struct.rtx_def** %quotient, align 8
  br label %if.end.1205

if.else.1194:                                     ; preds = %if.end.1181
  %778 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %779 = bitcast %struct.rtx_def* %778 to i32*
  %bf.load1195 = load i32, i32* %779, align 8
  %bf.clear1196 = and i32 %bf.load1195, 65535
  %cmp1197 = icmp eq i32 %bf.clear1196, 61
  br i1 %cmp1197, label %cond.true.1199, label %cond.false.1200

cond.true.1199:                                   ; preds = %if.else.1194
  %780 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end.1202

cond.false.1200:                                  ; preds = %if.else.1194
  %781 = load i32, i32* %compute_mode, align 4
  %call1201 = call %struct.rtx_def* @gen_reg_rtx(i32 %781)
  br label %cond.end.1202

cond.end.1202:                                    ; preds = %cond.false.1200, %cond.true.1199
  %cond1203 = phi %struct.rtx_def* [ %780, %cond.true.1199 ], [ %call1201, %cond.false.1200 ]
  store %struct.rtx_def* %cond1203, %struct.rtx_def** %quotient, align 8
  %782 = load i32, i32* %compute_mode, align 4
  %call1204 = call %struct.rtx_def* @gen_reg_rtx(i32 %782)
  store %struct.rtx_def* %call1204, %struct.rtx_def** %remainder, align 8
  br label %if.end.1205

if.end.1205:                                      ; preds = %cond.end.1202, %cond.end.1191
  %783 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  %784 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %785 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %786 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %787 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call1206 = call i32 @expand_twoval_binop(%struct.optab* %783, %struct.rtx_def* %784, %struct.rtx_def* %785, %struct.rtx_def* %786, %struct.rtx_def* %787, i32 0)
  %tobool1207 = icmp ne i32 %call1206, 0
  br i1 %tobool1207, label %if.then.1208, label %if.end.1220

if.then.1208:                                     ; preds = %if.end.1205
  %call1211 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1211, %struct.rtx_def** %label1210, align 8
  %788 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %789 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %790 = load i32, i32* %compute_mode, align 4
  %791 = load %struct.rtx_def*, %struct.rtx_def** %label1210, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %788, %struct.rtx_def* %789, i32 103, i32 %790, %struct.rtx_def* %791)
  %792 = load i32, i32* %compute_mode, align 4
  %793 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %794 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %795 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1212 = call %struct.rtx_def* @expand_binop(i32 %792, %struct.optab* %793, %struct.rtx_def* %794, %struct.rtx_def* %795, %struct.rtx_def* null, i32 0, i32 2)
  store %struct.rtx_def* %call1212, %struct.rtx_def** %tem1209, align 8
  %796 = load %struct.rtx_def*, %struct.rtx_def** %tem1209, align 8
  %797 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %798 = load i32, i32* %compute_mode, align 4
  %799 = load %struct.rtx_def*, %struct.rtx_def** %label1210, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %796, %struct.rtx_def* %797, i32 107, i32 %798, %struct.rtx_def* %799)
  %800 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %801 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_inc(%struct.rtx_def* %800, %struct.rtx_def* %801)
  %802 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %803 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  call void @expand_dec(%struct.rtx_def* %802, %struct.rtx_def* %803)
  %804 = load %struct.rtx_def*, %struct.rtx_def** %label1210, align 8
  %call1213 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %804)
  %805 = load i32, i32* %mode.addr, align 4
  %806 = load i32, i32* %rem_flag.addr, align 4
  %tobool1214 = icmp ne i32 %806, 0
  br i1 %tobool1214, label %cond.true.1215, label %cond.false.1216

cond.true.1215:                                   ; preds = %if.then.1208
  %807 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  br label %cond.end.1217

cond.false.1216:                                  ; preds = %if.then.1208
  %808 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  br label %cond.end.1217

cond.end.1217:                                    ; preds = %cond.false.1216, %cond.true.1215
  %cond1218 = phi %struct.rtx_def* [ %807, %cond.true.1215 ], [ %808, %cond.false.1216 ]
  %call1219 = call %struct.rtx_def* @gen_lowpart(i32 %805, %struct.rtx_def* %cond1218)
  store %struct.rtx_def* %call1219, %struct.rtx_def** %retval
  br label %return

if.end.1220:                                      ; preds = %if.end.1205
  %809 = load i32, i32* %compute_mode, align 4
  %call1228 = call %struct.rtx_def* @gen_reg_rtx(i32 %809)
  store %struct.rtx_def* %call1228, %struct.rtx_def** %quotient, align 8
  %810 = load i32, i32* %compute_mode, align 4
  %811 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1229 = call %struct.rtx_def* @copy_to_mode_reg(i32 %810, %struct.rtx_def* %811)
  store %struct.rtx_def* %call1229, %struct.rtx_def** %adjusted_op01226, align 8
  %call1230 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1230, %struct.rtx_def** %label11221, align 8
  %call1231 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1231, %struct.rtx_def** %label21222, align 8
  %call1232 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1232, %struct.rtx_def** %label31223, align 8
  %call1233 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1233, %struct.rtx_def** %label41224, align 8
  %call1234 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1234, %struct.rtx_def** %label51225, align 8
  %812 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %813 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %814 = load i32, i32* %compute_mode, align 4
  %815 = load %struct.rtx_def*, %struct.rtx_def** %label21222, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %812, %struct.rtx_def* %813, i32 107, i32 %814, %struct.rtx_def* %815)
  %816 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op01226, align 8
  %817 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %818 = load i32, i32* %compute_mode, align 4
  %819 = load %struct.rtx_def*, %struct.rtx_def** %label11221, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %816, %struct.rtx_def* %817, i32 105, i32 %818, %struct.rtx_def* %819)
  %820 = load i32, i32* %compute_mode, align 4
  %821 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %822 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op01226, align 8
  %823 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %824 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %call1235 = call %struct.rtx_def* @expand_binop(i32 %820, %struct.optab* %821, %struct.rtx_def* %822, %struct.rtx_def* %823, %struct.rtx_def* %824, i32 0, i32 3)
  store %struct.rtx_def* %call1235, %struct.rtx_def** %tem1227, align 8
  %825 = load %struct.rtx_def*, %struct.rtx_def** %tem1227, align 8
  %826 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp1236 = icmp ne %struct.rtx_def* %825, %826
  br i1 %cmp1236, label %if.then.1238, label %if.end.1240

if.then.1238:                                     ; preds = %if.end.1220
  %827 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %828 = load %struct.rtx_def*, %struct.rtx_def** %tem1227, align 8
  %call1239 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %827, %struct.rtx_def* %828)
  br label %if.end.1240

if.end.1240:                                      ; preds = %if.then.1238, %if.end.1220
  %829 = load %struct.rtx_def*, %struct.rtx_def** %label51225, align 8
  %call1241 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %829)
  %call1242 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call1241)
  %call1243 = call %struct.rtx_def* @emit_barrier()
  %830 = load %struct.rtx_def*, %struct.rtx_def** %label11221, align 8
  %call1244 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %830)
  %831 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op01226, align 8
  %832 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_dec(%struct.rtx_def* %831, %struct.rtx_def* %832)
  %833 = load %struct.rtx_def*, %struct.rtx_def** %label41224, align 8
  %call1245 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %833)
  %call1246 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call1245)
  %call1247 = call %struct.rtx_def* @emit_barrier()
  %834 = load %struct.rtx_def*, %struct.rtx_def** %label21222, align 8
  %call1248 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %834)
  %835 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op01226, align 8
  %836 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %837 = load i32, i32* %compute_mode, align 4
  %838 = load %struct.rtx_def*, %struct.rtx_def** %label31223, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %835, %struct.rtx_def* %836, i32 107, i32 %837, %struct.rtx_def* %838)
  %839 = load i32, i32* %compute_mode, align 4
  %840 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %841 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op01226, align 8
  %842 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %843 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %call1249 = call %struct.rtx_def* @expand_binop(i32 %839, %struct.optab* %840, %struct.rtx_def* %841, %struct.rtx_def* %842, %struct.rtx_def* %843, i32 0, i32 3)
  store %struct.rtx_def* %call1249, %struct.rtx_def** %tem1227, align 8
  %844 = load %struct.rtx_def*, %struct.rtx_def** %tem1227, align 8
  %845 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp1250 = icmp ne %struct.rtx_def* %844, %845
  br i1 %cmp1250, label %if.then.1252, label %if.end.1254

if.then.1252:                                     ; preds = %if.end.1240
  %846 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %847 = load %struct.rtx_def*, %struct.rtx_def** %tem1227, align 8
  %call1253 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %846, %struct.rtx_def* %847)
  br label %if.end.1254

if.end.1254:                                      ; preds = %if.then.1252, %if.end.1240
  %848 = load %struct.rtx_def*, %struct.rtx_def** %label51225, align 8
  %call1255 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %848)
  %call1256 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call1255)
  %call1257 = call %struct.rtx_def* @emit_barrier()
  %849 = load %struct.rtx_def*, %struct.rtx_def** %label31223, align 8
  %call1258 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %849)
  %850 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op01226, align 8
  %851 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_inc(%struct.rtx_def* %850, %struct.rtx_def* %851)
  %852 = load %struct.rtx_def*, %struct.rtx_def** %label41224, align 8
  %call1259 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %852)
  %853 = load i32, i32* %compute_mode, align 4
  %854 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %855 = load %struct.rtx_def*, %struct.rtx_def** %adjusted_op01226, align 8
  %856 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %857 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %call1260 = call %struct.rtx_def* @expand_binop(i32 %853, %struct.optab* %854, %struct.rtx_def* %855, %struct.rtx_def* %856, %struct.rtx_def* %857, i32 0, i32 3)
  store %struct.rtx_def* %call1260, %struct.rtx_def** %tem1227, align 8
  %858 = load %struct.rtx_def*, %struct.rtx_def** %tem1227, align 8
  %859 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp1261 = icmp ne %struct.rtx_def* %858, %859
  br i1 %cmp1261, label %if.then.1263, label %if.end.1265

if.then.1263:                                     ; preds = %if.end.1254
  %860 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %861 = load %struct.rtx_def*, %struct.rtx_def** %tem1227, align 8
  %call1264 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %860, %struct.rtx_def* %861)
  br label %if.end.1265

if.end.1265:                                      ; preds = %if.then.1263, %if.end.1254
  %862 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %863 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_inc(%struct.rtx_def* %862, %struct.rtx_def* %863)
  %864 = load %struct.rtx_def*, %struct.rtx_def** %label51225, align 8
  %call1266 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %864)
  br label %if.end.1267

if.end.1267:                                      ; preds = %if.end.1265, %if.end.1122
  br label %sw.epilog

sw.bb.1268:                                       ; preds = %if.then.296
  %865 = load i32, i32* %op1_is_constant, align 4
  %tobool1269 = icmp ne i32 %865, 0
  br i1 %tobool1269, label %land.lhs.true.1270, label %if.end.1298

land.lhs.true.1270:                               ; preds = %sw.bb.1268
  %866 = load i32, i32* %size, align 4
  %cmp1271 = icmp sge i32 64, %866
  br i1 %cmp1271, label %if.then.1273, label %if.end.1298

if.then.1273:                                     ; preds = %land.lhs.true.1270
  %867 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld1275 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %867, i32 0, i32 1
  %arrayidx1276 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1275, i32 0, i64 0
  %rtwint1277 = bitcast %union.rtunion_def* %arrayidx1276 to i64*
  %868 = load i64, i64* %rtwint1277, align 8
  store i64 %868, i64* %d1274, align 8
  %869 = load i64, i64* %d1274, align 8
  %870 = load i64, i64* %d1274, align 8
  %sub1281 = sub nsw i64 0, %870
  %and1282 = and i64 %869, %sub1281
  %call1283 = call i32 @floor_log2_wide(i64 %and1282)
  store i32 %call1283, i32* %pre_shift1279, align 4
  %871 = load i64, i64* %d1274, align 8
  %872 = load i32, i32* %pre_shift1279, align 4
  %sh_prom1284 = zext i32 %872 to i64
  %shr1285 = ashr i64 %871, %sh_prom1284
  %873 = load i32, i32* %size, align 4
  %call1286 = call i64 @invert_mod2n(i64 %shr1285, i32 %873)
  store i64 %call1286, i64* %ml1278, align 8
  %874 = load i32, i32* %compute_mode, align 4
  %875 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %876 = load i32, i32* %pre_shift1279, align 4
  %conv1287 = sext i32 %876 to i64
  %call1288 = call %union.tree_node* @build_int_2_wide(i64 %conv1287, i64 0)
  %877 = load i32, i32* %unsignedp.addr, align 4
  %call1289 = call %struct.rtx_def* @expand_shift(i32 83, i32 %874, %struct.rtx_def* %875, %union.tree_node* %call1288, %struct.rtx_def* null, i32 %877)
  store %struct.rtx_def* %call1289, %struct.rtx_def** %t11280, align 8
  %878 = load i32, i32* %compute_mode, align 4
  %879 = load %struct.rtx_def*, %struct.rtx_def** %t11280, align 8
  %880 = load i64, i64* %ml1278, align 8
  %881 = load i32, i32* %compute_mode, align 4
  %call1290 = call i64 @trunc_int_for_mode(i64 %880, i32 %881)
  %call1291 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call1290)
  %call1292 = call %struct.rtx_def* @expand_mult(i32 %878, %struct.rtx_def* %879, %struct.rtx_def* %call1291, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call1292, %struct.rtx_def** %quotient, align 8
  %call1293 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call1293, %struct.rtx_def** %insn, align 8
  %882 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %883 = load i32, i32* %unsignedp.addr, align 4
  %tobool1294 = icmp ne i32 %883, 0
  %cond1295 = select i1 %tobool1294, i32 81, i32 79
  %884 = load i32, i32* %compute_mode, align 4
  %885 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %886 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1296 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %cond1295, i32 %884, %struct.rtx_def* %885, %struct.rtx_def* %886)
  %call1297 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %882, i32 4, %struct.rtx_def* %call1296)
  br label %if.end.1298

if.end.1298:                                      ; preds = %if.then.1273, %land.lhs.true.1270, %sw.bb.1268
  br label %sw.epilog

sw.bb.1299:                                       ; preds = %if.then.296, %if.then.296
  %887 = load i32, i32* %unsignedp.addr, align 4
  %tobool1300 = icmp ne i32 %887, 0
  br i1 %tobool1300, label %if.then.1301, label %if.else.1320

if.then.1301:                                     ; preds = %sw.bb.1299
  %call1304 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1304, %struct.rtx_def** %label1303, align 8
  %888 = load i32, i32* %compute_mode, align 4
  %call1305 = call %struct.rtx_def* @gen_reg_rtx(i32 %888)
  store %struct.rtx_def* %call1305, %struct.rtx_def** %quotient, align 8
  %889 = load i32, i32* %compute_mode, align 4
  %call1306 = call %struct.rtx_def* @gen_reg_rtx(i32 %889)
  store %struct.rtx_def* %call1306, %struct.rtx_def** %remainder, align 8
  %890 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 14), align 8
  %891 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %892 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %893 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %894 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call1307 = call i32 @expand_twoval_binop(%struct.optab* %890, %struct.rtx_def* %891, %struct.rtx_def* %892, %struct.rtx_def* %893, %struct.rtx_def* %894, i32 1)
  %cmp1308 = icmp eq i32 %call1307, 0
  br i1 %cmp1308, label %if.then.1310, label %if.end.1315

if.then.1310:                                     ; preds = %if.then.1301
  %895 = load i32, i32* %compute_mode, align 4
  %896 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 13), align 8
  %897 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %898 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %899 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %call1312 = call %struct.rtx_def* @expand_binop(i32 %895, %struct.optab* %896, %struct.rtx_def* %897, %struct.rtx_def* %898, %struct.rtx_def* %899, i32 1, i32 3)
  store %struct.rtx_def* %call1312, %struct.rtx_def** %quotient, align 8
  %900 = load i32, i32* %compute_mode, align 4
  %901 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %902 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1313 = call %struct.rtx_def* @expand_mult(i32 %900, %struct.rtx_def* %901, %struct.rtx_def* %902, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call1313, %struct.rtx_def** %tem1311, align 8
  %903 = load i32, i32* %compute_mode, align 4
  %904 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %905 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %906 = load %struct.rtx_def*, %struct.rtx_def** %tem1311, align 8
  %907 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call1314 = call %struct.rtx_def* @expand_binop(i32 %903, %struct.optab* %904, %struct.rtx_def* %905, %struct.rtx_def* %906, %struct.rtx_def* %907, i32 1, i32 3)
  store %struct.rtx_def* %call1314, %struct.rtx_def** %remainder, align 8
  br label %if.end.1315

if.end.1315:                                      ; preds = %if.then.1310, %if.then.1301
  %908 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1316 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %908, i64 -1)
  store %struct.rtx_def* %call1316, %struct.rtx_def** %tem1302, align 8
  %909 = load i32, i32* %compute_mode, align 4
  %910 = load %struct.rtx_def*, %struct.rtx_def** %tem1302, align 8
  %call1317 = call %union.tree_node* @build_int_2_wide(i64 1, i64 0)
  %call1318 = call %struct.rtx_def* @expand_shift(i32 83, i32 %909, %struct.rtx_def* %910, %union.tree_node* %call1317, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call1318, %struct.rtx_def** %tem1302, align 8
  %911 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %912 = load %struct.rtx_def*, %struct.rtx_def** %tem1302, align 8
  %913 = load i32, i32* %compute_mode, align 4
  %914 = load %struct.rtx_def*, %struct.rtx_def** %label1303, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %911, %struct.rtx_def* %912, i32 110, i32 %913, %struct.rtx_def* %914)
  %915 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %916 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  call void @expand_inc(%struct.rtx_def* %915, %struct.rtx_def* %916)
  %917 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %918 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  call void @expand_dec(%struct.rtx_def* %917, %struct.rtx_def* %918)
  %919 = load %struct.rtx_def*, %struct.rtx_def** %label1303, align 8
  %call1319 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %919)
  br label %if.end.1349

if.else.1320:                                     ; preds = %sw.bb.1299
  %call1323 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1323, %struct.rtx_def** %label1322, align 8
  %920 = load i32, i32* %compute_mode, align 4
  %call1324 = call %struct.rtx_def* @gen_reg_rtx(i32 %920)
  store %struct.rtx_def* %call1324, %struct.rtx_def** %quotient, align 8
  %921 = load i32, i32* %compute_mode, align 4
  %call1325 = call %struct.rtx_def* @gen_reg_rtx(i32 %921)
  store %struct.rtx_def* %call1325, %struct.rtx_def** %remainder, align 8
  %922 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  %923 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %924 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %925 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %926 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call1326 = call i32 @expand_twoval_binop(%struct.optab* %922, %struct.rtx_def* %923, %struct.rtx_def* %924, %struct.rtx_def* %925, %struct.rtx_def* %926, i32 0)
  %cmp1327 = icmp eq i32 %call1326, 0
  br i1 %cmp1327, label %if.then.1329, label %if.end.1334

if.then.1329:                                     ; preds = %if.else.1320
  %927 = load i32, i32* %compute_mode, align 4
  %928 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %929 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %930 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %931 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %call1331 = call %struct.rtx_def* @expand_binop(i32 %927, %struct.optab* %928, %struct.rtx_def* %929, %struct.rtx_def* %930, %struct.rtx_def* %931, i32 0, i32 3)
  store %struct.rtx_def* %call1331, %struct.rtx_def** %quotient, align 8
  %932 = load i32, i32* %compute_mode, align 4
  %933 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %934 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1332 = call %struct.rtx_def* @expand_mult(i32 %932, %struct.rtx_def* %933, %struct.rtx_def* %934, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call1332, %struct.rtx_def** %tem1330, align 8
  %935 = load i32, i32* %compute_mode, align 4
  %936 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %937 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %938 = load %struct.rtx_def*, %struct.rtx_def** %tem1330, align 8
  %939 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call1333 = call %struct.rtx_def* @expand_binop(i32 %935, %struct.optab* %936, %struct.rtx_def* %937, %struct.rtx_def* %938, %struct.rtx_def* %939, i32 0, i32 3)
  store %struct.rtx_def* %call1333, %struct.rtx_def** %remainder, align 8
  br label %if.end.1334

if.end.1334:                                      ; preds = %if.then.1329, %if.else.1320
  %940 = load i32, i32* %compute_mode, align 4
  %941 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call1335 = call %struct.rtx_def* @expand_abs(i32 %940, %struct.rtx_def* %941, %struct.rtx_def* null, i32 1, i32 0)
  store %struct.rtx_def* %call1335, %struct.rtx_def** %abs_rem, align 8
  %942 = load i32, i32* %compute_mode, align 4
  %943 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1336 = call %struct.rtx_def* @expand_abs(i32 %942, %struct.rtx_def* %943, %struct.rtx_def* null, i32 1, i32 0)
  store %struct.rtx_def* %call1336, %struct.rtx_def** %abs_op1, align 8
  %944 = load i32, i32* %compute_mode, align 4
  %945 = load %struct.rtx_def*, %struct.rtx_def** %abs_rem, align 8
  %call1337 = call %union.tree_node* @build_int_2_wide(i64 1, i64 0)
  %call1338 = call %struct.rtx_def* @expand_shift(i32 82, i32 %944, %struct.rtx_def* %945, %union.tree_node* %call1337, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call1338, %struct.rtx_def** %tem1321, align 8
  %946 = load %struct.rtx_def*, %struct.rtx_def** %tem1321, align 8
  %947 = load %struct.rtx_def*, %struct.rtx_def** %abs_op1, align 8
  %948 = load i32, i32* %compute_mode, align 4
  %949 = load %struct.rtx_def*, %struct.rtx_def** %label1322, align 8
  call void @do_cmp_and_jump(%struct.rtx_def* %946, %struct.rtx_def* %947, i32 111, i32 %948, %struct.rtx_def* %949)
  %950 = load i32, i32* %compute_mode, align 4
  %951 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %952 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %953 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1339 = call %struct.rtx_def* @expand_binop(i32 %950, %struct.optab* %951, %struct.rtx_def* %952, %struct.rtx_def* %953, %struct.rtx_def* null, i32 0, i32 2)
  store %struct.rtx_def* %call1339, %struct.rtx_def** %tem1321, align 8
  %954 = load i32, i32* %compute_mode, align 4
  %955 = load %struct.rtx_def*, %struct.rtx_def** %tem1321, align 8
  %956 = load i32, i32* %size, align 4
  %sub1340 = sub nsw i32 %956, 1
  %conv1341 = sext i32 %sub1340 to i64
  %call1342 = call %union.tree_node* @build_int_2_wide(i64 %conv1341, i64 0)
  %call1343 = call %struct.rtx_def* @expand_shift(i32 83, i32 %954, %struct.rtx_def* %955, %union.tree_node* %call1342, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call1343, %struct.rtx_def** %mask, align 8
  %957 = load i32, i32* %compute_mode, align 4
  %958 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %959 = load %struct.rtx_def*, %struct.rtx_def** %mask, align 8
  %960 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %call1344 = call %struct.rtx_def* @expand_binop(i32 %957, %struct.optab* %958, %struct.rtx_def* %959, %struct.rtx_def* %960, %struct.rtx_def* null, i32 0, i32 2)
  store %struct.rtx_def* %call1344, %struct.rtx_def** %tem1321, align 8
  %961 = load i32, i32* %compute_mode, align 4
  %962 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %963 = load %struct.rtx_def*, %struct.rtx_def** %tem1321, align 8
  %964 = load %struct.rtx_def*, %struct.rtx_def** %mask, align 8
  %call1345 = call %struct.rtx_def* @expand_binop(i32 %961, %struct.optab* %962, %struct.rtx_def* %963, %struct.rtx_def* %964, %struct.rtx_def* null, i32 0, i32 2)
  store %struct.rtx_def* %call1345, %struct.rtx_def** %tem1321, align 8
  %965 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %966 = load %struct.rtx_def*, %struct.rtx_def** %tem1321, align 8
  call void @expand_inc(%struct.rtx_def* %965, %struct.rtx_def* %966)
  %967 = load i32, i32* %compute_mode, align 4
  %968 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %969 = load %struct.rtx_def*, %struct.rtx_def** %mask, align 8
  %970 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1346 = call %struct.rtx_def* @expand_binop(i32 %967, %struct.optab* %968, %struct.rtx_def* %969, %struct.rtx_def* %970, %struct.rtx_def* null, i32 0, i32 2)
  store %struct.rtx_def* %call1346, %struct.rtx_def** %tem1321, align 8
  %971 = load i32, i32* %compute_mode, align 4
  %972 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %973 = load %struct.rtx_def*, %struct.rtx_def** %tem1321, align 8
  %974 = load %struct.rtx_def*, %struct.rtx_def** %mask, align 8
  %call1347 = call %struct.rtx_def* @expand_binop(i32 %971, %struct.optab* %972, %struct.rtx_def* %973, %struct.rtx_def* %974, %struct.rtx_def* null, i32 0, i32 2)
  store %struct.rtx_def* %call1347, %struct.rtx_def** %tem1321, align 8
  %975 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %976 = load %struct.rtx_def*, %struct.rtx_def** %tem1321, align 8
  call void @expand_dec(%struct.rtx_def* %975, %struct.rtx_def* %976)
  %977 = load %struct.rtx_def*, %struct.rtx_def** %label1322, align 8
  %call1348 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %977)
  br label %if.end.1349

if.end.1349:                                      ; preds = %if.end.1334, %if.end.1315
  %978 = load i32, i32* %mode.addr, align 4
  %979 = load i32, i32* %rem_flag.addr, align 4
  %tobool1350 = icmp ne i32 %979, 0
  br i1 %tobool1350, label %cond.true.1351, label %cond.false.1352

cond.true.1351:                                   ; preds = %if.end.1349
  %980 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  br label %cond.end.1353

cond.false.1352:                                  ; preds = %if.end.1349
  %981 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  br label %cond.end.1353

cond.end.1353:                                    ; preds = %cond.false.1352, %cond.true.1351
  %cond1354 = phi %struct.rtx_def* [ %980, %cond.true.1351 ], [ %981, %cond.false.1352 ]
  %call1355 = call %struct.rtx_def* @gen_lowpart(i32 %978, %struct.rtx_def* %cond1354)
  store %struct.rtx_def* %call1355, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %if.then.296
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3938, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.expand_divmod, i32 0, i32 0)) #4
  unreachable

sw.epilog:                                        ; preds = %if.end.1298, %if.end.1267, %if.end.1169, %if.end.1054, %if.end.1012, %if.then.923, %fail1, %if.end.809, %if.else.757, %if.else.425
  br label %if.end.1356

if.end.1356:                                      ; preds = %sw.epilog, %if.end.293
  %982 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp1357 = icmp eq %struct.rtx_def* %982, null
  br i1 %cmp1357, label %if.then.1359, label %if.end.1429

if.then.1359:                                     ; preds = %if.end.1356
  %983 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool1360 = icmp ne %struct.rtx_def* %983, null
  br i1 %tobool1360, label %land.lhs.true.1361, label %if.end.1368

land.lhs.true.1361:                               ; preds = %if.then.1359
  %984 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %985 = bitcast %struct.rtx_def* %984 to i32*
  %bf.load1362 = load i32, i32* %985, align 8
  %bf.lshr1363 = lshr i32 %bf.load1362, 16
  %bf.clear1364 = and i32 %bf.lshr1363, 255
  %986 = load i32, i32* %compute_mode, align 4
  %cmp1365 = icmp ne i32 %bf.clear1364, %986
  br i1 %cmp1365, label %if.then.1367, label %if.end.1368

if.then.1367:                                     ; preds = %land.lhs.true.1361
  store %struct.rtx_def* null, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1368

if.end.1368:                                      ; preds = %if.then.1367, %land.lhs.true.1361, %if.then.1359
  %987 = load i32, i32* %rem_flag.addr, align 4
  %tobool1369 = icmp ne i32 %987, 0
  br i1 %tobool1369, label %if.then.1370, label %if.end.1397

if.then.1370:                                     ; preds = %if.end.1368
  %988 = load i32, i32* %compute_mode, align 4
  %989 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 16), align 8
  %990 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 15), align 8
  %991 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %992 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %993 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %994 = load i32, i32* %unsignedp.addr, align 4
  %995 = load i32, i32* %compute_mode, align 4
  %idxprom1371 = sext i32 %995 to i64
  %996 = load %struct.optab*, %struct.optab** %optab2, align 8
  %handlers1372 = getelementptr inbounds %struct.optab, %struct.optab* %996, i32 0, i32 1
  %arrayidx1373 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1372, i32 0, i64 %idxprom1371
  %insn_code1374 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1373, i32 0, i32 0
  %997 = load i32, i32* %insn_code1374, align 4
  %cmp1375 = icmp ne i32 %997, 1317
  %cond1377 = select i1 %cmp1375, i32 0, i32 2
  %call1378 = call %struct.rtx_def* @sign_expand_binop(i32 %988, %struct.optab* %989, %struct.optab* %990, %struct.rtx_def* %991, %struct.rtx_def* %992, %struct.rtx_def* %993, i32 %994, i32 %cond1377)
  store %struct.rtx_def* %call1378, %struct.rtx_def** %remainder, align 8
  %998 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %cmp1379 = icmp eq %struct.rtx_def* %998, null
  br i1 %cmp1379, label %if.then.1381, label %if.end.1392

if.then.1381:                                     ; preds = %if.then.1370
  %999 = load i32, i32* %compute_mode, align 4
  %call1382 = call %struct.rtx_def* @gen_reg_rtx(i32 %999)
  store %struct.rtx_def* %call1382, %struct.rtx_def** %remainder, align 8
  %1000 = load i32, i32* %unsignedp.addr, align 4
  %tobool1383 = icmp ne i32 %1000, 0
  br i1 %tobool1383, label %cond.true.1384, label %cond.false.1385

cond.true.1384:                                   ; preds = %if.then.1381
  %1001 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 14), align 8
  br label %cond.end.1386

cond.false.1385:                                  ; preds = %if.then.1381
  %1002 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  br label %cond.end.1386

cond.end.1386:                                    ; preds = %cond.false.1385, %cond.true.1384
  %cond1387 = phi %struct.optab* [ %1001, %cond.true.1384 ], [ %1002, %cond.false.1385 ]
  %1003 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1004 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %1005 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %1006 = load i32, i32* %unsignedp.addr, align 4
  %call1388 = call i32 @expand_twoval_binop(%struct.optab* %cond1387, %struct.rtx_def* %1003, %struct.rtx_def* %1004, %struct.rtx_def* null, %struct.rtx_def* %1005, i32 %1006)
  %tobool1389 = icmp ne i32 %call1388, 0
  br i1 %tobool1389, label %if.end.1391, label %if.then.1390

if.then.1390:                                     ; preds = %cond.end.1386
  store %struct.rtx_def* null, %struct.rtx_def** %remainder, align 8
  br label %if.end.1391

if.end.1391:                                      ; preds = %if.then.1390, %cond.end.1386
  br label %if.end.1392

if.end.1392:                                      ; preds = %if.end.1391, %if.then.1370
  %1007 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %tobool1393 = icmp ne %struct.rtx_def* %1007, null
  br i1 %tobool1393, label %if.then.1394, label %if.end.1396

if.then.1394:                                     ; preds = %if.end.1392
  %1008 = load i32, i32* %mode.addr, align 4
  %1009 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %call1395 = call %struct.rtx_def* @gen_lowpart(i32 %1008, %struct.rtx_def* %1009)
  store %struct.rtx_def* %call1395, %struct.rtx_def** %retval
  br label %return

if.end.1396:                                      ; preds = %if.end.1392
  br label %if.end.1397

if.end.1397:                                      ; preds = %if.end.1396, %if.end.1368
  %1010 = load i32, i32* %compute_mode, align 4
  %1011 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 13), align 8
  %1012 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %1013 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1014 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %1015 = load i32, i32* %rem_flag.addr, align 4
  %tobool1398 = icmp ne i32 %1015, 0
  br i1 %tobool1398, label %cond.true.1399, label %cond.false.1400

cond.true.1399:                                   ; preds = %if.end.1397
  br label %cond.end.1401

cond.false.1400:                                  ; preds = %if.end.1397
  %1016 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end.1401

cond.end.1401:                                    ; preds = %cond.false.1400, %cond.true.1399
  %cond1402 = phi %struct.rtx_def* [ null, %cond.true.1399 ], [ %1016, %cond.false.1400 ]
  %1017 = load i32, i32* %unsignedp.addr, align 4
  %1018 = load i32, i32* %compute_mode, align 4
  %idxprom1403 = sext i32 %1018 to i64
  %1019 = load %struct.optab*, %struct.optab** %optab2, align 8
  %handlers1404 = getelementptr inbounds %struct.optab, %struct.optab* %1019, i32 0, i32 1
  %arrayidx1405 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1404, i32 0, i64 %idxprom1403
  %insn_code1406 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1405, i32 0, i32 0
  %1020 = load i32, i32* %insn_code1406, align 4
  %cmp1407 = icmp ne i32 %1020, 1317
  %cond1409 = select i1 %cmp1407, i32 0, i32 2
  %call1410 = call %struct.rtx_def* @sign_expand_binop(i32 %1010, %struct.optab* %1011, %struct.optab* %1012, %struct.rtx_def* %1013, %struct.rtx_def* %1014, %struct.rtx_def* %cond1402, i32 %1017, i32 %cond1409)
  store %struct.rtx_def* %call1410, %struct.rtx_def** %quotient, align 8
  %1021 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp1411 = icmp eq %struct.rtx_def* %1021, null
  br i1 %cmp1411, label %if.then.1413, label %if.end.1428

if.then.1413:                                     ; preds = %cond.end.1401
  %1022 = load i32, i32* %compute_mode, align 4
  %call1414 = call %struct.rtx_def* @gen_reg_rtx(i32 %1022)
  store %struct.rtx_def* %call1414, %struct.rtx_def** %quotient, align 8
  %1023 = load i32, i32* %unsignedp.addr, align 4
  %tobool1415 = icmp ne i32 %1023, 0
  br i1 %tobool1415, label %cond.true.1416, label %cond.false.1417

cond.true.1416:                                   ; preds = %if.then.1413
  %1024 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 14), align 8
  br label %cond.end.1418

cond.false.1417:                                  ; preds = %if.then.1413
  %1025 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  br label %cond.end.1418

cond.end.1418:                                    ; preds = %cond.false.1417, %cond.true.1416
  %cond1419 = phi %struct.optab* [ %1024, %cond.true.1416 ], [ %1025, %cond.false.1417 ]
  %1026 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1027 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %1028 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %1029 = load i32, i32* %unsignedp.addr, align 4
  %call1420 = call i32 @expand_twoval_binop(%struct.optab* %cond1419, %struct.rtx_def* %1026, %struct.rtx_def* %1027, %struct.rtx_def* %1028, %struct.rtx_def* null, i32 %1029)
  %tobool1421 = icmp ne i32 %call1420, 0
  br i1 %tobool1421, label %if.end.1427, label %if.then.1422

if.then.1422:                                     ; preds = %cond.end.1418
  store %struct.rtx_def* null, %struct.rtx_def** %quotient, align 8
  %1030 = load i32, i32* %rem_flag.addr, align 4
  %tobool1423 = icmp ne i32 %1030, 0
  br i1 %tobool1423, label %if.end.1426, label %if.then.1424

if.then.1424:                                     ; preds = %if.then.1422
  %1031 = load i32, i32* %compute_mode, align 4
  %1032 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 13), align 8
  %1033 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %1034 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1035 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %1036 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1037 = load i32, i32* %unsignedp.addr, align 4
  %call1425 = call %struct.rtx_def* @sign_expand_binop(i32 %1031, %struct.optab* %1032, %struct.optab* %1033, %struct.rtx_def* %1034, %struct.rtx_def* %1035, %struct.rtx_def* %1036, i32 %1037, i32 3)
  store %struct.rtx_def* %call1425, %struct.rtx_def** %quotient, align 8
  br label %if.end.1426

if.end.1426:                                      ; preds = %if.then.1424, %if.then.1422
  br label %if.end.1427

if.end.1427:                                      ; preds = %if.end.1426, %cond.end.1418
  br label %if.end.1428

if.end.1428:                                      ; preds = %if.end.1427, %cond.end.1401
  br label %if.end.1429

if.end.1429:                                      ; preds = %if.end.1428, %if.end.1356
  %1038 = load i32, i32* %rem_flag.addr, align 4
  %tobool1430 = icmp ne i32 %1038, 0
  br i1 %tobool1430, label %if.then.1431, label %if.end.1449

if.then.1431:                                     ; preds = %if.end.1429
  %1039 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool1432 = icmp ne %struct.rtx_def* %1039, null
  br i1 %tobool1432, label %land.lhs.true.1433, label %if.end.1440

land.lhs.true.1433:                               ; preds = %if.then.1431
  %1040 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1041 = bitcast %struct.rtx_def* %1040 to i32*
  %bf.load1434 = load i32, i32* %1041, align 8
  %bf.lshr1435 = lshr i32 %bf.load1434, 16
  %bf.clear1436 = and i32 %bf.lshr1435, 255
  %1042 = load i32, i32* %compute_mode, align 4
  %cmp1437 = icmp ne i32 %bf.clear1436, %1042
  br i1 %cmp1437, label %if.then.1439, label %if.end.1440

if.then.1439:                                     ; preds = %land.lhs.true.1433
  store %struct.rtx_def* null, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1440

if.end.1440:                                      ; preds = %if.then.1439, %land.lhs.true.1433, %if.then.1431
  %1043 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %cmp1441 = icmp eq %struct.rtx_def* %1043, null
  br i1 %cmp1441, label %if.then.1443, label %if.else.1445

if.then.1443:                                     ; preds = %if.end.1440
  %1044 = load i32, i32* %compute_mode, align 4
  %1045 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 16), align 8
  %1046 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 15), align 8
  %1047 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1048 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %1049 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1050 = load i32, i32* %unsignedp.addr, align 4
  %call1444 = call %struct.rtx_def* @sign_expand_binop(i32 %1044, %struct.optab* %1045, %struct.optab* %1046, %struct.rtx_def* %1047, %struct.rtx_def* %1048, %struct.rtx_def* %1049, i32 %1050, i32 3)
  store %struct.rtx_def* %call1444, %struct.rtx_def** %remainder, align 8
  br label %if.end.1448

if.else.1445:                                     ; preds = %if.end.1440
  %1051 = load i32, i32* %compute_mode, align 4
  %1052 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  %1053 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %1054 = load i32, i32* %unsignedp.addr, align 4
  %call1446 = call %struct.rtx_def* @expand_mult(i32 %1051, %struct.rtx_def* %1052, %struct.rtx_def* %1053, %struct.rtx_def* null, i32 %1054)
  store %struct.rtx_def* %call1446, %struct.rtx_def** %remainder, align 8
  %1055 = load i32, i32* %compute_mode, align 4
  %1056 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %1057 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1058 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  %1059 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1060 = load i32, i32* %unsignedp.addr, align 4
  %call1447 = call %struct.rtx_def* @expand_binop(i32 %1055, %struct.optab* %1056, %struct.rtx_def* %1057, %struct.rtx_def* %1058, %struct.rtx_def* %1059, i32 %1060, i32 3)
  store %struct.rtx_def* %call1447, %struct.rtx_def** %remainder, align 8
  br label %if.end.1448

if.end.1448:                                      ; preds = %if.else.1445, %if.then.1443
  br label %if.end.1449

if.end.1449:                                      ; preds = %if.end.1448, %if.end.1429
  %1061 = load i32, i32* %mode.addr, align 4
  %1062 = load i32, i32* %rem_flag.addr, align 4
  %tobool1450 = icmp ne i32 %1062, 0
  br i1 %tobool1450, label %cond.true.1451, label %cond.false.1452

cond.true.1451:                                   ; preds = %if.end.1449
  %1063 = load %struct.rtx_def*, %struct.rtx_def** %remainder, align 8
  br label %cond.end.1453

cond.false.1452:                                  ; preds = %if.end.1449
  %1064 = load %struct.rtx_def*, %struct.rtx_def** %quotient, align 8
  br label %cond.end.1453

cond.end.1453:                                    ; preds = %cond.false.1452, %cond.true.1451
  %cond1454 = phi %struct.rtx_def* [ %1063, %cond.true.1451 ], [ %1064, %cond.false.1452 ]
  %call1455 = call %struct.rtx_def* @gen_lowpart(i32 %1061, %struct.rtx_def* %cond1454)
  store %struct.rtx_def* %call1455, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %cond.end.1453, %if.then.1394, %cond.end.1353, %cond.end.1217, %cond.end.1100, %cond.end.970, %if.then.843, %if.then.316, %cond.end.38, %if.then.29, %cond.end
  %1065 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %1065
}

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_store_flag(%struct.rtx_def* %target, i32 %code, %struct.rtx_def* %op0, %struct.rtx_def* %op1, i32 %mode, i32 %unsignedp, i32 %normalizep) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  %normalizep.addr = alloca i32, align 4
  %subtarget = alloca %struct.rtx_def*, align 8
  %icode = alloca i32, align 4
  %compare_mode = alloca i32, align 4
  %target_mode = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %pattern = alloca %struct.rtx_def*, align 8
  %comparison = alloca %struct.rtx_def*, align 8
  %op0h = alloca %struct.rtx_def*, align 8
  %op0l = alloca %struct.rtx_def*, align 8
  %op0both = alloca %struct.rtx_def*, align 8
  %pred = alloca i32 (%struct.rtx_def*, i32)*, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i32 %normalizep, i32* %normalizep.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %target_mode, align 4
  %call = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call, %struct.rtx_def** %last, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %2, i32 0)
  store %struct.rtx_def* %call1, %struct.rtx_def** %op0.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call2 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %3, i32 0)
  store %struct.rtx_def* %call2, %struct.rtx_def** %op1.addr, align 8
  %4 = load i32, i32* %unsignedp.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %code.addr, align 4
  %call3 = call i32 @unsigned_condition(i32 %5)
  store i32 %call3, i32* %code.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call4 = call i32 @swap_commutative_operands_p(%struct.rtx_def* %6, %struct.rtx_def* %7)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %tem, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %op0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %op1.addr, align 8
  %11 = load i32, i32* %code.addr, align 4
  %call7 = call i32 @swap_condition(i32 %11)
  store i32 %call7, i32* %code.addr, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %12 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %if.end.8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load10 = load i32, i32* %14, align 8
  %bf.lshr11 = lshr i32 %bf.load10, 16
  %bf.clear12 = and i32 %bf.lshr11, 255
  store i32 %bf.clear12, i32* %mode.addr, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %if.end.8
  %15 = load i32, i32* %code.addr, align 4
  switch i32 %15, label %sw.default [
    i32 107, label %sw.bb
    i32 106, label %sw.bb.17
    i32 104, label %sw.bb.21
    i32 105, label %sw.bb.25
    i32 108, label %sw.bb.29
    i32 111, label %sw.bb.33
  ]

sw.bb:                                            ; preds = %if.end.13
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp14 = icmp eq %struct.rtx_def* %16, %17
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %sw.bb
  %18 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %op1.addr, align 8
  store i32 106, i32* %code.addr, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %sw.bb
  br label %sw.epilog

sw.bb.17:                                         ; preds = %if.end.13
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %cmp18 = icmp eq %struct.rtx_def* %19, %20
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %sw.bb.17
  %21 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %op1.addr, align 8
  store i32 107, i32* %code.addr, align 4
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %sw.bb.17
  br label %sw.epilog

sw.bb.21:                                         ; preds = %if.end.13
  %22 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp22 = icmp eq %struct.rtx_def* %22, %23
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %sw.bb.21
  %24 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %op1.addr, align 8
  store i32 105, i32* %code.addr, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %sw.bb.21
  br label %sw.epilog

sw.bb.25:                                         ; preds = %if.end.13
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %cmp26 = icmp eq %struct.rtx_def* %25, %26
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %sw.bb.25
  %27 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %op1.addr, align 8
  store i32 104, i32* %code.addr, align 4
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %sw.bb.25
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.13
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp30 = icmp eq %struct.rtx_def* %28, %29
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.bb.29
  %30 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %op1.addr, align 8
  store i32 102, i32* %code.addr, align 4
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.31, %sw.bb.29
  br label %sw.epilog

sw.bb.33:                                         ; preds = %if.end.13
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp34 = icmp eq %struct.rtx_def* %31, %32
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %sw.bb.33
  %33 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %op1.addr, align 8
  store i32 103, i32* %code.addr, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %sw.bb.33
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.36, %if.end.32, %if.end.28, %if.end.24, %if.end.20, %if.end.16
  %34 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %34 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %35 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %35 to i32
  %36 = load i32, i32* @target_flags, align 4
  %and = and i32 %36, 33554432
  %tobool37 = icmp ne i32 %and, 0
  %cond = select i1 %tobool37, i32 64, i32 32
  %mul = mul nsw i32 %cond, 2
  %cmp38 = icmp eq i32 %conv, %mul
  br i1 %cmp38, label %land.lhs.true, label %if.end.81

land.lhs.true:                                    ; preds = %sw.epilog
  %37 = load i32, i32* %mode.addr, align 4
  %idxprom40 = sext i32 %37 to i64
  %arrayidx41 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom40
  %38 = load i32, i32* %arrayidx41, align 4
  %cmp42 = icmp eq i32 %38, 1
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.81

land.lhs.true.44:                                 ; preds = %land.lhs.true
  %39 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp45 = icmp eq %struct.rtx_def* %39, %40
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.81

land.lhs.true.47:                                 ; preds = %land.lhs.true.44
  %41 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load48 = load i32, i32* %42, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp ne i32 %bf.clear49, 66
  br i1 %cmp50, label %if.then.56, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.47
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load52 = load i32, i32* %44, align 8
  %bf.lshr53 = lshr i32 %bf.load52, 27
  %bf.clear54 = and i32 %bf.lshr53, 1
  %tobool55 = icmp ne i32 %bf.clear54, 0
  br i1 %tobool55, label %if.end.81, label %if.then.56

if.then.56:                                       ; preds = %lor.lhs.false, %land.lhs.true.47
  %45 = load i32, i32* %code.addr, align 4
  %cmp57 = icmp eq i32 %45, 103
  br i1 %cmp57, label %if.then.62, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.then.56
  %46 = load i32, i32* %code.addr, align 4
  %cmp60 = icmp eq i32 %46, 102
  br i1 %cmp60, label %if.then.62, label %if.else

if.then.62:                                       ; preds = %lor.lhs.false.59, %if.then.56
  %47 = load i32, i32* @word_mode, align 4
  %48 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call63 = call %struct.rtx_def* @gen_highpart(i32 %47, %struct.rtx_def* %48)
  store %struct.rtx_def* %call63, %struct.rtx_def** %op0h, align 8
  %49 = load i32, i32* @word_mode, align 4
  %50 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call64 = call %struct.rtx_def* @gen_lowpart(i32 %49, %struct.rtx_def* %50)
  store %struct.rtx_def* %call64, %struct.rtx_def** %op0l, align 8
  %51 = load i32, i32* @word_mode, align 4
  %52 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %op0h, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %op0l, align 8
  %55 = load i32, i32* %unsignedp.addr, align 4
  %call65 = call %struct.rtx_def* @expand_binop(i32 %51, %struct.optab* %52, %struct.rtx_def* %53, %struct.rtx_def* %54, %struct.rtx_def* null, i32 %55, i32 0)
  store %struct.rtx_def* %call65, %struct.rtx_def** %op0both, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %op0both, align 8
  %cmp66 = icmp ne %struct.rtx_def* %56, null
  br i1 %cmp66, label %if.then.68, label %if.end.70

if.then.68:                                       ; preds = %if.then.62
  %57 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %58 = load i32, i32* %code.addr, align 4
  %59 = load %struct.rtx_def*, %struct.rtx_def** %op0both, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %61 = load i32, i32* @word_mode, align 4
  %62 = load i32, i32* %unsignedp.addr, align 4
  %63 = load i32, i32* %normalizep.addr, align 4
  %call69 = call %struct.rtx_def* @emit_store_flag(%struct.rtx_def* %57, i32 %58, %struct.rtx_def* %59, %struct.rtx_def* %60, i32 %61, i32 %62, i32 %63)
  store %struct.rtx_def* %call69, %struct.rtx_def** %retval
  br label %return

if.end.70:                                        ; preds = %if.then.62
  br label %if.end.80

if.else:                                          ; preds = %lor.lhs.false.59
  %64 = load i32, i32* %code.addr, align 4
  %cmp71 = icmp eq i32 %64, 107
  br i1 %cmp71, label %if.then.76, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %if.else
  %65 = load i32, i32* %code.addr, align 4
  %cmp74 = icmp eq i32 %65, 104
  br i1 %cmp74, label %if.then.76, label %if.end.79

if.then.76:                                       ; preds = %lor.lhs.false.73, %if.else
  %66 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %67 = load i32, i32* %code.addr, align 4
  %68 = load i32, i32* @word_mode, align 4
  %69 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call77 = call %struct.rtx_def* @gen_highpart(i32 %68, %struct.rtx_def* %69)
  %70 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %71 = load i32, i32* @word_mode, align 4
  %72 = load i32, i32* %unsignedp.addr, align 4
  %73 = load i32, i32* %normalizep.addr, align 4
  %call78 = call %struct.rtx_def* @emit_store_flag(%struct.rtx_def* %66, i32 %67, %struct.rtx_def* %call77, %struct.rtx_def* %70, i32 %71, i32 %72, i32 %73)
  store %struct.rtx_def* %call78, %struct.rtx_def** %retval
  br label %return

if.end.79:                                        ; preds = %lor.lhs.false.73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.70
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %lor.lhs.false, %land.lhs.true.44, %land.lhs.true, %sw.epilog
  %74 = load i32, i32* %code.addr, align 4
  %idxprom82 = sext i32 %74 to i64
  %arrayidx83 = getelementptr inbounds [153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 %idxprom82
  %75 = load i32, i32* %arrayidx83, align 4
  store i32 %75, i32* %icode, align 4
  %76 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp84 = icmp eq %struct.rtx_def* %76, %77
  br i1 %cmp84, label %land.lhs.true.86, label %if.end.151

land.lhs.true.86:                                 ; preds = %if.end.81
  %78 = load i32, i32* %code.addr, align 4
  %cmp87 = icmp eq i32 %78, 107
  br i1 %cmp87, label %land.lhs.true.92, label %lor.lhs.false.89

lor.lhs.false.89:                                 ; preds = %land.lhs.true.86
  %79 = load i32, i32* %code.addr, align 4
  %cmp90 = icmp eq i32 %79, 104
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.151

land.lhs.true.92:                                 ; preds = %lor.lhs.false.89, %land.lhs.true.86
  %80 = load i32, i32* %mode.addr, align 4
  %idxprom93 = sext i32 %80 to i64
  %arrayidx94 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom93
  %81 = load i32, i32* %arrayidx94, align 4
  %cmp95 = icmp eq i32 %81, 1
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.151

land.lhs.true.97:                                 ; preds = %land.lhs.true.92
  %82 = load i32, i32* %normalizep.addr, align 4
  %tobool98 = icmp ne i32 %82, 0
  br i1 %tobool98, label %if.then.115, label %lor.lhs.false.99

lor.lhs.false.99:                                 ; preds = %land.lhs.true.97
  br i1 true, label %if.then.115, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %lor.lhs.false.99
  %83 = load i32, i32* %mode.addr, align 4
  %idxprom101 = sext i32 %83 to i64
  %arrayidx102 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom101
  %84 = load i16, i16* %arrayidx102, align 2
  %conv103 = zext i16 %84 to i32
  %cmp104 = icmp sle i32 %conv103, 64
  br i1 %cmp104, label %land.lhs.true.106, label %if.end.151

land.lhs.true.106:                                ; preds = %lor.lhs.false.100
  %85 = load i32, i32* %mode.addr, align 4
  %idxprom107 = sext i32 %85 to i64
  %arrayidx108 = getelementptr inbounds [59 x i64], [59 x i64]* @mode_mask_array, i32 0, i64 %idxprom107
  %86 = load i64, i64* %arrayidx108, align 8
  %and109 = and i64 1, %86
  %87 = load i32, i32* %mode.addr, align 4
  %idxprom110 = sext i32 %87 to i64
  %arrayidx111 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom110
  %88 = load i16, i16* %arrayidx111, align 2
  %conv112 = zext i16 %88 to i32
  %sub = sub nsw i32 %conv112, 1
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 1, %sh_prom
  %cmp113 = icmp eq i64 %and109, %shl
  br i1 %cmp113, label %if.then.115, label %if.end.151

if.then.115:                                      ; preds = %land.lhs.true.106, %lor.lhs.false.99, %land.lhs.true.97
  %89 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %89, %struct.rtx_def** %subtarget, align 8
  %90 = load i32, i32* %target_mode, align 4
  %idxprom116 = sext i32 %90 to i64
  %arrayidx117 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom116
  %91 = load i8, i8* %arrayidx117, align 1
  %conv118 = zext i8 %91 to i32
  %92 = load i32, i32* %mode.addr, align 4
  %idxprom119 = sext i32 %92 to i64
  %arrayidx120 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom119
  %93 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %93 to i32
  %cmp122 = icmp sgt i32 %conv118, %conv121
  br i1 %cmp122, label %if.then.124, label %if.end.127

if.then.124:                                      ; preds = %if.then.115
  %94 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call125 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %94, i32 0)
  store %struct.rtx_def* %call125, %struct.rtx_def** %op0.addr, align 8
  %95 = load i32, i32* %target_mode, align 4
  %96 = load i32, i32* %mode.addr, align 4
  %97 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call126 = call %struct.rtx_def* @convert_modes(i32 %95, i32 %96, %struct.rtx_def* %97, i32 0)
  store %struct.rtx_def* %call126, %struct.rtx_def** %op0.addr, align 8
  %98 = load i32, i32* %target_mode, align 4
  store i32 %98, i32* %mode.addr, align 4
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.124, %if.then.115
  %99 = load i32, i32* %target_mode, align 4
  %100 = load i32, i32* %mode.addr, align 4
  %cmp128 = icmp ne i32 %99, %100
  br i1 %cmp128, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.127
  store %struct.rtx_def* null, %struct.rtx_def** %subtarget, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.end.127
  %101 = load i32, i32* %code.addr, align 4
  %cmp132 = icmp eq i32 %101, 104
  br i1 %cmp132, label %if.then.134, label %if.end.136

if.then.134:                                      ; preds = %if.end.131
  %102 = load i32, i32* %mode.addr, align 4
  %103 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call135 = call %struct.rtx_def* @expand_unop(i32 %102, %struct.optab* %103, %struct.rtx_def* %104, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call135, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.136

if.end.136:                                       ; preds = %if.then.134, %if.end.131
  %105 = load i32, i32* %mode.addr, align 4
  %106 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %107 = load i32, i32* %mode.addr, align 4
  %idxprom137 = sext i32 %107 to i64
  %arrayidx138 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom137
  %108 = load i16, i16* %arrayidx138, align 2
  %conv139 = zext i16 %108 to i32
  %sub140 = sub nsw i32 %conv139, 1
  %conv141 = sext i32 %sub140 to i64
  %call142 = call %union.tree_node* @size_int_wide(i64 %conv141, i32 0)
  %109 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %110 = load i32, i32* %normalizep.addr, align 4
  %cmp143 = icmp ne i32 %110, -1
  %conv144 = zext i1 %cmp143 to i32
  %call145 = call %struct.rtx_def* @expand_shift(i32 83, i32 %105, %struct.rtx_def* %106, %union.tree_node* %call142, %struct.rtx_def* %109, i32 %conv144)
  store %struct.rtx_def* %call145, %struct.rtx_def** %op0.addr, align 8
  %111 = load i32, i32* %mode.addr, align 4
  %112 = load i32, i32* %target_mode, align 4
  %cmp146 = icmp ne i32 %111, %112
  br i1 %cmp146, label %if.then.148, label %if.end.150

if.then.148:                                      ; preds = %if.end.136
  %113 = load i32, i32* %target_mode, align 4
  %114 = load i32, i32* %mode.addr, align 4
  %115 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call149 = call %struct.rtx_def* @convert_modes(i32 %113, i32 %114, %struct.rtx_def* %115, i32 0)
  store %struct.rtx_def* %call149, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.148, %if.end.136
  %116 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %116, %struct.rtx_def** %retval
  br label %return

if.end.151:                                       ; preds = %land.lhs.true.106, %lor.lhs.false.100, %land.lhs.true.92, %lor.lhs.false.89, %if.end.81
  %117 = load i32, i32* %icode, align 4
  %cmp152 = icmp ne i32 %117, 1317
  br i1 %cmp152, label %if.then.154, label %if.end.284

if.then.154:                                      ; preds = %if.end.151
  call void @emit_queue()
  call void @do_pending_stack_adjust()
  %call155 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call155, %struct.rtx_def** %last, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %119 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %120 = load i32, i32* %code.addr, align 4
  %121 = load i32, i32* %unsignedp.addr, align 4
  %122 = load i32, i32* %mode.addr, align 4
  %call156 = call %struct.rtx_def* @compare_from_rtx(%struct.rtx_def* %118, %struct.rtx_def* %119, i32 %120, i32 %121, i32 %122, %struct.rtx_def* null)
  store %struct.rtx_def* %call156, %struct.rtx_def** %comparison, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %comparison, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load157 = load i32, i32* %124, align 8
  %bf.clear158 = and i32 %bf.load157, 65535
  %cmp159 = icmp eq i32 %bf.clear158, 54
  br i1 %cmp159, label %if.then.161, label %if.end.177

if.then.161:                                      ; preds = %if.then.154
  %125 = load %struct.rtx_def*, %struct.rtx_def** %comparison, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp162 = icmp eq %struct.rtx_def* %125, %126
  br i1 %cmp162, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.161
  %127 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end.175

cond.false:                                       ; preds = %if.then.161
  %128 = load i32, i32* %normalizep.addr, align 4
  %cmp164 = icmp eq i32 %128, 1
  br i1 %cmp164, label %cond.true.166, label %cond.false.167

cond.true.166:                                    ; preds = %cond.false
  %129 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  br label %cond.end.173

cond.false.167:                                   ; preds = %cond.false
  %130 = load i32, i32* %normalizep.addr, align 4
  %cmp168 = icmp eq i32 %130, -1
  br i1 %cmp168, label %cond.true.170, label %cond.false.171

cond.true.170:                                    ; preds = %cond.false.167
  %131 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  br label %cond.end

cond.false.171:                                   ; preds = %cond.false.167
  %132 = load %struct.rtx_def*, %struct.rtx_def** @const_true_rtx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false.171, %cond.true.170
  %cond172 = phi %struct.rtx_def* [ %131, %cond.true.170 ], [ %132, %cond.false.171 ]
  br label %cond.end.173

cond.end.173:                                     ; preds = %cond.end, %cond.true.166
  %cond174 = phi %struct.rtx_def* [ %129, %cond.true.166 ], [ %cond172, %cond.end ]
  br label %cond.end.175

cond.end.175:                                     ; preds = %cond.end.173, %cond.true
  %cond176 = phi %struct.rtx_def* [ %127, %cond.true ], [ %cond174, %cond.end.173 ]
  store %struct.rtx_def* %cond176, %struct.rtx_def** %retval
  br label %return

if.end.177:                                       ; preds = %if.then.154
  %133 = load %struct.rtx_def*, %struct.rtx_def** %comparison, align 8
  %134 = bitcast %struct.rtx_def* %133 to i32*
  %bf.load178 = load i32, i32* %134, align 8
  %bf.clear179 = and i32 %bf.load178, 65535
  store i32 %bf.clear179, i32* %code.addr, align 4
  %135 = load i32, i32* %icode, align 4
  %idxprom180 = sext i32 %135 to i64
  %arrayidx181 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom180
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx181, i32 0, i32 3
  %136 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx182 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %136, i64 0
  %mode183 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx182, i32 0, i32 2
  %bf.load184 = load i16, i16* %mode183, align 8
  %bf.cast = zext i16 %bf.load184 to i32
  store i32 %bf.cast, i32* %compare_mode, align 4
  %137 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %137, %struct.rtx_def** %subtarget, align 8
  %138 = load i32, i32* %icode, align 4
  %idxprom185 = sext i32 %138 to i64
  %arrayidx186 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom185
  %operand187 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx186, i32 0, i32 3
  %139 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand187, align 8
  %arrayidx188 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %139, i64 0
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx188, i32 0, i32 0
  %140 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  store i32 (%struct.rtx_def*, i32)* %140, i32 (%struct.rtx_def*, i32)** %pred, align 8
  %call189 = call i32 @preserve_subexpressions_p()
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then.194, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %if.end.177
  %141 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %pred, align 8
  %142 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %143 = load i32, i32* %compare_mode, align 4
  %call192 = call i32 %141(%struct.rtx_def* %142, i32 %143)
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %if.end.196, label %if.then.194

if.then.194:                                      ; preds = %lor.lhs.false.191, %if.end.177
  %144 = load i32, i32* %compare_mode, align 4
  %call195 = call %struct.rtx_def* @gen_reg_rtx(i32 %144)
  store %struct.rtx_def* %call195, %struct.rtx_def** %subtarget, align 8
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.194, %lor.lhs.false.191
  %145 = load i32, i32* %icode, align 4
  %idxprom197 = sext i32 %145 to i64
  %arrayidx198 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom197
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx198, i32 0, i32 2
  %146 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %147 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call199 = call %struct.rtx_def* (%struct.rtx_def*, ...) %146(%struct.rtx_def* %147)
  store %struct.rtx_def* %call199, %struct.rtx_def** %pattern, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %tobool200 = icmp ne %struct.rtx_def* %148, null
  br i1 %tobool200, label %if.then.201, label %if.end.283

if.then.201:                                      ; preds = %if.end.196
  %149 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %call202 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %149)
  %150 = load i32, i32* %target_mode, align 4
  %idxprom203 = sext i32 %150 to i64
  %arrayidx204 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom203
  %151 = load i8, i8* %arrayidx204, align 1
  %conv205 = zext i8 %151 to i32
  %152 = load i32, i32* %compare_mode, align 4
  %idxprom206 = sext i32 %152 to i64
  %arrayidx207 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom206
  %153 = load i8, i8* %arrayidx207, align 1
  %conv208 = zext i8 %153 to i32
  %cmp209 = icmp sgt i32 %conv205, %conv208
  br i1 %cmp209, label %if.then.211, label %if.else.226

if.then.211:                                      ; preds = %if.then.201
  %154 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %155 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %156 = load i32, i32* %compare_mode, align 4
  %idxprom212 = sext i32 %156 to i64
  %arrayidx213 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom212
  %157 = load i16, i16* %arrayidx213, align 2
  %conv214 = zext i16 %157 to i32
  %cmp215 = icmp sle i32 %conv214, 64
  br i1 %cmp215, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then.211
  %158 = load i32, i32* %compare_mode, align 4
  %idxprom217 = sext i32 %158 to i64
  %arrayidx218 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom217
  %159 = load i16, i16* %arrayidx218, align 2
  %conv219 = zext i16 %159 to i32
  %sub220 = sub nsw i32 %conv219, 1
  %sh_prom221 = zext i32 %sub220 to i64
  %shl222 = shl i64 1, %sh_prom221
  %and223 = and i64 1, %shl222
  %cmp224 = icmp eq i64 0, %and223
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then.211
  %160 = phi i1 [ false, %if.then.211 ], [ %cmp224, %land.rhs ]
  %land.ext = zext i1 %160 to i32
  call void @convert_move(%struct.rtx_def* %154, %struct.rtx_def* %155, i32 %land.ext)
  %161 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %161, %struct.rtx_def** %op0.addr, align 8
  %162 = load i32, i32* %target_mode, align 4
  store i32 %162, i32* %compare_mode, align 4
  br label %if.end.227

if.else.226:                                      ; preds = %if.then.201
  %163 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  store %struct.rtx_def* %163, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.227

if.end.227:                                       ; preds = %if.else.226, %land.end
  %call228 = call i32 @preserve_subexpressions_p()
  %tobool229 = icmp ne i32 %call228, 0
  br i1 %tobool229, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.end.227
  store %struct.rtx_def* null, %struct.rtx_def** %subtarget, align 8
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.230, %if.end.227
  %164 = load i32, i32* %normalizep.addr, align 4
  %cmp232 = icmp eq i32 %164, 0
  br i1 %cmp232, label %if.then.237, label %lor.lhs.false.234

lor.lhs.false.234:                                ; preds = %if.end.231
  %165 = load i32, i32* %normalizep.addr, align 4
  %cmp235 = icmp eq i32 %165, 1
  br i1 %cmp235, label %if.then.237, label %if.else.238

if.then.237:                                      ; preds = %lor.lhs.false.234, %if.end.231
  br label %if.end.278

if.else.238:                                      ; preds = %lor.lhs.false.234
  %166 = load i32, i32* %normalizep.addr, align 4
  %sub239 = sub nsw i32 0, %166
  %cmp240 = icmp eq i32 %sub239, 1
  br i1 %cmp240, label %if.then.242, label %if.else.244

if.then.242:                                      ; preds = %if.else.238
  %167 = load i32, i32* %compare_mode, align 4
  %168 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %169 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %170 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call243 = call %struct.rtx_def* @expand_unop(i32 %167, %struct.optab* %168, %struct.rtx_def* %169, %struct.rtx_def* %170, i32 0)
  store %struct.rtx_def* %call243, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.277

if.else.244:                                      ; preds = %if.else.238
  %171 = load i32, i32* %compare_mode, align 4
  %idxprom245 = sext i32 %171 to i64
  %arrayidx246 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom245
  %172 = load i16, i16* %arrayidx246, align 2
  %conv247 = zext i16 %172 to i32
  %cmp248 = icmp sle i32 %conv247, 64
  br i1 %cmp248, label %land.lhs.true.250, label %if.else.269

land.lhs.true.250:                                ; preds = %if.else.244
  %173 = load i32, i32* %compare_mode, align 4
  %idxprom251 = sext i32 %173 to i64
  %arrayidx252 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom251
  %174 = load i16, i16* %arrayidx252, align 2
  %conv253 = zext i16 %174 to i32
  %sub254 = sub nsw i32 %conv253, 1
  %sh_prom255 = zext i32 %sub254 to i64
  %shl256 = shl i64 1, %sh_prom255
  %and257 = and i64 1, %shl256
  %tobool258 = icmp ne i64 %and257, 0
  br i1 %tobool258, label %if.then.259, label %if.else.269

if.then.259:                                      ; preds = %land.lhs.true.250
  %175 = load i32, i32* %compare_mode, align 4
  %176 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %177 = load i32, i32* %compare_mode, align 4
  %idxprom260 = sext i32 %177 to i64
  %arrayidx261 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom260
  %178 = load i16, i16* %arrayidx261, align 2
  %conv262 = zext i16 %178 to i32
  %sub263 = sub nsw i32 %conv262, 1
  %conv264 = sext i32 %sub263 to i64
  %call265 = call %union.tree_node* @size_int_wide(i64 %conv264, i32 0)
  %179 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %180 = load i32, i32* %normalizep.addr, align 4
  %cmp266 = icmp eq i32 %180, 1
  %conv267 = zext i1 %cmp266 to i32
  %call268 = call %struct.rtx_def* @expand_shift(i32 83, i32 %175, %struct.rtx_def* %176, %union.tree_node* %call265, %struct.rtx_def* %179, i32 %conv267)
  store %struct.rtx_def* %call268, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.276

if.else.269:                                      ; preds = %land.lhs.true.250, %if.else.244
  %181 = load i32, i32* %compare_mode, align 4
  %182 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %183 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %184 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call270 = call %struct.rtx_def* @expand_and(i32 %181, %struct.rtx_def* %182, %struct.rtx_def* %183, %struct.rtx_def* %184)
  store %struct.rtx_def* %call270, %struct.rtx_def** %op0.addr, align 8
  %185 = load i32, i32* %normalizep.addr, align 4
  %cmp271 = icmp eq i32 %185, -1
  br i1 %cmp271, label %if.then.273, label %if.end.275

if.then.273:                                      ; preds = %if.else.269
  %186 = load i32, i32* %compare_mode, align 4
  %187 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %188 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %189 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call274 = call %struct.rtx_def* @expand_unop(i32 %186, %struct.optab* %187, %struct.rtx_def* %188, %struct.rtx_def* %189, i32 0)
  store %struct.rtx_def* %call274, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.273, %if.else.269
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %if.then.259
  br label %if.end.277

if.end.277:                                       ; preds = %if.end.276, %if.then.242
  br label %if.end.278

if.end.278:                                       ; preds = %if.end.277, %if.then.237
  %190 = load i32, i32* %target_mode, align 4
  %191 = load i32, i32* %compare_mode, align 4
  %cmp279 = icmp ne i32 %190, %191
  br i1 %cmp279, label %if.then.281, label %if.else.282

if.then.281:                                      ; preds = %if.end.278
  %192 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %193 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  call void @convert_move(%struct.rtx_def* %192, %struct.rtx_def* %193, i32 0)
  %194 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %194, %struct.rtx_def** %retval
  br label %return

if.else.282:                                      ; preds = %if.end.278
  %195 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %195, %struct.rtx_def** %retval
  br label %return

if.end.283:                                       ; preds = %if.end.196
  br label %if.end.284

if.end.284:                                       ; preds = %if.end.283, %if.end.151
  %196 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %196)
  %197 = load i32, i32* @flag_expensive_optimizations, align 4
  %tobool285 = icmp ne i32 %197, 0
  br i1 %tobool285, label %cond.false.290, label %land.lhs.true.286

land.lhs.true.286:                                ; preds = %if.end.284
  %198 = load i32, i32* %target_mode, align 4
  %199 = load i32, i32* %mode.addr, align 4
  %cmp287 = icmp eq i32 %198, %199
  br i1 %cmp287, label %cond.true.289, label %cond.false.290

cond.true.289:                                    ; preds = %land.lhs.true.286
  %200 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  br label %cond.end.291

cond.false.290:                                   ; preds = %land.lhs.true.286, %if.end.284
  br label %cond.end.291

cond.end.291:                                     ; preds = %cond.false.290, %cond.true.289
  %cond292 = phi %struct.rtx_def* [ %200, %cond.true.289 ], [ null, %cond.false.290 ]
  store %struct.rtx_def* %cond292, %struct.rtx_def** %subtarget, align 8
  %201 = load i32, i32* @ix86_branch_cost, align 4
  %cmp293 = icmp sgt i32 %201, 0
  br i1 %cmp293, label %land.lhs.true.295, label %if.end.325

land.lhs.true.295:                                ; preds = %cond.end.291
  %202 = load i32, i32* %mode.addr, align 4
  %idxprom296 = sext i32 %202 to i64
  %arrayidx297 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom296
  %203 = load i32, i32* %arrayidx297, align 4
  %cmp298 = icmp eq i32 %203, 1
  br i1 %cmp298, label %land.lhs.true.300, label %if.end.325

land.lhs.true.300:                                ; preds = %land.lhs.true.295
  %204 = load i32, i32* %code.addr, align 4
  %cmp301 = icmp eq i32 %204, 103
  br i1 %cmp301, label %land.lhs.true.306, label %lor.lhs.false.303

lor.lhs.false.303:                                ; preds = %land.lhs.true.300
  %205 = load i32, i32* %code.addr, align 4
  %cmp304 = icmp eq i32 %205, 102
  br i1 %cmp304, label %land.lhs.true.306, label %if.end.325

land.lhs.true.306:                                ; preds = %lor.lhs.false.303, %land.lhs.true.300
  %206 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %207 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp307 = icmp ne %struct.rtx_def* %206, %207
  br i1 %cmp307, label %if.then.309, label %if.end.325

if.then.309:                                      ; preds = %land.lhs.true.306
  %208 = load i32, i32* %mode.addr, align 4
  %209 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %210 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %212 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call310 = call %struct.rtx_def* @expand_binop(i32 %208, %struct.optab* %209, %struct.rtx_def* %210, %struct.rtx_def* %211, %struct.rtx_def* %212, i32 1, i32 2)
  store %struct.rtx_def* %call310, %struct.rtx_def** %tem, align 8
  %213 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp311 = icmp eq %struct.rtx_def* %213, null
  br i1 %cmp311, label %if.then.313, label %if.end.315

if.then.313:                                      ; preds = %if.then.309
  %214 = load i32, i32* %mode.addr, align 4
  %215 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %216 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %217 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %218 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call314 = call %struct.rtx_def* @expand_binop(i32 %214, %struct.optab* %215, %struct.rtx_def* %216, %struct.rtx_def* %217, %struct.rtx_def* %218, i32 1, i32 2)
  store %struct.rtx_def* %call314, %struct.rtx_def** %tem, align 8
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.313, %if.then.309
  %219 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp316 = icmp ne %struct.rtx_def* %219, null
  br i1 %cmp316, label %if.then.318, label %if.end.320

if.then.318:                                      ; preds = %if.end.315
  %220 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %221 = load i32, i32* %code.addr, align 4
  %222 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %223 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %224 = load i32, i32* %mode.addr, align 4
  %225 = load i32, i32* %unsignedp.addr, align 4
  %226 = load i32, i32* %normalizep.addr, align 4
  %call319 = call %struct.rtx_def* @emit_store_flag(%struct.rtx_def* %220, i32 %221, %struct.rtx_def* %222, %struct.rtx_def* %223, i32 %224, i32 %225, i32 %226)
  store %struct.rtx_def* %call319, %struct.rtx_def** %tem, align 8
  br label %if.end.320

if.end.320:                                       ; preds = %if.then.318, %if.end.315
  %227 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp321 = icmp eq %struct.rtx_def* %227, null
  br i1 %cmp321, label %if.then.323, label %if.end.324

if.then.323:                                      ; preds = %if.end.320
  %228 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %228)
  br label %if.end.324

if.end.324:                                       ; preds = %if.then.323, %if.end.320
  %229 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %229, %struct.rtx_def** %retval
  br label %return

if.end.325:                                       ; preds = %land.lhs.true.306, %lor.lhs.false.303, %land.lhs.true.295, %cond.end.291
  %230 = load i32, i32* @ix86_branch_cost, align 4
  %cmp326 = icmp eq i32 %230, 0
  br i1 %cmp326, label %if.then.351, label %lor.lhs.false.328

lor.lhs.false.328:                                ; preds = %if.end.325
  %231 = load i32, i32* %mode.addr, align 4
  %idxprom329 = sext i32 %231 to i64
  %arrayidx330 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom329
  %232 = load i32, i32* %arrayidx330, align 4
  %cmp331 = icmp ne i32 %232, 1
  br i1 %cmp331, label %if.then.351, label %lor.lhs.false.333

lor.lhs.false.333:                                ; preds = %lor.lhs.false.328
  %233 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %234 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp334 = icmp ne %struct.rtx_def* %233, %234
  br i1 %cmp334, label %if.then.351, label %lor.lhs.false.336

lor.lhs.false.336:                                ; preds = %lor.lhs.false.333
  %235 = load i32, i32* %code.addr, align 4
  %cmp337 = icmp ne i32 %235, 103
  br i1 %cmp337, label %land.lhs.true.339, label %if.end.352

land.lhs.true.339:                                ; preds = %lor.lhs.false.336
  %236 = load i32, i32* %code.addr, align 4
  %cmp340 = icmp ne i32 %236, 102
  br i1 %cmp340, label %land.lhs.true.342, label %if.end.352

land.lhs.true.342:                                ; preds = %land.lhs.true.339
  %237 = load i32, i32* @ix86_branch_cost, align 4
  %cmp343 = icmp sle i32 %237, 1
  br i1 %cmp343, label %if.then.351, label %lor.lhs.false.345

lor.lhs.false.345:                                ; preds = %land.lhs.true.342
  %238 = load i32, i32* %code.addr, align 4
  %cmp346 = icmp ne i32 %238, 106
  br i1 %cmp346, label %land.lhs.true.348, label %if.end.352

land.lhs.true.348:                                ; preds = %lor.lhs.false.345
  %239 = load i32, i32* %code.addr, align 4
  %cmp349 = icmp ne i32 %239, 105
  br i1 %cmp349, label %if.then.351, label %if.end.352

if.then.351:                                      ; preds = %land.lhs.true.348, %land.lhs.true.342, %lor.lhs.false.333, %lor.lhs.false.328, %if.end.325
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.352:                                       ; preds = %land.lhs.true.348, %lor.lhs.false.345, %land.lhs.true.339, %lor.lhs.false.336
  %240 = load i32, i32* %normalizep.addr, align 4
  %cmp353 = icmp eq i32 %240, 0
  br i1 %cmp353, label %if.then.355, label %if.end.356

if.then.355:                                      ; preds = %if.end.352
  store i32 1, i32* %normalizep.addr, align 4
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.355, %if.end.352
  store %struct.rtx_def* null, %struct.rtx_def** %tem, align 8
  %241 = load i32, i32* %code.addr, align 4
  %cmp357 = icmp eq i32 %241, 106
  br i1 %cmp357, label %if.then.359, label %if.end.369

if.then.359:                                      ; preds = %if.end.356
  %242 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %243 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call360 = call i32 @rtx_equal_p(%struct.rtx_def* %242, %struct.rtx_def* %243)
  %tobool361 = icmp ne i32 %call360, 0
  br i1 %tobool361, label %if.then.362, label %if.end.363

if.then.362:                                      ; preds = %if.then.359
  store %struct.rtx_def* null, %struct.rtx_def** %subtarget, align 8
  br label %if.end.363

if.end.363:                                       ; preds = %if.then.362, %if.then.359
  %244 = load i32, i32* %mode.addr, align 4
  %245 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %246 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %247 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %248 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call364 = call %struct.rtx_def* @expand_binop(i32 %244, %struct.optab* %245, %struct.rtx_def* %246, %struct.rtx_def* %247, %struct.rtx_def* %248, i32 0, i32 2)
  store %struct.rtx_def* %call364, %struct.rtx_def** %tem, align 8
  %249 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %tobool365 = icmp ne %struct.rtx_def* %249, null
  br i1 %tobool365, label %if.then.366, label %if.end.368

if.then.366:                                      ; preds = %if.end.363
  %250 = load i32, i32* %mode.addr, align 4
  %251 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %252 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %253 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %254 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call367 = call %struct.rtx_def* @expand_binop(i32 %250, %struct.optab* %251, %struct.rtx_def* %252, %struct.rtx_def* %253, %struct.rtx_def* %254, i32 0, i32 2)
  store %struct.rtx_def* %call367, %struct.rtx_def** %tem, align 8
  br label %if.end.368

if.end.368:                                       ; preds = %if.then.366, %if.end.363
  br label %if.end.369

if.end.369:                                       ; preds = %if.end.368, %if.end.356
  %255 = load i32, i32* %code.addr, align 4
  %cmp370 = icmp eq i32 %255, 105
  br i1 %cmp370, label %if.then.372, label %if.end.385

if.then.372:                                      ; preds = %if.end.369
  %256 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %257 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call373 = call i32 @rtx_equal_p(%struct.rtx_def* %256, %struct.rtx_def* %257)
  %tobool374 = icmp ne i32 %call373, 0
  br i1 %tobool374, label %if.then.375, label %if.end.376

if.then.375:                                      ; preds = %if.then.372
  store %struct.rtx_def* null, %struct.rtx_def** %subtarget, align 8
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.375, %if.then.372
  %258 = load i32, i32* %mode.addr, align 4
  %259 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %260 = load i32, i32* %mode.addr, align 4
  %idxprom377 = sext i32 %260 to i64
  %arrayidx378 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom377
  %261 = load i16, i16* %arrayidx378, align 2
  %conv379 = zext i16 %261 to i32
  %sub380 = sub nsw i32 %conv379, 1
  %conv381 = sext i32 %sub380 to i64
  %call382 = call %union.tree_node* @size_int_wide(i64 %conv381, i32 0)
  %262 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call383 = call %struct.rtx_def* @expand_shift(i32 83, i32 %258, %struct.rtx_def* %259, %union.tree_node* %call382, %struct.rtx_def* %262, i32 0)
  store %struct.rtx_def* %call383, %struct.rtx_def** %tem, align 8
  %263 = load i32, i32* %mode.addr, align 4
  %264 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %265 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %266 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %267 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call384 = call %struct.rtx_def* @expand_binop(i32 %263, %struct.optab* %264, %struct.rtx_def* %265, %struct.rtx_def* %266, %struct.rtx_def* %267, i32 0, i32 2)
  store %struct.rtx_def* %call384, %struct.rtx_def** %tem, align 8
  br label %if.end.385

if.end.385:                                       ; preds = %if.end.376, %if.end.369
  %268 = load i32, i32* %code.addr, align 4
  %cmp386 = icmp eq i32 %268, 103
  br i1 %cmp386, label %if.then.391, label %lor.lhs.false.388

lor.lhs.false.388:                                ; preds = %if.end.385
  %269 = load i32, i32* %code.addr, align 4
  %cmp389 = icmp eq i32 %269, 102
  br i1 %cmp389, label %if.then.391, label %if.end.456

if.then.391:                                      ; preds = %lor.lhs.false.388, %if.end.385
  %270 = load i32, i32* %mode.addr, align 4
  %idxprom392 = sext i32 %270 to i64
  %271 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 34), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %271, i32 0, i32 1
  %arrayidx393 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom392
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx393, i32 0, i32 0
  %272 = load i32, i32* %insn_code, align 4
  %cmp394 = icmp ne i32 %272, 1317
  br i1 %cmp394, label %if.then.396, label %if.else.398

if.then.396:                                      ; preds = %if.then.391
  %273 = load i32, i32* %mode.addr, align 4
  %274 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 34), align 8
  %275 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %276 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call397 = call %struct.rtx_def* @expand_unop(i32 %273, %struct.optab* %274, %struct.rtx_def* %275, %struct.rtx_def* %276, i32 1)
  store %struct.rtx_def* %call397, %struct.rtx_def** %tem, align 8
  br label %if.end.421

if.else.398:                                      ; preds = %if.then.391
  %277 = load i32, i32* %mode.addr, align 4
  %idxprom399 = sext i32 %277 to i64
  %278 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 37), align 8
  %handlers400 = getelementptr inbounds %struct.optab, %struct.optab* %278, i32 0, i32 1
  %arrayidx401 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers400, i32 0, i64 %idxprom399
  %insn_code402 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx401, i32 0, i32 0
  %279 = load i32, i32* %insn_code402, align 4
  %cmp403 = icmp ne i32 %279, 1317
  br i1 %cmp403, label %if.then.405, label %if.else.407

if.then.405:                                      ; preds = %if.else.398
  %280 = load i32, i32* %mode.addr, align 4
  %281 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 37), align 8
  %282 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %283 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call406 = call %struct.rtx_def* @expand_unop(i32 %280, %struct.optab* %281, %struct.rtx_def* %282, %struct.rtx_def* %283, i32 1)
  store %struct.rtx_def* %call406, %struct.rtx_def** %tem, align 8
  br label %if.end.420

if.else.407:                                      ; preds = %if.else.398
  %284 = load i32, i32* %mode.addr, align 4
  %idxprom408 = sext i32 %284 to i64
  %arrayidx409 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom408
  %285 = load i8, i8* %arrayidx409, align 1
  %conv410 = zext i8 %285 to i32
  %286 = load i32, i32* @target_flags, align 4
  %and411 = and i32 %286, 33554432
  %tobool412 = icmp ne i32 %and411, 0
  %cond413 = select i1 %tobool412, i32 8, i32 4
  %cmp414 = icmp slt i32 %conv410, %cond413
  br i1 %cmp414, label %if.then.416, label %if.end.419

if.then.416:                                      ; preds = %if.else.407
  %287 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call417 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %287, i32 0)
  store %struct.rtx_def* %call417, %struct.rtx_def** %op0.addr, align 8
  %288 = load i32, i32* @word_mode, align 4
  %289 = load i32, i32* %mode.addr, align 4
  %290 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call418 = call %struct.rtx_def* @convert_modes(i32 %288, i32 %289, %struct.rtx_def* %290, i32 1)
  store %struct.rtx_def* %call418, %struct.rtx_def** %tem, align 8
  %291 = load i32, i32* @word_mode, align 4
  store i32 %291, i32* %mode.addr, align 4
  br label %if.end.419

if.end.419:                                       ; preds = %if.then.416, %if.else.407
  br label %if.end.420

if.end.420:                                       ; preds = %if.end.419, %if.then.405
  br label %if.end.421

if.end.421:                                       ; preds = %if.end.420, %if.then.396
  %292 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp422 = icmp ne %struct.rtx_def* %292, null
  br i1 %cmp422, label %if.then.424, label %if.end.432

if.then.424:                                      ; preds = %if.end.421
  %293 = load i32, i32* %code.addr, align 4
  %cmp425 = icmp eq i32 %293, 103
  br i1 %cmp425, label %if.then.427, label %if.else.429

if.then.427:                                      ; preds = %if.then.424
  %294 = load i32, i32* %mode.addr, align 4
  %295 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %296 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %297 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %298 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call428 = call %struct.rtx_def* @expand_binop(i32 %294, %struct.optab* %295, %struct.rtx_def* %296, %struct.rtx_def* %297, %struct.rtx_def* %298, i32 0, i32 2)
  store %struct.rtx_def* %call428, %struct.rtx_def** %tem, align 8
  br label %if.end.431

if.else.429:                                      ; preds = %if.then.424
  %299 = load i32, i32* %mode.addr, align 4
  %300 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %301 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %302 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call430 = call %struct.rtx_def* @expand_unop(i32 %299, %struct.optab* %300, %struct.rtx_def* %301, %struct.rtx_def* %302, i32 0)
  store %struct.rtx_def* %call430, %struct.rtx_def** %tem, align 8
  br label %if.end.431

if.end.431:                                       ; preds = %if.else.429, %if.then.427
  br label %if.end.432

if.end.432:                                       ; preds = %if.end.431, %if.end.421
  %303 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp433 = icmp eq %struct.rtx_def* %303, null
  br i1 %cmp433, label %land.lhs.true.435, label %if.end.455

land.lhs.true.435:                                ; preds = %if.end.432
  %304 = load i32, i32* %code.addr, align 4
  %cmp436 = icmp eq i32 %304, 102
  br i1 %cmp436, label %if.then.441, label %lor.lhs.false.438

lor.lhs.false.438:                                ; preds = %land.lhs.true.435
  %305 = load i32, i32* @ix86_branch_cost, align 4
  %cmp439 = icmp sgt i32 %305, 1
  br i1 %cmp439, label %if.then.441, label %if.end.455

if.then.441:                                      ; preds = %lor.lhs.false.438, %land.lhs.true.435
  %306 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %307 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call442 = call i32 @rtx_equal_p(%struct.rtx_def* %306, %struct.rtx_def* %307)
  %tobool443 = icmp ne i32 %call442, 0
  br i1 %tobool443, label %if.then.444, label %if.end.445

if.then.444:                                      ; preds = %if.then.441
  store %struct.rtx_def* null, %struct.rtx_def** %subtarget, align 8
  br label %if.end.445

if.end.445:                                       ; preds = %if.then.444, %if.then.441
  %308 = load i32, i32* %mode.addr, align 4
  %309 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %310 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %311 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call446 = call %struct.rtx_def* @expand_unop(i32 %308, %struct.optab* %309, %struct.rtx_def* %310, %struct.rtx_def* %311, i32 0)
  store %struct.rtx_def* %call446, %struct.rtx_def** %tem, align 8
  %312 = load i32, i32* %mode.addr, align 4
  %313 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %314 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %315 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %316 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call447 = call %struct.rtx_def* @expand_binop(i32 %312, %struct.optab* %313, %struct.rtx_def* %314, %struct.rtx_def* %315, %struct.rtx_def* %316, i32 0, i32 2)
  store %struct.rtx_def* %call447, %struct.rtx_def** %tem, align 8
  %317 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %tobool448 = icmp ne %struct.rtx_def* %317, null
  br i1 %tobool448, label %land.lhs.true.449, label %if.end.454

land.lhs.true.449:                                ; preds = %if.end.445
  %318 = load i32, i32* %code.addr, align 4
  %cmp450 = icmp eq i32 %318, 103
  br i1 %cmp450, label %if.then.452, label %if.end.454

if.then.452:                                      ; preds = %land.lhs.true.449
  %319 = load i32, i32* %mode.addr, align 4
  %320 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  %321 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %322 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %call453 = call %struct.rtx_def* @expand_unop(i32 %319, %struct.optab* %320, %struct.rtx_def* %321, %struct.rtx_def* %322, i32 0)
  store %struct.rtx_def* %call453, %struct.rtx_def** %tem, align 8
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.452, %land.lhs.true.449, %if.end.445
  br label %if.end.455

if.end.455:                                       ; preds = %if.end.454, %lor.lhs.false.438, %if.end.432
  br label %if.end.456

if.end.456:                                       ; preds = %if.end.455, %lor.lhs.false.388
  %323 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %tobool457 = icmp ne %struct.rtx_def* %323, null
  br i1 %tobool457, label %land.lhs.true.458, label %if.end.470

land.lhs.true.458:                                ; preds = %if.end.456
  %324 = load i32, i32* %normalizep.addr, align 4
  %tobool459 = icmp ne i32 %324, 0
  br i1 %tobool459, label %if.then.460, label %if.end.470

if.then.460:                                      ; preds = %land.lhs.true.458
  %325 = load i32, i32* %mode.addr, align 4
  %326 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %327 = load i32, i32* %mode.addr, align 4
  %idxprom461 = sext i32 %327 to i64
  %arrayidx462 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom461
  %328 = load i16, i16* %arrayidx462, align 2
  %conv463 = zext i16 %328 to i32
  %sub464 = sub nsw i32 %conv463, 1
  %conv465 = sext i32 %sub464 to i64
  %call466 = call %union.tree_node* @size_int_wide(i64 %conv465, i32 0)
  %329 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %330 = load i32, i32* %normalizep.addr, align 4
  %cmp467 = icmp eq i32 %330, 1
  %conv468 = zext i1 %cmp467 to i32
  %call469 = call %struct.rtx_def* @expand_shift(i32 83, i32 %325, %struct.rtx_def* %326, %union.tree_node* %call466, %struct.rtx_def* %329, i32 %conv468)
  store %struct.rtx_def* %call469, %struct.rtx_def** %tem, align 8
  br label %if.end.470

if.end.470:                                       ; preds = %if.then.460, %land.lhs.true.458, %if.end.456
  %331 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %tobool471 = icmp ne %struct.rtx_def* %331, null
  br i1 %tobool471, label %if.then.472, label %if.else.485

if.then.472:                                      ; preds = %if.end.470
  %332 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %333 = bitcast %struct.rtx_def* %332 to i32*
  %bf.load473 = load i32, i32* %333, align 8
  %bf.lshr474 = lshr i32 %bf.load473, 16
  %bf.clear475 = and i32 %bf.lshr474, 255
  %334 = load i32, i32* %target_mode, align 4
  %cmp476 = icmp ne i32 %bf.clear475, %334
  br i1 %cmp476, label %if.then.478, label %if.else.479

if.then.478:                                      ; preds = %if.then.472
  %335 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %336 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  call void @convert_move(%struct.rtx_def* %335, %struct.rtx_def* %336, i32 0)
  %337 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %337, %struct.rtx_def** %tem, align 8
  br label %if.end.484

if.else.479:                                      ; preds = %if.then.472
  %338 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %tobool480 = icmp ne %struct.rtx_def* %338, null
  br i1 %tobool480, label %if.end.483, label %if.then.481

if.then.481:                                      ; preds = %if.else.479
  %339 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %340 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call482 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %339, %struct.rtx_def* %340)
  %341 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %341, %struct.rtx_def** %tem, align 8
  br label %if.end.483

if.end.483:                                       ; preds = %if.then.481, %if.else.479
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %if.then.478
  br label %if.end.486

if.else.485:                                      ; preds = %if.end.470
  %342 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %342)
  br label %if.end.486

if.end.486:                                       ; preds = %if.else.485, %if.end.484
  %343 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %343, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.486, %if.then.351, %if.end.324, %if.else.282, %if.then.281, %cond.end.175, %if.end.150, %if.then.76, %if.then.68
  %344 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %344
}

; Function Attrs: nounwind uwtable
define internal i64 @choose_multiplier(i64 %d, i32 %n, i32 %precision, i64* %multiplier_ptr, i32* %post_shift_ptr, i32* %lgup_ptr) #0 {
entry:
  %retval = alloca i64, align 8
  %d.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  %precision.addr = alloca i32, align 4
  %multiplier_ptr.addr = alloca i64*, align 8
  %post_shift_ptr.addr = alloca i32*, align 8
  %lgup_ptr.addr = alloca i32*, align 8
  %mhigh_hi = alloca i64, align 8
  %mlow_hi = alloca i64, align 8
  %mhigh_lo = alloca i64, align 8
  %mlow_lo = alloca i64, align 8
  %lgup = alloca i32, align 4
  %post_shift = alloca i32, align 4
  %pow = alloca i32, align 4
  %pow2 = alloca i32, align 4
  %nl = alloca i64, align 8
  %dummy1 = alloca i64, align 8
  %nh = alloca i64, align 8
  %dummy2 = alloca i64, align 8
  %ml_lo = alloca i64, align 8
  %mh_lo = alloca i64, align 8
  %mask = alloca i64, align 8
  store i64 %d, i64* %d.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  store i32 %precision, i32* %precision.addr, align 4
  store i64* %multiplier_ptr, i64** %multiplier_ptr.addr, align 8
  store i32* %post_shift_ptr, i32** %post_shift_ptr.addr, align 8
  store i32* %lgup_ptr, i32** %lgup_ptr.addr, align 8
  %0 = load i64, i64* %d.addr, align 8
  %call = call i32 @ceil_log2(i64 %0)
  store i32 %call, i32* %lgup, align 4
  %1 = load i32, i32* %lgup, align 4
  %2 = load i32, i32* %n.addr, align 4
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2622, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.choose_multiplier, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %n.addr, align 4
  %4 = load i32, i32* %lgup, align 4
  %add = add nsw i32 %3, %4
  store i32 %add, i32* %pow, align 4
  %5 = load i32, i32* %n.addr, align 4
  %6 = load i32, i32* %lgup, align 4
  %add1 = add nsw i32 %5, %6
  %7 = load i32, i32* %precision.addr, align 4
  %sub = sub nsw i32 %add1, %7
  store i32 %sub, i32* %pow2, align 4
  %8 = load i32, i32* %pow, align 4
  %cmp2 = icmp eq i32 %8, 128
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2631, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.choose_multiplier, i32 0, i32 0)) #4
  unreachable

if.end.4:                                         ; preds = %if.end
  %9 = load i32, i32* %pow, align 4
  %cmp5 = icmp sge i32 %9, 64
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  %10 = load i32, i32* %pow, align 4
  %sub7 = sub nsw i32 %10, 64
  %sh_prom = zext i32 %sub7 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %nh, align 8
  store i64 0, i64* %nl, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end.4
  store i64 0, i64* %nh, align 8
  %11 = load i32, i32* %pow, align 4
  %sh_prom8 = zext i32 %11 to i64
  %shl9 = shl i64 1, %sh_prom8
  store i64 %shl9, i64* %nl, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.6
  %12 = load i64, i64* %nl, align 8
  %13 = load i64, i64* %nh, align 8
  %14 = load i64, i64* %d.addr, align 8
  %call11 = call i32 @div_and_round_double(i32 62, i32 1, i64 %12, i64 %13, i64 %14, i64 0, i64* %mlow_lo, i64* %mlow_hi, i64* %dummy1, i64* %dummy2)
  %15 = load i32, i32* %pow2, align 4
  %cmp12 = icmp sge i32 %15, 64
  br i1 %cmp12, label %if.then.13, label %if.else.17

if.then.13:                                       ; preds = %if.end.10
  %16 = load i32, i32* %pow2, align 4
  %sub14 = sub nsw i32 %16, 64
  %sh_prom15 = zext i32 %sub14 to i64
  %shl16 = shl i64 1, %sh_prom15
  %17 = load i64, i64* %nh, align 8
  %or = or i64 %17, %shl16
  store i64 %or, i64* %nh, align 8
  br label %if.end.21

if.else.17:                                       ; preds = %if.end.10
  %18 = load i32, i32* %pow2, align 4
  %sh_prom18 = zext i32 %18 to i64
  %shl19 = shl i64 1, %sh_prom18
  %19 = load i64, i64* %nl, align 8
  %or20 = or i64 %19, %shl19
  store i64 %or20, i64* %nl, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.17, %if.then.13
  %20 = load i64, i64* %nl, align 8
  %21 = load i64, i64* %nh, align 8
  %22 = load i64, i64* %d.addr, align 8
  %call22 = call i32 @div_and_round_double(i32 62, i32 1, i64 %20, i64 %21, i64 %22, i64 0, i64* %mhigh_lo, i64* %mhigh_hi, i64* %dummy1, i64* %dummy2)
  %23 = load i64, i64* %mhigh_hi, align 8
  %tobool = icmp ne i64 %23, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.21
  %24 = load i64, i64* %nh, align 8
  %25 = load i64, i64* %d.addr, align 8
  %sub23 = sub i64 %24, %25
  %26 = load i64, i64* %d.addr, align 8
  %cmp24 = icmp uge i64 %sub23, %26
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2657, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.choose_multiplier, i32 0, i32 0)) #4
  unreachable

if.end.26:                                        ; preds = %land.lhs.true, %if.end.21
  %27 = load i64, i64* %mhigh_hi, align 8
  %cmp27 = icmp sgt i64 %27, 1
  br i1 %cmp27, label %if.then.29, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %28 = load i64, i64* %mlow_hi, align 8
  %cmp28 = icmp sgt i64 %28, 1
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %lor.lhs.false, %if.end.26
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2659, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.choose_multiplier, i32 0, i32 0)) #4
  unreachable

if.end.30:                                        ; preds = %lor.lhs.false
  %29 = load i64, i64* %mlow_hi, align 8
  %30 = load i64, i64* %mhigh_hi, align 8
  %cmp31 = icmp slt i64 %29, %30
  br i1 %cmp31, label %if.end.37, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %if.end.30
  %31 = load i64, i64* %mlow_hi, align 8
  %32 = load i64, i64* %mhigh_hi, align 8
  %cmp33 = icmp eq i64 %31, %32
  br i1 %cmp33, label %land.lhs.true.34, label %if.then.36

land.lhs.true.34:                                 ; preds = %lor.lhs.false.32
  %33 = load i64, i64* %mlow_lo, align 8
  %34 = load i64, i64* %mhigh_lo, align 8
  %cmp35 = icmp ult i64 %33, %34
  br i1 %cmp35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.34, %lor.lhs.false.32
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2662, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.choose_multiplier, i32 0, i32 0)) #4
  unreachable

if.end.37:                                        ; preds = %land.lhs.true.34, %if.end.30
  %35 = load i32, i32* %lgup, align 4
  store i32 %35, i32* %post_shift, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.37
  %36 = load i32, i32* %post_shift, align 4
  %cmp38 = icmp sgt i32 %36, 0
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load i64, i64* %mlow_hi, align 8
  %shl39 = shl i64 %37, 63
  %38 = load i64, i64* %mlow_lo, align 8
  %shr = lshr i64 %38, 1
  %or40 = or i64 %shl39, %shr
  store i64 %or40, i64* %ml_lo, align 8
  %39 = load i64, i64* %mhigh_hi, align 8
  %shl41 = shl i64 %39, 63
  %40 = load i64, i64* %mhigh_lo, align 8
  %shr42 = lshr i64 %40, 1
  %or43 = or i64 %shl41, %shr42
  store i64 %or43, i64* %mh_lo, align 8
  %41 = load i64, i64* %ml_lo, align 8
  %42 = load i64, i64* %mh_lo, align 8
  %cmp44 = icmp uge i64 %41, %42
  br i1 %cmp44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %for.body
  br label %for.end

if.end.46:                                        ; preds = %for.body
  store i64 0, i64* %mlow_hi, align 8
  %43 = load i64, i64* %ml_lo, align 8
  store i64 %43, i64* %mlow_lo, align 8
  store i64 0, i64* %mhigh_hi, align 8
  %44 = load i64, i64* %mh_lo, align 8
  store i64 %44, i64* %mhigh_lo, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %45 = load i32, i32* %post_shift, align 4
  %dec = add nsw i32 %45, -1
  store i32 %dec, i32* %post_shift, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.45, %for.cond
  %46 = load i32, i32* %post_shift, align 4
  %47 = load i32*, i32** %post_shift_ptr.addr, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %lgup, align 4
  %49 = load i32*, i32** %lgup_ptr.addr, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %n.addr, align 4
  %cmp47 = icmp slt i32 %50, 64
  br i1 %cmp47, label %if.then.48, label %if.else.54

if.then.48:                                       ; preds = %for.end
  %51 = load i32, i32* %n.addr, align 4
  %sh_prom49 = zext i32 %51 to i64
  %shl50 = shl i64 1, %sh_prom49
  %sub51 = sub i64 %shl50, 1
  store i64 %sub51, i64* %mask, align 8
  %52 = load i64, i64* %mhigh_lo, align 8
  %53 = load i64, i64* %mask, align 8
  %and = and i64 %52, %53
  %54 = load i64*, i64** %multiplier_ptr.addr, align 8
  store i64 %and, i64* %54, align 8
  %55 = load i64, i64* %mhigh_lo, align 8
  %56 = load i64, i64* %mask, align 8
  %cmp52 = icmp uge i64 %55, %56
  %conv = zext i1 %cmp52 to i32
  %conv53 = sext i32 %conv to i64
  store i64 %conv53, i64* %retval
  br label %return

if.else.54:                                       ; preds = %for.end
  %57 = load i64, i64* %mhigh_lo, align 8
  %58 = load i64*, i64** %multiplier_ptr.addr, align 8
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* %mhigh_hi, align 8
  store i64 %59, i64* %retval
  br label %return

return:                                           ; preds = %if.else.54, %if.then.48
  %60 = load i64, i64* %retval
  ret i64 %60
}

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_label_rtx() #1

; Function Attrs: nounwind uwtable
define internal void @do_cmp_and_jump(%struct.rtx_def* %arg1, %struct.rtx_def* %arg2, i32 %op, i32 %mode, %struct.rtx_def* %label) #0 {
entry:
  %arg1.addr = alloca %struct.rtx_def*, align 8
  %arg2.addr = alloca %struct.rtx_def*, align 8
  %op.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %label.addr = alloca %struct.rtx_def*, align 8
  %label2 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %arg1, %struct.rtx_def** %arg1.addr, align 8
  store %struct.rtx_def* %arg2, %struct.rtx_def** %arg2.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %op.addr, align 4
  %3 = load i32, i32* %mode.addr, align 4
  %call = call i32 @can_compare_p(i32 %2, i32 %3, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %call1 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call1, %struct.rtx_def** %label2, align 8
  %4 = load i32, i32* %op.addr, align 4
  switch i32 %4, label %sw.default [
    i32 111, label %sw.bb
    i32 110, label %sw.bb.2
    i32 107, label %sw.bb.3
    i32 105, label %sw.bb.4
    i32 104, label %sw.bb.5
    i32 103, label %sw.bb.6
    i32 102, label %sw.bb.10
  ]

sw.bb:                                            ; preds = %if.then
  %5 = load i32, i32* %mode.addr, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %label2, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  call void @do_jump_by_parts_greater_rtx(i32 %5, i32 1, %struct.rtx_def* %6, %struct.rtx_def* %7, %struct.rtx_def* %8, %struct.rtx_def* %9)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  %10 = load i32, i32* %mode.addr, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %label2, align 8
  call void @do_jump_by_parts_greater_rtx(i32 %10, i32 1, %struct.rtx_def* %11, %struct.rtx_def* %12, %struct.rtx_def* %13, %struct.rtx_def* %14)
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then
  %15 = load i32, i32* %mode.addr, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %label2, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  call void @do_jump_by_parts_greater_rtx(i32 %15, i32 0, %struct.rtx_def* %16, %struct.rtx_def* %17, %struct.rtx_def* %18, %struct.rtx_def* %19)
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  %20 = load i32, i32* %mode.addr, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %label2, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  call void @do_jump_by_parts_greater_rtx(i32 %20, i32 0, %struct.rtx_def* %21, %struct.rtx_def* %22, %struct.rtx_def* %23, %struct.rtx_def* %24)
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  %25 = load i32, i32* %mode.addr, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %label2, align 8
  call void @do_jump_by_parts_greater_rtx(i32 %25, i32 0, %struct.rtx_def* %26, %struct.rtx_def* %27, %struct.rtx_def* %28, %struct.rtx_def* %29)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  %30 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp7 = icmp ne %struct.rtx_def* %30, %31
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.6
  %32 = load i32, i32* %mode.addr, align 4
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load = load i32, i32* %34, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp8 = icmp ne i32 %32, %bf.clear
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %lor.lhs.false, %sw.bb.6
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4749, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.do_cmp_and_jump, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %35 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %label2, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  call void @do_jump_by_parts_equality_rtx(%struct.rtx_def* %35, %struct.rtx_def* %36, %struct.rtx_def* %37)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %if.then
  %38 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp11 = icmp ne %struct.rtx_def* %38, %39
  br i1 %cmp11, label %if.then.17, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %sw.bb.10
  %40 = load i32, i32* %mode.addr, align 4
  %41 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load13 = load i32, i32* %42, align 8
  %bf.lshr14 = lshr i32 %bf.load13, 16
  %bf.clear15 = and i32 %bf.lshr14, 255
  %cmp16 = icmp ne i32 %40, %bf.clear15
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %lor.lhs.false.12, %sw.bb.10
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4755, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.do_cmp_and_jump, i32 0, i32 0)) #4
  unreachable

if.end.18:                                        ; preds = %lor.lhs.false.12
  %43 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %label2, align 8
  call void @do_jump_by_parts_equality_rtx(%struct.rtx_def* %43, %struct.rtx_def* %44, %struct.rtx_def* %45)
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4760, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.do_cmp_and_jump, i32 0, i32 0)) #4
  unreachable

sw.epilog:                                        ; preds = %if.end.18, %if.end, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  %46 = load %struct.rtx_def*, %struct.rtx_def** %label2, align 8
  %call19 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %46)
  br label %if.end.20

if.else:                                          ; preds = %land.lhs.true, %entry
  %47 = load %struct.rtx_def*, %struct.rtx_def** %arg1.addr, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %arg2.addr, align 8
  %49 = load i32, i32* %op.addr, align 4
  %50 = load i32, i32* %mode.addr, align 4
  %51 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %47, %struct.rtx_def* %48, i32 %49, %struct.rtx_def* null, i32 %50, i32 0, %struct.rtx_def* %51)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %sw.epilog
  ret void
}

declare %struct.rtx_def* @emit_label(%struct.rtx_def*) #1

declare i32 @expand_twoval_binop(%struct.optab*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @emit_jump_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_jump(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier() #1

; Function Attrs: nounwind uwtable
define internal i64 @invert_mod2n(i64 %x, i32 %n) #0 {
entry:
  %x.addr = alloca i64, align 8
  %n.addr = alloca i32, align 4
  %mask = alloca i64, align 8
  %y = alloca i64, align 8
  %nbit = alloca i32, align 4
  store i64 %x, i64* %x.addr, align 8
  store i32 %n, i32* %n.addr, align 4
  %0 = load i64, i64* %x.addr, align 8
  store i64 %0, i64* %y, align 8
  store i32 3, i32* %nbit, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %1, 64
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %n.addr, align 4
  %sh_prom = zext i32 %2 to i64
  %shl = shl i64 1, %sh_prom
  %sub = sub i64 %shl, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ -1, %cond.true ], [ %sub, %cond.false ]
  store i64 %cond, i64* %mask, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %cond.end
  %3 = load i32, i32* %nbit, align 4
  %4 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i64, i64* %y, align 8
  %6 = load i64, i64* %x.addr, align 8
  %7 = load i64, i64* %y, align 8
  %mul = mul i64 %6, %7
  %sub2 = sub i64 2, %mul
  %mul3 = mul i64 %5, %sub2
  %8 = load i64, i64* %mask, align 8
  %and = and i64 %mul3, %8
  store i64 %and, i64* %y, align 8
  %9 = load i32, i32* %nbit, align 4
  %mul4 = mul nsw i32 %9, 2
  store i32 %mul4, i32* %nbit, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %10 = load i64, i64* %y, align 8
  ret i64 %10
}

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

declare %struct.rtx_def* @expand_abs(i32, %struct.rtx_def*, %struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @sign_expand_binop(i32, %struct.optab*, %struct.optab*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32) #1

declare %union.tree_node* @build_real(%union.tree_node*, %struct.realvaluetype* byval align 8) #1

declare %union.tree_node* @tree_cons(%union.tree_node*, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build_vector(%union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @build1(i32, %union.tree_node*, %union.tree_node*) #1

declare %union.tree_node* @unsigned_type(%union.tree_node*) #1

declare %union.tree_node* @signed_type(%union.tree_node*) #1

declare %union.tree_node* @type_for_mode(i32, i32) #1

declare %union.tree_node* @make_node(i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_mult_add(%struct.rtx_def* %x, %struct.rtx_def* %target, %struct.rtx_def* %mult, %struct.rtx_def* %add, i32 %mode, i32 %unsignedp) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %mult.addr = alloca %struct.rtx_def*, align 8
  %add.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  %type = alloca %union.tree_node*, align 8
  %add_type = alloca %union.tree_node*, align 8
  %result = alloca %union.tree_node*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %mult, %struct.rtx_def** %mult.addr, align 8
  store %struct.rtx_def* %add, %struct.rtx_def** %add.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load i32, i32* %unsignedp.addr, align 4
  %call = call %union.tree_node* @type_for_mode(i32 %0, i32 %1)
  store %union.tree_node* %call, %union.tree_node** %type, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %add.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %union.tree_node*, %union.tree_node** %type, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %add.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  %7 = load i32, i32* %unsignedp.addr, align 4
  %call4 = call %union.tree_node* @type_for_mode(i32 %bf.clear3, i32 %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ %4, %cond.true ], [ %call4, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %add_type, align 8
  %8 = load %union.tree_node*, %union.tree_node** %type, align 8
  %9 = load %union.tree_node*, %union.tree_node** %type, align 8
  %10 = load %union.tree_node*, %union.tree_node** %type, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call5 = call %union.tree_node* @make_tree(%union.tree_node* %10, %struct.rtx_def* %11)
  %12 = load %union.tree_node*, %union.tree_node** %type, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %mult.addr, align 8
  %call6 = call %union.tree_node* @make_tree(%union.tree_node* %12, %struct.rtx_def* %13)
  %call7 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 61, %union.tree_node* %9, %union.tree_node* %call5, %union.tree_node* %call6)
  %call8 = call %union.tree_node* @fold(%union.tree_node* %call7)
  %14 = load %union.tree_node*, %union.tree_node** %add_type, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %add.addr, align 8
  %call9 = call %union.tree_node* @make_tree(%union.tree_node* %14, %struct.rtx_def* %15)
  %call10 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 59, %union.tree_node* %8, %union.tree_node* %call8, %union.tree_node* %call9)
  %call11 = call %union.tree_node* @fold(%union.tree_node* %call10)
  store %union.tree_node* %call11, %union.tree_node** %result, align 8
  %16 = load %union.tree_node*, %union.tree_node** %result, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call12 = call %struct.rtx_def* @expand_expr(%union.tree_node* %16, %struct.rtx_def* %17, i32 0, i32 0)
  ret %struct.rtx_def* %call12
}

declare %struct.rtx_def* @simplify_binary_operation(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @unsigned_condition(i32) #1

declare i32 @swap_commutative_operands_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @swap_condition(i32) #1

declare %union.tree_node* @size_int_wide(i64, i32) #1

declare void @emit_queue() #1

declare void @do_pending_stack_adjust() #1

declare %struct.rtx_def* @compare_from_rtx(%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, %struct.rtx_def*) #1

declare void @convert_move(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_store_flag_force(%struct.rtx_def* %target, i32 %code, %struct.rtx_def* %op0, %struct.rtx_def* %op1, i32 %mode, i32 %unsignedp, i32 %normalizep) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  %normalizep.addr = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i32 %normalizep, i32* %normalizep.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1 = load i32, i32* %code.addr, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %4 = load i32, i32* %mode.addr, align 4
  %5 = load i32, i32* %unsignedp.addr, align 4
  %6 = load i32, i32* %normalizep.addr, align 4
  %call = call %struct.rtx_def* @emit_store_flag(%struct.rtx_def* %0, i32 %1, %struct.rtx_def* %2, %struct.rtx_def* %3, i32 %4, i32 %5, i32 %6)
  store %struct.rtx_def* %call, %struct.rtx_def** %tem, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %cmp = icmp ne %struct.rtx_def* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %normalizep.addr, align 4
  %cmp1 = icmp eq i32 %9, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 1, i32* %normalizep.addr, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp4 = icmp ne i32 %bf.clear, 61
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.3
  %12 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call5 = call i32 @reg_mentioned_p(%struct.rtx_def* %12, %struct.rtx_def* %13)
  %tobool = icmp ne i32 %call5, 0
  br i1 %tobool, label %if.then.9, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %14 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call7 = call i32 @reg_mentioned_p(%struct.rtx_def* %14, %struct.rtx_def* %15)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.end.13

if.then.9:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end.3
  %16 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load10 = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load10, 16
  %bf.clear11 = and i32 %bf.lshr, 255
  %call12 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear11)
  store %struct.rtx_def* %call12, %struct.rtx_def** %target.addr, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.9, %lor.lhs.false.6
  %18 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %call14 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %18, %struct.rtx_def* %19)
  %call15 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call15, %struct.rtx_def** %label, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %22 = load i32, i32* %code.addr, align 4
  %23 = load i32, i32* %unsignedp.addr, align 4
  %24 = load i32, i32* %mode.addr, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  call void @do_compare_rtx_and_jump(%struct.rtx_def* %20, %struct.rtx_def* %21, i32 %22, i32 %23, i32 %24, %struct.rtx_def* null, %struct.rtx_def* null, %struct.rtx_def* %25)
  %26 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call16 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %26, %struct.rtx_def* %27)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call17 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %28)
  %29 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %30 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %30
}

declare void @do_compare_rtx_and_jump(%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @store_split_bit_field(%struct.rtx_def* %op0, i64 %bitsize, i64 %bitpos, %struct.rtx_def* %value) #0 {
entry:
  %op0.addr = alloca %struct.rtx_def*, align 8
  %bitsize.addr = alloca i64, align 8
  %bitpos.addr = alloca i64, align 8
  %value.addr = alloca %struct.rtx_def*, align 8
  %unit = alloca i32, align 4
  %bitsdone = alloca i32, align 4
  %word = alloca %struct.rtx_def*, align 8
  %thissize = alloca i64, align 8
  %part = alloca %struct.rtx_def*, align 8
  %word95 = alloca %struct.rtx_def*, align 8
  %thispos = alloca i64, align 8
  %offset = alloca i64, align 8
  %word_offset = alloca i32, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store i64 %bitsize, i64* %bitsize.addr, align 8
  store i64 %bitpos, i64* %bitpos.addr, align 8
  store %struct.rtx_def* %value, %struct.rtx_def** %value.addr, align 8
  store i32 0, i32* %bitsdone, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 63
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* @target_flags, align 4
  %and = and i32 %4, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  store i32 %cond, i32* %unit, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %6 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp4 = icmp ne %struct.mem_attrs* %6, null
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtmem7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.mem_attrs**
  %8 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem7, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %8, i32 0, i32 4
  %9 = load i32, i32* %align, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi i32 [ %9, %cond.true ], [ 8, %cond.false ]
  %10 = load i32, i32* @target_flags, align 4
  %and9 = and i32 %10, 33554432
  %tobool10 = icmp ne i32 %and9, 0
  %cond11 = select i1 %tobool10, i32 64, i32 32
  %cmp12 = icmp ult i32 %cond8, %cond11
  br i1 %cmp12, label %cond.true.13, label %cond.false.26

cond.true.13:                                     ; preds = %cond.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 1
  %rtmem16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.mem_attrs**
  %12 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem16, align 8
  %cmp17 = icmp ne %struct.mem_attrs* %12, null
  br i1 %cmp17, label %cond.true.18, label %cond.false.23

cond.true.18:                                     ; preds = %cond.true.13
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 1
  %rtmem21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.mem_attrs**
  %14 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem21, align 8
  %align22 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %14, i32 0, i32 4
  %15 = load i32, i32* %align22, align 4
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.true.13
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.18
  %cond25 = phi i32 [ %15, %cond.true.18 ], [ 8, %cond.false.23 ]
  br label %cond.end.30

cond.false.26:                                    ; preds = %cond.end
  %16 = load i32, i32* @target_flags, align 4
  %and27 = and i32 %16, 33554432
  %tobool28 = icmp ne i32 %and27, 0
  %cond29 = select i1 %tobool28, i32 64, i32 32
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.26, %cond.end.24
  %cond31 = phi i32 [ %cond25, %cond.end.24 ], [ %cond29, %cond.false.26 ]
  store i32 %cond31, i32* %unit, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.30, %if.then
  %17 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load32 = load i32, i32* %18, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 67
  br i1 %cmp34, label %land.lhs.true, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load36 = load i32, i32* %20, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 68
  br i1 %cmp38, label %land.lhs.true, label %lor.lhs.false.39

lor.lhs.false.39:                                 ; preds = %lor.lhs.false.35
  %21 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load40 = load i32, i32* %22, align 8
  %bf.clear41 = and i32 %bf.load40, 65535
  %cmp42 = icmp eq i32 %bf.clear41, 54
  br i1 %cmp42, label %land.lhs.true, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %lor.lhs.false.39
  %23 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load44 = load i32, i32* %24, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 55
  br i1 %cmp46, label %land.lhs.true, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.43
  %25 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load48 = load i32, i32* %26, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 58
  br i1 %cmp50, label %land.lhs.true, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %lor.lhs.false.47
  %27 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load52 = load i32, i32* %28, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 134
  br i1 %cmp54, label %land.lhs.true, label %lor.lhs.false.55

lor.lhs.false.55:                                 ; preds = %lor.lhs.false.51
  %29 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load56 = load i32, i32* %30, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 56
  br i1 %cmp58, label %land.lhs.true, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.55
  %31 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load60 = load i32, i32* %32, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %cmp62 = icmp eq i32 %bf.clear61, 140
  br i1 %cmp62, label %land.lhs.true, label %if.else.85

land.lhs.true:                                    ; preds = %lor.lhs.false.59, %lor.lhs.false.55, %lor.lhs.false.51, %lor.lhs.false.47, %lor.lhs.false.43, %lor.lhs.false.39, %lor.lhs.false.35, %if.end
  %33 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load63 = load i32, i32* %34, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp ne i32 %bf.clear64, 54
  br i1 %cmp65, label %if.then.66, label %if.else.85

if.then.66:                                       ; preds = %land.lhs.true
  %35 = load i32, i32* @word_mode, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call = call %struct.rtx_def* @gen_lowpart_common(i32 %35, %struct.rtx_def* %36)
  store %struct.rtx_def* %call, %struct.rtx_def** %word, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %word, align 8
  %tobool67 = icmp ne %struct.rtx_def* %37, null
  br i1 %tobool67, label %land.lhs.true.68, label %if.else.71

land.lhs.true.68:                                 ; preds = %if.then.66
  %38 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %word, align 8
  %cmp69 = icmp ne %struct.rtx_def* %38, %39
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %land.lhs.true.68
  %40 = load %struct.rtx_def*, %struct.rtx_def** %word, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %value.addr, align 8
  br label %if.end.84

if.else.71:                                       ; preds = %land.lhs.true.68, %if.then.66
  %41 = load i32, i32* @word_mode, align 4
  %42 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load72 = load i32, i32* %43, align 8
  %bf.lshr = lshr i32 %bf.load72, 16
  %bf.clear73 = and i32 %bf.lshr, 255
  %cmp74 = icmp ne i32 %bf.clear73, 0
  br i1 %cmp74, label %cond.true.75, label %cond.false.79

cond.true.75:                                     ; preds = %if.else.71
  %44 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load76 = load i32, i32* %45, align 8
  %bf.lshr77 = lshr i32 %bf.load76, 16
  %bf.clear78 = and i32 %bf.lshr77, 255
  br label %cond.end.80

cond.false.79:                                    ; preds = %if.else.71
  %46 = load i32, i32* @word_mode, align 4
  br label %cond.end.80

cond.end.80:                                      ; preds = %cond.false.79, %cond.true.75
  %cond81 = phi i32 [ %bf.clear78, %cond.true.75 ], [ %46, %cond.false.79 ]
  %47 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call82 = call %struct.rtx_def* @force_reg(i32 %cond81, %struct.rtx_def* %47)
  %call83 = call %struct.rtx_def* @gen_lowpart_common(i32 %41, %struct.rtx_def* %call82)
  store %struct.rtx_def* %call83, %struct.rtx_def** %value.addr, align 8
  br label %if.end.84

if.end.84:                                        ; preds = %cond.end.80, %if.then.70
  br label %if.end.92

if.else.85:                                       ; preds = %land.lhs.true, %lor.lhs.false.59
  %48 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load86 = load i32, i32* %49, align 8
  %bf.clear87 = and i32 %bf.load86, 65535
  %cmp88 = icmp eq i32 %bf.clear87, 70
  br i1 %cmp88, label %if.then.89, label %if.end.91

if.then.89:                                       ; preds = %if.else.85
  %50 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %call90 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %50)
  store %struct.rtx_def* %call90, %struct.rtx_def** %value.addr, align 8
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.89, %if.else.85
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.91, %if.end.84
  br label %while.cond

while.cond:                                       ; preds = %if.end.178, %if.end.92
  %51 = load i32, i32* %bitsdone, align 4
  %conv = zext i32 %51 to i64
  %52 = load i64, i64* %bitsize.addr, align 8
  %cmp93 = icmp ult i64 %conv, %52
  br i1 %cmp93, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %53 = load i64, i64* %bitpos.addr, align 8
  %54 = load i32, i32* %bitsdone, align 4
  %conv96 = zext i32 %54 to i64
  %add = add i64 %53, %conv96
  %55 = load i32, i32* %unit, align 4
  %conv97 = zext i32 %55 to i64
  %div = udiv i64 %add, %conv97
  store i64 %div, i64* %offset, align 8
  %56 = load i64, i64* %bitpos.addr, align 8
  %57 = load i32, i32* %bitsdone, align 4
  %conv98 = zext i32 %57 to i64
  %add99 = add i64 %56, %conv98
  %58 = load i32, i32* %unit, align 4
  %conv100 = zext i32 %58 to i64
  %rem = urem i64 %add99, %conv100
  store i64 %rem, i64* %thispos, align 8
  %59 = load i64, i64* %bitsize.addr, align 8
  %60 = load i32, i32* %bitsdone, align 4
  %conv101 = zext i32 %60 to i64
  %sub = sub i64 %59, %conv101
  %61 = load i32, i32* @target_flags, align 4
  %and102 = and i32 %61, 33554432
  %tobool103 = icmp ne i32 %and102, 0
  %cond104 = select i1 %tobool103, i32 64, i32 32
  %conv105 = sext i32 %cond104 to i64
  %cmp106 = icmp ult i64 %sub, %conv105
  br i1 %cmp106, label %cond.true.108, label %cond.false.111

cond.true.108:                                    ; preds = %while.body
  %62 = load i64, i64* %bitsize.addr, align 8
  %63 = load i32, i32* %bitsdone, align 4
  %conv109 = zext i32 %63 to i64
  %sub110 = sub i64 %62, %conv109
  br label %cond.end.116

cond.false.111:                                   ; preds = %while.body
  %64 = load i32, i32* @target_flags, align 4
  %and112 = and i32 %64, 33554432
  %tobool113 = icmp ne i32 %and112, 0
  %cond114 = select i1 %tobool113, i32 64, i32 32
  %conv115 = sext i32 %cond114 to i64
  br label %cond.end.116

cond.end.116:                                     ; preds = %cond.false.111, %cond.true.108
  %cond117 = phi i64 [ %sub110, %cond.true.108 ], [ %conv115, %cond.false.111 ]
  store i64 %cond117, i64* %thissize, align 8
  %65 = load i64, i64* %thissize, align 8
  %66 = load i32, i32* %unit, align 4
  %conv118 = zext i32 %66 to i64
  %67 = load i64, i64* %thispos, align 8
  %sub119 = sub i64 %conv118, %67
  %cmp120 = icmp ult i64 %65, %sub119
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.end.116
  %68 = load i64, i64* %thissize, align 8
  br label %cond.end.126

cond.false.123:                                   ; preds = %cond.end.116
  %69 = load i32, i32* %unit, align 4
  %conv124 = zext i32 %69 to i64
  %70 = load i64, i64* %thispos, align 8
  %sub125 = sub i64 %conv124, %70
  br label %cond.end.126

cond.end.126:                                     ; preds = %cond.false.123, %cond.true.122
  %cond127 = phi i64 [ %68, %cond.true.122 ], [ %sub125, %cond.false.123 ]
  store i64 %cond127, i64* %thissize, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load128 = load i32, i32* %72, align 8
  %bf.clear129 = and i32 %bf.load128, 65535
  %cmp130 = icmp eq i32 %bf.clear129, 54
  br i1 %cmp130, label %if.then.132, label %if.else.138

if.then.132:                                      ; preds = %cond.end.126
  %73 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx134 to i64*
  %74 = load i64, i64* %rtwint, align 8
  %75 = load i32, i32* %bitsdone, align 4
  %sh_prom = zext i32 %75 to i64
  %shr = lshr i64 %74, %sh_prom
  %76 = load i64, i64* %thissize, align 8
  %shl = shl i64 1, %76
  %sub135 = sub nsw i64 %shl, 1
  %and136 = and i64 %shr, %sub135
  %call137 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %and136)
  store %struct.rtx_def* %call137, %struct.rtx_def** %part, align 8
  br label %if.end.141

if.else.138:                                      ; preds = %cond.end.126
  %77 = load i32, i32* @word_mode, align 4
  %78 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %79 = load i64, i64* %thissize, align 8
  %80 = load i32, i32* %bitsdone, align 4
  %conv139 = zext i32 %80 to i64
  %call140 = call %struct.rtx_def* @extract_fixed_bit_field(i32 %77, %struct.rtx_def* %78, i64 0, i64 %79, i64 %conv139, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call140, %struct.rtx_def** %part, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.132
  %81 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load142 = load i32, i32* %82, align 8
  %bf.clear143 = and i32 %bf.load142, 65535
  %cmp144 = icmp eq i32 %bf.clear143, 63
  br i1 %cmp144, label %if.then.146, label %if.else.165

if.then.146:                                      ; preds = %if.end.141
  %83 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx148 to i32*
  %84 = load i32, i32* %rtuint, align 4
  %85 = load i32, i32* @target_flags, align 4
  %and149 = and i32 %85, 33554432
  %tobool150 = icmp ne i32 %and149, 0
  %cond151 = select i1 %tobool150, i32 8, i32 4
  %div152 = udiv i32 %84, %cond151
  %conv153 = zext i32 %div152 to i64
  %86 = load i64, i64* %offset, align 8
  %add154 = add i64 %conv153, %86
  %conv155 = trunc i64 %add154 to i32
  store i32 %conv155, i32* %word_offset, align 4
  %87 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %89 = load i32, i32* %word_offset, align 4
  %90 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 0
  %rtx160 = bitcast %union.rtunion_def* %arrayidx159 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx160, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %bf.load161 = load i32, i32* %92, align 8
  %bf.lshr162 = lshr i32 %bf.load161, 16
  %bf.clear163 = and i32 %bf.lshr162, 255
  %call164 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %88, i32 %89, i32 %bf.clear163)
  store %struct.rtx_def* %call164, %struct.rtx_def** %word95, align 8
  store i64 0, i64* %offset, align 8
  br label %if.end.178

if.else.165:                                      ; preds = %if.end.141
  %93 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load166 = load i32, i32* %94, align 8
  %bf.clear167 = and i32 %bf.load166, 65535
  %cmp168 = icmp eq i32 %bf.clear167, 61
  br i1 %cmp168, label %if.then.170, label %if.else.176

if.then.170:                                      ; preds = %if.else.165
  %95 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %96 = load i64, i64* %offset, align 8
  %conv171 = trunc i64 %96 to i32
  %97 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load172 = load i32, i32* %98, align 8
  %bf.lshr173 = lshr i32 %bf.load172, 16
  %bf.clear174 = and i32 %bf.lshr173, 255
  %call175 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %95, i32 %conv171, i32 %bf.clear174)
  store %struct.rtx_def* %call175, %struct.rtx_def** %word95, align 8
  store i64 0, i64* %offset, align 8
  br label %if.end.177

if.else.176:                                      ; preds = %if.else.165
  %99 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %word95, align 8
  br label %if.end.177

if.end.177:                                       ; preds = %if.else.176, %if.then.170
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %if.then.146
  %100 = load %struct.rtx_def*, %struct.rtx_def** %word95, align 8
  %101 = load i64, i64* %offset, align 8
  %102 = load i32, i32* %unit, align 4
  %conv179 = zext i32 %102 to i64
  %mul = mul i64 %101, %conv179
  %div180 = udiv i64 %mul, 8
  %103 = load i64, i64* %thissize, align 8
  %104 = load i64, i64* %thispos, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %part, align 8
  call void @store_fixed_bit_field(%struct.rtx_def* %100, i64 %div180, i64 %103, i64 %104, %struct.rtx_def* %105)
  %106 = load i64, i64* %thissize, align 8
  %107 = load i32, i32* %bitsdone, align 4
  %conv181 = zext i32 %107 to i64
  %add182 = add i64 %conv181, %106
  %conv183 = trunc i64 %add182 to i32
  store i32 %conv183, i32* %bitsdone, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @lshift_value(i32 %mode, %struct.rtx_def* %value, i32 %bitpos, i32 %bitsize) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %value.addr = alloca %struct.rtx_def*, align 8
  %bitpos.addr = alloca i32, align 4
  %bitsize.addr = alloca i32, align 4
  %v = alloca i64, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %value, %struct.rtx_def** %value.addr, align 8
  store i32 %bitpos, i32* %bitpos.addr, align 4
  store i32 %bitsize, i32* %bitsize.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %1 = load i64, i64* %rtwint, align 8
  store i64 %1, i64* %v, align 8
  %2 = load i32, i32* %bitsize.addr, align 4
  %cmp = icmp slt i32 %2, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %bitsize.addr, align 4
  %sh_prom = zext i32 %3 to i64
  %shl = shl i64 -1, %sh_prom
  %neg = xor i64 %shl, -1
  %4 = load i64, i64* %v, align 8
  %and = and i64 %4, %neg
  store i64 %and, i64* %v, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %bitpos.addr, align 4
  %cmp1 = icmp slt i32 %5, 64
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load i64, i64* %v, align 8
  %7 = load i32, i32* %bitpos.addr, align 4
  %sh_prom3 = zext i32 %7 to i64
  %shl4 = shl i64 %6, %sh_prom3
  store i64 %shl4, i64* %low, align 8
  %8 = load i32, i32* %bitpos.addr, align 4
  %cmp5 = icmp sgt i32 %8, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.2
  %9 = load i64, i64* %v, align 8
  %10 = load i32, i32* %bitpos.addr, align 4
  %sub = sub nsw i32 64, %10
  %sh_prom6 = zext i32 %sub to i64
  %shr = lshr i64 %9, %sh_prom6
  br label %cond.end

cond.false:                                       ; preds = %if.then.2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %shr, %cond.true ], [ 0, %cond.false ]
  store i64 %cond, i64* %high, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end
  store i64 0, i64* %low, align 8
  %11 = load i64, i64* %v, align 8
  %12 = load i32, i32* %bitpos.addr, align 4
  %sub7 = sub nsw i32 %12, 64
  %sh_prom8 = zext i32 %sub7 to i64
  %shl9 = shl i64 %11, %sh_prom8
  store i64 %shl9, i64* %high, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %cond.end
  %13 = load i64, i64* %low, align 8
  %14 = load i64, i64* %high, align 8
  %15 = load i32, i32* %mode.addr, align 4
  %call = call %struct.rtx_def* @immed_double_const(i64 %13, i64 %14, i32 %15)
  ret %struct.rtx_def* %call
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @mask_rtx(i32 %mode, i32 %bitpos, i32 %bitsize, i32 %complement) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %bitpos.addr = alloca i32, align 4
  %bitsize.addr = alloca i32, align 4
  %complement.addr = alloca i32, align 4
  %masklow = alloca i64, align 8
  %maskhigh = alloca i64, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %bitpos, i32* %bitpos.addr, align 4
  store i32 %bitsize, i32* %bitsize.addr, align 4
  store i32 %complement, i32* %complement.addr, align 4
  %0 = load i32, i32* %bitpos.addr, align 4
  %cmp = icmp slt i32 %0, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %bitpos.addr, align 4
  %sh_prom = zext i32 %1 to i64
  %shl = shl i64 -1, %sh_prom
  store i64 %shl, i64* %masklow, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  store i64 0, i64* %masklow, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %bitpos.addr, align 4
  %3 = load i32, i32* %bitsize.addr, align 4
  %add = add nsw i32 %2, %3
  %cmp1 = icmp slt i32 %add, 64
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %4 = load i32, i32* %bitpos.addr, align 4
  %sub = sub nsw i32 64, %4
  %5 = load i32, i32* %bitsize.addr, align 4
  %sub3 = sub nsw i32 %sub, %5
  %sh_prom4 = zext i32 %sub3 to i64
  %shr = lshr i64 -1, %sh_prom4
  %6 = load i64, i64* %masklow, align 8
  %and = and i64 %6, %shr
  store i64 %and, i64* %masklow, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %7 = load i32, i32* %bitpos.addr, align 4
  %cmp6 = icmp sle i32 %7, 64
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.end.5
  store i64 -1, i64* %maskhigh, align 8
  br label %if.end.12

if.else.8:                                        ; preds = %if.end.5
  %8 = load i32, i32* %bitpos.addr, align 4
  %sub9 = sub nsw i32 %8, 64
  %sh_prom10 = zext i32 %sub9 to i64
  %shl11 = shl i64 -1, %sh_prom10
  store i64 %shl11, i64* %maskhigh, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else.8, %if.then.7
  %9 = load i32, i32* %bitpos.addr, align 4
  %10 = load i32, i32* %bitsize.addr, align 4
  %add13 = add nsw i32 %9, %10
  %cmp14 = icmp sgt i32 %add13, 64
  br i1 %cmp14, label %if.then.15, label %if.else.21

if.then.15:                                       ; preds = %if.end.12
  %11 = load i32, i32* %bitpos.addr, align 4
  %sub16 = sub nsw i32 128, %11
  %12 = load i32, i32* %bitsize.addr, align 4
  %sub17 = sub nsw i32 %sub16, %12
  %sh_prom18 = zext i32 %sub17 to i64
  %shr19 = lshr i64 -1, %sh_prom18
  %13 = load i64, i64* %maskhigh, align 8
  %and20 = and i64 %13, %shr19
  store i64 %and20, i64* %maskhigh, align 8
  br label %if.end.22

if.else.21:                                       ; preds = %if.end.12
  store i64 0, i64* %maskhigh, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.21, %if.then.15
  %14 = load i32, i32* %complement.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end.22
  %15 = load i64, i64* %maskhigh, align 8
  %neg = xor i64 %15, -1
  store i64 %neg, i64* %maskhigh, align 8
  %16 = load i64, i64* %masklow, align 8
  %neg24 = xor i64 %16, -1
  store i64 %neg24, i64* %masklow, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end.22
  %17 = load i64, i64* %masklow, align 8
  %18 = load i64, i64* %maskhigh, align 8
  %19 = load i32, i32* %mode.addr, align 4
  %call = call %struct.rtx_def* @immed_double_const(i64 %17, i64 %18, i32 %19)
  ret %struct.rtx_def* %call
}

declare %struct.rtx_def* @gen_lowpart_common(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @extract_split_bit_field(%struct.rtx_def* %op0, i64 %bitsize, i64 %bitpos, i32 %unsignedp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %op0.addr = alloca %struct.rtx_def*, align 8
  %bitsize.addr = alloca i64, align 8
  %bitpos.addr = alloca i64, align 8
  %unsignedp.addr = alloca i32, align 4
  %unit = alloca i32, align 4
  %bitsdone = alloca i32, align 4
  %result = alloca %struct.rtx_def*, align 8
  %first = alloca i32, align 4
  %thissize = alloca i64, align 8
  %part = alloca %struct.rtx_def*, align 8
  %word = alloca %struct.rtx_def*, align 8
  %thispos = alloca i64, align 8
  %offset = alloca i64, align 8
  %word_offset = alloca i32, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store i64 %bitsize, i64* %bitsize.addr, align 8
  store i64 %bitpos, i64* %bitpos.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i32 0, i32* %bitsdone, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %result, align 8
  store i32 1, i32* %first, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 63
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load i32, i32* @target_flags, align 4
  %and = and i32 %4, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  store i32 %cond, i32* %unit, align 4
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %6 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp4 = icmp ne %struct.mem_attrs* %6, null
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtmem7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.mem_attrs**
  %8 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem7, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %8, i32 0, i32 4
  %9 = load i32, i32* %align, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond8 = phi i32 [ %9, %cond.true ], [ 8, %cond.false ]
  %10 = load i32, i32* @target_flags, align 4
  %and9 = and i32 %10, 33554432
  %tobool10 = icmp ne i32 %and9, 0
  %cond11 = select i1 %tobool10, i32 64, i32 32
  %cmp12 = icmp ult i32 %cond8, %cond11
  br i1 %cmp12, label %cond.true.13, label %cond.false.26

cond.true.13:                                     ; preds = %cond.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 1
  %rtmem16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.mem_attrs**
  %12 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem16, align 8
  %cmp17 = icmp ne %struct.mem_attrs* %12, null
  br i1 %cmp17, label %cond.true.18, label %cond.false.23

cond.true.18:                                     ; preds = %cond.true.13
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 1
  %rtmem21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.mem_attrs**
  %14 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem21, align 8
  %align22 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %14, i32 0, i32 4
  %15 = load i32, i32* %align22, align 4
  br label %cond.end.24

cond.false.23:                                    ; preds = %cond.true.13
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.true.18
  %cond25 = phi i32 [ %15, %cond.true.18 ], [ 8, %cond.false.23 ]
  br label %cond.end.30

cond.false.26:                                    ; preds = %cond.end
  %16 = load i32, i32* @target_flags, align 4
  %and27 = and i32 %16, 33554432
  %tobool28 = icmp ne i32 %and27, 0
  %cond29 = select i1 %tobool28, i32 64, i32 32
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.26, %cond.end.24
  %cond31 = phi i32 [ %cond25, %cond.end.24 ], [ %cond29, %cond.false.26 ]
  store i32 %cond31, i32* %unit, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end.30, %if.then
  br label %while.cond

while.cond:                                       ; preds = %if.end.120, %if.end
  %17 = load i32, i32* %bitsdone, align 4
  %conv = zext i32 %17 to i64
  %18 = load i64, i64* %bitsize.addr, align 8
  %cmp32 = icmp ult i64 %conv, %18
  br i1 %cmp32, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load i64, i64* %bitpos.addr, align 8
  %20 = load i32, i32* %bitsdone, align 4
  %conv34 = zext i32 %20 to i64
  %add = add i64 %19, %conv34
  %21 = load i32, i32* %unit, align 4
  %conv35 = zext i32 %21 to i64
  %div = udiv i64 %add, %conv35
  store i64 %div, i64* %offset, align 8
  %22 = load i64, i64* %bitpos.addr, align 8
  %23 = load i32, i32* %bitsdone, align 4
  %conv36 = zext i32 %23 to i64
  %add37 = add i64 %22, %conv36
  %24 = load i32, i32* %unit, align 4
  %conv38 = zext i32 %24 to i64
  %rem = urem i64 %add37, %conv38
  store i64 %rem, i64* %thispos, align 8
  %25 = load i64, i64* %bitsize.addr, align 8
  %26 = load i32, i32* %bitsdone, align 4
  %conv39 = zext i32 %26 to i64
  %sub = sub i64 %25, %conv39
  %27 = load i32, i32* @target_flags, align 4
  %and40 = and i32 %27, 33554432
  %tobool41 = icmp ne i32 %and40, 0
  %cond42 = select i1 %tobool41, i32 64, i32 32
  %conv43 = sext i32 %cond42 to i64
  %cmp44 = icmp ult i64 %sub, %conv43
  br i1 %cmp44, label %cond.true.46, label %cond.false.49

cond.true.46:                                     ; preds = %while.body
  %28 = load i64, i64* %bitsize.addr, align 8
  %29 = load i32, i32* %bitsdone, align 4
  %conv47 = zext i32 %29 to i64
  %sub48 = sub i64 %28, %conv47
  br label %cond.end.54

cond.false.49:                                    ; preds = %while.body
  %30 = load i32, i32* @target_flags, align 4
  %and50 = and i32 %30, 33554432
  %tobool51 = icmp ne i32 %and50, 0
  %cond52 = select i1 %tobool51, i32 64, i32 32
  %conv53 = sext i32 %cond52 to i64
  br label %cond.end.54

cond.end.54:                                      ; preds = %cond.false.49, %cond.true.46
  %cond55 = phi i64 [ %sub48, %cond.true.46 ], [ %conv53, %cond.false.49 ]
  store i64 %cond55, i64* %thissize, align 8
  %31 = load i64, i64* %thissize, align 8
  %32 = load i32, i32* %unit, align 4
  %conv56 = zext i32 %32 to i64
  %33 = load i64, i64* %thispos, align 8
  %sub57 = sub i64 %conv56, %33
  %cmp58 = icmp ult i64 %31, %sub57
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %cond.end.54
  %34 = load i64, i64* %thissize, align 8
  br label %cond.end.64

cond.false.61:                                    ; preds = %cond.end.54
  %35 = load i32, i32* %unit, align 4
  %conv62 = zext i32 %35 to i64
  %36 = load i64, i64* %thispos, align 8
  %sub63 = sub i64 %conv62, %36
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.61, %cond.true.60
  %cond65 = phi i64 [ %34, %cond.true.60 ], [ %sub63, %cond.false.61 ]
  store i64 %cond65, i64* %thissize, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load66 = load i32, i32* %38, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 63
  br i1 %cmp68, label %if.then.70, label %if.else.87

if.then.70:                                       ; preds = %cond.end.64
  %39 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx72 to i32*
  %40 = load i32, i32* %rtuint, align 4
  %41 = load i32, i32* @target_flags, align 4
  %and73 = and i32 %41, 33554432
  %tobool74 = icmp ne i32 %and73, 0
  %cond75 = select i1 %tobool74, i32 8, i32 4
  %div76 = udiv i32 %40, %cond75
  %conv77 = zext i32 %div76 to i64
  %42 = load i64, i64* %offset, align 8
  %add78 = add i64 %conv77, %42
  %conv79 = trunc i64 %add78 to i32
  store i32 %conv79, i32* %word_offset, align 4
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %45 = load i32, i32* %word_offset, align 4
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtx84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx84, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load85 = load i32, i32* %48, align 8
  %bf.lshr = lshr i32 %bf.load85, 16
  %bf.clear86 = and i32 %bf.lshr, 255
  %call = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %44, i32 %45, i32 %bf.clear86)
  store %struct.rtx_def* %call, %struct.rtx_def** %word, align 8
  store i64 0, i64* %offset, align 8
  br label %if.end.100

if.else.87:                                       ; preds = %cond.end.64
  %49 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load88 = load i32, i32* %50, align 8
  %bf.clear89 = and i32 %bf.load88, 65535
  %cmp90 = icmp eq i32 %bf.clear89, 61
  br i1 %cmp90, label %if.then.92, label %if.else.98

if.then.92:                                       ; preds = %if.else.87
  %51 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %52 = load i64, i64* %offset, align 8
  %conv93 = trunc i64 %52 to i32
  %53 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load94 = load i32, i32* %54, align 8
  %bf.lshr95 = lshr i32 %bf.load94, 16
  %bf.clear96 = and i32 %bf.lshr95, 255
  %call97 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %51, i32 %conv93, i32 %bf.clear96)
  store %struct.rtx_def* %call97, %struct.rtx_def** %word, align 8
  store i64 0, i64* %offset, align 8
  br label %if.end.99

if.else.98:                                       ; preds = %if.else.87
  %55 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %55, %struct.rtx_def** %word, align 8
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.98, %if.then.92
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.then.70
  %56 = load i32, i32* @word_mode, align 4
  %57 = load %struct.rtx_def*, %struct.rtx_def** %word, align 8
  %58 = load i64, i64* %offset, align 8
  %59 = load i32, i32* %unit, align 4
  %conv101 = zext i32 %59 to i64
  %mul = mul i64 %58, %conv101
  %div102 = udiv i64 %mul, 8
  %60 = load i64, i64* %thissize, align 8
  %61 = load i64, i64* %thispos, align 8
  %call103 = call %struct.rtx_def* @extract_fixed_bit_field(i32 %56, %struct.rtx_def* %57, i64 %div102, i64 %60, i64 %61, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call103, %struct.rtx_def** %part, align 8
  %62 = load i64, i64* %thissize, align 8
  %63 = load i32, i32* %bitsdone, align 4
  %conv104 = zext i32 %63 to i64
  %add105 = add i64 %conv104, %62
  %conv106 = trunc i64 %add105 to i32
  store i32 %conv106, i32* %bitsdone, align 4
  %64 = load i32, i32* %bitsdone, align 4
  %conv107 = zext i32 %64 to i64
  %65 = load i64, i64* %thissize, align 8
  %cmp108 = icmp ne i64 %conv107, %65
  br i1 %cmp108, label %if.then.110, label %if.end.115

if.then.110:                                      ; preds = %if.end.100
  %66 = load i32, i32* @word_mode, align 4
  %67 = load %struct.rtx_def*, %struct.rtx_def** %part, align 8
  %68 = load i32, i32* %bitsdone, align 4
  %conv111 = zext i32 %68 to i64
  %69 = load i64, i64* %thissize, align 8
  %sub112 = sub i64 %conv111, %69
  %call113 = call %union.tree_node* @build_int_2_wide(i64 %sub112, i64 0)
  %call114 = call %struct.rtx_def* @expand_shift(i32 82, i32 %66, %struct.rtx_def* %67, %union.tree_node* %call113, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call114, %struct.rtx_def** %part, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.110, %if.end.100
  %70 = load i32, i32* %first, align 4
  %tobool116 = icmp ne i32 %70, 0
  br i1 %tobool116, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %if.end.115
  %71 = load %struct.rtx_def*, %struct.rtx_def** %part, align 8
  store %struct.rtx_def* %71, %struct.rtx_def** %result, align 8
  br label %if.end.120

if.else.118:                                      ; preds = %if.end.115
  %72 = load i32, i32* @word_mode, align 4
  %73 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %part, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %call119 = call %struct.rtx_def* @expand_binop(i32 %72, %struct.optab* %73, %struct.rtx_def* %74, %struct.rtx_def* %75, %struct.rtx_def* null, i32 1, i32 3)
  store %struct.rtx_def* %call119, %struct.rtx_def** %result, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.118, %if.then.117
  store i32 0, i32* %first, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %76 = load i32, i32* %unsignedp.addr, align 4
  %tobool121 = icmp ne i32 %76, 0
  br i1 %tobool121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %while.end
  %77 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %77, %struct.rtx_def** %retval
  br label %return

if.end.123:                                       ; preds = %while.end
  %78 = load i32, i32* @word_mode, align 4
  %79 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %80 = load i32, i32* @target_flags, align 4
  %and124 = and i32 %80, 33554432
  %tobool125 = icmp ne i32 %and124, 0
  %cond126 = select i1 %tobool125, i32 64, i32 32
  %conv127 = sext i32 %cond126 to i64
  %81 = load i64, i64* %bitsize.addr, align 8
  %sub128 = sub i64 %conv127, %81
  %call129 = call %union.tree_node* @build_int_2_wide(i64 %sub128, i64 0)
  %call130 = call %struct.rtx_def* @expand_shift(i32 82, i32 %78, %struct.rtx_def* %79, %union.tree_node* %call129, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call130, %struct.rtx_def** %result, align 8
  %82 = load i32, i32* @word_mode, align 4
  %83 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %84 = load i32, i32* @target_flags, align 4
  %and131 = and i32 %84, 33554432
  %tobool132 = icmp ne i32 %and131, 0
  %cond133 = select i1 %tobool132, i32 64, i32 32
  %conv134 = sext i32 %cond133 to i64
  %85 = load i64, i64* %bitsize.addr, align 8
  %sub135 = sub i64 %conv134, %85
  %call136 = call %union.tree_node* @build_int_2_wide(i64 %sub135, i64 0)
  %call137 = call %struct.rtx_def* @expand_shift(i32 83, i32 %82, %struct.rtx_def* %83, %union.tree_node* %call136, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call137, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.123, %if.then.122
  %86 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %86
}

declare i32 @exact_log2_wide(i64) #1

declare i32 @div_and_round_double(i32, i32, i64, i64, i64, i64, i64*, i64*, i64*, i64*) #1

declare i32 @can_compare_p(i32, i32, i32) #1

declare void @do_jump_by_parts_greater_rtx(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @do_jump_by_parts_equality_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare void @emit_cmp_and_jump_insns(%struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, i32, %struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
