; ModuleID = 'optabs.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optab = type { i32, [59 x %struct.anon.3] }
%struct.anon.3 = type { i32, %struct.rtx_def* }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.insn_data = type { i8*, i8*, %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.insn_operand_data*, i8, i8, i8, i8 }
%struct.insn_operand_data = type { i32 (%struct.rtx_def*, i32)*, i8*, i16, i8, i8 }
%struct.function = type { %struct.eh_status*, %struct.stmt_status*, %struct.expr_status*, %struct.emit_status*, %struct.varasm_status*, i8*, %union.tree_node*, %struct.function*, i32, i32, i32, i32, %struct.rtx_def*, %struct.ix86_args, %struct.rtx_def*, %struct.rtx_def*, i8*, %struct.initial_value_struct*, i32, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i64, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def**, %struct.temp_slot*, i32, i32, i32, %struct.var_refs_queue*, i32, i32, i8*, %union.tree_node*, %struct.rtx_def*, i32, i32, %struct.machine_function*, i32, i32, %struct.language_function*, %struct.rtx_def*, i24 }
%struct.eh_status = type opaque
%struct.stmt_status = type opaque
%struct.expr_status = type { i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.emit_status = type { i32, i32, %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack*, i32, i32, i8*, i32, i8*, %union.tree_node**, %struct.rtx_def** }
%struct.sequence_stack = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %struct.sequence_stack* }
%struct.varasm_status = type opaque
%struct.ix86_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.initial_value_struct = type opaque
%struct.temp_slot = type opaque
%struct.var_refs_queue = type { %struct.rtx_def*, i32, i32, %struct.var_refs_queue* }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
%struct.lang_decl = type opaque
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.realvaluetype = type { [3 x i64] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.mem_attrs = type { i64, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32 }

@code_to_optab = common global [154 x %struct.optab*] zeroinitializer, align 16
@.str = private unnamed_addr constant [9 x i8] c"optabs.c\00", align 1
@__FUNCTION__.expand_simple_binop = private unnamed_addr constant [20 x i8] c"expand_simple_binop\00", align 1
@mode_class = external constant [59 x i32], align 16
@flag_force_mem = external global i32, align 4
@optab_table = common global [49 x %struct.optab*] zeroinitializer, align 16
@rtx_class = external constant [153 x i8], align 16
@insn_data = external constant [0 x %struct.insn_data], align 8
@mode_size = external constant [59 x i8], align 16
@mode_wider_mode = external constant [59 x i8], align 16
@target_flags = external global i32, align 4
@word_mode = external global i32, align 4
@mode_bitsize = external constant [59 x i16], align 16
@const_tiny_rtx = external global [3 x [59 x %struct.rtx_def*]], align 16
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@mode_unit_size = external constant [59 x i8], align 16
@__FUNCTION__.expand_binop = private unnamed_addr constant [13 x i8] c"expand_binop\00", align 1
@flag_complex_divide_method = external global i32, align 4
@__FUNCTION__.expand_twoval_binop = private unnamed_addr constant [20 x i8] c"expand_twoval_binop\00", align 1
@__FUNCTION__.expand_simple_unop = private unnamed_addr constant [19 x i8] c"expand_simple_unop\00", align 1
@__FUNCTION__.expand_unop = private unnamed_addr constant [12 x i8] c"expand_unop\00", align 1
@flag_trapv = external global i32, align 4
@ix86_branch_cost = external global i32, align 4
@cfun = external global %struct.function*, align 8
@__FUNCTION__.expand_complex_abs = private unnamed_addr constant [19 x i8] c"expand_complex_abs\00", align 1
@reload_in_progress = external global i32, align 4
@__FUNCTION__.emit_no_conflict_block = private unnamed_addr constant [23 x i8] c"emit_no_conflict_block\00", align 1
@flag_non_call_exceptions = external global i32, align 4
@bcc_gen_fctn = common global [153 x %struct.rtx_def* (%struct.rtx_def*)*] zeroinitializer, align 16
@setcc_gen_code = common global [153 x i32] zeroinitializer, align 16
@__FUNCTION__.emit_cmp_and_jump_insns = private unnamed_addr constant [24 x i8] c"emit_cmp_and_jump_insns\00", align 1
@movcc_gen_code = common global [59 x i32] zeroinitializer, align 16
@__FUNCTION__.gen_add2_insn = private unnamed_addr constant [14 x i8] c"gen_add2_insn\00", align 1
@__FUNCTION__.have_add2_insn = private unnamed_addr constant [15 x i8] c"have_add2_insn\00", align 1
@__FUNCTION__.gen_sub2_insn = private unnamed_addr constant [14 x i8] c"gen_sub2_insn\00", align 1
@__FUNCTION__.have_sub2_insn = private unnamed_addr constant [15 x i8] c"have_sub2_insn\00", align 1
@__FUNCTION__.gen_move_insn = private unnamed_addr constant [14 x i8] c"gen_move_insn\00", align 1
@extendtab = common global [59 x [59 x [2 x i32]]] zeroinitializer, align 16
@__FUNCTION__.expand_float = private unnamed_addr constant [13 x i8] c"expand_float\00", align 1
@global_trees = external global [51 x %union.tree_node*], align 16
@dconst1 = external global %struct.realvaluetype, align 8
@libfunc_table = common global [97 x %struct.rtx_def*] zeroinitializer, align 16
@__FUNCTION__.expand_fix = private unnamed_addr constant [11 x i8] c"expand_fix\00", align 1
@integer_types = external global [11 x %union.tree_node*], align 16
@fixtab = common global [59 x [59 x [2 x i32]]] zeroinitializer, align 16
@fixtrunctab = common global [59 x [59 x [2 x i32]]] zeroinitializer, align 16
@floattab = common global [59 x [59 x [2 x i32]]] zeroinitializer, align 16
@movstr_optab = external global [59 x i32], align 16
@clrstr_optab = external global [59 x i32], align 16
@reload_out_optab = external global [59 x i32], align 16
@reload_in_optab = external global [59 x i32], align 16
@.str.1 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"addv\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"subv\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mulv\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"divv\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"udiv\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"divmod\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"udivmod\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"umod\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"ftrunc\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"ior\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"ashl\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"ashr\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"lshr\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"min\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"umin\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"umax\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"neg\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"negv\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"one_cmpl\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"ffs\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"cmp\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"ucmp\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"cabs\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"__extendsfdf2\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"__extendsfxf2\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"__extendsftf2\00", align 1
@.str.35 = private unnamed_addr constant [14 x i8] c"__extenddfxf2\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"__extenddftf2\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"__truncdfsf2\00", align 1
@.str.38 = private unnamed_addr constant [13 x i8] c"__truncxfsf2\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"__trunctfsf2\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"__truncxfdf2\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"__trunctfdf2\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"memcpy\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"memmove\00", align 1
@.str.45 = private unnamed_addr constant [6 x i8] c"bcopy\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"memcmp\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"__gcc_bcmp\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"memset\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c"bzero\00", align 1
@.str.50 = private unnamed_addr constant [15 x i8] c"_Unwind_Resume\00", align 1
@.str.51 = private unnamed_addr constant [17 x i8] c"__builtin_setjmp\00", align 1
@.str.52 = private unnamed_addr constant [18 x i8] c"__builtin_longjmp\00", align 1
@.str.53 = private unnamed_addr constant [22 x i8] c"_Unwind_SjLj_Register\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"_Unwind_SjLj_Unregister\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"__eqhf2\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"__nehf2\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"__gthf2\00", align 1
@.str.58 = private unnamed_addr constant [8 x i8] c"__gehf2\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"__lthf2\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"__lehf2\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"__unordhf2\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"__eqsf2\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"__nesf2\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"__gtsf2\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"__gesf2\00", align 1
@.str.66 = private unnamed_addr constant [8 x i8] c"__ltsf2\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"__lesf2\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"__unordsf2\00", align 1
@.str.69 = private unnamed_addr constant [8 x i8] c"__eqdf2\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"__nedf2\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"__gtdf2\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"__gedf2\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"__ltdf2\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"__ledf2\00", align 1
@.str.75 = private unnamed_addr constant [11 x i8] c"__unorddf2\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"__eqxf2\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"__nexf2\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"__gtxf2\00", align 1
@.str.79 = private unnamed_addr constant [8 x i8] c"__gexf2\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"__ltxf2\00", align 1
@.str.81 = private unnamed_addr constant [8 x i8] c"__lexf2\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"__unordxf2\00", align 1
@.str.83 = private unnamed_addr constant [8 x i8] c"__eqtf2\00", align 1
@.str.84 = private unnamed_addr constant [8 x i8] c"__netf2\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"__gttf2\00", align 1
@.str.86 = private unnamed_addr constant [8 x i8] c"__getf2\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"__lttf2\00", align 1
@.str.88 = private unnamed_addr constant [8 x i8] c"__letf2\00", align 1
@.str.89 = private unnamed_addr constant [11 x i8] c"__unordtf2\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"__floatsisf\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"__floatdisf\00", align 1
@.str.92 = private unnamed_addr constant [12 x i8] c"__floattisf\00", align 1
@.str.93 = private unnamed_addr constant [12 x i8] c"__floatsidf\00", align 1
@.str.94 = private unnamed_addr constant [12 x i8] c"__floatdidf\00", align 1
@.str.95 = private unnamed_addr constant [12 x i8] c"__floattidf\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"__floatsixf\00", align 1
@.str.97 = private unnamed_addr constant [12 x i8] c"__floatdixf\00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"__floattixf\00", align 1
@.str.99 = private unnamed_addr constant [12 x i8] c"__floatsitf\00", align 1
@.str.100 = private unnamed_addr constant [12 x i8] c"__floatditf\00", align 1
@.str.101 = private unnamed_addr constant [12 x i8] c"__floattitf\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"__fixsfsi\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"__fixsfdi\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"__fixsfti\00", align 1
@.str.105 = private unnamed_addr constant [10 x i8] c"__fixdfsi\00", align 1
@.str.106 = private unnamed_addr constant [10 x i8] c"__fixdfdi\00", align 1
@.str.107 = private unnamed_addr constant [10 x i8] c"__fixdfti\00", align 1
@.str.108 = private unnamed_addr constant [10 x i8] c"__fixxfsi\00", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"__fixxfdi\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"__fixxfti\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"__fixtfsi\00", align 1
@.str.112 = private unnamed_addr constant [10 x i8] c"__fixtfdi\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"__fixtfti\00", align 1
@.str.114 = private unnamed_addr constant [13 x i8] c"__fixunssfsi\00", align 1
@.str.115 = private unnamed_addr constant [13 x i8] c"__fixunssfdi\00", align 1
@.str.116 = private unnamed_addr constant [13 x i8] c"__fixunssfti\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"__fixunsdfsi\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"__fixunsdfdi\00", align 1
@.str.119 = private unnamed_addr constant [13 x i8] c"__fixunsdfti\00", align 1
@.str.120 = private unnamed_addr constant [13 x i8] c"__fixunsxfsi\00", align 1
@.str.121 = private unnamed_addr constant [13 x i8] c"__fixunsxfdi\00", align 1
@.str.122 = private unnamed_addr constant [13 x i8] c"__fixunsxfti\00", align 1
@.str.123 = private unnamed_addr constant [13 x i8] c"__fixunstfsi\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"__fixunstfdi\00", align 1
@.str.125 = private unnamed_addr constant [13 x i8] c"__fixunstfti\00", align 1
@.str.126 = private unnamed_addr constant [25 x i8] c"__cyg_profile_func_enter\00", align 1
@.str.127 = private unnamed_addr constant [24 x i8] c"__cyg_profile_func_exit\00", align 1
@trap_rtx = internal global %struct.rtx_def* null, align 8
@__FUNCTION__.prepare_cmp_insn = private unnamed_addr constant [17 x i8] c"prepare_cmp_insn\00", align 1
@__FUNCTION__.prepare_float_lib_cmp = private unnamed_addr constant [22 x i8] c"prepare_float_lib_cmp\00", align 1
@__FUNCTION__.emit_cmp_and_jump_insn_1 = private unnamed_addr constant [25 x i8] c"emit_cmp_and_jump_insn_1\00", align 1
@mode_name = external constant [59 x i8*], align 16
@_sch_tolower = external constant [256 x i8], align 16

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_simple_binop(i32 %mode, i32 %code, %struct.rtx_def* %op0, %struct.rtx_def* %op1, %struct.rtx_def* %target, i32 %unsignedp, i32 %methods) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %methods.addr = alloca i32, align 4
  %binop = alloca %struct.optab*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i32 %methods, i32* %methods.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [154 x %struct.optab*], [154 x %struct.optab*]* @code_to_optab, i32 0, i64 %idxprom
  %1 = load %struct.optab*, %struct.optab** %arrayidx, align 8
  store %struct.optab* %1, %struct.optab** %binop, align 8
  %2 = load %struct.optab*, %struct.optab** %binop, align 8
  %cmp = icmp eq %struct.optab* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 624, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.expand_simple_binop, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %mode.addr, align 4
  %4 = load %struct.optab*, %struct.optab** %binop, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %8 = load i32, i32* %unsignedp.addr, align 4
  %9 = load i32, i32* %methods.addr, align 4
  %call = call %struct.rtx_def* @expand_binop(i32 %3, %struct.optab* %4, %struct.rtx_def* %5, %struct.rtx_def* %6, %struct.rtx_def* %7, i32 %8, i32 %9)
  ret %struct.rtx_def* %call
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_binop(i32 %mode, %struct.optab* %binoptab, %struct.rtx_def* %op0, %struct.rtx_def* %op1, %struct.rtx_def* %target, i32 %unsignedp, i32 %methods) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %binoptab.addr = alloca %struct.optab*, align 8
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %methods.addr = alloca i32, align 4
  %next_methods = alloca i32, align 4
  %class = alloca i32, align 4
  %wider_mode = alloca i32, align 4
  %temp = alloca %struct.rtx_def*, align 8
  %commutative_op = alloca i32, align 4
  %shift_op = alloca i32, align 4
  %entry_last = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %icode = alloca i32, align 4
  %mode0 = alloca i32, align 4
  %mode1 = alloca i32, align 4
  %pat = alloca %struct.rtx_def*, align 8
  %xop0 = alloca %struct.rtx_def*, align 8
  %xop1 = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  %xop0441 = alloca %struct.rtx_def*, align 8
  %xop1443 = alloca %struct.rtx_def*, align 8
  %no_extend = alloca i32, align 4
  %i = alloca i32, align 4
  %insns = alloca %struct.rtx_def*, align 8
  %equiv_value = alloca %struct.rtx_def*, align 8
  %target_piece = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %insns635 = alloca %struct.rtx_def*, align 8
  %inter = alloca %struct.rtx_def*, align 8
  %equiv_value638 = alloca %struct.rtx_def*, align 8
  %into_target = alloca %struct.rtx_def*, align 8
  %outof_target = alloca %struct.rtx_def*, align 8
  %into_input = alloca %struct.rtx_def*, align 8
  %outof_input = alloca %struct.rtx_def*, align 8
  %shift_count = alloca i32, align 4
  %left_shift = alloca i32, align 4
  %outof_word = alloca i32, align 4
  %carries = alloca %struct.rtx_def*, align 8
  %reverse_unsigned_shift = alloca %struct.optab*, align 8
  %unsigned_shift = alloca %struct.optab*, align 8
  %insns824 = alloca %struct.rtx_def*, align 8
  %equiv_value826 = alloca %struct.rtx_def*, align 8
  %into_target828 = alloca %struct.rtx_def*, align 8
  %outof_target830 = alloca %struct.rtx_def*, align 8
  %into_input832 = alloca %struct.rtx_def*, align 8
  %outof_input834 = alloca %struct.rtx_def*, align 8
  %inter836 = alloca %struct.rtx_def*, align 8
  %shift_count838 = alloca i32, align 4
  %left_shift840 = alloca i32, align 4
  %outof_word842 = alloca i32, align 4
  %into_temp1 = alloca %struct.rtx_def*, align 8
  %into_temp2 = alloca %struct.rtx_def*, align 8
  %outof_temp1 = alloca %struct.rtx_def*, align 8
  %outof_temp2 = alloca %struct.rtx_def*, align 8
  %first_shift_count = alloca %struct.rtx_def*, align 8
  %second_shift_count = alloca %struct.rtx_def*, align 8
  %reverse_unsigned_shift883 = alloca %struct.optab*, align 8
  %unsigned_shift885 = alloca %struct.optab*, align 8
  %i1029 = alloca i32, align 4
  %otheroptab = alloca %struct.optab*, align 8
  %nwords = alloca i32, align 4
  %carry_in = alloca %struct.rtx_def*, align 8
  %carry_out = alloca %struct.rtx_def*, align 8
  %xop01048 = alloca %struct.rtx_def*, align 8
  %xop11050 = alloca %struct.rtx_def*, align 8
  %normalizep = alloca i32, align 4
  %index = alloca i32, align 4
  %target_piece1084 = alloca %struct.rtx_def*, align 8
  %op0_piece = alloca %struct.rtx_def*, align 8
  %op1_piece = alloca %struct.rtx_def*, align 8
  %x1091 = alloca %struct.rtx_def*, align 8
  %newx = alloca %struct.rtx_def*, align 8
  %carry_tmp = alloca %struct.rtx_def*, align 8
  %temp1156 = alloca %struct.rtx_def*, align 8
  %low = alloca i32, align 4
  %high = alloca i32, align 4
  %op0_high = alloca %struct.rtx_def*, align 8
  %op0_low = alloca %struct.rtx_def*, align 8
  %op1_high = alloca %struct.rtx_def*, align 8
  %op1_low = alloca %struct.rtx_def*, align 8
  %product = alloca %struct.rtx_def*, align 8
  %op0_xhigh = alloca %struct.rtx_def*, align 8
  %op1_xhigh = alloca %struct.rtx_def*, align 8
  %wordm1 = alloca %struct.rtx_def*, align 8
  %product_high = alloca %struct.rtx_def*, align 8
  %temp1303 = alloca %struct.rtx_def*, align 8
  %real0 = alloca %struct.rtx_def*, align 8
  %imag0 = alloca %struct.rtx_def*, align 8
  %real1 = alloca %struct.rtx_def*, align 8
  %imag1 = alloca %struct.rtx_def*, align 8
  %realr = alloca %struct.rtx_def*, align 8
  %imagr = alloca %struct.rtx_def*, align 8
  %res = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %equiv_value1370 = alloca %struct.rtx_def*, align 8
  %ok = alloca i32, align 4
  %submode = alloca i32, align 4
  %temp1 = alloca %struct.rtx_def*, align 8
  %temp2 = alloca %struct.rtx_def*, align 8
  %insns1640 = alloca %struct.rtx_def*, align 8
  %op1x = alloca %struct.rtx_def*, align 8
  %op1_mode = alloca i32, align 4
  %value = alloca %struct.rtx_def*, align 8
  %xop01718 = alloca %struct.rtx_def*, align 8
  %xop11720 = alloca %struct.rtx_def*, align 8
  %no_extend1722 = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.optab* %binoptab, %struct.optab** %binoptab.addr, align 8
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i32 %methods, i32* %methods.addr, align 4
  %0 = load i32, i32* %methods.addr, align 4
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %methods.addr, align 4
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %2 = load i32, i32* %methods.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %2, %cond.false ]
  store i32 %cond, i32* %next_methods, align 4
  store i32 0, i32* %commutative_op, align 4
  %3 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code = getelementptr inbounds %struct.optab, %struct.optab* %3, i32 0, i32 0
  %4 = load i32, i32* %code, align 4
  %cmp2 = icmp eq i32 %4, 87
  br i1 %cmp2, label %lor.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %cond.end
  %5 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code4 = getelementptr inbounds %struct.optab, %struct.optab* %5, i32 0, i32 0
  %6 = load i32, i32* %code4, align 4
  %cmp5 = icmp eq i32 %6, 89
  br i1 %cmp5, label %lor.end, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.3
  %7 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code7 = getelementptr inbounds %struct.optab, %struct.optab* %7, i32 0, i32 0
  %8 = load i32, i32* %code7, align 4
  %cmp8 = icmp eq i32 %8, 90
  br i1 %cmp8, label %lor.end, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false.6
  %9 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code10 = getelementptr inbounds %struct.optab, %struct.optab* %9, i32 0, i32 0
  %10 = load i32, i32* %code10, align 4
  %cmp11 = icmp eq i32 %10, 88
  br i1 %cmp11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.9
  %11 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code12 = getelementptr inbounds %struct.optab, %struct.optab* %11, i32 0, i32 0
  %12 = load i32, i32* %code12, align 4
  %cmp13 = icmp eq i32 %12, 91
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.9, %lor.lhs.false.6, %lor.lhs.false.3, %cond.end
  %13 = phi i1 [ true, %lor.lhs.false.9 ], [ true, %lor.lhs.false.6 ], [ true, %lor.lhs.false.3 ], [ true, %cond.end ], [ %cmp13, %lor.rhs ]
  %lor.ext = zext i1 %13 to i32
  store i32 %lor.ext, i32* %shift_op, align 4
  %call = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call, %struct.rtx_def** %entry_last, align 8
  %14 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx, align 4
  store i32 %15, i32* %class, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call14 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %16, i32 0)
  store %struct.rtx_def* %call14, %struct.rtx_def** %op0.addr, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call15 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %17, i32 0)
  store %struct.rtx_def* %call15, %struct.rtx_def** %op1.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %18, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call16 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %19, i32 1)
  store %struct.rtx_def* %call16, %struct.rtx_def** %target.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  %20 = load i32, i32* @flag_force_mem, align 4
  %tobool17 = icmp ne i32 %20, 0
  br i1 %tobool17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %if.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call19 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %21)
  store %struct.rtx_def* %call19, %struct.rtx_def** %op0.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call20 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %22)
  store %struct.rtx_def* %call20, %struct.rtx_def** %op1.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %if.end
  %23 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %24 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %cmp22 = icmp eq %struct.optab* %23, %24
  br i1 %cmp22, label %land.lhs.true, label %if.end.26

land.lhs.true:                                    ; preds = %if.end.21
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load = load i32, i32* %26, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp23 = icmp eq i32 %bf.clear, 54
  br i1 %cmp23, label %if.then.24, label %if.end.26

if.then.24:                                       ; preds = %land.lhs.true
  %27 = load i32, i32* %mode.addr, align 4
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call25 = call %struct.rtx_def* @negate_rtx(i32 %27, %struct.rtx_def* %28)
  store %struct.rtx_def* %call25, %struct.rtx_def** %op1.addr, align 8
  %29 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  store %struct.optab* %29, %struct.optab** %binoptab.addr, align 8
  br label %if.end.26

if.end.26:                                        ; preds = %if.then.24, %land.lhs.true, %if.end.21
  %30 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load27 = load i32, i32* %31, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 67
  br i1 %cmp29, label %land.lhs.true.58, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.end.26
  %32 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load31 = load i32, i32* %33, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 68
  br i1 %cmp33, label %land.lhs.true.58, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.30
  %34 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load35 = load i32, i32* %35, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 54
  br i1 %cmp37, label %land.lhs.true.58, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.34
  %36 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load39 = load i32, i32* %37, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp eq i32 %bf.clear40, 55
  br i1 %cmp41, label %land.lhs.true.58, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %lor.lhs.false.38
  %38 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load43 = load i32, i32* %39, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 58
  br i1 %cmp45, label %land.lhs.true.58, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.42
  %40 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load47 = load i32, i32* %41, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 134
  br i1 %cmp49, label %land.lhs.true.58, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.46
  %42 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load51 = load i32, i32* %43, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 56
  br i1 %cmp53, label %land.lhs.true.58, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.50
  %44 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load55 = load i32, i32* %45, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 140
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.67

land.lhs.true.58:                                 ; preds = %lor.lhs.false.54, %lor.lhs.false.50, %lor.lhs.false.46, %lor.lhs.false.42, %lor.lhs.false.38, %lor.lhs.false.34, %lor.lhs.false.30, %if.end.26
  %call59 = call i32 @preserve_subexpressions_p()
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %land.lhs.true.61, label %if.end.67

land.lhs.true.61:                                 ; preds = %land.lhs.true.58
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %47 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code62 = getelementptr inbounds %struct.optab, %struct.optab* %47, i32 0, i32 0
  %48 = load i32, i32* %code62, align 4
  %call63 = call i32 @rtx_cost(%struct.rtx_def* %46, i32 %48)
  %cmp64 = icmp sgt i32 %call63, 4
  br i1 %cmp64, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %land.lhs.true.61
  %49 = load i32, i32* %mode.addr, align 4
  %50 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call66 = call %struct.rtx_def* @force_reg(i32 %49, %struct.rtx_def* %50)
  store %struct.rtx_def* %call66, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %land.lhs.true.61, %land.lhs.true.58, %lor.lhs.false.54
  %51 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load68 = load i32, i32* %52, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 67
  br i1 %cmp70, label %land.lhs.true.99, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %if.end.67
  %53 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load72 = load i32, i32* %54, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 68
  br i1 %cmp74, label %land.lhs.true.99, label %lor.lhs.false.75

lor.lhs.false.75:                                 ; preds = %lor.lhs.false.71
  %55 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load76 = load i32, i32* %56, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 54
  br i1 %cmp78, label %land.lhs.true.99, label %lor.lhs.false.79

lor.lhs.false.79:                                 ; preds = %lor.lhs.false.75
  %57 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load80 = load i32, i32* %58, align 8
  %bf.clear81 = and i32 %bf.load80, 65535
  %cmp82 = icmp eq i32 %bf.clear81, 55
  br i1 %cmp82, label %land.lhs.true.99, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %lor.lhs.false.79
  %59 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load84 = load i32, i32* %60, align 8
  %bf.clear85 = and i32 %bf.load84, 65535
  %cmp86 = icmp eq i32 %bf.clear85, 58
  br i1 %cmp86, label %land.lhs.true.99, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %lor.lhs.false.83
  %61 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load88 = load i32, i32* %62, align 8
  %bf.clear89 = and i32 %bf.load88, 65535
  %cmp90 = icmp eq i32 %bf.clear89, 134
  br i1 %cmp90, label %land.lhs.true.99, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false.87
  %63 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load92 = load i32, i32* %64, align 8
  %bf.clear93 = and i32 %bf.load92, 65535
  %cmp94 = icmp eq i32 %bf.clear93, 56
  br i1 %cmp94, label %land.lhs.true.99, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %lor.lhs.false.91
  %65 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load96 = load i32, i32* %66, align 8
  %bf.clear97 = and i32 %bf.load96, 65535
  %cmp98 = icmp eq i32 %bf.clear97, 140
  br i1 %cmp98, label %land.lhs.true.99, label %if.end.110

land.lhs.true.99:                                 ; preds = %lor.lhs.false.95, %lor.lhs.false.91, %lor.lhs.false.87, %lor.lhs.false.83, %lor.lhs.false.79, %lor.lhs.false.75, %lor.lhs.false.71, %if.end.67
  %call100 = call i32 @preserve_subexpressions_p()
  %tobool101 = icmp ne i32 %call100, 0
  br i1 %tobool101, label %land.lhs.true.102, label %if.end.110

land.lhs.true.102:                                ; preds = %land.lhs.true.99
  %67 = load i32, i32* %shift_op, align 4
  %tobool103 = icmp ne i32 %67, 0
  br i1 %tobool103, label %if.end.110, label %land.lhs.true.104

land.lhs.true.104:                                ; preds = %land.lhs.true.102
  %68 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %69 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code105 = getelementptr inbounds %struct.optab, %struct.optab* %69, i32 0, i32 0
  %70 = load i32, i32* %code105, align 4
  %call106 = call i32 @rtx_cost(%struct.rtx_def* %68, i32 %70)
  %cmp107 = icmp sgt i32 %call106, 4
  br i1 %cmp107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %land.lhs.true.104
  %71 = load i32, i32* %mode.addr, align 4
  %72 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call109 = call %struct.rtx_def* @force_reg(i32 %71, %struct.rtx_def* %72)
  store %struct.rtx_def* %call109, %struct.rtx_def** %op1.addr, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %land.lhs.true.104, %land.lhs.true.102, %land.lhs.true.99, %lor.lhs.false.95
  %call111 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call111, %struct.rtx_def** %last, align 8
  %73 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code112 = getelementptr inbounds %struct.optab, %struct.optab* %73, i32 0, i32 0
  %74 = load i32, i32* %code112, align 4
  %idxprom113 = sext i32 %74 to i64
  %arrayidx114 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom113
  %75 = load i8, i8* %arrayidx114, align 1
  %conv = sext i8 %75 to i32
  %cmp115 = icmp eq i32 %conv, 99
  br i1 %cmp115, label %if.then.129, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %if.end.110
  %76 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %77 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  %cmp118 = icmp eq %struct.optab* %76, %77
  br i1 %cmp118, label %if.then.129, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %lor.lhs.false.117
  %78 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %79 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  %cmp121 = icmp eq %struct.optab* %78, %79
  br i1 %cmp121, label %if.then.129, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %lor.lhs.false.120
  %80 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %81 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 6), align 8
  %cmp124 = icmp eq %struct.optab* %80, %81
  br i1 %cmp124, label %if.then.129, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %lor.lhs.false.123
  %82 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %83 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 7), align 8
  %cmp127 = icmp eq %struct.optab* %82, %83
  br i1 %cmp127, label %if.then.129, label %if.end.160

if.then.129:                                      ; preds = %lor.lhs.false.126, %lor.lhs.false.123, %lor.lhs.false.120, %lor.lhs.false.117, %if.end.110
  store i32 1, i32* %commutative_op, align 4
  %84 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp130 = icmp eq %struct.rtx_def* %84, null
  br i1 %cmp130, label %cond.true.137, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %if.then.129
  %85 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load133 = load i32, i32* %86, align 8
  %bf.clear134 = and i32 %bf.load133, 65535
  %cmp135 = icmp eq i32 %bf.clear134, 61
  br i1 %cmp135, label %cond.true.137, label %cond.false.150

cond.true.137:                                    ; preds = %lor.lhs.false.132, %if.then.129
  %87 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load138 = load i32, i32* %88, align 8
  %bf.clear139 = and i32 %bf.load138, 65535
  %cmp140 = icmp eq i32 %bf.clear139, 61
  br i1 %cmp140, label %land.lhs.true.142, label %lor.lhs.false.147

land.lhs.true.142:                                ; preds = %cond.true.137
  %89 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %90 = bitcast %struct.rtx_def* %89 to i32*
  %bf.load143 = load i32, i32* %90, align 8
  %bf.clear144 = and i32 %bf.load143, 65535
  %cmp145 = icmp ne i32 %bf.clear144, 61
  br i1 %cmp145, label %if.then.158, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %land.lhs.true.142, %cond.true.137
  %91 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %cmp148 = icmp eq %struct.rtx_def* %91, %92
  br i1 %cmp148, label %if.then.158, label %lor.lhs.false.153

cond.false.150:                                   ; preds = %lor.lhs.false.132
  %93 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call151 = call i32 @rtx_equal_p(%struct.rtx_def* %93, %struct.rtx_def* %94)
  %tobool152 = icmp ne i32 %call151, 0
  br i1 %tobool152, label %if.then.158, label %lor.lhs.false.153

lor.lhs.false.153:                                ; preds = %cond.false.150, %lor.lhs.false.147
  %95 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %bf.load154 = load i32, i32* %96, align 8
  %bf.clear155 = and i32 %bf.load154, 65535
  %cmp156 = icmp eq i32 %bf.clear155, 54
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %lor.lhs.false.153, %cond.false.150, %lor.lhs.false.147, %land.lhs.true.142
  %97 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %97, %struct.rtx_def** %temp, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %98, %struct.rtx_def** %op1.addr, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.158, %lor.lhs.false.153
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %lor.lhs.false.126
  %100 = load i32, i32* %methods.addr, align 4
  %cmp161 = icmp ne i32 %100, 4
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.342

land.lhs.true.163:                                ; preds = %if.end.160
  %101 = load i32, i32* %mode.addr, align 4
  %idxprom164 = sext i32 %101 to i64
  %102 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %102, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom164
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx165, i32 0, i32 0
  %103 = load i32, i32* %insn_code, align 4
  %cmp166 = icmp ne i32 %103, 1317
  br i1 %cmp166, label %if.then.168, label %if.end.342

if.then.168:                                      ; preds = %land.lhs.true.163
  %104 = load i32, i32* %mode.addr, align 4
  %idxprom169 = sext i32 %104 to i64
  %105 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers170 = getelementptr inbounds %struct.optab, %struct.optab* %105, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers170, i32 0, i64 %idxprom169
  %insn_code172 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx171, i32 0, i32 0
  %106 = load i32, i32* %insn_code172, align 4
  store i32 %106, i32* %icode, align 4
  %107 = load i32, i32* %icode, align 4
  %idxprom173 = sext i32 %107 to i64
  %arrayidx174 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom173
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx174, i32 0, i32 3
  %108 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx175 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %108, i64 1
  %mode176 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx175, i32 0, i32 2
  %bf.load177 = load i16, i16* %mode176, align 8
  %bf.cast = zext i16 %bf.load177 to i32
  store i32 %bf.cast, i32* %mode0, align 4
  %109 = load i32, i32* %icode, align 4
  %idxprom178 = sext i32 %109 to i64
  %arrayidx179 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom178
  %operand180 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx179, i32 0, i32 3
  %110 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand180, align 8
  %arrayidx181 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %110, i64 2
  %mode182 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx181, i32 0, i32 2
  %bf.load183 = load i16, i16* %mode182, align 8
  %bf.cast184 = zext i16 %bf.load183 to i32
  store i32 %bf.cast184, i32* %mode1, align 4
  %111 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %111, %struct.rtx_def** %xop0, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %112, %struct.rtx_def** %xop1, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool185 = icmp ne %struct.rtx_def* %113, null
  br i1 %tobool185, label %if.then.186, label %if.else

if.then.186:                                      ; preds = %if.then.168
  %114 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %114, %struct.rtx_def** %temp, align 8
  br label %if.end.188

if.else:                                          ; preds = %if.then.168
  %115 = load i32, i32* %mode.addr, align 4
  %call187 = call %struct.rtx_def* @gen_reg_rtx(i32 %115)
  store %struct.rtx_def* %call187, %struct.rtx_def** %temp, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.else, %if.then.186
  %116 = load i32, i32* %commutative_op, align 4
  %tobool189 = icmp ne i32 %116, 0
  br i1 %tobool189, label %if.then.190, label %if.end.215

if.then.190:                                      ; preds = %if.end.188
  %117 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load191 = load i32, i32* %118, align 8
  %bf.lshr = lshr i32 %bf.load191, 16
  %bf.clear192 = and i32 %bf.lshr, 255
  %119 = load i32, i32* %mode0, align 4
  %cmp193 = icmp ne i32 %bf.clear192, %119
  br i1 %cmp193, label %land.lhs.true.195, label %if.end.214

land.lhs.true.195:                                ; preds = %if.then.190
  %120 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load196 = load i32, i32* %121, align 8
  %bf.lshr197 = lshr i32 %bf.load196, 16
  %bf.clear198 = and i32 %bf.lshr197, 255
  %122 = load i32, i32* %mode1, align 4
  %cmp199 = icmp ne i32 %bf.clear198, %122
  br i1 %cmp199, label %land.lhs.true.201, label %if.end.214

land.lhs.true.201:                                ; preds = %land.lhs.true.195
  %123 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load202 = load i32, i32* %124, align 8
  %bf.lshr203 = lshr i32 %bf.load202, 16
  %bf.clear204 = and i32 %bf.lshr203, 255
  %125 = load i32, i32* %mode1, align 4
  %cmp205 = icmp eq i32 %bf.clear204, %125
  br i1 %cmp205, label %land.lhs.true.207, label %if.end.214

land.lhs.true.207:                                ; preds = %land.lhs.true.201
  %126 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load208 = load i32, i32* %127, align 8
  %bf.lshr209 = lshr i32 %bf.load208, 16
  %bf.clear210 = and i32 %bf.lshr209, 255
  %128 = load i32, i32* %mode0, align 4
  %cmp211 = icmp eq i32 %bf.clear210, %128
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %land.lhs.true.207
  %129 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %tmp, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %130, %struct.rtx_def** %op0.addr, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %131, %struct.rtx_def** %op1.addr, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  store %struct.rtx_def* %132, %struct.rtx_def** %tmp, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %xop1, align 8
  store %struct.rtx_def* %133, %struct.rtx_def** %xop0, align 8
  %134 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  store %struct.rtx_def* %134, %struct.rtx_def** %xop1, align 8
  br label %if.end.214

if.end.214:                                       ; preds = %if.then.213, %land.lhs.true.207, %land.lhs.true.201, %land.lhs.true.195, %if.then.190
  br label %if.end.215

if.end.215:                                       ; preds = %if.end.214, %if.end.188
  %135 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %136 = bitcast %struct.rtx_def* %135 to i32*
  %bf.load216 = load i32, i32* %136, align 8
  %bf.lshr217 = lshr i32 %bf.load216, 16
  %bf.clear218 = and i32 %bf.lshr217, 255
  %137 = load i32, i32* %mode0, align 4
  %cmp219 = icmp ne i32 %bf.clear218, %137
  br i1 %cmp219, label %land.lhs.true.221, label %if.end.250

land.lhs.true.221:                                ; preds = %if.end.215
  %138 = load i32, i32* %mode0, align 4
  %cmp222 = icmp ne i32 %138, 0
  br i1 %cmp222, label %if.then.224, label %if.end.250

if.then.224:                                      ; preds = %land.lhs.true.221
  %139 = load i32, i32* %mode0, align 4
  %140 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %141 = bitcast %struct.rtx_def* %140 to i32*
  %bf.load225 = load i32, i32* %141, align 8
  %bf.lshr226 = lshr i32 %bf.load225, 16
  %bf.clear227 = and i32 %bf.lshr226, 255
  %cmp228 = icmp ne i32 %bf.clear227, 0
  br i1 %cmp228, label %cond.true.230, label %cond.false.234

cond.true.230:                                    ; preds = %if.then.224
  %142 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %143 = bitcast %struct.rtx_def* %142 to i32*
  %bf.load231 = load i32, i32* %143, align 8
  %bf.lshr232 = lshr i32 %bf.load231, 16
  %bf.clear233 = and i32 %bf.lshr232, 255
  br label %cond.end.247

cond.false.234:                                   ; preds = %if.then.224
  %144 = load i32, i32* %mode.addr, align 4
  %idxprom235 = sext i32 %144 to i64
  %arrayidx236 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom235
  %145 = load i8, i8* %arrayidx236, align 1
  %conv237 = zext i8 %145 to i32
  %146 = load i32, i32* %mode0, align 4
  %idxprom238 = sext i32 %146 to i64
  %arrayidx239 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom238
  %147 = load i8, i8* %arrayidx239, align 1
  %conv240 = zext i8 %147 to i32
  %cmp241 = icmp sgt i32 %conv237, %conv240
  br i1 %cmp241, label %cond.true.243, label %cond.false.244

cond.true.243:                                    ; preds = %cond.false.234
  %148 = load i32, i32* %mode.addr, align 4
  br label %cond.end.245

cond.false.244:                                   ; preds = %cond.false.234
  %149 = load i32, i32* %mode0, align 4
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.244, %cond.true.243
  %cond246 = phi i32 [ %148, %cond.true.243 ], [ %149, %cond.false.244 ]
  br label %cond.end.247

cond.end.247:                                     ; preds = %cond.end.245, %cond.true.230
  %cond248 = phi i32 [ %bf.clear233, %cond.true.230 ], [ %cond246, %cond.end.245 ]
  %150 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %151 = load i32, i32* %unsignedp.addr, align 4
  %call249 = call %struct.rtx_def* @convert_modes(i32 %139, i32 %cond248, %struct.rtx_def* %150, i32 %151)
  store %struct.rtx_def* %call249, %struct.rtx_def** %xop0, align 8
  br label %if.end.250

if.end.250:                                       ; preds = %cond.end.247, %land.lhs.true.221, %if.end.215
  %152 = load %struct.rtx_def*, %struct.rtx_def** %xop1, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %bf.load251 = load i32, i32* %153, align 8
  %bf.lshr252 = lshr i32 %bf.load251, 16
  %bf.clear253 = and i32 %bf.lshr252, 255
  %154 = load i32, i32* %mode1, align 4
  %cmp254 = icmp ne i32 %bf.clear253, %154
  br i1 %cmp254, label %land.lhs.true.256, label %if.end.287

land.lhs.true.256:                                ; preds = %if.end.250
  %155 = load i32, i32* %mode1, align 4
  %cmp257 = icmp ne i32 %155, 0
  br i1 %cmp257, label %if.then.259, label %if.end.287

if.then.259:                                      ; preds = %land.lhs.true.256
  %156 = load i32, i32* %mode1, align 4
  %157 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %158 = bitcast %struct.rtx_def* %157 to i32*
  %bf.load260 = load i32, i32* %158, align 8
  %bf.lshr261 = lshr i32 %bf.load260, 16
  %bf.clear262 = and i32 %bf.lshr261, 255
  %cmp263 = icmp ne i32 %bf.clear262, 0
  br i1 %cmp263, label %cond.true.265, label %cond.false.269

cond.true.265:                                    ; preds = %if.then.259
  %159 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %160 = bitcast %struct.rtx_def* %159 to i32*
  %bf.load266 = load i32, i32* %160, align 8
  %bf.lshr267 = lshr i32 %bf.load266, 16
  %bf.clear268 = and i32 %bf.lshr267, 255
  br label %cond.end.284

cond.false.269:                                   ; preds = %if.then.259
  %161 = load i32, i32* %mode.addr, align 4
  %idxprom270 = sext i32 %161 to i64
  %arrayidx271 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom270
  %162 = load i8, i8* %arrayidx271, align 1
  %conv272 = zext i8 %162 to i32
  %163 = load i32, i32* %mode1, align 4
  %idxprom273 = sext i32 %163 to i64
  %arrayidx274 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom273
  %164 = load i8, i8* %arrayidx274, align 1
  %conv275 = zext i8 %164 to i32
  %cmp276 = icmp sgt i32 %conv272, %conv275
  br i1 %cmp276, label %land.lhs.true.278, label %cond.false.281

land.lhs.true.278:                                ; preds = %cond.false.269
  %165 = load i32, i32* %shift_op, align 4
  %tobool279 = icmp ne i32 %165, 0
  br i1 %tobool279, label %cond.false.281, label %cond.true.280

cond.true.280:                                    ; preds = %land.lhs.true.278
  %166 = load i32, i32* %mode.addr, align 4
  br label %cond.end.282

cond.false.281:                                   ; preds = %land.lhs.true.278, %cond.false.269
  %167 = load i32, i32* %mode1, align 4
  br label %cond.end.282

cond.end.282:                                     ; preds = %cond.false.281, %cond.true.280
  %cond283 = phi i32 [ %166, %cond.true.280 ], [ %167, %cond.false.281 ]
  br label %cond.end.284

cond.end.284:                                     ; preds = %cond.end.282, %cond.true.265
  %cond285 = phi i32 [ %bf.clear268, %cond.true.265 ], [ %cond283, %cond.end.282 ]
  %168 = load %struct.rtx_def*, %struct.rtx_def** %xop1, align 8
  %169 = load i32, i32* %unsignedp.addr, align 4
  %call286 = call %struct.rtx_def* @convert_modes(i32 %156, i32 %cond285, %struct.rtx_def* %168, i32 %169)
  store %struct.rtx_def* %call286, %struct.rtx_def** %xop1, align 8
  br label %if.end.287

if.end.287:                                       ; preds = %cond.end.284, %land.lhs.true.256, %if.end.250
  %170 = load i32, i32* %icode, align 4
  %idxprom288 = sext i32 %170 to i64
  %arrayidx289 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom288
  %operand290 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx289, i32 0, i32 3
  %171 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand290, align 8
  %arrayidx291 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %171, i64 1
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx291, i32 0, i32 0
  %172 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %173 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %174 = load i32, i32* %mode0, align 4
  %call292 = call i32 %172(%struct.rtx_def* %173, i32 %174)
  %tobool293 = icmp ne i32 %call292, 0
  br i1 %tobool293, label %if.end.299, label %land.lhs.true.294

land.lhs.true.294:                                ; preds = %if.end.287
  %175 = load i32, i32* %mode0, align 4
  %cmp295 = icmp ne i32 %175, 0
  br i1 %cmp295, label %if.then.297, label %if.end.299

if.then.297:                                      ; preds = %land.lhs.true.294
  %176 = load i32, i32* %mode0, align 4
  %177 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %call298 = call %struct.rtx_def* @copy_to_mode_reg(i32 %176, %struct.rtx_def* %177)
  store %struct.rtx_def* %call298, %struct.rtx_def** %xop0, align 8
  br label %if.end.299

if.end.299:                                       ; preds = %if.then.297, %land.lhs.true.294, %if.end.287
  %178 = load i32, i32* %icode, align 4
  %idxprom300 = sext i32 %178 to i64
  %arrayidx301 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom300
  %operand302 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx301, i32 0, i32 3
  %179 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand302, align 8
  %arrayidx303 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %179, i64 2
  %predicate304 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx303, i32 0, i32 0
  %180 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate304, align 8
  %181 = load %struct.rtx_def*, %struct.rtx_def** %xop1, align 8
  %182 = load i32, i32* %mode1, align 4
  %call305 = call i32 %180(%struct.rtx_def* %181, i32 %182)
  %tobool306 = icmp ne i32 %call305, 0
  br i1 %tobool306, label %if.end.312, label %land.lhs.true.307

land.lhs.true.307:                                ; preds = %if.end.299
  %183 = load i32, i32* %mode1, align 4
  %cmp308 = icmp ne i32 %183, 0
  br i1 %cmp308, label %if.then.310, label %if.end.312

if.then.310:                                      ; preds = %land.lhs.true.307
  %184 = load i32, i32* %mode1, align 4
  %185 = load %struct.rtx_def*, %struct.rtx_def** %xop1, align 8
  %call311 = call %struct.rtx_def* @copy_to_mode_reg(i32 %184, %struct.rtx_def* %185)
  store %struct.rtx_def* %call311, %struct.rtx_def** %xop1, align 8
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.310, %land.lhs.true.307, %if.end.299
  %186 = load i32, i32* %icode, align 4
  %idxprom313 = sext i32 %186 to i64
  %arrayidx314 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom313
  %operand315 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx314, i32 0, i32 3
  %187 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand315, align 8
  %arrayidx316 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %187, i64 0
  %predicate317 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx316, i32 0, i32 0
  %188 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate317, align 8
  %189 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %190 = load i32, i32* %mode.addr, align 4
  %call318 = call i32 %188(%struct.rtx_def* %189, i32 %190)
  %tobool319 = icmp ne i32 %call318, 0
  br i1 %tobool319, label %if.end.322, label %if.then.320

if.then.320:                                      ; preds = %if.end.312
  %191 = load i32, i32* %mode.addr, align 4
  %call321 = call %struct.rtx_def* @gen_reg_rtx(i32 %191)
  store %struct.rtx_def* %call321, %struct.rtx_def** %temp, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.320, %if.end.312
  %192 = load i32, i32* %icode, align 4
  %idxprom323 = sext i32 %192 to i64
  %arrayidx324 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom323
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx324, i32 0, i32 2
  %193 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %194 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %195 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %196 = load %struct.rtx_def*, %struct.rtx_def** %xop1, align 8
  %call325 = call %struct.rtx_def* (%struct.rtx_def*, ...) %193(%struct.rtx_def* %194, %struct.rtx_def* %195, %struct.rtx_def* %196)
  store %struct.rtx_def* %call325, %struct.rtx_def** %pat, align 8
  %197 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %tobool326 = icmp ne %struct.rtx_def* %197, null
  br i1 %tobool326, label %if.then.327, label %if.else.340

if.then.327:                                      ; preds = %if.end.322
  %198 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %199 = bitcast %struct.rtx_def* %198 to i32*
  %bf.load328 = load i32, i32* %199, align 8
  %bf.clear329 = and i32 %bf.load328, 65535
  %cmp330 = icmp eq i32 %bf.clear329, 24
  br i1 %cmp330, label %land.lhs.true.332, label %if.end.338

land.lhs.true.332:                                ; preds = %if.then.327
  %200 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %202 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code333 = getelementptr inbounds %struct.optab, %struct.optab* %202, i32 0, i32 0
  %203 = load i32, i32* %code333, align 4
  %204 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %205 = load %struct.rtx_def*, %struct.rtx_def** %xop1, align 8
  %call334 = call i32 @add_equal_note(%struct.rtx_def* %200, %struct.rtx_def* %201, i32 %203, %struct.rtx_def* %204, %struct.rtx_def* %205)
  %tobool335 = icmp ne i32 %call334, 0
  br i1 %tobool335, label %if.end.338, label %if.then.336

if.then.336:                                      ; preds = %land.lhs.true.332
  %206 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %206)
  %207 = load i32, i32* %mode.addr, align 4
  %208 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %209 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %210 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %211 = load i32, i32* %unsignedp.addr, align 4
  %212 = load i32, i32* %methods.addr, align 4
  %call337 = call %struct.rtx_def* @expand_binop(i32 %207, %struct.optab* %208, %struct.rtx_def* %209, %struct.rtx_def* %210, %struct.rtx_def* null, i32 %211, i32 %212)
  store %struct.rtx_def* %call337, %struct.rtx_def** %retval
  br label %return

if.end.338:                                       ; preds = %land.lhs.true.332, %if.then.327
  %213 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call339 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %213)
  %214 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %214, %struct.rtx_def** %retval
  br label %return

if.else.340:                                      ; preds = %if.end.322
  %215 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %215)
  br label %if.end.341

if.end.341:                                       ; preds = %if.else.340
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %land.lhs.true.163, %if.end.160
  %216 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %217 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %cmp343 = icmp eq %struct.optab* %216, %217
  br i1 %cmp343, label %land.lhs.true.345, label %if.end.388

land.lhs.true.345:                                ; preds = %if.end.342
  %218 = load i32, i32* %mode.addr, align 4
  %idxprom346 = sext i32 %218 to i64
  %arrayidx347 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom346
  %219 = load i8, i8* %arrayidx347, align 1
  %conv348 = zext i8 %219 to i32
  %cmp349 = icmp ne i32 %conv348, 0
  br i1 %cmp349, label %land.lhs.true.351, label %if.end.388

land.lhs.true.351:                                ; preds = %land.lhs.true.345
  %220 = load i32, i32* %mode.addr, align 4
  %idxprom352 = sext i32 %220 to i64
  %arrayidx353 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom352
  %221 = load i8, i8* %arrayidx353, align 1
  %conv354 = zext i8 %221 to i32
  %idxprom355 = sext i32 %conv354 to i64
  %222 = load i32, i32* %unsignedp.addr, align 4
  %tobool356 = icmp ne i32 %222, 0
  br i1 %tobool356, label %cond.true.357, label %cond.false.358

cond.true.357:                                    ; preds = %land.lhs.true.351
  %223 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  br label %cond.end.359

cond.false.358:                                   ; preds = %land.lhs.true.351
  %224 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  br label %cond.end.359

cond.end.359:                                     ; preds = %cond.false.358, %cond.true.357
  %cond360 = phi %struct.optab* [ %223, %cond.true.357 ], [ %224, %cond.false.358 ]
  %handlers361 = getelementptr inbounds %struct.optab, %struct.optab* %cond360, i32 0, i32 1
  %arrayidx362 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers361, i32 0, i64 %idxprom355
  %insn_code363 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx362, i32 0, i32 0
  %225 = load i32, i32* %insn_code363, align 4
  %cmp364 = icmp ne i32 %225, 1317
  br i1 %cmp364, label %if.then.366, label %if.end.388

if.then.366:                                      ; preds = %cond.end.359
  %226 = load i32, i32* %mode.addr, align 4
  %idxprom367 = sext i32 %226 to i64
  %arrayidx368 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom367
  %227 = load i8, i8* %arrayidx368, align 1
  %conv369 = zext i8 %227 to i32
  %228 = load i32, i32* %unsignedp.addr, align 4
  %tobool370 = icmp ne i32 %228, 0
  br i1 %tobool370, label %cond.true.371, label %cond.false.372

cond.true.371:                                    ; preds = %if.then.366
  %229 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  br label %cond.end.373

cond.false.372:                                   ; preds = %if.then.366
  %230 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  br label %cond.end.373

cond.end.373:                                     ; preds = %cond.false.372, %cond.true.371
  %cond374 = phi %struct.optab* [ %229, %cond.true.371 ], [ %230, %cond.false.372 ]
  %231 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %232 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %233 = load i32, i32* %unsignedp.addr, align 4
  %call375 = call %struct.rtx_def* @expand_binop(i32 %conv369, %struct.optab* %cond374, %struct.rtx_def* %231, %struct.rtx_def* %232, %struct.rtx_def* null, i32 %233, i32 0)
  store %struct.rtx_def* %call375, %struct.rtx_def** %temp, align 8
  %234 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp376 = icmp ne %struct.rtx_def* %234, null
  br i1 %cmp376, label %if.then.378, label %if.end.387

if.then.378:                                      ; preds = %cond.end.373
  %235 = load i32, i32* %mode.addr, align 4
  %idxprom379 = sext i32 %235 to i64
  %arrayidx380 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom379
  %236 = load i32, i32* %arrayidx380, align 4
  %cmp381 = icmp eq i32 %236, 1
  br i1 %cmp381, label %if.then.383, label %if.else.385

if.then.383:                                      ; preds = %if.then.378
  %237 = load i32, i32* %mode.addr, align 4
  %238 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call384 = call %struct.rtx_def* @gen_lowpart(i32 %237, %struct.rtx_def* %238)
  store %struct.rtx_def* %call384, %struct.rtx_def** %retval
  br label %return

if.else.385:                                      ; preds = %if.then.378
  %239 = load i32, i32* %mode.addr, align 4
  %240 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %241 = load i32, i32* %unsignedp.addr, align 4
  %call386 = call %struct.rtx_def* @convert_to_mode(i32 %239, %struct.rtx_def* %240, i32 %241)
  store %struct.rtx_def* %call386, %struct.rtx_def** %retval
  br label %return

if.end.387:                                       ; preds = %cond.end.373
  br label %if.end.388

if.end.388:                                       ; preds = %if.end.387, %cond.end.359, %land.lhs.true.345, %if.end.342
  %242 = load i32, i32* %class, align 4
  %cmp389 = icmp eq i32 %242, 1
  br i1 %cmp389, label %land.lhs.true.397, label %lor.lhs.false.391

lor.lhs.false.391:                                ; preds = %if.end.388
  %243 = load i32, i32* %class, align 4
  %cmp392 = icmp eq i32 %243, 2
  br i1 %cmp392, label %land.lhs.true.397, label %lor.lhs.false.394

lor.lhs.false.394:                                ; preds = %lor.lhs.false.391
  %244 = load i32, i32* %class, align 4
  %cmp395 = icmp eq i32 %244, 6
  br i1 %cmp395, label %land.lhs.true.397, label %if.end.494

land.lhs.true.397:                                ; preds = %lor.lhs.false.394, %lor.lhs.false.391, %if.end.388
  %245 = load i32, i32* %methods.addr, align 4
  %cmp398 = icmp ne i32 %245, 0
  br i1 %cmp398, label %land.lhs.true.400, label %if.end.494

land.lhs.true.400:                                ; preds = %land.lhs.true.397
  %246 = load i32, i32* %methods.addr, align 4
  %cmp401 = icmp ne i32 %246, 1
  br i1 %cmp401, label %if.then.403, label %if.end.494

if.then.403:                                      ; preds = %land.lhs.true.400
  %247 = load i32, i32* %mode.addr, align 4
  %idxprom404 = sext i32 %247 to i64
  %arrayidx405 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom404
  %248 = load i8, i8* %arrayidx405, align 1
  %conv406 = zext i8 %248 to i32
  store i32 %conv406, i32* %wider_mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.403
  %249 = load i32, i32* %wider_mode, align 4
  %cmp407 = icmp ne i32 %249, 0
  br i1 %cmp407, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %250 = load i32, i32* %wider_mode, align 4
  %idxprom409 = sext i32 %250 to i64
  %251 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers410 = getelementptr inbounds %struct.optab, %struct.optab* %251, i32 0, i32 1
  %arrayidx411 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers410, i32 0, i64 %idxprom409
  %insn_code412 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx411, i32 0, i32 0
  %252 = load i32, i32* %insn_code412, align 4
  %cmp413 = icmp ne i32 %252, 1317
  br i1 %cmp413, label %if.then.439, label %lor.lhs.false.415

lor.lhs.false.415:                                ; preds = %for.body
  %253 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %254 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %cmp416 = icmp eq %struct.optab* %253, %254
  br i1 %cmp416, label %land.lhs.true.418, label %if.end.490

land.lhs.true.418:                                ; preds = %lor.lhs.false.415
  %255 = load i32, i32* %wider_mode, align 4
  %idxprom419 = sext i32 %255 to i64
  %arrayidx420 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom419
  %256 = load i8, i8* %arrayidx420, align 1
  %conv421 = zext i8 %256 to i32
  %cmp422 = icmp ne i32 %conv421, 0
  br i1 %cmp422, label %land.lhs.true.424, label %if.end.490

land.lhs.true.424:                                ; preds = %land.lhs.true.418
  %257 = load i32, i32* %wider_mode, align 4
  %idxprom425 = sext i32 %257 to i64
  %arrayidx426 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom425
  %258 = load i8, i8* %arrayidx426, align 1
  %conv427 = zext i8 %258 to i32
  %idxprom428 = sext i32 %conv427 to i64
  %259 = load i32, i32* %unsignedp.addr, align 4
  %tobool429 = icmp ne i32 %259, 0
  br i1 %tobool429, label %cond.true.430, label %cond.false.431

cond.true.430:                                    ; preds = %land.lhs.true.424
  %260 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  br label %cond.end.432

cond.false.431:                                   ; preds = %land.lhs.true.424
  %261 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  br label %cond.end.432

cond.end.432:                                     ; preds = %cond.false.431, %cond.true.430
  %cond433 = phi %struct.optab* [ %260, %cond.true.430 ], [ %261, %cond.false.431 ]
  %handlers434 = getelementptr inbounds %struct.optab, %struct.optab* %cond433, i32 0, i32 1
  %arrayidx435 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers434, i32 0, i64 %idxprom428
  %insn_code436 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx435, i32 0, i32 0
  %262 = load i32, i32* %insn_code436, align 4
  %cmp437 = icmp ne i32 %262, 1317
  br i1 %cmp437, label %if.then.439, label %if.end.490

if.then.439:                                      ; preds = %cond.end.432, %for.body
  %263 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %263, %struct.rtx_def** %xop0441, align 8
  %264 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %264, %struct.rtx_def** %xop1443, align 8
  store i32 0, i32* %no_extend, align 4
  %265 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %266 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %cmp445 = icmp eq %struct.optab* %265, %266
  br i1 %cmp445, label %land.lhs.true.465, label %lor.lhs.false.447

lor.lhs.false.447:                                ; preds = %if.then.439
  %267 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %268 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %cmp448 = icmp eq %struct.optab* %267, %268
  br i1 %cmp448, label %land.lhs.true.465, label %lor.lhs.false.450

lor.lhs.false.450:                                ; preds = %lor.lhs.false.447
  %269 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %270 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %cmp451 = icmp eq %struct.optab* %269, %270
  br i1 %cmp451, label %land.lhs.true.465, label %lor.lhs.false.453

lor.lhs.false.453:                                ; preds = %lor.lhs.false.450
  %271 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %272 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %cmp454 = icmp eq %struct.optab* %271, %272
  br i1 %cmp454, label %land.lhs.true.465, label %lor.lhs.false.456

lor.lhs.false.456:                                ; preds = %lor.lhs.false.453
  %273 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %274 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %cmp457 = icmp eq %struct.optab* %273, %274
  br i1 %cmp457, label %land.lhs.true.465, label %lor.lhs.false.459

lor.lhs.false.459:                                ; preds = %lor.lhs.false.456
  %275 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %276 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %cmp460 = icmp eq %struct.optab* %275, %276
  br i1 %cmp460, label %land.lhs.true.465, label %lor.lhs.false.462

lor.lhs.false.462:                                ; preds = %lor.lhs.false.459
  %277 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %278 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %cmp463 = icmp eq %struct.optab* %277, %278
  br i1 %cmp463, label %land.lhs.true.465, label %if.end.469

land.lhs.true.465:                                ; preds = %lor.lhs.false.462, %lor.lhs.false.459, %lor.lhs.false.456, %lor.lhs.false.453, %lor.lhs.false.450, %lor.lhs.false.447, %if.then.439
  %279 = load i32, i32* %class, align 4
  %cmp466 = icmp eq i32 %279, 1
  br i1 %cmp466, label %if.then.468, label %if.end.469

if.then.468:                                      ; preds = %land.lhs.true.465
  store i32 1, i32* %no_extend, align 4
  br label %if.end.469

if.end.469:                                       ; preds = %if.then.468, %land.lhs.true.465, %lor.lhs.false.462
  %280 = load %struct.rtx_def*, %struct.rtx_def** %xop0441, align 8
  %281 = load i32, i32* %wider_mode, align 4
  %282 = load i32, i32* %mode.addr, align 4
  %283 = load i32, i32* %unsignedp.addr, align 4
  %284 = load i32, i32* %no_extend, align 4
  %call470 = call %struct.rtx_def* @widen_operand(%struct.rtx_def* %280, i32 %281, i32 %282, i32 %283, i32 %284)
  store %struct.rtx_def* %call470, %struct.rtx_def** %xop0441, align 8
  %285 = load %struct.rtx_def*, %struct.rtx_def** %xop1443, align 8
  %286 = load i32, i32* %wider_mode, align 4
  %287 = load i32, i32* %mode.addr, align 4
  %288 = load i32, i32* %unsignedp.addr, align 4
  %289 = load i32, i32* %no_extend, align 4
  %tobool471 = icmp ne i32 %289, 0
  br i1 %tobool471, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end.469
  %290 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %291 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %cmp472 = icmp ne %struct.optab* %290, %291
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.469
  %292 = phi i1 [ false, %if.end.469 ], [ %cmp472, %land.rhs ]
  %land.ext = zext i1 %292 to i32
  %call474 = call %struct.rtx_def* @widen_operand(%struct.rtx_def* %285, i32 %286, i32 %287, i32 %288, i32 %land.ext)
  store %struct.rtx_def* %call474, %struct.rtx_def** %xop1443, align 8
  %293 = load i32, i32* %wider_mode, align 4
  %294 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %295 = load %struct.rtx_def*, %struct.rtx_def** %xop0441, align 8
  %296 = load %struct.rtx_def*, %struct.rtx_def** %xop1443, align 8
  %297 = load i32, i32* %unsignedp.addr, align 4
  %call475 = call %struct.rtx_def* @expand_binop(i32 %293, %struct.optab* %294, %struct.rtx_def* %295, %struct.rtx_def* %296, %struct.rtx_def* null, i32 %297, i32 0)
  store %struct.rtx_def* %call475, %struct.rtx_def** %temp, align 8
  %298 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool476 = icmp ne %struct.rtx_def* %298, null
  br i1 %tobool476, label %if.then.477, label %if.else.488

if.then.477:                                      ; preds = %land.end
  %299 = load i32, i32* %class, align 4
  %cmp478 = icmp ne i32 %299, 1
  br i1 %cmp478, label %if.then.480, label %if.else.486

if.then.480:                                      ; preds = %if.then.477
  %300 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp481 = icmp eq %struct.rtx_def* %300, null
  br i1 %cmp481, label %if.then.483, label %if.end.485

if.then.483:                                      ; preds = %if.then.480
  %301 = load i32, i32* %mode.addr, align 4
  %call484 = call %struct.rtx_def* @gen_reg_rtx(i32 %301)
  store %struct.rtx_def* %call484, %struct.rtx_def** %target.addr, align 8
  br label %if.end.485

if.end.485:                                       ; preds = %if.then.483, %if.then.480
  %302 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %303 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  call void @convert_move(%struct.rtx_def* %302, %struct.rtx_def* %303, i32 0)
  %304 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %304, %struct.rtx_def** %retval
  br label %return

if.else.486:                                      ; preds = %if.then.477
  %305 = load i32, i32* %mode.addr, align 4
  %306 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call487 = call %struct.rtx_def* @gen_lowpart(i32 %305, %struct.rtx_def* %306)
  store %struct.rtx_def* %call487, %struct.rtx_def** %retval
  br label %return

if.else.488:                                      ; preds = %land.end
  %307 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %307)
  br label %if.end.489

if.end.489:                                       ; preds = %if.else.488
  br label %if.end.490

if.end.490:                                       ; preds = %if.end.489, %cond.end.432, %land.lhs.true.418, %lor.lhs.false.415
  br label %for.inc

for.inc:                                          ; preds = %if.end.490
  %308 = load i32, i32* %wider_mode, align 4
  %idxprom491 = sext i32 %308 to i64
  %arrayidx492 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom491
  %309 = load i8, i8* %arrayidx492, align 1
  %conv493 = zext i8 %309 to i32
  store i32 %conv493, i32* %wider_mode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.494

if.end.494:                                       ; preds = %for.end, %land.lhs.true.400, %land.lhs.true.397, %lor.lhs.false.394
  %310 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %311 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %cmp495 = icmp eq %struct.optab* %310, %311
  br i1 %cmp495, label %land.lhs.true.503, label %lor.lhs.false.497

lor.lhs.false.497:                                ; preds = %if.end.494
  %312 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %313 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %cmp498 = icmp eq %struct.optab* %312, %313
  br i1 %cmp498, label %land.lhs.true.503, label %lor.lhs.false.500

lor.lhs.false.500:                                ; preds = %lor.lhs.false.497
  %314 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %315 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %cmp501 = icmp eq %struct.optab* %314, %315
  br i1 %cmp501, label %land.lhs.true.503, label %if.end.586

land.lhs.true.503:                                ; preds = %lor.lhs.false.500, %lor.lhs.false.497, %if.end.494
  %316 = load i32, i32* %class, align 4
  %cmp504 = icmp eq i32 %316, 1
  br i1 %cmp504, label %land.lhs.true.506, label %if.end.586

land.lhs.true.506:                                ; preds = %land.lhs.true.503
  %317 = load i32, i32* %mode.addr, align 4
  %idxprom507 = sext i32 %317 to i64
  %arrayidx508 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom507
  %318 = load i8, i8* %arrayidx508, align 1
  %conv509 = zext i8 %318 to i32
  %319 = load i32, i32* @target_flags, align 4
  %and = and i32 %319, 33554432
  %tobool510 = icmp ne i32 %and, 0
  %cond511 = select i1 %tobool510, i32 8, i32 4
  %cmp512 = icmp sgt i32 %conv509, %cond511
  br i1 %cmp512, label %land.lhs.true.514, label %if.end.586

land.lhs.true.514:                                ; preds = %land.lhs.true.506
  %320 = load i32, i32* @word_mode, align 4
  %idxprom515 = sext i32 %320 to i64
  %321 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers516 = getelementptr inbounds %struct.optab, %struct.optab* %321, i32 0, i32 1
  %arrayidx517 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers516, i32 0, i64 %idxprom515
  %insn_code518 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx517, i32 0, i32 0
  %322 = load i32, i32* %insn_code518, align 4
  %cmp519 = icmp ne i32 %322, 1317
  br i1 %cmp519, label %if.then.521, label %if.end.586

if.then.521:                                      ; preds = %land.lhs.true.514
  %323 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp525 = icmp eq %struct.rtx_def* %323, null
  br i1 %cmp525, label %if.then.533, label %lor.lhs.false.527

lor.lhs.false.527:                                ; preds = %if.then.521
  %324 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %325 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %cmp528 = icmp eq %struct.rtx_def* %324, %325
  br i1 %cmp528, label %if.then.533, label %lor.lhs.false.530

lor.lhs.false.530:                                ; preds = %lor.lhs.false.527
  %326 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %327 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %cmp531 = icmp eq %struct.rtx_def* %326, %327
  br i1 %cmp531, label %if.then.533, label %if.end.535

if.then.533:                                      ; preds = %lor.lhs.false.530, %lor.lhs.false.527, %if.then.521
  %328 = load i32, i32* %mode.addr, align 4
  %call534 = call %struct.rtx_def* @gen_reg_rtx(i32 %328)
  store %struct.rtx_def* %call534, %struct.rtx_def** %target.addr, align 8
  br label %if.end.535

if.end.535:                                       ; preds = %if.then.533, %lor.lhs.false.530
  call void @start_sequence()
  store i32 0, i32* %i, align 4
  br label %for.cond.536

for.cond.536:                                     ; preds = %for.inc.561, %if.end.535
  %329 = load i32, i32* %i, align 4
  %330 = load i32, i32* %mode.addr, align 4
  %idxprom537 = sext i32 %330 to i64
  %arrayidx538 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom537
  %331 = load i16, i16* %arrayidx538, align 2
  %conv539 = zext i16 %331 to i32
  %332 = load i32, i32* @target_flags, align 4
  %and540 = and i32 %332, 33554432
  %tobool541 = icmp ne i32 %and540, 0
  %cond542 = select i1 %tobool541, i32 64, i32 32
  %div = sdiv i32 %conv539, %cond542
  %cmp543 = icmp slt i32 %329, %div
  br i1 %cmp543, label %for.body.545, label %for.end.562

for.body.545:                                     ; preds = %for.cond.536
  %333 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %334 = load i32, i32* %i, align 4
  %335 = load i32, i32* %mode.addr, align 4
  %call547 = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %333, i32 %334, i32 1, i32 %335)
  store %struct.rtx_def* %call547, %struct.rtx_def** %target_piece, align 8
  %336 = load i32, i32* @word_mode, align 4
  %337 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %338 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %339 = load i32, i32* %i, align 4
  %340 = load i32, i32* %mode.addr, align 4
  %call549 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %338, i32 %339, i32 %340)
  %341 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %342 = load i32, i32* %i, align 4
  %343 = load i32, i32* %mode.addr, align 4
  %call550 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %341, i32 %342, i32 %343)
  %344 = load %struct.rtx_def*, %struct.rtx_def** %target_piece, align 8
  %345 = load i32, i32* %unsignedp.addr, align 4
  %346 = load i32, i32* %next_methods, align 4
  %call551 = call %struct.rtx_def* @expand_binop(i32 %336, %struct.optab* %337, %struct.rtx_def* %call549, %struct.rtx_def* %call550, %struct.rtx_def* %344, i32 %345, i32 %346)
  store %struct.rtx_def* %call551, %struct.rtx_def** %x, align 8
  %347 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp552 = icmp eq %struct.rtx_def* %347, null
  br i1 %cmp552, label %if.then.554, label %if.end.555

if.then.554:                                      ; preds = %for.body.545
  br label %for.end.562

if.end.555:                                       ; preds = %for.body.545
  %348 = load %struct.rtx_def*, %struct.rtx_def** %target_piece, align 8
  %349 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp556 = icmp ne %struct.rtx_def* %348, %349
  br i1 %cmp556, label %if.then.558, label %if.end.560

if.then.558:                                      ; preds = %if.end.555
  %350 = load %struct.rtx_def*, %struct.rtx_def** %target_piece, align 8
  %351 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call559 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %350, %struct.rtx_def* %351)
  br label %if.end.560

if.end.560:                                       ; preds = %if.then.558, %if.end.555
  br label %for.inc.561

for.inc.561:                                      ; preds = %if.end.560
  %352 = load i32, i32* %i, align 4
  %inc = add nsw i32 %352, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.536

for.end.562:                                      ; preds = %if.then.554, %for.cond.536
  %call563 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call563, %struct.rtx_def** %insns, align 8
  call void @end_sequence()
  %353 = load i32, i32* %i, align 4
  %354 = load i32, i32* %mode.addr, align 4
  %idxprom564 = sext i32 %354 to i64
  %arrayidx565 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom564
  %355 = load i16, i16* %arrayidx565, align 2
  %conv566 = zext i16 %355 to i32
  %356 = load i32, i32* @target_flags, align 4
  %and567 = and i32 %356, 33554432
  %tobool568 = icmp ne i32 %and567, 0
  %cond569 = select i1 %tobool568, i32 64, i32 32
  %div570 = sdiv i32 %conv566, %cond569
  %cmp571 = icmp eq i32 %353, %div570
  br i1 %cmp571, label %if.then.573, label %if.end.585

if.then.573:                                      ; preds = %for.end.562
  %357 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code574 = getelementptr inbounds %struct.optab, %struct.optab* %357, i32 0, i32 0
  %358 = load i32, i32* %code574, align 4
  %cmp575 = icmp ne i32 %358, 0
  br i1 %cmp575, label %if.then.577, label %if.else.582

if.then.577:                                      ; preds = %if.then.573
  %359 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code578 = getelementptr inbounds %struct.optab, %struct.optab* %359, i32 0, i32 0
  %360 = load i32, i32* %code578, align 4
  %361 = load i32, i32* %mode.addr, align 4
  %362 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call579 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %362)
  %363 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call580 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %363)
  %call581 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %360, i32 %361, %struct.rtx_def* %call579, %struct.rtx_def* %call580)
  store %struct.rtx_def* %call581, %struct.rtx_def** %equiv_value, align 8
  br label %if.end.583

if.else.582:                                      ; preds = %if.then.573
  store %struct.rtx_def* null, %struct.rtx_def** %equiv_value, align 8
  br label %if.end.583

if.end.583:                                       ; preds = %if.else.582, %if.then.577
  %364 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %365 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %366 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %367 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %368 = load %struct.rtx_def*, %struct.rtx_def** %equiv_value, align 8
  %call584 = call %struct.rtx_def* @emit_no_conflict_block(%struct.rtx_def* %364, %struct.rtx_def* %365, %struct.rtx_def* %366, %struct.rtx_def* %367, %struct.rtx_def* %368)
  %369 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %369, %struct.rtx_def** %retval
  br label %return

if.end.585:                                       ; preds = %for.end.562
  br label %if.end.586

if.end.586:                                       ; preds = %if.end.585, %land.lhs.true.514, %land.lhs.true.506, %land.lhs.true.503, %lor.lhs.false.500
  %370 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %371 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %cmp587 = icmp eq %struct.optab* %370, %371
  br i1 %cmp587, label %land.lhs.true.595, label %lor.lhs.false.589

lor.lhs.false.589:                                ; preds = %if.end.586
  %372 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %373 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %cmp590 = icmp eq %struct.optab* %372, %373
  br i1 %cmp590, label %land.lhs.true.595, label %lor.lhs.false.592

lor.lhs.false.592:                                ; preds = %lor.lhs.false.589
  %374 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %375 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  %cmp593 = icmp eq %struct.optab* %374, %375
  br i1 %cmp593, label %land.lhs.true.595, label %if.end.784

land.lhs.true.595:                                ; preds = %lor.lhs.false.592, %lor.lhs.false.589, %if.end.586
  %376 = load i32, i32* %class, align 4
  %cmp596 = icmp eq i32 %376, 1
  br i1 %cmp596, label %land.lhs.true.598, label %if.end.784

land.lhs.true.598:                                ; preds = %land.lhs.true.595
  %377 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %378 = bitcast %struct.rtx_def* %377 to i32*
  %bf.load599 = load i32, i32* %378, align 8
  %bf.clear600 = and i32 %bf.load599, 65535
  %cmp601 = icmp eq i32 %bf.clear600, 54
  br i1 %cmp601, label %land.lhs.true.603, label %if.end.784

land.lhs.true.603:                                ; preds = %land.lhs.true.598
  %379 = load i32, i32* %mode.addr, align 4
  %idxprom604 = sext i32 %379 to i64
  %arrayidx605 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom604
  %380 = load i8, i8* %arrayidx605, align 1
  %conv606 = zext i8 %380 to i32
  %381 = load i32, i32* @target_flags, align 4
  %and607 = and i32 %381, 33554432
  %tobool608 = icmp ne i32 %and607, 0
  %cond609 = select i1 %tobool608, i32 8, i32 4
  %mul = mul nsw i32 2, %cond609
  %cmp610 = icmp eq i32 %conv606, %mul
  br i1 %cmp610, label %land.lhs.true.612, label %if.end.784

land.lhs.true.612:                                ; preds = %land.lhs.true.603
  %382 = load i32, i32* @word_mode, align 4
  %idxprom613 = sext i32 %382 to i64
  %383 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers614 = getelementptr inbounds %struct.optab, %struct.optab* %383, i32 0, i32 1
  %arrayidx615 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers614, i32 0, i64 %idxprom613
  %insn_code616 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx615, i32 0, i32 0
  %384 = load i32, i32* %insn_code616, align 4
  %cmp617 = icmp ne i32 %384, 1317
  br i1 %cmp617, label %land.lhs.true.619, label %if.end.784

land.lhs.true.619:                                ; preds = %land.lhs.true.612
  %385 = load i32, i32* @word_mode, align 4
  %idxprom620 = sext i32 %385 to i64
  %386 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %handlers621 = getelementptr inbounds %struct.optab, %struct.optab* %386, i32 0, i32 1
  %arrayidx622 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers621, i32 0, i64 %idxprom620
  %insn_code623 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx622, i32 0, i32 0
  %387 = load i32, i32* %insn_code623, align 4
  %cmp624 = icmp ne i32 %387, 1317
  br i1 %cmp624, label %land.lhs.true.626, label %if.end.784

land.lhs.true.626:                                ; preds = %land.lhs.true.619
  %388 = load i32, i32* @word_mode, align 4
  %idxprom627 = sext i32 %388 to i64
  %389 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %handlers628 = getelementptr inbounds %struct.optab, %struct.optab* %389, i32 0, i32 1
  %arrayidx629 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers628, i32 0, i64 %idxprom627
  %insn_code630 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx629, i32 0, i32 0
  %390 = load i32, i32* %insn_code630, align 4
  %cmp631 = icmp ne i32 %390, 1317
  br i1 %cmp631, label %if.then.633, label %if.end.784

if.then.633:                                      ; preds = %land.lhs.true.626
  %391 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp646 = icmp eq %struct.rtx_def* %391, null
  br i1 %cmp646, label %if.then.654, label %lor.lhs.false.648

lor.lhs.false.648:                                ; preds = %if.then.633
  %392 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %393 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %cmp649 = icmp eq %struct.rtx_def* %392, %393
  br i1 %cmp649, label %if.then.654, label %lor.lhs.false.651

lor.lhs.false.651:                                ; preds = %lor.lhs.false.648
  %394 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %395 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %cmp652 = icmp eq %struct.rtx_def* %394, %395
  br i1 %cmp652, label %if.then.654, label %if.end.656

if.then.654:                                      ; preds = %lor.lhs.false.651, %lor.lhs.false.648, %if.then.633
  %396 = load i32, i32* %mode.addr, align 4
  %call655 = call %struct.rtx_def* @gen_reg_rtx(i32 %396)
  store %struct.rtx_def* %call655, %struct.rtx_def** %target.addr, align 8
  br label %if.end.656

if.end.656:                                       ; preds = %if.then.654, %lor.lhs.false.651
  call void @start_sequence()
  %397 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %397, i32 0, i32 1
  %arrayidx657 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx657 to i64*
  %398 = load i64, i64* %rtwint, align 8
  %conv658 = trunc i64 %398 to i32
  store i32 %conv658, i32* %shift_count, align 4
  %399 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %400 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %cmp659 = icmp eq %struct.optab* %399, %400
  %conv660 = zext i1 %cmp659 to i32
  store i32 %conv660, i32* %left_shift, align 4
  %401 = load i32, i32* %left_shift, align 4
  %xor = xor i32 %401, 1
  store i32 %xor, i32* %outof_word, align 4
  %402 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %403 = load i32, i32* %outof_word, align 4
  %404 = load i32, i32* %mode.addr, align 4
  %call661 = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %402, i32 %403, i32 1, i32 %404)
  store %struct.rtx_def* %call661, %struct.rtx_def** %outof_target, align 8
  %405 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %406 = load i32, i32* %outof_word, align 4
  %sub = sub nsw i32 1, %406
  %407 = load i32, i32* %mode.addr, align 4
  %call662 = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %405, i32 %sub, i32 1, i32 %407)
  store %struct.rtx_def* %call662, %struct.rtx_def** %into_target, align 8
  %408 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %409 = load i32, i32* %outof_word, align 4
  %410 = load i32, i32* %mode.addr, align 4
  %call663 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %408, i32 %409, i32 %410)
  store %struct.rtx_def* %call663, %struct.rtx_def** %outof_input, align 8
  %411 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %412 = load i32, i32* %outof_word, align 4
  %sub664 = sub nsw i32 1, %412
  %413 = load i32, i32* %mode.addr, align 4
  %call665 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %411, i32 %sub664, i32 %413)
  store %struct.rtx_def* %call665, %struct.rtx_def** %into_input, align 8
  %414 = load i32, i32* %shift_count, align 4
  %415 = load i32, i32* @target_flags, align 4
  %and666 = and i32 %415, 33554432
  %tobool667 = icmp ne i32 %and666, 0
  %cond668 = select i1 %tobool667, i32 64, i32 32
  %cmp669 = icmp sge i32 %414, %cond668
  br i1 %cmp669, label %if.then.671, label %if.else.716

if.then.671:                                      ; preds = %if.end.656
  %416 = load i32, i32* @word_mode, align 4
  %417 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %418 = load %struct.rtx_def*, %struct.rtx_def** %outof_input, align 8
  %419 = load i32, i32* %shift_count, align 4
  %420 = load i32, i32* @target_flags, align 4
  %and672 = and i32 %420, 33554432
  %tobool673 = icmp ne i32 %and672, 0
  %cond674 = select i1 %tobool673, i32 64, i32 32
  %sub675 = sub nsw i32 %419, %cond674
  %conv676 = sext i32 %sub675 to i64
  %call677 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv676)
  %421 = load %struct.rtx_def*, %struct.rtx_def** %into_target, align 8
  %422 = load i32, i32* %unsignedp.addr, align 4
  %423 = load i32, i32* %next_methods, align 4
  %call678 = call %struct.rtx_def* @expand_binop(i32 %416, %struct.optab* %417, %struct.rtx_def* %418, %struct.rtx_def* %call677, %struct.rtx_def* %421, i32 %422, i32 %423)
  store %struct.rtx_def* %call678, %struct.rtx_def** %inter, align 8
  %424 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %cmp679 = icmp ne %struct.rtx_def* %424, null
  br i1 %cmp679, label %land.lhs.true.681, label %if.end.686

land.lhs.true.681:                                ; preds = %if.then.671
  %425 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %426 = load %struct.rtx_def*, %struct.rtx_def** %into_target, align 8
  %cmp682 = icmp ne %struct.rtx_def* %425, %426
  br i1 %cmp682, label %if.then.684, label %if.end.686

if.then.684:                                      ; preds = %land.lhs.true.681
  %427 = load %struct.rtx_def*, %struct.rtx_def** %into_target, align 8
  %428 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %call685 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %427, %struct.rtx_def* %428)
  br label %if.end.686

if.end.686:                                       ; preds = %if.then.684, %land.lhs.true.681, %if.then.671
  %429 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %cmp687 = icmp ne %struct.rtx_def* %429, null
  br i1 %cmp687, label %land.lhs.true.689, label %if.else.695

land.lhs.true.689:                                ; preds = %if.end.686
  %430 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %431 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  %cmp690 = icmp ne %struct.optab* %430, %431
  br i1 %cmp690, label %if.then.692, label %if.else.695

if.then.692:                                      ; preds = %land.lhs.true.689
  %432 = load i32, i32* @word_mode, align 4
  %idxprom693 = sext i32 %432 to i64
  %arrayidx694 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom693
  %433 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx694, align 8
  store %struct.rtx_def* %433, %struct.rtx_def** %inter, align 8
  br label %if.end.707

if.else.695:                                      ; preds = %land.lhs.true.689, %if.end.686
  %434 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %cmp696 = icmp ne %struct.rtx_def* %434, null
  br i1 %cmp696, label %if.then.698, label %if.end.706

if.then.698:                                      ; preds = %if.else.695
  %435 = load i32, i32* @word_mode, align 4
  %436 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %437 = load %struct.rtx_def*, %struct.rtx_def** %outof_input, align 8
  %438 = load i32, i32* @target_flags, align 4
  %and699 = and i32 %438, 33554432
  %tobool700 = icmp ne i32 %and699, 0
  %cond701 = select i1 %tobool700, i32 64, i32 32
  %sub702 = sub nsw i32 %cond701, 1
  %conv703 = sext i32 %sub702 to i64
  %call704 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv703)
  %439 = load %struct.rtx_def*, %struct.rtx_def** %outof_target, align 8
  %440 = load i32, i32* %unsignedp.addr, align 4
  %441 = load i32, i32* %next_methods, align 4
  %call705 = call %struct.rtx_def* @expand_binop(i32 %435, %struct.optab* %436, %struct.rtx_def* %437, %struct.rtx_def* %call704, %struct.rtx_def* %439, i32 %440, i32 %441)
  store %struct.rtx_def* %call705, %struct.rtx_def** %inter, align 8
  br label %if.end.706

if.end.706:                                       ; preds = %if.then.698, %if.else.695
  br label %if.end.707

if.end.707:                                       ; preds = %if.end.706, %if.then.692
  %442 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %cmp708 = icmp ne %struct.rtx_def* %442, null
  br i1 %cmp708, label %land.lhs.true.710, label %if.end.715

land.lhs.true.710:                                ; preds = %if.end.707
  %443 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %444 = load %struct.rtx_def*, %struct.rtx_def** %outof_target, align 8
  %cmp711 = icmp ne %struct.rtx_def* %443, %444
  br i1 %cmp711, label %if.then.713, label %if.end.715

if.then.713:                                      ; preds = %land.lhs.true.710
  %445 = load %struct.rtx_def*, %struct.rtx_def** %outof_target, align 8
  %446 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %call714 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %445, %struct.rtx_def* %446)
  br label %if.end.715

if.end.715:                                       ; preds = %if.then.713, %land.lhs.true.710, %if.end.707
  br label %if.end.769

if.else.716:                                      ; preds = %if.end.656
  %447 = load i32, i32* %left_shift, align 4
  %tobool720 = icmp ne i32 %447, 0
  br i1 %tobool720, label %cond.true.721, label %cond.false.722

cond.true.721:                                    ; preds = %if.else.716
  %448 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  br label %cond.end.723

cond.false.722:                                   ; preds = %if.else.716
  %449 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  br label %cond.end.723

cond.end.723:                                     ; preds = %cond.false.722, %cond.true.721
  %cond724 = phi %struct.optab* [ %448, %cond.true.721 ], [ %449, %cond.false.722 ]
  store %struct.optab* %cond724, %struct.optab** %reverse_unsigned_shift, align 8
  %450 = load i32, i32* %left_shift, align 4
  %tobool725 = icmp ne i32 %450, 0
  br i1 %tobool725, label %cond.true.726, label %cond.false.727

cond.true.726:                                    ; preds = %cond.end.723
  %451 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  br label %cond.end.728

cond.false.727:                                   ; preds = %cond.end.723
  %452 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  br label %cond.end.728

cond.end.728:                                     ; preds = %cond.false.727, %cond.true.726
  %cond729 = phi %struct.optab* [ %451, %cond.true.726 ], [ %452, %cond.false.727 ]
  store %struct.optab* %cond729, %struct.optab** %unsigned_shift, align 8
  %453 = load i32, i32* @word_mode, align 4
  %454 = load %struct.optab*, %struct.optab** %reverse_unsigned_shift, align 8
  %455 = load %struct.rtx_def*, %struct.rtx_def** %outof_input, align 8
  %456 = load i32, i32* @target_flags, align 4
  %and730 = and i32 %456, 33554432
  %tobool731 = icmp ne i32 %and730, 0
  %cond732 = select i1 %tobool731, i32 64, i32 32
  %457 = load i32, i32* %shift_count, align 4
  %sub733 = sub nsw i32 %cond732, %457
  %conv734 = sext i32 %sub733 to i64
  %call735 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv734)
  %458 = load i32, i32* %unsignedp.addr, align 4
  %459 = load i32, i32* %next_methods, align 4
  %call736 = call %struct.rtx_def* @expand_binop(i32 %453, %struct.optab* %454, %struct.rtx_def* %455, %struct.rtx_def* %call735, %struct.rtx_def* null, i32 %458, i32 %459)
  store %struct.rtx_def* %call736, %struct.rtx_def** %carries, align 8
  %460 = load %struct.rtx_def*, %struct.rtx_def** %carries, align 8
  %cmp737 = icmp eq %struct.rtx_def* %460, null
  br i1 %cmp737, label %if.then.739, label %if.else.740

if.then.739:                                      ; preds = %cond.end.728
  store %struct.rtx_def* null, %struct.rtx_def** %inter, align 8
  br label %if.end.742

if.else.740:                                      ; preds = %cond.end.728
  %461 = load i32, i32* @word_mode, align 4
  %462 = load %struct.optab*, %struct.optab** %unsigned_shift, align 8
  %463 = load %struct.rtx_def*, %struct.rtx_def** %into_input, align 8
  %464 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %465 = load i32, i32* %unsignedp.addr, align 4
  %466 = load i32, i32* %next_methods, align 4
  %call741 = call %struct.rtx_def* @expand_binop(i32 %461, %struct.optab* %462, %struct.rtx_def* %463, %struct.rtx_def* %464, %struct.rtx_def* null, i32 %465, i32 %466)
  store %struct.rtx_def* %call741, %struct.rtx_def** %inter, align 8
  br label %if.end.742

if.end.742:                                       ; preds = %if.else.740, %if.then.739
  %467 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %cmp743 = icmp ne %struct.rtx_def* %467, null
  br i1 %cmp743, label %if.then.745, label %if.end.747

if.then.745:                                      ; preds = %if.end.742
  %468 = load i32, i32* @word_mode, align 4
  %469 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %470 = load %struct.rtx_def*, %struct.rtx_def** %carries, align 8
  %471 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %472 = load %struct.rtx_def*, %struct.rtx_def** %into_target, align 8
  %473 = load i32, i32* %unsignedp.addr, align 4
  %474 = load i32, i32* %next_methods, align 4
  %call746 = call %struct.rtx_def* @expand_binop(i32 %468, %struct.optab* %469, %struct.rtx_def* %470, %struct.rtx_def* %471, %struct.rtx_def* %472, i32 %473, i32 %474)
  store %struct.rtx_def* %call746, %struct.rtx_def** %inter, align 8
  br label %if.end.747

if.end.747:                                       ; preds = %if.then.745, %if.end.742
  %475 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %cmp748 = icmp ne %struct.rtx_def* %475, null
  br i1 %cmp748, label %land.lhs.true.750, label %if.end.755

land.lhs.true.750:                                ; preds = %if.end.747
  %476 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %477 = load %struct.rtx_def*, %struct.rtx_def** %into_target, align 8
  %cmp751 = icmp ne %struct.rtx_def* %476, %477
  br i1 %cmp751, label %if.then.753, label %if.end.755

if.then.753:                                      ; preds = %land.lhs.true.750
  %478 = load %struct.rtx_def*, %struct.rtx_def** %into_target, align 8
  %479 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %call754 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %478, %struct.rtx_def* %479)
  br label %if.end.755

if.end.755:                                       ; preds = %if.then.753, %land.lhs.true.750, %if.end.747
  %480 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %cmp756 = icmp ne %struct.rtx_def* %480, null
  br i1 %cmp756, label %if.then.758, label %if.end.760

if.then.758:                                      ; preds = %if.end.755
  %481 = load i32, i32* @word_mode, align 4
  %482 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %483 = load %struct.rtx_def*, %struct.rtx_def** %outof_input, align 8
  %484 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %485 = load %struct.rtx_def*, %struct.rtx_def** %outof_target, align 8
  %486 = load i32, i32* %unsignedp.addr, align 4
  %487 = load i32, i32* %next_methods, align 4
  %call759 = call %struct.rtx_def* @expand_binop(i32 %481, %struct.optab* %482, %struct.rtx_def* %483, %struct.rtx_def* %484, %struct.rtx_def* %485, i32 %486, i32 %487)
  store %struct.rtx_def* %call759, %struct.rtx_def** %inter, align 8
  br label %if.end.760

if.end.760:                                       ; preds = %if.then.758, %if.end.755
  %488 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %cmp761 = icmp ne %struct.rtx_def* %488, null
  br i1 %cmp761, label %land.lhs.true.763, label %if.end.768

land.lhs.true.763:                                ; preds = %if.end.760
  %489 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %490 = load %struct.rtx_def*, %struct.rtx_def** %outof_target, align 8
  %cmp764 = icmp ne %struct.rtx_def* %489, %490
  br i1 %cmp764, label %if.then.766, label %if.end.768

if.then.766:                                      ; preds = %land.lhs.true.763
  %491 = load %struct.rtx_def*, %struct.rtx_def** %outof_target, align 8
  %492 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %call767 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %491, %struct.rtx_def* %492)
  br label %if.end.768

if.end.768:                                       ; preds = %if.then.766, %land.lhs.true.763, %if.end.760
  br label %if.end.769

if.end.769:                                       ; preds = %if.end.768, %if.end.715
  %call770 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call770, %struct.rtx_def** %insns635, align 8
  call void @end_sequence()
  %493 = load %struct.rtx_def*, %struct.rtx_def** %inter, align 8
  %cmp771 = icmp ne %struct.rtx_def* %493, null
  br i1 %cmp771, label %if.then.773, label %if.end.783

if.then.773:                                      ; preds = %if.end.769
  %494 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code774 = getelementptr inbounds %struct.optab, %struct.optab* %494, i32 0, i32 0
  %495 = load i32, i32* %code774, align 4
  %cmp775 = icmp ne i32 %495, 0
  br i1 %cmp775, label %if.then.777, label %if.else.780

if.then.777:                                      ; preds = %if.then.773
  %496 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code778 = getelementptr inbounds %struct.optab, %struct.optab* %496, i32 0, i32 0
  %497 = load i32, i32* %code778, align 4
  %498 = load i32, i32* %mode.addr, align 4
  %499 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %500 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call779 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %497, i32 %498, %struct.rtx_def* %499, %struct.rtx_def* %500)
  store %struct.rtx_def* %call779, %struct.rtx_def** %equiv_value638, align 8
  br label %if.end.781

if.else.780:                                      ; preds = %if.then.773
  store %struct.rtx_def* null, %struct.rtx_def** %equiv_value638, align 8
  br label %if.end.781

if.end.781:                                       ; preds = %if.else.780, %if.then.777
  %501 = load %struct.rtx_def*, %struct.rtx_def** %insns635, align 8
  %502 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %503 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %504 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %505 = load %struct.rtx_def*, %struct.rtx_def** %equiv_value638, align 8
  %call782 = call %struct.rtx_def* @emit_no_conflict_block(%struct.rtx_def* %501, %struct.rtx_def* %502, %struct.rtx_def* %503, %struct.rtx_def* %504, %struct.rtx_def* %505)
  %506 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %506, %struct.rtx_def** %retval
  br label %return

if.end.783:                                       ; preds = %if.end.769
  br label %if.end.784

if.end.784:                                       ; preds = %if.end.783, %land.lhs.true.626, %land.lhs.true.619, %land.lhs.true.612, %land.lhs.true.603, %land.lhs.true.598, %land.lhs.true.595, %lor.lhs.false.592
  %507 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %508 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 24), align 8
  %cmp785 = icmp eq %struct.optab* %507, %508
  br i1 %cmp785, label %land.lhs.true.790, label %lor.lhs.false.787

lor.lhs.false.787:                                ; preds = %if.end.784
  %509 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %510 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 25), align 8
  %cmp788 = icmp eq %struct.optab* %509, %510
  br i1 %cmp788, label %land.lhs.true.790, label %if.end.1001

land.lhs.true.790:                                ; preds = %lor.lhs.false.787, %if.end.784
  %511 = load i32, i32* %class, align 4
  %cmp791 = icmp eq i32 %511, 1
  br i1 %cmp791, label %land.lhs.true.793, label %if.end.1001

land.lhs.true.793:                                ; preds = %land.lhs.true.790
  %512 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %513 = bitcast %struct.rtx_def* %512 to i32*
  %bf.load794 = load i32, i32* %513, align 8
  %bf.clear795 = and i32 %bf.load794, 65535
  %cmp796 = icmp eq i32 %bf.clear795, 54
  br i1 %cmp796, label %land.lhs.true.798, label %if.end.1001

land.lhs.true.798:                                ; preds = %land.lhs.true.793
  %514 = load i32, i32* %mode.addr, align 4
  %idxprom799 = sext i32 %514 to i64
  %arrayidx800 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom799
  %515 = load i8, i8* %arrayidx800, align 1
  %conv801 = zext i8 %515 to i32
  %516 = load i32, i32* @target_flags, align 4
  %and802 = and i32 %516, 33554432
  %tobool803 = icmp ne i32 %and802, 0
  %cond804 = select i1 %tobool803, i32 8, i32 4
  %mul805 = mul nsw i32 2, %cond804
  %cmp806 = icmp eq i32 %conv801, %mul805
  br i1 %cmp806, label %land.lhs.true.808, label %if.end.1001

land.lhs.true.808:                                ; preds = %land.lhs.true.798
  %517 = load i32, i32* @word_mode, align 4
  %idxprom809 = sext i32 %517 to i64
  %518 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %handlers810 = getelementptr inbounds %struct.optab, %struct.optab* %518, i32 0, i32 1
  %arrayidx811 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers810, i32 0, i64 %idxprom809
  %insn_code812 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx811, i32 0, i32 0
  %519 = load i32, i32* %insn_code812, align 4
  %cmp813 = icmp ne i32 %519, 1317
  br i1 %cmp813, label %land.lhs.true.815, label %if.end.1001

land.lhs.true.815:                                ; preds = %land.lhs.true.808
  %520 = load i32, i32* @word_mode, align 4
  %idxprom816 = sext i32 %520 to i64
  %521 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %handlers817 = getelementptr inbounds %struct.optab, %struct.optab* %521, i32 0, i32 1
  %arrayidx818 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers817, i32 0, i64 %idxprom816
  %insn_code819 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx818, i32 0, i32 0
  %522 = load i32, i32* %insn_code819, align 4
  %cmp820 = icmp ne i32 %522, 1317
  br i1 %cmp820, label %if.then.822, label %if.end.1001

if.then.822:                                      ; preds = %land.lhs.true.815
  %523 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp843 = icmp eq %struct.rtx_def* %523, null
  br i1 %cmp843, label %if.then.851, label %lor.lhs.false.845

lor.lhs.false.845:                                ; preds = %if.then.822
  %524 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %525 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %cmp846 = icmp eq %struct.rtx_def* %524, %525
  br i1 %cmp846, label %if.then.851, label %lor.lhs.false.848

lor.lhs.false.848:                                ; preds = %lor.lhs.false.845
  %526 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %527 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %cmp849 = icmp eq %struct.rtx_def* %526, %527
  br i1 %cmp849, label %if.then.851, label %if.end.853

if.then.851:                                      ; preds = %lor.lhs.false.848, %lor.lhs.false.845, %if.then.822
  %528 = load i32, i32* %mode.addr, align 4
  %call852 = call %struct.rtx_def* @gen_reg_rtx(i32 %528)
  store %struct.rtx_def* %call852, %struct.rtx_def** %target.addr, align 8
  br label %if.end.853

if.end.853:                                       ; preds = %if.then.851, %lor.lhs.false.848
  call void @start_sequence()
  %529 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld854 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %529, i32 0, i32 1
  %arrayidx855 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld854, i32 0, i64 0
  %rtwint856 = bitcast %union.rtunion_def* %arrayidx855 to i64*
  %530 = load i64, i64* %rtwint856, align 8
  %conv857 = trunc i64 %530 to i32
  store i32 %conv857, i32* %shift_count838, align 4
  %531 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %532 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 24), align 8
  %cmp858 = icmp eq %struct.optab* %531, %532
  %conv859 = zext i1 %cmp858 to i32
  store i32 %conv859, i32* %left_shift840, align 4
  %533 = load i32, i32* %left_shift840, align 4
  %xor860 = xor i32 %533, 1
  store i32 %xor860, i32* %outof_word842, align 4
  %534 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %535 = load i32, i32* %outof_word842, align 4
  %536 = load i32, i32* %mode.addr, align 4
  %call861 = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %534, i32 %535, i32 1, i32 %536)
  store %struct.rtx_def* %call861, %struct.rtx_def** %outof_target830, align 8
  %537 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %538 = load i32, i32* %outof_word842, align 4
  %sub862 = sub nsw i32 1, %538
  %539 = load i32, i32* %mode.addr, align 4
  %call863 = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %537, i32 %sub862, i32 1, i32 %539)
  store %struct.rtx_def* %call863, %struct.rtx_def** %into_target828, align 8
  %540 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %541 = load i32, i32* %outof_word842, align 4
  %542 = load i32, i32* %mode.addr, align 4
  %call864 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %540, i32 %541, i32 %542)
  store %struct.rtx_def* %call864, %struct.rtx_def** %outof_input834, align 8
  %543 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %544 = load i32, i32* %outof_word842, align 4
  %sub865 = sub nsw i32 1, %544
  %545 = load i32, i32* %mode.addr, align 4
  %call866 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %543, i32 %sub865, i32 %545)
  store %struct.rtx_def* %call866, %struct.rtx_def** %into_input832, align 8
  %546 = load i32, i32* %shift_count838, align 4
  %547 = load i32, i32* @target_flags, align 4
  %and867 = and i32 %547, 33554432
  %tobool868 = icmp ne i32 %and867, 0
  %cond869 = select i1 %tobool868, i32 64, i32 32
  %cmp870 = icmp eq i32 %546, %cond869
  br i1 %cmp870, label %if.then.872, label %if.else.875

if.then.872:                                      ; preds = %if.end.853
  %548 = load %struct.rtx_def*, %struct.rtx_def** %outof_target830, align 8
  %549 = load %struct.rtx_def*, %struct.rtx_def** %into_input832, align 8
  %call873 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %548, %struct.rtx_def* %549)
  %550 = load %struct.rtx_def*, %struct.rtx_def** %into_target828, align 8
  %551 = load %struct.rtx_def*, %struct.rtx_def** %outof_input834, align 8
  %call874 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %550, %struct.rtx_def* %551)
  %552 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %552, %struct.rtx_def** %inter836, align 8
  br label %if.end.977

if.else.875:                                      ; preds = %if.end.853
  %553 = load i32, i32* %left_shift840, align 4
  %554 = load i32, i32* %shift_count838, align 4
  %555 = load i32, i32* @target_flags, align 4
  %and886 = and i32 %555, 33554432
  %tobool887 = icmp ne i32 %and886, 0
  %cond888 = select i1 %tobool887, i32 64, i32 32
  %cmp889 = icmp slt i32 %554, %cond888
  %conv890 = zext i1 %cmp889 to i32
  %xor891 = xor i32 %553, %conv890
  %tobool892 = icmp ne i32 %xor891, 0
  br i1 %tobool892, label %cond.true.893, label %cond.false.894

cond.true.893:                                    ; preds = %if.else.875
  %556 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  br label %cond.end.895

cond.false.894:                                   ; preds = %if.else.875
  %557 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  br label %cond.end.895

cond.end.895:                                     ; preds = %cond.false.894, %cond.true.893
  %cond896 = phi %struct.optab* [ %556, %cond.true.893 ], [ %557, %cond.false.894 ]
  store %struct.optab* %cond896, %struct.optab** %reverse_unsigned_shift883, align 8
  %558 = load i32, i32* %left_shift840, align 4
  %559 = load i32, i32* %shift_count838, align 4
  %560 = load i32, i32* @target_flags, align 4
  %and897 = and i32 %560, 33554432
  %tobool898 = icmp ne i32 %and897, 0
  %cond899 = select i1 %tobool898, i32 64, i32 32
  %cmp900 = icmp slt i32 %559, %cond899
  %conv901 = zext i1 %cmp900 to i32
  %xor902 = xor i32 %558, %conv901
  %tobool903 = icmp ne i32 %xor902, 0
  br i1 %tobool903, label %cond.true.904, label %cond.false.905

cond.true.904:                                    ; preds = %cond.end.895
  %561 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  br label %cond.end.906

cond.false.905:                                   ; preds = %cond.end.895
  %562 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  br label %cond.end.906

cond.end.906:                                     ; preds = %cond.false.905, %cond.true.904
  %cond907 = phi %struct.optab* [ %561, %cond.true.904 ], [ %562, %cond.false.905 ]
  store %struct.optab* %cond907, %struct.optab** %unsigned_shift885, align 8
  %563 = load i32, i32* %shift_count838, align 4
  %564 = load i32, i32* @target_flags, align 4
  %and908 = and i32 %564, 33554432
  %tobool909 = icmp ne i32 %and908, 0
  %cond910 = select i1 %tobool909, i32 64, i32 32
  %cmp911 = icmp sgt i32 %563, %cond910
  br i1 %cmp911, label %if.then.913, label %if.else.927

if.then.913:                                      ; preds = %cond.end.906
  %565 = load i32, i32* %shift_count838, align 4
  %566 = load i32, i32* @target_flags, align 4
  %and914 = and i32 %566, 33554432
  %tobool915 = icmp ne i32 %and914, 0
  %cond916 = select i1 %tobool915, i32 64, i32 32
  %sub917 = sub nsw i32 %565, %cond916
  %conv918 = sext i32 %sub917 to i64
  %call919 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv918)
  store %struct.rtx_def* %call919, %struct.rtx_def** %first_shift_count, align 8
  %567 = load i32, i32* @target_flags, align 4
  %and920 = and i32 %567, 33554432
  %tobool921 = icmp ne i32 %and920, 0
  %cond922 = select i1 %tobool921, i32 64, i32 32
  %mul923 = mul nsw i32 2, %cond922
  %568 = load i32, i32* %shift_count838, align 4
  %sub924 = sub nsw i32 %mul923, %568
  %conv925 = sext i32 %sub924 to i64
  %call926 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv925)
  store %struct.rtx_def* %call926, %struct.rtx_def** %second_shift_count, align 8
  br label %if.end.936

if.else.927:                                      ; preds = %cond.end.906
  %569 = load i32, i32* @target_flags, align 4
  %and928 = and i32 %569, 33554432
  %tobool929 = icmp ne i32 %and928, 0
  %cond930 = select i1 %tobool929, i32 64, i32 32
  %570 = load i32, i32* %shift_count838, align 4
  %sub931 = sub nsw i32 %cond930, %570
  %conv932 = sext i32 %sub931 to i64
  %call933 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv932)
  store %struct.rtx_def* %call933, %struct.rtx_def** %first_shift_count, align 8
  %571 = load i32, i32* %shift_count838, align 4
  %conv934 = sext i32 %571 to i64
  %call935 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv934)
  store %struct.rtx_def* %call935, %struct.rtx_def** %second_shift_count, align 8
  br label %if.end.936

if.end.936:                                       ; preds = %if.else.927, %if.then.913
  %572 = load i32, i32* @word_mode, align 4
  %573 = load %struct.optab*, %struct.optab** %unsigned_shift885, align 8
  %574 = load %struct.rtx_def*, %struct.rtx_def** %outof_input834, align 8
  %575 = load %struct.rtx_def*, %struct.rtx_def** %first_shift_count, align 8
  %576 = load i32, i32* %unsignedp.addr, align 4
  %577 = load i32, i32* %next_methods, align 4
  %call937 = call %struct.rtx_def* @expand_binop(i32 %572, %struct.optab* %573, %struct.rtx_def* %574, %struct.rtx_def* %575, %struct.rtx_def* null, i32 %576, i32 %577)
  store %struct.rtx_def* %call937, %struct.rtx_def** %into_temp1, align 8
  %578 = load i32, i32* @word_mode, align 4
  %579 = load %struct.optab*, %struct.optab** %reverse_unsigned_shift883, align 8
  %580 = load %struct.rtx_def*, %struct.rtx_def** %into_input832, align 8
  %581 = load %struct.rtx_def*, %struct.rtx_def** %second_shift_count, align 8
  %582 = load %struct.rtx_def*, %struct.rtx_def** %into_target828, align 8
  %583 = load i32, i32* %unsignedp.addr, align 4
  %584 = load i32, i32* %next_methods, align 4
  %call938 = call %struct.rtx_def* @expand_binop(i32 %578, %struct.optab* %579, %struct.rtx_def* %580, %struct.rtx_def* %581, %struct.rtx_def* %582, i32 %583, i32 %584)
  store %struct.rtx_def* %call938, %struct.rtx_def** %into_temp2, align 8
  %585 = load %struct.rtx_def*, %struct.rtx_def** %into_temp1, align 8
  %cmp939 = icmp ne %struct.rtx_def* %585, null
  br i1 %cmp939, label %land.lhs.true.941, label %if.else.946

land.lhs.true.941:                                ; preds = %if.end.936
  %586 = load %struct.rtx_def*, %struct.rtx_def** %into_temp2, align 8
  %cmp942 = icmp ne %struct.rtx_def* %586, null
  br i1 %cmp942, label %if.then.944, label %if.else.946

if.then.944:                                      ; preds = %land.lhs.true.941
  %587 = load i32, i32* @word_mode, align 4
  %588 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %589 = load %struct.rtx_def*, %struct.rtx_def** %into_temp1, align 8
  %590 = load %struct.rtx_def*, %struct.rtx_def** %into_temp2, align 8
  %591 = load %struct.rtx_def*, %struct.rtx_def** %into_target828, align 8
  %592 = load i32, i32* %unsignedp.addr, align 4
  %593 = load i32, i32* %next_methods, align 4
  %call945 = call %struct.rtx_def* @expand_binop(i32 %587, %struct.optab* %588, %struct.rtx_def* %589, %struct.rtx_def* %590, %struct.rtx_def* %591, i32 %592, i32 %593)
  store %struct.rtx_def* %call945, %struct.rtx_def** %inter836, align 8
  br label %if.end.947

if.else.946:                                      ; preds = %land.lhs.true.941, %if.end.936
  store %struct.rtx_def* null, %struct.rtx_def** %inter836, align 8
  br label %if.end.947

if.end.947:                                       ; preds = %if.else.946, %if.then.944
  %594 = load %struct.rtx_def*, %struct.rtx_def** %inter836, align 8
  %cmp948 = icmp ne %struct.rtx_def* %594, null
  br i1 %cmp948, label %land.lhs.true.950, label %if.end.955

land.lhs.true.950:                                ; preds = %if.end.947
  %595 = load %struct.rtx_def*, %struct.rtx_def** %inter836, align 8
  %596 = load %struct.rtx_def*, %struct.rtx_def** %into_target828, align 8
  %cmp951 = icmp ne %struct.rtx_def* %595, %596
  br i1 %cmp951, label %if.then.953, label %if.end.955

if.then.953:                                      ; preds = %land.lhs.true.950
  %597 = load %struct.rtx_def*, %struct.rtx_def** %into_target828, align 8
  %598 = load %struct.rtx_def*, %struct.rtx_def** %inter836, align 8
  %call954 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %597, %struct.rtx_def* %598)
  br label %if.end.955

if.end.955:                                       ; preds = %if.then.953, %land.lhs.true.950, %if.end.947
  %599 = load i32, i32* @word_mode, align 4
  %600 = load %struct.optab*, %struct.optab** %unsigned_shift885, align 8
  %601 = load %struct.rtx_def*, %struct.rtx_def** %into_input832, align 8
  %602 = load %struct.rtx_def*, %struct.rtx_def** %first_shift_count, align 8
  %603 = load i32, i32* %unsignedp.addr, align 4
  %604 = load i32, i32* %next_methods, align 4
  %call956 = call %struct.rtx_def* @expand_binop(i32 %599, %struct.optab* %600, %struct.rtx_def* %601, %struct.rtx_def* %602, %struct.rtx_def* null, i32 %603, i32 %604)
  store %struct.rtx_def* %call956, %struct.rtx_def** %outof_temp1, align 8
  %605 = load i32, i32* @word_mode, align 4
  %606 = load %struct.optab*, %struct.optab** %reverse_unsigned_shift883, align 8
  %607 = load %struct.rtx_def*, %struct.rtx_def** %outof_input834, align 8
  %608 = load %struct.rtx_def*, %struct.rtx_def** %second_shift_count, align 8
  %609 = load %struct.rtx_def*, %struct.rtx_def** %outof_target830, align 8
  %610 = load i32, i32* %unsignedp.addr, align 4
  %611 = load i32, i32* %next_methods, align 4
  %call957 = call %struct.rtx_def* @expand_binop(i32 %605, %struct.optab* %606, %struct.rtx_def* %607, %struct.rtx_def* %608, %struct.rtx_def* %609, i32 %610, i32 %611)
  store %struct.rtx_def* %call957, %struct.rtx_def** %outof_temp2, align 8
  %612 = load %struct.rtx_def*, %struct.rtx_def** %inter836, align 8
  %cmp958 = icmp ne %struct.rtx_def* %612, null
  br i1 %cmp958, label %land.lhs.true.960, label %if.end.968

land.lhs.true.960:                                ; preds = %if.end.955
  %613 = load %struct.rtx_def*, %struct.rtx_def** %outof_temp1, align 8
  %cmp961 = icmp ne %struct.rtx_def* %613, null
  br i1 %cmp961, label %land.lhs.true.963, label %if.end.968

land.lhs.true.963:                                ; preds = %land.lhs.true.960
  %614 = load %struct.rtx_def*, %struct.rtx_def** %outof_temp2, align 8
  %cmp964 = icmp ne %struct.rtx_def* %614, null
  br i1 %cmp964, label %if.then.966, label %if.end.968

if.then.966:                                      ; preds = %land.lhs.true.963
  %615 = load i32, i32* @word_mode, align 4
  %616 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %617 = load %struct.rtx_def*, %struct.rtx_def** %outof_temp1, align 8
  %618 = load %struct.rtx_def*, %struct.rtx_def** %outof_temp2, align 8
  %619 = load %struct.rtx_def*, %struct.rtx_def** %outof_target830, align 8
  %620 = load i32, i32* %unsignedp.addr, align 4
  %621 = load i32, i32* %next_methods, align 4
  %call967 = call %struct.rtx_def* @expand_binop(i32 %615, %struct.optab* %616, %struct.rtx_def* %617, %struct.rtx_def* %618, %struct.rtx_def* %619, i32 %620, i32 %621)
  store %struct.rtx_def* %call967, %struct.rtx_def** %inter836, align 8
  br label %if.end.968

if.end.968:                                       ; preds = %if.then.966, %land.lhs.true.963, %land.lhs.true.960, %if.end.955
  %622 = load %struct.rtx_def*, %struct.rtx_def** %inter836, align 8
  %cmp969 = icmp ne %struct.rtx_def* %622, null
  br i1 %cmp969, label %land.lhs.true.971, label %if.end.976

land.lhs.true.971:                                ; preds = %if.end.968
  %623 = load %struct.rtx_def*, %struct.rtx_def** %inter836, align 8
  %624 = load %struct.rtx_def*, %struct.rtx_def** %outof_target830, align 8
  %cmp972 = icmp ne %struct.rtx_def* %623, %624
  br i1 %cmp972, label %if.then.974, label %if.end.976

if.then.974:                                      ; preds = %land.lhs.true.971
  %625 = load %struct.rtx_def*, %struct.rtx_def** %outof_target830, align 8
  %626 = load %struct.rtx_def*, %struct.rtx_def** %inter836, align 8
  %call975 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %625, %struct.rtx_def* %626)
  br label %if.end.976

if.end.976:                                       ; preds = %if.then.974, %land.lhs.true.971, %if.end.968
  br label %if.end.977

if.end.977:                                       ; preds = %if.end.976, %if.then.872
  %call978 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call978, %struct.rtx_def** %insns824, align 8
  call void @end_sequence()
  %627 = load %struct.rtx_def*, %struct.rtx_def** %inter836, align 8
  %cmp979 = icmp ne %struct.rtx_def* %627, null
  br i1 %cmp979, label %if.then.981, label %if.end.1000

if.then.981:                                      ; preds = %if.end.977
  %628 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code982 = getelementptr inbounds %struct.optab, %struct.optab* %628, i32 0, i32 0
  %629 = load i32, i32* %code982, align 4
  %cmp983 = icmp ne i32 %629, 0
  br i1 %cmp983, label %if.then.985, label %if.else.988

if.then.985:                                      ; preds = %if.then.981
  %630 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code986 = getelementptr inbounds %struct.optab, %struct.optab* %630, i32 0, i32 0
  %631 = load i32, i32* %code986, align 4
  %632 = load i32, i32* %mode.addr, align 4
  %633 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %634 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call987 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %631, i32 %632, %struct.rtx_def* %633, %struct.rtx_def* %634)
  store %struct.rtx_def* %call987, %struct.rtx_def** %equiv_value826, align 8
  br label %if.end.989

if.else.988:                                      ; preds = %if.then.981
  store %struct.rtx_def* null, %struct.rtx_def** %equiv_value826, align 8
  br label %if.end.989

if.end.989:                                       ; preds = %if.else.988, %if.then.985
  %635 = load i32, i32* %shift_count838, align 4
  %636 = load i32, i32* @target_flags, align 4
  %and990 = and i32 %636, 33554432
  %tobool991 = icmp ne i32 %and990, 0
  %cond992 = select i1 %tobool991, i32 64, i32 32
  %cmp993 = icmp ne i32 %635, %cond992
  br i1 %cmp993, label %if.then.995, label %if.else.997

if.then.995:                                      ; preds = %if.end.989
  %637 = load %struct.rtx_def*, %struct.rtx_def** %insns824, align 8
  %638 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %639 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %640 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %641 = load %struct.rtx_def*, %struct.rtx_def** %equiv_value826, align 8
  %call996 = call %struct.rtx_def* @emit_no_conflict_block(%struct.rtx_def* %637, %struct.rtx_def* %638, %struct.rtx_def* %639, %struct.rtx_def* %640, %struct.rtx_def* %641)
  br label %if.end.999

if.else.997:                                      ; preds = %if.end.989
  %642 = load %struct.rtx_def*, %struct.rtx_def** %insns824, align 8
  %call998 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %642)
  br label %if.end.999

if.end.999:                                       ; preds = %if.else.997, %if.then.995
  %643 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %643, %struct.rtx_def** %retval
  br label %return

if.end.1000:                                      ; preds = %if.end.977
  br label %if.end.1001

if.end.1001:                                      ; preds = %if.end.1000, %land.lhs.true.815, %land.lhs.true.808, %land.lhs.true.798, %land.lhs.true.793, %land.lhs.true.790, %lor.lhs.false.787
  %644 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %645 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %cmp1002 = icmp eq %struct.optab* %644, %645
  br i1 %cmp1002, label %land.lhs.true.1007, label %lor.lhs.false.1004

lor.lhs.false.1004:                               ; preds = %if.end.1001
  %646 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %647 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %cmp1005 = icmp eq %struct.optab* %646, %647
  br i1 %cmp1005, label %land.lhs.true.1007, label %if.end.1166

land.lhs.true.1007:                               ; preds = %lor.lhs.false.1004, %if.end.1001
  %648 = load i32, i32* %class, align 4
  %cmp1008 = icmp eq i32 %648, 1
  br i1 %cmp1008, label %land.lhs.true.1010, label %if.end.1166

land.lhs.true.1010:                               ; preds = %land.lhs.true.1007
  %649 = load i32, i32* %mode.addr, align 4
  %idxprom1011 = sext i32 %649 to i64
  %arrayidx1012 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom1011
  %650 = load i8, i8* %arrayidx1012, align 1
  %conv1013 = zext i8 %650 to i32
  %651 = load i32, i32* @target_flags, align 4
  %and1014 = and i32 %651, 33554432
  %tobool1015 = icmp ne i32 %and1014, 0
  %cond1016 = select i1 %tobool1015, i32 8, i32 4
  %mul1017 = mul nsw i32 2, %cond1016
  %cmp1018 = icmp sge i32 %conv1013, %mul1017
  br i1 %cmp1018, label %land.lhs.true.1020, label %if.end.1166

land.lhs.true.1020:                               ; preds = %land.lhs.true.1010
  %652 = load i32, i32* @word_mode, align 4
  %idxprom1021 = sext i32 %652 to i64
  %653 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers1022 = getelementptr inbounds %struct.optab, %struct.optab* %653, i32 0, i32 1
  %arrayidx1023 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1022, i32 0, i64 %idxprom1021
  %insn_code1024 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1023, i32 0, i32 0
  %654 = load i32, i32* %insn_code1024, align 4
  %cmp1025 = icmp ne i32 %654, 1317
  br i1 %cmp1025, label %if.then.1027, label %if.end.1166

if.then.1027:                                     ; preds = %land.lhs.true.1020
  %655 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %656 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %cmp1031 = icmp eq %struct.optab* %655, %656
  br i1 %cmp1031, label %cond.true.1033, label %cond.false.1034

cond.true.1033:                                   ; preds = %if.then.1027
  %657 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  br label %cond.end.1035

cond.false.1034:                                  ; preds = %if.then.1027
  %658 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  br label %cond.end.1035

cond.end.1035:                                    ; preds = %cond.false.1034, %cond.true.1033
  %cond1036 = phi %struct.optab* [ %657, %cond.true.1033 ], [ %658, %cond.false.1034 ]
  store %struct.optab* %cond1036, %struct.optab** %otheroptab, align 8
  %659 = load i32, i32* %mode.addr, align 4
  %idxprom1038 = sext i32 %659 to i64
  %arrayidx1039 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom1038
  %660 = load i16, i16* %arrayidx1039, align 2
  %conv1040 = zext i16 %660 to i32
  %661 = load i32, i32* @target_flags, align 4
  %and1041 = and i32 %661, 33554432
  %tobool1042 = icmp ne i32 %and1041, 0
  %cond1043 = select i1 %tobool1042, i32 64, i32 32
  %div1044 = sdiv i32 %conv1040, %cond1043
  store i32 %div1044, i32* %nwords, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %carry_in, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %carry_out, align 8
  store i32 1, i32* %normalizep, align 4
  %662 = load i32, i32* %mode.addr, align 4
  %663 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1052 = call %struct.rtx_def* @force_reg(i32 %662, %struct.rtx_def* %663)
  store %struct.rtx_def* %call1052, %struct.rtx_def** %xop01048, align 8
  %664 = load i32, i32* %mode.addr, align 4
  %665 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1053 = call %struct.rtx_def* @force_reg(i32 %664, %struct.rtx_def* %665)
  store %struct.rtx_def* %call1053, %struct.rtx_def** %xop11050, align 8
  %666 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp1054 = icmp eq %struct.rtx_def* %666, null
  br i1 %cmp1054, label %if.then.1067, label %lor.lhs.false.1056

lor.lhs.false.1056:                               ; preds = %cond.end.1035
  %667 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %668 = bitcast %struct.rtx_def* %667 to i32*
  %bf.load1057 = load i32, i32* %668, align 8
  %bf.clear1058 = and i32 %bf.load1057, 65535
  %cmp1059 = icmp ne i32 %bf.clear1058, 61
  br i1 %cmp1059, label %if.then.1067, label %lor.lhs.false.1061

lor.lhs.false.1061:                               ; preds = %lor.lhs.false.1056
  %669 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %670 = load %struct.rtx_def*, %struct.rtx_def** %xop01048, align 8
  %cmp1062 = icmp eq %struct.rtx_def* %669, %670
  br i1 %cmp1062, label %if.then.1067, label %lor.lhs.false.1064

lor.lhs.false.1064:                               ; preds = %lor.lhs.false.1061
  %671 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %672 = load %struct.rtx_def*, %struct.rtx_def** %xop11050, align 8
  %cmp1065 = icmp eq %struct.rtx_def* %671, %672
  br i1 %cmp1065, label %if.then.1067, label %if.end.1069

if.then.1067:                                     ; preds = %lor.lhs.false.1064, %lor.lhs.false.1061, %lor.lhs.false.1056, %cond.end.1035
  %673 = load i32, i32* %mode.addr, align 4
  %call1068 = call %struct.rtx_def* @gen_reg_rtx(i32 %673)
  store %struct.rtx_def* %call1068, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1069

if.end.1069:                                      ; preds = %if.then.1067, %lor.lhs.false.1064
  %674 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %675 = bitcast %struct.rtx_def* %674 to i32*
  %bf.load1070 = load i32, i32* %675, align 8
  %bf.clear1071 = and i32 %bf.load1070, 65535
  %cmp1072 = icmp eq i32 %bf.clear1071, 61
  br i1 %cmp1072, label %if.then.1074, label %if.end.1077

if.then.1074:                                     ; preds = %if.end.1069
  %676 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call1075 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 0, %struct.rtx_def* %676)
  %call1076 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call1075)
  br label %if.end.1077

if.end.1077:                                      ; preds = %if.then.1074, %if.end.1069
  store i32 0, i32* %i1029, align 4
  br label %for.cond.1078

for.cond.1078:                                    ; preds = %for.inc.1135, %if.end.1077
  %677 = load i32, i32* %i1029, align 4
  %678 = load i32, i32* %nwords, align 4
  %cmp1079 = icmp ult i32 %677, %678
  br i1 %cmp1079, label %for.body.1081, label %for.end.1137

for.body.1081:                                    ; preds = %for.cond.1078
  %679 = load i32, i32* %i1029, align 4
  store i32 %679, i32* %index, align 4
  %680 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %681 = load i32, i32* %index, align 4
  %682 = load i32, i32* %mode.addr, align 4
  %call1085 = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %680, i32 %681, i32 1, i32 %682)
  store %struct.rtx_def* %call1085, %struct.rtx_def** %target_piece1084, align 8
  %683 = load %struct.rtx_def*, %struct.rtx_def** %xop01048, align 8
  %684 = load i32, i32* %index, align 4
  %685 = load i32, i32* %mode.addr, align 4
  %call1087 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %683, i32 %684, i32 %685)
  store %struct.rtx_def* %call1087, %struct.rtx_def** %op0_piece, align 8
  %686 = load %struct.rtx_def*, %struct.rtx_def** %xop11050, align 8
  %687 = load i32, i32* %index, align 4
  %688 = load i32, i32* %mode.addr, align 4
  %call1089 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %686, i32 %687, i32 %688)
  store %struct.rtx_def* %call1089, %struct.rtx_def** %op1_piece, align 8
  %689 = load i32, i32* @word_mode, align 4
  %690 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %691 = load %struct.rtx_def*, %struct.rtx_def** %op0_piece, align 8
  %692 = load %struct.rtx_def*, %struct.rtx_def** %op1_piece, align 8
  %693 = load %struct.rtx_def*, %struct.rtx_def** %target_piece1084, align 8
  %694 = load i32, i32* %unsignedp.addr, align 4
  %695 = load i32, i32* %next_methods, align 4
  %call1092 = call %struct.rtx_def* @expand_binop(i32 %689, %struct.optab* %690, %struct.rtx_def* %691, %struct.rtx_def* %692, %struct.rtx_def* %693, i32 %694, i32 %695)
  store %struct.rtx_def* %call1092, %struct.rtx_def** %x1091, align 8
  %696 = load %struct.rtx_def*, %struct.rtx_def** %x1091, align 8
  %cmp1093 = icmp eq %struct.rtx_def* %696, null
  br i1 %cmp1093, label %if.then.1095, label %if.end.1096

if.then.1095:                                     ; preds = %for.body.1081
  br label %for.end.1137

if.end.1096:                                      ; preds = %for.body.1081
  %697 = load i32, i32* %i1029, align 4
  %add = add nsw i32 %697, 1
  %698 = load i32, i32* %nwords, align 4
  %cmp1097 = icmp ult i32 %add, %698
  br i1 %cmp1097, label %if.then.1099, label %if.end.1105

if.then.1099:                                     ; preds = %if.end.1096
  %699 = load i32, i32* @word_mode, align 4
  %call1100 = call %struct.rtx_def* @gen_reg_rtx(i32 %699)
  store %struct.rtx_def* %call1100, %struct.rtx_def** %carry_out, align 8
  %700 = load %struct.rtx_def*, %struct.rtx_def** %carry_out, align 8
  %701 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %702 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %cmp1101 = icmp eq %struct.optab* %701, %702
  %cond1103 = select i1 %cmp1101, i32 107, i32 105
  %703 = load %struct.rtx_def*, %struct.rtx_def** %x1091, align 8
  %704 = load %struct.rtx_def*, %struct.rtx_def** %op0_piece, align 8
  %705 = load i32, i32* @word_mode, align 4
  %706 = load i32, i32* %normalizep, align 4
  %call1104 = call %struct.rtx_def* @emit_store_flag_force(%struct.rtx_def* %700, i32 %cond1103, %struct.rtx_def* %703, %struct.rtx_def* %704, i32 %705, i32 1, i32 %706)
  store %struct.rtx_def* %call1104, %struct.rtx_def** %carry_out, align 8
  br label %if.end.1105

if.end.1105:                                      ; preds = %if.then.1099, %if.end.1096
  %707 = load i32, i32* %i1029, align 4
  %cmp1106 = icmp sgt i32 %707, 0
  br i1 %cmp1106, label %if.then.1108, label %if.end.1134

if.then.1108:                                     ; preds = %if.end.1105
  %708 = load i32, i32* @word_mode, align 4
  %709 = load i32, i32* %normalizep, align 4
  %cmp1110 = icmp eq i32 %709, 1
  br i1 %cmp1110, label %cond.true.1112, label %cond.false.1113

cond.true.1112:                                   ; preds = %if.then.1108
  %710 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  br label %cond.end.1114

cond.false.1113:                                  ; preds = %if.then.1108
  %711 = load %struct.optab*, %struct.optab** %otheroptab, align 8
  br label %cond.end.1114

cond.end.1114:                                    ; preds = %cond.false.1113, %cond.true.1112
  %cond1115 = phi %struct.optab* [ %710, %cond.true.1112 ], [ %711, %cond.false.1113 ]
  %712 = load %struct.rtx_def*, %struct.rtx_def** %x1091, align 8
  %713 = load %struct.rtx_def*, %struct.rtx_def** %carry_in, align 8
  %714 = load i32, i32* %next_methods, align 4
  %call1116 = call %struct.rtx_def* @expand_binop(i32 %708, %struct.optab* %cond1115, %struct.rtx_def* %712, %struct.rtx_def* %713, %struct.rtx_def* null, i32 1, i32 %714)
  store %struct.rtx_def* %call1116, %struct.rtx_def** %newx, align 8
  %715 = load i32, i32* %i1029, align 4
  %add1117 = add nsw i32 %715, 1
  %716 = load i32, i32* %nwords, align 4
  %cmp1118 = icmp ult i32 %add1117, %716
  br i1 %cmp1118, label %if.then.1120, label %if.end.1132

if.then.1120:                                     ; preds = %cond.end.1114
  %717 = load i32, i32* @word_mode, align 4
  %call1122 = call %struct.rtx_def* @gen_reg_rtx(i32 %717)
  store %struct.rtx_def* %call1122, %struct.rtx_def** %carry_tmp, align 8
  %718 = load %struct.rtx_def*, %struct.rtx_def** %carry_tmp, align 8
  %719 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %720 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %cmp1123 = icmp eq %struct.optab* %719, %720
  %cond1125 = select i1 %cmp1123, i32 107, i32 105
  %721 = load %struct.rtx_def*, %struct.rtx_def** %newx, align 8
  %722 = load %struct.rtx_def*, %struct.rtx_def** %x1091, align 8
  %723 = load i32, i32* @word_mode, align 4
  %724 = load i32, i32* %normalizep, align 4
  %call1126 = call %struct.rtx_def* @emit_store_flag_force(%struct.rtx_def* %718, i32 %cond1125, %struct.rtx_def* %721, %struct.rtx_def* %722, i32 %723, i32 1, i32 %724)
  store %struct.rtx_def* %call1126, %struct.rtx_def** %carry_tmp, align 8
  %725 = load i32, i32* @word_mode, align 4
  %726 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %727 = load %struct.rtx_def*, %struct.rtx_def** %carry_out, align 8
  %728 = load %struct.rtx_def*, %struct.rtx_def** %carry_tmp, align 8
  %729 = load %struct.rtx_def*, %struct.rtx_def** %carry_out, align 8
  %730 = load i32, i32* %next_methods, align 4
  %call1127 = call %struct.rtx_def* @expand_binop(i32 %725, %struct.optab* %726, %struct.rtx_def* %727, %struct.rtx_def* %728, %struct.rtx_def* %729, i32 0, i32 %730)
  store %struct.rtx_def* %call1127, %struct.rtx_def** %carry_out, align 8
  %731 = load %struct.rtx_def*, %struct.rtx_def** %carry_out, align 8
  %cmp1128 = icmp eq %struct.rtx_def* %731, null
  br i1 %cmp1128, label %if.then.1130, label %if.end.1131

if.then.1130:                                     ; preds = %if.then.1120
  br label %for.end.1137

if.end.1131:                                      ; preds = %if.then.1120
  br label %if.end.1132

if.end.1132:                                      ; preds = %if.end.1131, %cond.end.1114
  %732 = load %struct.rtx_def*, %struct.rtx_def** %target_piece1084, align 8
  %733 = load %struct.rtx_def*, %struct.rtx_def** %newx, align 8
  %call1133 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %732, %struct.rtx_def* %733)
  br label %if.end.1134

if.end.1134:                                      ; preds = %if.end.1132, %if.end.1105
  %734 = load %struct.rtx_def*, %struct.rtx_def** %carry_out, align 8
  store %struct.rtx_def* %734, %struct.rtx_def** %carry_in, align 8
  br label %for.inc.1135

for.inc.1135:                                     ; preds = %if.end.1134
  %735 = load i32, i32* %i1029, align 4
  %inc1136 = add nsw i32 %735, 1
  store i32 %inc1136, i32* %i1029, align 4
  br label %for.cond.1078

for.end.1137:                                     ; preds = %if.then.1130, %if.then.1095, %for.cond.1078
  %736 = load i32, i32* %i1029, align 4
  %737 = load i32, i32* %mode.addr, align 4
  %idxprom1138 = sext i32 %737 to i64
  %arrayidx1139 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom1138
  %738 = load i16, i16* %arrayidx1139, align 2
  %conv1140 = zext i16 %738 to i32
  %739 = load i32, i32* @target_flags, align 4
  %and1141 = and i32 %739, 33554432
  %tobool1142 = icmp ne i32 %and1141, 0
  %cond1143 = select i1 %tobool1142, i32 64, i32 32
  %div1144 = sdiv i32 %conv1140, %cond1143
  %cmp1145 = icmp eq i32 %736, %div1144
  br i1 %cmp1145, label %if.then.1147, label %if.else.1164

if.then.1147:                                     ; preds = %for.end.1137
  %740 = load i32, i32* %mode.addr, align 4
  %idxprom1148 = sext i32 %740 to i64
  %741 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers1149 = getelementptr inbounds %struct.optab, %struct.optab* %741, i32 0, i32 1
  %arrayidx1150 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1149, i32 0, i64 %idxprom1148
  %insn_code1151 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1150, i32 0, i32 0
  %742 = load i32, i32* %insn_code1151, align 4
  %cmp1152 = icmp ne i32 %742, 1317
  br i1 %cmp1152, label %if.then.1154, label %if.end.1163

if.then.1154:                                     ; preds = %if.then.1147
  %743 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %744 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call1157 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %743, %struct.rtx_def* %744)
  store %struct.rtx_def* %call1157, %struct.rtx_def** %temp1156, align 8
  %745 = load %struct.rtx_def*, %struct.rtx_def** %temp1156, align 8
  %746 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code1158 = getelementptr inbounds %struct.optab, %struct.optab* %746, i32 0, i32 0
  %747 = load i32, i32* %code1158, align 4
  %748 = load i32, i32* %mode.addr, align 4
  %749 = load %struct.rtx_def*, %struct.rtx_def** %xop01048, align 8
  %call1159 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %749)
  %750 = load %struct.rtx_def*, %struct.rtx_def** %xop11050, align 8
  %call1160 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %750)
  %call1161 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %747, i32 %748, %struct.rtx_def* %call1159, %struct.rtx_def* %call1160)
  %call1162 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %745, i32 4, %struct.rtx_def* %call1161)
  br label %if.end.1163

if.end.1163:                                      ; preds = %if.then.1154, %if.then.1147
  %751 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %751, %struct.rtx_def** %retval
  br label %return

if.else.1164:                                     ; preds = %for.end.1137
  %752 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %752)
  br label %if.end.1165

if.end.1165:                                      ; preds = %if.else.1164
  br label %if.end.1166

if.end.1166:                                      ; preds = %if.end.1165, %land.lhs.true.1020, %land.lhs.true.1010, %land.lhs.true.1007, %lor.lhs.false.1004
  %753 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %754 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %cmp1167 = icmp eq %struct.optab* %753, %754
  br i1 %cmp1167, label %land.lhs.true.1169, label %if.end.1354

land.lhs.true.1169:                               ; preds = %if.end.1166
  %755 = load i32, i32* %class, align 4
  %cmp1170 = icmp eq i32 %755, 1
  br i1 %cmp1170, label %land.lhs.true.1172, label %if.end.1354

land.lhs.true.1172:                               ; preds = %land.lhs.true.1169
  %756 = load i32, i32* %mode.addr, align 4
  %idxprom1173 = sext i32 %756 to i64
  %arrayidx1174 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom1173
  %757 = load i8, i8* %arrayidx1174, align 1
  %conv1175 = zext i8 %757 to i32
  %758 = load i32, i32* @target_flags, align 4
  %and1176 = and i32 %758, 33554432
  %tobool1177 = icmp ne i32 %and1176, 0
  %cond1178 = select i1 %tobool1177, i32 8, i32 4
  %mul1179 = mul nsw i32 2, %cond1178
  %cmp1180 = icmp eq i32 %conv1175, %mul1179
  br i1 %cmp1180, label %land.lhs.true.1182, label %if.end.1354

land.lhs.true.1182:                               ; preds = %land.lhs.true.1172
  %759 = load i32, i32* @word_mode, align 4
  %idxprom1183 = sext i32 %759 to i64
  %760 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %handlers1184 = getelementptr inbounds %struct.optab, %struct.optab* %760, i32 0, i32 1
  %arrayidx1185 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1184, i32 0, i64 %idxprom1183
  %insn_code1186 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1185, i32 0, i32 0
  %761 = load i32, i32* %insn_code1186, align 4
  %cmp1187 = icmp ne i32 %761, 1317
  br i1 %cmp1187, label %land.lhs.true.1189, label %if.end.1354

land.lhs.true.1189:                               ; preds = %land.lhs.true.1182
  %762 = load i32, i32* @word_mode, align 4
  %idxprom1190 = sext i32 %762 to i64
  %763 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers1191 = getelementptr inbounds %struct.optab, %struct.optab* %763, i32 0, i32 1
  %arrayidx1192 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1191, i32 0, i64 %idxprom1190
  %insn_code1193 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1192, i32 0, i32 0
  %764 = load i32, i32* %insn_code1193, align 4
  %cmp1194 = icmp ne i32 %764, 1317
  br i1 %cmp1194, label %land.lhs.true.1196, label %if.end.1354

land.lhs.true.1196:                               ; preds = %land.lhs.true.1189
  %765 = load i32, i32* %mode.addr, align 4
  %idxprom1197 = sext i32 %765 to i64
  %766 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  %handlers1198 = getelementptr inbounds %struct.optab, %struct.optab* %766, i32 0, i32 1
  %arrayidx1199 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1198, i32 0, i64 %idxprom1197
  %insn_code1200 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1199, i32 0, i32 0
  %767 = load i32, i32* %insn_code1200, align 4
  %cmp1201 = icmp ne i32 %767, 1317
  br i1 %cmp1201, label %if.then.1210, label %lor.lhs.false.1203

lor.lhs.false.1203:                               ; preds = %land.lhs.true.1196
  %768 = load i32, i32* %mode.addr, align 4
  %idxprom1204 = sext i32 %768 to i64
  %769 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  %handlers1205 = getelementptr inbounds %struct.optab, %struct.optab* %769, i32 0, i32 1
  %arrayidx1206 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1205, i32 0, i64 %idxprom1204
  %insn_code1207 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1206, i32 0, i32 0
  %770 = load i32, i32* %insn_code1207, align 4
  %cmp1208 = icmp ne i32 %770, 1317
  br i1 %cmp1208, label %if.then.1210, label %if.end.1354

if.then.1210:                                     ; preds = %lor.lhs.false.1203, %land.lhs.true.1196
  store i32 0, i32* %low, align 4
  store i32 1, i32* %high, align 4
  %771 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %772 = load i32, i32* %high, align 4
  %773 = load i32, i32* %mode.addr, align 4
  %call1214 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %771, i32 %772, i32 %773)
  store %struct.rtx_def* %call1214, %struct.rtx_def** %op0_high, align 8
  %774 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %775 = load i32, i32* %low, align 4
  %776 = load i32, i32* %mode.addr, align 4
  %call1216 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %774, i32 %775, i32 %776)
  store %struct.rtx_def* %call1216, %struct.rtx_def** %op0_low, align 8
  %777 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %778 = load i32, i32* %high, align 4
  %779 = load i32, i32* %mode.addr, align 4
  %call1218 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %777, i32 %778, i32 %779)
  store %struct.rtx_def* %call1218, %struct.rtx_def** %op1_high, align 8
  %780 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %781 = load i32, i32* %low, align 4
  %782 = load i32, i32* %mode.addr, align 4
  %call1220 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %780, i32 %781, i32 %782)
  store %struct.rtx_def* %call1220, %struct.rtx_def** %op1_low, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %product, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %op0_xhigh, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %op1_xhigh, align 8
  %783 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %784 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %cmp1224 = icmp eq %struct.rtx_def* %783, %784
  br i1 %cmp1224, label %if.then.1237, label %lor.lhs.false.1226

lor.lhs.false.1226:                               ; preds = %if.then.1210
  %785 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %786 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %cmp1227 = icmp eq %struct.rtx_def* %785, %786
  br i1 %cmp1227, label %if.then.1237, label %lor.lhs.false.1229

lor.lhs.false.1229:                               ; preds = %lor.lhs.false.1226
  %787 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp1230 = icmp ne %struct.rtx_def* %787, null
  br i1 %cmp1230, label %land.lhs.true.1232, label %if.end.1238

land.lhs.true.1232:                               ; preds = %lor.lhs.false.1229
  %788 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %789 = bitcast %struct.rtx_def* %788 to i32*
  %bf.load1233 = load i32, i32* %789, align 8
  %bf.clear1234 = and i32 %bf.load1233, 65535
  %cmp1235 = icmp ne i32 %bf.clear1234, 61
  br i1 %cmp1235, label %if.then.1237, label %if.end.1238

if.then.1237:                                     ; preds = %land.lhs.true.1232, %lor.lhs.false.1226, %if.then.1210
  store %struct.rtx_def* null, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1238

if.end.1238:                                      ; preds = %if.then.1237, %land.lhs.true.1232, %lor.lhs.false.1229
  %790 = load i32, i32* %mode.addr, align 4
  %idxprom1239 = sext i32 %790 to i64
  %791 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  %handlers1240 = getelementptr inbounds %struct.optab, %struct.optab* %791, i32 0, i32 1
  %arrayidx1241 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1240, i32 0, i64 %idxprom1239
  %insn_code1242 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1241, i32 0, i32 0
  %792 = load i32, i32* %insn_code1242, align 4
  %cmp1243 = icmp ne i32 %792, 1317
  br i1 %cmp1243, label %if.then.1245, label %if.end.1252

if.then.1245:                                     ; preds = %if.end.1238
  %793 = load i32, i32* %mode.addr, align 4
  %794 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  %795 = load %struct.rtx_def*, %struct.rtx_def** %op0_low, align 8
  %796 = load %struct.rtx_def*, %struct.rtx_def** %op1_low, align 8
  %797 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call1246 = call %struct.rtx_def* @expand_binop(i32 %793, %struct.optab* %794, %struct.rtx_def* %795, %struct.rtx_def* %796, %struct.rtx_def* %797, i32 1, i32 0)
  store %struct.rtx_def* %call1246, %struct.rtx_def** %product, align 8
  %798 = load %struct.rtx_def*, %struct.rtx_def** %product, align 8
  %cmp1247 = icmp eq %struct.rtx_def* %798, null
  br i1 %cmp1247, label %if.then.1249, label %if.else.1250

if.then.1249:                                     ; preds = %if.then.1245
  %799 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %799)
  br label %if.end.1251

if.else.1250:                                     ; preds = %if.then.1245
  %800 = load %struct.rtx_def*, %struct.rtx_def** %op0_high, align 8
  store %struct.rtx_def* %800, %struct.rtx_def** %op0_xhigh, align 8
  %801 = load %struct.rtx_def*, %struct.rtx_def** %op1_high, align 8
  store %struct.rtx_def* %801, %struct.rtx_def** %op1_xhigh, align 8
  br label %if.end.1251

if.end.1251:                                      ; preds = %if.else.1250, %if.then.1249
  br label %if.end.1252

if.end.1252:                                      ; preds = %if.end.1251, %if.end.1238
  %802 = load %struct.rtx_def*, %struct.rtx_def** %product, align 8
  %cmp1253 = icmp eq %struct.rtx_def* %802, null
  br i1 %cmp1253, label %land.lhs.true.1255, label %if.end.1293

land.lhs.true.1255:                               ; preds = %if.end.1252
  %803 = load i32, i32* %mode.addr, align 4
  %idxprom1256 = sext i32 %803 to i64
  %804 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  %handlers1257 = getelementptr inbounds %struct.optab, %struct.optab* %804, i32 0, i32 1
  %arrayidx1258 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1257, i32 0, i64 %idxprom1256
  %insn_code1259 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1258, i32 0, i32 0
  %805 = load i32, i32* %insn_code1259, align 4
  %cmp1260 = icmp ne i32 %805, 1317
  br i1 %cmp1260, label %if.then.1262, label %if.end.1293

if.then.1262:                                     ; preds = %land.lhs.true.1255
  %806 = load i32, i32* @target_flags, align 4
  %and1264 = and i32 %806, 33554432
  %tobool1265 = icmp ne i32 %and1264, 0
  %cond1266 = select i1 %tobool1265, i32 64, i32 32
  %sub1267 = sub nsw i32 %cond1266, 1
  %conv1268 = sext i32 %sub1267 to i64
  %call1269 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv1268)
  store %struct.rtx_def* %call1269, %struct.rtx_def** %wordm1, align 8
  %807 = load i32, i32* %mode.addr, align 4
  %808 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  %809 = load %struct.rtx_def*, %struct.rtx_def** %op0_low, align 8
  %810 = load %struct.rtx_def*, %struct.rtx_def** %op1_low, align 8
  %811 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call1270 = call %struct.rtx_def* @expand_binop(i32 %807, %struct.optab* %808, %struct.rtx_def* %809, %struct.rtx_def* %810, %struct.rtx_def* %811, i32 1, i32 0)
  store %struct.rtx_def* %call1270, %struct.rtx_def** %product, align 8
  %812 = load i32, i32* @word_mode, align 4
  %813 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %814 = load %struct.rtx_def*, %struct.rtx_def** %op0_low, align 8
  %815 = load %struct.rtx_def*, %struct.rtx_def** %wordm1, align 8
  %816 = load i32, i32* %next_methods, align 4
  %call1271 = call %struct.rtx_def* @expand_binop(i32 %812, %struct.optab* %813, %struct.rtx_def* %814, %struct.rtx_def* %815, %struct.rtx_def* null, i32 1, i32 %816)
  store %struct.rtx_def* %call1271, %struct.rtx_def** %op0_xhigh, align 8
  %817 = load %struct.rtx_def*, %struct.rtx_def** %op0_xhigh, align 8
  %tobool1272 = icmp ne %struct.rtx_def* %817, null
  br i1 %tobool1272, label %if.then.1273, label %if.else.1275

if.then.1273:                                     ; preds = %if.then.1262
  %818 = load i32, i32* @word_mode, align 4
  %819 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %820 = load %struct.rtx_def*, %struct.rtx_def** %op0_high, align 8
  %821 = load %struct.rtx_def*, %struct.rtx_def** %op0_xhigh, align 8
  %822 = load %struct.rtx_def*, %struct.rtx_def** %op0_xhigh, align 8
  %823 = load i32, i32* %next_methods, align 4
  %call1274 = call %struct.rtx_def* @expand_binop(i32 %818, %struct.optab* %819, %struct.rtx_def* %820, %struct.rtx_def* %821, %struct.rtx_def* %822, i32 0, i32 %823)
  store %struct.rtx_def* %call1274, %struct.rtx_def** %op0_xhigh, align 8
  br label %if.end.1281

if.else.1275:                                     ; preds = %if.then.1262
  %824 = load i32, i32* @word_mode, align 4
  %825 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  %826 = load %struct.rtx_def*, %struct.rtx_def** %op0_low, align 8
  %827 = load %struct.rtx_def*, %struct.rtx_def** %wordm1, align 8
  %828 = load i32, i32* %next_methods, align 4
  %call1276 = call %struct.rtx_def* @expand_binop(i32 %824, %struct.optab* %825, %struct.rtx_def* %826, %struct.rtx_def* %827, %struct.rtx_def* null, i32 0, i32 %828)
  store %struct.rtx_def* %call1276, %struct.rtx_def** %op0_xhigh, align 8
  %829 = load %struct.rtx_def*, %struct.rtx_def** %op0_xhigh, align 8
  %tobool1277 = icmp ne %struct.rtx_def* %829, null
  br i1 %tobool1277, label %if.then.1278, label %if.end.1280

if.then.1278:                                     ; preds = %if.else.1275
  %830 = load i32, i32* @word_mode, align 4
  %831 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %832 = load %struct.rtx_def*, %struct.rtx_def** %op0_high, align 8
  %833 = load %struct.rtx_def*, %struct.rtx_def** %op0_xhigh, align 8
  %834 = load %struct.rtx_def*, %struct.rtx_def** %op0_xhigh, align 8
  %835 = load i32, i32* %next_methods, align 4
  %call1279 = call %struct.rtx_def* @expand_binop(i32 %830, %struct.optab* %831, %struct.rtx_def* %832, %struct.rtx_def* %833, %struct.rtx_def* %834, i32 0, i32 %835)
  store %struct.rtx_def* %call1279, %struct.rtx_def** %op0_xhigh, align 8
  br label %if.end.1280

if.end.1280:                                      ; preds = %if.then.1278, %if.else.1275
  br label %if.end.1281

if.end.1281:                                      ; preds = %if.end.1280, %if.then.1273
  %836 = load i32, i32* @word_mode, align 4
  %837 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %838 = load %struct.rtx_def*, %struct.rtx_def** %op1_low, align 8
  %839 = load %struct.rtx_def*, %struct.rtx_def** %wordm1, align 8
  %840 = load i32, i32* %next_methods, align 4
  %call1282 = call %struct.rtx_def* @expand_binop(i32 %836, %struct.optab* %837, %struct.rtx_def* %838, %struct.rtx_def* %839, %struct.rtx_def* null, i32 1, i32 %840)
  store %struct.rtx_def* %call1282, %struct.rtx_def** %op1_xhigh, align 8
  %841 = load %struct.rtx_def*, %struct.rtx_def** %op1_xhigh, align 8
  %tobool1283 = icmp ne %struct.rtx_def* %841, null
  br i1 %tobool1283, label %if.then.1284, label %if.else.1286

if.then.1284:                                     ; preds = %if.end.1281
  %842 = load i32, i32* @word_mode, align 4
  %843 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %844 = load %struct.rtx_def*, %struct.rtx_def** %op1_high, align 8
  %845 = load %struct.rtx_def*, %struct.rtx_def** %op1_xhigh, align 8
  %846 = load %struct.rtx_def*, %struct.rtx_def** %op1_xhigh, align 8
  %847 = load i32, i32* %next_methods, align 4
  %call1285 = call %struct.rtx_def* @expand_binop(i32 %842, %struct.optab* %843, %struct.rtx_def* %844, %struct.rtx_def* %845, %struct.rtx_def* %846, i32 0, i32 %847)
  store %struct.rtx_def* %call1285, %struct.rtx_def** %op1_xhigh, align 8
  br label %if.end.1292

if.else.1286:                                     ; preds = %if.end.1281
  %848 = load i32, i32* @word_mode, align 4
  %849 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  %850 = load %struct.rtx_def*, %struct.rtx_def** %op1_low, align 8
  %851 = load %struct.rtx_def*, %struct.rtx_def** %wordm1, align 8
  %852 = load i32, i32* %next_methods, align 4
  %call1287 = call %struct.rtx_def* @expand_binop(i32 %848, %struct.optab* %849, %struct.rtx_def* %850, %struct.rtx_def* %851, %struct.rtx_def* null, i32 0, i32 %852)
  store %struct.rtx_def* %call1287, %struct.rtx_def** %op1_xhigh, align 8
  %853 = load %struct.rtx_def*, %struct.rtx_def** %op1_xhigh, align 8
  %tobool1288 = icmp ne %struct.rtx_def* %853, null
  br i1 %tobool1288, label %if.then.1289, label %if.end.1291

if.then.1289:                                     ; preds = %if.else.1286
  %854 = load i32, i32* @word_mode, align 4
  %855 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %856 = load %struct.rtx_def*, %struct.rtx_def** %op1_high, align 8
  %857 = load %struct.rtx_def*, %struct.rtx_def** %op1_xhigh, align 8
  %858 = load %struct.rtx_def*, %struct.rtx_def** %op1_xhigh, align 8
  %859 = load i32, i32* %next_methods, align 4
  %call1290 = call %struct.rtx_def* @expand_binop(i32 %854, %struct.optab* %855, %struct.rtx_def* %856, %struct.rtx_def* %857, %struct.rtx_def* %858, i32 0, i32 %859)
  store %struct.rtx_def* %call1290, %struct.rtx_def** %op1_xhigh, align 8
  br label %if.end.1291

if.end.1291:                                      ; preds = %if.then.1289, %if.else.1286
  br label %if.end.1292

if.end.1292:                                      ; preds = %if.end.1291, %if.then.1284
  br label %if.end.1293

if.end.1293:                                      ; preds = %if.end.1292, %land.lhs.true.1255, %if.end.1252
  %860 = load %struct.rtx_def*, %struct.rtx_def** %product, align 8
  %tobool1294 = icmp ne %struct.rtx_def* %860, null
  br i1 %tobool1294, label %land.lhs.true.1295, label %if.end.1353

land.lhs.true.1295:                               ; preds = %if.end.1293
  %861 = load %struct.rtx_def*, %struct.rtx_def** %op0_xhigh, align 8
  %tobool1296 = icmp ne %struct.rtx_def* %861, null
  br i1 %tobool1296, label %land.lhs.true.1297, label %if.end.1353

land.lhs.true.1297:                               ; preds = %land.lhs.true.1295
  %862 = load %struct.rtx_def*, %struct.rtx_def** %op1_xhigh, align 8
  %tobool1298 = icmp ne %struct.rtx_def* %862, null
  br i1 %tobool1298, label %if.then.1299, label %if.end.1353

if.then.1299:                                     ; preds = %land.lhs.true.1297
  %863 = load %struct.rtx_def*, %struct.rtx_def** %product, align 8
  %864 = load i32, i32* %high, align 4
  %865 = load i32, i32* %mode.addr, align 4
  %call1301 = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %863, i32 %864, i32 1, i32 %865)
  store %struct.rtx_def* %call1301, %struct.rtx_def** %product_high, align 8
  %866 = load i32, i32* @word_mode, align 4
  %867 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %868 = load %struct.rtx_def*, %struct.rtx_def** %op0_low, align 8
  %869 = load %struct.rtx_def*, %struct.rtx_def** %op1_xhigh, align 8
  %call1304 = call %struct.rtx_def* @expand_binop(i32 %866, %struct.optab* %867, %struct.rtx_def* %868, %struct.rtx_def* %869, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call1304, %struct.rtx_def** %temp1303, align 8
  %870 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %cmp1305 = icmp ne %struct.rtx_def* %870, null
  br i1 %cmp1305, label %if.then.1307, label %if.end.1309

if.then.1307:                                     ; preds = %if.then.1299
  %871 = load i32, i32* @word_mode, align 4
  %872 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %873 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %874 = load %struct.rtx_def*, %struct.rtx_def** %product_high, align 8
  %875 = load %struct.rtx_def*, %struct.rtx_def** %product_high, align 8
  %876 = load i32, i32* %next_methods, align 4
  %call1308 = call %struct.rtx_def* @expand_binop(i32 %871, %struct.optab* %872, %struct.rtx_def* %873, %struct.rtx_def* %874, %struct.rtx_def* %875, i32 0, i32 %876)
  store %struct.rtx_def* %call1308, %struct.rtx_def** %temp1303, align 8
  br label %if.end.1309

if.end.1309:                                      ; preds = %if.then.1307, %if.then.1299
  %877 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %cmp1310 = icmp ne %struct.rtx_def* %877, null
  br i1 %cmp1310, label %land.lhs.true.1312, label %if.end.1317

land.lhs.true.1312:                               ; preds = %if.end.1309
  %878 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %879 = load %struct.rtx_def*, %struct.rtx_def** %product_high, align 8
  %cmp1313 = icmp ne %struct.rtx_def* %878, %879
  br i1 %cmp1313, label %if.then.1315, label %if.end.1317

if.then.1315:                                     ; preds = %land.lhs.true.1312
  %880 = load %struct.rtx_def*, %struct.rtx_def** %product_high, align 8
  %881 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %call1316 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %880, %struct.rtx_def* %881)
  br label %if.end.1317

if.end.1317:                                      ; preds = %if.then.1315, %land.lhs.true.1312, %if.end.1309
  %882 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %cmp1318 = icmp ne %struct.rtx_def* %882, null
  br i1 %cmp1318, label %if.then.1320, label %if.end.1322

if.then.1320:                                     ; preds = %if.end.1317
  %883 = load i32, i32* @word_mode, align 4
  %884 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %885 = load %struct.rtx_def*, %struct.rtx_def** %op1_low, align 8
  %886 = load %struct.rtx_def*, %struct.rtx_def** %op0_xhigh, align 8
  %call1321 = call %struct.rtx_def* @expand_binop(i32 %883, %struct.optab* %884, %struct.rtx_def* %885, %struct.rtx_def* %886, %struct.rtx_def* null, i32 0, i32 0)
  store %struct.rtx_def* %call1321, %struct.rtx_def** %temp1303, align 8
  br label %if.end.1322

if.end.1322:                                      ; preds = %if.then.1320, %if.end.1317
  %887 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %cmp1323 = icmp ne %struct.rtx_def* %887, null
  br i1 %cmp1323, label %if.then.1325, label %if.end.1327

if.then.1325:                                     ; preds = %if.end.1322
  %888 = load i32, i32* @word_mode, align 4
  %889 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %890 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %891 = load %struct.rtx_def*, %struct.rtx_def** %product_high, align 8
  %892 = load %struct.rtx_def*, %struct.rtx_def** %product_high, align 8
  %893 = load i32, i32* %next_methods, align 4
  %call1326 = call %struct.rtx_def* @expand_binop(i32 %888, %struct.optab* %889, %struct.rtx_def* %890, %struct.rtx_def* %891, %struct.rtx_def* %892, i32 0, i32 %893)
  store %struct.rtx_def* %call1326, %struct.rtx_def** %temp1303, align 8
  br label %if.end.1327

if.end.1327:                                      ; preds = %if.then.1325, %if.end.1322
  %894 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %cmp1328 = icmp ne %struct.rtx_def* %894, null
  br i1 %cmp1328, label %land.lhs.true.1330, label %if.end.1335

land.lhs.true.1330:                               ; preds = %if.end.1327
  %895 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %896 = load %struct.rtx_def*, %struct.rtx_def** %product_high, align 8
  %cmp1331 = icmp ne %struct.rtx_def* %895, %896
  br i1 %cmp1331, label %if.then.1333, label %if.end.1335

if.then.1333:                                     ; preds = %land.lhs.true.1330
  %897 = load %struct.rtx_def*, %struct.rtx_def** %product_high, align 8
  %898 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %call1334 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %897, %struct.rtx_def* %898)
  br label %if.end.1335

if.end.1335:                                      ; preds = %if.then.1333, %land.lhs.true.1330, %if.end.1327
  %899 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %cmp1336 = icmp ne %struct.rtx_def* %899, null
  br i1 %cmp1336, label %if.then.1338, label %if.end.1352

if.then.1338:                                     ; preds = %if.end.1335
  %900 = load i32, i32* %mode.addr, align 4
  %idxprom1339 = sext i32 %900 to i64
  %901 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers1340 = getelementptr inbounds %struct.optab, %struct.optab* %901, i32 0, i32 1
  %arrayidx1341 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1340, i32 0, i64 %idxprom1339
  %insn_code1342 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1341, i32 0, i32 0
  %902 = load i32, i32* %insn_code1342, align 4
  %cmp1343 = icmp ne i32 %902, 1317
  br i1 %cmp1343, label %if.then.1345, label %if.end.1351

if.then.1345:                                     ; preds = %if.then.1338
  %903 = load %struct.rtx_def*, %struct.rtx_def** %product, align 8
  %904 = load %struct.rtx_def*, %struct.rtx_def** %product, align 8
  %call1346 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %903, %struct.rtx_def* %904)
  store %struct.rtx_def* %call1346, %struct.rtx_def** %temp1303, align 8
  %905 = load %struct.rtx_def*, %struct.rtx_def** %temp1303, align 8
  %906 = load i32, i32* %mode.addr, align 4
  %907 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1347 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %907)
  %908 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1348 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %908)
  %call1349 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 78, i32 %906, %struct.rtx_def* %call1347, %struct.rtx_def* %call1348)
  %call1350 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %905, i32 4, %struct.rtx_def* %call1349)
  br label %if.end.1351

if.end.1351:                                      ; preds = %if.then.1345, %if.then.1338
  %909 = load %struct.rtx_def*, %struct.rtx_def** %product, align 8
  store %struct.rtx_def* %909, %struct.rtx_def** %retval
  br label %return

if.end.1352:                                      ; preds = %if.end.1335
  br label %if.end.1353

if.end.1353:                                      ; preds = %if.end.1352, %land.lhs.true.1297, %land.lhs.true.1295, %if.end.1293
  %910 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %910)
  br label %if.end.1354

if.end.1354:                                      ; preds = %if.end.1353, %lor.lhs.false.1203, %land.lhs.true.1189, %land.lhs.true.1182, %land.lhs.true.1172, %land.lhs.true.1169, %if.end.1166
  %911 = load i32, i32* %class, align 4
  %cmp1355 = icmp eq i32 %911, 6
  br i1 %cmp1355, label %if.then.1360, label %lor.lhs.false.1357

lor.lhs.false.1357:                               ; preds = %if.end.1354
  %912 = load i32, i32* %class, align 4
  %cmp1358 = icmp eq i32 %912, 5
  br i1 %cmp1358, label %if.then.1360, label %if.end.1627

if.then.1360:                                     ; preds = %lor.lhs.false.1357, %if.end.1354
  store %struct.rtx_def* null, %struct.rtx_def** %real0, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %imag0, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %real1, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %imag1, align 8
  store i32 0, i32* %ok, align 4
  %913 = load i32, i32* %mode.addr, align 4
  %idxprom1373 = sext i32 %913 to i64
  %arrayidx1374 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom1373
  %914 = load i8, i8* %arrayidx1374, align 1
  %conv1375 = zext i8 %914 to i32
  %mul1376 = mul nsw i32 %conv1375, 8
  %915 = load i32, i32* %class, align 4
  %cmp1377 = icmp eq i32 %915, 5
  %cond1379 = select i1 %cmp1377, i32 1, i32 2
  %call1380 = call i32 @mode_for_size(i32 %mul1376, i32 %cond1379, i32 0)
  store i32 %call1380, i32* %submode, align 4
  %916 = load i32, i32* %submode, align 4
  %cmp1381 = icmp eq i32 %916, 51
  br i1 %cmp1381, label %if.then.1383, label %if.end.1384

if.then.1383:                                     ; preds = %if.then.1360
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1512, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expand_binop, i32 0, i32 0)) #6
  unreachable

if.end.1384:                                      ; preds = %if.then.1360
  %917 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool1385 = icmp ne %struct.rtx_def* %917, null
  br i1 %tobool1385, label %if.end.1388, label %if.then.1386

if.then.1386:                                     ; preds = %if.end.1384
  %918 = load i32, i32* %mode.addr, align 4
  %call1387 = call %struct.rtx_def* @gen_reg_rtx(i32 %918)
  store %struct.rtx_def* %call1387, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1388

if.end.1388:                                      ; preds = %if.then.1386, %if.end.1384
  call void @start_sequence()
  %919 = load i32, i32* %submode, align 4
  %920 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call1389 = call %struct.rtx_def* @gen_realpart(i32 %919, %struct.rtx_def* %920)
  store %struct.rtx_def* %call1389, %struct.rtx_def** %realr, align 8
  %921 = load i32, i32* %submode, align 4
  %922 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call1390 = call %struct.rtx_def* @gen_imagpart(i32 %921, %struct.rtx_def* %922)
  store %struct.rtx_def* %call1390, %struct.rtx_def** %imagr, align 8
  %923 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %924 = bitcast %struct.rtx_def* %923 to i32*
  %bf.load1391 = load i32, i32* %924, align 8
  %bf.lshr1392 = lshr i32 %bf.load1391, 16
  %bf.clear1393 = and i32 %bf.lshr1392, 255
  %925 = load i32, i32* %mode.addr, align 4
  %cmp1394 = icmp eq i32 %bf.clear1393, %925
  br i1 %cmp1394, label %if.then.1396, label %if.else.1399

if.then.1396:                                     ; preds = %if.end.1388
  %926 = load i32, i32* %submode, align 4
  %927 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1397 = call %struct.rtx_def* @gen_realpart(i32 %926, %struct.rtx_def* %927)
  store %struct.rtx_def* %call1397, %struct.rtx_def** %real0, align 8
  %928 = load i32, i32* %submode, align 4
  %929 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1398 = call %struct.rtx_def* @gen_imagpart(i32 %928, %struct.rtx_def* %929)
  store %struct.rtx_def* %call1398, %struct.rtx_def** %imag0, align 8
  br label %if.end.1400

if.else.1399:                                     ; preds = %if.end.1388
  %930 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %930, %struct.rtx_def** %real0, align 8
  br label %if.end.1400

if.end.1400:                                      ; preds = %if.else.1399, %if.then.1396
  %931 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %932 = bitcast %struct.rtx_def* %931 to i32*
  %bf.load1401 = load i32, i32* %932, align 8
  %bf.lshr1402 = lshr i32 %bf.load1401, 16
  %bf.clear1403 = and i32 %bf.lshr1402, 255
  %933 = load i32, i32* %mode.addr, align 4
  %cmp1404 = icmp eq i32 %bf.clear1403, %933
  br i1 %cmp1404, label %if.then.1406, label %if.else.1409

if.then.1406:                                     ; preds = %if.end.1400
  %934 = load i32, i32* %submode, align 4
  %935 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1407 = call %struct.rtx_def* @gen_realpart(i32 %934, %struct.rtx_def* %935)
  store %struct.rtx_def* %call1407, %struct.rtx_def** %real1, align 8
  %936 = load i32, i32* %submode, align 4
  %937 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1408 = call %struct.rtx_def* @gen_imagpart(i32 %936, %struct.rtx_def* %937)
  store %struct.rtx_def* %call1408, %struct.rtx_def** %imag1, align 8
  br label %if.end.1410

if.else.1409:                                     ; preds = %if.end.1400
  %938 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %938, %struct.rtx_def** %real1, align 8
  br label %if.end.1410

if.end.1410:                                      ; preds = %if.else.1409, %if.then.1406
  %939 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %cmp1411 = icmp eq %struct.rtx_def* %939, null
  br i1 %cmp1411, label %if.then.1422, label %lor.lhs.false.1413

lor.lhs.false.1413:                               ; preds = %if.end.1410
  %940 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %cmp1414 = icmp eq %struct.rtx_def* %940, null
  br i1 %cmp1414, label %if.then.1422, label %lor.lhs.false.1416

lor.lhs.false.1416:                               ; preds = %lor.lhs.false.1413
  %941 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %cmp1417 = icmp ne %struct.rtx_def* %941, null
  br i1 %cmp1417, label %if.end.1423, label %lor.lhs.false.1419

lor.lhs.false.1419:                               ; preds = %lor.lhs.false.1416
  %942 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %cmp1420 = icmp ne %struct.rtx_def* %942, null
  br i1 %cmp1420, label %if.end.1423, label %if.then.1422

if.then.1422:                                     ; preds = %lor.lhs.false.1419, %lor.lhs.false.1413, %if.end.1410
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1539, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expand_binop, i32 0, i32 0)) #6
  unreachable

if.end.1423:                                      ; preds = %lor.lhs.false.1419, %lor.lhs.false.1416
  %943 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code1424 = getelementptr inbounds %struct.optab, %struct.optab* %943, i32 0, i32 0
  %944 = load i32, i32* %code1424, align 4
  switch i32 %944, label %sw.default.1610 [
    i32 75, label %sw.bb
    i32 76, label %sw.bb
    i32 78, label %sw.bb.1470
    i32 79, label %sw.bb.1565
  ]

sw.bb:                                            ; preds = %if.end.1423, %if.end.1423
  %945 = load i32, i32* %submode, align 4
  %946 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %947 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %948 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %949 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %950 = load i32, i32* %unsignedp.addr, align 4
  %951 = load i32, i32* %methods.addr, align 4
  %call1425 = call %struct.rtx_def* @expand_binop(i32 %945, %struct.optab* %946, %struct.rtx_def* %947, %struct.rtx_def* %948, %struct.rtx_def* %949, i32 %950, i32 %951)
  store %struct.rtx_def* %call1425, %struct.rtx_def** %res, align 8
  %952 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp1426 = icmp eq %struct.rtx_def* %952, null
  br i1 %cmp1426, label %if.then.1428, label %if.else.1429

if.then.1428:                                     ; preds = %sw.bb
  br label %sw.epilog.1611

if.else.1429:                                     ; preds = %sw.bb
  %953 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %954 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %cmp1430 = icmp ne %struct.rtx_def* %953, %954
  br i1 %cmp1430, label %if.then.1432, label %if.end.1434

if.then.1432:                                     ; preds = %if.else.1429
  %955 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %956 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call1433 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %955, %struct.rtx_def* %956)
  br label %if.end.1434

if.end.1434:                                      ; preds = %if.then.1432, %if.else.1429
  br label %if.end.1435

if.end.1435:                                      ; preds = %if.end.1434
  %957 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %tobool1436 = icmp ne %struct.rtx_def* %957, null
  br i1 %tobool1436, label %land.lhs.true.1437, label %if.else.1441

land.lhs.true.1437:                               ; preds = %if.end.1435
  %958 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %tobool1438 = icmp ne %struct.rtx_def* %958, null
  br i1 %tobool1438, label %if.then.1439, label %if.else.1441

if.then.1439:                                     ; preds = %land.lhs.true.1437
  %959 = load i32, i32* %submode, align 4
  %960 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %961 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %962 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %963 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %964 = load i32, i32* %unsignedp.addr, align 4
  %965 = load i32, i32* %methods.addr, align 4
  %call1440 = call %struct.rtx_def* @expand_binop(i32 %959, %struct.optab* %960, %struct.rtx_def* %961, %struct.rtx_def* %962, %struct.rtx_def* %963, i32 %964, i32 %965)
  store %struct.rtx_def* %call1440, %struct.rtx_def** %res, align 8
  br label %if.end.1459

if.else.1441:                                     ; preds = %land.lhs.true.1437, %if.end.1435
  %966 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %tobool1442 = icmp ne %struct.rtx_def* %966, null
  br i1 %tobool1442, label %if.then.1443, label %if.else.1444

if.then.1443:                                     ; preds = %if.else.1441
  %967 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  store %struct.rtx_def* %967, %struct.rtx_def** %res, align 8
  br label %if.end.1458

if.else.1444:                                     ; preds = %if.else.1441
  %968 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code1445 = getelementptr inbounds %struct.optab, %struct.optab* %968, i32 0, i32 0
  %969 = load i32, i32* %code1445, align 4
  %cmp1446 = icmp eq i32 %969, 76
  br i1 %cmp1446, label %if.then.1448, label %if.else.1456

if.then.1448:                                     ; preds = %if.else.1444
  %970 = load i32, i32* %submode, align 4
  %971 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %972 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  %cmp1449 = icmp eq %struct.optab* %971, %972
  br i1 %cmp1449, label %cond.true.1451, label %cond.false.1452

cond.true.1451:                                   ; preds = %if.then.1448
  %973 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  br label %cond.end.1453

cond.false.1452:                                  ; preds = %if.then.1448
  %974 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  br label %cond.end.1453

cond.end.1453:                                    ; preds = %cond.false.1452, %cond.true.1451
  %cond1454 = phi %struct.optab* [ %973, %cond.true.1451 ], [ %974, %cond.false.1452 ]
  %975 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %976 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %977 = load i32, i32* %unsignedp.addr, align 4
  %call1455 = call %struct.rtx_def* @expand_unop(i32 %970, %struct.optab* %cond1454, %struct.rtx_def* %975, %struct.rtx_def* %976, i32 %977)
  store %struct.rtx_def* %call1455, %struct.rtx_def** %res, align 8
  br label %if.end.1457

if.else.1456:                                     ; preds = %if.else.1444
  %978 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  store %struct.rtx_def* %978, %struct.rtx_def** %res, align 8
  br label %if.end.1457

if.end.1457:                                      ; preds = %if.else.1456, %cond.end.1453
  br label %if.end.1458

if.end.1458:                                      ; preds = %if.end.1457, %if.then.1443
  br label %if.end.1459

if.end.1459:                                      ; preds = %if.end.1458, %if.then.1439
  %979 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp1460 = icmp eq %struct.rtx_def* %979, null
  br i1 %cmp1460, label %if.then.1462, label %if.else.1463

if.then.1462:                                     ; preds = %if.end.1459
  br label %sw.epilog.1611

if.else.1463:                                     ; preds = %if.end.1459
  %980 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %981 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %cmp1464 = icmp ne %struct.rtx_def* %980, %981
  br i1 %cmp1464, label %if.then.1466, label %if.end.1468

if.then.1466:                                     ; preds = %if.else.1463
  %982 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %983 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call1467 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %982, %struct.rtx_def* %983)
  br label %if.end.1468

if.end.1468:                                      ; preds = %if.then.1466, %if.else.1463
  br label %if.end.1469

if.end.1469:                                      ; preds = %if.end.1468
  store i32 1, i32* %ok, align 4
  br label %sw.epilog.1611

sw.bb.1470:                                       ; preds = %if.end.1423
  %984 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %tobool1471 = icmp ne %struct.rtx_def* %984, null
  br i1 %tobool1471, label %land.lhs.true.1472, label %if.else.1533

land.lhs.true.1472:                               ; preds = %sw.bb.1470
  %985 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %tobool1473 = icmp ne %struct.rtx_def* %985, null
  br i1 %tobool1473, label %if.then.1474, label %if.else.1533

if.then.1474:                                     ; preds = %land.lhs.true.1472
  %986 = load i32, i32* %submode, align 4
  %987 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %call1477 = call %struct.rtx_def* @force_reg(i32 %986, %struct.rtx_def* %987)
  store %struct.rtx_def* %call1477, %struct.rtx_def** %real0, align 8
  %988 = load i32, i32* %submode, align 4
  %989 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %call1478 = call %struct.rtx_def* @force_reg(i32 %988, %struct.rtx_def* %989)
  store %struct.rtx_def* %call1478, %struct.rtx_def** %real1, align 8
  %990 = load i32, i32* %submode, align 4
  %991 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %call1479 = call %struct.rtx_def* @force_reg(i32 %990, %struct.rtx_def* %991)
  store %struct.rtx_def* %call1479, %struct.rtx_def** %imag0, align 8
  %992 = load i32, i32* %submode, align 4
  %993 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %call1480 = call %struct.rtx_def* @force_reg(i32 %992, %struct.rtx_def* %993)
  store %struct.rtx_def* %call1480, %struct.rtx_def** %imag1, align 8
  %994 = load i32, i32* %submode, align 4
  %995 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %996 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %997 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %998 = load i32, i32* %unsignedp.addr, align 4
  %999 = load i32, i32* %methods.addr, align 4
  %call1481 = call %struct.rtx_def* @expand_binop(i32 %994, %struct.optab* %995, %struct.rtx_def* %996, %struct.rtx_def* %997, %struct.rtx_def* null, i32 %998, i32 %999)
  store %struct.rtx_def* %call1481, %struct.rtx_def** %temp1, align 8
  %1000 = load i32, i32* %submode, align 4
  %1001 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1002 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %1003 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %1004 = load i32, i32* %unsignedp.addr, align 4
  %1005 = load i32, i32* %methods.addr, align 4
  %call1482 = call %struct.rtx_def* @expand_binop(i32 %1000, %struct.optab* %1001, %struct.rtx_def* %1002, %struct.rtx_def* %1003, %struct.rtx_def* null, i32 %1004, i32 %1005)
  store %struct.rtx_def* %call1482, %struct.rtx_def** %temp2, align 8
  %1006 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp1483 = icmp eq %struct.rtx_def* %1006, null
  br i1 %cmp1483, label %if.then.1488, label %lor.lhs.false.1485

lor.lhs.false.1485:                               ; preds = %if.then.1474
  %1007 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %cmp1486 = icmp eq %struct.rtx_def* %1007, null
  br i1 %cmp1486, label %if.then.1488, label %if.end.1489

if.then.1488:                                     ; preds = %lor.lhs.false.1485, %if.then.1474
  br label %sw.epilog.1611

if.end.1489:                                      ; preds = %lor.lhs.false.1485
  %1008 = load i32, i32* %submode, align 4
  %1009 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1010 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  %cmp1490 = icmp eq %struct.optab* %1009, %1010
  br i1 %cmp1490, label %cond.true.1492, label %cond.false.1493

cond.true.1492:                                   ; preds = %if.end.1489
  %1011 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  br label %cond.end.1494

cond.false.1493:                                  ; preds = %if.end.1489
  %1012 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  br label %cond.end.1494

cond.end.1494:                                    ; preds = %cond.false.1493, %cond.true.1492
  %cond1495 = phi %struct.optab* [ %1011, %cond.true.1492 ], [ %1012, %cond.false.1493 ]
  %1013 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %1014 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %1015 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %1016 = load i32, i32* %unsignedp.addr, align 4
  %1017 = load i32, i32* %methods.addr, align 4
  %call1496 = call %struct.rtx_def* @expand_binop(i32 %1008, %struct.optab* %cond1495, %struct.rtx_def* %1013, %struct.rtx_def* %1014, %struct.rtx_def* %1015, i32 %1016, i32 %1017)
  store %struct.rtx_def* %call1496, %struct.rtx_def** %res, align 8
  %1018 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp1497 = icmp eq %struct.rtx_def* %1018, null
  br i1 %cmp1497, label %if.then.1499, label %if.else.1500

if.then.1499:                                     ; preds = %cond.end.1494
  br label %sw.epilog.1611

if.else.1500:                                     ; preds = %cond.end.1494
  %1019 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %1020 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %cmp1501 = icmp ne %struct.rtx_def* %1019, %1020
  br i1 %cmp1501, label %if.then.1503, label %if.end.1505

if.then.1503:                                     ; preds = %if.else.1500
  %1021 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %1022 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call1504 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1021, %struct.rtx_def* %1022)
  br label %if.end.1505

if.end.1505:                                      ; preds = %if.then.1503, %if.else.1500
  br label %if.end.1506

if.end.1506:                                      ; preds = %if.end.1505
  %1023 = load i32, i32* %submode, align 4
  %1024 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1025 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %1026 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %1027 = load i32, i32* %unsignedp.addr, align 4
  %1028 = load i32, i32* %methods.addr, align 4
  %call1507 = call %struct.rtx_def* @expand_binop(i32 %1023, %struct.optab* %1024, %struct.rtx_def* %1025, %struct.rtx_def* %1026, %struct.rtx_def* null, i32 %1027, i32 %1028)
  store %struct.rtx_def* %call1507, %struct.rtx_def** %temp1, align 8
  %1029 = load i32, i32* %submode, align 4
  %1030 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1031 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %1032 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %1033 = load i32, i32* %unsignedp.addr, align 4
  %1034 = load i32, i32* %methods.addr, align 4
  %call1508 = call %struct.rtx_def* @expand_binop(i32 %1029, %struct.optab* %1030, %struct.rtx_def* %1031, %struct.rtx_def* %1032, %struct.rtx_def* null, i32 %1033, i32 %1034)
  store %struct.rtx_def* %call1508, %struct.rtx_def** %temp2, align 8
  %1035 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp1509 = icmp eq %struct.rtx_def* %1035, null
  br i1 %cmp1509, label %if.then.1514, label %lor.lhs.false.1511

lor.lhs.false.1511:                               ; preds = %if.end.1506
  %1036 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %cmp1512 = icmp eq %struct.rtx_def* %1036, null
  br i1 %cmp1512, label %if.then.1514, label %if.end.1515

if.then.1514:                                     ; preds = %lor.lhs.false.1511, %if.end.1506
  br label %sw.epilog.1611

if.end.1515:                                      ; preds = %lor.lhs.false.1511
  %1037 = load i32, i32* %submode, align 4
  %1038 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1039 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  %cmp1516 = icmp eq %struct.optab* %1038, %1039
  br i1 %cmp1516, label %cond.true.1518, label %cond.false.1519

cond.true.1518:                                   ; preds = %if.end.1515
  %1040 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  br label %cond.end.1520

cond.false.1519:                                  ; preds = %if.end.1515
  %1041 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  br label %cond.end.1520

cond.end.1520:                                    ; preds = %cond.false.1519, %cond.true.1518
  %cond1521 = phi %struct.optab* [ %1040, %cond.true.1518 ], [ %1041, %cond.false.1519 ]
  %1042 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %1043 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %1044 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %1045 = load i32, i32* %unsignedp.addr, align 4
  %1046 = load i32, i32* %methods.addr, align 4
  %call1522 = call %struct.rtx_def* @expand_binop(i32 %1037, %struct.optab* %cond1521, %struct.rtx_def* %1042, %struct.rtx_def* %1043, %struct.rtx_def* %1044, i32 %1045, i32 %1046)
  store %struct.rtx_def* %call1522, %struct.rtx_def** %res, align 8
  %1047 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp1523 = icmp eq %struct.rtx_def* %1047, null
  br i1 %cmp1523, label %if.then.1525, label %if.else.1526

if.then.1525:                                     ; preds = %cond.end.1520
  br label %sw.epilog.1611

if.else.1526:                                     ; preds = %cond.end.1520
  %1048 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %1049 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %cmp1527 = icmp ne %struct.rtx_def* %1048, %1049
  br i1 %cmp1527, label %if.then.1529, label %if.end.1531

if.then.1529:                                     ; preds = %if.else.1526
  %1050 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %1051 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call1530 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1050, %struct.rtx_def* %1051)
  br label %if.end.1531

if.end.1531:                                      ; preds = %if.then.1529, %if.else.1526
  br label %if.end.1532

if.end.1532:                                      ; preds = %if.end.1531
  store i32 1, i32* %ok, align 4
  br label %if.end.1564

if.else.1533:                                     ; preds = %land.lhs.true.1472, %sw.bb.1470
  %1052 = load i32, i32* %submode, align 4
  %1053 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %call1534 = call %struct.rtx_def* @force_reg(i32 %1052, %struct.rtx_def* %1053)
  store %struct.rtx_def* %call1534, %struct.rtx_def** %real0, align 8
  %1054 = load i32, i32* %submode, align 4
  %1055 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %call1535 = call %struct.rtx_def* @force_reg(i32 %1054, %struct.rtx_def* %1055)
  store %struct.rtx_def* %call1535, %struct.rtx_def** %real1, align 8
  %1056 = load i32, i32* %submode, align 4
  %1057 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1058 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %1059 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %1060 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %1061 = load i32, i32* %unsignedp.addr, align 4
  %1062 = load i32, i32* %methods.addr, align 4
  %call1536 = call %struct.rtx_def* @expand_binop(i32 %1056, %struct.optab* %1057, %struct.rtx_def* %1058, %struct.rtx_def* %1059, %struct.rtx_def* %1060, i32 %1061, i32 %1062)
  store %struct.rtx_def* %call1536, %struct.rtx_def** %res, align 8
  %1063 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp1537 = icmp eq %struct.rtx_def* %1063, null
  br i1 %cmp1537, label %if.then.1539, label %if.else.1540

if.then.1539:                                     ; preds = %if.else.1533
  br label %sw.epilog.1611

if.else.1540:                                     ; preds = %if.else.1533
  %1064 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %1065 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %cmp1541 = icmp ne %struct.rtx_def* %1064, %1065
  br i1 %cmp1541, label %if.then.1543, label %if.end.1545

if.then.1543:                                     ; preds = %if.else.1540
  %1066 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %1067 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call1544 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1066, %struct.rtx_def* %1067)
  br label %if.end.1545

if.end.1545:                                      ; preds = %if.then.1543, %if.else.1540
  br label %if.end.1546

if.end.1546:                                      ; preds = %if.end.1545
  %1068 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %cmp1547 = icmp ne %struct.rtx_def* %1068, null
  br i1 %cmp1547, label %if.then.1549, label %if.else.1551

if.then.1549:                                     ; preds = %if.end.1546
  %1069 = load i32, i32* %submode, align 4
  %1070 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1071 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %1072 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %1073 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %1074 = load i32, i32* %unsignedp.addr, align 4
  %1075 = load i32, i32* %methods.addr, align 4
  %call1550 = call %struct.rtx_def* @expand_binop(i32 %1069, %struct.optab* %1070, %struct.rtx_def* %1071, %struct.rtx_def* %1072, %struct.rtx_def* %1073, i32 %1074, i32 %1075)
  store %struct.rtx_def* %call1550, %struct.rtx_def** %res, align 8
  br label %if.end.1553

if.else.1551:                                     ; preds = %if.end.1546
  %1076 = load i32, i32* %submode, align 4
  %1077 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1078 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %1079 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %1080 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %1081 = load i32, i32* %unsignedp.addr, align 4
  %1082 = load i32, i32* %methods.addr, align 4
  %call1552 = call %struct.rtx_def* @expand_binop(i32 %1076, %struct.optab* %1077, %struct.rtx_def* %1078, %struct.rtx_def* %1079, %struct.rtx_def* %1080, i32 %1081, i32 %1082)
  store %struct.rtx_def* %call1552, %struct.rtx_def** %res, align 8
  br label %if.end.1553

if.end.1553:                                      ; preds = %if.else.1551, %if.then.1549
  %1083 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp1554 = icmp eq %struct.rtx_def* %1083, null
  br i1 %cmp1554, label %if.then.1556, label %if.else.1557

if.then.1556:                                     ; preds = %if.end.1553
  br label %sw.epilog.1611

if.else.1557:                                     ; preds = %if.end.1553
  %1084 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %1085 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %cmp1558 = icmp ne %struct.rtx_def* %1084, %1085
  br i1 %cmp1558, label %if.then.1560, label %if.end.1562

if.then.1560:                                     ; preds = %if.else.1557
  %1086 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %1087 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call1561 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1086, %struct.rtx_def* %1087)
  br label %if.end.1562

if.end.1562:                                      ; preds = %if.then.1560, %if.else.1557
  br label %if.end.1563

if.end.1563:                                      ; preds = %if.end.1562
  store i32 1, i32* %ok, align 4
  br label %if.end.1564

if.end.1564:                                      ; preds = %if.end.1563, %if.end.1532
  br label %sw.epilog.1611

sw.bb.1565:                                       ; preds = %if.end.1423
  %1088 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %cmp1566 = icmp eq %struct.rtx_def* %1088, null
  br i1 %cmp1566, label %if.then.1568, label %if.else.1604

if.then.1568:                                     ; preds = %sw.bb.1565
  %1089 = load i32, i32* %submode, align 4
  %1090 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %call1569 = call %struct.rtx_def* @force_reg(i32 %1089, %struct.rtx_def* %1090)
  store %struct.rtx_def* %call1569, %struct.rtx_def** %real1, align 8
  %1091 = load i32, i32* %class, align 4
  %cmp1570 = icmp eq i32 %1091, 6
  br i1 %cmp1570, label %if.then.1572, label %if.else.1574

if.then.1572:                                     ; preds = %if.then.1568
  %1092 = load i32, i32* %submode, align 4
  %1093 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1094 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %1095 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %1096 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %1097 = load i32, i32* %unsignedp.addr, align 4
  %1098 = load i32, i32* %methods.addr, align 4
  %call1573 = call %struct.rtx_def* @expand_binop(i32 %1092, %struct.optab* %1093, %struct.rtx_def* %1094, %struct.rtx_def* %1095, %struct.rtx_def* %1096, i32 %1097, i32 %1098)
  store %struct.rtx_def* %call1573, %struct.rtx_def** %res, align 8
  br label %if.end.1576

if.else.1574:                                     ; preds = %if.then.1568
  %1099 = load i32, i32* %submode, align 4
  %1100 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %1101 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %1102 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %1103 = load i32, i32* %unsignedp.addr, align 4
  %call1575 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %1099, %struct.rtx_def* %1100, %struct.rtx_def* %1101, %struct.rtx_def* %1102, i32 %1103)
  store %struct.rtx_def* %call1575, %struct.rtx_def** %res, align 8
  br label %if.end.1576

if.end.1576:                                      ; preds = %if.else.1574, %if.then.1572
  %1104 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp1577 = icmp eq %struct.rtx_def* %1104, null
  br i1 %cmp1577, label %if.then.1579, label %if.else.1580

if.then.1579:                                     ; preds = %if.end.1576
  br label %sw.epilog.1611

if.else.1580:                                     ; preds = %if.end.1576
  %1105 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %1106 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %cmp1581 = icmp ne %struct.rtx_def* %1105, %1106
  br i1 %cmp1581, label %if.then.1583, label %if.end.1585

if.then.1583:                                     ; preds = %if.else.1580
  %1107 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %1108 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call1584 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1107, %struct.rtx_def* %1108)
  br label %if.end.1585

if.end.1585:                                      ; preds = %if.then.1583, %if.else.1580
  br label %if.end.1586

if.end.1586:                                      ; preds = %if.end.1585
  %1109 = load i32, i32* %class, align 4
  %cmp1587 = icmp eq i32 %1109, 6
  br i1 %cmp1587, label %if.then.1589, label %if.else.1591

if.then.1589:                                     ; preds = %if.end.1586
  %1110 = load i32, i32* %submode, align 4
  %1111 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1112 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %1113 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %1114 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %1115 = load i32, i32* %unsignedp.addr, align 4
  %1116 = load i32, i32* %methods.addr, align 4
  %call1590 = call %struct.rtx_def* @expand_binop(i32 %1110, %struct.optab* %1111, %struct.rtx_def* %1112, %struct.rtx_def* %1113, %struct.rtx_def* %1114, i32 %1115, i32 %1116)
  store %struct.rtx_def* %call1590, %struct.rtx_def** %res, align 8
  br label %if.end.1593

if.else.1591:                                     ; preds = %if.end.1586
  %1117 = load i32, i32* %submode, align 4
  %1118 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %1119 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %1120 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %1121 = load i32, i32* %unsignedp.addr, align 4
  %call1592 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %1117, %struct.rtx_def* %1118, %struct.rtx_def* %1119, %struct.rtx_def* %1120, i32 %1121)
  store %struct.rtx_def* %call1592, %struct.rtx_def** %res, align 8
  br label %if.end.1593

if.end.1593:                                      ; preds = %if.else.1591, %if.then.1589
  %1122 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp1594 = icmp eq %struct.rtx_def* %1122, null
  br i1 %cmp1594, label %if.then.1596, label %if.else.1597

if.then.1596:                                     ; preds = %if.end.1593
  br label %sw.epilog.1611

if.else.1597:                                     ; preds = %if.end.1593
  %1123 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %1124 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %cmp1598 = icmp ne %struct.rtx_def* %1123, %1124
  br i1 %cmp1598, label %if.then.1600, label %if.end.1602

if.then.1600:                                     ; preds = %if.else.1597
  %1125 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %1126 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call1601 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %1125, %struct.rtx_def* %1126)
  br label %if.end.1602

if.end.1602:                                      ; preds = %if.then.1600, %if.else.1597
  br label %if.end.1603

if.end.1603:                                      ; preds = %if.end.1602
  store i32 1, i32* %ok, align 4
  br label %if.end.1609

if.else.1604:                                     ; preds = %sw.bb.1565
  %1127 = load i32, i32* @flag_complex_divide_method, align 4
  switch i32 %1127, label %sw.default [
    i32 0, label %sw.bb.1605
    i32 1, label %sw.bb.1607
  ]

sw.bb.1605:                                       ; preds = %if.else.1604
  %1128 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %1129 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %1130 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %1131 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %1132 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %1133 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %1134 = load i32, i32* %submode, align 4
  %1135 = load i32, i32* %unsignedp.addr, align 4
  %1136 = load i32, i32* %methods.addr, align 4
  %1137 = load i32, i32* %class, align 4
  %1138 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %call1606 = call i32 @expand_cmplxdiv_straight(%struct.rtx_def* %1128, %struct.rtx_def* %1129, %struct.rtx_def* %1130, %struct.rtx_def* %1131, %struct.rtx_def* %1132, %struct.rtx_def* %1133, i32 %1134, i32 %1135, i32 %1136, i32 %1137, %struct.optab* %1138)
  store i32 %call1606, i32* %ok, align 4
  br label %sw.epilog

sw.bb.1607:                                       ; preds = %if.else.1604
  %1139 = load %struct.rtx_def*, %struct.rtx_def** %real0, align 8
  %1140 = load %struct.rtx_def*, %struct.rtx_def** %real1, align 8
  %1141 = load %struct.rtx_def*, %struct.rtx_def** %imag0, align 8
  %1142 = load %struct.rtx_def*, %struct.rtx_def** %imag1, align 8
  %1143 = load %struct.rtx_def*, %struct.rtx_def** %realr, align 8
  %1144 = load %struct.rtx_def*, %struct.rtx_def** %imagr, align 8
  %1145 = load i32, i32* %submode, align 4
  %1146 = load i32, i32* %unsignedp.addr, align 4
  %1147 = load i32, i32* %methods.addr, align 4
  %1148 = load i32, i32* %class, align 4
  %1149 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %call1608 = call i32 @expand_cmplxdiv_wide(%struct.rtx_def* %1139, %struct.rtx_def* %1140, %struct.rtx_def* %1141, %struct.rtx_def* %1142, %struct.rtx_def* %1143, %struct.rtx_def* %1144, i32 %1145, i32 %1146, i32 %1147, i32 %1148, %struct.optab* %1149)
  store i32 %call1608, i32* %ok, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.else.1604
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1713, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expand_binop, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.1607, %sw.bb.1605
  br label %if.end.1609

if.end.1609:                                      ; preds = %sw.epilog, %if.end.1603
  br label %sw.epilog.1611

sw.default.1610:                                  ; preds = %if.end.1423
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1719, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expand_binop, i32 0, i32 0)) #6
  unreachable

sw.epilog.1611:                                   ; preds = %if.end.1609, %if.then.1596, %if.then.1579, %if.end.1564, %if.then.1556, %if.then.1539, %if.then.1525, %if.then.1514, %if.then.1499, %if.then.1488, %if.end.1469, %if.then.1462, %if.then.1428
  %call1612 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call1612, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %1150 = load i32, i32* %ok, align 4
  %tobool1613 = icmp ne i32 %1150, 0
  br i1 %tobool1613, label %if.then.1614, label %if.end.1626

if.then.1614:                                     ; preds = %sw.epilog.1611
  %1151 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code1615 = getelementptr inbounds %struct.optab, %struct.optab* %1151, i32 0, i32 0
  %1152 = load i32, i32* %code1615, align 4
  %cmp1616 = icmp ne i32 %1152, 0
  br i1 %cmp1616, label %if.then.1618, label %if.else.1623

if.then.1618:                                     ; preds = %if.then.1614
  %1153 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code1619 = getelementptr inbounds %struct.optab, %struct.optab* %1153, i32 0, i32 0
  %1154 = load i32, i32* %code1619, align 4
  %1155 = load i32, i32* %mode.addr, align 4
  %1156 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1620 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %1156)
  %1157 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1621 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %1157)
  %call1622 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %1154, i32 %1155, %struct.rtx_def* %call1620, %struct.rtx_def* %call1621)
  store %struct.rtx_def* %call1622, %struct.rtx_def** %equiv_value1370, align 8
  br label %if.end.1624

if.else.1623:                                     ; preds = %if.then.1614
  store %struct.rtx_def* null, %struct.rtx_def** %equiv_value1370, align 8
  br label %if.end.1624

if.end.1624:                                      ; preds = %if.else.1623, %if.then.1618
  %1158 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %1159 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1160 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1161 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %1162 = load %struct.rtx_def*, %struct.rtx_def** %equiv_value1370, align 8
  %call1625 = call %struct.rtx_def* @emit_no_conflict_block(%struct.rtx_def* %1158, %struct.rtx_def* %1159, %struct.rtx_def* %1160, %struct.rtx_def* %1161, %struct.rtx_def* %1162)
  %1163 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %1163, %struct.rtx_def** %retval
  br label %return

if.end.1626:                                      ; preds = %sw.epilog.1611
  br label %if.end.1627

if.end.1627:                                      ; preds = %if.end.1626, %lor.lhs.false.1357
  %1164 = load i32, i32* %mode.addr, align 4
  %idxprom1628 = sext i32 %1164 to i64
  %1165 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers1629 = getelementptr inbounds %struct.optab, %struct.optab* %1165, i32 0, i32 1
  %arrayidx1630 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1629, i32 0, i64 %idxprom1628
  %libfunc = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1630, i32 0, i32 1
  %1166 = load %struct.rtx_def*, %struct.rtx_def** %libfunc, align 8
  %tobool1631 = icmp ne %struct.rtx_def* %1166, null
  br i1 %tobool1631, label %land.lhs.true.1632, label %if.end.1671

land.lhs.true.1632:                               ; preds = %if.end.1627
  %1167 = load i32, i32* %methods.addr, align 4
  %cmp1633 = icmp eq i32 %1167, 1
  br i1 %cmp1633, label %if.then.1638, label %lor.lhs.false.1635

lor.lhs.false.1635:                               ; preds = %land.lhs.true.1632
  %1168 = load i32, i32* %methods.addr, align 4
  %cmp1636 = icmp eq i32 %1168, 3
  br i1 %cmp1636, label %if.then.1638, label %if.end.1671

if.then.1638:                                     ; preds = %lor.lhs.false.1635, %land.lhs.true.1632
  %1169 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %1169, %struct.rtx_def** %op1x, align 8
  %1170 = load i32, i32* %mode.addr, align 4
  store i32 %1170, i32* %op1_mode, align 4
  call void @start_sequence()
  %1171 = load i32, i32* %shift_op, align 4
  %tobool1644 = icmp ne i32 %1171, 0
  br i1 %tobool1644, label %if.then.1645, label %if.end.1647

if.then.1645:                                     ; preds = %if.then.1638
  %1172 = load i32, i32* @word_mode, align 4
  store i32 %1172, i32* %op1_mode, align 4
  %1173 = load i32, i32* @word_mode, align 4
  %1174 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1646 = call %struct.rtx_def* @convert_to_mode(i32 %1173, %struct.rtx_def* %1174, i32 1)
  store %struct.rtx_def* %call1646, %struct.rtx_def** %op1x, align 8
  br label %if.end.1647

if.end.1647:                                      ; preds = %if.then.1645, %if.then.1638
  %1175 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1176 = bitcast %struct.rtx_def* %1175 to i32*
  %bf.load1648 = load i32, i32* %1176, align 8
  %bf.lshr1649 = lshr i32 %bf.load1648, 16
  %bf.clear1650 = and i32 %bf.lshr1649, 255
  %cmp1651 = icmp ne i32 %bf.clear1650, 0
  br i1 %cmp1651, label %land.lhs.true.1653, label %if.end.1661

land.lhs.true.1653:                               ; preds = %if.end.1647
  %1177 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1178 = bitcast %struct.rtx_def* %1177 to i32*
  %bf.load1654 = load i32, i32* %1178, align 8
  %bf.lshr1655 = lshr i32 %bf.load1654, 16
  %bf.clear1656 = and i32 %bf.lshr1655, 255
  %1179 = load i32, i32* %mode.addr, align 4
  %cmp1657 = icmp ne i32 %bf.clear1656, %1179
  br i1 %cmp1657, label %if.then.1659, label %if.end.1661

if.then.1659:                                     ; preds = %land.lhs.true.1653
  %1180 = load i32, i32* %mode.addr, align 4
  %1181 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1182 = load i32, i32* %unsignedp.addr, align 4
  %call1660 = call %struct.rtx_def* @convert_to_mode(i32 %1180, %struct.rtx_def* %1181, i32 %1182)
  store %struct.rtx_def* %call1660, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.1661

if.end.1661:                                      ; preds = %if.then.1659, %land.lhs.true.1653, %if.end.1647
  %1183 = load i32, i32* %mode.addr, align 4
  %idxprom1662 = sext i32 %1183 to i64
  %1184 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers1663 = getelementptr inbounds %struct.optab, %struct.optab* %1184, i32 0, i32 1
  %arrayidx1664 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1663, i32 0, i64 %idxprom1662
  %libfunc1665 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1664, i32 0, i32 1
  %1185 = load %struct.rtx_def*, %struct.rtx_def** %libfunc1665, align 8
  %1186 = load i32, i32* %mode.addr, align 4
  %1187 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1188 = load i32, i32* %mode.addr, align 4
  %1189 = load %struct.rtx_def*, %struct.rtx_def** %op1x, align 8
  %1190 = load i32, i32* %op1_mode, align 4
  %call1666 = call %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, ...) @emit_library_call_value(%struct.rtx_def* %1185, %struct.rtx_def* null, i32 1, i32 %1186, i32 2, %struct.rtx_def* %1187, i32 %1188, %struct.rtx_def* %1189, i32 %1190)
  store %struct.rtx_def* %call1666, %struct.rtx_def** %value, align 8
  %call1667 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call1667, %struct.rtx_def** %insns1640, align 8
  call void @end_sequence()
  %1191 = load i32, i32* %mode.addr, align 4
  %call1668 = call %struct.rtx_def* @gen_reg_rtx(i32 %1191)
  store %struct.rtx_def* %call1668, %struct.rtx_def** %target.addr, align 8
  %1192 = load %struct.rtx_def*, %struct.rtx_def** %insns1640, align 8
  %1193 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1194 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %1195 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code1669 = getelementptr inbounds %struct.optab, %struct.optab* %1195, i32 0, i32 0
  %1196 = load i32, i32* %code1669, align 4
  %1197 = load i32, i32* %mode.addr, align 4
  %1198 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1199 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call1670 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %1196, i32 %1197, %struct.rtx_def* %1198, %struct.rtx_def* %1199)
  call void @emit_libcall_block(%struct.rtx_def* %1192, %struct.rtx_def* %1193, %struct.rtx_def* %1194, %struct.rtx_def* %call1670)
  %1200 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %1200, %struct.rtx_def** %retval
  br label %return

if.end.1671:                                      ; preds = %lor.lhs.false.1635, %if.end.1627
  %1201 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %1201)
  %1202 = load i32, i32* %methods.addr, align 4
  %cmp1672 = icmp eq i32 %1202, 2
  br i1 %cmp1672, label %if.end.1681, label %lor.lhs.false.1674

lor.lhs.false.1674:                               ; preds = %if.end.1671
  %1203 = load i32, i32* %methods.addr, align 4
  %cmp1675 = icmp eq i32 %1203, 3
  br i1 %cmp1675, label %if.end.1681, label %lor.lhs.false.1677

lor.lhs.false.1677:                               ; preds = %lor.lhs.false.1674
  %1204 = load i32, i32* %methods.addr, align 4
  %cmp1678 = icmp eq i32 %1204, 4
  br i1 %cmp1678, label %if.end.1681, label %if.then.1680

if.then.1680:                                     ; preds = %lor.lhs.false.1677
  %1205 = load %struct.rtx_def*, %struct.rtx_def** %entry_last, align 8
  call void @delete_insns_since(%struct.rtx_def* %1205)
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.1681:                                      ; preds = %lor.lhs.false.1677, %lor.lhs.false.1674, %if.end.1671
  %1206 = load i32, i32* %methods.addr, align 4
  %cmp1682 = icmp eq i32 %1206, 3
  %cond1684 = select i1 %cmp1682, i32 1, i32 0
  store i32 %cond1684, i32* %methods.addr, align 4
  %1207 = load i32, i32* %class, align 4
  %cmp1685 = icmp eq i32 %1207, 1
  br i1 %cmp1685, label %if.then.1693, label %lor.lhs.false.1687

lor.lhs.false.1687:                               ; preds = %if.end.1681
  %1208 = load i32, i32* %class, align 4
  %cmp1688 = icmp eq i32 %1208, 2
  br i1 %cmp1688, label %if.then.1693, label %lor.lhs.false.1690

lor.lhs.false.1690:                               ; preds = %lor.lhs.false.1687
  %1209 = load i32, i32* %class, align 4
  %cmp1691 = icmp eq i32 %1209, 6
  br i1 %cmp1691, label %if.then.1693, label %if.end.1777

if.then.1693:                                     ; preds = %lor.lhs.false.1690, %lor.lhs.false.1687, %if.end.1681
  %1210 = load i32, i32* %mode.addr, align 4
  %idxprom1694 = sext i32 %1210 to i64
  %arrayidx1695 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom1694
  %1211 = load i8, i8* %arrayidx1695, align 1
  %conv1696 = zext i8 %1211 to i32
  store i32 %conv1696, i32* %wider_mode, align 4
  br label %for.cond.1697

for.cond.1697:                                    ; preds = %for.inc.1772, %if.then.1693
  %1212 = load i32, i32* %wider_mode, align 4
  %cmp1698 = icmp ne i32 %1212, 0
  br i1 %cmp1698, label %for.body.1700, label %for.end.1776

for.body.1700:                                    ; preds = %for.cond.1697
  %1213 = load i32, i32* %wider_mode, align 4
  %idxprom1701 = sext i32 %1213 to i64
  %1214 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers1702 = getelementptr inbounds %struct.optab, %struct.optab* %1214, i32 0, i32 1
  %arrayidx1703 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1702, i32 0, i64 %idxprom1701
  %insn_code1704 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1703, i32 0, i32 0
  %1215 = load i32, i32* %insn_code1704, align 4
  %cmp1705 = icmp ne i32 %1215, 1317
  br i1 %cmp1705, label %if.then.1716, label %lor.lhs.false.1707

lor.lhs.false.1707:                               ; preds = %for.body.1700
  %1216 = load i32, i32* %methods.addr, align 4
  %cmp1708 = icmp eq i32 %1216, 1
  br i1 %cmp1708, label %land.lhs.true.1710, label %if.end.1771

land.lhs.true.1710:                               ; preds = %lor.lhs.false.1707
  %1217 = load i32, i32* %wider_mode, align 4
  %idxprom1711 = sext i32 %1217 to i64
  %1218 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers1712 = getelementptr inbounds %struct.optab, %struct.optab* %1218, i32 0, i32 1
  %arrayidx1713 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers1712, i32 0, i64 %idxprom1711
  %libfunc1714 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx1713, i32 0, i32 1
  %1219 = load %struct.rtx_def*, %struct.rtx_def** %libfunc1714, align 8
  %tobool1715 = icmp ne %struct.rtx_def* %1219, null
  br i1 %tobool1715, label %if.then.1716, label %if.end.1771

if.then.1716:                                     ; preds = %land.lhs.true.1710, %for.body.1700
  %1220 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %1220, %struct.rtx_def** %xop01718, align 8
  %1221 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %1221, %struct.rtx_def** %xop11720, align 8
  store i32 0, i32* %no_extend1722, align 4
  %1222 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1223 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %cmp1723 = icmp eq %struct.optab* %1222, %1223
  br i1 %cmp1723, label %land.lhs.true.1743, label %lor.lhs.false.1725

lor.lhs.false.1725:                               ; preds = %if.then.1716
  %1224 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1225 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %cmp1726 = icmp eq %struct.optab* %1224, %1225
  br i1 %cmp1726, label %land.lhs.true.1743, label %lor.lhs.false.1728

lor.lhs.false.1728:                               ; preds = %lor.lhs.false.1725
  %1226 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1227 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %cmp1729 = icmp eq %struct.optab* %1226, %1227
  br i1 %cmp1729, label %land.lhs.true.1743, label %lor.lhs.false.1731

lor.lhs.false.1731:                               ; preds = %lor.lhs.false.1728
  %1228 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1229 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %cmp1732 = icmp eq %struct.optab* %1228, %1229
  br i1 %cmp1732, label %land.lhs.true.1743, label %lor.lhs.false.1734

lor.lhs.false.1734:                               ; preds = %lor.lhs.false.1731
  %1230 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1231 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %cmp1735 = icmp eq %struct.optab* %1230, %1231
  br i1 %cmp1735, label %land.lhs.true.1743, label %lor.lhs.false.1737

lor.lhs.false.1737:                               ; preds = %lor.lhs.false.1734
  %1232 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1233 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %cmp1738 = icmp eq %struct.optab* %1232, %1233
  br i1 %cmp1738, label %land.lhs.true.1743, label %lor.lhs.false.1740

lor.lhs.false.1740:                               ; preds = %lor.lhs.false.1737
  %1234 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1235 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %cmp1741 = icmp eq %struct.optab* %1234, %1235
  br i1 %cmp1741, label %land.lhs.true.1743, label %if.end.1747

land.lhs.true.1743:                               ; preds = %lor.lhs.false.1740, %lor.lhs.false.1737, %lor.lhs.false.1734, %lor.lhs.false.1731, %lor.lhs.false.1728, %lor.lhs.false.1725, %if.then.1716
  %1236 = load i32, i32* %class, align 4
  %cmp1744 = icmp eq i32 %1236, 1
  br i1 %cmp1744, label %if.then.1746, label %if.end.1747

if.then.1746:                                     ; preds = %land.lhs.true.1743
  store i32 1, i32* %no_extend1722, align 4
  br label %if.end.1747

if.end.1747:                                      ; preds = %if.then.1746, %land.lhs.true.1743, %lor.lhs.false.1740
  %1237 = load %struct.rtx_def*, %struct.rtx_def** %xop01718, align 8
  %1238 = load i32, i32* %wider_mode, align 4
  %1239 = load i32, i32* %mode.addr, align 4
  %1240 = load i32, i32* %unsignedp.addr, align 4
  %1241 = load i32, i32* %no_extend1722, align 4
  %call1748 = call %struct.rtx_def* @widen_operand(%struct.rtx_def* %1237, i32 %1238, i32 %1239, i32 %1240, i32 %1241)
  store %struct.rtx_def* %call1748, %struct.rtx_def** %xop01718, align 8
  %1242 = load %struct.rtx_def*, %struct.rtx_def** %xop11720, align 8
  %1243 = load i32, i32* %wider_mode, align 4
  %1244 = load i32, i32* %mode.addr, align 4
  %1245 = load i32, i32* %unsignedp.addr, align 4
  %1246 = load i32, i32* %no_extend1722, align 4
  %tobool1749 = icmp ne i32 %1246, 0
  br i1 %tobool1749, label %land.rhs.1750, label %land.end.1753

land.rhs.1750:                                    ; preds = %if.end.1747
  %1247 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1248 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %cmp1751 = icmp ne %struct.optab* %1247, %1248
  br label %land.end.1753

land.end.1753:                                    ; preds = %land.rhs.1750, %if.end.1747
  %1249 = phi i1 [ false, %if.end.1747 ], [ %cmp1751, %land.rhs.1750 ]
  %land.ext1754 = zext i1 %1249 to i32
  %call1755 = call %struct.rtx_def* @widen_operand(%struct.rtx_def* %1242, i32 %1243, i32 %1244, i32 %1245, i32 %land.ext1754)
  store %struct.rtx_def* %call1755, %struct.rtx_def** %xop11720, align 8
  %1250 = load i32, i32* %wider_mode, align 4
  %1251 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %1252 = load %struct.rtx_def*, %struct.rtx_def** %xop01718, align 8
  %1253 = load %struct.rtx_def*, %struct.rtx_def** %xop11720, align 8
  %1254 = load i32, i32* %unsignedp.addr, align 4
  %1255 = load i32, i32* %methods.addr, align 4
  %call1756 = call %struct.rtx_def* @expand_binop(i32 %1250, %struct.optab* %1251, %struct.rtx_def* %1252, %struct.rtx_def* %1253, %struct.rtx_def* null, i32 %1254, i32 %1255)
  store %struct.rtx_def* %call1756, %struct.rtx_def** %temp, align 8
  %1256 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool1757 = icmp ne %struct.rtx_def* %1256, null
  br i1 %tobool1757, label %if.then.1758, label %if.else.1769

if.then.1758:                                     ; preds = %land.end.1753
  %1257 = load i32, i32* %class, align 4
  %cmp1759 = icmp ne i32 %1257, 1
  br i1 %cmp1759, label %if.then.1761, label %if.else.1767

if.then.1761:                                     ; preds = %if.then.1758
  %1258 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp1762 = icmp eq %struct.rtx_def* %1258, null
  br i1 %cmp1762, label %if.then.1764, label %if.end.1766

if.then.1764:                                     ; preds = %if.then.1761
  %1259 = load i32, i32* %mode.addr, align 4
  %call1765 = call %struct.rtx_def* @gen_reg_rtx(i32 %1259)
  store %struct.rtx_def* %call1765, %struct.rtx_def** %target.addr, align 8
  br label %if.end.1766

if.end.1766:                                      ; preds = %if.then.1764, %if.then.1761
  %1260 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1261 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  call void @convert_move(%struct.rtx_def* %1260, %struct.rtx_def* %1261, i32 0)
  %1262 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %1262, %struct.rtx_def** %retval
  br label %return

if.else.1767:                                     ; preds = %if.then.1758
  %1263 = load i32, i32* %mode.addr, align 4
  %1264 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call1768 = call %struct.rtx_def* @gen_lowpart(i32 %1263, %struct.rtx_def* %1264)
  store %struct.rtx_def* %call1768, %struct.rtx_def** %retval
  br label %return

if.else.1769:                                     ; preds = %land.end.1753
  %1265 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %1265)
  br label %if.end.1770

if.end.1770:                                      ; preds = %if.else.1769
  br label %if.end.1771

if.end.1771:                                      ; preds = %if.end.1770, %land.lhs.true.1710, %lor.lhs.false.1707
  br label %for.inc.1772

for.inc.1772:                                     ; preds = %if.end.1771
  %1266 = load i32, i32* %wider_mode, align 4
  %idxprom1773 = sext i32 %1266 to i64
  %arrayidx1774 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom1773
  %1267 = load i8, i8* %arrayidx1774, align 1
  %conv1775 = zext i8 %1267 to i32
  store i32 %conv1775, i32* %wider_mode, align 4
  br label %for.cond.1697

for.end.1776:                                     ; preds = %for.cond.1697
  br label %if.end.1777

if.end.1777:                                      ; preds = %for.end.1776, %lor.lhs.false.1690
  %1268 = load %struct.rtx_def*, %struct.rtx_def** %entry_last, align 8
  call void @delete_insns_since(%struct.rtx_def* %1268)
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.1777, %if.else.1767, %if.end.1766, %if.then.1680, %if.end.1661, %if.end.1624, %if.end.1351, %if.end.1163, %if.end.999, %if.end.781, %if.end.583, %if.else.486, %if.end.485, %if.else.385, %if.then.383, %if.end.338, %if.then.336
  %1269 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %1269
}

declare %struct.rtx_def* @get_last_insn() #2

declare %struct.rtx_def* @protect_from_queue(%struct.rtx_def*, i32) #2

declare %struct.rtx_def* @force_not_mem(%struct.rtx_def*) #2

declare %struct.rtx_def* @negate_rtx(i32, %struct.rtx_def*) #2

declare i32 @preserve_subexpressions_p() #2

declare i32 @rtx_cost(%struct.rtx_def*, i32) #2

declare %struct.rtx_def* @force_reg(i32, %struct.rtx_def*) #2

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #2

declare %struct.rtx_def* @gen_reg_rtx(i32) #2

declare %struct.rtx_def* @convert_modes(i32, i32, %struct.rtx_def*, i32) #2

declare %struct.rtx_def* @copy_to_mode_reg(i32, %struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define internal i32 @add_equal_note(%struct.rtx_def* %seq, %struct.rtx_def* %target, i32 %code, %struct.rtx_def* %op0, %struct.rtx_def* %op1) #0 {
entry:
  %retval = alloca i32, align 4
  %seq.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %seq, %struct.rtx_def** %seq.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  %0 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 49
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %code.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom2
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = sext i8 %3 to i32
  %cmp5 = icmp ne i32 %conv4, 50
  br i1 %cmp5, label %land.lhs.true.7, label %lor.lhs.false

land.lhs.true.7:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %code.addr, align 4
  %idxprom8 = sext i32 %4 to i64
  %arrayidx9 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom8
  %5 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %5 to i32
  %cmp11 = icmp ne i32 %conv10, 99
  br i1 %cmp11, label %land.lhs.true.13, label %lor.lhs.false

land.lhs.true.13:                                 ; preds = %land.lhs.true.7
  %6 = load i32, i32* %code.addr, align 4
  %idxprom14 = sext i32 %6 to i64
  %arrayidx15 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom14
  %7 = load i8, i8* %arrayidx15, align 1
  %conv16 = sext i8 %7 to i32
  %cmp17 = icmp ne i32 %conv16, 60
  br i1 %cmp17, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.13, %land.lhs.true.7, %land.lhs.true, %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp19 = icmp ne i32 %bf.clear, 24
  br i1 %cmp19, label %if.then, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtvec_def**
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %11, i32 0, i32 0
  %12 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom23 = sext i32 %sub to i64
  %13 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtvec26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtvec_def**
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec26, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom23
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx27, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load28 = load i32, i32* %16, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %idxprom30 = sext i32 %bf.clear29 to i64
  %arrayidx31 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom30
  %17 = load i8, i8* %arrayidx31, align 1
  %conv32 = sext i8 %17 to i32
  %cmp33 = icmp eq i32 %conv32, 105
  br i1 %cmp33, label %cond.true, label %cond.false.92

cond.true:                                        ; preds = %lor.lhs.false.21
  %18 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtvec37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtvec_def**
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec37, align 8
  %num_elem38 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %19, i32 0, i32 0
  %20 = load i32, i32* %num_elem38, align 4
  %sub39 = sub nsw i32 %20, 1
  %idxprom40 = sext i32 %sub39 to i64
  %21 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtvec43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec43, align 8
  %elem44 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem44, i32 0, i64 %idxprom40
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx45, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load48 = load i32, i32* %25, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 47
  br i1 %cmp50, label %cond.true.52, label %cond.false

cond.true.52:                                     ; preds = %cond.true
  %26 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtvec55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtvec_def**
  %27 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec55, align 8
  %num_elem56 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %27, i32 0, i32 0
  %28 = load i32, i32* %num_elem56, align 4
  %sub57 = sub nsw i32 %28, 1
  %idxprom58 = sext i32 %sub57 to i64
  %29 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtvec61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtvec_def**
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec61, align 8
  %elem62 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem62, i32 0, i64 %idxprom58
  %31 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx63, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 3
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %33 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtvec69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtvec_def**
  %34 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec69, align 8
  %num_elem70 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %34, i32 0, i32 0
  %35 = load i32, i32* %num_elem70, align 4
  %sub71 = sub nsw i32 %35, 1
  %idxprom72 = sext i32 %sub71 to i64
  %36 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtvec75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtvec_def**
  %37 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec75, align 8
  %elem76 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %37, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem76, i32 0, i64 %idxprom72
  %38 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx77, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtvec80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtvec_def**
  %40 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec80, align 8
  %num_elem81 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %40, i32 0, i32 0
  %41 = load i32, i32* %num_elem81, align 4
  %sub82 = sub nsw i32 %41, 1
  %idxprom83 = sext i32 %sub82 to i64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtvec86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtvec_def**
  %43 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec86, align 8
  %elem87 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %43, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem87, i32 0, i64 %idxprom83
  %44 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx88, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 3
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx91, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %38, %struct.rtx_def* %45)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.52
  %cond = phi %struct.rtx_def* [ %32, %cond.true.52 ], [ %call, %cond.false ]
  br label %cond.end.93

cond.false.92:                                    ; preds = %lor.lhs.false.21
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.92, %cond.end
  %cond94 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.92 ]
  store %struct.rtx_def* %cond94, %struct.rtx_def** %set, align 8
  %cmp95 = icmp eq %struct.rtx_def* %cond94, null
  br i1 %cmp95, label %if.then, label %lor.lhs.false.97

lor.lhs.false.97:                                 ; preds = %cond.end.93
  %46 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load98 = load i32, i32* %47, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %cmp100 = icmp eq i32 %bf.clear99, 133
  br i1 %cmp100, label %if.then, label %lor.lhs.false.102

lor.lhs.false.102:                                ; preds = %lor.lhs.false.97
  %48 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call106 = call i32 @rtx_equal_p(%struct.rtx_def* %49, %struct.rtx_def* %50)
  %tobool = icmp ne i32 %call106, 0
  br i1 %tobool, label %if.end, label %land.lhs.true.107

land.lhs.true.107:                                ; preds = %lor.lhs.false.102
  %51 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load111 = load i32, i32* %53, align 8
  %bf.clear112 = and i32 %bf.load111, 65535
  %cmp113 = icmp ne i32 %bf.clear112, 64
  br i1 %cmp113, label %if.then, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %land.lhs.true.107
  %54 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 0
  %rtx118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx118, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx121, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 0
  %rtx124 = bitcast %union.rtunion_def* %arrayidx123 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx124, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call125 = call i32 @rtx_equal_p(%struct.rtx_def* %57, %struct.rtx_def* %58)
  %tobool126 = icmp ne i32 %call125, 0
  br i1 %tobool126, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.115, %land.lhs.true.107, %lor.lhs.false.97, %cond.end.93, %lor.lhs.false, %land.lhs.true.13
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.115, %lor.lhs.false.102
  %59 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call127 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %59, %struct.rtx_def* %60)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then.134, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %if.end
  %61 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %tobool130 = icmp ne %struct.rtx_def* %61, null
  br i1 %tobool130, label %land.lhs.true.131, label %if.end.152

land.lhs.true.131:                                ; preds = %lor.lhs.false.129
  %62 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call132 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %62, %struct.rtx_def* %63)
  %tobool133 = icmp ne i32 %call132, 0
  br i1 %tobool133, label %if.then.134, label %if.end.152

if.then.134:                                      ; preds = %land.lhs.true.131, %if.end
  %64 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 0
  %rtvec137 = bitcast %union.rtunion_def* %arrayidx136 to %struct.rtvec_def**
  %65 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec137, align 8
  %num_elem138 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %65, i32 0, i32 0
  %66 = load i32, i32* %num_elem138, align 4
  %sub139 = sub nsw i32 %66, 2
  store i32 %sub139, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.134
  %67 = load i32, i32* %i, align 4
  %cmp140 = icmp sge i32 %67, 0
  br i1 %cmp140, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %68 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %69 to i64
  %70 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 0
  %rtvec145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtvec_def**
  %71 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec145, align 8
  %elem146 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %71, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem146, i32 0, i64 %idxprom142
  %72 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx147, align 8
  %call148 = call i32 @reg_set_p(%struct.rtx_def* %68, %struct.rtx_def* %72)
  %tobool149 = icmp ne i32 %call148, 0
  br i1 %tobool149, label %if.then.150, label %if.end.151

if.then.150:                                      ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.151:                                       ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.151
  %73 = load i32, i32* %i, align 4
  %dec = add nsw i32 %73, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.152

if.end.152:                                       ; preds = %for.end, %land.lhs.true.131, %lor.lhs.false.129
  %74 = load i32, i32* %code.addr, align 4
  %idxprom153 = sext i32 %74 to i64
  %arrayidx154 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom153
  %75 = load i8, i8* %arrayidx154, align 1
  %conv155 = sext i8 %75 to i32
  %cmp156 = icmp eq i32 %conv155, 49
  br i1 %cmp156, label %if.then.158, label %if.else

if.then.158:                                      ; preds = %if.end.152
  %76 = load i32, i32* %code.addr, align 4
  %77 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load159 = load i32, i32* %78, align 8
  %bf.lshr = lshr i32 %bf.load159, 16
  %bf.clear160 = and i32 %bf.lshr, 255
  %79 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call161 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %79)
  %call162 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 %76, i32 %bf.clear160, %struct.rtx_def* %call161)
  store %struct.rtx_def* %call162, %struct.rtx_def** %note, align 8
  br label %if.end.169

if.else:                                          ; preds = %if.end.152
  %80 = load i32, i32* %code.addr, align 4
  %81 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load163 = load i32, i32* %82, align 8
  %bf.lshr164 = lshr i32 %bf.load163, 16
  %bf.clear165 = and i32 %bf.lshr164, 255
  %83 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call166 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %83)
  %84 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call167 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %84)
  %call168 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %80, i32 %bf.clear165, %struct.rtx_def* %call166, %struct.rtx_def* %call167)
  store %struct.rtx_def* %call168, %struct.rtx_def** %note, align 8
  br label %if.end.169

if.end.169:                                       ; preds = %if.else, %if.then.158
  %85 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 0
  %rtvec172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.rtvec_def**
  %86 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec172, align 8
  %num_elem173 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %86, i32 0, i32 0
  %87 = load i32, i32* %num_elem173, align 4
  %sub174 = sub nsw i32 %87, 1
  %idxprom175 = sext i32 %sub174 to i64
  %88 = load %struct.rtx_def*, %struct.rtx_def** %seq.addr, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 0
  %rtvec178 = bitcast %union.rtunion_def* %arrayidx177 to %struct.rtvec_def**
  %89 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec178, align 8
  %elem179 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %89, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem179, i32 0, i64 %idxprom175
  %90 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx180, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %call181 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %90, i32 4, %struct.rtx_def* %91)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.169, %if.then.150, %if.then
  %92 = load i32, i32* %retval
  ret i32 %92
}

declare void @delete_insns_since(%struct.rtx_def*) #2

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #2

declare %struct.rtx_def* @gen_lowpart(i32, %struct.rtx_def*) #2

declare %struct.rtx_def* @convert_to_mode(i32, %struct.rtx_def*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @widen_operand(%struct.rtx_def* %op, i32 %mode, i32 %oldmode, i32 %unsignedp, i32 %no_extend) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %op.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %oldmode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  %no_extend.addr = alloca i32, align 4
  %result = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %oldmode, i32* %oldmode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i32 %no_extend, i32* %no_extend.addr, align 4
  %0 = load i32, i32* %no_extend.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* %no_extend.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 63
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.16

land.lhs.true.5:                                  ; preds = %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load6 = load i32, i32* %8, align 8
  %bf.lshr7 = lshr i32 %bf.load6, 28
  %bf.clear8 = and i32 %bf.lshr7, 1
  %tobool9 = icmp ne i32 %bf.clear8, 0
  br i1 %tobool9, label %land.lhs.true.10, label %if.end.16

land.lhs.true.10:                                 ; preds = %land.lhs.true.5
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load11 = load i32, i32* %10, align 8
  %bf.lshr12 = lshr i32 %bf.load11, 26
  %bf.clear13 = and i32 %bf.lshr12, 1
  %11 = load i32, i32* %unsignedp.addr, align 4
  %cmp14 = icmp eq i32 %bf.clear13, %11
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.10, %if.end
  %12 = load i32, i32* %mode.addr, align 4
  %13 = load i32, i32* %oldmode.addr, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %15 = load i32, i32* %unsignedp.addr, align 4
  %call = call %struct.rtx_def* @convert_modes(i32 %12, i32 %13, %struct.rtx_def* %14, i32 %15)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true.10, %land.lhs.true.5, %lor.lhs.false
  %16 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %17 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %17 to i32
  %18 = load i32, i32* @target_flags, align 4
  %and = and i32 %18, 33554432
  %tobool17 = icmp ne i32 %and, 0
  %cond = select i1 %tobool17, i32 8, i32 4
  %cmp18 = icmp sle i32 %conv, %cond
  br i1 %cmp18, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.16
  %19 = load i32, i32* %mode.addr, align 4
  %20 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load21 = load i32, i32* %21, align 8
  %bf.lshr22 = lshr i32 %bf.load21, 16
  %bf.clear23 = and i32 %bf.lshr22, 255
  %22 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call24 = call %struct.rtx_def* @force_reg(i32 %bf.clear23, %struct.rtx_def* %22)
  %call25 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %19, %struct.rtx_def* %call24, i32 0)
  store %struct.rtx_def* %call25, %struct.rtx_def** %retval
  br label %return

if.end.26:                                        ; preds = %if.end.16
  %23 = load i32, i32* %mode.addr, align 4
  %call27 = call %struct.rtx_def* @gen_reg_rtx(i32 %23)
  store %struct.rtx_def* %call27, %struct.rtx_def** %result, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %call28 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 0, %struct.rtx_def* %24)
  %call29 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call28)
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load30 = load i32, i32* %26, align 8
  %bf.lshr31 = lshr i32 %bf.load30, 16
  %bf.clear32 = and i32 %bf.lshr31, 255
  %27 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %call33 = call %struct.rtx_def* @gen_lowpart(i32 %bf.clear32, %struct.rtx_def* %27)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call34 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %call33, %struct.rtx_def* %28)
  %29 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then.20, %if.then.15, %if.then
  %30 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %30
}

declare void @convert_move(%struct.rtx_def*, %struct.rtx_def*, i32) #2

declare void @start_sequence() #2

declare %struct.rtx_def* @operand_subword(%struct.rtx_def*, i32, i32, i32) #2

declare %struct.rtx_def* @operand_subword_force(%struct.rtx_def*, i32, i32) #2

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #2

declare %struct.rtx_def* @get_insns() #2

declare void @end_sequence() #2

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #2

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_no_conflict_block(%struct.rtx_def* %insns, %struct.rtx_def* %target, %struct.rtx_def* %op0, %struct.rtx_def* %op1, %struct.rtx_def* %equiv) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insns.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %equiv.addr = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %first = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %insns, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %equiv, %struct.rtx_def** %equiv.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @reload_in_progress, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  %call = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool1 = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load2 = load i32, i32* %7, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp ne i32 %bf.clear3, 32
  br i1 %cmp4, label %if.then.8, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call6 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %8, i32 7, %struct.rtx_def* null)
  %tobool7 = icmp ne %struct.rtx_def* %call6, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %lor.lhs.false.5, %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  %call9 = call %struct.rtx_def* @emit_insns(%struct.rtx_def* %9)
  store %struct.rtx_def* %call9, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.10

if.end.10:                                        ; preds = %for.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %insn, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.122, %if.end.10
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool12 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool12, label %for.body.13, label %for.end.123

for.body.13:                                      ; preds = %for.cond.11
  store %struct.rtx_def* null, %struct.rtx_def** %set, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 2
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %next, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call17 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %16, i32 7, %struct.rtx_def* null)
  store %struct.rtx_def* %call17, %struct.rtx_def** %note, align 8
  %cmp18 = icmp ne %struct.rtx_def* %call17, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body.13
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %17, %struct.rtx_def* %18)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %for.body.13
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call21 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %19, i32 6, %struct.rtx_def* null)
  store %struct.rtx_def* %call21, %struct.rtx_def** %note, align 8
  %cmp22 = icmp ne %struct.rtx_def* %call21, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %20, %struct.rtx_def* %21)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.end.20
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 3
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load28 = load i32, i32* %24, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 47
  br i1 %cmp30, label %if.then.45, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %if.end.24
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 3
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load35 = load i32, i32* %27, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 48
  br i1 %cmp37, label %if.then.45, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.31
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 3
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load42 = load i32, i32* %30, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 49
  br i1 %cmp44, label %if.then.45, label %if.else.49

if.then.45:                                       ; preds = %lor.lhs.false.38, %lor.lhs.false.31, %if.end.24
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 3
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %set, align 8
  br label %if.end.89

if.else.49:                                       ; preds = %lor.lhs.false.38
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 3
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load53 = load i32, i32* %35, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 39
  br i1 %cmp55, label %if.then.56, label %if.end.88

if.then.56:                                       ; preds = %if.else.49
  store i32 0, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.86, %if.then.56
  %36 = load i32, i32* %i, align 4
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 3
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtvec_def**
  %39 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %39, i32 0, i32 0
  %40 = load i32, i32* %num_elem, align 4
  %cmp63 = icmp slt i32 %36, %40
  br i1 %cmp63, label %for.body.64, label %for.end.87

for.body.64:                                      ; preds = %for.cond.57
  %41 = load i32, i32* %i, align 4
  %idxprom = sext i32 %41 to i64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 3
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx67, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 0
  %rtvec70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtvec_def**
  %44 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec70, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %44, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %45 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx71, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load72 = load i32, i32* %46, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 47
  br i1 %cmp74, label %if.then.75, label %if.end.85

if.then.75:                                       ; preds = %for.body.64
  %47 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %47 to i64
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 3
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtvec82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtvec_def**
  %50 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec82, align 8
  %elem83 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %50, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem83, i32 0, i64 %idxprom76
  %51 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx84, align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %set, align 8
  br label %for.end.87

if.end.85:                                        ; preds = %for.body.64
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.85
  %52 = load i32, i32* %i, align 4
  %inc = add nsw i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.57

for.end.87:                                       ; preds = %if.then.75, %for.cond.57
  br label %if.end.88

if.end.88:                                        ; preds = %for.end.87, %if.else.49
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %if.then.45
  %53 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp90 = icmp eq %struct.rtx_def* %53, null
  br i1 %cmp90, label %if.then.91, label %if.end.92

if.then.91:                                       ; preds = %if.end.89
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2768, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.emit_no_conflict_block, i32 0, i32 0)) #6
  unreachable

if.end.92:                                        ; preds = %if.end.89
  %54 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 0
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %call96 = call i32 @reg_overlap_mentioned_p(%struct.rtx_def* %54, %struct.rtx_def* %56)
  %tobool97 = icmp ne i32 %call96, 0
  br i1 %tobool97, label %if.end.121, label %if.then.98

if.then.98:                                       ; preds = %if.end.92
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 1
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx101, align 8
  %tobool102 = icmp ne %struct.rtx_def* %58, null
  br i1 %tobool102, label %if.then.103, label %if.else.110

if.then.103:                                      ; preds = %if.then.98
  %59 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 1
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %61 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 2
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  store %struct.rtx_def* %59, %struct.rtx_def** %rtx109, align 8
  br label %if.end.111

if.else.110:                                      ; preds = %if.then.98
  %62 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %insns.addr, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.110, %if.then.103
  %63 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool112 = icmp ne %struct.rtx_def* %63, null
  br i1 %tobool112, label %if.then.113, label %if.end.120

if.then.113:                                      ; preds = %if.end.111
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 1
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 1
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  store %struct.rtx_def* %65, %struct.rtx_def** %rtx119, align 8
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.113, %if.end.111
  %67 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @add_insn(%struct.rtx_def* %67)
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.120, %if.end.92
  br label %for.inc.122

for.inc.122:                                      ; preds = %if.end.121
  %68 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %68, %struct.rtx_def** %insn, align 8
  br label %for.cond.11

for.end.123:                                      ; preds = %for.cond.11
  %call124 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call124, %struct.rtx_def** %prev, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %cmp125 = icmp ne %struct.rtx_def* %69, %70
  br i1 %cmp125, label %land.lhs.true, label %if.end.130

land.lhs.true:                                    ; preds = %for.end.123
  %71 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %cmp126 = icmp ne %struct.rtx_def* %71, %72
  br i1 %cmp126, label %if.then.127, label %if.end.130

if.then.127:                                      ; preds = %land.lhs.true
  %73 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call128 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 49, i32 0, %struct.rtx_def* %73)
  %call129 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call128)
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.127, %land.lhs.true, %for.end.123
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %74, %struct.rtx_def** %insn, align 8
  br label %for.cond.131

for.cond.131:                                     ; preds = %for.inc.165, %if.end.130
  %75 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool132 = icmp ne %struct.rtx_def* %75, null
  br i1 %tobool132, label %for.body.133, label %for.end.166

for.body.133:                                     ; preds = %for.cond.131
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 2
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  store %struct.rtx_def* %77, %struct.rtx_def** %next, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @add_insn(%struct.rtx_def* %78)
  %79 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %tobool137 = icmp ne %struct.rtx_def* %79, null
  br i1 %tobool137, label %land.lhs.true.138, label %if.end.150

land.lhs.true.138:                                ; preds = %for.body.133
  %80 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %81 = bitcast %struct.rtx_def* %80 to i32*
  %bf.load139 = load i32, i32* %81, align 8
  %bf.clear140 = and i32 %bf.load139, 65535
  %cmp141 = icmp eq i32 %bf.clear140, 61
  br i1 %cmp141, label %if.then.142, label %if.end.150

if.then.142:                                      ; preds = %land.lhs.true.138
  %82 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 6
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  %call146 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 9, %struct.rtx_def* %82, %struct.rtx_def* %84)
  %85 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 6
  %rtx149 = bitcast %union.rtunion_def* %arrayidx148 to %struct.rtx_def**
  store %struct.rtx_def* %call146, %struct.rtx_def** %rtx149, align 8
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.142, %land.lhs.true.138, %for.body.133
  %86 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %tobool151 = icmp ne %struct.rtx_def* %86, null
  br i1 %tobool151, label %land.lhs.true.152, label %if.end.164

land.lhs.true.152:                                ; preds = %if.end.150
  %87 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load153 = load i32, i32* %88, align 8
  %bf.clear154 = and i32 %bf.load153, 65535
  %cmp155 = icmp eq i32 %bf.clear154, 61
  br i1 %cmp155, label %if.then.156, label %if.end.164

if.then.156:                                      ; preds = %land.lhs.true.152
  %89 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld157, i32 0, i64 6
  %rtx159 = bitcast %union.rtunion_def* %arrayidx158 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx159, align 8
  %call160 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 9, %struct.rtx_def* %89, %struct.rtx_def* %91)
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld161, i32 0, i64 6
  %rtx163 = bitcast %union.rtunion_def* %arrayidx162 to %struct.rtx_def**
  store %struct.rtx_def* %call160, %struct.rtx_def** %rtx163, align 8
  br label %if.end.164

if.end.164:                                       ; preds = %if.then.156, %land.lhs.true.152, %if.end.150
  br label %for.inc.165

for.inc.165:                                      ; preds = %if.end.164
  %93 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %93, %struct.rtx_def** %insn, align 8
  br label %for.cond.131

for.end.166:                                      ; preds = %for.cond.131
  %94 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %95 = bitcast %struct.rtx_def* %94 to i32*
  %bf.load167 = load i32, i32* %95, align 8
  %bf.lshr = lshr i32 %bf.load167, 16
  %bf.clear168 = and i32 %bf.lshr, 255
  %idxprom169 = sext i32 %bf.clear168 to i64
  %96 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %96, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom169
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx170, i32 0, i32 0
  %97 = load i32, i32* %insn_code, align 4
  %cmp171 = icmp ne i32 %97, 1317
  br i1 %cmp171, label %if.then.172, label %if.else.178

if.then.172:                                      ; preds = %for.end.166
  %98 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call173 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %98, %struct.rtx_def* %99)
  store %struct.rtx_def* %call173, %struct.rtx_def** %last, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %equiv.addr, align 8
  %tobool174 = icmp ne %struct.rtx_def* %100, null
  br i1 %tobool174, label %if.then.175, label %if.end.177

if.then.175:                                      ; preds = %if.then.172
  %101 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %equiv.addr, align 8
  %call176 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %101, i32 4, %struct.rtx_def* %102)
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.175, %if.then.172
  br label %if.end.181

if.else.178:                                      ; preds = %for.end.166
  %call179 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call179, %struct.rtx_def** %last, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %call180 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %104, i32 4, %struct.rtx_def* null)
  call void @remove_note(%struct.rtx_def* %103, %struct.rtx_def* %call180)
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.178, %if.end.177
  %105 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %cmp182 = icmp eq %struct.rtx_def* %105, null
  br i1 %cmp182, label %if.then.183, label %if.else.185

if.then.183:                                      ; preds = %if.end.181
  %call184 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call184, %struct.rtx_def** %first, align 8
  br label %if.end.189

if.else.185:                                      ; preds = %if.end.181
  %106 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 2
  %rtx188 = bitcast %union.rtunion_def* %arrayidx187 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx188, align 8
  store %struct.rtx_def* %107, %struct.rtx_def** %first, align 8
  br label %if.end.189

if.end.189:                                       ; preds = %if.else.185, %if.then.183
  %108 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 6
  %rtx192 = bitcast %union.rtunion_def* %arrayidx191 to %struct.rtx_def**
  %110 = load %struct.rtx_def*, %struct.rtx_def** %rtx192, align 8
  %call193 = call %struct.rtx_def* @gen_rtx_fmt_ue(i32 4, i32 7, %struct.rtx_def* %108, %struct.rtx_def* %110)
  %111 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %fld194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld194, i32 0, i64 6
  %rtx196 = bitcast %union.rtunion_def* %arrayidx195 to %struct.rtx_def**
  store %struct.rtx_def* %call193, %struct.rtx_def** %rtx196, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld197, i32 0, i64 6
  %rtx199 = bitcast %union.rtunion_def* %arrayidx198 to %struct.rtx_def**
  %114 = load %struct.rtx_def*, %struct.rtx_def** %rtx199, align 8
  %call200 = call %struct.rtx_def* @gen_rtx_fmt_ue(i32 4, i32 6, %struct.rtx_def* %112, %struct.rtx_def* %114)
  %115 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 6
  %rtx203 = bitcast %union.rtunion_def* %arrayidx202 to %struct.rtx_def**
  store %struct.rtx_def* %call200, %struct.rtx_def** %rtx203, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  store %struct.rtx_def* %116, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.189, %if.then.8, %if.then
  %117 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %117
}

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #2

declare %struct.rtx_def* @emit_insns(%struct.rtx_def*) #2

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #2

declare %struct.rtx_def* @emit_store_flag_force(%struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def*, i32, i32, i32) #2

declare %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #2

declare i32 @mode_for_size(i32, i32, i32) #2

declare %struct.rtx_def* @gen_realpart(i32, %struct.rtx_def*) #2

declare %struct.rtx_def* @gen_imagpart(i32, %struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_unop(i32 %mode, %struct.optab* %unoptab, %struct.rtx_def* %op0, %struct.rtx_def* %target, i32 %unsignedp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %unoptab.addr = alloca %struct.optab*, align 8
  %op0.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %class = alloca i32, align 4
  %wider_mode = alloca i32, align 4
  %temp = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %icode = alloca i32, align 4
  %mode0 = alloca i32, align 4
  %xop0 = alloca %struct.rtx_def*, align 8
  %xop084 = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %insns = alloca %struct.rtx_def*, align 8
  %target_piece = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %target_piece177 = alloca %struct.rtx_def*, align 8
  %x178 = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %submode = alloca i32, align 4
  %insns223 = alloca %struct.rtx_def*, align 8
  %value = alloca %struct.rtx_def*, align 8
  %xop0263 = alloca %struct.rtx_def*, align 8
  %temp301 = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.optab* %unoptab, %struct.optab** %unoptab.addr, align 8
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %call = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call, %struct.rtx_def** %last, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %class, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %2, i32 0)
  store %struct.rtx_def* %call1, %struct.rtx_def** %op0.addr, align 8
  %3 = load i32, i32* @flag_force_mem, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call2 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %4)
  store %struct.rtx_def* %call2, %struct.rtx_def** %op0.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool3 = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call5 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %6, i32 1)
  store %struct.rtx_def* %call5, %struct.rtx_def** %target.addr, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %7 = load i32, i32* %mode.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom7
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx8, i32 0, i32 0
  %9 = load i32, i32* %insn_code, align 4
  %cmp = icmp ne i32 %9, 1317
  br i1 %cmp, label %if.then.9, label %if.end.67

if.then.9:                                        ; preds = %if.end.6
  %10 = load i32, i32* %mode.addr, align 4
  %idxprom10 = sext i32 %10 to i64
  %11 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %handlers11 = getelementptr inbounds %struct.optab, %struct.optab* %11, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers11, i32 0, i64 %idxprom10
  %insn_code13 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx12, i32 0, i32 0
  %12 = load i32, i32* %insn_code13, align 4
  store i32 %12, i32* %icode, align 4
  %13 = load i32, i32* %icode, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom14
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx15, i32 0, i32 3
  %14 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx16 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %14, i64 1
  %mode17 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx16, i32 0, i32 2
  %bf.load = load i16, i16* %mode17, align 8
  %bf.cast = zext i16 %bf.load to i32
  store i32 %bf.cast, i32* %mode0, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %xop0, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool18 = icmp ne %struct.rtx_def* %16, null
  br i1 %tobool18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %if.then.9
  %17 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %temp, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.then.9
  %18 = load i32, i32* %mode.addr, align 4
  %call20 = call %struct.rtx_def* @gen_reg_rtx(i32 %18)
  store %struct.rtx_def* %call20, %struct.rtx_def** %temp, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.19
  %19 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load22 = load i32, i32* %20, align 8
  %bf.lshr = lshr i32 %bf.load22, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp23 = icmp ne i32 %bf.clear, 0
  br i1 %cmp23, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %if.end.21
  %21 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load24 = load i32, i32* %22, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 16
  %bf.clear26 = and i32 %bf.lshr25, 255
  %23 = load i32, i32* %mode0, align 4
  %cmp27 = icmp ne i32 %bf.clear26, %23
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %land.lhs.true
  %24 = load i32, i32* %mode0, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %26 = load i32, i32* %unsignedp.addr, align 4
  %call29 = call %struct.rtx_def* @convert_to_mode(i32 %24, %struct.rtx_def* %25, i32 %26)
  store %struct.rtx_def* %call29, %struct.rtx_def** %xop0, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %land.lhs.true, %if.end.21
  %27 = load i32, i32* %icode, align 4
  %idxprom31 = sext i32 %27 to i64
  %arrayidx32 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom31
  %operand33 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx32, i32 0, i32 3
  %28 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand33, align 8
  %arrayidx34 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %28, i64 1
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx34, i32 0, i32 0
  %29 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %31 = load i32, i32* %mode0, align 4
  %call35 = call i32 %29(%struct.rtx_def* %30, i32 %31)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %if.end.39, label %if.then.37

if.then.37:                                       ; preds = %if.end.30
  %32 = load i32, i32* %mode0, align 4
  %33 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %call38 = call %struct.rtx_def* @copy_to_mode_reg(i32 %32, %struct.rtx_def* %33)
  store %struct.rtx_def* %call38, %struct.rtx_def** %xop0, align 8
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.37, %if.end.30
  %34 = load i32, i32* %icode, align 4
  %idxprom40 = sext i32 %34 to i64
  %arrayidx41 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom40
  %operand42 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx41, i32 0, i32 3
  %35 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand42, align 8
  %arrayidx43 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %35, i64 0
  %predicate44 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx43, i32 0, i32 0
  %36 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate44, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %38 = load i32, i32* %mode.addr, align 4
  %call45 = call i32 %36(%struct.rtx_def* %37, i32 %38)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.49, label %if.then.47

if.then.47:                                       ; preds = %if.end.39
  %39 = load i32, i32* %mode.addr, align 4
  %call48 = call %struct.rtx_def* @gen_reg_rtx(i32 %39)
  store %struct.rtx_def* %call48, %struct.rtx_def** %temp, align 8
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.39
  %40 = load i32, i32* %icode, align 4
  %idxprom50 = sext i32 %40 to i64
  %arrayidx51 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom50
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx51, i32 0, i32 2
  %41 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %call52 = call %struct.rtx_def* (%struct.rtx_def*, ...) %41(%struct.rtx_def* %42, %struct.rtx_def* %43)
  store %struct.rtx_def* %call52, %struct.rtx_def** %pat, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %tobool53 = icmp ne %struct.rtx_def* %44, null
  br i1 %tobool53, label %if.then.54, label %if.else.65

if.then.54:                                       ; preds = %if.end.49
  %45 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load55 = load i32, i32* %46, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 24
  br i1 %cmp57, label %land.lhs.true.58, label %if.end.63

land.lhs.true.58:                                 ; preds = %if.then.54
  %47 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %49 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %code = getelementptr inbounds %struct.optab, %struct.optab* %49, i32 0, i32 0
  %50 = load i32, i32* %code, align 4
  %51 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %call59 = call i32 @add_equal_note(%struct.rtx_def* %47, %struct.rtx_def* %48, i32 %50, %struct.rtx_def* %51, %struct.rtx_def* null)
  %tobool60 = icmp ne i32 %call59, 0
  br i1 %tobool60, label %if.end.63, label %if.then.61

if.then.61:                                       ; preds = %land.lhs.true.58
  %52 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %52)
  %53 = load i32, i32* %mode.addr, align 4
  %54 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %56 = load i32, i32* %unsignedp.addr, align 4
  %call62 = call %struct.rtx_def* @expand_unop(i32 %53, %struct.optab* %54, %struct.rtx_def* %55, %struct.rtx_def* null, i32 %56)
  store %struct.rtx_def* %call62, %struct.rtx_def** %retval
  br label %return

if.end.63:                                        ; preds = %land.lhs.true.58, %if.then.54
  %57 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call64 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %57)
  %58 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %58, %struct.rtx_def** %retval
  br label %return

if.else.65:                                       ; preds = %if.end.49
  %59 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %59)
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.65
  br label %if.end.67

if.end.67:                                        ; preds = %if.end.66, %if.end.6
  %60 = load i32, i32* %class, align 4
  %cmp68 = icmp eq i32 %60, 1
  br i1 %cmp68, label %if.then.72, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.67
  %61 = load i32, i32* %class, align 4
  %cmp69 = icmp eq i32 %61, 2
  br i1 %cmp69, label %if.then.72, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false
  %62 = load i32, i32* %class, align 4
  %cmp71 = icmp eq i32 %62, 6
  br i1 %cmp71, label %if.then.72, label %if.end.112

if.then.72:                                       ; preds = %lor.lhs.false.70, %lor.lhs.false, %if.end.67
  %63 = load i32, i32* %mode.addr, align 4
  %idxprom73 = sext i32 %63 to i64
  %arrayidx74 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom73
  %64 = load i8, i8* %arrayidx74, align 1
  %conv = zext i8 %64 to i32
  store i32 %conv, i32* %wider_mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.72
  %65 = load i32, i32* %wider_mode, align 4
  %cmp75 = icmp ne i32 %65, 0
  br i1 %cmp75, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %66 = load i32, i32* %wider_mode, align 4
  %idxprom77 = sext i32 %66 to i64
  %67 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %handlers78 = getelementptr inbounds %struct.optab, %struct.optab* %67, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers78, i32 0, i64 %idxprom77
  %insn_code80 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx79, i32 0, i32 0
  %68 = load i32, i32* %insn_code80, align 4
  %cmp81 = icmp ne i32 %68, 1317
  br i1 %cmp81, label %if.then.83, label %if.end.108

if.then.83:                                       ; preds = %for.body
  %69 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %xop084, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %xop084, align 8
  %71 = load i32, i32* %wider_mode, align 4
  %72 = load i32, i32* %mode.addr, align 4
  %73 = load i32, i32* %unsignedp.addr, align 4
  %74 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %75 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %cmp85 = icmp eq %struct.optab* %74, %75
  br i1 %cmp85, label %land.rhs, label %lor.lhs.false.87

lor.lhs.false.87:                                 ; preds = %if.then.83
  %76 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %77 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  %cmp88 = icmp eq %struct.optab* %76, %77
  br i1 %cmp88, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false.87, %if.then.83
  %78 = load i32, i32* %class, align 4
  %cmp90 = icmp eq i32 %78, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false.87
  %79 = phi i1 [ false, %lor.lhs.false.87 ], [ %cmp90, %land.rhs ]
  %land.ext = zext i1 %79 to i32
  %call92 = call %struct.rtx_def* @widen_operand(%struct.rtx_def* %70, i32 %71, i32 %72, i32 %73, i32 %land.ext)
  store %struct.rtx_def* %call92, %struct.rtx_def** %xop084, align 8
  %80 = load i32, i32* %wider_mode, align 4
  %81 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %xop084, align 8
  %83 = load i32, i32* %unsignedp.addr, align 4
  %call93 = call %struct.rtx_def* @expand_unop(i32 %80, %struct.optab* %81, %struct.rtx_def* %82, %struct.rtx_def* null, i32 %83)
  store %struct.rtx_def* %call93, %struct.rtx_def** %temp, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool94 = icmp ne %struct.rtx_def* %84, null
  br i1 %tobool94, label %if.then.95, label %if.else.106

if.then.95:                                       ; preds = %land.end
  %85 = load i32, i32* %class, align 4
  %cmp96 = icmp ne i32 %85, 1
  br i1 %cmp96, label %if.then.98, label %if.else.104

if.then.98:                                       ; preds = %if.then.95
  %86 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp99 = icmp eq %struct.rtx_def* %86, null
  br i1 %cmp99, label %if.then.101, label %if.end.103

if.then.101:                                      ; preds = %if.then.98
  %87 = load i32, i32* %mode.addr, align 4
  %call102 = call %struct.rtx_def* @gen_reg_rtx(i32 %87)
  store %struct.rtx_def* %call102, %struct.rtx_def** %target.addr, align 8
  br label %if.end.103

if.end.103:                                       ; preds = %if.then.101, %if.then.98
  %88 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  call void @convert_move(%struct.rtx_def* %88, %struct.rtx_def* %89, i32 0)
  %90 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %90, %struct.rtx_def** %retval
  br label %return

if.else.104:                                      ; preds = %if.then.95
  %91 = load i32, i32* %mode.addr, align 4
  %92 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call105 = call %struct.rtx_def* @gen_lowpart(i32 %91, %struct.rtx_def* %92)
  store %struct.rtx_def* %call105, %struct.rtx_def** %retval
  br label %return

if.else.106:                                      ; preds = %land.end
  %93 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %93)
  br label %if.end.107

if.end.107:                                       ; preds = %if.else.106
  br label %if.end.108

if.end.108:                                       ; preds = %if.end.107, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.108
  %94 = load i32, i32* %wider_mode, align 4
  %idxprom109 = sext i32 %94 to i64
  %arrayidx110 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom109
  %95 = load i8, i8* %arrayidx110, align 1
  %conv111 = zext i8 %95 to i32
  store i32 %conv111, i32* %wider_mode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.112

if.end.112:                                       ; preds = %for.end, %lor.lhs.false.70
  %96 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %97 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  %cmp113 = icmp eq %struct.optab* %96, %97
  br i1 %cmp113, label %land.lhs.true.115, label %if.else.166

land.lhs.true.115:                                ; preds = %if.end.112
  %98 = load i32, i32* %class, align 4
  %cmp116 = icmp eq i32 %98, 1
  br i1 %cmp116, label %land.lhs.true.118, label %if.else.166

land.lhs.true.118:                                ; preds = %land.lhs.true.115
  %99 = load i32, i32* %mode.addr, align 4
  %idxprom119 = sext i32 %99 to i64
  %arrayidx120 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom119
  %100 = load i8, i8* %arrayidx120, align 1
  %conv121 = zext i8 %100 to i32
  %101 = load i32, i32* @target_flags, align 4
  %and = and i32 %101, 33554432
  %tobool122 = icmp ne i32 %and, 0
  %cond = select i1 %tobool122, i32 8, i32 4
  %cmp123 = icmp sgt i32 %conv121, %cond
  br i1 %cmp123, label %land.lhs.true.125, label %if.else.166

land.lhs.true.125:                                ; preds = %land.lhs.true.118
  %102 = load i32, i32* @word_mode, align 4
  %idxprom126 = sext i32 %102 to i64
  %103 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %handlers127 = getelementptr inbounds %struct.optab, %struct.optab* %103, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers127, i32 0, i64 %idxprom126
  %insn_code129 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx128, i32 0, i32 0
  %104 = load i32, i32* %insn_code129, align 4
  %cmp130 = icmp ne i32 %104, 1317
  br i1 %cmp130, label %if.then.132, label %if.else.166

if.then.132:                                      ; preds = %land.lhs.true.125
  %105 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp133 = icmp eq %struct.rtx_def* %105, null
  br i1 %cmp133, label %if.then.138, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %if.then.132
  %106 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %cmp136 = icmp eq %struct.rtx_def* %106, %107
  br i1 %cmp136, label %if.then.138, label %if.end.140

if.then.138:                                      ; preds = %lor.lhs.false.135, %if.then.132
  %108 = load i32, i32* %mode.addr, align 4
  %call139 = call %struct.rtx_def* @gen_reg_rtx(i32 %108)
  store %struct.rtx_def* %call139, %struct.rtx_def** %target.addr, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.then.138, %lor.lhs.false.135
  call void @start_sequence()
  store i32 0, i32* %i, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.159, %if.end.140
  %109 = load i32, i32* %i, align 4
  %110 = load i32, i32* %mode.addr, align 4
  %idxprom142 = sext i32 %110 to i64
  %arrayidx143 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom142
  %111 = load i16, i16* %arrayidx143, align 2
  %conv144 = zext i16 %111 to i32
  %112 = load i32, i32* @target_flags, align 4
  %and145 = and i32 %112, 33554432
  %tobool146 = icmp ne i32 %and145, 0
  %cond147 = select i1 %tobool146, i32 64, i32 32
  %div = sdiv i32 %conv144, %cond147
  %cmp148 = icmp slt i32 %109, %div
  br i1 %cmp148, label %for.body.150, label %for.end.160

for.body.150:                                     ; preds = %for.cond.141
  %113 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %114 = load i32, i32* %i, align 4
  %115 = load i32, i32* %mode.addr, align 4
  %call151 = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %113, i32 %114, i32 1, i32 %115)
  store %struct.rtx_def* %call151, %struct.rtx_def** %target_piece, align 8
  %116 = load i32, i32* @word_mode, align 4
  %117 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %119 = load i32, i32* %i, align 4
  %120 = load i32, i32* %mode.addr, align 4
  %call152 = call %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %118, i32 %119, i32 %120)
  %121 = load %struct.rtx_def*, %struct.rtx_def** %target_piece, align 8
  %122 = load i32, i32* %unsignedp.addr, align 4
  %call153 = call %struct.rtx_def* @expand_unop(i32 %116, %struct.optab* %117, %struct.rtx_def* %call152, %struct.rtx_def* %121, i32 %122)
  store %struct.rtx_def* %call153, %struct.rtx_def** %x, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %target_piece, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp154 = icmp ne %struct.rtx_def* %123, %124
  br i1 %cmp154, label %if.then.156, label %if.end.158

if.then.156:                                      ; preds = %for.body.150
  %125 = load %struct.rtx_def*, %struct.rtx_def** %target_piece, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call157 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %125, %struct.rtx_def* %126)
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %for.body.150
  br label %for.inc.159

for.inc.159:                                      ; preds = %if.end.158
  %127 = load i32, i32* %i, align 4
  %inc = add nsw i32 %127, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.141

for.end.160:                                      ; preds = %for.cond.141
  %call161 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call161, %struct.rtx_def** %insns, align 8
  call void @end_sequence()
  %128 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %131 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %code162 = getelementptr inbounds %struct.optab, %struct.optab* %131, i32 0, i32 0
  %132 = load i32, i32* %code162, align 4
  %133 = load i32, i32* %mode.addr, align 4
  %134 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call163 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %134)
  %call164 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 %132, i32 %133, %struct.rtx_def* %call163)
  %call165 = call %struct.rtx_def* @emit_no_conflict_block(%struct.rtx_def* %128, %struct.rtx_def* %129, %struct.rtx_def* %130, %struct.rtx_def* null, %struct.rtx_def* %call164)
  %135 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %135, %struct.rtx_def** %retval
  br label %return

if.else.166:                                      ; preds = %land.lhs.true.125, %land.lhs.true.118, %land.lhs.true.115, %if.end.112
  %136 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %code167 = getelementptr inbounds %struct.optab, %struct.optab* %136, i32 0, i32 0
  %137 = load i32, i32* %code167, align 4
  %cmp168 = icmp eq i32 %137, 77
  br i1 %cmp168, label %land.lhs.true.170, label %if.end.216

land.lhs.true.170:                                ; preds = %if.else.166
  %138 = load i32, i32* %class, align 4
  %cmp171 = icmp eq i32 %138, 6
  br i1 %cmp171, label %if.then.176, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %land.lhs.true.170
  %139 = load i32, i32* %class, align 4
  %cmp174 = icmp eq i32 %139, 5
  br i1 %cmp174, label %if.then.176, label %if.end.216

if.then.176:                                      ; preds = %lor.lhs.false.173, %land.lhs.true.170
  %140 = load i32, i32* %mode.addr, align 4
  %idxprom179 = sext i32 %140 to i64
  %arrayidx180 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom179
  %141 = load i8, i8* %arrayidx180, align 1
  %conv181 = zext i8 %141 to i32
  %mul = mul nsw i32 %conv181, 8
  %142 = load i32, i32* %class, align 4
  %cmp182 = icmp eq i32 %142, 5
  %cond184 = select i1 %cmp182, i32 1, i32 2
  %call185 = call i32 @mode_for_size(i32 %mul, i32 %cond184, i32 0)
  store i32 %call185, i32* %submode, align 4
  %143 = load i32, i32* %submode, align 4
  %cmp186 = icmp eq i32 %143, 51
  br i1 %cmp186, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %if.then.176
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2227, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.expand_unop, i32 0, i32 0)) #6
  unreachable

if.end.189:                                       ; preds = %if.then.176
  %144 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp190 = icmp eq %struct.rtx_def* %144, null
  br i1 %cmp190, label %if.then.192, label %if.end.194

if.then.192:                                      ; preds = %if.end.189
  %145 = load i32, i32* %mode.addr, align 4
  %call193 = call %struct.rtx_def* @gen_reg_rtx(i32 %145)
  store %struct.rtx_def* %call193, %struct.rtx_def** %target.addr, align 8
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.192, %if.end.189
  call void @start_sequence()
  %146 = load i32, i32* %submode, align 4
  %147 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call195 = call %struct.rtx_def* @gen_imagpart(i32 %146, %struct.rtx_def* %147)
  store %struct.rtx_def* %call195, %struct.rtx_def** %target_piece177, align 8
  %148 = load i32, i32* %submode, align 4
  %149 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %150 = load i32, i32* %submode, align 4
  %151 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call196 = call %struct.rtx_def* @gen_imagpart(i32 %150, %struct.rtx_def* %151)
  %152 = load %struct.rtx_def*, %struct.rtx_def** %target_piece177, align 8
  %153 = load i32, i32* %unsignedp.addr, align 4
  %call197 = call %struct.rtx_def* @expand_unop(i32 %148, %struct.optab* %149, %struct.rtx_def* %call196, %struct.rtx_def* %152, i32 %153)
  store %struct.rtx_def* %call197, %struct.rtx_def** %x178, align 8
  %154 = load %struct.rtx_def*, %struct.rtx_def** %target_piece177, align 8
  %155 = load %struct.rtx_def*, %struct.rtx_def** %x178, align 8
  %cmp198 = icmp ne %struct.rtx_def* %154, %155
  br i1 %cmp198, label %if.then.200, label %if.end.202

if.then.200:                                      ; preds = %if.end.194
  %156 = load %struct.rtx_def*, %struct.rtx_def** %target_piece177, align 8
  %157 = load %struct.rtx_def*, %struct.rtx_def** %x178, align 8
  %call201 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %156, %struct.rtx_def* %157)
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.200, %if.end.194
  %158 = load i32, i32* %submode, align 4
  %159 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call203 = call %struct.rtx_def* @gen_realpart(i32 %158, %struct.rtx_def* %159)
  store %struct.rtx_def* %call203, %struct.rtx_def** %target_piece177, align 8
  %160 = load i32, i32* %submode, align 4
  %161 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %162 = load i32, i32* %submode, align 4
  %163 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call204 = call %struct.rtx_def* @gen_realpart(i32 %162, %struct.rtx_def* %163)
  %164 = load %struct.rtx_def*, %struct.rtx_def** %target_piece177, align 8
  %165 = load i32, i32* %unsignedp.addr, align 4
  %call205 = call %struct.rtx_def* @expand_unop(i32 %160, %struct.optab* %161, %struct.rtx_def* %call204, %struct.rtx_def* %164, i32 %165)
  store %struct.rtx_def* %call205, %struct.rtx_def** %x178, align 8
  %166 = load %struct.rtx_def*, %struct.rtx_def** %target_piece177, align 8
  %167 = load %struct.rtx_def*, %struct.rtx_def** %x178, align 8
  %cmp206 = icmp ne %struct.rtx_def* %166, %167
  br i1 %cmp206, label %if.then.208, label %if.end.210

if.then.208:                                      ; preds = %if.end.202
  %168 = load %struct.rtx_def*, %struct.rtx_def** %target_piece177, align 8
  %169 = load %struct.rtx_def*, %struct.rtx_def** %x178, align 8
  %call209 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %168, %struct.rtx_def* %169)
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.208, %if.end.202
  %call211 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call211, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %170 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %171 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %172 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %173 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %code212 = getelementptr inbounds %struct.optab, %struct.optab* %173, i32 0, i32 0
  %174 = load i32, i32* %code212, align 4
  %175 = load i32, i32* %mode.addr, align 4
  %176 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call213 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %176)
  %call214 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 %174, i32 %175, %struct.rtx_def* %call213)
  %call215 = call %struct.rtx_def* @emit_no_conflict_block(%struct.rtx_def* %170, %struct.rtx_def* %171, %struct.rtx_def* %172, %struct.rtx_def* null, %struct.rtx_def* %call214)
  %177 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %177, %struct.rtx_def** %retval
  br label %return

if.end.216:                                       ; preds = %lor.lhs.false.173, %if.else.166
  br label %if.end.217

if.end.217:                                       ; preds = %if.end.216
  %178 = load i32, i32* %mode.addr, align 4
  %idxprom218 = sext i32 %178 to i64
  %179 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %handlers219 = getelementptr inbounds %struct.optab, %struct.optab* %179, i32 0, i32 1
  %arrayidx220 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers219, i32 0, i64 %idxprom218
  %libfunc = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx220, i32 0, i32 1
  %180 = load %struct.rtx_def*, %struct.rtx_def** %libfunc, align 8
  %tobool221 = icmp ne %struct.rtx_def* %180, null
  br i1 %tobool221, label %if.then.222, label %if.end.233

if.then.222:                                      ; preds = %if.end.217
  call void @start_sequence()
  %181 = load i32, i32* %mode.addr, align 4
  %idxprom224 = sext i32 %181 to i64
  %182 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %handlers225 = getelementptr inbounds %struct.optab, %struct.optab* %182, i32 0, i32 1
  %arrayidx226 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers225, i32 0, i64 %idxprom224
  %libfunc227 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx226, i32 0, i32 1
  %183 = load %struct.rtx_def*, %struct.rtx_def** %libfunc227, align 8
  %184 = load i32, i32* %mode.addr, align 4
  %185 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %186 = load i32, i32* %mode.addr, align 4
  %call228 = call %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, ...) @emit_library_call_value(%struct.rtx_def* %183, %struct.rtx_def* null, i32 1, i32 %184, i32 1, %struct.rtx_def* %185, i32 %186)
  store %struct.rtx_def* %call228, %struct.rtx_def** %value, align 8
  %call229 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call229, %struct.rtx_def** %insns223, align 8
  call void @end_sequence()
  %187 = load i32, i32* %mode.addr, align 4
  %call230 = call %struct.rtx_def* @gen_reg_rtx(i32 %187)
  store %struct.rtx_def* %call230, %struct.rtx_def** %target.addr, align 8
  %188 = load %struct.rtx_def*, %struct.rtx_def** %insns223, align 8
  %189 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %190 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %191 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %code231 = getelementptr inbounds %struct.optab, %struct.optab* %191, i32 0, i32 0
  %192 = load i32, i32* %code231, align 4
  %193 = load i32, i32* %mode.addr, align 4
  %194 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call232 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 %192, i32 %193, %struct.rtx_def* %194)
  call void @emit_libcall_block(%struct.rtx_def* %188, %struct.rtx_def* %189, %struct.rtx_def* %190, %struct.rtx_def* %call232)
  %195 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %195, %struct.rtx_def** %retval
  br label %return

if.end.233:                                       ; preds = %if.end.217
  %196 = load i32, i32* %class, align 4
  %cmp234 = icmp eq i32 %196, 1
  br i1 %cmp234, label %if.then.242, label %lor.lhs.false.236

lor.lhs.false.236:                                ; preds = %if.end.233
  %197 = load i32, i32* %class, align 4
  %cmp237 = icmp eq i32 %197, 2
  br i1 %cmp237, label %if.then.242, label %lor.lhs.false.239

lor.lhs.false.239:                                ; preds = %lor.lhs.false.236
  %198 = load i32, i32* %class, align 4
  %cmp240 = icmp eq i32 %198, 6
  br i1 %cmp240, label %if.then.242, label %if.end.296

if.then.242:                                      ; preds = %lor.lhs.false.239, %lor.lhs.false.236, %if.end.233
  %199 = load i32, i32* %mode.addr, align 4
  %idxprom243 = sext i32 %199 to i64
  %arrayidx244 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom243
  %200 = load i8, i8* %arrayidx244, align 1
  %conv245 = zext i8 %200 to i32
  store i32 %conv245, i32* %wider_mode, align 4
  br label %for.cond.246

for.cond.246:                                     ; preds = %for.inc.291, %if.then.242
  %201 = load i32, i32* %wider_mode, align 4
  %cmp247 = icmp ne i32 %201, 0
  br i1 %cmp247, label %for.body.249, label %for.end.295

for.body.249:                                     ; preds = %for.cond.246
  %202 = load i32, i32* %wider_mode, align 4
  %idxprom250 = sext i32 %202 to i64
  %203 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %handlers251 = getelementptr inbounds %struct.optab, %struct.optab* %203, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers251, i32 0, i64 %idxprom250
  %insn_code253 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx252, i32 0, i32 0
  %204 = load i32, i32* %insn_code253, align 4
  %cmp254 = icmp ne i32 %204, 1317
  br i1 %cmp254, label %if.then.262, label %lor.lhs.false.256

lor.lhs.false.256:                                ; preds = %for.body.249
  %205 = load i32, i32* %wider_mode, align 4
  %idxprom257 = sext i32 %205 to i64
  %206 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %handlers258 = getelementptr inbounds %struct.optab, %struct.optab* %206, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers258, i32 0, i64 %idxprom257
  %libfunc260 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx259, i32 0, i32 1
  %207 = load %struct.rtx_def*, %struct.rtx_def** %libfunc260, align 8
  %tobool261 = icmp ne %struct.rtx_def* %207, null
  br i1 %tobool261, label %if.then.262, label %if.end.290

if.then.262:                                      ; preds = %lor.lhs.false.256, %for.body.249
  %208 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %208, %struct.rtx_def** %xop0263, align 8
  %209 = load %struct.rtx_def*, %struct.rtx_def** %xop0263, align 8
  %210 = load i32, i32* %wider_mode, align 4
  %211 = load i32, i32* %mode.addr, align 4
  %212 = load i32, i32* %unsignedp.addr, align 4
  %213 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %214 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %cmp264 = icmp eq %struct.optab* %213, %214
  br i1 %cmp264, label %land.rhs.269, label %lor.lhs.false.266

lor.lhs.false.266:                                ; preds = %if.then.262
  %215 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %216 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  %cmp267 = icmp eq %struct.optab* %215, %216
  br i1 %cmp267, label %land.rhs.269, label %land.end.272

land.rhs.269:                                     ; preds = %lor.lhs.false.266, %if.then.262
  %217 = load i32, i32* %class, align 4
  %cmp270 = icmp eq i32 %217, 1
  br label %land.end.272

land.end.272:                                     ; preds = %land.rhs.269, %lor.lhs.false.266
  %218 = phi i1 [ false, %lor.lhs.false.266 ], [ %cmp270, %land.rhs.269 ]
  %land.ext273 = zext i1 %218 to i32
  %call274 = call %struct.rtx_def* @widen_operand(%struct.rtx_def* %209, i32 %210, i32 %211, i32 %212, i32 %land.ext273)
  store %struct.rtx_def* %call274, %struct.rtx_def** %xop0263, align 8
  %219 = load i32, i32* %wider_mode, align 4
  %220 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %221 = load %struct.rtx_def*, %struct.rtx_def** %xop0263, align 8
  %222 = load i32, i32* %unsignedp.addr, align 4
  %call275 = call %struct.rtx_def* @expand_unop(i32 %219, %struct.optab* %220, %struct.rtx_def* %221, %struct.rtx_def* null, i32 %222)
  store %struct.rtx_def* %call275, %struct.rtx_def** %temp, align 8
  %223 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool276 = icmp ne %struct.rtx_def* %223, null
  br i1 %tobool276, label %if.then.277, label %if.else.288

if.then.277:                                      ; preds = %land.end.272
  %224 = load i32, i32* %class, align 4
  %cmp278 = icmp ne i32 %224, 1
  br i1 %cmp278, label %if.then.280, label %if.else.286

if.then.280:                                      ; preds = %if.then.277
  %225 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp281 = icmp eq %struct.rtx_def* %225, null
  br i1 %cmp281, label %if.then.283, label %if.end.285

if.then.283:                                      ; preds = %if.then.280
  %226 = load i32, i32* %mode.addr, align 4
  %call284 = call %struct.rtx_def* @gen_reg_rtx(i32 %226)
  store %struct.rtx_def* %call284, %struct.rtx_def** %target.addr, align 8
  br label %if.end.285

if.end.285:                                       ; preds = %if.then.283, %if.then.280
  %227 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %228 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  call void @convert_move(%struct.rtx_def* %227, %struct.rtx_def* %228, i32 0)
  %229 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %229, %struct.rtx_def** %retval
  br label %return

if.else.286:                                      ; preds = %if.then.277
  %230 = load i32, i32* %mode.addr, align 4
  %231 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call287 = call %struct.rtx_def* @gen_lowpart(i32 %230, %struct.rtx_def* %231)
  store %struct.rtx_def* %call287, %struct.rtx_def** %retval
  br label %return

if.else.288:                                      ; preds = %land.end.272
  %232 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %232)
  br label %if.end.289

if.end.289:                                       ; preds = %if.else.288
  br label %if.end.290

if.end.290:                                       ; preds = %if.end.289, %lor.lhs.false.256
  br label %for.inc.291

for.inc.291:                                      ; preds = %if.end.290
  %233 = load i32, i32* %wider_mode, align 4
  %idxprom292 = sext i32 %233 to i64
  %arrayidx293 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom292
  %234 = load i8, i8* %arrayidx293, align 1
  %conv294 = zext i8 %234 to i32
  store i32 %conv294, i32* %wider_mode, align 4
  br label %for.cond.246

for.end.295:                                      ; preds = %for.cond.246
  br label %if.end.296

if.end.296:                                       ; preds = %for.end.295, %lor.lhs.false.239
  %235 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %code297 = getelementptr inbounds %struct.optab, %struct.optab* %235, i32 0, i32 0
  %236 = load i32, i32* %code297, align 4
  %cmp298 = icmp eq i32 %236, 77
  br i1 %cmp298, label %if.then.300, label %if.end.311

if.then.300:                                      ; preds = %if.end.296
  %237 = load i32, i32* %mode.addr, align 4
  %238 = load %struct.optab*, %struct.optab** %unoptab.addr, align 8
  %239 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  %cmp302 = icmp eq %struct.optab* %238, %239
  br i1 %cmp302, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.300
  %240 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.300
  %241 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond304 = phi %struct.optab* [ %240, %cond.true ], [ %241, %cond.false ]
  %242 = load i32, i32* %mode.addr, align 4
  %idxprom305 = sext i32 %242 to i64
  %arrayidx306 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom305
  %243 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx306, align 8
  %244 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %245 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %246 = load i32, i32* %unsignedp.addr, align 4
  %call307 = call %struct.rtx_def* @expand_binop(i32 %237, %struct.optab* %cond304, %struct.rtx_def* %243, %struct.rtx_def* %244, %struct.rtx_def* %245, i32 %246, i32 3)
  store %struct.rtx_def* %call307, %struct.rtx_def** %temp301, align 8
  %247 = load %struct.rtx_def*, %struct.rtx_def** %temp301, align 8
  %tobool308 = icmp ne %struct.rtx_def* %247, null
  br i1 %tobool308, label %if.then.309, label %if.end.310

if.then.309:                                      ; preds = %cond.end
  %248 = load %struct.rtx_def*, %struct.rtx_def** %temp301, align 8
  store %struct.rtx_def* %248, %struct.rtx_def** %retval
  br label %return

if.end.310:                                       ; preds = %cond.end
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.end.296
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.311, %if.then.309, %if.else.286, %if.end.285, %if.then.222, %if.end.210, %for.end.160, %if.else.104, %if.end.103, %if.end.63, %if.then.61
  %249 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %249
}

declare %struct.rtx_def* @expand_divmod(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @expand_cmplxdiv_straight(%struct.rtx_def* %real0, %struct.rtx_def* %real1, %struct.rtx_def* %imag0, %struct.rtx_def* %imag1, %struct.rtx_def* %realr, %struct.rtx_def* %imagr, i32 %submode, i32 %unsignedp, i32 %methods, i32 %class, %struct.optab* %binoptab) #0 {
entry:
  %retval = alloca i32, align 4
  %real0.addr = alloca %struct.rtx_def*, align 8
  %real1.addr = alloca %struct.rtx_def*, align 8
  %imag0.addr = alloca %struct.rtx_def*, align 8
  %imag1.addr = alloca %struct.rtx_def*, align 8
  %realr.addr = alloca %struct.rtx_def*, align 8
  %imagr.addr = alloca %struct.rtx_def*, align 8
  %submode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  %methods.addr = alloca i32, align 4
  %class.addr = alloca i32, align 4
  %binoptab.addr = alloca %struct.optab*, align 8
  %divisor = alloca %struct.rtx_def*, align 8
  %real_t = alloca %struct.rtx_def*, align 8
  %imag_t = alloca %struct.rtx_def*, align 8
  %temp1 = alloca %struct.rtx_def*, align 8
  %temp2 = alloca %struct.rtx_def*, align 8
  %res = alloca %struct.rtx_def*, align 8
  %this_add_optab = alloca %struct.optab*, align 8
  %this_sub_optab = alloca %struct.optab*, align 8
  %this_neg_optab = alloca %struct.optab*, align 8
  %this_mul_optab = alloca %struct.optab*, align 8
  store %struct.rtx_def* %real0, %struct.rtx_def** %real0.addr, align 8
  store %struct.rtx_def* %real1, %struct.rtx_def** %real1.addr, align 8
  store %struct.rtx_def* %imag0, %struct.rtx_def** %imag0.addr, align 8
  store %struct.rtx_def* %imag1, %struct.rtx_def** %imag1.addr, align 8
  store %struct.rtx_def* %realr, %struct.rtx_def** %realr.addr, align 8
  store %struct.rtx_def* %imagr, %struct.rtx_def** %imagr.addr, align 8
  store i32 %submode, i32* %submode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i32 %methods, i32* %methods.addr, align 4
  store i32 %class, i32* %class.addr, align 4
  store %struct.optab* %binoptab, %struct.optab** %binoptab.addr, align 8
  %0 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  store %struct.optab* %0, %struct.optab** %this_add_optab, align 8
  %1 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  store %struct.optab* %1, %struct.optab** %this_sub_optab, align 8
  %2 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  store %struct.optab* %2, %struct.optab** %this_neg_optab, align 8
  %3 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  store %struct.optab* %3, %struct.optab** %this_mul_optab, align 8
  %4 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %5 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 11), align 8
  %cmp = icmp eq %struct.optab* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  store %struct.optab* %6, %struct.optab** %this_add_optab, align 8
  %7 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  store %struct.optab* %7, %struct.optab** %this_sub_optab, align 8
  %8 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  store %struct.optab* %8, %struct.optab** %this_neg_optab, align 8
  %9 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  store %struct.optab* %9, %struct.optab** %this_mul_optab, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %submode.addr, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %call = call %struct.rtx_def* @force_reg(i32 %10, %struct.rtx_def* %11)
  store %struct.rtx_def* %call, %struct.rtx_def** %real0.addr, align 8
  %12 = load i32, i32* %submode.addr, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %call1 = call %struct.rtx_def* @force_reg(i32 %12, %struct.rtx_def* %13)
  store %struct.rtx_def* %call1, %struct.rtx_def** %real1.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %cmp2 = icmp ne %struct.rtx_def* %14, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %15 = load i32, i32* %submode.addr, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %call4 = call %struct.rtx_def* @force_reg(i32 %15, %struct.rtx_def* %16)
  store %struct.rtx_def* %call4, %struct.rtx_def** %imag0.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %17 = load i32, i32* %submode.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %call6 = call %struct.rtx_def* @force_reg(i32 %17, %struct.rtx_def* %18)
  store %struct.rtx_def* %call6, %struct.rtx_def** %imag1.addr, align 8
  %19 = load i32, i32* %submode.addr, align 4
  %20 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %23 = load i32, i32* %unsignedp.addr, align 4
  %24 = load i32, i32* %methods.addr, align 4
  %call7 = call %struct.rtx_def* @expand_binop(i32 %19, %struct.optab* %20, %struct.rtx_def* %21, %struct.rtx_def* %22, %struct.rtx_def* null, i32 %23, i32 %24)
  store %struct.rtx_def* %call7, %struct.rtx_def** %temp1, align 8
  %25 = load i32, i32* %submode.addr, align 4
  %26 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %29 = load i32, i32* %unsignedp.addr, align 4
  %30 = load i32, i32* %methods.addr, align 4
  %call8 = call %struct.rtx_def* @expand_binop(i32 %25, %struct.optab* %26, %struct.rtx_def* %27, %struct.rtx_def* %28, %struct.rtx_def* null, i32 %29, i32 %30)
  store %struct.rtx_def* %call8, %struct.rtx_def** %temp2, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp9 = icmp eq %struct.rtx_def* %31, null
  br i1 %cmp9, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.5
  %32 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %cmp10 = icmp eq %struct.rtx_def* %32, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.lhs.false, %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.lhs.false
  %33 = load i32, i32* %submode.addr, align 4
  %34 = load %struct.optab*, %struct.optab** %this_add_optab, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %37 = load i32, i32* %unsignedp.addr, align 4
  %38 = load i32, i32* %methods.addr, align 4
  %call13 = call %struct.rtx_def* @expand_binop(i32 %33, %struct.optab* %34, %struct.rtx_def* %35, %struct.rtx_def* %36, %struct.rtx_def* null, i32 %37, i32 %38)
  store %struct.rtx_def* %call13, %struct.rtx_def** %divisor, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %cmp14 = icmp eq %struct.rtx_def* %39, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %40 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %cmp17 = icmp eq %struct.rtx_def* %40, null
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.16
  %41 = load i32, i32* %submode.addr, align 4
  %42 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %45 = load i32, i32* %unsignedp.addr, align 4
  %46 = load i32, i32* %methods.addr, align 4
  %call19 = call %struct.rtx_def* @expand_binop(i32 %41, %struct.optab* %42, %struct.rtx_def* %43, %struct.rtx_def* %44, %struct.rtx_def* null, i32 %45, i32 %46)
  store %struct.rtx_def* %call19, %struct.rtx_def** %real_t, align 8
  %47 = load i32, i32* %submode.addr, align 4
  %48 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %51 = load i32, i32* %unsignedp.addr, align 4
  %52 = load i32, i32* %methods.addr, align 4
  %call20 = call %struct.rtx_def* @expand_binop(i32 %47, %struct.optab* %48, %struct.rtx_def* %49, %struct.rtx_def* %50, %struct.rtx_def* null, i32 %51, i32 %52)
  store %struct.rtx_def* %call20, %struct.rtx_def** %imag_t, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %cmp21 = icmp eq %struct.rtx_def* %53, null
  br i1 %cmp21, label %if.then.24, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %if.then.18
  %54 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %cmp23 = icmp eq %struct.rtx_def* %54, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.lhs.false.22, %if.then.18
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %lor.lhs.false.22
  %55 = load i32, i32* %submode.addr, align 4
  %56 = load %struct.optab*, %struct.optab** %this_neg_optab, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %58 = load i32, i32* %unsignedp.addr, align 4
  %call26 = call %struct.rtx_def* @expand_unop(i32 %55, %struct.optab* %56, %struct.rtx_def* %57, %struct.rtx_def* null, i32 %58)
  store %struct.rtx_def* %call26, %struct.rtx_def** %imag_t, align 8
  br label %if.end.48

if.else:                                          ; preds = %if.end.16
  %59 = load i32, i32* %submode.addr, align 4
  %60 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %63 = load i32, i32* %unsignedp.addr, align 4
  %64 = load i32, i32* %methods.addr, align 4
  %call27 = call %struct.rtx_def* @expand_binop(i32 %59, %struct.optab* %60, %struct.rtx_def* %61, %struct.rtx_def* %62, %struct.rtx_def* null, i32 %63, i32 %64)
  store %struct.rtx_def* %call27, %struct.rtx_def** %temp1, align 8
  %65 = load i32, i32* %submode.addr, align 4
  %66 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %69 = load i32, i32* %unsignedp.addr, align 4
  %70 = load i32, i32* %methods.addr, align 4
  %call28 = call %struct.rtx_def* @expand_binop(i32 %65, %struct.optab* %66, %struct.rtx_def* %67, %struct.rtx_def* %68, %struct.rtx_def* null, i32 %69, i32 %70)
  store %struct.rtx_def* %call28, %struct.rtx_def** %temp2, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp29 = icmp eq %struct.rtx_def* %71, null
  br i1 %cmp29, label %if.then.32, label %lor.lhs.false.30

lor.lhs.false.30:                                 ; preds = %if.else
  %72 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %cmp31 = icmp eq %struct.rtx_def* %72, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %lor.lhs.false.30, %if.else
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %lor.lhs.false.30
  %73 = load i32, i32* %submode.addr, align 4
  %74 = load %struct.optab*, %struct.optab** %this_add_optab, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %77 = load i32, i32* %unsignedp.addr, align 4
  %78 = load i32, i32* %methods.addr, align 4
  %call34 = call %struct.rtx_def* @expand_binop(i32 %73, %struct.optab* %74, %struct.rtx_def* %75, %struct.rtx_def* %76, %struct.rtx_def* null, i32 %77, i32 %78)
  store %struct.rtx_def* %call34, %struct.rtx_def** %real_t, align 8
  %79 = load i32, i32* %submode.addr, align 4
  %80 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %83 = load i32, i32* %unsignedp.addr, align 4
  %84 = load i32, i32* %methods.addr, align 4
  %call35 = call %struct.rtx_def* @expand_binop(i32 %79, %struct.optab* %80, %struct.rtx_def* %81, %struct.rtx_def* %82, %struct.rtx_def* null, i32 %83, i32 %84)
  store %struct.rtx_def* %call35, %struct.rtx_def** %temp1, align 8
  %85 = load i32, i32* %submode.addr, align 4
  %86 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %89 = load i32, i32* %unsignedp.addr, align 4
  %90 = load i32, i32* %methods.addr, align 4
  %call36 = call %struct.rtx_def* @expand_binop(i32 %85, %struct.optab* %86, %struct.rtx_def* %87, %struct.rtx_def* %88, %struct.rtx_def* null, i32 %89, i32 %90)
  store %struct.rtx_def* %call36, %struct.rtx_def** %temp2, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp37 = icmp eq %struct.rtx_def* %91, null
  br i1 %cmp37, label %if.then.40, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.end.33
  %92 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %cmp39 = icmp eq %struct.rtx_def* %92, null
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %lor.lhs.false.38, %if.end.33
  store i32 0, i32* %retval
  br label %return

if.end.41:                                        ; preds = %lor.lhs.false.38
  %93 = load i32, i32* %submode.addr, align 4
  %94 = load %struct.optab*, %struct.optab** %this_sub_optab, align 8
  %95 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %96 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %97 = load i32, i32* %unsignedp.addr, align 4
  %98 = load i32, i32* %methods.addr, align 4
  %call42 = call %struct.rtx_def* @expand_binop(i32 %93, %struct.optab* %94, %struct.rtx_def* %95, %struct.rtx_def* %96, %struct.rtx_def* null, i32 %97, i32 %98)
  store %struct.rtx_def* %call42, %struct.rtx_def** %imag_t, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %cmp43 = icmp eq %struct.rtx_def* %99, null
  br i1 %cmp43, label %if.then.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %if.end.41
  %100 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %cmp45 = icmp eq %struct.rtx_def* %100, null
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.44, %if.end.41
  store i32 0, i32* %retval
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false.44
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.25
  %101 = load i32, i32* %class.addr, align 4
  %cmp49 = icmp eq i32 %101, 6
  br i1 %cmp49, label %if.then.50, label %if.else.52

if.then.50:                                       ; preds = %if.end.48
  %102 = load i32, i32* %submode.addr, align 4
  %103 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %107 = load i32, i32* %unsignedp.addr, align 4
  %108 = load i32, i32* %methods.addr, align 4
  %call51 = call %struct.rtx_def* @expand_binop(i32 %102, %struct.optab* %103, %struct.rtx_def* %104, %struct.rtx_def* %105, %struct.rtx_def* %106, i32 %107, i32 %108)
  store %struct.rtx_def* %call51, %struct.rtx_def** %res, align 8
  br label %if.end.54

if.else.52:                                       ; preds = %if.end.48
  %109 = load i32, i32* %submode.addr, align 4
  %110 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %113 = load i32, i32* %unsignedp.addr, align 4
  %call53 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %109, %struct.rtx_def* %110, %struct.rtx_def* %111, %struct.rtx_def* %112, i32 %113)
  store %struct.rtx_def* %call53, %struct.rtx_def** %res, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.52, %if.then.50
  %114 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp55 = icmp eq %struct.rtx_def* %114, null
  br i1 %cmp55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.end.54
  store i32 0, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.end.54
  %115 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %cmp58 = icmp ne %struct.rtx_def* %115, %116
  br i1 %cmp58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.end.57
  %117 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call60 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %117, %struct.rtx_def* %118)
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.57
  %119 = load i32, i32* %class.addr, align 4
  %cmp62 = icmp eq i32 %119, 6
  br i1 %cmp62, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %if.end.61
  %120 = load i32, i32* %submode.addr, align 4
  %121 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %125 = load i32, i32* %unsignedp.addr, align 4
  %126 = load i32, i32* %methods.addr, align 4
  %call64 = call %struct.rtx_def* @expand_binop(i32 %120, %struct.optab* %121, %struct.rtx_def* %122, %struct.rtx_def* %123, %struct.rtx_def* %124, i32 %125, i32 %126)
  store %struct.rtx_def* %call64, %struct.rtx_def** %res, align 8
  br label %if.end.67

if.else.65:                                       ; preds = %if.end.61
  %127 = load i32, i32* %submode.addr, align 4
  %128 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %131 = load i32, i32* %unsignedp.addr, align 4
  %call66 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %127, %struct.rtx_def* %128, %struct.rtx_def* %129, %struct.rtx_def* %130, i32 %131)
  store %struct.rtx_def* %call66, %struct.rtx_def** %res, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.63
  %132 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp68 = icmp eq %struct.rtx_def* %132, null
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.67
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.67
  %133 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %134 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %cmp71 = icmp ne %struct.rtx_def* %133, %134
  br i1 %cmp71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.70
  %135 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call73 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %135, %struct.rtx_def* %136)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.70
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.74, %if.then.69, %if.then.56, %if.then.46, %if.then.40, %if.then.32, %if.then.24, %if.then.15, %if.then.11
  %137 = load i32, i32* %retval
  ret i32 %137
}

; Function Attrs: nounwind uwtable
define internal i32 @expand_cmplxdiv_wide(%struct.rtx_def* %real0, %struct.rtx_def* %real1, %struct.rtx_def* %imag0, %struct.rtx_def* %imag1, %struct.rtx_def* %realr, %struct.rtx_def* %imagr, i32 %submode, i32 %unsignedp, i32 %methods, i32 %class, %struct.optab* %binoptab) #0 {
entry:
  %retval = alloca i32, align 4
  %real0.addr = alloca %struct.rtx_def*, align 8
  %real1.addr = alloca %struct.rtx_def*, align 8
  %imag0.addr = alloca %struct.rtx_def*, align 8
  %imag1.addr = alloca %struct.rtx_def*, align 8
  %realr.addr = alloca %struct.rtx_def*, align 8
  %imagr.addr = alloca %struct.rtx_def*, align 8
  %submode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  %methods.addr = alloca i32, align 4
  %class.addr = alloca i32, align 4
  %binoptab.addr = alloca %struct.optab*, align 8
  %ratio = alloca %struct.rtx_def*, align 8
  %divisor = alloca %struct.rtx_def*, align 8
  %real_t = alloca %struct.rtx_def*, align 8
  %imag_t = alloca %struct.rtx_def*, align 8
  %temp1 = alloca %struct.rtx_def*, align 8
  %temp2 = alloca %struct.rtx_def*, align 8
  %lab1 = alloca %struct.rtx_def*, align 8
  %lab2 = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %res = alloca %struct.rtx_def*, align 8
  %this_add_optab = alloca %struct.optab*, align 8
  %this_sub_optab = alloca %struct.optab*, align 8
  %this_neg_optab = alloca %struct.optab*, align 8
  %this_mul_optab = alloca %struct.optab*, align 8
  store %struct.rtx_def* %real0, %struct.rtx_def** %real0.addr, align 8
  store %struct.rtx_def* %real1, %struct.rtx_def** %real1.addr, align 8
  store %struct.rtx_def* %imag0, %struct.rtx_def** %imag0.addr, align 8
  store %struct.rtx_def* %imag1, %struct.rtx_def** %imag1.addr, align 8
  store %struct.rtx_def* %realr, %struct.rtx_def** %realr.addr, align 8
  store %struct.rtx_def* %imagr, %struct.rtx_def** %imagr.addr, align 8
  store i32 %submode, i32* %submode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i32 %methods, i32* %methods.addr, align 4
  store i32 %class, i32* %class.addr, align 4
  store %struct.optab* %binoptab, %struct.optab** %binoptab.addr, align 8
  %0 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  store %struct.optab* %0, %struct.optab** %this_add_optab, align 8
  %1 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  store %struct.optab* %1, %struct.optab** %this_sub_optab, align 8
  %2 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  store %struct.optab* %2, %struct.optab** %this_neg_optab, align 8
  %3 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  store %struct.optab* %3, %struct.optab** %this_mul_optab, align 8
  %4 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %5 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 11), align 8
  %cmp = icmp eq %struct.optab* %4, %5
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  store %struct.optab* %6, %struct.optab** %this_add_optab, align 8
  %7 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  store %struct.optab* %7, %struct.optab** %this_sub_optab, align 8
  %8 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  store %struct.optab* %8, %struct.optab** %this_neg_optab, align 8
  %9 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  store %struct.optab* %9, %struct.optab** %this_mul_optab, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %submode.addr, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %call = call %struct.rtx_def* @force_reg(i32 %10, %struct.rtx_def* %11)
  store %struct.rtx_def* %call, %struct.rtx_def** %real0.addr, align 8
  %12 = load i32, i32* %submode.addr, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %call1 = call %struct.rtx_def* @force_reg(i32 %12, %struct.rtx_def* %13)
  store %struct.rtx_def* %call1, %struct.rtx_def** %real1.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %cmp2 = icmp ne %struct.rtx_def* %14, null
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %15 = load i32, i32* %submode.addr, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %call4 = call %struct.rtx_def* @force_reg(i32 %15, %struct.rtx_def* %16)
  store %struct.rtx_def* %call4, %struct.rtx_def** %imag0.addr, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.end
  %17 = load i32, i32* %submode.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %call6 = call %struct.rtx_def* @force_reg(i32 %17, %struct.rtx_def* %18)
  store %struct.rtx_def* %call6, %struct.rtx_def** %imag1.addr, align 8
  %19 = load i32, i32* %unsignedp.addr, align 4
  %tobool = icmp ne i32 %19, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.5
  %20 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %temp1, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %temp2, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.end.5
  %22 = load i32, i32* %submode.addr, align 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %24 = load i32, i32* %unsignedp.addr, align 4
  %call8 = call %struct.rtx_def* @expand_abs(i32 %22, %struct.rtx_def* %23, %struct.rtx_def* null, i32 %24, i32 1)
  store %struct.rtx_def* %call8, %struct.rtx_def** %temp1, align 8
  %25 = load i32, i32* %submode.addr, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %27 = load i32, i32* %unsignedp.addr, align 4
  %call9 = call %struct.rtx_def* @expand_abs(i32 %25, %struct.rtx_def* %26, %struct.rtx_def* null, i32 %27, i32 1)
  store %struct.rtx_def* %call9, %struct.rtx_def** %temp2, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.7
  %28 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp11 = icmp eq %struct.rtx_def* %28, null
  br i1 %cmp11, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.10
  %29 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %cmp12 = icmp eq %struct.rtx_def* %29, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  %30 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load = load i32, i32* %31, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %call15 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call15, %struct.rtx_def** %lab1, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %34 = load i32, i32* %mode, align 4
  %35 = load i32, i32* %unsignedp.addr, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %lab1, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %32, %struct.rtx_def* %33, i32 107, %struct.rtx_def* null, i32 %34, i32 %35, %struct.rtx_def* %36)
  %37 = load i32, i32* %class.addr, align 4
  %cmp16 = icmp eq i32 %37, 6
  br i1 %cmp16, label %if.then.17, label %if.else.19

if.then.17:                                       ; preds = %if.end.14
  %38 = load i32, i32* %submode.addr, align 4
  %39 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %42 = load i32, i32* %unsignedp.addr, align 4
  %43 = load i32, i32* %methods.addr, align 4
  %call18 = call %struct.rtx_def* @expand_binop(i32 %38, %struct.optab* %39, %struct.rtx_def* %40, %struct.rtx_def* %41, %struct.rtx_def* null, i32 %42, i32 %43)
  store %struct.rtx_def* %call18, %struct.rtx_def** %ratio, align 8
  br label %if.end.21

if.else.19:                                       ; preds = %if.end.14
  %44 = load i32, i32* %submode.addr, align 4
  %45 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %47 = load i32, i32* %unsignedp.addr, align 4
  %call20 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %44, %struct.rtx_def* %45, %struct.rtx_def* %46, %struct.rtx_def* null, i32 %47)
  store %struct.rtx_def* %call20, %struct.rtx_def** %ratio, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.19, %if.then.17
  %48 = load %struct.rtx_def*, %struct.rtx_def** %ratio, align 8
  %cmp22 = icmp eq %struct.rtx_def* %48, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.21
  %49 = load i32, i32* %submode.addr, align 4
  %50 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %ratio, align 8
  %53 = load i32, i32* %unsignedp.addr, align 4
  %54 = load i32, i32* %methods.addr, align 4
  %call25 = call %struct.rtx_def* @expand_binop(i32 %49, %struct.optab* %50, %struct.rtx_def* %51, %struct.rtx_def* %52, %struct.rtx_def* null, i32 %53, i32 %54)
  store %struct.rtx_def* %call25, %struct.rtx_def** %temp1, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp26 = icmp eq %struct.rtx_def* %55, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end.24
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end.24
  %56 = load i32, i32* %submode.addr, align 4
  %57 = load %struct.optab*, %struct.optab** %this_add_optab, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %60 = load i32, i32* %unsignedp.addr, align 4
  %61 = load i32, i32* %methods.addr, align 4
  %call29 = call %struct.rtx_def* @expand_binop(i32 %56, %struct.optab* %57, %struct.rtx_def* %58, %struct.rtx_def* %59, %struct.rtx_def* null, i32 %60, i32 %61)
  store %struct.rtx_def* %call29, %struct.rtx_def** %divisor, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %cmp30 = icmp eq %struct.rtx_def* %62, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.28
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.28
  %63 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %cmp33 = icmp eq %struct.rtx_def* %63, null
  br i1 %cmp33, label %if.then.34, label %if.else.45

if.then.34:                                       ; preds = %if.end.32
  %64 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  store %struct.rtx_def* %64, %struct.rtx_def** %real_t, align 8
  %65 = load i32, i32* %submode.addr, align 4
  %66 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %ratio, align 8
  %69 = load i32, i32* %unsignedp.addr, align 4
  %70 = load i32, i32* %methods.addr, align 4
  %call35 = call %struct.rtx_def* @expand_binop(i32 %65, %struct.optab* %66, %struct.rtx_def* %67, %struct.rtx_def* %68, %struct.rtx_def* null, i32 %69, i32 %70)
  store %struct.rtx_def* %call35, %struct.rtx_def** %imag_t, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %cmp36 = icmp eq %struct.rtx_def* %71, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.then.34
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.then.34
  %72 = load i32, i32* %submode.addr, align 4
  %73 = load %struct.optab*, %struct.optab** %this_neg_optab, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %75 = load i32, i32* %unsignedp.addr, align 4
  %call39 = call %struct.rtx_def* @expand_unop(i32 %72, %struct.optab* %73, %struct.rtx_def* %74, %struct.rtx_def* null, i32 %75)
  store %struct.rtx_def* %call39, %struct.rtx_def** %imag_t, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %cmp40 = icmp eq %struct.rtx_def* %76, null
  br i1 %cmp40, label %if.then.43, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %if.end.38
  %77 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %cmp42 = icmp eq %struct.rtx_def* %77, null
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %lor.lhs.false.41, %if.end.38
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %lor.lhs.false.41
  br label %if.end.61

if.else.45:                                       ; preds = %if.end.32
  %78 = load i32, i32* %submode.addr, align 4
  %79 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %ratio, align 8
  %82 = load i32, i32* %unsignedp.addr, align 4
  %83 = load i32, i32* %methods.addr, align 4
  %call46 = call %struct.rtx_def* @expand_binop(i32 %78, %struct.optab* %79, %struct.rtx_def* %80, %struct.rtx_def* %81, %struct.rtx_def* null, i32 %82, i32 %83)
  store %struct.rtx_def* %call46, %struct.rtx_def** %temp1, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp47 = icmp eq %struct.rtx_def* %84, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.else.45
  store i32 0, i32* %retval
  br label %return

if.end.49:                                        ; preds = %if.else.45
  %85 = load i32, i32* %submode.addr, align 4
  %86 = load %struct.optab*, %struct.optab** %this_add_optab, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %89 = load i32, i32* %unsignedp.addr, align 4
  %90 = load i32, i32* %methods.addr, align 4
  %call50 = call %struct.rtx_def* @expand_binop(i32 %85, %struct.optab* %86, %struct.rtx_def* %87, %struct.rtx_def* %88, %struct.rtx_def* null, i32 %89, i32 %90)
  store %struct.rtx_def* %call50, %struct.rtx_def** %real_t, align 8
  %91 = load i32, i32* %submode.addr, align 4
  %92 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %93 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %ratio, align 8
  %95 = load i32, i32* %unsignedp.addr, align 4
  %96 = load i32, i32* %methods.addr, align 4
  %call51 = call %struct.rtx_def* @expand_binop(i32 %91, %struct.optab* %92, %struct.rtx_def* %93, %struct.rtx_def* %94, %struct.rtx_def* null, i32 %95, i32 %96)
  store %struct.rtx_def* %call51, %struct.rtx_def** %temp1, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp52 = icmp eq %struct.rtx_def* %97, null
  br i1 %cmp52, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.end.49
  store i32 0, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.end.49
  %98 = load i32, i32* %submode.addr, align 4
  %99 = load %struct.optab*, %struct.optab** %this_sub_optab, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %102 = load i32, i32* %unsignedp.addr, align 4
  %103 = load i32, i32* %methods.addr, align 4
  %call55 = call %struct.rtx_def* @expand_binop(i32 %98, %struct.optab* %99, %struct.rtx_def* %100, %struct.rtx_def* %101, %struct.rtx_def* null, i32 %102, i32 %103)
  store %struct.rtx_def* %call55, %struct.rtx_def** %imag_t, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %cmp56 = icmp eq %struct.rtx_def* %104, null
  br i1 %cmp56, label %if.then.59, label %lor.lhs.false.57

lor.lhs.false.57:                                 ; preds = %if.end.54
  %105 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %cmp58 = icmp eq %struct.rtx_def* %105, null
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %lor.lhs.false.57, %if.end.54
  store i32 0, i32* %retval
  br label %return

if.end.60:                                        ; preds = %lor.lhs.false.57
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.end.44
  %106 = load i32, i32* %class.addr, align 4
  %cmp62 = icmp eq i32 %106, 6
  br i1 %cmp62, label %if.then.63, label %if.else.65

if.then.63:                                       ; preds = %if.end.61
  %107 = load i32, i32* %submode.addr, align 4
  %108 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %110 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %112 = load i32, i32* %unsignedp.addr, align 4
  %113 = load i32, i32* %methods.addr, align 4
  %call64 = call %struct.rtx_def* @expand_binop(i32 %107, %struct.optab* %108, %struct.rtx_def* %109, %struct.rtx_def* %110, %struct.rtx_def* %111, i32 %112, i32 %113)
  store %struct.rtx_def* %call64, %struct.rtx_def** %res, align 8
  br label %if.end.67

if.else.65:                                       ; preds = %if.end.61
  %114 = load i32, i32* %submode.addr, align 4
  %115 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %118 = load i32, i32* %unsignedp.addr, align 4
  %call66 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %114, %struct.rtx_def* %115, %struct.rtx_def* %116, %struct.rtx_def* %117, i32 %118)
  store %struct.rtx_def* %call66, %struct.rtx_def** %res, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.65, %if.then.63
  %119 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp68 = icmp eq %struct.rtx_def* %119, null
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %if.end.67
  store i32 0, i32* %retval
  br label %return

if.end.70:                                        ; preds = %if.end.67
  %120 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %cmp71 = icmp ne %struct.rtx_def* %120, %121
  br i1 %cmp71, label %if.then.72, label %if.end.74

if.then.72:                                       ; preds = %if.end.70
  %122 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call73 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %122, %struct.rtx_def* %123)
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.72, %if.end.70
  %124 = load i32, i32* %class.addr, align 4
  %cmp75 = icmp eq i32 %124, 6
  br i1 %cmp75, label %if.then.76, label %if.else.78

if.then.76:                                       ; preds = %if.end.74
  %125 = load i32, i32* %submode.addr, align 4
  %126 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %127 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %128 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %130 = load i32, i32* %unsignedp.addr, align 4
  %131 = load i32, i32* %methods.addr, align 4
  %call77 = call %struct.rtx_def* @expand_binop(i32 %125, %struct.optab* %126, %struct.rtx_def* %127, %struct.rtx_def* %128, %struct.rtx_def* %129, i32 %130, i32 %131)
  store %struct.rtx_def* %call77, %struct.rtx_def** %res, align 8
  br label %if.end.80

if.else.78:                                       ; preds = %if.end.74
  %132 = load i32, i32* %submode.addr, align 4
  %133 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %134 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %135 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %136 = load i32, i32* %unsignedp.addr, align 4
  %call79 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %132, %struct.rtx_def* %133, %struct.rtx_def* %134, %struct.rtx_def* %135, i32 %136)
  store %struct.rtx_def* %call79, %struct.rtx_def** %res, align 8
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.78, %if.then.76
  %137 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp81 = icmp eq %struct.rtx_def* %137, null
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.80
  store i32 0, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.end.80
  %138 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %139 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %cmp84 = icmp ne %struct.rtx_def* %138, %139
  br i1 %cmp84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %if.end.83
  %140 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call86 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %140, %struct.rtx_def* %141)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.85, %if.end.83
  %call88 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call88, %struct.rtx_def** %lab2, align 8
  %142 = load %struct.rtx_def*, %struct.rtx_def** %lab2, align 8
  %call89 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %142)
  %call90 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call89)
  %call91 = call %struct.rtx_def* @emit_barrier()
  %143 = load %struct.rtx_def*, %struct.rtx_def** %lab1, align 8
  %call92 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %143)
  %144 = load i32, i32* %class.addr, align 4
  %cmp93 = icmp eq i32 %144, 6
  br i1 %cmp93, label %if.then.94, label %if.else.96

if.then.94:                                       ; preds = %if.end.87
  %145 = load i32, i32* %submode.addr, align 4
  %146 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %147 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %148 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %149 = load i32, i32* %unsignedp.addr, align 4
  %150 = load i32, i32* %methods.addr, align 4
  %call95 = call %struct.rtx_def* @expand_binop(i32 %145, %struct.optab* %146, %struct.rtx_def* %147, %struct.rtx_def* %148, %struct.rtx_def* null, i32 %149, i32 %150)
  store %struct.rtx_def* %call95, %struct.rtx_def** %ratio, align 8
  br label %if.end.98

if.else.96:                                       ; preds = %if.end.87
  %151 = load i32, i32* %submode.addr, align 4
  %152 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %153 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %154 = load i32, i32* %unsignedp.addr, align 4
  %call97 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %151, %struct.rtx_def* %152, %struct.rtx_def* %153, %struct.rtx_def* null, i32 %154)
  store %struct.rtx_def* %call97, %struct.rtx_def** %ratio, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.96, %if.then.94
  %155 = load %struct.rtx_def*, %struct.rtx_def** %ratio, align 8
  %cmp99 = icmp eq %struct.rtx_def* %155, null
  br i1 %cmp99, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.98
  store i32 0, i32* %retval
  br label %return

if.end.101:                                       ; preds = %if.end.98
  %156 = load i32, i32* %submode.addr, align 4
  %157 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %158 = load %struct.rtx_def*, %struct.rtx_def** %real1.addr, align 8
  %159 = load %struct.rtx_def*, %struct.rtx_def** %ratio, align 8
  %160 = load i32, i32* %unsignedp.addr, align 4
  %161 = load i32, i32* %methods.addr, align 4
  %call102 = call %struct.rtx_def* @expand_binop(i32 %156, %struct.optab* %157, %struct.rtx_def* %158, %struct.rtx_def* %159, %struct.rtx_def* null, i32 %160, i32 %161)
  store %struct.rtx_def* %call102, %struct.rtx_def** %temp1, align 8
  %162 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp103 = icmp eq %struct.rtx_def* %162, null
  br i1 %cmp103, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %if.end.101
  store i32 0, i32* %retval
  br label %return

if.end.105:                                       ; preds = %if.end.101
  %163 = load i32, i32* %submode.addr, align 4
  %164 = load %struct.optab*, %struct.optab** %this_add_optab, align 8
  %165 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %166 = load %struct.rtx_def*, %struct.rtx_def** %imag1.addr, align 8
  %167 = load i32, i32* %unsignedp.addr, align 4
  %168 = load i32, i32* %methods.addr, align 4
  %call106 = call %struct.rtx_def* @expand_binop(i32 %163, %struct.optab* %164, %struct.rtx_def* %165, %struct.rtx_def* %166, %struct.rtx_def* null, i32 %167, i32 %168)
  store %struct.rtx_def* %call106, %struct.rtx_def** %divisor, align 8
  %169 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %cmp107 = icmp eq %struct.rtx_def* %169, null
  br i1 %cmp107, label %if.then.108, label %if.end.109

if.then.108:                                      ; preds = %if.end.105
  store i32 0, i32* %retval
  br label %return

if.end.109:                                       ; preds = %if.end.105
  %170 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %cmp110 = icmp eq %struct.rtx_def* %170, null
  br i1 %cmp110, label %if.then.111, label %if.else.119

if.then.111:                                      ; preds = %if.end.109
  %171 = load i32, i32* %submode.addr, align 4
  %172 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %173 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %174 = load %struct.rtx_def*, %struct.rtx_def** %ratio, align 8
  %175 = load i32, i32* %unsignedp.addr, align 4
  %176 = load i32, i32* %methods.addr, align 4
  %call112 = call %struct.rtx_def* @expand_binop(i32 %171, %struct.optab* %172, %struct.rtx_def* %173, %struct.rtx_def* %174, %struct.rtx_def* null, i32 %175, i32 %176)
  store %struct.rtx_def* %call112, %struct.rtx_def** %real_t, align 8
  %177 = load i32, i32* %submode.addr, align 4
  %178 = load %struct.optab*, %struct.optab** %this_neg_optab, align 8
  %179 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %180 = load i32, i32* %unsignedp.addr, align 4
  %call113 = call %struct.rtx_def* @expand_unop(i32 %177, %struct.optab* %178, %struct.rtx_def* %179, %struct.rtx_def* null, i32 %180)
  store %struct.rtx_def* %call113, %struct.rtx_def** %imag_t, align 8
  %181 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %cmp114 = icmp eq %struct.rtx_def* %181, null
  br i1 %cmp114, label %if.then.117, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %if.then.111
  %182 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %cmp116 = icmp eq %struct.rtx_def* %182, null
  br i1 %cmp116, label %if.then.117, label %if.end.118

if.then.117:                                      ; preds = %lor.lhs.false.115, %if.then.111
  store i32 0, i32* %retval
  br label %return

if.end.118:                                       ; preds = %lor.lhs.false.115
  br label %if.end.135

if.else.119:                                      ; preds = %if.end.109
  %183 = load i32, i32* %submode.addr, align 4
  %184 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %185 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %186 = load %struct.rtx_def*, %struct.rtx_def** %ratio, align 8
  %187 = load i32, i32* %unsignedp.addr, align 4
  %188 = load i32, i32* %methods.addr, align 4
  %call120 = call %struct.rtx_def* @expand_binop(i32 %183, %struct.optab* %184, %struct.rtx_def* %185, %struct.rtx_def* %186, %struct.rtx_def* null, i32 %187, i32 %188)
  store %struct.rtx_def* %call120, %struct.rtx_def** %temp1, align 8
  %189 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp121 = icmp eq %struct.rtx_def* %189, null
  br i1 %cmp121, label %if.then.122, label %if.end.123

if.then.122:                                      ; preds = %if.else.119
  store i32 0, i32* %retval
  br label %return

if.end.123:                                       ; preds = %if.else.119
  %190 = load i32, i32* %submode.addr, align 4
  %191 = load %struct.optab*, %struct.optab** %this_add_optab, align 8
  %192 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %193 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %194 = load i32, i32* %unsignedp.addr, align 4
  %195 = load i32, i32* %methods.addr, align 4
  %call124 = call %struct.rtx_def* @expand_binop(i32 %190, %struct.optab* %191, %struct.rtx_def* %192, %struct.rtx_def* %193, %struct.rtx_def* null, i32 %194, i32 %195)
  store %struct.rtx_def* %call124, %struct.rtx_def** %real_t, align 8
  %196 = load i32, i32* %submode.addr, align 4
  %197 = load %struct.optab*, %struct.optab** %this_mul_optab, align 8
  %198 = load %struct.rtx_def*, %struct.rtx_def** %imag0.addr, align 8
  %199 = load %struct.rtx_def*, %struct.rtx_def** %ratio, align 8
  %200 = load i32, i32* %unsignedp.addr, align 4
  %201 = load i32, i32* %methods.addr, align 4
  %call125 = call %struct.rtx_def* @expand_binop(i32 %196, %struct.optab* %197, %struct.rtx_def* %198, %struct.rtx_def* %199, %struct.rtx_def* null, i32 %200, i32 %201)
  store %struct.rtx_def* %call125, %struct.rtx_def** %temp1, align 8
  %202 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %cmp126 = icmp eq %struct.rtx_def* %202, null
  br i1 %cmp126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.123
  store i32 0, i32* %retval
  br label %return

if.end.128:                                       ; preds = %if.end.123
  %203 = load i32, i32* %submode.addr, align 4
  %204 = load %struct.optab*, %struct.optab** %this_sub_optab, align 8
  %205 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %206 = load %struct.rtx_def*, %struct.rtx_def** %real0.addr, align 8
  %207 = load i32, i32* %unsignedp.addr, align 4
  %208 = load i32, i32* %methods.addr, align 4
  %call129 = call %struct.rtx_def* @expand_binop(i32 %203, %struct.optab* %204, %struct.rtx_def* %205, %struct.rtx_def* %206, %struct.rtx_def* null, i32 %207, i32 %208)
  store %struct.rtx_def* %call129, %struct.rtx_def** %imag_t, align 8
  %209 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %cmp130 = icmp eq %struct.rtx_def* %209, null
  br i1 %cmp130, label %if.then.133, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %if.end.128
  %210 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %cmp132 = icmp eq %struct.rtx_def* %210, null
  br i1 %cmp132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %lor.lhs.false.131, %if.end.128
  store i32 0, i32* %retval
  br label %return

if.end.134:                                       ; preds = %lor.lhs.false.131
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.end.118
  %211 = load i32, i32* %class.addr, align 4
  %cmp136 = icmp eq i32 %211, 6
  br i1 %cmp136, label %if.then.137, label %if.else.139

if.then.137:                                      ; preds = %if.end.135
  %212 = load i32, i32* %submode.addr, align 4
  %213 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %214 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %215 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %216 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %217 = load i32, i32* %unsignedp.addr, align 4
  %218 = load i32, i32* %methods.addr, align 4
  %call138 = call %struct.rtx_def* @expand_binop(i32 %212, %struct.optab* %213, %struct.rtx_def* %214, %struct.rtx_def* %215, %struct.rtx_def* %216, i32 %217, i32 %218)
  store %struct.rtx_def* %call138, %struct.rtx_def** %res, align 8
  br label %if.end.141

if.else.139:                                      ; preds = %if.end.135
  %219 = load i32, i32* %submode.addr, align 4
  %220 = load %struct.rtx_def*, %struct.rtx_def** %real_t, align 8
  %221 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %222 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %223 = load i32, i32* %unsignedp.addr, align 4
  %call140 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %219, %struct.rtx_def* %220, %struct.rtx_def* %221, %struct.rtx_def* %222, i32 %223)
  store %struct.rtx_def* %call140, %struct.rtx_def** %res, align 8
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.139, %if.then.137
  %224 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp142 = icmp eq %struct.rtx_def* %224, null
  br i1 %cmp142, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.141
  store i32 0, i32* %retval
  br label %return

if.end.144:                                       ; preds = %if.end.141
  %225 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %226 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %cmp145 = icmp ne %struct.rtx_def* %225, %226
  br i1 %cmp145, label %if.then.146, label %if.end.148

if.then.146:                                      ; preds = %if.end.144
  %227 = load %struct.rtx_def*, %struct.rtx_def** %realr.addr, align 8
  %228 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call147 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %227, %struct.rtx_def* %228)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %if.end.144
  %229 = load i32, i32* %class.addr, align 4
  %cmp149 = icmp eq i32 %229, 6
  br i1 %cmp149, label %if.then.150, label %if.else.152

if.then.150:                                      ; preds = %if.end.148
  %230 = load i32, i32* %submode.addr, align 4
  %231 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %232 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %234 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %235 = load i32, i32* %unsignedp.addr, align 4
  %236 = load i32, i32* %methods.addr, align 4
  %call151 = call %struct.rtx_def* @expand_binop(i32 %230, %struct.optab* %231, %struct.rtx_def* %232, %struct.rtx_def* %233, %struct.rtx_def* %234, i32 %235, i32 %236)
  store %struct.rtx_def* %call151, %struct.rtx_def** %res, align 8
  br label %if.end.154

if.else.152:                                      ; preds = %if.end.148
  %237 = load i32, i32* %submode.addr, align 4
  %238 = load %struct.rtx_def*, %struct.rtx_def** %imag_t, align 8
  %239 = load %struct.rtx_def*, %struct.rtx_def** %divisor, align 8
  %240 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %241 = load i32, i32* %unsignedp.addr, align 4
  %call153 = call %struct.rtx_def* @expand_divmod(i32 0, i32 62, i32 %237, %struct.rtx_def* %238, %struct.rtx_def* %239, %struct.rtx_def* %240, i32 %241)
  store %struct.rtx_def* %call153, %struct.rtx_def** %res, align 8
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.152, %if.then.150
  %242 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %cmp155 = icmp eq %struct.rtx_def* %242, null
  br i1 %cmp155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.154
  store i32 0, i32* %retval
  br label %return

if.end.157:                                       ; preds = %if.end.154
  %243 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %244 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %cmp158 = icmp ne %struct.rtx_def* %243, %244
  br i1 %cmp158, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %if.end.157
  %245 = load %struct.rtx_def*, %struct.rtx_def** %imagr.addr, align 8
  %246 = load %struct.rtx_def*, %struct.rtx_def** %res, align 8
  %call160 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %245, %struct.rtx_def* %246)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.159, %if.end.157
  %247 = load %struct.rtx_def*, %struct.rtx_def** %lab2, align 8
  %call162 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %247)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.161, %if.then.156, %if.then.143, %if.then.133, %if.then.127, %if.then.122, %if.then.117, %if.then.108, %if.then.104, %if.then.100, %if.then.82, %if.then.69, %if.then.59, %if.then.53, %if.then.48, %if.then.43, %if.then.37, %if.then.31, %if.then.27, %if.then.23, %if.then.13
  %248 = load i32, i32* %retval
  ret i32 %248
}

declare %struct.rtx_def* @emit_library_call_value(%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, ...) #2

; Function Attrs: nounwind uwtable
define void @emit_libcall_block(%struct.rtx_def* %insns, %struct.rtx_def* %target, %struct.rtx_def* %result, %struct.rtx_def* %equiv) #0 {
entry:
  %insns.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %result.addr = alloca %struct.rtx_def*, align 8
  %equiv.addr = alloca %struct.rtx_def*, align 8
  %final_dest = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %first = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %note34 = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %note85 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insns, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %result, %struct.rtx_def** %result.addr, align 8
  store %struct.rtx_def* %equiv, %struct.rtx_def** %equiv.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %final_dest, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 27
  %bf.clear2 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load3 = load i32, i32* %6, align 8
  %bf.lshr4 = lshr i32 %bf.load3, 16
  %bf.clear5 = and i32 %bf.lshr4, 255
  %call = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear5)
  store %struct.rtx_def* %call, %struct.rtx_def** %target.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %7 = load i32, i32* @flag_non_call_exceptions, align 4
  %tobool6 = icmp ne i32 %7, 0
  br i1 %tobool6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %equiv.addr, align 8
  %call7 = call i32 @may_trap_p(%struct.rtx_def* %8)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool10 = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool10, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 34
  br i1 %cmp13, label %if.then.14, label %if.end.23

if.then.14:                                       ; preds = %for.body
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call15 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %13, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call15, %struct.rtx_def** %note, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %cmp16 = icmp ne %struct.rtx_def* %14, null
  br i1 %cmp16, label %land.lhs.true.17, label %if.end.22

land.lhs.true.17:                                 ; preds = %if.then.14
  %15 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx19 to i64*
  %17 = load i64, i64* %rtwint, align 8
  %cmp20 = icmp sle i64 %17, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.17
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @remove_note(%struct.rtx_def* %18, %struct.rtx_def* %19)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true.17, %if.then.14
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 2
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.58

if.else:                                          ; preds = %land.lhs.true, %if.end
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %insn, align 8
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.53, %if.else
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool28 = icmp ne %struct.rtx_def* %23, null
  br i1 %tobool28, label %for.body.29, label %for.end.57

for.body.29:                                      ; preds = %for.cond.27
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load30 = load i32, i32* %25, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 34
  br i1 %cmp32, label %if.then.33, label %if.end.52

if.then.33:                                       ; preds = %for.body.29
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call35 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %26, i32 23, %struct.rtx_def* null)
  store %struct.rtx_def* %call35, %struct.rtx_def** %note34, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %note34, align 8
  %cmp36 = icmp ne %struct.rtx_def* %27, null
  br i1 %cmp36, label %if.then.37, label %if.else.42

if.then.37:                                       ; preds = %if.then.33
  %call38 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 -1)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note34, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  store %struct.rtx_def* %call38, %struct.rtx_def** %rtx41, align 8
  br label %if.end.51

if.else.42:                                       ; preds = %if.then.33
  %call43 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 -1)
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 6
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %call47 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 23, %struct.rtx_def* %call43, %struct.rtx_def* %30)
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 6
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  store %struct.rtx_def* %call47, %struct.rtx_def** %rtx50, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.42, %if.then.37
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %for.body.29
  br label %for.inc.53

for.inc.53:                                       ; preds = %if.end.52
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 2
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %insn, align 8
  br label %for.cond.27

for.end.57:                                       ; preds = %for.cond.27
  br label %if.end.58

if.end.58:                                        ; preds = %for.end.57, %for.end
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %insn, align 8
  br label %for.cond.59

for.cond.59:                                      ; preds = %for.inc.179, %if.end.58
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool60 = icmp ne %struct.rtx_def* %35, null
  br i1 %tobool60, label %for.body.61, label %for.end.180

for.body.61:                                      ; preds = %for.cond.59
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load62 = load i32, i32* %37, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %idxprom = sext i32 %bf.clear63 to i64
  %arrayidx64 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %38 = load i8, i8* %arrayidx64, align 1
  %conv = sext i8 %38 to i32
  %cmp65 = icmp eq i32 %conv, 105
  br i1 %cmp65, label %cond.true, label %cond.false.82

cond.true:                                        ; preds = %for.body.61
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 3
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load70 = load i32, i32* %41, align 8
  %bf.clear71 = and i32 %bf.load70, 65535
  %cmp72 = icmp eq i32 %bf.clear71, 47
  br i1 %cmp72, label %cond.true.74, label %cond.false

cond.true.74:                                     ; preds = %cond.true
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 3
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 3
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %call81 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %44, %struct.rtx_def* %46)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.74
  %cond = phi %struct.rtx_def* [ %43, %cond.true.74 ], [ %call81, %cond.false ]
  br label %cond.end.83

cond.false.82:                                    ; preds = %for.body.61
  br label %cond.end.83

cond.end.83:                                      ; preds = %cond.false.82, %cond.end
  %cond84 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.82 ]
  store %struct.rtx_def* %cond84, %struct.rtx_def** %set, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call86 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %47, i32 7, %struct.rtx_def* null)
  store %struct.rtx_def* %call86, %struct.rtx_def** %note85, align 8
  %cmp87 = icmp ne %struct.rtx_def* %call86, null
  br i1 %cmp87, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %cond.end.83
  %48 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %note85, align 8
  call void @remove_note(%struct.rtx_def* %48, %struct.rtx_def* %49)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.89, %cond.end.83
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call91 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %50, i32 6, %struct.rtx_def* null)
  store %struct.rtx_def* %call91, %struct.rtx_def** %note85, align 8
  %cmp92 = icmp ne %struct.rtx_def* %call91, null
  br i1 %cmp92, label %if.then.94, label %if.end.95

if.then.94:                                       ; preds = %if.end.90
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %note85, align 8
  call void @remove_note(%struct.rtx_def* %51, %struct.rtx_def* %52)
  br label %if.end.95

if.end.95:                                        ; preds = %if.then.94, %if.end.90
  %53 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 2
  %rtx98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx98, align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %next, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp99 = icmp ne %struct.rtx_def* %55, null
  br i1 %cmp99, label %land.lhs.true.101, label %if.end.178

land.lhs.true.101:                                ; preds = %if.end.95
  %56 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 0
  %rtx104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx104, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load105 = load i32, i32* %58, align 8
  %bf.clear106 = and i32 %bf.load105, 65535
  %cmp107 = icmp eq i32 %bf.clear106, 61
  br i1 %cmp107, label %land.lhs.true.109, label %if.end.178

land.lhs.true.109:                                ; preds = %land.lhs.true.101
  %59 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx112, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx114 to i32*
  %61 = load i32, i32* %rtuint, align 4
  %cmp115 = icmp uge i32 %61, 53
  br i1 %cmp115, label %land.lhs.true.117, label %if.end.178

land.lhs.true.117:                                ; preds = %land.lhs.true.109
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  %cmp118 = icmp eq %struct.rtx_def* %62, %63
  br i1 %cmp118, label %if.then.155, label %lor.lhs.false.120

lor.lhs.false.120:                                ; preds = %land.lhs.true.117
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load121 = load i32, i32* %65, align 8
  %bf.clear122 = and i32 %bf.load121, 65535
  %idxprom123 = sext i32 %bf.clear122 to i64
  %arrayidx124 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom123
  %66 = load i8, i8* %arrayidx124, align 1
  %conv125 = sext i8 %66 to i32
  %cmp126 = icmp eq i32 %conv125, 105
  br i1 %cmp126, label %lor.lhs.false.128, label %land.lhs.true.137

lor.lhs.false.128:                                ; preds = %lor.lhs.false.120
  %67 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtx131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx131, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 3
  %rtx134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx134, align 8
  %call135 = call i32 @reg_mentioned_p(%struct.rtx_def* %68, %struct.rtx_def* %70)
  %tobool136 = icmp ne i32 %call135, 0
  br i1 %tobool136, label %if.end.178, label %land.lhs.true.137

land.lhs.true.137:                                ; preds = %lor.lhs.false.128, %lor.lhs.false.120
  %71 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld138 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx139 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld138, i32 0, i64 0
  %rtx140 = bitcast %union.rtunion_def* %arrayidx139 to %struct.rtx_def**
  %72 = load %struct.rtx_def*, %struct.rtx_def** %rtx140, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call141 = call i32 @reg_used_between_p(%struct.rtx_def* %72, %struct.rtx_def* %73, %struct.rtx_def* %74)
  %tobool142 = icmp ne i32 %call141, 0
  br i1 %tobool142, label %if.end.178, label %land.lhs.true.143

land.lhs.true.143:                                ; preds = %land.lhs.true.137
  %75 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld144 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx145 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld144, i32 0, i64 1
  %rtx146 = bitcast %union.rtunion_def* %arrayidx145 to %struct.rtx_def**
  %76 = load %struct.rtx_def*, %struct.rtx_def** %rtx146, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  %call147 = call i32 @modified_in_p(%struct.rtx_def* %76, %struct.rtx_def* %77)
  %tobool148 = icmp ne i32 %call147, 0
  br i1 %tobool148, label %if.end.178, label %land.lhs.true.149

land.lhs.true.149:                                ; preds = %land.lhs.true.143
  %78 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 1
  %rtx152 = bitcast %union.rtunion_def* %arrayidx151 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx152, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call153 = call i32 @modified_between_p(%struct.rtx_def* %79, %struct.rtx_def* %80, %struct.rtx_def* %81)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end.178, label %if.then.155

if.then.155:                                      ; preds = %land.lhs.true.149, %land.lhs.true.117
  %82 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 1
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %83 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  %tobool159 = icmp ne %struct.rtx_def* %83, null
  br i1 %tobool159, label %if.then.160, label %if.else.167

if.then.160:                                      ; preds = %if.then.155
  %84 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld161, i32 0, i64 1
  %rtx163 = bitcast %union.rtunion_def* %arrayidx162 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx163, align 8
  %fld164 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld164, i32 0, i64 2
  %rtx166 = bitcast %union.rtunion_def* %arrayidx165 to %struct.rtx_def**
  store %struct.rtx_def* %84, %struct.rtx_def** %rtx166, align 8
  br label %if.end.168

if.else.167:                                      ; preds = %if.then.155
  %87 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %87, %struct.rtx_def** %insns.addr, align 8
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.167, %if.then.160
  %88 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool169 = icmp ne %struct.rtx_def* %88, null
  br i1 %tobool169, label %if.then.170, label %if.end.177

if.then.170:                                      ; preds = %if.end.168
  %89 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 1
  %rtx173 = bitcast %union.rtunion_def* %arrayidx172 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx173, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 1
  %rtx176 = bitcast %union.rtunion_def* %arrayidx175 to %struct.rtx_def**
  store %struct.rtx_def* %90, %struct.rtx_def** %rtx176, align 8
  br label %if.end.177

if.end.177:                                       ; preds = %if.then.170, %if.end.168
  %92 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @add_insn(%struct.rtx_def* %92)
  br label %if.end.178

if.end.178:                                       ; preds = %if.end.177, %land.lhs.true.149, %land.lhs.true.143, %land.lhs.true.137, %lor.lhs.false.128, %land.lhs.true.109, %land.lhs.true.101, %if.end.95
  br label %for.inc.179

for.inc.179:                                      ; preds = %if.end.178
  %93 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %93, %struct.rtx_def** %insn, align 8
  br label %for.cond.59

for.end.180:                                      ; preds = %for.cond.59
  %call181 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call181, %struct.rtx_def** %prev, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %insns.addr, align 8
  store %struct.rtx_def* %94, %struct.rtx_def** %insn, align 8
  br label %for.cond.182

for.cond.182:                                     ; preds = %for.inc.188, %for.end.180
  %95 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool183 = icmp ne %struct.rtx_def* %95, null
  br i1 %tobool183, label %for.body.184, label %for.end.189

for.body.184:                                     ; preds = %for.cond.182
  %96 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld185 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx186 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld185, i32 0, i64 2
  %rtx187 = bitcast %union.rtunion_def* %arrayidx186 to %struct.rtx_def**
  %97 = load %struct.rtx_def*, %struct.rtx_def** %rtx187, align 8
  store %struct.rtx_def* %97, %struct.rtx_def** %next, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @add_insn(%struct.rtx_def* %98)
  br label %for.inc.188

for.inc.188:                                      ; preds = %for.body.184
  %99 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %99, %struct.rtx_def** %insn, align 8
  br label %for.cond.182

for.end.189:                                      ; preds = %for.cond.182
  %100 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %result.addr, align 8
  %call190 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %100, %struct.rtx_def* %101)
  store %struct.rtx_def* %call190, %struct.rtx_def** %last, align 8
  %102 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %103 = bitcast %struct.rtx_def* %102 to i32*
  %bf.load191 = load i32, i32* %103, align 8
  %bf.lshr192 = lshr i32 %bf.load191, 16
  %bf.clear193 = and i32 %bf.lshr192, 255
  %idxprom194 = sext i32 %bf.clear193 to i64
  %104 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %104, i32 0, i32 1
  %arrayidx195 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom194
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx195, i32 0, i32 0
  %105 = load i32, i32* %insn_code, align 4
  %cmp196 = icmp ne i32 %105, 1317
  br i1 %cmp196, label %if.then.198, label %if.else.201

if.then.198:                                      ; preds = %for.end.189
  %106 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %equiv.addr, align 8
  %call199 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %107)
  %call200 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %106, i32 4, %struct.rtx_def* %call199)
  br label %if.end.203

if.else.201:                                      ; preds = %for.end.189
  %108 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %call202 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %109, i32 4, %struct.rtx_def* null)
  call void @remove_note(%struct.rtx_def* %108, %struct.rtx_def* %call202)
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.201, %if.then.198
  %110 = load %struct.rtx_def*, %struct.rtx_def** %final_dest, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp204 = icmp ne %struct.rtx_def* %110, %111
  br i1 %cmp204, label %if.then.206, label %if.end.208

if.then.206:                                      ; preds = %if.end.203
  %112 = load %struct.rtx_def*, %struct.rtx_def** %final_dest, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call207 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %112, %struct.rtx_def* %113)
  br label %if.end.208

if.end.208:                                       ; preds = %if.then.206, %if.end.203
  %114 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %cmp209 = icmp eq %struct.rtx_def* %114, null
  br i1 %cmp209, label %if.then.211, label %if.else.213

if.then.211:                                      ; preds = %if.end.208
  %call212 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call212, %struct.rtx_def** %first, align 8
  br label %if.end.217

if.else.213:                                      ; preds = %if.end.208
  %115 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld214 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld214, i32 0, i64 2
  %rtx216 = bitcast %union.rtunion_def* %arrayidx215 to %struct.rtx_def**
  %116 = load %struct.rtx_def*, %struct.rtx_def** %rtx216, align 8
  store %struct.rtx_def* %116, %struct.rtx_def** %first, align 8
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.213, %if.then.211
  %117 = load i32, i32* @flag_non_call_exceptions, align 4
  %tobool218 = icmp ne i32 %117, 0
  br i1 %tobool218, label %lor.lhs.false.219, label %if.then.222

lor.lhs.false.219:                                ; preds = %if.end.217
  %118 = load %struct.rtx_def*, %struct.rtx_def** %equiv.addr, align 8
  %call220 = call i32 @may_trap_p(%struct.rtx_def* %118)
  %tobool221 = icmp ne i32 %call220, 0
  br i1 %tobool221, label %if.end.237, label %if.then.222

if.then.222:                                      ; preds = %lor.lhs.false.219, %if.end.217
  %119 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %fld223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld223, i32 0, i64 6
  %rtx225 = bitcast %union.rtunion_def* %arrayidx224 to %struct.rtx_def**
  %121 = load %struct.rtx_def*, %struct.rtx_def** %rtx225, align 8
  %call226 = call %struct.rtx_def* @gen_rtx_fmt_ue(i32 4, i32 7, %struct.rtx_def* %119, %struct.rtx_def* %121)
  %122 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %fld227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld227, i32 0, i64 6
  %rtx229 = bitcast %union.rtunion_def* %arrayidx228 to %struct.rtx_def**
  store %struct.rtx_def* %call226, %struct.rtx_def** %rtx229, align 8
  %123 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %124 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld230 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld230, i32 0, i64 6
  %rtx232 = bitcast %union.rtunion_def* %arrayidx231 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtx232, align 8
  %call233 = call %struct.rtx_def* @gen_rtx_fmt_ue(i32 4, i32 6, %struct.rtx_def* %123, %struct.rtx_def* %125)
  %126 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld234 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx235 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld234, i32 0, i64 6
  %rtx236 = bitcast %union.rtunion_def* %arrayidx235 to %struct.rtx_def**
  store %struct.rtx_def* %call233, %struct.rtx_def** %rtx236, align 8
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.222, %lor.lhs.false.219
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @sign_expand_binop(i32 %mode, %struct.optab* %uoptab, %struct.optab* %soptab, %struct.rtx_def* %op0, %struct.rtx_def* %op1, %struct.rtx_def* %target, i32 %unsignedp, i32 %methods) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %uoptab.addr = alloca %struct.optab*, align 8
  %soptab.addr = alloca %struct.optab*, align 8
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %methods.addr = alloca i32, align 4
  %temp = alloca %struct.rtx_def*, align 8
  %direct_optab = alloca %struct.optab*, align 8
  %wide_soptab = alloca %struct.optab, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.optab* %uoptab, %struct.optab** %uoptab.addr, align 8
  store %struct.optab* %soptab, %struct.optab** %soptab.addr, align 8
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i32 %methods, i32* %methods.addr, align 4
  %0 = load i32, i32* %unsignedp.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.optab*, %struct.optab** %uoptab.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.optab*, %struct.optab** %soptab.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.optab* [ %1, %cond.true ], [ %2, %cond.false ]
  store %struct.optab* %cond, %struct.optab** %direct_optab, align 8
  %3 = load i32, i32* %mode.addr, align 4
  %4 = load %struct.optab*, %struct.optab** %direct_optab, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %8 = load i32, i32* %unsignedp.addr, align 4
  %call = call %struct.rtx_def* @expand_binop(i32 %3, %struct.optab* %4, %struct.rtx_def* %5, %struct.rtx_def* %6, %struct.rtx_def* %7, i32 %8, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %temp, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool1 = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %10 = load i32, i32* %methods.addr, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %12 = load %struct.optab*, %struct.optab** %soptab.addr, align 8
  %13 = bitcast %struct.optab* %wide_soptab to i8*
  %14 = bitcast %struct.optab* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* %14, i64 952, i32 8, i1 false)
  %15 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %15 to i64
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %wide_soptab, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  store i32 1317, i32* %insn_code, align 4
  %16 = load i32, i32* %mode.addr, align 4
  %idxprom2 = sext i32 %16 to i64
  %handlers3 = getelementptr inbounds %struct.optab, %struct.optab* %wide_soptab, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers3, i32 0, i64 %idxprom2
  %libfunc = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx4, i32 0, i32 1
  store %struct.rtx_def* null, %struct.rtx_def** %libfunc, align 8
  %17 = load i32, i32* %mode.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %21 = load i32, i32* %unsignedp.addr, align 4
  %call5 = call %struct.rtx_def* @expand_binop(i32 %17, %struct.optab* %wide_soptab, %struct.rtx_def* %18, %struct.rtx_def* %19, %struct.rtx_def* %20, i32 %21, i32 2)
  store %struct.rtx_def* %call5, %struct.rtx_def** %temp, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp6 = icmp eq %struct.rtx_def* %22, null
  br i1 %cmp6, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %if.end
  %23 = load i32, i32* %unsignedp.addr, align 4
  %tobool7 = icmp ne i32 %23, 0
  br i1 %tobool7, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %land.lhs.true
  %24 = load i32, i32* %mode.addr, align 4
  %25 = load %struct.optab*, %struct.optab** %uoptab.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %29 = load i32, i32* %unsignedp.addr, align 4
  %call9 = call %struct.rtx_def* @expand_binop(i32 %24, %struct.optab* %25, %struct.rtx_def* %26, %struct.rtx_def* %27, %struct.rtx_def* %28, i32 %29, i32 2)
  store %struct.rtx_def* %call9, %struct.rtx_def** %temp, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %land.lhs.true, %if.end
  %30 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool11 = icmp ne %struct.rtx_def* %30, null
  br i1 %tobool11, label %if.then.14, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %if.end.10
  %31 = load i32, i32* %methods.addr, align 4
  %cmp13 = icmp eq i32 %31, 2
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %lor.lhs.false.12, %if.end.10
  %32 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false.12
  %33 = load i32, i32* %mode.addr, align 4
  %34 = load %struct.optab*, %struct.optab** %direct_optab, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %38 = load i32, i32* %unsignedp.addr, align 4
  %call16 = call %struct.rtx_def* @expand_binop(i32 %33, %struct.optab* %34, %struct.rtx_def* %35, %struct.rtx_def* %36, %struct.rtx_def* %37, i32 %38, i32 1)
  store %struct.rtx_def* %call16, %struct.rtx_def** %temp, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool17 = icmp ne %struct.rtx_def* %39, null
  br i1 %tobool17, label %if.then.20, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %if.end.15
  %40 = load i32, i32* %methods.addr, align 4
  %cmp19 = icmp eq i32 %40, 1
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.18, %if.end.15
  %41 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false.18
  %42 = load i32, i32* %mode.addr, align 4
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %46 = load i32, i32* %unsignedp.addr, align 4
  %47 = load i32, i32* %methods.addr, align 4
  %call22 = call %struct.rtx_def* @expand_binop(i32 %42, %struct.optab* %wide_soptab, %struct.rtx_def* %43, %struct.rtx_def* %44, %struct.rtx_def* %45, i32 %46, i32 %47)
  store %struct.rtx_def* %call22, %struct.rtx_def** %temp, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp23 = icmp ne %struct.rtx_def* %48, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.21
  %49 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.21
  %50 = load i32, i32* %unsignedp.addr, align 4
  %tobool26 = icmp ne i32 %50, 0
  br i1 %tobool26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %if.end.25
  %51 = load i32, i32* %mode.addr, align 4
  %52 = load %struct.optab*, %struct.optab** %uoptab.addr, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %56 = load i32, i32* %unsignedp.addr, align 4
  %57 = load i32, i32* %methods.addr, align 4
  %call28 = call %struct.rtx_def* @expand_binop(i32 %51, %struct.optab* %52, %struct.rtx_def* %53, %struct.rtx_def* %54, %struct.rtx_def* %55, i32 %56, i32 %57)
  store %struct.rtx_def* %call28, %struct.rtx_def** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.25
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.27, %if.then.24, %if.then.20, %if.then.14, %if.then
  %58 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %58
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define i32 @expand_twoval_binop(%struct.optab* %binoptab, %struct.rtx_def* %op0, %struct.rtx_def* %op1, %struct.rtx_def* %targ0, %struct.rtx_def* %targ1, i32 %unsignedp) #0 {
entry:
  %retval = alloca i32, align 4
  %binoptab.addr = alloca %struct.optab*, align 8
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %targ0.addr = alloca %struct.rtx_def*, align 8
  %targ1.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %class = alloca i32, align 4
  %wider_mode = alloca i32, align 4
  %entry_last = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %icode = alloca i32, align 4
  %mode0 = alloca i32, align 4
  %mode1 = alloca i32, align 4
  %pat = alloca %struct.rtx_def*, align 8
  %xop0 = alloca %struct.rtx_def*, align 8
  %xop1 = alloca %struct.rtx_def*, align 8
  %t0 = alloca %struct.rtx_def*, align 8
  %t1 = alloca %struct.rtx_def*, align 8
  %cop0 = alloca %struct.rtx_def*, align 8
  %cop1 = alloca %struct.rtx_def*, align 8
  store %struct.optab* %binoptab, %struct.optab** %binoptab.addr, align 8
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %targ0, %struct.rtx_def** %targ0.addr, align 8
  store %struct.rtx_def* %targ1, %struct.rtx_def** %targ1.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %targ0.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %targ0.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %targ1.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %1, %cond.true ], [ %2, %cond.false ]
  %3 = bitcast %struct.rtx_def* %cond to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %call = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call, %struct.rtx_def** %entry_last, align 8
  %4 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %class, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call1 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %6, i32 0)
  store %struct.rtx_def* %call1, %struct.rtx_def** %op0.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call2 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %7, i32 0)
  store %struct.rtx_def* %call2, %struct.rtx_def** %op1.addr, align 8
  %8 = load i32, i32* @flag_force_mem, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call4 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %9)
  store %struct.rtx_def* %call4, %struct.rtx_def** %op0.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call5 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %10)
  store %struct.rtx_def* %call5, %struct.rtx_def** %op1.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load6 = load i32, i32* %12, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp = icmp eq i32 %bf.clear7, 67
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load8 = load i32, i32* %14, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 68
  br i1 %cmp10, label %land.lhs.true, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load12 = load i32, i32* %16, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 54
  br i1 %cmp14, label %land.lhs.true, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.11
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load16 = load i32, i32* %18, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 55
  br i1 %cmp18, label %land.lhs.true, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.15
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load20 = load i32, i32* %20, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 58
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.19
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load24 = load i32, i32* %22, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 134
  br i1 %cmp26, label %land.lhs.true, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.23
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load28 = load i32, i32* %24, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 56
  br i1 %cmp30, label %land.lhs.true, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.27
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load32 = load i32, i32* %26, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 140
  br i1 %cmp34, label %land.lhs.true, label %if.end.42

land.lhs.true:                                    ; preds = %lor.lhs.false.31, %lor.lhs.false.27, %lor.lhs.false.23, %lor.lhs.false.19, %lor.lhs.false.15, %lor.lhs.false.11, %lor.lhs.false, %if.end
  %call35 = call i32 @preserve_subexpressions_p()
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.end.42

land.lhs.true.37:                                 ; preds = %land.lhs.true
  %27 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %28 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code = getelementptr inbounds %struct.optab, %struct.optab* %28, i32 0, i32 0
  %29 = load i32, i32* %code, align 4
  %call38 = call i32 @rtx_cost(%struct.rtx_def* %27, i32 %29)
  %cmp39 = icmp sgt i32 %call38, 4
  br i1 %cmp39, label %if.then.40, label %if.end.42

if.then.40:                                       ; preds = %land.lhs.true.37
  %30 = load i32, i32* %mode, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call41 = call %struct.rtx_def* @force_reg(i32 %30, %struct.rtx_def* %31)
  store %struct.rtx_def* %call41, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.40, %land.lhs.true.37, %land.lhs.true, %lor.lhs.false.31
  %32 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load43 = load i32, i32* %33, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 67
  br i1 %cmp45, label %land.lhs.true.74, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %if.end.42
  %34 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load47 = load i32, i32* %35, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 68
  br i1 %cmp49, label %land.lhs.true.74, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.46
  %36 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load51 = load i32, i32* %37, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 54
  br i1 %cmp53, label %land.lhs.true.74, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.50
  %38 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load55 = load i32, i32* %39, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 55
  br i1 %cmp57, label %land.lhs.true.74, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.54
  %40 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load59 = load i32, i32* %41, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp eq i32 %bf.clear60, 58
  br i1 %cmp61, label %land.lhs.true.74, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.58
  %42 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load63 = load i32, i32* %43, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 134
  br i1 %cmp65, label %land.lhs.true.74, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.62
  %44 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load67 = load i32, i32* %45, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 56
  br i1 %cmp69, label %land.lhs.true.74, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %lor.lhs.false.66
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load71 = load i32, i32* %47, align 8
  %bf.clear72 = and i32 %bf.load71, 65535
  %cmp73 = icmp eq i32 %bf.clear72, 140
  br i1 %cmp73, label %land.lhs.true.74, label %if.end.83

land.lhs.true.74:                                 ; preds = %lor.lhs.false.70, %lor.lhs.false.66, %lor.lhs.false.62, %lor.lhs.false.58, %lor.lhs.false.54, %lor.lhs.false.50, %lor.lhs.false.46, %if.end.42
  %call75 = call i32 @preserve_subexpressions_p()
  %tobool76 = icmp ne i32 %call75, 0
  br i1 %tobool76, label %land.lhs.true.77, label %if.end.83

land.lhs.true.77:                                 ; preds = %land.lhs.true.74
  %48 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %49 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %code78 = getelementptr inbounds %struct.optab, %struct.optab* %49, i32 0, i32 0
  %50 = load i32, i32* %code78, align 4
  %call79 = call i32 @rtx_cost(%struct.rtx_def* %48, i32 %50)
  %cmp80 = icmp sgt i32 %call79, 4
  br i1 %cmp80, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %land.lhs.true.77
  %51 = load i32, i32* %mode, align 4
  %52 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call82 = call %struct.rtx_def* @force_reg(i32 %51, %struct.rtx_def* %52)
  store %struct.rtx_def* %call82, %struct.rtx_def** %op1.addr, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %land.lhs.true.77, %land.lhs.true.74, %lor.lhs.false.70
  %53 = load %struct.rtx_def*, %struct.rtx_def** %targ0.addr, align 8
  %tobool84 = icmp ne %struct.rtx_def* %53, null
  br i1 %tobool84, label %if.then.85, label %if.else

if.then.85:                                       ; preds = %if.end.83
  %54 = load %struct.rtx_def*, %struct.rtx_def** %targ0.addr, align 8
  %call86 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %54, i32 1)
  store %struct.rtx_def* %call86, %struct.rtx_def** %targ0.addr, align 8
  br label %if.end.88

if.else:                                          ; preds = %if.end.83
  %55 = load i32, i32* %mode, align 4
  %call87 = call %struct.rtx_def* @gen_reg_rtx(i32 %55)
  store %struct.rtx_def* %call87, %struct.rtx_def** %targ0.addr, align 8
  br label %if.end.88

if.end.88:                                        ; preds = %if.else, %if.then.85
  %56 = load %struct.rtx_def*, %struct.rtx_def** %targ1.addr, align 8
  %tobool89 = icmp ne %struct.rtx_def* %56, null
  br i1 %tobool89, label %if.then.90, label %if.else.92

if.then.90:                                       ; preds = %if.end.88
  %57 = load %struct.rtx_def*, %struct.rtx_def** %targ1.addr, align 8
  %call91 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %57, i32 1)
  store %struct.rtx_def* %call91, %struct.rtx_def** %targ1.addr, align 8
  br label %if.end.94

if.else.92:                                       ; preds = %if.end.88
  %58 = load i32, i32* %mode, align 4
  %call93 = call %struct.rtx_def* @gen_reg_rtx(i32 %58)
  store %struct.rtx_def* %call93, %struct.rtx_def** %targ1.addr, align 8
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.92, %if.then.90
  %call95 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call95, %struct.rtx_def** %last, align 8
  %59 = load i32, i32* %mode, align 4
  %idxprom96 = sext i32 %59 to i64
  %60 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %60, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom96
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx97, i32 0, i32 0
  %61 = load i32, i32* %insn_code, align 4
  %cmp98 = icmp ne i32 %61, 1317
  br i1 %cmp98, label %if.then.99, label %if.end.184

if.then.99:                                       ; preds = %if.end.94
  %62 = load i32, i32* %mode, align 4
  %idxprom100 = sext i32 %62 to i64
  %63 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers101 = getelementptr inbounds %struct.optab, %struct.optab* %63, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers101, i32 0, i64 %idxprom100
  %insn_code103 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx102, i32 0, i32 0
  %64 = load i32, i32* %insn_code103, align 4
  store i32 %64, i32* %icode, align 4
  %65 = load i32, i32* %icode, align 4
  %idxprom104 = sext i32 %65 to i64
  %arrayidx105 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom104
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx105, i32 0, i32 3
  %66 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx106 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %66, i64 1
  %mode107 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx106, i32 0, i32 2
  %bf.load108 = load i16, i16* %mode107, align 8
  %bf.cast = zext i16 %bf.load108 to i32
  store i32 %bf.cast, i32* %mode0, align 4
  %67 = load i32, i32* %icode, align 4
  %idxprom109 = sext i32 %67 to i64
  %arrayidx110 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom109
  %operand111 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx110, i32 0, i32 3
  %68 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand111, align 8
  %arrayidx112 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %68, i64 2
  %mode113 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx112, i32 0, i32 2
  %bf.load114 = load i16, i16* %mode113, align 8
  %bf.cast115 = zext i16 %bf.load114 to i32
  store i32 %bf.cast115, i32* %mode1, align 4
  %69 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %xop0, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %70, %struct.rtx_def** %xop1, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load116 = load i32, i32* %72, align 8
  %bf.lshr117 = lshr i32 %bf.load116, 16
  %bf.clear118 = and i32 %bf.lshr117, 255
  %cmp119 = icmp ne i32 %bf.clear118, 0
  br i1 %cmp119, label %land.lhs.true.120, label %if.end.127

land.lhs.true.120:                                ; preds = %if.then.99
  %73 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load121 = load i32, i32* %74, align 8
  %bf.lshr122 = lshr i32 %bf.load121, 16
  %bf.clear123 = and i32 %bf.lshr122, 255
  %75 = load i32, i32* %mode0, align 4
  %cmp124 = icmp ne i32 %bf.clear123, %75
  br i1 %cmp124, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %land.lhs.true.120
  %76 = load i32, i32* %mode0, align 4
  %77 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %78 = load i32, i32* %unsignedp.addr, align 4
  %call126 = call %struct.rtx_def* @convert_to_mode(i32 %76, %struct.rtx_def* %77, i32 %78)
  store %struct.rtx_def* %call126, %struct.rtx_def** %xop0, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %land.lhs.true.120, %if.then.99
  %79 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load128 = load i32, i32* %80, align 8
  %bf.lshr129 = lshr i32 %bf.load128, 16
  %bf.clear130 = and i32 %bf.lshr129, 255
  %cmp131 = icmp ne i32 %bf.clear130, 0
  br i1 %cmp131, label %land.lhs.true.132, label %if.end.139

land.lhs.true.132:                                ; preds = %if.end.127
  %81 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load133 = load i32, i32* %82, align 8
  %bf.lshr134 = lshr i32 %bf.load133, 16
  %bf.clear135 = and i32 %bf.lshr134, 255
  %83 = load i32, i32* %mode1, align 4
  %cmp136 = icmp ne i32 %bf.clear135, %83
  br i1 %cmp136, label %if.then.137, label %if.end.139

if.then.137:                                      ; preds = %land.lhs.true.132
  %84 = load i32, i32* %mode1, align 4
  %85 = load %struct.rtx_def*, %struct.rtx_def** %xop1, align 8
  %86 = load i32, i32* %unsignedp.addr, align 4
  %call138 = call %struct.rtx_def* @convert_to_mode(i32 %84, %struct.rtx_def* %85, i32 %86)
  store %struct.rtx_def* %call138, %struct.rtx_def** %xop1, align 8
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.137, %land.lhs.true.132, %if.end.127
  %87 = load i32, i32* %icode, align 4
  %idxprom140 = sext i32 %87 to i64
  %arrayidx141 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom140
  %operand142 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx141, i32 0, i32 3
  %88 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand142, align 8
  %arrayidx143 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %88, i64 1
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx143, i32 0, i32 0
  %89 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %91 = load i32, i32* %mode0, align 4
  %call144 = call i32 %89(%struct.rtx_def* %90, i32 %91)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.end.148, label %if.then.146

if.then.146:                                      ; preds = %if.end.139
  %92 = load i32, i32* %mode0, align 4
  %93 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %call147 = call %struct.rtx_def* @copy_to_mode_reg(i32 %92, %struct.rtx_def* %93)
  store %struct.rtx_def* %call147, %struct.rtx_def** %xop0, align 8
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.146, %if.end.139
  %94 = load i32, i32* %icode, align 4
  %idxprom149 = sext i32 %94 to i64
  %arrayidx150 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom149
  %operand151 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx150, i32 0, i32 3
  %95 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand151, align 8
  %arrayidx152 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %95, i64 2
  %predicate153 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx152, i32 0, i32 0
  %96 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate153, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %xop1, align 8
  %98 = load i32, i32* %mode1, align 4
  %call154 = call i32 %96(%struct.rtx_def* %97, i32 %98)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.end.158, label %if.then.156

if.then.156:                                      ; preds = %if.end.148
  %99 = load i32, i32* %mode1, align 4
  %100 = load %struct.rtx_def*, %struct.rtx_def** %xop1, align 8
  %call157 = call %struct.rtx_def* @copy_to_mode_reg(i32 %99, %struct.rtx_def* %100)
  store %struct.rtx_def* %call157, %struct.rtx_def** %xop1, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.then.156, %if.end.148
  %101 = load i32, i32* %icode, align 4
  %idxprom159 = sext i32 %101 to i64
  %arrayidx160 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom159
  %operand161 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx160, i32 0, i32 3
  %102 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand161, align 8
  %arrayidx162 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %102, i64 0
  %predicate163 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx162, i32 0, i32 0
  %103 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate163, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %targ0.addr, align 8
  %105 = load i32, i32* %mode, align 4
  %call164 = call i32 %103(%struct.rtx_def* %104, i32 %105)
  %tobool165 = icmp ne i32 %call164, 0
  br i1 %tobool165, label %lor.lhs.false.166, label %if.then.174

lor.lhs.false.166:                                ; preds = %if.end.158
  %106 = load i32, i32* %icode, align 4
  %idxprom167 = sext i32 %106 to i64
  %arrayidx168 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom167
  %operand169 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx168, i32 0, i32 3
  %107 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand169, align 8
  %arrayidx170 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %107, i64 3
  %predicate171 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx170, i32 0, i32 0
  %108 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate171, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %targ1.addr, align 8
  %110 = load i32, i32* %mode, align 4
  %call172 = call i32 %108(%struct.rtx_def* %109, i32 %110)
  %tobool173 = icmp ne i32 %call172, 0
  br i1 %tobool173, label %if.end.175, label %if.then.174

if.then.174:                                      ; preds = %lor.lhs.false.166, %if.end.158
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 1998, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.expand_twoval_binop, i32 0, i32 0)) #6
  unreachable

if.end.175:                                       ; preds = %lor.lhs.false.166
  %111 = load i32, i32* %icode, align 4
  %idxprom176 = sext i32 %111 to i64
  %arrayidx177 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom176
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx177, i32 0, i32 2
  %112 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %targ0.addr, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %xop1, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %targ1.addr, align 8
  %call178 = call %struct.rtx_def* (%struct.rtx_def*, ...) %112(%struct.rtx_def* %113, %struct.rtx_def* %114, %struct.rtx_def* %115, %struct.rtx_def* %116)
  store %struct.rtx_def* %call178, %struct.rtx_def** %pat, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %tobool179 = icmp ne %struct.rtx_def* %117, null
  br i1 %tobool179, label %if.then.180, label %if.else.182

if.then.180:                                      ; preds = %if.end.175
  %118 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call181 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %118)
  store i32 1, i32* %retval
  br label %return

if.else.182:                                      ; preds = %if.end.175
  %119 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %119)
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.182
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.end.94
  %120 = load i32, i32* %class, align 4
  %cmp185 = icmp eq i32 %120, 1
  br i1 %cmp185, label %if.then.190, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %if.end.184
  %121 = load i32, i32* %class, align 4
  %cmp187 = icmp eq i32 %121, 2
  br i1 %cmp187, label %if.then.190, label %lor.lhs.false.188

lor.lhs.false.188:                                ; preds = %lor.lhs.false.186
  %122 = load i32, i32* %class, align 4
  %cmp189 = icmp eq i32 %122, 6
  br i1 %cmp189, label %if.then.190, label %if.end.215

if.then.190:                                      ; preds = %lor.lhs.false.188, %lor.lhs.false.186, %if.end.184
  %123 = load i32, i32* %mode, align 4
  %idxprom191 = sext i32 %123 to i64
  %arrayidx192 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom191
  %124 = load i8, i8* %arrayidx192, align 1
  %conv = zext i8 %124 to i32
  store i32 %conv, i32* %wider_mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.190
  %125 = load i32, i32* %wider_mode, align 4
  %cmp193 = icmp ne i32 %125, 0
  br i1 %cmp193, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %126 = load i32, i32* %wider_mode, align 4
  %idxprom195 = sext i32 %126 to i64
  %127 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %handlers196 = getelementptr inbounds %struct.optab, %struct.optab* %127, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers196, i32 0, i64 %idxprom195
  %insn_code198 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx197, i32 0, i32 0
  %128 = load i32, i32* %insn_code198, align 4
  %cmp199 = icmp ne i32 %128, 1317
  br i1 %cmp199, label %if.then.201, label %if.end.211

if.then.201:                                      ; preds = %for.body
  %129 = load i32, i32* %wider_mode, align 4
  %call202 = call %struct.rtx_def* @gen_reg_rtx(i32 %129)
  store %struct.rtx_def* %call202, %struct.rtx_def** %t0, align 8
  %130 = load i32, i32* %wider_mode, align 4
  %call203 = call %struct.rtx_def* @gen_reg_rtx(i32 %130)
  store %struct.rtx_def* %call203, %struct.rtx_def** %t1, align 8
  %131 = load i32, i32* %wider_mode, align 4
  %132 = load i32, i32* %mode, align 4
  %133 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %134 = load i32, i32* %unsignedp.addr, align 4
  %call204 = call %struct.rtx_def* @convert_modes(i32 %131, i32 %132, %struct.rtx_def* %133, i32 %134)
  store %struct.rtx_def* %call204, %struct.rtx_def** %cop0, align 8
  %135 = load i32, i32* %wider_mode, align 4
  %136 = load i32, i32* %mode, align 4
  %137 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %138 = load i32, i32* %unsignedp.addr, align 4
  %call205 = call %struct.rtx_def* @convert_modes(i32 %135, i32 %136, %struct.rtx_def* %137, i32 %138)
  store %struct.rtx_def* %call205, %struct.rtx_def** %cop1, align 8
  %139 = load %struct.optab*, %struct.optab** %binoptab.addr, align 8
  %140 = load %struct.rtx_def*, %struct.rtx_def** %cop0, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %cop1, align 8
  %142 = load %struct.rtx_def*, %struct.rtx_def** %t0, align 8
  %143 = load %struct.rtx_def*, %struct.rtx_def** %t1, align 8
  %144 = load i32, i32* %unsignedp.addr, align 4
  %call206 = call i32 @expand_twoval_binop(%struct.optab* %139, %struct.rtx_def* %140, %struct.rtx_def* %141, %struct.rtx_def* %142, %struct.rtx_def* %143, i32 %144)
  %tobool207 = icmp ne i32 %call206, 0
  br i1 %tobool207, label %if.then.208, label %if.else.209

if.then.208:                                      ; preds = %if.then.201
  %145 = load %struct.rtx_def*, %struct.rtx_def** %targ0.addr, align 8
  %146 = load %struct.rtx_def*, %struct.rtx_def** %t0, align 8
  %147 = load i32, i32* %unsignedp.addr, align 4
  call void @convert_move(%struct.rtx_def* %145, %struct.rtx_def* %146, i32 %147)
  %148 = load %struct.rtx_def*, %struct.rtx_def** %targ1.addr, align 8
  %149 = load %struct.rtx_def*, %struct.rtx_def** %t1, align 8
  %150 = load i32, i32* %unsignedp.addr, align 4
  call void @convert_move(%struct.rtx_def* %148, %struct.rtx_def* %149, i32 %150)
  store i32 1, i32* %retval
  br label %return

if.else.209:                                      ; preds = %if.then.201
  %151 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %151)
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.209
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.210, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.211
  %152 = load i32, i32* %wider_mode, align 4
  %idxprom212 = sext i32 %152 to i64
  %arrayidx213 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom212
  %153 = load i8, i8* %arrayidx213, align 1
  %conv214 = zext i8 %153 to i32
  store i32 %conv214, i32* %wider_mode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.215

if.end.215:                                       ; preds = %for.end, %lor.lhs.false.188
  %154 = load %struct.rtx_def*, %struct.rtx_def** %entry_last, align 8
  call void @delete_insns_since(%struct.rtx_def* %154)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.215, %if.then.208, %if.then.180
  %155 = load i32, i32* %retval
  ret i32 %155
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_simple_unop(i32 %mode, i32 %code, %struct.rtx_def* %op0, %struct.rtx_def* %target, i32 %unsignedp) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %unop = alloca %struct.optab*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [154 x %struct.optab*], [154 x %struct.optab*]* @code_to_optab, i32 0, i64 %idxprom
  %1 = load %struct.optab*, %struct.optab** %arrayidx, align 8
  store %struct.optab* %1, %struct.optab** %unop, align 8
  %2 = load %struct.optab*, %struct.optab** %unop, align 8
  %cmp = icmp eq %struct.optab* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2055, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.expand_simple_unop, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %mode.addr, align 4
  %4 = load %struct.optab*, %struct.optab** %unop, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %7 = load i32, i32* %unsignedp.addr, align 4
  %call = call %struct.rtx_def* @expand_unop(i32 %3, %struct.optab* %4, %struct.rtx_def* %5, %struct.rtx_def* %6, i32 %7)
  ret %struct.rtx_def* %call
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_abs(i32 %mode, %struct.rtx_def* %op0, %struct.rtx_def* %target, i32 %result_unsignedp, i32 %safe) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %result_unsignedp.addr = alloca i32, align 4
  %safe.addr = alloca i32, align 4
  %temp = alloca %struct.rtx_def*, align 8
  %op1 = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %extended = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %result_unsignedp, i32* %result_unsignedp.addr, align 4
  store i32 %safe, i32* %safe.addr, align 4
  %0 = load i32, i32* @flag_trapv, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, i32* %result_unsignedp.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i32, i32* %result_unsignedp.addr, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %3 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 34), align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %4 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 35), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.optab* [ %3, %cond.true ], [ %4, %cond.false ]
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call = call %struct.rtx_def* @expand_unop(i32 %1, %struct.optab* %cond, %struct.rtx_def* %5, %struct.rtx_def* %6, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %temp, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp = icmp ne %struct.rtx_def* %7, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %cond.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %retval
  br label %return

if.end.3:                                         ; preds = %cond.end
  %9 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 27), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %11 = load i32, i32* %insn_code, align 4
  %cmp4 = icmp ne i32 %11, 1317
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call6, %struct.rtx_def** %last, align 8
  %12 = load i32, i32* %mode.addr, align 4
  %13 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call7 = call %struct.rtx_def* @expand_unop(i32 %12, %struct.optab* %13, %struct.rtx_def* %14, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call7, %struct.rtx_def** %temp, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp8 = icmp ne %struct.rtx_def* %15, null
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.then.5
  %16 = load i32, i32* %mode.addr, align 4
  %17 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 27), align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call10 = call %struct.rtx_def* @expand_binop(i32 %16, %struct.optab* %17, %struct.rtx_def* %18, %struct.rtx_def* %19, %struct.rtx_def* %20, i32 0, i32 2)
  store %struct.rtx_def* %call10, %struct.rtx_def** %temp, align 8
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.then.5
  %21 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp12 = icmp ne %struct.rtx_def* %21, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %22 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.11
  %23 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %23)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end.3
  %24 = load i32, i32* %mode.addr, align 4
  %idxprom16 = sext i32 %24 to i64
  %arrayidx17 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom16
  %25 = load i32, i32* %arrayidx17, align 4
  %cmp18 = icmp eq i32 %25, 1
  br i1 %cmp18, label %land.lhs.true, label %if.end.41

land.lhs.true:                                    ; preds = %if.end.15
  %26 = load i32, i32* @ix86_branch_cost, align 4
  %cmp19 = icmp sge i32 %26, 2
  br i1 %cmp19, label %if.then.20, label %if.end.41

if.then.20:                                       ; preds = %land.lhs.true
  %27 = load i32, i32* %mode.addr, align 4
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %29 = load i32, i32* %mode.addr, align 4
  %idxprom21 = sext i32 %29 to i64
  %arrayidx22 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom21
  %30 = load i16, i16* %arrayidx22, align 2
  %conv = zext i16 %30 to i32
  %sub = sub nsw i32 %conv, 1
  %conv23 = sext i32 %sub to i64
  %call24 = call %union.tree_node* @size_int_wide(i64 %conv23, i32 0)
  %call25 = call %struct.rtx_def* @expand_shift(i32 83, i32 %27, %struct.rtx_def* %28, %union.tree_node* %call24, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call25, %struct.rtx_def** %extended, align 8
  %31 = load i32, i32* %mode.addr, align 4
  %32 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %extended, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call26 = call %struct.rtx_def* @expand_binop(i32 %31, %struct.optab* %32, %struct.rtx_def* %33, %struct.rtx_def* %34, %struct.rtx_def* %35, i32 0, i32 3)
  store %struct.rtx_def* %call26, %struct.rtx_def** %temp, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp27 = icmp ne %struct.rtx_def* %36, null
  br i1 %cmp27, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %if.then.20
  %37 = load i32, i32* %mode.addr, align 4
  %38 = load i32, i32* %result_unsignedp.addr, align 4
  %tobool30 = icmp ne i32 %38, 0
  br i1 %tobool30, label %cond.true.31, label %cond.false.32

cond.true.31:                                     ; preds = %if.then.29
  %39 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  br label %cond.end.33

cond.false.32:                                    ; preds = %if.then.29
  %40 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.32, %cond.true.31
  %cond34 = phi %struct.optab* [ %39, %cond.true.31 ], [ %40, %cond.false.32 ]
  %41 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %extended, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call35 = call %struct.rtx_def* @expand_binop(i32 %37, %struct.optab* %cond34, %struct.rtx_def* %41, %struct.rtx_def* %42, %struct.rtx_def* %43, i32 0, i32 3)
  store %struct.rtx_def* %call35, %struct.rtx_def** %temp, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %cond.end.33, %if.then.20
  %44 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %cmp37 = icmp ne %struct.rtx_def* %44, null
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  %45 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.36
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %land.lhs.true, %if.end.15
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp42 = icmp eq %struct.rtx_def* %46, %47
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.52

land.lhs.true.44:                                 ; preds = %if.end.41
  %48 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load = load i32, i32* %49, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp45 = icmp eq i32 %bf.clear, 61
  br i1 %cmp45, label %land.lhs.true.47, label %if.end.52

land.lhs.true.47:                                 ; preds = %land.lhs.true.44
  %50 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx48 to i32*
  %51 = load i32, i32* %rtuint, align 4
  %cmp49 = icmp uge i32 %51, 53
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.47
  store i32 1, i32* %safe.addr, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %land.lhs.true.47, %land.lhs.true.44, %if.end.41
  %call53 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call53, %struct.rtx_def** %op1, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp54 = icmp eq %struct.rtx_def* %52, null
  br i1 %cmp54, label %if.then.83, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.52
  %53 = load i32, i32* %safe.addr, align 4
  %tobool56 = icmp ne i32 %53, 0
  br i1 %tobool56, label %lor.lhs.false.57, label %if.then.83

lor.lhs.false.57:                                 ; preds = %lor.lhs.false
  %54 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load58 = load i32, i32* %55, align 8
  %bf.lshr = lshr i32 %bf.load58, 16
  %bf.clear59 = and i32 %bf.lshr, 255
  %56 = load i32, i32* %mode.addr, align 4
  %cmp60 = icmp ne i32 %bf.clear59, %56
  br i1 %cmp60, label %if.then.83, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.57
  %57 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load63 = load i32, i32* %58, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 66
  br i1 %cmp65, label %land.lhs.true.67, label %lor.lhs.false.72

land.lhs.true.67:                                 ; preds = %lor.lhs.false.62
  %59 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load68 = load i32, i32* %60, align 8
  %bf.lshr69 = lshr i32 %bf.load68, 27
  %bf.clear70 = and i32 %bf.lshr69, 1
  %tobool71 = icmp ne i32 %bf.clear70, 0
  br i1 %tobool71, label %if.then.83, label %lor.lhs.false.72

lor.lhs.false.72:                                 ; preds = %land.lhs.true.67, %lor.lhs.false.62
  %61 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load73 = load i32, i32* %62, align 8
  %bf.clear74 = and i32 %bf.load73, 65535
  %cmp75 = icmp eq i32 %bf.clear74, 61
  br i1 %cmp75, label %land.lhs.true.77, label %if.end.85

land.lhs.true.77:                                 ; preds = %lor.lhs.false.72
  %63 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtuint80 = bitcast %union.rtunion_def* %arrayidx79 to i32*
  %64 = load i32, i32* %rtuint80, align 4
  %cmp81 = icmp ult i32 %64, 53
  br i1 %cmp81, label %if.then.83, label %if.end.85

if.then.83:                                       ; preds = %land.lhs.true.77, %land.lhs.true.67, %lor.lhs.false.57, %lor.lhs.false, %if.end.52
  %65 = load i32, i32* %mode.addr, align 4
  %call84 = call %struct.rtx_def* @gen_reg_rtx(i32 %65)
  store %struct.rtx_def* %call84, %struct.rtx_def** %target.addr, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.83, %land.lhs.true.77, %lor.lhs.false.72
  %66 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call86 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %66, %struct.rtx_def* %67)
  %68 = load %struct.function*, %struct.function** @cfun, align 8
  %expr = getelementptr inbounds %struct.function, %struct.function* %68, i32 0, i32 2
  %69 = load %struct.expr_status*, %struct.expr_status** %expr, align 8
  %x_inhibit_defer_pop = getelementptr inbounds %struct.expr_status, %struct.expr_status* %69, i32 0, i32 1
  %70 = load i32, i32* %x_inhibit_defer_pop, align 4
  %add = add nsw i32 %70, 1
  store i32 %add, i32* %x_inhibit_defer_pop, align 4
  %71 = load i32, i32* %mode.addr, align 4
  %idxprom87 = sext i32 %71 to i64
  %arrayidx88 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom87
  %72 = load i32, i32* %arrayidx88, align 4
  %cmp89 = icmp eq i32 %72, 1
  br i1 %cmp89, label %land.lhs.true.91, label %if.else

land.lhs.true.91:                                 ; preds = %if.end.85
  %73 = load i32, i32* %mode.addr, align 4
  %call92 = call i32 @can_compare_p(i32 104, i32 %73, i32 0)
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.else, label %if.then.94

if.then.94:                                       ; preds = %land.lhs.true.91
  %74 = load i32, i32* %mode.addr, align 4
  %75 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  call void @do_jump_by_parts_greater_rtx(i32 %74, i32 0, %struct.rtx_def* %75, %struct.rtx_def* %76, %struct.rtx_def* null, %struct.rtx_def* %77)
  br label %if.end.97

if.else:                                          ; preds = %land.lhs.true.91, %if.end.85
  %78 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %79 = load i32, i32* %mode.addr, align 4
  %idxprom95 = sext i32 %79 to i64
  %arrayidx96 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom95
  %80 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx96, align 8
  %81 = load i32, i32* %mode.addr, align 4
  %82 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  call void @do_compare_rtx_and_jump(%struct.rtx_def* %78, %struct.rtx_def* %80, i32 104, i32 0, i32 %81, %struct.rtx_def* null, %struct.rtx_def* null, %struct.rtx_def* %82)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else, %if.then.94
  %83 = load i32, i32* %mode.addr, align 4
  %84 = load i32, i32* %result_unsignedp.addr, align 4
  %tobool98 = icmp ne i32 %84, 0
  br i1 %tobool98, label %cond.true.99, label %cond.false.100

cond.true.99:                                     ; preds = %if.end.97
  %85 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  br label %cond.end.101

cond.false.100:                                   ; preds = %if.end.97
  %86 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.true.99
  %cond102 = phi %struct.optab* [ %85, %cond.true.99 ], [ %86, %cond.false.100 ]
  %87 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call103 = call %struct.rtx_def* @expand_unop(i32 %83, %struct.optab* %cond102, %struct.rtx_def* %87, %struct.rtx_def* %88, i32 0)
  store %struct.rtx_def* %call103, %struct.rtx_def** %op0.addr, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp104 = icmp ne %struct.rtx_def* %89, %90
  br i1 %cmp104, label %if.then.106, label %if.end.108

if.then.106:                                      ; preds = %cond.end.101
  %91 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call107 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %91, %struct.rtx_def* %92)
  br label %if.end.108

if.end.108:                                       ; preds = %if.then.106, %cond.end.101
  %93 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %call109 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %93)
  %94 = load %struct.function*, %struct.function** @cfun, align 8
  %expr110 = getelementptr inbounds %struct.function, %struct.function* %94, i32 0, i32 2
  %95 = load %struct.expr_status*, %struct.expr_status** %expr110, align 8
  %x_inhibit_defer_pop111 = getelementptr inbounds %struct.expr_status, %struct.expr_status* %95, i32 0, i32 1
  %96 = load i32, i32* %x_inhibit_defer_pop111, align 4
  %sub112 = sub nsw i32 %96, 1
  store i32 %sub112, i32* %x_inhibit_defer_pop111, align 4
  %97 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %97, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.108, %if.then.39, %if.then.13, %if.then.2
  %98 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %98
}

declare %struct.rtx_def* @expand_shift(i32, i32, %struct.rtx_def*, %union.tree_node*, %struct.rtx_def*, i32) #2

declare %union.tree_node* @size_int_wide(i64, i32) #2

declare %struct.rtx_def* @gen_label_rtx() #2

; Function Attrs: nounwind uwtable
define i32 @can_compare_p(i32 %code, i32 %mode, i32 %purpose) #0 {
entry:
  %retval = alloca i32, align 4
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %purpose.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %purpose, i32* %purpose.addr, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %2 = load i32, i32* %insn_code, align 4
  %cmp = icmp ne i32 %2, 1317
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %3 = load i32, i32* %purpose.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %4 = load i32, i32* %code.addr, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 %idxprom3
  %5 = load %struct.rtx_def* (%struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)** %arrayidx4, align 8
  %cmp5 = icmp ne %struct.rtx_def* (%struct.rtx_def*)* %5, null
  %conv = zext i1 %cmp5 to i32
  store i32 %conv, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %6 = load i32, i32* %purpose.addr, align 4
  %cmp6 = icmp eq i32 %6, 2
  br i1 %cmp6, label %if.then.8, label %if.else.13

if.then.8:                                        ; preds = %if.else
  %7 = load i32, i32* %code.addr, align 4
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 %idxprom9
  %8 = load i32, i32* %arrayidx10, align 4
  %cmp11 = icmp ne i32 %8, 1317
  %conv12 = zext i1 %cmp11 to i32
  store i32 %conv12, i32* %retval
  br label %return

if.else.13:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %do.body
  %9 = load i32, i32* %purpose.addr, align 4
  %cmp14 = icmp eq i32 %9, 0
  br i1 %cmp14, label %land.lhs.true, label %if.end.23

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %mode.addr, align 4
  %idxprom16 = sext i32 %10 to i64
  %11 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 45), align 8
  %handlers17 = getelementptr inbounds %struct.optab, %struct.optab* %11, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers17, i32 0, i64 %idxprom16
  %insn_code19 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx18, i32 0, i32 0
  %12 = load i32, i32* %insn_code19, align 4
  %cmp20 = icmp ne i32 %12, 1317
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true
  store i32 1, i32* %retval
  br label %return

if.end.23:                                        ; preds = %land.lhs.true, %if.end
  %13 = load i32, i32* %purpose.addr, align 4
  %cmp24 = icmp eq i32 %13, 1
  br i1 %cmp24, label %land.lhs.true.26, label %if.end.34

land.lhs.true.26:                                 ; preds = %if.end.23
  %14 = load i32, i32* %mode.addr, align 4
  %idxprom27 = sext i32 %14 to i64
  %15 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 46), align 8
  %handlers28 = getelementptr inbounds %struct.optab, %struct.optab* %15, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers28, i32 0, i64 %idxprom27
  %insn_code30 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx29, i32 0, i32 0
  %16 = load i32, i32* %insn_code30, align 4
  %cmp31 = icmp ne i32 %16, 1317
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %land.lhs.true.26
  store i32 1, i32* %retval
  br label %return

if.end.34:                                        ; preds = %land.lhs.true.26, %if.end.23
  %17 = load i32, i32* %purpose.addr, align 4
  %cmp35 = icmp eq i32 %17, 2
  br i1 %cmp35, label %land.lhs.true.37, label %if.end.45

land.lhs.true.37:                                 ; preds = %if.end.34
  %18 = load i32, i32* %mode.addr, align 4
  %idxprom38 = sext i32 %18 to i64
  %19 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 47), align 8
  %handlers39 = getelementptr inbounds %struct.optab, %struct.optab* %19, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers39, i32 0, i64 %idxprom38
  %insn_code41 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx40, i32 0, i32 0
  %20 = load i32, i32* %insn_code41, align 4
  %cmp42 = icmp ne i32 %20, 1317
  br i1 %cmp42, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %land.lhs.true.37
  store i32 1, i32* %retval
  br label %return

if.end.45:                                        ; preds = %land.lhs.true.37, %if.end.34
  %21 = load i32, i32* %mode.addr, align 4
  %idxprom46 = sext i32 %21 to i64
  %arrayidx47 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom46
  %22 = load i8, i8* %arrayidx47, align 1
  %conv48 = zext i8 %22 to i32
  store i32 %conv48, i32* %mode.addr, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.45
  %23 = load i32, i32* %mode.addr, align 4
  %cmp49 = icmp ne i32 %23, 0
  br i1 %cmp49, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.44, %if.then.33, %if.then.22, %if.else.13, %if.then.8, %if.then.2
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare void @do_jump_by_parts_greater_rtx(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #2

declare void @do_compare_rtx_and_jump(%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #2

declare %struct.rtx_def* @emit_label(%struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @expand_complex_abs(i32 %mode, %struct.rtx_def* %op0, %struct.rtx_def* %target, i32 %unsignedp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %class = alloca i32, align 4
  %wider_mode = alloca i32, align 4
  %temp = alloca %struct.rtx_def*, align 8
  %entry_last = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %this_abs_optab = alloca %struct.optab*, align 8
  %submode = alloca i32, align 4
  %icode = alloca i32, align 4
  %mode0 = alloca i32, align 4
  %xop0 = alloca %struct.rtx_def*, align 8
  %xop0103 = alloca %struct.rtx_def*, align 8
  %real = alloca %struct.rtx_def*, align 8
  %imag = alloca %struct.rtx_def*, align 8
  %total = alloca %struct.rtx_def*, align 8
  %insns = alloca %struct.rtx_def*, align 8
  %value = alloca %struct.rtx_def*, align 8
  %xop0179 = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  store i32 %1, i32* %class, align 4
  %call = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call, %struct.rtx_def** %entry_last, align 8
  %2 = load i32, i32* %mode.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nsw i32 %conv, 8
  %4 = load i32, i32* %class, align 4
  %cmp = icmp eq i32 %4, 5
  %cond = select i1 %cmp, i32 1, i32 2
  %call4 = call i32 @mode_for_size(i32 %mul, i32 %cond, i32 0)
  store i32 %call4, i32* %submode, align 4
  %5 = load i32, i32* %submode, align 4
  %cmp5 = icmp eq i32 %5, 51
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 2471, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.expand_complex_abs, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call7 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %6, i32 0)
  store %struct.rtx_def* %call7, %struct.rtx_def** %op0.addr, align 8
  %7 = load i32, i32* @flag_force_mem, align 4
  %tobool = icmp ne i32 %7, 0
  br i1 %tobool, label %if.then.8, label %if.end.10

if.then.8:                                        ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call9 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %8)
  store %struct.rtx_def* %call9, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.end
  %call11 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call11, %struct.rtx_def** %last, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool12 = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end.10
  %10 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call14 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %10, i32 1)
  store %struct.rtx_def* %call14, %struct.rtx_def** %target.addr, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end.10
  %11 = load i32, i32* %unsignedp.addr, align 4
  %tobool16 = icmp ne i32 %11, 0
  br i1 %tobool16, label %cond.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.15
  %12 = load i32, i32* @flag_trapv, align 4
  %tobool17 = icmp ne i32 %12, 0
  br i1 %tobool17, label %land.lhs.true.18, label %cond.false

land.lhs.true.18:                                 ; preds = %land.lhs.true
  %13 = load i32, i32* %mode.addr, align 4
  %idxprom19 = sext i32 %13 to i64
  %arrayidx20 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom19
  %14 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp eq i32 %14, 1
  br i1 %cmp21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.18
  %15 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 35), align 8
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.18, %land.lhs.true, %if.end.15
  %16 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 34), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond23 = phi %struct.optab* [ %15, %cond.true ], [ %16, %cond.false ]
  store %struct.optab* %cond23, %struct.optab** %this_abs_optab, align 8
  %17 = load i32, i32* %mode.addr, align 4
  %idxprom24 = sext i32 %17 to i64
  %18 = load %struct.optab*, %struct.optab** %this_abs_optab, align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %18, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom24
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx25, i32 0, i32 0
  %19 = load i32, i32* %insn_code, align 4
  %cmp26 = icmp ne i32 %19, 1317
  br i1 %cmp26, label %if.then.28, label %if.end.90

if.then.28:                                       ; preds = %cond.end
  %20 = load i32, i32* %mode.addr, align 4
  %idxprom29 = sext i32 %20 to i64
  %21 = load %struct.optab*, %struct.optab** %this_abs_optab, align 8
  %handlers30 = getelementptr inbounds %struct.optab, %struct.optab* %21, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers30, i32 0, i64 %idxprom29
  %insn_code32 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx31, i32 0, i32 0
  %22 = load i32, i32* %insn_code32, align 4
  store i32 %22, i32* %icode, align 4
  %23 = load i32, i32* %icode, align 4
  %idxprom33 = sext i32 %23 to i64
  %arrayidx34 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom33
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx34, i32 0, i32 3
  %24 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx35 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %24, i64 1
  %mode36 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx35, i32 0, i32 2
  %bf.load = load i16, i16* %mode36, align 8
  %bf.cast = zext i16 %bf.load to i32
  store i32 %bf.cast, i32* %mode0, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %xop0, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool37 = icmp ne %struct.rtx_def* %26, null
  br i1 %tobool37, label %if.then.38, label %if.else

if.then.38:                                       ; preds = %if.then.28
  %27 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %temp, align 8
  br label %if.end.40

if.else:                                          ; preds = %if.then.28
  %28 = load i32, i32* %submode, align 4
  %call39 = call %struct.rtx_def* @gen_reg_rtx(i32 %28)
  store %struct.rtx_def* %call39, %struct.rtx_def** %temp, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.else, %if.then.38
  %29 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load41 = load i32, i32* %30, align 8
  %bf.lshr = lshr i32 %bf.load41, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp42 = icmp ne i32 %bf.clear, 0
  br i1 %cmp42, label %land.lhs.true.44, label %if.end.52

land.lhs.true.44:                                 ; preds = %if.end.40
  %31 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load45 = load i32, i32* %32, align 8
  %bf.lshr46 = lshr i32 %bf.load45, 16
  %bf.clear47 = and i32 %bf.lshr46, 255
  %33 = load i32, i32* %mode0, align 4
  %cmp48 = icmp ne i32 %bf.clear47, %33
  br i1 %cmp48, label %if.then.50, label %if.end.52

if.then.50:                                       ; preds = %land.lhs.true.44
  %34 = load i32, i32* %mode0, align 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %36 = load i32, i32* %unsignedp.addr, align 4
  %call51 = call %struct.rtx_def* @convert_to_mode(i32 %34, %struct.rtx_def* %35, i32 %36)
  store %struct.rtx_def* %call51, %struct.rtx_def** %xop0, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.50, %land.lhs.true.44, %if.end.40
  %37 = load i32, i32* %icode, align 4
  %idxprom53 = sext i32 %37 to i64
  %arrayidx54 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom53
  %operand55 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx54, i32 0, i32 3
  %38 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand55, align 8
  %arrayidx56 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %38, i64 1
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx56, i32 0, i32 0
  %39 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %41 = load i32, i32* %mode0, align 4
  %call57 = call i32 %39(%struct.rtx_def* %40, i32 %41)
  %tobool58 = icmp ne i32 %call57, 0
  br i1 %tobool58, label %if.end.61, label %if.then.59

if.then.59:                                       ; preds = %if.end.52
  %42 = load i32, i32* %mode0, align 4
  %43 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %call60 = call %struct.rtx_def* @copy_to_mode_reg(i32 %42, %struct.rtx_def* %43)
  store %struct.rtx_def* %call60, %struct.rtx_def** %xop0, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.end.52
  %44 = load i32, i32* %icode, align 4
  %idxprom62 = sext i32 %44 to i64
  %arrayidx63 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom62
  %operand64 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx63, i32 0, i32 3
  %45 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand64, align 8
  %arrayidx65 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %45, i64 0
  %predicate66 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx65, i32 0, i32 0
  %46 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate66, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %48 = load i32, i32* %submode, align 4
  %call67 = call i32 %46(%struct.rtx_def* %47, i32 %48)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.71, label %if.then.69

if.then.69:                                       ; preds = %if.end.61
  %49 = load i32, i32* %submode, align 4
  %call70 = call %struct.rtx_def* @gen_reg_rtx(i32 %49)
  store %struct.rtx_def* %call70, %struct.rtx_def** %temp, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.69, %if.end.61
  %50 = load i32, i32* %icode, align 4
  %idxprom72 = sext i32 %50 to i64
  %arrayidx73 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom72
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx73, i32 0, i32 2
  %51 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %call74 = call %struct.rtx_def* (%struct.rtx_def*, ...) %51(%struct.rtx_def* %52, %struct.rtx_def* %53)
  store %struct.rtx_def* %call74, %struct.rtx_def** %pat, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %tobool75 = icmp ne %struct.rtx_def* %54, null
  br i1 %tobool75, label %if.then.76, label %if.else.88

if.then.76:                                       ; preds = %if.end.71
  %55 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load77 = load i32, i32* %56, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 24
  br i1 %cmp79, label %land.lhs.true.81, label %if.end.86

land.lhs.true.81:                                 ; preds = %if.then.76
  %57 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %59 = load %struct.optab*, %struct.optab** %this_abs_optab, align 8
  %code = getelementptr inbounds %struct.optab, %struct.optab* %59, i32 0, i32 0
  %60 = load i32, i32* %code, align 4
  %61 = load %struct.rtx_def*, %struct.rtx_def** %xop0, align 8
  %call82 = call i32 @add_equal_note(%struct.rtx_def* %57, %struct.rtx_def* %58, i32 %60, %struct.rtx_def* %61, %struct.rtx_def* null)
  %tobool83 = icmp ne i32 %call82, 0
  br i1 %tobool83, label %if.end.86, label %if.then.84

if.then.84:                                       ; preds = %land.lhs.true.81
  %62 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %62)
  %63 = load i32, i32* %mode.addr, align 4
  %64 = load %struct.optab*, %struct.optab** %this_abs_optab, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %66 = load i32, i32* %unsignedp.addr, align 4
  %call85 = call %struct.rtx_def* @expand_unop(i32 %63, %struct.optab* %64, %struct.rtx_def* %65, %struct.rtx_def* null, i32 %66)
  store %struct.rtx_def* %call85, %struct.rtx_def** %retval
  br label %return

if.end.86:                                        ; preds = %land.lhs.true.81, %if.then.76
  %67 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call87 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %67)
  %68 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %68, %struct.rtx_def** %retval
  br label %return

if.else.88:                                       ; preds = %if.end.71
  %69 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %69)
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.88
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %cond.end
  %70 = load i32, i32* %mode.addr, align 4
  %idxprom91 = sext i32 %70 to i64
  %arrayidx92 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom91
  %71 = load i8, i8* %arrayidx92, align 1
  %conv93 = zext i8 %71 to i32
  store i32 %conv93, i32* %wider_mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.90
  %72 = load i32, i32* %wider_mode, align 4
  %cmp94 = icmp ne i32 %72, 0
  br i1 %cmp94, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %73 = load i32, i32* %wider_mode, align 4
  %idxprom96 = sext i32 %73 to i64
  %74 = load %struct.optab*, %struct.optab** %this_abs_optab, align 8
  %handlers97 = getelementptr inbounds %struct.optab, %struct.optab* %74, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers97, i32 0, i64 %idxprom96
  %insn_code99 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx98, i32 0, i32 0
  %75 = load i32, i32* %insn_code99, align 4
  %cmp100 = icmp ne i32 %75, 1317
  br i1 %cmp100, label %if.then.102, label %if.end.120

if.then.102:                                      ; preds = %for.body
  %76 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %76, %struct.rtx_def** %xop0103, align 8
  %77 = load i32, i32* %wider_mode, align 4
  %78 = load i32, i32* %mode.addr, align 4
  %79 = load %struct.rtx_def*, %struct.rtx_def** %xop0103, align 8
  %80 = load i32, i32* %unsignedp.addr, align 4
  %call104 = call %struct.rtx_def* @convert_modes(i32 %77, i32 %78, %struct.rtx_def* %79, i32 %80)
  store %struct.rtx_def* %call104, %struct.rtx_def** %xop0103, align 8
  %81 = load i32, i32* %wider_mode, align 4
  %82 = load %struct.rtx_def*, %struct.rtx_def** %xop0103, align 8
  %83 = load i32, i32* %unsignedp.addr, align 4
  %call105 = call %struct.rtx_def* @expand_complex_abs(i32 %81, %struct.rtx_def* %82, %struct.rtx_def* null, i32 %83)
  store %struct.rtx_def* %call105, %struct.rtx_def** %temp, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool106 = icmp ne %struct.rtx_def* %84, null
  br i1 %tobool106, label %if.then.107, label %if.else.118

if.then.107:                                      ; preds = %if.then.102
  %85 = load i32, i32* %class, align 4
  %cmp108 = icmp ne i32 %85, 5
  br i1 %cmp108, label %if.then.110, label %if.else.116

if.then.110:                                      ; preds = %if.then.107
  %86 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp111 = icmp eq %struct.rtx_def* %86, null
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %if.then.110
  %87 = load i32, i32* %submode, align 4
  %call114 = call %struct.rtx_def* @gen_reg_rtx(i32 %87)
  store %struct.rtx_def* %call114, %struct.rtx_def** %target.addr, align 8
  br label %if.end.115

if.end.115:                                       ; preds = %if.then.113, %if.then.110
  %88 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  call void @convert_move(%struct.rtx_def* %88, %struct.rtx_def* %89, i32 0)
  %90 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %90, %struct.rtx_def** %retval
  br label %return

if.else.116:                                      ; preds = %if.then.107
  %91 = load i32, i32* %submode, align 4
  %92 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call117 = call %struct.rtx_def* @gen_lowpart(i32 %91, %struct.rtx_def* %92)
  store %struct.rtx_def* %call117, %struct.rtx_def** %retval
  br label %return

if.else.118:                                      ; preds = %if.then.102
  %93 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %93)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.118
  br label %if.end.120

if.end.120:                                       ; preds = %if.end.119, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.120
  %94 = load i32, i32* %wider_mode, align 4
  %idxprom121 = sext i32 %94 to i64
  %arrayidx122 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom121
  %95 = load i8, i8* %arrayidx122, align 1
  %conv123 = zext i8 %95 to i32
  store i32 %conv123, i32* %wider_mode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %96 = load i32, i32* %submode, align 4
  %idxprom124 = sext i32 %96 to i64
  %97 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 38), align 8
  %handlers125 = getelementptr inbounds %struct.optab, %struct.optab* %97, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers125, i32 0, i64 %idxprom124
  %insn_code127 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx126, i32 0, i32 0
  %98 = load i32, i32* %insn_code127, align 4
  %cmp128 = icmp ne i32 %98, 1317
  br i1 %cmp128, label %land.lhs.true.130, label %if.end.144

land.lhs.true.130:                                ; preds = %for.end
  %99 = load i32, i32* @flag_trapv, align 4
  %tobool131 = icmp ne i32 %99, 0
  br i1 %tobool131, label %if.end.144, label %if.then.132

if.then.132:                                      ; preds = %land.lhs.true.130
  %100 = load i32, i32* %submode, align 4
  %101 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call133 = call %struct.rtx_def* @gen_realpart(i32 %100, %struct.rtx_def* %101)
  store %struct.rtx_def* %call133, %struct.rtx_def** %real, align 8
  %102 = load i32, i32* %submode, align 4
  %103 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call134 = call %struct.rtx_def* @gen_imagpart(i32 %102, %struct.rtx_def* %103)
  store %struct.rtx_def* %call134, %struct.rtx_def** %imag, align 8
  %104 = load i32, i32* %submode, align 4
  %105 = load %struct.rtx_def*, %struct.rtx_def** %real, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %real, align 8
  %call135 = call %struct.rtx_def* @expand_mult(i32 %104, %struct.rtx_def* %105, %struct.rtx_def* %106, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call135, %struct.rtx_def** %real, align 8
  %107 = load i32, i32* %submode, align 4
  %108 = load %struct.rtx_def*, %struct.rtx_def** %imag, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %imag, align 8
  %call136 = call %struct.rtx_def* @expand_mult(i32 %107, %struct.rtx_def* %108, %struct.rtx_def* %109, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call136, %struct.rtx_def** %imag, align 8
  %110 = load i32, i32* %submode, align 4
  %111 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %real, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %imag, align 8
  %call137 = call %struct.rtx_def* @expand_binop(i32 %110, %struct.optab* %111, %struct.rtx_def* %112, %struct.rtx_def* %113, %struct.rtx_def* null, i32 0, i32 3)
  store %struct.rtx_def* %call137, %struct.rtx_def** %total, align 8
  %114 = load i32, i32* %submode, align 4
  %115 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 38), align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %total, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call138 = call %struct.rtx_def* @expand_unop(i32 %114, %struct.optab* %115, %struct.rtx_def* %116, %struct.rtx_def* %117, i32 0)
  store %struct.rtx_def* %call138, %struct.rtx_def** %target.addr, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp139 = icmp eq %struct.rtx_def* %118, null
  br i1 %cmp139, label %if.then.141, label %if.else.142

if.then.141:                                      ; preds = %if.then.132
  %119 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %119)
  br label %if.end.143

if.else.142:                                      ; preds = %if.then.132
  %120 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %120, %struct.rtx_def** %retval
  br label %return

if.end.143:                                       ; preds = %if.then.141
  br label %if.end.144

if.end.144:                                       ; preds = %if.end.143, %land.lhs.true.130, %for.end
  %121 = load i32, i32* %mode.addr, align 4
  %idxprom145 = sext i32 %121 to i64
  %122 = load %struct.optab*, %struct.optab** %this_abs_optab, align 8
  %handlers146 = getelementptr inbounds %struct.optab, %struct.optab* %122, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers146, i32 0, i64 %idxprom145
  %libfunc = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx147, i32 0, i32 1
  %123 = load %struct.rtx_def*, %struct.rtx_def** %libfunc, align 8
  %tobool148 = icmp ne %struct.rtx_def* %123, null
  br i1 %tobool148, label %if.then.149, label %if.end.159

if.then.149:                                      ; preds = %if.end.144
  call void @start_sequence()
  %124 = load i32, i32* %mode.addr, align 4
  %idxprom150 = sext i32 %124 to i64
  %125 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 34), align 8
  %handlers151 = getelementptr inbounds %struct.optab, %struct.optab* %125, i32 0, i32 1
  %arrayidx152 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers151, i32 0, i64 %idxprom150
  %libfunc153 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx152, i32 0, i32 1
  %126 = load %struct.rtx_def*, %struct.rtx_def** %libfunc153, align 8
  %127 = load i32, i32* %submode, align 4
  %128 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %129 = load i32, i32* %mode.addr, align 4
  %call154 = call %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, ...) @emit_library_call_value(%struct.rtx_def* %126, %struct.rtx_def* null, i32 1, i32 %127, i32 1, %struct.rtx_def* %128, i32 %129)
  store %struct.rtx_def* %call154, %struct.rtx_def** %value, align 8
  %call155 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call155, %struct.rtx_def** %insns, align 8
  call void @end_sequence()
  %130 = load i32, i32* %submode, align 4
  %call156 = call %struct.rtx_def* @gen_reg_rtx(i32 %130)
  store %struct.rtx_def* %call156, %struct.rtx_def** %target.addr, align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %134 = load %struct.optab*, %struct.optab** %this_abs_optab, align 8
  %code157 = getelementptr inbounds %struct.optab, %struct.optab* %134, i32 0, i32 0
  %135 = load i32, i32* %code157, align 4
  %136 = load i32, i32* %mode.addr, align 4
  %137 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call158 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 %135, i32 %136, %struct.rtx_def* %137)
  call void @emit_libcall_block(%struct.rtx_def* %131, %struct.rtx_def* %132, %struct.rtx_def* %133, %struct.rtx_def* %call158)
  %138 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %138, %struct.rtx_def** %retval
  br label %return

if.end.159:                                       ; preds = %if.end.144
  %139 = load i32, i32* %mode.addr, align 4
  %idxprom160 = sext i32 %139 to i64
  %arrayidx161 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom160
  %140 = load i8, i8* %arrayidx161, align 1
  %conv162 = zext i8 %140 to i32
  store i32 %conv162, i32* %wider_mode, align 4
  br label %for.cond.163

for.cond.163:                                     ; preds = %for.inc.197, %if.end.159
  %141 = load i32, i32* %wider_mode, align 4
  %cmp164 = icmp ne i32 %141, 0
  br i1 %cmp164, label %for.body.166, label %for.end.201

for.body.166:                                     ; preds = %for.cond.163
  %142 = load i32, i32* %wider_mode, align 4
  %idxprom167 = sext i32 %142 to i64
  %143 = load %struct.optab*, %struct.optab** %this_abs_optab, align 8
  %handlers168 = getelementptr inbounds %struct.optab, %struct.optab* %143, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers168, i32 0, i64 %idxprom167
  %insn_code170 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx169, i32 0, i32 0
  %144 = load i32, i32* %insn_code170, align 4
  %cmp171 = icmp ne i32 %144, 1317
  br i1 %cmp171, label %if.then.178, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.166
  %145 = load i32, i32* %wider_mode, align 4
  %idxprom173 = sext i32 %145 to i64
  %146 = load %struct.optab*, %struct.optab** %this_abs_optab, align 8
  %handlers174 = getelementptr inbounds %struct.optab, %struct.optab* %146, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers174, i32 0, i64 %idxprom173
  %libfunc176 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx175, i32 0, i32 1
  %147 = load %struct.rtx_def*, %struct.rtx_def** %libfunc176, align 8
  %tobool177 = icmp ne %struct.rtx_def* %147, null
  br i1 %tobool177, label %if.then.178, label %if.end.196

if.then.178:                                      ; preds = %lor.lhs.false, %for.body.166
  %148 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %148, %struct.rtx_def** %xop0179, align 8
  %149 = load i32, i32* %wider_mode, align 4
  %150 = load i32, i32* %mode.addr, align 4
  %151 = load %struct.rtx_def*, %struct.rtx_def** %xop0179, align 8
  %152 = load i32, i32* %unsignedp.addr, align 4
  %call180 = call %struct.rtx_def* @convert_modes(i32 %149, i32 %150, %struct.rtx_def* %151, i32 %152)
  store %struct.rtx_def* %call180, %struct.rtx_def** %xop0179, align 8
  %153 = load i32, i32* %wider_mode, align 4
  %154 = load %struct.rtx_def*, %struct.rtx_def** %xop0179, align 8
  %155 = load i32, i32* %unsignedp.addr, align 4
  %call181 = call %struct.rtx_def* @expand_complex_abs(i32 %153, %struct.rtx_def* %154, %struct.rtx_def* null, i32 %155)
  store %struct.rtx_def* %call181, %struct.rtx_def** %temp, align 8
  %156 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %tobool182 = icmp ne %struct.rtx_def* %156, null
  br i1 %tobool182, label %if.then.183, label %if.else.194

if.then.183:                                      ; preds = %if.then.178
  %157 = load i32, i32* %class, align 4
  %cmp184 = icmp ne i32 %157, 5
  br i1 %cmp184, label %if.then.186, label %if.else.192

if.then.186:                                      ; preds = %if.then.183
  %158 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp187 = icmp eq %struct.rtx_def* %158, null
  br i1 %cmp187, label %if.then.189, label %if.end.191

if.then.189:                                      ; preds = %if.then.186
  %159 = load i32, i32* %submode, align 4
  %call190 = call %struct.rtx_def* @gen_reg_rtx(i32 %159)
  store %struct.rtx_def* %call190, %struct.rtx_def** %target.addr, align 8
  br label %if.end.191

if.end.191:                                       ; preds = %if.then.189, %if.then.186
  %160 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %161 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  call void @convert_move(%struct.rtx_def* %160, %struct.rtx_def* %161, i32 0)
  %162 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %162, %struct.rtx_def** %retval
  br label %return

if.else.192:                                      ; preds = %if.then.183
  %163 = load i32, i32* %submode, align 4
  %164 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call193 = call %struct.rtx_def* @gen_lowpart(i32 %163, %struct.rtx_def* %164)
  store %struct.rtx_def* %call193, %struct.rtx_def** %retval
  br label %return

if.else.194:                                      ; preds = %if.then.178
  %165 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  call void @delete_insns_since(%struct.rtx_def* %165)
  br label %if.end.195

if.end.195:                                       ; preds = %if.else.194
  br label %if.end.196

if.end.196:                                       ; preds = %if.end.195, %lor.lhs.false
  br label %for.inc.197

for.inc.197:                                      ; preds = %if.end.196
  %166 = load i32, i32* %wider_mode, align 4
  %idxprom198 = sext i32 %166 to i64
  %arrayidx199 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom198
  %167 = load i8, i8* %arrayidx199, align 1
  %conv200 = zext i8 %167 to i32
  store i32 %conv200, i32* %wider_mode, align 4
  br label %for.cond.163

for.end.201:                                      ; preds = %for.cond.163
  %168 = load %struct.rtx_def*, %struct.rtx_def** %entry_last, align 8
  call void @delete_insns_since(%struct.rtx_def* %168)
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.201, %if.else.192, %if.end.191, %if.then.149, %if.else.142, %if.else.116, %if.end.115, %if.end.86, %if.then.84
  %169 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %169
}

declare %struct.rtx_def* @expand_mult(i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32) #2

; Function Attrs: nounwind uwtable
define void @emit_unop_insn(i32 %icode, %struct.rtx_def* %target, %struct.rtx_def* %op0, i32 %code) #0 {
entry:
  %icode.addr = alloca i32, align 4
  %target.addr = alloca %struct.rtx_def*, align 8
  %op0.addr = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %temp = alloca %struct.rtx_def*, align 8
  %mode0 = alloca i32, align 4
  %pat = alloca %struct.rtx_def*, align 8
  store i32 %icode, i32* %icode.addr, align 4
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load i32, i32* %icode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx, i32 0, i32 3
  %1 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx1 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %1, i64 1
  %mode = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx1, i32 0, i32 2
  %bf.load = load i16, i16* %mode, align 8
  %bf.cast = zext i16 %bf.load to i32
  store i32 %bf.cast, i32* %mode0, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %2, i32 1)
  store %struct.rtx_def* %call, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %call, %struct.rtx_def** %temp, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call2 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %3, i32 0)
  store %struct.rtx_def* %call2, %struct.rtx_def** %op0.addr, align 8
  %4 = load i32, i32* @flag_force_mem, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load i32, i32* %code.addr, align 4
  %cmp = icmp ne i32 %5, 120
  br i1 %cmp, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %6 = load i32, i32* %code.addr, align 4
  %cmp4 = icmp ne i32 %6, 121
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call5 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %7)
  store %struct.rtx_def* %call5, %struct.rtx_def** %op0.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.3, %land.lhs.true, %entry
  %8 = load i32, i32* %icode.addr, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom6
  %operand8 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx7, i32 0, i32 3
  %9 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand8, align 8
  %arrayidx9 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %9, i64 1
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx9, i32 0, i32 0
  %10 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %12 = load i32, i32* %mode0, align 4
  %call10 = call i32 %10(%struct.rtx_def* %11, i32 %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.14, label %if.then.12

if.then.12:                                       ; preds = %if.end
  %13 = load i32, i32* %mode0, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call13 = call %struct.rtx_def* @copy_to_mode_reg(i32 %13, %struct.rtx_def* %14)
  store %struct.rtx_def* %call13, %struct.rtx_def** %op0.addr, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end
  %15 = load i32, i32* %icode.addr, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom15
  %operand17 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx16, i32 0, i32 3
  %16 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand17, align 8
  %arrayidx18 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %16, i64 0
  %predicate19 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx18, i32 0, i32 0
  %17 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate19, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load20 = load i32, i32* %20, align 8
  %bf.lshr = lshr i32 %bf.load20, 16
  %bf.clear = and i32 %bf.lshr, 255
  %call21 = call i32 %17(%struct.rtx_def* %18, i32 %bf.clear)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %lor.lhs.false, label %if.then.28

lor.lhs.false:                                    ; preds = %if.end.14
  %21 = load i32, i32* @flag_force_mem, align 4
  %tobool23 = icmp ne i32 %21, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.33

land.lhs.true.24:                                 ; preds = %lor.lhs.false
  %22 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load25 = load i32, i32* %23, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 66
  br i1 %cmp27, label %if.then.28, label %if.end.33

if.then.28:                                       ; preds = %land.lhs.true.24, %if.end.14
  %24 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load29 = load i32, i32* %25, align 8
  %bf.lshr30 = lshr i32 %bf.load29, 16
  %bf.clear31 = and i32 %bf.lshr30, 255
  %call32 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear31)
  store %struct.rtx_def* %call32, %struct.rtx_def** %temp, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.28, %land.lhs.true.24, %lor.lhs.false
  %26 = load i32, i32* %icode.addr, align 4
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom34
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx35, i32 0, i32 2
  %27 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call36 = call %struct.rtx_def* (%struct.rtx_def*, ...) %27(%struct.rtx_def* %28, %struct.rtx_def* %29)
  store %struct.rtx_def* %call36, %struct.rtx_def** %pat, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load37 = load i32, i32* %31, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 24
  br i1 %cmp39, label %land.lhs.true.40, label %if.end.44

land.lhs.true.40:                                 ; preds = %if.end.33
  %32 = load i32, i32* %code.addr, align 4
  %cmp41 = icmp ne i32 %32, 0
  br i1 %cmp41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %land.lhs.true.40
  %33 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %35 = load i32, i32* %code.addr, align 4
  %36 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %call43 = call i32 @add_equal_note(%struct.rtx_def* %33, %struct.rtx_def* %34, i32 %35, %struct.rtx_def* %36, %struct.rtx_def* null)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %land.lhs.true.40, %if.end.33
  %37 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %call45 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %37)
  %38 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp46 = icmp ne %struct.rtx_def* %38, %39
  br i1 %cmp46, label %if.then.47, label %if.end.49

if.then.47:                                       ; preds = %if.end.44
  %40 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call48 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %40, %struct.rtx_def* %41)
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.47, %if.end.44
  ret void
}

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #2

declare void @remove_note(%struct.rtx_def*, %struct.rtx_def*) #2

declare i32 @reg_overlap_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #2

declare void @add_insn(%struct.rtx_def*) #2

declare %struct.rtx_def* @gen_rtx_fmt_ue(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #2

declare i32 @may_trap_p(%struct.rtx_def*) #2

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #2

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #2

declare i32 @reg_used_between_p(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #2

declare i32 @modified_in_p(%struct.rtx_def*, %struct.rtx_def*) #2

declare i32 @modified_between_p(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define void @emit_clr_insn(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %call = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %0, %struct.rtx_def* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @emit_0_to_1_insn(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %call = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %0, %struct.rtx_def* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @prepare_operand(i32 %icode, %struct.rtx_def* %x, i32 %opnum, i32 %mode, i32 %wider_mode, i32 %unsignedp) #0 {
entry:
  %icode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %opnum.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %wider_mode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  store i32 %icode, i32* %icode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %opnum, i32* %opnum.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %wider_mode, i32* %wider_mode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %0, i32 0)
  store %struct.rtx_def* %call, %struct.rtx_def** %x.addr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i32, i32* %wider_mode.addr, align 4
  %cmp = icmp ne i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %wider_mode.addr, align 4
  %4 = load i32, i32* %mode.addr, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = load i32, i32* %unsignedp.addr, align 4
  %call1 = call %struct.rtx_def* @convert_modes(i32 %3, i32 %4, %struct.rtx_def* %5, i32 %6)
  store %struct.rtx_def* %call1, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %opnum.addr, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load i32, i32* %icode.addr, align 4
  %idxprom2 = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom2
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx, i32 0, i32 3
  %9 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx3 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %9, i64 %idxprom
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx3, i32 0, i32 0
  %10 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %12 = load i32, i32* %opnum.addr, align 4
  %idxprom4 = sext i32 %12 to i64
  %13 = load i32, i32* %icode.addr, align 4
  %idxprom5 = sext i32 %13 to i64
  %arrayidx6 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom5
  %operand7 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx6, i32 0, i32 3
  %14 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand7, align 8
  %arrayidx8 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %14, i64 %idxprom4
  %mode9 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx8, i32 0, i32 2
  %bf.load = load i16, i16* %mode9, align 8
  %bf.cast = zext i16 %bf.load to i32
  %call10 = call i32 %10(%struct.rtx_def* %11, i32 %bf.cast)
  %tobool = icmp ne i32 %call10, 0
  br i1 %tobool, label %if.end.21, label %if.then.11

if.then.11:                                       ; preds = %if.end
  %15 = load i32, i32* %opnum.addr, align 4
  %idxprom12 = sext i32 %15 to i64
  %16 = load i32, i32* %icode.addr, align 4
  %idxprom13 = sext i32 %16 to i64
  %arrayidx14 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom13
  %operand15 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx14, i32 0, i32 3
  %17 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand15, align 8
  %arrayidx16 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %17, i64 %idxprom12
  %mode17 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx16, i32 0, i32 2
  %bf.load18 = load i16, i16* %mode17, align 8
  %bf.cast19 = zext i16 %bf.load18 to i32
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call20 = call %struct.rtx_def* @copy_to_mode_reg(i32 %bf.cast19, %struct.rtx_def* %18)
  store %struct.rtx_def* %call20, %struct.rtx_def** %x.addr, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.11, %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  ret %struct.rtx_def* %19
}

; Function Attrs: nounwind uwtable
define void @emit_cmp_and_jump_insns(%struct.rtx_def* %x, %struct.rtx_def* %y, i32 %comparison, %struct.rtx_def* %size, i32 %mode, i32 %unsignedp, %struct.rtx_def* %label) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %comparison.addr = alloca i32, align 4
  %size.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  %label.addr = alloca %struct.rtx_def*, align 8
  %op0 = alloca %struct.rtx_def*, align 8
  %op1 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  store i32 %comparison, i32* %comparison.addr, align 4
  store %struct.rtx_def* %size, %struct.rtx_def** %size.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %op0, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %op1, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call = call i32 @swap_commutative_operands_p(%struct.rtx_def* %2, %struct.rtx_def* %3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %tobool1 = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool1, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3370, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__FUNCTION__.emit_cmp_and_jump_insns, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %op0, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %op1, align 8
  %7 = load i32, i32* %comparison.addr, align 4
  %call3 = call i32 @swap_condition(i32 %7)
  store i32 %call3, i32* %comparison.addr, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  call void @emit_queue()
  %8 = load i32, i32* %unsignedp.addr, align 4
  %tobool5 = icmp ne i32 %8, 0
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %9 = load i32, i32* %comparison.addr, align 4
  %call7 = call i32 @unsigned_condition(i32 %9)
  store i32 %call7, i32* %comparison.addr, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  call void @prepare_cmp_insn(%struct.rtx_def** %op0, %struct.rtx_def** %op1, i32* %comparison.addr, %struct.rtx_def* %10, i32* %mode.addr, i32* %unsignedp.addr, i32 0)
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %13 = load i32, i32* %mode.addr, align 4
  %14 = load i32, i32* %comparison.addr, align 4
  %15 = load i32, i32* %unsignedp.addr, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  call void @emit_cmp_and_jump_insn_1(%struct.rtx_def* %11, %struct.rtx_def* %12, i32 %13, i32 %14, i32 %15, %struct.rtx_def* %16)
  ret void
}

declare i32 @swap_commutative_operands_p(%struct.rtx_def*, %struct.rtx_def*) #2

declare i32 @swap_condition(i32) #2

declare void @emit_queue() #2

declare i32 @unsigned_condition(i32) #2

; Function Attrs: nounwind uwtable
define internal void @prepare_cmp_insn(%struct.rtx_def** %px, %struct.rtx_def** %py, i32* %pcomparison, %struct.rtx_def* %size, i32* %pmode, i32* %punsignedp, i32 %purpose) #0 {
entry:
  %px.addr = alloca %struct.rtx_def**, align 8
  %py.addr = alloca %struct.rtx_def**, align 8
  %pcomparison.addr = alloca i32*, align 8
  %size.addr = alloca %struct.rtx_def*, align 8
  %pmode.addr = alloca i32*, align 8
  %punsignedp.addr = alloca i32*, align 8
  %purpose.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %y = alloca %struct.rtx_def*, align 8
  %unsignedp = alloca i32, align 4
  %class = alloca i32, align 4
  %result = alloca %struct.rtx_def*, align 8
  %result_mode = alloca i32, align 4
  %opalign = alloca %struct.rtx_def*, align 8
  %libfunc165 = alloca %struct.rtx_def*, align 8
  %result170 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %px, %struct.rtx_def*** %px.addr, align 8
  store %struct.rtx_def** %py, %struct.rtx_def*** %py.addr, align 8
  store i32* %pcomparison, i32** %pcomparison.addr, align 8
  store %struct.rtx_def* %size, %struct.rtx_def** %size.addr, align 8
  store i32* %pmode, i32** %pmode.addr, align 8
  store i32* %punsignedp, i32** %punsignedp.addr, align 8
  store i32 %purpose, i32* %purpose.addr, align 4
  %0 = load i32*, i32** %pmode.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %mode, align 4
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %x, align 8
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %py.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %y, align 8
  %6 = load i32*, i32** %punsignedp.addr, align 8
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %unsignedp, align 4
  %8 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %9 = load i32, i32* %arrayidx, align 4
  store i32 %9, i32* %class, align 4
  %10 = load i32, i32* %mode, align 4
  %cmp = icmp ne i32 %10, 51
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %11 = load i32, i32* @flag_force_mem, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %12)
  store %struct.rtx_def* %call, %struct.rtx_def** %x, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call1 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %13)
  store %struct.rtx_def* %call1, %struct.rtx_def** %y, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp eq i32 %bf.clear, 67
  br i1 %cmp2, label %land.lhs.true.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load3 = load i32, i32* %17, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 68
  br i1 %cmp5, label %land.lhs.true.30, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load7 = load i32, i32* %19, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 54
  br i1 %cmp9, label %land.lhs.true.30, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.6
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load11 = load i32, i32* %21, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 55
  br i1 %cmp13, label %land.lhs.true.30, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %lor.lhs.false.10
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load15 = load i32, i32* %23, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 58
  br i1 %cmp17, label %land.lhs.true.30, label %lor.lhs.false.18

lor.lhs.false.18:                                 ; preds = %lor.lhs.false.14
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load19 = load i32, i32* %25, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 134
  br i1 %cmp21, label %land.lhs.true.30, label %lor.lhs.false.22

lor.lhs.false.22:                                 ; preds = %lor.lhs.false.18
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load23 = load i32, i32* %27, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 56
  br i1 %cmp25, label %land.lhs.true.30, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.22
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load27 = load i32, i32* %29, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 140
  br i1 %cmp29, label %land.lhs.true.30, label %if.end.38

land.lhs.true.30:                                 ; preds = %lor.lhs.false.26, %lor.lhs.false.22, %lor.lhs.false.18, %lor.lhs.false.14, %lor.lhs.false.10, %lor.lhs.false.6, %lor.lhs.false, %if.end
  %call31 = call i32 @preserve_subexpressions_p()
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %land.lhs.true.33, label %if.end.38

land.lhs.true.33:                                 ; preds = %land.lhs.true.30
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call34 = call i32 @rtx_cost(%struct.rtx_def* %30, i32 74)
  %cmp35 = icmp sgt i32 %call34, 4
  br i1 %cmp35, label %if.then.36, label %if.end.38

if.then.36:                                       ; preds = %land.lhs.true.33
  %31 = load i32, i32* %mode, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call37 = call %struct.rtx_def* @force_reg(i32 %31, %struct.rtx_def* %32)
  store %struct.rtx_def* %call37, %struct.rtx_def** %x, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.36, %land.lhs.true.33, %land.lhs.true.30, %lor.lhs.false.26
  %33 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load39 = load i32, i32* %34, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp eq i32 %bf.clear40, 67
  br i1 %cmp41, label %land.lhs.true.70, label %lor.lhs.false.42

lor.lhs.false.42:                                 ; preds = %if.end.38
  %35 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load43 = load i32, i32* %36, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp eq i32 %bf.clear44, 68
  br i1 %cmp45, label %land.lhs.true.70, label %lor.lhs.false.46

lor.lhs.false.46:                                 ; preds = %lor.lhs.false.42
  %37 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load47 = load i32, i32* %38, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 54
  br i1 %cmp49, label %land.lhs.true.70, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %lor.lhs.false.46
  %39 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load51 = load i32, i32* %40, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 55
  br i1 %cmp53, label %land.lhs.true.70, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.50
  %41 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load55 = load i32, i32* %42, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 58
  br i1 %cmp57, label %land.lhs.true.70, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.54
  %43 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load59 = load i32, i32* %44, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %cmp61 = icmp eq i32 %bf.clear60, 134
  br i1 %cmp61, label %land.lhs.true.70, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.58
  %45 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load63 = load i32, i32* %46, align 8
  %bf.clear64 = and i32 %bf.load63, 65535
  %cmp65 = icmp eq i32 %bf.clear64, 56
  br i1 %cmp65, label %land.lhs.true.70, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false.62
  %47 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load67 = load i32, i32* %48, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 140
  br i1 %cmp69, label %land.lhs.true.70, label %if.end.78

land.lhs.true.70:                                 ; preds = %lor.lhs.false.66, %lor.lhs.false.62, %lor.lhs.false.58, %lor.lhs.false.54, %lor.lhs.false.50, %lor.lhs.false.46, %lor.lhs.false.42, %if.end.38
  %call71 = call i32 @preserve_subexpressions_p()
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %land.lhs.true.73, label %if.end.78

land.lhs.true.73:                                 ; preds = %land.lhs.true.70
  %49 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call74 = call i32 @rtx_cost(%struct.rtx_def* %49, i32 74)
  %cmp75 = icmp sgt i32 %call74, 4
  br i1 %cmp75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %land.lhs.true.73
  %50 = load i32, i32* %mode, align 4
  %51 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call77 = call %struct.rtx_def* @force_reg(i32 %50, %struct.rtx_def* %51)
  store %struct.rtx_def* %call77, %struct.rtx_def** %y, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %land.lhs.true.73, %land.lhs.true.70, %lor.lhs.false.66
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load79 = load i32, i32* %53, align 8
  %bf.lshr = lshr i32 %bf.load79, 16
  %bf.clear80 = and i32 %bf.lshr, 255
  %cmp81 = icmp eq i32 %bf.clear80, 0
  br i1 %cmp81, label %land.lhs.true.82, label %if.end.89

land.lhs.true.82:                                 ; preds = %if.end.78
  %54 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load83 = load i32, i32* %55, align 8
  %bf.lshr84 = lshr i32 %bf.load83, 16
  %bf.clear85 = and i32 %bf.lshr84, 255
  %cmp86 = icmp eq i32 %bf.clear85, 0
  br i1 %cmp86, label %if.then.87, label %if.end.89

if.then.87:                                       ; preds = %land.lhs.true.82
  %56 = load i32, i32* %mode, align 4
  %57 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call88 = call %struct.rtx_def* @force_reg(i32 %56, %struct.rtx_def* %57)
  store %struct.rtx_def* %call88, %struct.rtx_def** %x, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.87, %land.lhs.true.82, %if.end.78
  %58 = load i32, i32* %mode, align 4
  %cmp90 = icmp eq i32 %58, 51
  br i1 %cmp90, label %if.then.91, label %if.end.153

if.then.91:                                       ; preds = %if.end.89
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx92 to %struct.mem_attrs**
  %60 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp93 = icmp ne %struct.mem_attrs* %60, null
  br i1 %cmp93, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.91
  %61 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 1
  %rtmem96 = bitcast %union.rtunion_def* %arrayidx95 to %struct.mem_attrs**
  %62 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem96, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %62, i32 0, i32 4
  %63 = load i32, i32* %align, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.91
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %63, %cond.true ], [ 8, %cond.false ]
  %64 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %fld97 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx98 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld97, i32 0, i64 1
  %rtmem99 = bitcast %union.rtunion_def* %arrayidx98 to %struct.mem_attrs**
  %65 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem99, align 8
  %cmp100 = icmp ne %struct.mem_attrs* %65, null
  br i1 %cmp100, label %cond.true.101, label %cond.false.106

cond.true.101:                                    ; preds = %cond.end
  %66 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 1
  %rtmem104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.mem_attrs**
  %67 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem104, align 8
  %align105 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %67, i32 0, i32 4
  %68 = load i32, i32* %align105, align 4
  br label %cond.end.107

cond.false.106:                                   ; preds = %cond.end
  br label %cond.end.107

cond.end.107:                                     ; preds = %cond.false.106, %cond.true.101
  %cond108 = phi i32 [ %68, %cond.true.101 ], [ 8, %cond.false.106 ]
  %cmp109 = icmp ult i32 %cond, %cond108
  br i1 %cmp109, label %cond.true.110, label %cond.false.123

cond.true.110:                                    ; preds = %cond.end.107
  %69 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 1
  %rtmem113 = bitcast %union.rtunion_def* %arrayidx112 to %struct.mem_attrs**
  %70 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem113, align 8
  %cmp114 = icmp ne %struct.mem_attrs* %70, null
  br i1 %cmp114, label %cond.true.115, label %cond.false.120

cond.true.115:                                    ; preds = %cond.true.110
  %71 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 1
  %rtmem118 = bitcast %union.rtunion_def* %arrayidx117 to %struct.mem_attrs**
  %72 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem118, align 8
  %align119 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %72, i32 0, i32 4
  %73 = load i32, i32* %align119, align 4
  br label %cond.end.121

cond.false.120:                                   ; preds = %cond.true.110
  br label %cond.end.121

cond.end.121:                                     ; preds = %cond.false.120, %cond.true.115
  %cond122 = phi i32 [ %73, %cond.true.115 ], [ 8, %cond.false.120 ]
  br label %cond.end.136

cond.false.123:                                   ; preds = %cond.end.107
  %74 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 1
  %rtmem126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.mem_attrs**
  %75 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem126, align 8
  %cmp127 = icmp ne %struct.mem_attrs* %75, null
  br i1 %cmp127, label %cond.true.128, label %cond.false.133

cond.true.128:                                    ; preds = %cond.false.123
  %76 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 1
  %rtmem131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.mem_attrs**
  %77 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem131, align 8
  %align132 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %77, i32 0, i32 4
  %78 = load i32, i32* %align132, align 4
  br label %cond.end.134

cond.false.133:                                   ; preds = %cond.false.123
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.133, %cond.true.128
  %cond135 = phi i32 [ %78, %cond.true.128 ], [ 8, %cond.false.133 ]
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.end.134, %cond.end.121
  %cond137 = phi i32 [ %cond122, %cond.end.121 ], [ %cond135, %cond.end.134 ]
  %div = udiv i32 %cond137, 8
  %conv = zext i32 %div to i64
  %call138 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  store %struct.rtx_def* %call138, %struct.rtx_def** %opalign, align 8
  call void @emit_queue()
  %79 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call139 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %79, i32 0)
  store %struct.rtx_def* %call139, %struct.rtx_def** %x, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call140 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %80, i32 0)
  store %struct.rtx_def* %call140, %struct.rtx_def** %y, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %cmp141 = icmp eq %struct.rtx_def* %81, null
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %cond.end.136
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.prepare_cmp_insn, i32 0, i32 0)) #6
  unreachable

if.end.144:                                       ; preds = %cond.end.136
  %82 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1203, i32 3), align 8
  %arrayidx145 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %82, i64 0
  %mode146 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx145, i32 0, i32 2
  %bf.load147 = load i16, i16* %mode146, align 8
  %bf.cast = zext i16 %bf.load147 to i32
  store i32 %bf.cast, i32* %result_mode, align 4
  %83 = load i32, i32* %result_mode, align 4
  %call148 = call %struct.rtx_def* @gen_reg_rtx(i32 %83)
  store %struct.rtx_def* %call148, %struct.rtx_def** %result, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %call149 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %84, i32 0)
  store %struct.rtx_def* %call149, %struct.rtx_def** %size.addr, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %call150 = call %struct.rtx_def* @convert_to_mode(i32 4, %struct.rtx_def* %88, i32 1)
  %89 = load %struct.rtx_def*, %struct.rtx_def** %opalign, align 8
  %call151 = call %struct.rtx_def* @gen_cmpstrsi(%struct.rtx_def* %85, %struct.rtx_def* %86, %struct.rtx_def* %87, %struct.rtx_def* %call150, %struct.rtx_def* %89)
  %call152 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call151)
  %90 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %91 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  store %struct.rtx_def* %90, %struct.rtx_def** %91, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %93 = load %struct.rtx_def**, %struct.rtx_def*** %py.addr, align 8
  store %struct.rtx_def* %92, %struct.rtx_def** %93, align 8
  %94 = load i32, i32* %result_mode, align 4
  %95 = load i32*, i32** %pmode.addr, align 8
  store i32 %94, i32* %95, align 4
  br label %if.end.191

if.end.153:                                       ; preds = %if.end.89
  %96 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %97 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  store %struct.rtx_def* %96, %struct.rtx_def** %97, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %99 = load %struct.rtx_def**, %struct.rtx_def*** %py.addr, align 8
  store %struct.rtx_def* %98, %struct.rtx_def** %99, align 8
  %100 = load i32*, i32** %pcomparison.addr, align 8
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %mode, align 4
  %103 = load i32, i32* %purpose.addr, align 4
  %call154 = call i32 @can_compare_p(i32 %101, i32 %102, i32 %103)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.then.156, label %if.end.157

if.then.156:                                      ; preds = %if.end.153
  br label %if.end.191

if.end.157:                                       ; preds = %if.end.153
  %104 = load i32, i32* %mode, align 4
  %idxprom158 = sext i32 %104 to i64
  %105 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %105, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom158
  %libfunc = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx159, i32 0, i32 1
  %106 = load %struct.rtx_def*, %struct.rtx_def** %libfunc, align 8
  %tobool160 = icmp ne %struct.rtx_def* %106, null
  br i1 %tobool160, label %land.lhs.true.161, label %if.end.187

land.lhs.true.161:                                ; preds = %if.end.157
  %107 = load i32, i32* %class, align 4
  %cmp162 = icmp ne i32 %107, 2
  br i1 %cmp162, label %if.then.164, label %if.end.187

if.then.164:                                      ; preds = %land.lhs.true.161
  %108 = load i32, i32* %mode, align 4
  %idxprom166 = sext i32 %108 to i64
  %109 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers167 = getelementptr inbounds %struct.optab, %struct.optab* %109, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers167, i32 0, i64 %idxprom166
  %libfunc169 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx168, i32 0, i32 1
  %110 = load %struct.rtx_def*, %struct.rtx_def** %libfunc169, align 8
  store %struct.rtx_def* %110, %struct.rtx_def** %libfunc165, align 8
  %111 = load i32, i32* %unsignedp, align 4
  %tobool171 = icmp ne i32 %111, 0
  br i1 %tobool171, label %land.lhs.true.172, label %if.end.183

land.lhs.true.172:                                ; preds = %if.then.164
  %112 = load i32, i32* %mode, align 4
  %idxprom173 = sext i32 %112 to i64
  %113 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 42), align 8
  %handlers174 = getelementptr inbounds %struct.optab, %struct.optab* %113, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers174, i32 0, i64 %idxprom173
  %libfunc176 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx175, i32 0, i32 1
  %114 = load %struct.rtx_def*, %struct.rtx_def** %libfunc176, align 8
  %tobool177 = icmp ne %struct.rtx_def* %114, null
  br i1 %tobool177, label %if.then.178, label %if.end.183

if.then.178:                                      ; preds = %land.lhs.true.172
  %115 = load i32, i32* %mode, align 4
  %idxprom179 = sext i32 %115 to i64
  %116 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 42), align 8
  %handlers180 = getelementptr inbounds %struct.optab, %struct.optab* %116, i32 0, i32 1
  %arrayidx181 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers180, i32 0, i64 %idxprom179
  %libfunc182 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx181, i32 0, i32 1
  %117 = load %struct.rtx_def*, %struct.rtx_def** %libfunc182, align 8
  store %struct.rtx_def* %117, %struct.rtx_def** %libfunc165, align 8
  br label %if.end.183

if.end.183:                                       ; preds = %if.then.178, %land.lhs.true.172, %if.then.164
  %118 = load %struct.rtx_def*, %struct.rtx_def** %libfunc165, align 8
  %119 = load i32, i32* @word_mode, align 4
  %120 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %121 = load i32, i32* %mode, align 4
  %122 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %123 = load i32, i32* %mode, align 4
  call void (%struct.rtx_def*, i32, i32, i32, ...) @emit_library_call(%struct.rtx_def* %118, i32 3, i32 %119, i32 2, %struct.rtx_def* %120, i32 %121, %struct.rtx_def* %122, i32 %123)
  %124 = load i32, i32* @word_mode, align 4
  %call184 = call %struct.rtx_def* @gen_reg_rtx(i32 %124)
  store %struct.rtx_def* %call184, %struct.rtx_def** %result170, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %result170, align 8
  %126 = load i32, i32* @word_mode, align 4
  %call185 = call %struct.rtx_def* @hard_libcall_value(i32 %126)
  %call186 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %125, %struct.rtx_def* %call185)
  %127 = load %struct.rtx_def*, %struct.rtx_def** %result170, align 8
  %128 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  store %struct.rtx_def* %127, %struct.rtx_def** %128, align 8
  %129 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %130 = load %struct.rtx_def**, %struct.rtx_def*** %py.addr, align 8
  store %struct.rtx_def* %129, %struct.rtx_def** %130, align 8
  %131 = load i32, i32* @word_mode, align 4
  %132 = load i32*, i32** %pmode.addr, align 8
  store i32 %131, i32* %132, align 4
  br label %if.end.191

if.end.187:                                       ; preds = %land.lhs.true.161, %if.end.157
  %133 = load i32, i32* %class, align 4
  %cmp188 = icmp eq i32 %133, 2
  br i1 %cmp188, label %if.then.190, label %if.else

if.then.190:                                      ; preds = %if.end.187
  %134 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  %135 = load %struct.rtx_def**, %struct.rtx_def*** %py.addr, align 8
  %136 = load i32*, i32** %pcomparison.addr, align 8
  %137 = load i32*, i32** %pmode.addr, align 8
  %138 = load i32*, i32** %punsignedp.addr, align 8
  call void @prepare_float_lib_cmp(%struct.rtx_def** %134, %struct.rtx_def** %135, i32* %136, i32* %137, i32* %138)
  br label %if.end.191

if.else:                                          ; preds = %if.end.187
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3238, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.prepare_cmp_insn, i32 0, i32 0)) #6
  unreachable

if.end.191:                                       ; preds = %if.end.144, %if.then.156, %if.end.183, %if.then.190
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @emit_cmp_and_jump_insn_1(%struct.rtx_def* %x, %struct.rtx_def* %y, i32 %mode, i32 %comparison, i32 %unsignedp, %struct.rtx_def* %label) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %comparison.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  %label.addr = alloca %struct.rtx_def*, align 8
  %test = alloca %struct.rtx_def*, align 8
  %class = alloca i32, align 4
  %wider_mode = alloca i32, align 4
  %icode = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %comparison, i32* %comparison.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  %0 = load i32, i32* %comparison.addr, align 4
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 %0, i32 %1, %struct.rtx_def* %2, %struct.rtx_def* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %test, align 8
  %4 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %5 = load i32, i32* %arrayidx, align 4
  store i32 %5, i32* %class, align 4
  %6 = load i32, i32* %mode.addr, align 4
  store i32 %6, i32* %wider_mode, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load i32, i32* %wider_mode, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %test, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.value = and i32 %7, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear = and i32 %bf.load, -16711681
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %9, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool, label %if.then, label %if.end.15

if.then:                                          ; preds = %do.body
  %11 = load i32, i32* %wider_mode, align 4
  %idxprom1 = sext i32 %11 to i64
  %12 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 45), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %12, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom1
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx2, i32 0, i32 0
  %13 = load i32, i32* %insn_code, align 4
  store i32 %13, i32* %icode, align 4
  %14 = load i32, i32* %icode, align 4
  %cmp = icmp ne i32 %14, 1317
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %15 = load i32, i32* %icode, align 4
  %idxprom3 = zext i32 %15 to i64
  %arrayidx4 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom3
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx4, i32 0, i32 3
  %16 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx5 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %16, i64 0
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx5, i32 0, i32 0
  %17 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %test, align 8
  %19 = load i32, i32* %wider_mode, align 4
  %call6 = call i32 %17(%struct.rtx_def* %18, i32 %19)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %20 = load i32, i32* %icode, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %22 = load i32, i32* %mode.addr, align 4
  %23 = load i32, i32* %wider_mode, align 4
  %24 = load i32, i32* %unsignedp.addr, align 4
  %call9 = call %struct.rtx_def* @prepare_operand(i32 %20, %struct.rtx_def* %21, i32 1, i32 %22, i32 %23, i32 %24)
  store %struct.rtx_def* %call9, %struct.rtx_def** %x.addr, align 8
  %25 = load i32, i32* %icode, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %27 = load i32, i32* %mode.addr, align 4
  %28 = load i32, i32* %wider_mode, align 4
  %29 = load i32, i32* %unsignedp.addr, align 4
  %call10 = call %struct.rtx_def* @prepare_operand(i32 %25, %struct.rtx_def* %26, i32 2, i32 %27, i32 %28, i32 %29)
  store %struct.rtx_def* %call10, %struct.rtx_def** %y.addr, align 8
  %30 = load i32, i32* %icode, align 4
  %idxprom11 = sext i32 %30 to i64
  %arrayidx12 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom11
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx12, i32 0, i32 2
  %31 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %test, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %call13 = call %struct.rtx_def* (%struct.rtx_def*, ...) %31(%struct.rtx_def* %32, %struct.rtx_def* %33, %struct.rtx_def* %34, %struct.rtx_def* %35)
  %call14 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call13)
  br label %return

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %do.body
  %36 = load i32, i32* %wider_mode, align 4
  %idxprom16 = sext i32 %36 to i64
  %37 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 43), align 8
  %handlers17 = getelementptr inbounds %struct.optab, %struct.optab* %37, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers17, i32 0, i64 %idxprom16
  %insn_code19 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx18, i32 0, i32 0
  %38 = load i32, i32* %insn_code19, align 4
  store i32 %38, i32* %icode, align 4
  %39 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %40 = load i32, i32* %mode.addr, align 4
  %idxprom20 = sext i32 %40 to i64
  %arrayidx21 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom20
  %41 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx21, align 8
  %cmp22 = icmp eq %struct.rtx_def* %39, %41
  br i1 %cmp22, label %land.lhs.true.23, label %if.end.39

land.lhs.true.23:                                 ; preds = %if.end.15
  %42 = load i32, i32* %icode, align 4
  %cmp24 = icmp ne i32 %42, 1317
  br i1 %cmp24, label %if.then.25, label %if.end.39

if.then.25:                                       ; preds = %land.lhs.true.23
  %43 = load i32, i32* %icode, align 4
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %45 = load i32, i32* %mode.addr, align 4
  %46 = load i32, i32* %wider_mode, align 4
  %47 = load i32, i32* %unsignedp.addr, align 4
  %call26 = call %struct.rtx_def* @prepare_operand(i32 %43, %struct.rtx_def* %44, i32 0, i32 %45, i32 %46, i32 %47)
  store %struct.rtx_def* %call26, %struct.rtx_def** %x.addr, align 8
  %48 = load i32, i32* %icode, align 4
  %idxprom27 = sext i32 %48 to i64
  %arrayidx28 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom27
  %genfun29 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx28, i32 0, i32 2
  %49 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun29, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call30 = call %struct.rtx_def* (%struct.rtx_def*, ...) %49(%struct.rtx_def* %50)
  %call31 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call30)
  %51 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %tobool32 = icmp ne %struct.rtx_def* %51, null
  br i1 %tobool32, label %if.then.33, label %if.end.38

if.then.33:                                       ; preds = %if.then.25
  %52 = load i32, i32* %comparison.addr, align 4
  %idxprom34 = sext i32 %52 to i64
  %arrayidx35 = getelementptr inbounds [153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 %idxprom34
  %53 = load %struct.rtx_def* (%struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)** %arrayidx35, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %call36 = call %struct.rtx_def* %53(%struct.rtx_def* %54)
  %call37 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call36)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.33, %if.then.25
  br label %return

if.end.39:                                        ; preds = %land.lhs.true.23, %if.end.15
  %55 = load i32, i32* %wider_mode, align 4
  %idxprom40 = sext i32 %55 to i64
  %56 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers41 = getelementptr inbounds %struct.optab, %struct.optab* %56, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers41, i32 0, i64 %idxprom40
  %insn_code43 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx42, i32 0, i32 0
  %57 = load i32, i32* %insn_code43, align 4
  store i32 %57, i32* %icode, align 4
  %58 = load i32, i32* %icode, align 4
  %cmp44 = icmp ne i32 %58, 1317
  br i1 %cmp44, label %if.then.45, label %if.end.60

if.then.45:                                       ; preds = %if.end.39
  %59 = load i32, i32* %icode, align 4
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %61 = load i32, i32* %mode.addr, align 4
  %62 = load i32, i32* %wider_mode, align 4
  %63 = load i32, i32* %unsignedp.addr, align 4
  %call46 = call %struct.rtx_def* @prepare_operand(i32 %59, %struct.rtx_def* %60, i32 0, i32 %61, i32 %62, i32 %63)
  store %struct.rtx_def* %call46, %struct.rtx_def** %x.addr, align 8
  %64 = load i32, i32* %icode, align 4
  %65 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %66 = load i32, i32* %mode.addr, align 4
  %67 = load i32, i32* %wider_mode, align 4
  %68 = load i32, i32* %unsignedp.addr, align 4
  %call47 = call %struct.rtx_def* @prepare_operand(i32 %64, %struct.rtx_def* %65, i32 1, i32 %66, i32 %67, i32 %68)
  store %struct.rtx_def* %call47, %struct.rtx_def** %y.addr, align 8
  %69 = load i32, i32* %icode, align 4
  %idxprom48 = sext i32 %69 to i64
  %arrayidx49 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom48
  %genfun50 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx49, i32 0, i32 2
  %70 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun50, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call51 = call %struct.rtx_def* (%struct.rtx_def*, ...) %70(%struct.rtx_def* %71, %struct.rtx_def* %72)
  %call52 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call51)
  %73 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %tobool53 = icmp ne %struct.rtx_def* %73, null
  br i1 %tobool53, label %if.then.54, label %if.end.59

if.then.54:                                       ; preds = %if.then.45
  %74 = load i32, i32* %comparison.addr, align 4
  %idxprom55 = sext i32 %74 to i64
  %arrayidx56 = getelementptr inbounds [153 x %struct.rtx_def* (%struct.rtx_def*)*], [153 x %struct.rtx_def* (%struct.rtx_def*)*]* @bcc_gen_fctn, i32 0, i64 %idxprom55
  %75 = load %struct.rtx_def* (%struct.rtx_def*)*, %struct.rtx_def* (%struct.rtx_def*)** %arrayidx56, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %call57 = call %struct.rtx_def* %75(%struct.rtx_def* %76)
  %call58 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call57)
  br label %if.end.59

if.end.59:                                        ; preds = %if.then.54, %if.then.45
  br label %return

if.end.60:                                        ; preds = %if.end.39
  %77 = load i32, i32* %class, align 4
  %cmp61 = icmp ne i32 %77, 1
  br i1 %cmp61, label %land.lhs.true.62, label %if.end.67

land.lhs.true.62:                                 ; preds = %if.end.60
  %78 = load i32, i32* %class, align 4
  %cmp63 = icmp ne i32 %78, 2
  br i1 %cmp63, label %land.lhs.true.64, label %if.end.67

land.lhs.true.64:                                 ; preds = %land.lhs.true.62
  %79 = load i32, i32* %class, align 4
  %cmp65 = icmp ne i32 %79, 6
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %land.lhs.true.64
  br label %do.end

if.end.67:                                        ; preds = %land.lhs.true.64, %land.lhs.true.62, %if.end.60
  %80 = load i32, i32* %wider_mode, align 4
  %idxprom68 = sext i32 %80 to i64
  %arrayidx69 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom68
  %81 = load i8, i8* %arrayidx69, align 1
  %conv = zext i8 %81 to i32
  store i32 %conv, i32* %wider_mode, align 4
  br label %do.cond

do.cond:                                          ; preds = %if.end.67
  %82 = load i32, i32* %wider_mode, align 4
  %cmp70 = icmp ne i32 %82, 0
  br i1 %cmp70, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.66
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3333, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.emit_cmp_and_jump_insn_1, i32 0, i32 0)) #6
  unreachable

return:                                           ; preds = %if.end.59, %if.end.38, %if.then.8
  ret void
}

; Function Attrs: nounwind uwtable
define void @emit_cmp_insn(%struct.rtx_def* %x, %struct.rtx_def* %y, i32 %comparison, %struct.rtx_def* %size, i32 %mode, i32 %unsignedp) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %comparison.addr = alloca i32, align 4
  %size.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  store i32 %comparison, i32* %comparison.addr, align 4
  store %struct.rtx_def* %size, %struct.rtx_def** %size.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %2 = load i32, i32* %comparison.addr, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %4 = load i32, i32* %mode.addr, align 4
  %5 = load i32, i32* %unsignedp.addr, align 4
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %0, %struct.rtx_def* %1, i32 %2, %struct.rtx_def* %3, i32 %4, i32 %5, %struct.rtx_def* null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @emit_indirect_jump(%struct.rtx_def* %loc) #0 {
entry:
  %loc.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %loc, %struct.rtx_def** %loc.addr, align 8
  %0 = load %struct.insn_operand_data*, %struct.insn_operand_data** getelementptr inbounds ([0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 1159, i32 3), align 8
  %arrayidx = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %0, i64 0
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx, i32 0, i32 0
  %1 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr, align 8
  %3 = load i32, i32* @target_flags, align 4
  %and = and i32 %3, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %call = call i32 %1(%struct.rtx_def* %2, i32 %cond)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %4, 33554432
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 5, i32 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr, align 8
  %call5 = call %struct.rtx_def* @copy_to_mode_reg(i32 %cond4, %struct.rtx_def* %5)
  store %struct.rtx_def* %call5, %struct.rtx_def** %loc.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %loc.addr, align 8
  %call6 = call %struct.rtx_def* @gen_indirect_jump(%struct.rtx_def* %6)
  %call7 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call6)
  %call8 = call %struct.rtx_def* @emit_barrier()
  ret void
}

declare %struct.rtx_def* @emit_jump_insn(%struct.rtx_def*) #2

declare %struct.rtx_def* @gen_indirect_jump(%struct.rtx_def*) #2

declare %struct.rtx_def* @emit_barrier() #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_conditional_move(%struct.rtx_def* %target, i32 %code, %struct.rtx_def* %op0, %struct.rtx_def* %op1, i32 %cmode, %struct.rtx_def* %op2, %struct.rtx_def* %op3, i32 %mode, i32 %unsignedp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %target.addr = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %cmode.addr = alloca i32, align 4
  %op2.addr = alloca %struct.rtx_def*, align 8
  %op3.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  %subtarget = alloca %struct.rtx_def*, align 8
  %comparison = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %icode = alloca i32, align 4
  %reversed = alloca i32, align 4
  store %struct.rtx_def* %target, %struct.rtx_def** %target.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store i32 %cmode, i32* %cmode.addr, align 4
  store %struct.rtx_def* %op2, %struct.rtx_def** %op2.addr, align 8
  store %struct.rtx_def* %op3, %struct.rtx_def** %op3.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call = call i32 @swap_commutative_operands_p(%struct.rtx_def* %0, %struct.rtx_def* %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %tem, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %op0.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %op1.addr, align 8
  %5 = load i32, i32* %code.addr, align 4
  %call1 = call i32 @swap_condition(i32 %5)
  store i32 %call1, i32* %code.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %code.addr, align 4
  %cmp = icmp eq i32 %6, 107
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp eq i32 %bf.clear, 54
  br i1 %cmp2, label %land.lhs.true.3, label %if.else

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %10 = load i64, i64* %rtwint, align 8
  %cmp4 = icmp eq i64 %10, 1
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true.3
  store i32 106, i32* %code.addr, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %op1.addr, align 8
  br label %if.end.18

if.else:                                          ; preds = %land.lhs.true.3, %land.lhs.true, %if.end
  %12 = load i32, i32* %code.addr, align 4
  %cmp6 = icmp eq i32 %12, 105
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.17

land.lhs.true.7:                                  ; preds = %if.else
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load8 = load i32, i32* %14, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 54
  br i1 %cmp10, label %land.lhs.true.11, label %if.end.17

land.lhs.true.11:                                 ; preds = %land.lhs.true.7
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtwint14 = bitcast %union.rtunion_def* %arrayidx13 to i64*
  %16 = load i64, i64* %rtwint14, align 8
  %cmp15 = icmp eq i64 %16, -1
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %land.lhs.true.11
  store i32 104, i32* %code.addr, align 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %op1.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %land.lhs.true.11, %land.lhs.true.7, %if.else
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.5
  %18 = load i32, i32* %cmode.addr, align 4
  %cmp19 = icmp eq i32 %18, 0
  br i1 %cmp19, label %if.then.20, label %if.end.23

if.then.20:                                       ; preds = %if.end.18
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load21 = load i32, i32* %20, align 8
  %bf.lshr = lshr i32 %bf.load21, 16
  %bf.clear22 = and i32 %bf.lshr, 255
  store i32 %bf.clear22, i32* %cmode.addr, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.20, %if.end.18
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %op3.addr, align 8
  %call24 = call i32 @swap_commutative_operands_p(%struct.rtx_def* %21, %struct.rtx_def* %22)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %land.lhs.true.26, label %if.end.30

land.lhs.true.26:                                 ; preds = %if.end.23
  %23 = load i32, i32* %code.addr, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %call27 = call i32 @reversed_comparison_code_parts(i32 %23, %struct.rtx_def* %24, %struct.rtx_def* %25, %struct.rtx_def* null)
  store i32 %call27, i32* %reversed, align 4
  %cmp28 = icmp ne i32 %call27, 0
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.26
  %26 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %tem, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %op3.addr, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %op2.addr, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %op3.addr, align 8
  %29 = load i32, i32* %reversed, align 4
  store i32 %29, i32* %code.addr, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.29, %land.lhs.true.26, %if.end.23
  %30 = load i32, i32* %mode.addr, align 4
  %cmp31 = icmp eq i32 %30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.36

if.then.32:                                       ; preds = %if.end.30
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load33 = load i32, i32* %32, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 16
  %bf.clear35 = and i32 %bf.lshr34, 255
  store i32 %bf.clear35, i32* %mode.addr, align 4
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.32, %if.end.30
  %33 = load i32, i32* %mode.addr, align 4
  %idxprom = zext i32 %33 to i64
  %arrayidx37 = getelementptr inbounds [59 x i32], [59 x i32]* @movcc_gen_code, i32 0, i64 %idxprom
  %34 = load i32, i32* %arrayidx37, align 4
  store i32 %34, i32* %icode, align 4
  %35 = load i32, i32* %icode, align 4
  %cmp38 = icmp eq i32 %35, 1317
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.36
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.40:                                        ; preds = %if.end.36
  %36 = load i32, i32* @flag_force_mem, align 4
  %tobool41 = icmp ne i32 %36, 0
  br i1 %tobool41, label %if.then.42, label %if.end.45

if.then.42:                                       ; preds = %if.end.40
  %37 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %call43 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %37)
  store %struct.rtx_def* %call43, %struct.rtx_def** %op2.addr, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %op3.addr, align 8
  %call44 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %38)
  store %struct.rtx_def* %call44, %struct.rtx_def** %op3.addr, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.42, %if.end.40
  %39 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %tobool46 = icmp ne %struct.rtx_def* %39, null
  br i1 %tobool46, label %if.then.47, label %if.else.49

if.then.47:                                       ; preds = %if.end.45
  %40 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %call48 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %40, i32 1)
  store %struct.rtx_def* %call48, %struct.rtx_def** %target.addr, align 8
  br label %if.end.51

if.else.49:                                       ; preds = %if.end.45
  %41 = load i32, i32* %mode.addr, align 4
  %call50 = call %struct.rtx_def* @gen_reg_rtx(i32 %41)
  store %struct.rtx_def* %call50, %struct.rtx_def** %target.addr, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.49, %if.then.47
  %42 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %subtarget, align 8
  call void @emit_queue()
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %call52 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %43, i32 0)
  store %struct.rtx_def* %call52, %struct.rtx_def** %op2.addr, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %op3.addr, align 8
  %call53 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %44, i32 0)
  store %struct.rtx_def* %call53, %struct.rtx_def** %op3.addr, align 8
  %45 = load i32, i32* %icode, align 4
  %idxprom54 = zext i32 %45 to i64
  %arrayidx55 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom54
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx55, i32 0, i32 3
  %46 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx56 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %46, i64 0
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx56, i32 0, i32 0
  %47 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %49 = load i32, i32* %icode, align 4
  %idxprom57 = zext i32 %49 to i64
  %arrayidx58 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom57
  %operand59 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx58, i32 0, i32 3
  %50 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand59, align 8
  %arrayidx60 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %50, i64 0
  %mode61 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx60, i32 0, i32 2
  %bf.load62 = load i16, i16* %mode61, align 8
  %bf.cast = zext i16 %bf.load62 to i32
  %call63 = call i32 %47(%struct.rtx_def* %48, i32 %bf.cast)
  %tobool64 = icmp ne i32 %call63, 0
  br i1 %tobool64, label %if.end.74, label %if.then.65

if.then.65:                                       ; preds = %if.end.51
  %51 = load i32, i32* %icode, align 4
  %idxprom66 = zext i32 %51 to i64
  %arrayidx67 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom66
  %operand68 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx67, i32 0, i32 3
  %52 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand68, align 8
  %arrayidx69 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %52, i64 0
  %mode70 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx69, i32 0, i32 2
  %bf.load71 = load i16, i16* %mode70, align 8
  %bf.cast72 = zext i16 %bf.load71 to i32
  %call73 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.cast72)
  store %struct.rtx_def* %call73, %struct.rtx_def** %subtarget, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.then.65, %if.end.51
  %53 = load i32, i32* %icode, align 4
  %idxprom75 = zext i32 %53 to i64
  %arrayidx76 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom75
  %operand77 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx76, i32 0, i32 3
  %54 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand77, align 8
  %arrayidx78 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %54, i64 2
  %predicate79 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx78, i32 0, i32 0
  %55 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate79, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %57 = load i32, i32* %icode, align 4
  %idxprom80 = zext i32 %57 to i64
  %arrayidx81 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom80
  %operand82 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx81, i32 0, i32 3
  %58 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand82, align 8
  %arrayidx83 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %58, i64 2
  %mode84 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx83, i32 0, i32 2
  %bf.load85 = load i16, i16* %mode84, align 8
  %bf.cast86 = zext i16 %bf.load85 to i32
  %call87 = call i32 %55(%struct.rtx_def* %56, i32 %bf.cast86)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.end.98, label %if.then.89

if.then.89:                                       ; preds = %if.end.74
  %59 = load i32, i32* %icode, align 4
  %idxprom90 = zext i32 %59 to i64
  %arrayidx91 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom90
  %operand92 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx91, i32 0, i32 3
  %60 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand92, align 8
  %arrayidx93 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %60, i64 2
  %mode94 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx93, i32 0, i32 2
  %bf.load95 = load i16, i16* %mode94, align 8
  %bf.cast96 = zext i16 %bf.load95 to i32
  %61 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %call97 = call %struct.rtx_def* @copy_to_mode_reg(i32 %bf.cast96, %struct.rtx_def* %61)
  store %struct.rtx_def* %call97, %struct.rtx_def** %op2.addr, align 8
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.89, %if.end.74
  %62 = load i32, i32* %icode, align 4
  %idxprom99 = zext i32 %62 to i64
  %arrayidx100 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom99
  %operand101 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx100, i32 0, i32 3
  %63 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand101, align 8
  %arrayidx102 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %63, i64 3
  %predicate103 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx102, i32 0, i32 0
  %64 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate103, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %op3.addr, align 8
  %66 = load i32, i32* %icode, align 4
  %idxprom104 = zext i32 %66 to i64
  %arrayidx105 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom104
  %operand106 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx105, i32 0, i32 3
  %67 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand106, align 8
  %arrayidx107 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %67, i64 3
  %mode108 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx107, i32 0, i32 2
  %bf.load109 = load i16, i16* %mode108, align 8
  %bf.cast110 = zext i16 %bf.load109 to i32
  %call111 = call i32 %64(%struct.rtx_def* %65, i32 %bf.cast110)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.end.122, label %if.then.113

if.then.113:                                      ; preds = %if.end.98
  %68 = load i32, i32* %icode, align 4
  %idxprom114 = zext i32 %68 to i64
  %arrayidx115 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom114
  %operand116 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx115, i32 0, i32 3
  %69 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand116, align 8
  %arrayidx117 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %69, i64 3
  %mode118 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx117, i32 0, i32 2
  %bf.load119 = load i16, i16* %mode118, align 8
  %bf.cast120 = zext i16 %bf.load119 to i32
  %70 = load %struct.rtx_def*, %struct.rtx_def** %op3.addr, align 8
  %call121 = call %struct.rtx_def* @copy_to_mode_reg(i32 %bf.cast120, %struct.rtx_def* %70)
  store %struct.rtx_def* %call121, %struct.rtx_def** %op3.addr, align 8
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.113, %if.end.98
  %71 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %73 = load i32, i32* %code.addr, align 4
  %74 = load i32, i32* %unsignedp.addr, align 4
  %75 = load i32, i32* %cmode.addr, align 4
  %call123 = call %struct.rtx_def* @compare_from_rtx(%struct.rtx_def* %71, %struct.rtx_def* %72, i32 %73, i32 %74, i32 %75, %struct.rtx_def* null)
  store %struct.rtx_def* %call123, %struct.rtx_def** %comparison, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %comparison, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load124 = load i32, i32* %77, align 8
  %bf.clear125 = and i32 %bf.load124, 65535
  %78 = load i32, i32* %code.addr, align 4
  %cmp126 = icmp ne i32 %bf.clear125, %78
  br i1 %cmp126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.122
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.128:                                       ; preds = %if.end.122
  %79 = load i32, i32* %icode, align 4
  %idxprom129 = sext i32 %79 to i64
  %arrayidx130 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom129
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx130, i32 0, i32 2
  %80 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %comparison, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %84 = load %struct.rtx_def*, %struct.rtx_def** %op3.addr, align 8
  %call131 = call %struct.rtx_def* (%struct.rtx_def*, ...) %80(%struct.rtx_def* %81, %struct.rtx_def* %82, %struct.rtx_def* %83, %struct.rtx_def* %84)
  store %struct.rtx_def* %call131, %struct.rtx_def** %insn, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp132 = icmp eq %struct.rtx_def* %85, null
  br i1 %cmp132, label %if.then.133, label %if.end.134

if.then.133:                                      ; preds = %if.end.128
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.134:                                       ; preds = %if.end.128
  %86 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call135 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %86)
  %87 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %cmp136 = icmp ne %struct.rtx_def* %87, %88
  br i1 %cmp136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %if.end.134
  %89 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %subtarget, align 8
  call void @convert_move(%struct.rtx_def* %89, %struct.rtx_def* %90, i32 0)
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.137, %if.end.134
  %91 = load %struct.rtx_def*, %struct.rtx_def** %target.addr, align 8
  store %struct.rtx_def* %91, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.138, %if.then.133, %if.then.127, %if.then.39
  %92 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %92
}

declare i32 @reversed_comparison_code_parts(i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #2

declare %struct.rtx_def* @compare_from_rtx(%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, %struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define i32 @can_conditionally_move_p(i32 %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @movcc_gen_code, i32 0, i64 %idxprom
  %1 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %1, 1317
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_add2_insn(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %icode = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear to i64
  %2 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %insn_code, align 4
  store i32 %3, i32* %icode, align 4
  %4 = load i32, i32* %icode, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom1
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx2, i32 0, i32 3
  %5 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx3 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %5, i64 0
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx3, i32 0, i32 0
  %6 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %8 = load i32, i32* %icode, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom4
  %operand6 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx5, i32 0, i32 3
  %9 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand6, align 8
  %arrayidx7 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %9, i64 0
  %mode = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx7, i32 0, i32 2
  %bf.load8 = load i16, i16* %mode, align 8
  %bf.cast = zext i16 %bf.load8 to i32
  %call = call i32 %6(%struct.rtx_def* %7, i32 %bf.cast)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, i32* %icode, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom9
  %operand11 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx10, i32 0, i32 3
  %11 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand11, align 8
  %arrayidx12 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %11, i64 1
  %predicate13 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx12, i32 0, i32 0
  %12 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate13, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %14 = load i32, i32* %icode, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom14
  %operand16 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx15, i32 0, i32 3
  %15 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand16, align 8
  %arrayidx17 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %15, i64 1
  %mode18 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx17, i32 0, i32 2
  %bf.load19 = load i16, i16* %mode18, align 8
  %bf.cast20 = zext i16 %bf.load19 to i32
  %call21 = call i32 %12(%struct.rtx_def* %13, i32 %bf.cast20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %lor.lhs.false.23, label %if.then

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %icode, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom24
  %operand26 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx25, i32 0, i32 3
  %17 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand26, align 8
  %arrayidx27 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %17, i64 2
  %predicate28 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx27, i32 0, i32 0
  %18 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate28, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %20 = load i32, i32* %icode, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom29
  %operand31 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx30, i32 0, i32 3
  %21 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand31, align 8
  %arrayidx32 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %21, i64 2
  %mode33 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx32, i32 0, i32 2
  %bf.load34 = load i16, i16* %mode33, align 8
  %bf.cast35 = zext i16 %bf.load34 to i32
  %call36 = call i32 %18(%struct.rtx_def* %19, i32 %bf.cast35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.23, %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3823, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.gen_add2_insn, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false.23
  %22 = load i32, i32* %icode, align 4
  %idxprom38 = sext i32 %22 to i64
  %arrayidx39 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom38
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx39, i32 0, i32 2
  %23 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call40 = call %struct.rtx_def* (%struct.rtx_def*, ...) %23(%struct.rtx_def* %24, %struct.rtx_def* %25, %struct.rtx_def* %26)
  ret %struct.rtx_def* %call40
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_add3_insn(%struct.rtx_def* %r0, %struct.rtx_def* %r1, %struct.rtx_def* %c) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %r0.addr = alloca %struct.rtx_def*, align 8
  %r1.addr = alloca %struct.rtx_def*, align 8
  %c.addr = alloca %struct.rtx_def*, align 8
  %icode = alloca i32, align 4
  store %struct.rtx_def* %r0, %struct.rtx_def** %r0.addr, align 8
  store %struct.rtx_def* %r1, %struct.rtx_def** %r1.addr, align 8
  store %struct.rtx_def* %c, %struct.rtx_def** %c.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %r0.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear to i64
  %2 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %insn_code, align 4
  store i32 %3, i32* %icode, align 4
  %4 = load i32, i32* %icode, align 4
  %cmp = icmp eq i32 %4, 1317
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %icode, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom1
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx2, i32 0, i32 3
  %6 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx3 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %6, i64 0
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx3, i32 0, i32 0
  %7 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %r0.addr, align 8
  %9 = load i32, i32* %icode, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom4
  %operand6 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx5, i32 0, i32 3
  %10 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand6, align 8
  %arrayidx7 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %10, i64 0
  %mode = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx7, i32 0, i32 2
  %bf.load8 = load i16, i16* %mode, align 8
  %bf.cast = zext i16 %bf.load8 to i32
  %call = call i32 %7(%struct.rtx_def* %8, i32 %bf.cast)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %11 = load i32, i32* %icode, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom10
  %operand12 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx11, i32 0, i32 3
  %12 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand12, align 8
  %arrayidx13 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %12, i64 1
  %predicate14 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx13, i32 0, i32 0
  %13 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate14, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %r1.addr, align 8
  %15 = load i32, i32* %icode, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom15
  %operand17 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx16, i32 0, i32 3
  %16 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand17, align 8
  %arrayidx18 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %16, i64 1
  %mode19 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx18, i32 0, i32 2
  %bf.load20 = load i16, i16* %mode19, align 8
  %bf.cast21 = zext i16 %bf.load20 to i32
  %call22 = call i32 %13(%struct.rtx_def* %14, i32 %bf.cast21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %lor.lhs.false.24, label %if.then

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.9
  %17 = load i32, i32* %icode, align 4
  %idxprom25 = sext i32 %17 to i64
  %arrayidx26 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom25
  %operand27 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx26, i32 0, i32 3
  %18 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand27, align 8
  %arrayidx28 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %18, i64 2
  %predicate29 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx28, i32 0, i32 0
  %19 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate29, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %c.addr, align 8
  %21 = load i32, i32* %icode, align 4
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom30
  %operand32 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx31, i32 0, i32 3
  %22 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand32, align 8
  %arrayidx33 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %22, i64 2
  %mode34 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx33, i32 0, i32 2
  %bf.load35 = load i16, i16* %mode34, align 8
  %bf.cast36 = zext i16 %bf.load35 to i32
  %call37 = call i32 %19(%struct.rtx_def* %20, i32 %bf.cast36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.24, %lor.lhs.false.9, %lor.lhs.false, %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.24
  %23 = load i32, i32* %icode, align 4
  %idxprom39 = sext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom39
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx40, i32 0, i32 2
  %24 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %r0.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %r1.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %c.addr, align 8
  %call41 = call %struct.rtx_def* (%struct.rtx_def*, ...) %24(%struct.rtx_def* %25, %struct.rtx_def* %26, %struct.rtx_def* %27)
  store %struct.rtx_def* %call41, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %28 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %28
}

; Function Attrs: nounwind uwtable
define i32 @have_add2_insn(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %icode = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3855, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.have_add2_insn, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  %idxprom = sext i32 %bf.clear3 to i64
  %4 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %insn_code, align 4
  store i32 %5, i32* %icode, align 4
  %6 = load i32, i32* %icode, align 4
  %cmp4 = icmp eq i32 %6, 1317
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load i32, i32* %icode, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom7
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx8, i32 0, i32 3
  %8 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx9 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %8, i64 0
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx9, i32 0, i32 0
  %9 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = load i32, i32* %icode, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom10
  %operand12 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx11, i32 0, i32 3
  %12 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand12, align 8
  %arrayidx13 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %12, i64 0
  %mode = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx13, i32 0, i32 2
  %bf.load14 = load i16, i16* %mode, align 8
  %bf.cast = zext i16 %bf.load14 to i32
  %call = call i32 %9(%struct.rtx_def* %10, i32 %bf.cast)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.44

lor.lhs.false:                                    ; preds = %if.end.6
  %13 = load i32, i32* %icode, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom15
  %operand17 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx16, i32 0, i32 3
  %14 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand17, align 8
  %arrayidx18 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %14, i64 1
  %predicate19 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx18, i32 0, i32 0
  %15 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate19, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = load i32, i32* %icode, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom20
  %operand22 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx21, i32 0, i32 3
  %18 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand22, align 8
  %arrayidx23 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %18, i64 1
  %mode24 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx23, i32 0, i32 2
  %bf.load25 = load i16, i16* %mode24, align 8
  %bf.cast26 = zext i16 %bf.load25 to i32
  %call27 = call i32 %15(%struct.rtx_def* %16, i32 %bf.cast26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %lor.lhs.false.29, label %if.then.44

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %icode, align 4
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom30
  %operand32 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx31, i32 0, i32 3
  %20 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand32, align 8
  %arrayidx33 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %20, i64 2
  %predicate34 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx33, i32 0, i32 0
  %21 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate34, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %23 = load i32, i32* %icode, align 4
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom35
  %operand37 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx36, i32 0, i32 3
  %24 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand37, align 8
  %arrayidx38 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %24, i64 2
  %mode39 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx38, i32 0, i32 2
  %bf.load40 = load i16, i16* %mode39, align 8
  %bf.cast41 = zext i16 %bf.load40 to i32
  %call42 = call i32 %21(%struct.rtx_def* %22, i32 %bf.cast41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false, %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %lor.lhs.false.29
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.44, %if.then.5
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_sub2_insn(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %icode = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear to i64
  %2 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %insn_code, align 4
  store i32 %3, i32* %icode, align 4
  %4 = load i32, i32* %icode, align 4
  %idxprom1 = sext i32 %4 to i64
  %arrayidx2 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom1
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx2, i32 0, i32 3
  %5 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx3 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %5, i64 0
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx3, i32 0, i32 0
  %6 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %8 = load i32, i32* %icode, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom4
  %operand6 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx5, i32 0, i32 3
  %9 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand6, align 8
  %arrayidx7 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %9, i64 0
  %mode = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx7, i32 0, i32 2
  %bf.load8 = load i16, i16* %mode, align 8
  %bf.cast = zext i16 %bf.load8 to i32
  %call = call i32 %6(%struct.rtx_def* %7, i32 %bf.cast)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %10 = load i32, i32* %icode, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom9
  %operand11 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx10, i32 0, i32 3
  %11 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand11, align 8
  %arrayidx12 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %11, i64 1
  %predicate13 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx12, i32 0, i32 0
  %12 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate13, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %14 = load i32, i32* %icode, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom14
  %operand16 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx15, i32 0, i32 3
  %15 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand16, align 8
  %arrayidx17 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %15, i64 1
  %mode18 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx17, i32 0, i32 2
  %bf.load19 = load i16, i16* %mode18, align 8
  %bf.cast20 = zext i16 %bf.load19 to i32
  %call21 = call i32 %12(%struct.rtx_def* %13, i32 %bf.cast20)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %lor.lhs.false.23, label %if.then

lor.lhs.false.23:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %icode, align 4
  %idxprom24 = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom24
  %operand26 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx25, i32 0, i32 3
  %17 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand26, align 8
  %arrayidx27 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %17, i64 2
  %predicate28 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx27, i32 0, i32 0
  %18 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate28, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %20 = load i32, i32* %icode, align 4
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom29
  %operand31 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx30, i32 0, i32 3
  %21 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand31, align 8
  %arrayidx32 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %21, i64 2
  %mode33 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx32, i32 0, i32 2
  %bf.load34 = load i16, i16* %mode33, align 8
  %bf.cast35 = zext i16 %bf.load34 to i32
  %call36 = call i32 %18(%struct.rtx_def* %19, i32 %bf.cast35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.23, %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3887, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.gen_sub2_insn, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false.23
  %22 = load i32, i32* %icode, align 4
  %idxprom38 = sext i32 %22 to i64
  %arrayidx39 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom38
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx39, i32 0, i32 2
  %23 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call40 = call %struct.rtx_def* (%struct.rtx_def*, ...) %23(%struct.rtx_def* %24, %struct.rtx_def* %25, %struct.rtx_def* %26)
  ret %struct.rtx_def* %call40
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_sub3_insn(%struct.rtx_def* %r0, %struct.rtx_def* %r1, %struct.rtx_def* %c) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %r0.addr = alloca %struct.rtx_def*, align 8
  %r1.addr = alloca %struct.rtx_def*, align 8
  %c.addr = alloca %struct.rtx_def*, align 8
  %icode = alloca i32, align 4
  store %struct.rtx_def* %r0, %struct.rtx_def** %r0.addr, align 8
  store %struct.rtx_def* %r1, %struct.rtx_def** %r1.addr, align 8
  store %struct.rtx_def* %c, %struct.rtx_def** %c.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %r0.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear to i64
  %2 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %insn_code, align 4
  store i32 %3, i32* %icode, align 4
  %4 = load i32, i32* %icode, align 4
  %cmp = icmp eq i32 %4, 1317
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, i32* %icode, align 4
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom1
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx2, i32 0, i32 3
  %6 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx3 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %6, i64 0
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx3, i32 0, i32 0
  %7 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %r0.addr, align 8
  %9 = load i32, i32* %icode, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom4
  %operand6 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx5, i32 0, i32 3
  %10 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand6, align 8
  %arrayidx7 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %10, i64 0
  %mode = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx7, i32 0, i32 2
  %bf.load8 = load i16, i16* %mode, align 8
  %bf.cast = zext i16 %bf.load8 to i32
  %call = call i32 %7(%struct.rtx_def* %8, i32 %bf.cast)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false.9, label %if.then

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %11 = load i32, i32* %icode, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom10
  %operand12 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx11, i32 0, i32 3
  %12 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand12, align 8
  %arrayidx13 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %12, i64 1
  %predicate14 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx13, i32 0, i32 0
  %13 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate14, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %r1.addr, align 8
  %15 = load i32, i32* %icode, align 4
  %idxprom15 = sext i32 %15 to i64
  %arrayidx16 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom15
  %operand17 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx16, i32 0, i32 3
  %16 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand17, align 8
  %arrayidx18 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %16, i64 1
  %mode19 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx18, i32 0, i32 2
  %bf.load20 = load i16, i16* %mode19, align 8
  %bf.cast21 = zext i16 %bf.load20 to i32
  %call22 = call i32 %13(%struct.rtx_def* %14, i32 %bf.cast21)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %lor.lhs.false.24, label %if.then

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.9
  %17 = load i32, i32* %icode, align 4
  %idxprom25 = sext i32 %17 to i64
  %arrayidx26 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom25
  %operand27 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx26, i32 0, i32 3
  %18 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand27, align 8
  %arrayidx28 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %18, i64 2
  %predicate29 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx28, i32 0, i32 0
  %19 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate29, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %c.addr, align 8
  %21 = load i32, i32* %icode, align 4
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom30
  %operand32 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx31, i32 0, i32 3
  %22 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand32, align 8
  %arrayidx33 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %22, i64 2
  %mode34 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx33, i32 0, i32 2
  %bf.load35 = load i16, i16* %mode34, align 8
  %bf.cast36 = zext i16 %bf.load35 to i32
  %call37 = call i32 %19(%struct.rtx_def* %20, i32 %bf.cast36)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.24, %lor.lhs.false.9, %lor.lhs.false, %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.24
  %23 = load i32, i32* %icode, align 4
  %idxprom39 = sext i32 %23 to i64
  %arrayidx40 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom39
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx40, i32 0, i32 2
  %24 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %r0.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %r1.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %c.addr, align 8
  %call41 = call %struct.rtx_def* (%struct.rtx_def*, ...) %24(%struct.rtx_def* %25, %struct.rtx_def* %26, %struct.rtx_def* %27)
  store %struct.rtx_def* %call41, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %28 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %28
}

; Function Attrs: nounwind uwtable
define i32 @have_sub2_insn(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %icode = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3919, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.have_sub2_insn, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  %idxprom = sext i32 %bf.clear3 to i64
  %4 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %insn_code, align 4
  store i32 %5, i32* %icode, align 4
  %6 = load i32, i32* %icode, align 4
  %cmp4 = icmp eq i32 %6, 1317
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load i32, i32* %icode, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom7
  %operand = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx8, i32 0, i32 3
  %8 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand, align 8
  %arrayidx9 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %8, i64 0
  %predicate = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx9, i32 0, i32 0
  %9 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = load i32, i32* %icode, align 4
  %idxprom10 = sext i32 %11 to i64
  %arrayidx11 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom10
  %operand12 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx11, i32 0, i32 3
  %12 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand12, align 8
  %arrayidx13 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %12, i64 0
  %mode = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx13, i32 0, i32 2
  %bf.load14 = load i16, i16* %mode, align 8
  %bf.cast = zext i16 %bf.load14 to i32
  %call = call i32 %9(%struct.rtx_def* %10, i32 %bf.cast)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then.44

lor.lhs.false:                                    ; preds = %if.end.6
  %13 = load i32, i32* %icode, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom15
  %operand17 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx16, i32 0, i32 3
  %14 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand17, align 8
  %arrayidx18 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %14, i64 1
  %predicate19 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx18, i32 0, i32 0
  %15 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate19, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = load i32, i32* %icode, align 4
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom20
  %operand22 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx21, i32 0, i32 3
  %18 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand22, align 8
  %arrayidx23 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %18, i64 1
  %mode24 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx23, i32 0, i32 2
  %bf.load25 = load i16, i16* %mode24, align 8
  %bf.cast26 = zext i16 %bf.load25 to i32
  %call27 = call i32 %15(%struct.rtx_def* %16, i32 %bf.cast26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %lor.lhs.false.29, label %if.then.44

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %19 = load i32, i32* %icode, align 4
  %idxprom30 = sext i32 %19 to i64
  %arrayidx31 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom30
  %operand32 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx31, i32 0, i32 3
  %20 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand32, align 8
  %arrayidx33 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %20, i64 2
  %predicate34 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx33, i32 0, i32 0
  %21 = load i32 (%struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)** %predicate34, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %23 = load i32, i32* %icode, align 4
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom35
  %operand37 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx36, i32 0, i32 3
  %24 = load %struct.insn_operand_data*, %struct.insn_operand_data** %operand37, align 8
  %arrayidx38 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %24, i64 2
  %mode39 = getelementptr inbounds %struct.insn_operand_data, %struct.insn_operand_data* %arrayidx38, i32 0, i32 2
  %bf.load40 = load i16, i16* %mode39, align 8
  %bf.cast41 = zext i16 %bf.load40 to i32
  %call42 = call i32 %21(%struct.rtx_def* %22, i32 %bf.cast41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end.45, label %if.then.44

if.then.44:                                       ; preds = %lor.lhs.false.29, %lor.lhs.false, %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %lor.lhs.false.29
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.44, %if.then.5
  %25 = load i32, i32* %retval
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %x, %struct.rtx_def* %y) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %insn_code = alloca i32, align 4
  %seq = alloca %struct.rtx_def*, align 8
  %tmode = alloca i32, align 4
  %x1 = alloca %struct.rtx_def*, align 8
  %y1 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %2 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  store i32 %bf.clear3, i32* %mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code4 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %7 = load i32, i32* %insn_code4, align 4
  store i32 %7, i32* %insn_code, align 4
  %8 = load i32, i32* %mode, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom5
  %9 = load i32, i32* %arrayidx6, align 4
  %cmp7 = icmp eq i32 %9, 4
  br i1 %cmp7, label %land.lhs.true, label %if.end.68

land.lhs.true:                                    ; preds = %if.end
  %10 = load i32, i32* %insn_code, align 4
  %cmp8 = icmp eq i32 %10, 1317
  br i1 %cmp8, label %if.then.9, label %if.end.68

if.then.9:                                        ; preds = %land.lhs.true
  store i32 0, i32* %tmode, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %x1, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %y1, align 8
  %13 = load i32, i32* %mode, align 4
  %cmp10 = icmp ne i32 %13, 52
  br i1 %cmp10, label %land.lhs.true.11, label %if.else

land.lhs.true.11:                                 ; preds = %if.then.9
  %14 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers12 = getelementptr inbounds %struct.optab, %struct.optab* %14, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers12, i32 0, i64 52
  %insn_code14 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx13, i32 0, i32 0
  %15 = load i32, i32* %insn_code14, align 4
  %cmp15 = icmp ne i32 %15, 1317
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %land.lhs.true.11
  store i32 52, i32* %tmode, align 4
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true.11, %if.then.9
  store i32 2, i32* %tmode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %16 = load i32, i32* %tmode, align 4
  %cmp17 = icmp ne i32 %16, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i32, i32* %tmode, align 4
  %idxprom18 = sext i32 %17 to i64
  %arrayidx19 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom18
  %18 = load i8, i8* %arrayidx19, align 1
  %conv = zext i8 %18 to i32
  %19 = load i32, i32* %mode, align 4
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom20
  %20 = load i8, i8* %arrayidx21, align 1
  %conv22 = zext i8 %20 to i32
  %cmp23 = icmp eq i32 %conv, %conv22
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %for.body
  br label %for.end

if.end.26:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %21 = load i32, i32* %tmode, align 4
  %idxprom27 = sext i32 %21 to i64
  %arrayidx28 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom27
  %22 = load i8, i8* %arrayidx28, align 1
  %conv29 = zext i8 %22 to i32
  store i32 %conv29, i32* %tmode, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.25, %for.cond
  br label %if.end.30

if.end.30:                                        ; preds = %for.end, %if.then.16
  %23 = load i32, i32* %tmode, align 4
  %cmp31 = icmp eq i32 %23, 0
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3972, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.gen_move_insn, i32 0, i32 0)) #6
  unreachable

if.end.34:                                        ; preds = %if.end.30
  %24 = load i32, i32* @reload_in_progress, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.35, label %if.else.57

if.then.35:                                       ; preds = %if.end.34
  %25 = load i32, i32* %tmode, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %call = call %struct.rtx_def* @gen_lowpart_common(i32 %25, %struct.rtx_def* %26)
  store %struct.rtx_def* %call, %struct.rtx_def** %x.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp36 = icmp eq %struct.rtx_def* %27, null
  br i1 %cmp36, label %land.lhs.true.38, label %if.end.45

land.lhs.true.38:                                 ; preds = %if.then.35
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load39 = load i32, i32* %29, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp eq i32 %bf.clear40, 66
  br i1 %cmp41, label %if.then.43, label %if.end.45

if.then.43:                                       ; preds = %land.lhs.true.38
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %31 = load i32, i32* %tmode, align 4
  %call44 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %30, i32 %31, i64 0, i32 0, i32 1)
  store %struct.rtx_def* %call44, %struct.rtx_def** %x.addr, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x1, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @copy_replacements(%struct.rtx_def* %32, %struct.rtx_def* %33)
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %land.lhs.true.38, %if.then.35
  %34 = load i32, i32* %tmode, align 4
  %35 = load %struct.rtx_def*, %struct.rtx_def** %y1, align 8
  %call46 = call %struct.rtx_def* @gen_lowpart_common(i32 %34, %struct.rtx_def* %35)
  store %struct.rtx_def* %call46, %struct.rtx_def** %y.addr, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %cmp47 = icmp eq %struct.rtx_def* %36, null
  br i1 %cmp47, label %land.lhs.true.49, label %if.end.56

land.lhs.true.49:                                 ; preds = %if.end.45
  %37 = load %struct.rtx_def*, %struct.rtx_def** %y1, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load50 = load i32, i32* %38, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %cmp52 = icmp eq i32 %bf.clear51, 66
  br i1 %cmp52, label %if.then.54, label %if.end.56

if.then.54:                                       ; preds = %land.lhs.true.49
  %39 = load %struct.rtx_def*, %struct.rtx_def** %y1, align 8
  %40 = load i32, i32* %tmode, align 4
  %call55 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %39, i32 %40, i64 0, i32 0, i32 1)
  store %struct.rtx_def* %call55, %struct.rtx_def** %y.addr, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %y1, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  call void @copy_replacements(%struct.rtx_def* %41, %struct.rtx_def* %42)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.54, %land.lhs.true.49, %if.end.45
  br label %if.end.60

if.else.57:                                       ; preds = %if.end.34
  %43 = load i32, i32* %tmode, align 4
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call58 = call %struct.rtx_def* @gen_lowpart(i32 %43, %struct.rtx_def* %44)
  store %struct.rtx_def* %call58, %struct.rtx_def** %x.addr, align 8
  %45 = load i32, i32* %tmode, align 4
  %46 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call59 = call %struct.rtx_def* @gen_lowpart(i32 %45, %struct.rtx_def* %46)
  store %struct.rtx_def* %call59, %struct.rtx_def** %y.addr, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.end.56
  %47 = load i32, i32* %tmode, align 4
  %idxprom61 = sext i32 %47 to i64
  %48 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers62 = getelementptr inbounds %struct.optab, %struct.optab* %48, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers62, i32 0, i64 %idxprom61
  %insn_code64 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx63, i32 0, i32 0
  %49 = load i32, i32* %insn_code64, align 4
  store i32 %49, i32* %insn_code, align 4
  %50 = load i32, i32* %insn_code, align 4
  %idxprom65 = sext i32 %50 to i64
  %arrayidx66 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom65
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx66, i32 0, i32 2
  %51 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call67 = call %struct.rtx_def* (%struct.rtx_def*, ...) %51(%struct.rtx_def* %52, %struct.rtx_def* %53)
  store %struct.rtx_def* %call67, %struct.rtx_def** %retval
  br label %return

if.end.68:                                        ; preds = %land.lhs.true, %if.end
  call void @start_sequence()
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call69 = call %struct.rtx_def* @emit_move_insn_1(%struct.rtx_def* %54, %struct.rtx_def* %55)
  %call70 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call70, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %56 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  store %struct.rtx_def* %56, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.68, %if.end.60
  %57 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %57
}

declare %struct.rtx_def* @gen_lowpart_common(i32, %struct.rtx_def*) #2

declare %struct.rtx_def* @adjust_address_1(%struct.rtx_def*, i32, i64, i32, i32) #2

declare void @copy_replacements(%struct.rtx_def*, %struct.rtx_def*) #2

declare %struct.rtx_def* @emit_move_insn_1(%struct.rtx_def*, %struct.rtx_def*) #2

declare %struct.rtx_def* @gen_sequence() #2

; Function Attrs: nounwind uwtable
define i32 @can_extend_p(i32 %to_mode, i32 %from_mode, i32 %unsignedp) #0 {
entry:
  %to_mode.addr = alloca i32, align 4
  %from_mode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  store i32 %to_mode, i32* %to_mode.addr, align 4
  store i32 %from_mode, i32* %from_mode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load i32, i32* %unsignedp.addr, align 4
  %cmp = icmp ne i32 %0, 0
  %conv = zext i1 %cmp to i32
  %idxprom = sext i32 %conv to i64
  %1 = load i32, i32* %from_mode.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load i32, i32* %to_mode.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [59 x [2 x i32]], [59 x [2 x i32]]* %arrayidx, i32 0, i64 %idxprom1
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx4, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_extend_insn(%struct.rtx_def* %x, %struct.rtx_def* %y, i32 %mto, i32 %mfrom, i32 %unsignedp) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %y.addr = alloca %struct.rtx_def*, align 8
  %mto.addr = alloca i32, align 4
  %mfrom.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %y, %struct.rtx_def** %y.addr, align 8
  store i32 %mto, i32* %mto.addr, align 4
  store i32 %mfrom, i32* %mfrom.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load i32, i32* %unsignedp.addr, align 4
  %cmp = icmp ne i32 %0, 0
  %conv = zext i1 %cmp to i32
  %idxprom = sext i32 %conv to i64
  %1 = load i32, i32* %mfrom.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load i32, i32* %mto.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [59 x [2 x i32]], [59 x [2 x i32]]* %arrayidx, i32 0, i64 %idxprom1
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx4, align 4
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom5
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx6, i32 0, i32 2
  %4 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %y.addr, align 8
  %call = call %struct.rtx_def* (%struct.rtx_def*, ...) %4(%struct.rtx_def* %5, %struct.rtx_def* %6)
  ret %struct.rtx_def* %call
}

; Function Attrs: nounwind uwtable
define void @expand_float(%struct.rtx_def* %to, %struct.rtx_def* %from, i32 %unsignedp) #0 {
entry:
  %to.addr = alloca %struct.rtx_def*, align 8
  %from.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %icode = alloca i32, align 4
  %target = alloca %struct.rtx_def*, align 8
  %fmode = alloca i32, align 4
  %imode = alloca i32, align 4
  %doing_unsigned = alloca i32, align 4
  %label = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %offset = alloca %struct.realvaluetype, align 8
  %temp1 = alloca %struct.rtx_def*, align 8
  %neglabel = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.realvaluetype, align 8
  %libfcn = alloca %struct.rtx_def*, align 8
  %insns = alloca %struct.rtx_def*, align 8
  %value = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %target, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4096, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expand_float, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  store i32 %bf.clear3, i32* %imode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %if.end
  %5 = load i32, i32* %imode, align 4
  %cmp4 = icmp ne i32 %5, 0
  br i1 %cmp4, label %for.body, label %for.end.69

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load5 = load i32, i32* %7, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 16
  %bf.clear7 = and i32 %bf.lshr6, 255
  store i32 %bf.clear7, i32* %fmode, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %8 = load i32, i32* %fmode, align 4
  %cmp9 = icmp ne i32 %8, 0
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %9 = load i32, i32* %unsignedp.addr, align 4
  store i32 %9, i32* %doing_unsigned, align 4
  %10 = load i32, i32* %fmode, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.lshr12 = lshr i32 %bf.load11, 16
  %bf.clear13 = and i32 %bf.lshr12, 255
  %cmp14 = icmp ne i32 %10, %bf.clear13
  br i1 %cmp14, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %for.body.10
  %13 = load i32, i32* %fmode, align 4
  %call = call i32 @significand_size(i32 %13)
  %14 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load15 = load i32, i32* %15, align 8
  %bf.lshr16 = lshr i32 %bf.load15, 16
  %bf.clear17 = and i32 %bf.lshr16, 255
  %idxprom = sext i32 %bf.clear17 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %16 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %16 to i32
  %cmp18 = icmp ult i32 %call, %conv
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true
  br label %for.inc

if.end.21:                                        ; preds = %land.lhs.true, %for.body.10
  %17 = load i32, i32* %fmode, align 4
  %18 = load i32, i32* %imode, align 4
  %19 = load i32, i32* %unsignedp.addr, align 4
  %call22 = call i32 @can_float_p(i32 %17, i32 %18, i32 %19)
  store i32 %call22, i32* %icode, align 4
  %20 = load i32, i32* %icode, align 4
  %cmp23 = icmp eq i32 %20, 1317
  br i1 %cmp23, label %land.lhs.true.25, label %if.end.34

land.lhs.true.25:                                 ; preds = %if.end.21
  %21 = load i32, i32* %imode, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load26 = load i32, i32* %23, align 8
  %bf.lshr27 = lshr i32 %bf.load26, 16
  %bf.clear28 = and i32 %bf.lshr27, 255
  %cmp29 = icmp ne i32 %21, %bf.clear28
  br i1 %cmp29, label %land.lhs.true.31, label %if.end.34

land.lhs.true.31:                                 ; preds = %land.lhs.true.25
  %24 = load i32, i32* %unsignedp.addr, align 4
  %tobool = icmp ne i32 %24, 0
  br i1 %tobool, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %land.lhs.true.31
  %25 = load i32, i32* %fmode, align 4
  %26 = load i32, i32* %imode, align 4
  %call33 = call i32 @can_float_p(i32 %25, i32 %26, i32 0)
  store i32 %call33, i32* %icode, align 4
  store i32 0, i32* %doing_unsigned, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %land.lhs.true.31, %land.lhs.true.25, %if.end.21
  %27 = load i32, i32* %icode, align 4
  %cmp35 = icmp ne i32 %27, 1317
  br i1 %cmp35, label %if.then.37, label %if.end.61

if.then.37:                                       ; preds = %if.end.34
  %28 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call38 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %28, i32 1)
  store %struct.rtx_def* %call38, %struct.rtx_def** %to.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call39 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %29, i32 0)
  store %struct.rtx_def* %call39, %struct.rtx_def** %from.addr, align 8
  %30 = load i32, i32* %imode, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load40 = load i32, i32* %32, align 8
  %bf.lshr41 = lshr i32 %bf.load40, 16
  %bf.clear42 = and i32 %bf.lshr41, 255
  %cmp43 = icmp ne i32 %30, %bf.clear42
  br i1 %cmp43, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %if.then.37
  %33 = load i32, i32* %imode, align 4
  %34 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %35 = load i32, i32* %unsignedp.addr, align 4
  %call46 = call %struct.rtx_def* @convert_to_mode(i32 %33, %struct.rtx_def* %34, i32 %35)
  store %struct.rtx_def* %call46, %struct.rtx_def** %from.addr, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %if.then.37
  %36 = load i32, i32* %fmode, align 4
  %37 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load48 = load i32, i32* %38, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 16
  %bf.clear50 = and i32 %bf.lshr49, 255
  %cmp51 = icmp ne i32 %36, %bf.clear50
  br i1 %cmp51, label %if.then.53, label %if.end.55

if.then.53:                                       ; preds = %if.end.47
  %39 = load i32, i32* %fmode, align 4
  %call54 = call %struct.rtx_def* @gen_reg_rtx(i32 %39)
  store %struct.rtx_def* %call54, %struct.rtx_def** %target, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.53, %if.end.47
  %40 = load i32, i32* %icode, align 4
  %41 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %43 = load i32, i32* %doing_unsigned, align 4
  %tobool56 = icmp ne i32 %43, 0
  %cond = select i1 %tobool56, i32 127, i32 125
  call void @emit_unop_insn(i32 %40, %struct.rtx_def* %41, %struct.rtx_def* %42, i32 %cond)
  %44 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %cmp57 = icmp ne %struct.rtx_def* %44, %45
  br i1 %cmp57, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %if.end.55
  %46 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @convert_move(%struct.rtx_def* %46, %struct.rtx_def* %47, i32 0)
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %if.end.55
  br label %if.end.375

if.end.61:                                        ; preds = %if.end.34
  br label %for.inc

for.inc:                                          ; preds = %if.end.61, %if.then.20
  %48 = load i32, i32* %fmode, align 4
  %idxprom62 = sext i32 %48 to i64
  %arrayidx63 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom62
  %49 = load i8, i8* %arrayidx63, align 1
  %conv64 = zext i8 %49 to i32
  store i32 %conv64, i32* %fmode, align 4
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.65

for.inc.65:                                       ; preds = %for.end
  %50 = load i32, i32* %imode, align 4
  %idxprom66 = sext i32 %50 to i64
  %arrayidx67 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom66
  %51 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %51 to i32
  store i32 %conv68, i32* %imode, align 4
  br label %for.cond

for.end.69:                                       ; preds = %for.cond
  %52 = load i32, i32* %unsignedp.addr, align 4
  %tobool70 = icmp ne i32 %52, 0
  br i1 %tobool70, label %if.then.71, label %if.end.199

if.then.71:                                       ; preds = %for.end.69
  %call72 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call72, %struct.rtx_def** %label, align 8
  call void @emit_queue()
  %53 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call73 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %53, i32 1)
  store %struct.rtx_def* %call73, %struct.rtx_def** %to.addr, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call74 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %54, i32 0)
  store %struct.rtx_def* %call74, %struct.rtx_def** %from.addr, align 8
  %55 = load i32, i32* @flag_force_mem, align 4
  %tobool75 = icmp ne i32 %55, 0
  br i1 %tobool75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.then.71
  %56 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call77 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %56)
  store %struct.rtx_def* %call77, %struct.rtx_def** %from.addr, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.then.71
  %57 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load79 = load i32, i32* %58, align 8
  %bf.lshr80 = lshr i32 %bf.load79, 16
  %bf.clear81 = and i32 %bf.lshr80, 255
  store i32 %bf.clear81, i32* %fmode, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.106, %if.end.78
  %59 = load i32, i32* %fmode, align 4
  %cmp83 = icmp ne i32 %59, 0
  br i1 %cmp83, label %for.body.85, label %for.end.110

for.body.85:                                      ; preds = %for.cond.82
  %60 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load86 = load i32, i32* %61, align 8
  %bf.lshr87 = lshr i32 %bf.load86, 16
  %bf.clear88 = and i32 %bf.lshr87, 255
  %idxprom89 = sext i32 %bf.clear88 to i64
  %arrayidx90 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom89
  %62 = load i16, i16* %arrayidx90, align 2
  %conv91 = zext i16 %62 to i32
  %63 = load i32, i32* %fmode, align 4
  %idxprom92 = sext i32 %63 to i64
  %arrayidx93 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom92
  %64 = load i16, i16* %arrayidx93, align 2
  %conv94 = zext i16 %64 to i32
  %cmp95 = icmp slt i32 %conv91, %conv94
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.105

land.lhs.true.97:                                 ; preds = %for.body.85
  %65 = load i32, i32* %fmode, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load98 = load i32, i32* %67, align 8
  %bf.lshr99 = lshr i32 %bf.load98, 16
  %bf.clear100 = and i32 %bf.lshr99, 255
  %call101 = call i32 @can_float_p(i32 %65, i32 %bf.clear100, i32 0)
  %cmp102 = icmp ne i32 %call101, 1317
  br i1 %cmp102, label %if.then.104, label %if.end.105

if.then.104:                                      ; preds = %land.lhs.true.97
  br label %for.end.110

if.end.105:                                       ; preds = %land.lhs.true.97, %for.body.85
  br label %for.inc.106

for.inc.106:                                      ; preds = %if.end.105
  %68 = load i32, i32* %fmode, align 4
  %idxprom107 = sext i32 %68 to i64
  %arrayidx108 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom107
  %69 = load i8, i8* %arrayidx108, align 1
  %conv109 = zext i8 %69 to i32
  store i32 %conv109, i32* %fmode, align 4
  br label %for.cond.82

for.end.110:                                      ; preds = %if.then.104, %for.cond.82
  %70 = load i32, i32* %fmode, align 4
  %cmp111 = icmp eq i32 %70, 0
  br i1 %cmp111, label %if.then.113, label %if.end.162

if.then.113:                                      ; preds = %for.end.110
  %71 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load114 = load i32, i32* %72, align 8
  %bf.lshr115 = lshr i32 %bf.load114, 16
  %bf.clear116 = and i32 %bf.lshr115, 255
  store i32 %bf.clear116, i32* %fmode, align 4
  %73 = load i32, i32* %fmode, align 4
  %call117 = call i32 @significand_size(i32 %73)
  %add = add i32 %call117, 1
  %74 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load118 = load i32, i32* %75, align 8
  %bf.lshr119 = lshr i32 %bf.load118, 16
  %bf.clear120 = and i32 %bf.lshr119, 255
  %idxprom121 = sext i32 %bf.clear120 to i64
  %arrayidx122 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom121
  %76 = load i16, i16* %arrayidx122, align 2
  %conv123 = zext i16 %76 to i32
  %cmp124 = icmp ult i32 %add, %conv123
  br i1 %cmp124, label %if.then.126, label %if.end.161

if.then.126:                                      ; preds = %if.then.113
  %call127 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call127, %struct.rtx_def** %neglabel, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load128 = load i32, i32* %78, align 8
  %bf.clear129 = and i32 %bf.load128, 65535
  %cmp130 = icmp ne i32 %bf.clear129, 61
  br i1 %cmp130, label %if.then.141, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.126
  %79 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx132 to i32*
  %80 = load i32, i32* %rtuint, align 4
  %cmp133 = icmp ult i32 %80, 53
  br i1 %cmp133, label %if.then.141, label %lor.lhs.false.135

lor.lhs.false.135:                                ; preds = %lor.lhs.false
  %81 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load136 = load i32, i32* %82, align 8
  %bf.lshr137 = lshr i32 %bf.load136, 16
  %bf.clear138 = and i32 %bf.lshr137, 255
  %83 = load i32, i32* %fmode, align 4
  %cmp139 = icmp ne i32 %bf.clear138, %83
  br i1 %cmp139, label %if.then.141, label %if.end.143

if.then.141:                                      ; preds = %lor.lhs.false.135, %lor.lhs.false, %if.then.126
  %84 = load i32, i32* %fmode, align 4
  %call142 = call %struct.rtx_def* @gen_reg_rtx(i32 %84)
  store %struct.rtx_def* %call142, %struct.rtx_def** %target, align 8
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.141, %lor.lhs.false.135
  %85 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load144 = load i32, i32* %86, align 8
  %bf.lshr145 = lshr i32 %bf.load144, 16
  %bf.clear146 = and i32 %bf.lshr145, 255
  store i32 %bf.clear146, i32* %imode, align 4
  call void @do_pending_stack_adjust()
  %87 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %89 = load i32, i32* %imode, align 4
  %90 = load %struct.rtx_def*, %struct.rtx_def** %neglabel, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %87, %struct.rtx_def* %88, i32 107, %struct.rtx_def* null, i32 %89, i32 0, %struct.rtx_def* %90)
  %91 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  call void @expand_float(%struct.rtx_def* %91, %struct.rtx_def* %92, i32 0)
  %93 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call147 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %93)
  %call148 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call147)
  %call149 = call %struct.rtx_def* @emit_barrier()
  %94 = load %struct.rtx_def*, %struct.rtx_def** %neglabel, align 8
  %call150 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %94)
  %95 = load i32, i32* %imode, align 4
  %96 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %call151 = call %struct.rtx_def* @expand_binop(i32 %95, %struct.optab* %96, %struct.rtx_def* %97, %struct.rtx_def* %98, %struct.rtx_def* null, i32 1, i32 3)
  store %struct.rtx_def* %call151, %struct.rtx_def** %temp, align 8
  %99 = load i32, i32* %imode, align 4
  %100 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %101 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 12), align 8
  %call152 = call %struct.rtx_def* @expand_shift(i32 83, i32 %99, %struct.rtx_def* %100, %union.tree_node* %101, %struct.rtx_def* null, i32 1)
  store %struct.rtx_def* %call152, %struct.rtx_def** %temp1, align 8
  %102 = load i32, i32* %imode, align 4
  %103 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %temp1, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call153 = call %struct.rtx_def* @expand_binop(i32 %102, %struct.optab* %103, %struct.rtx_def* %104, %struct.rtx_def* %105, %struct.rtx_def* %106, i32 1, i32 3)
  store %struct.rtx_def* %call153, %struct.rtx_def** %temp, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %108 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  call void @expand_float(%struct.rtx_def* %107, %struct.rtx_def* %108, i32 0)
  %109 = load i32, i32* %fmode, align 4
  %110 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %call154 = call %struct.rtx_def* @expand_binop(i32 %109, %struct.optab* %110, %struct.rtx_def* %111, %struct.rtx_def* %112, %struct.rtx_def* %113, i32 0, i32 3)
  store %struct.rtx_def* %call154, %struct.rtx_def** %temp, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %cmp155 = icmp ne %struct.rtx_def* %114, %115
  br i1 %cmp155, label %if.then.157, label %if.end.159

if.then.157:                                      ; preds = %if.end.143
  %116 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %117 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call158 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %116, %struct.rtx_def* %117)
  br label %if.end.159

if.end.159:                                       ; preds = %if.then.157, %if.end.143
  call void @do_pending_stack_adjust()
  %118 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call160 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %118)
  br label %done

if.end.161:                                       ; preds = %if.then.113
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %for.end.110
  %119 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %120 = bitcast %struct.rtx_def* %119 to i32*
  %bf.load163 = load i32, i32* %120, align 8
  %bf.lshr164 = lshr i32 %bf.load163, 16
  %bf.clear165 = and i32 %bf.lshr164, 255
  %121 = load i32, i32* %fmode, align 4
  %cmp166 = icmp ne i32 %bf.clear165, %121
  br i1 %cmp166, label %if.then.179, label %lor.lhs.false.168

lor.lhs.false.168:                                ; preds = %if.end.162
  %122 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %123 = bitcast %struct.rtx_def* %122 to i32*
  %bf.load169 = load i32, i32* %123, align 8
  %bf.clear170 = and i32 %bf.load169, 65535
  %cmp171 = icmp ne i32 %bf.clear170, 61
  br i1 %cmp171, label %if.then.179, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %lor.lhs.false.168
  %124 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 0
  %rtuint176 = bitcast %union.rtunion_def* %arrayidx175 to i32*
  %125 = load i32, i32* %rtuint176, align 4
  %cmp177 = icmp ult i32 %125, 53
  br i1 %cmp177, label %if.then.179, label %if.end.181

if.then.179:                                      ; preds = %lor.lhs.false.173, %lor.lhs.false.168, %if.end.162
  %126 = load i32, i32* %fmode, align 4
  %call180 = call %struct.rtx_def* @gen_reg_rtx(i32 %126)
  store %struct.rtx_def* %call180, %struct.rtx_def** %target, align 8
  br label %if.end.181

if.end.181:                                       ; preds = %if.then.179, %lor.lhs.false.173
  %127 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %128 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  call void @expand_float(%struct.rtx_def* %127, %struct.rtx_def* %128, i32 0)
  call void @do_pending_stack_adjust()
  %129 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %130 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %131 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %132 = bitcast %struct.rtx_def* %131 to i32*
  %bf.load182 = load i32, i32* %132, align 8
  %bf.lshr183 = lshr i32 %bf.load182, 16
  %bf.clear184 = and i32 %bf.lshr183, 255
  %133 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %129, %struct.rtx_def* %130, i32 104, %struct.rtx_def* null, i32 %bf.clear184, i32 0, %struct.rtx_def* %133)
  %134 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load185 = load i32, i32* %135, align 8
  %bf.lshr186 = lshr i32 %bf.load185, 16
  %bf.clear187 = and i32 %bf.lshr186, 255
  %idxprom188 = sext i32 %bf.clear187 to i64
  %arrayidx189 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom188
  %136 = load i16, i16* %arrayidx189, align 2
  %conv190 = zext i16 %136 to i32
  call void @ereal_ldexp(%struct.realvaluetype* sret %tmp, %struct.realvaluetype* byval align 8 @dconst1, i32 %conv190)
  %137 = bitcast %struct.realvaluetype* %offset to i8*
  %138 = bitcast %struct.realvaluetype* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %137, i8* %138, i64 24, i32 8, i1 false)
  %139 = load i32, i32* %fmode, align 4
  %140 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %142 = load i32, i32* %fmode, align 4
  %call191 = call %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %offset, i32 %142)
  %143 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %call192 = call %struct.rtx_def* @expand_binop(i32 %139, %struct.optab* %140, %struct.rtx_def* %141, %struct.rtx_def* %call191, %struct.rtx_def* %143, i32 0, i32 3)
  store %struct.rtx_def* %call192, %struct.rtx_def** %temp, align 8
  %144 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %cmp193 = icmp ne %struct.rtx_def* %144, %145
  br i1 %cmp193, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %if.end.181
  %146 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %147 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call196 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %146, %struct.rtx_def* %147)
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %if.end.181
  call void @do_pending_stack_adjust()
  %148 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %call198 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %148)
  br label %done

if.end.199:                                       ; preds = %for.end.69
  %149 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call203 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %149, i32 1)
  store %struct.rtx_def* %call203, %struct.rtx_def** %to.addr, align 8
  %150 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call204 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %150, i32 0)
  store %struct.rtx_def* %call204, %struct.rtx_def** %from.addr, align 8
  %151 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %152 = bitcast %struct.rtx_def* %151 to i32*
  %bf.load205 = load i32, i32* %152, align 8
  %bf.lshr206 = lshr i32 %bf.load205, 16
  %bf.clear207 = and i32 %bf.lshr206, 255
  %idxprom208 = sext i32 %bf.clear207 to i64
  %arrayidx209 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom208
  %153 = load i8, i8* %arrayidx209, align 1
  %conv210 = zext i8 %153 to i32
  %154 = load i8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @mode_size, i32 0, i64 4), align 1
  %conv211 = zext i8 %154 to i32
  %cmp212 = icmp slt i32 %conv210, %conv211
  br i1 %cmp212, label %if.then.214, label %if.end.216

if.then.214:                                      ; preds = %if.end.199
  %155 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %156 = load i32, i32* %unsignedp.addr, align 4
  %call215 = call %struct.rtx_def* @convert_to_mode(i32 4, %struct.rtx_def* %155, i32 %156)
  store %struct.rtx_def* %call215, %struct.rtx_def** %from.addr, align 8
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.214, %if.end.199
  %157 = load i32, i32* @flag_force_mem, align 4
  %tobool217 = icmp ne i32 %157, 0
  br i1 %tobool217, label %if.then.218, label %if.end.220

if.then.218:                                      ; preds = %if.end.216
  %158 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call219 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %158)
  store %struct.rtx_def* %call219, %struct.rtx_def** %from.addr, align 8
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.218, %if.end.216
  %159 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %160 = bitcast %struct.rtx_def* %159 to i32*
  %bf.load221 = load i32, i32* %160, align 8
  %bf.lshr222 = lshr i32 %bf.load221, 16
  %bf.clear223 = and i32 %bf.lshr222, 255
  %cmp224 = icmp eq i32 %bf.clear223, 15
  br i1 %cmp224, label %if.then.226, label %if.else.250

if.then.226:                                      ; preds = %if.end.220
  %161 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %162 = bitcast %struct.rtx_def* %161 to i32*
  %bf.load227 = load i32, i32* %162, align 8
  %bf.lshr228 = lshr i32 %bf.load227, 16
  %bf.clear229 = and i32 %bf.lshr228, 255
  %cmp230 = icmp eq i32 %bf.clear229, 4
  br i1 %cmp230, label %if.then.232, label %if.else

if.then.232:                                      ; preds = %if.then.226
  %163 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 59), align 8
  store %struct.rtx_def* %163, %struct.rtx_def** %libfcn, align 8
  br label %if.end.249

if.else:                                          ; preds = %if.then.226
  %164 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %165 = bitcast %struct.rtx_def* %164 to i32*
  %bf.load233 = load i32, i32* %165, align 8
  %bf.lshr234 = lshr i32 %bf.load233, 16
  %bf.clear235 = and i32 %bf.lshr234, 255
  %cmp236 = icmp eq i32 %bf.clear235, 5
  br i1 %cmp236, label %if.then.238, label %if.else.239

if.then.238:                                      ; preds = %if.else
  %166 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 60), align 8
  store %struct.rtx_def* %166, %struct.rtx_def** %libfcn, align 8
  br label %if.end.248

if.else.239:                                      ; preds = %if.else
  %167 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %168 = bitcast %struct.rtx_def* %167 to i32*
  %bf.load240 = load i32, i32* %168, align 8
  %bf.lshr241 = lshr i32 %bf.load240, 16
  %bf.clear242 = and i32 %bf.lshr241, 255
  %cmp243 = icmp eq i32 %bf.clear242, 6
  br i1 %cmp243, label %if.then.245, label %if.else.246

if.then.245:                                      ; preds = %if.else.239
  %169 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 61), align 8
  store %struct.rtx_def* %169, %struct.rtx_def** %libfcn, align 8
  br label %if.end.247

if.else.246:                                      ; preds = %if.else.239
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4281, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expand_float, i32 0, i32 0)) #6
  unreachable

if.end.247:                                       ; preds = %if.then.245
  br label %if.end.248

if.end.248:                                       ; preds = %if.end.247, %if.then.238
  br label %if.end.249

if.end.249:                                       ; preds = %if.end.248, %if.then.232
  br label %if.end.347

if.else.250:                                      ; preds = %if.end.220
  %170 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %171 = bitcast %struct.rtx_def* %170 to i32*
  %bf.load251 = load i32, i32* %171, align 8
  %bf.lshr252 = lshr i32 %bf.load251, 16
  %bf.clear253 = and i32 %bf.lshr252, 255
  %cmp254 = icmp eq i32 %bf.clear253, 16
  br i1 %cmp254, label %if.then.256, label %if.else.281

if.then.256:                                      ; preds = %if.else.250
  %172 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %bf.load257 = load i32, i32* %173, align 8
  %bf.lshr258 = lshr i32 %bf.load257, 16
  %bf.clear259 = and i32 %bf.lshr258, 255
  %cmp260 = icmp eq i32 %bf.clear259, 4
  br i1 %cmp260, label %if.then.262, label %if.else.263

if.then.262:                                      ; preds = %if.then.256
  %174 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 62), align 8
  store %struct.rtx_def* %174, %struct.rtx_def** %libfcn, align 8
  br label %if.end.280

if.else.263:                                      ; preds = %if.then.256
  %175 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %176 = bitcast %struct.rtx_def* %175 to i32*
  %bf.load264 = load i32, i32* %176, align 8
  %bf.lshr265 = lshr i32 %bf.load264, 16
  %bf.clear266 = and i32 %bf.lshr265, 255
  %cmp267 = icmp eq i32 %bf.clear266, 5
  br i1 %cmp267, label %if.then.269, label %if.else.270

if.then.269:                                      ; preds = %if.else.263
  %177 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 63), align 8
  store %struct.rtx_def* %177, %struct.rtx_def** %libfcn, align 8
  br label %if.end.279

if.else.270:                                      ; preds = %if.else.263
  %178 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %179 = bitcast %struct.rtx_def* %178 to i32*
  %bf.load271 = load i32, i32* %179, align 8
  %bf.lshr272 = lshr i32 %bf.load271, 16
  %bf.clear273 = and i32 %bf.lshr272, 255
  %cmp274 = icmp eq i32 %bf.clear273, 6
  br i1 %cmp274, label %if.then.276, label %if.else.277

if.then.276:                                      ; preds = %if.else.270
  %180 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 64), align 8
  store %struct.rtx_def* %180, %struct.rtx_def** %libfcn, align 8
  br label %if.end.278

if.else.277:                                      ; preds = %if.else.270
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4292, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expand_float, i32 0, i32 0)) #6
  unreachable

if.end.278:                                       ; preds = %if.then.276
  br label %if.end.279

if.end.279:                                       ; preds = %if.end.278, %if.then.269
  br label %if.end.280

if.end.280:                                       ; preds = %if.end.279, %if.then.262
  br label %if.end.346

if.else.281:                                      ; preds = %if.else.250
  %181 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %182 = bitcast %struct.rtx_def* %181 to i32*
  %bf.load282 = load i32, i32* %182, align 8
  %bf.lshr283 = lshr i32 %bf.load282, 16
  %bf.clear284 = and i32 %bf.lshr283, 255
  %cmp285 = icmp eq i32 %bf.clear284, 17
  br i1 %cmp285, label %if.then.287, label %if.else.312

if.then.287:                                      ; preds = %if.else.281
  %183 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %184 = bitcast %struct.rtx_def* %183 to i32*
  %bf.load288 = load i32, i32* %184, align 8
  %bf.lshr289 = lshr i32 %bf.load288, 16
  %bf.clear290 = and i32 %bf.lshr289, 255
  %cmp291 = icmp eq i32 %bf.clear290, 4
  br i1 %cmp291, label %if.then.293, label %if.else.294

if.then.293:                                      ; preds = %if.then.287
  %185 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 65), align 8
  store %struct.rtx_def* %185, %struct.rtx_def** %libfcn, align 8
  br label %if.end.311

if.else.294:                                      ; preds = %if.then.287
  %186 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %187 = bitcast %struct.rtx_def* %186 to i32*
  %bf.load295 = load i32, i32* %187, align 8
  %bf.lshr296 = lshr i32 %bf.load295, 16
  %bf.clear297 = and i32 %bf.lshr296, 255
  %cmp298 = icmp eq i32 %bf.clear297, 5
  br i1 %cmp298, label %if.then.300, label %if.else.301

if.then.300:                                      ; preds = %if.else.294
  %188 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 66), align 8
  store %struct.rtx_def* %188, %struct.rtx_def** %libfcn, align 8
  br label %if.end.310

if.else.301:                                      ; preds = %if.else.294
  %189 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %190 = bitcast %struct.rtx_def* %189 to i32*
  %bf.load302 = load i32, i32* %190, align 8
  %bf.lshr303 = lshr i32 %bf.load302, 16
  %bf.clear304 = and i32 %bf.lshr303, 255
  %cmp305 = icmp eq i32 %bf.clear304, 6
  br i1 %cmp305, label %if.then.307, label %if.else.308

if.then.307:                                      ; preds = %if.else.301
  %191 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 67), align 8
  store %struct.rtx_def* %191, %struct.rtx_def** %libfcn, align 8
  br label %if.end.309

if.else.308:                                      ; preds = %if.else.301
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4303, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expand_float, i32 0, i32 0)) #6
  unreachable

if.end.309:                                       ; preds = %if.then.307
  br label %if.end.310

if.end.310:                                       ; preds = %if.end.309, %if.then.300
  br label %if.end.311

if.end.311:                                       ; preds = %if.end.310, %if.then.293
  br label %if.end.345

if.else.312:                                      ; preds = %if.else.281
  %192 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %193 = bitcast %struct.rtx_def* %192 to i32*
  %bf.load313 = load i32, i32* %193, align 8
  %bf.lshr314 = lshr i32 %bf.load313, 16
  %bf.clear315 = and i32 %bf.lshr314, 255
  %cmp316 = icmp eq i32 %bf.clear315, 18
  br i1 %cmp316, label %if.then.318, label %if.else.343

if.then.318:                                      ; preds = %if.else.312
  %194 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %195 = bitcast %struct.rtx_def* %194 to i32*
  %bf.load319 = load i32, i32* %195, align 8
  %bf.lshr320 = lshr i32 %bf.load319, 16
  %bf.clear321 = and i32 %bf.lshr320, 255
  %cmp322 = icmp eq i32 %bf.clear321, 4
  br i1 %cmp322, label %if.then.324, label %if.else.325

if.then.324:                                      ; preds = %if.then.318
  %196 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 68), align 8
  store %struct.rtx_def* %196, %struct.rtx_def** %libfcn, align 8
  br label %if.end.342

if.else.325:                                      ; preds = %if.then.318
  %197 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %198 = bitcast %struct.rtx_def* %197 to i32*
  %bf.load326 = load i32, i32* %198, align 8
  %bf.lshr327 = lshr i32 %bf.load326, 16
  %bf.clear328 = and i32 %bf.lshr327, 255
  %cmp329 = icmp eq i32 %bf.clear328, 5
  br i1 %cmp329, label %if.then.331, label %if.else.332

if.then.331:                                      ; preds = %if.else.325
  %199 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 69), align 8
  store %struct.rtx_def* %199, %struct.rtx_def** %libfcn, align 8
  br label %if.end.341

if.else.332:                                      ; preds = %if.else.325
  %200 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %201 = bitcast %struct.rtx_def* %200 to i32*
  %bf.load333 = load i32, i32* %201, align 8
  %bf.lshr334 = lshr i32 %bf.load333, 16
  %bf.clear335 = and i32 %bf.lshr334, 255
  %cmp336 = icmp eq i32 %bf.clear335, 6
  br i1 %cmp336, label %if.then.338, label %if.else.339

if.then.338:                                      ; preds = %if.else.332
  %202 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 70), align 8
  store %struct.rtx_def* %202, %struct.rtx_def** %libfcn, align 8
  br label %if.end.340

if.else.339:                                      ; preds = %if.else.332
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4314, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expand_float, i32 0, i32 0)) #6
  unreachable

if.end.340:                                       ; preds = %if.then.338
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %if.then.331
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341, %if.then.324
  br label %if.end.344

if.else.343:                                      ; preds = %if.else.312
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4317, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.expand_float, i32 0, i32 0)) #6
  unreachable

if.end.344:                                       ; preds = %if.end.342
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %if.end.311
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %if.end.280
  br label %if.end.347

if.end.347:                                       ; preds = %if.end.346, %if.end.249
  call void @start_sequence()
  %203 = load %struct.rtx_def*, %struct.rtx_def** %libfcn, align 8
  %204 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %205 = bitcast %struct.rtx_def* %204 to i32*
  %bf.load348 = load i32, i32* %205, align 8
  %bf.lshr349 = lshr i32 %bf.load348, 16
  %bf.clear350 = and i32 %bf.lshr349, 255
  %206 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %207 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %208 = bitcast %struct.rtx_def* %207 to i32*
  %bf.load351 = load i32, i32* %208, align 8
  %bf.lshr352 = lshr i32 %bf.load351, 16
  %bf.clear353 = and i32 %bf.lshr352, 255
  %call354 = call %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, ...) @emit_library_call_value(%struct.rtx_def* %203, %struct.rtx_def* null, i32 1, i32 %bf.clear350, i32 1, %struct.rtx_def* %206, i32 %bf.clear353)
  store %struct.rtx_def* %call354, %struct.rtx_def** %value, align 8
  %call355 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call355, %struct.rtx_def** %insns, align 8
  call void @end_sequence()
  %209 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %210 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %212 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %213 = bitcast %struct.rtx_def* %212 to i32*
  %bf.load356 = load i32, i32* %213, align 8
  %bf.lshr357 = lshr i32 %bf.load356, 16
  %bf.clear358 = and i32 %bf.lshr357, 255
  %214 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call359 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 125, i32 %bf.clear358, %struct.rtx_def* %214)
  call void @emit_libcall_block(%struct.rtx_def* %209, %struct.rtx_def* %210, %struct.rtx_def* %211, %struct.rtx_def* %call359)
  br label %done

done:                                             ; preds = %if.end.347, %if.end.197, %if.end.159
  %215 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %216 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %cmp360 = icmp ne %struct.rtx_def* %215, %216
  br i1 %cmp360, label %if.then.362, label %if.end.375

if.then.362:                                      ; preds = %done
  %217 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %218 = bitcast %struct.rtx_def* %217 to i32*
  %bf.load363 = load i32, i32* %218, align 8
  %bf.lshr364 = lshr i32 %bf.load363, 16
  %bf.clear365 = and i32 %bf.lshr364, 255
  %219 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %220 = bitcast %struct.rtx_def* %219 to i32*
  %bf.load366 = load i32, i32* %220, align 8
  %bf.lshr367 = lshr i32 %bf.load366, 16
  %bf.clear368 = and i32 %bf.lshr367, 255
  %cmp369 = icmp eq i32 %bf.clear365, %bf.clear368
  br i1 %cmp369, label %if.then.371, label %if.else.373

if.then.371:                                      ; preds = %if.then.362
  %221 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %222 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %call372 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %221, %struct.rtx_def* %222)
  br label %if.end.374

if.else.373:                                      ; preds = %if.then.362
  %223 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %224 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @convert_move(%struct.rtx_def* %223, %struct.rtx_def* %224, i32 0)
  br label %if.end.374

if.end.374:                                       ; preds = %if.else.373, %if.then.371
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.60, %if.end.374, %done
  ret void
}

declare i32 @significand_size(i32) #2

; Function Attrs: nounwind uwtable
define internal i32 @can_float_p(i32 %fltmode, i32 %fixmode, i32 %unsignedp) #0 {
entry:
  %fltmode.addr = alloca i32, align 4
  %fixmode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  store i32 %fltmode, i32* %fltmode.addr, align 4
  store i32 %fixmode, i32* %fixmode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load i32, i32* %unsignedp.addr, align 4
  %cmp = icmp ne i32 %0, 0
  %conv = zext i1 %cmp to i32
  %idxprom = sext i32 %conv to i64
  %1 = load i32, i32* %fixmode.addr, align 4
  %idxprom1 = sext i32 %1 to i64
  %2 = load i32, i32* %fltmode.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [59 x [2 x i32]], [59 x [2 x i32]]* %arrayidx, i32 0, i64 %idxprom1
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx4, align 4
  ret i32 %3
}

declare void @do_pending_stack_adjust() #2

declare %struct.rtx_def* @gen_jump(%struct.rtx_def*) #2

declare void @ereal_ldexp(%struct.realvaluetype* sret, %struct.realvaluetype* byval align 8, i32) #2

declare %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8, i32) #2

; Function Attrs: nounwind uwtable
define void @expand_fix(%struct.rtx_def* %to, %struct.rtx_def* %from, i32 %unsignedp) #0 {
entry:
  %to.addr = alloca %struct.rtx_def*, align 8
  %from.addr = alloca %struct.rtx_def*, align 8
  %unsignedp.addr = alloca i32, align 4
  %icode = alloca i32, align 4
  %target = alloca %struct.rtx_def*, align 8
  %fmode = alloca i32, align 4
  %imode = alloca i32, align 4
  %must_trunc = alloca i32, align 4
  %libfcn = alloca %struct.rtx_def*, align 8
  %doing_unsigned = alloca i32, align 4
  %bitsize = alloca i32, align 4
  %offset = alloca %struct.realvaluetype, align 8
  %limit = alloca %struct.rtx_def*, align 8
  %lab1 = alloca %struct.rtx_def*, align 8
  %lab2 = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.realvaluetype, align 8
  %insns = alloca %struct.rtx_def*, align 8
  %value = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %target, align 8
  store i32 0, i32* %must_trunc, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %libfcn, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %fmode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.41, %entry
  %3 = load i32, i32* %fmode, align 4
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %for.body, label %for.end.45

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  store i32 %bf.clear3, i32* %imode, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %6 = load i32, i32* %imode, align 4
  %cmp5 = icmp ne i32 %6, 0
  br i1 %cmp5, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %for.cond.4
  %7 = load i32, i32* %unsignedp.addr, align 4
  store i32 %7, i32* %doing_unsigned, align 4
  %8 = load i32, i32* %imode, align 4
  %9 = load i32, i32* %fmode, align 4
  %10 = load i32, i32* %unsignedp.addr, align 4
  %call = call i32 @can_fix_p(i32 %8, i32 %9, i32 %10, i32* %must_trunc)
  store i32 %call, i32* %icode, align 4
  %11 = load i32, i32* %icode, align 4
  %cmp7 = icmp eq i32 %11, 1317
  br i1 %cmp7, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.6
  %12 = load i32, i32* %imode, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load8 = load i32, i32* %14, align 8
  %bf.lshr9 = lshr i32 %bf.load8, 16
  %bf.clear10 = and i32 %bf.lshr9, 255
  %cmp11 = icmp ne i32 %12, %bf.clear10
  br i1 %cmp11, label %land.lhs.true.12, label %if.end

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %15 = load i32, i32* %unsignedp.addr, align 4
  %tobool = icmp ne i32 %15, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.12
  %16 = load i32, i32* %imode, align 4
  %17 = load i32, i32* %fmode, align 4
  %call13 = call i32 @can_fix_p(i32 %16, i32 %17, i32 0, i32* %must_trunc)
  store i32 %call13, i32* %icode, align 4
  store i32 0, i32* %doing_unsigned, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.12, %land.lhs.true, %for.body.6
  %18 = load i32, i32* %icode, align 4
  %cmp14 = icmp ne i32 %18, 1317
  br i1 %cmp14, label %if.then.15, label %if.end.40

if.then.15:                                       ; preds = %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call16 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %19, i32 1)
  store %struct.rtx_def* %call16, %struct.rtx_def** %to.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call17 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %20, i32 0)
  store %struct.rtx_def* %call17, %struct.rtx_def** %from.addr, align 8
  %21 = load i32, i32* %fmode, align 4
  %22 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load18 = load i32, i32* %23, align 8
  %bf.lshr19 = lshr i32 %bf.load18, 16
  %bf.clear20 = and i32 %bf.lshr19, 255
  %cmp21 = icmp ne i32 %21, %bf.clear20
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.15
  %24 = load i32, i32* %fmode, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call23 = call %struct.rtx_def* @convert_to_mode(i32 %24, %struct.rtx_def* %25, i32 0)
  store %struct.rtx_def* %call23, %struct.rtx_def** %from.addr, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.15
  %26 = load i32, i32* %must_trunc, align 4
  %tobool25 = icmp ne i32 %26, 0
  br i1 %tobool25, label %if.then.26, label %if.end.28

if.then.26:                                       ; preds = %if.end.24
  %27 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call27 = call %struct.rtx_def* @ftruncify(%struct.rtx_def* %27)
  store %struct.rtx_def* %call27, %struct.rtx_def** %from.addr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.26, %if.end.24
  %28 = load i32, i32* %imode, align 4
  %29 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load29 = load i32, i32* %30, align 8
  %bf.lshr30 = lshr i32 %bf.load29, 16
  %bf.clear31 = and i32 %bf.lshr30, 255
  %cmp32 = icmp ne i32 %28, %bf.clear31
  br i1 %cmp32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.end.28
  %31 = load i32, i32* %imode, align 4
  %call34 = call %struct.rtx_def* @gen_reg_rtx(i32 %31)
  store %struct.rtx_def* %call34, %struct.rtx_def** %target, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.end.28
  %32 = load i32, i32* %icode, align 4
  %33 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %35 = load i32, i32* %doing_unsigned, align 4
  %tobool36 = icmp ne i32 %35, 0
  %cond = select i1 %tobool36, i32 128, i32 126
  call void @emit_unop_insn(i32 %32, %struct.rtx_def* %33, %struct.rtx_def* %34, i32 %cond)
  %36 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %cmp37 = icmp ne %struct.rtx_def* %36, %37
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.end.35
  %38 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %40 = load i32, i32* %unsignedp.addr, align 4
  call void @convert_move(%struct.rtx_def* %38, %struct.rtx_def* %39, i32 %40)
  br label %if.end.39

if.end.39:                                        ; preds = %if.then.38, %if.end.35
  br label %if.end.393

if.end.40:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.40
  %41 = load i32, i32* %imode, align 4
  %idxprom = sext i32 %41 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom
  %42 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %42 to i32
  store i32 %conv, i32* %imode, align 4
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.41

for.inc.41:                                       ; preds = %for.end
  %43 = load i32, i32* %fmode, align 4
  %idxprom42 = sext i32 %43 to i64
  %arrayidx43 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom42
  %44 = load i8, i8* %arrayidx43, align 1
  %conv44 = zext i8 %44 to i32
  store i32 %conv44, i32* %fmode, align 4
  br label %for.cond

for.end.45:                                       ; preds = %for.cond
  %45 = load i32, i32* %unsignedp.addr, align 4
  %tobool46 = icmp ne i32 %45, 0
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.155

land.lhs.true.47:                                 ; preds = %for.end.45
  %46 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load48 = load i32, i32* %47, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 16
  %bf.clear50 = and i32 %bf.lshr49, 255
  %idxprom51 = sext i32 %bf.clear50 to i64
  %arrayidx52 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom51
  %48 = load i16, i16* %arrayidx52, align 2
  %conv53 = zext i16 %48 to i32
  %cmp54 = icmp sle i32 %conv53, 64
  br i1 %cmp54, label %if.then.56, label %if.end.155

if.then.56:                                       ; preds = %land.lhs.true.47
  %49 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load57 = load i32, i32* %50, align 8
  %bf.lshr58 = lshr i32 %bf.load57, 16
  %bf.clear59 = and i32 %bf.lshr58, 255
  store i32 %bf.clear59, i32* %fmode, align 4
  br label %for.cond.60

for.cond.60:                                      ; preds = %for.inc.150, %if.then.56
  %51 = load i32, i32* %fmode, align 4
  %cmp61 = icmp ne i32 %51, 0
  br i1 %cmp61, label %for.body.63, label %for.end.154

for.body.63:                                      ; preds = %for.cond.60
  %52 = load i32, i32* %fmode, align 4
  %idxprom64 = sext i32 %52 to i64
  %arrayidx65 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom64
  %53 = load i16, i16* %arrayidx65, align 2
  %conv66 = zext i16 %53 to i32
  %54 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load67 = load i32, i32* %55, align 8
  %bf.lshr68 = lshr i32 %bf.load67, 16
  %bf.clear69 = and i32 %bf.lshr68, 255
  %idxprom70 = sext i32 %bf.clear69 to i64
  %arrayidx71 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom70
  %56 = load i16, i16* %arrayidx71, align 2
  %conv72 = zext i16 %56 to i32
  %cmp73 = icmp sgt i32 %conv66, %conv72
  br i1 %cmp73, label %land.lhs.true.75, label %if.end.149

land.lhs.true.75:                                 ; preds = %for.body.63
  %57 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load76 = load i32, i32* %58, align 8
  %bf.lshr77 = lshr i32 %bf.load76, 16
  %bf.clear78 = and i32 %bf.lshr77, 255
  %59 = load i32, i32* %fmode, align 4
  %call79 = call i32 @can_fix_p(i32 %bf.clear78, i32 %59, i32 0, i32* %must_trunc)
  %cmp80 = icmp ne i32 1317, %call79
  br i1 %cmp80, label %if.then.82, label %if.end.149

if.then.82:                                       ; preds = %land.lhs.true.75
  %60 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load83 = load i32, i32* %61, align 8
  %bf.lshr84 = lshr i32 %bf.load83, 16
  %bf.clear85 = and i32 %bf.lshr84, 255
  %idxprom86 = sext i32 %bf.clear85 to i64
  %arrayidx87 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom86
  %62 = load i16, i16* %arrayidx87, align 2
  %conv88 = zext i16 %62 to i32
  store i32 %conv88, i32* %bitsize, align 4
  %63 = load i32, i32* %bitsize, align 4
  %sub = sub nsw i32 %63, 1
  call void @ereal_ldexp(%struct.realvaluetype* sret %tmp, %struct.realvaluetype* byval align 8 @dconst1, i32 %sub)
  %64 = bitcast %struct.realvaluetype* %offset to i8*
  %65 = bitcast %struct.realvaluetype* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %64, i8* %65, i64 24, i32 8, i1 false)
  %66 = load i32, i32* %fmode, align 4
  %call89 = call %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %offset, i32 %66)
  store %struct.rtx_def* %call89, %struct.rtx_def** %limit, align 8
  %call90 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call90, %struct.rtx_def** %lab1, align 8
  %call91 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call91, %struct.rtx_def** %lab2, align 8
  call void @emit_queue()
  %67 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call92 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %67, i32 1)
  store %struct.rtx_def* %call92, %struct.rtx_def** %to.addr, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call93 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %68, i32 0)
  store %struct.rtx_def* %call93, %struct.rtx_def** %from.addr, align 8
  %69 = load i32, i32* @flag_force_mem, align 4
  %tobool94 = icmp ne i32 %69, 0
  br i1 %tobool94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %if.then.82
  %70 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call96 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %70)
  store %struct.rtx_def* %call96, %struct.rtx_def** %from.addr, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %if.then.82
  %71 = load i32, i32* %fmode, align 4
  %72 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load98 = load i32, i32* %73, align 8
  %bf.lshr99 = lshr i32 %bf.load98, 16
  %bf.clear100 = and i32 %bf.lshr99, 255
  %cmp101 = icmp ne i32 %71, %bf.clear100
  br i1 %cmp101, label %if.then.103, label %if.end.105

if.then.103:                                      ; preds = %if.end.97
  %74 = load i32, i32* %fmode, align 4
  %75 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call104 = call %struct.rtx_def* @convert_to_mode(i32 %74, %struct.rtx_def* %75, i32 0)
  store %struct.rtx_def* %call104, %struct.rtx_def** %from.addr, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.103, %if.end.97
  call void @do_pending_stack_adjust()
  %76 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** %limit, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load106 = load i32, i32* %79, align 8
  %bf.lshr107 = lshr i32 %bf.load106, 16
  %bf.clear108 = and i32 %bf.lshr107, 255
  %80 = load %struct.rtx_def*, %struct.rtx_def** %lab1, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %76, %struct.rtx_def* %77, i32 104, %struct.rtx_def* null, i32 %bf.clear108, i32 0, %struct.rtx_def* %80)
  %81 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  call void @expand_fix(%struct.rtx_def* %81, %struct.rtx_def* %82, i32 0)
  %83 = load %struct.rtx_def*, %struct.rtx_def** %lab2, align 8
  %call109 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %83)
  %call110 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %call109)
  %call111 = call %struct.rtx_def* @emit_barrier()
  %84 = load %struct.rtx_def*, %struct.rtx_def** %lab1, align 8
  %call112 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %84)
  %85 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load113 = load i32, i32* %86, align 8
  %bf.lshr114 = lshr i32 %bf.load113, 16
  %bf.clear115 = and i32 %bf.lshr114, 255
  %87 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %88 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %89 = load %struct.rtx_def*, %struct.rtx_def** %limit, align 8
  %call116 = call %struct.rtx_def* @expand_binop(i32 %bf.clear115, %struct.optab* %87, %struct.rtx_def* %88, %struct.rtx_def* %89, %struct.rtx_def* null, i32 0, i32 3)
  store %struct.rtx_def* %call116, %struct.rtx_def** %target, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @expand_fix(%struct.rtx_def* %90, %struct.rtx_def* %91, i32 0)
  %92 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load117 = load i32, i32* %93, align 8
  %bf.lshr118 = lshr i32 %bf.load117, 16
  %bf.clear119 = and i32 %bf.lshr118, 255
  %94 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %95 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %96 = load i32, i32* %bitsize, align 4
  %sub120 = sub nsw i32 %96, 1
  %sh_prom = zext i32 %sub120 to i64
  %shl = shl i64 1, %sh_prom
  %97 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load121 = load i32, i32* %98, align 8
  %bf.lshr122 = lshr i32 %bf.load121, 16
  %bf.clear123 = and i32 %bf.lshr122, 255
  %call124 = call i64 @trunc_int_for_mode(i64 %shl, i32 %bf.clear123)
  %call125 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call124)
  %99 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call126 = call %struct.rtx_def* @expand_binop(i32 %bf.clear119, %struct.optab* %94, %struct.rtx_def* %95, %struct.rtx_def* %call125, %struct.rtx_def* %99, i32 1, i32 3)
  store %struct.rtx_def* %call126, %struct.rtx_def** %target, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %cmp127 = icmp ne %struct.rtx_def* %100, %101
  br i1 %cmp127, label %if.then.129, label %if.end.131

if.then.129:                                      ; preds = %if.end.105
  %102 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %103 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %call130 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %102, %struct.rtx_def* %103)
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.129, %if.end.105
  %104 = load %struct.rtx_def*, %struct.rtx_def** %lab2, align 8
  %call132 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %104)
  %105 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load133 = load i32, i32* %106, align 8
  %bf.lshr134 = lshr i32 %bf.load133, 16
  %bf.clear135 = and i32 %bf.lshr134, 255
  %idxprom136 = sext i32 %bf.clear135 to i64
  %107 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %107, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom136
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx137, i32 0, i32 0
  %108 = load i32, i32* %insn_code, align 4
  %cmp138 = icmp ne i32 %108, 1317
  br i1 %cmp138, label %if.then.140, label %if.end.148

if.then.140:                                      ; preds = %if.end.131
  %109 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %110 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call141 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %109, %struct.rtx_def* %110)
  store %struct.rtx_def* %call141, %struct.rtx_def** %insn, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %113 = bitcast %struct.rtx_def* %112 to i32*
  %bf.load142 = load i32, i32* %113, align 8
  %bf.lshr143 = lshr i32 %bf.load142, 16
  %bf.clear144 = and i32 %bf.lshr143, 255
  %114 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call145 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %114)
  %call146 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 128, i32 %bf.clear144, %struct.rtx_def* %call145)
  %call147 = call %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %111, i32 4, %struct.rtx_def* %call146)
  br label %if.end.148

if.end.148:                                       ; preds = %if.then.140, %if.end.131
  br label %if.end.393

if.end.149:                                       ; preds = %land.lhs.true.75, %for.body.63
  br label %for.inc.150

for.inc.150:                                      ; preds = %if.end.149
  %115 = load i32, i32* %fmode, align 4
  %idxprom151 = sext i32 %115 to i64
  %arrayidx152 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom151
  %116 = load i8, i8* %arrayidx152, align 1
  %conv153 = zext i8 %116 to i32
  store i32 %conv153, i32* %fmode, align 4
  br label %for.cond.60

for.end.154:                                      ; preds = %for.cond.60
  br label %if.end.155

if.end.155:                                       ; preds = %for.end.154, %land.lhs.true.47, %for.end.45
  %117 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load156 = load i32, i32* %118, align 8
  %bf.lshr157 = lshr i32 %bf.load156, 16
  %bf.clear158 = and i32 %bf.lshr157, 255
  %idxprom159 = sext i32 %bf.clear158 to i64
  %arrayidx160 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom159
  %119 = load i8, i8* %arrayidx160, align 1
  %conv161 = zext i8 %119 to i32
  %120 = load i8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @mode_size, i32 0, i64 4), align 1
  %conv162 = zext i8 %120 to i32
  %cmp163 = icmp slt i32 %conv161, %conv162
  br i1 %cmp163, label %if.then.165, label %if.else

if.then.165:                                      ; preds = %if.end.155
  %call166 = call %struct.rtx_def* @gen_reg_rtx(i32 4)
  store %struct.rtx_def* %call166, %struct.rtx_def** %target, align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %123 = load i32, i32* %unsignedp.addr, align 4
  call void @expand_fix(%struct.rtx_def* %121, %struct.rtx_def* %122, i32 %123)
  br label %if.end.352

if.else:                                          ; preds = %if.end.155
  %124 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %bf.load167 = load i32, i32* %125, align 8
  %bf.lshr168 = lshr i32 %bf.load167, 16
  %bf.clear169 = and i32 %bf.lshr168, 255
  %cmp170 = icmp eq i32 %bf.clear169, 15
  br i1 %cmp170, label %if.then.172, label %if.else.209

if.then.172:                                      ; preds = %if.else
  %126 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load173 = load i32, i32* %127, align 8
  %bf.lshr174 = lshr i32 %bf.load173, 16
  %bf.clear175 = and i32 %bf.lshr174, 255
  %cmp176 = icmp eq i32 %bf.clear175, 4
  br i1 %cmp176, label %if.then.178, label %if.else.181

if.then.178:                                      ; preds = %if.then.172
  %128 = load i32, i32* %unsignedp.addr, align 4
  %tobool179 = icmp ne i32 %128, 0
  br i1 %tobool179, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.178
  %129 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 83), align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.178
  %130 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 71), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond180 = phi %struct.rtx_def* [ %129, %cond.true ], [ %130, %cond.false ]
  store %struct.rtx_def* %cond180, %struct.rtx_def** %libfcn, align 8
  br label %if.end.208

if.else.181:                                      ; preds = %if.then.172
  %131 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %132 = bitcast %struct.rtx_def* %131 to i32*
  %bf.load182 = load i32, i32* %132, align 8
  %bf.lshr183 = lshr i32 %bf.load182, 16
  %bf.clear184 = and i32 %bf.lshr183, 255
  %cmp185 = icmp eq i32 %bf.clear184, 5
  br i1 %cmp185, label %if.then.187, label %if.else.193

if.then.187:                                      ; preds = %if.else.181
  %133 = load i32, i32* %unsignedp.addr, align 4
  %tobool188 = icmp ne i32 %133, 0
  br i1 %tobool188, label %cond.true.189, label %cond.false.190

cond.true.189:                                    ; preds = %if.then.187
  %134 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 84), align 8
  br label %cond.end.191

cond.false.190:                                   ; preds = %if.then.187
  %135 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 72), align 8
  br label %cond.end.191

cond.end.191:                                     ; preds = %cond.false.190, %cond.true.189
  %cond192 = phi %struct.rtx_def* [ %134, %cond.true.189 ], [ %135, %cond.false.190 ]
  store %struct.rtx_def* %cond192, %struct.rtx_def** %libfcn, align 8
  br label %if.end.207

if.else.193:                                      ; preds = %if.else.181
  %136 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load194 = load i32, i32* %137, align 8
  %bf.lshr195 = lshr i32 %bf.load194, 16
  %bf.clear196 = and i32 %bf.lshr195, 255
  %cmp197 = icmp eq i32 %bf.clear196, 6
  br i1 %cmp197, label %if.then.199, label %if.else.205

if.then.199:                                      ; preds = %if.else.193
  %138 = load i32, i32* %unsignedp.addr, align 4
  %tobool200 = icmp ne i32 %138, 0
  br i1 %tobool200, label %cond.true.201, label %cond.false.202

cond.true.201:                                    ; preds = %if.then.199
  %139 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 85), align 8
  br label %cond.end.203

cond.false.202:                                   ; preds = %if.then.199
  %140 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 73), align 8
  br label %cond.end.203

cond.end.203:                                     ; preds = %cond.false.202, %cond.true.201
  %cond204 = phi %struct.rtx_def* [ %139, %cond.true.201 ], [ %140, %cond.false.202 ]
  store %struct.rtx_def* %cond204, %struct.rtx_def** %libfcn, align 8
  br label %if.end.206

if.else.205:                                      ; preds = %if.else.193
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4506, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.expand_fix, i32 0, i32 0)) #6
  unreachable

if.end.206:                                       ; preds = %cond.end.203
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %cond.end.191
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %cond.end
  br label %if.end.351

if.else.209:                                      ; preds = %if.else
  %141 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %142 = bitcast %struct.rtx_def* %141 to i32*
  %bf.load210 = load i32, i32* %142, align 8
  %bf.lshr211 = lshr i32 %bf.load210, 16
  %bf.clear212 = and i32 %bf.lshr211, 255
  %cmp213 = icmp eq i32 %bf.clear212, 16
  br i1 %cmp213, label %if.then.215, label %if.else.255

if.then.215:                                      ; preds = %if.else.209
  %143 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %144 = bitcast %struct.rtx_def* %143 to i32*
  %bf.load216 = load i32, i32* %144, align 8
  %bf.lshr217 = lshr i32 %bf.load216, 16
  %bf.clear218 = and i32 %bf.lshr217, 255
  %cmp219 = icmp eq i32 %bf.clear218, 4
  br i1 %cmp219, label %if.then.221, label %if.else.227

if.then.221:                                      ; preds = %if.then.215
  %145 = load i32, i32* %unsignedp.addr, align 4
  %tobool222 = icmp ne i32 %145, 0
  br i1 %tobool222, label %cond.true.223, label %cond.false.224

cond.true.223:                                    ; preds = %if.then.221
  %146 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 86), align 8
  br label %cond.end.225

cond.false.224:                                   ; preds = %if.then.221
  %147 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 74), align 8
  br label %cond.end.225

cond.end.225:                                     ; preds = %cond.false.224, %cond.true.223
  %cond226 = phi %struct.rtx_def* [ %146, %cond.true.223 ], [ %147, %cond.false.224 ]
  store %struct.rtx_def* %cond226, %struct.rtx_def** %libfcn, align 8
  br label %if.end.254

if.else.227:                                      ; preds = %if.then.215
  %148 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %149 = bitcast %struct.rtx_def* %148 to i32*
  %bf.load228 = load i32, i32* %149, align 8
  %bf.lshr229 = lshr i32 %bf.load228, 16
  %bf.clear230 = and i32 %bf.lshr229, 255
  %cmp231 = icmp eq i32 %bf.clear230, 5
  br i1 %cmp231, label %if.then.233, label %if.else.239

if.then.233:                                      ; preds = %if.else.227
  %150 = load i32, i32* %unsignedp.addr, align 4
  %tobool234 = icmp ne i32 %150, 0
  br i1 %tobool234, label %cond.true.235, label %cond.false.236

cond.true.235:                                    ; preds = %if.then.233
  %151 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 87), align 8
  br label %cond.end.237

cond.false.236:                                   ; preds = %if.then.233
  %152 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 75), align 8
  br label %cond.end.237

cond.end.237:                                     ; preds = %cond.false.236, %cond.true.235
  %cond238 = phi %struct.rtx_def* [ %151, %cond.true.235 ], [ %152, %cond.false.236 ]
  store %struct.rtx_def* %cond238, %struct.rtx_def** %libfcn, align 8
  br label %if.end.253

if.else.239:                                      ; preds = %if.else.227
  %153 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %154 = bitcast %struct.rtx_def* %153 to i32*
  %bf.load240 = load i32, i32* %154, align 8
  %bf.lshr241 = lshr i32 %bf.load240, 16
  %bf.clear242 = and i32 %bf.lshr241, 255
  %cmp243 = icmp eq i32 %bf.clear242, 6
  br i1 %cmp243, label %if.then.245, label %if.else.251

if.then.245:                                      ; preds = %if.else.239
  %155 = load i32, i32* %unsignedp.addr, align 4
  %tobool246 = icmp ne i32 %155, 0
  br i1 %tobool246, label %cond.true.247, label %cond.false.248

cond.true.247:                                    ; preds = %if.then.245
  %156 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 88), align 8
  br label %cond.end.249

cond.false.248:                                   ; preds = %if.then.245
  %157 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 76), align 8
  br label %cond.end.249

cond.end.249:                                     ; preds = %cond.false.248, %cond.true.247
  %cond250 = phi %struct.rtx_def* [ %156, %cond.true.247 ], [ %157, %cond.false.248 ]
  store %struct.rtx_def* %cond250, %struct.rtx_def** %libfcn, align 8
  br label %if.end.252

if.else.251:                                      ; preds = %if.else.239
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4517, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.expand_fix, i32 0, i32 0)) #6
  unreachable

if.end.252:                                       ; preds = %cond.end.249
  br label %if.end.253

if.end.253:                                       ; preds = %if.end.252, %cond.end.237
  br label %if.end.254

if.end.254:                                       ; preds = %if.end.253, %cond.end.225
  br label %if.end.350

if.else.255:                                      ; preds = %if.else.209
  %158 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %159 = bitcast %struct.rtx_def* %158 to i32*
  %bf.load256 = load i32, i32* %159, align 8
  %bf.lshr257 = lshr i32 %bf.load256, 16
  %bf.clear258 = and i32 %bf.lshr257, 255
  %cmp259 = icmp eq i32 %bf.clear258, 17
  br i1 %cmp259, label %if.then.261, label %if.else.301

if.then.261:                                      ; preds = %if.else.255
  %160 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %161 = bitcast %struct.rtx_def* %160 to i32*
  %bf.load262 = load i32, i32* %161, align 8
  %bf.lshr263 = lshr i32 %bf.load262, 16
  %bf.clear264 = and i32 %bf.lshr263, 255
  %cmp265 = icmp eq i32 %bf.clear264, 4
  br i1 %cmp265, label %if.then.267, label %if.else.273

if.then.267:                                      ; preds = %if.then.261
  %162 = load i32, i32* %unsignedp.addr, align 4
  %tobool268 = icmp ne i32 %162, 0
  br i1 %tobool268, label %cond.true.269, label %cond.false.270

cond.true.269:                                    ; preds = %if.then.267
  %163 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 89), align 8
  br label %cond.end.271

cond.false.270:                                   ; preds = %if.then.267
  %164 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 77), align 8
  br label %cond.end.271

cond.end.271:                                     ; preds = %cond.false.270, %cond.true.269
  %cond272 = phi %struct.rtx_def* [ %163, %cond.true.269 ], [ %164, %cond.false.270 ]
  store %struct.rtx_def* %cond272, %struct.rtx_def** %libfcn, align 8
  br label %if.end.300

if.else.273:                                      ; preds = %if.then.261
  %165 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %166 = bitcast %struct.rtx_def* %165 to i32*
  %bf.load274 = load i32, i32* %166, align 8
  %bf.lshr275 = lshr i32 %bf.load274, 16
  %bf.clear276 = and i32 %bf.lshr275, 255
  %cmp277 = icmp eq i32 %bf.clear276, 5
  br i1 %cmp277, label %if.then.279, label %if.else.285

if.then.279:                                      ; preds = %if.else.273
  %167 = load i32, i32* %unsignedp.addr, align 4
  %tobool280 = icmp ne i32 %167, 0
  br i1 %tobool280, label %cond.true.281, label %cond.false.282

cond.true.281:                                    ; preds = %if.then.279
  %168 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 90), align 8
  br label %cond.end.283

cond.false.282:                                   ; preds = %if.then.279
  %169 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 78), align 8
  br label %cond.end.283

cond.end.283:                                     ; preds = %cond.false.282, %cond.true.281
  %cond284 = phi %struct.rtx_def* [ %168, %cond.true.281 ], [ %169, %cond.false.282 ]
  store %struct.rtx_def* %cond284, %struct.rtx_def** %libfcn, align 8
  br label %if.end.299

if.else.285:                                      ; preds = %if.else.273
  %170 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %171 = bitcast %struct.rtx_def* %170 to i32*
  %bf.load286 = load i32, i32* %171, align 8
  %bf.lshr287 = lshr i32 %bf.load286, 16
  %bf.clear288 = and i32 %bf.lshr287, 255
  %cmp289 = icmp eq i32 %bf.clear288, 6
  br i1 %cmp289, label %if.then.291, label %if.else.297

if.then.291:                                      ; preds = %if.else.285
  %172 = load i32, i32* %unsignedp.addr, align 4
  %tobool292 = icmp ne i32 %172, 0
  br i1 %tobool292, label %cond.true.293, label %cond.false.294

cond.true.293:                                    ; preds = %if.then.291
  %173 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 91), align 8
  br label %cond.end.295

cond.false.294:                                   ; preds = %if.then.291
  %174 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 79), align 8
  br label %cond.end.295

cond.end.295:                                     ; preds = %cond.false.294, %cond.true.293
  %cond296 = phi %struct.rtx_def* [ %173, %cond.true.293 ], [ %174, %cond.false.294 ]
  store %struct.rtx_def* %cond296, %struct.rtx_def** %libfcn, align 8
  br label %if.end.298

if.else.297:                                      ; preds = %if.else.285
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4528, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.expand_fix, i32 0, i32 0)) #6
  unreachable

if.end.298:                                       ; preds = %cond.end.295
  br label %if.end.299

if.end.299:                                       ; preds = %if.end.298, %cond.end.283
  br label %if.end.300

if.end.300:                                       ; preds = %if.end.299, %cond.end.271
  br label %if.end.349

if.else.301:                                      ; preds = %if.else.255
  %175 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %176 = bitcast %struct.rtx_def* %175 to i32*
  %bf.load302 = load i32, i32* %176, align 8
  %bf.lshr303 = lshr i32 %bf.load302, 16
  %bf.clear304 = and i32 %bf.lshr303, 255
  %cmp305 = icmp eq i32 %bf.clear304, 18
  br i1 %cmp305, label %if.then.307, label %if.else.347

if.then.307:                                      ; preds = %if.else.301
  %177 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %178 = bitcast %struct.rtx_def* %177 to i32*
  %bf.load308 = load i32, i32* %178, align 8
  %bf.lshr309 = lshr i32 %bf.load308, 16
  %bf.clear310 = and i32 %bf.lshr309, 255
  %cmp311 = icmp eq i32 %bf.clear310, 4
  br i1 %cmp311, label %if.then.313, label %if.else.319

if.then.313:                                      ; preds = %if.then.307
  %179 = load i32, i32* %unsignedp.addr, align 4
  %tobool314 = icmp ne i32 %179, 0
  br i1 %tobool314, label %cond.true.315, label %cond.false.316

cond.true.315:                                    ; preds = %if.then.313
  %180 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 92), align 8
  br label %cond.end.317

cond.false.316:                                   ; preds = %if.then.313
  %181 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 80), align 8
  br label %cond.end.317

cond.end.317:                                     ; preds = %cond.false.316, %cond.true.315
  %cond318 = phi %struct.rtx_def* [ %180, %cond.true.315 ], [ %181, %cond.false.316 ]
  store %struct.rtx_def* %cond318, %struct.rtx_def** %libfcn, align 8
  br label %if.end.346

if.else.319:                                      ; preds = %if.then.307
  %182 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %183 = bitcast %struct.rtx_def* %182 to i32*
  %bf.load320 = load i32, i32* %183, align 8
  %bf.lshr321 = lshr i32 %bf.load320, 16
  %bf.clear322 = and i32 %bf.lshr321, 255
  %cmp323 = icmp eq i32 %bf.clear322, 5
  br i1 %cmp323, label %if.then.325, label %if.else.331

if.then.325:                                      ; preds = %if.else.319
  %184 = load i32, i32* %unsignedp.addr, align 4
  %tobool326 = icmp ne i32 %184, 0
  br i1 %tobool326, label %cond.true.327, label %cond.false.328

cond.true.327:                                    ; preds = %if.then.325
  %185 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 93), align 8
  br label %cond.end.329

cond.false.328:                                   ; preds = %if.then.325
  %186 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 81), align 8
  br label %cond.end.329

cond.end.329:                                     ; preds = %cond.false.328, %cond.true.327
  %cond330 = phi %struct.rtx_def* [ %185, %cond.true.327 ], [ %186, %cond.false.328 ]
  store %struct.rtx_def* %cond330, %struct.rtx_def** %libfcn, align 8
  br label %if.end.345

if.else.331:                                      ; preds = %if.else.319
  %187 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %188 = bitcast %struct.rtx_def* %187 to i32*
  %bf.load332 = load i32, i32* %188, align 8
  %bf.lshr333 = lshr i32 %bf.load332, 16
  %bf.clear334 = and i32 %bf.lshr333, 255
  %cmp335 = icmp eq i32 %bf.clear334, 6
  br i1 %cmp335, label %if.then.337, label %if.else.343

if.then.337:                                      ; preds = %if.else.331
  %189 = load i32, i32* %unsignedp.addr, align 4
  %tobool338 = icmp ne i32 %189, 0
  br i1 %tobool338, label %cond.true.339, label %cond.false.340

cond.true.339:                                    ; preds = %if.then.337
  %190 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 94), align 8
  br label %cond.end.341

cond.false.340:                                   ; preds = %if.then.337
  %191 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 82), align 8
  br label %cond.end.341

cond.end.341:                                     ; preds = %cond.false.340, %cond.true.339
  %cond342 = phi %struct.rtx_def* [ %190, %cond.true.339 ], [ %191, %cond.false.340 ]
  store %struct.rtx_def* %cond342, %struct.rtx_def** %libfcn, align 8
  br label %if.end.344

if.else.343:                                      ; preds = %if.else.331
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4539, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.expand_fix, i32 0, i32 0)) #6
  unreachable

if.end.344:                                       ; preds = %cond.end.341
  br label %if.end.345

if.end.345:                                       ; preds = %if.end.344, %cond.end.329
  br label %if.end.346

if.end.346:                                       ; preds = %if.end.345, %cond.end.317
  br label %if.end.348

if.else.347:                                      ; preds = %if.else.301
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 4542, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__FUNCTION__.expand_fix, i32 0, i32 0)) #6
  unreachable

if.end.348:                                       ; preds = %if.end.346
  br label %if.end.349

if.end.349:                                       ; preds = %if.end.348, %if.end.300
  br label %if.end.350

if.end.350:                                       ; preds = %if.end.349, %if.end.254
  br label %if.end.351

if.end.351:                                       ; preds = %if.end.350, %if.end.208
  br label %if.end.352

if.end.352:                                       ; preds = %if.end.351, %if.then.165
  %192 = load %struct.rtx_def*, %struct.rtx_def** %libfcn, align 8
  %tobool353 = icmp ne %struct.rtx_def* %192, null
  br i1 %tobool353, label %if.then.354, label %if.end.377

if.then.354:                                      ; preds = %if.end.352
  %193 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call357 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %193, i32 1)
  store %struct.rtx_def* %call357, %struct.rtx_def** %to.addr, align 8
  %194 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call358 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %194, i32 0)
  store %struct.rtx_def* %call358, %struct.rtx_def** %from.addr, align 8
  %195 = load i32, i32* @flag_force_mem, align 4
  %tobool359 = icmp ne i32 %195, 0
  br i1 %tobool359, label %if.then.360, label %if.end.362

if.then.360:                                      ; preds = %if.then.354
  %196 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call361 = call %struct.rtx_def* @force_not_mem(%struct.rtx_def* %196)
  store %struct.rtx_def* %call361, %struct.rtx_def** %from.addr, align 8
  br label %if.end.362

if.end.362:                                       ; preds = %if.then.360, %if.then.354
  call void @start_sequence()
  %197 = load %struct.rtx_def*, %struct.rtx_def** %libfcn, align 8
  %198 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %199 = bitcast %struct.rtx_def* %198 to i32*
  %bf.load363 = load i32, i32* %199, align 8
  %bf.lshr364 = lshr i32 %bf.load363, 16
  %bf.clear365 = and i32 %bf.lshr364, 255
  %200 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %201 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %202 = bitcast %struct.rtx_def* %201 to i32*
  %bf.load366 = load i32, i32* %202, align 8
  %bf.lshr367 = lshr i32 %bf.load366, 16
  %bf.clear368 = and i32 %bf.lshr367, 255
  %call369 = call %struct.rtx_def* (%struct.rtx_def*, %struct.rtx_def*, i32, i32, i32, ...) @emit_library_call_value(%struct.rtx_def* %197, %struct.rtx_def* null, i32 1, i32 %bf.clear365, i32 1, %struct.rtx_def* %200, i32 %bf.clear368)
  store %struct.rtx_def* %call369, %struct.rtx_def** %value, align 8
  %call370 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call370, %struct.rtx_def** %insns, align 8
  call void @end_sequence()
  %203 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  %204 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %205 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %206 = load i32, i32* %unsignedp.addr, align 4
  %tobool371 = icmp ne i32 %206, 0
  %cond372 = select i1 %tobool371, i32 128, i32 126
  %207 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %208 = bitcast %struct.rtx_def* %207 to i32*
  %bf.load373 = load i32, i32* %208, align 8
  %bf.lshr374 = lshr i32 %bf.load373, 16
  %bf.clear375 = and i32 %bf.lshr374, 255
  %209 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call376 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 %cond372, i32 %bf.clear375, %struct.rtx_def* %209)
  call void @emit_libcall_block(%struct.rtx_def* %203, %struct.rtx_def* %204, %struct.rtx_def* %205, %struct.rtx_def* %call376)
  br label %if.end.377

if.end.377:                                       ; preds = %if.end.362, %if.end.352
  %210 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %cmp378 = icmp ne %struct.rtx_def* %210, %211
  br i1 %cmp378, label %if.then.380, label %if.end.393

if.then.380:                                      ; preds = %if.end.377
  %212 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %213 = bitcast %struct.rtx_def* %212 to i32*
  %bf.load381 = load i32, i32* %213, align 8
  %bf.lshr382 = lshr i32 %bf.load381, 16
  %bf.clear383 = and i32 %bf.lshr382, 255
  %214 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %215 = bitcast %struct.rtx_def* %214 to i32*
  %bf.load384 = load i32, i32* %215, align 8
  %bf.lshr385 = lshr i32 %bf.load384, 16
  %bf.clear386 = and i32 %bf.lshr385, 255
  %cmp387 = icmp eq i32 %bf.clear383, %bf.clear386
  br i1 %cmp387, label %if.then.389, label %if.else.391

if.then.389:                                      ; preds = %if.then.380
  %216 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %217 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  %call390 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %216, %struct.rtx_def* %217)
  br label %if.end.392

if.else.391:                                      ; preds = %if.then.380
  %218 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %219 = load %struct.rtx_def*, %struct.rtx_def** %target, align 8
  call void @convert_move(%struct.rtx_def* %218, %struct.rtx_def* %219, i32 0)
  br label %if.end.392

if.end.392:                                       ; preds = %if.else.391, %if.then.389
  br label %if.end.393

if.end.393:                                       ; preds = %if.end.39, %if.end.148, %if.end.392, %if.end.377
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @can_fix_p(i32 %fixmode, i32 %fltmode, i32 %unsignedp, i32* %truncp_ptr) #0 {
entry:
  %retval = alloca i32, align 4
  %fixmode.addr = alloca i32, align 4
  %fltmode.addr = alloca i32, align 4
  %unsignedp.addr = alloca i32, align 4
  %truncp_ptr.addr = alloca i32*, align 8
  store i32 %fixmode, i32* %fixmode.addr, align 4
  store i32 %fltmode, i32* %fltmode.addr, align 4
  store i32 %unsignedp, i32* %unsignedp.addr, align 4
  store i32* %truncp_ptr, i32** %truncp_ptr.addr, align 8
  %0 = load i32*, i32** %truncp_ptr.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load i32, i32* %unsignedp.addr, align 4
  %cmp = icmp ne i32 %1, 0
  %conv = zext i1 %cmp to i32
  %idxprom = sext i32 %conv to i64
  %2 = load i32, i32* %fixmode.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load i32, i32* %fltmode.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 %idxprom2
  %arrayidx3 = getelementptr inbounds [59 x [2 x i32]], [59 x [2 x i32]]* %arrayidx, i32 0, i64 %idxprom1
  %arrayidx4 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx3, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx4, align 4
  %cmp5 = icmp ne i32 %4, 1317
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %unsignedp.addr, align 4
  %cmp7 = icmp ne i32 %5, 0
  %conv8 = zext i1 %cmp7 to i32
  %idxprom9 = sext i32 %conv8 to i64
  %6 = load i32, i32* %fixmode.addr, align 4
  %idxprom10 = sext i32 %6 to i64
  %7 = load i32, i32* %fltmode.addr, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 %idxprom11
  %arrayidx13 = getelementptr inbounds [59 x [2 x i32]], [59 x [2 x i32]]* %arrayidx12, i32 0, i64 %idxprom10
  %arrayidx14 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx13, i32 0, i64 %idxprom9
  %8 = load i32, i32* %arrayidx14, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %fltmode.addr, align 4
  %idxprom15 = sext i32 %9 to i64
  %10 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 17), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %10, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom15
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx16, i32 0, i32 0
  %11 = load i32, i32* %insn_code, align 4
  %cmp17 = icmp ne i32 %11, 1317
  br i1 %cmp17, label %if.then.19, label %if.end.28

if.then.19:                                       ; preds = %if.end
  %12 = load i32*, i32** %truncp_ptr.addr, align 8
  store i32 1, i32* %12, align 4
  %13 = load i32, i32* %unsignedp.addr, align 4
  %cmp20 = icmp ne i32 %13, 0
  %conv21 = zext i1 %cmp20 to i32
  %idxprom22 = sext i32 %conv21 to i64
  %14 = load i32, i32* %fixmode.addr, align 4
  %idxprom23 = sext i32 %14 to i64
  %15 = load i32, i32* %fltmode.addr, align 4
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds [59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtab, i32 0, i64 %idxprom24
  %arrayidx26 = getelementptr inbounds [59 x [2 x i32]], [59 x [2 x i32]]* %arrayidx25, i32 0, i64 %idxprom23
  %arrayidx27 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx26, i32 0, i64 %idxprom22
  %16 = load i32, i32* %arrayidx27, align 4
  store i32 %16, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.end
  store i32 1317, i32* %retval
  br label %return

return:                                           ; preds = %if.end.28, %if.then.19, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @ftruncify(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %call = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear)
  store %struct.rtx_def* %call, %struct.rtx_def** %temp, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  %4 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 17), align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %call4 = call %struct.rtx_def* @expand_unop(i32 %bf.clear3, %struct.optab* %4, %struct.rtx_def* %5, %struct.rtx_def* %6, i32 0)
  ret %struct.rtx_def* %call4
}

declare i64 @trunc_int_for_mode(i64, i32) #2

; Function Attrs: nounwind uwtable
define i32 @have_insn_for(i32 %code, i32 %mode) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [154 x %struct.optab*], [154 x %struct.optab*]* @code_to_optab, i32 0, i64 %idxprom
  %1 = load %struct.optab*, %struct.optab** %arrayidx, align 8
  %cmp = icmp ne %struct.optab* %1, null
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load i32, i32* %code.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [154 x %struct.optab*], [154 x %struct.optab*]* @code_to_optab, i32 0, i64 %idxprom2
  %4 = load %struct.optab*, %struct.optab** %arrayidx3, align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %4, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom1
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx4, i32 0, i32 0
  %5 = load i32, i32* %insn_code, align 4
  %cmp5 = icmp ne i32 %5, 1317
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %cmp5, %land.rhs ]
  %land.ext = zext i1 %6 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @init_one_libfunc(i8* %name) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %decl = alloca %union.tree_node*, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %name.addr, align 8
  %call = call %union.tree_node* @get_identifier(i8* %0)
  %1 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([11 x %union.tree_node*], [11 x %union.tree_node*]* @integer_types, i32 0, i64 5), align 8
  %call1 = call %union.tree_node* @build_function_type(%union.tree_node* %1, %union.tree_node* null)
  %call2 = call %union.tree_node* @build_decl(i32 30, %union.tree_node* %call, %union.tree_node* %call1)
  store %union.tree_node* %call2, %union.tree_node** %decl, align 8
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl3 = bitcast %union.tree_node* %2 to %struct.tree_decl*
  %artificial_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl3, i32 0, i32 5
  %3 = bitcast i48* %artificial_flag to i64*
  %bf.load = load i64, i64* %3, align 8
  %bf.clear = and i64 %bf.load, -4194305
  %bf.set = or i64 %bf.clear, 4194304
  store i64 %bf.set, i64* %3, align 8
  %4 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl4 = bitcast %union.tree_node* %4 to %struct.tree_decl*
  %external_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 5
  %5 = bitcast i48* %external_flag to i64*
  %bf.load5 = load i64, i64* %5, align 8
  %bf.clear6 = and i64 %bf.load5, -257
  %bf.set7 = or i64 %bf.clear6, 256
  store i64 %bf.set7, i64* %5, align 8
  %6 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %6 to %struct.tree_common*
  %public_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load8 = load i32, i32* %public_flag, align 8
  %bf.clear9 = and i32 %bf.load8, -524289
  %bf.set10 = or i32 %bf.clear9, 524288
  store i32 %bf.set10, i32* %public_flag, align 8
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl11 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl11, i32 0, i32 17
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool = icmp ne %struct.rtx_def* %8, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %9 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl12 = bitcast %union.tree_node* %9 to %struct.tree_decl*
  %rtl13 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl12, i32 0, i32 17
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtl13, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %11 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @make_decl_rtl(%union.tree_node* %11, i8* null)
  %12 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl14 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %rtl15 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl14, i32 0, i32 17
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtl15, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %10, %cond.true ], [ %13, %cond.false ]
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %cond, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  ret %struct.rtx_def* %14
}

declare %union.tree_node* @build_decl(i32, %union.tree_node*, %union.tree_node*) #2

declare %union.tree_node* @get_identifier(i8*) #2

declare %union.tree_node* @build_function_type(%union.tree_node*, %union.tree_node*) #2

declare void @make_decl_rtl(%union.tree_node*, i8*) #2

; Function Attrs: nounwind uwtable
define void @mark_optab(i8* %arg) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %o = alloca %struct.optab*, align 8
  %i = alloca i32, align 4
  %r__ = alloca %struct.rtx_def*, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = bitcast i8* %0 to %struct.optab**
  %2 = load %struct.optab*, %struct.optab** %1, align 8
  store %struct.optab* %2, %struct.optab** %o, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %3, 59
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load %struct.optab*, %struct.optab** %o, align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %libfunc = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %libfunc, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %r__, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp1 = icmp ne %struct.rtx_def* %7, null
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %9 = bitcast %struct.rtx_def* %8 to i8*
  %call = call i32 @ggc_set_mark(i8* %9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @ggc_set_mark(i8*) #2

declare void @ggc_mark_rtx_children(%struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define void @init_optabs() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.19, %entry
  %0 = load i32, i32* %i, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 59
  br i1 %cmp, label %for.body, label %for.end.21

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc.16, %for.body
  %1 = load i32, i32* %j, align 4
  %conv3 = zext i32 %1 to i64
  %cmp4 = icmp ult i64 %conv3, 59
  br i1 %cmp4, label %for.body.6, label %for.end.18

for.body.6:                                       ; preds = %for.cond.2
  store i32 0, i32* %k, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %for.body.6
  %2 = load i32, i32* %k, align 4
  %conv8 = zext i32 %2 to i64
  %cmp9 = icmp ult i64 %conv8, 2
  br i1 %cmp9, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.7
  %3 = load i32, i32* %k, align 4
  %idxprom = zext i32 %3 to i64
  %4 = load i32, i32* %j, align 4
  %idxprom12 = zext i32 %4 to i64
  %5 = load i32, i32* %i, align 4
  %idxprom13 = zext i32 %5 to i64
  %arrayidx = getelementptr inbounds [59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtab, i32 0, i64 %idxprom13
  %arrayidx14 = getelementptr inbounds [59 x [2 x i32]], [59 x [2 x i32]]* %arrayidx, i32 0, i64 %idxprom12
  %arrayidx15 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx14, i32 0, i64 %idxprom
  store i32 1317, i32* %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.11
  %6 = load i32, i32* %k, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %k, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %for.inc.16

for.inc.16:                                       ; preds = %for.end
  %7 = load i32, i32* %j, align 4
  %inc17 = add i32 %7, 1
  store i32 %inc17, i32* %j, align 4
  br label %for.cond.2

for.end.18:                                       ; preds = %for.cond.2
  br label %for.inc.19

for.inc.19:                                       ; preds = %for.end.18
  %8 = load i32, i32* %i, align 4
  %inc20 = add i32 %8, 1
  store i32 %inc20, i32* %i, align 4
  br label %for.cond

for.end.21:                                       ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.49, %for.end.21
  %9 = load i32, i32* %i, align 4
  %conv23 = zext i32 %9 to i64
  %cmp24 = icmp ult i64 %conv23, 59
  br i1 %cmp24, label %for.body.26, label %for.end.51

for.body.26:                                      ; preds = %for.cond.22
  store i32 0, i32* %j, align 4
  br label %for.cond.27

for.cond.27:                                      ; preds = %for.inc.46, %for.body.26
  %10 = load i32, i32* %j, align 4
  %conv28 = zext i32 %10 to i64
  %cmp29 = icmp ult i64 %conv28, 59
  br i1 %cmp29, label %for.body.31, label %for.end.48

for.body.31:                                      ; preds = %for.cond.27
  store i32 0, i32* %k, align 4
  br label %for.cond.32

for.cond.32:                                      ; preds = %for.inc.43, %for.body.31
  %11 = load i32, i32* %k, align 4
  %conv33 = zext i32 %11 to i64
  %cmp34 = icmp ult i64 %conv33, 2
  br i1 %cmp34, label %for.body.36, label %for.end.45

for.body.36:                                      ; preds = %for.cond.32
  %12 = load i32, i32* %k, align 4
  %idxprom37 = zext i32 %12 to i64
  %13 = load i32, i32* %j, align 4
  %idxprom38 = zext i32 %13 to i64
  %14 = load i32, i32* %i, align 4
  %idxprom39 = zext i32 %14 to i64
  %arrayidx40 = getelementptr inbounds [59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @fixtrunctab, i32 0, i64 %idxprom39
  %arrayidx41 = getelementptr inbounds [59 x [2 x i32]], [59 x [2 x i32]]* %arrayidx40, i32 0, i64 %idxprom38
  %arrayidx42 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx41, i32 0, i64 %idxprom37
  store i32 1317, i32* %arrayidx42, align 4
  br label %for.inc.43

for.inc.43:                                       ; preds = %for.body.36
  %15 = load i32, i32* %k, align 4
  %inc44 = add i32 %15, 1
  store i32 %inc44, i32* %k, align 4
  br label %for.cond.32

for.end.45:                                       ; preds = %for.cond.32
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.end.45
  %16 = load i32, i32* %j, align 4
  %inc47 = add i32 %16, 1
  store i32 %inc47, i32* %j, align 4
  br label %for.cond.27

for.end.48:                                       ; preds = %for.cond.27
  br label %for.inc.49

for.inc.49:                                       ; preds = %for.end.48
  %17 = load i32, i32* %i, align 4
  %inc50 = add i32 %17, 1
  store i32 %inc50, i32* %i, align 4
  br label %for.cond.22

for.end.51:                                       ; preds = %for.cond.22
  store i32 0, i32* %i, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.79, %for.end.51
  %18 = load i32, i32* %i, align 4
  %conv53 = zext i32 %18 to i64
  %cmp54 = icmp ult i64 %conv53, 59
  br i1 %cmp54, label %for.body.56, label %for.end.81

for.body.56:                                      ; preds = %for.cond.52
  store i32 0, i32* %j, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.76, %for.body.56
  %19 = load i32, i32* %j, align 4
  %conv58 = zext i32 %19 to i64
  %cmp59 = icmp ult i64 %conv58, 59
  br i1 %cmp59, label %for.body.61, label %for.end.78

for.body.61:                                      ; preds = %for.cond.57
  store i32 0, i32* %k, align 4
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.73, %for.body.61
  %20 = load i32, i32* %k, align 4
  %conv63 = zext i32 %20 to i64
  %cmp64 = icmp ult i64 %conv63, 2
  br i1 %cmp64, label %for.body.66, label %for.end.75

for.body.66:                                      ; preds = %for.cond.62
  %21 = load i32, i32* %k, align 4
  %idxprom67 = zext i32 %21 to i64
  %22 = load i32, i32* %j, align 4
  %idxprom68 = zext i32 %22 to i64
  %23 = load i32, i32* %i, align 4
  %idxprom69 = zext i32 %23 to i64
  %arrayidx70 = getelementptr inbounds [59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @floattab, i32 0, i64 %idxprom69
  %arrayidx71 = getelementptr inbounds [59 x [2 x i32]], [59 x [2 x i32]]* %arrayidx70, i32 0, i64 %idxprom68
  %arrayidx72 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx71, i32 0, i64 %idxprom67
  store i32 1317, i32* %arrayidx72, align 4
  br label %for.inc.73

for.inc.73:                                       ; preds = %for.body.66
  %24 = load i32, i32* %k, align 4
  %inc74 = add i32 %24, 1
  store i32 %inc74, i32* %k, align 4
  br label %for.cond.62

for.end.75:                                       ; preds = %for.cond.62
  br label %for.inc.76

for.inc.76:                                       ; preds = %for.end.75
  %25 = load i32, i32* %j, align 4
  %inc77 = add i32 %25, 1
  store i32 %inc77, i32* %j, align 4
  br label %for.cond.57

for.end.78:                                       ; preds = %for.cond.57
  br label %for.inc.79

for.inc.79:                                       ; preds = %for.end.78
  %26 = load i32, i32* %i, align 4
  %inc80 = add i32 %26, 1
  store i32 %inc80, i32* %i, align 4
  br label %for.cond.52

for.end.81:                                       ; preds = %for.cond.52
  store i32 0, i32* %i, align 4
  br label %for.cond.82

for.cond.82:                                      ; preds = %for.inc.109, %for.end.81
  %27 = load i32, i32* %i, align 4
  %conv83 = zext i32 %27 to i64
  %cmp84 = icmp ult i64 %conv83, 59
  br i1 %cmp84, label %for.body.86, label %for.end.111

for.body.86:                                      ; preds = %for.cond.82
  store i32 0, i32* %j, align 4
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.106, %for.body.86
  %28 = load i32, i32* %j, align 4
  %conv88 = zext i32 %28 to i64
  %cmp89 = icmp ult i64 %conv88, 59
  br i1 %cmp89, label %for.body.91, label %for.end.108

for.body.91:                                      ; preds = %for.cond.87
  store i32 0, i32* %k, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.103, %for.body.91
  %29 = load i32, i32* %k, align 4
  %conv93 = zext i32 %29 to i64
  %cmp94 = icmp ult i64 %conv93, 2
  br i1 %cmp94, label %for.body.96, label %for.end.105

for.body.96:                                      ; preds = %for.cond.92
  %30 = load i32, i32* %k, align 4
  %idxprom97 = zext i32 %30 to i64
  %31 = load i32, i32* %j, align 4
  %idxprom98 = zext i32 %31 to i64
  %32 = load i32, i32* %i, align 4
  %idxprom99 = zext i32 %32 to i64
  %arrayidx100 = getelementptr inbounds [59 x [59 x [2 x i32]]], [59 x [59 x [2 x i32]]]* @extendtab, i32 0, i64 %idxprom99
  %arrayidx101 = getelementptr inbounds [59 x [2 x i32]], [59 x [2 x i32]]* %arrayidx100, i32 0, i64 %idxprom98
  %arrayidx102 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx101, i32 0, i64 %idxprom97
  store i32 1317, i32* %arrayidx102, align 4
  br label %for.inc.103

for.inc.103:                                      ; preds = %for.body.96
  %33 = load i32, i32* %k, align 4
  %inc104 = add i32 %33, 1
  store i32 %inc104, i32* %k, align 4
  br label %for.cond.92

for.end.105:                                      ; preds = %for.cond.92
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.105
  %34 = load i32, i32* %j, align 4
  %inc107 = add i32 %34, 1
  store i32 %inc107, i32* %j, align 4
  br label %for.cond.87

for.end.108:                                      ; preds = %for.cond.87
  br label %for.inc.109

for.inc.109:                                      ; preds = %for.end.108
  %35 = load i32, i32* %i, align 4
  %inc110 = add i32 %35, 1
  store i32 %inc110, i32* %i, align 4
  br label %for.cond.82

for.end.111:                                      ; preds = %for.cond.82
  store i32 0, i32* %i, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.118, %for.end.111
  %36 = load i32, i32* %i, align 4
  %cmp113 = icmp ult i32 %36, 153
  br i1 %cmp113, label %for.body.115, label %for.end.120

for.body.115:                                     ; preds = %for.cond.112
  %37 = load i32, i32* %i, align 4
  %idxprom116 = zext i32 %37 to i64
  %arrayidx117 = getelementptr inbounds [153 x i32], [153 x i32]* @setcc_gen_code, i32 0, i64 %idxprom116
  store i32 1317, i32* %arrayidx117, align 4
  br label %for.inc.118

for.inc.118:                                      ; preds = %for.body.115
  %38 = load i32, i32* %i, align 4
  %inc119 = add i32 %38, 1
  store i32 %inc119, i32* %i, align 4
  br label %for.cond.112

for.end.120:                                      ; preds = %for.cond.112
  store i32 0, i32* %i, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.127, %for.end.120
  %39 = load i32, i32* %i, align 4
  %cmp122 = icmp ult i32 %39, 59
  br i1 %cmp122, label %for.body.124, label %for.end.129

for.body.124:                                     ; preds = %for.cond.121
  %40 = load i32, i32* %i, align 4
  %idxprom125 = zext i32 %40 to i64
  %arrayidx126 = getelementptr inbounds [59 x i32], [59 x i32]* @movcc_gen_code, i32 0, i64 %idxprom125
  store i32 1317, i32* %arrayidx126, align 4
  br label %for.inc.127

for.inc.127:                                      ; preds = %for.body.124
  %41 = load i32, i32* %i, align 4
  %inc128 = add i32 %41, 1
  store i32 %inc128, i32* %i, align 4
  br label %for.cond.121

for.end.129:                                      ; preds = %for.cond.121
  %call = call %struct.optab* @init_optab(i32 75)
  store %struct.optab* %call, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  %call130 = call %struct.optab* @init_optabv(i32 75)
  store %struct.optab* %call130, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  %call131 = call %struct.optab* @init_optab(i32 76)
  store %struct.optab* %call131, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  %call132 = call %struct.optab* @init_optabv(i32 76)
  store %struct.optab* %call132, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  %call133 = call %struct.optab* @init_optab(i32 78)
  store %struct.optab* %call133, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  %call134 = call %struct.optab* @init_optabv(i32 78)
  store %struct.optab* %call134, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  %call135 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call135, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 6), align 8
  %call136 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call136, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 7), align 8
  %call137 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call137, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 8), align 8
  %call138 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call138, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 9), align 8
  %call139 = call %struct.optab* @init_optab(i32 79)
  store %struct.optab* %call139, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  %call140 = call %struct.optab* @init_optabv(i32 79)
  store %struct.optab* %call140, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 11), align 8
  %call141 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call141, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  %call142 = call %struct.optab* @init_optab(i32 81)
  store %struct.optab* %call142, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 13), align 8
  %call143 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call143, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 14), align 8
  %call144 = call %struct.optab* @init_optab(i32 80)
  store %struct.optab* %call144, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 15), align 8
  %call145 = call %struct.optab* @init_optab(i32 82)
  store %struct.optab* %call145, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 16), align 8
  %call146 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call146, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 17), align 8
  %call147 = call %struct.optab* @init_optab(i32 83)
  store %struct.optab* %call147, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  %call148 = call %struct.optab* @init_optab(i32 84)
  store %struct.optab* %call148, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  %call149 = call %struct.optab* @init_optab(i32 85)
  store %struct.optab* %call149, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  %call150 = call %struct.optab* @init_optab(i32 87)
  store %struct.optab* %call150, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  %call151 = call %struct.optab* @init_optab(i32 89)
  store %struct.optab* %call151, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  %call152 = call %struct.optab* @init_optab(i32 90)
  store %struct.optab* %call152, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  %call153 = call %struct.optab* @init_optab(i32 88)
  store %struct.optab* %call153, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 24), align 8
  %call154 = call %struct.optab* @init_optab(i32 91)
  store %struct.optab* %call154, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 25), align 8
  %call155 = call %struct.optab* @init_optab(i32 92)
  store %struct.optab* %call155, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 26), align 8
  %call156 = call %struct.optab* @init_optab(i32 93)
  store %struct.optab* %call156, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 27), align 8
  %call157 = call %struct.optab* @init_optab(i32 94)
  store %struct.optab* %call157, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 28), align 8
  %call158 = call %struct.optab* @init_optab(i32 95)
  store %struct.optab* %call158, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 29), align 8
  %call159 = call %struct.optab* @init_optab(i32 47)
  store %struct.optab* %call159, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 30), align 8
  %call160 = call %struct.optab* @init_optab(i32 64)
  store %struct.optab* %call160, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 31), align 8
  %call161 = call %struct.optab* @init_optab(i32 74)
  store %struct.optab* %call161, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %call162 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call162, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 42), align 8
  %call163 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call163, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 43), align 8
  %call164 = call %struct.optab* @init_optab(i32 77)
  store %struct.optab* %call164, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  %call165 = call %struct.optab* @init_optabv(i32 77)
  store %struct.optab* %call165, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  %call166 = call %struct.optab* @init_optab(i32 129)
  store %struct.optab* %call166, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 34), align 8
  %call167 = call %struct.optab* @init_optabv(i32 129)
  store %struct.optab* %call167, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 35), align 8
  %call168 = call %struct.optab* @init_optab(i32 86)
  store %struct.optab* %call168, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  %call169 = call %struct.optab* @init_optab(i32 131)
  store %struct.optab* %call169, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 37), align 8
  %call170 = call %struct.optab* @init_optab(i32 130)
  store %struct.optab* %call170, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 38), align 8
  %call171 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call171, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 39), align 8
  %call172 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call172, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 40), align 8
  %call173 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call173, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 44), align 8
  %call174 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call174, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 45), align 8
  %call175 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call175, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 46), align 8
  %call176 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call176, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 47), align 8
  %call177 = call %struct.optab* @init_optab(i32 0)
  store %struct.optab* %call177, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 48), align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.178

for.cond.178:                                     ; preds = %for.inc.190, %for.end.129
  %42 = load i32, i32* %i, align 4
  %cmp179 = icmp ult i32 %42, 59
  br i1 %cmp179, label %for.body.181, label %for.end.192

for.body.181:                                     ; preds = %for.cond.178
  %43 = load i32, i32* %i, align 4
  %idxprom182 = zext i32 %43 to i64
  %arrayidx183 = getelementptr inbounds [59 x i32], [59 x i32]* @movstr_optab, i32 0, i64 %idxprom182
  store i32 1317, i32* %arrayidx183, align 4
  %44 = load i32, i32* %i, align 4
  %idxprom184 = zext i32 %44 to i64
  %arrayidx185 = getelementptr inbounds [59 x i32], [59 x i32]* @clrstr_optab, i32 0, i64 %idxprom184
  store i32 1317, i32* %arrayidx185, align 4
  %45 = load i32, i32* %i, align 4
  %idxprom186 = zext i32 %45 to i64
  %arrayidx187 = getelementptr inbounds [59 x i32], [59 x i32]* @reload_out_optab, i32 0, i64 %idxprom186
  store i32 1317, i32* %arrayidx187, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom188 = zext i32 %46 to i64
  %arrayidx189 = getelementptr inbounds [59 x i32], [59 x i32]* @reload_in_optab, i32 0, i64 %idxprom188
  store i32 1317, i32* %arrayidx189, align 4
  br label %for.inc.190

for.inc.190:                                      ; preds = %for.body.181
  %47 = load i32, i32* %i, align 4
  %inc191 = add i32 %47, 1
  store i32 %inc191, i32* %i, align 4
  br label %for.cond.178

for.end.192:                                      ; preds = %for.cond.178
  call void @init_all_optabs()
  %48 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  call void @init_integral_libfuncs(%struct.optab* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 51)
  %49 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 0), align 8
  call void @init_floating_libfuncs(%struct.optab* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 51)
  %50 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  call void @init_integral_libfuncs(%struct.optab* %50, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 51)
  %51 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 1), align 8
  call void @init_floating_libfuncs(%struct.optab* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 51)
  %52 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  call void @init_integral_libfuncs(%struct.optab* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 51)
  %53 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 2), align 8
  call void @init_floating_libfuncs(%struct.optab* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 51)
  %54 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  call void @init_integral_libfuncs(%struct.optab* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i32 51)
  %55 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 3), align 8
  call void @init_floating_libfuncs(%struct.optab* %55, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i32 51)
  %56 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  call void @init_integral_libfuncs(%struct.optab* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 51)
  %57 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 4), align 8
  call void @init_floating_libfuncs(%struct.optab* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 51)
  %58 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  call void @init_integral_libfuncs(%struct.optab* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 51)
  %59 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 5), align 8
  call void @init_floating_libfuncs(%struct.optab* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i32 51)
  %60 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  call void @init_integral_libfuncs(%struct.optab* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 51)
  %61 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 10), align 8
  call void @init_floating_libfuncs(%struct.optab* %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0), i32 51)
  %62 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 11), align 8
  call void @init_integral_libfuncs(%struct.optab* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), i32 51)
  %63 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 13), align 8
  call void @init_integral_libfuncs(%struct.optab* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i32 51)
  %64 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 12), align 8
  call void @init_integral_libfuncs(%struct.optab* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i32 52)
  %65 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 14), align 8
  call void @init_integral_libfuncs(%struct.optab* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 52)
  %66 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 15), align 8
  call void @init_integral_libfuncs(%struct.optab* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0), i32 51)
  %67 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 16), align 8
  call void @init_integral_libfuncs(%struct.optab* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i32 51)
  %68 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 17), align 8
  call void @init_floating_libfuncs(%struct.optab* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i32 50)
  %69 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 18), align 8
  call void @init_integral_libfuncs(%struct.optab* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i32 51)
  %70 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 19), align 8
  call void @init_integral_libfuncs(%struct.optab* %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i32 51)
  %71 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 20), align 8
  call void @init_integral_libfuncs(%struct.optab* %71, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 51)
  %72 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 21), align 8
  call void @init_integral_libfuncs(%struct.optab* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 51)
  %73 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 23), align 8
  call void @init_integral_libfuncs(%struct.optab* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i32 51)
  %74 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 22), align 8
  call void @init_integral_libfuncs(%struct.optab* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i32 51)
  %75 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 26), align 8
  call void @init_integral_libfuncs(%struct.optab* %75, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 51)
  %76 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 26), align 8
  call void @init_floating_libfuncs(%struct.optab* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), i32 51)
  %77 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 27), align 8
  call void @init_integral_libfuncs(%struct.optab* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 51)
  %78 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 27), align 8
  call void @init_floating_libfuncs(%struct.optab* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i32 0, i32 0), i32 51)
  %79 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 28), align 8
  call void @init_integral_libfuncs(%struct.optab* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i32 51)
  %80 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 29), align 8
  call void @init_integral_libfuncs(%struct.optab* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i32 51)
  %81 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  call void @init_integral_libfuncs(%struct.optab* %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 50)
  %82 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 32), align 8
  call void @init_floating_libfuncs(%struct.optab* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 50)
  %83 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  call void @init_integral_libfuncs(%struct.optab* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.26, i32 0, i32 0), i32 50)
  %84 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 33), align 8
  call void @init_floating_libfuncs(%struct.optab* %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i32 50)
  %85 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 36), align 8
  call void @init_integral_libfuncs(%struct.optab* %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 50)
  %86 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 37), align 8
  call void @init_integral_libfuncs(%struct.optab* %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), i32 50)
  %87 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  call void @init_integral_libfuncs(%struct.optab* %87, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 50)
  %88 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 42), align 8
  call void @init_integral_libfuncs(%struct.optab* %88, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 50)
  %89 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  call void @init_floating_libfuncs(%struct.optab* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0), i32 50)
  %call193 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  %90 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 34), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %90, i32 0, i32 1
  %arrayidx194 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 22
  %libfunc = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx194, i32 0, i32 1
  store %struct.rtx_def* %call193, %struct.rtx_def** %libfunc, align 8
  %call195 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0))
  %call196 = call i32 @mode_for_size(i32 32, i32 1, i32 0)
  %idxprom197 = sext i32 %call196 to i64
  %91 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 37), align 8
  %handlers198 = getelementptr inbounds %struct.optab, %struct.optab* %91, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers198, i32 0, i64 %idxprom197
  %libfunc200 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx199, i32 0, i32 1
  store %struct.rtx_def* %call195, %struct.rtx_def** %libfunc200, align 8
  %call201 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i32 0, i32 0))
  store %struct.rtx_def* %call201, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 0), align 8
  %call202 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0))
  store %struct.rtx_def* %call202, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 1), align 8
  %call203 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i32 0, i32 0))
  store %struct.rtx_def* %call203, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 2), align 8
  %call204 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0))
  store %struct.rtx_def* %call204, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 3), align 8
  %call205 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0))
  store %struct.rtx_def* %call205, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 4), align 8
  %call206 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i32 0, i32 0))
  store %struct.rtx_def* %call206, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 5), align 8
  %call207 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.38, i32 0, i32 0))
  store %struct.rtx_def* %call207, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 6), align 8
  %call208 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.39, i32 0, i32 0))
  store %struct.rtx_def* %call208, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 7), align 8
  %call209 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.40, i32 0, i32 0))
  store %struct.rtx_def* %call209, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 8), align 8
  %call210 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0))
  store %struct.rtx_def* %call210, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 9), align 8
  %call211 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.42, i32 0, i32 0))
  store %struct.rtx_def* %call211, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 10), align 8
  %call212 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0))
  store %struct.rtx_def* %call212, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 11), align 8
  %call213 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0))
  store %struct.rtx_def* %call213, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 12), align 8
  %call214 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.45, i32 0, i32 0))
  store %struct.rtx_def* %call214, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 13), align 8
  %call215 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0))
  store %struct.rtx_def* %call215, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 14), align 8
  %call216 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0))
  store %struct.rtx_def* %call216, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 15), align 8
  %call217 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0))
  store %struct.rtx_def* %call217, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 16), align 8
  %call218 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i32 0, i32 0))
  store %struct.rtx_def* %call218, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 17), align 8
  %call219 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.50, i32 0, i32 0))
  store %struct.rtx_def* %call219, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 18), align 8
  %call220 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.51, i32 0, i32 0))
  store %struct.rtx_def* %call220, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 20), align 8
  %call221 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.52, i32 0, i32 0))
  store %struct.rtx_def* %call221, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 21), align 8
  %call222 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.53, i32 0, i32 0))
  store %struct.rtx_def* %call222, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 22), align 8
  %call223 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.54, i32 0, i32 0))
  store %struct.rtx_def* %call223, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 23), align 8
  %call224 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0))
  store %struct.rtx_def* %call224, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 24), align 8
  %call225 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0))
  store %struct.rtx_def* %call225, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 25), align 8
  %call226 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.57, i32 0, i32 0))
  store %struct.rtx_def* %call226, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 26), align 8
  %call227 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i32 0, i32 0))
  store %struct.rtx_def* %call227, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 27), align 8
  %call228 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0))
  store %struct.rtx_def* %call228, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 28), align 8
  %call229 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0))
  store %struct.rtx_def* %call229, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 29), align 8
  %call230 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0))
  store %struct.rtx_def* %call230, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 30), align 8
  %call231 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0))
  store %struct.rtx_def* %call231, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 31), align 8
  %call232 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0))
  store %struct.rtx_def* %call232, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 32), align 8
  %call233 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0))
  store %struct.rtx_def* %call233, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 33), align 8
  %call234 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0))
  store %struct.rtx_def* %call234, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 34), align 8
  %call235 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.66, i32 0, i32 0))
  store %struct.rtx_def* %call235, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 35), align 8
  %call236 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i32 0, i32 0))
  store %struct.rtx_def* %call236, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 36), align 8
  %call237 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.68, i32 0, i32 0))
  store %struct.rtx_def* %call237, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 37), align 8
  %call238 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.69, i32 0, i32 0))
  store %struct.rtx_def* %call238, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 38), align 8
  %call239 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0))
  store %struct.rtx_def* %call239, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 39), align 8
  %call240 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.71, i32 0, i32 0))
  store %struct.rtx_def* %call240, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 40), align 8
  %call241 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.72, i32 0, i32 0))
  store %struct.rtx_def* %call241, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 41), align 8
  %call242 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i32 0, i32 0))
  store %struct.rtx_def* %call242, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 42), align 8
  %call243 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0))
  store %struct.rtx_def* %call243, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 43), align 8
  %call244 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i32 0, i32 0))
  store %struct.rtx_def* %call244, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 44), align 8
  %call245 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0))
  store %struct.rtx_def* %call245, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 45), align 8
  %call246 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0))
  store %struct.rtx_def* %call246, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 46), align 8
  %call247 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0))
  store %struct.rtx_def* %call247, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 47), align 8
  %call248 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.79, i32 0, i32 0))
  store %struct.rtx_def* %call248, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 48), align 8
  %call249 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0))
  store %struct.rtx_def* %call249, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 49), align 8
  %call250 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.81, i32 0, i32 0))
  store %struct.rtx_def* %call250, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 50), align 8
  %call251 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.82, i32 0, i32 0))
  store %struct.rtx_def* %call251, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 51), align 8
  %call252 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.83, i32 0, i32 0))
  store %struct.rtx_def* %call252, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 52), align 8
  %call253 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.84, i32 0, i32 0))
  store %struct.rtx_def* %call253, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 53), align 8
  %call254 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0))
  store %struct.rtx_def* %call254, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 54), align 8
  %call255 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.86, i32 0, i32 0))
  store %struct.rtx_def* %call255, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 55), align 8
  %call256 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0))
  store %struct.rtx_def* %call256, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 56), align 8
  %call257 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.88, i32 0, i32 0))
  store %struct.rtx_def* %call257, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 57), align 8
  %call258 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.89, i32 0, i32 0))
  store %struct.rtx_def* %call258, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 58), align 8
  %call259 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.90, i32 0, i32 0))
  store %struct.rtx_def* %call259, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 59), align 8
  %call260 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0))
  store %struct.rtx_def* %call260, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 60), align 8
  %call261 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.92, i32 0, i32 0))
  store %struct.rtx_def* %call261, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 61), align 8
  %call262 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.93, i32 0, i32 0))
  store %struct.rtx_def* %call262, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 62), align 8
  %call263 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.94, i32 0, i32 0))
  store %struct.rtx_def* %call263, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 63), align 8
  %call264 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.95, i32 0, i32 0))
  store %struct.rtx_def* %call264, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 64), align 8
  %call265 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0))
  store %struct.rtx_def* %call265, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 65), align 8
  %call266 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.97, i32 0, i32 0))
  store %struct.rtx_def* %call266, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 66), align 8
  %call267 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.98, i32 0, i32 0))
  store %struct.rtx_def* %call267, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 67), align 8
  %call268 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.99, i32 0, i32 0))
  store %struct.rtx_def* %call268, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 68), align 8
  %call269 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.100, i32 0, i32 0))
  store %struct.rtx_def* %call269, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 69), align 8
  %call270 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.101, i32 0, i32 0))
  store %struct.rtx_def* %call270, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 70), align 8
  %call271 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0))
  store %struct.rtx_def* %call271, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 71), align 8
  %call272 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.103, i32 0, i32 0))
  store %struct.rtx_def* %call272, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 72), align 8
  %call273 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0))
  store %struct.rtx_def* %call273, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 73), align 8
  %call274 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.105, i32 0, i32 0))
  store %struct.rtx_def* %call274, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 74), align 8
  %call275 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.106, i32 0, i32 0))
  store %struct.rtx_def* %call275, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 75), align 8
  %call276 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.107, i32 0, i32 0))
  store %struct.rtx_def* %call276, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 76), align 8
  %call277 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.108, i32 0, i32 0))
  store %struct.rtx_def* %call277, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 77), align 8
  %call278 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.109, i32 0, i32 0))
  store %struct.rtx_def* %call278, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 78), align 8
  %call279 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0))
  store %struct.rtx_def* %call279, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 79), align 8
  %call280 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i32 0, i32 0))
  store %struct.rtx_def* %call280, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 80), align 8
  %call281 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.112, i32 0, i32 0))
  store %struct.rtx_def* %call281, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 81), align 8
  %call282 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i32 0, i32 0))
  store %struct.rtx_def* %call282, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 82), align 8
  %call283 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.114, i32 0, i32 0))
  store %struct.rtx_def* %call283, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 83), align 8
  %call284 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.115, i32 0, i32 0))
  store %struct.rtx_def* %call284, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 84), align 8
  %call285 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.116, i32 0, i32 0))
  store %struct.rtx_def* %call285, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 85), align 8
  %call286 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0))
  store %struct.rtx_def* %call286, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 86), align 8
  %call287 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i32 0, i32 0))
  store %struct.rtx_def* %call287, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 87), align 8
  %call288 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.119, i32 0, i32 0))
  store %struct.rtx_def* %call288, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 88), align 8
  %call289 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.120, i32 0, i32 0))
  store %struct.rtx_def* %call289, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 89), align 8
  %call290 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.121, i32 0, i32 0))
  store %struct.rtx_def* %call290, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 90), align 8
  %call291 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.122, i32 0, i32 0))
  store %struct.rtx_def* %call291, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 91), align 8
  %call292 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.123, i32 0, i32 0))
  store %struct.rtx_def* %call292, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 92), align 8
  %call293 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i32 0, i32 0))
  store %struct.rtx_def* %call293, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 93), align 8
  %call294 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.125, i32 0, i32 0))
  store %struct.rtx_def* %call294, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 94), align 8
  %call295 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.126, i32 0, i32 0))
  store %struct.rtx_def* %call295, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 95), align 8
  %call296 = call %struct.rtx_def* @init_one_libfunc(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.127, i32 0, i32 0))
  store %struct.rtx_def* %call296, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 96), align 8
  call void @init_traps()
  call void @ggc_add_root(i8* bitcast ([49 x %struct.optab*]* @optab_table to i8*), i32 49, i32 8, void (i8*)* @mark_optab)
  call void @ggc_add_rtx_root(%struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i32 0), i32 97)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.optab* @init_optab(i32 %code) #4 {
entry:
  %code.addr = alloca i32, align 4
  %op = alloca %struct.optab*, align 8
  store i32 %code, i32* %code.addr, align 4
  %call = call %struct.optab* @new_optab()
  store %struct.optab* %call, %struct.optab** %op, align 8
  %0 = load i32, i32* %code.addr, align 4
  %1 = load %struct.optab*, %struct.optab** %op, align 8
  %code1 = getelementptr inbounds %struct.optab, %struct.optab* %1, i32 0, i32 0
  store i32 %0, i32* %code1, align 4
  %2 = load %struct.optab*, %struct.optab** %op, align 8
  %3 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [154 x %struct.optab*], [154 x %struct.optab*]* @code_to_optab, i32 0, i64 %idxprom
  store %struct.optab* %2, %struct.optab** %arrayidx, align 8
  %4 = load %struct.optab*, %struct.optab** %op, align 8
  ret %struct.optab* %4
}

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.optab* @init_optabv(i32 %code) #4 {
entry:
  %code.addr = alloca i32, align 4
  %op = alloca %struct.optab*, align 8
  store i32 %code, i32* %code.addr, align 4
  %call = call %struct.optab* @new_optab()
  store %struct.optab* %call, %struct.optab** %op, align 8
  %0 = load i32, i32* %code.addr, align 4
  %1 = load %struct.optab*, %struct.optab** %op, align 8
  %code1 = getelementptr inbounds %struct.optab, %struct.optab* %1, i32 0, i32 0
  store i32 %0, i32* %code1, align 4
  %2 = load %struct.optab*, %struct.optab** %op, align 8
  ret %struct.optab* %2
}

declare void @init_all_optabs() #2

; Function Attrs: nounwind uwtable
define internal void @init_integral_libfuncs(%struct.optab* %optable, i8* %opname, i32 %suffix) #0 {
entry:
  %optable.addr = alloca %struct.optab*, align 8
  %opname.addr = alloca i8*, align 8
  %suffix.addr = alloca i32, align 4
  store %struct.optab* %optable, %struct.optab** %optable.addr, align 8
  store i8* %opname, i8** %opname.addr, align 8
  store i32 %suffix, i32* %suffix.addr, align 4
  %0 = load %struct.optab*, %struct.optab** %optable.addr, align 8
  %1 = load i8*, i8** %opname.addr, align 8
  %2 = load i32, i32* %suffix.addr, align 4
  call void @init_libfuncs(%struct.optab* %0, i32 4, i32 6, i8* %1, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_floating_libfuncs(%struct.optab* %optable, i8* %opname, i32 %suffix) #0 {
entry:
  %optable.addr = alloca %struct.optab*, align 8
  %opname.addr = alloca i8*, align 8
  %suffix.addr = alloca i32, align 4
  store %struct.optab* %optable, %struct.optab** %optable.addr, align 8
  store i8* %opname, i8** %opname.addr, align 8
  store i32 %suffix, i32* %suffix.addr, align 4
  %0 = load %struct.optab*, %struct.optab** %optable.addr, align 8
  %1 = load i8*, i8** %opname.addr, align 8
  %2 = load i32, i32* %suffix.addr, align 4
  call void @init_libfuncs(%struct.optab* %0, i32 15, i32 18, i8* %1, i32 %2)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_traps() #0 {
entry:
  %call = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 103, i32 0, %struct.rtx_def* null, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** @trap_rtx, align 8
  call void @ggc_add_rtx_root(%struct.rtx_def** @trap_rtx, i32 1)
  ret void
}

declare void @ggc_add_root(i8*, i32, i32, void (i8*)*) #2

declare void @ggc_add_rtx_root(%struct.rtx_def**, i32) #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_cond_trap(i32 %code, %struct.rtx_def* %op1, %struct.rtx_def* %op2, %struct.rtx_def* %tcode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  %op1.addr = alloca %struct.rtx_def*, align 8
  %op2.addr = alloca %struct.rtx_def*, align 8
  %tcode.addr = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %op2, %struct.rtx_def** %op2.addr, align 8
  store %struct.rtx_def* %tcode, %struct.rtx_def** %tcode.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %2 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  %5 = load i32, i32* %insn_code, align 4
  %cmp1 = icmp ne i32 %5, 1317
  br i1 %cmp1, label %if.then.2, label %if.end.17

if.then.2:                                        ; preds = %if.end
  call void @start_sequence()
  %6 = load i32, i32* %mode, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers4 = getelementptr inbounds %struct.optab, %struct.optab* %7, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers4, i32 0, i64 %idxprom3
  %insn_code6 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx5, i32 0, i32 0
  %8 = load i32, i32* %insn_code6, align 4
  %idxprom7 = sext i32 %8 to i64
  %arrayidx8 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom7
  %genfun = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx8, i32 0, i32 2
  %9 = load %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.rtx_def* (%struct.rtx_def*, ...)** %genfun, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op2.addr, align 8
  %call = call %struct.rtx_def* (%struct.rtx_def*, ...) %9(%struct.rtx_def* %10, %struct.rtx_def* %11)
  %call9 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call)
  %12 = load i32, i32* %code.addr, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** @trap_rtx, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load10 = load i32, i32* %14, align 8
  %bf.value = and i32 %12, 65535
  %bf.clear11 = and i32 %bf.load10, -65536
  %bf.set = or i32 %bf.clear11, %bf.value
  store i32 %bf.set, i32* %14, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** @trap_rtx, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %tcode.addr, align 8
  %call12 = call %struct.rtx_def* @gen_conditional_trap(%struct.rtx_def* %15, %struct.rtx_def* %16)
  store %struct.rtx_def* %call12, %struct.rtx_def** %insn, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.then.2
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call14 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %18)
  %call15 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call15, %struct.rtx_def** %insn, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.then.2
  call void @end_sequence()
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %retval
  br label %return

if.end.17:                                        ; preds = %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.end.16, %if.then
  %20 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %20
}

declare %struct.rtx_def* @gen_conditional_trap(%struct.rtx_def*, %struct.rtx_def*) #2

declare i32 @reg_set_p(%struct.rtx_def*, %struct.rtx_def*) #2

declare %struct.rtx_def* @gen_rtx_SUBREG(i32, %struct.rtx_def*, i32) #2

declare %struct.rtx_def* @gen_cmpstrsi(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #2

declare void @emit_library_call(%struct.rtx_def*, i32, i32, i32, ...) #2

declare %struct.rtx_def* @hard_libcall_value(i32) #2

; Function Attrs: nounwind uwtable
define internal void @prepare_float_lib_cmp(%struct.rtx_def** %px, %struct.rtx_def** %py, i32* %pcomparison, i32* %pmode, i32* %punsignedp) #0 {
entry:
  %px.addr = alloca %struct.rtx_def**, align 8
  %py.addr = alloca %struct.rtx_def**, align 8
  %pcomparison.addr = alloca i32*, align 8
  %pmode.addr = alloca i32*, align 8
  %punsignedp.addr = alloca i32*, align 8
  %comparison = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  %y = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %libfunc = alloca %struct.rtx_def*, align 8
  %result = alloca %struct.rtx_def*, align 8
  %wider_mode = alloca i32, align 4
  store %struct.rtx_def** %px, %struct.rtx_def*** %px.addr, align 8
  store %struct.rtx_def** %py, %struct.rtx_def*** %py.addr, align 8
  store i32* %pcomparison, i32** %pcomparison.addr, align 8
  store i32* %pmode, i32** %pmode.addr, align 8
  store i32* %punsignedp, i32** %punsignedp.addr, align 8
  %0 = load i32*, i32** %pcomparison.addr, align 8
  %1 = load i32, i32* %0, align 4
  store i32 %1, i32* %comparison, align 4
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  %call = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %3, i32 0)
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  store %struct.rtx_def* %call, %struct.rtx_def** %4, align 8
  store %struct.rtx_def* %call, %struct.rtx_def** %x, align 8
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %py.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %5, align 8
  %call1 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %6, i32 0)
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %py.addr, align 8
  store %struct.rtx_def* %call1, %struct.rtx_def** %7, align 8
  store %struct.rtx_def* %call1, %struct.rtx_def** %y, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %libfunc, align 8
  %10 = load i32, i32* %mode, align 4
  %cmp = icmp eq i32 %10, 13
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %11 = load i32, i32* %comparison, align 4
  switch i32 %11, label %sw.default [
    i32 103, label %sw.bb
    i32 102, label %sw.bb.2
    i32 105, label %sw.bb.3
    i32 104, label %sw.bb.4
    i32 107, label %sw.bb.5
    i32 106, label %sw.bb.6
    i32 112, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 24), align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog

sw.bb.2:                                          ; preds = %if.then
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 25), align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog

sw.bb.3:                                          ; preds = %if.then
  %14 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 26), align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 27), align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog

sw.bb.5:                                          ; preds = %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 28), align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.then
  %17 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 29), align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog

sw.bb.7:                                          ; preds = %if.then
  %18 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 30), align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.then
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.7, %sw.bb.6, %sw.bb.5, %sw.bb.4, %sw.bb.3, %sw.bb.2, %sw.bb
  br label %if.end.80

if.else:                                          ; preds = %entry
  %19 = load i32, i32* %mode, align 4
  %cmp8 = icmp eq i32 %19, 15
  br i1 %cmp8, label %if.then.9, label %if.else.19

if.then.9:                                        ; preds = %if.else
  %20 = load i32, i32* %comparison, align 4
  switch i32 %20, label %sw.default.17 [
    i32 103, label %sw.bb.10
    i32 102, label %sw.bb.11
    i32 105, label %sw.bb.12
    i32 104, label %sw.bb.13
    i32 107, label %sw.bb.14
    i32 106, label %sw.bb.15
    i32 112, label %sw.bb.16
  ]

sw.bb.10:                                         ; preds = %if.then.9
  %21 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 31), align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.18

sw.bb.11:                                         ; preds = %if.then.9
  %22 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 32), align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.18

sw.bb.12:                                         ; preds = %if.then.9
  %23 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 33), align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.18

sw.bb.13:                                         ; preds = %if.then.9
  %24 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 34), align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.18

sw.bb.14:                                         ; preds = %if.then.9
  %25 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 35), align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.18

sw.bb.15:                                         ; preds = %if.then.9
  %26 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 36), align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.18

sw.bb.16:                                         ; preds = %if.then.9
  %27 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 37), align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.18

sw.default.17:                                    ; preds = %if.then.9
  br label %sw.epilog.18

sw.epilog.18:                                     ; preds = %sw.default.17, %sw.bb.16, %sw.bb.15, %sw.bb.14, %sw.bb.13, %sw.bb.12, %sw.bb.11, %sw.bb.10
  br label %if.end.79

if.else.19:                                       ; preds = %if.else
  %28 = load i32, i32* %mode, align 4
  %cmp20 = icmp eq i32 %28, 16
  br i1 %cmp20, label %if.then.21, label %if.else.31

if.then.21:                                       ; preds = %if.else.19
  %29 = load i32, i32* %comparison, align 4
  switch i32 %29, label %sw.default.29 [
    i32 103, label %sw.bb.22
    i32 102, label %sw.bb.23
    i32 105, label %sw.bb.24
    i32 104, label %sw.bb.25
    i32 107, label %sw.bb.26
    i32 106, label %sw.bb.27
    i32 112, label %sw.bb.28
  ]

sw.bb.22:                                         ; preds = %if.then.21
  %30 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 38), align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.30

sw.bb.23:                                         ; preds = %if.then.21
  %31 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 39), align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.30

sw.bb.24:                                         ; preds = %if.then.21
  %32 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 40), align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.30

sw.bb.25:                                         ; preds = %if.then.21
  %33 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 41), align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.30

sw.bb.26:                                         ; preds = %if.then.21
  %34 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 42), align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.30

sw.bb.27:                                         ; preds = %if.then.21
  %35 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 43), align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.30

sw.bb.28:                                         ; preds = %if.then.21
  %36 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 44), align 8
  store %struct.rtx_def* %36, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.30

sw.default.29:                                    ; preds = %if.then.21
  br label %sw.epilog.30

sw.epilog.30:                                     ; preds = %sw.default.29, %sw.bb.28, %sw.bb.27, %sw.bb.26, %sw.bb.25, %sw.bb.24, %sw.bb.23, %sw.bb.22
  br label %if.end.78

if.else.31:                                       ; preds = %if.else.19
  %37 = load i32, i32* %mode, align 4
  %cmp32 = icmp eq i32 %37, 17
  br i1 %cmp32, label %if.then.33, label %if.else.43

if.then.33:                                       ; preds = %if.else.31
  %38 = load i32, i32* %comparison, align 4
  switch i32 %38, label %sw.default.41 [
    i32 103, label %sw.bb.34
    i32 102, label %sw.bb.35
    i32 105, label %sw.bb.36
    i32 104, label %sw.bb.37
    i32 107, label %sw.bb.38
    i32 106, label %sw.bb.39
    i32 112, label %sw.bb.40
  ]

sw.bb.34:                                         ; preds = %if.then.33
  %39 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 45), align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.42

sw.bb.35:                                         ; preds = %if.then.33
  %40 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 46), align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.42

sw.bb.36:                                         ; preds = %if.then.33
  %41 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 47), align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.42

sw.bb.37:                                         ; preds = %if.then.33
  %42 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 48), align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.42

sw.bb.38:                                         ; preds = %if.then.33
  %43 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 49), align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.42

sw.bb.39:                                         ; preds = %if.then.33
  %44 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 50), align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.42

sw.bb.40:                                         ; preds = %if.then.33
  %45 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 51), align 8
  store %struct.rtx_def* %45, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.42

sw.default.41:                                    ; preds = %if.then.33
  br label %sw.epilog.42

sw.epilog.42:                                     ; preds = %sw.default.41, %sw.bb.40, %sw.bb.39, %sw.bb.38, %sw.bb.37, %sw.bb.36, %sw.bb.35, %sw.bb.34
  br label %if.end.77

if.else.43:                                       ; preds = %if.else.31
  %46 = load i32, i32* %mode, align 4
  %cmp44 = icmp eq i32 %46, 18
  br i1 %cmp44, label %if.then.45, label %if.else.55

if.then.45:                                       ; preds = %if.else.43
  %47 = load i32, i32* %comparison, align 4
  switch i32 %47, label %sw.default.53 [
    i32 103, label %sw.bb.46
    i32 102, label %sw.bb.47
    i32 105, label %sw.bb.48
    i32 104, label %sw.bb.49
    i32 107, label %sw.bb.50
    i32 106, label %sw.bb.51
    i32 112, label %sw.bb.52
  ]

sw.bb.46:                                         ; preds = %if.then.45
  %48 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 52), align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.54

sw.bb.47:                                         ; preds = %if.then.45
  %49 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 53), align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.54

sw.bb.48:                                         ; preds = %if.then.45
  %50 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 54), align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.54

sw.bb.49:                                         ; preds = %if.then.45
  %51 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 55), align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.54

sw.bb.50:                                         ; preds = %if.then.45
  %52 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 56), align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.54

sw.bb.51:                                         ; preds = %if.then.45
  %53 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 57), align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.54

sw.bb.52:                                         ; preds = %if.then.45
  %54 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([97 x %struct.rtx_def*], [97 x %struct.rtx_def*]* @libfunc_table, i32 0, i64 58), align 8
  store %struct.rtx_def* %54, %struct.rtx_def** %libfunc, align 8
  br label %sw.epilog.54

sw.default.53:                                    ; preds = %if.then.45
  br label %sw.epilog.54

sw.epilog.54:                                     ; preds = %sw.default.53, %sw.bb.52, %sw.bb.51, %sw.bb.50, %sw.bb.49, %sw.bb.48, %sw.bb.47, %sw.bb.46
  br label %if.end.76

if.else.55:                                       ; preds = %if.else.43
  %55 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %55 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom
  %56 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %56 to i32
  store i32 %conv, i32* %wider_mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.55
  %57 = load i32, i32* %wider_mode, align 4
  %cmp56 = icmp ne i32 %57, 0
  br i1 %cmp56, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %58 = load i32, i32* %wider_mode, align 4
  %idxprom58 = sext i32 %58 to i64
  %59 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %59, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom58
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx59, i32 0, i32 0
  %60 = load i32, i32* %insn_code, align 4
  %cmp60 = icmp ne i32 %60, 1317
  br i1 %cmp60, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %61 = load i32, i32* %wider_mode, align 4
  %idxprom62 = sext i32 %61 to i64
  %62 = load %struct.optab*, %struct.optab** getelementptr inbounds ([49 x %struct.optab*], [49 x %struct.optab*]* @optab_table, i32 0, i64 41), align 8
  %handlers63 = getelementptr inbounds %struct.optab, %struct.optab* %62, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers63, i32 0, i64 %idxprom62
  %libfunc65 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx64, i32 0, i32 1
  %63 = load %struct.rtx_def*, %struct.rtx_def** %libfunc65, align 8
  %cmp66 = icmp ne %struct.rtx_def* %63, null
  br i1 %cmp66, label %if.then.68, label %if.end

if.then.68:                                       ; preds = %lor.lhs.false, %for.body
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call69 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %64, i32 0)
  store %struct.rtx_def* %call69, %struct.rtx_def** %x, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call70 = call %struct.rtx_def* @protect_from_queue(%struct.rtx_def* %65, i32 0)
  store %struct.rtx_def* %call70, %struct.rtx_def** %y, align 8
  %66 = load i32, i32* %wider_mode, align 4
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call71 = call %struct.rtx_def* @convert_to_mode(i32 %66, %struct.rtx_def* %67, i32 0)
  %68 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  store %struct.rtx_def* %call71, %struct.rtx_def** %68, align 8
  %69 = load i32, i32* %wider_mode, align 4
  %70 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %call72 = call %struct.rtx_def* @convert_to_mode(i32 %69, %struct.rtx_def* %70, i32 0)
  %71 = load %struct.rtx_def**, %struct.rtx_def*** %py.addr, align 8
  store %struct.rtx_def* %call72, %struct.rtx_def** %71, align 8
  %72 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  %73 = load %struct.rtx_def**, %struct.rtx_def*** %py.addr, align 8
  %74 = load i32*, i32** %pcomparison.addr, align 8
  %75 = load i32*, i32** %pmode.addr, align 8
  %76 = load i32*, i32** %punsignedp.addr, align 8
  call void @prepare_float_lib_cmp(%struct.rtx_def** %72, %struct.rtx_def** %73, i32* %74, i32* %75, i32* %76)
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %77 = load i32, i32* %wider_mode, align 4
  %idxprom73 = sext i32 %77 to i64
  %arrayidx74 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom73
  %78 = load i8, i8* %arrayidx74, align 1
  %conv75 = zext i8 %78 to i32
  store i32 %conv75, i32* %wider_mode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3612, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.prepare_float_lib_cmp, i32 0, i32 0)) #6
  unreachable

if.end.76:                                        ; preds = %sw.epilog.54
  br label %if.end.77

if.end.77:                                        ; preds = %if.end.76, %sw.epilog.42
  br label %if.end.78

if.end.78:                                        ; preds = %if.end.77, %sw.epilog.30
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %sw.epilog.18
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %sw.epilog
  %79 = load %struct.rtx_def*, %struct.rtx_def** %libfunc, align 8
  %cmp81 = icmp eq %struct.rtx_def* %79, null
  br i1 %cmp81, label %if.then.83, label %if.end.84

if.then.83:                                       ; preds = %if.end.80
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i32 3616, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.prepare_float_lib_cmp, i32 0, i32 0)) #6
  unreachable

if.end.84:                                        ; preds = %if.end.80
  %80 = load %struct.rtx_def*, %struct.rtx_def** %libfunc, align 8
  %81 = load i32, i32* @word_mode, align 4
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %83 = load i32, i32* %mode, align 4
  %84 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %85 = load i32, i32* %mode, align 4
  call void (%struct.rtx_def*, i32, i32, i32, ...) @emit_library_call(%struct.rtx_def* %80, i32 3, i32 %81, i32 2, %struct.rtx_def* %82, i32 %83, %struct.rtx_def* %84, i32 %85)
  %86 = load i32, i32* @word_mode, align 4
  %call85 = call %struct.rtx_def* @gen_reg_rtx(i32 %86)
  store %struct.rtx_def* %call85, %struct.rtx_def** %result, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %88 = load i32, i32* @word_mode, align 4
  %call86 = call %struct.rtx_def* @hard_libcall_value(i32 %88)
  %call87 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %87, %struct.rtx_def* %call86)
  %89 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %90 = load %struct.rtx_def**, %struct.rtx_def*** %px.addr, align 8
  store %struct.rtx_def* %89, %struct.rtx_def** %90, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %92 = load %struct.rtx_def**, %struct.rtx_def*** %py.addr, align 8
  store %struct.rtx_def* %91, %struct.rtx_def** %92, align 8
  %93 = load i32, i32* @word_mode, align 4
  %94 = load i32*, i32** %pmode.addr, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %comparison, align 4
  %cmp88 = icmp eq i32 %95, 112
  br i1 %cmp88, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.84
  %96 = load i32*, i32** %pcomparison.addr, align 8
  store i32 102, i32* %96, align 4
  br label %if.end.91

if.end.91:                                        ; preds = %if.then.90, %if.end.84
  %97 = load i32*, i32** %punsignedp.addr, align 8
  store i32 0, i32* %97, align 4
  br label %return

return:                                           ; preds = %if.end.91, %if.then.68
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.optab* @new_optab() #0 {
entry:
  %i = alloca i32, align 4
  %op = alloca %struct.optab*, align 8
  %call = call noalias i8* @xmalloc(i64 952)
  %0 = bitcast i8* %call to %struct.optab*
  store %struct.optab* %0, %struct.optab** %op, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %1, 59
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.optab*, %struct.optab** %op, align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom
  %insn_code = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx, i32 0, i32 0
  store i32 1317, i32* %insn_code, align 4
  %4 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.optab*, %struct.optab** %op, align 8
  %handlers2 = getelementptr inbounds %struct.optab, %struct.optab* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers2, i32 0, i64 %idxprom1
  %libfunc = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx3, i32 0, i32 1
  store %struct.rtx_def* null, %struct.rtx_def** %libfunc, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.optab*, %struct.optab** %op, align 8
  ret %struct.optab* %7
}

declare noalias i8* @xmalloc(i64) #2

; Function Attrs: nounwind uwtable
define internal void @init_libfuncs(%struct.optab* %optable, i32 %first_mode, i32 %last_mode, i8* %opname, i32 %suffix) #0 {
entry:
  %optable.addr = alloca %struct.optab*, align 8
  %first_mode.addr = alloca i32, align 4
  %last_mode.addr = alloca i32, align 4
  %opname.addr = alloca i8*, align 8
  %suffix.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %opname_len = alloca i32, align 4
  %mname = alloca i8*, align 8
  %mname_len = alloca i32, align 4
  %libfunc_name = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  store %struct.optab* %optable, %struct.optab** %optable.addr, align 8
  store i32 %first_mode, i32* %first_mode.addr, align 4
  store i32 %last_mode, i32* %last_mode.addr, align 4
  store i8* %opname, i8** %opname.addr, align 8
  store i32 %suffix, i32* %suffix.addr, align 4
  %0 = load i8*, i8** %opname.addr, align 8
  %call = call i64 @strlen(i8* %0) #7
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %opname_len, align 4
  %1 = load i32, i32* %first_mode.addr, align 4
  store i32 %1, i32* %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.31, %entry
  %2 = load i32, i32* %mode, align 4
  %3 = load i32, i32* %last_mode.addr, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.33

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [59 x i8*], [59 x i8*]* @mode_name, i32 0, i64 %idxprom
  %5 = load i8*, i8** %arrayidx, align 8
  store i8* %5, i8** %mname, align 8
  %6 = load i8*, i8** %mname, align 8
  %call2 = call i64 @strlen(i8* %6) #7
  %conv3 = trunc i64 %call2 to i32
  store i32 %conv3, i32* %mname_len, align 4
  %7 = load i32, i32* %opname_len, align 4
  %add = add i32 2, %7
  %8 = load i32, i32* %mname_len, align 4
  %add4 = add i32 %add, %8
  %add5 = add i32 %add4, 1
  %add6 = add i32 %add5, 1
  %conv7 = zext i32 %add6 to i64
  %9 = alloca i8, i64 %conv7
  store i8* %9, i8** %libfunc_name, align 8
  %10 = load i8*, i8** %libfunc_name, align 8
  store i8* %10, i8** %p, align 8
  %11 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 95, i8* %11, align 1
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr8, i8** %p, align 8
  store i8 95, i8* %12, align 1
  %13 = load i8*, i8** %opname.addr, align 8
  store i8* %13, i8** %q, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.body.10, %for.body
  %14 = load i8*, i8** %q, align 8
  %15 = load i8, i8* %14, align 1
  %tobool = icmp ne i8 %15, 0
  br i1 %tobool, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.9
  %16 = load i8*, i8** %q, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr11, i8** %q, align 8
  %17 = load i8, i8* %16, align 1
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr12, i8** %p, align 8
  store i8 %17, i8* %18, align 1
  br label %for.cond.9

for.end:                                          ; preds = %for.cond.9
  %19 = load i8*, i8** %mname, align 8
  store i8* %19, i8** %q, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %for.end
  %20 = load i8*, i8** %q, align 8
  %21 = load i8, i8* %20, align 1
  %tobool14 = icmp ne i8 %21, 0
  br i1 %tobool14, label %for.body.15, label %for.end.21

for.body.15:                                      ; preds = %for.cond.13
  %22 = load i8*, i8** %q, align 8
  %23 = load i8, i8* %22, align 1
  %conv16 = sext i8 %23 to i32
  %and = and i32 %conv16, 255
  %idxprom17 = sext i32 %and to i64
  %arrayidx18 = getelementptr inbounds [256 x i8], [256 x i8]* @_sch_tolower, i32 0, i64 %idxprom17
  %24 = load i8, i8* %arrayidx18, align 1
  %25 = load i8*, i8** %p, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr19, i8** %p, align 8
  store i8 %24, i8* %25, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %26 = load i8*, i8** %q, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr20, i8** %q, align 8
  br label %for.cond.13

for.end.21:                                       ; preds = %for.cond.13
  %27 = load i32, i32* %suffix.addr, align 4
  %conv22 = trunc i32 %27 to i8
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr23, i8** %p, align 8
  store i8 %conv22, i8* %28, align 1
  %29 = load i8*, i8** %p, align 8
  store i8 0, i8* %29, align 1
  %30 = load i32, i32* @target_flags, align 4
  %and24 = and i32 %30, 33554432
  %tobool25 = icmp ne i32 %and24, 0
  %cond = select i1 %tobool25, i32 5, i32 4
  %31 = load i8*, i8** %libfunc_name, align 8
  %32 = load i8*, i8** %p, align 8
  %33 = load i8*, i8** %libfunc_name, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %32 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %33 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv26 = trunc i64 %sub.ptr.sub to i32
  %call27 = call i8* @ggc_alloc_string(i8* %31, i32 %conv26)
  %call28 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond, i8* %call27)
  %34 = load i32, i32* %mode, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load %struct.optab*, %struct.optab** %optable.addr, align 8
  %handlers = getelementptr inbounds %struct.optab, %struct.optab* %35, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [59 x %struct.anon.3], [59 x %struct.anon.3]* %handlers, i32 0, i64 %idxprom29
  %libfunc = getelementptr inbounds %struct.anon.3, %struct.anon.3* %arrayidx30, i32 0, i32 1
  store %struct.rtx_def* %call28, %struct.rtx_def** %libfunc, align 8
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.end.21
  %36 = load i32, i32* %mode, align 4
  %add32 = add nsw i32 %36, 1
  store i32 %add32, i32* %mode, align 4
  br label %for.cond

for.end.33:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare %struct.rtx_def* @gen_rtx_fmt_s(i32, i32, i8*) #2

declare i8* @ggc_alloc_string(i8*, i32) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
