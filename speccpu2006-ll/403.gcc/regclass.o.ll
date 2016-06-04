; ModuleID = 'regclass.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.reg_pref = type { i8, i8 }
%struct.costs = type { [25 x i32], i32 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
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
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.reg_info_data = type { %struct.reg_info_data*, i64, i64, i8, [1 x %struct.reg_info_def] }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [4 x %struct.rtx_def**], [4 x i8], i8, i8, i8, %struct.rtx_def* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@reg_alloc_order = global [53 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 52], align 16
@reg_class_contents = common global [25 x i64] zeroinitializer, align 16
@int_reg_class_contents = internal constant [25 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 2, i32 0], [2 x i32] [i32 4, i32 0], [2 x i32] [i32 8, i32 0], [2 x i32] [i32 16, i32 0], [2 x i32] [i32 32, i32 0], [2 x i32] [i32 3, i32 0], [2 x i32] [i32 15, i32 0], [2 x i32] [i32 1114352, i32 8160], [2 x i32] [i32 127, i32 8160], [2 x i32] [i32 1114367, i32 0], [2 x i32] [i32 1114367, i32 8160], [2 x i32] [i32 256, i32 0], [2 x i32] [i32 512, i32 0], [2 x i32] [i32 65280, i32 0], [2 x i32] [i32 534773760, i32 2088960], [2 x i32] [i32 -536870912, i32 31], [2 x i32] [i32 534774016, i32 2088960], [2 x i32] [i32 534774272, i32 2088960], [2 x i32] [i32 534839040, i32 2088960], [2 x i32] [i32 131071, i32 8160], [2 x i32] [i32 534839551, i32 2097120], [2 x i32] [i32 534904831, i32 2097120], [2 x i32] [i32 -1, i32 2097151]], align 16
@fixed_regs = common global [53 x i8] zeroinitializer, align 16
@initial_fixed_regs = internal constant [53 x i8] c"\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\00\03\03\03\03\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", align 16
@call_used_regs = common global [53 x i8] zeroinitializer, align 16
@initial_call_used_regs = internal constant [53 x i8] c"\03\03\03\00\02\02\00\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\01\01\01\01\03\03\03\03\03\03\03\03", align 16
@global_regs = common global [53 x i8] zeroinitializer, align 16
@inv_reg_alloc_order = common global [53 x i32] zeroinitializer, align 16
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@top_of_stack = internal global [59 x %struct.rtx_def*] zeroinitializer, align 16
@target_flags = external global i32, align 4
@class_narrowest_mode = external constant [9 x i32], align 16
@mode_class = external constant [59 x i32], align 16
@mode_size = external constant [59 x i8], align 16
@mode_wider_mode = external constant [59 x i8], align 16
@fix_register.what_option = internal constant [2 x [2 x i8*]] [[2 x i8*] [i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0)], [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0)]], align 16
@.str = private unnamed_addr constant [11 x i8] c"call-saved\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"call-used\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"no-such-option\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"fixed\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"can't use '%s' as a %s register\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"unknown register name: %s\00", align 1
@no_global_reg_vars = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"global register variable follows a function definition\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"register used for two global register variables\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"call-clobbered register used for global register variable\00", align 1
@call_fixed_regs = common global [53 x i8] zeroinitializer, align 16
@n_non_fixed_regs = common global i32 0, align 4
@fixed_reg_set = common global i64 0, align 8
@call_used_reg_set = common global i64 0, align 8
@call_fixed_reg_set = common global i64 0, align 8
@regs_invalidated_by_call = common global i64 0, align 8
@reg_pref = internal global %struct.reg_pref* null, align 8
@init_cost = internal global %struct.costs zeroinitializer, align 4
@costs = internal global %struct.costs* null, align 8
@flag_expensive_optimizations = external global i32, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"\0A\0APass %i\0A\0A\00", align 1
@optimize = external global i32, align 4
@frequency = internal global i32 0, align 4
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@optimize_size = external global i32, align 4
@flag_branch_probabilities = external global i32, align 4
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@reg_pref_buffer = internal global %struct.reg_pref* null, align 8
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@reg_n_info = external global %struct.varray_head_tag*, align 8
@cfun = external global %struct.function*, align 8
@contains_reg_of_mode = internal global [25 x [59 x i8]] zeroinitializer, align 16
@reg_class_subunion = common global [25 x [25 x i32]] zeroinitializer, align 16
@reg_class_size = common global [25 x i32] zeroinitializer, align 16
@regclass.reg_class_names = internal constant [25 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)], align 16
@.str.11 = private unnamed_addr constant [8 x i8] c"NO_REGS\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"AREG\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"DREG\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"CREG\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"BREG\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"SIREG\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"DIREG\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"AD_REGS\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"Q_REGS\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"NON_Q_REGS\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"INDEX_REGS\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"LEGACY_REGS\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"GENERAL_REGS\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"FP_TOP_REG\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"FP_SECOND_REG\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"FLOAT_REGS\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"SSE_REGS\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"MMX_REGS\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"FP_TOP_SSE_REGS\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"FP_SECOND_SSE_REGS\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"FLOAT_SSE_REGS\00", align 1
@.str.32 = private unnamed_addr constant [15 x i8] c"FLOAT_INT_REGS\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"INT_SSE_REGS\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"FLOAT_INT_SSE_REGS\00", align 1
@.str.35 = private unnamed_addr constant [9 x i8] c"ALL_REGS\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"  Register %i\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c" pref %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c" pref %s or none\0A\00", align 1
@.str.39 = private unnamed_addr constant [19 x i8] c" pref %s, else %s\0A\00", align 1
@reg_n_max = internal global i32 0, align 4
@regno_allocated = internal global i64 0, align 8
@.str.40 = private unnamed_addr constant [11 x i8] c"reg_n_info\00", align 1
@renumber = internal global i16* null, align 8
@reg_info_head = internal global %struct.reg_info_data* null, align 8
@reg_renumber = external global i16*, align 8
@max_parallel = common global i32 0, align 4
@max_set_parallel = internal global i32 0, align 4
@losing_caller_save_reg_set = common global i64 0, align 8
@reg_class_superclasses = common global [25 x [25 x i32]] zeroinitializer, align 16
@reg_class_subclasses = common global [25 x [25 x i32]] zeroinitializer, align 16
@reg_class_superunion = common global [25 x [25 x i32]] zeroinitializer, align 16
@reg_raw_mode = common global [53 x i32] zeroinitializer, align 16
@flag_pic = external global i32, align 4
@regclass_map = external constant [53 x i32], align 16
@move_cost = internal global [59 x [25 x [25 x i32]]] zeroinitializer, align 16
@may_move_in_cost = internal global [59 x [25 x [25 x i32]]] zeroinitializer, align 16
@may_move_out_cost = internal global [59 x [25 x [25 x i32]]] zeroinitializer, align 16
@word_mode = external global i32, align 4
@rtx_class = external constant [153 x i8], align 16
@recog_data = external global %struct.recog_data, align 8
@x86_partial_reg_stall = external constant i32, align 4
@ix86_cpu = external global i32, align 4
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16
@dump_regclass.reg_class_names = internal constant [25 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.35, i32 0, i32 0)], align 16
@max_regno = external global i32, align 4
@.str.41 = private unnamed_addr constant [21 x i8] c"  Register %i costs:\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c" %s:%i\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c" MEM:%i\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @init_reg_sets() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 25
  br i1 %cmp, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom
  store i64 0, i64* %arrayidx, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %for.body
  %2 = load i32, i32* %j, align 4
  %cmp2 = icmp slt i32 %2, 53
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %3 = load i32, i32* %j, align 4
  %div = sdiv i32 %3, 32
  %idxprom4 = sext i32 %div to i64
  %4 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [25 x [2 x i32]], [25 x [2 x i32]]* @int_reg_class_contents, i32 0, i64 %idxprom5
  %arrayidx7 = getelementptr inbounds [2 x i32], [2 x i32]* %arrayidx6, i32 0, i64 %idxprom4
  %5 = load i32, i32* %arrayidx7, align 4
  %6 = load i32, i32* %j, align 4
  %rem = srem i32 %6, 32
  %shl = shl i32 1, %rem
  %and = and i32 %5, %shl
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %7 = load i32, i32* %j, align 4
  %sh_prom = zext i32 %7 to i64
  %shl8 = shl i64 1, %sh_prom
  %8 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom9
  %9 = load i64, i64* %arrayidx10, align 8
  %or = or i64 %9, %shl8
  store i64 %or, i64* %arrayidx10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %j, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %11 = load i32, i32* %i, align 4
  %inc12 = add nsw i32 %11, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @initial_fixed_regs, i32 0, i32 0), i64 53, i32 16, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @call_used_regs, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @initial_call_used_regs, i32 0, i32 0), i64 53, i32 16, i1 false)
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @global_regs, i32 0, i32 0), i8 0, i64 53, i32 16, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc.21, %for.end.13
  %12 = load i32, i32* %i, align 4
  %cmp15 = icmp slt i32 %12, 53
  br i1 %cmp15, label %for.body.16, label %for.end.23

for.body.16:                                      ; preds = %for.cond.14
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_alloc_order, i32 0, i64 %idxprom17
  %15 = load i32, i32* %arrayidx18, align 4
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [53 x i32], [53 x i32]* @inv_reg_alloc_order, i32 0, i64 %idxprom19
  store i32 %13, i32* %arrayidx20, align 4
  br label %for.inc.21

for.inc.21:                                       ; preds = %for.body.16
  %16 = load i32, i32* %i, align 4
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond.14

for.end.23:                                       ; preds = %for.cond.14
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define void @init_regs() #0 {
entry:
  %i = alloca i32, align 4
  call void @init_reg_sets_1()
  call void @init_reg_modes()
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 59
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %call = call %struct.rtx_def* @gen_rtx_MEM(i32 %1, %struct.rtx_def* %2)
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* @top_of_stack, i32 0, i64 %idxprom
  store %struct.rtx_def* %call, %struct.rtx_def** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @ggc_add_rtx_root(%struct.rtx_def** getelementptr inbounds ([59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* @top_of_stack, i32 0, i32 0), i32 59)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_reg_sets_1() #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %allocatable_regs_of_mode = alloca [59 x i8], align 16
  %i1 = alloca i32, align 4
  %i48 = alloca i32, align 4
  %i69 = alloca i32, align 4
  %i93 = alloca i32, align 4
  %x = alloca i64, align 8
  %c = alloca i64, align 8
  %k = alloca i32, align 4
  %c195 = alloca i64, align 8
  %k196 = alloca i32, align 4
  %p = alloca i32*, align 8
  %cost = alloca i32, align 4
  %p1 = alloca i32*, align 8
  %p2 = alloca i32*, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 0, i32* %i1, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.body
  %0 = load i32, i32* %i1, align 4
  %cmp = icmp slt i32 %0, 53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i1, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %3 = load i32, i32* @target_flags, align 4
  %and = and i32 %3, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 2, i32 1
  %and2 = and i32 %conv, %cond
  %cmp3 = icmp ne i32 %and2, 0
  %conv4 = zext i1 %cmp3 to i32
  %conv5 = trunc i32 %conv4 to i8
  %4 = load i32, i32* %i1, align 4
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom6
  store i8 %conv5, i8* %arrayidx7, align 1
  %5 = load i32, i32* %i1, align 4
  %idxprom8 = sext i32 %5 to i64
  %arrayidx9 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom8
  %6 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %6 to i32
  %7 = load i32, i32* @target_flags, align 4
  %and11 = and i32 %7, 33554432
  %tobool12 = icmp ne i32 %and11, 0
  %cond13 = select i1 %tobool12, i32 2, i32 1
  %and14 = and i32 %conv10, %cond13
  %cmp15 = icmp ne i32 %and14, 0
  %conv16 = zext i1 %cmp15 to i32
  %conv17 = trunc i32 %conv16 to i8
  %8 = load i32, i32* %i1, align 4
  %idxprom18 = sext i32 %8 to i64
  %arrayidx19 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom18
  store i8 %conv17, i8* %arrayidx19, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i1, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, i32* %i1, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* @target_flags, align 4
  %and20 = and i32 %10, 33554432
  %tobool21 = icmp ne i32 %and20, 0
  br i1 %tobool21, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end
  %11 = load i32, i32* @flag_pic, align 4
  %tobool22 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool22, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end
  %12 = phi i1 [ true, %for.end ], [ %lnot, %lor.rhs ]
  %cond23 = select i1 %12, i32 -1, i32 3
  %cmp24 = icmp ne i32 %cond23, -1
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %13 = load i32, i32* @target_flags, align 4
  %and26 = and i32 %13, 33554432
  %tobool27 = icmp ne i32 %and26, 0
  br i1 %tobool27, label %lor.end.31, label %lor.rhs.28

lor.rhs.28:                                       ; preds = %if.then
  %14 = load i32, i32* @flag_pic, align 4
  %tobool29 = icmp ne i32 %14, 0
  %lnot30 = xor i1 %tobool29, true
  br label %lor.end.31

lor.end.31:                                       ; preds = %lor.rhs.28, %if.then
  %15 = phi i1 [ true, %if.then ], [ %lnot30, %lor.rhs.28 ]
  %cond32 = select i1 %15, i32 -1, i32 3
  %idxprom33 = zext i32 %cond32 to i64
  %arrayidx34 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom33
  store i8 1, i8* %arrayidx34, align 1
  %16 = load i32, i32* @target_flags, align 4
  %and35 = and i32 %16, 33554432
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %lor.end.40, label %lor.rhs.37

lor.rhs.37:                                       ; preds = %lor.end.31
  %17 = load i32, i32* @flag_pic, align 4
  %tobool38 = icmp ne i32 %17, 0
  %lnot39 = xor i1 %tobool38, true
  br label %lor.end.40

lor.end.40:                                       ; preds = %lor.rhs.37, %lor.end.31
  %18 = phi i1 [ true, %lor.end.31 ], [ %lnot39, %lor.rhs.37 ]
  %cond41 = select i1 %18, i32 -1, i32 3
  %idxprom42 = zext i32 %cond41 to i64
  %arrayidx43 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom42
  store i8 1, i8* %arrayidx43, align 1
  br label %if.end

if.end:                                           ; preds = %lor.end.40, %lor.end
  %19 = load i32, i32* @target_flags, align 4
  %and44 = and i32 %19, 16384
  %cmp45 = icmp ne i32 %and44, 0
  br i1 %cmp45, label %if.end.64, label %if.then.47

if.then.47:                                       ; preds = %if.end
  store i32 0, i32* %i48, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.61, %if.then.47
  %20 = load i32, i32* %i48, align 4
  %cmp50 = icmp slt i32 %20, 53
  br i1 %cmp50, label %for.body.52, label %for.end.63

for.body.52:                                      ; preds = %for.cond.49
  %21 = load i64, i64* getelementptr inbounds ([25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 17), align 8
  %22 = load i32, i32* %i48, align 4
  %sh_prom = zext i32 %22 to i64
  %shl = shl i64 1, %sh_prom
  %and53 = and i64 %21, %shl
  %tobool54 = icmp ne i64 %and53, 0
  br i1 %tobool54, label %if.then.55, label %if.end.60

if.then.55:                                       ; preds = %for.body.52
  %23 = load i32, i32* %i48, align 4
  %idxprom56 = sext i32 %23 to i64
  %arrayidx57 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom56
  store i8 1, i8* %arrayidx57, align 1
  %24 = load i32, i32* %i48, align 4
  %idxprom58 = sext i32 %24 to i64
  %arrayidx59 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom58
  store i8 1, i8* %arrayidx59, align 1
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.55, %for.body.52
  br label %for.inc.61

for.inc.61:                                       ; preds = %if.end.60
  %25 = load i32, i32* %i48, align 4
  %inc62 = add nsw i32 %25, 1
  store i32 %inc62, i32* %i48, align 4
  br label %for.cond.49

for.end.63:                                       ; preds = %for.cond.49
  br label %if.end.64

if.end.64:                                        ; preds = %for.end.63, %if.end
  %26 = load i32, i32* @target_flags, align 4
  %and65 = and i32 %26, 327680
  %cmp66 = icmp ne i32 %and65, 0
  br i1 %cmp66, label %if.end.87, label %if.then.68

if.then.68:                                       ; preds = %if.end.64
  store i32 0, i32* %i69, align 4
  br label %for.cond.70

for.cond.70:                                      ; preds = %for.inc.84, %if.then.68
  %27 = load i32, i32* %i69, align 4
  %cmp71 = icmp slt i32 %27, 53
  br i1 %cmp71, label %for.body.73, label %for.end.86

for.body.73:                                      ; preds = %for.cond.70
  %28 = load i64, i64* getelementptr inbounds ([25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 16), align 8
  %29 = load i32, i32* %i69, align 4
  %sh_prom74 = zext i32 %29 to i64
  %shl75 = shl i64 1, %sh_prom74
  %and76 = and i64 %28, %shl75
  %tobool77 = icmp ne i64 %and76, 0
  br i1 %tobool77, label %if.then.78, label %if.end.83

if.then.78:                                       ; preds = %for.body.73
  %30 = load i32, i32* %i69, align 4
  %idxprom79 = sext i32 %30 to i64
  %arrayidx80 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom79
  store i8 1, i8* %arrayidx80, align 1
  %31 = load i32, i32* %i69, align 4
  %idxprom81 = sext i32 %31 to i64
  %arrayidx82 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom81
  store i8 1, i8* %arrayidx82, align 1
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.78, %for.body.73
  br label %for.inc.84

for.inc.84:                                       ; preds = %if.end.83
  %32 = load i32, i32* %i69, align 4
  %inc85 = add nsw i32 %32, 1
  store i32 %inc85, i32* %i69, align 4
  br label %for.cond.70

for.end.86:                                       ; preds = %for.cond.70
  br label %if.end.87

if.end.87:                                        ; preds = %for.end.86, %if.end.64
  %33 = load i32, i32* @target_flags, align 4
  %and88 = and i32 %33, 1
  %tobool89 = icmp ne i32 %and88, 0
  br i1 %tobool89, label %if.end.111, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.87
  %34 = load i32, i32* @target_flags, align 4
  %and90 = and i32 %34, 32
  %tobool91 = icmp ne i32 %and90, 0
  br i1 %tobool91, label %if.end.111, label %if.then.92

if.then.92:                                       ; preds = %land.lhs.true
  %35 = load i64, i64* getelementptr inbounds ([25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 15), align 8
  store i64 %35, i64* %x, align 8
  store i32 0, i32* %i93, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.108, %if.then.92
  %36 = load i32, i32* %i93, align 4
  %cmp95 = icmp slt i32 %36, 53
  br i1 %cmp95, label %for.body.97, label %for.end.110

for.body.97:                                      ; preds = %for.cond.94
  %37 = load i64, i64* %x, align 8
  %38 = load i32, i32* %i93, align 4
  %sh_prom98 = zext i32 %38 to i64
  %shl99 = shl i64 1, %sh_prom98
  %and100 = and i64 %37, %shl99
  %tobool101 = icmp ne i64 %and100, 0
  br i1 %tobool101, label %if.then.102, label %if.end.107

if.then.102:                                      ; preds = %for.body.97
  %39 = load i32, i32* %i93, align 4
  %idxprom103 = sext i32 %39 to i64
  %arrayidx104 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom103
  store i8 1, i8* %arrayidx104, align 1
  %40 = load i32, i32* %i93, align 4
  %idxprom105 = sext i32 %40 to i64
  %arrayidx106 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom105
  store i8 1, i8* %arrayidx106, align 1
  br label %if.end.107

if.end.107:                                       ; preds = %if.then.102, %for.body.97
  br label %for.inc.108

for.inc.108:                                      ; preds = %if.end.107
  %41 = load i32, i32* %i93, align 4
  %inc109 = add nsw i32 %41, 1
  store i32 %inc109, i32* %i93, align 4
  br label %for.cond.94

for.end.110:                                      ; preds = %for.cond.94
  br label %if.end.111

if.end.111:                                       ; preds = %for.end.110, %land.lhs.true, %if.end.87
  br label %do.end

do.end:                                           ; preds = %if.end.111
  call void @llvm.memset.p0i8.i64(i8* bitcast ([25 x i32]* @reg_class_size to i8*), i8 0, i64 100, i32 1, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.134, %do.end
  %42 = load i32, i32* %i, align 4
  %cmp113 = icmp ult i32 %42, 25
  br i1 %cmp113, label %for.body.115, label %for.end.136

for.body.115:                                     ; preds = %for.cond.112
  store i32 0, i32* %j, align 4
  br label %for.cond.116

for.cond.116:                                     ; preds = %for.inc.131, %for.body.115
  %43 = load i32, i32* %j, align 4
  %cmp117 = icmp ult i32 %43, 53
  br i1 %cmp117, label %for.body.119, label %for.end.133

for.body.119:                                     ; preds = %for.cond.116
  %44 = load i32, i32* %i, align 4
  %idxprom120 = zext i32 %44 to i64
  %arrayidx121 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom120
  %45 = load i64, i64* %arrayidx121, align 8
  %46 = load i32, i32* %j, align 4
  %sh_prom122 = zext i32 %46 to i64
  %shl123 = shl i64 1, %sh_prom122
  %and124 = and i64 %45, %shl123
  %tobool125 = icmp ne i64 %and124, 0
  br i1 %tobool125, label %if.then.126, label %if.end.130

if.then.126:                                      ; preds = %for.body.119
  %47 = load i32, i32* %i, align 4
  %idxprom127 = zext i32 %47 to i64
  %arrayidx128 = getelementptr inbounds [25 x i32], [25 x i32]* @reg_class_size, i32 0, i64 %idxprom127
  %48 = load i32, i32* %arrayidx128, align 4
  %inc129 = add i32 %48, 1
  store i32 %inc129, i32* %arrayidx128, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.126, %for.body.119
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %49 = load i32, i32* %j, align 4
  %inc132 = add i32 %49, 1
  store i32 %inc132, i32* %j, align 4
  br label %for.cond.116

for.end.133:                                      ; preds = %for.cond.116
  br label %for.inc.134

for.inc.134:                                      ; preds = %for.end.133
  %50 = load i32, i32* %i, align 4
  %inc135 = add i32 %50, 1
  store i32 %inc135, i32* %i, align 4
  br label %for.cond.112

for.end.136:                                      ; preds = %for.cond.112
  store i32 0, i32* %i, align 4
  br label %for.cond.137

for.cond.137:                                     ; preds = %for.inc.184, %for.end.136
  %51 = load i32, i32* %i, align 4
  %cmp138 = icmp ult i32 %51, 25
  br i1 %cmp138, label %for.body.140, label %for.end.186

for.body.140:                                     ; preds = %for.cond.137
  store i32 0, i32* %j, align 4
  br label %for.cond.141

for.cond.141:                                     ; preds = %for.inc.181, %for.body.140
  %52 = load i32, i32* %j, align 4
  %cmp142 = icmp ult i32 %52, 25
  br i1 %cmp142, label %for.body.144, label %for.end.183

for.body.144:                                     ; preds = %for.cond.141
  %53 = load i32, i32* %i, align 4
  %idxprom145 = zext i32 %53 to i64
  %arrayidx146 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom145
  %54 = load i64, i64* %arrayidx146, align 8
  store i64 %54, i64* %c, align 8
  %55 = load i32, i32* %j, align 4
  %idxprom147 = zext i32 %55 to i64
  %arrayidx148 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom147
  %56 = load i64, i64* %arrayidx148, align 8
  %57 = load i64, i64* %c, align 8
  %or = or i64 %57, %56
  store i64 %or, i64* %c, align 8
  store i32 0, i32* %k, align 4
  br label %for.cond.149

for.cond.149:                                     ; preds = %for.inc.178, %for.body.144
  %58 = load i32, i32* %k, align 4
  %cmp150 = icmp slt i32 %58, 25
  br i1 %cmp150, label %for.body.152, label %for.end.180

for.body.152:                                     ; preds = %for.cond.149
  %59 = load i32, i32* %k, align 4
  %idxprom153 = sext i32 %59 to i64
  %arrayidx154 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom153
  %60 = load i64, i64* %arrayidx154, align 8
  %61 = load i64, i64* %c, align 8
  %neg = xor i64 %61, -1
  %and155 = and i64 %60, %neg
  %cmp156 = icmp eq i64 0, %and155
  br i1 %cmp156, label %if.then.158, label %if.end.159

if.then.158:                                      ; preds = %for.body.152
  br label %subclass1

if.end.159:                                       ; preds = %for.body.152
  br label %for.inc.178

subclass1:                                        ; preds = %if.then.158
  %62 = load i32, i32* %k, align 4
  %idxprom160 = sext i32 %62 to i64
  %arrayidx161 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom160
  %63 = load i64, i64* %arrayidx161, align 8
  %64 = load i32, i32* %j, align 4
  %idxprom162 = zext i32 %64 to i64
  %65 = load i32, i32* %i, align 4
  %idxprom163 = zext i32 %65 to i64
  %arrayidx164 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subunion, i32 0, i64 %idxprom163
  %arrayidx165 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx164, i32 0, i64 %idxprom162
  %66 = load i32, i32* %arrayidx165, align 4
  %idxprom166 = sext i32 %66 to i64
  %arrayidx167 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom166
  %67 = load i64, i64* %arrayidx167, align 8
  %neg168 = xor i64 %67, -1
  %and169 = and i64 %63, %neg168
  %cmp170 = icmp eq i64 0, %and169
  br i1 %cmp170, label %if.then.172, label %if.end.173

if.then.172:                                      ; preds = %subclass1
  br label %subclass2

if.end.173:                                       ; preds = %subclass1
  %68 = load i32, i32* %k, align 4
  %69 = load i32, i32* %j, align 4
  %idxprom174 = zext i32 %69 to i64
  %70 = load i32, i32* %i, align 4
  %idxprom175 = zext i32 %70 to i64
  %arrayidx176 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subunion, i32 0, i64 %idxprom175
  %arrayidx177 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx176, i32 0, i64 %idxprom174
  store i32 %68, i32* %arrayidx177, align 4
  br label %subclass2

subclass2:                                        ; preds = %if.end.173, %if.then.172
  br label %for.inc.178

for.inc.178:                                      ; preds = %subclass2, %if.end.159
  %71 = load i32, i32* %k, align 4
  %inc179 = add nsw i32 %71, 1
  store i32 %inc179, i32* %k, align 4
  br label %for.cond.149

for.end.180:                                      ; preds = %for.cond.149
  br label %for.inc.181

for.inc.181:                                      ; preds = %for.end.180
  %72 = load i32, i32* %j, align 4
  %inc182 = add i32 %72, 1
  store i32 %inc182, i32* %j, align 4
  br label %for.cond.141

for.end.183:                                      ; preds = %for.cond.141
  br label %for.inc.184

for.inc.184:                                      ; preds = %for.end.183
  %73 = load i32, i32* %i, align 4
  %inc185 = add i32 %73, 1
  store i32 %inc185, i32* %i, align 4
  br label %for.cond.137

for.end.186:                                      ; preds = %for.cond.137
  store i32 0, i32* %i, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.224, %for.end.186
  %74 = load i32, i32* %i, align 4
  %cmp188 = icmp ult i32 %74, 25
  br i1 %cmp188, label %for.body.190, label %for.end.226

for.body.190:                                     ; preds = %for.cond.187
  store i32 0, i32* %j, align 4
  br label %for.cond.191

for.cond.191:                                     ; preds = %for.inc.221, %for.body.190
  %75 = load i32, i32* %j, align 4
  %cmp192 = icmp ult i32 %75, 25
  br i1 %cmp192, label %for.body.194, label %for.end.223

for.body.194:                                     ; preds = %for.cond.191
  %76 = load i32, i32* %i, align 4
  %idxprom197 = zext i32 %76 to i64
  %arrayidx198 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom197
  %77 = load i64, i64* %arrayidx198, align 8
  store i64 %77, i64* %c195, align 8
  %78 = load i32, i32* %j, align 4
  %idxprom199 = zext i32 %78 to i64
  %arrayidx200 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom199
  %79 = load i64, i64* %arrayidx200, align 8
  %80 = load i64, i64* %c195, align 8
  %or201 = or i64 %80, %79
  store i64 %or201, i64* %c195, align 8
  store i32 0, i32* %k196, align 4
  br label %for.cond.202

for.cond.202:                                     ; preds = %for.inc.214, %for.body.194
  %81 = load i32, i32* %k196, align 4
  %cmp203 = icmp slt i32 %81, 25
  br i1 %cmp203, label %for.body.205, label %for.end.216

for.body.205:                                     ; preds = %for.cond.202
  %82 = load i64, i64* %c195, align 8
  %83 = load i32, i32* %k196, align 4
  %idxprom206 = sext i32 %83 to i64
  %arrayidx207 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom206
  %84 = load i64, i64* %arrayidx207, align 8
  %neg208 = xor i64 %84, -1
  %and209 = and i64 %82, %neg208
  %cmp210 = icmp eq i64 0, %and209
  br i1 %cmp210, label %if.then.212, label %if.end.213

if.then.212:                                      ; preds = %for.body.205
  br label %superclass

if.end.213:                                       ; preds = %for.body.205
  br label %for.inc.214

for.inc.214:                                      ; preds = %if.end.213
  %85 = load i32, i32* %k196, align 4
  %inc215 = add nsw i32 %85, 1
  store i32 %inc215, i32* %k196, align 4
  br label %for.cond.202

for.end.216:                                      ; preds = %for.cond.202
  br label %superclass

superclass:                                       ; preds = %for.end.216, %if.then.212
  %86 = load i32, i32* %k196, align 4
  %87 = load i32, i32* %j, align 4
  %idxprom217 = zext i32 %87 to i64
  %88 = load i32, i32* %i, align 4
  %idxprom218 = zext i32 %88 to i64
  %arrayidx219 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_superunion, i32 0, i64 %idxprom218
  %arrayidx220 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx219, i32 0, i64 %idxprom217
  store i32 %86, i32* %arrayidx220, align 4
  br label %for.inc.221

for.inc.221:                                      ; preds = %superclass
  %89 = load i32, i32* %j, align 4
  %inc222 = add i32 %89, 1
  store i32 %inc222, i32* %j, align 4
  br label %for.cond.191

for.end.223:                                      ; preds = %for.cond.191
  br label %for.inc.224

for.inc.224:                                      ; preds = %for.end.223
  %90 = load i32, i32* %i, align 4
  %inc225 = add i32 %90, 1
  store i32 %inc225, i32* %i, align 4
  br label %for.cond.187

for.end.226:                                      ; preds = %for.cond.187
  store i32 0, i32* %i, align 4
  br label %for.cond.227

for.cond.227:                                     ; preds = %for.inc.246, %for.end.226
  %91 = load i32, i32* %i, align 4
  %cmp228 = icmp ult i32 %91, 25
  br i1 %cmp228, label %for.body.230, label %for.end.248

for.body.230:                                     ; preds = %for.cond.227
  store i32 0, i32* %j, align 4
  br label %for.cond.231

for.cond.231:                                     ; preds = %for.inc.243, %for.body.230
  %92 = load i32, i32* %j, align 4
  %cmp232 = icmp ult i32 %92, 25
  br i1 %cmp232, label %for.body.234, label %for.end.245

for.body.234:                                     ; preds = %for.cond.231
  %93 = load i32, i32* %j, align 4
  %idxprom235 = zext i32 %93 to i64
  %94 = load i32, i32* %i, align 4
  %idxprom236 = zext i32 %94 to i64
  %arrayidx237 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_superclasses, i32 0, i64 %idxprom236
  %arrayidx238 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx237, i32 0, i64 %idxprom235
  store i32 25, i32* %arrayidx238, align 4
  %95 = load i32, i32* %j, align 4
  %idxprom239 = zext i32 %95 to i64
  %96 = load i32, i32* %i, align 4
  %idxprom240 = zext i32 %96 to i64
  %arrayidx241 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subclasses, i32 0, i64 %idxprom240
  %arrayidx242 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx241, i32 0, i64 %idxprom239
  store i32 25, i32* %arrayidx242, align 4
  br label %for.inc.243

for.inc.243:                                      ; preds = %for.body.234
  %97 = load i32, i32* %j, align 4
  %inc244 = add i32 %97, 1
  store i32 %inc244, i32* %j, align 4
  br label %for.cond.231

for.end.245:                                      ; preds = %for.cond.231
  br label %for.inc.246

for.inc.246:                                      ; preds = %for.end.245
  %98 = load i32, i32* %i, align 4
  %inc247 = add i32 %98, 1
  store i32 %inc247, i32* %i, align 4
  br label %for.cond.227

for.end.248:                                      ; preds = %for.cond.227
  store i32 0, i32* %i, align 4
  br label %for.cond.249

for.cond.249:                                     ; preds = %for.inc.288, %for.end.248
  %99 = load i32, i32* %i, align 4
  %cmp250 = icmp ult i32 %99, 25
  br i1 %cmp250, label %for.body.252, label %for.end.290

for.body.252:                                     ; preds = %for.cond.249
  %100 = load i32, i32* %i, align 4
  %cmp253 = icmp eq i32 %100, 0
  br i1 %cmp253, label %if.then.255, label %if.end.256

if.then.255:                                      ; preds = %for.body.252
  br label %for.inc.288

if.end.256:                                       ; preds = %for.body.252
  %101 = load i32, i32* %i, align 4
  %add = add i32 %101, 1
  store i32 %add, i32* %j, align 4
  br label %for.cond.257

for.cond.257:                                     ; preds = %for.inc.285, %if.end.256
  %102 = load i32, i32* %j, align 4
  %cmp258 = icmp ult i32 %102, 25
  br i1 %cmp258, label %for.body.260, label %for.end.287

for.body.260:                                     ; preds = %for.cond.257
  %103 = load i32, i32* %i, align 4
  %idxprom261 = zext i32 %103 to i64
  %arrayidx262 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom261
  %104 = load i64, i64* %arrayidx262, align 8
  %105 = load i32, i32* %j, align 4
  %idxprom263 = zext i32 %105 to i64
  %arrayidx264 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom263
  %106 = load i64, i64* %arrayidx264, align 8
  %neg265 = xor i64 %106, -1
  %and266 = and i64 %104, %neg265
  %cmp267 = icmp eq i64 0, %and266
  br i1 %cmp267, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %for.body.260
  br label %subclass

if.end.270:                                       ; preds = %for.body.260
  br label %for.inc.285

subclass:                                         ; preds = %if.then.269
  %107 = load i32, i32* %i, align 4
  %idxprom271 = zext i32 %107 to i64
  %arrayidx272 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_superclasses, i32 0, i64 %idxprom271
  %arrayidx273 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx272, i32 0, i64 0
  store i32* %arrayidx273, i32** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %subclass
  %108 = load i32*, i32** %p, align 8
  %109 = load i32, i32* %108, align 4
  %cmp274 = icmp ne i32 %109, 25
  br i1 %cmp274, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %110 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %111 = load i32, i32* %j, align 4
  %112 = load i32*, i32** %p, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* %j, align 4
  %idxprom276 = zext i32 %113 to i64
  %arrayidx277 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subclasses, i32 0, i64 %idxprom276
  %arrayidx278 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx277, i32 0, i64 0
  store i32* %arrayidx278, i32** %p, align 8
  br label %while.cond.279

while.cond.279:                                   ; preds = %while.body.282, %while.end
  %114 = load i32*, i32** %p, align 8
  %115 = load i32, i32* %114, align 4
  %cmp280 = icmp ne i32 %115, 25
  br i1 %cmp280, label %while.body.282, label %while.end.284

while.body.282:                                   ; preds = %while.cond.279
  %116 = load i32*, i32** %p, align 8
  %incdec.ptr283 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %incdec.ptr283, i32** %p, align 8
  br label %while.cond.279

while.end.284:                                    ; preds = %while.cond.279
  %117 = load i32, i32* %i, align 4
  %118 = load i32*, i32** %p, align 8
  store i32 %117, i32* %118, align 4
  br label %for.inc.285

for.inc.285:                                      ; preds = %while.end.284, %if.end.270
  %119 = load i32, i32* %j, align 4
  %inc286 = add i32 %119, 1
  store i32 %inc286, i32* %j, align 4
  br label %for.cond.257

for.end.287:                                      ; preds = %for.cond.257
  br label %for.inc.288

for.inc.288:                                      ; preds = %for.end.287, %if.then.255
  %120 = load i32, i32* %i, align 4
  %inc289 = add i32 %120, 1
  store i32 %inc289, i32* %i, align 4
  br label %for.cond.249

for.end.290:                                      ; preds = %for.cond.249
  store i64 0, i64* @fixed_reg_set, align 8
  store i64 0, i64* @call_used_reg_set, align 8
  store i64 0, i64* @call_fixed_reg_set, align 8
  store i64 0, i64* @regs_invalidated_by_call, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @call_fixed_regs, i32 0, i32 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @fixed_regs, i32 0, i32 0), i64 53, i32 16, i1 false)
  store i32 0, i32* @n_non_fixed_regs, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.291

for.cond.291:                                     ; preds = %for.inc.412, %for.end.290
  %121 = load i32, i32* %i, align 4
  %cmp292 = icmp ult i32 %121, 53
  br i1 %cmp292, label %for.body.294, label %for.end.414

for.body.294:                                     ; preds = %for.cond.291
  %122 = load i32, i32* %i, align 4
  %idxprom295 = zext i32 %122 to i64
  %arrayidx296 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom295
  %123 = load i8, i8* %arrayidx296, align 1
  %tobool297 = icmp ne i8 %123, 0
  br i1 %tobool297, label %if.then.298, label %if.else

if.then.298:                                      ; preds = %for.body.294
  %124 = load i32, i32* %i, align 4
  %sh_prom299 = zext i32 %124 to i64
  %shl300 = shl i64 1, %sh_prom299
  %125 = load i64, i64* @fixed_reg_set, align 8
  %or301 = or i64 %125, %shl300
  store i64 %or301, i64* @fixed_reg_set, align 8
  br label %if.end.303

if.else:                                          ; preds = %for.body.294
  %126 = load i32, i32* @n_non_fixed_regs, align 4
  %inc302 = add nsw i32 %126, 1
  store i32 %inc302, i32* @n_non_fixed_regs, align 4
  br label %if.end.303

if.end.303:                                       ; preds = %if.else, %if.then.298
  %127 = load i32, i32* %i, align 4
  %idxprom304 = zext i32 %127 to i64
  %arrayidx305 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom304
  %128 = load i8, i8* %arrayidx305, align 1
  %tobool306 = icmp ne i8 %128, 0
  br i1 %tobool306, label %if.then.307, label %if.end.311

if.then.307:                                      ; preds = %if.end.303
  %129 = load i32, i32* %i, align 4
  %sh_prom308 = zext i32 %129 to i64
  %shl309 = shl i64 1, %sh_prom308
  %130 = load i64, i64* @call_used_reg_set, align 8
  %or310 = or i64 %130, %shl309
  store i64 %or310, i64* @call_used_reg_set, align 8
  br label %if.end.311

if.end.311:                                       ; preds = %if.then.307, %if.end.303
  %131 = load i32, i32* %i, align 4
  %idxprom312 = zext i32 %131 to i64
  %arrayidx313 = getelementptr inbounds [53 x i8], [53 x i8]* @call_fixed_regs, i32 0, i64 %idxprom312
  %132 = load i8, i8* %arrayidx313, align 1
  %tobool314 = icmp ne i8 %132, 0
  br i1 %tobool314, label %if.then.315, label %if.end.319

if.then.315:                                      ; preds = %if.end.311
  %133 = load i32, i32* %i, align 4
  %sh_prom316 = zext i32 %133 to i64
  %shl317 = shl i64 1, %sh_prom316
  %134 = load i64, i64* @call_fixed_reg_set, align 8
  %or318 = or i64 %134, %shl317
  store i64 %or318, i64* @call_fixed_reg_set, align 8
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.315, %if.end.311
  %135 = load i32, i32* %i, align 4
  %idxprom320 = zext i32 %135 to i64
  %arrayidx321 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom320
  %136 = load i32, i32* %arrayidx321, align 4
  %cmp322 = icmp eq i32 %136, 1
  br i1 %cmp322, label %if.then.353, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.319
  %137 = load i32, i32* %i, align 4
  %idxprom324 = zext i32 %137 to i64
  %arrayidx325 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom324
  %138 = load i32, i32* %arrayidx325, align 4
  %cmp326 = icmp eq i32 %138, 2
  br i1 %cmp326, label %if.then.353, label %lor.lhs.false.328

lor.lhs.false.328:                                ; preds = %lor.lhs.false
  %139 = load i32, i32* %i, align 4
  %idxprom329 = zext i32 %139 to i64
  %arrayidx330 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom329
  %140 = load i32, i32* %arrayidx330, align 4
  %cmp331 = icmp eq i32 %140, 3
  br i1 %cmp331, label %if.then.353, label %lor.lhs.false.333

lor.lhs.false.333:                                ; preds = %lor.lhs.false.328
  %141 = load i32, i32* %i, align 4
  %idxprom334 = zext i32 %141 to i64
  %arrayidx335 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom334
  %142 = load i32, i32* %arrayidx335, align 4
  %cmp336 = icmp eq i32 %142, 4
  br i1 %cmp336, label %if.then.353, label %lor.lhs.false.338

lor.lhs.false.338:                                ; preds = %lor.lhs.false.333
  %143 = load i32, i32* %i, align 4
  %idxprom339 = zext i32 %143 to i64
  %arrayidx340 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom339
  %144 = load i32, i32* %arrayidx340, align 4
  %cmp341 = icmp eq i32 %144, 7
  br i1 %cmp341, label %if.then.353, label %lor.lhs.false.343

lor.lhs.false.343:                                ; preds = %lor.lhs.false.338
  %145 = load i32, i32* %i, align 4
  %idxprom344 = zext i32 %145 to i64
  %arrayidx345 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom344
  %146 = load i32, i32* %arrayidx345, align 4
  %cmp346 = icmp eq i32 %146, 5
  br i1 %cmp346, label %if.then.353, label %lor.lhs.false.348

lor.lhs.false.348:                                ; preds = %lor.lhs.false.343
  %147 = load i32, i32* %i, align 4
  %idxprom349 = zext i32 %147 to i64
  %arrayidx350 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom349
  %148 = load i32, i32* %arrayidx350, align 4
  %cmp351 = icmp eq i32 %148, 6
  br i1 %cmp351, label %if.then.353, label %if.end.357

if.then.353:                                      ; preds = %lor.lhs.false.348, %lor.lhs.false.343, %lor.lhs.false.338, %lor.lhs.false.333, %lor.lhs.false.328, %lor.lhs.false, %if.end.319
  %149 = load i32, i32* %i, align 4
  %sh_prom354 = zext i32 %149 to i64
  %shl355 = shl i64 1, %sh_prom354
  %150 = load i64, i64* @losing_caller_save_reg_set, align 8
  %or356 = or i64 %150, %shl355
  store i64 %or356, i64* @losing_caller_save_reg_set, align 8
  br label %if.end.357

if.end.357:                                       ; preds = %if.then.353, %lor.lhs.false.348
  %151 = load i32, i32* %i, align 4
  %cmp358 = icmp eq i32 %151, 7
  br i1 %cmp358, label %if.then.363, label %lor.lhs.false.360

lor.lhs.false.360:                                ; preds = %if.end.357
  %152 = load i32, i32* %i, align 4
  %cmp361 = icmp eq i32 %152, 20
  br i1 %cmp361, label %if.then.363, label %if.else.364

if.then.363:                                      ; preds = %lor.lhs.false.360, %if.end.357
  br label %if.end.411

if.else.364:                                      ; preds = %lor.lhs.false.360
  %153 = load i32, i32* %i, align 4
  %cmp365 = icmp eq i32 %153, 6
  br i1 %cmp365, label %if.then.367, label %if.else.368

if.then.367:                                      ; preds = %if.else.364
  br label %if.end.410

if.else.368:                                      ; preds = %if.else.364
  %154 = load i32, i32* %i, align 4
  %cmp369 = icmp eq i32 %154, 16
  br i1 %cmp369, label %land.lhs.true.371, label %if.else.377

land.lhs.true.371:                                ; preds = %if.else.368
  %155 = load i32, i32* %i, align 4
  %idxprom372 = zext i32 %155 to i64
  %arrayidx373 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom372
  %156 = load i8, i8* %arrayidx373, align 1
  %conv374 = sext i8 %156 to i32
  %tobool375 = icmp ne i32 %conv374, 0
  br i1 %tobool375, label %if.then.376, label %if.else.377

if.then.376:                                      ; preds = %land.lhs.true.371
  br label %if.end.409

if.else.377:                                      ; preds = %land.lhs.true.371, %if.else.368
  %157 = load i32, i32* %i, align 4
  %158 = load i32, i32* @target_flags, align 4
  %and378 = and i32 %158, 33554432
  %tobool379 = icmp ne i32 %and378, 0
  br i1 %tobool379, label %lor.end.383, label %lor.rhs.380

lor.rhs.380:                                      ; preds = %if.else.377
  %159 = load i32, i32* @flag_pic, align 4
  %tobool381 = icmp ne i32 %159, 0
  %lnot382 = xor i1 %tobool381, true
  br label %lor.end.383

lor.end.383:                                      ; preds = %lor.rhs.380, %if.else.377
  %160 = phi i1 [ true, %if.else.377 ], [ %lnot382, %lor.rhs.380 ]
  %cond384 = select i1 %160, i32 -1, i32 3
  %cmp385 = icmp eq i32 %157, %cond384
  br i1 %cmp385, label %land.lhs.true.387, label %if.else.393

land.lhs.true.387:                                ; preds = %lor.end.383
  %161 = load i32, i32* %i, align 4
  %idxprom388 = zext i32 %161 to i64
  %arrayidx389 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom388
  %162 = load i8, i8* %arrayidx389, align 1
  %conv390 = sext i8 %162 to i32
  %tobool391 = icmp ne i32 %conv390, 0
  br i1 %tobool391, label %if.then.392, label %if.else.393

if.then.392:                                      ; preds = %land.lhs.true.387
  br label %if.end.408

if.else.393:                                      ; preds = %land.lhs.true.387, %lor.end.383
  %163 = load i32, i32* %i, align 4
  %idxprom394 = zext i32 %163 to i64
  %arrayidx395 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom394
  %164 = load i8, i8* %arrayidx395, align 1
  %conv396 = sext i8 %164 to i32
  %tobool397 = icmp ne i32 %conv396, 0
  br i1 %tobool397, label %if.then.403, label %lor.lhs.false.398

lor.lhs.false.398:                                ; preds = %if.else.393
  %165 = load i32, i32* %i, align 4
  %idxprom399 = zext i32 %165 to i64
  %arrayidx400 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom399
  %166 = load i8, i8* %arrayidx400, align 1
  %conv401 = sext i8 %166 to i32
  %tobool402 = icmp ne i32 %conv401, 0
  br i1 %tobool402, label %if.then.403, label %if.end.407

if.then.403:                                      ; preds = %lor.lhs.false.398, %if.else.393
  %167 = load i32, i32* %i, align 4
  %sh_prom404 = zext i32 %167 to i64
  %shl405 = shl i64 1, %sh_prom404
  %168 = load i64, i64* @regs_invalidated_by_call, align 8
  %or406 = or i64 %168, %shl405
  store i64 %or406, i64* @regs_invalidated_by_call, align 8
  br label %if.end.407

if.end.407:                                       ; preds = %if.then.403, %lor.lhs.false.398
  br label %if.end.408

if.end.408:                                       ; preds = %if.end.407, %if.then.392
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %if.then.376
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.then.367
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %if.then.363
  br label %for.inc.412

for.inc.412:                                      ; preds = %if.end.411
  %169 = load i32, i32* %i, align 4
  %inc413 = add i32 %169, 1
  store i32 %inc413, i32* %i, align 4
  br label %for.cond.291

for.end.414:                                      ; preds = %for.cond.291
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([25 x [59 x i8]], [25 x [59 x i8]]* @contains_reg_of_mode, i32 0, i32 0, i32 0), i8 0, i64 1475, i32 16, i1 false)
  %170 = bitcast [59 x i8]* %allocatable_regs_of_mode to i8*
  call void @llvm.memset.p0i8.i64(i8* %170, i8 0, i64 59, i32 16, i1 false)
  store i32 0, i32* %m, align 4
  br label %for.cond.415

for.cond.415:                                     ; preds = %for.inc.489, %for.end.414
  %171 = load i32, i32* %m, align 4
  %cmp416 = icmp ult i32 %171, 59
  br i1 %cmp416, label %for.body.418, label %for.end.491

for.body.418:                                     ; preds = %for.cond.415
  store i32 0, i32* %i, align 4
  br label %for.cond.419

for.cond.419:                                     ; preds = %for.inc.486, %for.body.418
  %172 = load i32, i32* %i, align 4
  %cmp420 = icmp ult i32 %172, 25
  br i1 %cmp420, label %for.body.422, label %for.end.488

for.body.422:                                     ; preds = %for.cond.419
  %173 = load i32, i32* %i, align 4
  %call = call i32 @reg_classes_intersect_p(i32 %173, i32 12)
  %tobool423 = icmp ne i32 %call, 0
  br i1 %tobool423, label %cond.false, label %cond.true

cond.true:                                        ; preds = %for.body.422
  %174 = load i32, i32* %m, align 4
  %idxprom424 = sext i32 %174 to i64
  %arrayidx425 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom424
  %175 = load i32, i32* %arrayidx425, align 4
  %cmp426 = icmp eq i32 %175, 5
  br i1 %cmp426, label %lor.end.433, label %lor.rhs.428

lor.rhs.428:                                      ; preds = %cond.true
  %176 = load i32, i32* %m, align 4
  %idxprom429 = sext i32 %176 to i64
  %arrayidx430 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom429
  %177 = load i32, i32* %arrayidx430, align 4
  %cmp431 = icmp eq i32 %177, 6
  br label %lor.end.433

lor.end.433:                                      ; preds = %lor.rhs.428, %cond.true
  %178 = phi i1 [ true, %cond.true ], [ %cmp431, %lor.rhs.428 ]
  %cond434 = select i1 %178, i32 2, i32 1
  br label %cond.end.450

cond.false:                                       ; preds = %for.body.422
  %179 = load i32, i32* %m, align 4
  %cmp435 = icmp eq i32 %179, 18
  br i1 %cmp435, label %cond.true.437, label %cond.false.438

cond.true.437:                                    ; preds = %cond.false
  br label %cond.end

cond.false.438:                                   ; preds = %cond.false
  %180 = load i32, i32* %m, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false.438, %cond.true.437
  %cond439 = phi i32 [ 17, %cond.true.437 ], [ %180, %cond.false.438 ]
  %idxprom440 = sext i32 %cond439 to i64
  %arrayidx441 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom440
  %181 = load i8, i8* %arrayidx441, align 1
  %conv442 = zext i8 %181 to i32
  %182 = load i32, i32* @target_flags, align 4
  %and443 = and i32 %182, 33554432
  %tobool444 = icmp ne i32 %and443, 0
  %cond445 = select i1 %tobool444, i32 8, i32 4
  %add446 = add nsw i32 %conv442, %cond445
  %sub = sub nsw i32 %add446, 1
  %183 = load i32, i32* @target_flags, align 4
  %and447 = and i32 %183, 33554432
  %tobool448 = icmp ne i32 %and447, 0
  %cond449 = select i1 %tobool448, i32 8, i32 4
  %div = sdiv i32 %sub, %cond449
  br label %cond.end.450

cond.end.450:                                     ; preds = %cond.end, %lor.end.433
  %cond451 = phi i32 [ %cond434, %lor.end.433 ], [ %div, %cond.end ]
  %184 = load i32, i32* %i, align 4
  %idxprom452 = zext i32 %184 to i64
  %arrayidx453 = getelementptr inbounds [25 x i32], [25 x i32]* @reg_class_size, i32 0, i64 %idxprom452
  %185 = load i32, i32* %arrayidx453, align 4
  %cmp454 = icmp ule i32 %cond451, %185
  br i1 %cmp454, label %if.then.456, label %if.end.485

if.then.456:                                      ; preds = %cond.end.450
  store i32 0, i32* %j, align 4
  br label %for.cond.457

for.cond.457:                                     ; preds = %for.inc.482, %if.then.456
  %186 = load i32, i32* %j, align 4
  %cmp458 = icmp ult i32 %186, 53
  br i1 %cmp458, label %for.body.460, label %for.end.484

for.body.460:                                     ; preds = %for.cond.457
  %187 = load i32, i32* %j, align 4
  %idxprom461 = zext i32 %187 to i64
  %arrayidx462 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom461
  %188 = load i8, i8* %arrayidx462, align 1
  %tobool463 = icmp ne i8 %188, 0
  br i1 %tobool463, label %if.end.481, label %land.lhs.true.464

land.lhs.true.464:                                ; preds = %for.body.460
  %189 = load i32, i32* %i, align 4
  %idxprom465 = zext i32 %189 to i64
  %arrayidx466 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom465
  %190 = load i64, i64* %arrayidx466, align 8
  %191 = load i32, i32* %j, align 4
  %sh_prom467 = zext i32 %191 to i64
  %shl468 = shl i64 1, %sh_prom467
  %and469 = and i64 %190, %shl468
  %tobool470 = icmp ne i64 %and469, 0
  br i1 %tobool470, label %land.lhs.true.471, label %if.end.481

land.lhs.true.471:                                ; preds = %land.lhs.true.464
  %192 = load i32, i32* %j, align 4
  %193 = load i32, i32* %m, align 4
  %call472 = call i32 @ix86_hard_regno_mode_ok(i32 %192, i32 %193)
  %tobool473 = icmp ne i32 %call472, 0
  br i1 %tobool473, label %if.then.474, label %if.end.481

if.then.474:                                      ; preds = %land.lhs.true.471
  %194 = load i32, i32* %m, align 4
  %idxprom475 = zext i32 %194 to i64
  %195 = load i32, i32* %i, align 4
  %idxprom476 = zext i32 %195 to i64
  %arrayidx477 = getelementptr inbounds [25 x [59 x i8]], [25 x [59 x i8]]* @contains_reg_of_mode, i32 0, i64 %idxprom476
  %arrayidx478 = getelementptr inbounds [59 x i8], [59 x i8]* %arrayidx477, i32 0, i64 %idxprom475
  store i8 1, i8* %arrayidx478, align 1
  %196 = load i32, i32* %m, align 4
  %idxprom479 = zext i32 %196 to i64
  %arrayidx480 = getelementptr inbounds [59 x i8], [59 x i8]* %allocatable_regs_of_mode, i32 0, i64 %idxprom479
  store i8 1, i8* %arrayidx480, align 1
  br label %for.end.484

if.end.481:                                       ; preds = %land.lhs.true.471, %land.lhs.true.464, %for.body.460
  br label %for.inc.482

for.inc.482:                                      ; preds = %if.end.481
  %197 = load i32, i32* %j, align 4
  %inc483 = add i32 %197, 1
  store i32 %inc483, i32* %j, align 4
  br label %for.cond.457

for.end.484:                                      ; preds = %if.then.474, %for.cond.457
  br label %if.end.485

if.end.485:                                       ; preds = %for.end.484, %cond.end.450
  br label %for.inc.486

for.inc.486:                                      ; preds = %if.end.485
  %198 = load i32, i32* %i, align 4
  %inc487 = add i32 %198, 1
  store i32 %inc487, i32* %i, align 4
  br label %for.cond.419

for.end.488:                                      ; preds = %for.cond.419
  br label %for.inc.489

for.inc.489:                                      ; preds = %for.end.488
  %199 = load i32, i32* %m, align 4
  %inc490 = add i32 %199, 1
  store i32 %inc490, i32* %m, align 4
  br label %for.cond.415

for.end.491:                                      ; preds = %for.cond.415
  store i32 0, i32* %m, align 4
  br label %for.cond.492

for.cond.492:                                     ; preds = %for.inc.693, %for.end.491
  %200 = load i32, i32* %m, align 4
  %cmp493 = icmp ult i32 %200, 59
  br i1 %cmp493, label %for.body.495, label %for.end.695

for.body.495:                                     ; preds = %for.cond.492
  %201 = load i32, i32* %m, align 4
  %idxprom496 = zext i32 %201 to i64
  %arrayidx497 = getelementptr inbounds [59 x i8], [59 x i8]* %allocatable_regs_of_mode, i32 0, i64 %idxprom496
  %202 = load i8, i8* %arrayidx497, align 1
  %tobool498 = icmp ne i8 %202, 0
  br i1 %tobool498, label %if.then.499, label %if.end.692

if.then.499:                                      ; preds = %for.body.495
  store i32 0, i32* %i, align 4
  br label %for.cond.500

for.cond.500:                                     ; preds = %for.inc.689, %if.then.499
  %203 = load i32, i32* %i, align 4
  %cmp501 = icmp ult i32 %203, 25
  br i1 %cmp501, label %for.body.503, label %for.end.691

for.body.503:                                     ; preds = %for.cond.500
  %204 = load i32, i32* %m, align 4
  %idxprom504 = zext i32 %204 to i64
  %205 = load i32, i32* %i, align 4
  %idxprom505 = zext i32 %205 to i64
  %arrayidx506 = getelementptr inbounds [25 x [59 x i8]], [25 x [59 x i8]]* @contains_reg_of_mode, i32 0, i64 %idxprom505
  %arrayidx507 = getelementptr inbounds [59 x i8], [59 x i8]* %arrayidx506, i32 0, i64 %idxprom504
  %206 = load i8, i8* %arrayidx507, align 1
  %tobool508 = icmp ne i8 %206, 0
  br i1 %tobool508, label %if.then.509, label %if.else.662

if.then.509:                                      ; preds = %for.body.503
  store i32 0, i32* %j, align 4
  br label %for.cond.510

for.cond.510:                                     ; preds = %for.inc.659, %if.then.509
  %207 = load i32, i32* %j, align 4
  %cmp511 = icmp ult i32 %207, 25
  br i1 %cmp511, label %for.body.513, label %for.end.661

for.body.513:                                     ; preds = %for.cond.510
  %208 = load i32, i32* %m, align 4
  %idxprom514 = zext i32 %208 to i64
  %209 = load i32, i32* %j, align 4
  %idxprom515 = zext i32 %209 to i64
  %arrayidx516 = getelementptr inbounds [25 x [59 x i8]], [25 x [59 x i8]]* @contains_reg_of_mode, i32 0, i64 %idxprom515
  %arrayidx517 = getelementptr inbounds [59 x i8], [59 x i8]* %arrayidx516, i32 0, i64 %idxprom514
  %210 = load i8, i8* %arrayidx517, align 1
  %tobool518 = icmp ne i8 %210, 0
  br i1 %tobool518, label %if.else.538, label %if.then.519

if.then.519:                                      ; preds = %for.body.513
  %211 = load i32, i32* %j, align 4
  %idxprom520 = zext i32 %211 to i64
  %212 = load i32, i32* %i, align 4
  %idxprom521 = zext i32 %212 to i64
  %213 = load i32, i32* %m, align 4
  %idxprom522 = zext i32 %213 to i64
  %arrayidx523 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @move_cost, i32 0, i64 %idxprom522
  %arrayidx524 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx523, i32 0, i64 %idxprom521
  %arrayidx525 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx524, i32 0, i64 %idxprom520
  store i32 65536, i32* %arrayidx525, align 4
  %214 = load i32, i32* %j, align 4
  %idxprom526 = zext i32 %214 to i64
  %215 = load i32, i32* %i, align 4
  %idxprom527 = zext i32 %215 to i64
  %216 = load i32, i32* %m, align 4
  %idxprom528 = zext i32 %216 to i64
  %arrayidx529 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_in_cost, i32 0, i64 %idxprom528
  %arrayidx530 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx529, i32 0, i64 %idxprom527
  %arrayidx531 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx530, i32 0, i64 %idxprom526
  store i32 65536, i32* %arrayidx531, align 4
  %217 = load i32, i32* %j, align 4
  %idxprom532 = zext i32 %217 to i64
  %218 = load i32, i32* %i, align 4
  %idxprom533 = zext i32 %218 to i64
  %219 = load i32, i32* %m, align 4
  %idxprom534 = zext i32 %219 to i64
  %arrayidx535 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_out_cost, i32 0, i64 %idxprom534
  %arrayidx536 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx535, i32 0, i64 %idxprom533
  %arrayidx537 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx536, i32 0, i64 %idxprom532
  store i32 65536, i32* %arrayidx537, align 4
  br label %if.end.658

if.else.538:                                      ; preds = %for.body.513
  %220 = load i32, i32* %m, align 4
  %221 = load i32, i32* %i, align 4
  %222 = load i32, i32* %j, align 4
  %call539 = call i32 @ix86_register_move_cost(i32 %220, i32 %221, i32 %222)
  store i32 %call539, i32* %cost, align 4
  %223 = load i32, i32* %j, align 4
  %idxprom540 = zext i32 %223 to i64
  %arrayidx541 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subclasses, i32 0, i64 %idxprom540
  %arrayidx542 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx541, i32 0, i64 0
  store i32* %arrayidx542, i32** %p2, align 8
  br label %for.cond.543

for.cond.543:                                     ; preds = %for.inc.576, %if.else.538
  %224 = load i32*, i32** %p2, align 8
  %225 = load i32, i32* %224, align 4
  %cmp544 = icmp ne i32 %225, 25
  br i1 %cmp544, label %for.body.546, label %for.end.578

for.body.546:                                     ; preds = %for.cond.543
  %226 = load i32*, i32** %p2, align 8
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %i, align 4
  %cmp547 = icmp ne i32 %227, %228
  br i1 %cmp547, label %land.lhs.true.549, label %if.end.575

land.lhs.true.549:                                ; preds = %for.body.546
  %229 = load i32, i32* %m, align 4
  %idxprom550 = zext i32 %229 to i64
  %230 = load i32*, i32** %p2, align 8
  %231 = load i32, i32* %230, align 4
  %idxprom551 = zext i32 %231 to i64
  %arrayidx552 = getelementptr inbounds [25 x [59 x i8]], [25 x [59 x i8]]* @contains_reg_of_mode, i32 0, i64 %idxprom551
  %arrayidx553 = getelementptr inbounds [59 x i8], [59 x i8]* %arrayidx552, i32 0, i64 %idxprom550
  %232 = load i8, i8* %arrayidx553, align 1
  %conv554 = sext i8 %232 to i32
  %tobool555 = icmp ne i32 %conv554, 0
  br i1 %tobool555, label %if.then.556, label %if.end.575

if.then.556:                                      ; preds = %land.lhs.true.549
  %233 = load i32, i32* %cost, align 4
  %234 = load i32*, i32** %p2, align 8
  %235 = load i32, i32* %234, align 4
  %idxprom557 = zext i32 %235 to i64
  %236 = load i32, i32* %i, align 4
  %idxprom558 = zext i32 %236 to i64
  %237 = load i32, i32* %m, align 4
  %idxprom559 = zext i32 %237 to i64
  %arrayidx560 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @move_cost, i32 0, i64 %idxprom559
  %arrayidx561 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx560, i32 0, i64 %idxprom558
  %arrayidx562 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx561, i32 0, i64 %idxprom557
  %238 = load i32, i32* %arrayidx562, align 4
  %cmp563 = icmp sgt i32 %233, %238
  br i1 %cmp563, label %cond.true.565, label %cond.false.566

cond.true.565:                                    ; preds = %if.then.556
  %239 = load i32, i32* %cost, align 4
  br label %cond.end.573

cond.false.566:                                   ; preds = %if.then.556
  %240 = load i32*, i32** %p2, align 8
  %241 = load i32, i32* %240, align 4
  %idxprom567 = zext i32 %241 to i64
  %242 = load i32, i32* %i, align 4
  %idxprom568 = zext i32 %242 to i64
  %243 = load i32, i32* %m, align 4
  %idxprom569 = zext i32 %243 to i64
  %arrayidx570 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @move_cost, i32 0, i64 %idxprom569
  %arrayidx571 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx570, i32 0, i64 %idxprom568
  %arrayidx572 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx571, i32 0, i64 %idxprom567
  %244 = load i32, i32* %arrayidx572, align 4
  br label %cond.end.573

cond.end.573:                                     ; preds = %cond.false.566, %cond.true.565
  %cond574 = phi i32 [ %239, %cond.true.565 ], [ %244, %cond.false.566 ]
  store i32 %cond574, i32* %cost, align 4
  br label %if.end.575

if.end.575:                                       ; preds = %cond.end.573, %land.lhs.true.549, %for.body.546
  br label %for.inc.576

for.inc.576:                                      ; preds = %if.end.575
  %245 = load i32*, i32** %p2, align 8
  %incdec.ptr577 = getelementptr inbounds i32, i32* %245, i32 1
  store i32* %incdec.ptr577, i32** %p2, align 8
  br label %for.cond.543

for.end.578:                                      ; preds = %for.cond.543
  %246 = load i32, i32* %i, align 4
  %idxprom579 = zext i32 %246 to i64
  %arrayidx580 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subclasses, i32 0, i64 %idxprom579
  %arrayidx581 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx580, i32 0, i64 0
  store i32* %arrayidx581, i32** %p1, align 8
  br label %for.cond.582

for.cond.582:                                     ; preds = %for.inc.615, %for.end.578
  %247 = load i32*, i32** %p1, align 8
  %248 = load i32, i32* %247, align 4
  %cmp583 = icmp ne i32 %248, 25
  br i1 %cmp583, label %for.body.585, label %for.end.617

for.body.585:                                     ; preds = %for.cond.582
  %249 = load i32*, i32** %p1, align 8
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %j, align 4
  %cmp586 = icmp ne i32 %250, %251
  br i1 %cmp586, label %land.lhs.true.588, label %if.end.614

land.lhs.true.588:                                ; preds = %for.body.585
  %252 = load i32, i32* %m, align 4
  %idxprom589 = zext i32 %252 to i64
  %253 = load i32*, i32** %p1, align 8
  %254 = load i32, i32* %253, align 4
  %idxprom590 = zext i32 %254 to i64
  %arrayidx591 = getelementptr inbounds [25 x [59 x i8]], [25 x [59 x i8]]* @contains_reg_of_mode, i32 0, i64 %idxprom590
  %arrayidx592 = getelementptr inbounds [59 x i8], [59 x i8]* %arrayidx591, i32 0, i64 %idxprom589
  %255 = load i8, i8* %arrayidx592, align 1
  %conv593 = sext i8 %255 to i32
  %tobool594 = icmp ne i32 %conv593, 0
  br i1 %tobool594, label %if.then.595, label %if.end.614

if.then.595:                                      ; preds = %land.lhs.true.588
  %256 = load i32, i32* %cost, align 4
  %257 = load i32, i32* %j, align 4
  %idxprom596 = zext i32 %257 to i64
  %258 = load i32*, i32** %p1, align 8
  %259 = load i32, i32* %258, align 4
  %idxprom597 = zext i32 %259 to i64
  %260 = load i32, i32* %m, align 4
  %idxprom598 = zext i32 %260 to i64
  %arrayidx599 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @move_cost, i32 0, i64 %idxprom598
  %arrayidx600 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx599, i32 0, i64 %idxprom597
  %arrayidx601 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx600, i32 0, i64 %idxprom596
  %261 = load i32, i32* %arrayidx601, align 4
  %cmp602 = icmp sgt i32 %256, %261
  br i1 %cmp602, label %cond.true.604, label %cond.false.605

cond.true.604:                                    ; preds = %if.then.595
  %262 = load i32, i32* %cost, align 4
  br label %cond.end.612

cond.false.605:                                   ; preds = %if.then.595
  %263 = load i32, i32* %j, align 4
  %idxprom606 = zext i32 %263 to i64
  %264 = load i32*, i32** %p1, align 8
  %265 = load i32, i32* %264, align 4
  %idxprom607 = zext i32 %265 to i64
  %266 = load i32, i32* %m, align 4
  %idxprom608 = zext i32 %266 to i64
  %arrayidx609 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @move_cost, i32 0, i64 %idxprom608
  %arrayidx610 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx609, i32 0, i64 %idxprom607
  %arrayidx611 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx610, i32 0, i64 %idxprom606
  %267 = load i32, i32* %arrayidx611, align 4
  br label %cond.end.612

cond.end.612:                                     ; preds = %cond.false.605, %cond.true.604
  %cond613 = phi i32 [ %262, %cond.true.604 ], [ %267, %cond.false.605 ]
  store i32 %cond613, i32* %cost, align 4
  br label %if.end.614

if.end.614:                                       ; preds = %cond.end.612, %land.lhs.true.588, %for.body.585
  br label %for.inc.615

for.inc.615:                                      ; preds = %if.end.614
  %268 = load i32*, i32** %p1, align 8
  %incdec.ptr616 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %incdec.ptr616, i32** %p1, align 8
  br label %for.cond.582

for.end.617:                                      ; preds = %for.cond.582
  %269 = load i32, i32* %cost, align 4
  %270 = load i32, i32* %j, align 4
  %idxprom618 = zext i32 %270 to i64
  %271 = load i32, i32* %i, align 4
  %idxprom619 = zext i32 %271 to i64
  %272 = load i32, i32* %m, align 4
  %idxprom620 = zext i32 %272 to i64
  %arrayidx621 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @move_cost, i32 0, i64 %idxprom620
  %arrayidx622 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx621, i32 0, i64 %idxprom619
  %arrayidx623 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx622, i32 0, i64 %idxprom618
  store i32 %269, i32* %arrayidx623, align 4
  %273 = load i32, i32* %i, align 4
  %274 = load i32, i32* %j, align 4
  %call624 = call i32 @reg_class_subset_p(i32 %273, i32 %274)
  %tobool625 = icmp ne i32 %call624, 0
  br i1 %tobool625, label %if.then.626, label %if.else.633

if.then.626:                                      ; preds = %for.end.617
  %275 = load i32, i32* %j, align 4
  %idxprom627 = zext i32 %275 to i64
  %276 = load i32, i32* %i, align 4
  %idxprom628 = zext i32 %276 to i64
  %277 = load i32, i32* %m, align 4
  %idxprom629 = zext i32 %277 to i64
  %arrayidx630 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_in_cost, i32 0, i64 %idxprom629
  %arrayidx631 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx630, i32 0, i64 %idxprom628
  %arrayidx632 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx631, i32 0, i64 %idxprom627
  store i32 0, i32* %arrayidx632, align 4
  br label %if.end.640

if.else.633:                                      ; preds = %for.end.617
  %278 = load i32, i32* %cost, align 4
  %279 = load i32, i32* %j, align 4
  %idxprom634 = zext i32 %279 to i64
  %280 = load i32, i32* %i, align 4
  %idxprom635 = zext i32 %280 to i64
  %281 = load i32, i32* %m, align 4
  %idxprom636 = zext i32 %281 to i64
  %arrayidx637 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_in_cost, i32 0, i64 %idxprom636
  %arrayidx638 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx637, i32 0, i64 %idxprom635
  %arrayidx639 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx638, i32 0, i64 %idxprom634
  store i32 %278, i32* %arrayidx639, align 4
  br label %if.end.640

if.end.640:                                       ; preds = %if.else.633, %if.then.626
  %282 = load i32, i32* %j, align 4
  %283 = load i32, i32* %i, align 4
  %call641 = call i32 @reg_class_subset_p(i32 %282, i32 %283)
  %tobool642 = icmp ne i32 %call641, 0
  br i1 %tobool642, label %if.then.643, label %if.else.650

if.then.643:                                      ; preds = %if.end.640
  %284 = load i32, i32* %j, align 4
  %idxprom644 = zext i32 %284 to i64
  %285 = load i32, i32* %i, align 4
  %idxprom645 = zext i32 %285 to i64
  %286 = load i32, i32* %m, align 4
  %idxprom646 = zext i32 %286 to i64
  %arrayidx647 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_out_cost, i32 0, i64 %idxprom646
  %arrayidx648 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx647, i32 0, i64 %idxprom645
  %arrayidx649 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx648, i32 0, i64 %idxprom644
  store i32 0, i32* %arrayidx649, align 4
  br label %if.end.657

if.else.650:                                      ; preds = %if.end.640
  %287 = load i32, i32* %cost, align 4
  %288 = load i32, i32* %j, align 4
  %idxprom651 = zext i32 %288 to i64
  %289 = load i32, i32* %i, align 4
  %idxprom652 = zext i32 %289 to i64
  %290 = load i32, i32* %m, align 4
  %idxprom653 = zext i32 %290 to i64
  %arrayidx654 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_out_cost, i32 0, i64 %idxprom653
  %arrayidx655 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx654, i32 0, i64 %idxprom652
  %arrayidx656 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx655, i32 0, i64 %idxprom651
  store i32 %287, i32* %arrayidx656, align 4
  br label %if.end.657

if.end.657:                                       ; preds = %if.else.650, %if.then.643
  br label %if.end.658

if.end.658:                                       ; preds = %if.end.657, %if.then.519
  br label %for.inc.659

for.inc.659:                                      ; preds = %if.end.658
  %291 = load i32, i32* %j, align 4
  %inc660 = add i32 %291, 1
  store i32 %inc660, i32* %j, align 4
  br label %for.cond.510

for.end.661:                                      ; preds = %for.cond.510
  br label %if.end.688

if.else.662:                                      ; preds = %for.body.503
  store i32 0, i32* %j, align 4
  br label %for.cond.663

for.cond.663:                                     ; preds = %for.inc.685, %if.else.662
  %292 = load i32, i32* %j, align 4
  %cmp664 = icmp ult i32 %292, 25
  br i1 %cmp664, label %for.body.666, label %for.end.687

for.body.666:                                     ; preds = %for.cond.663
  %293 = load i32, i32* %j, align 4
  %idxprom667 = zext i32 %293 to i64
  %294 = load i32, i32* %i, align 4
  %idxprom668 = zext i32 %294 to i64
  %295 = load i32, i32* %m, align 4
  %idxprom669 = zext i32 %295 to i64
  %arrayidx670 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @move_cost, i32 0, i64 %idxprom669
  %arrayidx671 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx670, i32 0, i64 %idxprom668
  %arrayidx672 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx671, i32 0, i64 %idxprom667
  store i32 65536, i32* %arrayidx672, align 4
  %296 = load i32, i32* %j, align 4
  %idxprom673 = zext i32 %296 to i64
  %297 = load i32, i32* %i, align 4
  %idxprom674 = zext i32 %297 to i64
  %298 = load i32, i32* %m, align 4
  %idxprom675 = zext i32 %298 to i64
  %arrayidx676 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_in_cost, i32 0, i64 %idxprom675
  %arrayidx677 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx676, i32 0, i64 %idxprom674
  %arrayidx678 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx677, i32 0, i64 %idxprom673
  store i32 65536, i32* %arrayidx678, align 4
  %299 = load i32, i32* %j, align 4
  %idxprom679 = zext i32 %299 to i64
  %300 = load i32, i32* %i, align 4
  %idxprom680 = zext i32 %300 to i64
  %301 = load i32, i32* %m, align 4
  %idxprom681 = zext i32 %301 to i64
  %arrayidx682 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_out_cost, i32 0, i64 %idxprom681
  %arrayidx683 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx682, i32 0, i64 %idxprom680
  %arrayidx684 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx683, i32 0, i64 %idxprom679
  store i32 65536, i32* %arrayidx684, align 4
  br label %for.inc.685

for.inc.685:                                      ; preds = %for.body.666
  %302 = load i32, i32* %j, align 4
  %inc686 = add i32 %302, 1
  store i32 %inc686, i32* %j, align 4
  br label %for.cond.663

for.end.687:                                      ; preds = %for.cond.663
  br label %if.end.688

if.end.688:                                       ; preds = %for.end.687, %for.end.661
  br label %for.inc.689

for.inc.689:                                      ; preds = %if.end.688
  %303 = load i32, i32* %i, align 4
  %inc690 = add i32 %303, 1
  store i32 %inc690, i32* %i, align 4
  br label %for.cond.500

for.end.691:                                      ; preds = %for.cond.500
  br label %if.end.692

if.end.692:                                       ; preds = %for.end.691, %for.body.495
  br label %for.inc.693

for.inc.693:                                      ; preds = %if.end.692
  %304 = load i32, i32* %m, align 4
  %inc694 = add i32 %304, 1
  store i32 %inc694, i32* %m, align 4
  br label %for.cond.492

for.end.695:                                      ; preds = %for.cond.492
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @init_reg_modes() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 53
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %call = call i32 @choose_hard_reg_mode(i32 %1, i32 1)
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i32 0, i64 %idxprom
  store i32 %call, i32* %arrayidx, align 4
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i32 0, i64 %idxprom1
  %4 = load i32, i32* %arrayidx2, align 4
  %cmp3 = icmp eq i32 %4, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %cmp4 = icmp eq i32 %5, 0
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %6 = load i32, i32* @word_mode, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load i32, i32* %i, align 4
  %sub = sub nsw i32 %7, 1
  %idxprom5 = sext i32 %sub to i64
  %arrayidx6 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i32 0, i64 %idxprom5
  %8 = load i32, i32* %arrayidx6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %6, %cond.true ], [ %8, %cond.false ]
  %9 = load i32, i32* %i, align 4
  %idxprom7 = sext i32 %9 to i64
  %arrayidx8 = getelementptr inbounds [53 x i32], [53 x i32]* @reg_raw_mode, i32 0, i64 %idxprom7
  store i32 %cond, i32* %arrayidx8, align 4
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %inc = add nsw i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.rtx_def* @gen_rtx_MEM(i32, %struct.rtx_def*) #2

declare void @ggc_add_rtx_root(%struct.rtx_def**, i32) #2

; Function Attrs: nounwind uwtable
define i32 @memory_move_secondary_cost(i32 %mode, i32 %class, i32 %in) #0 {
entry:
  %retval = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %class.addr = alloca i32, align 4
  %in.addr = alloca i32, align 4
  %altclass = alloca i32, align 4
  %partial_cost = alloca i32, align 4
  %mem = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %class, i32* %class.addr, align 4
  store i32 %in, i32* %in.addr, align 4
  store i32 0, i32* %partial_cost, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* @top_of_stack, i32 0, i64 %idxprom
  %1 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %mem, align 8
  %2 = load i32, i32* %in.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %altclass, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %class.addr, align 4
  %cmp = icmp eq i32 %3, 12
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %4 = load i32, i32* %class.addr, align 4
  %cmp1 = icmp eq i32 %4, 11
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %class.addr, align 4
  %cmp3 = icmp eq i32 %5, 10
  br i1 %cmp3, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.2, %lor.lhs.false, %if.else
  %6 = load i32, i32* @target_flags, align 4
  %and = and i32 %6, 33554432
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %7 = load i32, i32* %mode.addr, align 4
  %cmp5 = icmp eq i32 %7, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.2
  %8 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.2 ], [ %cmp5, %land.rhs ]
  %cond = select i1 %8, i32 8, i32 0
  store i32 %cond, i32* %altclass, align 4
  br label %if.end

if.end:                                           ; preds = %land.end, %if.then
  %9 = load i32, i32* %altclass, align 4
  %cmp6 = icmp eq i32 %9, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %10 = load i32, i32* %in.addr, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then.10, label %if.else.11

if.then.10:                                       ; preds = %if.end.8
  %11 = load i32, i32* %mode.addr, align 4
  %12 = load i32, i32* %altclass, align 4
  %13 = load i32, i32* %class.addr, align 4
  %call = call i32 @ix86_register_move_cost(i32 %11, i32 %12, i32 %13)
  store i32 %call, i32* %partial_cost, align 4
  br label %if.end.13

if.else.11:                                       ; preds = %if.end.8
  %14 = load i32, i32* %mode.addr, align 4
  %15 = load i32, i32* %class.addr, align 4
  %16 = load i32, i32* %altclass, align 4
  %call12 = call i32 @ix86_register_move_cost(i32 %14, i32 %15, i32 %16)
  store i32 %call12, i32* %partial_cost, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.11, %if.then.10
  %17 = load i32, i32* %class.addr, align 4
  %18 = load i32, i32* %altclass, align 4
  %cmp14 = icmp eq i32 %17, %18
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %19 = load i32, i32* %partial_cost, align 4
  store i32 %19, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  %20 = load i32, i32* %mode.addr, align 4
  %21 = load i32, i32* %altclass, align 4
  %22 = load i32, i32* %in.addr, align 4
  %call17 = call i32 @memory_move_secondary_cost(i32 %20, i32 %21, i32 %22)
  %23 = load i32, i32* %partial_cost, align 4
  %add = add nsw i32 %call17, %23
  store i32 %add, i32* %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.15, %if.then.7
  %24 = load i32, i32* %retval
  ret i32 %24
}

declare i32 @ix86_register_move_cost(i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define i32 @choose_hard_reg_mode(i32 %regno, i32 %nregs) #0 {
entry:
  %retval = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %nregs.addr = alloca i32, align 4
  %m = alloca i32, align 4
  %found_mode = alloca i32, align 4
  %mode = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %nregs, i32* %nregs.addr, align 4
  store i32 0, i32* %found_mode, align 4
  %0 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 1), align 4
  store i32 %0, i32* %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %mode, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %regno.addr, align 4
  %cmp1 = icmp uge i32 %2, 8
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, i32* %regno.addr, align 4
  %cmp2 = icmp ule i32 %3, 15
  br i1 %cmp2, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %4 = load i32, i32* %regno.addr, align 4
  %cmp3 = icmp uge i32 %4, 21
  br i1 %cmp3, label %land.lhs.true.4, label %lor.lhs.false.6

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %regno.addr, align 4
  %cmp5 = icmp ule i32 %5, 28
  br i1 %cmp5, label %cond.true, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %land.lhs.true.4, %lor.lhs.false
  %6 = load i32, i32* %regno.addr, align 4
  %cmp7 = icmp uge i32 %6, 45
  br i1 %cmp7, label %land.lhs.true.8, label %lor.lhs.false.10

land.lhs.true.8:                                  ; preds = %lor.lhs.false.6
  %7 = load i32, i32* %regno.addr, align 4
  %cmp9 = icmp ule i32 %7, 52
  br i1 %cmp9, label %cond.true, label %lor.lhs.false.10

lor.lhs.false.10:                                 ; preds = %land.lhs.true.8, %lor.lhs.false.6
  %8 = load i32, i32* %regno.addr, align 4
  %cmp11 = icmp uge i32 %8, 29
  br i1 %cmp11, label %land.lhs.true.12, label %cond.false

land.lhs.true.12:                                 ; preds = %lor.lhs.false.10
  %9 = load i32, i32* %regno.addr, align 4
  %cmp13 = icmp ule i32 %9, 36
  br i1 %cmp13, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.12, %land.lhs.true.8, %land.lhs.true.4, %land.lhs.true
  %10 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %11 = load i32, i32* %arrayidx, align 4
  %cmp14 = icmp eq i32 %11, 5
  br i1 %cmp14, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %cond.true
  %12 = load i32, i32* %mode, align 4
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom15
  %13 = load i32, i32* %arrayidx16, align 4
  %cmp17 = icmp eq i32 %13, 6
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cond.true
  %14 = phi i1 [ true, %cond.true ], [ %cmp17, %lor.rhs ]
  %cond = select i1 %14, i32 2, i32 1
  br label %cond.end.39

cond.false:                                       ; preds = %land.lhs.true.12, %lor.lhs.false.10
  %15 = load i32, i32* %mode, align 4
  %cmp18 = icmp eq i32 %15, 18
  br i1 %cmp18, label %cond.true.19, label %cond.false.21

cond.true.19:                                     ; preds = %cond.false
  %16 = load i32, i32* @target_flags, align 4
  %and = and i32 %16, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond20 = select i1 %tobool, i32 2, i32 3
  br label %cond.end.37

cond.false.21:                                    ; preds = %cond.false
  %17 = load i32, i32* %mode, align 4
  %cmp22 = icmp eq i32 %17, 24
  br i1 %cmp22, label %cond.true.23, label %cond.false.27

cond.true.23:                                     ; preds = %cond.false.21
  %18 = load i32, i32* @target_flags, align 4
  %and24 = and i32 %18, 33554432
  %tobool25 = icmp ne i32 %and24, 0
  %cond26 = select i1 %tobool25, i32 4, i32 6
  br label %cond.end

cond.false.27:                                    ; preds = %cond.false.21
  %19 = load i32, i32* %mode, align 4
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom28
  %20 = load i8, i8* %arrayidx29, align 1
  %conv = zext i8 %20 to i32
  %21 = load i32, i32* @target_flags, align 4
  %and30 = and i32 %21, 33554432
  %tobool31 = icmp ne i32 %and30, 0
  %cond32 = select i1 %tobool31, i32 8, i32 4
  %add = add nsw i32 %conv, %cond32
  %sub = sub nsw i32 %add, 1
  %22 = load i32, i32* @target_flags, align 4
  %and33 = and i32 %22, 33554432
  %tobool34 = icmp ne i32 %and33, 0
  %cond35 = select i1 %tobool34, i32 8, i32 4
  %div = sdiv i32 %sub, %cond35
  br label %cond.end

cond.end:                                         ; preds = %cond.false.27, %cond.true.23
  %cond36 = phi i32 [ %cond26, %cond.true.23 ], [ %div, %cond.false.27 ]
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.end, %cond.true.19
  %cond38 = phi i32 [ %cond20, %cond.true.19 ], [ %cond36, %cond.end ]
  br label %cond.end.39

cond.end.39:                                      ; preds = %cond.end.37, %lor.end
  %cond40 = phi i32 [ %cond, %lor.end ], [ %cond38, %cond.end.37 ]
  %23 = load i32, i32* %nregs.addr, align 4
  %cmp41 = icmp eq i32 %cond40, %23
  br i1 %cmp41, label %land.lhs.true.43, label %if.end

land.lhs.true.43:                                 ; preds = %cond.end.39
  %24 = load i32, i32* %regno.addr, align 4
  %25 = load i32, i32* %mode, align 4
  %call = call i32 @ix86_hard_regno_mode_ok(i32 %24, i32 %25)
  %tobool44 = icmp ne i32 %call, 0
  br i1 %tobool44, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.43
  %26 = load i32, i32* %mode, align 4
  store i32 %26, i32* %found_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.43, %cond.end.39
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %27 = load i32, i32* %mode, align 4
  %idxprom45 = sext i32 %27 to i64
  %arrayidx46 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom45
  %28 = load i8, i8* %arrayidx46, align 1
  %conv47 = zext i8 %28 to i32
  store i32 %conv47, i32* %mode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %29 = load i32, i32* %found_mode, align 4
  %cmp48 = icmp ne i32 %29, 0
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %for.end
  %30 = load i32, i32* %found_mode, align 4
  store i32 %30, i32* %retval
  br label %return

if.end.51:                                        ; preds = %for.end
  %31 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 2), align 4
  store i32 %31, i32* %mode, align 4
  br label %for.cond.52

for.cond.52:                                      ; preds = %for.inc.131, %if.end.51
  %32 = load i32, i32* %mode, align 4
  %cmp53 = icmp ne i32 %32, 0
  br i1 %cmp53, label %for.body.55, label %for.end.135

for.body.55:                                      ; preds = %for.cond.52
  %33 = load i32, i32* %regno.addr, align 4
  %cmp56 = icmp uge i32 %33, 8
  br i1 %cmp56, label %land.lhs.true.58, label %lor.lhs.false.61

land.lhs.true.58:                                 ; preds = %for.body.55
  %34 = load i32, i32* %regno.addr, align 4
  %cmp59 = icmp ule i32 %34, 15
  br i1 %cmp59, label %cond.true.79, label %lor.lhs.false.61

lor.lhs.false.61:                                 ; preds = %land.lhs.true.58, %for.body.55
  %35 = load i32, i32* %regno.addr, align 4
  %cmp62 = icmp uge i32 %35, 21
  br i1 %cmp62, label %land.lhs.true.64, label %lor.lhs.false.67

land.lhs.true.64:                                 ; preds = %lor.lhs.false.61
  %36 = load i32, i32* %regno.addr, align 4
  %cmp65 = icmp ule i32 %36, 28
  br i1 %cmp65, label %cond.true.79, label %lor.lhs.false.67

lor.lhs.false.67:                                 ; preds = %land.lhs.true.64, %lor.lhs.false.61
  %37 = load i32, i32* %regno.addr, align 4
  %cmp68 = icmp uge i32 %37, 45
  br i1 %cmp68, label %land.lhs.true.70, label %lor.lhs.false.73

land.lhs.true.70:                                 ; preds = %lor.lhs.false.67
  %38 = load i32, i32* %regno.addr, align 4
  %cmp71 = icmp ule i32 %38, 52
  br i1 %cmp71, label %cond.true.79, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %land.lhs.true.70, %lor.lhs.false.67
  %39 = load i32, i32* %regno.addr, align 4
  %cmp74 = icmp uge i32 %39, 29
  br i1 %cmp74, label %land.lhs.true.76, label %cond.false.91

land.lhs.true.76:                                 ; preds = %lor.lhs.false.73
  %40 = load i32, i32* %regno.addr, align 4
  %cmp77 = icmp ule i32 %40, 36
  br i1 %cmp77, label %cond.true.79, label %cond.false.91

cond.true.79:                                     ; preds = %land.lhs.true.76, %land.lhs.true.70, %land.lhs.true.64, %land.lhs.true.58
  %41 = load i32, i32* %mode, align 4
  %idxprom80 = sext i32 %41 to i64
  %arrayidx81 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom80
  %42 = load i32, i32* %arrayidx81, align 4
  %cmp82 = icmp eq i32 %42, 5
  br i1 %cmp82, label %lor.end.89, label %lor.rhs.84

lor.rhs.84:                                       ; preds = %cond.true.79
  %43 = load i32, i32* %mode, align 4
  %idxprom85 = sext i32 %43 to i64
  %arrayidx86 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom85
  %44 = load i32, i32* %arrayidx86, align 4
  %cmp87 = icmp eq i32 %44, 6
  br label %lor.end.89

lor.end.89:                                       ; preds = %lor.rhs.84, %cond.true.79
  %45 = phi i1 [ true, %cond.true.79 ], [ %cmp87, %lor.rhs.84 ]
  %cond90 = select i1 %45, i32 2, i32 1
  br label %cond.end.122

cond.false.91:                                    ; preds = %land.lhs.true.76, %lor.lhs.false.73
  %46 = load i32, i32* %mode, align 4
  %cmp92 = icmp eq i32 %46, 18
  br i1 %cmp92, label %cond.true.94, label %cond.false.98

cond.true.94:                                     ; preds = %cond.false.91
  %47 = load i32, i32* @target_flags, align 4
  %and95 = and i32 %47, 33554432
  %tobool96 = icmp ne i32 %and95, 0
  %cond97 = select i1 %tobool96, i32 2, i32 3
  br label %cond.end.120

cond.false.98:                                    ; preds = %cond.false.91
  %48 = load i32, i32* %mode, align 4
  %cmp99 = icmp eq i32 %48, 24
  br i1 %cmp99, label %cond.true.101, label %cond.false.105

cond.true.101:                                    ; preds = %cond.false.98
  %49 = load i32, i32* @target_flags, align 4
  %and102 = and i32 %49, 33554432
  %tobool103 = icmp ne i32 %and102, 0
  %cond104 = select i1 %tobool103, i32 4, i32 6
  br label %cond.end.118

cond.false.105:                                   ; preds = %cond.false.98
  %50 = load i32, i32* %mode, align 4
  %idxprom106 = sext i32 %50 to i64
  %arrayidx107 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom106
  %51 = load i8, i8* %arrayidx107, align 1
  %conv108 = zext i8 %51 to i32
  %52 = load i32, i32* @target_flags, align 4
  %and109 = and i32 %52, 33554432
  %tobool110 = icmp ne i32 %and109, 0
  %cond111 = select i1 %tobool110, i32 8, i32 4
  %add112 = add nsw i32 %conv108, %cond111
  %sub113 = sub nsw i32 %add112, 1
  %53 = load i32, i32* @target_flags, align 4
  %and114 = and i32 %53, 33554432
  %tobool115 = icmp ne i32 %and114, 0
  %cond116 = select i1 %tobool115, i32 8, i32 4
  %div117 = sdiv i32 %sub113, %cond116
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.105, %cond.true.101
  %cond119 = phi i32 [ %cond104, %cond.true.101 ], [ %div117, %cond.false.105 ]
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.end.118, %cond.true.94
  %cond121 = phi i32 [ %cond97, %cond.true.94 ], [ %cond119, %cond.end.118 ]
  br label %cond.end.122

cond.end.122:                                     ; preds = %cond.end.120, %lor.end.89
  %cond123 = phi i32 [ %cond90, %lor.end.89 ], [ %cond121, %cond.end.120 ]
  %54 = load i32, i32* %nregs.addr, align 4
  %cmp124 = icmp eq i32 %cond123, %54
  br i1 %cmp124, label %land.lhs.true.126, label %if.end.130

land.lhs.true.126:                                ; preds = %cond.end.122
  %55 = load i32, i32* %regno.addr, align 4
  %56 = load i32, i32* %mode, align 4
  %call127 = call i32 @ix86_hard_regno_mode_ok(i32 %55, i32 %56)
  %tobool128 = icmp ne i32 %call127, 0
  br i1 %tobool128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %land.lhs.true.126
  %57 = load i32, i32* %mode, align 4
  store i32 %57, i32* %found_mode, align 4
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %land.lhs.true.126, %cond.end.122
  br label %for.inc.131

for.inc.131:                                      ; preds = %if.end.130
  %58 = load i32, i32* %mode, align 4
  %idxprom132 = sext i32 %58 to i64
  %arrayidx133 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom132
  %59 = load i8, i8* %arrayidx133, align 1
  %conv134 = zext i8 %59 to i32
  store i32 %conv134, i32* %mode, align 4
  br label %for.cond.52

for.end.135:                                      ; preds = %for.cond.52
  %60 = load i32, i32* %found_mode, align 4
  %cmp136 = icmp ne i32 %60, 0
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %for.end.135
  %61 = load i32, i32* %found_mode, align 4
  store i32 %61, i32* %retval
  br label %return

if.end.139:                                       ; preds = %for.end.135
  %62 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 8), align 4
  store i32 %62, i32* %mode, align 4
  br label %for.cond.140

for.cond.140:                                     ; preds = %for.inc.219, %if.end.139
  %63 = load i32, i32* %mode, align 4
  %cmp141 = icmp ne i32 %63, 0
  br i1 %cmp141, label %for.body.143, label %for.end.223

for.body.143:                                     ; preds = %for.cond.140
  %64 = load i32, i32* %regno.addr, align 4
  %cmp144 = icmp uge i32 %64, 8
  br i1 %cmp144, label %land.lhs.true.146, label %lor.lhs.false.149

land.lhs.true.146:                                ; preds = %for.body.143
  %65 = load i32, i32* %regno.addr, align 4
  %cmp147 = icmp ule i32 %65, 15
  br i1 %cmp147, label %cond.true.167, label %lor.lhs.false.149

lor.lhs.false.149:                                ; preds = %land.lhs.true.146, %for.body.143
  %66 = load i32, i32* %regno.addr, align 4
  %cmp150 = icmp uge i32 %66, 21
  br i1 %cmp150, label %land.lhs.true.152, label %lor.lhs.false.155

land.lhs.true.152:                                ; preds = %lor.lhs.false.149
  %67 = load i32, i32* %regno.addr, align 4
  %cmp153 = icmp ule i32 %67, 28
  br i1 %cmp153, label %cond.true.167, label %lor.lhs.false.155

lor.lhs.false.155:                                ; preds = %land.lhs.true.152, %lor.lhs.false.149
  %68 = load i32, i32* %regno.addr, align 4
  %cmp156 = icmp uge i32 %68, 45
  br i1 %cmp156, label %land.lhs.true.158, label %lor.lhs.false.161

land.lhs.true.158:                                ; preds = %lor.lhs.false.155
  %69 = load i32, i32* %regno.addr, align 4
  %cmp159 = icmp ule i32 %69, 52
  br i1 %cmp159, label %cond.true.167, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %land.lhs.true.158, %lor.lhs.false.155
  %70 = load i32, i32* %regno.addr, align 4
  %cmp162 = icmp uge i32 %70, 29
  br i1 %cmp162, label %land.lhs.true.164, label %cond.false.179

land.lhs.true.164:                                ; preds = %lor.lhs.false.161
  %71 = load i32, i32* %regno.addr, align 4
  %cmp165 = icmp ule i32 %71, 36
  br i1 %cmp165, label %cond.true.167, label %cond.false.179

cond.true.167:                                    ; preds = %land.lhs.true.164, %land.lhs.true.158, %land.lhs.true.152, %land.lhs.true.146
  %72 = load i32, i32* %mode, align 4
  %idxprom168 = sext i32 %72 to i64
  %arrayidx169 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom168
  %73 = load i32, i32* %arrayidx169, align 4
  %cmp170 = icmp eq i32 %73, 5
  br i1 %cmp170, label %lor.end.177, label %lor.rhs.172

lor.rhs.172:                                      ; preds = %cond.true.167
  %74 = load i32, i32* %mode, align 4
  %idxprom173 = sext i32 %74 to i64
  %arrayidx174 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom173
  %75 = load i32, i32* %arrayidx174, align 4
  %cmp175 = icmp eq i32 %75, 6
  br label %lor.end.177

lor.end.177:                                      ; preds = %lor.rhs.172, %cond.true.167
  %76 = phi i1 [ true, %cond.true.167 ], [ %cmp175, %lor.rhs.172 ]
  %cond178 = select i1 %76, i32 2, i32 1
  br label %cond.end.210

cond.false.179:                                   ; preds = %land.lhs.true.164, %lor.lhs.false.161
  %77 = load i32, i32* %mode, align 4
  %cmp180 = icmp eq i32 %77, 18
  br i1 %cmp180, label %cond.true.182, label %cond.false.186

cond.true.182:                                    ; preds = %cond.false.179
  %78 = load i32, i32* @target_flags, align 4
  %and183 = and i32 %78, 33554432
  %tobool184 = icmp ne i32 %and183, 0
  %cond185 = select i1 %tobool184, i32 2, i32 3
  br label %cond.end.208

cond.false.186:                                   ; preds = %cond.false.179
  %79 = load i32, i32* %mode, align 4
  %cmp187 = icmp eq i32 %79, 24
  br i1 %cmp187, label %cond.true.189, label %cond.false.193

cond.true.189:                                    ; preds = %cond.false.186
  %80 = load i32, i32* @target_flags, align 4
  %and190 = and i32 %80, 33554432
  %tobool191 = icmp ne i32 %and190, 0
  %cond192 = select i1 %tobool191, i32 4, i32 6
  br label %cond.end.206

cond.false.193:                                   ; preds = %cond.false.186
  %81 = load i32, i32* %mode, align 4
  %idxprom194 = sext i32 %81 to i64
  %arrayidx195 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom194
  %82 = load i8, i8* %arrayidx195, align 1
  %conv196 = zext i8 %82 to i32
  %83 = load i32, i32* @target_flags, align 4
  %and197 = and i32 %83, 33554432
  %tobool198 = icmp ne i32 %and197, 0
  %cond199 = select i1 %tobool198, i32 8, i32 4
  %add200 = add nsw i32 %conv196, %cond199
  %sub201 = sub nsw i32 %add200, 1
  %84 = load i32, i32* @target_flags, align 4
  %and202 = and i32 %84, 33554432
  %tobool203 = icmp ne i32 %and202, 0
  %cond204 = select i1 %tobool203, i32 8, i32 4
  %div205 = sdiv i32 %sub201, %cond204
  br label %cond.end.206

cond.end.206:                                     ; preds = %cond.false.193, %cond.true.189
  %cond207 = phi i32 [ %cond192, %cond.true.189 ], [ %div205, %cond.false.193 ]
  br label %cond.end.208

cond.end.208:                                     ; preds = %cond.end.206, %cond.true.182
  %cond209 = phi i32 [ %cond185, %cond.true.182 ], [ %cond207, %cond.end.206 ]
  br label %cond.end.210

cond.end.210:                                     ; preds = %cond.end.208, %lor.end.177
  %cond211 = phi i32 [ %cond178, %lor.end.177 ], [ %cond209, %cond.end.208 ]
  %85 = load i32, i32* %nregs.addr, align 4
  %cmp212 = icmp eq i32 %cond211, %85
  br i1 %cmp212, label %land.lhs.true.214, label %if.end.218

land.lhs.true.214:                                ; preds = %cond.end.210
  %86 = load i32, i32* %regno.addr, align 4
  %87 = load i32, i32* %mode, align 4
  %call215 = call i32 @ix86_hard_regno_mode_ok(i32 %86, i32 %87)
  %tobool216 = icmp ne i32 %call215, 0
  br i1 %tobool216, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %land.lhs.true.214
  %88 = load i32, i32* %mode, align 4
  store i32 %88, i32* %found_mode, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.217, %land.lhs.true.214, %cond.end.210
  br label %for.inc.219

for.inc.219:                                      ; preds = %if.end.218
  %89 = load i32, i32* %mode, align 4
  %idxprom220 = sext i32 %89 to i64
  %arrayidx221 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom220
  %90 = load i8, i8* %arrayidx221, align 1
  %conv222 = zext i8 %90 to i32
  store i32 %conv222, i32* %mode, align 4
  br label %for.cond.140

for.end.223:                                      ; preds = %for.cond.140
  %91 = load i32, i32* %found_mode, align 4
  %cmp224 = icmp ne i32 %91, 0
  br i1 %cmp224, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %for.end.223
  %92 = load i32, i32* %found_mode, align 4
  store i32 %92, i32* %retval
  br label %return

if.end.227:                                       ; preds = %for.end.223
  %93 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 7), align 4
  store i32 %93, i32* %mode, align 4
  br label %for.cond.228

for.cond.228:                                     ; preds = %for.inc.307, %if.end.227
  %94 = load i32, i32* %mode, align 4
  %cmp229 = icmp ne i32 %94, 0
  br i1 %cmp229, label %for.body.231, label %for.end.311

for.body.231:                                     ; preds = %for.cond.228
  %95 = load i32, i32* %regno.addr, align 4
  %cmp232 = icmp uge i32 %95, 8
  br i1 %cmp232, label %land.lhs.true.234, label %lor.lhs.false.237

land.lhs.true.234:                                ; preds = %for.body.231
  %96 = load i32, i32* %regno.addr, align 4
  %cmp235 = icmp ule i32 %96, 15
  br i1 %cmp235, label %cond.true.255, label %lor.lhs.false.237

lor.lhs.false.237:                                ; preds = %land.lhs.true.234, %for.body.231
  %97 = load i32, i32* %regno.addr, align 4
  %cmp238 = icmp uge i32 %97, 21
  br i1 %cmp238, label %land.lhs.true.240, label %lor.lhs.false.243

land.lhs.true.240:                                ; preds = %lor.lhs.false.237
  %98 = load i32, i32* %regno.addr, align 4
  %cmp241 = icmp ule i32 %98, 28
  br i1 %cmp241, label %cond.true.255, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %land.lhs.true.240, %lor.lhs.false.237
  %99 = load i32, i32* %regno.addr, align 4
  %cmp244 = icmp uge i32 %99, 45
  br i1 %cmp244, label %land.lhs.true.246, label %lor.lhs.false.249

land.lhs.true.246:                                ; preds = %lor.lhs.false.243
  %100 = load i32, i32* %regno.addr, align 4
  %cmp247 = icmp ule i32 %100, 52
  br i1 %cmp247, label %cond.true.255, label %lor.lhs.false.249

lor.lhs.false.249:                                ; preds = %land.lhs.true.246, %lor.lhs.false.243
  %101 = load i32, i32* %regno.addr, align 4
  %cmp250 = icmp uge i32 %101, 29
  br i1 %cmp250, label %land.lhs.true.252, label %cond.false.267

land.lhs.true.252:                                ; preds = %lor.lhs.false.249
  %102 = load i32, i32* %regno.addr, align 4
  %cmp253 = icmp ule i32 %102, 36
  br i1 %cmp253, label %cond.true.255, label %cond.false.267

cond.true.255:                                    ; preds = %land.lhs.true.252, %land.lhs.true.246, %land.lhs.true.240, %land.lhs.true.234
  %103 = load i32, i32* %mode, align 4
  %idxprom256 = sext i32 %103 to i64
  %arrayidx257 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom256
  %104 = load i32, i32* %arrayidx257, align 4
  %cmp258 = icmp eq i32 %104, 5
  br i1 %cmp258, label %lor.end.265, label %lor.rhs.260

lor.rhs.260:                                      ; preds = %cond.true.255
  %105 = load i32, i32* %mode, align 4
  %idxprom261 = sext i32 %105 to i64
  %arrayidx262 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom261
  %106 = load i32, i32* %arrayidx262, align 4
  %cmp263 = icmp eq i32 %106, 6
  br label %lor.end.265

lor.end.265:                                      ; preds = %lor.rhs.260, %cond.true.255
  %107 = phi i1 [ true, %cond.true.255 ], [ %cmp263, %lor.rhs.260 ]
  %cond266 = select i1 %107, i32 2, i32 1
  br label %cond.end.298

cond.false.267:                                   ; preds = %land.lhs.true.252, %lor.lhs.false.249
  %108 = load i32, i32* %mode, align 4
  %cmp268 = icmp eq i32 %108, 18
  br i1 %cmp268, label %cond.true.270, label %cond.false.274

cond.true.270:                                    ; preds = %cond.false.267
  %109 = load i32, i32* @target_flags, align 4
  %and271 = and i32 %109, 33554432
  %tobool272 = icmp ne i32 %and271, 0
  %cond273 = select i1 %tobool272, i32 2, i32 3
  br label %cond.end.296

cond.false.274:                                   ; preds = %cond.false.267
  %110 = load i32, i32* %mode, align 4
  %cmp275 = icmp eq i32 %110, 24
  br i1 %cmp275, label %cond.true.277, label %cond.false.281

cond.true.277:                                    ; preds = %cond.false.274
  %111 = load i32, i32* @target_flags, align 4
  %and278 = and i32 %111, 33554432
  %tobool279 = icmp ne i32 %and278, 0
  %cond280 = select i1 %tobool279, i32 4, i32 6
  br label %cond.end.294

cond.false.281:                                   ; preds = %cond.false.274
  %112 = load i32, i32* %mode, align 4
  %idxprom282 = sext i32 %112 to i64
  %arrayidx283 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom282
  %113 = load i8, i8* %arrayidx283, align 1
  %conv284 = zext i8 %113 to i32
  %114 = load i32, i32* @target_flags, align 4
  %and285 = and i32 %114, 33554432
  %tobool286 = icmp ne i32 %and285, 0
  %cond287 = select i1 %tobool286, i32 8, i32 4
  %add288 = add nsw i32 %conv284, %cond287
  %sub289 = sub nsw i32 %add288, 1
  %115 = load i32, i32* @target_flags, align 4
  %and290 = and i32 %115, 33554432
  %tobool291 = icmp ne i32 %and290, 0
  %cond292 = select i1 %tobool291, i32 8, i32 4
  %div293 = sdiv i32 %sub289, %cond292
  br label %cond.end.294

cond.end.294:                                     ; preds = %cond.false.281, %cond.true.277
  %cond295 = phi i32 [ %cond280, %cond.true.277 ], [ %div293, %cond.false.281 ]
  br label %cond.end.296

cond.end.296:                                     ; preds = %cond.end.294, %cond.true.270
  %cond297 = phi i32 [ %cond273, %cond.true.270 ], [ %cond295, %cond.end.294 ]
  br label %cond.end.298

cond.end.298:                                     ; preds = %cond.end.296, %lor.end.265
  %cond299 = phi i32 [ %cond266, %lor.end.265 ], [ %cond297, %cond.end.296 ]
  %116 = load i32, i32* %nregs.addr, align 4
  %cmp300 = icmp eq i32 %cond299, %116
  br i1 %cmp300, label %land.lhs.true.302, label %if.end.306

land.lhs.true.302:                                ; preds = %cond.end.298
  %117 = load i32, i32* %regno.addr, align 4
  %118 = load i32, i32* %mode, align 4
  %call303 = call i32 @ix86_hard_regno_mode_ok(i32 %117, i32 %118)
  %tobool304 = icmp ne i32 %call303, 0
  br i1 %tobool304, label %if.then.305, label %if.end.306

if.then.305:                                      ; preds = %land.lhs.true.302
  %119 = load i32, i32* %mode, align 4
  store i32 %119, i32* %found_mode, align 4
  br label %if.end.306

if.end.306:                                       ; preds = %if.then.305, %land.lhs.true.302, %cond.end.298
  br label %for.inc.307

for.inc.307:                                      ; preds = %if.end.306
  %120 = load i32, i32* %mode, align 4
  %idxprom308 = sext i32 %120 to i64
  %arrayidx309 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom308
  %121 = load i8, i8* %arrayidx309, align 1
  %conv310 = zext i8 %121 to i32
  store i32 %conv310, i32* %mode, align 4
  br label %for.cond.228

for.end.311:                                      ; preds = %for.cond.228
  %122 = load i32, i32* %found_mode, align 4
  %cmp312 = icmp ne i32 %122, 0
  br i1 %cmp312, label %if.then.314, label %if.end.315

if.then.314:                                      ; preds = %for.end.311
  %123 = load i32, i32* %found_mode, align 4
  store i32 %123, i32* %retval
  br label %return

if.end.315:                                       ; preds = %for.end.311
  store i32 52, i32* %m, align 4
  br label %for.cond.316

for.cond.316:                                     ; preds = %for.inc.395, %if.end.315
  %124 = load i32, i32* %m, align 4
  %cmp317 = icmp ult i32 %124, 59
  br i1 %cmp317, label %for.body.319, label %for.end.396

for.body.319:                                     ; preds = %for.cond.316
  %125 = load i32, i32* %m, align 4
  store i32 %125, i32* %mode, align 4
  %126 = load i32, i32* %regno.addr, align 4
  %cmp320 = icmp uge i32 %126, 8
  br i1 %cmp320, label %land.lhs.true.322, label %lor.lhs.false.325

land.lhs.true.322:                                ; preds = %for.body.319
  %127 = load i32, i32* %regno.addr, align 4
  %cmp323 = icmp ule i32 %127, 15
  br i1 %cmp323, label %cond.true.343, label %lor.lhs.false.325

lor.lhs.false.325:                                ; preds = %land.lhs.true.322, %for.body.319
  %128 = load i32, i32* %regno.addr, align 4
  %cmp326 = icmp uge i32 %128, 21
  br i1 %cmp326, label %land.lhs.true.328, label %lor.lhs.false.331

land.lhs.true.328:                                ; preds = %lor.lhs.false.325
  %129 = load i32, i32* %regno.addr, align 4
  %cmp329 = icmp ule i32 %129, 28
  br i1 %cmp329, label %cond.true.343, label %lor.lhs.false.331

lor.lhs.false.331:                                ; preds = %land.lhs.true.328, %lor.lhs.false.325
  %130 = load i32, i32* %regno.addr, align 4
  %cmp332 = icmp uge i32 %130, 45
  br i1 %cmp332, label %land.lhs.true.334, label %lor.lhs.false.337

land.lhs.true.334:                                ; preds = %lor.lhs.false.331
  %131 = load i32, i32* %regno.addr, align 4
  %cmp335 = icmp ule i32 %131, 52
  br i1 %cmp335, label %cond.true.343, label %lor.lhs.false.337

lor.lhs.false.337:                                ; preds = %land.lhs.true.334, %lor.lhs.false.331
  %132 = load i32, i32* %regno.addr, align 4
  %cmp338 = icmp uge i32 %132, 29
  br i1 %cmp338, label %land.lhs.true.340, label %cond.false.355

land.lhs.true.340:                                ; preds = %lor.lhs.false.337
  %133 = load i32, i32* %regno.addr, align 4
  %cmp341 = icmp ule i32 %133, 36
  br i1 %cmp341, label %cond.true.343, label %cond.false.355

cond.true.343:                                    ; preds = %land.lhs.true.340, %land.lhs.true.334, %land.lhs.true.328, %land.lhs.true.322
  %134 = load i32, i32* %mode, align 4
  %idxprom344 = sext i32 %134 to i64
  %arrayidx345 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom344
  %135 = load i32, i32* %arrayidx345, align 4
  %cmp346 = icmp eq i32 %135, 5
  br i1 %cmp346, label %lor.end.353, label %lor.rhs.348

lor.rhs.348:                                      ; preds = %cond.true.343
  %136 = load i32, i32* %mode, align 4
  %idxprom349 = sext i32 %136 to i64
  %arrayidx350 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom349
  %137 = load i32, i32* %arrayidx350, align 4
  %cmp351 = icmp eq i32 %137, 6
  br label %lor.end.353

lor.end.353:                                      ; preds = %lor.rhs.348, %cond.true.343
  %138 = phi i1 [ true, %cond.true.343 ], [ %cmp351, %lor.rhs.348 ]
  %cond354 = select i1 %138, i32 2, i32 1
  br label %cond.end.386

cond.false.355:                                   ; preds = %land.lhs.true.340, %lor.lhs.false.337
  %139 = load i32, i32* %mode, align 4
  %cmp356 = icmp eq i32 %139, 18
  br i1 %cmp356, label %cond.true.358, label %cond.false.362

cond.true.358:                                    ; preds = %cond.false.355
  %140 = load i32, i32* @target_flags, align 4
  %and359 = and i32 %140, 33554432
  %tobool360 = icmp ne i32 %and359, 0
  %cond361 = select i1 %tobool360, i32 2, i32 3
  br label %cond.end.384

cond.false.362:                                   ; preds = %cond.false.355
  %141 = load i32, i32* %mode, align 4
  %cmp363 = icmp eq i32 %141, 24
  br i1 %cmp363, label %cond.true.365, label %cond.false.369

cond.true.365:                                    ; preds = %cond.false.362
  %142 = load i32, i32* @target_flags, align 4
  %and366 = and i32 %142, 33554432
  %tobool367 = icmp ne i32 %and366, 0
  %cond368 = select i1 %tobool367, i32 4, i32 6
  br label %cond.end.382

cond.false.369:                                   ; preds = %cond.false.362
  %143 = load i32, i32* %mode, align 4
  %idxprom370 = sext i32 %143 to i64
  %arrayidx371 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom370
  %144 = load i8, i8* %arrayidx371, align 1
  %conv372 = zext i8 %144 to i32
  %145 = load i32, i32* @target_flags, align 4
  %and373 = and i32 %145, 33554432
  %tobool374 = icmp ne i32 %and373, 0
  %cond375 = select i1 %tobool374, i32 8, i32 4
  %add376 = add nsw i32 %conv372, %cond375
  %sub377 = sub nsw i32 %add376, 1
  %146 = load i32, i32* @target_flags, align 4
  %and378 = and i32 %146, 33554432
  %tobool379 = icmp ne i32 %and378, 0
  %cond380 = select i1 %tobool379, i32 8, i32 4
  %div381 = sdiv i32 %sub377, %cond380
  br label %cond.end.382

cond.end.382:                                     ; preds = %cond.false.369, %cond.true.365
  %cond383 = phi i32 [ %cond368, %cond.true.365 ], [ %div381, %cond.false.369 ]
  br label %cond.end.384

cond.end.384:                                     ; preds = %cond.end.382, %cond.true.358
  %cond385 = phi i32 [ %cond361, %cond.true.358 ], [ %cond383, %cond.end.382 ]
  br label %cond.end.386

cond.end.386:                                     ; preds = %cond.end.384, %lor.end.353
  %cond387 = phi i32 [ %cond354, %lor.end.353 ], [ %cond385, %cond.end.384 ]
  %147 = load i32, i32* %nregs.addr, align 4
  %cmp388 = icmp eq i32 %cond387, %147
  br i1 %cmp388, label %land.lhs.true.390, label %if.end.394

land.lhs.true.390:                                ; preds = %cond.end.386
  %148 = load i32, i32* %regno.addr, align 4
  %149 = load i32, i32* %mode, align 4
  %call391 = call i32 @ix86_hard_regno_mode_ok(i32 %148, i32 %149)
  %tobool392 = icmp ne i32 %call391, 0
  br i1 %tobool392, label %if.then.393, label %if.end.394

if.then.393:                                      ; preds = %land.lhs.true.390
  %150 = load i32, i32* %mode, align 4
  store i32 %150, i32* %retval
  br label %return

if.end.394:                                       ; preds = %land.lhs.true.390, %cond.end.386
  br label %for.inc.395

for.inc.395:                                      ; preds = %if.end.394
  %151 = load i32, i32* %m, align 4
  %inc = add i32 %151, 1
  store i32 %inc, i32* %m, align 4
  br label %for.cond.316

for.end.396:                                      ; preds = %for.cond.316
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.396, %if.then.393, %if.then.314, %if.then.226, %if.then.138, %if.then.50
  %152 = load i32, i32* %retval
  ret i32 %152
}

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #2

; Function Attrs: nounwind uwtable
define void @fix_register(i8* %name, i32 %fixed, i32 %call_used) #0 {
entry:
  %name.addr = alloca i8*, align 8
  %fixed.addr = alloca i32, align 4
  %call_used.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 %fixed, i32* %fixed.addr, align 4
  store i32 %call_used, i32* %call_used.addr, align 4
  %0 = load i8*, i8** %name.addr, align 8
  %call = call i32 @decode_reg_name(i8* %0)
  store i32 %call, i32* %i, align 4
  %cmp = icmp sge i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else.14

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %i, align 4
  %cmp1 = icmp eq i32 %1, 7
  br i1 %cmp1, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, i32* %i, align 4
  %cmp2 = icmp eq i32 %2, 6
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false, %if.then
  %3 = load i32, i32* %fixed.addr, align 4
  %cmp3 = icmp eq i32 %3, 0
  br i1 %cmp3, label %if.then.6, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %call_used.addr, align 4
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %lor.lhs.false.4, %land.lhs.true
  %5 = load i8*, i8** %name.addr, align 8
  %6 = load i32, i32* %call_used.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load i32, i32* %fixed.addr, align 4
  %idxprom7 = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [2 x [2 x i8*]], [2 x [2 x i8*]]* @fix_register.what_option, i32 0, i64 %idxprom7
  %arrayidx8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %arrayidx, i32 0, i64 %idxprom
  %8 = load i8*, i8** %arrayidx8, align 8
  call void (i8*, ...) @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i8* %5, i8* %8)
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false.4, %lor.lhs.false
  %9 = load i32, i32* %fixed.addr, align 4
  %conv = trunc i32 %9 to i8
  %10 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom9
  store i8 %conv, i8* %arrayidx10, align 1
  %11 = load i32, i32* %call_used.addr, align 4
  %conv11 = trunc i32 %11 to i8
  %12 = load i32, i32* %i, align 4
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom12
  store i8 %conv11, i8* %arrayidx13, align 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %if.end.15

if.else.14:                                       ; preds = %entry
  %13 = load i8*, i8** %name.addr, align 8
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i32 0, i32 0), i8* %13)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.end
  ret void
}

declare i32 @decode_reg_name(i8*) #2

declare void @error(i8*, ...) #2

declare void @warning(i8*, ...) #2

; Function Attrs: nounwind uwtable
define void @globalize_reg(i32 %i) #0 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @no_global_reg_vars, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @error(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load i32, i32* %i.addr, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %tobool4 = icmp ne i8 %4, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i32 0, i32 0))
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load i32, i32* %i.addr, align 4
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom7
  %6 = load i8, i8* %arrayidx8, align 1
  %conv9 = sext i8 %6 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %land.lhs.true.11, label %if.end.16

land.lhs.true.11:                                 ; preds = %if.end.6
  %7 = load i32, i32* %i.addr, align 4
  %idxprom12 = sext i32 %7 to i64
  %arrayidx13 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom12
  %8 = load i8, i8* %arrayidx13, align 1
  %tobool14 = icmp ne i8 %8, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true.11
  call void (i8*, ...) @warning(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true.11, %if.end.6
  %9 = load i32, i32* %i.addr, align 4
  %idxprom17 = sext i32 %9 to i64
  %arrayidx18 = getelementptr inbounds [53 x i8], [53 x i8]* @global_regs, i32 0, i64 %idxprom17
  store i8 1, i8* %arrayidx18, align 1
  %10 = load i32, i32* %i.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom19
  %11 = load i8, i8* %arrayidx20, align 1
  %tobool21 = icmp ne i8 %11, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.16
  br label %return

if.end.23:                                        ; preds = %if.end.16
  %12 = load i32, i32* %i.addr, align 4
  %idxprom24 = sext i32 %12 to i64
  %arrayidx25 = getelementptr inbounds [53 x i8], [53 x i8]* @call_fixed_regs, i32 0, i64 %idxprom24
  store i8 1, i8* %arrayidx25, align 1
  %13 = load i32, i32* %i.addr, align 4
  %idxprom26 = sext i32 %13 to i64
  %arrayidx27 = getelementptr inbounds [53 x i8], [53 x i8]* @call_used_regs, i32 0, i64 %idxprom26
  store i8 1, i8* %arrayidx27, align 1
  %14 = load i32, i32* %i.addr, align 4
  %idxprom28 = sext i32 %14 to i64
  %arrayidx29 = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom28
  store i8 1, i8* %arrayidx29, align 1
  %15 = load i32, i32* @n_non_fixed_regs, align 4
  %dec = add nsw i32 %15, -1
  store i32 %dec, i32* @n_non_fixed_regs, align 4
  %16 = load i32, i32* %i.addr, align 4
  %sh_prom = zext i32 %16 to i64
  %shl = shl i64 1, %sh_prom
  %17 = load i64, i64* @fixed_reg_set, align 8
  %or = or i64 %17, %shl
  store i64 %or, i64* @fixed_reg_set, align 8
  %18 = load i32, i32* %i.addr, align 4
  %sh_prom30 = zext i32 %18 to i64
  %shl31 = shl i64 1, %sh_prom30
  %19 = load i64, i64* @call_used_reg_set, align 8
  %or32 = or i64 %19, %shl31
  store i64 %or32, i64* @call_used_reg_set, align 8
  %20 = load i32, i32* %i.addr, align 4
  %sh_prom33 = zext i32 %20 to i64
  %shl34 = shl i64 1, %sh_prom33
  %21 = load i64, i64* @call_fixed_reg_set, align 8
  %or35 = or i64 %21, %shl34
  store i64 %or35, i64* @call_fixed_reg_set, align 8
  %22 = load i32, i32* %i.addr, align 4
  %sh_prom36 = zext i32 %22 to i64
  %shl37 = shl i64 1, %sh_prom36
  %23 = load i64, i64* @regs_invalidated_by_call, align 8
  %or38 = or i64 %23, %shl37
  store i64 %or38, i64* @regs_invalidated_by_call, align 8
  br label %return

return:                                           ; preds = %if.end.23, %if.then.22, %if.then.5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @reg_preferred_class(i32 %regno) #0 {
entry:
  %retval = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8
  %cmp = icmp eq %struct.reg_pref* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 12, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %regno.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8
  %arrayidx = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %2, i64 %idxprom
  %prefclass = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %arrayidx, i32 0, i32 0
  %3 = load i8, i8* %prefclass, align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @reg_alternate_class(i32 %regno) #0 {
entry:
  %retval = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8
  %cmp = icmp eq %struct.reg_pref* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 24, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %regno.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8
  %arrayidx = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %2, i64 %idxprom
  %altclass = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %arrayidx, i32 0, i32 1
  %3 = load i8, i8* %altclass, align 1
  %conv = sext i8 %3 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @regclass_init() #0 {
entry:
  %i = alloca i32, align 4
  store i32 10000, i32* getelementptr inbounds (%struct.costs, %struct.costs* @init_cost, i32 0, i32 1), align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 25
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [25 x i32], [25 x i32]* getelementptr inbounds (%struct.costs, %struct.costs* @init_cost, i32 0, i32 0), i32 0, i64 %idxprom
  store i32 10000, i32* %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.reg_pref* null, %struct.reg_pref** @reg_pref, align 8
  store i32 1, i32* @no_global_reg_vars, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @regclass(%struct.rtx_def* %f, i32 %nregs, %struct._IO_FILE* %dump) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %nregs.addr = alloca i32, align 4
  %dump.addr = alloca %struct._IO_FILE*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %pass = alloca i32, align 4
  %index = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %best_cost = alloca i32, align 4
  %best = alloca i32, align 4
  %alt = alloca i32, align 4
  %class = alloca i32, align 4
  %p = alloca %struct.costs*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store i32 %nregs, i32* %nregs.addr, align 4
  store %struct._IO_FILE* %dump, %struct._IO_FILE** %dump.addr, align 8
  call void @init_recog()
  %0 = load i32, i32* %nregs.addr, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 104
  %call = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call to %struct.costs*
  store %struct.costs* %1, %struct.costs** @costs, align 8
  store i32 0, i32* %pass, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.194, %entry
  %2 = load i32, i32* %pass, align 4
  %3 = load i32, i32* @flag_expensive_optimizations, align 4
  %cmp = icmp sle i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end.196

for.body:                                         ; preds = %for.cond
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %tobool = icmp ne %struct._IO_FILE* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %6 = load i32, i32* %pass, align 4
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i32 %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load %struct.costs*, %struct.costs** @costs, align 8
  %8 = bitcast %struct.costs* %7 to i8*
  %9 = load i32, i32* %nregs.addr, align 4
  %conv3 = sext i32 %9 to i64
  %mul4 = mul i64 %conv3, 104
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 %mul4, i32 1, i1 false)
  %10 = load i32, i32* @optimize, align 4
  %tobool5 = icmp ne i32 %10, 0
  br i1 %tobool5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 1000, i32* @frequency, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %insn, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.then.6
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool8 = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool8, label %for.body.9, label %for.end

for.body.9:                                       ; preds = %for.cond.7
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %14 = load i32, i32* %pass, align 4
  %call10 = call %struct.rtx_def* @scan_one_insn(%struct.rtx_def* %13, i32 %14)
  store %struct.rtx_def* %call10, %struct.rtx_def** %insn, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.9
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %insn, align 8
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  br label %if.end.42

if.else:                                          ; preds = %if.end
  store i32 0, i32* %index, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.40, %if.else
  %17 = load i32, i32* %index, align 4
  %18 = load i32, i32* @n_basic_blocks, align 4
  %cmp12 = icmp slt i32 %17, %18
  br i1 %cmp12, label %for.body.14, label %for.end.41

for.body.14:                                      ; preds = %for.cond.11
  %19 = load i32, i32* %index, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %20, i32 0, i32 4
  %bb15 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx16 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb15, i32 0, i64 %idxprom
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx16, align 8
  store %struct.basic_block_def* %21, %struct.basic_block_def** %bb, align 8
  %22 = load i32, i32* @optimize_size, align 4
  %tobool17 = icmp ne i32 %22, 0
  br i1 %tobool17, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.14
  %23 = load i32, i32* @flag_branch_probabilities, align 4
  %tobool18 = icmp ne i32 %23, 0
  br i1 %tobool18, label %land.lhs.true, label %cond.false

land.lhs.true:                                    ; preds = %lor.lhs.false
  %24 = load i64, i64* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 13), align 8
  %tobool19 = icmp ne i64 %24, 0
  br i1 %tobool19, label %cond.false, label %cond.true

cond.true:                                        ; preds = %land.lhs.true, %for.body.14
  br label %cond.end.27

cond.false:                                       ; preds = %land.lhs.true, %lor.lhs.false
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 14
  %26 = load i32, i32* %frequency, align 4
  %mul20 = mul nsw i32 %26, 1000
  %div = sdiv i32 %mul20, 10000
  %tobool21 = icmp ne i32 %div, 0
  br i1 %tobool21, label %cond.true.22, label %cond.false.26

cond.true.22:                                     ; preds = %cond.false
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %frequency23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 14
  %28 = load i32, i32* %frequency23, align 4
  %mul24 = mul nsw i32 %28, 1000
  %div25 = sdiv i32 %mul24, 10000
  br label %cond.end

cond.false.26:                                    ; preds = %cond.false
  br label %cond.end

cond.end:                                         ; preds = %cond.false.26, %cond.true.22
  %cond = phi i32 [ %div25, %cond.true.22 ], [ 1, %cond.false.26 ]
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.end, %cond.true
  %cond28 = phi i32 [ 1000, %cond.true ], [ %cond, %cond.end ]
  store i32 %cond28, i32* @frequency, align 4
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i32 0, i32 0
  %30 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %insn, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.35, %cond.end.27
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %32 = load i32, i32* %pass, align 4
  %call30 = call %struct.rtx_def* @scan_one_insn(%struct.rtx_def* %31, i32 %32)
  store %struct.rtx_def* %call30, %struct.rtx_def** %insn, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i32 0, i32 1
  %35 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp31 = icmp eq %struct.rtx_def* %33, %35
  br i1 %cmp31, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %for.cond.29
  br label %for.end.39

if.end.34:                                        ; preds = %for.cond.29
  br label %for.inc.35

for.inc.35:                                       ; preds = %if.end.34
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 2
  %rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx38, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %insn, align 8
  br label %for.cond.29

for.end.39:                                       ; preds = %if.then.33
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39
  %38 = load i32, i32* %index, align 4
  %inc = add nsw i32 %38, 1
  store i32 %inc, i32* %index, align 4
  br label %for.cond.11

for.end.41:                                       ; preds = %for.cond.11
  br label %if.end.42

if.end.42:                                        ; preds = %for.end.41, %for.end
  %39 = load i32, i32* %pass, align 4
  %cmp43 = icmp eq i32 %39, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.end.42
  %40 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref_buffer, align 8
  store %struct.reg_pref* %40, %struct.reg_pref** @reg_pref, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.45, %if.end.42
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %tobool47 = icmp ne %struct._IO_FILE* %41, null
  br i1 %tobool47, label %if.then.48, label %if.end.50

if.then.48:                                       ; preds = %if.end.46
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  call void @dump_regclass(%struct._IO_FILE* %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.48, %if.end.46
  store i32 53, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.191, %if.end.50
  %44 = load i32, i32* %i, align 4
  %45 = load i32, i32* %nregs.addr, align 4
  %cmp52 = icmp slt i32 %44, %45
  br i1 %cmp52, label %for.body.54, label %for.end.193

for.body.54:                                      ; preds = %for.cond.51
  store i32 1073741823, i32* %best_cost, align 4
  store i32 24, i32* %best, align 4
  store i32 0, i32* %alt, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom55 = sext i32 %46 to i64
  %47 = load %struct.costs*, %struct.costs** @costs, align 8
  %arrayidx56 = getelementptr inbounds %struct.costs, %struct.costs* %47, i64 %idxprom55
  store %struct.costs* %arrayidx56, %struct.costs** %p, align 8
  %48 = load i32, i32* @optimize, align 4
  %tobool57 = icmp ne i32 %48, 0
  br i1 %tobool57, label %land.lhs.true.58, label %if.end.64

land.lhs.true.58:                                 ; preds = %for.body.54
  %49 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %49 to i64
  %50 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data60 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %50, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data60 to [1 x %struct.reg_info_def*]*
  %arrayidx61 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom59
  %51 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx61, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %51, i32 0, i32 4
  %52 = load i32, i32* %refs, align 4
  %tobool62 = icmp ne i32 %52, 0
  br i1 %tobool62, label %if.end.64, label %if.then.63

if.then.63:                                       ; preds = %land.lhs.true.58
  br label %for.inc.191

if.end.64:                                        ; preds = %land.lhs.true.58, %for.body.54
  store i32 23, i32* %class, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.100, %if.end.64
  %53 = load i32, i32* %class, align 4
  %cmp66 = icmp sgt i32 %53, 0
  br i1 %cmp66, label %for.body.68, label %for.end.101

for.body.68:                                      ; preds = %for.cond.65
  %54 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %54 to i64
  %55 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %55, i32 0, i32 3
  %56 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %56, i32 0, i32 12
  %57 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx70 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %57, i64 %idxprom69
  %58 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx70, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load = load i32, i32* %59, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom71 = zext i32 %bf.clear to i64
  %60 = load i32, i32* %class, align 4
  %idxprom72 = sext i32 %60 to i64
  %arrayidx73 = getelementptr inbounds [25 x [59 x i8]], [25 x [59 x i8]]* @contains_reg_of_mode, i32 0, i64 %idxprom72
  %arrayidx74 = getelementptr inbounds [59 x i8], [59 x i8]* %arrayidx73, i32 0, i64 %idxprom71
  %61 = load i8, i8* %arrayidx74, align 1
  %tobool75 = icmp ne i8 %61, 0
  br i1 %tobool75, label %if.else.77, label %if.then.76

if.then.76:                                       ; preds = %for.body.68
  br label %if.end.99

if.else.77:                                       ; preds = %for.body.68
  %62 = load i32, i32* %class, align 4
  %idxprom78 = sext i32 %62 to i64
  %63 = load %struct.costs*, %struct.costs** %p, align 8
  %cost = getelementptr inbounds %struct.costs, %struct.costs* %63, i32 0, i32 0
  %arrayidx79 = getelementptr inbounds [25 x i32], [25 x i32]* %cost, i32 0, i64 %idxprom78
  %64 = load i32, i32* %arrayidx79, align 4
  %65 = load i32, i32* %best_cost, align 4
  %cmp80 = icmp slt i32 %64, %65
  br i1 %cmp80, label %if.then.82, label %if.else.86

if.then.82:                                       ; preds = %if.else.77
  %66 = load i32, i32* %class, align 4
  %idxprom83 = sext i32 %66 to i64
  %67 = load %struct.costs*, %struct.costs** %p, align 8
  %cost84 = getelementptr inbounds %struct.costs, %struct.costs* %67, i32 0, i32 0
  %arrayidx85 = getelementptr inbounds [25 x i32], [25 x i32]* %cost84, i32 0, i64 %idxprom83
  %68 = load i32, i32* %arrayidx85, align 4
  store i32 %68, i32* %best_cost, align 4
  %69 = load i32, i32* %class, align 4
  store i32 %69, i32* %best, align 4
  br label %if.end.98

if.else.86:                                       ; preds = %if.else.77
  %70 = load i32, i32* %class, align 4
  %idxprom87 = sext i32 %70 to i64
  %71 = load %struct.costs*, %struct.costs** %p, align 8
  %cost88 = getelementptr inbounds %struct.costs, %struct.costs* %71, i32 0, i32 0
  %arrayidx89 = getelementptr inbounds [25 x i32], [25 x i32]* %cost88, i32 0, i64 %idxprom87
  %72 = load i32, i32* %arrayidx89, align 4
  %73 = load i32, i32* %best_cost, align 4
  %cmp90 = icmp eq i32 %72, %73
  br i1 %cmp90, label %if.then.92, label %if.end.97

if.then.92:                                       ; preds = %if.else.86
  %74 = load i32, i32* %class, align 4
  %idxprom93 = sext i32 %74 to i64
  %75 = load i32, i32* %best, align 4
  %idxprom94 = sext i32 %75 to i64
  %arrayidx95 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subunion, i32 0, i64 %idxprom94
  %arrayidx96 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx95, i32 0, i64 %idxprom93
  %76 = load i32, i32* %arrayidx96, align 4
  store i32 %76, i32* %best, align 4
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.92, %if.else.86
  br label %if.end.98

if.end.98:                                        ; preds = %if.end.97, %if.then.82
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.98, %if.then.76
  br label %for.inc.100

for.inc.100:                                      ; preds = %if.end.99
  %77 = load i32, i32* %class, align 4
  %dec = add nsw i32 %77, -1
  store i32 %dec, i32* %class, align 4
  br label %for.cond.65

for.end.101:                                      ; preds = %for.cond.65
  %78 = load i32, i32* %pass, align 4
  %cmp102 = icmp eq i32 %78, 1
  br i1 %cmp102, label %if.then.108, label %lor.lhs.false.104

lor.lhs.false.104:                                ; preds = %for.end.101
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %tobool105 = icmp ne %struct._IO_FILE* %79, null
  br i1 %tobool105, label %if.then.108, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.104
  %80 = load i32, i32* @flag_expensive_optimizations, align 4
  %tobool107 = icmp ne i32 %80, 0
  br i1 %tobool107, label %if.end.138, label %if.then.108

if.then.108:                                      ; preds = %lor.lhs.false.106, %lor.lhs.false.104, %for.end.101
  store i32 0, i32* %class, align 4
  br label %for.cond.109

for.cond.109:                                     ; preds = %for.inc.135, %if.then.108
  %81 = load i32, i32* %class, align 4
  %cmp110 = icmp slt i32 %81, 25
  br i1 %cmp110, label %for.body.112, label %for.end.137

for.body.112:                                     ; preds = %for.cond.109
  %82 = load i32, i32* %class, align 4
  %idxprom113 = sext i32 %82 to i64
  %83 = load %struct.costs*, %struct.costs** %p, align 8
  %cost114 = getelementptr inbounds %struct.costs, %struct.costs* %83, i32 0, i32 0
  %arrayidx115 = getelementptr inbounds [25 x i32], [25 x i32]* %cost114, i32 0, i64 %idxprom113
  %84 = load i32, i32* %arrayidx115, align 4
  %85 = load %struct.costs*, %struct.costs** %p, align 8
  %mem_cost = getelementptr inbounds %struct.costs, %struct.costs* %85, i32 0, i32 1
  %86 = load i32, i32* %mem_cost, align 4
  %cmp116 = icmp slt i32 %84, %86
  br i1 %cmp116, label %land.lhs.true.118, label %if.end.134

land.lhs.true.118:                                ; preds = %for.body.112
  %87 = load i32, i32* %class, align 4
  %idxprom119 = sext i32 %87 to i64
  %88 = load i32, i32* %alt, align 4
  %idxprom120 = sext i32 %88 to i64
  %arrayidx121 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subunion, i32 0, i64 %idxprom120
  %arrayidx122 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx121, i32 0, i64 %idxprom119
  %89 = load i32, i32* %arrayidx122, align 4
  %idxprom123 = sext i32 %89 to i64
  %arrayidx124 = getelementptr inbounds [25 x i32], [25 x i32]* @reg_class_size, i32 0, i64 %idxprom123
  %90 = load i32, i32* %arrayidx124, align 4
  %91 = load i32, i32* %alt, align 4
  %idxprom125 = sext i32 %91 to i64
  %arrayidx126 = getelementptr inbounds [25 x i32], [25 x i32]* @reg_class_size, i32 0, i64 %idxprom125
  %92 = load i32, i32* %arrayidx126, align 4
  %cmp127 = icmp ugt i32 %90, %92
  br i1 %cmp127, label %if.then.129, label %if.end.134

if.then.129:                                      ; preds = %land.lhs.true.118
  %93 = load i32, i32* %class, align 4
  %idxprom130 = sext i32 %93 to i64
  %94 = load i32, i32* %alt, align 4
  %idxprom131 = sext i32 %94 to i64
  %arrayidx132 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subunion, i32 0, i64 %idxprom131
  %arrayidx133 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx132, i32 0, i64 %idxprom130
  %95 = load i32, i32* %arrayidx133, align 4
  store i32 %95, i32* %alt, align 4
  br label %if.end.134

if.end.134:                                       ; preds = %if.then.129, %land.lhs.true.118, %for.body.112
  br label %for.inc.135

for.inc.135:                                      ; preds = %if.end.134
  %96 = load i32, i32* %class, align 4
  %inc136 = add nsw i32 %96, 1
  store i32 %inc136, i32* %class, align 4
  br label %for.cond.109

for.end.137:                                      ; preds = %for.cond.109
  br label %if.end.138

if.end.138:                                       ; preds = %for.end.137, %lor.lhs.false.106
  %97 = load i32, i32* %alt, align 4
  %98 = load i32, i32* %best, align 4
  %cmp139 = icmp eq i32 %97, %98
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.138
  store i32 0, i32* %alt, align 4
  br label %if.end.142

if.end.142:                                       ; preds = %if.then.141, %if.end.138
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %tobool143 = icmp ne %struct._IO_FILE* %99, null
  br i1 %tobool143, label %land.lhs.true.144, label %if.end.182

land.lhs.true.144:                                ; preds = %if.end.142
  %100 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %100 to i64
  %101 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8
  %arrayidx146 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %101, i64 %idxprom145
  %prefclass = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %arrayidx146, i32 0, i32 0
  %102 = load i8, i8* %prefclass, align 1
  %conv147 = sext i8 %102 to i32
  %103 = load i32, i32* %best, align 4
  %cmp148 = icmp ne i32 %conv147, %103
  br i1 %cmp148, label %if.then.156, label %lor.lhs.false.150

lor.lhs.false.150:                                ; preds = %land.lhs.true.144
  %104 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %104 to i64
  %105 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8
  %arrayidx152 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %105, i64 %idxprom151
  %altclass = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %arrayidx152, i32 0, i32 1
  %106 = load i8, i8* %altclass, align 1
  %conv153 = sext i8 %106 to i32
  %107 = load i32, i32* %alt, align 4
  %cmp154 = icmp ne i32 %conv153, %107
  br i1 %cmp154, label %if.then.156, label %if.end.182

if.then.156:                                      ; preds = %lor.lhs.false.150, %land.lhs.true.144
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %109 = load i32, i32* %i, align 4
  %call157 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0), i32 %109)
  %110 = load i32, i32* %alt, align 4
  %cmp158 = icmp eq i32 %110, 24
  br i1 %cmp158, label %if.then.163, label %lor.lhs.false.160

lor.lhs.false.160:                                ; preds = %if.then.156
  %111 = load i32, i32* %best, align 4
  %cmp161 = icmp eq i32 %111, 24
  br i1 %cmp161, label %if.then.163, label %if.else.167

if.then.163:                                      ; preds = %lor.lhs.false.160, %if.then.156
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %113 = load i32, i32* %best, align 4
  %idxprom164 = sext i32 %113 to i64
  %arrayidx165 = getelementptr inbounds [25 x i8*], [25 x i8*]* @regclass.reg_class_names, i32 0, i64 %idxprom164
  %114 = load i8*, i8** %arrayidx165, align 8
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.37, i32 0, i32 0), i8* %114)
  br label %if.end.181

if.else.167:                                      ; preds = %lor.lhs.false.160
  %115 = load i32, i32* %alt, align 4
  %cmp168 = icmp eq i32 %115, 0
  br i1 %cmp168, label %if.then.170, label %if.else.174

if.then.170:                                      ; preds = %if.else.167
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %117 = load i32, i32* %best, align 4
  %idxprom171 = sext i32 %117 to i64
  %arrayidx172 = getelementptr inbounds [25 x i8*], [25 x i8*]* @regclass.reg_class_names, i32 0, i64 %idxprom171
  %118 = load i8*, i8** %arrayidx172, align 8
  %call173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i32 0, i32 0), i8* %118)
  br label %if.end.180

if.else.174:                                      ; preds = %if.else.167
  %119 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %120 = load i32, i32* %best, align 4
  %idxprom175 = sext i32 %120 to i64
  %arrayidx176 = getelementptr inbounds [25 x i8*], [25 x i8*]* @regclass.reg_class_names, i32 0, i64 %idxprom175
  %121 = load i8*, i8** %arrayidx176, align 8
  %122 = load i32, i32* %alt, align 4
  %idxprom177 = sext i32 %122 to i64
  %arrayidx178 = getelementptr inbounds [25 x i8*], [25 x i8*]* @regclass.reg_class_names, i32 0, i64 %idxprom177
  %123 = load i8*, i8** %arrayidx178, align 8
  %call179 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.39, i32 0, i32 0), i8* %121, i8* %123)
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.174, %if.then.170
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.then.163
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %lor.lhs.false.150, %if.end.142
  %124 = load i32, i32* %best, align 4
  %conv183 = trunc i32 %124 to i8
  %125 = load i32, i32* %i, align 4
  %idxprom184 = sext i32 %125 to i64
  %126 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8
  %arrayidx185 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %126, i64 %idxprom184
  %prefclass186 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %arrayidx185, i32 0, i32 0
  store i8 %conv183, i8* %prefclass186, align 1
  %127 = load i32, i32* %alt, align 4
  %conv187 = trunc i32 %127 to i8
  %128 = load i32, i32* %i, align 4
  %idxprom188 = sext i32 %128 to i64
  %129 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8
  %arrayidx189 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %129, i64 %idxprom188
  %altclass190 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %arrayidx189, i32 0, i32 1
  store i8 %conv187, i8* %altclass190, align 1
  br label %for.inc.191

for.inc.191:                                      ; preds = %if.end.182, %if.then.63
  %130 = load i32, i32* %i, align 4
  %inc192 = add nsw i32 %130, 1
  store i32 %inc192, i32* %i, align 4
  br label %for.cond.51

for.end.193:                                      ; preds = %for.cond.51
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.end.193
  %131 = load i32, i32* %pass, align 4
  %inc195 = add nsw i32 %131, 1
  store i32 %inc195, i32* %pass, align 4
  br label %for.cond

for.end.196:                                      ; preds = %for.cond
  %132 = load %struct.costs*, %struct.costs** @costs, align 8
  %133 = bitcast %struct.costs* %132 to i8*
  call void @free(i8* %133) #1
  ret void
}

declare void @init_recog() #2

declare noalias i8* @xmalloc(i64) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @scan_one_insn(%struct.rtx_def* %insn, i32 %pass) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %pass.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %pat_code = alloca i32, align 4
  %set = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %op_costs = alloca [30 x %struct.costs], align 16
  %previnsn = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %newinsn = alloca %struct.rtx_def*, align 8
  %b = alloca i32, align 4
  %regno = alloca i32, align 4
  %p = alloca %struct.costs*, align 8
  %q = alloca %struct.costs*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %pass, i32* %pass.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp ne i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  store i32 %bf.clear4, i32* %pat_code, align 4
  %8 = load i32, i32* %pat_code, align 4
  %cmp5 = icmp eq i32 %8, 48
  br i1 %cmp5, label %if.then.18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %9 = load i32, i32* %pat_code, align 4
  %cmp7 = icmp eq i32 %9, 49
  br i1 %cmp7, label %if.then.18, label %lor.lhs.false.9

lor.lhs.false.9:                                  ; preds = %lor.lhs.false
  %10 = load i32, i32* %pat_code, align 4
  %cmp10 = icmp eq i32 %10, 40
  br i1 %cmp10, label %if.then.18, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.9
  %11 = load i32, i32* %pat_code, align 4
  %cmp13 = icmp eq i32 %11, 44
  br i1 %cmp13, label %if.then.18, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %lor.lhs.false.12
  %12 = load i32, i32* %pat_code, align 4
  %cmp16 = icmp eq i32 %12, 45
  br i1 %cmp16, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.15, %lor.lhs.false.12, %lor.lhs.false.9, %lor.lhs.false, %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false.15
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load20 = load i32, i32* %15, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %idxprom22 = sext i32 %bf.clear21 to i64
  %arrayidx23 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom22
  %16 = load i8, i8* %arrayidx23, align 1
  %conv24 = sext i8 %16 to i32
  %cmp25 = icmp eq i32 %conv24, 105
  br i1 %cmp25, label %cond.true, label %cond.false.41

cond.true:                                        ; preds = %if.end.19
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 3
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load30 = load i32, i32* %19, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 47
  br i1 %cmp32, label %cond.true.34, label %cond.false

cond.true.34:                                     ; preds = %cond.true
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 3
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %22, %struct.rtx_def* %24)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.34
  %cond = phi %struct.rtx_def* [ %21, %cond.true.34 ], [ %call, %cond.false ]
  br label %cond.end.42

cond.false.41:                                    ; preds = %if.end.19
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.end
  %cond43 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.41 ]
  store %struct.rtx_def* %cond43, %struct.rtx_def** %set, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @extract_insn(%struct.rtx_def* %25)
  %26 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %cmp44 = icmp ne %struct.rtx_def* %26, null
  br i1 %cmp44, label %land.lhs.true, label %if.end.94

land.lhs.true:                                    ; preds = %cond.end.42
  %27 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load49 = load i32, i32* %29, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 61
  br i1 %cmp51, label %land.lhs.true.53, label %if.end.94

land.lhs.true.53:                                 ; preds = %land.lhs.true
  %30 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 1
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load57 = load i32, i32* %32, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 66
  br i1 %cmp59, label %land.lhs.true.61, label %if.end.94

land.lhs.true.61:                                 ; preds = %land.lhs.true.53
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call62 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %33, i32 3, %struct.rtx_def* null)
  store %struct.rtx_def* %call62, %struct.rtx_def** %note, align 8
  %cmp63 = icmp ne %struct.rtx_def* %call62, null
  br i1 %cmp63, label %land.lhs.true.65, label %if.end.94

land.lhs.true.65:                                 ; preds = %land.lhs.true.61
  %34 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 0
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load69 = load i32, i32* %36, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %cmp71 = icmp eq i32 %bf.clear70, 66
  br i1 %cmp71, label %if.then.73, label %if.end.94

if.then.73:                                       ; preds = %land.lhs.true.65
  %37 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %38 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load77 = load i32, i32* %39, align 8
  %bf.lshr = lshr i32 %bf.load77, 16
  %bf.clear78 = and i32 %bf.lshr, 255
  %call79 = call i32 @ix86_memory_move_cost(i32 %bf.clear78, i32 12, i32 1)
  %40 = load i32, i32* @frequency, align 4
  %mul = mul nsw i32 %call79, %40
  %41 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx84 to i32*
  %43 = load i32, i32* %rtuint, align 4
  %idxprom85 = zext i32 %43 to i64
  %44 = load %struct.costs*, %struct.costs** @costs, align 8
  %arrayidx86 = getelementptr inbounds %struct.costs, %struct.costs* %44, i64 %idxprom85
  %mem_cost = getelementptr inbounds %struct.costs, %struct.costs* %arrayidx86, i32 0, i32 1
  %45 = load i32, i32* %mem_cost, align 4
  %sub = sub nsw i32 %45, %mul
  store i32 %sub, i32* %mem_cost, align 4
  %46 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 1
  %rtx89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx89, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  %49 = load i32, i32* @frequency, align 4
  %mul93 = mul nsw i32 %49, 2
  call void @record_address_regs(%struct.rtx_def* %48, i32 12, i32 %mul93)
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %retval
  br label %return

if.end.94:                                        ; preds = %land.lhs.true.65, %land.lhs.true.61, %land.lhs.true.53, %land.lhs.true, %cond.end.42
  %51 = load i32, i32* %pass.addr, align 4
  %cmp95 = icmp eq i32 %51, 0
  br i1 %cmp95, label %land.lhs.true.97, label %if.end.331

land.lhs.true.97:                                 ; preds = %if.end.94
  %52 = load i32, i32* @optimize, align 4
  %tobool = icmp ne i32 %52, 0
  br i1 %tobool, label %land.lhs.true.98, label %if.end.331

land.lhs.true.98:                                 ; preds = %land.lhs.true.97
  %53 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv99 = sext i8 %53 to i32
  %cmp100 = icmp sge i32 %conv99, 3
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.331

land.lhs.true.102:                                ; preds = %land.lhs.true.98
  %54 = load i8*, i8** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2, i64 1), align 8
  %arrayidx103 = getelementptr inbounds i8, i8* %54, i64 0
  %55 = load i8, i8* %arrayidx103, align 1
  %conv104 = sext i8 %55 to i32
  %cmp105 = icmp eq i32 %conv104, 48
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.331

land.lhs.true.107:                                ; preds = %land.lhs.true.102
  %56 = load i8*, i8** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2, i64 1), align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %56, i64 1
  %57 = load i8, i8* %arrayidx108, align 1
  %conv109 = sext i8 %57 to i32
  %cmp110 = icmp eq i32 %conv109, 0
  br i1 %cmp110, label %land.lhs.true.112, label %if.end.331

land.lhs.true.112:                                ; preds = %land.lhs.true.107
  %58 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 1), align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load113 = load i32, i32* %59, align 8
  %bf.clear114 = and i32 %bf.load113, 65535
  %cmp115 = icmp eq i32 %bf.clear114, 67
  br i1 %cmp115, label %land.lhs.true.152, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %land.lhs.true.112
  %60 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 1), align 8
  %61 = bitcast %struct.rtx_def* %60 to i32*
  %bf.load118 = load i32, i32* %61, align 8
  %bf.clear119 = and i32 %bf.load118, 65535
  %cmp120 = icmp eq i32 %bf.clear119, 68
  br i1 %cmp120, label %land.lhs.true.152, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %lor.lhs.false.117
  %62 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 1), align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load123 = load i32, i32* %63, align 8
  %bf.clear124 = and i32 %bf.load123, 65535
  %cmp125 = icmp eq i32 %bf.clear124, 54
  br i1 %cmp125, label %land.lhs.true.152, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.122
  %64 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 1), align 8
  %65 = bitcast %struct.rtx_def* %64 to i32*
  %bf.load128 = load i32, i32* %65, align 8
  %bf.clear129 = and i32 %bf.load128, 65535
  %cmp130 = icmp eq i32 %bf.clear129, 55
  br i1 %cmp130, label %land.lhs.true.152, label %lor.lhs.false.132

lor.lhs.false.132:                                ; preds = %lor.lhs.false.127
  %66 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 1), align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load133 = load i32, i32* %67, align 8
  %bf.clear134 = and i32 %bf.load133, 65535
  %cmp135 = icmp eq i32 %bf.clear134, 58
  br i1 %cmp135, label %land.lhs.true.152, label %lor.lhs.false.137

lor.lhs.false.137:                                ; preds = %lor.lhs.false.132
  %68 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 1), align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load138 = load i32, i32* %69, align 8
  %bf.clear139 = and i32 %bf.load138, 65535
  %cmp140 = icmp eq i32 %bf.clear139, 134
  br i1 %cmp140, label %land.lhs.true.152, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %lor.lhs.false.137
  %70 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 1), align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load143 = load i32, i32* %71, align 8
  %bf.clear144 = and i32 %bf.load143, 65535
  %cmp145 = icmp eq i32 %bf.clear144, 56
  br i1 %cmp145, label %land.lhs.true.152, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false.142
  %72 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 1), align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load148 = load i32, i32* %73, align 8
  %bf.clear149 = and i32 %bf.load148, 65535
  %cmp150 = icmp eq i32 %bf.clear149, 140
  br i1 %cmp150, label %land.lhs.true.152, label %if.end.331

land.lhs.true.152:                                ; preds = %lor.lhs.false.147, %lor.lhs.false.142, %lor.lhs.false.137, %lor.lhs.false.132, %lor.lhs.false.127, %lor.lhs.false.122, %lor.lhs.false.117, %land.lhs.true.112
  %74 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 1), align 8
  %call153 = call i32 @rtx_equal_p(%struct.rtx_def* %74, %struct.rtx_def* %75)
  %tobool154 = icmp ne i32 %call153, 0
  br i1 %tobool154, label %if.end.331, label %land.lhs.true.155

land.lhs.true.155:                                ; preds = %land.lhs.true.152
  %76 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %77 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 2), align 8
  %call156 = call i32 @rtx_equal_p(%struct.rtx_def* %76, %struct.rtx_def* %77)
  %tobool157 = icmp ne i32 %call156, 0
  br i1 %tobool157, label %if.end.331, label %land.lhs.true.158

land.lhs.true.158:                                ; preds = %land.lhs.true.155
  %78 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load159 = load i32, i32* %79, align 8
  %bf.clear160 = and i32 %bf.load159, 65535
  %cmp161 = icmp eq i32 %bf.clear160, 61
  br i1 %cmp161, label %land.lhs.true.163, label %if.end.331

land.lhs.true.163:                                ; preds = %land.lhs.true.158
  %80 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %81 = bitcast %struct.rtx_def* %80 to i32*
  %bf.load164 = load i32, i32* %81, align 8
  %bf.lshr165 = lshr i32 %bf.load164, 16
  %bf.clear166 = and i32 %bf.lshr165, 255
  %82 = load i32, i32* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 3, i64 1), align 4
  %cmp167 = icmp eq i32 %bf.clear166, %82
  br i1 %cmp167, label %if.then.226, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %land.lhs.true.163
  %83 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load170 = load i32, i32* %84, align 8
  %bf.lshr171 = lshr i32 %bf.load170, 16
  %bf.clear172 = and i32 %bf.lshr171, 255
  %cmp173 = icmp eq i32 %bf.clear172, 3
  br i1 %cmp173, label %land.lhs.true.201, label %lor.lhs.false.175

lor.lhs.false.175:                                ; preds = %lor.lhs.false.169
  %85 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load176 = load i32, i32* %86, align 8
  %bf.lshr177 = lshr i32 %bf.load176, 16
  %bf.clear178 = and i32 %bf.lshr177, 255
  %cmp179 = icmp eq i32 %bf.clear178, 4
  br i1 %cmp179, label %land.lhs.true.201, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %lor.lhs.false.175
  %87 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load182 = load i32, i32* %88, align 8
  %bf.lshr183 = lshr i32 %bf.load182, 16
  %bf.clear184 = and i32 %bf.lshr183, 255
  %cmp185 = icmp eq i32 %bf.clear184, 2
  br i1 %cmp185, label %land.lhs.true.187, label %lor.lhs.false.192

land.lhs.true.187:                                ; preds = %lor.lhs.false.181
  %89 = load i32, i32* @target_flags, align 4
  %and = and i32 %89, 33554432
  %tobool188 = icmp ne i32 %and, 0
  br i1 %tobool188, label %land.lhs.true.201, label %lor.lhs.false.189

lor.lhs.false.189:                                ; preds = %land.lhs.true.187
  %90 = load i32, i32* @x86_partial_reg_stall, align 4
  %91 = load i32, i32* @ix86_cpu, align 4
  %shl = shl i32 1, %91
  %and190 = and i32 %90, %shl
  %tobool191 = icmp ne i32 %and190, 0
  br i1 %tobool191, label %lor.lhs.false.192, label %land.lhs.true.201

lor.lhs.false.192:                                ; preds = %lor.lhs.false.189, %lor.lhs.false.181
  %92 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load193 = load i32, i32* %93, align 8
  %bf.lshr194 = lshr i32 %bf.load193, 16
  %bf.clear195 = and i32 %bf.lshr194, 255
  %cmp196 = icmp eq i32 %bf.clear195, 5
  br i1 %cmp196, label %land.lhs.true.198, label %if.end.331

land.lhs.true.198:                                ; preds = %lor.lhs.false.192
  %94 = load i32, i32* @target_flags, align 4
  %and199 = and i32 %94, 33554432
  %tobool200 = icmp ne i32 %and199, 0
  br i1 %tobool200, label %land.lhs.true.201, label %if.end.331

land.lhs.true.201:                                ; preds = %land.lhs.true.198, %lor.lhs.false.189, %land.lhs.true.187, %lor.lhs.false.175, %lor.lhs.false.169
  %95 = load i32, i32* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 3, i64 1), align 4
  %cmp202 = icmp eq i32 %95, 3
  br i1 %cmp202, label %if.then.226, label %lor.lhs.false.204

lor.lhs.false.204:                                ; preds = %land.lhs.true.201
  %96 = load i32, i32* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 3, i64 1), align 4
  %cmp205 = icmp eq i32 %96, 4
  br i1 %cmp205, label %if.then.226, label %lor.lhs.false.207

lor.lhs.false.207:                                ; preds = %lor.lhs.false.204
  %97 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load208 = load i32, i32* %98, align 8
  %bf.lshr209 = lshr i32 %bf.load208, 16
  %bf.clear210 = and i32 %bf.lshr209, 255
  %cmp211 = icmp eq i32 %bf.clear210, 2
  br i1 %cmp211, label %land.lhs.true.213, label %lor.lhs.false.220

land.lhs.true.213:                                ; preds = %lor.lhs.false.207
  %99 = load i32, i32* @target_flags, align 4
  %and214 = and i32 %99, 33554432
  %tobool215 = icmp ne i32 %and214, 0
  br i1 %tobool215, label %if.then.226, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %land.lhs.true.213
  %100 = load i32, i32* @x86_partial_reg_stall, align 4
  %101 = load i32, i32* @ix86_cpu, align 4
  %shl217 = shl i32 1, %101
  %and218 = and i32 %100, %shl217
  %tobool219 = icmp ne i32 %and218, 0
  br i1 %tobool219, label %lor.lhs.false.220, label %if.then.226

lor.lhs.false.220:                                ; preds = %lor.lhs.false.216, %lor.lhs.false.207
  %102 = load i32, i32* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 3, i64 1), align 4
  %cmp221 = icmp eq i32 %102, 5
  br i1 %cmp221, label %land.lhs.true.223, label %if.end.331

land.lhs.true.223:                                ; preds = %lor.lhs.false.220
  %103 = load i32, i32* @target_flags, align 4
  %and224 = and i32 %103, 33554432
  %tobool225 = icmp ne i32 %and224, 0
  br i1 %tobool225, label %if.then.226, label %if.end.331

if.then.226:                                      ; preds = %land.lhs.true.223, %lor.lhs.false.216, %land.lhs.true.213, %lor.lhs.false.204, %land.lhs.true.201, %land.lhs.true.163
  %104 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call227 = call %struct.rtx_def* @prev_real_insn(%struct.rtx_def* %104)
  store %struct.rtx_def* %call227, %struct.rtx_def** %previnsn, align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 3, i64 1), align 4
  %106 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %call228 = call %struct.rtx_def* @gen_lowpart(i32 %105, %struct.rtx_def* %106)
  store %struct.rtx_def* %call228, %struct.rtx_def** %dest, align 8
  %107 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %108 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 1), align 8
  %call229 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %107, %struct.rtx_def* %108)
  %109 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call230 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %call229, %struct.rtx_def* %109)
  store %struct.rtx_def* %call230, %struct.rtx_def** %newinsn, align 8
  %110 = load %struct.rtx_def*, %struct.rtx_def** %previnsn, align 8
  %cmp231 = icmp eq %struct.rtx_def* %110, null
  br i1 %cmp231, label %if.then.238, label %lor.lhs.false.233

lor.lhs.false.233:                                ; preds = %if.then.226
  %111 = load %struct.rtx_def*, %struct.rtx_def** %previnsn, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load234 = load i32, i32* %112, align 8
  %bf.clear235 = and i32 %bf.load234, 65535
  %cmp236 = icmp eq i32 %bf.clear235, 33
  br i1 %cmp236, label %if.then.238, label %if.end.252

if.then.238:                                      ; preds = %lor.lhs.false.233, %if.then.226
  store i32 0, i32* %b, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.238
  %113 = load i32, i32* %b, align 4
  %114 = load i32, i32* @n_basic_blocks, align 4
  %cmp239 = icmp slt i32 %113, %114
  br i1 %cmp239, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %115 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %116 = load i32, i32* %b, align 4
  %idxprom241 = sext i32 %116 to i64
  %117 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %117, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx242 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom241
  %118 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx242, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %118, i32 0, i32 0
  %119 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %cmp243 = icmp eq %struct.rtx_def* %115, %119
  br i1 %cmp243, label %if.then.245, label %if.end.251

if.then.245:                                      ; preds = %for.body
  %120 = load %struct.rtx_def*, %struct.rtx_def** %newinsn, align 8
  %121 = load i32, i32* %b, align 4
  %idxprom246 = sext i32 %121 to i64
  %122 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data247 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %122, i32 0, i32 4
  %bb248 = bitcast %union.varray_data_tag* %data247 to [1 x %struct.basic_block_def*]*
  %arrayidx249 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb248, i32 0, i64 %idxprom246
  %123 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx249, align 8
  %head250 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %123, i32 0, i32 0
  store %struct.rtx_def* %120, %struct.rtx_def** %head250, align 8
  br label %if.end.251

if.end.251:                                       ; preds = %if.then.245, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.251
  %124 = load i32, i32* %b, align 4
  %inc = add nsw i32 %124, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.252

if.end.252:                                       ; preds = %for.end, %lor.lhs.false.233
  %125 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %fld253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %125, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld253, i32 0, i64 0
  %rtuint255 = bitcast %union.rtunion_def* %arrayidx254 to i32*
  %126 = load i32, i32* %rtuint255, align 4
  %idxprom256 = zext i32 %126 to i64
  %127 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data257 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %127, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data257 to [1 x %struct.reg_info_def*]*
  %arrayidx258 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom256
  %128 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx258, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %128, i32 0, i32 3
  %129 = load i32, i32* %sets, align 4
  %inc259 = add nsw i32 %129, 1
  store i32 %inc259, i32* %sets, align 4
  %130 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %fld260 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx261 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld260, i32 0, i64 0
  %rtuint262 = bitcast %union.rtunion_def* %arrayidx261 to i32*
  %131 = load i32, i32* %rtuint262, align 4
  %idxprom263 = zext i32 %131 to i64
  %132 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data264 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %132, i32 0, i32 4
  %reg265 = bitcast %union.varray_data_tag* %data264 to [1 x %struct.reg_info_def*]*
  %arrayidx266 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg265, i32 0, i64 %idxprom263
  %133 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx266, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %133, i32 0, i32 4
  %134 = load i32, i32* %refs, align 4
  %inc267 = add nsw i32 %134, 1
  store i32 %inc267, i32* %refs, align 4
  %135 = load i32, i32* @frequency, align 4
  %136 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %fld268 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx269 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld268, i32 0, i64 0
  %rtuint270 = bitcast %union.rtunion_def* %arrayidx269 to i32*
  %137 = load i32, i32* %rtuint270, align 4
  %idxprom271 = zext i32 %137 to i64
  %138 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data272 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %138, i32 0, i32 4
  %reg273 = bitcast %union.varray_data_tag* %data272 to [1 x %struct.reg_info_def*]*
  %arrayidx274 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg273, i32 0, i64 %idxprom271
  %139 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx274, align 8
  %freq = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %139, i32 0, i32 5
  %140 = load i32, i32* %freq, align 4
  %add = add nsw i32 %140, %135
  store i32 %add, i32* %freq, align 4
  %141 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %142 = load %struct.rtx_def**, %struct.rtx_def*** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1, i64 1), align 8
  store %struct.rtx_def* %141, %struct.rtx_def** %142, align 8
  %143 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %fld275 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx276 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld275, i32 0, i64 0
  %rtuint277 = bitcast %union.rtunion_def* %arrayidx276 to i32*
  %144 = load i32, i32* %rtuint277, align 4
  %idxprom278 = zext i32 %144 to i64
  %145 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data279 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %145, i32 0, i32 4
  %reg280 = bitcast %union.varray_data_tag* %data279 to [1 x %struct.reg_info_def*]*
  %arrayidx281 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg280, i32 0, i64 %idxprom278
  %146 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx281, align 8
  %refs282 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %146, i32 0, i32 4
  %147 = load i32, i32* %refs282, align 4
  %inc283 = add nsw i32 %147, 1
  store i32 %inc283, i32* %refs282, align 4
  %148 = load i32, i32* @frequency, align 4
  %149 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %fld284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i32 0, i64 0
  %rtuint286 = bitcast %union.rtunion_def* %arrayidx285 to i32*
  %150 = load i32, i32* %rtuint286, align 4
  %idxprom287 = zext i32 %150 to i64
  %151 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data288 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %151, i32 0, i32 4
  %reg289 = bitcast %union.varray_data_tag* %data288 to [1 x %struct.reg_info_def*]*
  %arrayidx290 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg289, i32 0, i64 %idxprom287
  %152 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx290, align 8
  %freq291 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %152, i32 0, i32 5
  %153 = load i32, i32* %freq291, align 4
  %add292 = add nsw i32 %153, %148
  store i32 %add292, i32* %freq291, align 4
  %154 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  %conv293 = sext i8 %154 to i32
  %sub294 = sub nsw i32 %conv293, 1
  store i32 %sub294, i32* %i, align 4
  br label %for.cond.295

for.cond.295:                                     ; preds = %for.inc.326, %if.end.252
  %155 = load i32, i32* %i, align 4
  %cmp296 = icmp sge i32 %155, 0
  br i1 %cmp296, label %for.body.298, label %for.end.327

for.body.298:                                     ; preds = %for.cond.295
  %156 = load i32, i32* %i, align 4
  %idxprom299 = sext i32 %156 to i64
  %arrayidx300 = getelementptr inbounds [4 x i8], [4 x i8]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 6), i32 0, i64 %idxprom299
  %157 = load i8, i8* %arrayidx300, align 1
  %conv301 = sext i8 %157 to i32
  %cmp302 = icmp eq i32 %conv301, 1
  br i1 %cmp302, label %if.then.304, label %if.end.325

if.then.304:                                      ; preds = %for.body.298
  %158 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %159 = load i32, i32* %i, align 4
  %idxprom305 = sext i32 %159 to i64
  %arrayidx306 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom305
  %160 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx306, align 8
  store %struct.rtx_def* %158, %struct.rtx_def** %160, align 8
  %161 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %fld307 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx308 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld307, i32 0, i64 0
  %rtuint309 = bitcast %union.rtunion_def* %arrayidx308 to i32*
  %162 = load i32, i32* %rtuint309, align 4
  %idxprom310 = zext i32 %162 to i64
  %163 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data311 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %163, i32 0, i32 4
  %reg312 = bitcast %union.varray_data_tag* %data311 to [1 x %struct.reg_info_def*]*
  %arrayidx313 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg312, i32 0, i64 %idxprom310
  %164 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx313, align 8
  %refs314 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %164, i32 0, i32 4
  %165 = load i32, i32* %refs314, align 4
  %inc315 = add nsw i32 %165, 1
  store i32 %inc315, i32* %refs314, align 4
  %166 = load i32, i32* @frequency, align 4
  %167 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i64 0), align 8
  %fld316 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %arrayidx317 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld316, i32 0, i64 0
  %rtuint318 = bitcast %union.rtunion_def* %arrayidx317 to i32*
  %168 = load i32, i32* %rtuint318, align 4
  %idxprom319 = zext i32 %168 to i64
  %169 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data320 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %169, i32 0, i32 4
  %reg321 = bitcast %union.varray_data_tag* %data320 to [1 x %struct.reg_info_def*]*
  %arrayidx322 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg321, i32 0, i64 %idxprom319
  %170 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx322, align 8
  %freq323 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %170, i32 0, i32 5
  %171 = load i32, i32* %freq323, align 4
  %add324 = add nsw i32 %171, %166
  store i32 %add324, i32* %freq323, align 4
  br label %if.end.325

if.end.325:                                       ; preds = %if.then.304, %for.body.298
  br label %for.inc.326

for.inc.326:                                      ; preds = %if.end.325
  %172 = load i32, i32* %i, align 4
  %dec = add nsw i32 %172, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.295

for.end.327:                                      ; preds = %for.cond.295
  %173 = load %struct.rtx_def*, %struct.rtx_def** %newinsn, align 8
  %fld328 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx329 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld328, i32 0, i64 1
  %rtx330 = bitcast %union.rtunion_def* %arrayidx329 to %struct.rtx_def**
  %174 = load %struct.rtx_def*, %struct.rtx_def** %rtx330, align 8
  store %struct.rtx_def* %174, %struct.rtx_def** %retval
  br label %return

if.end.331:                                       ; preds = %land.lhs.true.223, %lor.lhs.false.220, %land.lhs.true.198, %lor.lhs.false.192, %land.lhs.true.158, %land.lhs.true.155, %land.lhs.true.152, %lor.lhs.false.147, %land.lhs.true.107, %land.lhs.true.102, %land.lhs.true.98, %land.lhs.true.97, %if.end.94
  %175 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %arraydecay = getelementptr inbounds [30 x %struct.costs], [30 x %struct.costs]* %op_costs, i32 0, i32 0
  %176 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8
  call void @record_operand_costs(%struct.rtx_def* %175, %struct.costs* %arraydecay, %struct.reg_pref* %176)
  store i32 0, i32* %i, align 4
  br label %for.cond.332

for.cond.332:                                     ; preds = %for.inc.380, %if.end.331
  %177 = load i32, i32* %i, align 4
  %178 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv333 = sext i8 %178 to i32
  %cmp334 = icmp slt i32 %177, %conv333
  br i1 %cmp334, label %for.body.336, label %for.end.382

for.body.336:                                     ; preds = %for.cond.332
  %179 = load i32, i32* %i, align 4
  %idxprom337 = sext i32 %179 to i64
  %arrayidx338 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom337
  %180 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx338, align 8
  %181 = bitcast %struct.rtx_def* %180 to i32*
  %bf.load339 = load i32, i32* %181, align 8
  %bf.clear340 = and i32 %bf.load339, 65535
  %cmp341 = icmp eq i32 %bf.clear340, 61
  br i1 %cmp341, label %land.lhs.true.343, label %if.end.379

land.lhs.true.343:                                ; preds = %for.body.336
  %182 = load i32, i32* %i, align 4
  %idxprom344 = sext i32 %182 to i64
  %arrayidx345 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom344
  %183 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx345, align 8
  %fld346 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %183, i32 0, i32 1
  %arrayidx347 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld346, i32 0, i64 0
  %rtuint348 = bitcast %union.rtunion_def* %arrayidx347 to i32*
  %184 = load i32, i32* %rtuint348, align 4
  %cmp349 = icmp uge i32 %184, 53
  br i1 %cmp349, label %if.then.351, label %if.end.379

if.then.351:                                      ; preds = %land.lhs.true.343
  %185 = load i32, i32* %i, align 4
  %idxprom352 = sext i32 %185 to i64
  %arrayidx353 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom352
  %186 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx353, align 8
  %fld354 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %186, i32 0, i32 1
  %arrayidx355 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld354, i32 0, i64 0
  %rtuint356 = bitcast %union.rtunion_def* %arrayidx355 to i32*
  %187 = load i32, i32* %rtuint356, align 4
  store i32 %187, i32* %regno, align 4
  %188 = load i32, i32* %regno, align 4
  %idxprom357 = sext i32 %188 to i64
  %189 = load %struct.costs*, %struct.costs** @costs, align 8
  %arrayidx358 = getelementptr inbounds %struct.costs, %struct.costs* %189, i64 %idxprom357
  store %struct.costs* %arrayidx358, %struct.costs** %p, align 8
  %190 = load i32, i32* %i, align 4
  %idxprom359 = sext i32 %190 to i64
  %arrayidx360 = getelementptr inbounds [30 x %struct.costs], [30 x %struct.costs]* %op_costs, i32 0, i64 %idxprom359
  store %struct.costs* %arrayidx360, %struct.costs** %q, align 8
  %191 = load %struct.costs*, %struct.costs** %q, align 8
  %mem_cost361 = getelementptr inbounds %struct.costs, %struct.costs* %191, i32 0, i32 1
  %192 = load i32, i32* %mem_cost361, align 4
  %193 = load i32, i32* @frequency, align 4
  %mul362 = mul nsw i32 %192, %193
  %194 = load %struct.costs*, %struct.costs** %p, align 8
  %mem_cost363 = getelementptr inbounds %struct.costs, %struct.costs* %194, i32 0, i32 1
  %195 = load i32, i32* %mem_cost363, align 4
  %add364 = add nsw i32 %195, %mul362
  store i32 %add364, i32* %mem_cost363, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.365

for.cond.365:                                     ; preds = %for.inc.376, %if.then.351
  %196 = load i32, i32* %j, align 4
  %cmp366 = icmp slt i32 %196, 25
  br i1 %cmp366, label %for.body.368, label %for.end.378

for.body.368:                                     ; preds = %for.cond.365
  %197 = load i32, i32* %j, align 4
  %idxprom369 = sext i32 %197 to i64
  %198 = load %struct.costs*, %struct.costs** %q, align 8
  %cost = getelementptr inbounds %struct.costs, %struct.costs* %198, i32 0, i32 0
  %arrayidx370 = getelementptr inbounds [25 x i32], [25 x i32]* %cost, i32 0, i64 %idxprom369
  %199 = load i32, i32* %arrayidx370, align 4
  %200 = load i32, i32* @frequency, align 4
  %mul371 = mul nsw i32 %199, %200
  %201 = load i32, i32* %j, align 4
  %idxprom372 = sext i32 %201 to i64
  %202 = load %struct.costs*, %struct.costs** %p, align 8
  %cost373 = getelementptr inbounds %struct.costs, %struct.costs* %202, i32 0, i32 0
  %arrayidx374 = getelementptr inbounds [25 x i32], [25 x i32]* %cost373, i32 0, i64 %idxprom372
  %203 = load i32, i32* %arrayidx374, align 4
  %add375 = add nsw i32 %203, %mul371
  store i32 %add375, i32* %arrayidx374, align 4
  br label %for.inc.376

for.inc.376:                                      ; preds = %for.body.368
  %204 = load i32, i32* %j, align 4
  %inc377 = add nsw i32 %204, 1
  store i32 %inc377, i32* %j, align 4
  br label %for.cond.365

for.end.378:                                      ; preds = %for.cond.365
  br label %if.end.379

if.end.379:                                       ; preds = %for.end.378, %land.lhs.true.343, %for.body.336
  br label %for.inc.380

for.inc.380:                                      ; preds = %if.end.379
  %205 = load i32, i32* %i, align 4
  %inc381 = add nsw i32 %205, 1
  store i32 %inc381, i32* %i, align 4
  br label %for.cond.332

for.end.382:                                      ; preds = %for.cond.332
  %206 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %206, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.382, %for.end.327, %if.then.73, %if.then.18, %if.then
  %207 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %207
}

; Function Attrs: nounwind uwtable
define internal void @dump_regclass(%struct._IO_FILE* %dump) #0 {
entry:
  %dump.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  %class = alloca i32, align 4
  store %struct._IO_FILE* %dump, %struct._IO_FILE** %dump.addr, align 8
  store i32 53, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.23, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* @max_regno, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.25

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom
  %4 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %4, i32 0, i32 4
  %5 = load i32, i32* %refs, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %7 = load i32, i32* %i, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.41, i32 0, i32 0), i32 %7)
  store i32 0, i32* %class, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %if.then
  %8 = load i32, i32* %class, align 4
  %cmp2 = icmp slt i32 %8, 25
  br i1 %cmp2, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.1
  %9 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %9 to i64
  %10 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %10, i32 0, i32 3
  %11 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %11, i32 0, i32 12
  %12 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx5 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %12, i64 %idxprom4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom6 = zext i32 %bf.clear to i64
  %15 = load i32, i32* %class, align 4
  %idxprom7 = zext i32 %15 to i64
  %arrayidx8 = getelementptr inbounds [25 x [59 x i8]], [25 x [59 x i8]]* @contains_reg_of_mode, i32 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [59 x i8], [59 x i8]* %arrayidx8, i32 0, i64 %idxprom6
  %16 = load i8, i8* %arrayidx9, align 1
  %tobool10 = icmp ne i8 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %for.body.3
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %18 = load i32, i32* %class, align 4
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds [25 x i8*], [25 x i8*]* @dump_regclass.reg_class_names, i32 0, i64 %idxprom12
  %19 = load i8*, i8** %arrayidx13, align 8
  %20 = load i32, i32* %class, align 4
  %idxprom14 = zext i32 %20 to i64
  %21 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %21 to i64
  %22 = load %struct.costs*, %struct.costs** @costs, align 8
  %arrayidx16 = getelementptr inbounds %struct.costs, %struct.costs* %22, i64 %idxprom15
  %cost = getelementptr inbounds %struct.costs, %struct.costs* %arrayidx16, i32 0, i32 0
  %arrayidx17 = getelementptr inbounds [25 x i32], [25 x i32]* %cost, i32 0, i64 %idxprom14
  %23 = load i32, i32* %arrayidx17, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.42, i32 0, i32 0), i8* %19, i32 %23)
  br label %if.end

if.end:                                           ; preds = %if.then.11, %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %class, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %class, align 4
  br label %for.cond.1

for.end:                                          ; preds = %for.cond.1
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %dump.addr, align 8
  %26 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %26 to i64
  %27 = load %struct.costs*, %struct.costs** @costs, align 8
  %arrayidx20 = getelementptr inbounds %struct.costs, %struct.costs* %27, i64 %idxprom19
  %mem_cost = getelementptr inbounds %struct.costs, %struct.costs* %arrayidx20, i32 0, i32 1
  %28 = load i32, i32* %mem_cost, align 4
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0), i32 %28)
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %for.body
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %29 = load i32, i32* %i, align 4
  %inc24 = add nsw i32 %29, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end.25:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @allocate_reg_info(i64 %num_regs, i32 %new_p, i32 %renumber_p) #0 {
entry:
  %num_regs.addr = alloca i64, align 8
  %new_p.addr = alloca i32, align 4
  %renumber_p.addr = alloca i32, align 4
  %size_info = alloca i64, align 8
  %size_renumber = alloca i64, align 8
  %min = alloca i64, align 8
  %reg_data = alloca %struct.reg_info_data*, align 8
  %old_allocated = alloca i64, align 8
  %min_index32 = alloca i64, align 8
  %max_index34 = alloca i64, align 8
  %max = alloca i64, align 8
  %local_min = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %num_regs, i64* %num_regs.addr, align 8
  store i32 %new_p, i32* %new_p.addr, align 4
  store i32 %renumber_p, i32* %renumber_p.addr, align 4
  %0 = load i32, i32* %new_p.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %1 = load i32, i32* @reg_n_max, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %1, %cond.false ]
  %conv = zext i32 %cond to i64
  store i64 %conv, i64* %min, align 8
  %2 = load i64, i64* %num_regs.addr, align 8
  %3 = load i64, i64* @regno_allocated, align 8
  %cmp = icmp ugt i64 %2, %3
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %cond.end
  %4 = load i64, i64* @regno_allocated, align 8
  store i64 %4, i64* %old_allocated, align 8
  %5 = load i64, i64* %num_regs.addr, align 8
  %6 = load i64, i64* %num_regs.addr, align 8
  %div = udiv i64 %6, 20
  %add = add i64 %5, %div
  store i64 %add, i64* @regno_allocated, align 8
  %7 = load i64, i64* @regno_allocated, align 8
  %mul = mul i64 %7, 2
  store i64 %mul, i64* %size_renumber, align 8
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %tobool2 = icmp ne %struct.varray_head_tag* %8, null
  br i1 %tobool2, label %if.else, label %if.then.3

if.then.3:                                        ; preds = %if.then
  %9 = load i64, i64* @regno_allocated, align 8
  %call = call %struct.varray_head_tag* @varray_init(i64 %9, i64 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0))
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** @reg_n_info, align 8
  %10 = load i64, i64* %size_renumber, align 8
  %call4 = call noalias i8* @xmalloc(i64 %10)
  %11 = bitcast i8* %call4 to i16*
  store i16* %11, i16** @renumber, align 8
  %12 = load i64, i64* @regno_allocated, align 8
  %mul5 = mul i64 %12, 2
  %call6 = call noalias i8* @xmalloc(i64 %mul5)
  %13 = bitcast i8* %call6 to %struct.reg_pref*
  store %struct.reg_pref* %13, %struct.reg_pref** @reg_pref_buffer, align 8
  br label %if.end.17

if.else:                                          ; preds = %if.then
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %15 = load i64, i64* @regno_allocated, align 8
  %call7 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %14, i64 %15)
  store %struct.varray_head_tag* %call7, %struct.varray_head_tag** @reg_n_info, align 8
  %16 = load i32, i32* %new_p.addr, align 4
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.then.9, label %if.else.13

if.then.9:                                        ; preds = %if.else
  %17 = load i16*, i16** @renumber, align 8
  %18 = bitcast i16* %17 to i8*
  call void @free(i8* %18) #1
  %19 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8
  %20 = bitcast %struct.reg_pref* %19 to i8*
  call void @free(i8* %20) #1
  %21 = load i64, i64* %size_renumber, align 8
  %call10 = call noalias i8* @xmalloc(i64 %21)
  %22 = bitcast i8* %call10 to i16*
  store i16* %22, i16** @renumber, align 8
  %23 = load i64, i64* @regno_allocated, align 8
  %mul11 = mul i64 %23, 2
  %call12 = call noalias i8* @xmalloc(i64 %mul11)
  %24 = bitcast i8* %call12 to %struct.reg_pref*
  store %struct.reg_pref* %24, %struct.reg_pref** @reg_pref_buffer, align 8
  br label %if.end

if.else.13:                                       ; preds = %if.else
  %25 = load i16*, i16** @renumber, align 8
  %26 = bitcast i16* %25 to i8*
  %27 = load i64, i64* %size_renumber, align 8
  %call14 = call i8* @xrealloc(i8* %26, i64 %27)
  %28 = bitcast i8* %call14 to i16*
  store i16* %28, i16** @renumber, align 8
  %29 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref_buffer, align 8
  %30 = bitcast %struct.reg_pref* %29 to i8*
  %31 = load i64, i64* @regno_allocated, align 8
  %mul15 = mul i64 %31, 2
  %call16 = call i8* @xrealloc(i8* %30, i64 %mul15)
  %32 = bitcast i8* %call16 to %struct.reg_pref*
  store %struct.reg_pref* %32, %struct.reg_pref** @reg_pref_buffer, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.13, %if.then.9
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then.3
  %33 = load i64, i64* @regno_allocated, align 8
  %34 = load i64, i64* %old_allocated, align 8
  %sub = sub i64 %33, %34
  %mul18 = mul i64 %sub, 44
  %add19 = add i64 %mul18, 72
  %sub20 = sub i64 %add19, 44
  store i64 %sub20, i64* %size_info, align 8
  %35 = load i64, i64* %size_info, align 8
  %call21 = call noalias i8* @xcalloc(i64 %35, i64 1)
  %36 = bitcast i8* %call21 to %struct.reg_info_data*
  store %struct.reg_info_data* %36, %struct.reg_info_data** %reg_data, align 8
  %37 = load i64, i64* %old_allocated, align 8
  %38 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %min_index = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %38, i32 0, i32 1
  store i64 %37, i64* %min_index, align 8
  %39 = load i64, i64* @regno_allocated, align 8
  %sub22 = sub i64 %39, 1
  %40 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %max_index = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %40, i32 0, i32 2
  store i64 %sub22, i64* %max_index, align 8
  %41 = load %struct.reg_info_data*, %struct.reg_info_data** @reg_info_head, align 8
  %42 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %next = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %42, i32 0, i32 0
  store %struct.reg_info_data* %41, %struct.reg_info_data** %next, align 8
  %43 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  store %struct.reg_info_data* %43, %struct.reg_info_data** @reg_info_head, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.17, %cond.end
  %44 = load i64, i64* %num_regs.addr, align 8
  %conv24 = trunc i64 %44 to i32
  store i32 %conv24, i32* @reg_n_max, align 4
  %45 = load i64, i64* %min, align 8
  %46 = load i64, i64* %num_regs.addr, align 8
  %cmp25 = icmp ult i64 %45, %46
  br i1 %cmp25, label %if.then.27, label %if.end.80

if.then.27:                                       ; preds = %if.end.23
  %47 = load %struct.reg_info_data*, %struct.reg_info_data** @reg_info_head, align 8
  store %struct.reg_info_data* %47, %struct.reg_info_data** %reg_data, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.77, %if.then.27
  %48 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %tobool28 = icmp ne %struct.reg_info_data* %48, null
  br i1 %tobool28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %49 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %max_index29 = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %49, i32 0, i32 2
  %50 = load i64, i64* %max_index29, align 8
  %51 = load i64, i64* %min, align 8
  %cmp30 = icmp uge i64 %50, %51
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %52 = phi i1 [ false, %for.cond ], [ %cmp30, %land.rhs ]
  br i1 %52, label %for.body, label %for.end.79

for.body:                                         ; preds = %land.end
  %53 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %min_index33 = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %53, i32 0, i32 1
  %54 = load i64, i64* %min_index33, align 8
  store i64 %54, i64* %min_index32, align 8
  %55 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %max_index35 = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %55, i32 0, i32 2
  %56 = load i64, i64* %max_index35, align 8
  store i64 %56, i64* %max_index34, align 8
  %57 = load i64, i64* %max_index34, align 8
  %58 = load i64, i64* %num_regs.addr, align 8
  %cmp36 = icmp ult i64 %57, %58
  br i1 %cmp36, label %cond.true.38, label %cond.false.39

cond.true.38:                                     ; preds = %for.body
  %59 = load i64, i64* %max_index34, align 8
  br label %cond.end.40

cond.false.39:                                    ; preds = %for.body
  %60 = load i64, i64* %num_regs.addr, align 8
  br label %cond.end.40

cond.end.40:                                      ; preds = %cond.false.39, %cond.true.38
  %cond41 = phi i64 [ %59, %cond.true.38 ], [ %60, %cond.false.39 ]
  store i64 %cond41, i64* %max, align 8
  %61 = load i64, i64* %min, align 8
  %62 = load i64, i64* %min_index32, align 8
  %sub42 = sub i64 %61, %62
  store i64 %sub42, i64* %local_min, align 8
  %63 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %min_index43 = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %63, i32 0, i32 1
  %64 = load i64, i64* %min_index43, align 8
  %65 = load i64, i64* %num_regs.addr, align 8
  %cmp44 = icmp ugt i64 %64, %65
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %cond.end.40
  br label %for.inc.77

if.end.47:                                        ; preds = %cond.end.40
  %66 = load i64, i64* %min, align 8
  %67 = load i64, i64* %min_index32, align 8
  %cmp48 = icmp ult i64 %66, %67
  br i1 %cmp48, label %if.then.50, label %if.end.51

if.then.50:                                       ; preds = %if.end.47
  store i64 0, i64* %local_min, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.50, %if.end.47
  %68 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %used_p = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %68, i32 0, i32 3
  %69 = load i8, i8* %used_p, align 1
  %tobool52 = icmp ne i8 %69, 0
  br i1 %tobool52, label %if.else.55, label %if.then.53

if.then.53:                                       ; preds = %if.end.51
  %70 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %used_p54 = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %70, i32 0, i32 3
  store i8 1, i8* %used_p54, align 1
  br label %if.end.60

if.else.55:                                       ; preds = %if.end.51
  %71 = load i64, i64* %local_min, align 8
  %72 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %data = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %72, i32 0, i32 4
  %arrayidx = getelementptr inbounds [1 x %struct.reg_info_def], [1 x %struct.reg_info_def]* %data, i32 0, i64 %71
  %73 = bitcast %struct.reg_info_def* %arrayidx to i8*
  %74 = load i64, i64* %max, align 8
  %75 = load i64, i64* %min_index32, align 8
  %sub56 = sub i64 %74, %75
  %76 = load i64, i64* %local_min, align 8
  %sub57 = sub i64 %sub56, %76
  %add58 = add i64 %sub57, 1
  %mul59 = mul i64 44, %add58
  call void @llvm.memset.p0i8.i64(i8* %73, i8 0, i64 %mul59, i32 1, i1 false)
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.55, %if.then.53
  %77 = load i64, i64* %min_index32, align 8
  %78 = load i64, i64* %local_min, align 8
  %add61 = add i64 %77, %78
  store i64 %add61, i64* %i, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc, %if.end.60
  %79 = load i64, i64* %i, align 8
  %80 = load i64, i64* %max, align 8
  %cmp63 = icmp ule i64 %79, %80
  br i1 %cmp63, label %for.body.65, label %for.end

for.body.65:                                      ; preds = %for.cond.62
  %81 = load i64, i64* %i, align 8
  %82 = load i64, i64* %min_index32, align 8
  %sub66 = sub i64 %81, %82
  %83 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %data67 = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %83, i32 0, i32 4
  %arrayidx68 = getelementptr inbounds [1 x %struct.reg_info_def], [1 x %struct.reg_info_def]* %data67, i32 0, i64 %sub66
  %84 = load i64, i64* %i, align 8
  %85 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data69 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %85, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data69 to [1 x %struct.reg_info_def*]*
  %arrayidx70 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %84
  store %struct.reg_info_def* %arrayidx68, %struct.reg_info_def** %arrayidx70, align 8
  %86 = load i64, i64* %i, align 8
  %87 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data71 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %87, i32 0, i32 4
  %reg72 = bitcast %union.varray_data_tag* %data71 to [1 x %struct.reg_info_def*]*
  %arrayidx73 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg72, i32 0, i64 %86
  %88 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx73, align 8
  %basic_block = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %88, i32 0, i32 9
  store i32 -1, i32* %basic_block, align 4
  %89 = load i64, i64* %i, align 8
  %90 = load i16*, i16** @renumber, align 8
  %arrayidx74 = getelementptr inbounds i16, i16* %90, i64 %89
  store i16 -1, i16* %arrayidx74, align 2
  %91 = load i64, i64* %i, align 8
  %92 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref_buffer, align 8
  %arrayidx75 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %92, i64 %91
  %prefclass = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %arrayidx75, i32 0, i32 0
  store i8 0, i8* %prefclass, align 1
  %93 = load i64, i64* %i, align 8
  %94 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref_buffer, align 8
  %arrayidx76 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %94, i64 %93
  %altclass = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %arrayidx76, i32 0, i32 1
  store i8 0, i8* %altclass, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body.65
  %95 = load i64, i64* %i, align 8
  %inc = add i64 %95, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.62

for.end:                                          ; preds = %for.cond.62
  br label %for.inc.77

for.inc.77:                                       ; preds = %for.end, %if.then.46
  %96 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %next78 = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %96, i32 0, i32 0
  %97 = load %struct.reg_info_data*, %struct.reg_info_data** %next78, align 8
  store %struct.reg_info_data* %97, %struct.reg_info_data** %reg_data, align 8
  br label %for.cond

for.end.79:                                       ; preds = %land.end
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.79, %if.end.23
  %98 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref, align 8
  %tobool81 = icmp ne %struct.reg_pref* %98, null
  br i1 %tobool81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.end.80
  %99 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref_buffer, align 8
  store %struct.reg_pref* %99, %struct.reg_pref** @reg_pref, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.82, %if.end.80
  %100 = load i32, i32* %renumber_p.addr, align 4
  %tobool84 = icmp ne i32 %100, 0
  br i1 %tobool84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.end.83
  %101 = load i16*, i16** @renumber, align 8
  store i16* %101, i16** @reg_renumber, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.then.85, %if.end.83
  ret void
}

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #2

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #2

declare i8* @xrealloc(i8*, i64) #2

declare noalias i8* @xcalloc(i64, i64) #2

; Function Attrs: nounwind uwtable
define void @free_reg_info() #0 {
entry:
  %reg_data = alloca %struct.reg_info_data*, align 8
  %reg_next = alloca %struct.reg_info_data*, align 8
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %tobool = icmp ne %struct.varray_head_tag* %0, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %tobool1 = icmp ne %struct.varray_head_tag* %1, null
  br i1 %tobool1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %do.body
  %2 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %3 = bitcast %struct.varray_head_tag* %2 to i8*
  call void @free(i8* %3) #1
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @reg_n_info, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.2, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %4 = load %struct.reg_info_data*, %struct.reg_info_data** @reg_info_head, align 8
  store %struct.reg_info_data* %4, %struct.reg_info_data** %reg_data, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %5 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %tobool3 = icmp ne %struct.reg_info_data* %5, null
  br i1 %tobool3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %next = getelementptr inbounds %struct.reg_info_data, %struct.reg_info_data* %6, i32 0, i32 0
  %7 = load %struct.reg_info_data*, %struct.reg_info_data** %next, align 8
  store %struct.reg_info_data* %7, %struct.reg_info_data** %reg_next, align 8
  %8 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_data, align 8
  %9 = bitcast %struct.reg_info_data* %8 to i8*
  call void @free(i8* %9) #1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load %struct.reg_info_data*, %struct.reg_info_data** %reg_next, align 8
  store %struct.reg_info_data* %10, %struct.reg_info_data** %reg_data, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.reg_pref*, %struct.reg_pref** @reg_pref_buffer, align 8
  %12 = bitcast %struct.reg_pref* %11 to i8*
  call void @free(i8* %12) #1
  store %struct.reg_pref* null, %struct.reg_pref** @reg_pref_buffer, align 8
  store %struct.reg_info_data* null, %struct.reg_info_data** @reg_info_head, align 8
  store i16* null, i16** @renumber, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %for.end, %entry
  store i64 0, i64* @regno_allocated, align 8
  store i32 0, i32* @reg_n_max, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @reg_scan(%struct.rtx_def* %f, i32 %nregs, i32 %repeat) #0 {
entry:
  %f.addr = alloca %struct.rtx_def*, align 8
  %nregs.addr = alloca i32, align 4
  %repeat.addr = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %f, %struct.rtx_def** %f.addr, align 8
  store i32 %nregs, i32* %nregs.addr, align 4
  store i32 %repeat, i32* %repeat.addr, align 4
  %0 = load i32, i32* %nregs.addr, align 4
  %conv = zext i32 %0 to i64
  call void @allocate_reg_info(i64 %conv, i32 1, i32 0)
  store i32 3, i32* @max_parallel, align 4
  store i32 0, i32* @max_set_parallel, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %f.addr, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 32
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 34
  br i1 %cmp4, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load7 = load i32, i32* %8, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 33
  br i1 %cmp9, label %if.then, label %if.end.42

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load11 = load i32, i32* %11, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 39
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtvec_def**
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i32 0, i32 0
  %15 = load i32, i32* %num_elem, align 4
  %16 = load i32, i32* @max_parallel, align 4
  %cmp20 = icmp sgt i32 %15, %16
  br i1 %cmp20, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 3
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtvec28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtvec_def**
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec28, align 8
  %num_elem29 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %19, i32 0, i32 0
  %20 = load i32, i32* %num_elem29, align 4
  store i32 %20, i32* @max_parallel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.22, %land.lhs.true, %if.then
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 3
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @reg_scan_mark_refs(%struct.rtx_def* %22, %struct.rtx_def* %23, i32 0, i32 0)
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 6
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %tobool36 = icmp ne %struct.rtx_def* %25, null
  br i1 %tobool36, label %if.then.37, label %if.end.41

if.then.37:                                       ; preds = %if.end
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 6
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @reg_scan_mark_refs(%struct.rtx_def* %27, %struct.rtx_def* %28, i32 1, i32 0)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.37, %if.end
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %lor.lhs.false.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 2
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* @max_set_parallel, align 4
  %32 = load i32, i32* @max_parallel, align 4
  %add = add nsw i32 %32, %31
  store i32 %add, i32* @max_parallel, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reg_scan_mark_refs(%struct.rtx_def* %x, %struct.rtx_def* %insn, i32 %note_flag, i32 %min_regno) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %note_flag.addr = alloca i32, align 4
  %min_regno.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %dest = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  %src = alloca %struct.rtx_def*, align 8
  %fmt = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %note_flag, i32* %note_flag.addr, align 4
  store i32 %min_regno, i32* %min_regno.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 58, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 69, label %sw.bb
    i32 59, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 44, label %sw.bb
    i32 45, label %sw.bb
    i32 61, label %sw.bb.1
    i32 3, label %sw.bb.29
    i32 4, label %sw.bb.47
    i32 47, label %sw.bb.57
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtuint, align 4
  store i32 %4, i32* %regno, align 4
  %5 = load i32, i32* %regno, align 4
  %6 = load i32, i32* %min_regno.addr, align 4
  %cmp = icmp uge i32 %5, %6
  br i1 %cmp, label %if.then, label %if.end.28

if.then:                                          ; preds = %sw.bb.1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %8 = load i32, i32* %rtint, align 4
  %9 = load i32, i32* %regno, align 4
  %idxprom = zext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx4 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom
  %11 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx4, align 8
  %last_note_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %11, i32 0, i32 2
  store i32 %8, i32* %last_note_uid, align 4
  %12 = load i32, i32* %note_flag.addr, align 4
  %tobool = icmp ne i32 %12, 0
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %14 = load i32, i32* %rtint8, align 4
  %15 = load i32, i32* %regno, align 4
  %idxprom9 = zext i32 %15 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data10 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %reg11 = bitcast %union.varray_data_tag* %data10 to [1 x %struct.reg_info_def*]*
  %arrayidx12 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg11, i32 0, i64 %idxprom9
  %17 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx12, align 8
  %last_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %17, i32 0, i32 1
  store i32 %14, i32* %last_uid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %18 = load i32, i32* %regno, align 4
  %idxprom13 = zext i32 %18 to i64
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data14 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %reg15 = bitcast %union.varray_data_tag* %data14 to [1 x %struct.reg_info_def*]*
  %arrayidx16 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg15, i32 0, i64 %idxprom13
  %20 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx16, align 8
  %first_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %20, i32 0, i32 0
  %21 = load i32, i32* %first_uid, align 4
  %cmp17 = icmp eq i32 %21, 0
  br i1 %cmp17, label %if.then.18, label %if.end.27

if.then.18:                                       ; preds = %if.end
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtint21 = bitcast %union.rtunion_def* %arrayidx20 to i32*
  %23 = load i32, i32* %rtint21, align 4
  %24 = load i32, i32* %regno, align 4
  %idxprom22 = zext i32 %24 to i64
  %25 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data23 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %25, i32 0, i32 4
  %reg24 = bitcast %union.varray_data_tag* %data23 to [1 x %struct.reg_info_def*]*
  %arrayidx25 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg24, i32 0, i64 %idxprom22
  %26 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx25, align 8
  %first_uid26 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %26, i32 0, i32 0
  store i32 %23, i32* %first_uid26, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.18, %if.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %sw.bb.1
  br label %sw.epilog

sw.bb.29:                                         ; preds = %entry
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %tobool32 = icmp ne %struct.rtx_def* %28, null
  br i1 %tobool32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %sw.bb.29
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %32 = load i32, i32* %note_flag.addr, align 4
  %33 = load i32, i32* %min_regno.addr, align 4
  call void @reg_scan_mark_refs(%struct.rtx_def* %30, %struct.rtx_def* %31, i32 %32, i32 %33)
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %sw.bb.29
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 1
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %tobool41 = icmp ne %struct.rtx_def* %35, null
  br i1 %tobool41, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.end.37
  %36 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %39 = load i32, i32* %note_flag.addr, align 4
  %40 = load i32, i32* %min_regno.addr, align 4
  call void @reg_scan_mark_refs(%struct.rtx_def* %37, %struct.rtx_def* %38, i32 %39, i32 %40)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.end.37
  br label %sw.epilog

sw.bb.47:                                         ; preds = %entry
  %41 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 1
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %tobool51 = icmp ne %struct.rtx_def* %42, null
  br i1 %tobool51, label %if.then.52, label %if.end.56

if.then.52:                                       ; preds = %sw.bb.47
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %46 = load i32, i32* %note_flag.addr, align 4
  %47 = load i32, i32* %min_regno.addr, align 4
  call void @reg_scan_mark_refs(%struct.rtx_def* %44, %struct.rtx_def* %45, i32 %46, i32 %47)
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.52, %sw.bb.47
  br label %sw.epilog

sw.bb.57:                                         ; preds = %entry
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %dest, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.57
  %50 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load61 = load i32, i32* %51, align 8
  %bf.clear62 = and i32 %bf.load61, 65535
  %cmp63 = icmp eq i32 %bf.clear62, 63
  br i1 %cmp63, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.cond
  %52 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load64 = load i32, i32* %53, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp eq i32 %bf.clear65, 64
  br i1 %cmp66, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %54 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load67 = load i32, i32* %55, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 121
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %for.cond
  %56 = phi i1 [ true, %lor.lhs.false ], [ true, %for.cond ], [ %cmp69, %lor.rhs ]
  br i1 %56, label %for.body, label %for.end

for.body:                                         ; preds = %lor.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %57 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx72, align 8
  store %struct.rtx_def* %58, %struct.rtx_def** %dest, align 8
  br label %for.cond

for.end:                                          ; preds = %lor.end
  %59 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load73 = load i32, i32* %60, align 8
  %bf.clear74 = and i32 %bf.load73, 65535
  %cmp75 = icmp eq i32 %bf.clear74, 39
  br i1 %cmp75, label %if.then.76, label %if.end.85

if.then.76:                                       ; preds = %for.end
  %61 = load i32, i32* @max_set_parallel, align 4
  %62 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtvec_def**
  %63 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %63, i32 0, i32 0
  %64 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %64, 1
  %cmp79 = icmp sgt i32 %61, %sub
  br i1 %cmp79, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.76
  %65 = load i32, i32* @max_set_parallel, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.76
  %66 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtvec82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtvec_def**
  %67 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec82, align 8
  %num_elem83 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %67, i32 0, i32 0
  %68 = load i32, i32* %num_elem83, align 4
  %sub84 = sub nsw i32 %68, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %65, %cond.true ], [ %sub84, %cond.false ]
  store i32 %cond, i32* @max_set_parallel, align 4
  br label %if.end.85

if.end.85:                                        ; preds = %cond.end, %for.end
  %69 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load86 = load i32, i32* %70, align 8
  %bf.clear87 = and i32 %bf.load86, 65535
  %cmp88 = icmp eq i32 %bf.clear87, 61
  br i1 %cmp88, label %land.lhs.true, label %if.end.109

land.lhs.true:                                    ; preds = %if.end.85
  %71 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 0
  %rtuint91 = bitcast %union.rtunion_def* %arrayidx90 to i32*
  %72 = load i32, i32* %rtuint91, align 4
  %73 = load i32, i32* %min_regno.addr, align 4
  %cmp92 = icmp uge i32 %72, %73
  br i1 %cmp92, label %if.then.93, label %if.end.109

if.then.93:                                       ; preds = %land.lhs.true
  %74 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 0
  %rtuint96 = bitcast %union.rtunion_def* %arrayidx95 to i32*
  %75 = load i32, i32* %rtuint96, align 4
  %idxprom97 = zext i32 %75 to i64
  %76 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data98 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %76, i32 0, i32 4
  %reg99 = bitcast %union.varray_data_tag* %data98 to [1 x %struct.reg_info_def*]*
  %arrayidx100 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg99, i32 0, i64 %idxprom97
  %77 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx100, align 8
  %sets = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %77, i32 0, i32 3
  %78 = load i32, i32* %sets, align 4
  %inc = add nsw i32 %78, 1
  store i32 %inc, i32* %sets, align 4
  %79 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtuint103 = bitcast %union.rtunion_def* %arrayidx102 to i32*
  %80 = load i32, i32* %rtuint103, align 4
  %idxprom104 = zext i32 %80 to i64
  %81 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data105 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %81, i32 0, i32 4
  %reg106 = bitcast %union.varray_data_tag* %data105 to [1 x %struct.reg_info_def*]*
  %arrayidx107 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg106, i32 0, i64 %idxprom104
  %82 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx107, align 8
  %refs = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %82, i32 0, i32 4
  %83 = load i32, i32* %refs, align 4
  %inc108 = add nsw i32 %83, 1
  store i32 %inc108, i32* %refs, align 4
  br label %if.end.109

if.end.109:                                       ; preds = %if.then.93, %land.lhs.true, %if.end.85
  %84 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx112, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load113 = load i32, i32* %86, align 8
  %bf.clear114 = and i32 %bf.load113, 65535
  %cmp115 = icmp eq i32 %bf.clear114, 61
  br i1 %cmp115, label %land.lhs.true.116, label %if.end.348

land.lhs.true.116:                                ; preds = %if.end.109
  %87 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 0
  %rtx119 = bitcast %union.rtunion_def* %arrayidx118 to %struct.rtx_def**
  %88 = load %struct.rtx_def*, %struct.rtx_def** %rtx119, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 0
  %rtuint122 = bitcast %union.rtunion_def* %arrayidx121 to i32*
  %89 = load i32, i32* %rtuint122, align 4
  %cmp123 = icmp uge i32 %89, 53
  br i1 %cmp123, label %land.lhs.true.124, label %if.end.348

land.lhs.true.124:                                ; preds = %land.lhs.true.116
  %90 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 0
  %rtx127 = bitcast %union.rtunion_def* %arrayidx126 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx127, align 8
  %fld128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld128, i32 0, i64 0
  %rtuint130 = bitcast %union.rtunion_def* %arrayidx129 to i32*
  %92 = load i32, i32* %rtuint130, align 4
  %93 = load i32, i32* %min_regno.addr, align 4
  %cmp131 = icmp uge i32 %92, %93
  br i1 %cmp131, label %land.lhs.true.132, label %if.end.348

land.lhs.true.132:                                ; preds = %land.lhs.true.124
  %94 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtx135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtx_def**
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rtx135, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 0
  %rtuint138 = bitcast %union.rtunion_def* %arrayidx137 to i32*
  %96 = load i32, i32* %rtuint138, align 4
  %idxprom139 = zext i32 %96 to i64
  %97 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data140 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %97, i32 0, i32 4
  %reg141 = bitcast %union.varray_data_tag* %data140 to [1 x %struct.reg_info_def*]*
  %arrayidx142 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg141, i32 0, i64 %idxprom139
  %98 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx142, align 8
  %sets143 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %98, i32 0, i32 3
  %99 = load i32, i32* %sets143, align 4
  %cmp144 = icmp eq i32 %99, 1
  br i1 %cmp144, label %land.lhs.true.145, label %if.end.348

land.lhs.true.145:                                ; preds = %land.lhs.true.132
  %100 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 0
  %rtx148 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx148, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load149 = load i32, i32* %102, align 8
  %bf.lshr = lshr i32 %bf.load149, 27
  %bf.clear150 = and i32 %bf.lshr, 1
  %tobool151 = icmp ne i32 %bf.clear150, 0
  br i1 %tobool151, label %if.end.348, label %land.lhs.true.152

land.lhs.true.152:                                ; preds = %land.lhs.true.145
  %103 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld153 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx154 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld153, i32 0, i64 0
  %rtx155 = bitcast %union.rtunion_def* %arrayidx154 to %struct.rtx_def**
  %104 = load %struct.rtx_def*, %struct.rtx_def** %rtx155, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load156 = load i32, i32* %105, align 8
  %bf.lshr157 = lshr i32 %bf.load156, 31
  %tobool158 = icmp ne i32 %bf.lshr157, 0
  br i1 %tobool158, label %if.end.348, label %land.lhs.true.159

land.lhs.true.159:                                ; preds = %land.lhs.true.152
  %106 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 1
  %rtx162 = bitcast %union.rtunion_def* %arrayidx161 to %struct.rtx_def**
  %107 = load %struct.rtx_def*, %struct.rtx_def** %rtx162, align 8
  %108 = bitcast %struct.rtx_def* %107 to i32*
  %bf.load163 = load i32, i32* %108, align 8
  %bf.clear164 = and i32 %bf.load163, 65535
  %cmp165 = icmp eq i32 %bf.clear164, 61
  br i1 %cmp165, label %land.lhs.true.166, label %lor.lhs.false.173

land.lhs.true.166:                                ; preds = %land.lhs.true.159
  %109 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 1
  %rtx169 = bitcast %union.rtunion_def* %arrayidx168 to %struct.rtx_def**
  %110 = load %struct.rtx_def*, %struct.rtx_def** %rtx169, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load170 = load i32, i32* %111, align 8
  %bf.lshr171 = lshr i32 %bf.load170, 31
  %tobool172 = icmp ne i32 %bf.lshr171, 0
  br i1 %tobool172, label %if.then.342, label %lor.lhs.false.173

lor.lhs.false.173:                                ; preds = %land.lhs.true.166, %land.lhs.true.159
  %112 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 1
  %rtx176 = bitcast %union.rtunion_def* %arrayidx175 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx176, align 8
  %114 = bitcast %struct.rtx_def* %113 to i32*
  %bf.load177 = load i32, i32* %114, align 8
  %bf.clear178 = and i32 %bf.load177, 65535
  %cmp179 = icmp eq i32 %bf.clear178, 75
  br i1 %cmp179, label %land.lhs.true.187, label %lor.lhs.false.180

lor.lhs.false.180:                                ; preds = %lor.lhs.false.173
  %115 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld181 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx182 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld181, i32 0, i64 1
  %rtx183 = bitcast %union.rtunion_def* %arrayidx182 to %struct.rtx_def**
  %116 = load %struct.rtx_def*, %struct.rtx_def** %rtx183, align 8
  %117 = bitcast %struct.rtx_def* %116 to i32*
  %bf.load184 = load i32, i32* %117, align 8
  %bf.clear185 = and i32 %bf.load184, 65535
  %cmp186 = icmp eq i32 %bf.clear185, 135
  br i1 %cmp186, label %land.lhs.true.187, label %lor.lhs.false.217

land.lhs.true.187:                                ; preds = %lor.lhs.false.180, %lor.lhs.false.173
  %118 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld188, i32 0, i64 1
  %rtx190 = bitcast %union.rtunion_def* %arrayidx189 to %struct.rtx_def**
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtx190, align 8
  %fld191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld191, i32 0, i64 1
  %rtx193 = bitcast %union.rtunion_def* %arrayidx192 to %struct.rtx_def**
  %120 = load %struct.rtx_def*, %struct.rtx_def** %rtx193, align 8
  %121 = bitcast %struct.rtx_def* %120 to i32*
  %bf.load194 = load i32, i32* %121, align 8
  %bf.clear195 = and i32 %bf.load194, 65535
  %cmp196 = icmp eq i32 %bf.clear195, 54
  br i1 %cmp196, label %land.lhs.true.197, label %lor.lhs.false.217

land.lhs.true.197:                                ; preds = %land.lhs.true.187
  %122 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 1
  %rtx200 = bitcast %union.rtunion_def* %arrayidx199 to %struct.rtx_def**
  %123 = load %struct.rtx_def*, %struct.rtx_def** %rtx200, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %123, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 0
  %rtx203 = bitcast %union.rtunion_def* %arrayidx202 to %struct.rtx_def**
  %124 = load %struct.rtx_def*, %struct.rtx_def** %rtx203, align 8
  %125 = bitcast %struct.rtx_def* %124 to i32*
  %bf.load204 = load i32, i32* %125, align 8
  %bf.clear205 = and i32 %bf.load204, 65535
  %cmp206 = icmp eq i32 %bf.clear205, 61
  br i1 %cmp206, label %land.lhs.true.207, label %lor.lhs.false.217

land.lhs.true.207:                                ; preds = %land.lhs.true.197
  %126 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 1
  %rtx210 = bitcast %union.rtunion_def* %arrayidx209 to %struct.rtx_def**
  %127 = load %struct.rtx_def*, %struct.rtx_def** %rtx210, align 8
  %fld211 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx212 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld211, i32 0, i64 0
  %rtx213 = bitcast %union.rtunion_def* %arrayidx212 to %struct.rtx_def**
  %128 = load %struct.rtx_def*, %struct.rtx_def** %rtx213, align 8
  %129 = bitcast %struct.rtx_def* %128 to i32*
  %bf.load214 = load i32, i32* %129, align 8
  %bf.lshr215 = lshr i32 %bf.load214, 31
  %tobool216 = icmp ne i32 %bf.lshr215, 0
  br i1 %tobool216, label %if.then.342, label %lor.lhs.false.217

lor.lhs.false.217:                                ; preds = %land.lhs.true.207, %land.lhs.true.197, %land.lhs.true.187, %lor.lhs.false.180
  %130 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 1
  %rtx220 = bitcast %union.rtunion_def* %arrayidx219 to %struct.rtx_def**
  %131 = load %struct.rtx_def*, %struct.rtx_def** %rtx220, align 8
  %132 = bitcast %struct.rtx_def* %131 to i32*
  %bf.load221 = load i32, i32* %132, align 8
  %bf.clear222 = and i32 %bf.load221, 65535
  %cmp223 = icmp eq i32 %bf.clear222, 58
  br i1 %cmp223, label %if.then.342, label %lor.lhs.false.224

lor.lhs.false.224:                                ; preds = %lor.lhs.false.217
  %133 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld225 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx226 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld225, i32 0, i64 1
  %rtx227 = bitcast %union.rtunion_def* %arrayidx226 to %struct.rtx_def**
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rtx227, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load228 = load i32, i32* %135, align 8
  %bf.clear229 = and i32 %bf.load228, 65535
  %cmp230 = icmp eq i32 %bf.clear229, 68
  br i1 %cmp230, label %if.then.342, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %lor.lhs.false.224
  %136 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 1
  %rtx234 = bitcast %union.rtunion_def* %arrayidx233 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtx234, align 8
  %138 = bitcast %struct.rtx_def* %137 to i32*
  %bf.load235 = load i32, i32* %138, align 8
  %bf.clear236 = and i32 %bf.load235, 65535
  %cmp237 = icmp eq i32 %bf.clear236, 67
  br i1 %cmp237, label %if.then.342, label %lor.lhs.false.238

lor.lhs.false.238:                                ; preds = %lor.lhs.false.231
  %139 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld239 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %139, i32 0, i32 1
  %arrayidx240 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld239, i32 0, i64 1
  %rtx241 = bitcast %union.rtunion_def* %arrayidx240 to %struct.rtx_def**
  %140 = load %struct.rtx_def*, %struct.rtx_def** %rtx241, align 8
  %141 = bitcast %struct.rtx_def* %140 to i32*
  %bf.load242 = load i32, i32* %141, align 8
  %bf.clear243 = and i32 %bf.load242, 65535
  %cmp244 = icmp eq i32 %bf.clear243, 134
  br i1 %cmp244, label %land.lhs.true.245, label %lor.lhs.false.275

land.lhs.true.245:                                ; preds = %lor.lhs.false.238
  %142 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld246 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx247 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld246, i32 0, i64 1
  %rtx248 = bitcast %union.rtunion_def* %arrayidx247 to %struct.rtx_def**
  %143 = load %struct.rtx_def*, %struct.rtx_def** %rtx248, align 8
  %fld249 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %143, i32 0, i32 1
  %arrayidx250 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld249, i32 0, i64 0
  %rtx251 = bitcast %union.rtunion_def* %arrayidx250 to %struct.rtx_def**
  %144 = load %struct.rtx_def*, %struct.rtx_def** %rtx251, align 8
  %145 = bitcast %struct.rtx_def* %144 to i32*
  %bf.load252 = load i32, i32* %145, align 8
  %bf.clear253 = and i32 %bf.load252, 65535
  %cmp254 = icmp eq i32 %bf.clear253, 58
  br i1 %cmp254, label %if.then.342, label %lor.lhs.false.255

lor.lhs.false.255:                                ; preds = %land.lhs.true.245
  %146 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld256 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %arrayidx257 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld256, i32 0, i64 1
  %rtx258 = bitcast %union.rtunion_def* %arrayidx257 to %struct.rtx_def**
  %147 = load %struct.rtx_def*, %struct.rtx_def** %rtx258, align 8
  %fld259 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %147, i32 0, i32 1
  %arrayidx260 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld259, i32 0, i64 0
  %rtx261 = bitcast %union.rtunion_def* %arrayidx260 to %struct.rtx_def**
  %148 = load %struct.rtx_def*, %struct.rtx_def** %rtx261, align 8
  %149 = bitcast %struct.rtx_def* %148 to i32*
  %bf.load262 = load i32, i32* %149, align 8
  %bf.clear263 = and i32 %bf.load262, 65535
  %cmp264 = icmp eq i32 %bf.clear263, 68
  br i1 %cmp264, label %if.then.342, label %lor.lhs.false.265

lor.lhs.false.265:                                ; preds = %lor.lhs.false.255
  %150 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld266 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %arrayidx267 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld266, i32 0, i64 1
  %rtx268 = bitcast %union.rtunion_def* %arrayidx267 to %struct.rtx_def**
  %151 = load %struct.rtx_def*, %struct.rtx_def** %rtx268, align 8
  %fld269 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %151, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld269, i32 0, i64 0
  %rtx271 = bitcast %union.rtunion_def* %arrayidx270 to %struct.rtx_def**
  %152 = load %struct.rtx_def*, %struct.rtx_def** %rtx271, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %bf.load272 = load i32, i32* %153, align 8
  %bf.clear273 = and i32 %bf.load272, 65535
  %cmp274 = icmp eq i32 %bf.clear273, 67
  br i1 %cmp274, label %if.then.342, label %lor.lhs.false.275

lor.lhs.false.275:                                ; preds = %lor.lhs.false.265, %lor.lhs.false.238
  %154 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld276 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %arrayidx277 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld276, i32 0, i64 1
  %rtx278 = bitcast %union.rtunion_def* %arrayidx277 to %struct.rtx_def**
  %155 = load %struct.rtx_def*, %struct.rtx_def** %rtx278, align 8
  %156 = bitcast %struct.rtx_def* %155 to i32*
  %bf.load279 = load i32, i32* %156, align 8
  %bf.clear280 = and i32 %bf.load279, 65535
  %cmp281 = icmp eq i32 %bf.clear280, 75
  br i1 %cmp281, label %land.lhs.true.289, label %lor.lhs.false.282

lor.lhs.false.282:                                ; preds = %lor.lhs.false.275
  %157 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld283, i32 0, i64 1
  %rtx285 = bitcast %union.rtunion_def* %arrayidx284 to %struct.rtx_def**
  %158 = load %struct.rtx_def*, %struct.rtx_def** %rtx285, align 8
  %159 = bitcast %struct.rtx_def* %158 to i32*
  %bf.load286 = load i32, i32* %159, align 8
  %bf.clear287 = and i32 %bf.load286, 65535
  %cmp288 = icmp eq i32 %bf.clear287, 135
  br i1 %cmp288, label %land.lhs.true.289, label %lor.lhs.false.319

land.lhs.true.289:                                ; preds = %lor.lhs.false.282, %lor.lhs.false.275
  %160 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld290 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %arrayidx291 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld290, i32 0, i64 1
  %rtx292 = bitcast %union.rtunion_def* %arrayidx291 to %struct.rtx_def**
  %161 = load %struct.rtx_def*, %struct.rtx_def** %rtx292, align 8
  %fld293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld293, i32 0, i64 1
  %rtx295 = bitcast %union.rtunion_def* %arrayidx294 to %struct.rtx_def**
  %162 = load %struct.rtx_def*, %struct.rtx_def** %rtx295, align 8
  %163 = bitcast %struct.rtx_def* %162 to i32*
  %bf.load296 = load i32, i32* %163, align 8
  %bf.clear297 = and i32 %bf.load296, 65535
  %cmp298 = icmp eq i32 %bf.clear297, 58
  br i1 %cmp298, label %if.then.342, label %lor.lhs.false.299

lor.lhs.false.299:                                ; preds = %land.lhs.true.289
  %164 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %164, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld300, i32 0, i64 1
  %rtx302 = bitcast %union.rtunion_def* %arrayidx301 to %struct.rtx_def**
  %165 = load %struct.rtx_def*, %struct.rtx_def** %rtx302, align 8
  %fld303 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %165, i32 0, i32 1
  %arrayidx304 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld303, i32 0, i64 1
  %rtx305 = bitcast %union.rtunion_def* %arrayidx304 to %struct.rtx_def**
  %166 = load %struct.rtx_def*, %struct.rtx_def** %rtx305, align 8
  %167 = bitcast %struct.rtx_def* %166 to i32*
  %bf.load306 = load i32, i32* %167, align 8
  %bf.clear307 = and i32 %bf.load306, 65535
  %cmp308 = icmp eq i32 %bf.clear307, 68
  br i1 %cmp308, label %if.then.342, label %lor.lhs.false.309

lor.lhs.false.309:                                ; preds = %lor.lhs.false.299
  %168 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld310 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %168, i32 0, i32 1
  %arrayidx311 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld310, i32 0, i64 1
  %rtx312 = bitcast %union.rtunion_def* %arrayidx311 to %struct.rtx_def**
  %169 = load %struct.rtx_def*, %struct.rtx_def** %rtx312, align 8
  %fld313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx314 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld313, i32 0, i64 1
  %rtx315 = bitcast %union.rtunion_def* %arrayidx314 to %struct.rtx_def**
  %170 = load %struct.rtx_def*, %struct.rtx_def** %rtx315, align 8
  %171 = bitcast %struct.rtx_def* %170 to i32*
  %bf.load316 = load i32, i32* %171, align 8
  %bf.clear317 = and i32 %bf.load316, 65535
  %cmp318 = icmp eq i32 %bf.clear317, 67
  br i1 %cmp318, label %if.then.342, label %lor.lhs.false.319

lor.lhs.false.319:                                ; preds = %lor.lhs.false.309, %lor.lhs.false.282
  %172 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %172, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %cmp320 = icmp ne %struct.rtx_def* %call, null
  br i1 %cmp320, label %land.lhs.true.321, label %if.end.348

land.lhs.true.321:                                ; preds = %lor.lhs.false.319
  %173 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld322 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx323 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld322, i32 0, i64 0
  %rtx324 = bitcast %union.rtunion_def* %arrayidx323 to %struct.rtx_def**
  %174 = load %struct.rtx_def*, %struct.rtx_def** %rtx324, align 8
  %175 = bitcast %struct.rtx_def* %174 to i32*
  %bf.load325 = load i32, i32* %175, align 8
  %bf.clear326 = and i32 %bf.load325, 65535
  %cmp327 = icmp eq i32 %bf.clear326, 58
  br i1 %cmp327, label %if.then.342, label %lor.lhs.false.328

lor.lhs.false.328:                                ; preds = %land.lhs.true.321
  %176 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld329 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %176, i32 0, i32 1
  %arrayidx330 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld329, i32 0, i64 0
  %rtx331 = bitcast %union.rtunion_def* %arrayidx330 to %struct.rtx_def**
  %177 = load %struct.rtx_def*, %struct.rtx_def** %rtx331, align 8
  %178 = bitcast %struct.rtx_def* %177 to i32*
  %bf.load332 = load i32, i32* %178, align 8
  %bf.clear333 = and i32 %bf.load332, 65535
  %cmp334 = icmp eq i32 %bf.clear333, 68
  br i1 %cmp334, label %if.then.342, label %lor.lhs.false.335

lor.lhs.false.335:                                ; preds = %lor.lhs.false.328
  %179 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld336 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %179, i32 0, i32 1
  %arrayidx337 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld336, i32 0, i64 0
  %rtx338 = bitcast %union.rtunion_def* %arrayidx337 to %struct.rtx_def**
  %180 = load %struct.rtx_def*, %struct.rtx_def** %rtx338, align 8
  %181 = bitcast %struct.rtx_def* %180 to i32*
  %bf.load339 = load i32, i32* %181, align 8
  %bf.clear340 = and i32 %bf.load339, 65535
  %cmp341 = icmp eq i32 %bf.clear340, 67
  br i1 %cmp341, label %if.then.342, label %if.end.348

if.then.342:                                      ; preds = %lor.lhs.false.335, %lor.lhs.false.328, %land.lhs.true.321, %lor.lhs.false.309, %lor.lhs.false.299, %land.lhs.true.289, %lor.lhs.false.265, %lor.lhs.false.255, %land.lhs.true.245, %lor.lhs.false.231, %lor.lhs.false.224, %lor.lhs.false.217, %land.lhs.true.207, %land.lhs.true.166
  %182 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld343 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx344 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld343, i32 0, i64 0
  %rtx345 = bitcast %union.rtunion_def* %arrayidx344 to %struct.rtx_def**
  %183 = load %struct.rtx_def*, %struct.rtx_def** %rtx345, align 8
  %184 = bitcast %struct.rtx_def* %183 to i32*
  %bf.load346 = load i32, i32* %184, align 8
  %bf.clear347 = and i32 %bf.load346, 2147483647
  %bf.set = or i32 %bf.clear347, -2147483648
  store i32 %bf.set, i32* %184, align 8
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.342, %lor.lhs.false.335, %lor.lhs.false.319, %land.lhs.true.152, %land.lhs.true.145, %land.lhs.true.132, %land.lhs.true.124, %land.lhs.true.116, %if.end.109
  %185 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %186 = bitcast %struct.rtx_def* %185 to i32*
  %bf.load349 = load i32, i32* %186, align 8
  %bf.clear350 = and i32 %bf.load349, 65535
  %cmp351 = icmp eq i32 %bf.clear350, 61
  br i1 %cmp351, label %if.then.352, label %if.end.431

if.then.352:                                      ; preds = %if.end.348
  %187 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld353 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %187, i32 0, i32 1
  %arrayidx354 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld353, i32 0, i64 1
  %rtx355 = bitcast %union.rtunion_def* %arrayidx354 to %struct.rtx_def**
  %188 = load %struct.rtx_def*, %struct.rtx_def** %rtx355, align 8
  store %struct.rtx_def* %188, %struct.rtx_def** %src, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.352
  %189 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %190 = bitcast %struct.rtx_def* %189 to i32*
  %bf.load356 = load i32, i32* %190, align 8
  %bf.clear357 = and i32 %bf.load356, 65535
  %cmp358 = icmp eq i32 %bf.clear357, 120
  br i1 %cmp358, label %lor.end.373, label %lor.lhs.false.359

lor.lhs.false.359:                                ; preds = %while.cond
  %191 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %192 = bitcast %struct.rtx_def* %191 to i32*
  %bf.load360 = load i32, i32* %192, align 8
  %bf.clear361 = and i32 %bf.load360, 65535
  %cmp362 = icmp eq i32 %bf.clear361, 121
  br i1 %cmp362, label %lor.end.373, label %lor.lhs.false.363

lor.lhs.false.363:                                ; preds = %lor.lhs.false.359
  %193 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %194 = bitcast %struct.rtx_def* %193 to i32*
  %bf.load364 = load i32, i32* %194, align 8
  %bf.clear365 = and i32 %bf.load364, 65535
  %cmp366 = icmp eq i32 %bf.clear365, 122
  br i1 %cmp366, label %lor.end.373, label %lor.rhs.367

lor.rhs.367:                                      ; preds = %lor.lhs.false.363
  %195 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %196 = bitcast %struct.rtx_def* %195 to i32*
  %bf.load368 = load i32, i32* %196, align 8
  %bf.clear369 = and i32 %bf.load368, 65535
  %cmp370 = icmp eq i32 %bf.clear369, 63
  br i1 %cmp370, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.rhs.367
  %197 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %call371 = call i32 @subreg_lowpart_p(%struct.rtx_def* %197)
  %tobool372 = icmp ne i32 %call371, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs.367
  %198 = phi i1 [ false, %lor.rhs.367 ], [ %tobool372, %land.rhs ]
  br label %lor.end.373

lor.end.373:                                      ; preds = %land.end, %lor.lhs.false.363, %lor.lhs.false.359, %while.cond
  %199 = phi i1 [ true, %lor.lhs.false.363 ], [ true, %lor.lhs.false.359 ], [ true, %while.cond ], [ %198, %land.end ]
  br i1 %199, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end.373
  %200 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld374 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %200, i32 0, i32 1
  %arrayidx375 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld374, i32 0, i64 0
  %rtx376 = bitcast %union.rtunion_def* %arrayidx375 to %struct.rtx_def**
  %201 = load %struct.rtx_def*, %struct.rtx_def** %rtx376, align 8
  store %struct.rtx_def* %201, %struct.rtx_def** %src, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end.373
  %202 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %203 = bitcast %struct.rtx_def* %202 to i32*
  %bf.load377 = load i32, i32* %203, align 8
  %bf.clear378 = and i32 %bf.load377, 65535
  %cmp379 = icmp eq i32 %bf.clear378, 61
  br i1 %cmp379, label %land.lhs.true.380, label %if.else

land.lhs.true.380:                                ; preds = %while.end
  %204 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld381 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %204, i32 0, i32 1
  %arrayidx382 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld381, i32 0, i64 0
  %rtuint383 = bitcast %union.rtunion_def* %arrayidx382 to i32*
  %205 = load i32, i32* %rtuint383, align 4
  %idxprom384 = zext i32 %205 to i64
  %206 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %206, i32 0, i32 3
  %207 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %regno_decl = getelementptr inbounds %struct.emit_status, %struct.emit_status* %207, i32 0, i32 11
  %208 = load %union.tree_node**, %union.tree_node*** %regno_decl, align 8
  %arrayidx385 = getelementptr inbounds %union.tree_node*, %union.tree_node** %208, i64 %idxprom384
  %209 = load %union.tree_node*, %union.tree_node** %arrayidx385, align 8
  %cmp386 = icmp eq %union.tree_node* %209, null
  br i1 %cmp386, label %if.then.387, label %if.else

if.then.387:                                      ; preds = %land.lhs.true.380
  %210 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld388 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %arrayidx389 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld388, i32 0, i64 0
  %rtuint390 = bitcast %union.rtunion_def* %arrayidx389 to i32*
  %211 = load i32, i32* %rtuint390, align 4
  %idxprom391 = zext i32 %211 to i64
  %212 = load %struct.function*, %struct.function** @cfun, align 8
  %emit392 = getelementptr inbounds %struct.function, %struct.function* %212, i32 0, i32 3
  %213 = load %struct.emit_status*, %struct.emit_status** %emit392, align 8
  %regno_decl393 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %213, i32 0, i32 11
  %214 = load %union.tree_node**, %union.tree_node*** %regno_decl393, align 8
  %arrayidx394 = getelementptr inbounds %union.tree_node*, %union.tree_node** %214, i64 %idxprom391
  %215 = load %union.tree_node*, %union.tree_node** %arrayidx394, align 8
  %216 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld395 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %216, i32 0, i32 1
  %arrayidx396 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld395, i32 0, i64 0
  %rtuint397 = bitcast %union.rtunion_def* %arrayidx396 to i32*
  %217 = load i32, i32* %rtuint397, align 4
  %idxprom398 = zext i32 %217 to i64
  %218 = load %struct.function*, %struct.function** @cfun, align 8
  %emit399 = getelementptr inbounds %struct.function, %struct.function* %218, i32 0, i32 3
  %219 = load %struct.emit_status*, %struct.emit_status** %emit399, align 8
  %regno_decl400 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %219, i32 0, i32 11
  %220 = load %union.tree_node**, %union.tree_node*** %regno_decl400, align 8
  %arrayidx401 = getelementptr inbounds %union.tree_node*, %union.tree_node** %220, i64 %idxprom398
  store %union.tree_node* %215, %union.tree_node** %arrayidx401, align 8
  br label %if.end.430

if.else:                                          ; preds = %land.lhs.true.380, %while.end
  %221 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %222 = bitcast %struct.rtx_def* %221 to i32*
  %bf.load402 = load i32, i32* %222, align 8
  %bf.clear403 = and i32 %bf.load402, 65535
  %cmp404 = icmp eq i32 %bf.clear403, 61
  br i1 %cmp404, label %land.lhs.true.405, label %if.end.429

land.lhs.true.405:                                ; preds = %if.else
  %223 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld406 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %223, i32 0, i32 1
  %arrayidx407 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld406, i32 0, i64 0
  %rtuint408 = bitcast %union.rtunion_def* %arrayidx407 to i32*
  %224 = load i32, i32* %rtuint408, align 4
  %idxprom409 = zext i32 %224 to i64
  %225 = load %struct.function*, %struct.function** @cfun, align 8
  %emit410 = getelementptr inbounds %struct.function, %struct.function* %225, i32 0, i32 3
  %226 = load %struct.emit_status*, %struct.emit_status** %emit410, align 8
  %regno_decl411 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %226, i32 0, i32 11
  %227 = load %union.tree_node**, %union.tree_node*** %regno_decl411, align 8
  %arrayidx412 = getelementptr inbounds %union.tree_node*, %union.tree_node** %227, i64 %idxprom409
  %228 = load %union.tree_node*, %union.tree_node** %arrayidx412, align 8
  %cmp413 = icmp eq %union.tree_node* %228, null
  br i1 %cmp413, label %if.then.414, label %if.end.429

if.then.414:                                      ; preds = %land.lhs.true.405
  %229 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld415 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %229, i32 0, i32 1
  %arrayidx416 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld415, i32 0, i64 0
  %rtuint417 = bitcast %union.rtunion_def* %arrayidx416 to i32*
  %230 = load i32, i32* %rtuint417, align 4
  %idxprom418 = zext i32 %230 to i64
  %231 = load %struct.function*, %struct.function** @cfun, align 8
  %emit419 = getelementptr inbounds %struct.function, %struct.function* %231, i32 0, i32 3
  %232 = load %struct.emit_status*, %struct.emit_status** %emit419, align 8
  %regno_decl420 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %232, i32 0, i32 11
  %233 = load %union.tree_node**, %union.tree_node*** %regno_decl420, align 8
  %arrayidx421 = getelementptr inbounds %union.tree_node*, %union.tree_node** %233, i64 %idxprom418
  %234 = load %union.tree_node*, %union.tree_node** %arrayidx421, align 8
  %235 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld422 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %235, i32 0, i32 1
  %arrayidx423 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld422, i32 0, i64 0
  %rtuint424 = bitcast %union.rtunion_def* %arrayidx423 to i32*
  %236 = load i32, i32* %rtuint424, align 4
  %idxprom425 = zext i32 %236 to i64
  %237 = load %struct.function*, %struct.function** @cfun, align 8
  %emit426 = getelementptr inbounds %struct.function, %struct.function* %237, i32 0, i32 3
  %238 = load %struct.emit_status*, %struct.emit_status** %emit426, align 8
  %regno_decl427 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %238, i32 0, i32 11
  %239 = load %union.tree_node**, %union.tree_node*** %regno_decl427, align 8
  %arrayidx428 = getelementptr inbounds %union.tree_node*, %union.tree_node** %239, i64 %idxprom425
  store %union.tree_node* %234, %union.tree_node** %arrayidx428, align 8
  br label %if.end.429

if.end.429:                                       ; preds = %if.then.414, %land.lhs.true.405, %if.else
  br label %if.end.430

if.end.430:                                       ; preds = %if.end.429, %if.then.387
  br label %if.end.431

if.end.431:                                       ; preds = %if.end.430, %if.end.348
  br label %sw.default

sw.default:                                       ; preds = %entry, %if.end.431
  %240 = load i32, i32* %code, align 4
  %idxprom432 = sext i32 %240 to i64
  %arrayidx433 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom432
  %241 = load i8*, i8** %arrayidx433, align 8
  store i8* %241, i8** %fmt, align 8
  %242 = load i32, i32* %code, align 4
  %idxprom434 = sext i32 %242 to i64
  %arrayidx435 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom434
  %243 = load i8, i8* %arrayidx435, align 1
  %conv = zext i8 %243 to i32
  %sub436 = sub nsw i32 %conv, 1
  store i32 %sub436, i32* %i, align 4
  br label %for.cond.437

for.cond.437:                                     ; preds = %for.inc.485, %sw.default
  %244 = load i32, i32* %i, align 4
  %cmp438 = icmp sge i32 %244, 0
  br i1 %cmp438, label %for.body.440, label %for.end.487

for.body.440:                                     ; preds = %for.cond.437
  %245 = load i32, i32* %i, align 4
  %idxprom441 = sext i32 %245 to i64
  %246 = load i8*, i8** %fmt, align 8
  %arrayidx442 = getelementptr inbounds i8, i8* %246, i64 %idxprom441
  %247 = load i8, i8* %arrayidx442, align 1
  %conv443 = sext i8 %247 to i32
  %cmp444 = icmp eq i32 %conv443, 101
  br i1 %cmp444, label %if.then.446, label %if.else.451

if.then.446:                                      ; preds = %for.body.440
  %248 = load i32, i32* %i, align 4
  %idxprom447 = sext i32 %248 to i64
  %249 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld448 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %249, i32 0, i32 1
  %arrayidx449 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld448, i32 0, i64 %idxprom447
  %rtx450 = bitcast %union.rtunion_def* %arrayidx449 to %struct.rtx_def**
  %250 = load %struct.rtx_def*, %struct.rtx_def** %rtx450, align 8
  %251 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %252 = load i32, i32* %note_flag.addr, align 4
  %253 = load i32, i32* %min_regno.addr, align 4
  call void @reg_scan_mark_refs(%struct.rtx_def* %250, %struct.rtx_def* %251, i32 %252, i32 %253)
  br label %if.end.484

if.else.451:                                      ; preds = %for.body.440
  %254 = load i32, i32* %i, align 4
  %idxprom452 = sext i32 %254 to i64
  %255 = load i8*, i8** %fmt, align 8
  %arrayidx453 = getelementptr inbounds i8, i8* %255, i64 %idxprom452
  %256 = load i8, i8* %arrayidx453, align 1
  %conv454 = sext i8 %256 to i32
  %cmp455 = icmp eq i32 %conv454, 69
  br i1 %cmp455, label %land.lhs.true.457, label %if.end.483

land.lhs.true.457:                                ; preds = %if.else.451
  %257 = load i32, i32* %i, align 4
  %idxprom458 = sext i32 %257 to i64
  %258 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld459 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %258, i32 0, i32 1
  %arrayidx460 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld459, i32 0, i64 %idxprom458
  %rtvec461 = bitcast %union.rtunion_def* %arrayidx460 to %struct.rtvec_def**
  %259 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec461, align 8
  %cmp462 = icmp ne %struct.rtvec_def* %259, null
  br i1 %cmp462, label %if.then.464, label %if.end.483

if.then.464:                                      ; preds = %land.lhs.true.457
  %260 = load i32, i32* %i, align 4
  %idxprom465 = sext i32 %260 to i64
  %261 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld466 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %261, i32 0, i32 1
  %arrayidx467 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld466, i32 0, i64 %idxprom465
  %rtvec468 = bitcast %union.rtunion_def* %arrayidx467 to %struct.rtvec_def**
  %262 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec468, align 8
  %num_elem469 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %262, i32 0, i32 0
  %263 = load i32, i32* %num_elem469, align 4
  %sub470 = sub nsw i32 %263, 1
  store i32 %sub470, i32* %j, align 4
  br label %for.cond.471

for.cond.471:                                     ; preds = %for.inc.481, %if.then.464
  %264 = load i32, i32* %j, align 4
  %cmp472 = icmp sge i32 %264, 0
  br i1 %cmp472, label %for.body.474, label %for.end.482

for.body.474:                                     ; preds = %for.cond.471
  %265 = load i32, i32* %j, align 4
  %idxprom475 = sext i32 %265 to i64
  %266 = load i32, i32* %i, align 4
  %idxprom476 = sext i32 %266 to i64
  %267 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld477 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %267, i32 0, i32 1
  %arrayidx478 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld477, i32 0, i64 %idxprom476
  %rtvec479 = bitcast %union.rtunion_def* %arrayidx478 to %struct.rtvec_def**
  %268 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec479, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %268, i32 0, i32 1
  %arrayidx480 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom475
  %269 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx480, align 8
  %270 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %271 = load i32, i32* %note_flag.addr, align 4
  %272 = load i32, i32* %min_regno.addr, align 4
  call void @reg_scan_mark_refs(%struct.rtx_def* %269, %struct.rtx_def* %270, i32 %271, i32 %272)
  br label %for.inc.481

for.inc.481:                                      ; preds = %for.body.474
  %273 = load i32, i32* %j, align 4
  %dec = add nsw i32 %273, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.471

for.end.482:                                      ; preds = %for.cond.471
  br label %if.end.483

if.end.483:                                       ; preds = %for.end.482, %land.lhs.true.457, %if.else.451
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %if.then.446
  br label %for.inc.485

for.inc.485:                                      ; preds = %if.end.484
  %274 = load i32, i32* %i, align 4
  %dec486 = add nsw i32 %274, -1
  store i32 %dec486, i32* %i, align 4
  br label %for.cond.437

for.end.487:                                      ; preds = %for.cond.437
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.end.487, %if.end.56, %if.end.46, %if.end.28
  ret void
}

; Function Attrs: nounwind uwtable
define void @reg_scan_update(%struct.rtx_def* %first, %struct.rtx_def* %last, i32 %old_max_regno) #0 {
entry:
  %first.addr = alloca %struct.rtx_def*, align 8
  %last.addr = alloca %struct.rtx_def*, align 8
  %old_max_regno.addr = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %first, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %last, %struct.rtx_def** %last.addr, align 8
  store i32 %old_max_regno, i32* %old_max_regno.addr, align 4
  %call = call i32 @max_reg_num()
  %conv = sext i32 %call to i64
  call void @allocate_reg_info(i64 %conv, i32 0, i32 0)
  %0 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %cmp = icmp ne %struct.rtx_def* %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp eq i32 %bf.clear, 32
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 34
  br i1 %cmp6, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load9 = load i32, i32* %8, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 33
  br i1 %cmp11, label %if.then, label %if.end.43

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false, %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load13 = load i32, i32* %11, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 39
  br i1 %cmp15, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtvec_def**
  %14 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %14, i32 0, i32 0
  %15 = load i32, i32* %num_elem, align 4
  %16 = load i32, i32* @max_parallel, align 4
  %cmp22 = icmp sgt i32 %15, %16
  br i1 %cmp22, label %if.then.24, label %if.end

if.then.24:                                       ; preds = %land.lhs.true
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 3
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtvec30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtvec_def**
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec30, align 8
  %num_elem31 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %19, i32 0, i32 0
  %20 = load i32, i32* %num_elem31, align 4
  store i32 %20, i32* @max_parallel, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.24, %land.lhs.true, %if.then
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 3
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = load i32, i32* %old_max_regno.addr, align 4
  call void @reg_scan_mark_refs(%struct.rtx_def* %22, %struct.rtx_def* %23, i32 0, i32 %24)
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 6
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %tobool = icmp ne %struct.rtx_def* %26, null
  br i1 %tobool, label %if.then.38, label %if.end.42

if.then.38:                                       ; preds = %if.end
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 6
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %30 = load i32, i32* %old_max_regno.addr, align 4
  call void @reg_scan_mark_refs(%struct.rtx_def* %28, %struct.rtx_def* %29, i32 1, i32 %30)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.38, %if.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %lor.lhs.false.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 2
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare i32 @max_reg_num() #2

; Function Attrs: nounwind uwtable
define i32 @reg_class_subset_p(i32 %c1, i32 %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  store i32 %c1, i32* %c1.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  %0 = load i32, i32* %c1.addr, align 4
  %1 = load i32, i32* %c2.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %c2.addr, align 4
  %cmp1 = icmp eq i32 %2, 24
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %win

win:                                              ; preds = %if.then.7, %if.then.2
  store i32 1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load i32, i32* %c1.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom
  %4 = load i64, i64* %arrayidx, align 8
  %5 = load i32, i32* %c2.addr, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom4
  %6 = load i64, i64* %arrayidx5, align 8
  %neg = xor i64 %6, -1
  %and = and i64 %4, %neg
  %cmp6 = icmp eq i64 0, %and
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.3
  br label %win

if.end.8:                                         ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %win, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @reg_classes_intersect_p(i32 %c1, i32 %c2) #0 {
entry:
  %retval = alloca i32, align 4
  %c1.addr = alloca i32, align 4
  %c2.addr = alloca i32, align 4
  %c = alloca i64, align 8
  store i32 %c1, i32* %c1.addr, align 4
  store i32 %c2, i32* %c2.addr, align 4
  %0 = load i32, i32* %c1.addr, align 4
  %1 = load i32, i32* %c2.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %c1.addr, align 4
  %cmp1 = icmp eq i32 %2, 24
  br i1 %cmp1, label %if.then.3, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %3 = load i32, i32* %c2.addr, align 4
  %cmp2 = icmp eq i32 %3, 24
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %lor.lhs.false, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.4:                                         ; preds = %lor.lhs.false
  %4 = load i32, i32* %c1.addr, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom
  %5 = load i64, i64* %arrayidx, align 8
  store i64 %5, i64* %c, align 8
  %6 = load i32, i32* %c2.addr, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom5
  %7 = load i64, i64* %arrayidx6, align 8
  %8 = load i64, i64* %c, align 8
  %and = and i64 %8, %7
  store i64 %and, i64* %c, align 8
  %9 = load i64, i64* %c, align 8
  %10 = load i64, i64* getelementptr inbounds ([25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 0), align 8
  %neg = xor i64 %10, -1
  %and7 = and i64 %9, %neg
  %cmp8 = icmp eq i64 0, %and7
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.4
  br label %lose

if.end.10:                                        ; preds = %if.end.4
  store i32 1, i32* %retval
  br label %return

lose:                                             ; preds = %if.then.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %lose, %if.end.10, %if.then.3, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define void @regset_release_memory() #0 {
entry:
  call void @bitmap_release_memory()
  ret void
}

declare void @bitmap_release_memory() #2

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #2

declare void @extract_insn(%struct.rtx_def*) #2

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #2

declare i32 @ix86_memory_move_cost(i32, i32, i32) #2

; Function Attrs: nounwind uwtable
define internal void @record_address_regs(%struct.rtx_def* %x, i32 %class, i32 %scale) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %class.addr = alloca i32, align 4
  %scale.addr = alloca i32, align 4
  %code = alloca i32, align 4
  %arg0 = alloca %struct.rtx_def*, align 8
  %arg1 = alloca %struct.rtx_def*, align 8
  %code0 = alloca i32, align 4
  %code1 = alloca i32, align 4
  %pp = alloca %struct.costs*, align 8
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %i287 = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %class, i32* %class.addr, align 4
  store i32 %scale, i32* %scale.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 54, label %sw.bb
    i32 58, label %sw.bb
    i32 69, label %sw.bb
    i32 59, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 75, label %sw.bb.1
    i32 101, label %sw.bb.234
    i32 100, label %sw.bb.234
    i32 99, label %sw.bb.256
    i32 97, label %sw.bb.256
    i32 98, label %sw.bb.256
    i32 96, label %sw.bb.256
    i32 61, label %sw.bb.261
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry
  br label %sw.epilog

sw.bb.1:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %arg0, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 1
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %arg1, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load5 = load i32, i32* %8, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  store i32 %bf.clear6, i32* %code0, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load7 = load i32, i32* %10, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  store i32 %bf.clear8, i32* %code1, align 4
  %11 = load i32, i32* %code0, align 4
  %cmp = icmp eq i32 %11, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.1
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %arg0, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load12 = load i32, i32* %15, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  store i32 %bf.clear13, i32* %code0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.1
  %16 = load i32, i32* %code1, align 4
  %cmp14 = icmp eq i32 %16, 63
  br i1 %cmp14, label %if.then.15, label %if.end.21

if.then.15:                                       ; preds = %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %arg1, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load19 = load i32, i32* %20, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  store i32 %bf.clear20, i32* %code1, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.15, %if.end
  %21 = load i32, i32* %code1, align 4
  %cmp22 = icmp eq i32 %21, 54
  br i1 %cmp22, label %if.then.24, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.21
  %22 = load i32, i32* %code1, align 4
  %cmp23 = icmp eq i32 %22, 55
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %lor.lhs.false, %if.end.21
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %24 = load i32, i32* %class.addr, align 4
  %25 = load i32, i32* %scale.addr, align 4
  call void @record_address_regs(%struct.rtx_def* %23, i32 %24, i32 %25)
  br label %if.end.233

if.else:                                          ; preds = %lor.lhs.false
  %26 = load i32, i32* %code1, align 4
  %cmp25 = icmp eq i32 %26, 68
  br i1 %cmp25, label %if.then.30, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %if.else
  %27 = load i32, i32* %code1, align 4
  %cmp27 = icmp eq i32 %27, 58
  br i1 %cmp27, label %if.then.30, label %lor.lhs.false.28

lor.lhs.false.28:                                 ; preds = %lor.lhs.false.26
  %28 = load i32, i32* %code1, align 4
  %cmp29 = icmp eq i32 %28, 67
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %lor.lhs.false.28, %lor.lhs.false.26, %if.else
  %29 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %30 = load i32, i32* %scale.addr, align 4
  call void @record_address_regs(%struct.rtx_def* %29, i32 10, i32 %30)
  br label %if.end.232

if.else.31:                                       ; preds = %lor.lhs.false.28
  %31 = load i32, i32* %code0, align 4
  %cmp32 = icmp eq i32 %31, 61
  br i1 %cmp32, label %land.lhs.true, label %if.else.117

land.lhs.true:                                    ; preds = %if.else.31
  %32 = load i32, i32* %code1, align 4
  %cmp33 = icmp eq i32 %32, 61
  br i1 %cmp33, label %land.lhs.true.34, label %if.else.117

land.lhs.true.34:                                 ; preds = %land.lhs.true
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %34 = load i32, i32* %rtuint, align 4
  %cmp37 = icmp ult i32 %34, 53
  br i1 %cmp37, label %land.lhs.true.38, label %if.else.117

land.lhs.true.38:                                 ; preds = %land.lhs.true.34
  %35 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtuint41 = bitcast %union.rtunion_def* %arrayidx40 to i32*
  %36 = load i32, i32* %rtuint41, align 4
  %cmp42 = icmp ule i32 %36, 7
  br i1 %cmp42, label %if.then.88, label %lor.lhs.false.43

lor.lhs.false.43:                                 ; preds = %land.lhs.true.38
  %37 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtuint46 = bitcast %union.rtunion_def* %arrayidx45 to i32*
  %38 = load i32, i32* %rtuint46, align 4
  %cmp47 = icmp eq i32 %38, 16
  br i1 %cmp47, label %if.then.88, label %lor.lhs.false.48

lor.lhs.false.48:                                 ; preds = %lor.lhs.false.43
  %39 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtuint51 = bitcast %union.rtunion_def* %arrayidx50 to i32*
  %40 = load i32, i32* %rtuint51, align 4
  %cmp52 = icmp eq i32 %40, 20
  br i1 %cmp52, label %if.then.88, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %lor.lhs.false.48
  %41 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtuint56 = bitcast %union.rtunion_def* %arrayidx55 to i32*
  %42 = load i32, i32* %rtuint56, align 4
  %cmp57 = icmp uge i32 %42, 37
  br i1 %cmp57, label %land.lhs.true.58, label %lor.lhs.false.63

land.lhs.true.58:                                 ; preds = %lor.lhs.false.53
  %43 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtuint61 = bitcast %union.rtunion_def* %arrayidx60 to i32*
  %44 = load i32, i32* %rtuint61, align 4
  %cmp62 = icmp ule i32 %44, 44
  br i1 %cmp62, label %if.then.88, label %lor.lhs.false.63

lor.lhs.false.63:                                 ; preds = %land.lhs.true.58, %lor.lhs.false.53
  %45 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtuint66 = bitcast %union.rtunion_def* %arrayidx65 to i32*
  %46 = load i32, i32* %rtuint66, align 4
  %cmp67 = icmp uge i32 %46, 53
  br i1 %cmp67, label %if.then.88, label %lor.lhs.false.68

lor.lhs.false.68:                                 ; preds = %lor.lhs.false.63
  %47 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 0
  %rtuint71 = bitcast %union.rtunion_def* %arrayidx70 to i32*
  %48 = load i32, i32* %rtuint71, align 4
  %cmp72 = icmp ult i32 %48, 7
  br i1 %cmp72, label %if.then.88, label %lor.lhs.false.73

lor.lhs.false.73:                                 ; preds = %lor.lhs.false.68
  %49 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtuint76 = bitcast %union.rtunion_def* %arrayidx75 to i32*
  %50 = load i32, i32* %rtuint76, align 4
  %cmp77 = icmp uge i32 %50, 37
  br i1 %cmp77, label %land.lhs.true.78, label %lor.lhs.false.83

land.lhs.true.78:                                 ; preds = %lor.lhs.false.73
  %51 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtuint81 = bitcast %union.rtunion_def* %arrayidx80 to i32*
  %52 = load i32, i32* %rtuint81, align 4
  %cmp82 = icmp ule i32 %52, 44
  br i1 %cmp82, label %if.then.88, label %lor.lhs.false.83

lor.lhs.false.83:                                 ; preds = %land.lhs.true.78, %lor.lhs.false.73
  %53 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtuint86 = bitcast %union.rtunion_def* %arrayidx85 to i32*
  %54 = load i32, i32* %rtuint86, align 4
  %cmp87 = icmp uge i32 %54, 53
  br i1 %cmp87, label %if.then.88, label %if.else.117

if.then.88:                                       ; preds = %lor.lhs.false.83, %land.lhs.true.78, %lor.lhs.false.68, %lor.lhs.false.63, %land.lhs.true.58, %lor.lhs.false.48, %lor.lhs.false.43, %land.lhs.true.38
  %55 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 0
  %rtuint91 = bitcast %union.rtunion_def* %arrayidx90 to i32*
  %57 = load i32, i32* %rtuint91, align 4
  %cmp92 = icmp ule i32 %57, 7
  br i1 %cmp92, label %lor.end, label %lor.lhs.false.93

lor.lhs.false.93:                                 ; preds = %if.then.88
  %58 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 0
  %rtuint96 = bitcast %union.rtunion_def* %arrayidx95 to i32*
  %59 = load i32, i32* %rtuint96, align 4
  %cmp97 = icmp eq i32 %59, 16
  br i1 %cmp97, label %lor.end, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %lor.lhs.false.93
  %60 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 0
  %rtuint101 = bitcast %union.rtunion_def* %arrayidx100 to i32*
  %61 = load i32, i32* %rtuint101, align 4
  %cmp102 = icmp eq i32 %61, 20
  br i1 %cmp102, label %lor.end, label %lor.lhs.false.103

lor.lhs.false.103:                                ; preds = %lor.lhs.false.98
  %62 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtuint106 = bitcast %union.rtunion_def* %arrayidx105 to i32*
  %63 = load i32, i32* %rtuint106, align 4
  %cmp107 = icmp uge i32 %63, 37
  br i1 %cmp107, label %land.lhs.true.108, label %lor.rhs

land.lhs.true.108:                                ; preds = %lor.lhs.false.103
  %64 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 0
  %rtuint111 = bitcast %union.rtunion_def* %arrayidx110 to i32*
  %65 = load i32, i32* %rtuint111, align 4
  %cmp112 = icmp ule i32 %65, 44
  br i1 %cmp112, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true.108, %lor.lhs.false.103
  %66 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 0
  %rtuint115 = bitcast %union.rtunion_def* %arrayidx114 to i32*
  %67 = load i32, i32* %rtuint115, align 4
  %cmp116 = icmp uge i32 %67, 53
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true.108, %lor.lhs.false.98, %lor.lhs.false.93, %if.then.88
  %68 = phi i1 [ true, %land.lhs.true.108 ], [ true, %lor.lhs.false.98 ], [ true, %lor.lhs.false.93 ], [ true, %if.then.88 ], [ %cmp116, %lor.rhs ]
  %cond = select i1 %68, i32 10, i32 12
  %69 = load i32, i32* %scale.addr, align 4
  call void @record_address_regs(%struct.rtx_def* %55, i32 %cond, i32 %69)
  br label %if.end.231

if.else.117:                                      ; preds = %lor.lhs.false.83, %land.lhs.true.34, %land.lhs.true, %if.else.31
  %70 = load i32, i32* %code0, align 4
  %cmp118 = icmp eq i32 %70, 61
  br i1 %cmp118, label %land.lhs.true.119, label %if.else.208

land.lhs.true.119:                                ; preds = %if.else.117
  %71 = load i32, i32* %code1, align 4
  %cmp120 = icmp eq i32 %71, 61
  br i1 %cmp120, label %land.lhs.true.121, label %if.else.208

land.lhs.true.121:                                ; preds = %land.lhs.true.119
  %72 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 0
  %rtuint124 = bitcast %union.rtunion_def* %arrayidx123 to i32*
  %73 = load i32, i32* %rtuint124, align 4
  %cmp125 = icmp ult i32 %73, 53
  br i1 %cmp125, label %land.lhs.true.126, label %if.else.208

land.lhs.true.126:                                ; preds = %land.lhs.true.121
  %74 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 0
  %rtuint129 = bitcast %union.rtunion_def* %arrayidx128 to i32*
  %75 = load i32, i32* %rtuint129, align 4
  %cmp130 = icmp ule i32 %75, 7
  br i1 %cmp130, label %if.then.176, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %land.lhs.true.126
  %76 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 0
  %rtuint134 = bitcast %union.rtunion_def* %arrayidx133 to i32*
  %77 = load i32, i32* %rtuint134, align 4
  %cmp135 = icmp eq i32 %77, 16
  br i1 %cmp135, label %if.then.176, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false.131
  %78 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld137 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx138 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld137, i32 0, i64 0
  %rtuint139 = bitcast %union.rtunion_def* %arrayidx138 to i32*
  %79 = load i32, i32* %rtuint139, align 4
  %cmp140 = icmp eq i32 %79, 20
  br i1 %cmp140, label %if.then.176, label %lor.lhs.false.141

lor.lhs.false.141:                                ; preds = %lor.lhs.false.136
  %80 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 0
  %rtuint144 = bitcast %union.rtunion_def* %arrayidx143 to i32*
  %81 = load i32, i32* %rtuint144, align 4
  %cmp145 = icmp uge i32 %81, 37
  br i1 %cmp145, label %land.lhs.true.146, label %lor.lhs.false.151

land.lhs.true.146:                                ; preds = %lor.lhs.false.141
  %82 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 0
  %rtuint149 = bitcast %union.rtunion_def* %arrayidx148 to i32*
  %83 = load i32, i32* %rtuint149, align 4
  %cmp150 = icmp ule i32 %83, 44
  br i1 %cmp150, label %if.then.176, label %lor.lhs.false.151

lor.lhs.false.151:                                ; preds = %land.lhs.true.146, %lor.lhs.false.141
  %84 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 0
  %rtuint154 = bitcast %union.rtunion_def* %arrayidx153 to i32*
  %85 = load i32, i32* %rtuint154, align 4
  %cmp155 = icmp uge i32 %85, 53
  br i1 %cmp155, label %if.then.176, label %lor.lhs.false.156

lor.lhs.false.156:                                ; preds = %lor.lhs.false.151
  %86 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld157 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx158 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld157, i32 0, i64 0
  %rtuint159 = bitcast %union.rtunion_def* %arrayidx158 to i32*
  %87 = load i32, i32* %rtuint159, align 4
  %cmp160 = icmp ult i32 %87, 7
  br i1 %cmp160, label %if.then.176, label %lor.lhs.false.161

lor.lhs.false.161:                                ; preds = %lor.lhs.false.156
  %88 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld162, i32 0, i64 0
  %rtuint164 = bitcast %union.rtunion_def* %arrayidx163 to i32*
  %89 = load i32, i32* %rtuint164, align 4
  %cmp165 = icmp uge i32 %89, 37
  br i1 %cmp165, label %land.lhs.true.166, label %lor.lhs.false.171

land.lhs.true.166:                                ; preds = %lor.lhs.false.161
  %90 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 0
  %rtuint169 = bitcast %union.rtunion_def* %arrayidx168 to i32*
  %91 = load i32, i32* %rtuint169, align 4
  %cmp170 = icmp ule i32 %91, 44
  br i1 %cmp170, label %if.then.176, label %lor.lhs.false.171

lor.lhs.false.171:                                ; preds = %land.lhs.true.166, %lor.lhs.false.161
  %92 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 0
  %rtuint174 = bitcast %union.rtunion_def* %arrayidx173 to i32*
  %93 = load i32, i32* %rtuint174, align 4
  %cmp175 = icmp uge i32 %93, 53
  br i1 %cmp175, label %if.then.176, label %if.else.208

if.then.176:                                      ; preds = %lor.lhs.false.171, %land.lhs.true.166, %lor.lhs.false.156, %lor.lhs.false.151, %land.lhs.true.146, %lor.lhs.false.136, %lor.lhs.false.131, %land.lhs.true.126
  %94 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %95 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld177 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx178 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld177, i32 0, i64 0
  %rtuint179 = bitcast %union.rtunion_def* %arrayidx178 to i32*
  %96 = load i32, i32* %rtuint179, align 4
  %cmp180 = icmp ule i32 %96, 7
  br i1 %cmp180, label %lor.end.206, label %lor.lhs.false.181

lor.lhs.false.181:                                ; preds = %if.then.176
  %97 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 0
  %rtuint184 = bitcast %union.rtunion_def* %arrayidx183 to i32*
  %98 = load i32, i32* %rtuint184, align 4
  %cmp185 = icmp eq i32 %98, 16
  br i1 %cmp185, label %lor.end.206, label %lor.lhs.false.186

lor.lhs.false.186:                                ; preds = %lor.lhs.false.181
  %99 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld187, i32 0, i64 0
  %rtuint189 = bitcast %union.rtunion_def* %arrayidx188 to i32*
  %100 = load i32, i32* %rtuint189, align 4
  %cmp190 = icmp eq i32 %100, 20
  br i1 %cmp190, label %lor.end.206, label %lor.lhs.false.191

lor.lhs.false.191:                                ; preds = %lor.lhs.false.186
  %101 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld192 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld192, i32 0, i64 0
  %rtuint194 = bitcast %union.rtunion_def* %arrayidx193 to i32*
  %102 = load i32, i32* %rtuint194, align 4
  %cmp195 = icmp uge i32 %102, 37
  br i1 %cmp195, label %land.lhs.true.196, label %lor.rhs.201

land.lhs.true.196:                                ; preds = %lor.lhs.false.191
  %103 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld197 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx198 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld197, i32 0, i64 0
  %rtuint199 = bitcast %union.rtunion_def* %arrayidx198 to i32*
  %104 = load i32, i32* %rtuint199, align 4
  %cmp200 = icmp ule i32 %104, 44
  br i1 %cmp200, label %lor.end.206, label %lor.rhs.201

lor.rhs.201:                                      ; preds = %land.lhs.true.196, %lor.lhs.false.191
  %105 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %fld202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld202, i32 0, i64 0
  %rtuint204 = bitcast %union.rtunion_def* %arrayidx203 to i32*
  %106 = load i32, i32* %rtuint204, align 4
  %cmp205 = icmp uge i32 %106, 53
  br label %lor.end.206

lor.end.206:                                      ; preds = %lor.rhs.201, %land.lhs.true.196, %lor.lhs.false.186, %lor.lhs.false.181, %if.then.176
  %107 = phi i1 [ true, %land.lhs.true.196 ], [ true, %lor.lhs.false.186 ], [ true, %lor.lhs.false.181 ], [ true, %if.then.176 ], [ %cmp205, %lor.rhs.201 ]
  %cond207 = select i1 %107, i32 10, i32 12
  %108 = load i32, i32* %scale.addr, align 4
  call void @record_address_regs(%struct.rtx_def* %94, i32 %cond207, i32 %108)
  br label %if.end.230

if.else.208:                                      ; preds = %lor.lhs.false.171, %land.lhs.true.121, %land.lhs.true.119, %if.else.117
  %109 = load i32, i32* %code0, align 4
  %cmp209 = icmp eq i32 %109, 61
  br i1 %cmp209, label %land.lhs.true.210, label %lor.lhs.false.212

land.lhs.true.210:                                ; preds = %if.else.208
  %110 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %111 = bitcast %struct.rtx_def* %110 to i32*
  %bf.load211 = load i32, i32* %111, align 8
  %bf.lshr = lshr i32 %bf.load211, 31
  %tobool = icmp ne i32 %bf.lshr, 0
  br i1 %tobool, label %if.then.214, label %lor.lhs.false.212

lor.lhs.false.212:                                ; preds = %land.lhs.true.210, %if.else.208
  %112 = load i32, i32* %code1, align 4
  %cmp213 = icmp eq i32 %112, 78
  br i1 %cmp213, label %if.then.214, label %if.else.215

if.then.214:                                      ; preds = %lor.lhs.false.212, %land.lhs.true.210
  %113 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %114 = load i32, i32* %scale.addr, align 4
  call void @record_address_regs(%struct.rtx_def* %113, i32 12, i32 %114)
  %115 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %116 = load i32, i32* %scale.addr, align 4
  call void @record_address_regs(%struct.rtx_def* %115, i32 10, i32 %116)
  br label %if.end.229

if.else.215:                                      ; preds = %lor.lhs.false.212
  %117 = load i32, i32* %code1, align 4
  %cmp216 = icmp eq i32 %117, 61
  br i1 %cmp216, label %land.lhs.true.217, label %lor.lhs.false.221

land.lhs.true.217:                                ; preds = %if.else.215
  %118 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %119 = bitcast %struct.rtx_def* %118 to i32*
  %bf.load218 = load i32, i32* %119, align 8
  %bf.lshr219 = lshr i32 %bf.load218, 31
  %tobool220 = icmp ne i32 %bf.lshr219, 0
  br i1 %tobool220, label %if.then.223, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %land.lhs.true.217, %if.else.215
  %120 = load i32, i32* %code0, align 4
  %cmp222 = icmp eq i32 %120, 78
  br i1 %cmp222, label %if.then.223, label %if.else.224

if.then.223:                                      ; preds = %lor.lhs.false.221, %land.lhs.true.217
  %121 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %122 = load i32, i32* %scale.addr, align 4
  call void @record_address_regs(%struct.rtx_def* %121, i32 10, i32 %122)
  %123 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %124 = load i32, i32* %scale.addr, align 4
  call void @record_address_regs(%struct.rtx_def* %123, i32 12, i32 %124)
  br label %if.end.228

if.else.224:                                      ; preds = %lor.lhs.false.221
  %125 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %126 = load i32, i32* %scale.addr, align 4
  %div = sdiv i32 %126, 2
  call void @record_address_regs(%struct.rtx_def* %125, i32 12, i32 %div)
  %127 = load %struct.rtx_def*, %struct.rtx_def** %arg0, align 8
  %128 = load i32, i32* %scale.addr, align 4
  %div225 = sdiv i32 %128, 2
  call void @record_address_regs(%struct.rtx_def* %127, i32 10, i32 %div225)
  %129 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %130 = load i32, i32* %scale.addr, align 4
  %div226 = sdiv i32 %130, 2
  call void @record_address_regs(%struct.rtx_def* %129, i32 12, i32 %div226)
  %131 = load %struct.rtx_def*, %struct.rtx_def** %arg1, align 8
  %132 = load i32, i32* %scale.addr, align 4
  %div227 = sdiv i32 %132, 2
  call void @record_address_regs(%struct.rtx_def* %131, i32 10, i32 %div227)
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.224, %if.then.223
  br label %if.end.229

if.end.229:                                       ; preds = %if.end.228, %if.then.214
  br label %if.end.230

if.end.230:                                       ; preds = %if.end.229, %lor.end.206
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %lor.end
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %if.then.30
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %if.then.24
  br label %sw.epilog

sw.bb.234:                                        ; preds = %entry, %entry
  %133 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld235 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %133, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld235, i32 0, i64 0
  %rtx237 = bitcast %union.rtunion_def* %arrayidx236 to %struct.rtx_def**
  %134 = load %struct.rtx_def*, %struct.rtx_def** %rtx237, align 8
  %135 = load i32, i32* %scale.addr, align 4
  %mul = mul nsw i32 2, %135
  call void @record_address_regs(%struct.rtx_def* %134, i32 12, i32 %mul)
  %136 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 1
  %rtx240 = bitcast %union.rtunion_def* %arrayidx239 to %struct.rtx_def**
  %137 = load %struct.rtx_def*, %struct.rtx_def** %rtx240, align 8
  %fld241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld241, i32 0, i64 1
  %rtx243 = bitcast %union.rtunion_def* %arrayidx242 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx243, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %bf.load244 = load i32, i32* %139, align 8
  %bf.clear245 = and i32 %bf.load244, 65535
  %cmp246 = icmp eq i32 %bf.clear245, 61
  br i1 %cmp246, label %if.then.247, label %if.end.255

if.then.247:                                      ; preds = %sw.bb.234
  %140 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld248 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld248, i32 0, i64 1
  %rtx250 = bitcast %union.rtunion_def* %arrayidx249 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx250, align 8
  %fld251 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld251, i32 0, i64 1
  %rtx253 = bitcast %union.rtunion_def* %arrayidx252 to %struct.rtx_def**
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx253, align 8
  %143 = load i32, i32* %scale.addr, align 4
  %mul254 = mul nsw i32 2, %143
  call void @record_address_regs(%struct.rtx_def* %142, i32 10, i32 %mul254)
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.247, %sw.bb.234
  br label %sw.epilog

sw.bb.256:                                        ; preds = %entry, %entry, %entry, %entry
  %144 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 0
  %rtx259 = bitcast %union.rtunion_def* %arrayidx258 to %struct.rtx_def**
  %145 = load %struct.rtx_def*, %struct.rtx_def** %rtx259, align 8
  %146 = load i32, i32* %class.addr, align 4
  %147 = load i32, i32* %scale.addr, align 4
  %mul260 = mul nsw i32 2, %147
  call void @record_address_regs(%struct.rtx_def* %145, i32 %146, i32 %mul260)
  br label %sw.epilog

sw.bb.261:                                        ; preds = %entry
  %148 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld262 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx263 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld262, i32 0, i64 0
  %rtuint264 = bitcast %union.rtunion_def* %arrayidx263 to i32*
  %149 = load i32, i32* %rtuint264, align 4
  %idxprom = zext i32 %149 to i64
  %150 = load %struct.costs*, %struct.costs** @costs, align 8
  %arrayidx265 = getelementptr inbounds %struct.costs, %struct.costs* %150, i64 %idxprom
  store %struct.costs* %arrayidx265, %struct.costs** %pp, align 8
  %151 = load i32, i32* @target_flags, align 4
  %and = and i32 %151, 33554432
  %tobool266 = icmp ne i32 %and, 0
  %cond267 = select i1 %tobool266, i32 5, i32 4
  %152 = load i32, i32* %class.addr, align 4
  %call = call i32 @ix86_memory_move_cost(i32 %cond267, i32 %152, i32 1)
  %153 = load i32, i32* %scale.addr, align 4
  %mul268 = mul nsw i32 %call, %153
  %div269 = sdiv i32 %mul268, 2
  %154 = load %struct.costs*, %struct.costs** %pp, align 8
  %mem_cost = getelementptr inbounds %struct.costs, %struct.costs* %154, i32 0, i32 1
  %155 = load i32, i32* %mem_cost, align 4
  %add = add nsw i32 %155, %div269
  store i32 %add, i32* %mem_cost, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.261
  %156 = load i32, i32* %i, align 4
  %cmp270 = icmp slt i32 %156, 25
  br i1 %cmp270, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %157 = load i32, i32* %class.addr, align 4
  %idxprom271 = sext i32 %157 to i64
  %158 = load i32, i32* %i, align 4
  %idxprom272 = sext i32 %158 to i64
  %159 = load i32, i32* @target_flags, align 4
  %and273 = and i32 %159, 33554432
  %tobool274 = icmp ne i32 %and273, 0
  %cond275 = select i1 %tobool274, i32 5, i32 4
  %idxprom276 = sext i32 %cond275 to i64
  %arrayidx277 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_in_cost, i32 0, i64 %idxprom276
  %arrayidx278 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx277, i32 0, i64 %idxprom272
  %arrayidx279 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx278, i32 0, i64 %idxprom271
  %160 = load i32, i32* %arrayidx279, align 4
  %161 = load i32, i32* %scale.addr, align 4
  %mul280 = mul nsw i32 %160, %161
  %div281 = sdiv i32 %mul280, 2
  %162 = load i32, i32* %i, align 4
  %idxprom282 = sext i32 %162 to i64
  %163 = load %struct.costs*, %struct.costs** %pp, align 8
  %cost = getelementptr inbounds %struct.costs, %struct.costs* %163, i32 0, i32 0
  %arrayidx283 = getelementptr inbounds [25 x i32], [25 x i32]* %cost, i32 0, i64 %idxprom282
  %164 = load i32, i32* %arrayidx283, align 4
  %add284 = add nsw i32 %164, %div281
  store i32 %add284, i32* %arrayidx283, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %165 = load i32, i32* %i, align 4
  %inc = add nsw i32 %165, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %166 = load i32, i32* %code, align 4
  %idxprom285 = sext i32 %166 to i64
  %arrayidx286 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom285
  %167 = load i8*, i8** %arrayidx286, align 8
  store i8* %167, i8** %fmt, align 8
  %168 = load i32, i32* %code, align 4
  %idxprom288 = sext i32 %168 to i64
  %arrayidx289 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom288
  %169 = load i8, i8* %arrayidx289, align 1
  %conv = zext i8 %169 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i287, align 4
  br label %for.cond.290

for.cond.290:                                     ; preds = %for.inc.305, %sw.default
  %170 = load i32, i32* %i287, align 4
  %cmp291 = icmp sge i32 %170, 0
  br i1 %cmp291, label %for.body.293, label %for.end.306

for.body.293:                                     ; preds = %for.cond.290
  %171 = load i32, i32* %i287, align 4
  %idxprom294 = sext i32 %171 to i64
  %172 = load i8*, i8** %fmt, align 8
  %arrayidx295 = getelementptr inbounds i8, i8* %172, i64 %idxprom294
  %173 = load i8, i8* %arrayidx295, align 1
  %conv296 = sext i8 %173 to i32
  %cmp297 = icmp eq i32 %conv296, 101
  br i1 %cmp297, label %if.then.299, label %if.end.304

if.then.299:                                      ; preds = %for.body.293
  %174 = load i32, i32* %i287, align 4
  %idxprom300 = sext i32 %174 to i64
  %175 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld301 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %arrayidx302 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld301, i32 0, i64 %idxprom300
  %rtx303 = bitcast %union.rtunion_def* %arrayidx302 to %struct.rtx_def**
  %176 = load %struct.rtx_def*, %struct.rtx_def** %rtx303, align 8
  %177 = load i32, i32* %class.addr, align 4
  %178 = load i32, i32* %scale.addr, align 4
  call void @record_address_regs(%struct.rtx_def* %176, i32 %177, i32 %178)
  br label %if.end.304

if.end.304:                                       ; preds = %if.then.299, %for.body.293
  br label %for.inc.305

for.inc.305:                                      ; preds = %if.end.304
  %179 = load i32, i32* %i287, align 4
  %dec = add nsw i32 %179, -1
  store i32 %dec, i32* %i287, align 4
  br label %for.cond.290

for.end.306:                                      ; preds = %for.cond.290
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %for.end.306, %for.end, %sw.bb.256, %if.end.255, %if.end.233
  ret void
}

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #2

declare %struct.rtx_def* @prev_real_insn(%struct.rtx_def*) #2

declare %struct.rtx_def* @gen_lowpart(i32, %struct.rtx_def*) #2

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #2

declare %struct.rtx_def* @gen_move_insn(%struct.rtx_def*, %struct.rtx_def*) #2

; Function Attrs: nounwind uwtable
define internal void @record_operand_costs(%struct.rtx_def* %insn, %struct.costs* %op_costs, %struct.reg_pref* %reg_pref) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %op_costs.addr = alloca %struct.costs*, align 8
  %reg_pref.addr = alloca %struct.reg_pref*, align 8
  %constraints = alloca [30 x i8*], align 16
  %modes = alloca [30 x i32], align 16
  %i = alloca i32, align 4
  %inner = alloca %struct.rtx_def*, align 8
  %xconstraints = alloca [30 x i8*], align 16
  %j = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.costs* %op_costs, %struct.costs** %op_costs.addr, align 8
  store %struct.reg_pref* %reg_pref, %struct.reg_pref** %reg_pref.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp slt i32 %0, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [30 x i8*], [30 x i8*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 2), i32 0, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %4 to i64
  %arrayidx3 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i32 0, i64 %idxprom2
  store i8* %3, i8** %arrayidx3, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 3), i32 0, i64 %idxprom4
  %6 = load i32, i32* %arrayidx5, align 4
  %7 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [30 x i32], [30 x i32]* %modes, i32 0, i64 %idxprom6
  store i32 %6, i32* %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.48, %for.end
  %9 = load i32, i32* %i, align 4
  %10 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv9 = sext i8 %10 to i32
  %cmp10 = icmp slt i32 %9, %conv9
  br i1 %cmp10, label %for.body.12, label %for.end.50

for.body.12:                                      ; preds = %for.cond.8
  %11 = load i32, i32* %i, align 4
  %idxprom13 = sext i32 %11 to i64
  %12 = load %struct.costs*, %struct.costs** %op_costs.addr, align 8
  %arrayidx14 = getelementptr inbounds %struct.costs, %struct.costs* %12, i64 %idxprom13
  %13 = bitcast %struct.costs* %arrayidx14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %13, i8* bitcast (%struct.costs* @init_cost to i8*), i64 104, i32 4, i1 false)
  %14 = load i32, i32* %i, align 4
  %idxprom15 = sext i32 %14 to i64
  %arrayidx16 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom15
  %15 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx16, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load = load i32, i32* %16, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp17 = icmp eq i32 %bf.clear, 63
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.12
  %17 = load i32, i32* %i, align 4
  %idxprom19 = sext i32 %17 to i64
  %arrayidx20 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom19
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx20, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %inner, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %inner, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %21 to i64
  %arrayidx23 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom22
  store %struct.rtx_def* %20, %struct.rtx_def** %arrayidx23, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.12
  %22 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %22 to i64
  %arrayidx25 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom24
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx25, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load26 = load i32, i32* %24, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 66
  br i1 %cmp28, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %if.end
  %25 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %25 to i64
  %arrayidx32 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom31
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx32, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %28 = load i32, i32* @frequency, align 4
  %mul = mul nsw i32 %28, 2
  call void @record_address_regs(%struct.rtx_def* %27, i32 12, i32 %mul)
  br label %if.end.47

if.else:                                          ; preds = %if.end
  %29 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %29 to i64
  %arrayidx37 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i32 0, i64 %idxprom36
  %30 = load i8*, i8** %arrayidx37, align 8
  %arrayidx38 = getelementptr inbounds i8, i8* %30, i64 0
  %31 = load i8, i8* %arrayidx38, align 1
  %conv39 = sext i8 %31 to i32
  %cmp40 = icmp eq i32 %conv39, 112
  br i1 %cmp40, label %if.then.42, label %if.end.46

if.then.42:                                       ; preds = %if.else
  %32 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %32 to i64
  %arrayidx44 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom43
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx44, align 8
  %34 = load i32, i32* @frequency, align 4
  %mul45 = mul nsw i32 %34, 2
  call void @record_address_regs(%struct.rtx_def* %33, i32 12, i32 %mul45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.then.42, %if.else
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.30
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.47
  %35 = load i32, i32* %i, align 4
  %inc49 = add nsw i32 %35, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond.8

for.end.50:                                       ; preds = %for.cond.8
  store i32 0, i32* %i, align 4
  br label %for.cond.51

for.cond.51:                                      ; preds = %for.inc.88, %for.end.50
  %36 = load i32, i32* %i, align 4
  %37 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv52 = sext i8 %37 to i32
  %sub = sub nsw i32 %conv52, 1
  %cmp53 = icmp slt i32 %36, %sub
  br i1 %cmp53, label %for.body.55, label %for.end.90

for.body.55:                                      ; preds = %for.cond.51
  %38 = load i32, i32* %i, align 4
  %idxprom56 = sext i32 %38 to i64
  %arrayidx57 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i32 0, i64 %idxprom56
  %39 = load i8*, i8** %arrayidx57, align 8
  %arrayidx58 = getelementptr inbounds i8, i8* %39, i64 0
  %40 = load i8, i8* %arrayidx58, align 1
  %conv59 = sext i8 %40 to i32
  %cmp60 = icmp eq i32 %conv59, 37
  br i1 %cmp60, label %if.then.62, label %if.end.87

if.then.62:                                       ; preds = %for.body.55
  store i32 0, i32* %j, align 4
  br label %for.cond.63

for.cond.63:                                      ; preds = %for.inc.72, %if.then.62
  %41 = load i32, i32* %j, align 4
  %42 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv64 = sext i8 %42 to i32
  %cmp65 = icmp slt i32 %41, %conv64
  br i1 %cmp65, label %for.body.67, label %for.end.74

for.body.67:                                      ; preds = %for.cond.63
  %43 = load i32, i32* %j, align 4
  %idxprom68 = sext i32 %43 to i64
  %arrayidx69 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i32 0, i64 %idxprom68
  %44 = load i8*, i8** %arrayidx69, align 8
  %45 = load i32, i32* %j, align 4
  %idxprom70 = sext i32 %45 to i64
  %arrayidx71 = getelementptr inbounds [30 x i8*], [30 x i8*]* %xconstraints, i32 0, i64 %idxprom70
  store i8* %44, i8** %arrayidx71, align 8
  br label %for.inc.72

for.inc.72:                                       ; preds = %for.body.67
  %46 = load i32, i32* %j, align 4
  %inc73 = add nsw i32 %46, 1
  store i32 %inc73, i32* %j, align 4
  br label %for.cond.63

for.end.74:                                       ; preds = %for.cond.63
  %47 = load i32, i32* %i, align 4
  %add = add nsw i32 %47, 1
  %idxprom75 = sext i32 %add to i64
  %arrayidx76 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i32 0, i64 %idxprom75
  %48 = load i8*, i8** %arrayidx76, align 8
  %49 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %49 to i64
  %arrayidx78 = getelementptr inbounds [30 x i8*], [30 x i8*]* %xconstraints, i32 0, i64 %idxprom77
  store i8* %48, i8** %arrayidx78, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %50 to i64
  %arrayidx80 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i32 0, i64 %idxprom79
  %51 = load i8*, i8** %arrayidx80, align 8
  %52 = load i32, i32* %i, align 4
  %add81 = add nsw i32 %52, 1
  %idxprom82 = sext i32 %add81 to i64
  %arrayidx83 = getelementptr inbounds [30 x i8*], [30 x i8*]* %xconstraints, i32 0, i64 %idxprom82
  store i8* %51, i8** %arrayidx83, align 8
  %53 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  %conv84 = sext i8 %53 to i32
  %54 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv85 = sext i8 %54 to i32
  %arraydecay = getelementptr inbounds [30 x i32], [30 x i32]* %modes, i32 0, i32 0
  %arraydecay86 = getelementptr inbounds [30 x i8*], [30 x i8*]* %xconstraints, i32 0, i32 0
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %56 = load %struct.costs*, %struct.costs** %op_costs.addr, align 8
  %57 = load %struct.reg_pref*, %struct.reg_pref** %reg_pref.addr, align 8
  call void @record_reg_classes(i32 %conv84, i32 %conv85, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i32 0), i32* %arraydecay, i8** %arraydecay86, %struct.rtx_def* %55, %struct.costs* %56, %struct.reg_pref* %57)
  br label %if.end.87

if.end.87:                                        ; preds = %for.end.74, %for.body.55
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87
  %58 = load i32, i32* %i, align 4
  %inc89 = add nsw i32 %58, 1
  store i32 %inc89, i32* %i, align 4
  br label %for.cond.51

for.end.90:                                       ; preds = %for.cond.51
  %59 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 9), align 1
  %conv91 = sext i8 %59 to i32
  %60 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv92 = sext i8 %60 to i32
  %arraydecay93 = getelementptr inbounds [30 x i32], [30 x i32]* %modes, i32 0, i32 0
  %arraydecay94 = getelementptr inbounds [30 x i8*], [30 x i8*]* %constraints, i32 0, i32 0
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %62 = load %struct.costs*, %struct.costs** %op_costs.addr, align 8
  %63 = load %struct.reg_pref*, %struct.reg_pref** %reg_pref.addr, align 8
  call void @record_reg_classes(i32 %conv91, i32 %conv92, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i32 0), i32* %arraydecay93, i8** %arraydecay94, %struct.rtx_def* %61, %struct.costs* %62, %struct.reg_pref* %63)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @record_reg_classes(i32 %n_alts, i32 %n_ops, %struct.rtx_def** %ops, i32* %modes, i8** %constraints, %struct.rtx_def* %insn, %struct.costs* %op_costs, %struct.reg_pref* %reg_pref) #0 {
entry:
  %n_alts.addr = alloca i32, align 4
  %n_ops.addr = alloca i32, align 4
  %ops.addr = alloca %struct.rtx_def**, align 8
  %modes.addr = alloca i32*, align 8
  %constraints.addr = alloca i8**, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %op_costs.addr = alloca %struct.costs*, align 8
  %reg_pref.addr = alloca %struct.reg_pref*, align 8
  %alt = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %set = alloca %struct.rtx_def*, align 8
  %this_op_costs = alloca [30 x %struct.costs], align 16
  %alt_fail = alloca i32, align 4
  %alt_cost = alloca i32, align 4
  %classes = alloca [30 x i32], align 16
  %allows_mem = alloca [30 x i32], align 16
  %class = alloca i32, align 4
  %p = alloca i8*, align 8
  %op = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %allows_addr = alloca i32, align 4
  %win = alloca i32, align 4
  %c = alloca i8, align 1
  %pp = alloca %struct.costs*, align 8
  %pp986 = alloca %struct.costs*, align 8
  %pp1201 = alloca %struct.costs*, align 8
  %qq = alloca %struct.costs*, align 8
  %scale = alloca i32, align 4
  %regno = alloca i32, align 4
  %mode1347 = alloca i32, align 4
  %class1356 = alloca i32, align 4
  %nr = alloca i32, align 4
  %pref = alloca i32, align 4
  store i32 %n_alts, i32* %n_alts.addr, align 4
  store i32 %n_ops, i32* %n_ops.addr, align 4
  store %struct.rtx_def** %ops, %struct.rtx_def*** %ops.addr, align 8
  store i32* %modes, i32** %modes.addr, align 8
  store i8** %constraints, i8*** %constraints.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.costs* %op_costs, %struct.costs** %op_costs.addr, align 8
  store %struct.reg_pref* %reg_pref, %struct.reg_pref** %reg_pref.addr, align 8
  store i32 0, i32* %alt, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.1261, %entry
  %0 = load i32, i32* %alt, align 4
  %1 = load i32, i32* %n_alts.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.1263

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %alt_fail, align 4
  store i32 0, i32* %alt_cost, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc.1176, %for.body
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n_ops.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body.3, label %for.end.1178

for.body.3:                                       ; preds = %for.cond.1
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i8**, i8*** %constraints.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  store i8* %6, i8** %p, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %8, i64 %idxprom4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %op, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i32*, i32** %modes.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %11, i64 %idxprom6
  %12 = load i32, i32* %arrayidx7, align 4
  store i32 %12, i32* %mode, align 4
  store i32 0, i32* %allows_addr, align 4
  store i32 0, i32* %win, align 4
  %13 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom8
  store i32 0, i32* %arrayidx9, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %14 to i64
  %arrayidx11 = getelementptr inbounds [30 x i32], [30 x i32]* %allows_mem, i32 0, i64 %idxprom10
  store i32 0, i32* %arrayidx11, align 4
  %15 = load i8*, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv = sext i8 %16 to i32
  %cmp12 = icmp eq i32 %conv, 0
  br i1 %cmp12, label %if.then, label %if.end.22

if.then:                                          ; preds = %for.body.3
  %17 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load = load i32, i32* %18, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp14 = icmp eq i32 %bf.clear, 61
  br i1 %cmp14, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %20 = load i32, i32* %rtuint, align 4
  %cmp17 = icmp uge i32 %20, 53
  br i1 %cmp17, label %if.then.19, label %if.end

if.then.19:                                       ; preds = %land.lhs.true
  %21 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %arrayidx21 = getelementptr inbounds [30 x %struct.costs], [30 x %struct.costs]* %this_op_costs, i32 0, i64 %idxprom20
  %22 = bitcast %struct.costs* %arrayidx21 to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 104, i32 1, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then.19, %land.lhs.true, %if.then
  br label %for.inc.1176

if.end.22:                                        ; preds = %for.body.3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.22
  %23 = load i8*, i8** %p, align 8
  %24 = load i8, i8* %23, align 1
  %conv23 = sext i8 %24 to i32
  %cmp24 = icmp eq i32 %conv23, 37
  br i1 %cmp24, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %25 = load i8*, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  %conv26 = sext i8 %26 to i32
  %cmp27 = icmp eq i32 %conv26, 61
  br i1 %cmp27, label %lor.end, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false
  %27 = load i8*, i8** %p, align 8
  %28 = load i8, i8* %27, align 1
  %conv30 = sext i8 %28 to i32
  %cmp31 = icmp eq i32 %conv30, 43
  br i1 %cmp31, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.29
  %29 = load i8*, i8** %p, align 8
  %30 = load i8, i8* %29, align 1
  %conv33 = sext i8 %30 to i32
  %cmp34 = icmp eq i32 %conv33, 38
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.29, %lor.lhs.false, %while.cond
  %31 = phi i1 [ true, %lor.lhs.false.29 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp34, %lor.rhs ]
  br i1 %31, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %32 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %33 = load i8*, i8** %p, align 8
  %arrayidx36 = getelementptr inbounds i8, i8* %33, i64 0
  %34 = load i8, i8* %arrayidx36, align 1
  %conv37 = sext i8 %34 to i32
  %cmp38 = icmp sge i32 %conv37, 48
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.232

land.lhs.true.40:                                 ; preds = %while.end
  %35 = load i8*, i8** %p, align 8
  %arrayidx41 = getelementptr inbounds i8, i8* %35, i64 0
  %36 = load i8, i8* %arrayidx41, align 1
  %conv42 = sext i8 %36 to i32
  %37 = load i32, i32* %i, align 4
  %add = add nsw i32 48, %37
  %cmp43 = icmp sle i32 %conv42, %add
  br i1 %cmp43, label %land.lhs.true.45, label %if.end.232

land.lhs.true.45:                                 ; preds = %land.lhs.true.40
  %38 = load i8*, i8** %p, align 8
  %arrayidx46 = getelementptr inbounds i8, i8* %38, i64 1
  %39 = load i8, i8* %arrayidx46, align 1
  %conv47 = sext i8 %39 to i32
  %cmp48 = icmp eq i32 %conv47, 44
  br i1 %cmp48, label %if.then.55, label %lor.lhs.false.50

lor.lhs.false.50:                                 ; preds = %land.lhs.true.45
  %40 = load i8*, i8** %p, align 8
  %arrayidx51 = getelementptr inbounds i8, i8* %40, i64 1
  %41 = load i8, i8* %arrayidx51, align 1
  %conv52 = sext i8 %41 to i32
  %cmp53 = icmp eq i32 %conv52, 0
  br i1 %cmp53, label %if.then.55, label %if.end.232

if.then.55:                                       ; preds = %lor.lhs.false.50, %land.lhs.true.45
  %42 = load i8*, i8** %p, align 8
  %arrayidx56 = getelementptr inbounds i8, i8* %42, i64 0
  %43 = load i8, i8* %arrayidx56, align 1
  %conv57 = sext i8 %43 to i32
  %sub = sub nsw i32 %conv57, 48
  store i32 %sub, i32* %j, align 4
  %44 = load i32, i32* %j, align 4
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom58
  %45 = load i32, i32* %arrayidx59, align 4
  %46 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %46 to i64
  %arrayidx61 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom60
  store i32 %45, i32* %arrayidx61, align 4
  %47 = load i32, i32* %j, align 4
  %idxprom62 = sext i32 %47 to i64
  %arrayidx63 = getelementptr inbounds [30 x i32], [30 x i32]* %allows_mem, i32 0, i64 %idxprom62
  %48 = load i32, i32* %arrayidx63, align 4
  %49 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %49 to i64
  %arrayidx65 = getelementptr inbounds [30 x i32], [30 x i32]* %allows_mem, i32 0, i64 %idxprom64
  store i32 %48, i32* %arrayidx65, align 4
  %50 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load66 = load i32, i32* %51, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp ne i32 %bf.clear67, 61
  br i1 %cmp68, label %if.then.76, label %lor.lhs.false.70

lor.lhs.false.70:                                 ; preds = %if.then.55
  %52 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtuint73 = bitcast %union.rtunion_def* %arrayidx72 to i32*
  %53 = load i32, i32* %rtuint73, align 4
  %cmp74 = icmp ult i32 %53, 53
  br i1 %cmp74, label %if.then.76, label %if.else.91

if.then.76:                                       ; preds = %lor.lhs.false.70, %if.then.55
  %54 = load i32, i32* %j, align 4
  %idxprom77 = sext i32 %54 to i64
  %55 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx78 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %55, i64 %idxprom77
  %56 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx78, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %56, %struct.rtx_def* %57)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.79, label %if.else

if.then.79:                                       ; preds = %if.then.76
  store i32 1, i32* %win, align 4
  br label %if.end.90

if.else:                                          ; preds = %if.then.76
  %58 = load i32, i32* %j, align 4
  %idxprom80 = sext i32 %58 to i64
  %arrayidx81 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom80
  %59 = load i32, i32* %arrayidx81, align 4
  %cmp82 = icmp ne i32 %59, 0
  br i1 %cmp82, label %if.then.84, label %if.end.89

if.then.84:                                       ; preds = %if.else
  %60 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %61 = load i32, i32* %mode, align 4
  %62 = load i32, i32* %j, align 4
  %idxprom85 = sext i32 %62 to i64
  %arrayidx86 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom85
  %63 = load i32, i32* %arrayidx86, align 4
  %call87 = call i32 @copy_cost(%struct.rtx_def* %60, i32 %61, i32 %63, i32 1)
  %64 = load i32, i32* %alt_cost, align 4
  %add88 = add nsw i32 %64, %call87
  store i32 %add88, i32* %alt_cost, align 4
  store i32 1, i32* %win, align 4
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.84, %if.else
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.79
  br label %if.end.231

if.else.91:                                       ; preds = %lor.lhs.false.70
  %65 = load i32, i32* %j, align 4
  %idxprom92 = sext i32 %65 to i64
  %66 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx93 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %66, i64 %idxprom92
  %67 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx93, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load94 = load i32, i32* %68, align 8
  %bf.clear95 = and i32 %bf.load94, 65535
  %cmp96 = icmp ne i32 %bf.clear95, 61
  br i1 %cmp96, label %if.then.106, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.else.91
  %69 = load i32, i32* %j, align 4
  %idxprom99 = sext i32 %69 to i64
  %70 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx100 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %70, i64 %idxprom99
  %71 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx100, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtuint103 = bitcast %union.rtunion_def* %arrayidx102 to i32*
  %72 = load i32, i32* %rtuint103, align 4
  %cmp104 = icmp ult i32 %72, 53
  br i1 %cmp104, label %if.then.106, label %if.else.120

if.then.106:                                      ; preds = %lor.lhs.false.98, %if.else.91
  %73 = load i32, i32* %j, align 4
  %idxprom107 = sext i32 %73 to i64
  %arrayidx108 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom107
  %74 = load i32, i32* %arrayidx108, align 4
  %cmp109 = icmp eq i32 %74, 0
  br i1 %cmp109, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %if.then.106
  store i32 1, i32* %alt_fail, align 4
  br label %if.end.119

if.else.112:                                      ; preds = %if.then.106
  %75 = load i32, i32* %j, align 4
  %idxprom113 = sext i32 %75 to i64
  %76 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx114 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %76, i64 %idxprom113
  %77 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx114, align 8
  %78 = load i32, i32* %mode, align 4
  %79 = load i32, i32* %j, align 4
  %idxprom115 = sext i32 %79 to i64
  %arrayidx116 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom115
  %80 = load i32, i32* %arrayidx116, align 4
  %call117 = call i32 @copy_cost(%struct.rtx_def* %77, i32 %78, i32 %80, i32 1)
  %81 = load i32, i32* %alt_cost, align 4
  %add118 = add nsw i32 %81, %call117
  store i32 %add118, i32* %alt_cost, align 4
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.112, %if.then.111
  br label %if.end.230

if.else.120:                                      ; preds = %lor.lhs.false.98
  %82 = load i32, i32* %i, align 4
  %idxprom121 = sext i32 %82 to i64
  %arrayidx122 = getelementptr inbounds [30 x %struct.costs], [30 x %struct.costs]* %this_op_costs, i32 0, i64 %idxprom121
  store %struct.costs* %arrayidx122, %struct.costs** %pp, align 8
  store i32 0, i32* %class, align 4
  br label %for.cond.123

for.cond.123:                                     ; preds = %for.inc, %if.else.120
  %83 = load i32, i32* %class, align 4
  %cmp124 = icmp slt i32 %83, 25
  br i1 %cmp124, label %for.body.126, label %for.end

for.body.126:                                     ; preds = %for.cond.123
  %84 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %84 to i64
  %arrayidx128 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom127
  %85 = load i32, i32* %arrayidx128, align 4
  %cmp129 = icmp ne i32 %85, 1
  br i1 %cmp129, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.126
  %86 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %86 to i64
  %arrayidx132 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom131
  %87 = load i32, i32* %arrayidx132, align 4
  %idxprom133 = sext i32 %87 to i64
  %88 = load i32, i32* %class, align 4
  %idxprom134 = sext i32 %88 to i64
  %89 = load i32, i32* %mode, align 4
  %idxprom135 = zext i32 %89 to i64
  %arrayidx136 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_in_cost, i32 0, i64 %idxprom135
  %arrayidx137 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx136, i32 0, i64 %idxprom134
  %arrayidx138 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx137, i32 0, i64 %idxprom133
  %90 = load i32, i32* %arrayidx138, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body.126
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %90, %cond.true ], [ 0, %cond.false ]
  %91 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %91 to i64
  %arrayidx140 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom139
  %92 = load i32, i32* %arrayidx140, align 4
  %cmp141 = icmp ne i32 %92, 0
  br i1 %cmp141, label %cond.true.143, label %cond.false.152

cond.true.143:                                    ; preds = %cond.end
  %93 = load i32, i32* %class, align 4
  %idxprom144 = sext i32 %93 to i64
  %94 = load i32, i32* %i, align 4
  %idxprom145 = sext i32 %94 to i64
  %arrayidx146 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom145
  %95 = load i32, i32* %arrayidx146, align 4
  %idxprom147 = sext i32 %95 to i64
  %96 = load i32, i32* %mode, align 4
  %idxprom148 = zext i32 %96 to i64
  %arrayidx149 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_out_cost, i32 0, i64 %idxprom148
  %arrayidx150 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx149, i32 0, i64 %idxprom147
  %arrayidx151 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx150, i32 0, i64 %idxprom144
  %97 = load i32, i32* %arrayidx151, align 4
  br label %cond.end.153

cond.false.152:                                   ; preds = %cond.end
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.152, %cond.true.143
  %cond154 = phi i32 [ %97, %cond.true.143 ], [ 0, %cond.false.152 ]
  %add155 = add nsw i32 %cond, %cond154
  %98 = load i32, i32* %class, align 4
  %idxprom156 = sext i32 %98 to i64
  %99 = load %struct.costs*, %struct.costs** %pp, align 8
  %cost = getelementptr inbounds %struct.costs, %struct.costs* %99, i32 0, i32 0
  %arrayidx157 = getelementptr inbounds [25 x i32], [25 x i32]* %cost, i32 0, i64 %idxprom156
  store i32 %add155, i32* %arrayidx157, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end.153
  %100 = load i32, i32* %class, align 4
  %inc = add nsw i32 %100, 1
  store i32 %inc, i32* %class, align 4
  br label %for.cond.123

for.end:                                          ; preds = %for.cond.123
  %101 = load i32, i32* %i, align 4
  %idxprom158 = sext i32 %101 to i64
  %arrayidx159 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom158
  %102 = load i32, i32* %arrayidx159, align 4
  %cmp160 = icmp ne i32 %102, 0
  br i1 %cmp160, label %cond.true.162, label %cond.false.166

cond.true.162:                                    ; preds = %for.end
  %103 = load i32, i32* %mode, align 4
  %104 = load i32, i32* %i, align 4
  %idxprom163 = sext i32 %104 to i64
  %arrayidx164 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom163
  %105 = load i32, i32* %arrayidx164, align 4
  %call165 = call i32 @ix86_memory_move_cost(i32 %103, i32 %105, i32 0)
  br label %cond.end.167

cond.false.166:                                   ; preds = %for.end
  br label %cond.end.167

cond.end.167:                                     ; preds = %cond.false.166, %cond.true.162
  %cond168 = phi i32 [ %call165, %cond.true.162 ], [ 0, %cond.false.166 ]
  %106 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %106 to i64
  %arrayidx170 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom169
  %107 = load i32, i32* %arrayidx170, align 4
  %cmp171 = icmp ne i32 %107, 1
  br i1 %cmp171, label %cond.true.173, label %cond.false.177

cond.true.173:                                    ; preds = %cond.end.167
  %108 = load i32, i32* %mode, align 4
  %109 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %109 to i64
  %arrayidx175 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom174
  %110 = load i32, i32* %arrayidx175, align 4
  %call176 = call i32 @ix86_memory_move_cost(i32 %108, i32 %110, i32 1)
  br label %cond.end.178

cond.false.177:                                   ; preds = %cond.end.167
  br label %cond.end.178

cond.end.178:                                     ; preds = %cond.false.177, %cond.true.173
  %cond179 = phi i32 [ %call176, %cond.true.173 ], [ 0, %cond.false.177 ]
  %add180 = add nsw i32 %cond168, %cond179
  %111 = load i32, i32* %i, align 4
  %idxprom181 = sext i32 %111 to i64
  %arrayidx182 = getelementptr inbounds [30 x i32], [30 x i32]* %allows_mem, i32 0, i64 %idxprom181
  %112 = load i32, i32* %arrayidx182, align 4
  %sub183 = sub nsw i32 %add180, %112
  %113 = load %struct.costs*, %struct.costs** %pp, align 8
  %mem_cost = getelementptr inbounds %struct.costs, %struct.costs* %113, i32 0, i32 1
  store i32 %sub183, i32* %mem_cost, align 4
  %114 = load %struct.reg_pref*, %struct.reg_pref** %reg_pref.addr, align 8
  %tobool184 = icmp ne %struct.reg_pref* %114, null
  br i1 %tobool184, label %if.then.185, label %if.end.200

if.then.185:                                      ; preds = %cond.end.178
  %115 = load i32, i32* %i, align 4
  %idxprom186 = sext i32 %115 to i64
  %arrayidx187 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom186
  %116 = load i32, i32* %arrayidx187, align 4
  %idxprom188 = sext i32 %116 to i64
  %117 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 0
  %rtuint191 = bitcast %union.rtunion_def* %arrayidx190 to i32*
  %118 = load i32, i32* %rtuint191, align 4
  %idxprom192 = zext i32 %118 to i64
  %119 = load %struct.reg_pref*, %struct.reg_pref** %reg_pref.addr, align 8
  %arrayidx193 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %119, i64 %idxprom192
  %prefclass = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %arrayidx193, i32 0, i32 0
  %120 = load i8, i8* %prefclass, align 1
  %idxprom194 = zext i8 %120 to i64
  %121 = load i32, i32* %mode, align 4
  %idxprom195 = zext i32 %121 to i64
  %arrayidx196 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_in_cost, i32 0, i64 %idxprom195
  %arrayidx197 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx196, i32 0, i64 %idxprom194
  %arrayidx198 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx197, i32 0, i64 %idxprom188
  %122 = load i32, i32* %arrayidx198, align 4
  %123 = load i32, i32* %alt_cost, align 4
  %add199 = add nsw i32 %123, %122
  store i32 %add199, i32* %alt_cost, align 4
  br label %if.end.200

if.end.200:                                       ; preds = %if.then.185, %cond.end.178
  %124 = load i32, i32* %i, align 4
  %idxprom201 = sext i32 %124 to i64
  %125 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx202 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %125, i64 %idxprom201
  %126 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx202, align 8
  %fld203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld203, i32 0, i64 0
  %rtuint205 = bitcast %union.rtunion_def* %arrayidx204 to i32*
  %127 = load i32, i32* %rtuint205, align 4
  %128 = load i32, i32* %j, align 4
  %idxprom206 = sext i32 %128 to i64
  %129 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx207 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %129, i64 %idxprom206
  %130 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx207, align 8
  %fld208 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %130, i32 0, i32 1
  %arrayidx209 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld208, i32 0, i64 0
  %rtuint210 = bitcast %union.rtunion_def* %arrayidx209 to i32*
  %131 = load i32, i32* %rtuint210, align 4
  %cmp211 = icmp ne i32 %127, %131
  br i1 %cmp211, label %land.lhs.true.213, label %if.end.218

land.lhs.true.213:                                ; preds = %if.end.200
  %132 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %133 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call214 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %132, i32 1, %struct.rtx_def* %133)
  %tobool215 = icmp ne %struct.rtx_def* %call214, null
  br i1 %tobool215, label %if.end.218, label %if.then.216

if.then.216:                                      ; preds = %land.lhs.true.213
  %134 = load i32, i32* %alt_cost, align 4
  %add217 = add nsw i32 %134, 2
  store i32 %add217, i32* %alt_cost, align 4
  br label %if.end.218

if.end.218:                                       ; preds = %if.then.216, %land.lhs.true.213, %if.end.200
  br label %while.cond.219

while.cond.219:                                   ; preds = %while.body.226, %if.end.218
  %135 = load i8*, i8** %p, align 8
  %136 = load i8, i8* %135, align 1
  %conv220 = sext i8 %136 to i32
  %tobool221 = icmp ne i32 %conv220, 0
  br i1 %tobool221, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.219
  %137 = load i8*, i8** %p, align 8
  %incdec.ptr222 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr222, i8** %p, align 8
  %138 = load i8, i8* %137, align 1
  %conv223 = sext i8 %138 to i32
  %cmp224 = icmp ne i32 %conv223, 44
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.219
  %139 = phi i1 [ false, %while.cond.219 ], [ %cmp224, %land.rhs ]
  br i1 %139, label %while.body.226, label %while.end.227

while.body.226:                                   ; preds = %land.end
  br label %while.cond.219

while.end.227:                                    ; preds = %land.end
  %140 = load i8*, i8** %p, align 8
  %141 = load i32, i32* %i, align 4
  %idxprom228 = sext i32 %141 to i64
  %142 = load i8**, i8*** %constraints.addr, align 8
  %arrayidx229 = getelementptr inbounds i8*, i8** %142, i64 %idxprom228
  store i8* %140, i8** %arrayidx229, align 8
  br label %for.inc.1176

if.end.230:                                       ; preds = %if.end.119
  br label %if.end.231

if.end.231:                                       ; preds = %if.end.230, %if.end.90
  br label %if.end.232

if.end.232:                                       ; preds = %if.end.231, %lor.lhs.false.50, %land.lhs.true.40, %while.end
  br label %while.cond.233

while.cond.233:                                   ; preds = %sw.epilog, %if.end.232
  %143 = load i8*, i8** %p, align 8
  %144 = load i8, i8* %143, align 1
  %conv234 = sext i8 %144 to i32
  %tobool235 = icmp ne i32 %conv234, 0
  br i1 %tobool235, label %land.rhs.236, label %land.end.241

land.rhs.236:                                     ; preds = %while.cond.233
  %145 = load i8*, i8** %p, align 8
  %incdec.ptr237 = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr237, i8** %p, align 8
  %146 = load i8, i8* %145, align 1
  store i8 %146, i8* %c, align 1
  %conv238 = zext i8 %146 to i32
  %cmp239 = icmp ne i32 %conv238, 44
  br label %land.end.241

land.end.241:                                     ; preds = %land.rhs.236, %while.cond.233
  %147 = phi i1 [ false, %while.cond.233 ], [ %cmp239, %land.rhs.236 ]
  br i1 %147, label %while.body.242, label %while.end.966

while.body.242:                                   ; preds = %land.end.241
  %148 = load i8, i8* %c, align 1
  %conv243 = zext i8 %148 to i32
  switch i32 %conv243, label %sw.default [
    i32 42, label %sw.bb
    i32 63, label %sw.bb.245
    i32 33, label %sw.bb.247
    i32 35, label %sw.bb.247
    i32 38, label %sw.bb.247
    i32 48, label %sw.bb.247
    i32 49, label %sw.bb.247
    i32 50, label %sw.bb.247
    i32 51, label %sw.bb.247
    i32 52, label %sw.bb.247
    i32 53, label %sw.bb.247
    i32 54, label %sw.bb.247
    i32 55, label %sw.bb.247
    i32 56, label %sw.bb.247
    i32 57, label %sw.bb.247
    i32 112, label %sw.bb.248
    i32 109, label %sw.bb.259
    i32 111, label %sw.bb.259
    i32 86, label %sw.bb.259
    i32 60, label %sw.bb.268
    i32 62, label %sw.bb.290
    i32 69, label %sw.bb.313
    i32 70, label %sw.bb.320
    i32 71, label %sw.bb.327
    i32 72, label %sw.bb.327
    i32 115, label %sw.bb.349
    i32 105, label %sw.bb.367
    i32 110, label %sw.bb.432
    i32 73, label %sw.bb.450
    i32 74, label %sw.bb.450
    i32 75, label %sw.bb.450
    i32 76, label %sw.bb.450
    i32 77, label %sw.bb.450
    i32 78, label %sw.bb.450
    i32 79, label %sw.bb.450
    i32 80, label %sw.bb.450
    i32 88, label %sw.bb.553
    i32 103, label %sw.bb.554
    i32 114, label %sw.bb.626
  ]

sw.bb:                                            ; preds = %while.body.242
  %149 = load i8*, i8** %p, align 8
  %incdec.ptr244 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr244, i8** %p, align 8
  br label %sw.epilog

sw.bb.245:                                        ; preds = %while.body.242
  %150 = load i32, i32* %alt_cost, align 4
  %add246 = add nsw i32 %150, 2
  store i32 %add246, i32* %alt_cost, align 4
  br label %sw.bb.247

sw.bb.247:                                        ; preds = %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %sw.bb.245
  br label %sw.epilog

sw.bb.248:                                        ; preds = %while.body.242
  store i32 1, i32* %allows_addr, align 4
  %151 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %152 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %bf.load249 = load i32, i32* %153, align 8
  %bf.lshr = lshr i32 %bf.load249, 16
  %bf.clear250 = and i32 %bf.lshr, 255
  %call251 = call i32 @address_operand(%struct.rtx_def* %151, i32 %bf.clear250)
  store i32 %call251, i32* %win, align 4
  %154 = load i32, i32* %i, align 4
  %idxprom252 = sext i32 %154 to i64
  %arrayidx253 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom252
  %155 = load i32, i32* %arrayidx253, align 4
  %idxprom254 = sext i32 %155 to i64
  %arrayidx255 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subunion, i32 0, i64 %idxprom254
  %arrayidx256 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx255, i32 0, i64 12
  %156 = load i32, i32* %arrayidx256, align 4
  %157 = load i32, i32* %i, align 4
  %idxprom257 = sext i32 %157 to i64
  %arrayidx258 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom257
  store i32 %156, i32* %arrayidx258, align 4
  br label %sw.epilog

sw.bb.259:                                        ; preds = %while.body.242, %while.body.242, %while.body.242
  %158 = load i32, i32* %i, align 4
  %idxprom260 = sext i32 %158 to i64
  %arrayidx261 = getelementptr inbounds [30 x i32], [30 x i32]* %allows_mem, i32 0, i64 %idxprom260
  store i32 1, i32* %arrayidx261, align 4
  %159 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %160 = bitcast %struct.rtx_def* %159 to i32*
  %bf.load262 = load i32, i32* %160, align 8
  %bf.clear263 = and i32 %bf.load262, 65535
  %cmp264 = icmp eq i32 %bf.clear263, 66
  br i1 %cmp264, label %if.then.266, label %if.end.267

if.then.266:                                      ; preds = %sw.bb.259
  store i32 1, i32* %win, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %if.then.266, %sw.bb.259
  br label %sw.epilog

sw.bb.268:                                        ; preds = %while.body.242
  %161 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %162 = bitcast %struct.rtx_def* %161 to i32*
  %bf.load269 = load i32, i32* %162, align 8
  %bf.clear270 = and i32 %bf.load269, 65535
  %cmp271 = icmp eq i32 %bf.clear270, 66
  br i1 %cmp271, label %land.lhs.true.273, label %if.end.289

land.lhs.true.273:                                ; preds = %sw.bb.268
  %163 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld274 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %163, i32 0, i32 1
  %arrayidx275 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld274, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx275 to %struct.rtx_def**
  %164 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %165 = bitcast %struct.rtx_def* %164 to i32*
  %bf.load276 = load i32, i32* %165, align 8
  %bf.clear277 = and i32 %bf.load276, 65535
  %cmp278 = icmp eq i32 %bf.clear277, 96
  br i1 %cmp278, label %if.then.288, label %lor.lhs.false.280

lor.lhs.false.280:                                ; preds = %land.lhs.true.273
  %166 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld281 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %166, i32 0, i32 1
  %arrayidx282 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld281, i32 0, i64 0
  %rtx283 = bitcast %union.rtunion_def* %arrayidx282 to %struct.rtx_def**
  %167 = load %struct.rtx_def*, %struct.rtx_def** %rtx283, align 8
  %168 = bitcast %struct.rtx_def* %167 to i32*
  %bf.load284 = load i32, i32* %168, align 8
  %bf.clear285 = and i32 %bf.load284, 65535
  %cmp286 = icmp eq i32 %bf.clear285, 98
  br i1 %cmp286, label %if.then.288, label %if.end.289

if.then.288:                                      ; preds = %lor.lhs.false.280, %land.lhs.true.273
  store i32 1, i32* %win, align 4
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.288, %lor.lhs.false.280, %sw.bb.268
  br label %sw.epilog

sw.bb.290:                                        ; preds = %while.body.242
  %169 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %170 = bitcast %struct.rtx_def* %169 to i32*
  %bf.load291 = load i32, i32* %170, align 8
  %bf.clear292 = and i32 %bf.load291, 65535
  %cmp293 = icmp eq i32 %bf.clear292, 66
  br i1 %cmp293, label %land.lhs.true.295, label %if.end.312

land.lhs.true.295:                                ; preds = %sw.bb.290
  %171 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld296 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %arrayidx297 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld296, i32 0, i64 0
  %rtx298 = bitcast %union.rtunion_def* %arrayidx297 to %struct.rtx_def**
  %172 = load %struct.rtx_def*, %struct.rtx_def** %rtx298, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %bf.load299 = load i32, i32* %173, align 8
  %bf.clear300 = and i32 %bf.load299, 65535
  %cmp301 = icmp eq i32 %bf.clear300, 97
  br i1 %cmp301, label %if.then.311, label %lor.lhs.false.303

lor.lhs.false.303:                                ; preds = %land.lhs.true.295
  %174 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld304 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %174, i32 0, i32 1
  %arrayidx305 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld304, i32 0, i64 0
  %rtx306 = bitcast %union.rtunion_def* %arrayidx305 to %struct.rtx_def**
  %175 = load %struct.rtx_def*, %struct.rtx_def** %rtx306, align 8
  %176 = bitcast %struct.rtx_def* %175 to i32*
  %bf.load307 = load i32, i32* %176, align 8
  %bf.clear308 = and i32 %bf.load307, 65535
  %cmp309 = icmp eq i32 %bf.clear308, 99
  br i1 %cmp309, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %lor.lhs.false.303, %land.lhs.true.295
  store i32 1, i32* %win, align 4
  br label %if.end.312

if.end.312:                                       ; preds = %if.then.311, %lor.lhs.false.303, %sw.bb.290
  br label %sw.epilog

sw.bb.313:                                        ; preds = %while.body.242
  %177 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %178 = bitcast %struct.rtx_def* %177 to i32*
  %bf.load314 = load i32, i32* %178, align 8
  %bf.clear315 = and i32 %bf.load314, 65535
  %cmp316 = icmp eq i32 %bf.clear315, 55
  br i1 %cmp316, label %if.then.318, label %if.end.319

if.then.318:                                      ; preds = %sw.bb.313
  store i32 1, i32* %win, align 4
  br label %if.end.319

if.end.319:                                       ; preds = %if.then.318, %sw.bb.313
  br label %sw.epilog

sw.bb.320:                                        ; preds = %while.body.242
  %179 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %180 = bitcast %struct.rtx_def* %179 to i32*
  %bf.load321 = load i32, i32* %180, align 8
  %bf.clear322 = and i32 %bf.load321, 65535
  %cmp323 = icmp eq i32 %bf.clear322, 55
  br i1 %cmp323, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %sw.bb.320
  store i32 1, i32* %win, align 4
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.325, %sw.bb.320
  br label %sw.epilog

sw.bb.327:                                        ; preds = %while.body.242, %while.body.242
  %181 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %182 = bitcast %struct.rtx_def* %181 to i32*
  %bf.load328 = load i32, i32* %182, align 8
  %bf.clear329 = and i32 %bf.load328, 65535
  %cmp330 = icmp eq i32 %bf.clear329, 55
  br i1 %cmp330, label %land.lhs.true.332, label %if.end.348

land.lhs.true.332:                                ; preds = %sw.bb.327
  %183 = load i8, i8* %c, align 1
  %conv333 = zext i8 %183 to i32
  %cmp334 = icmp eq i32 %conv333, 71
  br i1 %cmp334, label %cond.true.336, label %cond.false.339

cond.true.336:                                    ; preds = %land.lhs.true.332
  %184 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call337 = call i32 @standard_80387_constant_p(%struct.rtx_def* %184)
  %tobool338 = icmp ne i32 %call337, 0
  br i1 %tobool338, label %if.then.347, label %if.end.348

cond.false.339:                                   ; preds = %land.lhs.true.332
  %185 = load i8, i8* %c, align 1
  %conv340 = zext i8 %185 to i32
  %cmp341 = icmp eq i32 %conv340, 72
  br i1 %cmp341, label %cond.true.343, label %cond.false.346

cond.true.343:                                    ; preds = %cond.false.339
  %186 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call344 = call i32 @standard_sse_constant_p(%struct.rtx_def* %186)
  %tobool345 = icmp ne i32 %call344, 0
  br i1 %tobool345, label %if.then.347, label %if.end.348

cond.false.346:                                   ; preds = %cond.false.339
  br i1 false, label %if.then.347, label %if.end.348

if.then.347:                                      ; preds = %cond.false.346, %cond.true.343, %cond.true.336
  store i32 1, i32* %win, align 4
  br label %if.end.348

if.end.348:                                       ; preds = %if.then.347, %cond.false.346, %cond.true.343, %cond.true.336, %sw.bb.327
  br label %sw.epilog

sw.bb.349:                                        ; preds = %while.body.242
  %187 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %188 = bitcast %struct.rtx_def* %187 to i32*
  %bf.load350 = load i32, i32* %188, align 8
  %bf.clear351 = and i32 %bf.load350, 65535
  %cmp352 = icmp eq i32 %bf.clear351, 54
  br i1 %cmp352, label %if.then.365, label %lor.lhs.false.354

lor.lhs.false.354:                                ; preds = %sw.bb.349
  %189 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %190 = bitcast %struct.rtx_def* %189 to i32*
  %bf.load355 = load i32, i32* %190, align 8
  %bf.clear356 = and i32 %bf.load355, 65535
  %cmp357 = icmp eq i32 %bf.clear356, 55
  br i1 %cmp357, label %land.lhs.true.359, label %if.end.366

land.lhs.true.359:                                ; preds = %lor.lhs.false.354
  %191 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %192 = bitcast %struct.rtx_def* %191 to i32*
  %bf.load360 = load i32, i32* %192, align 8
  %bf.lshr361 = lshr i32 %bf.load360, 16
  %bf.clear362 = and i32 %bf.lshr361, 255
  %cmp363 = icmp eq i32 %bf.clear362, 0
  br i1 %cmp363, label %if.then.365, label %if.end.366

if.then.365:                                      ; preds = %land.lhs.true.359, %sw.bb.349
  br label %sw.epilog

if.end.366:                                       ; preds = %land.lhs.true.359, %lor.lhs.false.354
  br label %sw.bb.367

sw.bb.367:                                        ; preds = %while.body.242, %if.end.366
  %193 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %194 = bitcast %struct.rtx_def* %193 to i32*
  %bf.load368 = load i32, i32* %194, align 8
  %bf.clear369 = and i32 %bf.load368, 65535
  %cmp370 = icmp eq i32 %bf.clear369, 67
  br i1 %cmp370, label %land.lhs.true.407, label %lor.lhs.false.372

lor.lhs.false.372:                                ; preds = %sw.bb.367
  %195 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %196 = bitcast %struct.rtx_def* %195 to i32*
  %bf.load373 = load i32, i32* %196, align 8
  %bf.clear374 = and i32 %bf.load373, 65535
  %cmp375 = icmp eq i32 %bf.clear374, 68
  br i1 %cmp375, label %land.lhs.true.407, label %lor.lhs.false.377

lor.lhs.false.377:                                ; preds = %lor.lhs.false.372
  %197 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %198 = bitcast %struct.rtx_def* %197 to i32*
  %bf.load378 = load i32, i32* %198, align 8
  %bf.clear379 = and i32 %bf.load378, 65535
  %cmp380 = icmp eq i32 %bf.clear379, 54
  br i1 %cmp380, label %land.lhs.true.407, label %lor.lhs.false.382

lor.lhs.false.382:                                ; preds = %lor.lhs.false.377
  %199 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %200 = bitcast %struct.rtx_def* %199 to i32*
  %bf.load383 = load i32, i32* %200, align 8
  %bf.clear384 = and i32 %bf.load383, 65535
  %cmp385 = icmp eq i32 %bf.clear384, 55
  br i1 %cmp385, label %land.lhs.true.407, label %lor.lhs.false.387

lor.lhs.false.387:                                ; preds = %lor.lhs.false.382
  %201 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %202 = bitcast %struct.rtx_def* %201 to i32*
  %bf.load388 = load i32, i32* %202, align 8
  %bf.clear389 = and i32 %bf.load388, 65535
  %cmp390 = icmp eq i32 %bf.clear389, 58
  br i1 %cmp390, label %land.lhs.true.407, label %lor.lhs.false.392

lor.lhs.false.392:                                ; preds = %lor.lhs.false.387
  %203 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %204 = bitcast %struct.rtx_def* %203 to i32*
  %bf.load393 = load i32, i32* %204, align 8
  %bf.clear394 = and i32 %bf.load393, 65535
  %cmp395 = icmp eq i32 %bf.clear394, 134
  br i1 %cmp395, label %land.lhs.true.407, label %lor.lhs.false.397

lor.lhs.false.397:                                ; preds = %lor.lhs.false.392
  %205 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %206 = bitcast %struct.rtx_def* %205 to i32*
  %bf.load398 = load i32, i32* %206, align 8
  %bf.clear399 = and i32 %bf.load398, 65535
  %cmp400 = icmp eq i32 %bf.clear399, 56
  br i1 %cmp400, label %land.lhs.true.407, label %lor.lhs.false.402

lor.lhs.false.402:                                ; preds = %lor.lhs.false.397
  %207 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %208 = bitcast %struct.rtx_def* %207 to i32*
  %bf.load403 = load i32, i32* %208, align 8
  %bf.clear404 = and i32 %bf.load403, 65535
  %cmp405 = icmp eq i32 %bf.clear404, 140
  br i1 %cmp405, label %land.lhs.true.407, label %if.end.431

land.lhs.true.407:                                ; preds = %lor.lhs.false.402, %lor.lhs.false.397, %lor.lhs.false.392, %lor.lhs.false.387, %lor.lhs.false.382, %lor.lhs.false.377, %lor.lhs.false.372, %sw.bb.367
  %209 = load i32, i32* @flag_pic, align 4
  %tobool408 = icmp ne i32 %209, 0
  br i1 %tobool408, label %lor.lhs.false.409, label %if.then.430

lor.lhs.false.409:                                ; preds = %land.lhs.true.407
  %210 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %211 = bitcast %struct.rtx_def* %210 to i32*
  %bf.load410 = load i32, i32* %211, align 8
  %bf.clear411 = and i32 %bf.load410, 65535
  %cmp412 = icmp eq i32 %bf.clear411, 68
  br i1 %cmp412, label %lor.lhs.false.427, label %lor.lhs.false.414

lor.lhs.false.414:                                ; preds = %lor.lhs.false.409
  %212 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %213 = bitcast %struct.rtx_def* %212 to i32*
  %bf.load415 = load i32, i32* %213, align 8
  %bf.clear416 = and i32 %bf.load415, 65535
  %cmp417 = icmp eq i32 %bf.clear416, 67
  br i1 %cmp417, label %lor.lhs.false.427, label %lor.lhs.false.419

lor.lhs.false.419:                                ; preds = %lor.lhs.false.414
  %214 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %215 = bitcast %struct.rtx_def* %214 to i32*
  %bf.load420 = load i32, i32* %215, align 8
  %bf.clear421 = and i32 %bf.load420, 65535
  %cmp422 = icmp eq i32 %bf.clear421, 58
  br i1 %cmp422, label %land.lhs.true.424, label %if.then.430

land.lhs.true.424:                                ; preds = %lor.lhs.false.419
  %216 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call425 = call i32 @symbolic_reference_mentioned_p(%struct.rtx_def* %216)
  %tobool426 = icmp ne i32 %call425, 0
  br i1 %tobool426, label %lor.lhs.false.427, label %if.then.430

lor.lhs.false.427:                                ; preds = %land.lhs.true.424, %lor.lhs.false.414, %lor.lhs.false.409
  %217 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call428 = call i32 @legitimate_pic_address_disp_p(%struct.rtx_def* %217)
  %tobool429 = icmp ne i32 %call428, 0
  br i1 %tobool429, label %if.then.430, label %if.end.431

if.then.430:                                      ; preds = %lor.lhs.false.427, %land.lhs.true.424, %lor.lhs.false.419, %land.lhs.true.407
  store i32 1, i32* %win, align 4
  br label %if.end.431

if.end.431:                                       ; preds = %if.then.430, %lor.lhs.false.427, %lor.lhs.false.402
  br label %sw.epilog

sw.bb.432:                                        ; preds = %while.body.242
  %218 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %219 = bitcast %struct.rtx_def* %218 to i32*
  %bf.load433 = load i32, i32* %219, align 8
  %bf.clear434 = and i32 %bf.load433, 65535
  %cmp435 = icmp eq i32 %bf.clear434, 54
  br i1 %cmp435, label %if.then.448, label %lor.lhs.false.437

lor.lhs.false.437:                                ; preds = %sw.bb.432
  %220 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %221 = bitcast %struct.rtx_def* %220 to i32*
  %bf.load438 = load i32, i32* %221, align 8
  %bf.clear439 = and i32 %bf.load438, 65535
  %cmp440 = icmp eq i32 %bf.clear439, 55
  br i1 %cmp440, label %land.lhs.true.442, label %if.end.449

land.lhs.true.442:                                ; preds = %lor.lhs.false.437
  %222 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %223 = bitcast %struct.rtx_def* %222 to i32*
  %bf.load443 = load i32, i32* %223, align 8
  %bf.lshr444 = lshr i32 %bf.load443, 16
  %bf.clear445 = and i32 %bf.lshr444, 255
  %cmp446 = icmp eq i32 %bf.clear445, 0
  br i1 %cmp446, label %if.then.448, label %if.end.449

if.then.448:                                      ; preds = %land.lhs.true.442, %sw.bb.432
  store i32 1, i32* %win, align 4
  br label %if.end.449

if.end.449:                                       ; preds = %if.then.448, %land.lhs.true.442, %lor.lhs.false.437
  br label %sw.epilog

sw.bb.450:                                        ; preds = %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242, %while.body.242
  %224 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %225 = bitcast %struct.rtx_def* %224 to i32*
  %bf.load451 = load i32, i32* %225, align 8
  %bf.clear452 = and i32 %bf.load451, 65535
  %cmp453 = icmp eq i32 %bf.clear452, 54
  br i1 %cmp453, label %land.lhs.true.455, label %if.end.552

land.lhs.true.455:                                ; preds = %sw.bb.450
  %226 = load i8, i8* %c, align 1
  %conv456 = zext i8 %226 to i32
  %cmp457 = icmp eq i32 %conv456, 73
  br i1 %cmp457, label %cond.true.459, label %cond.false.470

cond.true.459:                                    ; preds = %land.lhs.true.455
  %227 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld460 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %227, i32 0, i32 1
  %arrayidx461 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld460, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx461 to i64*
  %228 = load i64, i64* %rtwint, align 8
  %cmp462 = icmp sge i64 %228, 0
  br i1 %cmp462, label %land.lhs.true.464, label %if.end.552

land.lhs.true.464:                                ; preds = %cond.true.459
  %229 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld465 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %229, i32 0, i32 1
  %arrayidx466 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld465, i32 0, i64 0
  %rtwint467 = bitcast %union.rtunion_def* %arrayidx466 to i64*
  %230 = load i64, i64* %rtwint467, align 8
  %cmp468 = icmp sle i64 %230, 31
  br i1 %cmp468, label %if.then.551, label %if.end.552

cond.false.470:                                   ; preds = %land.lhs.true.455
  %231 = load i8, i8* %c, align 1
  %conv471 = zext i8 %231 to i32
  %cmp472 = icmp eq i32 %conv471, 74
  br i1 %cmp472, label %cond.true.474, label %cond.false.486

cond.true.474:                                    ; preds = %cond.false.470
  %232 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld475 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %232, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld475, i32 0, i64 0
  %rtwint477 = bitcast %union.rtunion_def* %arrayidx476 to i64*
  %233 = load i64, i64* %rtwint477, align 8
  %cmp478 = icmp sge i64 %233, 0
  br i1 %cmp478, label %land.lhs.true.480, label %if.end.552

land.lhs.true.480:                                ; preds = %cond.true.474
  %234 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld481 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %234, i32 0, i32 1
  %arrayidx482 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld481, i32 0, i64 0
  %rtwint483 = bitcast %union.rtunion_def* %arrayidx482 to i64*
  %235 = load i64, i64* %rtwint483, align 8
  %cmp484 = icmp sle i64 %235, 63
  br i1 %cmp484, label %if.then.551, label %if.end.552

cond.false.486:                                   ; preds = %cond.false.470
  %236 = load i8, i8* %c, align 1
  %conv487 = zext i8 %236 to i32
  %cmp488 = icmp eq i32 %conv487, 75
  br i1 %cmp488, label %cond.true.490, label %cond.false.502

cond.true.490:                                    ; preds = %cond.false.486
  %237 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld491 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %237, i32 0, i32 1
  %arrayidx492 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld491, i32 0, i64 0
  %rtwint493 = bitcast %union.rtunion_def* %arrayidx492 to i64*
  %238 = load i64, i64* %rtwint493, align 8
  %cmp494 = icmp sge i64 %238, -128
  br i1 %cmp494, label %land.lhs.true.496, label %if.end.552

land.lhs.true.496:                                ; preds = %cond.true.490
  %239 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld497 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %239, i32 0, i32 1
  %arrayidx498 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld497, i32 0, i64 0
  %rtwint499 = bitcast %union.rtunion_def* %arrayidx498 to i64*
  %240 = load i64, i64* %rtwint499, align 8
  %cmp500 = icmp sle i64 %240, 127
  br i1 %cmp500, label %if.then.551, label %if.end.552

cond.false.502:                                   ; preds = %cond.false.486
  %241 = load i8, i8* %c, align 1
  %conv503 = zext i8 %241 to i32
  %cmp504 = icmp eq i32 %conv503, 76
  br i1 %cmp504, label %cond.true.506, label %cond.false.518

cond.true.506:                                    ; preds = %cond.false.502
  %242 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld507 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %242, i32 0, i32 1
  %arrayidx508 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld507, i32 0, i64 0
  %rtwint509 = bitcast %union.rtunion_def* %arrayidx508 to i64*
  %243 = load i64, i64* %rtwint509, align 8
  %cmp510 = icmp eq i64 %243, 255
  br i1 %cmp510, label %if.then.551, label %lor.lhs.false.512

lor.lhs.false.512:                                ; preds = %cond.true.506
  %244 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld513 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %244, i32 0, i32 1
  %arrayidx514 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld513, i32 0, i64 0
  %rtwint515 = bitcast %union.rtunion_def* %arrayidx514 to i64*
  %245 = load i64, i64* %rtwint515, align 8
  %cmp516 = icmp eq i64 %245, 65535
  br i1 %cmp516, label %if.then.551, label %if.end.552

cond.false.518:                                   ; preds = %cond.false.502
  %246 = load i8, i8* %c, align 1
  %conv519 = zext i8 %246 to i32
  %cmp520 = icmp eq i32 %conv519, 77
  br i1 %cmp520, label %cond.true.522, label %cond.false.534

cond.true.522:                                    ; preds = %cond.false.518
  %247 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld523 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %247, i32 0, i32 1
  %arrayidx524 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld523, i32 0, i64 0
  %rtwint525 = bitcast %union.rtunion_def* %arrayidx524 to i64*
  %248 = load i64, i64* %rtwint525, align 8
  %cmp526 = icmp sge i64 %248, 0
  br i1 %cmp526, label %land.lhs.true.528, label %if.end.552

land.lhs.true.528:                                ; preds = %cond.true.522
  %249 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld529 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %249, i32 0, i32 1
  %arrayidx530 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld529, i32 0, i64 0
  %rtwint531 = bitcast %union.rtunion_def* %arrayidx530 to i64*
  %250 = load i64, i64* %rtwint531, align 8
  %cmp532 = icmp sle i64 %250, 3
  br i1 %cmp532, label %if.then.551, label %if.end.552

cond.false.534:                                   ; preds = %cond.false.518
  %251 = load i8, i8* %c, align 1
  %conv535 = zext i8 %251 to i32
  %cmp536 = icmp eq i32 %conv535, 78
  br i1 %cmp536, label %cond.true.538, label %cond.false.550

cond.true.538:                                    ; preds = %cond.false.534
  %252 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld539 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %252, i32 0, i32 1
  %arrayidx540 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld539, i32 0, i64 0
  %rtwint541 = bitcast %union.rtunion_def* %arrayidx540 to i64*
  %253 = load i64, i64* %rtwint541, align 8
  %cmp542 = icmp sge i64 %253, 0
  br i1 %cmp542, label %land.lhs.true.544, label %if.end.552

land.lhs.true.544:                                ; preds = %cond.true.538
  %254 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld545 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %254, i32 0, i32 1
  %arrayidx546 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld545, i32 0, i64 0
  %rtwint547 = bitcast %union.rtunion_def* %arrayidx546 to i64*
  %255 = load i64, i64* %rtwint547, align 8
  %cmp548 = icmp sle i64 %255, 255
  br i1 %cmp548, label %if.then.551, label %if.end.552

cond.false.550:                                   ; preds = %cond.false.534
  br i1 false, label %if.then.551, label %if.end.552

if.then.551:                                      ; preds = %cond.false.550, %land.lhs.true.544, %land.lhs.true.528, %lor.lhs.false.512, %cond.true.506, %land.lhs.true.496, %land.lhs.true.480, %land.lhs.true.464
  store i32 1, i32* %win, align 4
  br label %if.end.552

if.end.552:                                       ; preds = %if.then.551, %cond.false.550, %land.lhs.true.544, %cond.true.538, %land.lhs.true.528, %cond.true.522, %lor.lhs.false.512, %land.lhs.true.496, %cond.true.490, %land.lhs.true.480, %cond.true.474, %land.lhs.true.464, %cond.true.459, %sw.bb.450
  br label %sw.epilog

sw.bb.553:                                        ; preds = %while.body.242
  store i32 1, i32* %win, align 4
  br label %sw.epilog

sw.bb.554:                                        ; preds = %while.body.242
  %256 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %257 = bitcast %struct.rtx_def* %256 to i32*
  %bf.load555 = load i32, i32* %257, align 8
  %bf.clear556 = and i32 %bf.load555, 65535
  %cmp557 = icmp eq i32 %bf.clear556, 66
  br i1 %cmp557, label %if.then.622, label %lor.lhs.false.559

lor.lhs.false.559:                                ; preds = %sw.bb.554
  %258 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %259 = bitcast %struct.rtx_def* %258 to i32*
  %bf.load560 = load i32, i32* %259, align 8
  %bf.clear561 = and i32 %bf.load560, 65535
  %cmp562 = icmp eq i32 %bf.clear561, 67
  br i1 %cmp562, label %land.lhs.true.599, label %lor.lhs.false.564

lor.lhs.false.564:                                ; preds = %lor.lhs.false.559
  %260 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %261 = bitcast %struct.rtx_def* %260 to i32*
  %bf.load565 = load i32, i32* %261, align 8
  %bf.clear566 = and i32 %bf.load565, 65535
  %cmp567 = icmp eq i32 %bf.clear566, 68
  br i1 %cmp567, label %land.lhs.true.599, label %lor.lhs.false.569

lor.lhs.false.569:                                ; preds = %lor.lhs.false.564
  %262 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %263 = bitcast %struct.rtx_def* %262 to i32*
  %bf.load570 = load i32, i32* %263, align 8
  %bf.clear571 = and i32 %bf.load570, 65535
  %cmp572 = icmp eq i32 %bf.clear571, 54
  br i1 %cmp572, label %land.lhs.true.599, label %lor.lhs.false.574

lor.lhs.false.574:                                ; preds = %lor.lhs.false.569
  %264 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %265 = bitcast %struct.rtx_def* %264 to i32*
  %bf.load575 = load i32, i32* %265, align 8
  %bf.clear576 = and i32 %bf.load575, 65535
  %cmp577 = icmp eq i32 %bf.clear576, 55
  br i1 %cmp577, label %land.lhs.true.599, label %lor.lhs.false.579

lor.lhs.false.579:                                ; preds = %lor.lhs.false.574
  %266 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %267 = bitcast %struct.rtx_def* %266 to i32*
  %bf.load580 = load i32, i32* %267, align 8
  %bf.clear581 = and i32 %bf.load580, 65535
  %cmp582 = icmp eq i32 %bf.clear581, 58
  br i1 %cmp582, label %land.lhs.true.599, label %lor.lhs.false.584

lor.lhs.false.584:                                ; preds = %lor.lhs.false.579
  %268 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %269 = bitcast %struct.rtx_def* %268 to i32*
  %bf.load585 = load i32, i32* %269, align 8
  %bf.clear586 = and i32 %bf.load585, 65535
  %cmp587 = icmp eq i32 %bf.clear586, 134
  br i1 %cmp587, label %land.lhs.true.599, label %lor.lhs.false.589

lor.lhs.false.589:                                ; preds = %lor.lhs.false.584
  %270 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %271 = bitcast %struct.rtx_def* %270 to i32*
  %bf.load590 = load i32, i32* %271, align 8
  %bf.clear591 = and i32 %bf.load590, 65535
  %cmp592 = icmp eq i32 %bf.clear591, 56
  br i1 %cmp592, label %land.lhs.true.599, label %lor.lhs.false.594

lor.lhs.false.594:                                ; preds = %lor.lhs.false.589
  %272 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %273 = bitcast %struct.rtx_def* %272 to i32*
  %bf.load595 = load i32, i32* %273, align 8
  %bf.clear596 = and i32 %bf.load595, 65535
  %cmp597 = icmp eq i32 %bf.clear596, 140
  br i1 %cmp597, label %land.lhs.true.599, label %if.end.623

land.lhs.true.599:                                ; preds = %lor.lhs.false.594, %lor.lhs.false.589, %lor.lhs.false.584, %lor.lhs.false.579, %lor.lhs.false.574, %lor.lhs.false.569, %lor.lhs.false.564, %lor.lhs.false.559
  %274 = load i32, i32* @flag_pic, align 4
  %tobool600 = icmp ne i32 %274, 0
  br i1 %tobool600, label %lor.lhs.false.601, label %if.then.622

lor.lhs.false.601:                                ; preds = %land.lhs.true.599
  %275 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %276 = bitcast %struct.rtx_def* %275 to i32*
  %bf.load602 = load i32, i32* %276, align 8
  %bf.clear603 = and i32 %bf.load602, 65535
  %cmp604 = icmp eq i32 %bf.clear603, 68
  br i1 %cmp604, label %lor.lhs.false.619, label %lor.lhs.false.606

lor.lhs.false.606:                                ; preds = %lor.lhs.false.601
  %277 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %278 = bitcast %struct.rtx_def* %277 to i32*
  %bf.load607 = load i32, i32* %278, align 8
  %bf.clear608 = and i32 %bf.load607, 65535
  %cmp609 = icmp eq i32 %bf.clear608, 67
  br i1 %cmp609, label %lor.lhs.false.619, label %lor.lhs.false.611

lor.lhs.false.611:                                ; preds = %lor.lhs.false.606
  %279 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %280 = bitcast %struct.rtx_def* %279 to i32*
  %bf.load612 = load i32, i32* %280, align 8
  %bf.clear613 = and i32 %bf.load612, 65535
  %cmp614 = icmp eq i32 %bf.clear613, 58
  br i1 %cmp614, label %land.lhs.true.616, label %if.then.622

land.lhs.true.616:                                ; preds = %lor.lhs.false.611
  %281 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call617 = call i32 @symbolic_reference_mentioned_p(%struct.rtx_def* %281)
  %tobool618 = icmp ne i32 %call617, 0
  br i1 %tobool618, label %lor.lhs.false.619, label %if.then.622

lor.lhs.false.619:                                ; preds = %land.lhs.true.616, %lor.lhs.false.606, %lor.lhs.false.601
  %282 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call620 = call i32 @legitimate_pic_address_disp_p(%struct.rtx_def* %282)
  %tobool621 = icmp ne i32 %call620, 0
  br i1 %tobool621, label %if.then.622, label %if.end.623

if.then.622:                                      ; preds = %lor.lhs.false.619, %land.lhs.true.616, %lor.lhs.false.611, %land.lhs.true.599, %sw.bb.554
  store i32 1, i32* %win, align 4
  br label %if.end.623

if.end.623:                                       ; preds = %if.then.622, %lor.lhs.false.619, %lor.lhs.false.594
  %283 = load i32, i32* %i, align 4
  %idxprom624 = sext i32 %283 to i64
  %arrayidx625 = getelementptr inbounds [30 x i32], [30 x i32]* %allows_mem, i32 0, i64 %idxprom624
  store i32 1, i32* %arrayidx625, align 4
  br label %sw.bb.626

sw.bb.626:                                        ; preds = %while.body.242, %if.end.623
  %284 = load i32, i32* %i, align 4
  %idxprom627 = sext i32 %284 to i64
  %arrayidx628 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom627
  %285 = load i32, i32* %arrayidx628, align 4
  %idxprom629 = sext i32 %285 to i64
  %arrayidx630 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subunion, i32 0, i64 %idxprom629
  %arrayidx631 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx630, i32 0, i64 12
  %286 = load i32, i32* %arrayidx631, align 4
  %287 = load i32, i32* %i, align 4
  %idxprom632 = sext i32 %287 to i64
  %arrayidx633 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom632
  store i32 %286, i32* %arrayidx633, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %while.body.242
  %288 = load i8, i8* %c, align 1
  %conv634 = zext i8 %288 to i32
  %cmp635 = icmp eq i32 %conv634, 114
  br i1 %cmp635, label %cond.true.637, label %cond.false.638

cond.true.637:                                    ; preds = %sw.default
  br label %cond.end.783

cond.false.638:                                   ; preds = %sw.default
  %289 = load i8, i8* %c, align 1
  %conv639 = zext i8 %289 to i32
  %cmp640 = icmp eq i32 %conv639, 82
  br i1 %cmp640, label %cond.true.642, label %cond.false.643

cond.true.642:                                    ; preds = %cond.false.638
  br label %cond.end.781

cond.false.643:                                   ; preds = %cond.false.638
  %290 = load i8, i8* %c, align 1
  %conv644 = zext i8 %290 to i32
  %cmp645 = icmp eq i32 %conv644, 113
  br i1 %cmp645, label %cond.true.647, label %cond.false.650

cond.true.647:                                    ; preds = %cond.false.643
  %291 = load i32, i32* @target_flags, align 4
  %and = and i32 %291, 33554432
  %tobool648 = icmp ne i32 %and, 0
  %cond649 = select i1 %tobool648, i32 12, i32 8
  br label %cond.end.779

cond.false.650:                                   ; preds = %cond.false.643
  %292 = load i8, i8* %c, align 1
  %conv651 = zext i8 %292 to i32
  %cmp652 = icmp eq i32 %conv651, 81
  br i1 %cmp652, label %cond.true.654, label %cond.false.655

cond.true.654:                                    ; preds = %cond.false.650
  br label %cond.end.777

cond.false.655:                                   ; preds = %cond.false.650
  %293 = load i8, i8* %c, align 1
  %conv656 = zext i8 %293 to i32
  %cmp657 = icmp eq i32 %conv656, 102
  br i1 %cmp657, label %cond.true.659, label %cond.false.667

cond.true.659:                                    ; preds = %cond.false.655
  %294 = load i32, i32* @target_flags, align 4
  %and660 = and i32 %294, 1
  %tobool661 = icmp ne i32 %and660, 0
  br i1 %tobool661, label %lor.end.665, label %lor.rhs.662

lor.rhs.662:                                      ; preds = %cond.true.659
  %295 = load i32, i32* @target_flags, align 4
  %and663 = and i32 %295, 32
  %tobool664 = icmp ne i32 %and663, 0
  br label %lor.end.665

lor.end.665:                                      ; preds = %lor.rhs.662, %cond.true.659
  %296 = phi i1 [ true, %cond.true.659 ], [ %tobool664, %lor.rhs.662 ]
  %cond666 = select i1 %296, i32 15, i32 0
  br label %cond.end.775

cond.false.667:                                   ; preds = %cond.false.655
  %297 = load i8, i8* %c, align 1
  %conv668 = zext i8 %297 to i32
  %cmp669 = icmp eq i32 %conv668, 116
  br i1 %cmp669, label %cond.true.671, label %cond.false.679

cond.true.671:                                    ; preds = %cond.false.667
  %298 = load i32, i32* @target_flags, align 4
  %and672 = and i32 %298, 1
  %tobool673 = icmp ne i32 %and672, 0
  br i1 %tobool673, label %lor.end.677, label %lor.rhs.674

lor.rhs.674:                                      ; preds = %cond.true.671
  %299 = load i32, i32* @target_flags, align 4
  %and675 = and i32 %299, 32
  %tobool676 = icmp ne i32 %and675, 0
  br label %lor.end.677

lor.end.677:                                      ; preds = %lor.rhs.674, %cond.true.671
  %300 = phi i1 [ true, %cond.true.671 ], [ %tobool676, %lor.rhs.674 ]
  %cond678 = select i1 %300, i32 13, i32 0
  br label %cond.end.773

cond.false.679:                                   ; preds = %cond.false.667
  %301 = load i8, i8* %c, align 1
  %conv680 = zext i8 %301 to i32
  %cmp681 = icmp eq i32 %conv680, 117
  br i1 %cmp681, label %cond.true.683, label %cond.false.691

cond.true.683:                                    ; preds = %cond.false.679
  %302 = load i32, i32* @target_flags, align 4
  %and684 = and i32 %302, 1
  %tobool685 = icmp ne i32 %and684, 0
  br i1 %tobool685, label %lor.end.689, label %lor.rhs.686

lor.rhs.686:                                      ; preds = %cond.true.683
  %303 = load i32, i32* @target_flags, align 4
  %and687 = and i32 %303, 32
  %tobool688 = icmp ne i32 %and687, 0
  br label %lor.end.689

lor.end.689:                                      ; preds = %lor.rhs.686, %cond.true.683
  %304 = phi i1 [ true, %cond.true.683 ], [ %tobool688, %lor.rhs.686 ]
  %cond690 = select i1 %304, i32 14, i32 0
  br label %cond.end.771

cond.false.691:                                   ; preds = %cond.false.679
  %305 = load i8, i8* %c, align 1
  %conv692 = zext i8 %305 to i32
  %cmp693 = icmp eq i32 %conv692, 97
  br i1 %cmp693, label %cond.true.695, label %cond.false.696

cond.true.695:                                    ; preds = %cond.false.691
  br label %cond.end.769

cond.false.696:                                   ; preds = %cond.false.691
  %306 = load i8, i8* %c, align 1
  %conv697 = zext i8 %306 to i32
  %cmp698 = icmp eq i32 %conv697, 98
  br i1 %cmp698, label %cond.true.700, label %cond.false.701

cond.true.700:                                    ; preds = %cond.false.696
  br label %cond.end.767

cond.false.701:                                   ; preds = %cond.false.696
  %307 = load i8, i8* %c, align 1
  %conv702 = zext i8 %307 to i32
  %cmp703 = icmp eq i32 %conv702, 99
  br i1 %cmp703, label %cond.true.705, label %cond.false.706

cond.true.705:                                    ; preds = %cond.false.701
  br label %cond.end.765

cond.false.706:                                   ; preds = %cond.false.701
  %308 = load i8, i8* %c, align 1
  %conv707 = zext i8 %308 to i32
  %cmp708 = icmp eq i32 %conv707, 100
  br i1 %cmp708, label %cond.true.710, label %cond.false.711

cond.true.710:                                    ; preds = %cond.false.706
  br label %cond.end.763

cond.false.711:                                   ; preds = %cond.false.706
  %309 = load i8, i8* %c, align 1
  %conv712 = zext i8 %309 to i32
  %cmp713 = icmp eq i32 %conv712, 120
  br i1 %cmp713, label %cond.true.715, label %cond.false.720

cond.true.715:                                    ; preds = %cond.false.711
  %310 = load i32, i32* @target_flags, align 4
  %and716 = and i32 %310, 327680
  %cmp717 = icmp ne i32 %and716, 0
  %cond719 = select i1 %cmp717, i32 16, i32 0
  br label %cond.end.761

cond.false.720:                                   ; preds = %cond.false.711
  %311 = load i8, i8* %c, align 1
  %conv721 = zext i8 %311 to i32
  %cmp722 = icmp eq i32 %conv721, 89
  br i1 %cmp722, label %cond.true.724, label %cond.false.729

cond.true.724:                                    ; preds = %cond.false.720
  %312 = load i32, i32* @target_flags, align 4
  %and725 = and i32 %312, 262144
  %cmp726 = icmp ne i32 %and725, 0
  %cond728 = select i1 %cmp726, i32 16, i32 0
  br label %cond.end.759

cond.false.729:                                   ; preds = %cond.false.720
  %313 = load i8, i8* %c, align 1
  %conv730 = zext i8 %313 to i32
  %cmp731 = icmp eq i32 %conv730, 121
  br i1 %cmp731, label %cond.true.733, label %cond.false.738

cond.true.733:                                    ; preds = %cond.false.729
  %314 = load i32, i32* @target_flags, align 4
  %and734 = and i32 %314, 16384
  %cmp735 = icmp ne i32 %and734, 0
  %cond737 = select i1 %cmp735, i32 17, i32 0
  br label %cond.end.757

cond.false.738:                                   ; preds = %cond.false.729
  %315 = load i8, i8* %c, align 1
  %conv739 = zext i8 %315 to i32
  %cmp740 = icmp eq i32 %conv739, 65
  br i1 %cmp740, label %cond.true.742, label %cond.false.743

cond.true.742:                                    ; preds = %cond.false.738
  br label %cond.end.755

cond.false.743:                                   ; preds = %cond.false.738
  %316 = load i8, i8* %c, align 1
  %conv744 = zext i8 %316 to i32
  %cmp745 = icmp eq i32 %conv744, 68
  br i1 %cmp745, label %cond.true.747, label %cond.false.748

cond.true.747:                                    ; preds = %cond.false.743
  br label %cond.end.753

cond.false.748:                                   ; preds = %cond.false.743
  %317 = load i8, i8* %c, align 1
  %conv749 = zext i8 %317 to i32
  %cmp750 = icmp eq i32 %conv749, 83
  %cond752 = select i1 %cmp750, i32 5, i32 0
  br label %cond.end.753

cond.end.753:                                     ; preds = %cond.false.748, %cond.true.747
  %cond754 = phi i32 [ 6, %cond.true.747 ], [ %cond752, %cond.false.748 ]
  br label %cond.end.755

cond.end.755:                                     ; preds = %cond.end.753, %cond.true.742
  %cond756 = phi i32 [ 7, %cond.true.742 ], [ %cond754, %cond.end.753 ]
  br label %cond.end.757

cond.end.757:                                     ; preds = %cond.end.755, %cond.true.733
  %cond758 = phi i32 [ %cond737, %cond.true.733 ], [ %cond756, %cond.end.755 ]
  br label %cond.end.759

cond.end.759:                                     ; preds = %cond.end.757, %cond.true.724
  %cond760 = phi i32 [ %cond728, %cond.true.724 ], [ %cond758, %cond.end.757 ]
  br label %cond.end.761

cond.end.761:                                     ; preds = %cond.end.759, %cond.true.715
  %cond762 = phi i32 [ %cond719, %cond.true.715 ], [ %cond760, %cond.end.759 ]
  br label %cond.end.763

cond.end.763:                                     ; preds = %cond.end.761, %cond.true.710
  %cond764 = phi i32 [ 2, %cond.true.710 ], [ %cond762, %cond.end.761 ]
  br label %cond.end.765

cond.end.765:                                     ; preds = %cond.end.763, %cond.true.705
  %cond766 = phi i32 [ 3, %cond.true.705 ], [ %cond764, %cond.end.763 ]
  br label %cond.end.767

cond.end.767:                                     ; preds = %cond.end.765, %cond.true.700
  %cond768 = phi i32 [ 4, %cond.true.700 ], [ %cond766, %cond.end.765 ]
  br label %cond.end.769

cond.end.769:                                     ; preds = %cond.end.767, %cond.true.695
  %cond770 = phi i32 [ 1, %cond.true.695 ], [ %cond768, %cond.end.767 ]
  br label %cond.end.771

cond.end.771:                                     ; preds = %cond.end.769, %lor.end.689
  %cond772 = phi i32 [ %cond690, %lor.end.689 ], [ %cond770, %cond.end.769 ]
  br label %cond.end.773

cond.end.773:                                     ; preds = %cond.end.771, %lor.end.677
  %cond774 = phi i32 [ %cond678, %lor.end.677 ], [ %cond772, %cond.end.771 ]
  br label %cond.end.775

cond.end.775:                                     ; preds = %cond.end.773, %lor.end.665
  %cond776 = phi i32 [ %cond666, %lor.end.665 ], [ %cond774, %cond.end.773 ]
  br label %cond.end.777

cond.end.777:                                     ; preds = %cond.end.775, %cond.true.654
  %cond778 = phi i32 [ 8, %cond.true.654 ], [ %cond776, %cond.end.775 ]
  br label %cond.end.779

cond.end.779:                                     ; preds = %cond.end.777, %cond.true.647
  %cond780 = phi i32 [ %cond649, %cond.true.647 ], [ %cond778, %cond.end.777 ]
  br label %cond.end.781

cond.end.781:                                     ; preds = %cond.end.779, %cond.true.642
  %cond782 = phi i32 [ 11, %cond.true.642 ], [ %cond780, %cond.end.779 ]
  br label %cond.end.783

cond.end.783:                                     ; preds = %cond.end.781, %cond.true.637
  %cond784 = phi i32 [ 12, %cond.true.637 ], [ %cond782, %cond.end.781 ]
  %cmp785 = icmp ne i32 %cond784, 0
  br i1 %cmp785, label %if.then.787, label %if.else.948

if.then.787:                                      ; preds = %cond.end.783
  %318 = load i8, i8* %c, align 1
  %conv788 = zext i8 %318 to i32
  %cmp789 = icmp eq i32 %conv788, 114
  br i1 %cmp789, label %cond.true.791, label %cond.false.792

cond.true.791:                                    ; preds = %if.then.787
  br label %cond.end.938

cond.false.792:                                   ; preds = %if.then.787
  %319 = load i8, i8* %c, align 1
  %conv793 = zext i8 %319 to i32
  %cmp794 = icmp eq i32 %conv793, 82
  br i1 %cmp794, label %cond.true.796, label %cond.false.797

cond.true.796:                                    ; preds = %cond.false.792
  br label %cond.end.936

cond.false.797:                                   ; preds = %cond.false.792
  %320 = load i8, i8* %c, align 1
  %conv798 = zext i8 %320 to i32
  %cmp799 = icmp eq i32 %conv798, 113
  br i1 %cmp799, label %cond.true.801, label %cond.false.805

cond.true.801:                                    ; preds = %cond.false.797
  %321 = load i32, i32* @target_flags, align 4
  %and802 = and i32 %321, 33554432
  %tobool803 = icmp ne i32 %and802, 0
  %cond804 = select i1 %tobool803, i32 12, i32 8
  br label %cond.end.934

cond.false.805:                                   ; preds = %cond.false.797
  %322 = load i8, i8* %c, align 1
  %conv806 = zext i8 %322 to i32
  %cmp807 = icmp eq i32 %conv806, 81
  br i1 %cmp807, label %cond.true.809, label %cond.false.810

cond.true.809:                                    ; preds = %cond.false.805
  br label %cond.end.932

cond.false.810:                                   ; preds = %cond.false.805
  %323 = load i8, i8* %c, align 1
  %conv811 = zext i8 %323 to i32
  %cmp812 = icmp eq i32 %conv811, 102
  br i1 %cmp812, label %cond.true.814, label %cond.false.822

cond.true.814:                                    ; preds = %cond.false.810
  %324 = load i32, i32* @target_flags, align 4
  %and815 = and i32 %324, 1
  %tobool816 = icmp ne i32 %and815, 0
  br i1 %tobool816, label %lor.end.820, label %lor.rhs.817

lor.rhs.817:                                      ; preds = %cond.true.814
  %325 = load i32, i32* @target_flags, align 4
  %and818 = and i32 %325, 32
  %tobool819 = icmp ne i32 %and818, 0
  br label %lor.end.820

lor.end.820:                                      ; preds = %lor.rhs.817, %cond.true.814
  %326 = phi i1 [ true, %cond.true.814 ], [ %tobool819, %lor.rhs.817 ]
  %cond821 = select i1 %326, i32 15, i32 0
  br label %cond.end.930

cond.false.822:                                   ; preds = %cond.false.810
  %327 = load i8, i8* %c, align 1
  %conv823 = zext i8 %327 to i32
  %cmp824 = icmp eq i32 %conv823, 116
  br i1 %cmp824, label %cond.true.826, label %cond.false.834

cond.true.826:                                    ; preds = %cond.false.822
  %328 = load i32, i32* @target_flags, align 4
  %and827 = and i32 %328, 1
  %tobool828 = icmp ne i32 %and827, 0
  br i1 %tobool828, label %lor.end.832, label %lor.rhs.829

lor.rhs.829:                                      ; preds = %cond.true.826
  %329 = load i32, i32* @target_flags, align 4
  %and830 = and i32 %329, 32
  %tobool831 = icmp ne i32 %and830, 0
  br label %lor.end.832

lor.end.832:                                      ; preds = %lor.rhs.829, %cond.true.826
  %330 = phi i1 [ true, %cond.true.826 ], [ %tobool831, %lor.rhs.829 ]
  %cond833 = select i1 %330, i32 13, i32 0
  br label %cond.end.928

cond.false.834:                                   ; preds = %cond.false.822
  %331 = load i8, i8* %c, align 1
  %conv835 = zext i8 %331 to i32
  %cmp836 = icmp eq i32 %conv835, 117
  br i1 %cmp836, label %cond.true.838, label %cond.false.846

cond.true.838:                                    ; preds = %cond.false.834
  %332 = load i32, i32* @target_flags, align 4
  %and839 = and i32 %332, 1
  %tobool840 = icmp ne i32 %and839, 0
  br i1 %tobool840, label %lor.end.844, label %lor.rhs.841

lor.rhs.841:                                      ; preds = %cond.true.838
  %333 = load i32, i32* @target_flags, align 4
  %and842 = and i32 %333, 32
  %tobool843 = icmp ne i32 %and842, 0
  br label %lor.end.844

lor.end.844:                                      ; preds = %lor.rhs.841, %cond.true.838
  %334 = phi i1 [ true, %cond.true.838 ], [ %tobool843, %lor.rhs.841 ]
  %cond845 = select i1 %334, i32 14, i32 0
  br label %cond.end.926

cond.false.846:                                   ; preds = %cond.false.834
  %335 = load i8, i8* %c, align 1
  %conv847 = zext i8 %335 to i32
  %cmp848 = icmp eq i32 %conv847, 97
  br i1 %cmp848, label %cond.true.850, label %cond.false.851

cond.true.850:                                    ; preds = %cond.false.846
  br label %cond.end.924

cond.false.851:                                   ; preds = %cond.false.846
  %336 = load i8, i8* %c, align 1
  %conv852 = zext i8 %336 to i32
  %cmp853 = icmp eq i32 %conv852, 98
  br i1 %cmp853, label %cond.true.855, label %cond.false.856

cond.true.855:                                    ; preds = %cond.false.851
  br label %cond.end.922

cond.false.856:                                   ; preds = %cond.false.851
  %337 = load i8, i8* %c, align 1
  %conv857 = zext i8 %337 to i32
  %cmp858 = icmp eq i32 %conv857, 99
  br i1 %cmp858, label %cond.true.860, label %cond.false.861

cond.true.860:                                    ; preds = %cond.false.856
  br label %cond.end.920

cond.false.861:                                   ; preds = %cond.false.856
  %338 = load i8, i8* %c, align 1
  %conv862 = zext i8 %338 to i32
  %cmp863 = icmp eq i32 %conv862, 100
  br i1 %cmp863, label %cond.true.865, label %cond.false.866

cond.true.865:                                    ; preds = %cond.false.861
  br label %cond.end.918

cond.false.866:                                   ; preds = %cond.false.861
  %339 = load i8, i8* %c, align 1
  %conv867 = zext i8 %339 to i32
  %cmp868 = icmp eq i32 %conv867, 120
  br i1 %cmp868, label %cond.true.870, label %cond.false.875

cond.true.870:                                    ; preds = %cond.false.866
  %340 = load i32, i32* @target_flags, align 4
  %and871 = and i32 %340, 327680
  %cmp872 = icmp ne i32 %and871, 0
  %cond874 = select i1 %cmp872, i32 16, i32 0
  br label %cond.end.916

cond.false.875:                                   ; preds = %cond.false.866
  %341 = load i8, i8* %c, align 1
  %conv876 = zext i8 %341 to i32
  %cmp877 = icmp eq i32 %conv876, 89
  br i1 %cmp877, label %cond.true.879, label %cond.false.884

cond.true.879:                                    ; preds = %cond.false.875
  %342 = load i32, i32* @target_flags, align 4
  %and880 = and i32 %342, 262144
  %cmp881 = icmp ne i32 %and880, 0
  %cond883 = select i1 %cmp881, i32 16, i32 0
  br label %cond.end.914

cond.false.884:                                   ; preds = %cond.false.875
  %343 = load i8, i8* %c, align 1
  %conv885 = zext i8 %343 to i32
  %cmp886 = icmp eq i32 %conv885, 121
  br i1 %cmp886, label %cond.true.888, label %cond.false.893

cond.true.888:                                    ; preds = %cond.false.884
  %344 = load i32, i32* @target_flags, align 4
  %and889 = and i32 %344, 16384
  %cmp890 = icmp ne i32 %and889, 0
  %cond892 = select i1 %cmp890, i32 17, i32 0
  br label %cond.end.912

cond.false.893:                                   ; preds = %cond.false.884
  %345 = load i8, i8* %c, align 1
  %conv894 = zext i8 %345 to i32
  %cmp895 = icmp eq i32 %conv894, 65
  br i1 %cmp895, label %cond.true.897, label %cond.false.898

cond.true.897:                                    ; preds = %cond.false.893
  br label %cond.end.910

cond.false.898:                                   ; preds = %cond.false.893
  %346 = load i8, i8* %c, align 1
  %conv899 = zext i8 %346 to i32
  %cmp900 = icmp eq i32 %conv899, 68
  br i1 %cmp900, label %cond.true.902, label %cond.false.903

cond.true.902:                                    ; preds = %cond.false.898
  br label %cond.end.908

cond.false.903:                                   ; preds = %cond.false.898
  %347 = load i8, i8* %c, align 1
  %conv904 = zext i8 %347 to i32
  %cmp905 = icmp eq i32 %conv904, 83
  %cond907 = select i1 %cmp905, i32 5, i32 0
  br label %cond.end.908

cond.end.908:                                     ; preds = %cond.false.903, %cond.true.902
  %cond909 = phi i32 [ 6, %cond.true.902 ], [ %cond907, %cond.false.903 ]
  br label %cond.end.910

cond.end.910:                                     ; preds = %cond.end.908, %cond.true.897
  %cond911 = phi i32 [ 7, %cond.true.897 ], [ %cond909, %cond.end.908 ]
  br label %cond.end.912

cond.end.912:                                     ; preds = %cond.end.910, %cond.true.888
  %cond913 = phi i32 [ %cond892, %cond.true.888 ], [ %cond911, %cond.end.910 ]
  br label %cond.end.914

cond.end.914:                                     ; preds = %cond.end.912, %cond.true.879
  %cond915 = phi i32 [ %cond883, %cond.true.879 ], [ %cond913, %cond.end.912 ]
  br label %cond.end.916

cond.end.916:                                     ; preds = %cond.end.914, %cond.true.870
  %cond917 = phi i32 [ %cond874, %cond.true.870 ], [ %cond915, %cond.end.914 ]
  br label %cond.end.918

cond.end.918:                                     ; preds = %cond.end.916, %cond.true.865
  %cond919 = phi i32 [ 2, %cond.true.865 ], [ %cond917, %cond.end.916 ]
  br label %cond.end.920

cond.end.920:                                     ; preds = %cond.end.918, %cond.true.860
  %cond921 = phi i32 [ 3, %cond.true.860 ], [ %cond919, %cond.end.918 ]
  br label %cond.end.922

cond.end.922:                                     ; preds = %cond.end.920, %cond.true.855
  %cond923 = phi i32 [ 4, %cond.true.855 ], [ %cond921, %cond.end.920 ]
  br label %cond.end.924

cond.end.924:                                     ; preds = %cond.end.922, %cond.true.850
  %cond925 = phi i32 [ 1, %cond.true.850 ], [ %cond923, %cond.end.922 ]
  br label %cond.end.926

cond.end.926:                                     ; preds = %cond.end.924, %lor.end.844
  %cond927 = phi i32 [ %cond845, %lor.end.844 ], [ %cond925, %cond.end.924 ]
  br label %cond.end.928

cond.end.928:                                     ; preds = %cond.end.926, %lor.end.832
  %cond929 = phi i32 [ %cond833, %lor.end.832 ], [ %cond927, %cond.end.926 ]
  br label %cond.end.930

cond.end.930:                                     ; preds = %cond.end.928, %lor.end.820
  %cond931 = phi i32 [ %cond821, %lor.end.820 ], [ %cond929, %cond.end.928 ]
  br label %cond.end.932

cond.end.932:                                     ; preds = %cond.end.930, %cond.true.809
  %cond933 = phi i32 [ 8, %cond.true.809 ], [ %cond931, %cond.end.930 ]
  br label %cond.end.934

cond.end.934:                                     ; preds = %cond.end.932, %cond.true.801
  %cond935 = phi i32 [ %cond804, %cond.true.801 ], [ %cond933, %cond.end.932 ]
  br label %cond.end.936

cond.end.936:                                     ; preds = %cond.end.934, %cond.true.796
  %cond937 = phi i32 [ 11, %cond.true.796 ], [ %cond935, %cond.end.934 ]
  br label %cond.end.938

cond.end.938:                                     ; preds = %cond.end.936, %cond.true.791
  %cond939 = phi i32 [ 12, %cond.true.791 ], [ %cond937, %cond.end.936 ]
  %idxprom940 = sext i32 %cond939 to i64
  %348 = load i32, i32* %i, align 4
  %idxprom941 = sext i32 %348 to i64
  %arrayidx942 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom941
  %349 = load i32, i32* %arrayidx942, align 4
  %idxprom943 = sext i32 %349 to i64
  %arrayidx944 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* @reg_class_subunion, i32 0, i64 %idxprom943
  %arrayidx945 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx944, i32 0, i64 %idxprom940
  %350 = load i32, i32* %arrayidx945, align 4
  %351 = load i32, i32* %i, align 4
  %idxprom946 = sext i32 %351 to i64
  %arrayidx947 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom946
  store i32 %350, i32* %arrayidx947, align 4
  br label %if.end.965

if.else.948:                                      ; preds = %cond.end.783
  %352 = load i8, i8* %c, align 1
  %conv949 = zext i8 %352 to i32
  %cmp950 = icmp eq i32 %conv949, 101
  br i1 %cmp950, label %cond.true.952, label %cond.false.955

cond.true.952:                                    ; preds = %if.else.948
  %353 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call953 = call i32 @x86_64_sign_extended_value(%struct.rtx_def* %353)
  %tobool954 = icmp ne i32 %call953, 0
  br i1 %tobool954, label %if.then.963, label %if.end.964

cond.false.955:                                   ; preds = %if.else.948
  %354 = load i8, i8* %c, align 1
  %conv956 = zext i8 %354 to i32
  %cmp957 = icmp eq i32 %conv956, 90
  br i1 %cmp957, label %cond.true.959, label %cond.false.962

cond.true.959:                                    ; preds = %cond.false.955
  %355 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %call960 = call i32 @x86_64_zero_extended_value(%struct.rtx_def* %355)
  %tobool961 = icmp ne i32 %call960, 0
  br i1 %tobool961, label %if.then.963, label %if.end.964

cond.false.962:                                   ; preds = %cond.false.955
  br i1 false, label %if.then.963, label %if.end.964

if.then.963:                                      ; preds = %cond.false.962, %cond.true.959, %cond.true.952
  store i32 1, i32* %win, align 4
  br label %if.end.964

if.end.964:                                       ; preds = %if.then.963, %cond.false.962, %cond.true.959, %cond.true.952
  br label %if.end.965

if.end.965:                                       ; preds = %if.end.964, %cond.end.938
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.965, %sw.bb.626, %sw.bb.553, %if.end.552, %if.end.449, %if.end.431, %if.then.365, %if.end.348, %if.end.326, %if.end.319, %if.end.312, %if.end.289, %if.end.267, %sw.bb.248, %sw.bb.247, %sw.bb
  br label %while.cond.233

while.end.966:                                    ; preds = %land.end.241
  %356 = load i8*, i8** %p, align 8
  %357 = load i32, i32* %i, align 4
  %idxprom967 = sext i32 %357 to i64
  %358 = load i8**, i8*** %constraints.addr, align 8
  %arrayidx968 = getelementptr inbounds i8*, i8** %358, i64 %idxprom967
  store i8* %356, i8** %arrayidx968, align 8
  %359 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %360 = bitcast %struct.rtx_def* %359 to i32*
  %bf.load969 = load i32, i32* %360, align 8
  %bf.clear970 = and i32 %bf.load969, 65535
  %cmp971 = icmp eq i32 %bf.clear970, 61
  br i1 %cmp971, label %land.lhs.true.973, label %if.else.1078

land.lhs.true.973:                                ; preds = %while.end.966
  %361 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld974 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %361, i32 0, i32 1
  %arrayidx975 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld974, i32 0, i64 0
  %rtuint976 = bitcast %union.rtunion_def* %arrayidx975 to i32*
  %362 = load i32, i32* %rtuint976, align 4
  %cmp977 = icmp uge i32 %362, 53
  br i1 %cmp977, label %if.then.979, label %if.else.1078

if.then.979:                                      ; preds = %land.lhs.true.973
  %363 = load i32, i32* %i, align 4
  %idxprom980 = sext i32 %363 to i64
  %arrayidx981 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom980
  %364 = load i32, i32* %arrayidx981, align 4
  %cmp982 = icmp eq i32 %364, 0
  br i1 %cmp982, label %if.then.984, label %if.else.985

if.then.984:                                      ; preds = %if.then.979
  store i32 1, i32* %alt_fail, align 4
  br label %if.end.1077

if.else.985:                                      ; preds = %if.then.979
  %365 = load i32, i32* %i, align 4
  %idxprom987 = sext i32 %365 to i64
  %arrayidx988 = getelementptr inbounds [30 x %struct.costs], [30 x %struct.costs]* %this_op_costs, i32 0, i64 %idxprom987
  store %struct.costs* %arrayidx988, %struct.costs** %pp986, align 8
  store i32 0, i32* %class, align 4
  br label %for.cond.989

for.cond.989:                                     ; preds = %for.inc.1029, %if.else.985
  %366 = load i32, i32* %class, align 4
  %cmp990 = icmp slt i32 %366, 25
  br i1 %cmp990, label %for.body.992, label %for.end.1031

for.body.992:                                     ; preds = %for.cond.989
  %367 = load i32, i32* %i, align 4
  %idxprom993 = sext i32 %367 to i64
  %arrayidx994 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom993
  %368 = load i32, i32* %arrayidx994, align 4
  %cmp995 = icmp ne i32 %368, 1
  br i1 %cmp995, label %cond.true.997, label %cond.false.1006

cond.true.997:                                    ; preds = %for.body.992
  %369 = load i32, i32* %i, align 4
  %idxprom998 = sext i32 %369 to i64
  %arrayidx999 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom998
  %370 = load i32, i32* %arrayidx999, align 4
  %idxprom1000 = sext i32 %370 to i64
  %371 = load i32, i32* %class, align 4
  %idxprom1001 = sext i32 %371 to i64
  %372 = load i32, i32* %mode, align 4
  %idxprom1002 = zext i32 %372 to i64
  %arrayidx1003 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_in_cost, i32 0, i64 %idxprom1002
  %arrayidx1004 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx1003, i32 0, i64 %idxprom1001
  %arrayidx1005 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx1004, i32 0, i64 %idxprom1000
  %373 = load i32, i32* %arrayidx1005, align 4
  br label %cond.end.1007

cond.false.1006:                                  ; preds = %for.body.992
  br label %cond.end.1007

cond.end.1007:                                    ; preds = %cond.false.1006, %cond.true.997
  %cond1008 = phi i32 [ %373, %cond.true.997 ], [ 0, %cond.false.1006 ]
  %374 = load i32, i32* %i, align 4
  %idxprom1009 = sext i32 %374 to i64
  %arrayidx1010 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom1009
  %375 = load i32, i32* %arrayidx1010, align 4
  %cmp1011 = icmp ne i32 %375, 0
  br i1 %cmp1011, label %cond.true.1013, label %cond.false.1022

cond.true.1013:                                   ; preds = %cond.end.1007
  %376 = load i32, i32* %class, align 4
  %idxprom1014 = sext i32 %376 to i64
  %377 = load i32, i32* %i, align 4
  %idxprom1015 = sext i32 %377 to i64
  %arrayidx1016 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom1015
  %378 = load i32, i32* %arrayidx1016, align 4
  %idxprom1017 = sext i32 %378 to i64
  %379 = load i32, i32* %mode, align 4
  %idxprom1018 = zext i32 %379 to i64
  %arrayidx1019 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_out_cost, i32 0, i64 %idxprom1018
  %arrayidx1020 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx1019, i32 0, i64 %idxprom1017
  %arrayidx1021 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx1020, i32 0, i64 %idxprom1014
  %380 = load i32, i32* %arrayidx1021, align 4
  br label %cond.end.1023

cond.false.1022:                                  ; preds = %cond.end.1007
  br label %cond.end.1023

cond.end.1023:                                    ; preds = %cond.false.1022, %cond.true.1013
  %cond1024 = phi i32 [ %380, %cond.true.1013 ], [ 0, %cond.false.1022 ]
  %add1025 = add nsw i32 %cond1008, %cond1024
  %381 = load i32, i32* %class, align 4
  %idxprom1026 = sext i32 %381 to i64
  %382 = load %struct.costs*, %struct.costs** %pp986, align 8
  %cost1027 = getelementptr inbounds %struct.costs, %struct.costs* %382, i32 0, i32 0
  %arrayidx1028 = getelementptr inbounds [25 x i32], [25 x i32]* %cost1027, i32 0, i64 %idxprom1026
  store i32 %add1025, i32* %arrayidx1028, align 4
  br label %for.inc.1029

for.inc.1029:                                     ; preds = %cond.end.1023
  %383 = load i32, i32* %class, align 4
  %inc1030 = add nsw i32 %383, 1
  store i32 %inc1030, i32* %class, align 4
  br label %for.cond.989

for.end.1031:                                     ; preds = %for.cond.989
  %384 = load i32, i32* %i, align 4
  %idxprom1032 = sext i32 %384 to i64
  %arrayidx1033 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom1032
  %385 = load i32, i32* %arrayidx1033, align 4
  %cmp1034 = icmp ne i32 %385, 0
  br i1 %cmp1034, label %cond.true.1036, label %cond.false.1040

cond.true.1036:                                   ; preds = %for.end.1031
  %386 = load i32, i32* %mode, align 4
  %387 = load i32, i32* %i, align 4
  %idxprom1037 = sext i32 %387 to i64
  %arrayidx1038 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom1037
  %388 = load i32, i32* %arrayidx1038, align 4
  %call1039 = call i32 @ix86_memory_move_cost(i32 %386, i32 %388, i32 0)
  br label %cond.end.1041

cond.false.1040:                                  ; preds = %for.end.1031
  br label %cond.end.1041

cond.end.1041:                                    ; preds = %cond.false.1040, %cond.true.1036
  %cond1042 = phi i32 [ %call1039, %cond.true.1036 ], [ 0, %cond.false.1040 ]
  %389 = load i32, i32* %i, align 4
  %idxprom1043 = sext i32 %389 to i64
  %arrayidx1044 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom1043
  %390 = load i32, i32* %arrayidx1044, align 4
  %cmp1045 = icmp ne i32 %390, 1
  br i1 %cmp1045, label %cond.true.1047, label %cond.false.1051

cond.true.1047:                                   ; preds = %cond.end.1041
  %391 = load i32, i32* %mode, align 4
  %392 = load i32, i32* %i, align 4
  %idxprom1048 = sext i32 %392 to i64
  %arrayidx1049 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom1048
  %393 = load i32, i32* %arrayidx1049, align 4
  %call1050 = call i32 @ix86_memory_move_cost(i32 %391, i32 %393, i32 1)
  br label %cond.end.1052

cond.false.1051:                                  ; preds = %cond.end.1041
  br label %cond.end.1052

cond.end.1052:                                    ; preds = %cond.false.1051, %cond.true.1047
  %cond1053 = phi i32 [ %call1050, %cond.true.1047 ], [ 0, %cond.false.1051 ]
  %add1054 = add nsw i32 %cond1042, %cond1053
  %394 = load i32, i32* %i, align 4
  %idxprom1055 = sext i32 %394 to i64
  %arrayidx1056 = getelementptr inbounds [30 x i32], [30 x i32]* %allows_mem, i32 0, i64 %idxprom1055
  %395 = load i32, i32* %arrayidx1056, align 4
  %sub1057 = sub nsw i32 %add1054, %395
  %396 = load %struct.costs*, %struct.costs** %pp986, align 8
  %mem_cost1058 = getelementptr inbounds %struct.costs, %struct.costs* %396, i32 0, i32 1
  store i32 %sub1057, i32* %mem_cost1058, align 4
  %397 = load %struct.reg_pref*, %struct.reg_pref** %reg_pref.addr, align 8
  %tobool1059 = icmp ne %struct.reg_pref* %397, null
  br i1 %tobool1059, label %if.then.1060, label %if.end.1076

if.then.1060:                                     ; preds = %cond.end.1052
  %398 = load i32, i32* %i, align 4
  %idxprom1061 = sext i32 %398 to i64
  %arrayidx1062 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom1061
  %399 = load i32, i32* %arrayidx1062, align 4
  %idxprom1063 = sext i32 %399 to i64
  %400 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %fld1064 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %400, i32 0, i32 1
  %arrayidx1065 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1064, i32 0, i64 0
  %rtuint1066 = bitcast %union.rtunion_def* %arrayidx1065 to i32*
  %401 = load i32, i32* %rtuint1066, align 4
  %idxprom1067 = zext i32 %401 to i64
  %402 = load %struct.reg_pref*, %struct.reg_pref** %reg_pref.addr, align 8
  %arrayidx1068 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %402, i64 %idxprom1067
  %prefclass1069 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %arrayidx1068, i32 0, i32 0
  %403 = load i8, i8* %prefclass1069, align 1
  %idxprom1070 = zext i8 %403 to i64
  %404 = load i32, i32* %mode, align 4
  %idxprom1071 = zext i32 %404 to i64
  %arrayidx1072 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @may_move_in_cost, i32 0, i64 %idxprom1071
  %arrayidx1073 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx1072, i32 0, i64 %idxprom1070
  %arrayidx1074 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx1073, i32 0, i64 %idxprom1063
  %405 = load i32, i32* %arrayidx1074, align 4
  %406 = load i32, i32* %alt_cost, align 4
  %add1075 = add nsw i32 %406, %405
  store i32 %add1075, i32* %alt_cost, align 4
  br label %if.end.1076

if.end.1076:                                      ; preds = %if.then.1060, %cond.end.1052
  br label %if.end.1077

if.end.1077:                                      ; preds = %if.end.1076, %if.then.984
  br label %if.end.1175

if.else.1078:                                     ; preds = %land.lhs.true.973, %while.end.966
  %407 = load i32, i32* %win, align 4
  %tobool1079 = icmp ne i32 %407, 0
  br i1 %tobool1079, label %if.then.1093, label %lor.lhs.false.1080

lor.lhs.false.1080:                               ; preds = %if.else.1078
  %408 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %409 = bitcast %struct.rtx_def* %408 to i32*
  %bf.load1081 = load i32, i32* %409, align 8
  %bf.clear1082 = and i32 %bf.load1081, 65535
  %cmp1083 = icmp eq i32 %bf.clear1082, 61
  br i1 %cmp1083, label %land.lhs.true.1085, label %if.else.1094

land.lhs.true.1085:                               ; preds = %lor.lhs.false.1080
  %410 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %411 = load i32, i32* %i, align 4
  %idxprom1086 = sext i32 %411 to i64
  %arrayidx1087 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom1086
  %412 = load i32, i32* %arrayidx1087, align 4
  %413 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %414 = bitcast %struct.rtx_def* %413 to i32*
  %bf.load1088 = load i32, i32* %414, align 8
  %bf.lshr1089 = lshr i32 %bf.load1088, 16
  %bf.clear1090 = and i32 %bf.lshr1089, 255
  %call1091 = call i32 @reg_fits_class_p(%struct.rtx_def* %410, i32 %412, i32 0, i32 %bf.clear1090)
  %tobool1092 = icmp ne i32 %call1091, 0
  br i1 %tobool1092, label %if.then.1093, label %if.else.1094

if.then.1093:                                     ; preds = %land.lhs.true.1085, %if.else.1078
  br label %if.end.1174

if.else.1094:                                     ; preds = %land.lhs.true.1085, %lor.lhs.false.1080
  %415 = load i32, i32* %i, align 4
  %idxprom1095 = sext i32 %415 to i64
  %arrayidx1096 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom1095
  %416 = load i32, i32* %arrayidx1096, align 4
  %cmp1097 = icmp ne i32 %416, 0
  br i1 %cmp1097, label %if.then.1099, label %if.else.1120

if.then.1099:                                     ; preds = %if.else.1094
  %417 = load i32, i32* %i, align 4
  %idxprom1100 = sext i32 %417 to i64
  %arrayidx1101 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom1100
  %418 = load i32, i32* %arrayidx1101, align 4
  %cmp1102 = icmp ne i32 %418, 1
  br i1 %cmp1102, label %if.then.1104, label %if.end.1109

if.then.1104:                                     ; preds = %if.then.1099
  %419 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %420 = load i32, i32* %mode, align 4
  %421 = load i32, i32* %i, align 4
  %idxprom1105 = sext i32 %421 to i64
  %arrayidx1106 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom1105
  %422 = load i32, i32* %arrayidx1106, align 4
  %call1107 = call i32 @copy_cost(%struct.rtx_def* %419, i32 %420, i32 %422, i32 1)
  %423 = load i32, i32* %alt_cost, align 4
  %add1108 = add nsw i32 %423, %call1107
  store i32 %add1108, i32* %alt_cost, align 4
  br label %if.end.1109

if.end.1109:                                      ; preds = %if.then.1104, %if.then.1099
  %424 = load i32, i32* %i, align 4
  %idxprom1110 = sext i32 %424 to i64
  %arrayidx1111 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom1110
  %425 = load i32, i32* %arrayidx1111, align 4
  %cmp1112 = icmp ne i32 %425, 0
  br i1 %cmp1112, label %if.then.1114, label %if.end.1119

if.then.1114:                                     ; preds = %if.end.1109
  %426 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %427 = load i32, i32* %mode, align 4
  %428 = load i32, i32* %i, align 4
  %idxprom1115 = sext i32 %428 to i64
  %arrayidx1116 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom1115
  %429 = load i32, i32* %arrayidx1116, align 4
  %call1117 = call i32 @copy_cost(%struct.rtx_def* %426, i32 %427, i32 %429, i32 0)
  %430 = load i32, i32* %alt_cost, align 4
  %add1118 = add nsw i32 %430, %call1117
  store i32 %add1118, i32* %alt_cost, align 4
  br label %if.end.1119

if.end.1119:                                      ; preds = %if.then.1114, %if.end.1109
  br label %if.end.1173

if.else.1120:                                     ; preds = %if.else.1094
  %431 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %432 = bitcast %struct.rtx_def* %431 to i32*
  %bf.load1121 = load i32, i32* %432, align 8
  %bf.clear1122 = and i32 %bf.load1121, 65535
  %cmp1123 = icmp eq i32 %bf.clear1122, 67
  br i1 %cmp1123, label %land.lhs.true.1160, label %lor.lhs.false.1125

lor.lhs.false.1125:                               ; preds = %if.else.1120
  %433 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %434 = bitcast %struct.rtx_def* %433 to i32*
  %bf.load1126 = load i32, i32* %434, align 8
  %bf.clear1127 = and i32 %bf.load1126, 65535
  %cmp1128 = icmp eq i32 %bf.clear1127, 68
  br i1 %cmp1128, label %land.lhs.true.1160, label %lor.lhs.false.1130

lor.lhs.false.1130:                               ; preds = %lor.lhs.false.1125
  %435 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %436 = bitcast %struct.rtx_def* %435 to i32*
  %bf.load1131 = load i32, i32* %436, align 8
  %bf.clear1132 = and i32 %bf.load1131, 65535
  %cmp1133 = icmp eq i32 %bf.clear1132, 54
  br i1 %cmp1133, label %land.lhs.true.1160, label %lor.lhs.false.1135

lor.lhs.false.1135:                               ; preds = %lor.lhs.false.1130
  %437 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %438 = bitcast %struct.rtx_def* %437 to i32*
  %bf.load1136 = load i32, i32* %438, align 8
  %bf.clear1137 = and i32 %bf.load1136, 65535
  %cmp1138 = icmp eq i32 %bf.clear1137, 55
  br i1 %cmp1138, label %land.lhs.true.1160, label %lor.lhs.false.1140

lor.lhs.false.1140:                               ; preds = %lor.lhs.false.1135
  %439 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %440 = bitcast %struct.rtx_def* %439 to i32*
  %bf.load1141 = load i32, i32* %440, align 8
  %bf.clear1142 = and i32 %bf.load1141, 65535
  %cmp1143 = icmp eq i32 %bf.clear1142, 58
  br i1 %cmp1143, label %land.lhs.true.1160, label %lor.lhs.false.1145

lor.lhs.false.1145:                               ; preds = %lor.lhs.false.1140
  %441 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %442 = bitcast %struct.rtx_def* %441 to i32*
  %bf.load1146 = load i32, i32* %442, align 8
  %bf.clear1147 = and i32 %bf.load1146, 65535
  %cmp1148 = icmp eq i32 %bf.clear1147, 134
  br i1 %cmp1148, label %land.lhs.true.1160, label %lor.lhs.false.1150

lor.lhs.false.1150:                               ; preds = %lor.lhs.false.1145
  %443 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %444 = bitcast %struct.rtx_def* %443 to i32*
  %bf.load1151 = load i32, i32* %444, align 8
  %bf.clear1152 = and i32 %bf.load1151, 65535
  %cmp1153 = icmp eq i32 %bf.clear1152, 56
  br i1 %cmp1153, label %land.lhs.true.1160, label %lor.lhs.false.1155

lor.lhs.false.1155:                               ; preds = %lor.lhs.false.1150
  %445 = load %struct.rtx_def*, %struct.rtx_def** %op, align 8
  %446 = bitcast %struct.rtx_def* %445 to i32*
  %bf.load1156 = load i32, i32* %446, align 8
  %bf.clear1157 = and i32 %bf.load1156, 65535
  %cmp1158 = icmp eq i32 %bf.clear1157, 140
  br i1 %cmp1158, label %land.lhs.true.1160, label %if.else.1171

land.lhs.true.1160:                               ; preds = %lor.lhs.false.1155, %lor.lhs.false.1150, %lor.lhs.false.1145, %lor.lhs.false.1140, %lor.lhs.false.1135, %lor.lhs.false.1130, %lor.lhs.false.1125, %if.else.1120
  %447 = load i32, i32* %allows_addr, align 4
  %tobool1161 = icmp ne i32 %447, 0
  br i1 %tobool1161, label %if.then.1166, label %lor.lhs.false.1162

lor.lhs.false.1162:                               ; preds = %land.lhs.true.1160
  %448 = load i32, i32* %i, align 4
  %idxprom1163 = sext i32 %448 to i64
  %arrayidx1164 = getelementptr inbounds [30 x i32], [30 x i32]* %allows_mem, i32 0, i64 %idxprom1163
  %449 = load i32, i32* %arrayidx1164, align 4
  %tobool1165 = icmp ne i32 %449, 0
  br i1 %tobool1165, label %if.then.1166, label %if.else.1171

if.then.1166:                                     ; preds = %lor.lhs.false.1162, %land.lhs.true.1160
  %450 = load i32, i32* %mode, align 4
  %451 = load i32, i32* %i, align 4
  %idxprom1167 = sext i32 %451 to i64
  %arrayidx1168 = getelementptr inbounds [30 x i32], [30 x i32]* %classes, i32 0, i64 %idxprom1167
  %452 = load i32, i32* %arrayidx1168, align 4
  %call1169 = call i32 @ix86_memory_move_cost(i32 %450, i32 %452, i32 1)
  %453 = load i32, i32* %alt_cost, align 4
  %add1170 = add nsw i32 %453, %call1169
  store i32 %add1170, i32* %alt_cost, align 4
  br label %if.end.1172

if.else.1171:                                     ; preds = %lor.lhs.false.1162, %lor.lhs.false.1155
  store i32 1, i32* %alt_fail, align 4
  br label %if.end.1172

if.end.1172:                                      ; preds = %if.else.1171, %if.then.1166
  br label %if.end.1173

if.end.1173:                                      ; preds = %if.end.1172, %if.end.1119
  br label %if.end.1174

if.end.1174:                                      ; preds = %if.end.1173, %if.then.1093
  br label %if.end.1175

if.end.1175:                                      ; preds = %if.end.1174, %if.end.1077
  br label %for.inc.1176

for.inc.1176:                                     ; preds = %if.end.1175, %while.end.227, %if.end
  %454 = load i32, i32* %i, align 4
  %inc1177 = add nsw i32 %454, 1
  store i32 %inc1177, i32* %i, align 4
  br label %for.cond.1

for.end.1178:                                     ; preds = %for.cond.1
  %455 = load i32, i32* %alt_fail, align 4
  %tobool1179 = icmp ne i32 %455, 0
  br i1 %tobool1179, label %if.then.1180, label %if.end.1181

if.then.1180:                                     ; preds = %for.end.1178
  br label %for.inc.1261

if.end.1181:                                      ; preds = %for.end.1178
  store i32 0, i32* %i, align 4
  br label %for.cond.1182

for.cond.1182:                                    ; preds = %for.inc.1258, %if.end.1181
  %456 = load i32, i32* %i, align 4
  %457 = load i32, i32* %n_ops.addr, align 4
  %cmp1183 = icmp slt i32 %456, %457
  br i1 %cmp1183, label %for.body.1185, label %for.end.1260

for.body.1185:                                    ; preds = %for.cond.1182
  %458 = load i32, i32* %i, align 4
  %idxprom1186 = sext i32 %458 to i64
  %459 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx1187 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %459, i64 %idxprom1186
  %460 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1187, align 8
  %461 = bitcast %struct.rtx_def* %460 to i32*
  %bf.load1188 = load i32, i32* %461, align 8
  %bf.clear1189 = and i32 %bf.load1188, 65535
  %cmp1190 = icmp eq i32 %bf.clear1189, 61
  br i1 %cmp1190, label %land.lhs.true.1192, label %if.end.1257

land.lhs.true.1192:                               ; preds = %for.body.1185
  %462 = load i32, i32* %i, align 4
  %idxprom1193 = sext i32 %462 to i64
  %463 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx1194 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %463, i64 %idxprom1193
  %464 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1194, align 8
  %fld1195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %464, i32 0, i32 1
  %arrayidx1196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1195, i32 0, i64 0
  %rtuint1197 = bitcast %union.rtunion_def* %arrayidx1196 to i32*
  %465 = load i32, i32* %rtuint1197, align 4
  %cmp1198 = icmp uge i32 %465, 53
  br i1 %cmp1198, label %if.then.1200, label %if.end.1257

if.then.1200:                                     ; preds = %land.lhs.true.1192
  %466 = load i32, i32* %i, align 4
  %idxprom1202 = sext i32 %466 to i64
  %467 = load %struct.costs*, %struct.costs** %op_costs.addr, align 8
  %arrayidx1203 = getelementptr inbounds %struct.costs, %struct.costs* %467, i64 %idxprom1202
  store %struct.costs* %arrayidx1203, %struct.costs** %pp1201, align 8
  %468 = load i32, i32* %i, align 4
  %idxprom1204 = sext i32 %468 to i64
  %arrayidx1205 = getelementptr inbounds [30 x %struct.costs], [30 x %struct.costs]* %this_op_costs, i32 0, i64 %idxprom1204
  store %struct.costs* %arrayidx1205, %struct.costs** %qq, align 8
  %469 = load i32, i32* %i, align 4
  %idxprom1206 = sext i32 %469 to i64
  %arrayidx1207 = getelementptr inbounds [30 x i32], [30 x i32]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 4), i32 0, i64 %idxprom1206
  %470 = load i32, i32* %arrayidx1207, align 4
  %cmp1208 = icmp eq i32 %470, 2
  %conv1209 = zext i1 %cmp1208 to i32
  %add1210 = add nsw i32 1, %conv1209
  store i32 %add1210, i32* %scale, align 4
  %471 = load %struct.costs*, %struct.costs** %pp1201, align 8
  %mem_cost1211 = getelementptr inbounds %struct.costs, %struct.costs* %471, i32 0, i32 1
  %472 = load i32, i32* %mem_cost1211, align 4
  %473 = load %struct.costs*, %struct.costs** %qq, align 8
  %mem_cost1212 = getelementptr inbounds %struct.costs, %struct.costs* %473, i32 0, i32 1
  %474 = load i32, i32* %mem_cost1212, align 4
  %475 = load i32, i32* %alt_cost, align 4
  %add1213 = add nsw i32 %474, %475
  %476 = load i32, i32* %scale, align 4
  %mul = mul nsw i32 %add1213, %476
  %cmp1214 = icmp slt i32 %472, %mul
  br i1 %cmp1214, label %cond.true.1216, label %cond.false.1218

cond.true.1216:                                   ; preds = %if.then.1200
  %477 = load %struct.costs*, %struct.costs** %pp1201, align 8
  %mem_cost1217 = getelementptr inbounds %struct.costs, %struct.costs* %477, i32 0, i32 1
  %478 = load i32, i32* %mem_cost1217, align 4
  br label %cond.end.1222

cond.false.1218:                                  ; preds = %if.then.1200
  %479 = load %struct.costs*, %struct.costs** %qq, align 8
  %mem_cost1219 = getelementptr inbounds %struct.costs, %struct.costs* %479, i32 0, i32 1
  %480 = load i32, i32* %mem_cost1219, align 4
  %481 = load i32, i32* %alt_cost, align 4
  %add1220 = add nsw i32 %480, %481
  %482 = load i32, i32* %scale, align 4
  %mul1221 = mul nsw i32 %add1220, %482
  br label %cond.end.1222

cond.end.1222:                                    ; preds = %cond.false.1218, %cond.true.1216
  %cond1223 = phi i32 [ %478, %cond.true.1216 ], [ %mul1221, %cond.false.1218 ]
  %483 = load %struct.costs*, %struct.costs** %pp1201, align 8
  %mem_cost1224 = getelementptr inbounds %struct.costs, %struct.costs* %483, i32 0, i32 1
  store i32 %cond1223, i32* %mem_cost1224, align 4
  store i32 0, i32* %class, align 4
  br label %for.cond.1225

for.cond.1225:                                    ; preds = %for.inc.1254, %cond.end.1222
  %484 = load i32, i32* %class, align 4
  %cmp1226 = icmp slt i32 %484, 25
  br i1 %cmp1226, label %for.body.1228, label %for.end.1256

for.body.1228:                                    ; preds = %for.cond.1225
  %485 = load i32, i32* %class, align 4
  %idxprom1229 = sext i32 %485 to i64
  %486 = load %struct.costs*, %struct.costs** %pp1201, align 8
  %cost1230 = getelementptr inbounds %struct.costs, %struct.costs* %486, i32 0, i32 0
  %arrayidx1231 = getelementptr inbounds [25 x i32], [25 x i32]* %cost1230, i32 0, i64 %idxprom1229
  %487 = load i32, i32* %arrayidx1231, align 4
  %488 = load i32, i32* %class, align 4
  %idxprom1232 = sext i32 %488 to i64
  %489 = load %struct.costs*, %struct.costs** %qq, align 8
  %cost1233 = getelementptr inbounds %struct.costs, %struct.costs* %489, i32 0, i32 0
  %arrayidx1234 = getelementptr inbounds [25 x i32], [25 x i32]* %cost1233, i32 0, i64 %idxprom1232
  %490 = load i32, i32* %arrayidx1234, align 4
  %491 = load i32, i32* %alt_cost, align 4
  %add1235 = add nsw i32 %490, %491
  %492 = load i32, i32* %scale, align 4
  %mul1236 = mul nsw i32 %add1235, %492
  %cmp1237 = icmp slt i32 %487, %mul1236
  br i1 %cmp1237, label %cond.true.1239, label %cond.false.1243

cond.true.1239:                                   ; preds = %for.body.1228
  %493 = load i32, i32* %class, align 4
  %idxprom1240 = sext i32 %493 to i64
  %494 = load %struct.costs*, %struct.costs** %pp1201, align 8
  %cost1241 = getelementptr inbounds %struct.costs, %struct.costs* %494, i32 0, i32 0
  %arrayidx1242 = getelementptr inbounds [25 x i32], [25 x i32]* %cost1241, i32 0, i64 %idxprom1240
  %495 = load i32, i32* %arrayidx1242, align 4
  br label %cond.end.1249

cond.false.1243:                                  ; preds = %for.body.1228
  %496 = load i32, i32* %class, align 4
  %idxprom1244 = sext i32 %496 to i64
  %497 = load %struct.costs*, %struct.costs** %qq, align 8
  %cost1245 = getelementptr inbounds %struct.costs, %struct.costs* %497, i32 0, i32 0
  %arrayidx1246 = getelementptr inbounds [25 x i32], [25 x i32]* %cost1245, i32 0, i64 %idxprom1244
  %498 = load i32, i32* %arrayidx1246, align 4
  %499 = load i32, i32* %alt_cost, align 4
  %add1247 = add nsw i32 %498, %499
  %500 = load i32, i32* %scale, align 4
  %mul1248 = mul nsw i32 %add1247, %500
  br label %cond.end.1249

cond.end.1249:                                    ; preds = %cond.false.1243, %cond.true.1239
  %cond1250 = phi i32 [ %495, %cond.true.1239 ], [ %mul1248, %cond.false.1243 ]
  %501 = load i32, i32* %class, align 4
  %idxprom1251 = sext i32 %501 to i64
  %502 = load %struct.costs*, %struct.costs** %pp1201, align 8
  %cost1252 = getelementptr inbounds %struct.costs, %struct.costs* %502, i32 0, i32 0
  %arrayidx1253 = getelementptr inbounds [25 x i32], [25 x i32]* %cost1252, i32 0, i64 %idxprom1251
  store i32 %cond1250, i32* %arrayidx1253, align 4
  br label %for.inc.1254

for.inc.1254:                                     ; preds = %cond.end.1249
  %503 = load i32, i32* %class, align 4
  %inc1255 = add nsw i32 %503, 1
  store i32 %inc1255, i32* %class, align 4
  br label %for.cond.1225

for.end.1256:                                     ; preds = %for.cond.1225
  br label %if.end.1257

if.end.1257:                                      ; preds = %for.end.1256, %land.lhs.true.1192, %for.body.1185
  br label %for.inc.1258

for.inc.1258:                                     ; preds = %if.end.1257
  %504 = load i32, i32* %i, align 4
  %inc1259 = add nsw i32 %504, 1
  store i32 %inc1259, i32* %i, align 4
  br label %for.cond.1182

for.end.1260:                                     ; preds = %for.cond.1182
  br label %for.inc.1261

for.inc.1261:                                     ; preds = %for.end.1260, %if.then.1180
  %505 = load i32, i32* %alt, align 4
  %inc1262 = add nsw i32 %505, 1
  store i32 %inc1262, i32* %alt, align 4
  br label %for.cond

for.end.1263:                                     ; preds = %for.cond
  %506 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %507 = bitcast %struct.rtx_def* %506 to i32*
  %bf.load1264 = load i32, i32* %507, align 8
  %bf.clear1265 = and i32 %bf.load1264, 65535
  %idxprom1266 = sext i32 %bf.clear1265 to i64
  %arrayidx1267 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom1266
  %508 = load i8, i8* %arrayidx1267, align 1
  %conv1268 = sext i8 %508 to i32
  %cmp1269 = icmp eq i32 %conv1268, 105
  br i1 %cmp1269, label %cond.true.1271, label %cond.false.1290

cond.true.1271:                                   ; preds = %for.end.1263
  %509 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1272 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %509, i32 0, i32 1
  %arrayidx1273 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1272, i32 0, i64 3
  %rtx1274 = bitcast %union.rtunion_def* %arrayidx1273 to %struct.rtx_def**
  %510 = load %struct.rtx_def*, %struct.rtx_def** %rtx1274, align 8
  %511 = bitcast %struct.rtx_def* %510 to i32*
  %bf.load1275 = load i32, i32* %511, align 8
  %bf.clear1276 = and i32 %bf.load1275, 65535
  %cmp1277 = icmp eq i32 %bf.clear1276, 47
  br i1 %cmp1277, label %cond.true.1279, label %cond.false.1283

cond.true.1279:                                   ; preds = %cond.true.1271
  %512 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1280 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %512, i32 0, i32 1
  %arrayidx1281 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1280, i32 0, i64 3
  %rtx1282 = bitcast %union.rtunion_def* %arrayidx1281 to %struct.rtx_def**
  %513 = load %struct.rtx_def*, %struct.rtx_def** %rtx1282, align 8
  br label %cond.end.1288

cond.false.1283:                                  ; preds = %cond.true.1271
  %514 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %515 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %515, i32 0, i32 1
  %arrayidx1285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1284, i32 0, i64 3
  %rtx1286 = bitcast %union.rtunion_def* %arrayidx1285 to %struct.rtx_def**
  %516 = load %struct.rtx_def*, %struct.rtx_def** %rtx1286, align 8
  %call1287 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %514, %struct.rtx_def* %516)
  br label %cond.end.1288

cond.end.1288:                                    ; preds = %cond.false.1283, %cond.true.1279
  %cond1289 = phi %struct.rtx_def* [ %513, %cond.true.1279 ], [ %call1287, %cond.false.1283 ]
  br label %cond.end.1291

cond.false.1290:                                  ; preds = %for.end.1263
  br label %cond.end.1291

cond.end.1291:                                    ; preds = %cond.false.1290, %cond.end.1288
  %cond1292 = phi %struct.rtx_def* [ %cond1289, %cond.end.1288 ], [ null, %cond.false.1290 ]
  store %struct.rtx_def* %cond1292, %struct.rtx_def** %set, align 8
  %cmp1293 = icmp ne %struct.rtx_def* %cond1292, null
  br i1 %cmp1293, label %land.lhs.true.1295, label %if.end.1654

land.lhs.true.1295:                               ; preds = %cond.end.1291
  %517 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx1296 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %517, i64 0
  %518 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1296, align 8
  %519 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld1297 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %519, i32 0, i32 1
  %arrayidx1298 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1297, i32 0, i64 0
  %rtx1299 = bitcast %union.rtunion_def* %arrayidx1298 to %struct.rtx_def**
  %520 = load %struct.rtx_def*, %struct.rtx_def** %rtx1299, align 8
  %cmp1300 = icmp eq %struct.rtx_def* %518, %520
  br i1 %cmp1300, label %land.lhs.true.1302, label %if.end.1654

land.lhs.true.1302:                               ; preds = %land.lhs.true.1295
  %521 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx1303 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %521, i64 1
  %522 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1303, align 8
  %523 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld1304 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %523, i32 0, i32 1
  %arrayidx1305 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1304, i32 0, i64 1
  %rtx1306 = bitcast %union.rtunion_def* %arrayidx1305 to %struct.rtx_def**
  %524 = load %struct.rtx_def*, %struct.rtx_def** %rtx1306, align 8
  %cmp1307 = icmp eq %struct.rtx_def* %522, %524
  br i1 %cmp1307, label %land.lhs.true.1309, label %if.end.1654

land.lhs.true.1309:                               ; preds = %land.lhs.true.1302
  %525 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx1310 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %525, i64 0
  %526 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1310, align 8
  %527 = bitcast %struct.rtx_def* %526 to i32*
  %bf.load1311 = load i32, i32* %527, align 8
  %bf.clear1312 = and i32 %bf.load1311, 65535
  %cmp1313 = icmp eq i32 %bf.clear1312, 61
  br i1 %cmp1313, label %land.lhs.true.1315, label %if.end.1654

land.lhs.true.1315:                               ; preds = %land.lhs.true.1309
  %528 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx1316 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %528, i64 1
  %529 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1316, align 8
  %530 = bitcast %struct.rtx_def* %529 to i32*
  %bf.load1317 = load i32, i32* %530, align 8
  %bf.clear1318 = and i32 %bf.load1317, 65535
  %cmp1319 = icmp eq i32 %bf.clear1318, 61
  br i1 %cmp1319, label %land.lhs.true.1321, label %if.end.1654

land.lhs.true.1321:                               ; preds = %land.lhs.true.1315
  %531 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %532 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx1322 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %532, i64 1
  %533 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1322, align 8
  %fld1323 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %533, i32 0, i32 1
  %arrayidx1324 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1323, i32 0, i64 0
  %rtuint1325 = bitcast %union.rtunion_def* %arrayidx1324 to i32*
  %534 = load i32, i32* %rtuint1325, align 4
  %call1326 = call %struct.rtx_def* @find_regno_note(%struct.rtx_def* %531, i32 1, i32 %534)
  %tobool1327 = icmp ne %struct.rtx_def* %call1326, null
  br i1 %tobool1327, label %if.then.1328, label %if.end.1654

if.then.1328:                                     ; preds = %land.lhs.true.1321
  store i32 0, i32* %i, align 4
  br label %for.cond.1329

for.cond.1329:                                    ; preds = %for.inc.1651, %if.then.1328
  %535 = load i32, i32* %i, align 4
  %cmp1330 = icmp sle i32 %535, 1
  br i1 %cmp1330, label %for.body.1332, label %for.end.1653

for.body.1332:                                    ; preds = %for.cond.1329
  %536 = load i32, i32* %i, align 4
  %idxprom1333 = sext i32 %536 to i64
  %537 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx1334 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %537, i64 %idxprom1333
  %538 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1334, align 8
  %fld1335 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %538, i32 0, i32 1
  %arrayidx1336 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1335, i32 0, i64 0
  %rtuint1337 = bitcast %union.rtunion_def* %arrayidx1336 to i32*
  %539 = load i32, i32* %rtuint1337, align 4
  %cmp1338 = icmp uge i32 %539, 53
  br i1 %cmp1338, label %if.then.1340, label %if.end.1650

if.then.1340:                                     ; preds = %for.body.1332
  %540 = load i32, i32* %i, align 4
  %tobool1341 = icmp ne i32 %540, 0
  %lnot = xor i1 %tobool1341, true
  %lnot.ext = zext i1 %lnot to i32
  %idxprom1342 = sext i32 %lnot.ext to i64
  %541 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx1343 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %541, i64 %idxprom1342
  %542 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1343, align 8
  %fld1344 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %542, i32 0, i32 1
  %arrayidx1345 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1344, i32 0, i64 0
  %rtuint1346 = bitcast %union.rtunion_def* %arrayidx1345 to i32*
  %543 = load i32, i32* %rtuint1346, align 4
  store i32 %543, i32* %regno, align 4
  %544 = load i32, i32* %i, align 4
  %tobool1348 = icmp ne i32 %544, 0
  %lnot1349 = xor i1 %tobool1348, true
  %lnot.ext1350 = zext i1 %lnot1349 to i32
  %idxprom1351 = sext i32 %lnot.ext1350 to i64
  %545 = load %struct.rtx_def**, %struct.rtx_def*** %ops.addr, align 8
  %arrayidx1352 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %545, i64 %idxprom1351
  %546 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1352, align 8
  %547 = bitcast %struct.rtx_def* %546 to i32*
  %bf.load1353 = load i32, i32* %547, align 8
  %bf.lshr1354 = lshr i32 %bf.load1353, 16
  %bf.clear1355 = and i32 %bf.lshr1354, 255
  store i32 %bf.clear1355, i32* %mode1347, align 4
  %548 = load i32, i32* %regno, align 4
  %cmp1357 = icmp uge i32 %548, 53
  br i1 %cmp1357, label %land.lhs.true.1359, label %if.else.1418

land.lhs.true.1359:                               ; preds = %if.then.1340
  %549 = load %struct.reg_pref*, %struct.reg_pref** %reg_pref.addr, align 8
  %cmp1360 = icmp ne %struct.reg_pref* %549, null
  br i1 %cmp1360, label %if.then.1362, label %if.else.1418

if.then.1362:                                     ; preds = %land.lhs.true.1359
  %550 = load i32, i32* %regno, align 4
  %idxprom1363 = zext i32 %550 to i64
  %551 = load %struct.reg_pref*, %struct.reg_pref** %reg_pref.addr, align 8
  %arrayidx1364 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %551, i64 %idxprom1363
  %prefclass1365 = getelementptr inbounds %struct.reg_pref, %struct.reg_pref* %arrayidx1364, i32 0, i32 0
  %552 = load i8, i8* %prefclass1365, align 1
  %conv1366 = sext i8 %552 to i32
  store i32 %conv1366, i32* %pref, align 4
  %553 = load i32, i32* %pref, align 4
  %conv1367 = trunc i32 %553 to i8
  %idxprom1368 = zext i8 %conv1367 to i64
  %arrayidx1369 = getelementptr inbounds [25 x i32], [25 x i32]* @reg_class_size, i32 0, i64 %idxprom1368
  %554 = load i32, i32* %arrayidx1369, align 4
  %555 = load i32, i32* %pref, align 4
  %call1370 = call i32 @reg_classes_intersect_p(i32 %555, i32 12)
  %tobool1371 = icmp ne i32 %call1370, 0
  br i1 %tobool1371, label %cond.false.1384, label %cond.true.1372

cond.true.1372:                                   ; preds = %if.then.1362
  %556 = load i32, i32* %mode1347, align 4
  %idxprom1373 = sext i32 %556 to i64
  %arrayidx1374 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1373
  %557 = load i32, i32* %arrayidx1374, align 4
  %cmp1375 = icmp eq i32 %557, 5
  br i1 %cmp1375, label %lor.end.1382, label %lor.rhs.1377

lor.rhs.1377:                                     ; preds = %cond.true.1372
  %558 = load i32, i32* %mode1347, align 4
  %idxprom1378 = sext i32 %558 to i64
  %arrayidx1379 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1378
  %559 = load i32, i32* %arrayidx1379, align 4
  %cmp1380 = icmp eq i32 %559, 6
  br label %lor.end.1382

lor.end.1382:                                     ; preds = %lor.rhs.1377, %cond.true.1372
  %560 = phi i1 [ true, %cond.true.1372 ], [ %cmp1380, %lor.rhs.1377 ]
  %cond1383 = select i1 %560, i32 2, i32 1
  br label %cond.end.1402

cond.false.1384:                                  ; preds = %if.then.1362
  %561 = load i32, i32* %mode1347, align 4
  %cmp1385 = icmp eq i32 %561, 18
  br i1 %cmp1385, label %cond.true.1387, label %cond.false.1388

cond.true.1387:                                   ; preds = %cond.false.1384
  br label %cond.end.1389

cond.false.1388:                                  ; preds = %cond.false.1384
  %562 = load i32, i32* %mode1347, align 4
  br label %cond.end.1389

cond.end.1389:                                    ; preds = %cond.false.1388, %cond.true.1387
  %cond1390 = phi i32 [ 17, %cond.true.1387 ], [ %562, %cond.false.1388 ]
  %idxprom1391 = sext i32 %cond1390 to i64
  %arrayidx1392 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom1391
  %563 = load i8, i8* %arrayidx1392, align 1
  %conv1393 = zext i8 %563 to i32
  %564 = load i32, i32* @target_flags, align 4
  %and1394 = and i32 %564, 33554432
  %tobool1395 = icmp ne i32 %and1394, 0
  %cond1396 = select i1 %tobool1395, i32 8, i32 4
  %add1397 = add nsw i32 %conv1393, %cond1396
  %sub1398 = sub nsw i32 %add1397, 1
  %565 = load i32, i32* @target_flags, align 4
  %and1399 = and i32 %565, 33554432
  %tobool1400 = icmp ne i32 %and1399, 0
  %cond1401 = select i1 %tobool1400, i32 8, i32 4
  %div = sdiv i32 %sub1398, %cond1401
  br label %cond.end.1402

cond.end.1402:                                    ; preds = %cond.end.1389, %lor.end.1382
  %cond1403 = phi i32 [ %cond1383, %lor.end.1382 ], [ %div, %cond.end.1389 ]
  %cmp1404 = icmp eq i32 %554, %cond1403
  br i1 %cmp1404, label %land.lhs.true.1406, label %if.end.1417

land.lhs.true.1406:                               ; preds = %cond.end.1402
  %566 = load i32, i32* %mode1347, align 4
  %567 = load i32, i32* %pref, align 4
  %568 = load i32, i32* %pref, align 4
  %call1407 = call i32 @ix86_register_move_cost(i32 %566, i32 %567, i32 %568)
  %cmp1408 = icmp slt i32 %call1407, 20
  br i1 %cmp1408, label %if.then.1410, label %if.end.1417

if.then.1410:                                     ; preds = %land.lhs.true.1406
  %569 = load i32, i32* %pref, align 4
  %conv1411 = trunc i32 %569 to i8
  %idxprom1412 = zext i8 %conv1411 to i64
  %570 = load i32, i32* %i, align 4
  %idxprom1413 = sext i32 %570 to i64
  %571 = load %struct.costs*, %struct.costs** %op_costs.addr, align 8
  %arrayidx1414 = getelementptr inbounds %struct.costs, %struct.costs* %571, i64 %idxprom1413
  %cost1415 = getelementptr inbounds %struct.costs, %struct.costs* %arrayidx1414, i32 0, i32 0
  %arrayidx1416 = getelementptr inbounds [25 x i32], [25 x i32]* %cost1415, i32 0, i64 %idxprom1412
  store i32 -1, i32* %arrayidx1416, align 4
  br label %if.end.1417

if.end.1417:                                      ; preds = %if.then.1410, %land.lhs.true.1406, %cond.end.1402
  br label %if.end.1649

if.else.1418:                                     ; preds = %land.lhs.true.1359, %if.then.1340
  %572 = load i32, i32* %regno, align 4
  %cmp1419 = icmp ult i32 %572, 53
  br i1 %cmp1419, label %if.then.1421, label %if.end.1648

if.then.1421:                                     ; preds = %if.else.1418
  store i32 0, i32* %class1356, align 4
  br label %for.cond.1422

for.cond.1422:                                    ; preds = %for.inc.1645, %if.then.1421
  %573 = load i32, i32* %class1356, align 4
  %cmp1423 = icmp slt i32 %573, 25
  br i1 %cmp1423, label %for.body.1425, label %for.end.1647

for.body.1425:                                    ; preds = %for.cond.1422
  %574 = load i32, i32* %class1356, align 4
  %idxprom1426 = sext i32 %574 to i64
  %arrayidx1427 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom1426
  %575 = load i64, i64* %arrayidx1427, align 8
  %576 = load i32, i32* %regno, align 4
  %sh_prom = zext i32 %576 to i64
  %shl = shl i64 1, %sh_prom
  %and1428 = and i64 %575, %shl
  %tobool1429 = icmp ne i64 %and1428, 0
  br i1 %tobool1429, label %land.lhs.true.1430, label %if.end.1644

land.lhs.true.1430:                               ; preds = %for.body.1425
  %577 = load i32, i32* %class1356, align 4
  %idxprom1431 = sext i32 %577 to i64
  %arrayidx1432 = getelementptr inbounds [25 x i32], [25 x i32]* @reg_class_size, i32 0, i64 %idxprom1431
  %578 = load i32, i32* %arrayidx1432, align 4
  %579 = load i32, i32* %class1356, align 4
  %call1433 = call i32 @reg_classes_intersect_p(i32 %579, i32 12)
  %tobool1434 = icmp ne i32 %call1433, 0
  br i1 %tobool1434, label %cond.false.1447, label %cond.true.1435

cond.true.1435:                                   ; preds = %land.lhs.true.1430
  %580 = load i32, i32* %mode1347, align 4
  %idxprom1436 = sext i32 %580 to i64
  %arrayidx1437 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1436
  %581 = load i32, i32* %arrayidx1437, align 4
  %cmp1438 = icmp eq i32 %581, 5
  br i1 %cmp1438, label %lor.end.1445, label %lor.rhs.1440

lor.rhs.1440:                                     ; preds = %cond.true.1435
  %582 = load i32, i32* %mode1347, align 4
  %idxprom1441 = sext i32 %582 to i64
  %arrayidx1442 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1441
  %583 = load i32, i32* %arrayidx1442, align 4
  %cmp1443 = icmp eq i32 %583, 6
  br label %lor.end.1445

lor.end.1445:                                     ; preds = %lor.rhs.1440, %cond.true.1435
  %584 = phi i1 [ true, %cond.true.1435 ], [ %cmp1443, %lor.rhs.1440 ]
  %cond1446 = select i1 %584, i32 2, i32 1
  br label %cond.end.1466

cond.false.1447:                                  ; preds = %land.lhs.true.1430
  %585 = load i32, i32* %mode1347, align 4
  %cmp1448 = icmp eq i32 %585, 18
  br i1 %cmp1448, label %cond.true.1450, label %cond.false.1451

cond.true.1450:                                   ; preds = %cond.false.1447
  br label %cond.end.1452

cond.false.1451:                                  ; preds = %cond.false.1447
  %586 = load i32, i32* %mode1347, align 4
  br label %cond.end.1452

cond.end.1452:                                    ; preds = %cond.false.1451, %cond.true.1450
  %cond1453 = phi i32 [ 17, %cond.true.1450 ], [ %586, %cond.false.1451 ]
  %idxprom1454 = sext i32 %cond1453 to i64
  %arrayidx1455 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom1454
  %587 = load i8, i8* %arrayidx1455, align 1
  %conv1456 = zext i8 %587 to i32
  %588 = load i32, i32* @target_flags, align 4
  %and1457 = and i32 %588, 33554432
  %tobool1458 = icmp ne i32 %and1457, 0
  %cond1459 = select i1 %tobool1458, i32 8, i32 4
  %add1460 = add nsw i32 %conv1456, %cond1459
  %sub1461 = sub nsw i32 %add1460, 1
  %589 = load i32, i32* @target_flags, align 4
  %and1462 = and i32 %589, 33554432
  %tobool1463 = icmp ne i32 %and1462, 0
  %cond1464 = select i1 %tobool1463, i32 8, i32 4
  %div1465 = sdiv i32 %sub1461, %cond1464
  br label %cond.end.1466

cond.end.1466:                                    ; preds = %cond.end.1452, %lor.end.1445
  %cond1467 = phi i32 [ %cond1446, %lor.end.1445 ], [ %div1465, %cond.end.1452 ]
  %cmp1468 = icmp eq i32 %578, %cond1467
  br i1 %cmp1468, label %if.then.1470, label %if.end.1644

if.then.1470:                                     ; preds = %cond.end.1466
  %590 = load i32, i32* %class1356, align 4
  %idxprom1471 = sext i32 %590 to i64
  %arrayidx1472 = getelementptr inbounds [25 x i32], [25 x i32]* @reg_class_size, i32 0, i64 %idxprom1471
  %591 = load i32, i32* %arrayidx1472, align 4
  %cmp1473 = icmp eq i32 %591, 1
  br i1 %cmp1473, label %if.then.1475, label %if.else.1481

if.then.1475:                                     ; preds = %if.then.1470
  %592 = load i32, i32* %class1356, align 4
  %idxprom1476 = sext i32 %592 to i64
  %593 = load i32, i32* %i, align 4
  %idxprom1477 = sext i32 %593 to i64
  %594 = load %struct.costs*, %struct.costs** %op_costs.addr, align 8
  %arrayidx1478 = getelementptr inbounds %struct.costs, %struct.costs* %594, i64 %idxprom1477
  %cost1479 = getelementptr inbounds %struct.costs, %struct.costs* %arrayidx1478, i32 0, i32 0
  %arrayidx1480 = getelementptr inbounds [25 x i32], [25 x i32]* %cost1479, i32 0, i64 %idxprom1476
  store i32 -1, i32* %arrayidx1480, align 4
  br label %if.end.1643

if.else.1481:                                     ; preds = %if.then.1470
  store i32 0, i32* %nr, align 4
  br label %for.cond.1482

for.cond.1482:                                    ; preds = %for.inc.1563, %if.else.1481
  %595 = load i32, i32* %nr, align 4
  %596 = load i32, i32* %regno, align 4
  %cmp1483 = icmp uge i32 %596, 8
  br i1 %cmp1483, label %land.lhs.true.1485, label %lor.lhs.false.1488

land.lhs.true.1485:                               ; preds = %for.cond.1482
  %597 = load i32, i32* %regno, align 4
  %cmp1486 = icmp ule i32 %597, 15
  br i1 %cmp1486, label %cond.true.1506, label %lor.lhs.false.1488

lor.lhs.false.1488:                               ; preds = %land.lhs.true.1485, %for.cond.1482
  %598 = load i32, i32* %regno, align 4
  %cmp1489 = icmp uge i32 %598, 21
  br i1 %cmp1489, label %land.lhs.true.1491, label %lor.lhs.false.1494

land.lhs.true.1491:                               ; preds = %lor.lhs.false.1488
  %599 = load i32, i32* %regno, align 4
  %cmp1492 = icmp ule i32 %599, 28
  br i1 %cmp1492, label %cond.true.1506, label %lor.lhs.false.1494

lor.lhs.false.1494:                               ; preds = %land.lhs.true.1491, %lor.lhs.false.1488
  %600 = load i32, i32* %regno, align 4
  %cmp1495 = icmp uge i32 %600, 45
  br i1 %cmp1495, label %land.lhs.true.1497, label %lor.lhs.false.1500

land.lhs.true.1497:                               ; preds = %lor.lhs.false.1494
  %601 = load i32, i32* %regno, align 4
  %cmp1498 = icmp ule i32 %601, 52
  br i1 %cmp1498, label %cond.true.1506, label %lor.lhs.false.1500

lor.lhs.false.1500:                               ; preds = %land.lhs.true.1497, %lor.lhs.false.1494
  %602 = load i32, i32* %regno, align 4
  %cmp1501 = icmp uge i32 %602, 29
  br i1 %cmp1501, label %land.lhs.true.1503, label %cond.false.1518

land.lhs.true.1503:                               ; preds = %lor.lhs.false.1500
  %603 = load i32, i32* %regno, align 4
  %cmp1504 = icmp ule i32 %603, 36
  br i1 %cmp1504, label %cond.true.1506, label %cond.false.1518

cond.true.1506:                                   ; preds = %land.lhs.true.1503, %land.lhs.true.1497, %land.lhs.true.1491, %land.lhs.true.1485
  %604 = load i32, i32* %mode1347, align 4
  %idxprom1507 = sext i32 %604 to i64
  %arrayidx1508 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1507
  %605 = load i32, i32* %arrayidx1508, align 4
  %cmp1509 = icmp eq i32 %605, 5
  br i1 %cmp1509, label %lor.end.1516, label %lor.rhs.1511

lor.rhs.1511:                                     ; preds = %cond.true.1506
  %606 = load i32, i32* %mode1347, align 4
  %idxprom1512 = sext i32 %606 to i64
  %arrayidx1513 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1512
  %607 = load i32, i32* %arrayidx1513, align 4
  %cmp1514 = icmp eq i32 %607, 6
  br label %lor.end.1516

lor.end.1516:                                     ; preds = %lor.rhs.1511, %cond.true.1506
  %608 = phi i1 [ true, %cond.true.1506 ], [ %cmp1514, %lor.rhs.1511 ]
  %cond1517 = select i1 %608, i32 2, i32 1
  br label %cond.end.1549

cond.false.1518:                                  ; preds = %land.lhs.true.1503, %lor.lhs.false.1500
  %609 = load i32, i32* %mode1347, align 4
  %cmp1519 = icmp eq i32 %609, 18
  br i1 %cmp1519, label %cond.true.1521, label %cond.false.1525

cond.true.1521:                                   ; preds = %cond.false.1518
  %610 = load i32, i32* @target_flags, align 4
  %and1522 = and i32 %610, 33554432
  %tobool1523 = icmp ne i32 %and1522, 0
  %cond1524 = select i1 %tobool1523, i32 2, i32 3
  br label %cond.end.1547

cond.false.1525:                                  ; preds = %cond.false.1518
  %611 = load i32, i32* %mode1347, align 4
  %cmp1526 = icmp eq i32 %611, 24
  br i1 %cmp1526, label %cond.true.1528, label %cond.false.1532

cond.true.1528:                                   ; preds = %cond.false.1525
  %612 = load i32, i32* @target_flags, align 4
  %and1529 = and i32 %612, 33554432
  %tobool1530 = icmp ne i32 %and1529, 0
  %cond1531 = select i1 %tobool1530, i32 4, i32 6
  br label %cond.end.1545

cond.false.1532:                                  ; preds = %cond.false.1525
  %613 = load i32, i32* %mode1347, align 4
  %idxprom1533 = sext i32 %613 to i64
  %arrayidx1534 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom1533
  %614 = load i8, i8* %arrayidx1534, align 1
  %conv1535 = zext i8 %614 to i32
  %615 = load i32, i32* @target_flags, align 4
  %and1536 = and i32 %615, 33554432
  %tobool1537 = icmp ne i32 %and1536, 0
  %cond1538 = select i1 %tobool1537, i32 8, i32 4
  %add1539 = add nsw i32 %conv1535, %cond1538
  %sub1540 = sub nsw i32 %add1539, 1
  %616 = load i32, i32* @target_flags, align 4
  %and1541 = and i32 %616, 33554432
  %tobool1542 = icmp ne i32 %and1541, 0
  %cond1543 = select i1 %tobool1542, i32 8, i32 4
  %div1544 = sdiv i32 %sub1540, %cond1543
  br label %cond.end.1545

cond.end.1545:                                    ; preds = %cond.false.1532, %cond.true.1528
  %cond1546 = phi i32 [ %cond1531, %cond.true.1528 ], [ %div1544, %cond.false.1532 ]
  br label %cond.end.1547

cond.end.1547:                                    ; preds = %cond.end.1545, %cond.true.1521
  %cond1548 = phi i32 [ %cond1524, %cond.true.1521 ], [ %cond1546, %cond.end.1545 ]
  br label %cond.end.1549

cond.end.1549:                                    ; preds = %cond.end.1547, %lor.end.1516
  %cond1550 = phi i32 [ %cond1517, %lor.end.1516 ], [ %cond1548, %cond.end.1547 ]
  %cmp1551 = icmp ult i32 %595, %cond1550
  br i1 %cmp1551, label %for.body.1553, label %for.end.1565

for.body.1553:                                    ; preds = %cond.end.1549
  %617 = load i32, i32* %class1356, align 4
  %idxprom1554 = sext i32 %617 to i64
  %arrayidx1555 = getelementptr inbounds [25 x i64], [25 x i64]* @reg_class_contents, i32 0, i64 %idxprom1554
  %618 = load i64, i64* %arrayidx1555, align 8
  %619 = load i32, i32* %regno, align 4
  %620 = load i32, i32* %nr, align 4
  %add1556 = add i32 %619, %620
  %sh_prom1557 = zext i32 %add1556 to i64
  %shl1558 = shl i64 1, %sh_prom1557
  %and1559 = and i64 %618, %shl1558
  %tobool1560 = icmp ne i64 %and1559, 0
  br i1 %tobool1560, label %if.end.1562, label %if.then.1561

if.then.1561:                                     ; preds = %for.body.1553
  br label %for.end.1565

if.end.1562:                                      ; preds = %for.body.1553
  br label %for.inc.1563

for.inc.1563:                                     ; preds = %if.end.1562
  %621 = load i32, i32* %nr, align 4
  %inc1564 = add i32 %621, 1
  store i32 %inc1564, i32* %nr, align 4
  br label %for.cond.1482

for.end.1565:                                     ; preds = %if.then.1561, %cond.end.1549
  %622 = load i32, i32* %nr, align 4
  %623 = load i32, i32* %regno, align 4
  %cmp1566 = icmp uge i32 %623, 8
  br i1 %cmp1566, label %land.lhs.true.1568, label %lor.lhs.false.1571

land.lhs.true.1568:                               ; preds = %for.end.1565
  %624 = load i32, i32* %regno, align 4
  %cmp1569 = icmp ule i32 %624, 15
  br i1 %cmp1569, label %cond.true.1589, label %lor.lhs.false.1571

lor.lhs.false.1571:                               ; preds = %land.lhs.true.1568, %for.end.1565
  %625 = load i32, i32* %regno, align 4
  %cmp1572 = icmp uge i32 %625, 21
  br i1 %cmp1572, label %land.lhs.true.1574, label %lor.lhs.false.1577

land.lhs.true.1574:                               ; preds = %lor.lhs.false.1571
  %626 = load i32, i32* %regno, align 4
  %cmp1575 = icmp ule i32 %626, 28
  br i1 %cmp1575, label %cond.true.1589, label %lor.lhs.false.1577

lor.lhs.false.1577:                               ; preds = %land.lhs.true.1574, %lor.lhs.false.1571
  %627 = load i32, i32* %regno, align 4
  %cmp1578 = icmp uge i32 %627, 45
  br i1 %cmp1578, label %land.lhs.true.1580, label %lor.lhs.false.1583

land.lhs.true.1580:                               ; preds = %lor.lhs.false.1577
  %628 = load i32, i32* %regno, align 4
  %cmp1581 = icmp ule i32 %628, 52
  br i1 %cmp1581, label %cond.true.1589, label %lor.lhs.false.1583

lor.lhs.false.1583:                               ; preds = %land.lhs.true.1580, %lor.lhs.false.1577
  %629 = load i32, i32* %regno, align 4
  %cmp1584 = icmp uge i32 %629, 29
  br i1 %cmp1584, label %land.lhs.true.1586, label %cond.false.1601

land.lhs.true.1586:                               ; preds = %lor.lhs.false.1583
  %630 = load i32, i32* %regno, align 4
  %cmp1587 = icmp ule i32 %630, 36
  br i1 %cmp1587, label %cond.true.1589, label %cond.false.1601

cond.true.1589:                                   ; preds = %land.lhs.true.1586, %land.lhs.true.1580, %land.lhs.true.1574, %land.lhs.true.1568
  %631 = load i32, i32* %mode1347, align 4
  %idxprom1590 = sext i32 %631 to i64
  %arrayidx1591 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1590
  %632 = load i32, i32* %arrayidx1591, align 4
  %cmp1592 = icmp eq i32 %632, 5
  br i1 %cmp1592, label %lor.end.1599, label %lor.rhs.1594

lor.rhs.1594:                                     ; preds = %cond.true.1589
  %633 = load i32, i32* %mode1347, align 4
  %idxprom1595 = sext i32 %633 to i64
  %arrayidx1596 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom1595
  %634 = load i32, i32* %arrayidx1596, align 4
  %cmp1597 = icmp eq i32 %634, 6
  br label %lor.end.1599

lor.end.1599:                                     ; preds = %lor.rhs.1594, %cond.true.1589
  %635 = phi i1 [ true, %cond.true.1589 ], [ %cmp1597, %lor.rhs.1594 ]
  %cond1600 = select i1 %635, i32 2, i32 1
  br label %cond.end.1632

cond.false.1601:                                  ; preds = %land.lhs.true.1586, %lor.lhs.false.1583
  %636 = load i32, i32* %mode1347, align 4
  %cmp1602 = icmp eq i32 %636, 18
  br i1 %cmp1602, label %cond.true.1604, label %cond.false.1608

cond.true.1604:                                   ; preds = %cond.false.1601
  %637 = load i32, i32* @target_flags, align 4
  %and1605 = and i32 %637, 33554432
  %tobool1606 = icmp ne i32 %and1605, 0
  %cond1607 = select i1 %tobool1606, i32 2, i32 3
  br label %cond.end.1630

cond.false.1608:                                  ; preds = %cond.false.1601
  %638 = load i32, i32* %mode1347, align 4
  %cmp1609 = icmp eq i32 %638, 24
  br i1 %cmp1609, label %cond.true.1611, label %cond.false.1615

cond.true.1611:                                   ; preds = %cond.false.1608
  %639 = load i32, i32* @target_flags, align 4
  %and1612 = and i32 %639, 33554432
  %tobool1613 = icmp ne i32 %and1612, 0
  %cond1614 = select i1 %tobool1613, i32 4, i32 6
  br label %cond.end.1628

cond.false.1615:                                  ; preds = %cond.false.1608
  %640 = load i32, i32* %mode1347, align 4
  %idxprom1616 = sext i32 %640 to i64
  %arrayidx1617 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom1616
  %641 = load i8, i8* %arrayidx1617, align 1
  %conv1618 = zext i8 %641 to i32
  %642 = load i32, i32* @target_flags, align 4
  %and1619 = and i32 %642, 33554432
  %tobool1620 = icmp ne i32 %and1619, 0
  %cond1621 = select i1 %tobool1620, i32 8, i32 4
  %add1622 = add nsw i32 %conv1618, %cond1621
  %sub1623 = sub nsw i32 %add1622, 1
  %643 = load i32, i32* @target_flags, align 4
  %and1624 = and i32 %643, 33554432
  %tobool1625 = icmp ne i32 %and1624, 0
  %cond1626 = select i1 %tobool1625, i32 8, i32 4
  %div1627 = sdiv i32 %sub1623, %cond1626
  br label %cond.end.1628

cond.end.1628:                                    ; preds = %cond.false.1615, %cond.true.1611
  %cond1629 = phi i32 [ %cond1614, %cond.true.1611 ], [ %div1627, %cond.false.1615 ]
  br label %cond.end.1630

cond.end.1630:                                    ; preds = %cond.end.1628, %cond.true.1604
  %cond1631 = phi i32 [ %cond1607, %cond.true.1604 ], [ %cond1629, %cond.end.1628 ]
  br label %cond.end.1632

cond.end.1632:                                    ; preds = %cond.end.1630, %lor.end.1599
  %cond1633 = phi i32 [ %cond1600, %lor.end.1599 ], [ %cond1631, %cond.end.1630 ]
  %cmp1634 = icmp eq i32 %622, %cond1633
  br i1 %cmp1634, label %if.then.1636, label %if.end.1642

if.then.1636:                                     ; preds = %cond.end.1632
  %644 = load i32, i32* %class1356, align 4
  %idxprom1637 = sext i32 %644 to i64
  %645 = load i32, i32* %i, align 4
  %idxprom1638 = sext i32 %645 to i64
  %646 = load %struct.costs*, %struct.costs** %op_costs.addr, align 8
  %arrayidx1639 = getelementptr inbounds %struct.costs, %struct.costs* %646, i64 %idxprom1638
  %cost1640 = getelementptr inbounds %struct.costs, %struct.costs* %arrayidx1639, i32 0, i32 0
  %arrayidx1641 = getelementptr inbounds [25 x i32], [25 x i32]* %cost1640, i32 0, i64 %idxprom1637
  store i32 -1, i32* %arrayidx1641, align 4
  br label %if.end.1642

if.end.1642:                                      ; preds = %if.then.1636, %cond.end.1632
  br label %if.end.1643

if.end.1643:                                      ; preds = %if.end.1642, %if.then.1475
  br label %if.end.1644

if.end.1644:                                      ; preds = %if.end.1643, %cond.end.1466, %for.body.1425
  br label %for.inc.1645

for.inc.1645:                                     ; preds = %if.end.1644
  %647 = load i32, i32* %class1356, align 4
  %inc1646 = add nsw i32 %647, 1
  store i32 %inc1646, i32* %class1356, align 4
  br label %for.cond.1422

for.end.1647:                                     ; preds = %for.cond.1422
  br label %if.end.1648

if.end.1648:                                      ; preds = %for.end.1647, %if.else.1418
  br label %if.end.1649

if.end.1649:                                      ; preds = %if.end.1648, %if.end.1417
  br label %if.end.1650

if.end.1650:                                      ; preds = %if.end.1649, %for.body.1332
  br label %for.inc.1651

for.inc.1651:                                     ; preds = %if.end.1650
  %648 = load i32, i32* %i, align 4
  %inc1652 = add nsw i32 %648, 1
  store i32 %inc1652, i32* %i, align 4
  br label %for.cond.1329

for.end.1653:                                     ; preds = %for.cond.1329
  br label %if.end.1654

if.end.1654:                                      ; preds = %for.end.1653, %land.lhs.true.1321, %land.lhs.true.1315, %land.lhs.true.1309, %land.lhs.true.1302, %land.lhs.true.1295, %cond.end.1291
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @copy_cost(%struct.rtx_def* %x, i32 %mode, i32 %class, i32 %to_p) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %class.addr = alloca i32, align 4
  %to_p.addr = alloca i32, align 4
  %secondary_class = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %class, i32* %class.addr, align 4
  store i32 %to_p, i32* %to_p.addr, align 4
  store i32 0, i32* %secondary_class, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 62
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = load i32, i32* %class.addr, align 4
  %call = call i32 @ix86_preferred_reload_class(%struct.rtx_def* %2, i32 %3)
  store i32 %call, i32* %class.addr, align 4
  %4 = load i32, i32* %to_p.addr, align 4
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.end.8, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %5 = load i32, i32* %class.addr, align 4
  %cmp2 = icmp eq i32 %5, 12
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.1
  %6 = load i32, i32* %class.addr, align 4
  %cmp3 = icmp eq i32 %6, 11
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false
  %7 = load i32, i32* %class.addr, align 4
  %cmp5 = icmp eq i32 %7, 10
  br i1 %cmp5, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %lor.lhs.false.4, %lor.lhs.false, %if.then.1
  %8 = load i32, i32* @target_flags, align 4
  %and = and i32 %8, 33554432
  %tobool6 = icmp ne i32 %and, 0
  br i1 %tobool6, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %land.lhs.true
  %9 = load i32, i32* %mode.addr, align 4
  %cmp7 = icmp eq i32 %9, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %lor.lhs.false.4
  %10 = phi i1 [ false, %land.lhs.true ], [ false, %lor.lhs.false.4 ], [ %cmp7, %land.rhs ]
  %cond = select i1 %10, i32 8, i32 0
  store i32 %cond, i32* %secondary_class, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %land.end, %if.end
  %11 = load i32, i32* %secondary_class, align 4
  %cmp9 = icmp ne i32 %11, 0
  br i1 %cmp9, label %if.then.10, label %if.end.16

if.then.10:                                       ; preds = %if.end.8
  %12 = load i32, i32* %class.addr, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32, i32* %secondary_class, align 4
  %idxprom11 = sext i32 %13 to i64
  %14 = load i32, i32* %mode.addr, align 4
  %idxprom12 = zext i32 %14 to i64
  %arrayidx = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @move_cost, i32 0, i64 %idxprom12
  %arrayidx13 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx, i32 0, i64 %idxprom11
  %arrayidx14 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx13, i32 0, i64 %idxprom
  %15 = load i32, i32* %arrayidx14, align 4
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = load i32, i32* %mode.addr, align 4
  %18 = load i32, i32* %secondary_class, align 4
  %call15 = call i32 @copy_cost(%struct.rtx_def* %16, i32 %17, i32 %18, i32 2)
  %add = add nsw i32 %15, %call15
  store i32 %add, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load17 = load i32, i32* %20, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 66
  br i1 %cmp19, label %if.then.22, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %if.end.16
  %21 = load i32, i32* %class.addr, align 4
  %cmp21 = icmp eq i32 %21, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %lor.lhs.false.20, %if.end.16
  %22 = load i32, i32* %mode.addr, align 4
  %23 = load i32, i32* %class.addr, align 4
  %24 = load i32, i32* %to_p.addr, align 4
  %call23 = call i32 @ix86_memory_move_cost(i32 %22, i32 %23, i32 %24)
  store i32 %call23, i32* %retval
  br label %return

if.else:                                          ; preds = %lor.lhs.false.20
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load24 = load i32, i32* %26, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 61
  br i1 %cmp26, label %if.then.27, label %if.else.37

if.then.27:                                       ; preds = %if.else
  %27 = load i32, i32* %class.addr, align 4
  %idxprom28 = sext i32 %27 to i64
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %29 = load i32, i32* %rtuint, align 4
  %idxprom30 = zext i32 %29 to i64
  %arrayidx31 = getelementptr inbounds [53 x i32], [53 x i32]* @regclass_map, i32 0, i64 %idxprom30
  %30 = load i32, i32* %arrayidx31, align 4
  %idxprom32 = sext i32 %30 to i64
  %31 = load i32, i32* %mode.addr, align 4
  %idxprom33 = zext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds [59 x [25 x [25 x i32]]], [59 x [25 x [25 x i32]]]* @move_cost, i32 0, i64 %idxprom33
  %arrayidx35 = getelementptr inbounds [25 x [25 x i32]], [25 x [25 x i32]]* %arrayidx34, i32 0, i64 %idxprom32
  %arrayidx36 = getelementptr inbounds [25 x i32], [25 x i32]* %arrayidx35, i32 0, i64 %idxprom28
  %32 = load i32, i32* %arrayidx36, align 4
  store i32 %32, i32* %retval
  br label %return

if.else.37:                                       ; preds = %if.else
  store i32 4, i32* %retval
  br label %return

return:                                           ; preds = %if.else.37, %if.then.27, %if.then.22, %if.then.10, %if.then
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare i32 @address_operand(%struct.rtx_def*, i32) #2

declare i32 @standard_80387_constant_p(%struct.rtx_def*) #2

declare i32 @standard_sse_constant_p(%struct.rtx_def*) #2

declare i32 @symbolic_reference_mentioned_p(%struct.rtx_def*) #2

declare i32 @legitimate_pic_address_disp_p(%struct.rtx_def*) #2

declare i32 @x86_64_sign_extended_value(%struct.rtx_def*) #2

declare i32 @x86_64_zero_extended_value(%struct.rtx_def*) #2

declare i32 @reg_fits_class_p(%struct.rtx_def*, i32, i32, i32) #2

declare %struct.rtx_def* @find_regno_note(%struct.rtx_def*, i32, i32) #2

declare i32 @ix86_preferred_reload_class(%struct.rtx_def*, i32) #2

declare i32 @subreg_lowpart_p(%struct.rtx_def*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
