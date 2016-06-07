; ModuleID = 'unroll.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._factor = type { i32, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.induction = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, %struct.rtx_def**, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, i16, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.induction*, %struct.induction*, i64, %struct.induction*, %struct.rtx_def* }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
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
%union.tree_node = type opaque
%struct.machine_function = type opaque
%struct.language_function = type opaque
%struct.loop = type { i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.edge_def**, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.simple_bitmap_def*, i32, %struct.edge_def**, i32, %struct.edge_def**, i32, %struct.simple_bitmap_def*, i32, i32, %struct.loop*, %struct.loop*, %struct.loop*, i32, i32, i8*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
%struct.loop_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i64, i32, i32, %struct.iv_class*, %struct.rtx_def*, %struct.loop_mem_info*, i32, i32, i32, i32, i32, %struct.rtx_def*, %struct.loop_movables, %struct.loop_regs, %struct.loop_ivs, i32 }
%struct.iv_class = type { i32, i32, %struct.induction*, i32, %struct.induction*, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.iv_class*, %struct.rtx_def*, %struct.rtx_def*, i8 }
%struct.loop_mem_info = type { %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.loop_movables = type { %struct.movable*, %struct.movable* }
%struct.movable = type opaque
%struct.loop_regs = type { i32, i32, %struct.loop_reg*, i32 }
%struct.loop_reg = type { i32, i32, %struct.rtx_def*, i8, i8 }
%struct.loop_ivs = type { %struct.iv*, i32, %struct.iv_class* }
%struct.iv = type { i32, %union.anon }
%union.anon = type { %struct.iv_class* }
%struct.inline_remap = type { i32, %union.tree_node*, %struct.rtx_def*, %struct.varray_head_tag*, %struct.rtx_def**, %struct.rtx_def**, %struct.rtx_def**, i32, i32, %struct.varray_head_tag*, i32, %struct.rtx_def*, %struct.rtvec_def*, %struct.rtvec_def*, %struct.rtvec_def*, %struct.rtx_def*, i8*, %struct.rtx_def**, i32, [30 x %struct.equiv_table], %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.equiv_table = type { %struct.rtx_def*, %struct.rtx_def* }
%struct.reg_info_def = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }

@loop_dump_stream = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [34 x i8] c"Unrolling failure: Loop too big.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Unrolling failure: cannot unroll EH regions.\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Unrolling failure: Unbalanced block notes.\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Loop unrolling: \00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c" iterations.\0A\00", align 1
@factors = internal global [4 x %struct._factor] [%struct._factor { i32 2, i32 0 }, %struct._factor { i32 3, i32 0 }, %struct._factor { i32 5, i32 0 }, %struct._factor { i32 7, i32 0 }], align 16
@.str.6 = private unnamed_addr constant [35 x i8] c"Loop unrolling: No factors found.\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Unrolling loop %d times.\0A\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"Unrolling failure: loop does not end with a JUMP_INSN.\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"Splitting not safe, because loop not entered at top.\0A\00", align 1
@.str.10 = private unnamed_addr constant [67 x i8] c"Unrolling failure: unknown insns between BEG note and loop label.\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Unrolling failure: loop start label is gone\0A\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"Unrolling failure: final conditional branch not to loop start\0A\00", align 1
@splittable_regs = internal global %struct.rtx_def** null, align 8
@splittable_regs_updates = internal global i32* null, align 8
@addr_combined_regs = internal global %struct.induction** null, align 8
@max_uid_for_loop = external global i32, align 4
@uid_luid = external global i32*, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"unroll.c\00", align 1
@__FUNCTION__.unroll_loop = private unnamed_addr constant [12 x i8] c"unroll_loop\00", align 1
@max_reg_before_loop = external global i32, align 4
@reg_n_info = external global %struct.varray_head_tag*, align 8
@.str.14 = private unnamed_addr constant [24 x i8] c"Marked reg %d as local\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Did not mark reg %d as local\0A\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"unroll_loop_precondition\00", align 1
@global_const_equiv_varray = external global %struct.varray_head_tag*, align 8
@cfun = external global %struct.function*, align 8
@flag_unroll_all_loops = external global i32, align 4
@.str.17 = private unnamed_addr constant [52 x i8] c"Unrolling failure: Naive unrolling not being done.\0A\00", align 1
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@word_mode = external global i32, align 4
@.str.18 = private unnamed_addr constant [55 x i8] c"Preconditioning: Success, number of iterations known, \00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@.str.20 = private unnamed_addr constant [53 x i8] c"Preconditioning: Could not find iteration variable.\0A\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"Preconditioning: Could not find initial value.\0A\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"Preconditioning: Could not find increment value.\0A\00", align 1
@.str.23 = private unnamed_addr constant [44 x i8] c"Preconditioning: Increment not a constant.\0A\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"Preconditioning: Increment not a constant power of 2.\0A\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"Preconditioning: EQ comparison loop.\0A\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"Preconditioning: Final value not invariant.\0A\00", align 1
@mode_class = external constant [59 x i32], align 16
@.str.27 = private unnamed_addr constant [57 x i8] c"Preconditioning: Floating point final or initial value.\0A\00", align 1
@__FUNCTION__.precondition_loop_p = private unnamed_addr constant [20 x i8] c"precondition_loop_p\00", align 1
@.str.28 = private unnamed_addr constant [60 x i8] c"Preconditioning: Iteration var not live before loop start.\0A\00", align 1
@mode_size = external constant [59 x i8], align 16
@.str.29 = private unnamed_addr constant [30 x i8] c"Preconditioning: Successful.\0A\00", align 1
@.str.30 = private unnamed_addr constant [39 x i8] c"Final biv value for %d, reversed biv.\0A\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Final biv value for %d, calculated.\0A\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"Final biv value for %d, biv dead after loop exit.\0A\00", align 1
@.str.33 = private unnamed_addr constant [49 x i8] c"Final giv value for %d, depends on reversed biv\0A\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"Final giv value for %d, calc from biv's value.\0A\00", align 1
@__FUNCTION__.final_giv_value = private unnamed_addr constant [16 x i8] c"final_giv_value\00", align 1
@.str.35 = private unnamed_addr constant [51 x i8] c"Final giv value for %d, giv dead after loop exit.\0A\00", align 1
@.str.36 = private unnamed_addr constant [53 x i8] c"Loop iterations: No final conditional branch found.\0A\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"Loop iterations: Loop has multiple back edges.\0A\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"Loop iterations: Jump insn has null JUMP_LABEL.\0A\00", align 1
@__FUNCTION__.loop_iterations = private unnamed_addr constant [16 x i8] c"loop_iterations\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"Loop iterations: No final comparison found.\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"Loop iterations: Comparison not against register.\0A\00", align 1
@.str.41 = private unnamed_addr constant [58 x i8] c"Loop iterations: No reg_iv_type entry for iteration var.\0A\00", align 1
@mode_bitsize = external constant [59 x i16], align 16
@.str.42 = private unnamed_addr constant [65 x i8] c"Loop iterations: Iteration var rejected because mode too large.\0A\00", align 1
@.str.43 = private unnamed_addr constant [48 x i8] c"Loop iterations: Iteration var not an integer.\0A\00", align 1
@.str.44 = private unnamed_addr constant [70 x i8] c"Loop iterations: Basic induction var not set once in each iteration.\0A\00", align 1
@.str.45 = private unnamed_addr constant [72 x i8] c"Loop iterations: General induction var not set once in each iteration.\0A\00", align 1
@.str.46 = private unnamed_addr constant [57 x i8] c"Loop iterations: Basic induction var add_val is REG %d.\0A\00", align 1
@.str.47 = private unnamed_addr constant [56 x i8] c"Loop iterations: Giv iterator, initial value bias %ld.\0A\00", align 1
@.str.48 = private unnamed_addr constant [54 x i8] c"Loop iterations: Not basic or general induction var.\0A\00", align 1
@.str.49 = private unnamed_addr constant [55 x i8] c"Loop iterations: Increment value can't be calculated.\0A\00", align 1
@.str.50 = private unnamed_addr constant [47 x i8] c"Loop iterations: Increment value not constant \00", align 1
@.str.51 = private unnamed_addr constant [45 x i8] c"Loop iterations: Initial value not constant \00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"Loop iterations: EQ comparison loop.\0A\00", align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"Loop iterations: Final value not constant \00", align 1
@.str.54 = private unnamed_addr constant [35 x i8] c"Loop iterations: Not normal loop.\0A\00", align 1
@rtx_class = external constant [153 x i8], align 16
@__FUNCTION__.copy_loop_body = private unnamed_addr constant [15 x i8] c"copy_loop_body\00", align 1
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@__FUNCTION__.calculate_giv_inc = private unnamed_addr constant [18 x i8] c"calculate_giv_inc\00", align 1
@__FUNCTION__.initial_reg_note_copy = private unnamed_addr constant [22 x i8] c"initial_reg_note_copy\00", align 1
@__FUNCTION__.final_reg_note_copy = private unnamed_addr constant [20 x i8] c"final_reg_note_copy\00", align 1
@__FUNCTION__.fold_rtx_mult_add = private unnamed_addr constant [18 x i8] c"fold_rtx_mult_add\00", align 1
@__FUNCTION__.find_splittable_regs = private unnamed_addr constant [21 x i8] c"find_splittable_regs\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"Biv %d initial value remapped to %d.\0A\00", align 1
@.str.56 = private unnamed_addr constant [23 x i8] c"Biv %d safe to split.\0A\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"Biv %d mapped to %d for split.\0A\00", align 1
@__FUNCTION__.find_splittable_givs = private unnamed_addr constant [21 x i8] c"find_splittable_givs\00", align 1
@.str.58 = private unnamed_addr constant [44 x i8] c"giv combined with unreduced giv not split.\0A\00", align 1
@.str.59 = private unnamed_addr constant [33 x i8] c"Sharing address givs in insn %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"Eliminating constant from giv %d\0A\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"Invalid address for giv at insn %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [31 x i8] c"Invalid init insn, rewritten.\0A\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"DEST_ADDR giv being split.\0A\00", align 1
@.str.64 = private unnamed_addr constant [34 x i8] c"Giv %d at insn %d safe to split.\0A\00", align 1
@__FUNCTION__.verify_addresses = private unnamed_addr constant [17 x i8] c"verify_addresses\00", align 1
@__FUNCTION__.subtract_reg_term = private unnamed_addr constant [18 x i8] c"subtract_reg_term\00", align 1
@rtx_format = external constant [153 x i8*], align 16
@rtx_length = external constant [153 x i8], align 16

; Function Attrs: nounwind uwtable
define void @unroll_loop(%struct.loop* %loop, i32 %insn_count, i32 %strength_reduce_p) #0 {
entry:
  %loop.addr = alloca %struct.loop*, align 8
  %insn_count.addr = alloca i32, align 4
  %strength_reduce_p.addr = alloca i32, align 4
  %loop_info = alloca %struct.loop_info*, align 8
  %ivs = alloca %struct.loop_ivs*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %temp = alloca i64, align 8
  %unroll_number = alloca i32, align 4
  %copy_start = alloca %struct.rtx_def*, align 8
  %copy_end = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %sequence = alloca %struct.rtx_def*, align 8
  %pattern = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %max_labelno = alloca i32, align 4
  %max_insnno = alloca i32, align 4
  %insert_before = alloca %struct.rtx_def*, align 8
  %map = alloca %struct.inline_remap*, align 8
  %local_label = alloca i8*, align 8
  %local_regno = alloca i8*, align 8
  %max_local_regnum = alloca i32, align 4
  %maxregnum = alloca i32, align 4
  %exit_label = alloca %struct.rtx_def*, align 8
  %start_label = alloca %struct.rtx_def*, align 8
  %bl = alloca %struct.iv_class*, align 8
  %splitting_not_safe = alloca i32, align 4
  %unroll_type = alloca i32, align 4
  %loop_preconditioned = alloca i32, align 4
  %safety_label = alloca %struct.rtx_def*, align 8
  %last_loop_insn = alloca %struct.rtx_def*, align 8
  %loop_start = alloca %struct.rtx_def*, align 8
  %loop_end = alloca %struct.rtx_def*, align 8
  %block_begins = alloca i32, align 4
  %block_ends = alloca i32, align 4
  %ujump = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %diff_vec_p = alloca i32, align 4
  %len = alloca i32, align 4
  %label = alloca %struct.rtx_def*, align 8
  %copy_start_luid = alloca i32, align 4
  %copy_end_luid = alloca i32, align 4
  %initial_value = alloca %struct.rtx_def*, align 8
  %final_value = alloca %struct.rtx_def*, align 8
  %increment = alloca %struct.rtx_def*, align 8
  %mode = alloca i32, align 4
  %diff = alloca %struct.rtx_def*, align 8
  %labels = alloca %struct.rtx_def**, align 8
  %abs_inc = alloca i32, align 4
  %neg_inc = alloca i32, align 4
  %cc = alloca i32, align 4
  %less_p = alloca i32, align 4
  %unsigned_p = alloca i32, align 4
  %incremented_initval = alloca %struct.rtx_def*, align 8
  %cmp_const = alloca i32, align 4
  %cmp_code = alloca i32, align 4
  %cmp_const872 = alloca i32, align 4
  %cmp_code873 = alloca i32, align 4
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store i32 %insn_count, i32* %insn_count.addr, align 4
  store i32 %strength_reduce_p, i32* %strength_reduce_p.addr, align 4
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 22
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.loop_info*
  store %struct.loop_info* %2, %struct.loop_info** %loop_info, align 8
  %3 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux1 = getelementptr inbounds %struct.loop, %struct.loop* %3, i32 0, i32 22
  %4 = load i8*, i8** %aux1, align 8
  %5 = bitcast i8* %4 to %struct.loop_info*
  %ivs2 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %5, i32 0, i32 29
  store %struct.loop_ivs* %ivs2, %struct.loop_ivs** %ivs, align 8
  store i32 1, i32* %unroll_number, align 4
  store i8* null, i8** %local_label, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %exit_label, align 8
  store i32 0, i32* %splitting_not_safe, align 4
  store i32 2, i32* %unroll_type, align 4
  store i32 0, i32* %loop_preconditioned, align 4
  %6 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start = getelementptr inbounds %struct.loop, %struct.loop* %6, i32 0, i32 26
  %7 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %loop_start, align 8
  %8 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end = getelementptr inbounds %struct.loop, %struct.loop* %8, i32 0, i32 27
  %9 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %loop_end, align 8
  %10 = load i32, i32* %insn_count.addr, align 4
  %cmp = icmp sgt i32 %10, 50
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool = icmp ne %struct._IO_FILE* %11, null
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %return

if.end.4:                                         ; preds = %entry
  store i32 0, i32* %block_begins, align 4
  store i32 0, i32* %block_ends, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %cmp5 = icmp ne %struct.rtx_def* %14, %15
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp6 = icmp eq i32 %bf.clear, 37
  br i1 %cmp6, label %if.then.7, label %if.end.32

if.then.7:                                        ; preds = %for.body
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %19 = load i32, i32* %rtint, align 4
  %cmp8 = icmp eq i32 %19, -98
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.then.7
  %20 = load i32, i32* %block_begins, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %block_begins, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.then.7
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 4
  %rtint12 = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %22 = load i32, i32* %rtint12, align 4
  %cmp13 = icmp eq i32 %22, -97
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.else
  %23 = load i32, i32* %block_ends, align 4
  %inc15 = add nsw i32 %23, 1
  store i32 %inc15, i32* %block_ends, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.9
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 4
  %rtint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %25 = load i32, i32* %rtint20, align 4
  %cmp21 = icmp eq i32 %25, -86
  br i1 %cmp21, label %if.then.26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.17
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 4
  %rtint24 = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %27 = load i32, i32* %rtint24, align 4
  %cmp25 = icmp eq i32 %27, -85
  br i1 %cmp25, label %if.then.26, label %if.end.31

if.then.26:                                       ; preds = %lor.lhs.false, %if.end.17
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool27 = icmp ne %struct._IO_FILE* %28, null
  br i1 %tobool27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %if.then.26
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0))
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %if.then.26
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %31 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load i32, i32* %block_begins, align 4
  %33 = load i32, i32* %block_ends, align 4
  %cmp35 = icmp ne i32 %32, %33
  br i1 %cmp35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %for.end
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool37 = icmp ne %struct._IO_FILE* %34, null
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.then.36
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.then.36
  br label %return

if.end.41:                                        ; preds = %for.end
  %36 = load i32, i32* %strength_reduce_p.addr, align 4
  %tobool42 = icmp ne i32 %36, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %if.end.41
  %37 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations = getelementptr inbounds %struct.loop_info, %struct.loop_info* %37, i32 0, i32 15
  store i64 0, i64* %n_iterations, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.43, %if.end.41
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool45 = icmp ne %struct._IO_FILE* %38, null
  br i1 %tobool45, label %land.lhs.true, label %if.end.53

land.lhs.true:                                    ; preds = %if.end.44
  %39 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations46 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %39, i32 0, i32 15
  %40 = load i64, i64* %n_iterations46, align 8
  %cmp47 = icmp ugt i64 %40, 0
  br i1 %cmp47, label %if.then.48, label %if.end.53

if.then.48:                                       ; preds = %land.lhs.true
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call49 = call i32 @fputs(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), %struct._IO_FILE* %41)
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %43 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations50 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %43, i32 0, i32 15
  %44 = load i64, i64* %n_iterations50, align 8
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %44)
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call52 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._IO_FILE* %45)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.48, %land.lhs.true, %if.end.44
  %46 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %call54 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %46)
  store %struct.rtx_def* %call54, %struct.rtx_def** %last_loop_insn, align 8
  %47 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations55 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %47, i32 0, i32 15
  %48 = load i64, i64* %n_iterations55, align 8
  %cmp56 = icmp eq i64 %48, 1
  br i1 %cmp56, label %if.then.57, label %if.else.99

if.then.57:                                       ; preds = %if.end.53
  %49 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start58 = getelementptr inbounds %struct.loop, %struct.loop* %49, i32 0, i32 26
  %50 = load %struct.rtx_def*, %struct.rtx_def** %start58, align 8
  %51 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %cont = getelementptr inbounds %struct.loop, %struct.loop* %51, i32 0, i32 24
  %52 = load %struct.rtx_def*, %struct.rtx_def** %cont, align 8
  %call59 = call %struct.rtx_def* @ujump_to_loop_cont(%struct.rtx_def* %50, %struct.rtx_def* %52)
  store %struct.rtx_def* %call59, %struct.rtx_def** %ujump, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %ujump, align 8
  %tobool60 = icmp ne %struct.rtx_def* %53, null
  br i1 %tobool60, label %if.then.61, label %if.end.63

if.then.61:                                       ; preds = %if.then.57
  %54 = load %struct.rtx_def*, %struct.rtx_def** %ujump, align 8
  %call62 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %54)
  br label %if.end.63

if.end.63:                                        ; preds = %if.then.61, %if.then.57
  %55 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load64 = load i32, i32* %56, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp eq i32 %bf.clear65, 35
  br i1 %cmp66, label %if.then.67, label %if.else.72

if.then.67:                                       ; preds = %if.end.63
  %57 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 1
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %call71 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %58)
  br label %if.end.79

if.else.72:                                       ; preds = %if.end.63
  %59 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load73 = load i32, i32* %60, align 8
  %bf.clear74 = and i32 %bf.load73, 65535
  %cmp75 = icmp eq i32 %bf.clear74, 33
  br i1 %cmp75, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.else.72
  %61 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %call77 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %61)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.else.72
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.67
  %62 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %vtop = getelementptr inbounds %struct.loop, %struct.loop* %62, i32 0, i32 23
  %63 = load %struct.rtx_def*, %struct.rtx_def** %vtop, align 8
  %tobool80 = icmp ne %struct.rtx_def* %63, null
  br i1 %tobool80, label %if.then.81, label %if.end.84

if.then.81:                                       ; preds = %if.end.79
  %64 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %vtop82 = getelementptr inbounds %struct.loop, %struct.loop* %64, i32 0, i32 23
  %65 = load %struct.rtx_def*, %struct.rtx_def** %vtop82, align 8
  %call83 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %65)
  br label %if.end.84

if.end.84:                                        ; preds = %if.then.81, %if.end.79
  %66 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %cont85 = getelementptr inbounds %struct.loop, %struct.loop* %66, i32 0, i32 24
  %67 = load %struct.rtx_def*, %struct.rtx_def** %cont85, align 8
  %tobool86 = icmp ne %struct.rtx_def* %67, null
  br i1 %tobool86, label %if.then.87, label %if.end.90

if.then.87:                                       ; preds = %if.end.84
  %68 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %cont88 = getelementptr inbounds %struct.loop, %struct.loop* %68, i32 0, i32 24
  %69 = load %struct.rtx_def*, %struct.rtx_def** %cont88, align 8
  %call89 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %69)
  br label %if.end.90

if.end.90:                                        ; preds = %if.then.87, %if.end.84
  %70 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %tobool91 = icmp ne %struct.rtx_def* %70, null
  br i1 %tobool91, label %if.then.92, label %if.end.94

if.then.92:                                       ; preds = %if.end.90
  %71 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %call93 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %71)
  br label %if.end.94

if.end.94:                                        ; preds = %if.then.92, %if.end.90
  %72 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %tobool95 = icmp ne %struct.rtx_def* %72, null
  br i1 %tobool95, label %if.then.96, label %if.end.98

if.then.96:                                       ; preds = %if.end.94
  %73 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %call97 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %73)
  br label %if.end.98

if.end.98:                                        ; preds = %if.then.96, %if.end.94
  br label %return

if.else.99:                                       ; preds = %if.end.53
  %74 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations100 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %74, i32 0, i32 15
  %75 = load i64, i64* %n_iterations100, align 8
  %cmp101 = icmp ugt i64 %75, 0
  br i1 %cmp101, label %land.lhs.true.102, label %if.else.112

land.lhs.true.102:                                ; preds = %if.else.99
  %76 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations103 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %76, i32 0, i32 15
  %77 = load i64, i64* %n_iterations103, align 8
  %cmp104 = icmp ult i64 %77, 100
  br i1 %cmp104, label %land.lhs.true.105, label %if.else.112

land.lhs.true.105:                                ; preds = %land.lhs.true.102
  %78 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations106 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %78, i32 0, i32 15
  %79 = load i64, i64* %n_iterations106, align 8
  %80 = load i32, i32* %insn_count.addr, align 4
  %conv = sext i32 %80 to i64
  %mul = mul i64 %79, %conv
  %cmp107 = icmp ult i64 %mul, 100
  br i1 %cmp107, label %if.then.109, label %if.else.112

if.then.109:                                      ; preds = %land.lhs.true.105
  %81 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations110 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %81, i32 0, i32 15
  %82 = load i64, i64* %n_iterations110, align 8
  %conv111 = trunc i64 %82 to i32
  store i32 %conv111, i32* %unroll_number, align 4
  store i32 0, i32* %unroll_type, align 4
  br label %if.end.190

if.else.112:                                      ; preds = %land.lhs.true.105, %land.lhs.true.102, %if.else.99
  %83 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations113 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %83, i32 0, i32 15
  %84 = load i64, i64* %n_iterations113, align 8
  %cmp114 = icmp ugt i64 %84, 0
  br i1 %cmp114, label %if.then.116, label %if.end.189

if.then.116:                                      ; preds = %if.else.112
  store i32 0, i32* %i, align 4
  br label %for.cond.117

for.cond.117:                                     ; preds = %for.inc.122, %if.then.116
  %85 = load i32, i32* %i, align 4
  %cmp118 = icmp slt i32 %85, 4
  br i1 %cmp118, label %for.body.120, label %for.end.124

for.body.120:                                     ; preds = %for.cond.117
  %86 = load i32, i32* %i, align 4
  %idxprom = sext i32 %86 to i64
  %arrayidx121 = getelementptr inbounds [4 x %struct._factor], [4 x %struct._factor]* @factors, i32 0, i64 %idxprom
  %count = getelementptr inbounds %struct._factor, %struct._factor* %arrayidx121, i32 0, i32 1
  store i32 0, i32* %count, align 4
  br label %for.inc.122

for.inc.122:                                      ; preds = %for.body.120
  %87 = load i32, i32* %i, align 4
  %inc123 = add nsw i32 %87, 1
  store i32 %inc123, i32* %i, align 4
  br label %for.cond.117

for.end.124:                                      ; preds = %for.cond.117
  %88 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations125 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %88, i32 0, i32 15
  %89 = load i64, i64* %n_iterations125, align 8
  store i64 %89, i64* %temp, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond.126

for.cond.126:                                     ; preds = %for.inc.143, %for.end.124
  %90 = load i32, i32* %i, align 4
  %cmp127 = icmp sge i32 %90, 0
  br i1 %cmp127, label %for.body.129, label %for.end.144

for.body.129:                                     ; preds = %for.cond.126
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.129
  %91 = load i64, i64* %temp, align 8
  %92 = load i32, i32* %i, align 4
  %idxprom130 = sext i32 %92 to i64
  %arrayidx131 = getelementptr inbounds [4 x %struct._factor], [4 x %struct._factor]* @factors, i32 0, i64 %idxprom130
  %factor = getelementptr inbounds %struct._factor, %struct._factor* %arrayidx131, i32 0, i32 0
  %93 = load i32, i32* %factor, align 4
  %conv132 = sext i32 %93 to i64
  %rem = urem i64 %91, %conv132
  %cmp133 = icmp eq i64 %rem, 0
  br i1 %cmp133, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %94 = load i32, i32* %i, align 4
  %idxprom135 = sext i32 %94 to i64
  %arrayidx136 = getelementptr inbounds [4 x %struct._factor], [4 x %struct._factor]* @factors, i32 0, i64 %idxprom135
  %count137 = getelementptr inbounds %struct._factor, %struct._factor* %arrayidx136, i32 0, i32 1
  %95 = load i32, i32* %count137, align 4
  %inc138 = add nsw i32 %95, 1
  store i32 %inc138, i32* %count137, align 4
  %96 = load i64, i64* %temp, align 8
  %97 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %97 to i64
  %arrayidx140 = getelementptr inbounds [4 x %struct._factor], [4 x %struct._factor]* @factors, i32 0, i64 %idxprom139
  %factor141 = getelementptr inbounds %struct._factor, %struct._factor* %arrayidx140, i32 0, i32 0
  %98 = load i32, i32* %factor141, align 4
  %conv142 = sext i32 %98 to i64
  %div = udiv i64 %96, %conv142
  store i64 %div, i64* %temp, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc.143

for.inc.143:                                      ; preds = %while.end
  %99 = load i32, i32* %i, align 4
  %dec = add nsw i32 %99, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.126

for.end.144:                                      ; preds = %for.cond.126
  store i32 1, i32* %unroll_number, align 4
  %100 = load i32, i32* %insn_count.addr, align 4
  %conv145 = sext i32 %100 to i64
  store i64 %conv145, i64* %temp, align 8
  store i32 3, i32* %i, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.177, %for.end.144
  %101 = load i32, i32* %i, align 4
  %cmp147 = icmp sge i32 %101, 0
  br i1 %cmp147, label %for.body.149, label %for.end.179

for.body.149:                                     ; preds = %for.cond.146
  br label %while.cond.150

while.cond.150:                                   ; preds = %if.end.175, %for.body.149
  %102 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %102 to i64
  %arrayidx152 = getelementptr inbounds [4 x %struct._factor], [4 x %struct._factor]* @factors, i32 0, i64 %idxprom151
  %count153 = getelementptr inbounds %struct._factor, %struct._factor* %arrayidx152, i32 0, i32 1
  %103 = load i32, i32* %count153, align 4
  %dec154 = add nsw i32 %103, -1
  store i32 %dec154, i32* %count153, align 4
  %tobool155 = icmp ne i32 %103, 0
  br i1 %tobool155, label %while.body.156, label %while.end.176

while.body.156:                                   ; preds = %while.cond.150
  %104 = load i64, i64* %temp, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %105 to i64
  %arrayidx158 = getelementptr inbounds [4 x %struct._factor], [4 x %struct._factor]* @factors, i32 0, i64 %idxprom157
  %factor159 = getelementptr inbounds %struct._factor, %struct._factor* %arrayidx158, i32 0, i32 0
  %106 = load i32, i32* %factor159, align 4
  %conv160 = sext i32 %106 to i64
  %mul161 = mul i64 %104, %conv160
  %cmp162 = icmp ult i64 %mul161, 100
  br i1 %cmp162, label %if.then.164, label %if.else.174

if.then.164:                                      ; preds = %while.body.156
  %107 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %107 to i64
  %arrayidx166 = getelementptr inbounds [4 x %struct._factor], [4 x %struct._factor]* @factors, i32 0, i64 %idxprom165
  %factor167 = getelementptr inbounds %struct._factor, %struct._factor* %arrayidx166, i32 0, i32 0
  %108 = load i32, i32* %factor167, align 4
  %109 = load i32, i32* %unroll_number, align 4
  %mul168 = mul nsw i32 %109, %108
  store i32 %mul168, i32* %unroll_number, align 4
  %110 = load i32, i32* %i, align 4
  %idxprom169 = sext i32 %110 to i64
  %arrayidx170 = getelementptr inbounds [4 x %struct._factor], [4 x %struct._factor]* @factors, i32 0, i64 %idxprom169
  %factor171 = getelementptr inbounds %struct._factor, %struct._factor* %arrayidx170, i32 0, i32 0
  %111 = load i32, i32* %factor171, align 4
  %conv172 = sext i32 %111 to i64
  %112 = load i64, i64* %temp, align 8
  %mul173 = mul i64 %112, %conv172
  store i64 %mul173, i64* %temp, align 8
  br label %if.end.175

if.else.174:                                      ; preds = %while.body.156
  br label %while.end.176

if.end.175:                                       ; preds = %if.then.164
  br label %while.cond.150

while.end.176:                                    ; preds = %if.else.174, %while.cond.150
  br label %for.inc.177

for.inc.177:                                      ; preds = %while.end.176
  %113 = load i32, i32* %i, align 4
  %dec178 = add nsw i32 %113, -1
  store i32 %dec178, i32* %i, align 4
  br label %for.cond.146

for.end.179:                                      ; preds = %for.cond.146
  %114 = load i32, i32* %unroll_number, align 4
  %cmp180 = icmp eq i32 %114, 1
  br i1 %cmp180, label %if.then.182, label %if.else.187

if.then.182:                                      ; preds = %for.end.179
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool183 = icmp ne %struct._IO_FILE* %115, null
  br i1 %tobool183, label %if.then.184, label %if.end.186

if.then.184:                                      ; preds = %if.then.182
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0))
  br label %if.end.186

if.end.186:                                       ; preds = %if.then.184, %if.then.182
  br label %if.end.188

if.else.187:                                      ; preds = %for.end.179
  store i32 1, i32* %unroll_type, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.187, %if.end.186
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188, %if.else.112
  br label %if.end.190

if.end.190:                                       ; preds = %if.end.189, %if.then.109
  br label %if.end.191

if.end.191:                                       ; preds = %if.end.190
  %117 = load i32, i32* %unroll_type, align 4
  %cmp192 = icmp eq i32 %117, 2
  br i1 %cmp192, label %if.then.194, label %if.end.207

if.then.194:                                      ; preds = %if.end.191
  %118 = load i32, i32* %insn_count.addr, align 4
  %mul195 = mul nsw i32 8, %118
  %cmp196 = icmp slt i32 %mul195, 100
  br i1 %cmp196, label %if.then.198, label %if.else.199

if.then.198:                                      ; preds = %if.then.194
  store i32 8, i32* %unroll_number, align 4
  br label %if.end.206

if.else.199:                                      ; preds = %if.then.194
  %119 = load i32, i32* %insn_count.addr, align 4
  %mul200 = mul nsw i32 4, %119
  %cmp201 = icmp slt i32 %mul200, 100
  br i1 %cmp201, label %if.then.203, label %if.else.204

if.then.203:                                      ; preds = %if.else.199
  store i32 4, i32* %unroll_number, align 4
  br label %if.end.205

if.else.204:                                      ; preds = %if.else.199
  store i32 2, i32* %unroll_number, align 4
  br label %if.end.205

if.end.205:                                       ; preds = %if.else.204, %if.then.203
  br label %if.end.206

if.end.206:                                       ; preds = %if.end.205, %if.then.198
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %if.end.191
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool208 = icmp ne %struct._IO_FILE* %120, null
  br i1 %tobool208, label %if.then.209, label %if.end.211

if.then.209:                                      ; preds = %if.end.207
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %122 = load i32, i32* %unroll_number, align 4
  %call210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), i32 %122)
  br label %if.end.211

if.end.211:                                       ; preds = %if.then.209, %if.end.207
  %123 = load i32, i32* %unroll_type, align 4
  %cmp212 = icmp eq i32 %123, 0
  br i1 %cmp212, label %if.then.217, label %lor.lhs.false.214

lor.lhs.false.214:                                ; preds = %if.end.211
  %124 = load i32, i32* %unroll_type, align 4
  %cmp215 = icmp eq i32 %124, 1
  br i1 %cmp215, label %if.then.217, label %if.end.238

if.then.217:                                      ; preds = %lor.lhs.false.214, %if.end.211
  %125 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  store %struct.rtx_def* %125, %struct.rtx_def** %insn, align 8
  br label %while.cond.218

while.cond.218:                                   ; preds = %while.body.227, %if.then.217
  %126 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load219 = load i32, i32* %127, align 8
  %bf.clear220 = and i32 %bf.load219, 65535
  %cmp221 = icmp ne i32 %bf.clear220, 36
  br i1 %cmp221, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.218
  %128 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %129 = bitcast %struct.rtx_def* %128 to i32*
  %bf.load223 = load i32, i32* %129, align 8
  %bf.clear224 = and i32 %bf.load223, 65535
  %cmp225 = icmp ne i32 %bf.clear224, 33
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.218
  %130 = phi i1 [ false, %while.cond.218 ], [ %cmp225, %land.rhs ]
  br i1 %130, label %while.body.227, label %while.end.231

while.body.227:                                   ; preds = %land.end
  %131 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld228 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %arrayidx229 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld228, i32 0, i64 2
  %rtx230 = bitcast %union.rtunion_def* %arrayidx229 to %struct.rtx_def**
  %132 = load %struct.rtx_def*, %struct.rtx_def** %rtx230, align 8
  store %struct.rtx_def* %132, %struct.rtx_def** %insn, align 8
  br label %while.cond.218

while.end.231:                                    ; preds = %land.end
  %133 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %134 = bitcast %struct.rtx_def* %133 to i32*
  %bf.load232 = load i32, i32* %134, align 8
  %bf.clear233 = and i32 %bf.load232, 65535
  %cmp234 = icmp eq i32 %bf.clear233, 33
  br i1 %cmp234, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %while.end.231
  br label %return

if.end.237:                                       ; preds = %while.end.231
  br label %if.end.238

if.end.238:                                       ; preds = %if.end.237, %lor.lhs.false.214
  %135 = load i32, i32* %unroll_type, align 4
  %cmp239 = icmp eq i32 %135, 0
  br i1 %cmp239, label %if.then.241, label %if.else.272

if.then.241:                                      ; preds = %if.end.238
  %136 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  store %struct.rtx_def* %136, %struct.rtx_def** %copy_start, align 8
  %137 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld242 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx243 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld242, i32 0, i64 2
  %rtx244 = bitcast %union.rtunion_def* %arrayidx243 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx244, align 8
  store %struct.rtx_def* %138, %struct.rtx_def** %insert_before, align 8
  %139 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %140 = bitcast %struct.rtx_def* %139 to i32*
  %bf.load245 = load i32, i32* %140, align 8
  %bf.clear246 = and i32 %bf.load245, 65535
  %cmp247 = icmp eq i32 %bf.clear246, 35
  br i1 %cmp247, label %if.then.249, label %if.else.256

if.then.249:                                      ; preds = %if.then.241
  %141 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld250, i32 0, i64 1
  %rtx252 = bitcast %union.rtunion_def* %arrayidx251 to %struct.rtx_def**
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx252, align 8
  %fld253 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx254 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld253, i32 0, i64 1
  %rtx255 = bitcast %union.rtunion_def* %arrayidx254 to %struct.rtx_def**
  %143 = load %struct.rtx_def*, %struct.rtx_def** %rtx255, align 8
  store %struct.rtx_def* %143, %struct.rtx_def** %copy_end, align 8
  br label %if.end.271

if.else.256:                                      ; preds = %if.then.241
  %144 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %145 = bitcast %struct.rtx_def* %144 to i32*
  %bf.load257 = load i32, i32* %145, align 8
  %bf.clear258 = and i32 %bf.load257, 65535
  %cmp259 = icmp eq i32 %bf.clear258, 33
  br i1 %cmp259, label %if.then.261, label %if.else.265

if.then.261:                                      ; preds = %if.else.256
  %146 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld262 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %arrayidx263 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld262, i32 0, i64 1
  %rtx264 = bitcast %union.rtunion_def* %arrayidx263 to %struct.rtx_def**
  %147 = load %struct.rtx_def*, %struct.rtx_def** %rtx264, align 8
  store %struct.rtx_def* %147, %struct.rtx_def** %copy_end, align 8
  br label %if.end.270

if.else.265:                                      ; preds = %if.else.256
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool266 = icmp ne %struct._IO_FILE* %148, null
  br i1 %tobool266, label %if.then.267, label %if.end.269

if.then.267:                                      ; preds = %if.else.265
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call268 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.269

if.end.269:                                       ; preds = %if.then.267, %if.else.265
  br label %return

if.end.270:                                       ; preds = %if.then.261
  br label %if.end.271

if.end.271:                                       ; preds = %if.end.270, %if.then.249
  br label %if.end.363

if.else.272:                                      ; preds = %if.end.238
  %150 = load i32, i32* %unroll_type, align 4
  %cmp273 = icmp eq i32 %150, 1
  br i1 %cmp273, label %if.then.275, label %if.else.303

if.then.275:                                      ; preds = %if.else.272
  %151 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  store %struct.rtx_def* %151, %struct.rtx_def** %copy_start, align 8
  %152 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %153 = bitcast %struct.rtx_def* %152 to i32*
  %bf.load276 = load i32, i32* %153, align 8
  %bf.clear277 = and i32 %bf.load276, 65535
  %cmp278 = icmp eq i32 %bf.clear277, 35
  br i1 %cmp278, label %if.then.280, label %if.else.287

if.then.280:                                      ; preds = %if.then.275
  %154 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld281 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %154, i32 0, i32 1
  %arrayidx282 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld281, i32 0, i64 1
  %rtx283 = bitcast %union.rtunion_def* %arrayidx282 to %struct.rtx_def**
  %155 = load %struct.rtx_def*, %struct.rtx_def** %rtx283, align 8
  store %struct.rtx_def* %155, %struct.rtx_def** %insert_before, align 8
  %156 = load %struct.rtx_def*, %struct.rtx_def** %insert_before, align 8
  %fld284 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %156, i32 0, i32 1
  %arrayidx285 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld284, i32 0, i64 1
  %rtx286 = bitcast %union.rtunion_def* %arrayidx285 to %struct.rtx_def**
  %157 = load %struct.rtx_def*, %struct.rtx_def** %rtx286, align 8
  store %struct.rtx_def* %157, %struct.rtx_def** %copy_end, align 8
  br label %if.end.302

if.else.287:                                      ; preds = %if.then.275
  %158 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %159 = bitcast %struct.rtx_def* %158 to i32*
  %bf.load288 = load i32, i32* %159, align 8
  %bf.clear289 = and i32 %bf.load288, 65535
  %cmp290 = icmp eq i32 %bf.clear289, 33
  br i1 %cmp290, label %if.then.292, label %if.else.296

if.then.292:                                      ; preds = %if.else.287
  %160 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  store %struct.rtx_def* %160, %struct.rtx_def** %insert_before, align 8
  %161 = load %struct.rtx_def*, %struct.rtx_def** %insert_before, align 8
  %fld293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld293, i32 0, i64 1
  %rtx295 = bitcast %union.rtunion_def* %arrayidx294 to %struct.rtx_def**
  %162 = load %struct.rtx_def*, %struct.rtx_def** %rtx295, align 8
  store %struct.rtx_def* %162, %struct.rtx_def** %copy_end, align 8
  br label %if.end.301

if.else.296:                                      ; preds = %if.else.287
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool297 = icmp ne %struct._IO_FILE* %163, null
  br i1 %tobool297, label %if.then.298, label %if.end.300

if.then.298:                                      ; preds = %if.else.296
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %164, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.300

if.end.300:                                       ; preds = %if.then.298, %if.else.296
  br label %return

if.end.301:                                       ; preds = %if.then.292
  br label %if.end.302

if.end.302:                                       ; preds = %if.end.301, %if.then.280
  br label %if.end.362

if.else.303:                                      ; preds = %if.else.272
  %165 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %166 = bitcast %struct.rtx_def* %165 to i32*
  %bf.load304 = load i32, i32* %166, align 8
  %bf.clear305 = and i32 %bf.load304, 65535
  %cmp306 = icmp eq i32 %bf.clear305, 35
  br i1 %cmp306, label %if.then.308, label %if.else.315

if.then.308:                                      ; preds = %if.else.303
  %167 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld309 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %arrayidx310 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld309, i32 0, i64 1
  %rtx311 = bitcast %union.rtunion_def* %arrayidx310 to %struct.rtx_def**
  %168 = load %struct.rtx_def*, %struct.rtx_def** %rtx311, align 8
  store %struct.rtx_def* %168, %struct.rtx_def** %insert_before, align 8
  %169 = load %struct.rtx_def*, %struct.rtx_def** %insert_before, align 8
  %fld312 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx313 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld312, i32 0, i64 1
  %rtx314 = bitcast %union.rtunion_def* %arrayidx313 to %struct.rtx_def**
  %170 = load %struct.rtx_def*, %struct.rtx_def** %rtx314, align 8
  store %struct.rtx_def* %170, %struct.rtx_def** %copy_end, align 8
  br label %if.end.330

if.else.315:                                      ; preds = %if.else.303
  %171 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %172 = bitcast %struct.rtx_def* %171 to i32*
  %bf.load316 = load i32, i32* %172, align 8
  %bf.clear317 = and i32 %bf.load316, 65535
  %cmp318 = icmp eq i32 %bf.clear317, 33
  br i1 %cmp318, label %if.then.320, label %if.else.324

if.then.320:                                      ; preds = %if.else.315
  %173 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld321 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx322 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld321, i32 0, i64 2
  %rtx323 = bitcast %union.rtunion_def* %arrayidx322 to %struct.rtx_def**
  %174 = load %struct.rtx_def*, %struct.rtx_def** %rtx323, align 8
  store %struct.rtx_def* %174, %struct.rtx_def** %insert_before, align 8
  %175 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  store %struct.rtx_def* %175, %struct.rtx_def** %copy_end, align 8
  br label %if.end.329

if.else.324:                                      ; preds = %if.else.315
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool325 = icmp ne %struct._IO_FILE* %176, null
  br i1 %tobool325, label %if.then.326, label %if.end.328

if.then.326:                                      ; preds = %if.else.324
  %177 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call327 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %177, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i32 0, i32 0))
  br label %if.end.328

if.end.328:                                       ; preds = %if.then.326, %if.else.324
  br label %return

if.end.329:                                       ; preds = %if.then.320
  br label %if.end.330

if.end.330:                                       ; preds = %if.end.329, %if.then.308
  %call331 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call331, %struct.rtx_def** %exit_label, align 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  store %struct.rtx_def* %178, %struct.rtx_def** %insn, align 8
  br label %while.cond.332

while.cond.332:                                   ; preds = %while.body.343, %if.end.330
  %179 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %180 = bitcast %struct.rtx_def* %179 to i32*
  %bf.load333 = load i32, i32* %180, align 8
  %bf.clear334 = and i32 %bf.load333, 65535
  %cmp335 = icmp ne i32 %bf.clear334, 36
  br i1 %cmp335, label %land.rhs.337, label %land.end.342

land.rhs.337:                                     ; preds = %while.cond.332
  %181 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %182 = bitcast %struct.rtx_def* %181 to i32*
  %bf.load338 = load i32, i32* %182, align 8
  %bf.clear339 = and i32 %bf.load338, 65535
  %cmp340 = icmp ne i32 %bf.clear339, 33
  br label %land.end.342

land.end.342:                                     ; preds = %land.rhs.337, %while.cond.332
  %183 = phi i1 [ false, %while.cond.332 ], [ %cmp340, %land.rhs.337 ]
  br i1 %183, label %while.body.343, label %while.end.347

while.body.343:                                   ; preds = %land.end.342
  %184 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld344 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %184, i32 0, i32 1
  %arrayidx345 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld344, i32 0, i64 2
  %rtx346 = bitcast %union.rtunion_def* %arrayidx345 to %struct.rtx_def**
  %185 = load %struct.rtx_def*, %struct.rtx_def** %rtx346, align 8
  store %struct.rtx_def* %185, %struct.rtx_def** %insn, align 8
  br label %while.cond.332

while.end.347:                                    ; preds = %land.end.342
  %186 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %187 = bitcast %struct.rtx_def* %186 to i32*
  %bf.load348 = load i32, i32* %187, align 8
  %bf.clear349 = and i32 %bf.load348, 65535
  %cmp350 = icmp eq i32 %bf.clear349, 33
  br i1 %cmp350, label %if.then.352, label %if.else.360

if.then.352:                                      ; preds = %while.end.347
  %188 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld353 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %188, i32 0, i32 1
  %arrayidx354 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld353, i32 0, i64 2
  %rtx355 = bitcast %union.rtunion_def* %arrayidx354 to %struct.rtx_def**
  %189 = load %struct.rtx_def*, %struct.rtx_def** %rtx355, align 8
  store %struct.rtx_def* %189, %struct.rtx_def** %copy_start, align 8
  store i32 1, i32* %splitting_not_safe, align 4
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool356 = icmp ne %struct._IO_FILE* %190, null
  br i1 %tobool356, label %if.then.357, label %if.end.359

if.then.357:                                      ; preds = %if.then.352
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call358 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %191, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i32 0, i32 0))
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.357, %if.then.352
  br label %if.end.361

if.else.360:                                      ; preds = %while.end.347
  %192 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  store %struct.rtx_def* %192, %struct.rtx_def** %copy_start, align 8
  br label %if.end.361

if.end.361:                                       ; preds = %if.else.360, %if.end.359
  br label %if.end.362

if.end.362:                                       ; preds = %if.end.361, %if.end.302
  br label %if.end.363

if.end.363:                                       ; preds = %if.end.362, %if.end.271
  %193 = load %struct.rtx_def*, %struct.rtx_def** %copy_start, align 8
  %fld364 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %193, i32 0, i32 1
  %arrayidx365 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld364, i32 0, i64 2
  %rtx366 = bitcast %union.rtunion_def* %arrayidx365 to %struct.rtx_def**
  %194 = load %struct.rtx_def*, %struct.rtx_def** %rtx366, align 8
  store %struct.rtx_def* %194, %struct.rtx_def** %start_label, align 8
  br label %while.cond.367

while.cond.367:                                   ; preds = %while.body.372, %if.end.363
  %195 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %196 = bitcast %struct.rtx_def* %195 to i32*
  %bf.load368 = load i32, i32* %196, align 8
  %bf.clear369 = and i32 %bf.load368, 65535
  %cmp370 = icmp eq i32 %bf.clear369, 37
  br i1 %cmp370, label %while.body.372, label %while.end.376

while.body.372:                                   ; preds = %while.cond.367
  %197 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %fld373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld373, i32 0, i64 2
  %rtx375 = bitcast %union.rtunion_def* %arrayidx374 to %struct.rtx_def**
  %198 = load %struct.rtx_def*, %struct.rtx_def** %rtx375, align 8
  store %struct.rtx_def* %198, %struct.rtx_def** %start_label, align 8
  br label %while.cond.367

while.end.376:                                    ; preds = %while.cond.367
  %199 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %200 = bitcast %struct.rtx_def* %199 to i32*
  %bf.load377 = load i32, i32* %200, align 8
  %bf.clear378 = and i32 %bf.load377, 65535
  %cmp379 = icmp ne i32 %bf.clear378, 36
  br i1 %cmp379, label %if.then.381, label %if.end.386

if.then.381:                                      ; preds = %while.end.376
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool382 = icmp ne %struct._IO_FILE* %201, null
  br i1 %tobool382, label %if.then.383, label %if.end.385

if.then.383:                                      ; preds = %if.then.381
  %202 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call384 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %202, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.385

if.end.385:                                       ; preds = %if.then.383, %if.then.381
  br label %return

if.end.386:                                       ; preds = %while.end.376
  %203 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %fld387 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %203, i32 0, i32 1
  %arrayidx388 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld387, i32 0, i64 6
  %rtstr = bitcast %union.rtunion_def* %arrayidx388 to i8**
  %204 = load i8*, i8** %rtstr, align 8
  %tobool389 = icmp ne i8* %204, null
  br i1 %tobool389, label %if.then.390, label %if.end.395

if.then.390:                                      ; preds = %if.end.386
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool391 = icmp ne %struct._IO_FILE* %205, null
  br i1 %tobool391, label %if.then.392, label %if.end.394

if.then.392:                                      ; preds = %if.then.390
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call393 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i32 0, i32 0))
  br label %if.end.394

if.end.394:                                       ; preds = %if.then.392, %if.then.390
  br label %return

if.end.395:                                       ; preds = %if.end.386
  %207 = load i32, i32* %unroll_type, align 4
  %cmp396 = icmp eq i32 %207, 2
  br i1 %cmp396, label %land.lhs.true.398, label %if.end.424

land.lhs.true.398:                                ; preds = %if.end.395
  %208 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %209 = bitcast %struct.rtx_def* %208 to i32*
  %bf.load399 = load i32, i32* %209, align 8
  %bf.clear400 = and i32 %bf.load399, 65535
  %cmp401 = icmp eq i32 %bf.clear400, 35
  br i1 %cmp401, label %land.lhs.true.403, label %if.end.424

land.lhs.true.403:                                ; preds = %land.lhs.true.398
  %210 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld404 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %210, i32 0, i32 1
  %arrayidx405 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld404, i32 0, i64 1
  %rtx406 = bitcast %union.rtunion_def* %arrayidx405 to %struct.rtx_def**
  %211 = load %struct.rtx_def*, %struct.rtx_def** %rtx406, align 8
  %212 = bitcast %struct.rtx_def* %211 to i32*
  %bf.load407 = load i32, i32* %212, align 8
  %bf.clear408 = and i32 %bf.load407, 65535
  %cmp409 = icmp eq i32 %bf.clear408, 33
  br i1 %cmp409, label %land.lhs.true.411, label %if.end.424

land.lhs.true.411:                                ; preds = %land.lhs.true.403
  %213 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %214 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld412 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %214, i32 0, i32 1
  %arrayidx413 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld412, i32 0, i64 1
  %rtx414 = bitcast %union.rtunion_def* %arrayidx413 to %struct.rtx_def**
  %215 = load %struct.rtx_def*, %struct.rtx_def** %rtx414, align 8
  %fld415 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %215, i32 0, i32 1
  %arrayidx416 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld415, i32 0, i64 7
  %rtx417 = bitcast %union.rtunion_def* %arrayidx416 to %struct.rtx_def**
  %216 = load %struct.rtx_def*, %struct.rtx_def** %rtx417, align 8
  %cmp418 = icmp ne %struct.rtx_def* %213, %216
  br i1 %cmp418, label %if.then.420, label %if.end.424

if.then.420:                                      ; preds = %land.lhs.true.411
  %217 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld421 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx422 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld421, i32 0, i64 2
  %rtx423 = bitcast %union.rtunion_def* %arrayidx422 to %struct.rtx_def**
  %218 = load %struct.rtx_def*, %struct.rtx_def** %rtx423, align 8
  store %struct.rtx_def* %218, %struct.rtx_def** %insert_before, align 8
  %219 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  store %struct.rtx_def* %219, %struct.rtx_def** %copy_end, align 8
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.420, %land.lhs.true.411, %land.lhs.true.403, %land.lhs.true.398, %if.end.395
  %220 = load i32, i32* %unroll_type, align 4
  %cmp425 = icmp eq i32 %220, 2
  br i1 %cmp425, label %land.lhs.true.427, label %if.end.443

land.lhs.true.427:                                ; preds = %if.end.424
  %221 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %222 = bitcast %struct.rtx_def* %221 to i32*
  %bf.load428 = load i32, i32* %222, align 8
  %bf.clear429 = and i32 %bf.load428, 65535
  %cmp430 = icmp eq i32 %bf.clear429, 33
  br i1 %cmp430, label %land.lhs.true.432, label %if.end.443

land.lhs.true.432:                                ; preds = %land.lhs.true.427
  %223 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %224 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld433 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %224, i32 0, i32 1
  %arrayidx434 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld433, i32 0, i64 7
  %rtx435 = bitcast %union.rtunion_def* %arrayidx434 to %struct.rtx_def**
  %225 = load %struct.rtx_def*, %struct.rtx_def** %rtx435, align 8
  %cmp436 = icmp ne %struct.rtx_def* %223, %225
  br i1 %cmp436, label %if.then.438, label %if.end.443

if.then.438:                                      ; preds = %land.lhs.true.432
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool439 = icmp ne %struct._IO_FILE* %226, null
  br i1 %tobool439, label %if.then.440, label %if.end.442

if.then.440:                                      ; preds = %if.then.438
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call441 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %227, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i32 0, i32 0))
  br label %if.end.442

if.end.442:                                       ; preds = %if.then.440, %if.then.438
  br label %return

if.end.443:                                       ; preds = %land.lhs.true.432, %land.lhs.true.427, %if.end.424
  %call444 = call i32 @max_label_num()
  store i32 %call444, i32* %max_labelno, align 4
  %call445 = call i32 @get_max_uid()
  store i32 %call445, i32* %max_insnno, align 4
  %call446 = call noalias i8* @xcalloc(i64 1, i64 648)
  %228 = bitcast i8* %call446 to %struct.inline_remap*
  store %struct.inline_remap* %228, %struct.inline_remap** %map, align 8
  %229 = load i32, i32* %max_labelno, align 4
  %cmp447 = icmp sgt i32 %229, 0
  br i1 %cmp447, label %if.then.449, label %if.end.454

if.then.449:                                      ; preds = %if.end.443
  %230 = load i32, i32* %max_labelno, align 4
  %conv450 = sext i32 %230 to i64
  %call451 = call noalias i8* @xcalloc(i64 %conv450, i64 8)
  %231 = bitcast i8* %call451 to %struct.rtx_def**
  %232 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %label_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %232, i32 0, i32 5
  store %struct.rtx_def** %231, %struct.rtx_def*** %label_map, align 8
  %233 = load i32, i32* %max_labelno, align 4
  %conv452 = sext i32 %233 to i64
  %call453 = call noalias i8* @xcalloc(i64 %conv452, i64 1)
  store i8* %call453, i8** %local_label, align 8
  br label %if.end.454

if.end.454:                                       ; preds = %if.then.449, %if.end.443
  %234 = load %struct.rtx_def*, %struct.rtx_def** %copy_start, align 8
  store %struct.rtx_def* %234, %struct.rtx_def** %insn, align 8
  br label %for.cond.455

for.cond.455:                                     ; preds = %for.inc.564, %if.end.454
  %235 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %236 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %cmp456 = icmp ne %struct.rtx_def* %235, %236
  br i1 %cmp456, label %for.body.458, label %for.end.568

for.body.458:                                     ; preds = %for.cond.455
  %237 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %238 = bitcast %struct.rtx_def* %237 to i32*
  %bf.load459 = load i32, i32* %238, align 8
  %bf.clear460 = and i32 %bf.load459, 65535
  %cmp461 = icmp eq i32 %bf.clear460, 36
  br i1 %cmp461, label %if.then.463, label %if.else.469

if.then.463:                                      ; preds = %for.body.458
  %239 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld464 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %239, i32 0, i32 1
  %arrayidx465 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld464, i32 0, i64 5
  %rtint466 = bitcast %union.rtunion_def* %arrayidx465 to i32*
  %240 = load i32, i32* %rtint466, align 4
  %idxprom467 = sext i32 %240 to i64
  %241 = load i8*, i8** %local_label, align 8
  %arrayidx468 = getelementptr inbounds i8, i8* %241, i64 %idxprom467
  store i8 1, i8* %arrayidx468, align 1
  br label %if.end.547

if.else.469:                                      ; preds = %for.body.458
  %242 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %243 = bitcast %struct.rtx_def* %242 to i32*
  %bf.load470 = load i32, i32* %243, align 8
  %bf.clear471 = and i32 %bf.load470, 65535
  %cmp472 = icmp eq i32 %bf.clear471, 33
  br i1 %cmp472, label %if.then.474, label %if.end.546

if.then.474:                                      ; preds = %if.else.469
  %244 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld475 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %244, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld475, i32 0, i64 7
  %rtx477 = bitcast %union.rtunion_def* %arrayidx476 to %struct.rtx_def**
  %245 = load %struct.rtx_def*, %struct.rtx_def** %rtx477, align 8
  %tobool478 = icmp ne %struct.rtx_def* %245, null
  br i1 %tobool478, label %if.then.479, label %if.else.492

if.then.479:                                      ; preds = %if.then.474
  %246 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld480 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %246, i32 0, i32 1
  %arrayidx481 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld480, i32 0, i64 7
  %rtx482 = bitcast %union.rtunion_def* %arrayidx481 to %struct.rtx_def**
  %247 = load %struct.rtx_def*, %struct.rtx_def** %rtx482, align 8
  %248 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld483 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %arrayidx484 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld483, i32 0, i64 7
  %rtx485 = bitcast %union.rtunion_def* %arrayidx484 to %struct.rtx_def**
  %249 = load %struct.rtx_def*, %struct.rtx_def** %rtx485, align 8
  %fld486 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %249, i32 0, i32 1
  %arrayidx487 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld486, i32 0, i64 5
  %rtint488 = bitcast %union.rtunion_def* %arrayidx487 to i32*
  %250 = load i32, i32* %rtint488, align 4
  %idxprom489 = sext i32 %250 to i64
  %251 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %label_map490 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %251, i32 0, i32 5
  %252 = load %struct.rtx_def**, %struct.rtx_def*** %label_map490, align 8
  %arrayidx491 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %252, i64 %idxprom489
  store %struct.rtx_def* %247, %struct.rtx_def** %arrayidx491, align 8
  br label %if.end.545

if.else.492:                                      ; preds = %if.then.474
  %253 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld493 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %253, i32 0, i32 1
  %arrayidx494 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld493, i32 0, i64 3
  %rtx495 = bitcast %union.rtunion_def* %arrayidx494 to %struct.rtx_def**
  %254 = load %struct.rtx_def*, %struct.rtx_def** %rtx495, align 8
  %255 = bitcast %struct.rtx_def* %254 to i32*
  %bf.load496 = load i32, i32* %255, align 8
  %bf.clear497 = and i32 %bf.load496, 65535
  %cmp498 = icmp eq i32 %bf.clear497, 44
  br i1 %cmp498, label %if.then.508, label %lor.lhs.false.500

lor.lhs.false.500:                                ; preds = %if.else.492
  %256 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld501 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %256, i32 0, i32 1
  %arrayidx502 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld501, i32 0, i64 3
  %rtx503 = bitcast %union.rtunion_def* %arrayidx502 to %struct.rtx_def**
  %257 = load %struct.rtx_def*, %struct.rtx_def** %rtx503, align 8
  %258 = bitcast %struct.rtx_def* %257 to i32*
  %bf.load504 = load i32, i32* %258, align 8
  %bf.clear505 = and i32 %bf.load504, 65535
  %cmp506 = icmp eq i32 %bf.clear505, 45
  br i1 %cmp506, label %if.then.508, label %if.end.544

if.then.508:                                      ; preds = %lor.lhs.false.500, %if.else.492
  %259 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld509 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %259, i32 0, i32 1
  %arrayidx510 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld509, i32 0, i64 3
  %rtx511 = bitcast %union.rtunion_def* %arrayidx510 to %struct.rtx_def**
  %260 = load %struct.rtx_def*, %struct.rtx_def** %rtx511, align 8
  store %struct.rtx_def* %260, %struct.rtx_def** %pat, align 8
  %261 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld512 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %261, i32 0, i32 1
  %arrayidx513 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld512, i32 0, i64 3
  %rtx514 = bitcast %union.rtunion_def* %arrayidx513 to %struct.rtx_def**
  %262 = load %struct.rtx_def*, %struct.rtx_def** %rtx514, align 8
  %263 = bitcast %struct.rtx_def* %262 to i32*
  %bf.load515 = load i32, i32* %263, align 8
  %bf.clear516 = and i32 %bf.load515, 65535
  %cmp517 = icmp eq i32 %bf.clear516, 45
  %conv518 = zext i1 %cmp517 to i32
  store i32 %conv518, i32* %diff_vec_p, align 4
  %264 = load i32, i32* %diff_vec_p, align 4
  %idxprom519 = sext i32 %264 to i64
  %265 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld520 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %arrayidx521 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld520, i32 0, i64 %idxprom519
  %rtvec = bitcast %union.rtunion_def* %arrayidx521 to %struct.rtvec_def**
  %266 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %266, i32 0, i32 0
  %267 = load i32, i32* %num_elem, align 4
  store i32 %267, i32* %len, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.522

for.cond.522:                                     ; preds = %for.inc.541, %if.then.508
  %268 = load i32, i32* %i, align 4
  %269 = load i32, i32* %len, align 4
  %cmp523 = icmp slt i32 %268, %269
  br i1 %cmp523, label %for.body.525, label %for.end.543

for.body.525:                                     ; preds = %for.cond.522
  %270 = load i32, i32* %i, align 4
  %idxprom526 = sext i32 %270 to i64
  %271 = load i32, i32* %diff_vec_p, align 4
  %idxprom527 = sext i32 %271 to i64
  %272 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld528 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %272, i32 0, i32 1
  %arrayidx529 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld528, i32 0, i64 %idxprom527
  %rtvec530 = bitcast %union.rtunion_def* %arrayidx529 to %struct.rtvec_def**
  %273 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec530, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %273, i32 0, i32 1
  %arrayidx531 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom526
  %274 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx531, align 8
  %fld532 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %274, i32 0, i32 1
  %arrayidx533 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld532, i32 0, i64 0
  %rtx534 = bitcast %union.rtunion_def* %arrayidx533 to %struct.rtx_def**
  %275 = load %struct.rtx_def*, %struct.rtx_def** %rtx534, align 8
  store %struct.rtx_def* %275, %struct.rtx_def** %label, align 8
  %276 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %277 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld535 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %277, i32 0, i32 1
  %arrayidx536 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld535, i32 0, i64 5
  %rtint537 = bitcast %union.rtunion_def* %arrayidx536 to i32*
  %278 = load i32, i32* %rtint537, align 4
  %idxprom538 = sext i32 %278 to i64
  %279 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %label_map539 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %279, i32 0, i32 5
  %280 = load %struct.rtx_def**, %struct.rtx_def*** %label_map539, align 8
  %arrayidx540 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %280, i64 %idxprom538
  store %struct.rtx_def* %276, %struct.rtx_def** %arrayidx540, align 8
  br label %for.inc.541

for.inc.541:                                      ; preds = %for.body.525
  %281 = load i32, i32* %i, align 4
  %inc542 = add nsw i32 %281, 1
  store i32 %inc542, i32* %i, align 4
  br label %for.cond.522

for.end.543:                                      ; preds = %for.cond.522
  br label %if.end.544

if.end.544:                                       ; preds = %for.end.543, %lor.lhs.false.500
  br label %if.end.545

if.end.545:                                       ; preds = %if.end.544, %if.then.479
  br label %if.end.546

if.end.546:                                       ; preds = %if.end.545, %if.else.469
  br label %if.end.547

if.end.547:                                       ; preds = %if.end.546, %if.then.463
  %282 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call548 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %282, i32 13, %struct.rtx_def* null)
  store %struct.rtx_def* %call548, %struct.rtx_def** %note, align 8
  %tobool549 = icmp ne %struct.rtx_def* %call548, null
  br i1 %tobool549, label %if.then.550, label %if.end.563

if.then.550:                                      ; preds = %if.end.547
  %283 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld551 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %283, i32 0, i32 1
  %arrayidx552 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld551, i32 0, i64 0
  %rtx553 = bitcast %union.rtunion_def* %arrayidx552 to %struct.rtx_def**
  %284 = load %struct.rtx_def*, %struct.rtx_def** %rtx553, align 8
  %285 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld554 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %285, i32 0, i32 1
  %arrayidx555 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld554, i32 0, i64 0
  %rtx556 = bitcast %union.rtunion_def* %arrayidx555 to %struct.rtx_def**
  %286 = load %struct.rtx_def*, %struct.rtx_def** %rtx556, align 8
  %fld557 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %286, i32 0, i32 1
  %arrayidx558 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld557, i32 0, i64 5
  %rtint559 = bitcast %union.rtunion_def* %arrayidx558 to i32*
  %287 = load i32, i32* %rtint559, align 4
  %idxprom560 = sext i32 %287 to i64
  %288 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %label_map561 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %288, i32 0, i32 5
  %289 = load %struct.rtx_def**, %struct.rtx_def*** %label_map561, align 8
  %arrayidx562 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %289, i64 %idxprom560
  store %struct.rtx_def* %284, %struct.rtx_def** %arrayidx562, align 8
  br label %if.end.563

if.end.563:                                       ; preds = %if.then.550, %if.end.547
  br label %for.inc.564

for.inc.564:                                      ; preds = %if.end.563
  %290 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld565 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %290, i32 0, i32 1
  %arrayidx566 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld565, i32 0, i64 2
  %rtx567 = bitcast %union.rtunion_def* %arrayidx566 to %struct.rtx_def**
  %291 = load %struct.rtx_def*, %struct.rtx_def** %rtx567, align 8
  store %struct.rtx_def* %291, %struct.rtx_def** %insn, align 8
  br label %for.cond.455

for.end.568:                                      ; preds = %for.cond.455
  %292 = load i32, i32* %max_insnno, align 4
  %conv569 = sext i32 %292 to i64
  %mul570 = mul i64 %conv569, 8
  %call571 = call noalias i8* @xmalloc(i64 %mul570)
  %293 = bitcast i8* %call571 to %struct.rtx_def**
  %294 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %insn_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %294, i32 0, i32 6
  store %struct.rtx_def** %293, %struct.rtx_def*** %insn_map, align 8
  %295 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %inline_target = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %295, i32 0, i32 11
  store %struct.rtx_def* null, %struct.rtx_def** %inline_target, align 8
  %call572 = call i32 @max_reg_num()
  store i32 %call572, i32* %maxregnum, align 4
  %296 = load i32, i32* %maxregnum, align 4
  store i32 %296, i32* %max_local_regnum, align 4
  %297 = load i32, i32* %maxregnum, align 4
  %conv573 = zext i32 %297 to i64
  %call574 = call noalias i8* @xcalloc(i64 %conv573, i64 8)
  %298 = bitcast i8* %call574 to %struct.rtx_def**
  store %struct.rtx_def** %298, %struct.rtx_def*** @splittable_regs, align 8
  %299 = load i32, i32* %maxregnum, align 4
  %conv575 = zext i32 %299 to i64
  %call576 = call noalias i8* @xcalloc(i64 %conv575, i64 4)
  %300 = bitcast i8* %call576 to i32*
  store i32* %300, i32** @splittable_regs_updates, align 8
  %301 = load i32, i32* %maxregnum, align 4
  %conv577 = zext i32 %301 to i64
  %call578 = call noalias i8* @xcalloc(i64 %conv577, i64 8)
  %302 = bitcast i8* %call578 to %struct.induction**
  store %struct.induction** %302, %struct.induction*** @addr_combined_regs, align 8
  %303 = load i32, i32* %maxregnum, align 4
  %conv579 = zext i32 %303 to i64
  %call580 = call noalias i8* @xcalloc(i64 %conv579, i64 1)
  store i8* %call580, i8** %local_regno, align 8
  %304 = load %struct.rtx_def*, %struct.rtx_def** %copy_end, align 8
  %fld581 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %304, i32 0, i32 1
  %arrayidx582 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld581, i32 0, i64 0
  %rtint583 = bitcast %union.rtunion_def* %arrayidx582 to i32*
  %305 = load i32, i32* %rtint583, align 4
  %306 = load i32, i32* @max_uid_for_loop, align 4
  %cmp584 = icmp slt i32 %305, %306
  br i1 %cmp584, label %if.then.586, label %if.end.706

if.then.586:                                      ; preds = %for.end.568
  %307 = load %struct.rtx_def*, %struct.rtx_def** %copy_start, align 8
  %fld587 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %307, i32 0, i32 1
  %arrayidx588 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld587, i32 0, i64 0
  %rtint589 = bitcast %union.rtunion_def* %arrayidx588 to i32*
  %308 = load i32, i32* %rtint589, align 4
  %309 = load i32, i32* @max_uid_for_loop, align 4
  %cmp590 = icmp slt i32 %308, %309
  br i1 %cmp590, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.586
  %310 = load %struct.rtx_def*, %struct.rtx_def** %copy_start, align 8
  %fld592 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %310, i32 0, i32 1
  %arrayidx593 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld592, i32 0, i64 0
  %rtint594 = bitcast %union.rtunion_def* %arrayidx593 to i32*
  %311 = load i32, i32* %rtint594, align 4
  %idxprom595 = sext i32 %311 to i64
  %312 = load i32*, i32** @uid_luid, align 8
  %arrayidx596 = getelementptr inbounds i32, i32* %312, i64 %idxprom595
  %313 = load i32, i32* %arrayidx596, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.then.586
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 811, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.unroll_loop, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %314, %cond.true
  %cond = phi i32 [ %313, %cond.true ], [ -1, %314 ]
  store i32 %cond, i32* %copy_start_luid, align 4
  %315 = load %struct.rtx_def*, %struct.rtx_def** %copy_end, align 8
  %fld597 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %315, i32 0, i32 1
  %arrayidx598 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld597, i32 0, i64 0
  %rtint599 = bitcast %union.rtunion_def* %arrayidx598 to i32*
  %316 = load i32, i32* %rtint599, align 4
  %317 = load i32, i32* @max_uid_for_loop, align 4
  %cmp600 = icmp slt i32 %316, %317
  br i1 %cmp600, label %cond.true.602, label %cond.false.608

cond.true.602:                                    ; preds = %cond.end
  %318 = load %struct.rtx_def*, %struct.rtx_def** %copy_end, align 8
  %fld603 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %318, i32 0, i32 1
  %arrayidx604 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld603, i32 0, i64 0
  %rtint605 = bitcast %union.rtunion_def* %arrayidx604 to i32*
  %319 = load i32, i32* %rtint605, align 4
  %idxprom606 = sext i32 %319 to i64
  %320 = load i32*, i32** @uid_luid, align 8
  %arrayidx607 = getelementptr inbounds i32, i32* %320, i64 %idxprom606
  %321 = load i32, i32* %arrayidx607, align 4
  br label %cond.end.609

cond.false.608:                                   ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 812, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.unroll_loop, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.609

cond.end.609:                                     ; preds = %322, %cond.true.602
  %cond610 = phi i32 [ %321, %cond.true.602 ], [ -1, %322 ]
  store i32 %cond610, i32* %copy_end_luid, align 4
  %323 = load %struct.rtx_def*, %struct.rtx_def** %copy_end, align 8
  %324 = bitcast %struct.rtx_def* %323 to i32*
  %bf.load611 = load i32, i32* %324, align 8
  %bf.clear612 = and i32 %bf.load611, 65535
  %cmp613 = icmp eq i32 %bf.clear612, 33
  br i1 %cmp613, label %if.then.615, label %if.end.617

if.then.615:                                      ; preds = %cond.end.609
  %325 = load i32, i32* %copy_end_luid, align 4
  %dec616 = add nsw i32 %325, -1
  store i32 %dec616, i32* %copy_end_luid, align 4
  br label %if.end.617

if.end.617:                                       ; preds = %if.then.615, %cond.end.609
  %326 = load %struct.rtx_def*, %struct.rtx_def** %copy_start, align 8
  %327 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %cmp618 = icmp eq %struct.rtx_def* %326, %327
  br i1 %cmp618, label %if.then.620, label %if.end.622

if.then.620:                                      ; preds = %if.end.617
  %328 = load i32, i32* %copy_start_luid, align 4
  %inc621 = add nsw i32 %328, 1
  store i32 %inc621, i32* %copy_start_luid, align 4
  br label %if.end.622

if.end.622:                                       ; preds = %if.then.620, %if.end.617
  store i32 53, i32* %r, align 4
  br label %for.cond.623

for.cond.623:                                     ; preds = %for.inc.703, %if.end.622
  %329 = load i32, i32* %r, align 4
  %330 = load i32, i32* @max_reg_before_loop, align 4
  %cmp624 = icmp ult i32 %329, %330
  br i1 %cmp624, label %for.body.626, label %for.end.705

for.body.626:                                     ; preds = %for.cond.623
  %331 = load i32, i32* %r, align 4
  %idxprom627 = zext i32 %331 to i64
  %332 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %332, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx628 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom627
  %333 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx628, align 8
  %first_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %333, i32 0, i32 0
  %334 = load i32, i32* %first_uid, align 4
  %cmp629 = icmp sgt i32 %334, 0
  br i1 %cmp629, label %land.lhs.true.631, label %if.end.702

land.lhs.true.631:                                ; preds = %for.body.626
  %335 = load i32, i32* %r, align 4
  %idxprom632 = zext i32 %335 to i64
  %336 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data633 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %336, i32 0, i32 4
  %reg634 = bitcast %union.varray_data_tag* %data633 to [1 x %struct.reg_info_def*]*
  %arrayidx635 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg634, i32 0, i64 %idxprom632
  %337 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx635, align 8
  %first_uid636 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %337, i32 0, i32 0
  %338 = load i32, i32* %first_uid636, align 4
  %339 = load i32, i32* @max_uid_for_loop, align 4
  %cmp637 = icmp sle i32 %338, %339
  br i1 %cmp637, label %land.lhs.true.639, label %if.end.702

land.lhs.true.639:                                ; preds = %land.lhs.true.631
  %340 = load i32, i32* %r, align 4
  %idxprom640 = zext i32 %340 to i64
  %341 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data641 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %341, i32 0, i32 4
  %reg642 = bitcast %union.varray_data_tag* %data641 to [1 x %struct.reg_info_def*]*
  %arrayidx643 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg642, i32 0, i64 %idxprom640
  %342 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx643, align 8
  %first_uid644 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %342, i32 0, i32 0
  %343 = load i32, i32* %first_uid644, align 4
  %idxprom645 = sext i32 %343 to i64
  %344 = load i32*, i32** @uid_luid, align 8
  %arrayidx646 = getelementptr inbounds i32, i32* %344, i64 %idxprom645
  %345 = load i32, i32* %arrayidx646, align 4
  %346 = load i32, i32* %copy_start_luid, align 4
  %cmp647 = icmp sge i32 %345, %346
  br i1 %cmp647, label %land.lhs.true.649, label %if.end.702

land.lhs.true.649:                                ; preds = %land.lhs.true.639
  %347 = load i32, i32* %r, align 4
  %idxprom650 = zext i32 %347 to i64
  %348 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data651 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %348, i32 0, i32 4
  %reg652 = bitcast %union.varray_data_tag* %data651 to [1 x %struct.reg_info_def*]*
  %arrayidx653 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg652, i32 0, i64 %idxprom650
  %349 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx653, align 8
  %last_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %349, i32 0, i32 1
  %350 = load i32, i32* %last_uid, align 4
  %cmp654 = icmp sgt i32 %350, 0
  br i1 %cmp654, label %land.lhs.true.656, label %if.end.702

land.lhs.true.656:                                ; preds = %land.lhs.true.649
  %351 = load i32, i32* %r, align 4
  %idxprom657 = zext i32 %351 to i64
  %352 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data658 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %352, i32 0, i32 4
  %reg659 = bitcast %union.varray_data_tag* %data658 to [1 x %struct.reg_info_def*]*
  %arrayidx660 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg659, i32 0, i64 %idxprom657
  %353 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx660, align 8
  %last_uid661 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %353, i32 0, i32 1
  %354 = load i32, i32* %last_uid661, align 4
  %355 = load i32, i32* @max_uid_for_loop, align 4
  %cmp662 = icmp sle i32 %354, %355
  br i1 %cmp662, label %land.lhs.true.664, label %if.end.702

land.lhs.true.664:                                ; preds = %land.lhs.true.656
  %356 = load i32, i32* %r, align 4
  %idxprom665 = zext i32 %356 to i64
  %357 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data666 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %357, i32 0, i32 4
  %reg667 = bitcast %union.varray_data_tag* %data666 to [1 x %struct.reg_info_def*]*
  %arrayidx668 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg667, i32 0, i64 %idxprom665
  %358 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx668, align 8
  %last_uid669 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %358, i32 0, i32 1
  %359 = load i32, i32* %last_uid669, align 4
  %idxprom670 = sext i32 %359 to i64
  %360 = load i32*, i32** @uid_luid, align 8
  %arrayidx671 = getelementptr inbounds i32, i32* %360, i64 %idxprom670
  %361 = load i32, i32* %arrayidx671, align 4
  %362 = load i32, i32* %copy_end_luid, align 4
  %cmp672 = icmp sle i32 %361, %362
  br i1 %cmp672, label %if.then.674, label %if.end.702

if.then.674:                                      ; preds = %land.lhs.true.664
  %363 = load i32, i32* %r, align 4
  %364 = load i32, i32* %r, align 4
  %idxprom675 = zext i32 %364 to i64
  %365 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data676 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %365, i32 0, i32 4
  %reg677 = bitcast %union.varray_data_tag* %data676 to [1 x %struct.reg_info_def*]*
  %arrayidx678 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg677, i32 0, i64 %idxprom675
  %366 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx678, align 8
  %first_uid679 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %366, i32 0, i32 0
  %367 = load i32, i32* %first_uid679, align 4
  %368 = load i32, i32* %r, align 4
  %idxprom680 = zext i32 %368 to i64
  %369 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data681 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %369, i32 0, i32 4
  %reg682 = bitcast %union.varray_data_tag* %data681 to [1 x %struct.reg_info_def*]*
  %arrayidx683 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg682, i32 0, i64 %idxprom680
  %370 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx683, align 8
  %last_uid684 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %370, i32 0, i32 1
  %371 = load i32, i32* %last_uid684, align 4
  %372 = load %struct.rtx_def*, %struct.rtx_def** %copy_start, align 8
  %373 = load %struct.rtx_def*, %struct.rtx_def** %copy_end, align 8
  %call685 = call i32 @set_dominates_use(i32 %363, i32 %367, i32 %371, %struct.rtx_def* %372, %struct.rtx_def* %373)
  %tobool686 = icmp ne i32 %call685, 0
  br i1 %tobool686, label %if.then.687, label %if.end.690

if.then.687:                                      ; preds = %if.then.674
  %374 = load i32, i32* %r, align 4
  %idxprom688 = zext i32 %374 to i64
  %375 = load i8*, i8** %local_regno, align 8
  %arrayidx689 = getelementptr inbounds i8, i8* %375, i64 %idxprom688
  store i8 1, i8* %arrayidx689, align 1
  br label %if.end.690

if.end.690:                                       ; preds = %if.then.687, %if.then.674
  %376 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool691 = icmp ne %struct._IO_FILE* %376, null
  br i1 %tobool691, label %if.then.692, label %if.end.701

if.then.692:                                      ; preds = %if.end.690
  %377 = load i32, i32* %r, align 4
  %idxprom693 = zext i32 %377 to i64
  %378 = load i8*, i8** %local_regno, align 8
  %arrayidx694 = getelementptr inbounds i8, i8* %378, i64 %idxprom693
  %379 = load i8, i8* %arrayidx694, align 1
  %tobool695 = icmp ne i8 %379, 0
  br i1 %tobool695, label %if.then.696, label %if.else.698

if.then.696:                                      ; preds = %if.then.692
  %380 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %381 = load i32, i32* %r, align 4
  %call697 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %380, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i32 0, i32 0), i32 %381)
  br label %if.end.700

if.else.698:                                      ; preds = %if.then.692
  %382 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %383 = load i32, i32* %r, align 4
  %call699 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %382, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i32 0, i32 0), i32 %383)
  br label %if.end.700

if.end.700:                                       ; preds = %if.else.698, %if.then.696
  br label %if.end.701

if.end.701:                                       ; preds = %if.end.700, %if.end.690
  br label %if.end.702

if.end.702:                                       ; preds = %if.end.701, %land.lhs.true.664, %land.lhs.true.656, %land.lhs.true.649, %land.lhs.true.639, %land.lhs.true.631, %for.body.626
  br label %for.inc.703

for.inc.703:                                      ; preds = %if.end.702
  %384 = load i32, i32* %r, align 4
  %inc704 = add i32 %384, 1
  store i32 %inc704, i32* %r, align 4
  br label %for.cond.623

for.end.705:                                      ; preds = %for.cond.623
  br label %if.end.706

if.end.706:                                       ; preds = %for.end.705, %for.end.568
  %385 = load i32, i32* %unroll_type, align 4
  %cmp707 = icmp eq i32 %385, 2
  br i1 %cmp707, label %land.lhs.true.709, label %if.end.1028

land.lhs.true.709:                                ; preds = %if.end.706
  %386 = load i32, i32* %splitting_not_safe, align 4
  %tobool710 = icmp ne i32 %386, 0
  br i1 %tobool710, label %if.end.1028, label %land.lhs.true.711

land.lhs.true.711:                                ; preds = %land.lhs.true.709
  %387 = load i32, i32* %strength_reduce_p.addr, align 4
  %tobool712 = icmp ne i32 %387, 0
  br i1 %tobool712, label %if.then.713, label %if.end.1028

if.then.713:                                      ; preds = %land.lhs.true.711
  %388 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %call714 = call i32 @precondition_loop_p(%struct.loop* %388, %struct.rtx_def** %initial_value, %struct.rtx_def** %final_value, %struct.rtx_def** %increment, i32* %mode)
  %tobool715 = icmp ne i32 %call714, 0
  br i1 %tobool715, label %if.then.716, label %if.end.1027

if.then.716:                                      ; preds = %if.then.713
  %389 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %comparison_code = getelementptr inbounds %struct.loop_info, %struct.loop_info* %389, i32 0, i32 14
  %390 = load i32, i32* %comparison_code, align 4
  store i32 %390, i32* %cc, align 4
  %391 = load i32, i32* %cc, align 4
  %cmp717 = icmp eq i32 %391, 106
  br i1 %cmp717, label %lor.end, label %lor.lhs.false.719

lor.lhs.false.719:                                ; preds = %if.then.716
  %392 = load i32, i32* %cc, align 4
  %cmp720 = icmp eq i32 %392, 110
  br i1 %cmp720, label %lor.end, label %lor.lhs.false.722

lor.lhs.false.722:                                ; preds = %lor.lhs.false.719
  %393 = load i32, i32* %cc, align 4
  %cmp723 = icmp eq i32 %393, 107
  br i1 %cmp723, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.722
  %394 = load i32, i32* %cc, align 4
  %cmp725 = icmp eq i32 %394, 111
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.722, %lor.lhs.false.719, %if.then.716
  %395 = phi i1 [ true, %lor.lhs.false.722 ], [ true, %lor.lhs.false.719 ], [ true, %if.then.716 ], [ %cmp725, %lor.rhs ]
  %lor.ext = zext i1 %395 to i32
  store i32 %lor.ext, i32* %less_p, align 4
  %396 = load i32, i32* %cc, align 4
  %cmp727 = icmp eq i32 %396, 110
  br i1 %cmp727, label %lor.end.738, label %lor.lhs.false.729

lor.lhs.false.729:                                ; preds = %lor.end
  %397 = load i32, i32* %cc, align 4
  %cmp730 = icmp eq i32 %397, 108
  br i1 %cmp730, label %lor.end.738, label %lor.lhs.false.732

lor.lhs.false.732:                                ; preds = %lor.lhs.false.729
  %398 = load i32, i32* %cc, align 4
  %cmp733 = icmp eq i32 %398, 111
  br i1 %cmp733, label %lor.end.738, label %lor.rhs.735

lor.rhs.735:                                      ; preds = %lor.lhs.false.732
  %399 = load i32, i32* %cc, align 4
  %cmp736 = icmp eq i32 %399, 109
  br label %lor.end.738

lor.end.738:                                      ; preds = %lor.rhs.735, %lor.lhs.false.732, %lor.lhs.false.729, %lor.end
  %400 = phi i1 [ true, %lor.lhs.false.732 ], [ true, %lor.lhs.false.729 ], [ true, %lor.end ], [ %cmp736, %lor.rhs.735 ]
  %lor.ext739 = zext i1 %400 to i32
  store i32 %lor.ext739, i32* %unsigned_p, align 4
  %401 = load i32, i32* %maxregnum, align 4
  %conv740 = zext i32 %401 to i64
  %mul741 = mul i64 %conv740, 8
  %call742 = call noalias i8* @xmalloc(i64 %mul741)
  %402 = bitcast i8* %call742 to %struct.rtx_def**
  %403 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %403, i32 0, i32 4
  store %struct.rtx_def** %402, %struct.rtx_def*** %reg_map, align 8
  %404 = load i32, i32* %maxregnum, align 4
  %conv743 = zext i32 %404 to i64
  %call744 = call %struct.varray_head_tag* @varray_init(i64 %conv743, i64 16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0))
  %405 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %405, i32 0, i32 9
  store %struct.varray_head_tag* %call744, %struct.varray_head_tag** %const_equiv_varray, align 8
  %406 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray745 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %406, i32 0, i32 9
  %407 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray745, align 8
  store %struct.varray_head_tag* %407, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %408 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %409 = load i32, i32* %maxregnum, align 4
  call void @init_reg_map(%struct.inline_remap* %408, i32 %409)
  %410 = load i32, i32* %unroll_number, align 4
  %cmp746 = icmp sgt i32 %410, 4
  br i1 %cmp746, label %if.then.748, label %if.end.749

if.then.748:                                      ; preds = %lor.end.738
  store i32 4, i32* %unroll_number, align 4
  br label %if.end.749

if.end.749:                                       ; preds = %if.then.748, %lor.end.738
  store i32 0, i32* %neg_inc, align 4
  %411 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld750 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %411, i32 0, i32 1
  %arrayidx751 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld750, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx751 to i64*
  %412 = load i64, i64* %rtwint, align 8
  %conv752 = trunc i64 %412 to i32
  store i32 %conv752, i32* %abs_inc, align 4
  %413 = load i32, i32* %abs_inc, align 4
  %cmp753 = icmp slt i32 %413, 0
  br i1 %cmp753, label %if.then.755, label %if.end.756

if.then.755:                                      ; preds = %if.end.749
  %414 = load i32, i32* %abs_inc, align 4
  %sub = sub nsw i32 0, %414
  store i32 %sub, i32* %abs_inc, align 4
  store i32 1, i32* %neg_inc, align 4
  br label %if.end.756

if.end.756:                                       ; preds = %if.then.755, %if.end.749
  call void @start_sequence()
  %415 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %416 = bitcast %struct.rtx_def* %415 to i32*
  %bf.load757 = load i32, i32* %416, align 8
  %bf.clear758 = and i32 %bf.load757, 65535
  %cmp759 = icmp eq i32 %bf.clear758, 75
  br i1 %cmp759, label %if.then.761, label %if.end.771

if.then.761:                                      ; preds = %if.end.756
  %417 = load i32, i32* %mode, align 4
  %418 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %fld762 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %418, i32 0, i32 1
  %arrayidx763 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld762, i32 0, i64 0
  %rtx764 = bitcast %union.rtunion_def* %arrayidx763 to %struct.rtx_def**
  %419 = load %struct.rtx_def*, %struct.rtx_def** %rtx764, align 8
  %call765 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %419)
  %420 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %fld766 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %420, i32 0, i32 1
  %arrayidx767 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld766, i32 0, i64 1
  %rtx768 = bitcast %union.rtunion_def* %arrayidx767 to %struct.rtx_def**
  %421 = load %struct.rtx_def*, %struct.rtx_def** %rtx768, align 8
  %call769 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %421)
  %call770 = call %struct.rtx_def* @expand_simple_binop(i32 %417, i32 75, %struct.rtx_def* %call765, %struct.rtx_def* %call769, %struct.rtx_def* null, i32 0, i32 3)
  store %struct.rtx_def* %call770, %struct.rtx_def** %final_value, align 8
  br label %if.end.771

if.end.771:                                       ; preds = %if.then.761, %if.end.756
  %422 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %call772 = call i32 @nonmemory_operand(%struct.rtx_def* %422, i32 0)
  %tobool773 = icmp ne i32 %call772, 0
  br i1 %tobool773, label %if.end.777, label %if.then.774

if.then.774:                                      ; preds = %if.end.771
  %423 = load i32, i32* %mode, align 4
  %424 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %call775 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %424)
  %call776 = call %struct.rtx_def* @force_reg(i32 %423, %struct.rtx_def* %call775)
  store %struct.rtx_def* %call776, %struct.rtx_def** %final_value, align 8
  br label %if.end.777

if.end.777:                                       ; preds = %if.then.774, %if.end.771
  %425 = load i32, i32* %cc, align 4
  %cmp778 = icmp eq i32 %425, 102
  br i1 %cmp778, label %if.then.783, label %lor.lhs.false.780

lor.lhs.false.780:                                ; preds = %if.end.777
  %426 = load i32, i32* %less_p, align 4
  %427 = load i32, i32* %neg_inc, align 4
  %cmp781 = icmp ne i32 %426, %427
  br i1 %cmp781, label %if.then.783, label %if.else.786

if.then.783:                                      ; preds = %lor.lhs.false.780, %if.end.777
  %428 = load i32, i32* %mode, align 4
  %429 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %430 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %call784 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %430)
  %call785 = call %struct.rtx_def* @expand_simple_binop(i32 %428, i32 76, %struct.rtx_def* %429, %struct.rtx_def* %call784, %struct.rtx_def* null, i32 0, i32 3)
  store %struct.rtx_def* %call785, %struct.rtx_def** %diff, align 8
  br label %if.end.791

if.else.786:                                      ; preds = %lor.lhs.false.780
  %431 = load i32, i32* %mode, align 4
  %432 = load i32, i32* %neg_inc, align 4
  %tobool787 = icmp ne i32 %432, 0
  %cond788 = select i1 %tobool787, i32 86, i32 77
  %433 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %call789 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %433)
  %call790 = call %struct.rtx_def* @expand_simple_unop(i32 %431, i32 %cond788, %struct.rtx_def* %call789, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call790, %struct.rtx_def** %diff, align 8
  br label %if.end.791

if.end.791:                                       ; preds = %if.else.786, %if.then.783
  %434 = load %struct.rtx_def*, %struct.rtx_def** %diff, align 8
  %435 = bitcast %struct.rtx_def* %434 to i32*
  %bf.load792 = load i32, i32* %435, align 8
  %bf.lshr = lshr i32 %bf.load792, 16
  %bf.clear793 = and i32 %bf.lshr, 255
  %436 = load %struct.rtx_def*, %struct.rtx_def** %diff, align 8
  %437 = load i32, i32* %unroll_number, align 4
  %438 = load i32, i32* %abs_inc, align 4
  %mul794 = mul nsw i32 %437, %438
  %sub795 = sub nsw i32 %mul794, 1
  %conv796 = sext i32 %sub795 to i64
  %call797 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv796)
  %call798 = call %struct.rtx_def* @expand_simple_binop(i32 %bf.clear793, i32 83, %struct.rtx_def* %436, %struct.rtx_def* %call797, %struct.rtx_def* null, i32 0, i32 3)
  store %struct.rtx_def* %call798, %struct.rtx_def** %diff, align 8
  %439 = load i32, i32* %unroll_number, align 4
  %conv799 = sext i32 %439 to i64
  %mul800 = mul i64 8, %conv799
  %call801 = call noalias i8* @xmalloc(i64 %mul800)
  %440 = bitcast i8* %call801 to %struct.rtx_def**
  store %struct.rtx_def** %440, %struct.rtx_def*** %labels, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.802

for.cond.802:                                     ; preds = %for.inc.809, %if.end.791
  %441 = load i32, i32* %i, align 4
  %442 = load i32, i32* %unroll_number, align 4
  %cmp803 = icmp slt i32 %441, %442
  br i1 %cmp803, label %for.body.805, label %for.end.811

for.body.805:                                     ; preds = %for.cond.802
  %call806 = call %struct.rtx_def* @gen_label_rtx()
  %443 = load i32, i32* %i, align 4
  %idxprom807 = sext i32 %443 to i64
  %444 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx808 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %444, i64 %idxprom807
  store %struct.rtx_def* %call806, %struct.rtx_def** %arrayidx808, align 8
  br label %for.inc.809

for.inc.809:                                      ; preds = %for.body.805
  %445 = load i32, i32* %i, align 4
  %inc810 = add nsw i32 %445, 1
  store i32 %inc810, i32* %i, align 4
  br label %for.cond.802

for.end.811:                                      ; preds = %for.cond.802
  %446 = load i32, i32* %cc, align 4
  %cmp812 = icmp ne i32 %446, 102
  br i1 %cmp812, label %if.then.814, label %if.end.830

if.then.814:                                      ; preds = %for.end.811
  %447 = load i32, i32* %mode, align 4
  %448 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %449 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %call815 = call %struct.rtx_def* @expand_simple_binop(i32 %447, i32 75, %struct.rtx_def* %448, %struct.rtx_def* %449, %struct.rtx_def* null, i32 0, i32 3)
  store %struct.rtx_def* %call815, %struct.rtx_def** %incremented_initval, align 8
  %450 = load %struct.rtx_def*, %struct.rtx_def** %incremented_initval, align 8
  %451 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %452 = load i32, i32* %less_p, align 4
  %tobool816 = icmp ne i32 %452, 0
  %cond817 = select i1 %tobool816, i32 104, i32 106
  %453 = load i32, i32* %mode, align 4
  %454 = load i32, i32* %unsigned_p, align 4
  %455 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx818 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %455, i64 1
  %456 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx818, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %450, %struct.rtx_def* %451, i32 %cond817, %struct.rtx_def* null, i32 %453, i32 %454, %struct.rtx_def* %456)
  %call819 = call %struct.rtx_def* @get_last_insn()
  call void @predict_insn_def(%struct.rtx_def* %call819, i32 10, i32 1)
  %457 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx820 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %457, i64 1
  %458 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx820, align 8
  %call821 = call %struct.rtx_def* @get_last_insn()
  %fld822 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call821, i32 0, i32 1
  %arrayidx823 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld822, i32 0, i64 7
  %rtx824 = bitcast %union.rtunion_def* %arrayidx823 to %struct.rtx_def**
  store %struct.rtx_def* %458, %struct.rtx_def** %rtx824, align 8
  %459 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx825 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %459, i64 1
  %460 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx825, align 8
  %fld826 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %460, i32 0, i32 1
  %arrayidx827 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld826, i32 0, i64 3
  %rtint828 = bitcast %union.rtunion_def* %arrayidx827 to i32*
  %461 = load i32, i32* %rtint828, align 4
  %inc829 = add nsw i32 %461, 1
  store i32 %inc829, i32* %rtint828, align 4
  br label %if.end.830

if.end.830:                                       ; preds = %if.then.814, %for.end.811
  store i32 0, i32* %i, align 4
  br label %for.cond.831

for.cond.831:                                     ; preds = %for.inc.866, %if.end.830
  %462 = load i32, i32* %i, align 4
  %463 = load i32, i32* %unroll_number, align 4
  %sub832 = sub nsw i32 %463, 1
  %cmp833 = icmp slt i32 %462, %sub832
  br i1 %cmp833, label %for.body.835, label %for.end.868

for.body.835:                                     ; preds = %for.cond.831
  %464 = load i32, i32* %i, align 4
  %cmp836 = icmp eq i32 %464, 0
  br i1 %cmp836, label %if.then.838, label %if.else.839

if.then.838:                                      ; preds = %for.body.835
  store i32 0, i32* %cmp_const, align 4
  store i32 103, i32* %cmp_code, align 4
  br label %if.end.845

if.else.839:                                      ; preds = %for.body.835
  %465 = load i32, i32* %neg_inc, align 4
  %tobool840 = icmp ne i32 %465, 0
  br i1 %tobool840, label %if.then.841, label %if.else.843

if.then.841:                                      ; preds = %if.else.839
  %466 = load i32, i32* %unroll_number, align 4
  %467 = load i32, i32* %i, align 4
  %sub842 = sub nsw i32 %466, %467
  store i32 %sub842, i32* %cmp_const, align 4
  store i32 104, i32* %cmp_code, align 4
  br label %if.end.844

if.else.843:                                      ; preds = %if.else.839
  %468 = load i32, i32* %i, align 4
  store i32 %468, i32* %cmp_const, align 4
  store i32 106, i32* %cmp_code, align 4
  br label %if.end.844

if.end.844:                                       ; preds = %if.else.843, %if.then.841
  br label %if.end.845

if.end.845:                                       ; preds = %if.end.844, %if.then.838
  %469 = load %struct.rtx_def*, %struct.rtx_def** %diff, align 8
  %470 = load i32, i32* %abs_inc, align 4
  %471 = load i32, i32* %cmp_const, align 4
  %mul846 = mul nsw i32 %470, %471
  %conv847 = sext i32 %mul846 to i64
  %call848 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv847)
  %472 = load i32, i32* %cmp_code, align 4
  %473 = load i32, i32* %mode, align 4
  %474 = load i32, i32* %i, align 4
  %idxprom849 = sext i32 %474 to i64
  %475 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx850 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %475, i64 %idxprom849
  %476 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx850, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %469, %struct.rtx_def* %call848, i32 %472, %struct.rtx_def* null, i32 %473, i32 0, %struct.rtx_def* %476)
  %477 = load i32, i32* %i, align 4
  %idxprom851 = sext i32 %477 to i64
  %478 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx852 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %478, i64 %idxprom851
  %479 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx852, align 8
  %call853 = call %struct.rtx_def* @get_last_insn()
  %fld854 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call853, i32 0, i32 1
  %arrayidx855 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld854, i32 0, i64 7
  %rtx856 = bitcast %union.rtunion_def* %arrayidx855 to %struct.rtx_def**
  store %struct.rtx_def* %479, %struct.rtx_def** %rtx856, align 8
  %480 = load i32, i32* %i, align 4
  %idxprom857 = sext i32 %480 to i64
  %481 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx858 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %481, i64 %idxprom857
  %482 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx858, align 8
  %fld859 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %482, i32 0, i32 1
  %arrayidx860 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld859, i32 0, i64 3
  %rtint861 = bitcast %union.rtunion_def* %arrayidx860 to i32*
  %483 = load i32, i32* %rtint861, align 4
  %inc862 = add nsw i32 %483, 1
  store i32 %inc862, i32* %rtint861, align 4
  %call863 = call %struct.rtx_def* @get_last_insn()
  %484 = load i32, i32* %unroll_number, align 4
  %485 = load i32, i32* %i, align 4
  %sub864 = sub nsw i32 %484, %485
  %div865 = sdiv i32 10000, %sub864
  call void @predict_insn(%struct.rtx_def* %call863, i32 11, i32 %div865)
  br label %for.inc.866

for.inc.866:                                      ; preds = %if.end.845
  %486 = load i32, i32* %i, align 4
  %inc867 = add nsw i32 %486, 1
  store i32 %inc867, i32* %i, align 4
  br label %for.cond.831

for.end.868:                                      ; preds = %for.cond.831
  %487 = load i32, i32* %abs_inc, align 4
  %cmp869 = icmp ne i32 %487, 1
  br i1 %cmp869, label %if.then.871, label %if.end.894

if.then.871:                                      ; preds = %for.end.868
  %488 = load i32, i32* %neg_inc, align 4
  %tobool874 = icmp ne i32 %488, 0
  br i1 %tobool874, label %if.then.875, label %if.else.877

if.then.875:                                      ; preds = %if.then.871
  %489 = load i32, i32* %abs_inc, align 4
  %sub876 = sub nsw i32 %489, 1
  store i32 %sub876, i32* %cmp_const872, align 4
  store i32 106, i32* %cmp_code873, align 4
  br label %if.end.880

if.else.877:                                      ; preds = %if.then.871
  %490 = load i32, i32* %abs_inc, align 4
  %491 = load i32, i32* %unroll_number, align 4
  %sub878 = sub nsw i32 %491, 1
  %mul879 = mul nsw i32 %490, %sub878
  %add = add nsw i32 %mul879, 1
  store i32 %add, i32* %cmp_const872, align 4
  store i32 104, i32* %cmp_code873, align 4
  br label %if.end.880

if.end.880:                                       ; preds = %if.else.877, %if.then.875
  %492 = load %struct.rtx_def*, %struct.rtx_def** %diff, align 8
  %493 = load i32, i32* %cmp_const872, align 4
  %conv881 = sext i32 %493 to i64
  %call882 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv881)
  %494 = load i32, i32* %cmp_code873, align 4
  %495 = load i32, i32* %mode, align 4
  %496 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx883 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %496, i64 0
  %497 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx883, align 8
  call void @emit_cmp_and_jump_insns(%struct.rtx_def* %492, %struct.rtx_def* %call882, i32 %494, %struct.rtx_def* null, i32 %495, i32 0, %struct.rtx_def* %497)
  %498 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx884 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %498, i64 0
  %499 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx884, align 8
  %call885 = call %struct.rtx_def* @get_last_insn()
  %fld886 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call885, i32 0, i32 1
  %arrayidx887 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld886, i32 0, i64 7
  %rtx888 = bitcast %union.rtunion_def* %arrayidx887 to %struct.rtx_def**
  store %struct.rtx_def* %499, %struct.rtx_def** %rtx888, align 8
  %500 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx889 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %500, i64 0
  %501 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx889, align 8
  %fld890 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %501, i32 0, i32 1
  %arrayidx891 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld890, i32 0, i64 3
  %rtint892 = bitcast %union.rtunion_def* %arrayidx891 to i32*
  %502 = load i32, i32* %rtint892, align 4
  %inc893 = add nsw i32 %502, 1
  store i32 %inc893, i32* %rtint892, align 4
  br label %if.end.894

if.end.894:                                       ; preds = %if.end.880, %for.end.868
  %call895 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call895, %struct.rtx_def** %sequence, align 8
  call void @end_sequence()
  %503 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %504 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %call896 = call %struct.rtx_def* @loop_insn_hoist(%struct.loop* %503, %struct.rtx_def* %504)
  %505 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %506 = bitcast %struct.rtx_def* %505 to i32*
  %bf.load897 = load i32, i32* %506, align 8
  %bf.clear898 = and i32 %bf.load897, 65535
  %cmp899 = icmp eq i32 %bf.clear898, 35
  br i1 %cmp899, label %if.then.901, label %if.else.908

if.then.901:                                      ; preds = %if.end.894
  %507 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld902 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %507, i32 0, i32 1
  %arrayidx903 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld902, i32 0, i64 1
  %rtx904 = bitcast %union.rtunion_def* %arrayidx903 to %struct.rtx_def**
  %508 = load %struct.rtx_def*, %struct.rtx_def** %rtx904, align 8
  %fld905 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %508, i32 0, i32 1
  %arrayidx906 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld905, i32 0, i64 1
  %rtx907 = bitcast %union.rtunion_def* %arrayidx906 to %struct.rtx_def**
  %509 = load %struct.rtx_def*, %struct.rtx_def** %rtx907, align 8
  store %struct.rtx_def* %509, %struct.rtx_def** %copy_end, align 8
  br label %if.end.919

if.else.908:                                      ; preds = %if.end.894
  %510 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %511 = bitcast %struct.rtx_def* %510 to i32*
  %bf.load909 = load i32, i32* %511, align 8
  %bf.clear910 = and i32 %bf.load909, 65535
  %cmp911 = icmp eq i32 %bf.clear910, 33
  br i1 %cmp911, label %if.then.913, label %if.else.917

if.then.913:                                      ; preds = %if.else.908
  %512 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld914 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %512, i32 0, i32 1
  %arrayidx915 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld914, i32 0, i64 1
  %rtx916 = bitcast %union.rtunion_def* %arrayidx915 to %struct.rtx_def**
  %513 = load %struct.rtx_def*, %struct.rtx_def** %rtx916, align 8
  store %struct.rtx_def* %513, %struct.rtx_def** %copy_end, align 8
  br label %if.end.918

if.else.917:                                      ; preds = %if.else.908
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 1104, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.unroll_loop, i32 0, i32 0)) #5
  unreachable

if.end.918:                                       ; preds = %if.then.913
  br label %if.end.919

if.end.919:                                       ; preds = %if.end.918, %if.then.901
  store i32 1, i32* %i, align 4
  br label %for.cond.920

for.cond.920:                                     ; preds = %for.inc.1003, %if.end.919
  %514 = load i32, i32* %i, align 4
  %515 = load i32, i32* %unroll_number, align 4
  %cmp921 = icmp slt i32 %514, %515
  br i1 %cmp921, label %for.body.923, label %for.end.1005

for.body.923:                                     ; preds = %for.cond.920
  %516 = load i32, i32* %unroll_number, align 4
  %517 = load i32, i32* %i, align 4
  %sub924 = sub nsw i32 %516, %517
  %idxprom925 = sext i32 %sub924 to i64
  %518 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx926 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %518, i64 %idxprom925
  %519 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx926, align 8
  %520 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %fld927 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %520, i32 0, i32 1
  %arrayidx928 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld927, i32 0, i64 1
  %rtx929 = bitcast %union.rtunion_def* %arrayidx928 to %struct.rtx_def**
  %521 = load %struct.rtx_def*, %struct.rtx_def** %rtx929, align 8
  %call930 = call %struct.rtx_def* @emit_label_after(%struct.rtx_def* %519, %struct.rtx_def* %521)
  %522 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %insn_map931 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %522, i32 0, i32 6
  %523 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map931, align 8
  %524 = bitcast %struct.rtx_def** %523 to i8*
  %525 = load i32, i32* %max_insnno, align 4
  %conv932 = sext i32 %525 to i64
  %mul933 = mul i64 %conv932, 8
  call void @llvm.memset.p0i8.i64(i8* %524, i8 0, i64 %mul933, i32 1, i1 false)
  %526 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray934 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %526, i32 0, i32 9
  %527 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray934, align 8
  %data935 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %527, i32 0, i32 4
  %const_equiv = bitcast %union.varray_data_tag* %data935 to [1 x %struct.const_equiv_data]*
  %arrayidx936 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv, i32 0, i64 0
  %528 = bitcast %struct.const_equiv_data* %arrayidx936 to i8*
  %529 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray937 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %529, i32 0, i32 9
  %530 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray937, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %530, i32 0, i32 0
  %531 = load i64, i64* %num_elements, align 8
  %mul938 = mul i64 %531, 16
  call void @llvm.memset.p0i8.i64(i8* %528, i8 0, i64 %mul938, i32 1, i1 false)
  %532 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_age = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %532, i32 0, i32 10
  store i32 0, i32* %const_age, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.939

for.cond.939:                                     ; preds = %for.inc.952, %for.body.923
  %533 = load i32, i32* %j, align 4
  %534 = load i32, i32* %max_labelno, align 4
  %cmp940 = icmp slt i32 %533, %534
  br i1 %cmp940, label %for.body.942, label %for.end.954

for.body.942:                                     ; preds = %for.cond.939
  %535 = load i32, i32* %j, align 4
  %idxprom943 = sext i32 %535 to i64
  %536 = load i8*, i8** %local_label, align 8
  %arrayidx944 = getelementptr inbounds i8, i8* %536, i64 %idxprom943
  %537 = load i8, i8* %arrayidx944, align 1
  %tobool945 = icmp ne i8 %537, 0
  br i1 %tobool945, label %if.then.946, label %if.end.951

if.then.946:                                      ; preds = %for.body.942
  %call947 = call %struct.rtx_def* @gen_label_rtx()
  %538 = load i32, i32* %j, align 4
  %idxprom948 = sext i32 %538 to i64
  %539 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %label_map949 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %539, i32 0, i32 5
  %540 = load %struct.rtx_def**, %struct.rtx_def*** %label_map949, align 8
  %arrayidx950 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %540, i64 %idxprom948
  store %struct.rtx_def* %call947, %struct.rtx_def** %arrayidx950, align 8
  br label %if.end.951

if.end.951:                                       ; preds = %if.then.946, %for.body.942
  br label %for.inc.952

for.inc.952:                                      ; preds = %if.end.951
  %541 = load i32, i32* %j, align 4
  %inc953 = add nsw i32 %541, 1
  store i32 %inc953, i32* %j, align 4
  br label %for.cond.939

for.end.954:                                      ; preds = %for.cond.939
  store i32 53, i32* %r, align 4
  br label %for.cond.955

for.cond.955:                                     ; preds = %for.inc.982, %for.end.954
  %542 = load i32, i32* %r, align 4
  %543 = load i32, i32* %max_local_regnum, align 4
  %cmp956 = icmp ult i32 %542, %543
  br i1 %cmp956, label %for.body.958, label %for.end.984

for.body.958:                                     ; preds = %for.cond.955
  %544 = load i32, i32* %r, align 4
  %idxprom959 = zext i32 %544 to i64
  %545 = load i8*, i8** %local_regno, align 8
  %arrayidx960 = getelementptr inbounds i8, i8* %545, i64 %idxprom959
  %546 = load i8, i8* %arrayidx960, align 1
  %tobool961 = icmp ne i8 %546, 0
  br i1 %tobool961, label %if.then.962, label %if.end.981

if.then.962:                                      ; preds = %for.body.958
  %547 = load i32, i32* %r, align 4
  %idxprom963 = zext i32 %547 to i64
  %548 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %548, i32 0, i32 3
  %549 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %549, i32 0, i32 12
  %550 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx964 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %550, i64 %idxprom963
  %551 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx964, align 8
  %552 = bitcast %struct.rtx_def* %551 to i32*
  %bf.load965 = load i32, i32* %552, align 8
  %bf.lshr966 = lshr i32 %bf.load965, 16
  %bf.clear967 = and i32 %bf.lshr966, 255
  %call968 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear967)
  %553 = load i32, i32* %r, align 4
  %idxprom969 = zext i32 %553 to i64
  %554 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map970 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %554, i32 0, i32 4
  %555 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map970, align 8
  %arrayidx971 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %555, i64 %idxprom969
  store %struct.rtx_def* %call968, %struct.rtx_def** %arrayidx971, align 8
  %556 = load i32, i32* %r, align 4
  %idxprom972 = zext i32 %556 to i64
  %557 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map973 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %557, i32 0, i32 4
  %558 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map973, align 8
  %arrayidx974 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %558, i64 %idxprom972
  %559 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx974, align 8
  %fld975 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %559, i32 0, i32 1
  %arrayidx976 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld975, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx976 to i32*
  %560 = load i32, i32* %rtuint, align 4
  %561 = load i32, i32* %r, align 4
  %idxprom977 = zext i32 %561 to i64
  %562 = load %struct.function*, %struct.function** @cfun, align 8
  %emit978 = getelementptr inbounds %struct.function, %struct.function* %562, i32 0, i32 3
  %563 = load %struct.emit_status*, %struct.emit_status** %emit978, align 8
  %x_regno_reg_rtx979 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %563, i32 0, i32 12
  %564 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx979, align 8
  %arrayidx980 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %564, i64 %idxprom977
  %565 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx980, align 8
  call void @record_base_value(i32 %560, %struct.rtx_def* %565, i32 0)
  br label %if.end.981

if.end.981:                                       ; preds = %if.then.962, %for.body.958
  br label %for.inc.982

for.inc.982:                                      ; preds = %if.end.981
  %566 = load i32, i32* %r, align 4
  %inc983 = add i32 %566, 1
  store i32 %inc983, i32* %r, align 4
  br label %for.cond.955

for.end.984:                                      ; preds = %for.cond.955
  %567 = load i32, i32* %i, align 4
  %568 = load i32, i32* %unroll_number, align 4
  %sub985 = sub nsw i32 %568, 1
  %cmp986 = icmp eq i32 %567, %sub985
  br i1 %cmp986, label %if.then.988, label %if.end.1002

if.then.988:                                      ; preds = %for.end.984
  %569 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %570 = bitcast %struct.rtx_def* %569 to i32*
  %bf.load989 = load i32, i32* %570, align 8
  %bf.clear990 = and i32 %bf.load989, 65535
  %cmp991 = icmp eq i32 %bf.clear990, 35
  br i1 %cmp991, label %if.then.993, label %if.else.1000

if.then.993:                                      ; preds = %if.then.988
  %571 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld994 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %571, i32 0, i32 1
  %arrayidx995 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld994, i32 0, i64 1
  %rtx996 = bitcast %union.rtunion_def* %arrayidx995 to %struct.rtx_def**
  %572 = load %struct.rtx_def*, %struct.rtx_def** %rtx996, align 8
  %fld997 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %572, i32 0, i32 1
  %arrayidx998 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld997, i32 0, i64 1
  %rtx999 = bitcast %union.rtunion_def* %arrayidx998 to %struct.rtx_def**
  %573 = load %struct.rtx_def*, %struct.rtx_def** %rtx999, align 8
  store %struct.rtx_def* %573, %struct.rtx_def** %copy_end, align 8
  br label %if.end.1001

if.else.1000:                                     ; preds = %if.then.988
  %574 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  store %struct.rtx_def* %574, %struct.rtx_def** %copy_end, align 8
  br label %if.end.1001

if.end.1001:                                      ; preds = %if.else.1000, %if.then.993
  br label %if.end.1002

if.end.1002:                                      ; preds = %if.end.1001, %for.end.984
  %575 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %576 = load %struct.rtx_def*, %struct.rtx_def** %copy_start, align 8
  %577 = load %struct.rtx_def*, %struct.rtx_def** %copy_end, align 8
  %578 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %579 = load %struct.rtx_def*, %struct.rtx_def** %exit_label, align 8
  %580 = load i32, i32* %unroll_type, align 4
  %581 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %582 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %583 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %584 = load %struct.rtx_def*, %struct.rtx_def** %copy_end, align 8
  call void @copy_loop_body(%struct.loop* %575, %struct.rtx_def* %576, %struct.rtx_def* %577, %struct.inline_remap* %578, %struct.rtx_def* %579, i32 0, i32 %580, %struct.rtx_def* %581, %struct.rtx_def* %582, %struct.rtx_def* %583, %struct.rtx_def* %584)
  br label %for.inc.1003

for.inc.1003:                                     ; preds = %if.end.1002
  %585 = load i32, i32* %i, align 4
  %inc1004 = add nsw i32 %585, 1
  store i32 %inc1004, i32* %i, align 4
  br label %for.cond.920

for.end.1005:                                     ; preds = %for.cond.920
  %586 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %arrayidx1006 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %586, i64 0
  %587 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1006, align 8
  %588 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %fld1007 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %588, i32 0, i32 1
  %arrayidx1008 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1007, i32 0, i64 1
  %rtx1009 = bitcast %union.rtunion_def* %arrayidx1008 to %struct.rtx_def**
  %589 = load %struct.rtx_def*, %struct.rtx_def** %rtx1009, align 8
  %call1010 = call %struct.rtx_def* @emit_label_after(%struct.rtx_def* %587, %struct.rtx_def* %589)
  %590 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %591 = bitcast %struct.rtx_def* %590 to i32*
  %bf.load1011 = load i32, i32* %591, align 8
  %bf.clear1012 = and i32 %bf.load1011, 65535
  %cmp1013 = icmp eq i32 %bf.clear1012, 35
  br i1 %cmp1013, label %if.then.1015, label %if.else.1022

if.then.1015:                                     ; preds = %for.end.1005
  %592 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld1016 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %592, i32 0, i32 1
  %arrayidx1017 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1016, i32 0, i64 1
  %rtx1018 = bitcast %union.rtunion_def* %arrayidx1017 to %struct.rtx_def**
  %593 = load %struct.rtx_def*, %struct.rtx_def** %rtx1018, align 8
  store %struct.rtx_def* %593, %struct.rtx_def** %insert_before, align 8
  %594 = load %struct.rtx_def*, %struct.rtx_def** %insert_before, align 8
  %fld1019 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %594, i32 0, i32 1
  %arrayidx1020 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1019, i32 0, i64 1
  %rtx1021 = bitcast %union.rtunion_def* %arrayidx1020 to %struct.rtx_def**
  %595 = load %struct.rtx_def*, %struct.rtx_def** %rtx1021, align 8
  store %struct.rtx_def* %595, %struct.rtx_def** %copy_end, align 8
  br label %if.end.1026

if.else.1022:                                     ; preds = %for.end.1005
  %596 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  store %struct.rtx_def* %596, %struct.rtx_def** %insert_before, align 8
  %597 = load %struct.rtx_def*, %struct.rtx_def** %insert_before, align 8
  %fld1023 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %597, i32 0, i32 1
  %arrayidx1024 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1023, i32 0, i64 1
  %rtx1025 = bitcast %union.rtunion_def* %arrayidx1024 to %struct.rtx_def**
  %598 = load %struct.rtx_def*, %struct.rtx_def** %rtx1025, align 8
  store %struct.rtx_def* %598, %struct.rtx_def** %copy_end, align 8
  br label %if.end.1026

if.end.1026:                                      ; preds = %if.else.1022, %if.then.1015
  store i32 1, i32* %unroll_type, align 4
  store i32 1, i32* %loop_preconditioned, align 4
  %599 = load %struct.rtx_def**, %struct.rtx_def*** %labels, align 8
  %600 = bitcast %struct.rtx_def** %599 to i8*
  call void @free(i8* %600) #3
  br label %if.end.1027

if.end.1027:                                      ; preds = %if.end.1026, %if.then.713
  br label %if.end.1028

if.end.1028:                                      ; preds = %if.end.1027, %land.lhs.true.711, %land.lhs.true.709, %if.end.706
  %601 = load i32, i32* %unroll_type, align 4
  %cmp1029 = icmp eq i32 %601, 2
  br i1 %cmp1029, label %land.lhs.true.1031, label %if.end.1038

land.lhs.true.1031:                               ; preds = %if.end.1028
  %602 = load i32, i32* @flag_unroll_all_loops, align 4
  %tobool1032 = icmp ne i32 %602, 0
  br i1 %tobool1032, label %if.end.1038, label %if.then.1033

if.then.1033:                                     ; preds = %land.lhs.true.1031
  %603 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool1034 = icmp ne %struct._IO_FILE* %603, null
  br i1 %tobool1034, label %if.then.1035, label %if.end.1037

if.then.1035:                                     ; preds = %if.then.1033
  %604 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call1036 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %604, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.17, i32 0, i32 0))
  br label %if.end.1037

if.end.1037:                                      ; preds = %if.then.1035, %if.then.1033
  br label %egress

if.end.1038:                                      ; preds = %land.lhs.true.1031, %if.end.1028
  %605 = load i32, i32* %unroll_number, align 4
  %606 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %unroll_number1039 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %606, i32 0, i32 16
  store i32 %605, i32* %unroll_number1039, align 4
  %607 = load i32, i32* %splitting_not_safe, align 4
  %tobool1040 = icmp ne i32 %607, 0
  br i1 %tobool1040, label %if.then.1041, label %if.else.1042

if.then.1041:                                     ; preds = %if.end.1038
  store i64 0, i64* %temp, align 8
  br label %if.end.1045

if.else.1042:                                     ; preds = %if.end.1038
  %608 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %609 = load i32, i32* %unroll_type, align 4
  %610 = load i32, i32* %unroll_number, align 4
  %call1043 = call i32 @find_splittable_regs(%struct.loop* %608, i32 %609, i32 %610)
  %conv1044 = sext i32 %call1043 to i64
  store i64 %conv1044, i64* %temp, align 8
  br label %if.end.1045

if.end.1045:                                      ; preds = %if.else.1042, %if.then.1041
  %call1046 = call i32 @max_reg_num()
  store i32 %call1046, i32* %maxregnum, align 4
  %611 = load i32, i32* %maxregnum, align 4
  %conv1047 = zext i32 %611 to i64
  %mul1048 = mul i64 %conv1047, 8
  %call1049 = call noalias i8* @xmalloc(i64 %mul1048)
  %612 = bitcast i8* %call1049 to %struct.rtx_def**
  %613 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map1050 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %613, i32 0, i32 4
  store %struct.rtx_def** %612, %struct.rtx_def*** %reg_map1050, align 8
  %614 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %615 = load i32, i32* %maxregnum, align 4
  call void @init_reg_map(%struct.inline_remap* %614, i32 %615)
  %616 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1051 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %616, i32 0, i32 9
  %617 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray1051, align 8
  %cmp1052 = icmp eq %struct.varray_head_tag* %617, null
  br i1 %cmp1052, label %if.then.1054, label %if.end.1062

if.then.1054:                                     ; preds = %if.end.1045
  %618 = load i32, i32* %maxregnum, align 4
  %conv1055 = zext i32 %618 to i64
  %619 = load i64, i64* %temp, align 8
  %620 = load i32, i32* %unroll_number, align 4
  %conv1056 = sext i32 %620 to i64
  %mul1057 = mul i64 %619, %conv1056
  %mul1058 = mul i64 %mul1057, 2
  %add1059 = add i64 %conv1055, %mul1058
  %call1060 = call %struct.varray_head_tag* @varray_init(i64 %add1059, i64 16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.unroll_loop, i32 0, i32 0))
  %621 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1061 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %621, i32 0, i32 9
  store %struct.varray_head_tag* %call1060, %struct.varray_head_tag** %const_equiv_varray1061, align 8
  br label %if.end.1062

if.end.1062:                                      ; preds = %if.then.1054, %if.end.1045
  %622 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1063 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %622, i32 0, i32 9
  %623 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray1063, align 8
  store %struct.varray_head_tag* %623, %struct.varray_head_tag** @global_const_equiv_varray, align 8
  %624 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %list = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %624, i32 0, i32 2
  %625 = load %struct.iv_class*, %struct.iv_class** %list, align 8
  store %struct.iv_class* %625, %struct.iv_class** %bl, align 8
  br label %for.cond.1064

for.cond.1064:                                    ; preds = %for.inc.1080, %if.end.1062
  %626 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %tobool1065 = icmp ne %struct.iv_class* %626, null
  br i1 %tobool1065, label %for.body.1066, label %for.end.1081

for.body.1066:                                    ; preds = %for.cond.1064
  %627 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %627, i32 0, i32 2
  %628 = load %struct.induction*, %struct.induction** %biv, align 8
  %src_reg = getelementptr inbounds %struct.induction, %struct.induction* %628, i32 0, i32 2
  %629 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %fld1067 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %629, i32 0, i32 1
  %arrayidx1068 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1067, i32 0, i64 0
  %rtuint1069 = bitcast %union.rtunion_def* %arrayidx1068 to i32*
  %630 = load i32, i32* %rtuint1069, align 4
  %631 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno = getelementptr inbounds %struct.iv_class, %struct.iv_class* %631, i32 0, i32 0
  %632 = load i32, i32* %regno, align 4
  %cmp1070 = icmp ne i32 %630, %632
  br i1 %cmp1070, label %if.then.1072, label %if.end.1079

if.then.1072:                                     ; preds = %for.body.1066
  %633 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv1073 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %633, i32 0, i32 2
  %634 = load %struct.induction*, %struct.induction** %biv1073, align 8
  %src_reg1074 = getelementptr inbounds %struct.induction, %struct.induction* %634, i32 0, i32 2
  %635 = load %struct.rtx_def*, %struct.rtx_def** %src_reg1074, align 8
  %636 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno1075 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %636, i32 0, i32 0
  %637 = load i32, i32* %regno1075, align 4
  %idxprom1076 = zext i32 %637 to i64
  %638 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map1077 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %638, i32 0, i32 4
  %639 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map1077, align 8
  %arrayidx1078 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %639, i64 %idxprom1076
  store %struct.rtx_def* %635, %struct.rtx_def** %arrayidx1078, align 8
  br label %if.end.1079

if.end.1079:                                      ; preds = %if.then.1072, %for.body.1066
  br label %for.inc.1080

for.inc.1080:                                     ; preds = %if.end.1079
  %640 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %next = getelementptr inbounds %struct.iv_class, %struct.iv_class* %640, i32 0, i32 9
  %641 = load %struct.iv_class*, %struct.iv_class** %next, align 8
  store %struct.iv_class* %641, %struct.iv_class** %bl, align 8
  br label %for.cond.1064

for.end.1081:                                     ; preds = %for.cond.1064
  %642 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1082 = getelementptr inbounds %struct.function, %struct.function* %642, i32 0, i32 3
  %643 = load %struct.emit_status*, %struct.emit_status** %emit1082, align 8
  %regno_pointer_align = getelementptr inbounds %struct.emit_status, %struct.emit_status* %643, i32 0, i32 10
  %644 = load i8*, i8** %regno_pointer_align, align 8
  %645 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %regno_pointer_align1083 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %645, i32 0, i32 16
  store i8* %644, i8** %regno_pointer_align1083, align 8
  %646 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1084 = getelementptr inbounds %struct.function, %struct.function* %646, i32 0, i32 3
  %647 = load %struct.emit_status*, %struct.emit_status** %emit1084, align 8
  %x_regno_reg_rtx1085 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %647, i32 0, i32 12
  %648 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx1085, align 8
  %649 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %x_regno_reg_rtx1086 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %649, i32 0, i32 17
  store %struct.rtx_def** %648, %struct.rtx_def*** %x_regno_reg_rtx1086, align 8
  %650 = load i32, i32* %unroll_type, align 4
  %cmp1087 = icmp eq i32 %650, 1
  br i1 %cmp1087, label %if.then.1089, label %if.end.1111

if.then.1089:                                     ; preds = %for.end.1081
  %651 = load %struct.rtx_def*, %struct.rtx_def** %copy_end, align 8
  %fld1090 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %651, i32 0, i32 1
  %arrayidx1091 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1090, i32 0, i64 2
  %rtx1092 = bitcast %union.rtunion_def* %arrayidx1091 to %struct.rtx_def**
  %652 = load %struct.rtx_def*, %struct.rtx_def** %rtx1092, align 8
  store %struct.rtx_def* %652, %struct.rtx_def** %insn, align 8
  %653 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %654 = bitcast %struct.rtx_def* %653 to i32*
  %bf.load1093 = load i32, i32* %654, align 8
  %bf.clear1094 = and i32 %bf.load1093, 65535
  %cmp1095 = icmp eq i32 %bf.clear1094, 32
  br i1 %cmp1095, label %if.then.1102, label %lor.lhs.false.1097

lor.lhs.false.1097:                               ; preds = %if.then.1089
  %655 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %656 = bitcast %struct.rtx_def* %655 to i32*
  %bf.load1098 = load i32, i32* %656, align 8
  %bf.clear1099 = and i32 %bf.load1098, 65535
  %cmp1100 = icmp eq i32 %bf.clear1099, 33
  br i1 %cmp1100, label %if.then.1102, label %if.end.1110

if.then.1102:                                     ; preds = %lor.lhs.false.1097, %if.then.1089
  %657 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %658 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %658, i32 0, i32 1
  %arrayidx1104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1103, i32 0, i64 3
  %rtx1105 = bitcast %union.rtunion_def* %arrayidx1104 to %struct.rtx_def**
  %659 = load %struct.rtx_def*, %struct.rtx_def** %rtx1105, align 8
  %call1106 = call %struct.rtx_def* @remap_split_bivs(%struct.loop* %657, %struct.rtx_def* %659)
  %660 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %660, i32 0, i32 1
  %arrayidx1108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1107, i32 0, i64 3
  %rtx1109 = bitcast %union.rtunion_def* %arrayidx1108 to %struct.rtx_def**
  store %struct.rtx_def* %call1106, %struct.rtx_def** %rtx1109, align 8
  br label %if.end.1110

if.end.1110:                                      ; preds = %if.then.1102, %lor.lhs.false.1097
  br label %if.end.1111

if.end.1111:                                      ; preds = %if.end.1110, %for.end.1081
  store i32 0, i32* %i, align 4
  br label %for.cond.1112

for.cond.1112:                                    ; preds = %for.inc.1213, %if.end.1111
  %661 = load i32, i32* %i, align 4
  %662 = load i32, i32* %unroll_number, align 4
  %cmp1113 = icmp slt i32 %661, %662
  br i1 %cmp1113, label %for.body.1115, label %for.end.1215

for.body.1115:                                    ; preds = %for.cond.1112
  %663 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %insn_map1116 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %663, i32 0, i32 6
  %664 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map1116, align 8
  %665 = bitcast %struct.rtx_def** %664 to i8*
  %666 = load i32, i32* %max_insnno, align 4
  %conv1117 = sext i32 %666 to i64
  %mul1118 = mul i64 %conv1117, 8
  call void @llvm.memset.p0i8.i64(i8* %665, i8 0, i64 %mul1118, i32 1, i1 false)
  %667 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1119 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %667, i32 0, i32 9
  %668 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray1119, align 8
  %data1120 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %668, i32 0, i32 4
  %const_equiv1121 = bitcast %union.varray_data_tag* %data1120 to [1 x %struct.const_equiv_data]*
  %arrayidx1122 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv1121, i32 0, i64 0
  %669 = bitcast %struct.const_equiv_data* %arrayidx1122 to i8*
  %670 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1123 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %670, i32 0, i32 9
  %671 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray1123, align 8
  %num_elements1124 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %671, i32 0, i32 0
  %672 = load i64, i64* %num_elements1124, align 8
  %mul1125 = mul i64 %672, 16
  call void @llvm.memset.p0i8.i64(i8* %669, i8 0, i64 %mul1125, i32 1, i1 false)
  %673 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_age1126 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %673, i32 0, i32 10
  store i32 0, i32* %const_age1126, align 4
  store i32 0, i32* %j, align 4
  br label %for.cond.1127

for.cond.1127:                                    ; preds = %for.inc.1140, %for.body.1115
  %674 = load i32, i32* %j, align 4
  %675 = load i32, i32* %max_labelno, align 4
  %cmp1128 = icmp slt i32 %674, %675
  br i1 %cmp1128, label %for.body.1130, label %for.end.1142

for.body.1130:                                    ; preds = %for.cond.1127
  %676 = load i32, i32* %j, align 4
  %idxprom1131 = sext i32 %676 to i64
  %677 = load i8*, i8** %local_label, align 8
  %arrayidx1132 = getelementptr inbounds i8, i8* %677, i64 %idxprom1131
  %678 = load i8, i8* %arrayidx1132, align 1
  %tobool1133 = icmp ne i8 %678, 0
  br i1 %tobool1133, label %if.then.1134, label %if.end.1139

if.then.1134:                                     ; preds = %for.body.1130
  %call1135 = call %struct.rtx_def* @gen_label_rtx()
  %679 = load i32, i32* %j, align 4
  %idxprom1136 = sext i32 %679 to i64
  %680 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %label_map1137 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %680, i32 0, i32 5
  %681 = load %struct.rtx_def**, %struct.rtx_def*** %label_map1137, align 8
  %arrayidx1138 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %681, i64 %idxprom1136
  store %struct.rtx_def* %call1135, %struct.rtx_def** %arrayidx1138, align 8
  br label %if.end.1139

if.end.1139:                                      ; preds = %if.then.1134, %for.body.1130
  br label %for.inc.1140

for.inc.1140:                                     ; preds = %if.end.1139
  %682 = load i32, i32* %j, align 4
  %inc1141 = add nsw i32 %682, 1
  store i32 %inc1141, i32* %j, align 4
  br label %for.cond.1127

for.end.1142:                                     ; preds = %for.cond.1127
  store i32 53, i32* %r, align 4
  br label %for.cond.1143

for.cond.1143:                                    ; preds = %for.inc.1173, %for.end.1142
  %683 = load i32, i32* %r, align 4
  %684 = load i32, i32* %max_local_regnum, align 4
  %cmp1144 = icmp ult i32 %683, %684
  br i1 %cmp1144, label %for.body.1146, label %for.end.1175

for.body.1146:                                    ; preds = %for.cond.1143
  %685 = load i32, i32* %r, align 4
  %idxprom1147 = zext i32 %685 to i64
  %686 = load i8*, i8** %local_regno, align 8
  %arrayidx1148 = getelementptr inbounds i8, i8* %686, i64 %idxprom1147
  %687 = load i8, i8* %arrayidx1148, align 1
  %tobool1149 = icmp ne i8 %687, 0
  br i1 %tobool1149, label %if.then.1150, label %if.end.1172

if.then.1150:                                     ; preds = %for.body.1146
  %688 = load i32, i32* %r, align 4
  %idxprom1151 = zext i32 %688 to i64
  %689 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1152 = getelementptr inbounds %struct.function, %struct.function* %689, i32 0, i32 3
  %690 = load %struct.emit_status*, %struct.emit_status** %emit1152, align 8
  %x_regno_reg_rtx1153 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %690, i32 0, i32 12
  %691 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx1153, align 8
  %arrayidx1154 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %691, i64 %idxprom1151
  %692 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1154, align 8
  %693 = bitcast %struct.rtx_def* %692 to i32*
  %bf.load1155 = load i32, i32* %693, align 8
  %bf.lshr1156 = lshr i32 %bf.load1155, 16
  %bf.clear1157 = and i32 %bf.lshr1156, 255
  %call1158 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear1157)
  %694 = load i32, i32* %r, align 4
  %idxprom1159 = zext i32 %694 to i64
  %695 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map1160 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %695, i32 0, i32 4
  %696 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map1160, align 8
  %arrayidx1161 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %696, i64 %idxprom1159
  store %struct.rtx_def* %call1158, %struct.rtx_def** %arrayidx1161, align 8
  %697 = load i32, i32* %r, align 4
  %idxprom1162 = zext i32 %697 to i64
  %698 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map1163 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %698, i32 0, i32 4
  %699 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map1163, align 8
  %arrayidx1164 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %699, i64 %idxprom1162
  %700 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1164, align 8
  %fld1165 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %700, i32 0, i32 1
  %arrayidx1166 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1165, i32 0, i64 0
  %rtuint1167 = bitcast %union.rtunion_def* %arrayidx1166 to i32*
  %701 = load i32, i32* %rtuint1167, align 4
  %702 = load i32, i32* %r, align 4
  %idxprom1168 = zext i32 %702 to i64
  %703 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1169 = getelementptr inbounds %struct.function, %struct.function* %703, i32 0, i32 3
  %704 = load %struct.emit_status*, %struct.emit_status** %emit1169, align 8
  %x_regno_reg_rtx1170 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %704, i32 0, i32 12
  %705 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx1170, align 8
  %arrayidx1171 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %705, i64 %idxprom1168
  %706 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1171, align 8
  call void @record_base_value(i32 %701, %struct.rtx_def* %706, i32 0)
  br label %if.end.1172

if.end.1172:                                      ; preds = %if.then.1150, %for.body.1146
  br label %for.inc.1173

for.inc.1173:                                     ; preds = %if.end.1172
  %707 = load i32, i32* %r, align 4
  %inc1174 = add i32 %707, 1
  store i32 %inc1174, i32* %r, align 4
  br label %for.cond.1143

for.end.1175:                                     ; preds = %for.cond.1143
  %708 = load i32, i32* %i, align 4
  %cmp1176 = icmp eq i32 %708, 0
  br i1 %cmp1176, label %land.lhs.true.1178, label %if.end.1209

land.lhs.true.1178:                               ; preds = %for.end.1175
  %709 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %710 = load %struct.rtx_def*, %struct.rtx_def** %copy_start, align 8
  %cmp1179 = icmp ne %struct.rtx_def* %709, %710
  br i1 %cmp1179, label %if.then.1181, label %if.end.1209

if.then.1181:                                     ; preds = %land.lhs.true.1178
  %711 = load %struct.rtx_def*, %struct.rtx_def** %copy_start, align 8
  %fld1182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %711, i32 0, i32 1
  %arrayidx1183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1182, i32 0, i64 1
  %rtx1184 = bitcast %union.rtunion_def* %arrayidx1183 to %struct.rtx_def**
  %712 = load %struct.rtx_def*, %struct.rtx_def** %rtx1184, align 8
  store %struct.rtx_def* %712, %struct.rtx_def** %insn, align 8
  %713 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1185 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %713, i32 0, i32 1
  %arrayidx1186 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1185, i32 0, i64 3
  %rtx1187 = bitcast %union.rtunion_def* %arrayidx1186 to %struct.rtx_def**
  %714 = load %struct.rtx_def*, %struct.rtx_def** %rtx1187, align 8
  store %struct.rtx_def* %714, %struct.rtx_def** %pattern, align 8
  %715 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %716 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld1188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %716, i32 0, i32 1
  %arrayidx1189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1188, i32 0, i64 1
  %rtx1190 = bitcast %union.rtunion_def* %arrayidx1189 to %struct.rtx_def**
  %717 = load %struct.rtx_def*, %struct.rtx_def** %rtx1190, align 8
  %fld1191 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %717, i32 0, i32 1
  %arrayidx1192 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1191, i32 0, i64 0
  %rtx1193 = bitcast %union.rtunion_def* %arrayidx1192 to %struct.rtx_def**
  %718 = load %struct.rtx_def*, %struct.rtx_def** %rtx1193, align 8
  %fld1194 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %718, i32 0, i32 1
  %arrayidx1195 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1194, i32 0, i64 5
  %rtint1196 = bitcast %union.rtunion_def* %arrayidx1195 to i32*
  %719 = load i32, i32* %rtint1196, align 4
  %call1197 = call %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %715, i32 %719)
  store %struct.rtx_def* %call1197, %struct.rtx_def** %tem, align 8
  %720 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call1198 = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 0, %struct.rtx_def* %720)
  %721 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld1199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %721, i32 0, i32 1
  %arrayidx1200 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1199, i32 0, i64 1
  %rtx1201 = bitcast %union.rtunion_def* %arrayidx1200 to %struct.rtx_def**
  store %struct.rtx_def* %call1198, %struct.rtx_def** %rtx1201, align 8
  %722 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %723 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %723, i32 0, i32 1
  %arrayidx1203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1202, i32 0, i64 7
  %rtx1204 = bitcast %union.rtunion_def* %arrayidx1203 to %struct.rtx_def**
  store %struct.rtx_def* %722, %struct.rtx_def** %rtx1204, align 8
  %724 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld1205 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %724, i32 0, i32 1
  %arrayidx1206 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1205, i32 0, i64 3
  %rtint1207 = bitcast %union.rtunion_def* %arrayidx1206 to i32*
  %725 = load i32, i32* %rtint1207, align 4
  %inc1208 = add nsw i32 %725, 1
  store i32 %inc1208, i32* %rtint1207, align 4
  br label %if.end.1209

if.end.1209:                                      ; preds = %if.then.1181, %land.lhs.true.1178, %for.end.1175
  %726 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %727 = load %struct.rtx_def*, %struct.rtx_def** %copy_start, align 8
  %728 = load %struct.rtx_def*, %struct.rtx_def** %copy_end, align 8
  %729 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %730 = load %struct.rtx_def*, %struct.rtx_def** %exit_label, align 8
  %731 = load i32, i32* %i, align 4
  %732 = load i32, i32* %unroll_number, align 4
  %sub1210 = sub nsw i32 %732, 1
  %cmp1211 = icmp eq i32 %731, %sub1210
  %conv1212 = zext i1 %cmp1211 to i32
  %733 = load i32, i32* %unroll_type, align 4
  %734 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %735 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %736 = load %struct.rtx_def*, %struct.rtx_def** %insert_before, align 8
  %737 = load %struct.rtx_def*, %struct.rtx_def** %insert_before, align 8
  call void @copy_loop_body(%struct.loop* %726, %struct.rtx_def* %727, %struct.rtx_def* %728, %struct.inline_remap* %729, %struct.rtx_def* %730, i32 %conv1212, i32 %733, %struct.rtx_def* %734, %struct.rtx_def* %735, %struct.rtx_def* %736, %struct.rtx_def* %737)
  br label %for.inc.1213

for.inc.1213:                                     ; preds = %if.end.1209
  %738 = load i32, i32* %i, align 4
  %inc1214 = add nsw i32 %738, 1
  store i32 %inc1214, i32* %i, align 4
  br label %for.cond.1112

for.end.1215:                                     ; preds = %for.cond.1112
  %739 = load i32, i32* %unroll_type, align 4
  %cmp1216 = icmp eq i32 %739, 0
  br i1 %cmp1216, label %if.then.1218, label %if.else.1221

if.then.1218:                                     ; preds = %for.end.1215
  %call1219 = call %struct.rtx_def* @gen_label_rtx()
  %740 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %call1220 = call %struct.rtx_def* @emit_label_after(%struct.rtx_def* %call1219, %struct.rtx_def* %740)
  store %struct.rtx_def* %call1220, %struct.rtx_def** %safety_label, align 8
  br label %if.end.1224

if.else.1221:                                     ; preds = %for.end.1215
  %call1222 = call %struct.rtx_def* @gen_label_rtx()
  %741 = load %struct.rtx_def*, %struct.rtx_def** %copy_end, align 8
  %call1223 = call %struct.rtx_def* @emit_label_after(%struct.rtx_def* %call1222, %struct.rtx_def* %741)
  store %struct.rtx_def* %call1223, %struct.rtx_def** %safety_label, align 8
  br label %if.end.1224

if.end.1224:                                      ; preds = %if.else.1221, %if.then.1218
  %742 = load %struct.rtx_def*, %struct.rtx_def** %copy_start, align 8
  %fld1225 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %742, i32 0, i32 1
  %arrayidx1226 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1225, i32 0, i64 2
  %rtx1227 = bitcast %union.rtunion_def* %arrayidx1226 to %struct.rtx_def**
  %743 = load %struct.rtx_def*, %struct.rtx_def** %rtx1227, align 8
  store %struct.rtx_def* %743, %struct.rtx_def** %insn, align 8
  br label %while.cond.1228

while.cond.1228:                                  ; preds = %if.end.1261, %if.end.1224
  %744 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %745 = load %struct.rtx_def*, %struct.rtx_def** %safety_label, align 8
  %cmp1229 = icmp ne %struct.rtx_def* %744, %745
  br i1 %cmp1229, label %while.body.1231, label %while.end.1262

while.body.1231:                                  ; preds = %while.cond.1228
  %746 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %747 = load %struct.rtx_def*, %struct.rtx_def** %start_label, align 8
  %cmp1232 = icmp ne %struct.rtx_def* %746, %747
  br i1 %cmp1232, label %land.lhs.true.1234, label %if.else.1257

land.lhs.true.1234:                               ; preds = %while.body.1231
  %748 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %749 = bitcast %struct.rtx_def* %748 to i32*
  %bf.load1235 = load i32, i32* %749, align 8
  %bf.clear1236 = and i32 %bf.load1235, 65535
  %cmp1237 = icmp eq i32 %bf.clear1236, 36
  br i1 %cmp1237, label %land.lhs.true.1239, label %land.lhs.true.1244

land.lhs.true.1239:                               ; preds = %land.lhs.true.1234
  %750 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1240 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %750, i32 0, i32 1
  %arrayidx1241 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1240, i32 0, i64 6
  %rtstr1242 = bitcast %union.rtunion_def* %arrayidx1241 to i8**
  %751 = load i8*, i8** %rtstr1242, align 8
  %tobool1243 = icmp ne i8* %751, null
  br i1 %tobool1243, label %if.else.1257, label %land.lhs.true.1244

land.lhs.true.1244:                               ; preds = %land.lhs.true.1239, %land.lhs.true.1234
  %752 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %753 = bitcast %struct.rtx_def* %752 to i32*
  %bf.load1245 = load i32, i32* %753, align 8
  %bf.clear1246 = and i32 %bf.load1245, 65535
  %cmp1247 = icmp eq i32 %bf.clear1246, 37
  br i1 %cmp1247, label %land.lhs.true.1249, label %if.then.1255

land.lhs.true.1249:                               ; preds = %land.lhs.true.1244
  %754 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1250 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %754, i32 0, i32 1
  %arrayidx1251 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1250, i32 0, i64 4
  %rtint1252 = bitcast %union.rtunion_def* %arrayidx1251 to i32*
  %755 = load i32, i32* %rtint1252, align 4
  %cmp1253 = icmp eq i32 %755, -88
  br i1 %cmp1253, label %if.else.1257, label %if.then.1255

if.then.1255:                                     ; preds = %land.lhs.true.1249, %land.lhs.true.1244
  %756 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call1256 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %756)
  store %struct.rtx_def* %call1256, %struct.rtx_def** %insn, align 8
  br label %if.end.1261

if.else.1257:                                     ; preds = %land.lhs.true.1249, %land.lhs.true.1239, %while.body.1231
  %757 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %757, i32 0, i32 1
  %arrayidx1259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1258, i32 0, i64 2
  %rtx1260 = bitcast %union.rtunion_def* %arrayidx1259 to %struct.rtx_def**
  %758 = load %struct.rtx_def*, %struct.rtx_def** %rtx1260, align 8
  store %struct.rtx_def* %758, %struct.rtx_def** %insn, align 8
  br label %if.end.1261

if.end.1261:                                      ; preds = %if.else.1257, %if.then.1255
  br label %while.cond.1228

while.end.1262:                                   ; preds = %while.cond.1228
  %759 = load %struct.rtx_def*, %struct.rtx_def** %safety_label, align 8
  %760 = bitcast %struct.rtx_def* %759 to i32*
  %bf.load1263 = load i32, i32* %760, align 8
  %bf.lshr1264 = lshr i32 %bf.load1263, 27
  %bf.clear1265 = and i32 %bf.lshr1264, 1
  %tobool1266 = icmp ne i32 %bf.clear1265, 0
  br i1 %tobool1266, label %if.then.1267, label %if.end.1268

if.then.1267:                                     ; preds = %while.end.1262
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 1337, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.unroll_loop, i32 0, i32 0)) #5
  unreachable

if.end.1268:                                      ; preds = %while.end.1262
  %761 = load %struct.rtx_def*, %struct.rtx_def** %safety_label, align 8
  %call1269 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %761)
  %762 = load %struct.rtx_def*, %struct.rtx_def** %exit_label, align 8
  %tobool1270 = icmp ne %struct.rtx_def* %762, null
  br i1 %tobool1270, label %if.then.1271, label %if.end.1273

if.then.1271:                                     ; preds = %if.end.1268
  %763 = load %struct.rtx_def*, %struct.rtx_def** %exit_label, align 8
  %764 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %call1272 = call %struct.rtx_def* @emit_label_after(%struct.rtx_def* %763, %struct.rtx_def* %764)
  br label %if.end.1273

if.end.1273:                                      ; preds = %if.then.1271, %if.end.1268
  br label %egress

egress:                                           ; preds = %if.end.1273, %if.end.1037
  %765 = load i32, i32* %unroll_type, align 4
  %cmp1274 = icmp eq i32 %765, 0
  br i1 %cmp1274, label %if.then.1276, label %if.end.1297

if.then.1276:                                     ; preds = %egress
  %766 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %vtop1277 = getelementptr inbounds %struct.loop, %struct.loop* %766, i32 0, i32 23
  %767 = load %struct.rtx_def*, %struct.rtx_def** %vtop1277, align 8
  %tobool1278 = icmp ne %struct.rtx_def* %767, null
  br i1 %tobool1278, label %if.then.1279, label %if.end.1282

if.then.1279:                                     ; preds = %if.then.1276
  %768 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %vtop1280 = getelementptr inbounds %struct.loop, %struct.loop* %768, i32 0, i32 23
  %769 = load %struct.rtx_def*, %struct.rtx_def** %vtop1280, align 8
  %call1281 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %769)
  br label %if.end.1282

if.end.1282:                                      ; preds = %if.then.1279, %if.then.1276
  %770 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %cont1283 = getelementptr inbounds %struct.loop, %struct.loop* %770, i32 0, i32 24
  %771 = load %struct.rtx_def*, %struct.rtx_def** %cont1283, align 8
  %tobool1284 = icmp ne %struct.rtx_def* %771, null
  br i1 %tobool1284, label %if.then.1285, label %if.end.1288

if.then.1285:                                     ; preds = %if.end.1282
  %772 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %cont1286 = getelementptr inbounds %struct.loop, %struct.loop* %772, i32 0, i32 24
  %773 = load %struct.rtx_def*, %struct.rtx_def** %cont1286, align 8
  %call1287 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %773)
  br label %if.end.1288

if.end.1288:                                      ; preds = %if.then.1285, %if.end.1282
  %774 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %tobool1289 = icmp ne %struct.rtx_def* %774, null
  br i1 %tobool1289, label %if.then.1290, label %if.end.1292

if.then.1290:                                     ; preds = %if.end.1288
  %775 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %call1291 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %775)
  br label %if.end.1292

if.end.1292:                                      ; preds = %if.then.1290, %if.end.1288
  %776 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %tobool1293 = icmp ne %struct.rtx_def* %776, null
  br i1 %tobool1293, label %if.then.1294, label %if.end.1296

if.then.1294:                                     ; preds = %if.end.1292
  %777 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %call1295 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %777)
  br label %if.end.1296

if.end.1296:                                      ; preds = %if.then.1294, %if.end.1292
  br label %if.end.1297

if.end.1297:                                      ; preds = %if.end.1296, %egress
  %778 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1298 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %778, i32 0, i32 9
  %779 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray1298, align 8
  %tobool1299 = icmp ne %struct.varray_head_tag* %779, null
  br i1 %tobool1299, label %if.then.1300, label %if.end.1307

if.then.1300:                                     ; preds = %if.end.1297
  br label %do.body

do.body:                                          ; preds = %if.then.1300
  %780 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1301 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %780, i32 0, i32 9
  %781 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray1301, align 8
  %tobool1302 = icmp ne %struct.varray_head_tag* %781, null
  br i1 %tobool1302, label %if.then.1303, label %if.end.1306

if.then.1303:                                     ; preds = %do.body
  %782 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1304 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %782, i32 0, i32 9
  %783 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray1304, align 8
  %784 = bitcast %struct.varray_head_tag* %783 to i8*
  call void @free(i8* %784) #3
  %785 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %const_equiv_varray1305 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %785, i32 0, i32 9
  store %struct.varray_head_tag* null, %struct.varray_head_tag** %const_equiv_varray1305, align 8
  br label %if.end.1306

if.end.1306:                                      ; preds = %if.then.1303, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.1306
  br label %if.end.1307

if.end.1307:                                      ; preds = %do.end, %if.end.1297
  %786 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %label_map1308 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %786, i32 0, i32 5
  %787 = load %struct.rtx_def**, %struct.rtx_def*** %label_map1308, align 8
  %tobool1309 = icmp ne %struct.rtx_def** %787, null
  br i1 %tobool1309, label %if.then.1310, label %if.end.1312

if.then.1310:                                     ; preds = %if.end.1307
  %788 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %label_map1311 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %788, i32 0, i32 5
  %789 = load %struct.rtx_def**, %struct.rtx_def*** %label_map1311, align 8
  %790 = bitcast %struct.rtx_def** %789 to i8*
  call void @free(i8* %790) #3
  %791 = load i8*, i8** %local_label, align 8
  call void @free(i8* %791) #3
  br label %if.end.1312

if.end.1312:                                      ; preds = %if.then.1310, %if.end.1307
  %792 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %insn_map1313 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %792, i32 0, i32 6
  %793 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map1313, align 8
  %794 = bitcast %struct.rtx_def** %793 to i8*
  call void @free(i8* %794) #3
  %795 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %796 = bitcast %struct.rtx_def** %795 to i8*
  call void @free(i8* %796) #3
  %797 = load i32*, i32** @splittable_regs_updates, align 8
  %798 = bitcast i32* %797 to i8*
  call void @free(i8* %798) #3
  %799 = load %struct.induction**, %struct.induction*** @addr_combined_regs, align 8
  %800 = bitcast %struct.induction** %799 to i8*
  call void @free(i8* %800) #3
  %801 = load i8*, i8** %local_regno, align 8
  call void @free(i8* %801) #3
  %802 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map1314 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %802, i32 0, i32 4
  %803 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map1314, align 8
  %tobool1315 = icmp ne %struct.rtx_def** %803, null
  br i1 %tobool1315, label %if.then.1316, label %if.end.1318

if.then.1316:                                     ; preds = %if.end.1312
  %804 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %reg_map1317 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %804, i32 0, i32 4
  %805 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map1317, align 8
  %806 = bitcast %struct.rtx_def** %805 to i8*
  call void @free(i8* %806) #3
  br label %if.end.1318

if.end.1318:                                      ; preds = %if.then.1316, %if.end.1312
  %807 = load %struct.inline_remap*, %struct.inline_remap** %map, align 8
  %808 = bitcast %struct.inline_remap* %807 to i8*
  call void @free(i8* %808) #3
  br label %return

return:                                           ; preds = %if.end.1318, %if.end.442, %if.end.394, %if.end.385, %if.end.328, %if.end.300, %if.end.269, %if.then.236, %if.end.98, %if.end.40, %if.end.30, %if.end
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @ujump_to_loop_cont(%struct.rtx_def* %loop_start, %struct.rtx_def* %loop_cont) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %loop_start.addr = alloca %struct.rtx_def*, align 8
  %loop_cont.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  %label_ref = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %loop_start, %struct.rtx_def** %loop_start.addr, align 8
  store %struct.rtx_def* %loop_cont, %struct.rtx_def** %loop_cont.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %loop_start.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  %call1 = call %struct.rtx_def* @pc_set(%struct.rtx_def* %1)
  store %struct.rtx_def* %call1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %label_ref, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %label_ref, align 8
  %tobool2 = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %loop_cont.addr, align 8
  %call5 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %6)
  store %struct.rtx_def* %call5, %struct.rtx_def** %label, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %cmp = icmp eq %struct.rtx_def* %7, null
  br i1 %cmp, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp6 = icmp ne i32 %bf.clear, 36
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %lor.lhs.false, %if.end.4
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.8:                                         ; preds = %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 5
  %rtint = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %11 = load i32, i32* %rtint, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %label_ref, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 5
  %rtint16 = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %14 = load i32, i32* %rtint16, align 4
  %cmp17 = icmp eq i32 %11, %14
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %loop_start.addr, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %if.end.8
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.18, %if.then.7, %if.then.3, %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

declare %struct.rtx_def* @delete_related_insns(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_label_rtx() #1

declare i32 @max_label_num() #1

declare i32 @get_max_uid() #1

declare noalias i8* @xcalloc(i64, i64) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare noalias i8* @xmalloc(i64) #1

declare i32 @max_reg_num() #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

; Function Attrs: nounwind uwtable
define i32 @set_dominates_use(i32 %regno, i32 %first_uid, i32 %last_uid, %struct.rtx_def* %copy_start, %struct.rtx_def* %copy_end) #0 {
entry:
  %retval = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %first_uid.addr = alloca i32, align 4
  %last_uid.addr = alloca i32, align 4
  %copy_start.addr = alloca %struct.rtx_def*, align 8
  %copy_end.addr = alloca %struct.rtx_def*, align 8
  %passed_jump = alloca i32, align 4
  %p = alloca %struct.rtx_def*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %first_uid, i32* %first_uid.addr, align 4
  store i32 %last_uid, i32* %last_uid.addr, align 4
  store %struct.rtx_def* %copy_start, %struct.rtx_def** %copy_start.addr, align 8
  store %struct.rtx_def* %copy_end, %struct.rtx_def** %copy_end.addr, align 8
  store i32 0, i32* %passed_jump, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %copy_start.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %p, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.6, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %3 = load i32, i32* %rtint, align 4
  %4 = load i32, i32* %first_uid.addr, align 4
  %cmp = icmp ne i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp3 = icmp eq i32 %bf.clear, 33
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 1, i32* %passed_jump, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %7 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %copy_end.addr, align 8
  %cmp4 = icmp eq %struct.rtx_def* %7, %8
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %p, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %11 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load10 = load i32, i32* %12, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %idxprom = sext i32 %bf.clear11 to i64
  %arrayidx12 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %13 = load i8, i8* %arrayidx12, align 1
  %conv = sext i8 %13 to i32
  %cmp13 = icmp eq i32 %conv, 105
  br i1 %cmp13, label %lor.lhs.false, label %if.then.15

lor.lhs.false:                                    ; preds = %while.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %15 = load i32, i32* %regno.addr, align 4
  %call = call i32 @dead_or_set_regno_p(%struct.rtx_def* %14, i32 %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %lor.lhs.false, %while.end
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %lor.lhs.false
  %16 = load i32, i32* %passed_jump, align 4
  %cmp17 = icmp eq i32 %16, 0
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i32 1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  br label %while.cond.21

while.cond.21:                                    ; preds = %if.end.37, %if.end.20
  %17 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtint24 = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %18 = load i32, i32* %rtint24, align 4
  %19 = load i32, i32* %last_uid.addr, align 4
  %cmp25 = icmp ne i32 %18, %19
  br i1 %cmp25, label %while.body.27, label %while.end.41

while.body.27:                                    ; preds = %while.cond.21
  %20 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load28 = load i32, i32* %21, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 36
  br i1 %cmp30, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %while.body.27
  store i32 0, i32* %retval
  br label %return

if.else:                                          ; preds = %while.body.27
  %22 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %copy_end.addr, align 8
  %cmp33 = icmp eq %struct.rtx_def* %22, %23
  br i1 %cmp33, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.end.36:                                        ; preds = %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36
  %24 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 2
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %p, align 8
  br label %while.cond.21

while.end.41:                                     ; preds = %while.cond.21
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end.41, %if.then.35, %if.then.32, %if.then.19, %if.then.15, %if.then.5
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define i32 @precondition_loop_p(%struct.loop* %loop, %struct.rtx_def** %initial_value, %struct.rtx_def** %final_value, %struct.rtx_def** %increment, i32* %mode) #0 {
entry:
  %retval = alloca i32, align 4
  %loop.addr = alloca %struct.loop*, align 8
  %initial_value.addr = alloca %struct.rtx_def**, align 8
  %final_value.addr = alloca %struct.rtx_def**, align 8
  %increment.addr = alloca %struct.rtx_def**, align 8
  %mode.addr = alloca i32*, align 8
  %loop_start = alloca %struct.rtx_def*, align 8
  %loop_info = alloca %struct.loop_info*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.rtx_def** %initial_value, %struct.rtx_def*** %initial_value.addr, align 8
  store %struct.rtx_def** %final_value, %struct.rtx_def*** %final_value.addr, align 8
  store %struct.rtx_def** %increment, %struct.rtx_def*** %increment.addr, align 8
  store i32* %mode, i32** %mode.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 26
  %1 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %loop_start, align 8
  %2 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %2, i32 0, i32 22
  %3 = load i8*, i8** %aux, align 8
  %4 = bitcast i8* %3 to %struct.loop_info*
  store %struct.loop_info* %4, %struct.loop_info** %loop_info, align 8
  %5 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations = getelementptr inbounds %struct.loop_info, %struct.loop_info* %5, i32 0, i32 15
  %6 = load i64, i64* %n_iterations, align 8
  %cmp = icmp ugt i64 %6, 0
  br i1 %cmp, label %if.then, label %if.end.13

if.then:                                          ; preds = %entry
  %7 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment1 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %7, i32 0, i32 13
  %8 = load %struct.rtx_def*, %struct.rtx_def** %increment1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %9 = load i64, i64* %rtwint, align 8
  %cmp2 = icmp sgt i64 %9, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %initial_value.addr, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %11, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %13 = load %struct.rtx_def**, %struct.rtx_def*** %increment.addr, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %13, align 8
  %14 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations4 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %14, i32 0, i32 15
  %15 = load i64, i64* %n_iterations4, align 8
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %15)
  %16 = load %struct.rtx_def**, %struct.rtx_def*** %final_value.addr, align 8
  store %struct.rtx_def* %call, %struct.rtx_def** %16, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %17 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations5 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %17, i32 0, i32 15
  %18 = load i64, i64* %n_iterations5, align 8
  %call6 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %18)
  %19 = load %struct.rtx_def**, %struct.rtx_def*** %initial_value.addr, align 8
  store %struct.rtx_def* %call6, %struct.rtx_def** %19, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  %21 = load %struct.rtx_def**, %struct.rtx_def*** %increment.addr, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %21, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %23 = load %struct.rtx_def**, %struct.rtx_def*** %final_value.addr, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %23, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %24 = load i32, i32* @word_mode, align 4
  %25 = load i32*, i32** %mode.addr, align 8
  store i32 %24, i32* %25, align 4
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool = icmp ne %struct._IO_FILE* %26, null
  br i1 %tobool, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %if.end
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call8 = call i32 @fputs(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %27)
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %29 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations9 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %29, i32 0, i32 15
  %30 = load i64, i64* %n_iterations9, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i64 %30)
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call11 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), %struct._IO_FILE* %31)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.7, %if.end
  store i32 1, i32* %retval
  br label %return

if.end.13:                                        ; preds = %entry
  %32 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %iteration_var = getelementptr inbounds %struct.loop_info, %struct.loop_info* %32, i32 0, i32 12
  %33 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %cmp14 = icmp eq %struct.rtx_def* %33, null
  br i1 %cmp14, label %if.then.15, label %if.else.20

if.then.15:                                       ; preds = %if.end.13
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool16 = icmp ne %struct._IO_FILE* %34, null
  br i1 %tobool16, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.then.15
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.20, i32 0, i32 0))
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.17, %if.then.15
  store i32 0, i32* %retval
  br label %return

if.else.20:                                       ; preds = %if.end.13
  %36 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %initial_value21 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %36, i32 0, i32 7
  %37 = load %struct.rtx_def*, %struct.rtx_def** %initial_value21, align 8
  %cmp22 = icmp eq %struct.rtx_def* %37, null
  br i1 %cmp22, label %if.then.23, label %if.else.28

if.then.23:                                       ; preds = %if.else.20
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool24 = icmp ne %struct._IO_FILE* %38, null
  br i1 %tobool24, label %if.then.25, label %if.end.27

if.then.25:                                       ; preds = %if.then.23
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i32 0, i32 0))
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.25, %if.then.23
  store i32 0, i32* %retval
  br label %return

if.else.28:                                       ; preds = %if.else.20
  %40 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment29 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %40, i32 0, i32 13
  %41 = load %struct.rtx_def*, %struct.rtx_def** %increment29, align 8
  %cmp30 = icmp eq %struct.rtx_def* %41, null
  br i1 %cmp30, label %if.then.31, label %if.else.36

if.then.31:                                       ; preds = %if.else.28
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool32 = icmp ne %struct._IO_FILE* %42, null
  br i1 %tobool32, label %if.then.33, label %if.end.35

if.then.33:                                       ; preds = %if.then.31
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i32 0, i32 0))
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.33, %if.then.31
  store i32 0, i32* %retval
  br label %return

if.else.36:                                       ; preds = %if.else.28
  %44 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment37 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %44, i32 0, i32 13
  %45 = load %struct.rtx_def*, %struct.rtx_def** %increment37, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load = load i32, i32* %46, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp38 = icmp ne i32 %bf.clear, 54
  br i1 %cmp38, label %if.then.39, label %if.else.44

if.then.39:                                       ; preds = %if.else.36
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool40 = icmp ne %struct._IO_FILE* %47, null
  br i1 %tobool40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %if.then.39
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.23, i32 0, i32 0))
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.41, %if.then.39
  store i32 0, i32* %retval
  br label %return

if.else.44:                                       ; preds = %if.else.36
  %49 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment45 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %49, i32 0, i32 13
  %50 = load %struct.rtx_def*, %struct.rtx_def** %increment45, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtwint48 = bitcast %union.rtunion_def* %arrayidx47 to i64*
  %51 = load i64, i64* %rtwint48, align 8
  %call49 = call i32 @exact_log2_wide(i64 %51)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %land.lhs.true, label %if.end.62

land.lhs.true:                                    ; preds = %if.else.44
  %52 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment51 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %52, i32 0, i32 13
  %53 = load %struct.rtx_def*, %struct.rtx_def** %increment51, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtwint54 = bitcast %union.rtunion_def* %arrayidx53 to i64*
  %54 = load i64, i64* %rtwint54, align 8
  %sub = sub nsw i64 0, %54
  %call55 = call i32 @exact_log2_wide(i64 %sub)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then.57, label %if.end.62

if.then.57:                                       ; preds = %land.lhs.true
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool58 = icmp ne %struct._IO_FILE* %55, null
  br i1 %tobool58, label %if.then.59, label %if.end.61

if.then.59:                                       ; preds = %if.then.57
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i32 0, i32 0))
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.59, %if.then.57
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %land.lhs.true, %if.else.44
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.62
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %if.end.64
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65
  %57 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value67 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %57, i32 0, i32 9
  %58 = load %struct.rtx_def*, %struct.rtx_def** %final_value67, align 8
  %cmp68 = icmp eq %struct.rtx_def* %58, null
  br i1 %cmp68, label %if.then.69, label %if.end.74

if.then.69:                                       ; preds = %if.end.66
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool70 = icmp ne %struct._IO_FILE* %59, null
  br i1 %tobool70, label %if.then.71, label %if.end.73

if.then.71:                                       ; preds = %if.then.69
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.25, i32 0, i32 0))
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.71, %if.then.69
  store i32 0, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.end.66
  %61 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value75 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %61, i32 0, i32 9
  %62 = load %struct.rtx_def*, %struct.rtx_def** %final_value75, align 8
  %63 = bitcast %struct.rtx_def* %62 to i32*
  %bf.load76 = load i32, i32* %63, align 8
  %bf.clear77 = and i32 %bf.load76, 65535
  %cmp78 = icmp eq i32 %bf.clear77, 61
  br i1 %cmp78, label %land.lhs.true.79, label %lor.lhs.false

land.lhs.true.79:                                 ; preds = %if.end.74
  %64 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value80 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %64, i32 0, i32 9
  %65 = load %struct.rtx_def*, %struct.rtx_def** %final_value80, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx82 to i32*
  %66 = load i32, i32* %rtuint, align 4
  %67 = load i32, i32* @max_reg_before_loop, align 4
  %cmp83 = icmp uge i32 %66, %67
  br i1 %cmp83, label %if.then.100, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.79, %if.end.74
  %68 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value84 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %68, i32 0, i32 9
  %69 = load %struct.rtx_def*, %struct.rtx_def** %final_value84, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load85 = load i32, i32* %70, align 8
  %bf.clear86 = and i32 %bf.load85, 65535
  %cmp87 = icmp eq i32 %bf.clear86, 75
  br i1 %cmp87, label %land.lhs.true.88, label %lor.lhs.false.96

land.lhs.true.88:                                 ; preds = %lor.lhs.false
  %71 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value89 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %71, i32 0, i32 9
  %72 = load %struct.rtx_def*, %struct.rtx_def** %final_value89, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 0
  %rtuint94 = bitcast %union.rtunion_def* %arrayidx93 to i32*
  %74 = load i32, i32* %rtuint94, align 4
  %75 = load i32, i32* @max_reg_before_loop, align 4
  %cmp95 = icmp uge i32 %74, %75
  br i1 %cmp95, label %if.then.100, label %lor.lhs.false.96

lor.lhs.false.96:                                 ; preds = %land.lhs.true.88, %lor.lhs.false
  %76 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %77 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value97 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %77, i32 0, i32 9
  %78 = load %struct.rtx_def*, %struct.rtx_def** %final_value97, align 8
  %call98 = call i32 @loop_invariant_p(%struct.loop* %76, %struct.rtx_def* %78)
  %tobool99 = icmp ne i32 %call98, 0
  br i1 %tobool99, label %if.end.105, label %if.then.100

if.then.100:                                      ; preds = %lor.lhs.false.96, %land.lhs.true.88, %land.lhs.true.79
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool101 = icmp ne %struct._IO_FILE* %79, null
  br i1 %tobool101, label %if.then.102, label %if.end.104

if.then.102:                                      ; preds = %if.then.100
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.26, i32 0, i32 0))
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.102, %if.then.100
  store i32 0, i32* %retval
  br label %return

if.end.105:                                       ; preds = %lor.lhs.false.96
  %81 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value106 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %81, i32 0, i32 9
  %82 = load %struct.rtx_def*, %struct.rtx_def** %final_value106, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %bf.load107 = load i32, i32* %83, align 8
  %bf.lshr = lshr i32 %bf.load107, 16
  %bf.clear108 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear108 to i64
  %arrayidx109 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %84 = load i32, i32* %arrayidx109, align 4
  %cmp110 = icmp eq i32 %84, 2
  br i1 %cmp110, label %if.then.119, label %lor.lhs.false.111

lor.lhs.false.111:                                ; preds = %if.end.105
  %85 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %initial_value112 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %85, i32 0, i32 7
  %86 = load %struct.rtx_def*, %struct.rtx_def** %initial_value112, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load113 = load i32, i32* %87, align 8
  %bf.lshr114 = lshr i32 %bf.load113, 16
  %bf.clear115 = and i32 %bf.lshr114, 255
  %idxprom116 = sext i32 %bf.clear115 to i64
  %arrayidx117 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom116
  %88 = load i32, i32* %arrayidx117, align 4
  %cmp118 = icmp eq i32 %88, 2
  br i1 %cmp118, label %if.then.119, label %if.end.124

if.then.119:                                      ; preds = %lor.lhs.false.111, %if.end.105
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool120 = icmp ne %struct._IO_FILE* %89, null
  br i1 %tobool120, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %if.then.119
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %90, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i32 0, i32 0))
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %if.then.119
  store i32 0, i32* %retval
  br label %return

if.end.124:                                       ; preds = %lor.lhs.false.111
  %91 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %iteration_var125 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %91, i32 0, i32 12
  %92 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var125, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtuint128 = bitcast %union.rtunion_def* %arrayidx127 to i32*
  %93 = load i32, i32* %rtuint128, align 4
  %idxprom129 = zext i32 %93 to i64
  %94 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %94, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx130 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom129
  %95 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx130, align 8
  %first_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %95, i32 0, i32 0
  %96 = load i32, i32* %first_uid, align 4
  %idxprom131 = sext i32 %96 to i64
  %97 = load i32*, i32** @uid_luid, align 8
  %arrayidx132 = getelementptr inbounds i32, i32* %97, i64 %idxprom131
  %98 = load i32, i32* %arrayidx132, align 4
  %99 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx134 to i32*
  %100 = load i32, i32* %rtint, align 4
  %101 = load i32, i32* @max_uid_for_loop, align 4
  %cmp135 = icmp slt i32 %100, %101
  br i1 %cmp135, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.124
  %102 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 0
  %rtint138 = bitcast %union.rtunion_def* %arrayidx137 to i32*
  %103 = load i32, i32* %rtint138, align 4
  %idxprom139 = sext i32 %103 to i64
  %104 = load i32*, i32** @uid_luid, align 8
  %arrayidx140 = getelementptr inbounds i32, i32* %104, i64 %idxprom139
  %105 = load i32, i32* %arrayidx140, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.124
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 1512, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.precondition_loop_p, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %106, %cond.true
  %cond = phi i32 [ %105, %cond.true ], [ -1, %106 ]
  %cmp141 = icmp sgt i32 %98, %cond
  br i1 %cmp141, label %if.then.142, label %if.end.147

if.then.142:                                      ; preds = %cond.end
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool143 = icmp ne %struct._IO_FILE* %107, null
  br i1 %tobool143, label %if.then.144, label %if.end.146

if.then.144:                                      ; preds = %if.then.142
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.28, i32 0, i32 0))
  br label %if.end.146

if.end.146:                                       ; preds = %if.then.144, %if.then.142
  store i32 0, i32* %retval
  br label %return

if.end.147:                                       ; preds = %cond.end
  %109 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %initial_value148 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %109, i32 0, i32 7
  %110 = load %struct.rtx_def*, %struct.rtx_def** %initial_value148, align 8
  %111 = load %struct.rtx_def**, %struct.rtx_def*** %initial_value.addr, align 8
  store %struct.rtx_def* %110, %struct.rtx_def** %111, align 8
  %112 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment149 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %112, i32 0, i32 13
  %113 = load %struct.rtx_def*, %struct.rtx_def** %increment149, align 8
  %114 = load %struct.rtx_def**, %struct.rtx_def*** %increment.addr, align 8
  store %struct.rtx_def* %113, %struct.rtx_def** %114, align 8
  %115 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value150 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %115, i32 0, i32 9
  %116 = load %struct.rtx_def*, %struct.rtx_def** %final_value150, align 8
  %117 = load %struct.rtx_def**, %struct.rtx_def*** %final_value.addr, align 8
  store %struct.rtx_def* %116, %struct.rtx_def** %117, align 8
  %118 = load %struct.rtx_def**, %struct.rtx_def*** %final_value.addr, align 8
  %119 = load %struct.rtx_def*, %struct.rtx_def** %118, align 8
  %120 = bitcast %struct.rtx_def* %119 to i32*
  %bf.load151 = load i32, i32* %120, align 8
  %bf.lshr152 = lshr i32 %bf.load151, 16
  %bf.clear153 = and i32 %bf.lshr152, 255
  %121 = load i32*, i32** %mode.addr, align 8
  store i32 %bf.clear153, i32* %121, align 4
  %122 = load i32*, i32** %mode.addr, align 8
  %123 = load i32, i32* %122, align 4
  %cmp154 = icmp eq i32 %123, 0
  br i1 %cmp154, label %if.then.155, label %if.else.162

if.then.155:                                      ; preds = %if.end.147
  %124 = load %struct.rtx_def**, %struct.rtx_def*** %initial_value.addr, align 8
  %125 = load %struct.rtx_def*, %struct.rtx_def** %124, align 8
  %126 = bitcast %struct.rtx_def* %125 to i32*
  %bf.load156 = load i32, i32* %126, align 8
  %bf.lshr157 = lshr i32 %bf.load156, 16
  %bf.clear158 = and i32 %bf.lshr157, 255
  %127 = load i32*, i32** %mode.addr, align 8
  store i32 %bf.clear158, i32* %127, align 4
  %128 = load i32*, i32** %mode.addr, align 8
  %129 = load i32, i32* %128, align 4
  %cmp159 = icmp eq i32 %129, 0
  br i1 %cmp159, label %if.then.160, label %if.end.161

if.then.160:                                      ; preds = %if.then.155
  %130 = load i32, i32* @word_mode, align 4
  %131 = load i32*, i32** %mode.addr, align 8
  store i32 %130, i32* %131, align 4
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %if.then.155
  br label %if.end.183

if.else.162:                                      ; preds = %if.end.147
  %132 = load i32*, i32** %mode.addr, align 8
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.rtx_def**, %struct.rtx_def*** %initial_value.addr, align 8
  %135 = load %struct.rtx_def*, %struct.rtx_def** %134, align 8
  %136 = bitcast %struct.rtx_def* %135 to i32*
  %bf.load163 = load i32, i32* %136, align 8
  %bf.lshr164 = lshr i32 %bf.load163, 16
  %bf.clear165 = and i32 %bf.lshr164, 255
  %cmp166 = icmp ne i32 %133, %bf.clear165
  br i1 %cmp166, label %land.lhs.true.167, label %if.end.182

land.lhs.true.167:                                ; preds = %if.else.162
  %137 = load i32*, i32** %mode.addr, align 8
  %138 = load i32, i32* %137, align 4
  %idxprom168 = sext i32 %138 to i64
  %arrayidx169 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom168
  %139 = load i8, i8* %arrayidx169, align 1
  %conv = zext i8 %139 to i32
  %140 = load %struct.rtx_def**, %struct.rtx_def*** %initial_value.addr, align 8
  %141 = load %struct.rtx_def*, %struct.rtx_def** %140, align 8
  %142 = bitcast %struct.rtx_def* %141 to i32*
  %bf.load170 = load i32, i32* %142, align 8
  %bf.lshr171 = lshr i32 %bf.load170, 16
  %bf.clear172 = and i32 %bf.lshr171, 255
  %idxprom173 = sext i32 %bf.clear172 to i64
  %arrayidx174 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom173
  %143 = load i8, i8* %arrayidx174, align 1
  %conv175 = zext i8 %143 to i32
  %cmp176 = icmp slt i32 %conv, %conv175
  br i1 %cmp176, label %if.then.178, label %if.end.182

if.then.178:                                      ; preds = %land.lhs.true.167
  %144 = load %struct.rtx_def**, %struct.rtx_def*** %initial_value.addr, align 8
  %145 = load %struct.rtx_def*, %struct.rtx_def** %144, align 8
  %146 = bitcast %struct.rtx_def* %145 to i32*
  %bf.load179 = load i32, i32* %146, align 8
  %bf.lshr180 = lshr i32 %bf.load179, 16
  %bf.clear181 = and i32 %bf.lshr180, 255
  %147 = load i32*, i32** %mode.addr, align 8
  store i32 %bf.clear181, i32* %147, align 4
  br label %if.end.182

if.end.182:                                       ; preds = %if.then.178, %land.lhs.true.167, %if.else.162
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.end.161
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool184 = icmp ne %struct._IO_FILE* %148, null
  br i1 %tobool184, label %if.then.185, label %if.end.187

if.then.185:                                      ; preds = %if.end.183
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call186 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.185, %if.end.183
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.187, %if.end.146, %if.end.123, %if.end.104, %if.end.73, %if.end.61, %if.end.43, %if.end.35, %if.end.27, %if.end.19, %if.end.12
  %150 = load i32, i32* %retval
  ret i32 %150
}

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @init_reg_map(%struct.inline_remap* %map, i32 %maxregnum) #0 {
entry:
  %map.addr = alloca %struct.inline_remap*, align 8
  %maxregnum.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  store i32 %maxregnum, i32* %maxregnum.addr, align 4
  %0 = load i32, i32* %maxregnum.addr, align 4
  %sub = sub nsw i32 %0, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %1, 57
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 3
  %4 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %4, i32 0, i32 12
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %5, i64 %idxprom
  %6 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %8, i32 0, i32 4
  %9 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %arrayidx2 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %9, i64 %idxprom1
  store %struct.rtx_def* %6, %struct.rtx_def** %arrayidx2, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 57, i32* %i, align 4
  br label %for.cond.3

for.cond.3:                                       ; preds = %for.inc.9, %for.end
  %11 = load i32, i32* %i, align 4
  %cmp4 = icmp sge i32 %11, 0
  br i1 %cmp4, label %for.body.5, label %for.end.11

for.body.5:                                       ; preds = %for.cond.3
  %12 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map7 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %13, i32 0, i32 4
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map7, align 8
  %arrayidx8 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %14, i64 %idxprom6
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx8, align 8
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.body.5
  %15 = load i32, i32* %i, align 4
  %dec10 = add nsw i32 %15, -1
  store i32 %dec10, i32* %i, align 4
  br label %for.cond.3

for.end.11:                                       ; preds = %for.cond.3
  %16 = load %struct.function*, %struct.function** @cfun, align 8
  %emit12 = getelementptr inbounds %struct.function, %struct.function* %16, i32 0, i32 3
  %17 = load %struct.emit_status*, %struct.emit_status** %emit12, align 8
  %x_regno_reg_rtx13 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %17, i32 0, i32 12
  %18 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx13, align 8
  %arrayidx14 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %18, i64 54
  %19 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx14, align 8
  %20 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map15 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %20, i32 0, i32 4
  %21 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map15, align 8
  %arrayidx16 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %21, i64 54
  store %struct.rtx_def* %19, %struct.rtx_def** %arrayidx16, align 8
  %22 = load %struct.function*, %struct.function** @cfun, align 8
  %emit17 = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 3
  %23 = load %struct.emit_status*, %struct.emit_status** %emit17, align 8
  %x_regno_reg_rtx18 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %23, i32 0, i32 12
  %24 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx18, align 8
  %arrayidx19 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %24, i64 53
  %25 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx19, align 8
  %26 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map20 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %26, i32 0, i32 4
  %27 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map20, align 8
  %arrayidx21 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %27, i64 53
  store %struct.rtx_def* %25, %struct.rtx_def** %arrayidx21, align 8
  ret void
}

declare void @start_sequence() #1

declare %struct.rtx_def* @expand_simple_binop(i32, i32, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare i32 @nonmemory_operand(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @force_reg(i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @expand_simple_unop(i32, i32, %struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare void @emit_cmp_and_jump_insns(%struct.rtx_def*, %struct.rtx_def*, i32, %struct.rtx_def*, i32, i32, %struct.rtx_def*) #1

declare void @predict_insn_def(%struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @get_last_insn() #1

declare void @predict_insn(%struct.rtx_def*, i32, i32) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @end_sequence() #1

declare %struct.rtx_def* @loop_insn_hoist(%struct.loop*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_label_after(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare void @record_base_value(i32, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @copy_loop_body(%struct.loop* %loop, %struct.rtx_def* %copy_start, %struct.rtx_def* %copy_end, %struct.inline_remap* %map, %struct.rtx_def* %exit_label, i32 %last_iteration, i32 %unroll_type, %struct.rtx_def* %start_label, %struct.rtx_def* %loop_end, %struct.rtx_def* %insert_before, %struct.rtx_def* %copy_notes_from) #0 {
entry:
  %loop.addr = alloca %struct.loop*, align 8
  %copy_start.addr = alloca %struct.rtx_def*, align 8
  %copy_end.addr = alloca %struct.rtx_def*, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %exit_label.addr = alloca %struct.rtx_def*, align 8
  %last_iteration.addr = alloca i32, align 4
  %unroll_type.addr = alloca i32, align 4
  %start_label.addr = alloca %struct.rtx_def*, align 8
  %loop_end.addr = alloca %struct.rtx_def*, align 8
  %insert_before.addr = alloca %struct.rtx_def*, align 8
  %copy_notes_from.addr = alloca %struct.rtx_def*, align 8
  %ivs = alloca %struct.loop_ivs*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %pattern = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %copy = alloca %struct.rtx_def*, align 8
  %dest_reg_was_split = alloca i32, align 4
  %i = alloca i32, align 4
  %final_label = alloca %struct.rtx_def*, align 8
  %giv_inc = alloca %struct.rtx_def*, align 8
  %giv_dest_reg = alloca %struct.rtx_def*, align 8
  %giv_src_reg = alloca %struct.rtx_def*, align 8
  %bl = alloca %struct.iv_class*, align 8
  %v = alloca %struct.induction*, align 8
  %tv = alloca %struct.induction*, align 8
  %regno = alloca i32, align 4
  %this_giv_inc = alloca i32, align 4
  %value = alloca %struct.rtx_def*, align 8
  %dest_reg116 = alloca %struct.rtx_def*, align 8
  %regno208 = alloca i32, align 4
  %src_regno = alloca i32, align 4
  %regno333 = alloca i32, align 4
  %jmp = alloca %struct.rtx_def*, align 8
  %lab = alloca %struct.rtx_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  %pat = alloca %struct.rtx_def*, align 8
  %diff_vec_p = alloca i32, align 4
  %len = alloca i32, align 4
  %i560 = alloca i32, align 4
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.rtx_def* %copy_start, %struct.rtx_def** %copy_start.addr, align 8
  store %struct.rtx_def* %copy_end, %struct.rtx_def** %copy_end.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  store %struct.rtx_def* %exit_label, %struct.rtx_def** %exit_label.addr, align 8
  store i32 %last_iteration, i32* %last_iteration.addr, align 4
  store i32 %unroll_type, i32* %unroll_type.addr, align 4
  store %struct.rtx_def* %start_label, %struct.rtx_def** %start_label.addr, align 8
  store %struct.rtx_def* %loop_end, %struct.rtx_def** %loop_end.addr, align 8
  store %struct.rtx_def* %insert_before, %struct.rtx_def** %insert_before.addr, align 8
  store %struct.rtx_def* %copy_notes_from, %struct.rtx_def** %copy_notes_from.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 22
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.loop_info*
  %ivs1 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %2, i32 0, i32 29
  store %struct.loop_ivs* %ivs1, %struct.loop_ivs** %ivs, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %final_label, align 8
  %3 = load i32, i32* %last_iteration.addr, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call, %struct.rtx_def** %final_label, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %final_label, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %start_label.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %6 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %label_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %7, i32 0, i32 5
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %label_map, align 8
  %arrayidx2 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %8, i64 %idxprom
  store %struct.rtx_def* %4, %struct.rtx_def** %arrayidx2, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %start_label.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %start_label.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 5
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %11 = load i32, i32* %rtint5, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %label_map7 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %12, i32 0, i32 5
  %13 = load %struct.rtx_def**, %struct.rtx_def*** %label_map7, align 8
  %arrayidx8 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %13, i64 %idxprom6
  store %struct.rtx_def* %9, %struct.rtx_def** %arrayidx8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @start_sequence()
  %call9 = call %struct.rtx_def* @emit_note(i8* null, i32 -99)
  %14 = load %struct.rtx_def*, %struct.rtx_def** %copy_start.addr, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %insn, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %insn, align 8
  %17 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %orig_asm_operands_vector = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %17, i32 0, i32 12
  store %struct.rtvec_def* null, %struct.rtvec_def** %orig_asm_operands_vector, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load = load i32, i32* %19, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 32, label %sw.bb
    i32 33, label %sw.bb.358
    i32 34, label %sw.bb.600
    i32 36, label %sw.bb.638
    i32 35, label %sw.bb.650
    i32 37, label %sw.bb.652
  ]

sw.bb:                                            ; preds = %do.body
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %pattern, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %giv_inc, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load15 = load i32, i32* %23, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %idxprom17 = sext i32 %bf.clear16 to i64
  %arrayidx18 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom17
  %24 = load i8, i8* %arrayidx18, align 1
  %conv = sext i8 %24 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %cond.true, label %cond.false.35

cond.true:                                        ; preds = %sw.bb
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load23 = load i32, i32* %27, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 47
  br i1 %cmp25, label %cond.true.27, label %cond.false

cond.true.27:                                     ; preds = %cond.true
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 3
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 3
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %call34 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %30, %struct.rtx_def* %32)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.27
  %cond = phi %struct.rtx_def* [ %29, %cond.true.27 ], [ %call34, %cond.false ]
  br label %cond.end.36

cond.false.35:                                    ; preds = %sw.bb
  br label %cond.end.36

cond.end.36:                                      ; preds = %cond.false.35, %cond.end
  %cond37 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.35 ]
  store %struct.rtx_def* %cond37, %struct.rtx_def** %set, align 8
  %tobool38 = icmp ne %struct.rtx_def* %cond37, null
  br i1 %tobool38, label %land.lhs.true, label %if.end.158

land.lhs.true:                                    ; preds = %cond.end.36
  %33 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld39 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx40 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld39, i32 0, i64 0
  %rtx41 = bitcast %union.rtunion_def* %arrayidx40 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx41, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load42 = load i32, i32* %35, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 61
  br i1 %cmp44, label %land.lhs.true.46, label %if.end.158

land.lhs.true.46:                                 ; preds = %land.lhs.true
  %36 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx51 to i32*
  %38 = load i32, i32* %rtuint, align 4
  %idxprom52 = zext i32 %38 to i64
  %39 = load %struct.induction**, %struct.induction*** @addr_combined_regs, align 8
  %arrayidx53 = getelementptr inbounds %struct.induction*, %struct.induction** %39, i64 %idxprom52
  %40 = load %struct.induction*, %struct.induction** %arrayidx53, align 8
  %tobool54 = icmp ne %struct.induction* %40, null
  br i1 %tobool54, label %if.then.55, label %if.end.158

if.then.55:                                       ; preds = %land.lhs.true.46
  %41 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtuint61 = bitcast %union.rtunion_def* %arrayidx60 to i32*
  %43 = load i32, i32* %rtuint61, align 4
  store i32 %43, i32* %regno, align 4
  %44 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx64, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtuint67 = bitcast %union.rtunion_def* %arrayidx66 to i32*
  %46 = load i32, i32* %rtuint67, align 4
  %idxprom68 = zext i32 %46 to i64
  %47 = load %struct.induction**, %struct.induction*** @addr_combined_regs, align 8
  %arrayidx69 = getelementptr inbounds %struct.induction*, %struct.induction** %47, i64 %idxprom68
  %48 = load %struct.induction*, %struct.induction** %arrayidx69, align 8
  store %struct.induction* %48, %struct.induction** %v, align 8
  %49 = load %struct.induction*, %struct.induction** %v, align 8
  %src_reg = getelementptr inbounds %struct.induction, %struct.induction* %49, i32 0, i32 2
  %50 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtuint72 = bitcast %union.rtunion_def* %arrayidx71 to i32*
  %51 = load i32, i32* %rtuint72, align 4
  %idxprom73 = zext i32 %51 to i64
  %52 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %52, i32 0, i32 0
  %53 = load %struct.iv*, %struct.iv** %regs, align 8
  %arrayidx74 = getelementptr inbounds %struct.iv, %struct.iv* %53, i64 %idxprom73
  %iv = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx74, i32 0, i32 1
  %class = bitcast %union.anon* %iv to %struct.iv_class**
  %54 = load %struct.iv_class*, %struct.iv_class** %class, align 8
  store %struct.iv_class* %54, %struct.iv_class** %bl, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %57 = load i32, i32* %regno, align 4
  %call75 = call %struct.rtx_def* @calculate_giv_inc(%struct.rtx_def* %55, %struct.rtx_def* %56, i32 %57)
  store %struct.rtx_def* %call75, %struct.rtx_def** %giv_inc, align 8
  %58 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %giv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %58, i32 0, i32 4
  %59 = load %struct.induction*, %struct.induction** %giv, align 8
  store %struct.induction* %59, %struct.induction** %tv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.55
  %60 = load %struct.induction*, %struct.induction** %tv, align 8
  %tobool76 = icmp ne %struct.induction* %60, null
  br i1 %tobool76, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %61 = load %struct.induction*, %struct.induction** %tv, align 8
  %giv_type = getelementptr inbounds %struct.induction, %struct.induction* %61, i32 0, i32 3
  %62 = load i32, i32* %giv_type, align 4
  %cmp77 = icmp eq i32 %62, 0
  br i1 %cmp77, label %land.lhs.true.79, label %if.end.157

land.lhs.true.79:                                 ; preds = %for.body
  %63 = load %struct.induction*, %struct.induction** %tv, align 8
  %same = getelementptr inbounds %struct.induction, %struct.induction* %63, i32 0, i32 18
  %64 = load %struct.induction*, %struct.induction** %same, align 8
  %65 = load %struct.induction*, %struct.induction** %v, align 8
  %cmp80 = icmp eq %struct.induction* %64, %65
  br i1 %cmp80, label %if.then.82, label %if.end.157

if.then.82:                                       ; preds = %land.lhs.true.79
  %66 = load %struct.induction*, %struct.induction** %tv, align 8
  %location = getelementptr inbounds %struct.induction, %struct.induction* %66, i32 0, i32 5
  %67 = load %struct.rtx_def**, %struct.rtx_def*** %location, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %67, align 8
  %69 = load %struct.induction*, %struct.induction** %tv, align 8
  %dest_reg = getelementptr inbounds %struct.induction, %struct.induction* %69, i32 0, i32 4
  %70 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg, align 8
  %cmp83 = icmp ne %struct.rtx_def* %68, %70
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.82
  br label %for.inc

if.end.86:                                        ; preds = %if.then.82
  %71 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx88 to i64*
  %72 = load i64, i64* %rtwint, align 8
  %conv89 = trunc i64 %72 to i32
  store i32 %conv89, i32* %this_giv_inc, align 4
  %73 = load %struct.induction*, %struct.induction** %tv, align 8
  %mult_val = getelementptr inbounds %struct.induction, %struct.induction* %73, i32 0, i32 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %mult_val, align 8
  %75 = load %struct.induction*, %struct.induction** %v, align 8
  %mult_val90 = getelementptr inbounds %struct.induction, %struct.induction* %75, i32 0, i32 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %mult_val90, align 8
  %cmp91 = icmp ne %struct.rtx_def* %74, %76
  br i1 %cmp91, label %if.then.93, label %if.end.104

if.then.93:                                       ; preds = %if.end.86
  %77 = load i32, i32* %this_giv_inc, align 4
  %conv94 = sext i32 %77 to i64
  %78 = load %struct.induction*, %struct.induction** %v, align 8
  %mult_val95 = getelementptr inbounds %struct.induction, %struct.induction* %78, i32 0, i32 8
  %79 = load %struct.rtx_def*, %struct.rtx_def** %mult_val95, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtwint98 = bitcast %union.rtunion_def* %arrayidx97 to i64*
  %80 = load i64, i64* %rtwint98, align 8
  %div = sdiv i64 %conv94, %80
  %81 = load %struct.induction*, %struct.induction** %tv, align 8
  %mult_val99 = getelementptr inbounds %struct.induction, %struct.induction* %81, i32 0, i32 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %mult_val99, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 0
  %rtwint102 = bitcast %union.rtunion_def* %arrayidx101 to i64*
  %83 = load i64, i64* %rtwint102, align 8
  %mul = mul nsw i64 %div, %83
  %conv103 = trunc i64 %mul to i32
  store i32 %conv103, i32* %this_giv_inc, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.then.93, %if.end.86
  %84 = load %struct.induction*, %struct.induction** %tv, align 8
  %dest_reg105 = getelementptr inbounds %struct.induction, %struct.induction* %84, i32 0, i32 4
  %85 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg105, align 8
  %86 = load i32, i32* %this_giv_inc, align 4
  %conv106 = sext i32 %86 to i64
  %call107 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %85, i64 %conv106)
  %87 = load %struct.induction*, %struct.induction** %tv, align 8
  %dest_reg108 = getelementptr inbounds %struct.induction, %struct.induction* %87, i32 0, i32 4
  store %struct.rtx_def* %call107, %struct.rtx_def** %dest_reg108, align 8
  %88 = load %struct.induction*, %struct.induction** %tv, align 8
  %dest_reg109 = getelementptr inbounds %struct.induction, %struct.induction* %88, i32 0, i32 4
  %89 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg109, align 8
  %90 = load %struct.induction*, %struct.induction** %tv, align 8
  %location110 = getelementptr inbounds %struct.induction, %struct.induction* %90, i32 0, i32 5
  %91 = load %struct.rtx_def**, %struct.rtx_def*** %location110, align 8
  store %struct.rtx_def* %89, %struct.rtx_def** %91, align 8
  %92 = load i32, i32* %last_iteration.addr, align 4
  %tobool111 = icmp ne i32 %92, 0
  br i1 %tobool111, label %land.lhs.true.112, label %if.end.156

land.lhs.true.112:                                ; preds = %if.end.104
  %93 = load i32, i32* %unroll_type.addr, align 4
  %cmp113 = icmp ne i32 %93, 0
  br i1 %cmp113, label %if.then.115, label %if.end.156

if.then.115:                                      ; preds = %land.lhs.true.112
  %94 = load %struct.induction*, %struct.induction** %tv, align 8
  %dest_reg117 = getelementptr inbounds %struct.induction, %struct.induction* %94, i32 0, i32 4
  %95 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg117, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %bf.load118 = load i32, i32* %96, align 8
  %bf.clear119 = and i32 %bf.load118, 65535
  %cmp120 = icmp eq i32 %bf.clear119, 61
  br i1 %cmp120, label %if.then.122, label %if.else.124

if.then.122:                                      ; preds = %if.then.115
  %97 = load %struct.induction*, %struct.induction** %tv, align 8
  %dest_reg123 = getelementptr inbounds %struct.induction, %struct.induction* %97, i32 0, i32 4
  %98 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg123, align 8
  store %struct.rtx_def* %98, %struct.rtx_def** %dest_reg116, align 8
  br label %if.end.129

if.else.124:                                      ; preds = %if.then.115
  %99 = load %struct.induction*, %struct.induction** %tv, align 8
  %dest_reg125 = getelementptr inbounds %struct.induction, %struct.induction* %99, i32 0, i32 4
  %100 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg125, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtx128 = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx128, align 8
  store %struct.rtx_def* %101, %struct.rtx_def** %dest_reg116, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.124, %if.then.122
  %102 = load %struct.induction*, %struct.induction** %tv, align 8
  %same_insn = getelementptr inbounds %struct.induction, %struct.induction* %102, i32 0, i32 20
  %103 = load %struct.induction*, %struct.induction** %same_insn, align 8
  %tobool130 = icmp ne %struct.induction* %103, null
  br i1 %tobool130, label %if.end.150, label %land.lhs.true.131

land.lhs.true.131:                                ; preds = %if.end.129
  %104 = load %struct.induction*, %struct.induction** %tv, align 8
  %shared = getelementptr inbounds %struct.induction, %struct.induction* %104, i32 0, i32 13
  %bf.load132 = load i16, i16* %shared, align 4
  %bf.lshr = lshr i16 %bf.load132, 10
  %bf.clear133 = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear133 to i32
  %tobool134 = icmp ne i32 %bf.cast, 0
  br i1 %tobool134, label %if.end.150, label %if.then.135

if.then.135:                                      ; preds = %land.lhs.true.131
  %105 = load %struct.induction*, %struct.induction** %tv, align 8
  %dest_reg136 = getelementptr inbounds %struct.induction, %struct.induction* %105, i32 0, i32 4
  %106 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg136, align 8
  %107 = load %struct.induction*, %struct.induction** %tv, align 8
  %const_adjust = getelementptr inbounds %struct.induction, %struct.induction* %107, i32 0, i32 19
  %108 = load i64, i64* %const_adjust, align 8
  %call137 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %106, i64 %108)
  store %struct.rtx_def* %call137, %struct.rtx_def** %value, align 8
  %109 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %110 = bitcast %struct.rtx_def* %109 to i32*
  %bf.load138 = load i32, i32* %110, align 8
  %bf.clear139 = and i32 %bf.load138, 65535
  %cmp140 = icmp eq i32 %bf.clear139, 75
  br i1 %cmp140, label %if.then.142, label %if.end.149

if.then.142:                                      ; preds = %if.then.135
  %111 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg116, align 8
  %112 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 0
  %rtx145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtx_def**
  %113 = load %struct.rtx_def*, %struct.rtx_def** %rtx145, align 8
  %114 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 1
  %rtx148 = bitcast %union.rtunion_def* %arrayidx147 to %struct.rtx_def**
  %115 = load %struct.rtx_def*, %struct.rtx_def** %rtx148, align 8
  call void @emit_unrolled_add(%struct.rtx_def* %111, %struct.rtx_def* %113, %struct.rtx_def* %115)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.142, %if.then.135
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %land.lhs.true.131, %if.end.129
  %116 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg116, align 8
  %117 = load %struct.induction*, %struct.induction** %tv, align 8
  %const_adjust151 = getelementptr inbounds %struct.induction, %struct.induction* %117, i32 0, i32 19
  %118 = load i64, i64* %const_adjust151, align 8
  %sub = sub nsw i64 0, %118
  %call152 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %116, i64 %sub)
  %119 = load %struct.induction*, %struct.induction** %tv, align 8
  %dest_reg153 = getelementptr inbounds %struct.induction, %struct.induction* %119, i32 0, i32 4
  store %struct.rtx_def* %call152, %struct.rtx_def** %dest_reg153, align 8
  %120 = load %struct.induction*, %struct.induction** %tv, align 8
  %dest_reg154 = getelementptr inbounds %struct.induction, %struct.induction* %120, i32 0, i32 4
  %121 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg154, align 8
  %122 = load %struct.induction*, %struct.induction** %tv, align 8
  %location155 = getelementptr inbounds %struct.induction, %struct.induction* %122, i32 0, i32 5
  %123 = load %struct.rtx_def**, %struct.rtx_def*** %location155, align 8
  store %struct.rtx_def* %121, %struct.rtx_def** %123, align 8
  br label %if.end.156

if.end.156:                                       ; preds = %if.end.150, %land.lhs.true.112, %if.end.104
  br label %if.end.157

if.end.157:                                       ; preds = %if.end.156, %land.lhs.true.79, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.157, %if.then.85
  %124 = load %struct.induction*, %struct.induction** %tv, align 8
  %next_iv = getelementptr inbounds %struct.induction, %struct.induction* %124, i32 0, i32 17
  %125 = load %struct.induction*, %struct.induction** %next_iv, align 8
  store %struct.induction* %125, %struct.induction** %tv, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.158

if.end.158:                                       ; preds = %for.end, %land.lhs.true.46, %land.lhs.true, %cond.end.36
  store i32 0, i32* %dest_reg_was_split, align 4
  %126 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %127 = bitcast %struct.rtx_def* %126 to i32*
  %bf.load159 = load i32, i32* %127, align 8
  %bf.clear160 = and i32 %bf.load159, 65535
  %idxprom161 = sext i32 %bf.clear160 to i64
  %arrayidx162 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom161
  %128 = load i8, i8* %arrayidx162, align 1
  %conv163 = sext i8 %128 to i32
  %cmp164 = icmp eq i32 %conv163, 105
  br i1 %cmp164, label %cond.true.166, label %cond.false.185

cond.true.166:                                    ; preds = %if.end.158
  %129 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 3
  %rtx169 = bitcast %union.rtunion_def* %arrayidx168 to %struct.rtx_def**
  %130 = load %struct.rtx_def*, %struct.rtx_def** %rtx169, align 8
  %131 = bitcast %struct.rtx_def* %130 to i32*
  %bf.load170 = load i32, i32* %131, align 8
  %bf.clear171 = and i32 %bf.load170, 65535
  %cmp172 = icmp eq i32 %bf.clear171, 47
  br i1 %cmp172, label %cond.true.174, label %cond.false.178

cond.true.174:                                    ; preds = %cond.true.166
  %132 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 3
  %rtx177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtx_def**
  %133 = load %struct.rtx_def*, %struct.rtx_def** %rtx177, align 8
  br label %cond.end.183

cond.false.178:                                   ; preds = %cond.true.166
  %134 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %135 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i32 0, i64 3
  %rtx181 = bitcast %union.rtunion_def* %arrayidx180 to %struct.rtx_def**
  %136 = load %struct.rtx_def*, %struct.rtx_def** %rtx181, align 8
  %call182 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %134, %struct.rtx_def* %136)
  br label %cond.end.183

cond.end.183:                                     ; preds = %cond.false.178, %cond.true.174
  %cond184 = phi %struct.rtx_def* [ %133, %cond.true.174 ], [ %call182, %cond.false.178 ]
  br label %cond.end.186

cond.false.185:                                   ; preds = %if.end.158
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.185, %cond.end.183
  %cond187 = phi %struct.rtx_def* [ %cond184, %cond.end.183 ], [ null, %cond.false.185 ]
  store %struct.rtx_def* %cond187, %struct.rtx_def** %set, align 8
  %tobool188 = icmp ne %struct.rtx_def* %cond187, null
  br i1 %tobool188, label %land.lhs.true.189, label %if.else.320

land.lhs.true.189:                                ; preds = %cond.end.186
  %137 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld190 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx191 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld190, i32 0, i64 0
  %rtx192 = bitcast %union.rtunion_def* %arrayidx191 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx192, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %bf.load193 = load i32, i32* %139, align 8
  %bf.clear194 = and i32 %bf.load193, 65535
  %cmp195 = icmp eq i32 %bf.clear194, 61
  br i1 %cmp195, label %land.lhs.true.197, label %if.else.320

land.lhs.true.197:                                ; preds = %land.lhs.true.189
  %140 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 0
  %rtx200 = bitcast %union.rtunion_def* %arrayidx199 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx200, align 8
  %fld201 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx202 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld201, i32 0, i64 0
  %rtuint203 = bitcast %union.rtunion_def* %arrayidx202 to i32*
  %142 = load i32, i32* %rtuint203, align 4
  %idxprom204 = zext i32 %142 to i64
  %143 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx205 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %143, i64 %idxprom204
  %144 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx205, align 8
  %tobool206 = icmp ne %struct.rtx_def* %144, null
  br i1 %tobool206, label %if.then.207, label %if.else.320

if.then.207:                                      ; preds = %land.lhs.true.197
  %145 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld209 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %145, i32 0, i32 1
  %arrayidx210 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld209, i32 0, i64 0
  %rtx211 = bitcast %union.rtunion_def* %arrayidx210 to %struct.rtx_def**
  %146 = load %struct.rtx_def*, %struct.rtx_def** %rtx211, align 8
  %fld212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %146, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld212, i32 0, i64 0
  %rtuint214 = bitcast %union.rtunion_def* %arrayidx213 to i32*
  %147 = load i32, i32* %rtuint214, align 4
  store i32 %147, i32* %regno208, align 4
  store i32 1, i32* %dest_reg_was_split, align 4
  %148 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 0
  %rtx217 = bitcast %union.rtunion_def* %arrayidx216 to %struct.rtx_def**
  %149 = load %struct.rtx_def*, %struct.rtx_def** %rtx217, align 8
  store %struct.rtx_def* %149, %struct.rtx_def** %giv_dest_reg, align 8
  %150 = load %struct.rtx_def*, %struct.rtx_def** %giv_dest_reg, align 8
  store %struct.rtx_def* %150, %struct.rtx_def** %giv_src_reg, align 8
  %151 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %cmp218 = icmp eq %struct.rtx_def* %151, null
  br i1 %cmp218, label %if.then.220, label %if.end.222

if.then.220:                                      ; preds = %if.then.207
  %152 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %153 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %154 = load i32, i32* %regno208, align 4
  %call221 = call %struct.rtx_def* @calculate_giv_inc(%struct.rtx_def* %152, %struct.rtx_def* %153, i32 %154)
  store %struct.rtx_def* %call221, %struct.rtx_def** %giv_inc, align 8
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.220, %if.then.207
  %155 = load %struct.rtx_def*, %struct.rtx_def** %giv_src_reg, align 8
  %fld223 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %155, i32 0, i32 1
  %arrayidx224 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld223, i32 0, i64 0
  %rtuint225 = bitcast %union.rtunion_def* %arrayidx224 to i32*
  %156 = load i32, i32* %rtuint225, align 4
  store i32 %156, i32* %src_regno, align 4
  %157 = load i32, i32* %unroll_type.addr, align 4
  %cmp226 = icmp eq i32 %157, 0
  br i1 %cmp226, label %if.then.228, label %if.else.258

if.then.228:                                      ; preds = %if.end.222
  %158 = load i32, i32* %src_regno, align 4
  %idxprom229 = zext i32 %158 to i64
  %159 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx230 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %159, i64 %idxprom229
  %160 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx230, align 8
  %161 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtwint233 = bitcast %union.rtunion_def* %arrayidx232 to i64*
  %162 = load i64, i64* %rtwint233, align 8
  %call234 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %160, i64 %162)
  %163 = load i32, i32* %regno208, align 4
  %idxprom235 = zext i32 %163 to i64
  %164 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx236 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %164, i64 %idxprom235
  store %struct.rtx_def* %call234, %struct.rtx_def** %arrayidx236, align 8
  %165 = load i32, i32* %regno208, align 4
  %idxprom237 = zext i32 %165 to i64
  %166 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx238 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %166, i64 %idxprom237
  %167 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx238, align 8
  %168 = bitcast %struct.rtx_def* %167 to i32*
  %bf.load239 = load i32, i32* %168, align 8
  %bf.clear240 = and i32 %bf.load239, 65535
  %cmp241 = icmp eq i32 %bf.clear240, 75
  br i1 %cmp241, label %if.then.243, label %if.else.254

if.then.243:                                      ; preds = %if.then.228
  %169 = load i32, i32* %regno208, align 4
  %idxprom244 = zext i32 %169 to i64
  %170 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx245 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %170, i64 %idxprom244
  %171 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx245, align 8
  %fld246 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %171, i32 0, i32 1
  %arrayidx247 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld246, i32 0, i64 0
  %rtx248 = bitcast %union.rtunion_def* %arrayidx247 to %struct.rtx_def**
  %172 = load %struct.rtx_def*, %struct.rtx_def** %rtx248, align 8
  store %struct.rtx_def* %172, %struct.rtx_def** %giv_src_reg, align 8
  %173 = load i32, i32* %regno208, align 4
  %idxprom249 = zext i32 %173 to i64
  %174 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx250 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %174, i64 %idxprom249
  %175 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx250, align 8
  %fld251 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %175, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld251, i32 0, i64 1
  %rtx253 = bitcast %union.rtunion_def* %arrayidx252 to %struct.rtx_def**
  %176 = load %struct.rtx_def*, %struct.rtx_def** %rtx253, align 8
  store %struct.rtx_def* %176, %struct.rtx_def** %giv_inc, align 8
  br label %if.end.257

if.else.254:                                      ; preds = %if.then.228
  %177 = load i32, i32* %regno208, align 4
  %idxprom255 = zext i32 %177 to i64
  %178 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx256 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %178, i64 %idxprom255
  %179 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx256, align 8
  store %struct.rtx_def* %179, %struct.rtx_def** %giv_src_reg, align 8
  %180 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %180, %struct.rtx_def** %giv_inc, align 8
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.254, %if.then.243
  br label %if.end.315

if.else.258:                                      ; preds = %if.end.222
  %181 = load i32, i32* %regno208, align 4
  %182 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %n_regs = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %182, i32 0, i32 1
  %183 = load i32, i32* %n_regs, align 4
  %cmp259 = icmp ult i32 %181, %183
  br i1 %cmp259, label %land.lhs.true.261, label %if.end.274

land.lhs.true.261:                                ; preds = %if.else.258
  %184 = load i32, i32* %regno208, align 4
  %idxprom262 = zext i32 %184 to i64
  %185 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs263 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %185, i32 0, i32 0
  %186 = load %struct.iv*, %struct.iv** %regs263, align 8
  %arrayidx264 = getelementptr inbounds %struct.iv, %struct.iv* %186, i64 %idxprom262
  %type = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx264, i32 0, i32 0
  %187 = load i32, i32* %type, align 4
  %cmp265 = icmp eq i32 %187, 1
  br i1 %cmp265, label %if.then.267, label %if.end.274

if.then.267:                                      ; preds = %land.lhs.true.261
  %188 = load i32, i32* %regno208, align 4
  %idxprom268 = zext i32 %188 to i64
  %189 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs269 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %189, i32 0, i32 0
  %190 = load %struct.iv*, %struct.iv** %regs269, align 8
  %arrayidx270 = getelementptr inbounds %struct.iv, %struct.iv* %190, i64 %idxprom268
  %iv271 = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx270, i32 0, i32 1
  %class272 = bitcast %union.anon* %iv271 to %struct.iv_class**
  %191 = load %struct.iv_class*, %struct.iv_class** %class272, align 8
  %biv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %191, i32 0, i32 2
  %192 = load %struct.induction*, %struct.induction** %biv, align 8
  %src_reg273 = getelementptr inbounds %struct.induction, %struct.induction* %192, i32 0, i32 2
  %193 = load %struct.rtx_def*, %struct.rtx_def** %src_reg273, align 8
  store %struct.rtx_def* %193, %struct.rtx_def** %giv_src_reg, align 8
  %194 = load %struct.rtx_def*, %struct.rtx_def** %giv_src_reg, align 8
  store %struct.rtx_def* %194, %struct.rtx_def** %giv_dest_reg, align 8
  br label %if.end.274

if.end.274:                                       ; preds = %if.then.267, %land.lhs.true.261, %if.else.258
  %195 = load %struct.rtx_def*, %struct.rtx_def** %giv_src_reg, align 8
  %196 = bitcast %struct.rtx_def* %195 to i32*
  %bf.load275 = load i32, i32* %196, align 8
  %bf.lshr276 = lshr i32 %bf.load275, 16
  %bf.clear277 = and i32 %bf.lshr276, 255
  %197 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %198 = load i32, i32* %src_regno, align 4
  %idxprom278 = zext i32 %198 to i64
  %199 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx279 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %199, i64 %idxprom278
  %200 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx279, align 8
  %call280 = call %struct.rtx_def* @simplify_gen_binary(i32 75, i32 %bf.clear277, %struct.rtx_def* %197, %struct.rtx_def* %200)
  %201 = load i32, i32* %regno208, align 4
  %idxprom281 = zext i32 %201 to i64
  %202 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx282 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %202, i64 %idxprom281
  store %struct.rtx_def* %call280, %struct.rtx_def** %arrayidx282, align 8
  %203 = load i32, i32* %regno208, align 4
  %idxprom283 = zext i32 %203 to i64
  %204 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx284 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %204, i64 %idxprom283
  %205 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx284, align 8
  store %struct.rtx_def* %205, %struct.rtx_def** %giv_inc, align 8
  %206 = load i32, i32* %last_iteration.addr, align 4
  %tobool285 = icmp ne i32 %206, 0
  br i1 %tobool285, label %lor.lhs.false, label %if.then.290

lor.lhs.false:                                    ; preds = %if.end.274
  %207 = load i32, i32* %regno208, align 4
  %idxprom286 = zext i32 %207 to i64
  %208 = load i32*, i32** @splittable_regs_updates, align 8
  %arrayidx287 = getelementptr inbounds i32, i32* %208, i64 %idxprom286
  %209 = load i32, i32* %arrayidx287, align 4
  %dec = add nsw i32 %209, -1
  store i32 %dec, i32* %arrayidx287, align 4
  %cmp288 = icmp ne i32 %209, 1
  br i1 %cmp288, label %if.then.290, label %if.else.310

if.then.290:                                      ; preds = %lor.lhs.false, %if.end.274
  %210 = load %struct.rtx_def*, %struct.rtx_def** %giv_src_reg, align 8
  %211 = bitcast %struct.rtx_def* %210 to i32*
  %bf.load291 = load i32, i32* %211, align 8
  %bf.lshr292 = lshr i32 %bf.load291, 16
  %bf.clear293 = and i32 %bf.lshr292, 255
  %call294 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear293)
  store %struct.rtx_def* %call294, %struct.rtx_def** %tem, align 8
  %212 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %212, %struct.rtx_def** %giv_dest_reg, align 8
  %213 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %214 = load i32, i32* %regno208, align 4
  %idxprom295 = zext i32 %214 to i64
  %215 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %215, i32 0, i32 4
  %216 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map, align 8
  %arrayidx296 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %216, i64 %idxprom295
  store %struct.rtx_def* %213, %struct.rtx_def** %arrayidx296, align 8
  %217 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld297 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %217, i32 0, i32 1
  %arrayidx298 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld297, i32 0, i64 0
  %rtuint299 = bitcast %union.rtunion_def* %arrayidx298 to i32*
  %218 = load i32, i32* %rtuint299, align 4
  %219 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %220 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp300 = icmp eq %struct.rtx_def* %219, %220
  br i1 %cmp300, label %cond.true.302, label %cond.false.303

cond.true.302:                                    ; preds = %if.then.290
  %221 = load %struct.rtx_def*, %struct.rtx_def** %giv_src_reg, align 8
  br label %cond.end.308

cond.false.303:                                   ; preds = %if.then.290
  %222 = load %struct.rtx_def*, %struct.rtx_def** %giv_src_reg, align 8
  %223 = bitcast %struct.rtx_def* %222 to i32*
  %bf.load304 = load i32, i32* %223, align 8
  %bf.lshr305 = lshr i32 %bf.load304, 16
  %bf.clear306 = and i32 %bf.lshr305, 255
  %224 = load %struct.rtx_def*, %struct.rtx_def** %giv_src_reg, align 8
  %225 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %call307 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %bf.clear306, %struct.rtx_def* %224, %struct.rtx_def* %225)
  br label %cond.end.308

cond.end.308:                                     ; preds = %cond.false.303, %cond.true.302
  %cond309 = phi %struct.rtx_def* [ %221, %cond.true.302 ], [ %call307, %cond.false.303 ]
  call void @record_base_value(i32 %218, %struct.rtx_def* %cond309, i32 1)
  br label %if.end.314

if.else.310:                                      ; preds = %lor.lhs.false
  %226 = load %struct.rtx_def*, %struct.rtx_def** %giv_src_reg, align 8
  %227 = load i32, i32* %regno208, align 4
  %idxprom311 = zext i32 %227 to i64
  %228 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %reg_map312 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %228, i32 0, i32 4
  %229 = load %struct.rtx_def**, %struct.rtx_def*** %reg_map312, align 8
  %arrayidx313 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %229, i64 %idxprom311
  store %struct.rtx_def* %226, %struct.rtx_def** %arrayidx313, align 8
  br label %if.end.314

if.end.314:                                       ; preds = %if.else.310, %cond.end.308
  br label %if.end.315

if.end.315:                                       ; preds = %if.end.314, %if.end.257
  %230 = load %struct.rtx_def*, %struct.rtx_def** %giv_dest_reg, align 8
  %231 = load %struct.rtx_def*, %struct.rtx_def** %giv_src_reg, align 8
  %232 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  call void @emit_unrolled_add(%struct.rtx_def* %230, %struct.rtx_def* %231, %struct.rtx_def* %232)
  %call316 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call316, %struct.rtx_def** %copy, align 8
  %233 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %233, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld317, i32 0, i64 3
  %rtx319 = bitcast %union.rtunion_def* %arrayidx318 to %struct.rtx_def**
  %234 = load %struct.rtx_def*, %struct.rtx_def** %rtx319, align 8
  store %struct.rtx_def* %234, %struct.rtx_def** %pattern, align 8
  br label %if.end.323

if.else.320:                                      ; preds = %land.lhs.true.197, %land.lhs.true.189, %cond.end.186
  %235 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %236 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call321 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %235, %struct.inline_remap* %236, i32 0)
  store %struct.rtx_def* %call321, %struct.rtx_def** %pattern, align 8
  %237 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %call322 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %237)
  store %struct.rtx_def* %call322, %struct.rtx_def** %copy, align 8
  br label %if.end.323

if.end.323:                                       ; preds = %if.else.320, %if.end.315
  %238 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld324 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %238, i32 0, i32 1
  %arrayidx325 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld324, i32 0, i64 6
  %rtx326 = bitcast %union.rtunion_def* %arrayidx325 to %struct.rtx_def**
  %239 = load %struct.rtx_def*, %struct.rtx_def** %rtx326, align 8
  %240 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call327 = call %struct.rtx_def* @initial_reg_note_copy(%struct.rtx_def* %239, %struct.inline_remap* %240)
  %241 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld328 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %241, i32 0, i32 1
  %arrayidx329 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld328, i32 0, i64 6
  %rtx330 = bitcast %union.rtunion_def* %arrayidx329 to %struct.rtx_def**
  store %struct.rtx_def* %call327, %struct.rtx_def** %rtx330, align 8
  %242 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %243 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @try_constants(%struct.rtx_def* %242, %struct.inline_remap* %243)
  %244 = load i32, i32* %dest_reg_was_split, align 4
  %tobool331 = icmp ne i32 %244, 0
  br i1 %tobool331, label %if.then.332, label %if.end.357

if.then.332:                                      ; preds = %if.end.323
  %245 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld334 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %245, i32 0, i32 1
  %arrayidx335 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld334, i32 0, i64 0
  %rtx336 = bitcast %union.rtunion_def* %arrayidx335 to %struct.rtx_def**
  %246 = load %struct.rtx_def*, %struct.rtx_def** %rtx336, align 8
  %fld337 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %246, i32 0, i32 1
  %arrayidx338 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld337, i32 0, i64 0
  %rtuint339 = bitcast %union.rtunion_def* %arrayidx338 to i32*
  %247 = load i32, i32* %rtuint339, align 4
  store i32 %247, i32* %regno333, align 4
  %248 = load i32, i32* %regno333, align 4
  %conv340 = sext i32 %248 to i64
  %249 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %249, i32 0, i32 9
  %250 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %250, i32 0, i32 0
  %251 = load i64, i64* %num_elements, align 8
  %cmp341 = icmp ult i64 %conv340, %251
  br i1 %cmp341, label %land.lhs.true.343, label %if.end.356

land.lhs.true.343:                                ; preds = %if.then.332
  %252 = load i32, i32* %regno333, align 4
  %idxprom344 = sext i32 %252 to i64
  %253 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray345 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %253, i32 0, i32 9
  %254 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray345, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %254, i32 0, i32 4
  %const_equiv = bitcast %union.varray_data_tag* %data to [1 x %struct.const_equiv_data]*
  %arrayidx346 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv, i32 0, i64 %idxprom344
  %age = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %arrayidx346, i32 0, i32 1
  %255 = load i32, i32* %age, align 4
  %256 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_age = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %256, i32 0, i32 10
  %257 = load i32, i32* %const_age, align 4
  %cmp347 = icmp eq i32 %255, %257
  br i1 %cmp347, label %if.then.349, label %if.end.356

if.then.349:                                      ; preds = %land.lhs.true.343
  %258 = load i32, i32* %regno333, align 4
  %idxprom350 = sext i32 %258 to i64
  %259 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray351 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %259, i32 0, i32 9
  %260 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray351, align 8
  %data352 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %260, i32 0, i32 4
  %const_equiv353 = bitcast %union.varray_data_tag* %data352 to [1 x %struct.const_equiv_data]*
  %arrayidx354 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv353, i32 0, i64 %idxprom350
  %age355 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %arrayidx354, i32 0, i32 1
  store i32 -1, i32* %age355, align 4
  br label %if.end.356

if.end.356:                                       ; preds = %if.then.349, %land.lhs.true.343, %if.then.332
  br label %if.end.357

if.end.357:                                       ; preds = %if.end.356, %if.end.323
  br label %sw.epilog

sw.bb.358:                                        ; preds = %do.body
  %261 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld359 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %261, i32 0, i32 1
  %arrayidx360 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld359, i32 0, i64 3
  %rtx361 = bitcast %union.rtunion_def* %arrayidx360 to %struct.rtx_def**
  %262 = load %struct.rtx_def*, %struct.rtx_def** %rtx361, align 8
  %263 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call362 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %262, %struct.inline_remap* %263, i32 0)
  store %struct.rtx_def* %call362, %struct.rtx_def** %pattern, align 8
  %264 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %call363 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %264)
  store %struct.rtx_def* %call363, %struct.rtx_def** %copy, align 8
  %265 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld364 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %265, i32 0, i32 1
  %arrayidx365 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld364, i32 0, i64 6
  %rtx366 = bitcast %union.rtunion_def* %arrayidx365 to %struct.rtx_def**
  %266 = load %struct.rtx_def*, %struct.rtx_def** %rtx366, align 8
  %267 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call367 = call %struct.rtx_def* @initial_reg_note_copy(%struct.rtx_def* %266, %struct.inline_remap* %267)
  %268 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld368 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %268, i32 0, i32 1
  %arrayidx369 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld368, i32 0, i64 6
  %rtx370 = bitcast %union.rtunion_def* %arrayidx369 to %struct.rtx_def**
  store %struct.rtx_def* %call367, %struct.rtx_def** %rtx370, align 8
  %269 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld371 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %269, i32 0, i32 1
  %arrayidx372 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld371, i32 0, i64 7
  %rtx373 = bitcast %union.rtunion_def* %arrayidx372 to %struct.rtx_def**
  %270 = load %struct.rtx_def*, %struct.rtx_def** %rtx373, align 8
  %tobool374 = icmp ne %struct.rtx_def* %270, null
  br i1 %tobool374, label %if.then.375, label %if.end.392

if.then.375:                                      ; preds = %sw.bb.358
  %271 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %272 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld376 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %272, i32 0, i32 1
  %arrayidx377 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld376, i32 0, i64 7
  %rtx378 = bitcast %union.rtunion_def* %arrayidx377 to %struct.rtx_def**
  %273 = load %struct.rtx_def*, %struct.rtx_def** %rtx378, align 8
  %fld379 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %273, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld379, i32 0, i64 5
  %rtint381 = bitcast %union.rtunion_def* %arrayidx380 to i32*
  %274 = load i32, i32* %rtint381, align 4
  %call382 = call %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %271, i32 %274)
  %275 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld383 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %275, i32 0, i32 1
  %arrayidx384 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld383, i32 0, i64 7
  %rtx385 = bitcast %union.rtunion_def* %arrayidx384 to %struct.rtx_def**
  store %struct.rtx_def* %call382, %struct.rtx_def** %rtx385, align 8
  %276 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld386 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %276, i32 0, i32 1
  %arrayidx387 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld386, i32 0, i64 7
  %rtx388 = bitcast %union.rtunion_def* %arrayidx387 to %struct.rtx_def**
  %277 = load %struct.rtx_def*, %struct.rtx_def** %rtx388, align 8
  %fld389 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %277, i32 0, i32 1
  %arrayidx390 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld389, i32 0, i64 3
  %rtint391 = bitcast %union.rtunion_def* %arrayidx390 to i32*
  %278 = load i32, i32* %rtint391, align 4
  %inc = add nsw i32 %278, 1
  store i32 %inc, i32* %rtint391, align 4
  br label %if.end.392

if.end.392:                                       ; preds = %if.then.375, %sw.bb.358
  %279 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld393 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %279, i32 0, i32 1
  %arrayidx394 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld393, i32 0, i64 7
  %rtx395 = bitcast %union.rtunion_def* %arrayidx394 to %struct.rtx_def**
  %280 = load %struct.rtx_def*, %struct.rtx_def** %rtx395, align 8
  %281 = load %struct.rtx_def*, %struct.rtx_def** %start_label.addr, align 8
  %cmp396 = icmp eq %struct.rtx_def* %280, %281
  br i1 %cmp396, label %land.lhs.true.398, label %if.end.427

land.lhs.true.398:                                ; preds = %if.end.392
  %282 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %283 = load %struct.rtx_def*, %struct.rtx_def** %copy_end.addr, align 8
  %cmp399 = icmp eq %struct.rtx_def* %282, %283
  br i1 %cmp399, label %land.lhs.true.401, label %if.end.427

land.lhs.true.401:                                ; preds = %land.lhs.true.398
  %284 = load i32, i32* %last_iteration.addr, align 4
  %tobool402 = icmp ne i32 %284, 0
  br i1 %tobool402, label %if.end.427, label %if.then.403

if.then.403:                                      ; preds = %land.lhs.true.401
  %285 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %286 = load %struct.rtx_def*, %struct.rtx_def** %exit_label.addr, align 8
  %call404 = call i32 @invert_jump(%struct.rtx_def* %285, %struct.rtx_def* %286, i32 0)
  %tobool405 = icmp ne i32 %call404, 0
  br i1 %tobool405, label %if.end.426, label %if.then.406

if.then.406:                                      ; preds = %if.then.403
  %call407 = call %struct.rtx_def* @gen_label_rtx()
  store %struct.rtx_def* %call407, %struct.rtx_def** %lab, align 8
  %287 = load %struct.rtx_def*, %struct.rtx_def** %exit_label.addr, align 8
  %call408 = call %struct.rtx_def* @gen_jump(%struct.rtx_def* %287)
  %288 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %call409 = call %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def* %call408, %struct.rtx_def* %288)
  store %struct.rtx_def* %call409, %struct.rtx_def** %jmp, align 8
  %289 = load %struct.rtx_def*, %struct.rtx_def** %exit_label.addr, align 8
  %290 = load %struct.rtx_def*, %struct.rtx_def** %jmp, align 8
  %fld410 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %290, i32 0, i32 1
  %arrayidx411 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld410, i32 0, i64 7
  %rtx412 = bitcast %union.rtunion_def* %arrayidx411 to %struct.rtx_def**
  store %struct.rtx_def* %289, %struct.rtx_def** %rtx412, align 8
  %291 = load %struct.rtx_def*, %struct.rtx_def** %exit_label.addr, align 8
  %fld413 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %291, i32 0, i32 1
  %arrayidx414 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld413, i32 0, i64 3
  %rtint415 = bitcast %union.rtunion_def* %arrayidx414 to i32*
  %292 = load i32, i32* %rtint415, align 4
  %inc416 = add nsw i32 %292, 1
  store i32 %inc416, i32* %rtint415, align 4
  %293 = load %struct.rtx_def*, %struct.rtx_def** %jmp, align 8
  %call417 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %293)
  store %struct.rtx_def* %call417, %struct.rtx_def** %jmp, align 8
  %294 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %295 = load %struct.rtx_def*, %struct.rtx_def** %jmp, align 8
  %call418 = call %struct.rtx_def* @emit_label_after(%struct.rtx_def* %294, %struct.rtx_def* %295)
  %296 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %fld419 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %296, i32 0, i32 1
  %arrayidx420 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld419, i32 0, i64 3
  %rtint421 = bitcast %union.rtunion_def* %arrayidx420 to i32*
  store i32 0, i32* %rtint421, align 4
  %297 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %298 = load %struct.rtx_def*, %struct.rtx_def** %lab, align 8
  %call422 = call i32 @redirect_jump(%struct.rtx_def* %297, %struct.rtx_def* %298, i32 0)
  %tobool423 = icmp ne i32 %call422, 0
  br i1 %tobool423, label %if.end.425, label %if.then.424

if.then.424:                                      ; preds = %if.then.406
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 2134, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.copy_loop_body, i32 0, i32 0)) #5
  unreachable

if.end.425:                                       ; preds = %if.then.406
  br label %if.end.426

if.end.426:                                       ; preds = %if.end.425, %if.then.403
  br label %if.end.427

if.end.427:                                       ; preds = %if.end.426, %land.lhs.true.401, %land.lhs.true.398, %if.end.392
  %299 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %300 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @try_constants(%struct.rtx_def* %299, %struct.inline_remap* %300)
  %301 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld428 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %arrayidx429 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld428, i32 0, i64 7
  %rtx430 = bitcast %union.rtunion_def* %arrayidx429 to %struct.rtx_def**
  %302 = load %struct.rtx_def*, %struct.rtx_def** %rtx430, align 8
  %tobool431 = icmp ne %struct.rtx_def* %302, null
  br i1 %tobool431, label %if.then.432, label %if.else.533

if.then.432:                                      ; preds = %if.end.427
  store %struct.rtx_def* null, %struct.rtx_def** %label, align 8
  %303 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %304 = bitcast %struct.rtx_def* %303 to i32*
  %bf.load433 = load i32, i32* %304, align 8
  %bf.clear434 = and i32 %bf.load433, 65535
  %idxprom435 = sext i32 %bf.clear434 to i64
  %arrayidx436 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom435
  %305 = load i8, i8* %arrayidx436, align 1
  %conv437 = sext i8 %305 to i32
  %cmp438 = icmp eq i32 %conv437, 105
  br i1 %cmp438, label %cond.true.440, label %cond.false.459

cond.true.440:                                    ; preds = %if.then.432
  %306 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld441 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %306, i32 0, i32 1
  %arrayidx442 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld441, i32 0, i64 3
  %rtx443 = bitcast %union.rtunion_def* %arrayidx442 to %struct.rtx_def**
  %307 = load %struct.rtx_def*, %struct.rtx_def** %rtx443, align 8
  %308 = bitcast %struct.rtx_def* %307 to i32*
  %bf.load444 = load i32, i32* %308, align 8
  %bf.clear445 = and i32 %bf.load444, 65535
  %cmp446 = icmp eq i32 %bf.clear445, 47
  br i1 %cmp446, label %cond.true.448, label %cond.false.452

cond.true.448:                                    ; preds = %cond.true.440
  %309 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %309, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld449, i32 0, i64 3
  %rtx451 = bitcast %union.rtunion_def* %arrayidx450 to %struct.rtx_def**
  %310 = load %struct.rtx_def*, %struct.rtx_def** %rtx451, align 8
  br label %cond.end.457

cond.false.452:                                   ; preds = %cond.true.440
  %311 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %312 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld453 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %312, i32 0, i32 1
  %arrayidx454 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld453, i32 0, i64 3
  %rtx455 = bitcast %union.rtunion_def* %arrayidx454 to %struct.rtx_def**
  %313 = load %struct.rtx_def*, %struct.rtx_def** %rtx455, align 8
  %call456 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %311, %struct.rtx_def* %313)
  br label %cond.end.457

cond.end.457:                                     ; preds = %cond.false.452, %cond.true.448
  %cond458 = phi %struct.rtx_def* [ %310, %cond.true.448 ], [ %call456, %cond.false.452 ]
  br label %cond.end.460

cond.false.459:                                   ; preds = %if.then.432
  br label %cond.end.460

cond.end.460:                                     ; preds = %cond.false.459, %cond.end.457
  %cond461 = phi %struct.rtx_def* [ %cond458, %cond.end.457 ], [ null, %cond.false.459 ]
  store %struct.rtx_def* %cond461, %struct.rtx_def** %set, align 8
  %tobool462 = icmp ne %struct.rtx_def* %cond461, null
  br i1 %tobool462, label %if.then.463, label %if.end.503

if.then.463:                                      ; preds = %cond.end.460
  %314 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld464 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %314, i32 0, i32 1
  %arrayidx465 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld464, i32 0, i64 1
  %rtx466 = bitcast %union.rtunion_def* %arrayidx465 to %struct.rtx_def**
  %315 = load %struct.rtx_def*, %struct.rtx_def** %rtx466, align 8
  store %struct.rtx_def* %315, %struct.rtx_def** %tem, align 8
  %316 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %317 = bitcast %struct.rtx_def* %316 to i32*
  %bf.load467 = load i32, i32* %317, align 8
  %bf.clear468 = and i32 %bf.load467, 65535
  %cmp469 = icmp eq i32 %bf.clear468, 67
  br i1 %cmp469, label %if.then.471, label %if.else.475

if.then.471:                                      ; preds = %if.then.463
  %318 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld472 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %318, i32 0, i32 1
  %arrayidx473 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld472, i32 0, i64 0
  %rtx474 = bitcast %union.rtunion_def* %arrayidx473 to %struct.rtx_def**
  %319 = load %struct.rtx_def*, %struct.rtx_def** %rtx474, align 8
  store %struct.rtx_def* %319, %struct.rtx_def** %label, align 8
  br label %if.end.502

if.else.475:                                      ; preds = %if.then.463
  %320 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %321 = bitcast %struct.rtx_def* %320 to i32*
  %bf.load476 = load i32, i32* %321, align 8
  %bf.clear477 = and i32 %bf.load476, 65535
  %cmp478 = icmp eq i32 %bf.clear477, 72
  br i1 %cmp478, label %if.then.480, label %if.end.501

if.then.480:                                      ; preds = %if.else.475
  %322 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld481 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %322, i32 0, i32 1
  %arrayidx482 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld481, i32 0, i64 1
  %rtx483 = bitcast %union.rtunion_def* %arrayidx482 to %struct.rtx_def**
  %323 = load %struct.rtx_def*, %struct.rtx_def** %rtx483, align 8
  %324 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp484 = icmp ne %struct.rtx_def* %323, %324
  br i1 %cmp484, label %if.then.486, label %if.else.493

if.then.486:                                      ; preds = %if.then.480
  %325 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld487 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %325, i32 0, i32 1
  %arrayidx488 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld487, i32 0, i64 1
  %rtx489 = bitcast %union.rtunion_def* %arrayidx488 to %struct.rtx_def**
  %326 = load %struct.rtx_def*, %struct.rtx_def** %rtx489, align 8
  %fld490 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %326, i32 0, i32 1
  %arrayidx491 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld490, i32 0, i64 0
  %rtx492 = bitcast %union.rtunion_def* %arrayidx491 to %struct.rtx_def**
  %327 = load %struct.rtx_def*, %struct.rtx_def** %rtx492, align 8
  store %struct.rtx_def* %327, %struct.rtx_def** %label, align 8
  br label %if.end.500

if.else.493:                                      ; preds = %if.then.480
  %328 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld494 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %328, i32 0, i32 1
  %arrayidx495 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld494, i32 0, i64 2
  %rtx496 = bitcast %union.rtunion_def* %arrayidx495 to %struct.rtx_def**
  %329 = load %struct.rtx_def*, %struct.rtx_def** %rtx496, align 8
  %fld497 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %329, i32 0, i32 1
  %arrayidx498 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld497, i32 0, i64 0
  %rtx499 = bitcast %union.rtunion_def* %arrayidx498 to %struct.rtx_def**
  %330 = load %struct.rtx_def*, %struct.rtx_def** %rtx499, align 8
  store %struct.rtx_def* %330, %struct.rtx_def** %label, align 8
  br label %if.end.500

if.end.500:                                       ; preds = %if.else.493, %if.then.486
  br label %if.end.501

if.end.501:                                       ; preds = %if.end.500, %if.else.475
  br label %if.end.502

if.end.502:                                       ; preds = %if.end.501, %if.then.471
  br label %if.end.503

if.end.503:                                       ; preds = %if.end.502, %cond.end.460
  %331 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %tobool504 = icmp ne %struct.rtx_def* %331, null
  br i1 %tobool504, label %land.lhs.true.505, label %if.else.514

land.lhs.true.505:                                ; preds = %if.end.503
  %332 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %333 = bitcast %struct.rtx_def* %332 to i32*
  %bf.load506 = load i32, i32* %333, align 8
  %bf.clear507 = and i32 %bf.load506, 65535
  %cmp508 = icmp eq i32 %bf.clear507, 36
  br i1 %cmp508, label %if.then.510, label %if.else.514

if.then.510:                                      ; preds = %land.lhs.true.505
  %334 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %335 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld511 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %335, i32 0, i32 1
  %arrayidx512 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld511, i32 0, i64 7
  %rtx513 = bitcast %union.rtunion_def* %arrayidx512 to %struct.rtx_def**
  store %struct.rtx_def* %334, %struct.rtx_def** %rtx513, align 8
  br label %if.end.525

if.else.514:                                      ; preds = %land.lhs.true.505, %if.end.503
  %336 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %337 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld515 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %337, i32 0, i32 1
  %arrayidx516 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld515, i32 0, i64 7
  %rtx517 = bitcast %union.rtunion_def* %arrayidx516 to %struct.rtx_def**
  %338 = load %struct.rtx_def*, %struct.rtx_def** %rtx517, align 8
  %fld518 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %338, i32 0, i32 1
  %arrayidx519 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld518, i32 0, i64 5
  %rtint520 = bitcast %union.rtunion_def* %arrayidx519 to i32*
  %339 = load i32, i32* %rtint520, align 4
  %call521 = call %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %336, i32 %339)
  %340 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld522 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %340, i32 0, i32 1
  %arrayidx523 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld522, i32 0, i64 7
  %rtx524 = bitcast %union.rtunion_def* %arrayidx523 to %struct.rtx_def**
  store %struct.rtx_def* %call521, %struct.rtx_def** %rtx524, align 8
  br label %if.end.525

if.end.525:                                       ; preds = %if.else.514, %if.then.510
  %341 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld526 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %341, i32 0, i32 1
  %arrayidx527 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld526, i32 0, i64 7
  %rtx528 = bitcast %union.rtunion_def* %arrayidx527 to %struct.rtx_def**
  %342 = load %struct.rtx_def*, %struct.rtx_def** %rtx528, align 8
  %fld529 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %342, i32 0, i32 1
  %arrayidx530 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld529, i32 0, i64 3
  %rtint531 = bitcast %union.rtunion_def* %arrayidx530 to i32*
  %343 = load i32, i32* %rtint531, align 4
  %inc532 = add nsw i32 %343, 1
  store i32 %inc532, i32* %rtint531, align 4
  br label %if.end.582

if.else.533:                                      ; preds = %if.end.427
  %344 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld534 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %344, i32 0, i32 1
  %arrayidx535 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld534, i32 0, i64 3
  %rtx536 = bitcast %union.rtunion_def* %arrayidx535 to %struct.rtx_def**
  %345 = load %struct.rtx_def*, %struct.rtx_def** %rtx536, align 8
  %346 = bitcast %struct.rtx_def* %345 to i32*
  %bf.load537 = load i32, i32* %346, align 8
  %bf.clear538 = and i32 %bf.load537, 65535
  %cmp539 = icmp eq i32 %bf.clear538, 44
  br i1 %cmp539, label %if.then.549, label %lor.lhs.false.541

lor.lhs.false.541:                                ; preds = %if.else.533
  %347 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld542 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %347, i32 0, i32 1
  %arrayidx543 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld542, i32 0, i64 3
  %rtx544 = bitcast %union.rtunion_def* %arrayidx543 to %struct.rtx_def**
  %348 = load %struct.rtx_def*, %struct.rtx_def** %rtx544, align 8
  %349 = bitcast %struct.rtx_def* %348 to i32*
  %bf.load545 = load i32, i32* %349, align 8
  %bf.clear546 = and i32 %bf.load545, 65535
  %cmp547 = icmp eq i32 %bf.clear546, 45
  br i1 %cmp547, label %if.then.549, label %if.end.581

if.then.549:                                      ; preds = %lor.lhs.false.541, %if.else.533
  %350 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld550 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %350, i32 0, i32 1
  %arrayidx551 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld550, i32 0, i64 3
  %rtx552 = bitcast %union.rtunion_def* %arrayidx551 to %struct.rtx_def**
  %351 = load %struct.rtx_def*, %struct.rtx_def** %rtx552, align 8
  store %struct.rtx_def* %351, %struct.rtx_def** %pat, align 8
  %352 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %353 = bitcast %struct.rtx_def* %352 to i32*
  %bf.load553 = load i32, i32* %353, align 8
  %bf.clear554 = and i32 %bf.load553, 65535
  %cmp555 = icmp eq i32 %bf.clear554, 45
  %conv556 = zext i1 %cmp555 to i32
  store i32 %conv556, i32* %diff_vec_p, align 4
  %354 = load i32, i32* %diff_vec_p, align 4
  %idxprom557 = sext i32 %354 to i64
  %355 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld558 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %355, i32 0, i32 1
  %arrayidx559 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld558, i32 0, i64 %idxprom557
  %rtvec = bitcast %union.rtunion_def* %arrayidx559 to %struct.rtvec_def**
  %356 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %356, i32 0, i32 0
  %357 = load i32, i32* %num_elem, align 4
  store i32 %357, i32* %len, align 4
  store i32 0, i32* %i560, align 4
  br label %for.cond.561

for.cond.561:                                     ; preds = %for.inc.578, %if.then.549
  %358 = load i32, i32* %i560, align 4
  %359 = load i32, i32* %len, align 4
  %cmp562 = icmp slt i32 %358, %359
  br i1 %cmp562, label %for.body.564, label %for.end.580

for.body.564:                                     ; preds = %for.cond.561
  %360 = load i32, i32* %i560, align 4
  %idxprom565 = sext i32 %360 to i64
  %361 = load i32, i32* %diff_vec_p, align 4
  %idxprom566 = sext i32 %361 to i64
  %362 = load %struct.rtx_def*, %struct.rtx_def** %pat, align 8
  %fld567 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %362, i32 0, i32 1
  %arrayidx568 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld567, i32 0, i64 %idxprom566
  %rtvec569 = bitcast %union.rtunion_def* %arrayidx568 to %struct.rtvec_def**
  %363 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec569, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %363, i32 0, i32 1
  %arrayidx570 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom565
  %364 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx570, align 8
  %fld571 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %364, i32 0, i32 1
  %arrayidx572 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld571, i32 0, i64 0
  %rtx573 = bitcast %union.rtunion_def* %arrayidx572 to %struct.rtx_def**
  %365 = load %struct.rtx_def*, %struct.rtx_def** %rtx573, align 8
  %fld574 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %365, i32 0, i32 1
  %arrayidx575 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld574, i32 0, i64 3
  %rtint576 = bitcast %union.rtunion_def* %arrayidx575 to i32*
  %366 = load i32, i32* %rtint576, align 4
  %inc577 = add nsw i32 %366, 1
  store i32 %inc577, i32* %rtint576, align 4
  br label %for.inc.578

for.inc.578:                                      ; preds = %for.body.564
  %367 = load i32, i32* %i560, align 4
  %inc579 = add nsw i32 %367, 1
  store i32 %inc579, i32* %i560, align 4
  br label %for.cond.561

for.end.580:                                      ; preds = %for.cond.561
  br label %if.end.581

if.end.581:                                       ; preds = %for.end.580, %lor.lhs.false.541
  br label %if.end.582

if.end.582:                                       ; preds = %if.end.581, %if.end.525
  %368 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call583 = call i32 @any_condjump_p(%struct.rtx_def* %368)
  %tobool584 = icmp ne i32 %call583, 0
  br i1 %tobool584, label %land.lhs.true.585, label %if.end.599

land.lhs.true.585:                                ; preds = %if.end.582
  %369 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call586 = call i32 @onlyjump_p(%struct.rtx_def* %369)
  %tobool587 = icmp ne i32 %call586, 0
  br i1 %tobool587, label %land.lhs.true.588, label %if.end.599

land.lhs.true.588:                                ; preds = %land.lhs.true.585
  %370 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %last_pc_value = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %370, i32 0, i32 20
  %371 = load %struct.rtx_def*, %struct.rtx_def** %last_pc_value, align 8
  %tobool589 = icmp ne %struct.rtx_def* %371, null
  br i1 %tobool589, label %if.then.590, label %if.end.599

if.then.590:                                      ; preds = %land.lhs.true.588
  %372 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %last_pc_value591 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %372, i32 0, i32 20
  %373 = load %struct.rtx_def*, %struct.rtx_def** %last_pc_value591, align 8
  %374 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp592 = icmp eq %struct.rtx_def* %373, %374
  br i1 %cmp592, label %if.then.594, label %if.else.596

if.then.594:                                      ; preds = %if.then.590
  %375 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %call595 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %375)
  store %struct.rtx_def* null, %struct.rtx_def** %copy, align 8
  br label %if.end.598

if.else.596:                                      ; preds = %if.then.590
  %call597 = call %struct.rtx_def* @emit_barrier()
  br label %if.end.598

if.end.598:                                       ; preds = %if.else.596, %if.then.594
  br label %if.end.599

if.end.599:                                       ; preds = %if.end.598, %land.lhs.true.588, %land.lhs.true.585, %if.end.582
  br label %sw.epilog

sw.bb.600:                                        ; preds = %do.body
  %376 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld601 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %376, i32 0, i32 1
  %arrayidx602 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld601, i32 0, i64 3
  %rtx603 = bitcast %union.rtunion_def* %arrayidx602 to %struct.rtx_def**
  %377 = load %struct.rtx_def*, %struct.rtx_def** %rtx603, align 8
  %378 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call604 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %377, %struct.inline_remap* %378, i32 0)
  store %struct.rtx_def* %call604, %struct.rtx_def** %pattern, align 8
  %379 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %call605 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %379)
  store %struct.rtx_def* %call605, %struct.rtx_def** %copy, align 8
  %380 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld606 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %380, i32 0, i32 1
  %arrayidx607 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld606, i32 0, i64 6
  %rtx608 = bitcast %union.rtunion_def* %arrayidx607 to %struct.rtx_def**
  %381 = load %struct.rtx_def*, %struct.rtx_def** %rtx608, align 8
  %382 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call609 = call %struct.rtx_def* @initial_reg_note_copy(%struct.rtx_def* %381, %struct.inline_remap* %382)
  %383 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld610 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %383, i32 0, i32 1
  %arrayidx611 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld610, i32 0, i64 6
  %rtx612 = bitcast %union.rtunion_def* %arrayidx611 to %struct.rtx_def**
  store %struct.rtx_def* %call609, %struct.rtx_def** %rtx612, align 8
  %384 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %385 = bitcast %struct.rtx_def* %384 to i32*
  %bf.load613 = load i32, i32* %385, align 8
  %bf.lshr614 = lshr i32 %bf.load613, 24
  %bf.clear615 = and i32 %bf.lshr614, 1
  %386 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %387 = bitcast %struct.rtx_def* %386 to i32*
  %bf.load616 = load i32, i32* %387, align 8
  %bf.value = and i32 %bf.clear615, 1
  %bf.shl = shl i32 %bf.value, 24
  %bf.clear617 = and i32 %bf.load616, -16777217
  %bf.set = or i32 %bf.clear617, %bf.shl
  store i32 %bf.set, i32* %387, align 8
  %388 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld618 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %388, i32 0, i32 1
  %arrayidx619 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld618, i32 0, i64 7
  %rtx620 = bitcast %union.rtunion_def* %arrayidx619 to %struct.rtx_def**
  %389 = load %struct.rtx_def*, %struct.rtx_def** %rtx620, align 8
  %390 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call621 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %389, %struct.inline_remap* %390, i32 0)
  %391 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld622 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %391, i32 0, i32 1
  %arrayidx623 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld622, i32 0, i64 7
  %rtx624 = bitcast %union.rtunion_def* %arrayidx623 to %struct.rtx_def**
  store %struct.rtx_def* %call621, %struct.rtx_def** %rtx624, align 8
  %392 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %393 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @try_constants(%struct.rtx_def* %392, %struct.inline_remap* %393)
  store i32 0, i32* %i, align 4
  br label %for.cond.625

for.cond.625:                                     ; preds = %for.inc.635, %sw.bb.600
  %394 = load i32, i32* %i, align 4
  %cmp626 = icmp slt i32 %394, 53
  br i1 %cmp626, label %for.body.628, label %for.end.637

for.body.628:                                     ; preds = %for.cond.625
  %395 = load i32, i32* %i, align 4
  %idxprom629 = sext i32 %395 to i64
  %396 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_equiv_varray630 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %396, i32 0, i32 9
  %397 = load %struct.varray_head_tag*, %struct.varray_head_tag** %const_equiv_varray630, align 8
  %data631 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %397, i32 0, i32 4
  %const_equiv632 = bitcast %union.varray_data_tag* %data631 to [1 x %struct.const_equiv_data]*
  %arrayidx633 = getelementptr inbounds [1 x %struct.const_equiv_data], [1 x %struct.const_equiv_data]* %const_equiv632, i32 0, i64 %idxprom629
  %rtx634 = getelementptr inbounds %struct.const_equiv_data, %struct.const_equiv_data* %arrayidx633, i32 0, i32 0
  store %struct.rtx_def* null, %struct.rtx_def** %rtx634, align 8
  br label %for.inc.635

for.inc.635:                                      ; preds = %for.body.628
  %398 = load i32, i32* %i, align 4
  %inc636 = add nsw i32 %398, 1
  store i32 %inc636, i32* %i, align 4
  br label %for.cond.625

for.end.637:                                      ; preds = %for.cond.625
  br label %sw.epilog

sw.bb.638:                                        ; preds = %do.body
  %399 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %400 = load %struct.rtx_def*, %struct.rtx_def** %start_label.addr, align 8
  %cmp639 = icmp ne %struct.rtx_def* %399, %400
  br i1 %cmp639, label %if.then.641, label %if.end.649

if.then.641:                                      ; preds = %sw.bb.638
  %401 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %402 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld642 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %402, i32 0, i32 1
  %arrayidx643 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld642, i32 0, i64 5
  %rtint644 = bitcast %union.rtunion_def* %arrayidx643 to i32*
  %403 = load i32, i32* %rtint644, align 4
  %call645 = call %struct.rtx_def* @get_label_from_map(%struct.inline_remap* %401, i32 %403)
  %call646 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %call645)
  store %struct.rtx_def* %call646, %struct.rtx_def** %copy, align 8
  %404 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %const_age647 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %404, i32 0, i32 10
  %405 = load i32, i32* %const_age647, align 4
  %inc648 = add i32 %405, 1
  store i32 %inc648, i32* %const_age647, align 4
  br label %if.end.649

if.end.649:                                       ; preds = %if.then.641, %sw.bb.638
  br label %sw.epilog

sw.bb.650:                                        ; preds = %do.body
  %call651 = call %struct.rtx_def* @emit_barrier()
  store %struct.rtx_def* %call651, %struct.rtx_def** %copy, align 8
  br label %sw.epilog

sw.bb.652:                                        ; preds = %do.body
  %406 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld653 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %406, i32 0, i32 1
  %arrayidx654 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld653, i32 0, i64 4
  %rtint655 = bitcast %union.rtunion_def* %arrayidx654 to i32*
  %407 = load i32, i32* %rtint655, align 4
  %cmp656 = icmp ne i32 %407, -99
  br i1 %cmp656, label %land.lhs.true.658, label %if.else.694

land.lhs.true.658:                                ; preds = %sw.bb.652
  %408 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld659 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %408, i32 0, i32 1
  %arrayidx660 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld659, i32 0, i64 4
  %rtint661 = bitcast %union.rtunion_def* %arrayidx660 to i32*
  %409 = load i32, i32* %rtint661, align 4
  %cmp662 = icmp ne i32 %409, -88
  br i1 %cmp662, label %land.lhs.true.664, label %if.else.694

land.lhs.true.664:                                ; preds = %land.lhs.true.658
  %410 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld665 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %410, i32 0, i32 1
  %arrayidx666 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld665, i32 0, i64 4
  %rtint667 = bitcast %union.rtunion_def* %arrayidx666 to i32*
  %411 = load i32, i32* %rtint667, align 4
  %cmp668 = icmp ne i32 %411, -80
  br i1 %cmp668, label %land.lhs.true.670, label %if.else.694

land.lhs.true.670:                                ; preds = %land.lhs.true.664
  %412 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld671 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %412, i32 0, i32 1
  %arrayidx672 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld671, i32 0, i64 4
  %rtint673 = bitcast %union.rtunion_def* %arrayidx672 to i32*
  %413 = load i32, i32* %rtint673, align 4
  %cmp674 = icmp ne i32 %413, -93
  br i1 %cmp674, label %land.lhs.true.676, label %lor.lhs.false.682

land.lhs.true.676:                                ; preds = %land.lhs.true.670
  %414 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld677 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %414, i32 0, i32 1
  %arrayidx678 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld677, i32 0, i64 4
  %rtint679 = bitcast %union.rtunion_def* %arrayidx678 to i32*
  %415 = load i32, i32* %rtint679, align 4
  %cmp680 = icmp ne i32 %415, -94
  br i1 %cmp680, label %if.then.687, label %lor.lhs.false.682

lor.lhs.false.682:                                ; preds = %land.lhs.true.676, %land.lhs.true.670
  %416 = load i32, i32* %last_iteration.addr, align 4
  %tobool683 = icmp ne i32 %416, 0
  br i1 %tobool683, label %land.lhs.true.684, label %if.else.694

land.lhs.true.684:                                ; preds = %lor.lhs.false.682
  %417 = load i32, i32* %unroll_type.addr, align 4
  %cmp685 = icmp ne i32 %417, 0
  br i1 %cmp685, label %if.then.687, label %if.else.694

if.then.687:                                      ; preds = %land.lhs.true.684, %land.lhs.true.676
  %418 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld688 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %418, i32 0, i32 1
  %arrayidx689 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld688, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx689 to i8**
  %419 = load i8*, i8** %rtstr, align 8
  %420 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld690 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %420, i32 0, i32 1
  %arrayidx691 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld690, i32 0, i64 4
  %rtint692 = bitcast %union.rtunion_def* %arrayidx691 to i32*
  %421 = load i32, i32* %rtint692, align 4
  %call693 = call %struct.rtx_def* @emit_note(i8* %419, i32 %421)
  store %struct.rtx_def* %call693, %struct.rtx_def** %copy, align 8
  br label %if.end.695

if.else.694:                                      ; preds = %land.lhs.true.684, %lor.lhs.false.682, %land.lhs.true.664, %land.lhs.true.658, %sw.bb.652
  store %struct.rtx_def* null, %struct.rtx_def** %copy, align 8
  br label %if.end.695

if.end.695:                                       ; preds = %if.else.694, %if.then.687
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 2280, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.copy_loop_body, i32 0, i32 0)) #5
  unreachable

sw.epilog:                                        ; preds = %if.end.695, %sw.bb.650, %if.end.649, %for.end.637, %if.end.599, %if.end.357
  %422 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %423 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld696 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %423, i32 0, i32 1
  %arrayidx697 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld696, i32 0, i64 0
  %rtint698 = bitcast %union.rtunion_def* %arrayidx697 to i32*
  %424 = load i32, i32* %rtint698, align 4
  %idxprom699 = sext i32 %424 to i64
  %425 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %insn_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %425, i32 0, i32 6
  %426 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map, align 8
  %arrayidx700 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %426, i64 %idxprom699
  store %struct.rtx_def* %422, %struct.rtx_def** %arrayidx700, align 8
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %427 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %428 = load %struct.rtx_def*, %struct.rtx_def** %copy_end.addr, align 8
  %cmp701 = icmp ne %struct.rtx_def* %427, %428
  br i1 %cmp701, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %429 = load %struct.rtx_def*, %struct.rtx_def** %copy_start.addr, align 8
  store %struct.rtx_def* %429, %struct.rtx_def** %insn, align 8
  br label %do.body.703

do.body.703:                                      ; preds = %do.cond.740, %do.end
  %430 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld704 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %430, i32 0, i32 1
  %arrayidx705 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld704, i32 0, i64 2
  %rtx706 = bitcast %union.rtunion_def* %arrayidx705 to %struct.rtx_def**
  %431 = load %struct.rtx_def*, %struct.rtx_def** %rtx706, align 8
  store %struct.rtx_def* %431, %struct.rtx_def** %insn, align 8
  %432 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %433 = bitcast %struct.rtx_def* %432 to i32*
  %bf.load707 = load i32, i32* %433, align 8
  %bf.clear708 = and i32 %bf.load707, 65535
  %cmp709 = icmp eq i32 %bf.clear708, 32
  br i1 %cmp709, label %land.lhs.true.721, label %lor.lhs.false.711

lor.lhs.false.711:                                ; preds = %do.body.703
  %434 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %435 = bitcast %struct.rtx_def* %434 to i32*
  %bf.load712 = load i32, i32* %435, align 8
  %bf.clear713 = and i32 %bf.load712, 65535
  %cmp714 = icmp eq i32 %bf.clear713, 33
  br i1 %cmp714, label %land.lhs.true.721, label %lor.lhs.false.716

lor.lhs.false.716:                                ; preds = %lor.lhs.false.711
  %436 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %437 = bitcast %struct.rtx_def* %436 to i32*
  %bf.load717 = load i32, i32* %437, align 8
  %bf.clear718 = and i32 %bf.load717, 65535
  %cmp719 = icmp eq i32 %bf.clear718, 34
  br i1 %cmp719, label %land.lhs.true.721, label %if.end.739

land.lhs.true.721:                                ; preds = %lor.lhs.false.716, %lor.lhs.false.711, %do.body.703
  %438 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld722 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %438, i32 0, i32 1
  %arrayidx723 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld722, i32 0, i64 0
  %rtint724 = bitcast %union.rtunion_def* %arrayidx723 to i32*
  %439 = load i32, i32* %rtint724, align 4
  %idxprom725 = sext i32 %439 to i64
  %440 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %insn_map726 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %440, i32 0, i32 6
  %441 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map726, align 8
  %arrayidx727 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %441, i64 %idxprom725
  %442 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx727, align 8
  %tobool728 = icmp ne %struct.rtx_def* %442, null
  br i1 %tobool728, label %if.then.729, label %if.end.739

if.then.729:                                      ; preds = %land.lhs.true.721
  %443 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld730 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %443, i32 0, i32 1
  %arrayidx731 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld730, i32 0, i64 0
  %rtint732 = bitcast %union.rtunion_def* %arrayidx731 to i32*
  %444 = load i32, i32* %rtint732, align 4
  %idxprom733 = sext i32 %444 to i64
  %445 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %insn_map734 = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %445, i32 0, i32 6
  %446 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map734, align 8
  %arrayidx735 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %446, i64 %idxprom733
  %447 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx735, align 8
  %fld736 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %447, i32 0, i32 1
  %arrayidx737 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld736, i32 0, i64 6
  %rtx738 = bitcast %union.rtunion_def* %arrayidx737 to %struct.rtx_def**
  %448 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  call void @final_reg_note_copy(%struct.rtx_def** %rtx738, %struct.inline_remap* %448)
  br label %if.end.739

if.end.739:                                       ; preds = %if.then.729, %land.lhs.true.721, %lor.lhs.false.716
  br label %do.cond.740

do.cond.740:                                      ; preds = %if.end.739
  %449 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %450 = load %struct.rtx_def*, %struct.rtx_def** %copy_end.addr, align 8
  %cmp741 = icmp ne %struct.rtx_def* %449, %450
  br i1 %cmp741, label %do.body.703, label %do.end.743

do.end.743:                                       ; preds = %do.cond.740
  %451 = load i32, i32* %last_iteration.addr, align 4
  %tobool744 = icmp ne i32 %451, 0
  br i1 %tobool744, label %if.end.786, label %if.then.745

if.then.745:                                      ; preds = %do.end.743
  %452 = load %struct.rtx_def*, %struct.rtx_def** %copy_notes_from.addr, align 8
  store %struct.rtx_def* %452, %struct.rtx_def** %insn, align 8
  br label %for.cond.746

for.cond.746:                                     ; preds = %for.inc.781, %if.then.745
  %453 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %454 = load %struct.rtx_def*, %struct.rtx_def** %loop_end.addr, align 8
  %cmp747 = icmp ne %struct.rtx_def* %453, %454
  br i1 %cmp747, label %for.body.749, label %for.end.785

for.body.749:                                     ; preds = %for.cond.746
  %455 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %456 = bitcast %struct.rtx_def* %455 to i32*
  %bf.load750 = load i32, i32* %456, align 8
  %bf.clear751 = and i32 %bf.load750, 65535
  %cmp752 = icmp eq i32 %bf.clear751, 37
  br i1 %cmp752, label %land.lhs.true.754, label %if.end.780

land.lhs.true.754:                                ; preds = %for.body.749
  %457 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld755 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %457, i32 0, i32 1
  %arrayidx756 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld755, i32 0, i64 4
  %rtint757 = bitcast %union.rtunion_def* %arrayidx756 to i32*
  %458 = load i32, i32* %rtint757, align 4
  %cmp758 = icmp ne i32 %458, -99
  br i1 %cmp758, label %land.lhs.true.760, label %if.end.780

land.lhs.true.760:                                ; preds = %land.lhs.true.754
  %459 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld761 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %459, i32 0, i32 1
  %arrayidx762 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld761, i32 0, i64 4
  %rtint763 = bitcast %union.rtunion_def* %arrayidx762 to i32*
  %460 = load i32, i32* %rtint763, align 4
  %cmp764 = icmp ne i32 %460, -80
  br i1 %cmp764, label %land.lhs.true.766, label %if.end.780

land.lhs.true.766:                                ; preds = %land.lhs.true.760
  %461 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld767 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %461, i32 0, i32 1
  %arrayidx768 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld767, i32 0, i64 4
  %rtint769 = bitcast %union.rtunion_def* %arrayidx768 to i32*
  %462 = load i32, i32* %rtint769, align 4
  %cmp770 = icmp ne i32 %462, -93
  br i1 %cmp770, label %if.then.772, label %if.end.780

if.then.772:                                      ; preds = %land.lhs.true.766
  %463 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld773 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %463, i32 0, i32 1
  %arrayidx774 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld773, i32 0, i64 3
  %rtstr775 = bitcast %union.rtunion_def* %arrayidx774 to i8**
  %464 = load i8*, i8** %rtstr775, align 8
  %465 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld776 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %465, i32 0, i32 1
  %arrayidx777 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld776, i32 0, i64 4
  %rtint778 = bitcast %union.rtunion_def* %arrayidx777 to i32*
  %466 = load i32, i32* %rtint778, align 4
  %call779 = call %struct.rtx_def* @emit_note(i8* %464, i32 %466)
  br label %if.end.780

if.end.780:                                       ; preds = %if.then.772, %land.lhs.true.766, %land.lhs.true.760, %land.lhs.true.754, %for.body.749
  br label %for.inc.781

for.inc.781:                                      ; preds = %if.end.780
  %467 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld782 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %467, i32 0, i32 1
  %arrayidx783 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld782, i32 0, i64 2
  %rtx784 = bitcast %union.rtunion_def* %arrayidx783 to %struct.rtx_def**
  %468 = load %struct.rtx_def*, %struct.rtx_def** %rtx784, align 8
  store %struct.rtx_def* %468, %struct.rtx_def** %insn, align 8
  br label %for.cond.746

for.end.785:                                      ; preds = %for.cond.746
  br label %if.end.786

if.end.786:                                       ; preds = %for.end.785, %do.end.743
  %469 = load %struct.rtx_def*, %struct.rtx_def** %final_label, align 8
  %tobool787 = icmp ne %struct.rtx_def* %469, null
  br i1 %tobool787, label %land.lhs.true.788, label %if.end.796

land.lhs.true.788:                                ; preds = %if.end.786
  %470 = load %struct.rtx_def*, %struct.rtx_def** %final_label, align 8
  %fld789 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %470, i32 0, i32 1
  %arrayidx790 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld789, i32 0, i64 3
  %rtint791 = bitcast %union.rtunion_def* %arrayidx790 to i32*
  %471 = load i32, i32* %rtint791, align 4
  %cmp792 = icmp sgt i32 %471, 0
  br i1 %cmp792, label %if.then.794, label %if.end.796

if.then.794:                                      ; preds = %land.lhs.true.788
  %472 = load %struct.rtx_def*, %struct.rtx_def** %final_label, align 8
  %call795 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %472)
  br label %if.end.796

if.end.796:                                       ; preds = %if.then.794, %land.lhs.true.788, %if.end.786
  %call797 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call797, %struct.rtx_def** %tem, align 8
  call void @end_sequence()
  %473 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %474 = load %struct.rtx_def*, %struct.rtx_def** %insert_before.addr, align 8
  %475 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call798 = call %struct.rtx_def* @loop_insn_emit_before(%struct.loop* %473, %struct.basic_block_def* null, %struct.rtx_def* %474, %struct.rtx_def* %475)
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define internal i32 @find_splittable_regs(%struct.loop* %loop, i32 %unroll_type, i32 %unroll_number) #0 {
entry:
  %loop.addr = alloca %struct.loop*, align 8
  %unroll_type.addr = alloca i32, align 4
  %unroll_number.addr = alloca i32, align 4
  %ivs = alloca %struct.loop_ivs*, align 8
  %bl = alloca %struct.iv_class*, align 8
  %v = alloca %struct.induction*, align 8
  %increment = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %biv_final_value = alloca %struct.rtx_def*, align 8
  %biv_splittable = alloca i32, align 4
  %result = alloca i32, align 4
  %tem157 = alloca %struct.rtx_def*, align 8
  %tem210 = alloca %struct.rtx_def*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store i32 %unroll_type, i32* %unroll_type.addr, align 4
  store i32 %unroll_number, i32* %unroll_number.addr, align 4
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 22
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.loop_info*
  %ivs1 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %2, i32 0, i32 29
  store %struct.loop_ivs* %ivs1, %struct.loop_ivs** %ivs, align 8
  store i32 0, i32* %result, align 4
  %3 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %list = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %3, i32 0, i32 2
  %4 = load %struct.iv_class*, %struct.iv_class** %list, align 8
  store %struct.iv_class* %4, %struct.iv_class** %bl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.243, %entry
  %5 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %tobool = icmp ne %struct.iv_class* %5, null
  br i1 %tobool, label %for.body, label %for.end.244

for.body:                                         ; preds = %for.cond
  %6 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %call = call %struct.rtx_def* @biv_total_increment(%struct.iv_class* %6)
  store %struct.rtx_def* %call, %struct.rtx_def** %increment, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %tobool2 = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 54
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  br label %for.inc.243

if.end:                                           ; preds = %lor.lhs.false
  store i32 1, i32* %biv_splittable, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %biv_final_value, align 8
  %10 = load i32, i32* %unroll_type.addr, align 4
  %cmp3 = icmp ne i32 %10, 0
  br i1 %cmp3, label %land.lhs.true, label %if.end.60

land.lhs.true:                                    ; preds = %if.end
  %11 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_count = getelementptr inbounds %struct.loop, %struct.loop* %11, i32 0, i32 32
  %12 = load i32, i32* %exit_count, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %land.lhs.true.7, label %lor.lhs.false.5

lor.lhs.false.5:                                  ; preds = %land.lhs.true
  %13 = load i32, i32* %unroll_type.addr, align 4
  %cmp6 = icmp eq i32 %13, 2
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.60

land.lhs.true.7:                                  ; preds = %lor.lhs.false.5, %land.lhs.true
  %14 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno = getelementptr inbounds %struct.iv_class, %struct.iv_class* %14, i32 0, i32 0
  %15 = load i32, i32* %regno, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %16, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom
  %17 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx, align 8
  %last_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %17, i32 0, i32 1
  %18 = load i32, i32* %last_uid, align 4
  %idxprom8 = sext i32 %18 to i64
  %19 = load i32*, i32** @uid_luid, align 8
  %arrayidx9 = getelementptr inbounds i32, i32* %19, i64 %idxprom8
  %20 = load i32, i32* %arrayidx9, align 4
  %21 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 27
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx10 to i32*
  %23 = load i32, i32* %rtint, align 4
  %24 = load i32, i32* @max_uid_for_loop, align 4
  %cmp11 = icmp slt i32 %23, %24
  br i1 %cmp11, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.7
  %25 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end12 = getelementptr inbounds %struct.loop, %struct.loop* %25, i32 0, i32 27
  %26 = load %struct.rtx_def*, %struct.rtx_def** %end12, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %27 = load i32, i32* %rtint15, align 4
  %idxprom16 = sext i32 %27 to i64
  %28 = load i32*, i32** @uid_luid, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %28, i64 %idxprom16
  %29 = load i32, i32* %arrayidx17, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.7
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 2545, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.find_splittable_regs, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %30, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ -1, %30 ]
  %cmp18 = icmp sge i32 %20, %cond
  br i1 %cmp18, label %land.lhs.true.56, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %cond.end
  %31 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %init_insn = getelementptr inbounds %struct.iv_class, %struct.iv_class* %31, i32 0, i32 10
  %32 = load %struct.rtx_def*, %struct.rtx_def** %init_insn, align 8
  %tobool20 = icmp ne %struct.rtx_def* %32, null
  br i1 %tobool20, label %lor.lhs.false.21, label %land.lhs.true.56

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.19
  %33 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %init_insn22 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %33, i32 0, i32 10
  %34 = load %struct.rtx_def*, %struct.rtx_def** %init_insn22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 0
  %rtint25 = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %35 = load i32, i32* %rtint25, align 4
  %36 = load i32, i32* @max_uid_for_loop, align 4
  %cmp26 = icmp sge i32 %35, %36
  br i1 %cmp26, label %land.lhs.true.56, label %lor.lhs.false.27

lor.lhs.false.27:                                 ; preds = %lor.lhs.false.21
  %37 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno28 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %37, i32 0, i32 0
  %38 = load i32, i32* %regno28, align 4
  %idxprom29 = zext i32 %38 to i64
  %39 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data30 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %39, i32 0, i32 4
  %reg31 = bitcast %union.varray_data_tag* %data30 to [1 x %struct.reg_info_def*]*
  %arrayidx32 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg31, i32 0, i64 %idxprom29
  %40 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx32, align 8
  %first_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %40, i32 0, i32 0
  %41 = load i32, i32* %first_uid, align 4
  %idxprom33 = sext i32 %41 to i64
  %42 = load i32*, i32** @uid_luid, align 8
  %arrayidx34 = getelementptr inbounds i32, i32* %42, i64 %idxprom33
  %43 = load i32, i32* %arrayidx34, align 4
  %44 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %init_insn35 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %44, i32 0, i32 10
  %45 = load %struct.rtx_def*, %struct.rtx_def** %init_insn35, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtint38 = bitcast %union.rtunion_def* %arrayidx37 to i32*
  %46 = load i32, i32* %rtint38, align 4
  %47 = load i32, i32* @max_uid_for_loop, align 4
  %cmp39 = icmp slt i32 %46, %47
  br i1 %cmp39, label %cond.true.40, label %cond.false.47

cond.true.40:                                     ; preds = %lor.lhs.false.27
  %48 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %init_insn41 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %48, i32 0, i32 10
  %49 = load %struct.rtx_def*, %struct.rtx_def** %init_insn41, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtint44 = bitcast %union.rtunion_def* %arrayidx43 to i32*
  %50 = load i32, i32* %rtint44, align 4
  %idxprom45 = sext i32 %50 to i64
  %51 = load i32*, i32** @uid_luid, align 8
  %arrayidx46 = getelementptr inbounds i32, i32* %51, i64 %idxprom45
  %52 = load i32, i32* %arrayidx46, align 4
  br label %cond.end.48

cond.false.47:                                    ; preds = %lor.lhs.false.27
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 2549, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.find_splittable_regs, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.48

cond.end.48:                                      ; preds = %53, %cond.true.40
  %cond49 = phi i32 [ %52, %cond.true.40 ], [ -1, %53 ]
  %cmp50 = icmp slt i32 %43, %cond49
  br i1 %cmp50, label %land.lhs.true.56, label %lor.lhs.false.51

lor.lhs.false.51:                                 ; preds = %cond.end.48
  %54 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %54, i32 0, i32 2
  %55 = load %struct.induction*, %struct.induction** %biv, align 8
  %dest_reg = getelementptr inbounds %struct.induction, %struct.induction* %55, i32 0, i32 4
  %56 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg, align 8
  %57 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %init_set = getelementptr inbounds %struct.iv_class, %struct.iv_class* %57, i32 0, i32 11
  %58 = load %struct.rtx_def*, %struct.rtx_def** %init_set, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call54 = call i32 @reg_mentioned_p(%struct.rtx_def* %56, %struct.rtx_def* %59)
  %tobool55 = icmp ne i32 %call54, 0
  br i1 %tobool55, label %land.lhs.true.56, label %if.end.60

land.lhs.true.56:                                 ; preds = %lor.lhs.false.51, %cond.end.48, %lor.lhs.false.21, %lor.lhs.false.19, %cond.end
  %60 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %61 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %call57 = call %struct.rtx_def* @final_biv_value(%struct.loop* %60, %struct.iv_class* %61)
  store %struct.rtx_def* %call57, %struct.rtx_def** %biv_final_value, align 8
  %tobool58 = icmp ne %struct.rtx_def* %call57, null
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %land.lhs.true.56
  store i32 0, i32* %biv_splittable, align 4
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.59, %land.lhs.true.56, %lor.lhs.false.51, %lor.lhs.false.5, %if.end
  %62 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv61 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %62, i32 0, i32 2
  %63 = load %struct.induction*, %struct.induction** %biv61, align 8
  store %struct.induction* %63, %struct.induction** %v, align 8
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc, %if.end.60
  %64 = load i32, i32* %biv_splittable, align 4
  %tobool63 = icmp ne i32 %64, 0
  br i1 %tobool63, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.62
  %65 = load %struct.induction*, %struct.induction** %v, align 8
  %tobool64 = icmp ne %struct.induction* %65, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.62
  %66 = phi i1 [ false, %for.cond.62 ], [ %tobool64, %land.rhs ]
  br i1 %66, label %for.body.65, label %for.end

for.body.65:                                      ; preds = %land.end
  %67 = load %struct.induction*, %struct.induction** %v, align 8
  %insn = getelementptr inbounds %struct.induction, %struct.induction* %67, i32 0, i32 0
  %68 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load66 = load i32, i32* %69, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %idxprom68 = sext i32 %bf.clear67 to i64
  %arrayidx69 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom68
  %70 = load i8, i8* %arrayidx69, align 1
  %conv = sext i8 %70 to i32
  %cmp70 = icmp eq i32 %conv, 105
  br i1 %cmp70, label %cond.true.72, label %cond.false.95

cond.true.72:                                     ; preds = %for.body.65
  %71 = load %struct.induction*, %struct.induction** %v, align 8
  %insn73 = getelementptr inbounds %struct.induction, %struct.induction* %71, i32 0, i32 0
  %72 = load %struct.rtx_def*, %struct.rtx_def** %insn73, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 3
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %74 = bitcast %struct.rtx_def* %73 to i32*
  %bf.load77 = load i32, i32* %74, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 47
  br i1 %cmp79, label %cond.true.81, label %cond.false.86

cond.true.81:                                     ; preds = %cond.true.72
  %75 = load %struct.induction*, %struct.induction** %v, align 8
  %insn82 = getelementptr inbounds %struct.induction, %struct.induction* %75, i32 0, i32 0
  %76 = load %struct.rtx_def*, %struct.rtx_def** %insn82, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 3
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  br label %cond.end.93

cond.false.86:                                    ; preds = %cond.true.72
  %78 = load %struct.induction*, %struct.induction** %v, align 8
  %insn87 = getelementptr inbounds %struct.induction, %struct.induction* %78, i32 0, i32 0
  %79 = load %struct.rtx_def*, %struct.rtx_def** %insn87, align 8
  %80 = load %struct.induction*, %struct.induction** %v, align 8
  %insn88 = getelementptr inbounds %struct.induction, %struct.induction* %80, i32 0, i32 0
  %81 = load %struct.rtx_def*, %struct.rtx_def** %insn88, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 3
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx91, align 8
  %call92 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %79, %struct.rtx_def* %82)
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.false.86, %cond.true.81
  %cond94 = phi %struct.rtx_def* [ %77, %cond.true.81 ], [ %call92, %cond.false.86 ]
  br label %cond.end.96

cond.false.95:                                    ; preds = %for.body.65
  br label %cond.end.96

cond.end.96:                                      ; preds = %cond.false.95, %cond.end.93
  %cond97 = phi %struct.rtx_def* [ %cond94, %cond.end.93 ], [ null, %cond.false.95 ]
  store %struct.rtx_def* %cond97, %struct.rtx_def** %tem, align 8
  %cmp98 = icmp eq %struct.rtx_def* %cond97, null
  br i1 %cmp98, label %if.then.125, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %cond.end.96
  %83 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %84 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load104 = load i32, i32* %85, align 8
  %bf.clear105 = and i32 %bf.load104, 65535
  %cmp106 = icmp ne i32 %bf.clear105, 61
  br i1 %cmp106, label %if.then.125, label %lor.lhs.false.108

lor.lhs.false.108:                                ; preds = %lor.lhs.false.100
  %86 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 0
  %rtx111 = bitcast %union.rtunion_def* %arrayidx110 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx111, align 8
  %fld112 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx113 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld112, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx113 to i32*
  %88 = load i32, i32* %rtuint, align 4
  %89 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno114 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %89, i32 0, i32 0
  %90 = load i32, i32* %regno114, align 4
  %cmp115 = icmp ne i32 %88, %90
  br i1 %cmp115, label %if.then.125, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %lor.lhs.false.108
  %91 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 1
  %rtx120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtx_def**
  %92 = load %struct.rtx_def*, %struct.rtx_def** %rtx120, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load121 = load i32, i32* %93, align 8
  %bf.clear122 = and i32 %bf.load121, 65535
  %cmp123 = icmp ne i32 %bf.clear122, 75
  br i1 %cmp123, label %if.then.125, label %if.end.126

if.then.125:                                      ; preds = %lor.lhs.false.117, %lor.lhs.false.108, %lor.lhs.false.100, %cond.end.96
  store i32 0, i32* %biv_splittable, align 4
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.125, %lor.lhs.false.117
  br label %for.inc

for.inc:                                          ; preds = %if.end.126
  %94 = load %struct.induction*, %struct.induction** %v, align 8
  %next_iv = getelementptr inbounds %struct.induction, %struct.induction* %94, i32 0, i32 17
  %95 = load %struct.induction*, %struct.induction** %next_iv, align 8
  store %struct.induction* %95, %struct.induction** %v, align 8
  br label %for.cond.62

for.end:                                          ; preds = %land.end
  %96 = load i32, i32* %biv_splittable, align 4
  %cmp127 = icmp eq i32 %96, 1
  br i1 %cmp127, label %if.then.129, label %if.end.197

if.then.129:                                      ; preds = %for.end
  %97 = load i32, i32* %unroll_type.addr, align 4
  %cmp130 = icmp eq i32 %97, 0
  br i1 %cmp130, label %if.then.132, label %if.else.183

if.then.132:                                      ; preds = %if.then.129
  %98 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %initial_value = getelementptr inbounds %struct.iv_class, %struct.iv_class* %98, i32 0, i32 6
  %99 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %100 = bitcast %struct.rtx_def* %99 to i32*
  %bf.load133 = load i32, i32* %100, align 8
  %bf.clear134 = and i32 %bf.load133, 65535
  %cmp135 = icmp eq i32 %bf.clear134, 61
  br i1 %cmp135, label %land.lhs.true.137, label %if.else

land.lhs.true.137:                                ; preds = %if.then.132
  %101 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %initial_value138 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %101, i32 0, i32 6
  %102 = load %struct.rtx_def*, %struct.rtx_def** %initial_value138, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 0
  %rtuint141 = bitcast %union.rtunion_def* %arrayidx140 to i32*
  %103 = load i32, i32* %rtuint141, align 4
  %104 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno142 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %104, i32 0, i32 0
  %105 = load i32, i32* %regno142, align 4
  %cmp143 = icmp eq i32 %103, %105
  br i1 %cmp143, label %if.then.156, label %lor.lhs.false.145

lor.lhs.false.145:                                ; preds = %land.lhs.true.137
  %106 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %initial_value146 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %106, i32 0, i32 6
  %107 = load %struct.rtx_def*, %struct.rtx_def** %initial_value146, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 0
  %rtuint149 = bitcast %union.rtunion_def* %arrayidx148 to i32*
  %108 = load i32, i32* %rtuint149, align 4
  %cmp150 = icmp ult i32 %108, 53
  br i1 %cmp150, label %if.then.156, label %lor.lhs.false.152

lor.lhs.false.152:                                ; preds = %lor.lhs.false.145
  %109 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %110 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %initial_value153 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %110, i32 0, i32 6
  %111 = load %struct.rtx_def*, %struct.rtx_def** %initial_value153, align 8
  %call154 = call i32 @loop_invariant_p(%struct.loop* %109, %struct.rtx_def* %111)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.else, label %if.then.156

if.then.156:                                      ; preds = %lor.lhs.false.152, %lor.lhs.false.145, %land.lhs.true.137
  %112 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv158 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %112, i32 0, i32 2
  %113 = load %struct.induction*, %struct.induction** %biv158, align 8
  %mode = getelementptr inbounds %struct.induction, %struct.induction* %113, i32 0, i32 6
  %114 = load i32, i32* %mode, align 4
  %call159 = call %struct.rtx_def* @gen_reg_rtx(i32 %114)
  store %struct.rtx_def* %call159, %struct.rtx_def** %tem157, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %tem157, align 8
  %fld160 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx161 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld160, i32 0, i64 0
  %rtuint162 = bitcast %union.rtunion_def* %arrayidx161 to i32*
  %116 = load i32, i32* %rtuint162, align 4
  %117 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv163 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %117, i32 0, i32 2
  %118 = load %struct.induction*, %struct.induction** %biv163, align 8
  %add_val = getelementptr inbounds %struct.induction, %struct.induction* %118, i32 0, i32 9
  %119 = load %struct.rtx_def*, %struct.rtx_def** %add_val, align 8
  call void @record_base_value(i32 %116, %struct.rtx_def* %119, i32 0)
  %120 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %121 = load %struct.rtx_def*, %struct.rtx_def** %tem157, align 8
  %122 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv164 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %122, i32 0, i32 2
  %123 = load %struct.induction*, %struct.induction** %biv164, align 8
  %src_reg = getelementptr inbounds %struct.induction, %struct.induction* %123, i32 0, i32 2
  %124 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %call165 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %121, %struct.rtx_def* %124)
  %call166 = call %struct.rtx_def* @loop_insn_hoist(%struct.loop* %120, %struct.rtx_def* %call165)
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool167 = icmp ne %struct._IO_FILE* %125, null
  br i1 %tobool167, label %if.then.168, label %if.end.174

if.then.168:                                      ; preds = %if.then.156
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %127 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno169 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %127, i32 0, i32 0
  %128 = load i32, i32* %regno169, align 4
  %129 = load %struct.rtx_def*, %struct.rtx_def** %tem157, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %129, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 0
  %rtuint172 = bitcast %union.rtunion_def* %arrayidx171 to i32*
  %130 = load i32, i32* %rtuint172, align 4
  %call173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i32 0, i32 0), i32 %128, i32 %130)
  br label %if.end.174

if.end.174:                                       ; preds = %if.then.168, %if.then.156
  %131 = load %struct.rtx_def*, %struct.rtx_def** %tem157, align 8
  %132 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno175 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %132, i32 0, i32 0
  %133 = load i32, i32* %regno175, align 4
  %idxprom176 = zext i32 %133 to i64
  %134 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx177 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %134, i64 %idxprom176
  store %struct.rtx_def* %131, %struct.rtx_def** %arrayidx177, align 8
  br label %if.end.182

if.else:                                          ; preds = %lor.lhs.false.152, %if.then.132
  %135 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %initial_value178 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %135, i32 0, i32 6
  %136 = load %struct.rtx_def*, %struct.rtx_def** %initial_value178, align 8
  %137 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno179 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %137, i32 0, i32 0
  %138 = load i32, i32* %regno179, align 4
  %idxprom180 = zext i32 %138 to i64
  %139 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx181 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %139, i64 %idxprom180
  store %struct.rtx_def* %136, %struct.rtx_def** %arrayidx181, align 8
  br label %if.end.182

if.end.182:                                       ; preds = %if.else, %if.end.174
  br label %if.end.187

if.else.183:                                      ; preds = %if.then.129
  %140 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %141 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno184 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %141, i32 0, i32 0
  %142 = load i32, i32* %regno184, align 4
  %idxprom185 = zext i32 %142 to i64
  %143 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx186 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %143, i64 %idxprom185
  store %struct.rtx_def* %140, %struct.rtx_def** %arrayidx186, align 8
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.183, %if.end.182
  %144 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv_count = getelementptr inbounds %struct.iv_class, %struct.iv_class* %144, i32 0, i32 1
  %145 = load i32, i32* %biv_count, align 4
  %146 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno188 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %146, i32 0, i32 0
  %147 = load i32, i32* %regno188, align 4
  %idxprom189 = zext i32 %147 to i64
  %148 = load i32*, i32** @splittable_regs_updates, align 8
  %arrayidx190 = getelementptr inbounds i32, i32* %148, i64 %idxprom189
  store i32 %145, i32* %arrayidx190, align 4
  %149 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv_count191 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %149, i32 0, i32 1
  %150 = load i32, i32* %biv_count191, align 4
  %151 = load i32, i32* %result, align 4
  %add = add nsw i32 %151, %150
  store i32 %add, i32* %result, align 4
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool192 = icmp ne %struct._IO_FILE* %152, null
  br i1 %tobool192, label %if.then.193, label %if.end.196

if.then.193:                                      ; preds = %if.end.187
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %154 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %regno194 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %154, i32 0, i32 0
  %155 = load i32, i32* %regno194, align 4
  %call195 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.56, i32 0, i32 0), i32 %155)
  br label %if.end.196

if.end.196:                                       ; preds = %if.then.193, %if.end.187
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %for.end
  %156 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %157 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %158 = load i32, i32* %unroll_type.addr, align 4
  %159 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %160 = load i32, i32* %unroll_number.addr, align 4
  %call198 = call i32 @find_splittable_givs(%struct.loop* %156, %struct.iv_class* %157, i32 %158, %struct.rtx_def* %159, i32 %160)
  %161 = load i32, i32* %result, align 4
  %add199 = add nsw i32 %161, %call198
  store i32 %add199, i32* %result, align 4
  %162 = load %struct.rtx_def*, %struct.rtx_def** %biv_final_value, align 8
  %tobool200 = icmp ne %struct.rtx_def* %162, null
  br i1 %tobool200, label %if.then.201, label %if.end.242

if.then.201:                                      ; preds = %if.end.197
  %163 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_count202 = getelementptr inbounds %struct.loop, %struct.loop* %163, i32 0, i32 32
  %164 = load i32, i32* %exit_count202, align 4
  %tobool203 = icmp ne i32 %164, 0
  br i1 %tobool203, label %if.else.209, label %if.then.204

if.then.204:                                      ; preds = %if.then.201
  %165 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %166 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv205 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %166, i32 0, i32 2
  %167 = load %struct.induction*, %struct.induction** %biv205, align 8
  %src_reg206 = getelementptr inbounds %struct.induction, %struct.induction* %167, i32 0, i32 2
  %168 = load %struct.rtx_def*, %struct.rtx_def** %src_reg206, align 8
  %169 = load %struct.rtx_def*, %struct.rtx_def** %biv_final_value, align 8
  %call207 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %168, %struct.rtx_def* %169)
  %call208 = call %struct.rtx_def* @loop_insn_sink(%struct.loop* %165, %struct.rtx_def* %call207)
  br label %if.end.241

if.else.209:                                      ; preds = %if.then.201
  %170 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv211 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %170, i32 0, i32 2
  %171 = load %struct.induction*, %struct.induction** %biv211, align 8
  %mode212 = getelementptr inbounds %struct.induction, %struct.induction* %171, i32 0, i32 6
  %172 = load i32, i32* %mode212, align 4
  %call213 = call %struct.rtx_def* @gen_reg_rtx(i32 %172)
  store %struct.rtx_def* %call213, %struct.rtx_def** %tem210, align 8
  %173 = load %struct.rtx_def*, %struct.rtx_def** %tem210, align 8
  %fld214 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %173, i32 0, i32 1
  %arrayidx215 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld214, i32 0, i64 0
  %rtuint216 = bitcast %union.rtunion_def* %arrayidx215 to i32*
  %174 = load i32, i32* %rtuint216, align 4
  %175 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv217 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %175, i32 0, i32 2
  %176 = load %struct.induction*, %struct.induction** %biv217, align 8
  %add_val218 = getelementptr inbounds %struct.induction, %struct.induction* %176, i32 0, i32 9
  %177 = load %struct.rtx_def*, %struct.rtx_def** %add_val218, align 8
  call void @record_base_value(i32 %174, %struct.rtx_def* %177, i32 0)
  %178 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %179 = load %struct.rtx_def*, %struct.rtx_def** %tem210, align 8
  %180 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv219 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %180, i32 0, i32 2
  %181 = load %struct.induction*, %struct.induction** %biv219, align 8
  %src_reg220 = getelementptr inbounds %struct.induction, %struct.induction* %181, i32 0, i32 2
  %182 = load %struct.rtx_def*, %struct.rtx_def** %src_reg220, align 8
  %call221 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %179, %struct.rtx_def* %182)
  %call222 = call %struct.rtx_def* @loop_insn_hoist(%struct.loop* %178, %struct.rtx_def* %call221)
  %183 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %184 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv223 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %184, i32 0, i32 2
  %185 = load %struct.induction*, %struct.induction** %biv223, align 8
  %src_reg224 = getelementptr inbounds %struct.induction, %struct.induction* %185, i32 0, i32 2
  %186 = load %struct.rtx_def*, %struct.rtx_def** %src_reg224, align 8
  %187 = load %struct.rtx_def*, %struct.rtx_def** %biv_final_value, align 8
  %call225 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %186, %struct.rtx_def* %187)
  %call226 = call %struct.rtx_def* @loop_insn_hoist(%struct.loop* %183, %struct.rtx_def* %call225)
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool227 = icmp ne %struct._IO_FILE* %188, null
  br i1 %tobool227, label %if.then.228, label %if.end.238

if.then.228:                                      ; preds = %if.else.209
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %190 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv229 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %190, i32 0, i32 2
  %191 = load %struct.induction*, %struct.induction** %biv229, align 8
  %src_reg230 = getelementptr inbounds %struct.induction, %struct.induction* %191, i32 0, i32 2
  %192 = load %struct.rtx_def*, %struct.rtx_def** %src_reg230, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtuint233 = bitcast %union.rtunion_def* %arrayidx232 to i32*
  %193 = load i32, i32* %rtuint233, align 4
  %194 = load %struct.rtx_def*, %struct.rtx_def** %tem210, align 8
  %fld234 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx235 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld234, i32 0, i64 0
  %rtuint236 = bitcast %union.rtunion_def* %arrayidx235 to i32*
  %195 = load i32, i32* %rtuint236, align 4
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %189, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.57, i32 0, i32 0), i32 %193, i32 %195)
  br label %if.end.238

if.end.238:                                       ; preds = %if.then.228, %if.else.209
  %196 = load %struct.rtx_def*, %struct.rtx_def** %tem210, align 8
  %197 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv239 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %197, i32 0, i32 2
  %198 = load %struct.induction*, %struct.induction** %biv239, align 8
  %src_reg240 = getelementptr inbounds %struct.induction, %struct.induction* %198, i32 0, i32 2
  store %struct.rtx_def* %196, %struct.rtx_def** %src_reg240, align 8
  br label %if.end.241

if.end.241:                                       ; preds = %if.end.238, %if.then.204
  br label %if.end.242

if.end.242:                                       ; preds = %if.end.241, %if.end.197
  br label %for.inc.243

for.inc.243:                                      ; preds = %if.end.242, %if.then
  %199 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %next = getelementptr inbounds %struct.iv_class, %struct.iv_class* %199, i32 0, i32 9
  %200 = load %struct.iv_class*, %struct.iv_class** %next, align 8
  store %struct.iv_class* %200, %struct.iv_class** %bl, align 8
  br label %for.cond

for.end.244:                                      ; preds = %for.cond
  %201 = load i32, i32* %result, align 4
  ret i32 %201
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @remap_split_bivs(%struct.loop* %loop, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %loop.addr = alloca %struct.loop*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %ivs = alloca %struct.loop_ivs*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %j = alloca i32, align 4
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 22
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.loop_info*
  %ivs1 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %2, i32 0, i32 29
  store %struct.loop_ivs* %ivs1, %struct.loop_ivs** %ivs, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %7 = load i32, i32* %code, align 4
  switch i32 %7, label %sw.default [
    i32 62, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 58, label %sw.bb
    i32 68, label %sw.bb
    i32 67, label %sw.bb
    i32 61, label %sw.bb.2
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %10 = load i32, i32* %rtuint, align 4
  %11 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %n_regs = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %11, i32 0, i32 1
  %12 = load i32, i32* %n_regs, align 4
  %cmp3 = icmp ult i32 %10, %12
  br i1 %cmp3, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %sw.bb.2
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtuint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %14 = load i32, i32* %rtuint6, align 4
  %idxprom = zext i32 %14 to i64
  %15 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %15, i32 0, i32 0
  %16 = load %struct.iv*, %struct.iv** %regs, align 8
  %arrayidx7 = getelementptr inbounds %struct.iv, %struct.iv* %16, i64 %idxprom
  %type = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx7, i32 0, i32 0
  %17 = load i32, i32* %type, align 4
  %cmp8 = icmp eq i32 %17, 1
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %land.lhs.true
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtuint12 = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %19 = load i32, i32* %rtuint12, align 4
  %idxprom13 = zext i32 %19 to i64
  %20 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs14 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %20, i32 0, i32 0
  %21 = load %struct.iv*, %struct.iv** %regs14, align 8
  %arrayidx15 = getelementptr inbounds %struct.iv, %struct.iv* %21, i64 %idxprom13
  %iv = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx15, i32 0, i32 1
  %class = bitcast %union.anon* %iv to %struct.iv_class**
  %22 = load %struct.iv_class*, %struct.iv_class** %class, align 8
  %biv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %22, i32 0, i32 2
  %23 = load %struct.induction*, %struct.induction** %biv, align 8
  %src_reg = getelementptr inbounds %struct.induction, %struct.induction* %23, i32 0, i32 2
  %24 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %sw.bb.2
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.16
  %25 = load i32, i32* %code, align 4
  %idxprom17 = sext i32 %25 to i64
  %arrayidx18 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom17
  %26 = load i8*, i8** %arrayidx18, align 8
  store i8* %26, i8** %fmt, align 8
  %27 = load i32, i32* %code, align 4
  %idxprom19 = sext i32 %27 to i64
  %arrayidx20 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom19
  %28 = load i8, i8* %arrayidx20, align 1
  %conv = zext i8 %28 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.65, %sw.epilog
  %29 = load i32, i32* %i, align 4
  %cmp21 = icmp sge i32 %29, 0
  br i1 %cmp21, label %for.body, label %for.end.66

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %30 to i64
  %31 = load i8*, i8** %fmt, align 8
  %arrayidx24 = getelementptr inbounds i8, i8* %31, i64 %idxprom23
  %32 = load i8, i8* %arrayidx24, align 1
  %conv25 = sext i8 %32 to i32
  %cmp26 = icmp eq i32 %conv25, 101
  br i1 %cmp26, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %for.body
  %33 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %34 = load i32, i32* %i, align 4
  %idxprom29 = sext i32 %34 to i64
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 %idxprom29
  %rtx = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call %struct.rtx_def* @remap_split_bivs(%struct.loop* %33, %struct.rtx_def* %36)
  %37 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %37 to i64
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 %idxprom32
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  store %struct.rtx_def* %call, %struct.rtx_def** %rtx35, align 8
  br label %if.end.64

if.else:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %idxprom36 = sext i32 %39 to i64
  %40 = load i8*, i8** %fmt, align 8
  %arrayidx37 = getelementptr inbounds i8, i8* %40, i64 %idxprom36
  %41 = load i8, i8* %arrayidx37, align 1
  %conv38 = sext i8 %41 to i32
  %cmp39 = icmp eq i32 %conv38, 69
  br i1 %cmp39, label %if.then.41, label %if.end.63

if.then.41:                                       ; preds = %if.else
  store i32 0, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %if.then.41
  %42 = load i32, i32* %j, align 4
  %43 = load i32, i32* %i, align 4
  %idxprom43 = sext i32 %43 to i64
  %44 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 %idxprom43
  %rtvec = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtvec_def**
  %45 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %45, i32 0, i32 0
  %46 = load i32, i32* %num_elem, align 4
  %cmp46 = icmp slt i32 %42, %46
  br i1 %cmp46, label %for.body.48, label %for.end

for.body.48:                                      ; preds = %for.cond.42
  %47 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %48 = load i32, i32* %j, align 4
  %idxprom49 = sext i32 %48 to i64
  %49 = load i32, i32* %i, align 4
  %idxprom50 = sext i32 %49 to i64
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 %idxprom50
  %rtvec53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtvec_def**
  %51 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec53, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %51, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom49
  %52 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx54, align 8
  %call55 = call %struct.rtx_def* @remap_split_bivs(%struct.loop* %47, %struct.rtx_def* %52)
  %53 = load i32, i32* %j, align 4
  %idxprom56 = sext i32 %53 to i64
  %54 = load i32, i32* %i, align 4
  %idxprom57 = sext i32 %54 to i64
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 %idxprom57
  %rtvec60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtvec_def**
  %56 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec60, align 8
  %elem61 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %56, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem61, i32 0, i64 %idxprom56
  store %struct.rtx_def* %call55, %struct.rtx_def** %arrayidx62, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.48
  %57 = load i32, i32* %j, align 4
  %inc = add nsw i32 %57, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  br label %if.end.63

if.end.63:                                        ; preds = %for.end, %if.else
  br label %if.end.64

if.end.64:                                        ; preds = %if.end.63, %if.then.28
  br label %for.inc.65

for.inc.65:                                       ; preds = %if.end.64
  %58 = load i32, i32* %i, align 4
  %dec = add nsw i32 %58, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end.66:                                       ; preds = %for.cond
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.66, %if.then.9, %sw.bb, %if.then
  %60 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %60
}

declare %struct.rtx_def* @get_label_from_map(%struct.inline_remap*, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_u00(i32, i32, %struct.rtx_def*) #1

declare i32 @exact_log2_wide(i64) #1

declare i32 @loop_invariant_p(%struct.loop*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @emit_unrolled_add(%struct.rtx_def* %dest_reg, %struct.rtx_def* %src_reg, %struct.rtx_def* %increment) #0 {
entry:
  %dest_reg.addr = alloca %struct.rtx_def*, align 8
  %src_reg.addr = alloca %struct.rtx_def*, align 8
  %increment.addr = alloca %struct.rtx_def*, align 8
  %result = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %dest_reg, %struct.rtx_def** %dest_reg.addr, align 8
  store %struct.rtx_def* %src_reg, %struct.rtx_def** %src_reg.addr, align 8
  store %struct.rtx_def* %increment, %struct.rtx_def** %increment.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %2 = load %struct.rtx_def*, %struct.rtx_def** %src_reg.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %increment.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg.addr, align 8
  %call = call %struct.rtx_def* @expand_simple_binop(i32 %bf.clear, i32 75, %struct.rtx_def* %2, %struct.rtx_def* %3, %struct.rtx_def* %4, i32 0, i32 3)
  store %struct.rtx_def* %call, %struct.rtx_def** %result, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %cmp = icmp ne %struct.rtx_def* %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %call1 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %7, %struct.rtx_def* %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @back_branch_in_range_p(%struct.loop* %loop, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %loop.addr = alloca %struct.loop*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.rtx_def*, align 8
  %q = alloca %struct.rtx_def*, align 8
  %target_insn = alloca %struct.rtx_def*, align 8
  %loop_start = alloca %struct.rtx_def*, align 8
  %loop_end = alloca %struct.rtx_def*, align 8
  %orig_loop_end = alloca %struct.rtx_def*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 26
  %1 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %loop_start, align 8
  %2 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end = getelementptr inbounds %struct.loop, %struct.loop* %2, i32 0, i32 27
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %loop_end, align 8
  %4 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end1 = getelementptr inbounds %struct.loop, %struct.loop* %4, i32 0, i32 27
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end1, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %orig_loop_end, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %call = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %6)
  store %struct.rtx_def* %call, %struct.rtx_def** %loop_end, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 35
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %loop_end, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load2 = load i32, i32* %12, align 8
  %bf.lshr = lshr i32 %bf.load2, 27
  %bf.clear3 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear3, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 2
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %cmp7 = icmp eq %struct.rtx_def* %15, %16
  br i1 %cmp7, label %if.then.9, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %orig_loop_end, align 8
  %cmp8 = icmp eq %struct.rtx_def* %17, %18
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %lor.lhs.false, %while.end
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %lor.lhs.false
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 2
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %if.end.10
  %21 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %cmp14 = icmp ne %struct.rtx_def* %21, %22
  br i1 %cmp14, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %23 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load15 = load i32, i32* %24, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 33
  br i1 %cmp17, label %if.then.18, label %if.end.31

if.then.18:                                       ; preds = %for.body
  %25 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 7
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %target_insn, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %q, align 8
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc, %if.then.18
  %28 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp23 = icmp ne %struct.rtx_def* %28, %29
  br i1 %cmp23, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %for.cond.22
  %30 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %target_insn, align 8
  %cmp25 = icmp eq %struct.rtx_def* %30, %31
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %for.body.24
  store i32 1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %for.body.24
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %32 = load %struct.rtx_def*, %struct.rtx_def** %q, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 2
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %q, align 8
  br label %for.cond.22

for.end:                                          ; preds = %for.cond.22
  br label %if.end.31

if.end.31:                                        ; preds = %for.end, %for.body
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %34 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 2
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.36, %if.then.26, %if.then.9
  %36 = load i32, i32* %retval
  ret i32 %36
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @biv_total_increment(%struct.iv_class* %bl) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %bl.addr = alloca %struct.iv_class*, align 8
  %v = alloca %struct.induction*, align 8
  %result = alloca %struct.rtx_def*, align 8
  store %struct.iv_class* %bl, %struct.iv_class** %bl.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %result, align 8
  %1 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %biv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %1, i32 0, i32 2
  %2 = load %struct.induction*, %struct.induction** %biv, align 8
  store %struct.induction* %2, %struct.induction** %v, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.induction*, %struct.induction** %v, align 8
  %tobool = icmp ne %struct.induction* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.induction*, %struct.induction** %v, align 8
  %always_computable = getelementptr inbounds %struct.induction, %struct.induction* %4, i32 0, i32 13
  %bf.load = load i16, i16* %always_computable, align 4
  %bf.lshr = lshr i16 %bf.load, 3
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool1 = icmp ne i32 %bf.cast, 0
  br i1 %tobool1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %5 = load %struct.induction*, %struct.induction** %v, align 8
  %mult_val = getelementptr inbounds %struct.induction, %struct.induction* %5, i32 0, i32 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %mult_val, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %cmp = icmp eq %struct.rtx_def* %6, %7
  br i1 %cmp, label %land.lhs.true.2, label %if.else

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %8 = load %struct.induction*, %struct.induction** %v, align 8
  %maybe_multiple = getelementptr inbounds %struct.induction, %struct.induction* %8, i32 0, i32 13
  %bf.load3 = load i16, i16* %maybe_multiple, align 4
  %bf.lshr4 = lshr i16 %bf.load3, 5
  %bf.clear5 = and i16 %bf.lshr4, 1
  %bf.cast6 = zext i16 %bf.clear5 to i32
  %tobool7 = icmp ne i32 %bf.cast6, 0
  br i1 %tobool7, label %if.else, label %if.then

if.then:                                          ; preds = %land.lhs.true.2
  %9 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  %11 = load %struct.induction*, %struct.induction** %v, align 8
  %add_val = getelementptr inbounds %struct.induction, %struct.induction* %11, i32 0, i32 9
  %12 = load %struct.rtx_def*, %struct.rtx_def** %add_val, align 8
  %13 = load %struct.induction*, %struct.induction** %v, align 8
  %mode = getelementptr inbounds %struct.induction, %struct.induction* %13, i32 0, i32 6
  %14 = load i32, i32* %mode, align 4
  %call = call %struct.rtx_def* @fold_rtx_mult_add(%struct.rtx_def* %9, %struct.rtx_def* %10, %struct.rtx_def* %12, i32 %14)
  store %struct.rtx_def* %call, %struct.rtx_def** %result, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.2, %land.lhs.true, %for.body
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.induction*, %struct.induction** %v, align 8
  %next_iv = getelementptr inbounds %struct.induction, %struct.induction* %15, i32 0, i32 17
  %16 = load %struct.induction*, %struct.induction** %next_iv, align 8
  store %struct.induction* %16, %struct.induction** %v, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.else
  %18 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %18
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @fold_rtx_mult_add(%struct.rtx_def* %mult1, %struct.rtx_def* %mult2, %struct.rtx_def* %add1, i32 %mode) #0 {
entry:
  %mult1.addr = alloca %struct.rtx_def*, align 8
  %mult2.addr = alloca %struct.rtx_def*, align 8
  %add1.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %temp = alloca %struct.rtx_def*, align 8
  %mult_res = alloca %struct.rtx_def*, align 8
  %result = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mult1, %struct.rtx_def** %mult1.addr, align 8
  store %struct.rtx_def* %mult2, %struct.rtx_def** %mult2.addr, align 8
  store %struct.rtx_def* %add1, %struct.rtx_def** %add1.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %mult1.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %2 = load i32, i32* %mode.addr, align 4
  %cmp = icmp ne i32 %bf.clear, %2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %mult1.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  %cmp4 = icmp ne i32 %bf.clear3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %mult2.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load5 = load i32, i32* %6, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 16
  %bf.clear7 = and i32 %bf.lshr6, 255
  %7 = load i32, i32* %mode.addr, align 4
  %cmp8 = icmp ne i32 %bf.clear7, %7
  br i1 %cmp8, label %land.lhs.true.9, label %lor.lhs.false.14

land.lhs.true.9:                                  ; preds = %lor.lhs.false
  %8 = load %struct.rtx_def*, %struct.rtx_def** %mult2.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load10 = load i32, i32* %9, align 8
  %bf.lshr11 = lshr i32 %bf.load10, 16
  %bf.clear12 = and i32 %bf.lshr11, 255
  %cmp13 = icmp ne i32 %bf.clear12, 0
  br i1 %cmp13, label %if.then, label %lor.lhs.false.14

lor.lhs.false.14:                                 ; preds = %land.lhs.true.9, %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %add1.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load15 = load i32, i32* %11, align 8
  %bf.lshr16 = lshr i32 %bf.load15, 16
  %bf.clear17 = and i32 %bf.lshr16, 255
  %12 = load i32, i32* %mode.addr, align 4
  %cmp18 = icmp ne i32 %bf.clear17, %12
  br i1 %cmp18, label %land.lhs.true.19, label %if.end

land.lhs.true.19:                                 ; preds = %lor.lhs.false.14
  %13 = load %struct.rtx_def*, %struct.rtx_def** %add1.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load20 = load i32, i32* %14, align 8
  %bf.lshr21 = lshr i32 %bf.load20, 16
  %bf.clear22 = and i32 %bf.lshr21, 255
  %cmp23 = icmp ne i32 %bf.clear22, 0
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.19, %land.lhs.true.9, %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 2422, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.fold_rtx_mult_add, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %land.lhs.true.19, %lor.lhs.false.14
  %15 = load %struct.rtx_def*, %struct.rtx_def** %mult1.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load24 = load i32, i32* %16, align 8
  %bf.clear25 = and i32 %bf.load24, 65535
  %cmp26 = icmp eq i32 %bf.clear25, 54
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %mult2.addr, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %temp, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %mult1.addr, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %mult2.addr, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %mult1.addr, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.then.27, %if.end
  %20 = load i32, i32* %mode.addr, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %mult1.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %mult2.addr, align 8
  %call = call %struct.rtx_def* @simplify_binary_operation(i32 78, i32 %20, %struct.rtx_def* %21, %struct.rtx_def* %22)
  store %struct.rtx_def* %call, %struct.rtx_def** %mult_res, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %mult_res, align 8
  %tobool = icmp ne %struct.rtx_def* %23, null
  br i1 %tobool, label %if.end.31, label %if.then.29

if.then.29:                                       ; preds = %if.end.28
  %24 = load i32, i32* %mode.addr, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %mult1.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %mult2.addr, align 8
  %call30 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 78, i32 %24, %struct.rtx_def* %25, %struct.rtx_def* %26)
  store %struct.rtx_def* %call30, %struct.rtx_def** %mult_res, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.29, %if.end.28
  %27 = load %struct.rtx_def*, %struct.rtx_def** %add1.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load32 = load i32, i32* %28, align 8
  %bf.clear33 = and i32 %bf.load32, 65535
  %cmp34 = icmp eq i32 %bf.clear33, 54
  br i1 %cmp34, label %if.then.35, label %if.end.36

if.then.35:                                       ; preds = %if.end.31
  %29 = load %struct.rtx_def*, %struct.rtx_def** %add1.addr, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %temp, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %mult_res, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %add1.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %mult_res, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.then.35, %if.end.31
  %32 = load i32, i32* %mode.addr, align 4
  %33 = load %struct.rtx_def*, %struct.rtx_def** %add1.addr, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %mult_res, align 8
  %call37 = call %struct.rtx_def* @simplify_binary_operation(i32 75, i32 %32, %struct.rtx_def* %33, %struct.rtx_def* %34)
  store %struct.rtx_def* %call37, %struct.rtx_def** %result, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %tobool38 = icmp ne %struct.rtx_def* %35, null
  br i1 %tobool38, label %if.end.41, label %if.then.39

if.then.39:                                       ; preds = %if.end.36
  %36 = load i32, i32* %mode.addr, align 4
  %37 = load %struct.rtx_def*, %struct.rtx_def** %add1.addr, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %mult_res, align 8
  %call40 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %36, %struct.rtx_def* %37, %struct.rtx_def* %38)
  store %struct.rtx_def* %call40, %struct.rtx_def** %result, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.end.36
  %39 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  ret %struct.rtx_def* %39
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @final_biv_value(%struct.loop* %loop, %struct.iv_class* %bl) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %loop.addr = alloca %struct.loop*, align 8
  %bl.addr = alloca %struct.iv_class*, align 8
  %n_iterations = alloca i64, align 8
  %increment = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.iv_class* %bl, %struct.iv_class** %bl.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 22
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.loop_info*
  %n_iterations1 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %2, i32 0, i32 15
  %3 = load i64, i64* %n_iterations1, align 8
  store i64 %3, i64* %n_iterations, align 8
  %4 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %biv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %4, i32 0, i32 2
  %5 = load %struct.induction*, %struct.induction** %biv, align 8
  %mode = getelementptr inbounds %struct.induction, %struct.induction* %5, i32 0, i32 6
  %6 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %7 = load i32, i32* %arrayidx, align 4
  %cmp = icmp ne i32 %7, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %reversed = getelementptr inbounds %struct.iv_class, %struct.iv_class* %8, i32 0, i32 12
  %bf.load = load i8, i8* %reversed, align 8
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %9, null
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.2
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %11 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %regno = getelementptr inbounds %struct.iv_class, %struct.iv_class* %11, i32 0, i32 0
  %12 = load i32, i32* %regno, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0), i32 %12)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %if.then.2
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %14 = load i64, i64* %n_iterations, align 8
  %cmp7 = icmp ne i64 %14, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end.32

land.lhs.true:                                    ; preds = %if.end.6
  %15 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_count = getelementptr inbounds %struct.loop, %struct.loop* %15, i32 0, i32 32
  %16 = load i32, i32* %exit_count, align 4
  %tobool8 = icmp ne i32 %16, 0
  br i1 %tobool8, label %if.end.32, label %land.lhs.true.9

land.lhs.true.9:                                  ; preds = %land.lhs.true
  %17 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %18 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %initial_value = getelementptr inbounds %struct.iv_class, %struct.iv_class* %18, i32 0, i32 6
  %19 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %call10 = call i32 @loop_invariant_p(%struct.loop* %17, %struct.rtx_def* %19)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then.12, label %if.end.32

if.then.12:                                       ; preds = %land.lhs.true.9
  %20 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %call13 = call %struct.rtx_def* @biv_total_increment(%struct.iv_class* %20)
  store %struct.rtx_def* %call13, %struct.rtx_def** %increment, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %tobool14 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool14, label %land.lhs.true.15, label %if.end.31

land.lhs.true.15:                                 ; preds = %if.then.12
  %22 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %call16 = call i32 @loop_invariant_p(%struct.loop* %22, %struct.rtx_def* %23)
  %tobool17 = icmp ne i32 %call16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.31

if.then.18:                                       ; preds = %land.lhs.true.15
  %24 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %biv19 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %24, i32 0, i32 2
  %25 = load %struct.induction*, %struct.induction** %biv19, align 8
  %mode20 = getelementptr inbounds %struct.induction, %struct.induction* %25, i32 0, i32 6
  %26 = load i32, i32* %mode20, align 4
  %call21 = call %struct.rtx_def* @gen_reg_rtx(i32 %26)
  store %struct.rtx_def* %call21, %struct.rtx_def** %tem, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx22 to i32*
  %28 = load i32, i32* %rtuint, align 4
  %29 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %biv23 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %29, i32 0, i32 2
  %30 = load %struct.induction*, %struct.induction** %biv23, align 8
  %add_val = getelementptr inbounds %struct.induction, %struct.induction* %30, i32 0, i32 9
  %31 = load %struct.rtx_def*, %struct.rtx_def** %add_val, align 8
  call void @record_base_value(i32 %28, %struct.rtx_def* %31, i32 0)
  %32 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %34 = load i64, i64* %n_iterations, align 8
  %call24 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %34)
  %35 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %initial_value25 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %35, i32 0, i32 6
  %36 = load %struct.rtx_def*, %struct.rtx_def** %initial_value25, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  call void @loop_iv_add_mult_sink(%struct.loop* %32, %struct.rtx_def* %33, %struct.rtx_def* %call24, %struct.rtx_def* %36, %struct.rtx_def* %37)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool26 = icmp ne %struct._IO_FILE* %38, null
  br i1 %tobool26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.then.18
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %40 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %regno28 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %40, i32 0, i32 0
  %41 = load i32, i32* %regno28, align 4
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i32 0, i32 0), i32 %41)
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.27, %if.then.18
  %42 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %retval
  br label %return

if.end.31:                                        ; preds = %land.lhs.true.15, %if.then.12
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %land.lhs.true.9, %land.lhs.true, %if.end.6
  %43 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %44 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %biv33 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %44, i32 0, i32 2
  %45 = load %struct.induction*, %struct.induction** %biv33, align 8
  %src_reg = getelementptr inbounds %struct.induction, %struct.induction* %45, i32 0, i32 2
  %46 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %call34 = call i32 @reg_dead_after_loop(%struct.loop* %43, %struct.rtx_def* %46)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %if.end.32
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool37 = icmp ne %struct._IO_FILE* %47, null
  br i1 %tobool37, label %if.then.38, label %if.end.41

if.then.38:                                       ; preds = %if.then.36
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %49 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %regno39 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %49, i32 0, i32 0
  %50 = load i32, i32* %regno39, align 4
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i32 0, i32 0), i32 %50)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.38, %if.then.36
  %51 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %51, %struct.rtx_def** %retval
  br label %return

if.end.42:                                        ; preds = %if.end.32
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.end.41, %if.end.30, %if.end.5, %if.then
  %52 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %52
}

declare void @loop_iv_add_mult_sink(%struct.loop*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @reg_dead_after_loop(%struct.loop* %loop, %struct.rtx_def* %reg) #0 {
entry:
  %retval = alloca i32, align 4
  %loop.addr = alloca %struct.loop*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %jump_count = alloca i32, align 4
  %label_count = alloca i32, align 4
  %set = alloca %struct.rtx_def*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store i32 0, i32* %jump_count, align 4
  store i32 0, i32* %label_count, align 4
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_labels = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 31
  %1 = load %struct.rtx_def*, %struct.rtx_def** %exit_labels, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %label, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %label_count, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, i32* %label_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %label, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load i32, i32* %label_count, align 4
  %7 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_count = getelementptr inbounds %struct.loop, %struct.loop* %7, i32 0, i32 32
  %8 = load i32, i32* %exit_count, align 4
  %cmp = icmp ne i32 %6, %8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %for.end
  %9 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end = getelementptr inbounds %struct.loop, %struct.loop* %9, i32 0, i32 27
  %10 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_u00(i32 67, i32 0, %struct.rtx_def* %10)
  store %struct.rtx_def* %call, %struct.rtx_def** %label, align 8
  %11 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_labels1 = getelementptr inbounds %struct.loop, %struct.loop* %11, i32 0, i32 31
  %12 = load %struct.rtx_def*, %struct.rtx_def** %exit_labels1, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 1
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  store %struct.rtx_def* %12, %struct.rtx_def** %rtx4, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.87, %if.end
  %14 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %tobool6 = icmp ne %struct.rtx_def* %14, null
  br i1 %tobool6, label %for.body.7, label %for.end.91

for.body.7:                                       ; preds = %for.cond.5
  %15 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 2
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.83, %for.body.7
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool14 = icmp ne %struct.rtx_def* %18, null
  br i1 %tobool14, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load = load i32, i32* %20, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %21 = load i32, i32* %code, align 4
  %idxprom = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %22 = load i8, i8* %arrayidx15, align 1
  %conv = sext i8 %22 to i32
  %cmp16 = icmp eq i32 %conv, 105
  br i1 %cmp16, label %if.then.18, label %if.end.59

if.then.18:                                       ; preds = %while.body
  %23 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 3
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %call22 = call i32 @reg_referenced_p(%struct.rtx_def* %23, %struct.rtx_def* %25)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.18
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.18
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load26 = load i32, i32* %27, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %idxprom28 = sext i32 %bf.clear27 to i64
  %arrayidx29 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom28
  %28 = load i8, i8* %arrayidx29, align 1
  %conv30 = sext i8 %28 to i32
  %cmp31 = icmp eq i32 %conv30, 105
  br i1 %cmp31, label %cond.true, label %cond.false.48

cond.true:                                        ; preds = %if.end.25
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 3
  %rtx35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx35, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load36 = load i32, i32* %31, align 8
  %bf.clear37 = and i32 %bf.load36, 65535
  %cmp38 = icmp eq i32 %bf.clear37, 47
  br i1 %cmp38, label %cond.true.40, label %cond.false

cond.true.40:                                     ; preds = %cond.true
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 3
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %call47 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %34, %struct.rtx_def* %36)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.40
  %cond = phi %struct.rtx_def* [ %33, %cond.true.40 ], [ %call47, %cond.false ]
  br label %cond.end.49

cond.false.48:                                    ; preds = %if.end.25
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.end
  %cond50 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.48 ]
  store %struct.rtx_def* %cond50, %struct.rtx_def** %set, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %tobool51 = icmp ne %struct.rtx_def* %37, null
  br i1 %tobool51, label %land.lhs.true, label %if.end.58

land.lhs.true:                                    ; preds = %cond.end.49
  %38 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %call55 = call i32 @rtx_equal_p(%struct.rtx_def* %39, %struct.rtx_def* %40)
  %tobool56 = icmp ne i32 %call55, 0
  br i1 %tobool56, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %land.lhs.true
  br label %while.end

if.end.58:                                        ; preds = %land.lhs.true, %cond.end.49
  br label %if.end.59

if.end.59:                                        ; preds = %if.end.58, %while.body
  %41 = load i32, i32* %code, align 4
  %cmp60 = icmp eq i32 %41, 33
  br i1 %cmp60, label %if.then.62, label %if.end.83

if.then.62:                                       ; preds = %if.end.59
  %42 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 3
  %rtx65 = bitcast %union.rtunion_def* %arrayidx64 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx65, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load66 = load i32, i32* %44, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp eq i32 %bf.clear67, 51
  br i1 %cmp68, label %if.then.70, label %if.else

if.then.70:                                       ; preds = %if.then.62
  br label %while.end

if.else:                                          ; preds = %if.then.62
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call71 = call i32 @any_uncondjump_p(%struct.rtx_def* %45)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %lor.lhs.false, label %if.then.76

lor.lhs.false:                                    ; preds = %if.else
  %46 = load i32, i32* %jump_count, align 4
  %inc73 = add nsw i32 %46, 1
  store i32 %inc73, i32* %jump_count, align 4
  %cmp74 = icmp sgt i32 %46, 20
  br i1 %cmp74, label %if.then.76, label %if.else.77

if.then.76:                                       ; preds = %lor.lhs.false, %if.else
  store i32 0, i32* %retval
  br label %return

if.else.77:                                       ; preds = %lor.lhs.false
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 7
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %insn, align 8
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.77
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.59
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 2
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx86, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then.70, %if.then.57, %while.cond
  br label %for.inc.87

for.inc.87:                                       ; preds = %while.end
  %51 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 1
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %label, align 8
  br label %for.cond.5

for.end.91:                                       ; preds = %for.cond.5
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.91, %if.then.76, %if.then.24, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @final_giv_value(%struct.loop* %loop, %struct.induction* %v) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %loop.addr = alloca %struct.loop*, align 8
  %v.addr = alloca %struct.induction*, align 8
  %ivs = alloca %struct.loop_ivs*, align 8
  %bl = alloca %struct.iv_class*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %increment = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %loop_end = alloca %struct.rtx_def*, align 8
  %n_iterations = alloca i64, align 8
  %biv40 = alloca %struct.induction*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.induction* %v, %struct.induction** %v.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 22
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.loop_info*
  %ivs1 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %2, i32 0, i32 29
  store %struct.loop_ivs* %ivs1, %struct.loop_ivs** %ivs, align 8
  %3 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end = getelementptr inbounds %struct.loop, %struct.loop* %3, i32 0, i32 27
  %4 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %loop_end, align 8
  %5 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux2 = getelementptr inbounds %struct.loop, %struct.loop* %5, i32 0, i32 22
  %6 = load i8*, i8** %aux2, align 8
  %7 = bitcast i8* %6 to %struct.loop_info*
  %n_iterations3 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %7, i32 0, i32 15
  %8 = load i64, i64* %n_iterations3, align 8
  store i64 %8, i64* %n_iterations, align 8
  %9 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %src_reg = getelementptr inbounds %struct.induction, %struct.induction* %9, i32 0, i32 2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %11 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %11 to i64
  %12 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %12, i32 0, i32 0
  %13 = load %struct.iv*, %struct.iv** %regs, align 8
  %arrayidx4 = getelementptr inbounds %struct.iv, %struct.iv* %13, i64 %idxprom
  %iv = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx4, i32 0, i32 1
  %class = bitcast %union.anon* %iv to %struct.iv_class**
  %14 = load %struct.iv_class*, %struct.iv_class** %class, align 8
  store %struct.iv_class* %14, %struct.iv_class** %bl, align 8
  %15 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %reversed = getelementptr inbounds %struct.iv_class, %struct.iv_class* %15, i32 0, i32 12
  %bf.load = load i8, i8* %reversed, align 8
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool = icmp ne i32 %bf.cast, 0
  br i1 %tobool, label %if.then, label %if.end.10

if.then:                                          ; preds = %entry
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool5 = icmp ne %struct._IO_FILE* %16, null
  br i1 %tobool5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %18 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %dest_reg = getelementptr inbounds %struct.induction, %struct.induction* %18, i32 0, i32 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtuint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %20 = load i32, i32* %rtuint9, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.33, i32 0, i32 0), i32 %20)
  br label %if.end

if.end:                                           ; preds = %if.then.6, %if.then
  %21 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %retval
  br label %return

if.end.10:                                        ; preds = %entry
  %22 = load i64, i64* %n_iterations, align 8
  %cmp = icmp ne i64 %22, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.71

land.lhs.true:                                    ; preds = %if.end.10
  %23 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_count = getelementptr inbounds %struct.loop, %struct.loop* %23, i32 0, i32 32
  %24 = load i32, i32* %exit_count, align 4
  %tobool11 = icmp ne i32 %24, 0
  br i1 %tobool11, label %if.end.71, label %land.lhs.true.12

land.lhs.true.12:                                 ; preds = %land.lhs.true
  %25 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %always_executed = getelementptr inbounds %struct.induction, %struct.induction* %25, i32 0, i32 13
  %bf.load13 = load i16, i16* %always_executed, align 4
  %bf.lshr14 = lshr i16 %bf.load13, 4
  %bf.clear15 = and i16 %bf.lshr14, 1
  %bf.cast16 = zext i16 %bf.clear15 to i32
  %tobool17 = icmp ne i32 %bf.cast16, 0
  br i1 %tobool17, label %if.then.18, label %if.end.71

if.then.18:                                       ; preds = %land.lhs.true.12
  %26 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %call19 = call %struct.rtx_def* @biv_total_increment(%struct.iv_class* %26)
  store %struct.rtx_def* %call19, %struct.rtx_def** %increment, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %tobool20 = icmp ne %struct.rtx_def* %27, null
  br i1 %tobool20, label %land.lhs.true.21, label %if.end.70

land.lhs.true.21:                                 ; preds = %if.then.18
  %28 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %call22 = call i32 @loop_invariant_p(%struct.loop* %28, %struct.rtx_def* %29)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true.24, label %if.end.70

land.lhs.true.24:                                 ; preds = %land.lhs.true.21
  %30 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %31 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %initial_value = getelementptr inbounds %struct.iv_class, %struct.iv_class* %31, i32 0, i32 6
  %32 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %call25 = call i32 @loop_invariant_p(%struct.loop* %30, %struct.rtx_def* %32)
  %tobool26 = icmp ne i32 %call25, 0
  br i1 %tobool26, label %if.then.27, label %if.end.70

if.then.27:                                       ; preds = %land.lhs.true.24
  %33 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %mode = getelementptr inbounds %struct.induction, %struct.induction* %33, i32 0, i32 6
  %34 = load i32, i32* %mode, align 4
  %call28 = call %struct.rtx_def* @gen_reg_rtx(i32 %34)
  store %struct.rtx_def* %call28, %struct.rtx_def** %tem, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtuint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %36 = load i32, i32* %rtuint31, align 4
  %37 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %37, i32 0, i32 2
  %38 = load %struct.induction*, %struct.induction** %biv, align 8
  %add_val = getelementptr inbounds %struct.induction, %struct.induction* %38, i32 0, i32 9
  %39 = load %struct.rtx_def*, %struct.rtx_def** %add_val, align 8
  call void @record_base_value(i32 %36, %struct.rtx_def* %39, i32 0)
  %40 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %41 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %call32 = call %struct.rtx_def* @extend_value_for_giv(%struct.induction* %41, %struct.rtx_def* %42)
  %43 = load i64, i64* %n_iterations, align 8
  %call33 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %43)
  %44 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %45 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %initial_value34 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %45, i32 0, i32 6
  %46 = load %struct.rtx_def*, %struct.rtx_def** %initial_value34, align 8
  %call35 = call %struct.rtx_def* @extend_value_for_giv(%struct.induction* %44, %struct.rtx_def* %46)
  %47 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  call void @loop_iv_add_mult_sink(%struct.loop* %40, %struct.rtx_def* %call32, %struct.rtx_def* %call33, %struct.rtx_def* %call35, %struct.rtx_def* %47)
  %48 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %insn36 = getelementptr inbounds %struct.induction, %struct.induction* %48, i32 0, i32 0
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn36, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.56, %if.then.27
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %loop_end, align 8
  %cmp39 = icmp ne %struct.rtx_def* %51, %52
  br i1 %cmp39, label %for.body, label %for.end.60

for.body:                                         ; preds = %for.cond
  %53 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv41 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %53, i32 0, i32 2
  %54 = load %struct.induction*, %struct.induction** %biv41, align 8
  store %struct.induction* %54, %struct.induction** %biv40, align 8
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc, %for.body
  %55 = load %struct.induction*, %struct.induction** %biv40, align 8
  %tobool43 = icmp ne %struct.induction* %55, null
  br i1 %tobool43, label %for.body.44, label %for.end

for.body.44:                                      ; preds = %for.cond.42
  %56 = load %struct.induction*, %struct.induction** %biv40, align 8
  %insn45 = getelementptr inbounds %struct.induction, %struct.induction* %56, i32 0, i32 0
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn45, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp46 = icmp eq %struct.rtx_def* %57, %58
  br i1 %cmp46, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %for.body.44
  call void @start_sequence()
  %59 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load48 = load i32, i32* %60, align 8
  %bf.lshr49 = lshr i32 %bf.load48, 16
  %bf.clear50 = and i32 %bf.lshr49, 255
  %61 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %62 = load %struct.induction*, %struct.induction** %biv40, align 8
  %add_val51 = getelementptr inbounds %struct.induction, %struct.induction* %62, i32 0, i32 9
  %63 = load %struct.rtx_def*, %struct.rtx_def** %add_val51, align 8
  %call52 = call %struct.rtx_def* @expand_simple_binop(i32 %bf.clear50, i32 76, %struct.rtx_def* %61, %struct.rtx_def* %63, %struct.rtx_def* null, i32 0, i32 3)
  store %struct.rtx_def* %call52, %struct.rtx_def** %tem, align 8
  %call53 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call53, %struct.rtx_def** %seq, align 8
  call void @end_sequence()
  %64 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %call54 = call %struct.rtx_def* @loop_insn_sink(%struct.loop* %64, %struct.rtx_def* %65)
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.47, %for.body.44
  br label %for.inc

for.inc:                                          ; preds = %if.end.55
  %66 = load %struct.induction*, %struct.induction** %biv40, align 8
  %next_iv = getelementptr inbounds %struct.induction, %struct.induction* %66, i32 0, i32 17
  %67 = load %struct.induction*, %struct.induction** %next_iv, align 8
  store %struct.induction* %67, %struct.induction** %biv40, align 8
  br label %for.cond.42

for.end:                                          ; preds = %for.cond.42
  br label %for.inc.56

for.inc.56:                                       ; preds = %for.end
  %68 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 2
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  store %struct.rtx_def* %69, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.60:                                       ; preds = %for.cond
  %70 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %72 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %mult_val = getelementptr inbounds %struct.induction, %struct.induction* %72, i32 0, i32 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %mult_val, align 8
  %74 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %add_val61 = getelementptr inbounds %struct.induction, %struct.induction* %74, i32 0, i32 9
  %75 = load %struct.rtx_def*, %struct.rtx_def** %add_val61, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  call void @loop_iv_add_mult_sink(%struct.loop* %70, %struct.rtx_def* %71, %struct.rtx_def* %73, %struct.rtx_def* %75, %struct.rtx_def* %76)
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool62 = icmp ne %struct._IO_FILE* %77, null
  br i1 %tobool62, label %if.then.63, label %if.end.69

if.then.63:                                       ; preds = %for.end.60
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %79 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %dest_reg64 = getelementptr inbounds %struct.induction, %struct.induction* %79, i32 0, i32 4
  %80 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg64, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtuint67 = bitcast %union.rtunion_def* %arrayidx66 to i32*
  %81 = load i32, i32* %rtuint67, align 4
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i32 0, i32 0), i32 %81)
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.63, %for.end.60
  %82 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  store %struct.rtx_def* %82, %struct.rtx_def** %retval
  br label %return

if.end.70:                                        ; preds = %land.lhs.true.24, %land.lhs.true.21, %if.then.18
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.70, %land.lhs.true.12, %land.lhs.true, %if.end.10
  %83 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %replaceable = getelementptr inbounds %struct.induction, %struct.induction* %83, i32 0, i32 13
  %bf.load72 = load i16, i16* %replaceable, align 4
  %bf.clear73 = and i16 %bf.load72, 1
  %bf.cast74 = zext i16 %bf.clear73 to i32
  %tobool75 = icmp ne i32 %bf.cast74, 0
  br i1 %tobool75, label %if.then.76, label %if.end.77

if.then.76:                                       ; preds = %if.end.71
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 3387, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_giv_value, i32 0, i32 0)) #5
  unreachable

if.end.77:                                        ; preds = %if.end.71
  %84 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %85 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %dest_reg78 = getelementptr inbounds %struct.induction, %struct.induction* %85, i32 0, i32 4
  %86 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg78, align 8
  %call79 = call i32 @reg_dead_after_loop(%struct.loop* %84, %struct.rtx_def* %86)
  %tobool80 = icmp ne i32 %call79, 0
  br i1 %tobool80, label %if.then.81, label %if.end.90

if.then.81:                                       ; preds = %if.end.77
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool82 = icmp ne %struct._IO_FILE* %87, null
  br i1 %tobool82, label %if.then.83, label %if.end.89

if.then.83:                                       ; preds = %if.then.81
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %89 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %dest_reg84 = getelementptr inbounds %struct.induction, %struct.induction* %89, i32 0, i32 4
  %90 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg84, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 0
  %rtuint87 = bitcast %union.rtunion_def* %arrayidx86 to i32*
  %91 = load i32, i32* %rtuint87, align 4
  %call88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.35, i32 0, i32 0), i32 %91)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.83, %if.then.81
  %92 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %92, %struct.rtx_def** %retval
  br label %return

if.end.90:                                        ; preds = %if.end.77
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.90, %if.end.89, %if.end.69, %if.end
  %93 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %93
}

declare %struct.rtx_def* @extend_value_for_giv(%struct.induction*, %struct.rtx_def*) #1

declare %struct.rtx_def* @loop_insn_sink(%struct.loop*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i64 @loop_iterations(%struct.loop* %loop) #0 {
entry:
  %retval = alloca i64, align 8
  %loop.addr = alloca %struct.loop*, align 8
  %loop_info = alloca %struct.loop_info*, align 8
  %ivs = alloca %struct.loop_ivs*, align 8
  %comparison = alloca %struct.rtx_def*, align 8
  %comparison_value = alloca %struct.rtx_def*, align 8
  %iteration_var = alloca %struct.rtx_def*, align 8
  %initial_value = alloca %struct.rtx_def*, align 8
  %increment = alloca %struct.rtx_def*, align 8
  %final_value = alloca %struct.rtx_def*, align 8
  %comparison_code = alloca i32, align 4
  %inc = alloca i64, align 8
  %abs_inc = alloca i64, align 8
  %abs_diff = alloca i64, align 8
  %off_by_one = alloca i32, align 4
  %increment_dir = alloca i32, align 4
  %unsigned_p = alloca i32, align 4
  %compare_dir = alloca i32, align 4
  %final_larger = alloca i32, align 4
  %last_loop_insn = alloca %struct.rtx_def*, align 8
  %reg_term = alloca %struct.rtx_def*, align 8
  %bl = alloca %struct.iv_class*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  %offset = alloca i64, align 8
  %v = alloca %struct.induction*, align 8
  %biv_initial_value = alloca %struct.rtx_def*, align 8
  %biv_inc = alloca %struct.induction*, align 8
  %reg1 = alloca %struct.rtx_def*, align 8
  %reg2 = alloca %struct.rtx_def*, align 8
  %const2 = alloca %struct.rtx_def*, align 8
  %temp412 = alloca %struct.rtx_def*, align 8
  %temp447 = alloca %struct.rtx_def*, align 8
  %temp2 = alloca %struct.rtx_def*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 22
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.loop_info*
  store %struct.loop_info* %2, %struct.loop_info** %loop_info, align 8
  %3 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux1 = getelementptr inbounds %struct.loop, %struct.loop* %3, i32 0, i32 22
  %4 = load i8*, i8** %aux1, align 8
  %5 = bitcast i8* %4 to %struct.loop_info*
  %ivs2 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %5, i32 0, i32 29
  store %struct.loop_ivs* %ivs2, %struct.loop_ivs** %ivs, align 8
  %6 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations = getelementptr inbounds %struct.loop_info, %struct.loop_info* %6, i32 0, i32 15
  store i64 0, i64* %n_iterations, align 8
  %7 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %initial_value3 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %7, i32 0, i32 7
  store %struct.rtx_def* null, %struct.rtx_def** %initial_value3, align 8
  %8 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %initial_equiv_value = getelementptr inbounds %struct.loop_info, %struct.loop_info* %8, i32 0, i32 10
  store %struct.rtx_def* null, %struct.rtx_def** %initial_equiv_value, align 8
  %9 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %comparison_value4 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %9, i32 0, i32 8
  store %struct.rtx_def* null, %struct.rtx_def** %comparison_value4, align 8
  %10 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value5 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %10, i32 0, i32 9
  store %struct.rtx_def* null, %struct.rtx_def** %final_value5, align 8
  %11 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_equiv_value = getelementptr inbounds %struct.loop_info, %struct.loop_info* %11, i32 0, i32 11
  store %struct.rtx_def* null, %struct.rtx_def** %final_equiv_value, align 8
  %12 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment6 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %12, i32 0, i32 13
  store %struct.rtx_def* null, %struct.rtx_def** %increment6, align 8
  %13 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %iteration_var7 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %13, i32 0, i32 12
  store %struct.rtx_def* null, %struct.rtx_def** %iteration_var7, align 8
  %14 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %unroll_number = getelementptr inbounds %struct.loop_info, %struct.loop_info* %14, i32 0, i32 16
  store i32 1, i32* %unroll_number, align 4
  %15 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %iv = getelementptr inbounds %struct.loop_info, %struct.loop_info* %15, i32 0, i32 18
  store %struct.iv_class* null, %struct.iv_class** %iv, align 8
  %16 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end = getelementptr inbounds %struct.loop, %struct.loop* %16, i32 0, i32 27
  %17 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %last_loop_insn, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load = load i32, i32* %20, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 33
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool = icmp ne %struct._IO_FILE* %21, null
  br i1 %tobool, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  store i64 0, i64* %retval
  br label %return

if.end.9:                                         ; preds = %entry
  %23 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 7
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %25 = load i32, i32* %rtint, align 4
  %cmp15 = icmp sgt i32 %25, 1
  br i1 %cmp15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.end.9
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool17 = icmp ne %struct._IO_FILE* %26, null
  br i1 %tobool17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %if.then.16
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.18, %if.then.16
  store i64 0, i64* %retval
  br label %return

if.end.21:                                        ; preds = %if.end.9
  %28 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %top = getelementptr inbounds %struct.loop, %struct.loop* %28, i32 0, i32 28
  %29 = load %struct.rtx_def*, %struct.rtx_def** %top, align 8
  %tobool22 = icmp ne %struct.rtx_def* %29, null
  br i1 %tobool22, label %land.lhs.true, label %if.end.128

land.lhs.true:                                    ; preds = %if.end.21
  %30 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %cont = getelementptr inbounds %struct.loop, %struct.loop* %30, i32 0, i32 24
  %31 = load %struct.rtx_def*, %struct.rtx_def** %cont, align 8
  %tobool23 = icmp ne %struct.rtx_def* %31, null
  br i1 %tobool23, label %if.then.24, label %if.end.128

if.then.24:                                       ; preds = %land.lhs.true
  %32 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %temp, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.24
  %34 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load28 = load i32, i32* %35, align 8
  %bf.clear29 = and i32 %bf.load28, 65535
  %cmp30 = icmp eq i32 %bf.clear29, 33
  br i1 %cmp30, label %if.then.31, label %if.end.122

if.then.31:                                       ; preds = %do.body
  %36 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 7
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %cmp35 = icmp eq %struct.rtx_def* %37, null
  br i1 %cmp35, label %if.then.36, label %if.end.41

if.then.36:                                       ; preds = %if.then.31
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool37 = icmp ne %struct._IO_FILE* %38, null
  br i1 %tobool37, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.then.36
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.38, i32 0, i32 0))
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.then.36
  store i64 0, i64* %retval
  br label %return

if.end.41:                                        ; preds = %if.then.31
  %40 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 7
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtint47 = bitcast %union.rtunion_def* %arrayidx46 to i32*
  %42 = load i32, i32* %rtint47, align 4
  %43 = load i32, i32* @max_uid_for_loop, align 4
  %cmp48 = icmp slt i32 %42, %43
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.121

land.lhs.true.49:                                 ; preds = %if.end.41
  %44 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 7
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtint55 = bitcast %union.rtunion_def* %arrayidx54 to i32*
  %46 = load i32, i32* %rtint55, align 4
  %47 = load i32, i32* @max_uid_for_loop, align 4
  %cmp56 = icmp slt i32 %46, %47
  br i1 %cmp56, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true.49
  %48 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 7
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtint62 = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %50 = load i32, i32* %rtint62, align 4
  %idxprom = sext i32 %50 to i64
  %51 = load i32*, i32** @uid_luid, align 8
  %arrayidx63 = getelementptr inbounds i32, i32* %51, i64 %idxprom
  %52 = load i32, i32* %arrayidx63, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.49
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 3601, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.loop_iterations, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %53, %cond.true
  %cond = phi i32 [ %52, %cond.true ], [ -1, %53 ]
  %54 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %top64 = getelementptr inbounds %struct.loop, %struct.loop* %54, i32 0, i32 28
  %55 = load %struct.rtx_def*, %struct.rtx_def** %top64, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtint67 = bitcast %union.rtunion_def* %arrayidx66 to i32*
  %56 = load i32, i32* %rtint67, align 4
  %57 = load i32, i32* @max_uid_for_loop, align 4
  %cmp68 = icmp slt i32 %56, %57
  br i1 %cmp68, label %cond.true.69, label %cond.false.76

cond.true.69:                                     ; preds = %cond.end
  %58 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %top70 = getelementptr inbounds %struct.loop, %struct.loop* %58, i32 0, i32 28
  %59 = load %struct.rtx_def*, %struct.rtx_def** %top70, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 0
  %rtint73 = bitcast %union.rtunion_def* %arrayidx72 to i32*
  %60 = load i32, i32* %rtint73, align 4
  %idxprom74 = sext i32 %60 to i64
  %61 = load i32*, i32** @uid_luid, align 8
  %arrayidx75 = getelementptr inbounds i32, i32* %61, i64 %idxprom74
  %62 = load i32, i32* %arrayidx75, align 4
  br label %cond.end.77

cond.false.76:                                    ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 3601, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.loop_iterations, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.77

cond.end.77:                                      ; preds = %63, %cond.true.69
  %cond78 = phi i32 [ %62, %cond.true.69 ], [ -1, %63 ]
  %cmp79 = icmp sgt i32 %cond, %cond78
  br i1 %cmp79, label %land.lhs.true.80, label %if.end.121

land.lhs.true.80:                                 ; preds = %cond.end.77
  %64 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 7
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtint86 = bitcast %union.rtunion_def* %arrayidx85 to i32*
  %66 = load i32, i32* %rtint86, align 4
  %67 = load i32, i32* @max_uid_for_loop, align 4
  %cmp87 = icmp slt i32 %66, %67
  br i1 %cmp87, label %cond.true.88, label %cond.false.97

cond.true.88:                                     ; preds = %land.lhs.true.80
  %68 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 7
  %rtx91 = bitcast %union.rtunion_def* %arrayidx90 to %struct.rtx_def**
  %69 = load %struct.rtx_def*, %struct.rtx_def** %rtx91, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 0
  %rtint94 = bitcast %union.rtunion_def* %arrayidx93 to i32*
  %70 = load i32, i32* %rtint94, align 4
  %idxprom95 = sext i32 %70 to i64
  %71 = load i32*, i32** @uid_luid, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %71, i64 %idxprom95
  %72 = load i32, i32* %arrayidx96, align 4
  br label %cond.end.98

cond.false.97:                                    ; preds = %land.lhs.true.80
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 3602, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.loop_iterations, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.98

cond.end.98:                                      ; preds = %73, %cond.true.88
  %cond99 = phi i32 [ %72, %cond.true.88 ], [ -1, %73 ]
  %74 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %cont100 = getelementptr inbounds %struct.loop, %struct.loop* %74, i32 0, i32 24
  %75 = load %struct.rtx_def*, %struct.rtx_def** %cont100, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtint103 = bitcast %union.rtunion_def* %arrayidx102 to i32*
  %76 = load i32, i32* %rtint103, align 4
  %77 = load i32, i32* @max_uid_for_loop, align 4
  %cmp104 = icmp slt i32 %76, %77
  br i1 %cmp104, label %cond.true.105, label %cond.false.112

cond.true.105:                                    ; preds = %cond.end.98
  %78 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %cont106 = getelementptr inbounds %struct.loop, %struct.loop* %78, i32 0, i32 24
  %79 = load %struct.rtx_def*, %struct.rtx_def** %cont106, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 0
  %rtint109 = bitcast %union.rtunion_def* %arrayidx108 to i32*
  %80 = load i32, i32* %rtint109, align 4
  %idxprom110 = sext i32 %80 to i64
  %81 = load i32*, i32** @uid_luid, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %81, i64 %idxprom110
  %82 = load i32, i32* %arrayidx111, align 4
  br label %cond.end.113

cond.false.112:                                   ; preds = %cond.end.98
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 3602, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.loop_iterations, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end.113

cond.end.113:                                     ; preds = %83, %cond.true.105
  %cond114 = phi i32 [ %82, %cond.true.105 ], [ -1, %83 ]
  %cmp115 = icmp slt i32 %cond99, %cond114
  br i1 %cmp115, label %if.then.116, label %if.end.121

if.then.116:                                      ; preds = %cond.end.113
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool117 = icmp ne %struct._IO_FILE* %84, null
  br i1 %tobool117, label %if.then.118, label %if.end.120

if.then.118:                                      ; preds = %if.then.116
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call119 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.37, i32 0, i32 0))
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.118, %if.then.116
  store i64 0, i64* %retval
  br label %return

if.end.121:                                       ; preds = %cond.end.113, %cond.end.77, %if.end.41
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.122
  %86 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 1
  %rtx125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtx_def**
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rtx125, align 8
  store %struct.rtx_def* %87, %struct.rtx_def** %temp, align 8
  %88 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %cont126 = getelementptr inbounds %struct.loop, %struct.loop* %88, i32 0, i32 24
  %89 = load %struct.rtx_def*, %struct.rtx_def** %cont126, align 8
  %cmp127 = icmp ne %struct.rtx_def* %87, %89
  br i1 %cmp127, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %if.end.128

if.end.128:                                       ; preds = %do.end, %land.lhs.true, %if.end.21
  %90 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %last_loop_insn, align 8
  %call129 = call %struct.rtx_def* @get_condition_for_loop(%struct.loop* %90, %struct.rtx_def* %91)
  store %struct.rtx_def* %call129, %struct.rtx_def** %comparison, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %comparison, align 8
  %cmp130 = icmp eq %struct.rtx_def* %92, null
  br i1 %cmp130, label %if.then.131, label %if.end.136

if.then.131:                                      ; preds = %if.end.128
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool132 = icmp ne %struct._IO_FILE* %93, null
  br i1 %tobool132, label %if.then.133, label %if.end.135

if.then.133:                                      ; preds = %if.then.131
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.135

if.end.135:                                       ; preds = %if.then.133, %if.then.131
  store i64 0, i64* %retval
  br label %return

if.end.136:                                       ; preds = %if.end.128
  %95 = load %struct.rtx_def*, %struct.rtx_def** %comparison, align 8
  %96 = bitcast %struct.rtx_def* %95 to i32*
  %bf.load137 = load i32, i32* %96, align 8
  %bf.clear138 = and i32 %bf.load137, 65535
  store i32 %bf.clear138, i32* %comparison_code, align 4
  %97 = load %struct.rtx_def*, %struct.rtx_def** %comparison, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 0
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %98 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  store %struct.rtx_def* %98, %struct.rtx_def** %iteration_var, align 8
  %99 = load %struct.rtx_def*, %struct.rtx_def** %comparison, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 1
  %rtx144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.rtx_def**
  %100 = load %struct.rtx_def*, %struct.rtx_def** %rtx144, align 8
  store %struct.rtx_def* %100, %struct.rtx_def** %comparison_value, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %102 = bitcast %struct.rtx_def* %101 to i32*
  %bf.load145 = load i32, i32* %102, align 8
  %bf.clear146 = and i32 %bf.load145, 65535
  %cmp147 = icmp ne i32 %bf.clear146, 61
  br i1 %cmp147, label %if.then.148, label %if.end.153

if.then.148:                                      ; preds = %if.end.136
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool149 = icmp ne %struct._IO_FILE* %103, null
  br i1 %tobool149, label %if.then.150, label %if.end.152

if.then.150:                                      ; preds = %if.then.148
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %104, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.150, %if.then.148
  store i64 0, i64* %retval
  br label %return

if.end.153:                                       ; preds = %if.end.136
  %105 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %105, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx155 to i32*
  %106 = load i32, i32* %rtuint, align 4
  %107 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %n_regs = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %107, i32 0, i32 1
  %108 = load i32, i32* %n_regs, align 4
  %cmp156 = icmp uge i32 %106, %108
  br i1 %cmp156, label %land.lhs.true.157, label %if.end.162

land.lhs.true.157:                                ; preds = %if.end.153
  %109 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %110 = bitcast %struct.rtx_def* %109 to i32*
  %bf.load158 = load i32, i32* %110, align 8
  %bf.lshr = lshr i32 %bf.load158, 27
  %bf.clear159 = and i32 %bf.lshr, 1
  %tobool160 = icmp ne i32 %bf.clear159, 0
  br i1 %tobool160, label %if.end.162, label %if.then.161

if.then.161:                                      ; preds = %land.lhs.true.157
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 3651, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.loop_iterations, i32 0, i32 0)) #5
  unreachable

if.end.162:                                       ; preds = %land.lhs.true.157, %if.end.153
  store %struct.rtx_def* null, %struct.rtx_def** %initial_value, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %increment, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 0
  %rtuint165 = bitcast %union.rtunion_def* %arrayidx164 to i32*
  %112 = load i32, i32* %rtuint165, align 4
  %113 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %n_regs166 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %113, i32 0, i32 1
  %114 = load i32, i32* %n_regs166, align 4
  %cmp167 = icmp uge i32 %112, %114
  br i1 %cmp167, label %if.then.168, label %if.else

if.then.168:                                      ; preds = %if.end.162
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool169 = icmp ne %struct._IO_FILE* %115, null
  br i1 %tobool169, label %if.then.170, label %if.end.172

if.then.170:                                      ; preds = %if.then.168
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %116, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.41, i32 0, i32 0))
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.170, %if.then.168
  store i64 0, i64* %retval
  br label %return

if.else:                                          ; preds = %if.end.162
  %117 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %118 = bitcast %struct.rtx_def* %117 to i32*
  %bf.load173 = load i32, i32* %118, align 8
  %bf.lshr174 = lshr i32 %bf.load173, 16
  %bf.clear175 = and i32 %bf.lshr174, 255
  %idxprom176 = sext i32 %bf.clear175 to i64
  %arrayidx177 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom176
  %119 = load i16, i16* %arrayidx177, align 2
  %conv = zext i16 %119 to i32
  %cmp178 = icmp sgt i32 %conv, 64
  br i1 %cmp178, label %if.then.180, label %if.else.185

if.then.180:                                      ; preds = %if.else
  %120 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool181 = icmp ne %struct._IO_FILE* %120, null
  br i1 %tobool181, label %if.then.182, label %if.end.184

if.then.182:                                      ; preds = %if.then.180
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call183 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %121, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.42, i32 0, i32 0))
  br label %if.end.184

if.end.184:                                       ; preds = %if.then.182, %if.then.180
  store i64 0, i64* %retval
  br label %return

if.else.185:                                      ; preds = %if.else
  %122 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %123 = bitcast %struct.rtx_def* %122 to i32*
  %bf.load186 = load i32, i32* %123, align 8
  %bf.lshr187 = lshr i32 %bf.load186, 16
  %bf.clear188 = and i32 %bf.lshr187, 255
  %idxprom189 = sext i32 %bf.clear188 to i64
  %arrayidx190 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom189
  %124 = load i32, i32* %arrayidx190, align 4
  %cmp191 = icmp ne i32 %124, 1
  br i1 %cmp191, label %if.then.193, label %if.else.198

if.then.193:                                      ; preds = %if.else.185
  %125 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool194 = icmp ne %struct._IO_FILE* %125, null
  br i1 %tobool194, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %if.then.193
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call196 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %126, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.43, i32 0, i32 0))
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %if.then.193
  store i64 0, i64* %retval
  br label %return

if.else.198:                                      ; preds = %if.else.185
  %127 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %fld199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %127, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld199, i32 0, i64 0
  %rtuint201 = bitcast %union.rtunion_def* %arrayidx200 to i32*
  %128 = load i32, i32* %rtuint201, align 4
  %idxprom202 = zext i32 %128 to i64
  %129 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %129, i32 0, i32 0
  %130 = load %struct.iv*, %struct.iv** %regs, align 8
  %arrayidx203 = getelementptr inbounds %struct.iv, %struct.iv* %130, i64 %idxprom202
  %type = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx203, i32 0, i32 0
  %131 = load i32, i32* %type, align 4
  %cmp204 = icmp eq i32 %131, 1
  br i1 %cmp204, label %if.then.206, label %if.else.240

if.then.206:                                      ; preds = %if.else.198
  %132 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %fld207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %132, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld207, i32 0, i64 0
  %rtuint209 = bitcast %union.rtunion_def* %arrayidx208 to i32*
  %133 = load i32, i32* %rtuint209, align 4
  %134 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %n_regs210 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %134, i32 0, i32 1
  %135 = load i32, i32* %n_regs210, align 4
  %cmp211 = icmp uge i32 %133, %135
  br i1 %cmp211, label %if.then.213, label %if.end.214

if.then.213:                                      ; preds = %if.then.206
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 3696, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.loop_iterations, i32 0, i32 0)) #5
  unreachable

if.end.214:                                       ; preds = %if.then.206
  %136 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 0
  %rtuint217 = bitcast %union.rtunion_def* %arrayidx216 to i32*
  %137 = load i32, i32* %rtuint217, align 4
  %idxprom218 = zext i32 %137 to i64
  %138 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs219 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %138, i32 0, i32 0
  %139 = load %struct.iv*, %struct.iv** %regs219, align 8
  %arrayidx220 = getelementptr inbounds %struct.iv, %struct.iv* %139, i64 %idxprom218
  %iv221 = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx220, i32 0, i32 1
  %class = bitcast %union.anon* %iv221 to %struct.iv_class**
  %140 = load %struct.iv_class*, %struct.iv_class** %class, align 8
  store %struct.iv_class* %140, %struct.iv_class** %bl, align 8
  %141 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %initial_value222 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %141, i32 0, i32 6
  %142 = load %struct.rtx_def*, %struct.rtx_def** %initial_value222, align 8
  store %struct.rtx_def* %142, %struct.rtx_def** %initial_value, align 8
  %143 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %143, i32 0, i32 2
  %144 = load %struct.induction*, %struct.induction** %biv, align 8
  %always_executed = getelementptr inbounds %struct.induction, %struct.induction* %144, i32 0, i32 13
  %bf.load223 = load i16, i16* %always_executed, align 4
  %bf.lshr224 = lshr i16 %bf.load223, 4
  %bf.clear225 = and i16 %bf.lshr224, 1
  %bf.cast = zext i16 %bf.clear225 to i32
  %tobool226 = icmp ne i32 %bf.cast, 0
  br i1 %tobool226, label %lor.lhs.false, label %if.then.233

lor.lhs.false:                                    ; preds = %if.end.214
  %145 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv227 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %145, i32 0, i32 2
  %146 = load %struct.induction*, %struct.induction** %biv227, align 8
  %maybe_multiple = getelementptr inbounds %struct.induction, %struct.induction* %146, i32 0, i32 13
  %bf.load228 = load i16, i16* %maybe_multiple, align 4
  %bf.lshr229 = lshr i16 %bf.load228, 5
  %bf.clear230 = and i16 %bf.lshr229, 1
  %bf.cast231 = zext i16 %bf.clear230 to i32
  %tobool232 = icmp ne i32 %bf.cast231, 0
  br i1 %tobool232, label %if.then.233, label %if.end.238

if.then.233:                                      ; preds = %lor.lhs.false, %if.end.214
  %147 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool234 = icmp ne %struct._IO_FILE* %147, null
  br i1 %tobool234, label %if.then.235, label %if.end.237

if.then.235:                                      ; preds = %if.then.233
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call236 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %148, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.44, i32 0, i32 0))
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.235, %if.then.233
  store i64 0, i64* %retval
  br label %return

if.end.238:                                       ; preds = %lor.lhs.false
  %149 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %call239 = call %struct.rtx_def* @biv_total_increment(%struct.iv_class* %149)
  store %struct.rtx_def* %call239, %struct.rtx_def** %increment, align 8
  br label %if.end.341

if.else.240:                                      ; preds = %if.else.198
  %150 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %fld241 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %150, i32 0, i32 1
  %arrayidx242 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld241, i32 0, i64 0
  %rtuint243 = bitcast %union.rtunion_def* %arrayidx242 to i32*
  %151 = load i32, i32* %rtuint243, align 4
  %idxprom244 = zext i32 %151 to i64
  %152 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs245 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %152, i32 0, i32 0
  %153 = load %struct.iv*, %struct.iv** %regs245, align 8
  %arrayidx246 = getelementptr inbounds %struct.iv, %struct.iv* %153, i64 %idxprom244
  %type247 = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx246, i32 0, i32 0
  %154 = load i32, i32* %type247, align 4
  %cmp248 = icmp eq i32 %154, 3
  br i1 %cmp248, label %if.then.250, label %if.else.335

if.then.250:                                      ; preds = %if.else.240
  store i64 0, i64* %offset, align 8
  %155 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %fld251 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %155, i32 0, i32 1
  %arrayidx252 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld251, i32 0, i64 0
  %rtuint253 = bitcast %union.rtunion_def* %arrayidx252 to i32*
  %156 = load i32, i32* %rtuint253, align 4
  %idxprom254 = zext i32 %156 to i64
  %157 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs255 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %157, i32 0, i32 0
  %158 = load %struct.iv*, %struct.iv** %regs255, align 8
  %arrayidx256 = getelementptr inbounds %struct.iv, %struct.iv* %158, i64 %idxprom254
  %iv257 = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx256, i32 0, i32 1
  %info = bitcast %union.anon* %iv257 to %struct.induction**
  %159 = load %struct.induction*, %struct.induction** %info, align 8
  store %struct.induction* %159, %struct.induction** %v, align 8
  %160 = load %struct.induction*, %struct.induction** %v, align 8
  %src_reg = getelementptr inbounds %struct.induction, %struct.induction* %160, i32 0, i32 2
  %161 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %fld258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld258, i32 0, i64 0
  %rtuint260 = bitcast %union.rtunion_def* %arrayidx259 to i32*
  %162 = load i32, i32* %rtuint260, align 4
  %163 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %n_regs261 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %163, i32 0, i32 1
  %164 = load i32, i32* %n_regs261, align 4
  %cmp262 = icmp uge i32 %162, %164
  br i1 %cmp262, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %if.then.250
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 3718, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.loop_iterations, i32 0, i32 0)) #5
  unreachable

if.end.265:                                       ; preds = %if.then.250
  %165 = load %struct.induction*, %struct.induction** %v, align 8
  %always_executed266 = getelementptr inbounds %struct.induction, %struct.induction* %165, i32 0, i32 13
  %bf.load267 = load i16, i16* %always_executed266, align 4
  %bf.lshr268 = lshr i16 %bf.load267, 4
  %bf.clear269 = and i16 %bf.lshr268, 1
  %bf.cast270 = zext i16 %bf.clear269 to i32
  %tobool271 = icmp ne i32 %bf.cast270, 0
  br i1 %tobool271, label %lor.lhs.false.272, label %if.then.279

lor.lhs.false.272:                                ; preds = %if.end.265
  %166 = load %struct.induction*, %struct.induction** %v, align 8
  %maybe_multiple273 = getelementptr inbounds %struct.induction, %struct.induction* %166, i32 0, i32 13
  %bf.load274 = load i16, i16* %maybe_multiple273, align 4
  %bf.lshr275 = lshr i16 %bf.load274, 5
  %bf.clear276 = and i16 %bf.lshr275, 1
  %bf.cast277 = zext i16 %bf.clear276 to i32
  %tobool278 = icmp ne i32 %bf.cast277, 0
  br i1 %tobool278, label %if.then.279, label %if.end.284

if.then.279:                                      ; preds = %lor.lhs.false.272, %if.end.265
  %167 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool280 = icmp ne %struct._IO_FILE* %167, null
  br i1 %tobool280, label %if.then.281, label %if.end.283

if.then.281:                                      ; preds = %if.then.279
  %168 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call282 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %168, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.45, i32 0, i32 0))
  br label %if.end.283

if.end.283:                                       ; preds = %if.then.281, %if.then.279
  store i64 0, i64* %retval
  br label %return

if.end.284:                                       ; preds = %lor.lhs.false.272
  %169 = load %struct.induction*, %struct.induction** %v, align 8
  %src_reg285 = getelementptr inbounds %struct.induction, %struct.induction* %169, i32 0, i32 2
  %170 = load %struct.rtx_def*, %struct.rtx_def** %src_reg285, align 8
  %fld286 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %170, i32 0, i32 1
  %arrayidx287 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld286, i32 0, i64 0
  %rtuint288 = bitcast %union.rtunion_def* %arrayidx287 to i32*
  %171 = load i32, i32* %rtuint288, align 4
  %idxprom289 = zext i32 %171 to i64
  %172 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs290 = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %172, i32 0, i32 0
  %173 = load %struct.iv*, %struct.iv** %regs290, align 8
  %arrayidx291 = getelementptr inbounds %struct.iv, %struct.iv* %173, i64 %idxprom289
  %iv292 = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx291, i32 0, i32 1
  %class293 = bitcast %union.anon* %iv292 to %struct.iv_class**
  %174 = load %struct.iv_class*, %struct.iv_class** %class293, align 8
  store %struct.iv_class* %174, %struct.iv_class** %bl, align 8
  %175 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %call294 = call %struct.rtx_def* @biv_total_increment(%struct.iv_class* %175)
  store %struct.rtx_def* %call294, %struct.rtx_def** %increment, align 8
  %176 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %tobool295 = icmp ne %struct.rtx_def* %176, null
  br i1 %tobool295, label %if.then.296, label %if.end.323

if.then.296:                                      ; preds = %if.end.284
  %177 = load %struct.induction*, %struct.induction** %v, align 8
  %mult_val = getelementptr inbounds %struct.induction, %struct.induction* %177, i32 0, i32 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** %mult_val, align 8
  %179 = load %struct.induction*, %struct.induction** %v, align 8
  %180 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %call297 = call %struct.rtx_def* @extend_value_for_giv(%struct.induction* %179, %struct.rtx_def* %180)
  %181 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %182 = load %struct.induction*, %struct.induction** %v, align 8
  %mode = getelementptr inbounds %struct.induction, %struct.induction* %182, i32 0, i32 6
  %183 = load i32, i32* %mode, align 4
  %call298 = call %struct.rtx_def* @fold_rtx_mult_add(%struct.rtx_def* %178, %struct.rtx_def* %call297, %struct.rtx_def* %181, i32 %183)
  store %struct.rtx_def* %call298, %struct.rtx_def** %increment, align 8
  %184 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %biv299 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %184, i32 0, i32 2
  %185 = load %struct.induction*, %struct.induction** %biv299, align 8
  store %struct.induction* %185, %struct.induction** %biv_inc, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.296
  %186 = load %struct.induction*, %struct.induction** %biv_inc, align 8
  %tobool300 = icmp ne %struct.induction* %186, null
  br i1 %tobool300, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %187 = load %struct.induction*, %struct.induction** %v, align 8
  %insn = getelementptr inbounds %struct.induction, %struct.induction* %187, i32 0, i32 0
  %188 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %189 = load %struct.induction*, %struct.induction** %biv_inc, align 8
  %insn301 = getelementptr inbounds %struct.induction, %struct.induction* %189, i32 0, i32 0
  %190 = load %struct.rtx_def*, %struct.rtx_def** %insn301, align 8
  %call302 = call i32 @loop_insn_first_p(%struct.rtx_def* %188, %struct.rtx_def* %190)
  %tobool303 = icmp ne i32 %call302, 0
  br i1 %tobool303, label %if.then.304, label %if.end.322

if.then.304:                                      ; preds = %for.body
  %191 = load %struct.induction*, %struct.induction** %biv_inc, align 8
  %add_val = getelementptr inbounds %struct.induction, %struct.induction* %191, i32 0, i32 9
  %192 = load %struct.rtx_def*, %struct.rtx_def** %add_val, align 8
  %193 = bitcast %struct.rtx_def* %192 to i32*
  %bf.load305 = load i32, i32* %193, align 8
  %bf.clear306 = and i32 %bf.load305, 65535
  %cmp307 = icmp eq i32 %bf.clear306, 61
  br i1 %cmp307, label %if.then.309, label %if.end.318

if.then.309:                                      ; preds = %if.then.304
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool310 = icmp ne %struct._IO_FILE* %194, null
  br i1 %tobool310, label %if.then.311, label %if.end.317

if.then.311:                                      ; preds = %if.then.309
  %195 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %196 = load %struct.induction*, %struct.induction** %biv_inc, align 8
  %add_val312 = getelementptr inbounds %struct.induction, %struct.induction* %196, i32 0, i32 9
  %197 = load %struct.rtx_def*, %struct.rtx_def** %add_val312, align 8
  %fld313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %197, i32 0, i32 1
  %arrayidx314 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld313, i32 0, i64 0
  %rtuint315 = bitcast %union.rtunion_def* %arrayidx314 to i32*
  %198 = load i32, i32* %rtuint315, align 4
  %call316 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %195, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.46, i32 0, i32 0), i32 %198)
  br label %if.end.317

if.end.317:                                       ; preds = %if.then.311, %if.then.309
  store i64 0, i64* %retval
  br label %return

if.end.318:                                       ; preds = %if.then.304
  %199 = load %struct.induction*, %struct.induction** %biv_inc, align 8
  %add_val319 = getelementptr inbounds %struct.induction, %struct.induction* %199, i32 0, i32 9
  %200 = load %struct.rtx_def*, %struct.rtx_def** %add_val319, align 8
  %fld320 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %200, i32 0, i32 1
  %arrayidx321 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld320, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx321 to i64*
  %201 = load i64, i64* %rtwint, align 8
  %202 = load i64, i64* %offset, align 8
  %sub = sub nsw i64 %202, %201
  store i64 %sub, i64* %offset, align 8
  br label %if.end.322

if.end.322:                                       ; preds = %if.end.318, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.322
  %203 = load %struct.induction*, %struct.induction** %biv_inc, align 8
  %next_iv = getelementptr inbounds %struct.induction, %struct.induction* %203, i32 0, i32 17
  %204 = load %struct.induction*, %struct.induction** %next_iv, align 8
  store %struct.induction* %204, %struct.induction** %biv_inc, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.323

if.end.323:                                       ; preds = %for.end, %if.end.284
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool324 = icmp ne %struct._IO_FILE* %205, null
  br i1 %tobool324, label %if.then.325, label %if.end.327

if.then.325:                                      ; preds = %if.end.323
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %207 = load i64, i64* %offset, align 8
  %call326 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %206, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.47, i32 0, i32 0), i64 %207)
  br label %if.end.327

if.end.327:                                       ; preds = %if.then.325, %if.end.323
  %208 = load %struct.induction*, %struct.induction** %v, align 8
  %209 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %initial_value328 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %209, i32 0, i32 6
  %210 = load %struct.rtx_def*, %struct.rtx_def** %initial_value328, align 8
  %call329 = call %struct.rtx_def* @extend_value_for_giv(%struct.induction* %208, %struct.rtx_def* %210)
  store %struct.rtx_def* %call329, %struct.rtx_def** %biv_initial_value, align 8
  %211 = load %struct.induction*, %struct.induction** %v, align 8
  %mult_val330 = getelementptr inbounds %struct.induction, %struct.induction* %211, i32 0, i32 8
  %212 = load %struct.rtx_def*, %struct.rtx_def** %mult_val330, align 8
  %213 = load %struct.rtx_def*, %struct.rtx_def** %biv_initial_value, align 8
  %214 = load i64, i64* %offset, align 8
  %call331 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %213, i64 %214)
  %215 = load %struct.induction*, %struct.induction** %v, align 8
  %add_val332 = getelementptr inbounds %struct.induction, %struct.induction* %215, i32 0, i32 9
  %216 = load %struct.rtx_def*, %struct.rtx_def** %add_val332, align 8
  %217 = load %struct.induction*, %struct.induction** %v, align 8
  %mode333 = getelementptr inbounds %struct.induction, %struct.induction* %217, i32 0, i32 6
  %218 = load i32, i32* %mode333, align 4
  %call334 = call %struct.rtx_def* @fold_rtx_mult_add(%struct.rtx_def* %212, %struct.rtx_def* %call331, %struct.rtx_def* %216, i32 %218)
  store %struct.rtx_def* %call334, %struct.rtx_def** %initial_value, align 8
  br label %if.end.340

if.else.335:                                      ; preds = %if.else.240
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool336 = icmp ne %struct._IO_FILE* %219, null
  br i1 %tobool336, label %if.then.337, label %if.end.339

if.then.337:                                      ; preds = %if.else.335
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call338 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.339

if.end.339:                                       ; preds = %if.then.337, %if.else.335
  store i64 0, i64* %retval
  br label %return

if.end.340:                                       ; preds = %if.end.327
  br label %if.end.341

if.end.341:                                       ; preds = %if.end.340, %if.end.238
  br label %if.end.342

if.end.342:                                       ; preds = %if.end.341
  br label %if.end.343

if.end.343:                                       ; preds = %if.end.342
  br label %if.end.344

if.end.344:                                       ; preds = %if.end.343
  %221 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %cmp345 = icmp eq %struct.rtx_def* %221, null
  br i1 %cmp345, label %if.then.347, label %if.end.348

if.then.347:                                      ; preds = %if.end.344
  store i64 0, i64* %retval
  br label %return

if.end.348:                                       ; preds = %if.end.344
  store i32 0, i32* %unsigned_p, align 4
  store i32 0, i32* %off_by_one, align 4
  %222 = load i32, i32* %comparison_code, align 4
  switch i32 %222, label %sw.default [
    i32 110, label %sw.bb
    i32 106, label %sw.bb.349
    i32 108, label %sw.bb.350
    i32 104, label %sw.bb.351
    i32 103, label %sw.bb.352
    i32 111, label %sw.bb.353
    i32 107, label %sw.bb.354
    i32 109, label %sw.bb.355
    i32 105, label %sw.bb.356
    i32 102, label %sw.bb.357
  ]

sw.bb:                                            ; preds = %if.end.348
  store i32 1, i32* %unsigned_p, align 4
  br label %sw.bb.349

sw.bb.349:                                        ; preds = %if.end.348, %sw.bb
  store i32 1, i32* %compare_dir, align 4
  store i32 1, i32* %off_by_one, align 4
  br label %sw.epilog

sw.bb.350:                                        ; preds = %if.end.348
  store i32 1, i32* %unsigned_p, align 4
  br label %sw.bb.351

sw.bb.351:                                        ; preds = %if.end.348, %sw.bb.350
  store i32 -1, i32* %compare_dir, align 4
  store i32 -1, i32* %off_by_one, align 4
  br label %sw.epilog

sw.bb.352:                                        ; preds = %if.end.348
  store i32 0, i32* %compare_dir, align 4
  br label %sw.epilog

sw.bb.353:                                        ; preds = %if.end.348
  store i32 1, i32* %unsigned_p, align 4
  br label %sw.bb.354

sw.bb.354:                                        ; preds = %if.end.348, %sw.bb.353
  store i32 1, i32* %compare_dir, align 4
  br label %sw.epilog

sw.bb.355:                                        ; preds = %if.end.348
  store i32 1, i32* %unsigned_p, align 4
  br label %sw.bb.356

sw.bb.356:                                        ; preds = %if.end.348, %sw.bb.355
  store i32 -1, i32* %compare_dir, align 4
  br label %sw.bb.357

sw.bb.357:                                        ; preds = %if.end.348, %sw.bb.356
  store i32 0, i32* %compare_dir, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.348
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 3820, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.loop_iterations, i32 0, i32 0)) #5
  unreachable

sw.epilog:                                        ; preds = %sw.bb.357, %sw.bb.354, %sw.bb.352, %sw.bb.351, %sw.bb.349
  %223 = load %struct.rtx_def*, %struct.rtx_def** %comparison_value, align 8
  store %struct.rtx_def* %223, %struct.rtx_def** %final_value, align 8
  %224 = load %struct.rtx_def*, %struct.rtx_def** %comparison_value, align 8
  %225 = bitcast %struct.rtx_def* %224 to i32*
  %bf.load358 = load i32, i32* %225, align 8
  %bf.clear359 = and i32 %bf.load358, 65535
  %cmp360 = icmp eq i32 %bf.clear359, 61
  br i1 %cmp360, label %land.lhs.true.362, label %if.end.371

land.lhs.true.362:                                ; preds = %sw.epilog
  %226 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %227 = load %struct.rtx_def*, %struct.rtx_def** %comparison_value, align 8
  %call363 = call i32 @loop_invariant_p(%struct.loop* %226, %struct.rtx_def* %227)
  %tobool364 = icmp ne i32 %call363, 0
  br i1 %tobool364, label %if.then.365, label %if.end.371

if.then.365:                                      ; preds = %land.lhs.true.362
  %228 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %229 = load %struct.rtx_def*, %struct.rtx_def** %comparison_value, align 8
  %call366 = call %struct.rtx_def* @loop_find_equiv_value(%struct.loop* %228, %struct.rtx_def* %229)
  store %struct.rtx_def* %call366, %struct.rtx_def** %final_value, align 8
  %230 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %231 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %call367 = call i32 @loop_invariant_p(%struct.loop* %230, %struct.rtx_def* %231)
  %tobool368 = icmp ne i32 %call367, 0
  br i1 %tobool368, label %if.end.370, label %if.then.369

if.then.369:                                      ; preds = %if.then.365
  %232 = load %struct.rtx_def*, %struct.rtx_def** %comparison_value, align 8
  store %struct.rtx_def* %232, %struct.rtx_def** %final_value, align 8
  br label %if.end.370

if.end.370:                                       ; preds = %if.then.369, %if.then.365
  br label %if.end.371

if.end.371:                                       ; preds = %if.end.370, %land.lhs.true.362, %sw.epilog
  %233 = load i32, i32* %off_by_one, align 4
  %tobool372 = icmp ne i32 %233, 0
  br i1 %tobool372, label %if.then.373, label %if.end.376

if.then.373:                                      ; preds = %if.end.371
  %234 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %235 = load i32, i32* %off_by_one, align 4
  %conv374 = sext i32 %235 to i64
  %call375 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %234, i64 %conv374)
  store %struct.rtx_def* %call375, %struct.rtx_def** %final_value, align 8
  br label %if.end.376

if.end.376:                                       ; preds = %if.then.373, %if.end.371
  %236 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %237 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %initial_value377 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %237, i32 0, i32 7
  store %struct.rtx_def* %236, %struct.rtx_def** %initial_value377, align 8
  %238 = load %struct.rtx_def*, %struct.rtx_def** %comparison_value, align 8
  %239 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %comparison_value378 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %239, i32 0, i32 8
  store %struct.rtx_def* %238, %struct.rtx_def** %comparison_value378, align 8
  %240 = load %struct.rtx_def*, %struct.rtx_def** %comparison_value, align 8
  %241 = load i32, i32* %off_by_one, align 4
  %conv379 = sext i32 %241 to i64
  %call380 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %240, i64 %conv379)
  %242 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value381 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %242, i32 0, i32 9
  store %struct.rtx_def* %call380, %struct.rtx_def** %final_value381, align 8
  %243 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %244 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment382 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %244, i32 0, i32 13
  store %struct.rtx_def* %243, %struct.rtx_def** %increment382, align 8
  %245 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %246 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %iteration_var383 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %246, i32 0, i32 12
  store %struct.rtx_def* %245, %struct.rtx_def** %iteration_var383, align 8
  %247 = load i32, i32* %comparison_code, align 4
  %248 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %comparison_code384 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %248, i32 0, i32 14
  store i32 %247, i32* %comparison_code384, align 4
  %249 = load %struct.iv_class*, %struct.iv_class** %bl, align 8
  %250 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %iv385 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %250, i32 0, i32 18
  store %struct.iv_class* %249, %struct.iv_class** %iv385, align 8
  %251 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %252 = bitcast %struct.rtx_def* %251 to i32*
  %bf.load386 = load i32, i32* %252, align 8
  %bf.clear387 = and i32 %bf.load386, 65535
  %cmp388 = icmp eq i32 %bf.clear387, 61
  br i1 %cmp388, label %if.then.390, label %if.end.487

if.then.390:                                      ; preds = %if.end.376
  %253 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  store %struct.rtx_def* %253, %struct.rtx_def** %reg1, align 8
  %254 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %255 = bitcast %struct.rtx_def* %254 to i32*
  %bf.load391 = load i32, i32* %255, align 8
  %bf.clear392 = and i32 %bf.load391, 65535
  %cmp393 = icmp eq i32 %bf.clear392, 75
  br i1 %cmp393, label %if.then.395, label %if.else.402

if.then.395:                                      ; preds = %if.then.390
  %256 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %fld396 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %256, i32 0, i32 1
  %arrayidx397 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld396, i32 0, i64 0
  %rtx398 = bitcast %union.rtunion_def* %arrayidx397 to %struct.rtx_def**
  %257 = load %struct.rtx_def*, %struct.rtx_def** %rtx398, align 8
  store %struct.rtx_def* %257, %struct.rtx_def** %reg2, align 8
  %258 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %fld399 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %258, i32 0, i32 1
  %arrayidx400 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld399, i32 0, i64 1
  %rtx401 = bitcast %union.rtunion_def* %arrayidx400 to %struct.rtx_def**
  %259 = load %struct.rtx_def*, %struct.rtx_def** %rtx401, align 8
  store %struct.rtx_def* %259, %struct.rtx_def** %const2, align 8
  br label %if.end.403

if.else.402:                                      ; preds = %if.then.390
  %260 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  store %struct.rtx_def* %260, %struct.rtx_def** %reg2, align 8
  %261 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %261, %struct.rtx_def** %const2, align 8
  br label %if.end.403

if.end.403:                                       ; preds = %if.else.402, %if.then.395
  %262 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  %263 = bitcast %struct.rtx_def* %262 to i32*
  %bf.load404 = load i32, i32* %263, align 8
  %bf.clear405 = and i32 %bf.load404, 65535
  %cmp406 = icmp eq i32 %bf.clear405, 61
  br i1 %cmp406, label %land.lhs.true.408, label %if.else.439

land.lhs.true.408:                                ; preds = %if.end.403
  %264 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  %265 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8
  %cmp409 = icmp ne %struct.rtx_def* %264, %265
  br i1 %cmp409, label %if.then.411, label %if.else.439

if.then.411:                                      ; preds = %land.lhs.true.408
  %266 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %267 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8
  %call413 = call %struct.rtx_def* @loop_find_equiv_value(%struct.loop* %266, %struct.rtx_def* %267)
  store %struct.rtx_def* %call413, %struct.rtx_def** %temp412, align 8
  %268 = load %struct.rtx_def*, %struct.rtx_def** %temp412, align 8
  %269 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  %call414 = call %struct.rtx_def* @find_common_reg_term(%struct.rtx_def* %268, %struct.rtx_def* %269)
  %tobool415 = icmp ne %struct.rtx_def* %call414, null
  br i1 %tobool415, label %if.then.416, label %if.else.417

if.then.416:                                      ; preds = %if.then.411
  %270 = load %struct.rtx_def*, %struct.rtx_def** %temp412, align 8
  store %struct.rtx_def* %270, %struct.rtx_def** %initial_value, align 8
  br label %if.end.438

if.else.417:                                      ; preds = %if.then.411
  %271 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %272 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  %call418 = call %struct.rtx_def* @loop_find_equiv_value(%struct.loop* %271, %struct.rtx_def* %272)
  store %struct.rtx_def* %call418, %struct.rtx_def** %temp412, align 8
  %273 = load %struct.rtx_def*, %struct.rtx_def** %temp412, align 8
  %274 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %iteration_var419 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %274, i32 0, i32 12
  %275 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var419, align 8
  %cmp420 = icmp eq %struct.rtx_def* %273, %275
  br i1 %cmp420, label %if.then.422, label %if.end.423

if.then.422:                                      ; preds = %if.else.417
  %276 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  store %struct.rtx_def* %276, %struct.rtx_def** %temp412, align 8
  br label %if.end.423

if.end.423:                                       ; preds = %if.then.422, %if.else.417
  %277 = load %struct.rtx_def*, %struct.rtx_def** %temp412, align 8
  %278 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8
  %cmp424 = icmp eq %struct.rtx_def* %277, %278
  br i1 %cmp424, label %if.then.426, label %if.end.437

if.then.426:                                      ; preds = %if.end.423
  %279 = load %struct.rtx_def*, %struct.rtx_def** %const2, align 8
  %280 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp427 = icmp eq %struct.rtx_def* %279, %280
  br i1 %cmp427, label %cond.true.429, label %cond.false.430

cond.true.429:                                    ; preds = %if.then.426
  %281 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8
  br label %cond.end.435

cond.false.430:                                   ; preds = %if.then.426
  %282 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8
  %283 = bitcast %struct.rtx_def* %282 to i32*
  %bf.load431 = load i32, i32* %283, align 8
  %bf.lshr432 = lshr i32 %bf.load431, 16
  %bf.clear433 = and i32 %bf.lshr432, 255
  %284 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8
  %285 = load %struct.rtx_def*, %struct.rtx_def** %const2, align 8
  %call434 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 75, i32 %bf.clear433, %struct.rtx_def* %284, %struct.rtx_def* %285)
  br label %cond.end.435

cond.end.435:                                     ; preds = %cond.false.430, %cond.true.429
  %cond436 = phi %struct.rtx_def* [ %281, %cond.true.429 ], [ %call434, %cond.false.430 ]
  store %struct.rtx_def* %cond436, %struct.rtx_def** %final_value, align 8
  br label %if.end.437

if.end.437:                                       ; preds = %cond.end.435, %if.end.423
  br label %if.end.438

if.end.438:                                       ; preds = %if.end.437, %if.then.416
  br label %if.end.486

if.else.439:                                      ; preds = %land.lhs.true.408, %if.end.403
  %286 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %vtop = getelementptr inbounds %struct.loop, %struct.loop* %286, i32 0, i32 23
  %287 = load %struct.rtx_def*, %struct.rtx_def** %vtop, align 8
  %tobool440 = icmp ne %struct.rtx_def* %287, null
  br i1 %tobool440, label %land.lhs.true.441, label %if.end.485

land.lhs.true.441:                                ; preds = %if.else.439
  %288 = load %struct.rtx_def*, %struct.rtx_def** %reg2, align 8
  %289 = bitcast %struct.rtx_def* %288 to i32*
  %bf.load442 = load i32, i32* %289, align 8
  %bf.clear443 = and i32 %bf.load442, 65535
  %cmp444 = icmp eq i32 %bf.clear443, 54
  br i1 %cmp444, label %if.then.446, label %if.end.485

if.then.446:                                      ; preds = %land.lhs.true.441
  %290 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %291 = load %struct.rtx_def*, %struct.rtx_def** %reg1, align 8
  %call448 = call %struct.rtx_def* @loop_find_equiv_value(%struct.loop* %290, %struct.rtx_def* %291)
  store %struct.rtx_def* %call448, %struct.rtx_def** %temp447, align 8
  %292 = load %struct.rtx_def*, %struct.rtx_def** %temp447, align 8
  %293 = bitcast %struct.rtx_def* %292 to i32*
  %bf.load449 = load i32, i32* %293, align 8
  %bf.clear450 = and i32 %bf.load449, 65535
  %cmp451 = icmp eq i32 %bf.clear450, 76
  br i1 %cmp451, label %land.lhs.true.453, label %if.end.484

land.lhs.true.453:                                ; preds = %if.then.446
  %294 = load %struct.rtx_def*, %struct.rtx_def** %temp447, align 8
  %fld454 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %294, i32 0, i32 1
  %arrayidx455 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld454, i32 0, i64 0
  %rtx456 = bitcast %union.rtunion_def* %arrayidx455 to %struct.rtx_def**
  %295 = load %struct.rtx_def*, %struct.rtx_def** %rtx456, align 8
  %296 = bitcast %struct.rtx_def* %295 to i32*
  %bf.load457 = load i32, i32* %296, align 8
  %bf.clear458 = and i32 %bf.load457, 65535
  %cmp459 = icmp eq i32 %bf.clear458, 61
  br i1 %cmp459, label %if.then.461, label %if.end.484

if.then.461:                                      ; preds = %land.lhs.true.453
  %297 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %298 = load %struct.rtx_def*, %struct.rtx_def** %temp447, align 8
  %fld462 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %298, i32 0, i32 1
  %arrayidx463 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld462, i32 0, i64 0
  %rtx464 = bitcast %union.rtunion_def* %arrayidx463 to %struct.rtx_def**
  %299 = load %struct.rtx_def*, %struct.rtx_def** %rtx464, align 8
  %call465 = call %struct.rtx_def* @loop_find_equiv_value(%struct.loop* %297, %struct.rtx_def* %299)
  store %struct.rtx_def* %call465, %struct.rtx_def** %temp2, align 8
  %300 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %301 = bitcast %struct.rtx_def* %300 to i32*
  %bf.load466 = load i32, i32* %301, align 8
  %bf.clear467 = and i32 %bf.load466, 65535
  %cmp468 = icmp eq i32 %bf.clear467, 75
  br i1 %cmp468, label %land.lhs.true.470, label %if.end.483

land.lhs.true.470:                                ; preds = %if.then.461
  %302 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %fld471 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %302, i32 0, i32 1
  %arrayidx472 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld471, i32 0, i64 0
  %rtx473 = bitcast %union.rtunion_def* %arrayidx472 to %struct.rtx_def**
  %303 = load %struct.rtx_def*, %struct.rtx_def** %rtx473, align 8
  %304 = load %struct.rtx_def*, %struct.rtx_def** %temp447, align 8
  %fld474 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %304, i32 0, i32 1
  %arrayidx475 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld474, i32 0, i64 1
  %rtx476 = bitcast %union.rtunion_def* %arrayidx475 to %struct.rtx_def**
  %305 = load %struct.rtx_def*, %struct.rtx_def** %rtx476, align 8
  %cmp477 = icmp eq %struct.rtx_def* %303, %305
  br i1 %cmp477, label %if.then.479, label %if.end.483

if.then.479:                                      ; preds = %land.lhs.true.470
  %306 = load %struct.rtx_def*, %struct.rtx_def** %temp2, align 8
  %fld480 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %306, i32 0, i32 1
  %arrayidx481 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld480, i32 0, i64 1
  %rtx482 = bitcast %union.rtunion_def* %arrayidx481 to %struct.rtx_def**
  %307 = load %struct.rtx_def*, %struct.rtx_def** %rtx482, align 8
  store %struct.rtx_def* %307, %struct.rtx_def** %initial_value, align 8
  br label %if.end.483

if.end.483:                                       ; preds = %if.then.479, %land.lhs.true.470, %if.then.461
  br label %if.end.484

if.end.484:                                       ; preds = %if.end.483, %land.lhs.true.453, %if.then.446
  br label %if.end.485

if.end.485:                                       ; preds = %if.end.484, %land.lhs.true.441, %if.else.439
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %if.end.438
  br label %if.end.487

if.end.487:                                       ; preds = %if.end.486, %if.end.376
  %308 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %vtop488 = getelementptr inbounds %struct.loop, %struct.loop* %308, i32 0, i32 23
  %309 = load %struct.rtx_def*, %struct.rtx_def** %vtop488, align 8
  %tobool489 = icmp ne %struct.rtx_def* %309, null
  br i1 %tobool489, label %land.lhs.true.490, label %if.end.496

land.lhs.true.490:                                ; preds = %if.end.487
  %310 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %311 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %call491 = call %struct.rtx_def* @find_common_reg_term(%struct.rtx_def* %310, %struct.rtx_def* %311)
  store %struct.rtx_def* %call491, %struct.rtx_def** %reg_term, align 8
  %tobool492 = icmp ne %struct.rtx_def* %call491, null
  br i1 %tobool492, label %if.then.493, label %if.end.496

if.then.493:                                      ; preds = %land.lhs.true.490
  %312 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %313 = load %struct.rtx_def*, %struct.rtx_def** %reg_term, align 8
  %call494 = call %struct.rtx_def* @subtract_reg_term(%struct.rtx_def* %312, %struct.rtx_def* %313)
  store %struct.rtx_def* %call494, %struct.rtx_def** %initial_value, align 8
  %314 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %315 = load %struct.rtx_def*, %struct.rtx_def** %reg_term, align 8
  %call495 = call %struct.rtx_def* @subtract_reg_term(%struct.rtx_def* %314, %struct.rtx_def* %315)
  store %struct.rtx_def* %call495, %struct.rtx_def** %final_value, align 8
  br label %if.end.496

if.end.496:                                       ; preds = %if.then.493, %land.lhs.true.490, %if.end.487
  %316 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %317 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %initial_equiv_value497 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %317, i32 0, i32 10
  store %struct.rtx_def* %316, %struct.rtx_def** %initial_equiv_value497, align 8
  %318 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %319 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_equiv_value498 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %319, i32 0, i32 11
  store %struct.rtx_def* %318, %struct.rtx_def** %final_equiv_value498, align 8
  %320 = load i32, i32* %comparison_code, align 4
  %cmp499 = icmp eq i32 %320, 103
  br i1 %cmp499, label %if.then.501, label %if.end.504

if.then.501:                                      ; preds = %if.end.496
  %321 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_value502 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %321, i32 0, i32 9
  store %struct.rtx_def* null, %struct.rtx_def** %final_value502, align 8
  %322 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %final_equiv_value503 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %322, i32 0, i32 11
  store %struct.rtx_def* null, %struct.rtx_def** %final_equiv_value503, align 8
  br label %if.end.504

if.end.504:                                       ; preds = %if.then.501, %if.end.496
  %323 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %cmp505 = icmp eq %struct.rtx_def* %323, null
  br i1 %cmp505, label %if.then.507, label %if.end.512

if.then.507:                                      ; preds = %if.end.504
  %324 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool508 = icmp ne %struct._IO_FILE* %324, null
  br i1 %tobool508, label %if.then.509, label %if.end.511

if.then.509:                                      ; preds = %if.then.507
  %325 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call510 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %325, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.49, i32 0, i32 0))
  br label %if.end.511

if.end.511:                                       ; preds = %if.then.509, %if.then.507
  store i64 0, i64* %retval
  br label %return

if.end.512:                                       ; preds = %if.end.504
  %326 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %327 = bitcast %struct.rtx_def* %326 to i32*
  %bf.load513 = load i32, i32* %327, align 8
  %bf.clear514 = and i32 %bf.load513, 65535
  %cmp515 = icmp ne i32 %bf.clear514, 54
  br i1 %cmp515, label %if.then.517, label %if.end.542

if.then.517:                                      ; preds = %if.end.512
  %328 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %329 = bitcast %struct.rtx_def* %328 to i32*
  %bf.load518 = load i32, i32* %329, align 8
  %bf.clear519 = and i32 %bf.load518, 65535
  %cmp520 = icmp eq i32 %bf.clear519, 61
  br i1 %cmp520, label %if.then.527, label %lor.lhs.false.522

lor.lhs.false.522:                                ; preds = %if.then.517
  %330 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %331 = bitcast %struct.rtx_def* %330 to i32*
  %bf.load523 = load i32, i32* %331, align 8
  %bf.clear524 = and i32 %bf.load523, 65535
  %cmp525 = icmp eq i32 %bf.clear524, 63
  br i1 %cmp525, label %if.then.527, label %if.end.529

if.then.527:                                      ; preds = %lor.lhs.false.522, %if.then.517
  %332 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %333 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %call528 = call %struct.rtx_def* @loop_find_equiv_value(%struct.loop* %332, %struct.rtx_def* %333)
  store %struct.rtx_def* %call528, %struct.rtx_def** %increment, align 8
  br label %if.end.529

if.end.529:                                       ; preds = %if.then.527, %lor.lhs.false.522
  %334 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %335 = bitcast %struct.rtx_def* %334 to i32*
  %bf.load530 = load i32, i32* %335, align 8
  %bf.clear531 = and i32 %bf.load530, 65535
  %cmp532 = icmp ne i32 %bf.clear531, 54
  br i1 %cmp532, label %if.then.534, label %if.end.540

if.then.534:                                      ; preds = %if.end.529
  %336 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool535 = icmp ne %struct._IO_FILE* %336, null
  br i1 %tobool535, label %if.then.536, label %if.end.539

if.then.536:                                      ; preds = %if.then.534
  %337 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call537 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %337, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.50, i32 0, i32 0))
  %338 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %339 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  call void @print_simple_rtl(%struct._IO_FILE* %338, %struct.rtx_def* %339)
  %340 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call538 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %340, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.539

if.end.539:                                       ; preds = %if.then.536, %if.then.534
  store i64 0, i64* %retval
  br label %return

if.end.540:                                       ; preds = %if.end.529
  %341 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %342 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %increment541 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %342, i32 0, i32 13
  store %struct.rtx_def* %341, %struct.rtx_def** %increment541, align 8
  br label %if.end.542

if.end.542:                                       ; preds = %if.end.540, %if.end.512
  %343 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %344 = bitcast %struct.rtx_def* %343 to i32*
  %bf.load543 = load i32, i32* %344, align 8
  %bf.clear544 = and i32 %bf.load543, 65535
  %cmp545 = icmp ne i32 %bf.clear544, 54
  br i1 %cmp545, label %if.then.547, label %if.else.553

if.then.547:                                      ; preds = %if.end.542
  %345 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool548 = icmp ne %struct._IO_FILE* %345, null
  br i1 %tobool548, label %if.then.549, label %if.end.552

if.then.549:                                      ; preds = %if.then.547
  %346 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call550 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %346, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.51, i32 0, i32 0))
  %347 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %348 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  call void @print_simple_rtl(%struct._IO_FILE* %347, %struct.rtx_def* %348)
  %349 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call551 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %349, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.552

if.end.552:                                       ; preds = %if.then.549, %if.then.547
  store i64 0, i64* %retval
  br label %return

if.else.553:                                      ; preds = %if.end.542
  %350 = load i32, i32* %comparison_code, align 4
  %cmp554 = icmp eq i32 %350, 103
  br i1 %cmp554, label %if.then.556, label %if.else.561

if.then.556:                                      ; preds = %if.else.553
  %351 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool557 = icmp ne %struct._IO_FILE* %351, null
  br i1 %tobool557, label %if.then.558, label %if.end.560

if.then.558:                                      ; preds = %if.then.556
  %352 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call559 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %352, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.52, i32 0, i32 0))
  br label %if.end.560

if.end.560:                                       ; preds = %if.then.558, %if.then.556
  store i64 0, i64* %retval
  br label %return

if.else.561:                                      ; preds = %if.else.553
  %353 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %354 = bitcast %struct.rtx_def* %353 to i32*
  %bf.load562 = load i32, i32* %354, align 8
  %bf.clear563 = and i32 %bf.load562, 65535
  %cmp564 = icmp ne i32 %bf.clear563, 54
  br i1 %cmp564, label %if.then.566, label %if.end.572

if.then.566:                                      ; preds = %if.else.561
  %355 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool567 = icmp ne %struct._IO_FILE* %355, null
  br i1 %tobool567, label %if.then.568, label %if.end.571

if.then.568:                                      ; preds = %if.then.566
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call569 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %356, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.53, i32 0, i32 0))
  %357 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %358 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  call void @print_simple_rtl(%struct._IO_FILE* %357, %struct.rtx_def* %358)
  %359 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call570 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %359, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0))
  br label %if.end.571

if.end.571:                                       ; preds = %if.then.568, %if.then.566
  store i64 0, i64* %retval
  br label %return

if.end.572:                                       ; preds = %if.else.561
  br label %if.end.573

if.end.573:                                       ; preds = %if.end.572
  br label %if.end.574

if.end.574:                                       ; preds = %if.end.573
  %360 = load i32, i32* %unsigned_p, align 4
  %tobool575 = icmp ne i32 %360, 0
  br i1 %tobool575, label %if.then.576, label %if.else.594

if.then.576:                                      ; preds = %if.end.574
  %361 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %fld577 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %361, i32 0, i32 1
  %arrayidx578 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld577, i32 0, i64 0
  %rtwint579 = bitcast %union.rtunion_def* %arrayidx578 to i64*
  %362 = load i64, i64* %rtwint579, align 8
  %363 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %fld580 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %363, i32 0, i32 1
  %arrayidx581 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld580, i32 0, i64 0
  %rtwint582 = bitcast %union.rtunion_def* %arrayidx581 to i64*
  %364 = load i64, i64* %rtwint582, align 8
  %cmp583 = icmp ugt i64 %362, %364
  %conv584 = zext i1 %cmp583 to i32
  %365 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %fld585 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %365, i32 0, i32 1
  %arrayidx586 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld585, i32 0, i64 0
  %rtwint587 = bitcast %union.rtunion_def* %arrayidx586 to i64*
  %366 = load i64, i64* %rtwint587, align 8
  %367 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %fld588 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %367, i32 0, i32 1
  %arrayidx589 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld588, i32 0, i64 0
  %rtwint590 = bitcast %union.rtunion_def* %arrayidx589 to i64*
  %368 = load i64, i64* %rtwint590, align 8
  %cmp591 = icmp ult i64 %366, %368
  %conv592 = zext i1 %cmp591 to i32
  %sub593 = sub nsw i32 %conv584, %conv592
  store i32 %sub593, i32* %final_larger, align 4
  br label %if.end.612

if.else.594:                                      ; preds = %if.end.574
  %369 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %fld595 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %369, i32 0, i32 1
  %arrayidx596 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld595, i32 0, i64 0
  %rtwint597 = bitcast %union.rtunion_def* %arrayidx596 to i64*
  %370 = load i64, i64* %rtwint597, align 8
  %371 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %fld598 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %371, i32 0, i32 1
  %arrayidx599 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld598, i32 0, i64 0
  %rtwint600 = bitcast %union.rtunion_def* %arrayidx599 to i64*
  %372 = load i64, i64* %rtwint600, align 8
  %cmp601 = icmp sgt i64 %370, %372
  %conv602 = zext i1 %cmp601 to i32
  %373 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %fld603 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %373, i32 0, i32 1
  %arrayidx604 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld603, i32 0, i64 0
  %rtwint605 = bitcast %union.rtunion_def* %arrayidx604 to i64*
  %374 = load i64, i64* %rtwint605, align 8
  %375 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %fld606 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %375, i32 0, i32 1
  %arrayidx607 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld606, i32 0, i64 0
  %rtwint608 = bitcast %union.rtunion_def* %arrayidx607 to i64*
  %376 = load i64, i64* %rtwint608, align 8
  %cmp609 = icmp slt i64 %374, %376
  %conv610 = zext i1 %cmp609 to i32
  %sub611 = sub nsw i32 %conv602, %conv610
  store i32 %sub611, i32* %final_larger, align 4
  br label %if.end.612

if.end.612:                                       ; preds = %if.else.594, %if.then.576
  %377 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld613 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %377, i32 0, i32 1
  %arrayidx614 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld613, i32 0, i64 0
  %rtwint615 = bitcast %union.rtunion_def* %arrayidx614 to i64*
  %378 = load i64, i64* %rtwint615, align 8
  %cmp616 = icmp sgt i64 %378, 0
  br i1 %cmp616, label %if.then.618, label %if.else.619

if.then.618:                                      ; preds = %if.end.612
  store i32 1, i32* %increment_dir, align 4
  br label %if.end.628

if.else.619:                                      ; preds = %if.end.612
  %379 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld620 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %379, i32 0, i32 1
  %arrayidx621 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld620, i32 0, i64 0
  %rtwint622 = bitcast %union.rtunion_def* %arrayidx621 to i64*
  %380 = load i64, i64* %rtwint622, align 8
  %cmp623 = icmp eq i64 %380, 0
  br i1 %cmp623, label %if.then.625, label %if.else.626

if.then.625:                                      ; preds = %if.else.619
  store i32 0, i32* %increment_dir, align 4
  br label %if.end.627

if.else.626:                                      ; preds = %if.else.619
  store i32 -1, i32* %increment_dir, align 4
  br label %if.end.627

if.end.627:                                       ; preds = %if.else.626, %if.then.625
  br label %if.end.628

if.end.628:                                       ; preds = %if.end.627, %if.then.618
  %381 = load i32, i32* %final_larger, align 4
  %382 = load i32, i32* %increment_dir, align 4
  %cmp629 = icmp eq i32 %381, %382
  br i1 %cmp629, label %land.lhs.true.631, label %if.else.641

land.lhs.true.631:                                ; preds = %if.end.628
  %383 = load i32, i32* %final_larger, align 4
  %cmp632 = icmp ne i32 %383, 0
  br i1 %cmp632, label %land.lhs.true.634, label %if.else.641

land.lhs.true.634:                                ; preds = %land.lhs.true.631
  %384 = load i32, i32* %final_larger, align 4
  %385 = load i32, i32* %compare_dir, align 4
  %cmp635 = icmp eq i32 %384, %385
  br i1 %cmp635, label %if.then.640, label %lor.lhs.false.637

lor.lhs.false.637:                                ; preds = %land.lhs.true.634
  %386 = load i32, i32* %compare_dir, align 4
  %cmp638 = icmp eq i32 %386, 0
  br i1 %cmp638, label %if.then.640, label %if.else.641

if.then.640:                                      ; preds = %lor.lhs.false.637, %land.lhs.true.634
  br label %if.end.646

if.else.641:                                      ; preds = %lor.lhs.false.637, %land.lhs.true.631, %if.end.628
  %387 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool642 = icmp ne %struct._IO_FILE* %387, null
  br i1 %tobool642, label %if.then.643, label %if.end.645

if.then.643:                                      ; preds = %if.else.641
  %388 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call644 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %388, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.54, i32 0, i32 0))
  br label %if.end.645

if.end.645:                                       ; preds = %if.then.643, %if.else.641
  store i64 0, i64* %retval
  br label %return

if.end.646:                                       ; preds = %if.then.640
  %389 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld647 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %389, i32 0, i32 1
  %arrayidx648 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld647, i32 0, i64 0
  %rtwint649 = bitcast %union.rtunion_def* %arrayidx648 to i64*
  %390 = load i64, i64* %rtwint649, align 8
  store i64 %390, i64* %inc, align 8
  %391 = load i64, i64* %inc, align 8
  %cmp650 = icmp sgt i64 %391, 0
  br i1 %cmp650, label %if.then.652, label %if.else.660

if.then.652:                                      ; preds = %if.end.646
  %392 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %fld653 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %392, i32 0, i32 1
  %arrayidx654 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld653, i32 0, i64 0
  %rtwint655 = bitcast %union.rtunion_def* %arrayidx654 to i64*
  %393 = load i64, i64* %rtwint655, align 8
  %394 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %fld656 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %394, i32 0, i32 1
  %arrayidx657 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld656, i32 0, i64 0
  %rtwint658 = bitcast %union.rtunion_def* %arrayidx657 to i64*
  %395 = load i64, i64* %rtwint658, align 8
  %sub659 = sub nsw i64 %393, %395
  store i64 %sub659, i64* %abs_diff, align 8
  %396 = load i64, i64* %inc, align 8
  store i64 %396, i64* %abs_inc, align 8
  br label %if.end.674

if.else.660:                                      ; preds = %if.end.646
  %397 = load i64, i64* %inc, align 8
  %cmp661 = icmp slt i64 %397, 0
  br i1 %cmp661, label %if.then.663, label %if.else.672

if.then.663:                                      ; preds = %if.else.660
  %398 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %fld664 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %398, i32 0, i32 1
  %arrayidx665 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld664, i32 0, i64 0
  %rtwint666 = bitcast %union.rtunion_def* %arrayidx665 to i64*
  %399 = load i64, i64* %rtwint666, align 8
  %400 = load %struct.rtx_def*, %struct.rtx_def** %final_value, align 8
  %fld667 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %400, i32 0, i32 1
  %arrayidx668 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld667, i32 0, i64 0
  %rtwint669 = bitcast %union.rtunion_def* %arrayidx668 to i64*
  %401 = load i64, i64* %rtwint669, align 8
  %sub670 = sub nsw i64 %399, %401
  store i64 %sub670, i64* %abs_diff, align 8
  %402 = load i64, i64* %inc, align 8
  %sub671 = sub nsw i64 0, %402
  store i64 %sub671, i64* %abs_inc, align 8
  br label %if.end.673

if.else.672:                                      ; preds = %if.else.660
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 4090, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.loop_iterations, i32 0, i32 0)) #5
  unreachable

if.end.673:                                       ; preds = %if.then.663
  br label %if.end.674

if.end.674:                                       ; preds = %if.end.673, %if.then.652
  %403 = load %struct.rtx_def*, %struct.rtx_def** %iteration_var, align 8
  %404 = bitcast %struct.rtx_def* %403 to i32*
  %bf.load675 = load i32, i32* %404, align 8
  %bf.lshr676 = lshr i32 %bf.load675, 16
  %bf.clear677 = and i32 %bf.lshr676, 255
  %idxprom678 = sext i32 %bf.clear677 to i64
  %arrayidx679 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom678
  %405 = load i16, i16* %arrayidx679, align 2
  %conv680 = zext i16 %405 to i32
  %sub681 = sub nsw i32 %conv680, 1
  %sh_prom = zext i32 %sub681 to i64
  %shl = shl i64 1, %sh_prom
  %shl682 = shl i64 %shl, 1
  %sub683 = sub i64 %shl682, 1
  %406 = load i64, i64* %abs_diff, align 8
  %and = and i64 %406, %sub683
  store i64 %and, i64* %abs_diff, align 8
  %407 = load i32, i32* %compare_dir, align 4
  %cmp684 = icmp eq i32 %407, 0
  br i1 %cmp684, label %land.lhs.true.686, label %if.end.690

land.lhs.true.686:                                ; preds = %if.end.674
  %408 = load i64, i64* %abs_diff, align 8
  %409 = load i64, i64* %abs_inc, align 8
  %rem = urem i64 %408, %409
  %cmp687 = icmp ne i64 %rem, 0
  br i1 %cmp687, label %if.then.689, label %if.end.690

if.then.689:                                      ; preds = %land.lhs.true.686
  store i64 0, i64* %retval
  br label %return

if.end.690:                                       ; preds = %land.lhs.true.686, %if.end.674
  %410 = load i64, i64* %abs_diff, align 8
  %411 = load i64, i64* %abs_inc, align 8
  %div = udiv i64 %410, %411
  %412 = load i64, i64* %abs_diff, align 8
  %413 = load i64, i64* %abs_inc, align 8
  %rem691 = urem i64 %412, %413
  %cmp692 = icmp ne i64 %rem691, 0
  %conv693 = zext i1 %cmp692 to i32
  %conv694 = sext i32 %conv693 to i64
  %add = add i64 %div, %conv694
  %414 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations695 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %414, i32 0, i32 15
  store i64 %add, i64* %n_iterations695, align 8
  %415 = load %struct.loop_info*, %struct.loop_info** %loop_info, align 8
  %n_iterations696 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %415, i32 0, i32 15
  %416 = load i64, i64* %n_iterations696, align 8
  store i64 %416, i64* %retval
  br label %return

return:                                           ; preds = %if.end.690, %if.then.689, %if.end.645, %if.end.571, %if.end.560, %if.end.552, %if.end.539, %if.end.511, %if.then.347, %if.end.339, %if.end.317, %if.end.283, %if.end.237, %if.end.197, %if.end.184, %if.end.172, %if.end.152, %if.end.135, %if.end.120, %if.end.40, %if.end.20, %if.end
  %417 = load i64, i64* %retval
  ret i64 %417
}

declare %struct.rtx_def* @get_condition_for_loop(%struct.loop*, %struct.rtx_def*) #1

declare i32 @loop_insn_first_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @loop_find_equiv_value(%struct.loop* %loop, %struct.rtx_def* %reg) #0 {
entry:
  %loop.addr = alloca %struct.loop*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  %loop_start = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %ret = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 26
  %1 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %loop_start, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %ret, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  br label %for.end

if.else:                                          ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load1 = load i32, i32* %9, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %idxprom = sext i32 %bf.clear2 to i64
  %arrayidx3 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %10 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv, 105
  br i1 %cmp4, label %land.lhs.true, label %if.end.127

land.lhs.true:                                    ; preds = %if.else
  %11 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call = call i32 @reg_set_p(%struct.rtx_def* %11, %struct.rtx_def* %12)
  %tobool6 = icmp ne i32 %call, 0
  br i1 %tobool6, label %if.then.7, label %if.end.127

if.then.7:                                        ; preds = %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load8 = load i32, i32* %14, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %idxprom10 = sext i32 %bf.clear9 to i64
  %arrayidx11 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom10
  %15 = load i8, i8* %arrayidx11, align 1
  %conv12 = sext i8 %15 to i32
  %cmp13 = icmp eq i32 %conv12, 105
  br i1 %cmp13, label %cond.true, label %cond.false.30

cond.true:                                        ; preds = %if.then.7
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load18 = load i32, i32* %18, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 47
  br i1 %cmp20, label %cond.true.22, label %cond.false

cond.true.22:                                     ; preds = %cond.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 3
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 3
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %call29 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %21, %struct.rtx_def* %23)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.22
  %cond = phi %struct.rtx_def* [ %20, %cond.true.22 ], [ %call29, %cond.false ]
  br label %cond.end.31

cond.false.30:                                    ; preds = %if.then.7
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.end
  %cond32 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.30 ]
  store %struct.rtx_def* %cond32, %struct.rtx_def** %set, align 8
  %tobool33 = icmp ne %struct.rtx_def* %cond32, null
  br i1 %tobool33, label %land.lhs.true.34, label %if.end.126

land.lhs.true.34:                                 ; preds = %cond.end.31
  %24 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %cmp38 = icmp eq %struct.rtx_def* %25, %26
  br i1 %cmp38, label %if.then.40, label %if.end.126

if.then.40:                                       ; preds = %land.lhs.true.34
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call41 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %27, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call41, %struct.rtx_def** %note, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool42 = icmp ne %struct.rtx_def* %28, null
  br i1 %tobool42, label %land.lhs.true.43, label %if.else.118

land.lhs.true.43:                                 ; preds = %if.then.40
  %29 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 0
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load47 = load i32, i32* %31, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp ne i32 %bf.clear48, 3
  br i1 %cmp49, label %land.lhs.true.51, label %if.else.118

land.lhs.true.51:                                 ; preds = %land.lhs.true.43
  %32 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load55 = load i32, i32* %34, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 67
  br i1 %cmp57, label %if.then.114, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.51
  %35 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load62 = load i32, i32* %37, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 68
  br i1 %cmp64, label %if.then.114, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %lor.lhs.false
  %38 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load70 = load i32, i32* %40, align 8
  %bf.clear71 = and i32 %bf.load70, 65535
  %cmp72 = icmp eq i32 %bf.clear71, 54
  br i1 %cmp72, label %if.then.114, label %lor.lhs.false.74

lor.lhs.false.74:                                 ; preds = %lor.lhs.false.66
  %41 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load78 = load i32, i32* %43, align 8
  %bf.clear79 = and i32 %bf.load78, 65535
  %cmp80 = icmp eq i32 %bf.clear79, 55
  br i1 %cmp80, label %if.then.114, label %lor.lhs.false.82

lor.lhs.false.82:                                 ; preds = %lor.lhs.false.74
  %44 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 0
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load86 = load i32, i32* %46, align 8
  %bf.clear87 = and i32 %bf.load86, 65535
  %cmp88 = icmp eq i32 %bf.clear87, 58
  br i1 %cmp88, label %if.then.114, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %lor.lhs.false.82
  %47 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx93, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load94 = load i32, i32* %49, align 8
  %bf.clear95 = and i32 %bf.load94, 65535
  %cmp96 = icmp eq i32 %bf.clear95, 134
  br i1 %cmp96, label %if.then.114, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %lor.lhs.false.90
  %50 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 0
  %rtx101 = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx101, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load102 = load i32, i32* %52, align 8
  %bf.clear103 = and i32 %bf.load102, 65535
  %cmp104 = icmp eq i32 %bf.clear103, 56
  br i1 %cmp104, label %if.then.114, label %lor.lhs.false.106

lor.lhs.false.106:                                ; preds = %lor.lhs.false.98
  %53 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 0
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx109, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load110 = load i32, i32* %55, align 8
  %bf.clear111 = and i32 %bf.load110, 65535
  %cmp112 = icmp eq i32 %bf.clear111, 140
  br i1 %cmp112, label %if.then.114, label %if.else.118

if.then.114:                                      ; preds = %lor.lhs.false.106, %lor.lhs.false.98, %lor.lhs.false.90, %lor.lhs.false.82, %lor.lhs.false.74, %lor.lhs.false.66, %lor.lhs.false, %land.lhs.true.51
  %56 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld115, i32 0, i64 0
  %rtx117 = bitcast %union.rtunion_def* %arrayidx116 to %struct.rtx_def**
  %57 = load %struct.rtx_def*, %struct.rtx_def** %rtx117, align 8
  store %struct.rtx_def* %57, %struct.rtx_def** %ret, align 8
  br label %if.end

if.else.118:                                      ; preds = %lor.lhs.false.106, %land.lhs.true.43, %if.then.40
  %58 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 1
  %rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx121, align 8
  store %struct.rtx_def* %59, %struct.rtx_def** %ret, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.118, %if.then.114
  %60 = load %struct.rtx_def*, %struct.rtx_def** %ret, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %loop_start, align 8
  %call122 = call i32 @modified_between_p(%struct.rtx_def* %60, %struct.rtx_def* %61, %struct.rtx_def* %62)
  %tobool123 = icmp ne i32 %call122, 0
  br i1 %tobool123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.end
  %63 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %63, %struct.rtx_def** %ret, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.end
  br label %if.end.126

if.end.126:                                       ; preds = %if.end.125, %land.lhs.true.34, %cond.end.31
  br label %for.end

if.end.127:                                       ; preds = %land.lhs.true, %if.else
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127
  br label %for.inc

for.inc:                                          ; preds = %if.end.128
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 1
  %rtx131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx131, align 8
  store %struct.rtx_def* %65, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.end.126, %if.then, %for.cond
  %66 = load %struct.rtx_def*, %struct.rtx_def** %ret, align 8
  ret %struct.rtx_def* %66
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @find_common_reg_term(%struct.rtx_def* %op0, %struct.rtx_def* %op1) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %op0.addr = alloca %struct.rtx_def*, align 8
  %op1.addr = alloca %struct.rtx_def*, align 8
  %op00 = alloca %struct.rtx_def*, align 8
  %op01 = alloca %struct.rtx_def*, align 8
  %op10 = alloca %struct.rtx_def*, align 8
  %op11 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op0, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %op1, %struct.rtx_def** %op1.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 75
  br i1 %cmp3, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load4 = load i32, i32* %5, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 61
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load8 = load i32, i32* %7, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp eq i32 %bf.clear9, 75
  br i1 %cmp10, label %if.then, label %if.end.49

if.then:                                          ; preds = %lor.lhs.false.7, %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load11 = load i32, i32* %9, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 75
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %op01, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %op00, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %14 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %op01, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op0.addr, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %op00, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.14
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load18 = load i32, i32* %17, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 75
  br i1 %cmp20, label %if.then.21, label %if.else.28

if.then.21:                                       ; preds = %if.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 1
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %op11, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %op10, align 8
  br label %if.end.29

if.else.28:                                       ; preds = %if.end
  %22 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %op11, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %op1.addr, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %op10, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.28, %if.then.21
  %24 = load %struct.rtx_def*, %struct.rtx_def** %op00, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load30 = load i32, i32* %25, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 61
  br i1 %cmp32, label %land.lhs.true.33, label %if.else.38

land.lhs.true.33:                                 ; preds = %if.end.29
  %26 = load %struct.rtx_def*, %struct.rtx_def** %op00, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %op10, align 8
  %cmp34 = icmp eq %struct.rtx_def* %26, %27
  br i1 %cmp34, label %if.then.37, label %lor.lhs.false.35

lor.lhs.false.35:                                 ; preds = %land.lhs.true.33
  %28 = load %struct.rtx_def*, %struct.rtx_def** %op00, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %op11, align 8
  %cmp36 = icmp eq %struct.rtx_def* %28, %29
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %lor.lhs.false.35, %land.lhs.true.33
  %30 = load %struct.rtx_def*, %struct.rtx_def** %op00, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %retval
  br label %return

if.else.38:                                       ; preds = %lor.lhs.false.35, %if.end.29
  %31 = load %struct.rtx_def*, %struct.rtx_def** %op01, align 8
  %32 = bitcast %struct.rtx_def* %31 to i32*
  %bf.load39 = load i32, i32* %32, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp eq i32 %bf.clear40, 61
  br i1 %cmp41, label %land.lhs.true.42, label %if.end.47

land.lhs.true.42:                                 ; preds = %if.else.38
  %33 = load %struct.rtx_def*, %struct.rtx_def** %op01, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %op10, align 8
  %cmp43 = icmp eq %struct.rtx_def* %33, %34
  br i1 %cmp43, label %if.then.46, label %lor.lhs.false.44

lor.lhs.false.44:                                 ; preds = %land.lhs.true.42
  %35 = load %struct.rtx_def*, %struct.rtx_def** %op01, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %op11, align 8
  %cmp45 = icmp eq %struct.rtx_def* %35, %36
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %lor.lhs.false.44, %land.lhs.true.42
  %37 = load %struct.rtx_def*, %struct.rtx_def** %op01, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %retval
  br label %return

if.end.47:                                        ; preds = %lor.lhs.false.44, %if.else.38
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %lor.lhs.false.7, %lor.lhs.false
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.49, %if.then.46, %if.then.37
  %38 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %38
}

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @subtract_reg_term(%struct.rtx_def* %op, %struct.rtx_def* %reg) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %op.addr = alloca %struct.rtx_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 75
  br i1 %cmp1, label %if.then.2, label %if.end.18

if.then.2:                                        ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %cmp3 = icmp eq %struct.rtx_def* %6, %7
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %if.then.2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 1
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %cmp11 = icmp eq %struct.rtx_def* %11, %12
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.else
  %13 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %retval
  br label %return

if.end.16:                                        ; preds = %if.else
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 3476, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.subtract_reg_term, i32 0, i32 0)) #5
  unreachable

return:                                           ; preds = %if.then.12, %if.then.4, %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %15
}

declare void @print_simple_rtl(%struct._IO_FILE*, %struct.rtx_def*) #1

declare i32 @dead_or_set_regno_p(%struct.rtx_def*, i32) #1

declare %struct.rtx_def* @emit_note(i8*, i32) #1

declare %struct.rtx_def* @single_set_2(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @calculate_giv_inc(%struct.rtx_def* %pattern, %struct.rtx_def* %src_insn, i32 %regno) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %src_insn.addr = alloca %struct.rtx_def*, align 8
  %regno.addr = alloca i32, align 4
  %increment = alloca %struct.rtx_def*, align 8
  %increment_total = alloca %struct.rtx_def*, align 8
  %tries = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %second_part = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  store %struct.rtx_def* %src_insn, %struct.rtx_def** %src_insn.addr, align 8
  store i32 %regno, i32* %regno.addr, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %increment_total, align 8
  store i32 0, i32* %tries, align 4
  br label %retry

retry:                                            ; preds = %cond.end.214, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 75
  br i1 %cmp, label %if.then, label %if.end.36

if.then:                                          ; preds = %retry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %src_insn.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %idxprom = sext i32 %bf.clear5 to i64
  %arrayidx6 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx6, align 1
  %conv = sext i8 %7 to i32
  %cmp7 = icmp eq i32 %conv, 105
  br i1 %cmp7, label %cond.true, label %cond.false.23

cond.true:                                        ; preds = %if.then
  %8 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 3
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load12 = load i32, i32* %10, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 47
  br i1 %cmp14, label %cond.true.16, label %cond.false

cond.true.16:                                     ; preds = %cond.true
  %11 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 3
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 3
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %call = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %13, %struct.rtx_def* %15)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.16
  %cond = phi %struct.rtx_def* [ %12, %cond.true.16 ], [ %call, %cond.false ]
  br label %cond.end.24

cond.false.23:                                    ; preds = %if.then
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.23, %cond.end
  %cond25 = phi %struct.rtx_def* [ %cond, %cond.end ], [ null, %cond.false.23 ]
  store %struct.rtx_def* %cond25, %struct.rtx_def** %pattern.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 1
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load29 = load i32, i32* %18, align 8
  %bf.clear30 = and i32 %bf.load29, 65535
  %cmp31 = icmp ne i32 %bf.clear30, 75
  br i1 %cmp31, label %if.then.33, label %if.end

if.then.33:                                       ; preds = %cond.end.24
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 1605, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.calculate_giv_inc, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %cond.end.24
  %call34 = call %struct.rtx_def* @get_last_insn()
  %call35 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %call34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.end, %retry
  %19 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx42, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %increment, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load43 = load i32, i32* %23, align 8
  %bf.clear44 = and i32 %bf.load43, 65535
  %cmp45 = icmp ne i32 %bf.clear44, 54
  br i1 %cmp45, label %if.then.47, label %if.end.146

if.then.47:                                       ; preds = %if.end.36
  %24 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %call48 = call %struct.rtx_def* @find_last_value(%struct.rtx_def* %24, %struct.rtx_def** %src_insn.addr, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call48, %struct.rtx_def** %increment, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load49 = load i32, i32* %26, align 8
  %bf.clear50 = and i32 %bf.load49, 65535
  %cmp51 = icmp eq i32 %bf.clear50, 135
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %if.then.47
  %27 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 1
  %rtx56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx56, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %increment, align 8
  br label %if.end.137

if.else:                                          ; preds = %if.then.47
  %29 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load57 = load i32, i32* %30, align 8
  %bf.clear58 = and i32 %bf.load57, 65535
  %cmp59 = icmp eq i32 %bf.clear58, 66
  br i1 %cmp59, label %if.then.61, label %if.else.68

if.then.61:                                       ; preds = %if.else
  %31 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %call62 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %31, i32 4, %struct.rtx_def* null)
  store %struct.rtx_def* %call62, %struct.rtx_def** %note, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool = icmp ne %struct.rtx_def* %32, null
  br i1 %tobool, label %if.then.63, label %if.end.67

if.then.63:                                       ; preds = %if.then.61
  %33 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtx66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx66, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %increment, align 8
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.63, %if.then.61
  br label %if.end.136

if.else.68:                                       ; preds = %if.else
  %35 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load69 = load i32, i32* %36, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %cmp71 = icmp eq i32 %bf.clear70, 84
  br i1 %cmp71, label %if.then.82, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.68
  %37 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load73 = load i32, i32* %38, align 8
  %bf.clear74 = and i32 %bf.load73, 65535
  %cmp75 = icmp eq i32 %bf.clear74, 87
  br i1 %cmp75, label %if.then.82, label %lor.lhs.false.77

lor.lhs.false.77:                                 ; preds = %lor.lhs.false
  %39 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load78 = load i32, i32* %40, align 8
  %bf.clear79 = and i32 %bf.load78, 65535
  %cmp80 = icmp eq i32 %bf.clear79, 75
  br i1 %cmp80, label %if.then.82, label %if.end.135

if.then.82:                                       ; preds = %lor.lhs.false.77, %lor.lhs.false, %if.else.68
  %41 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 1
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %second_part, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load86 = load i32, i32* %44, align 8
  %bf.clear87 = and i32 %bf.load86, 65535
  store i32 %bf.clear87, i32* %code, align 4
  %45 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 0
  %rtx90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx90, align 8
  %call91 = call %struct.rtx_def* @find_last_value(%struct.rtx_def* %46, %struct.rtx_def** %src_insn.addr, %struct.rtx_def* null, i32 0)
  store %struct.rtx_def* %call91, %struct.rtx_def** %increment, align 8
  %call92 = call %struct.rtx_def* @get_last_insn()
  %call93 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %call92)
  %47 = load %struct.rtx_def*, %struct.rtx_def** %second_part, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load94 = load i32, i32* %48, align 8
  %bf.clear95 = and i32 %bf.load94, 65535
  %cmp96 = icmp ne i32 %bf.clear95, 54
  br i1 %cmp96, label %if.then.103, label %lor.lhs.false.98

lor.lhs.false.98:                                 ; preds = %if.then.82
  %49 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load99 = load i32, i32* %50, align 8
  %bf.clear100 = and i32 %bf.load99, 65535
  %cmp101 = icmp ne i32 %bf.clear100, 54
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %lor.lhs.false.98, %if.then.82
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 1651, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.calculate_giv_inc, i32 0, i32 0)) #5
  unreachable

if.end.104:                                       ; preds = %lor.lhs.false.98
  %51 = load i32, i32* %code, align 4
  %cmp105 = icmp eq i32 %51, 84
  br i1 %cmp105, label %if.then.107, label %if.else.114

if.then.107:                                      ; preds = %if.end.104
  %52 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx109 to i64*
  %53 = load i64, i64* %rtwint, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %second_part, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtwint112 = bitcast %union.rtunion_def* %arrayidx111 to i64*
  %55 = load i64, i64* %rtwint112, align 8
  %or = or i64 %53, %55
  %call113 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %or)
  store %struct.rtx_def* %call113, %struct.rtx_def** %increment, align 8
  br label %if.end.134

if.else.114:                                      ; preds = %if.end.104
  %56 = load i32, i32* %code, align 4
  %cmp115 = icmp eq i32 %56, 75
  br i1 %cmp115, label %if.then.117, label %if.else.125

if.then.117:                                      ; preds = %if.else.114
  %57 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 0
  %rtwint120 = bitcast %union.rtunion_def* %arrayidx119 to i64*
  %58 = load i64, i64* %rtwint120, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %second_part, align 8
  %fld121 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld121, i32 0, i64 0
  %rtwint123 = bitcast %union.rtunion_def* %arrayidx122 to i64*
  %60 = load i64, i64* %rtwint123, align 8
  %add = add nsw i64 %58, %60
  %call124 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add)
  store %struct.rtx_def* %call124, %struct.rtx_def** %increment, align 8
  br label %if.end.133

if.else.125:                                      ; preds = %if.else.114
  %61 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtwint128 = bitcast %union.rtunion_def* %arrayidx127 to i64*
  %62 = load i64, i64* %rtwint128, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %second_part, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtwint131 = bitcast %union.rtunion_def* %arrayidx130 to i64*
  %64 = load i64, i64* %rtwint131, align 8
  %shl = shl i64 %62, %64
  %call132 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %shl)
  store %struct.rtx_def* %call132, %struct.rtx_def** %increment, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.else.125, %if.then.117
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.133, %if.then.107
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %lor.lhs.false.77
  br label %if.end.136

if.end.136:                                       ; preds = %if.end.135, %if.end.67
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.136, %if.then.53
  %65 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load138 = load i32, i32* %66, align 8
  %bf.clear139 = and i32 %bf.load138, 65535
  %cmp140 = icmp ne i32 %bf.clear139, 54
  br i1 %cmp140, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.137
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 1662, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.calculate_giv_inc, i32 0, i32 0)) #5
  unreachable

if.end.143:                                       ; preds = %if.end.137
  %call144 = call %struct.rtx_def* @get_last_insn()
  %call145 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %call144)
  br label %if.end.146

if.end.146:                                       ; preds = %if.end.143, %if.end.36
  %67 = load %struct.rtx_def*, %struct.rtx_def** %increment_total, align 8
  %tobool147 = icmp ne %struct.rtx_def* %67, null
  br i1 %tobool147, label %if.then.148, label %if.else.157

if.then.148:                                      ; preds = %if.end.146
  %68 = load %struct.rtx_def*, %struct.rtx_def** %increment_total, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 0
  %rtwint151 = bitcast %union.rtunion_def* %arrayidx150 to i64*
  %69 = load i64, i64* %rtwint151, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  %fld152 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx153 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld152, i32 0, i64 0
  %rtwint154 = bitcast %union.rtunion_def* %arrayidx153 to i64*
  %71 = load i64, i64* %rtwint154, align 8
  %add155 = add nsw i64 %69, %71
  %call156 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add155)
  store %struct.rtx_def* %call156, %struct.rtx_def** %increment_total, align 8
  br label %if.end.158

if.else.157:                                      ; preds = %if.end.146
  %72 = load %struct.rtx_def*, %struct.rtx_def** %increment, align 8
  store %struct.rtx_def* %72, %struct.rtx_def** %increment_total, align 8
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.157, %if.then.148
  %73 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld159, i32 0, i64 1
  %rtx161 = bitcast %union.rtunion_def* %arrayidx160 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx161, align 8
  %fld162 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx163 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld162, i32 0, i64 0
  %rtx164 = bitcast %union.rtunion_def* %arrayidx163 to %struct.rtx_def**
  %75 = load %struct.rtx_def*, %struct.rtx_def** %rtx164, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load165 = load i32, i32* %76, align 8
  %bf.clear166 = and i32 %bf.load165, 65535
  %cmp167 = icmp ne i32 %bf.clear166, 61
  br i1 %cmp167, label %if.then.180, label %lor.lhs.false.169

lor.lhs.false.169:                                ; preds = %if.end.158
  %77 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 1
  %rtx172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx172, align 8
  %fld173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld173, i32 0, i64 0
  %rtx175 = bitcast %union.rtunion_def* %arrayidx174 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx175, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx177 to i32*
  %80 = load i32, i32* %rtuint, align 4
  %81 = load i32, i32* %regno.addr, align 4
  %cmp178 = icmp ne i32 %80, %81
  br i1 %cmp178, label %if.then.180, label %if.end.219

if.then.180:                                      ; preds = %lor.lhs.false.169, %if.end.158
  %82 = load i32, i32* %tries, align 4
  %cmp181 = icmp eq i32 %82, 0
  br i1 %cmp181, label %if.then.183, label %if.end.218

if.then.183:                                      ; preds = %if.then.180
  %83 = load i32, i32* %tries, align 4
  %inc = add nsw i32 %83, 1
  store i32 %inc, i32* %tries, align 4
  %84 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %fld184 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx185 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld184, i32 0, i64 1
  %rtx186 = bitcast %union.rtunion_def* %arrayidx185 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx186, align 8
  store %struct.rtx_def* %85, %struct.rtx_def** %src_insn.addr, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %87 = bitcast %struct.rtx_def* %86 to i32*
  %bf.load187 = load i32, i32* %87, align 8
  %bf.clear188 = and i32 %bf.load187, 65535
  %idxprom189 = sext i32 %bf.clear188 to i64
  %arrayidx190 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom189
  %88 = load i8, i8* %arrayidx190, align 1
  %conv191 = sext i8 %88 to i32
  %cmp192 = icmp eq i32 %conv191, 105
  br i1 %cmp192, label %cond.true.194, label %cond.false.213

cond.true.194:                                    ; preds = %if.then.183
  %89 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %fld195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i32 0, i64 3
  %rtx197 = bitcast %union.rtunion_def* %arrayidx196 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx197, align 8
  %91 = bitcast %struct.rtx_def* %90 to i32*
  %bf.load198 = load i32, i32* %91, align 8
  %bf.clear199 = and i32 %bf.load198, 65535
  %cmp200 = icmp eq i32 %bf.clear199, 47
  br i1 %cmp200, label %cond.true.202, label %cond.false.206

cond.true.202:                                    ; preds = %cond.true.194
  %92 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %fld203 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx204 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld203, i32 0, i64 3
  %rtx205 = bitcast %union.rtunion_def* %arrayidx204 to %struct.rtx_def**
  %93 = load %struct.rtx_def*, %struct.rtx_def** %rtx205, align 8
  br label %cond.end.211

cond.false.206:                                   ; preds = %cond.true.194
  %94 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %95 = load %struct.rtx_def*, %struct.rtx_def** %src_insn.addr, align 8
  %fld207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld207, i32 0, i64 3
  %rtx209 = bitcast %union.rtunion_def* %arrayidx208 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx209, align 8
  %call210 = call %struct.rtx_def* @single_set_2(%struct.rtx_def* %94, %struct.rtx_def* %96)
  br label %cond.end.211

cond.end.211:                                     ; preds = %cond.false.206, %cond.true.202
  %cond212 = phi %struct.rtx_def* [ %93, %cond.true.202 ], [ %call210, %cond.false.206 ]
  br label %cond.end.214

cond.false.213:                                   ; preds = %if.then.183
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.213, %cond.end.211
  %cond215 = phi %struct.rtx_def* [ %cond212, %cond.end.211 ], [ null, %cond.false.213 ]
  store %struct.rtx_def* %cond215, %struct.rtx_def** %pattern.addr, align 8
  %call216 = call %struct.rtx_def* @get_last_insn()
  %call217 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %call216)
  br label %retry

if.end.218:                                       ; preds = %if.then.180
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 1695, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.calculate_giv_inc, i32 0, i32 0)) #5
  unreachable

if.end.219:                                       ; preds = %lor.lhs.false.169
  %97 = load %struct.rtx_def*, %struct.rtx_def** %increment_total, align 8
  ret %struct.rtx_def* %97
}

declare %struct.rtx_def* @simplify_gen_binary(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def*, %struct.inline_remap*, i32) #1

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @initial_reg_note_copy(%struct.rtx_def* %notes, %struct.inline_remap* %map) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %notes.addr = alloca %struct.rtx_def*, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %copy = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %notes, %struct.rtx_def** %notes.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %notes.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %notes.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %call = call %struct.rtx_def* @rtx_alloc(i32 %bf.clear)
  store %struct.rtx_def* %call, %struct.rtx_def** %copy, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %notes.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %5 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load3 = load i32, i32* %6, align 8
  %bf.value = and i32 %bf.clear2, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear4 = and i32 %bf.load3, -16711681
  %bf.set = or i32 %bf.clear4, %bf.shl
  store i32 %bf.set, i32* %6, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %notes.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load5 = load i32, i32* %8, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 3
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %notes.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %11 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call9 = call %struct.rtx_def* @copy_rtx_and_substitute(%struct.rtx_def* %10, %struct.inline_remap* %11, i32 0)
  %12 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def* %call9, %struct.rtx_def** %rtx12, align 8
  br label %if.end.26

if.else:                                          ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %notes.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load13 = load i32, i32* %14, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 4
  br i1 %cmp15, label %if.then.16, label %if.else.24

if.then.16:                                       ; preds = %if.else
  %15 = load %struct.rtx_def*, %struct.rtx_def** %notes.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %call20 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %16)
  %17 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  store %struct.rtx_def* %call20, %struct.rtx_def** %rtx23, align 8
  br label %if.end.25

if.else.24:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 1724, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.initial_reg_note_copy, i32 0, i32 0)) #5
  unreachable

if.end.25:                                        ; preds = %if.then.16
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.then.8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %notes.addr, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %20 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %call30 = call %struct.rtx_def* @initial_reg_note_copy(%struct.rtx_def* %19, %struct.inline_remap* %20)
  %21 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  store %struct.rtx_def* %call30, %struct.rtx_def** %rtx33, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.26, %if.then
  %23 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %23
}

declare void @try_constants(%struct.rtx_def*, %struct.inline_remap*) #1

declare %struct.rtx_def* @emit_jump_insn(%struct.rtx_def*) #1

declare i32 @invert_jump(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_jump(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier_after(%struct.rtx_def*) #1

declare i32 @redirect_jump(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare i32 @onlyjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_barrier() #1

declare %struct.rtx_def* @emit_call_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @emit_label(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @final_reg_note_copy(%struct.rtx_def** %notesp, %struct.inline_remap* %map) #0 {
entry:
  %notesp.addr = alloca %struct.rtx_def**, align 8
  %map.addr = alloca %struct.inline_remap*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %notesp, %struct.rtx_def*** %notesp.addr, align 8
  store %struct.inline_remap* %map, %struct.inline_remap** %map.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.24, %if.then.4, %entry
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %notesp.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %notesp.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %2, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %note, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 4
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %while.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load1 = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %cmp3 = icmp eq i32 %bf.clear2, 5
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  %8 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %notesp.addr, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %10, align 8
  br label %while.cond

if.else:                                          ; preds = %if.then
  %11 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %13 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.inline_remap*, %struct.inline_remap** %map.addr, align 8
  %insn_map = getelementptr inbounds %struct.inline_remap, %struct.inline_remap* %14, i32 0, i32 6
  %15 = load %struct.rtx_def**, %struct.rtx_def*** %insn_map, align 8
  %arrayidx10 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %15, i64 %idxprom
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx10, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %insn, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool11 = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool11, label %if.else.18, label %if.then.12

if.then.12:                                       ; preds = %if.else
  %18 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load13 = load i32, i32* %19, align 8
  %bf.lshr14 = lshr i32 %bf.load13, 16
  %bf.clear15 = and i32 %bf.lshr14, 255
  %cmp16 = icmp ne i32 %bf.clear15, 13
  br i1 %cmp16, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %if.then.12
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 1762, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.final_reg_note_copy, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %if.then.12
  br label %if.end.22

if.else.18:                                       ; preds = %if.else
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  store %struct.rtx_def* %20, %struct.rtx_def** %rtx21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.18, %if.end
  br label %if.end.23

if.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %while.body
  %22 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  store %struct.rtx_def** %rtx27, %struct.rtx_def*** %notesp.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

declare %struct.rtx_def* @loop_insn_emit_before(%struct.loop*, %struct.basic_block_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @find_last_value(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def*, i32) #1

declare %struct.rtx_def* @rtx_alloc(i32) #1

declare %struct.rtx_def* @simplify_binary_operation(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @gen_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_splittable_givs(%struct.loop* %loop, %struct.iv_class* %bl, i32 %unroll_type, %struct.rtx_def* %increment, i32 %unroll_number) #0 {
entry:
  %loop.addr = alloca %struct.loop*, align 8
  %bl.addr = alloca %struct.iv_class*, align 8
  %unroll_type.addr = alloca i32, align 4
  %increment.addr = alloca %struct.rtx_def*, align 8
  %unroll_number.addr = alloca i32, align 4
  %ivs = alloca %struct.loop_ivs*, align 8
  %v = alloca %struct.induction*, align 8
  %v2 = alloca %struct.induction*, align 8
  %final_value = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %result = alloca i32, align 4
  %giv_inc = alloca %struct.rtx_def*, align 8
  %value = alloca %struct.rtx_def*, align 8
  %biv_initial_value = alloca %struct.rtx_def*, align 8
  %tem139 = alloca %struct.rtx_def*, align 8
  %tem203 = alloca %struct.rtx_def*, align 8
  %tem278 = alloca %struct.rtx_def*, align 8
  %same281 = alloca %struct.induction*, align 8
  %new_reg283 = alloca %struct.rtx_def*, align 8
  %sequence = alloca %struct.rtx_def*, align 8
  %ret = alloca %struct.rtx_def*, align 8
  %count = alloca i32, align 4
  %regnum = alloca i32, align 4
  store %struct.loop* %loop, %struct.loop** %loop.addr, align 8
  store %struct.iv_class* %bl, %struct.iv_class** %bl.addr, align 8
  store i32 %unroll_type, i32* %unroll_type.addr, align 4
  store %struct.rtx_def* %increment, %struct.rtx_def** %increment.addr, align 8
  store i32 %unroll_number, i32* %unroll_number.addr, align 4
  %0 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %aux = getelementptr inbounds %struct.loop, %struct.loop* %0, i32 0, i32 22
  %1 = load i8*, i8** %aux, align 8
  %2 = bitcast i8* %1 to %struct.loop_info*
  %ivs1 = getelementptr inbounds %struct.loop_info, %struct.loop_info* %2, i32 0, i32 29
  store %struct.loop_ivs* %ivs1, %struct.loop_ivs** %ivs, align 8
  store i32 0, i32* %result, align 4
  %3 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %giv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %3, i32 0, i32 4
  %4 = load %struct.induction*, %struct.induction** %giv, align 8
  store %struct.induction* %4, %struct.induction** %v, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.12, %entry
  %5 = load %struct.induction*, %struct.induction** %v, align 8
  %tobool = icmp ne %struct.induction* %5, null
  br i1 %tobool, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %6 = load %struct.induction*, %struct.induction** %v, align 8
  %next_iv = getelementptr inbounds %struct.induction, %struct.induction* %6, i32 0, i32 17
  %7 = load %struct.induction*, %struct.induction** %next_iv, align 8
  store %struct.induction* %7, %struct.induction** %v2, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load %struct.induction*, %struct.induction** %v2, align 8
  %tobool3 = icmp ne %struct.induction* %8, null
  br i1 %tobool3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %9 = load %struct.induction*, %struct.induction** %v, align 8
  %insn = getelementptr inbounds %struct.induction, %struct.induction* %9, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = load %struct.induction*, %struct.induction** %v2, align 8
  %insn5 = getelementptr inbounds %struct.induction, %struct.induction* %11, i32 0, i32 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn5, align 8
  %cmp = icmp eq %struct.rtx_def* %10, %12
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body.4
  %13 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg = getelementptr inbounds %struct.induction, %struct.induction* %13, i32 0, i32 1
  %14 = load %struct.rtx_def*, %struct.rtx_def** %new_reg, align 8
  %15 = load %struct.induction*, %struct.induction** %v2, align 8
  %new_reg6 = getelementptr inbounds %struct.induction, %struct.induction* %15, i32 0, i32 1
  %16 = load %struct.rtx_def*, %struct.rtx_def** %new_reg6, align 8
  %call = call i32 @rtx_equal_p(%struct.rtx_def* %14, %struct.rtx_def* %16)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %land.lhs.true.8, label %if.end

land.lhs.true.8:                                  ; preds = %land.lhs.true
  %17 = load %struct.induction*, %struct.induction** %v2, align 8
  %same_insn = getelementptr inbounds %struct.induction, %struct.induction* %17, i32 0, i32 20
  %18 = load %struct.induction*, %struct.induction** %same_insn, align 8
  %tobool9 = icmp ne %struct.induction* %18, null
  br i1 %tobool9, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true.8
  %19 = load %struct.induction*, %struct.induction** %v, align 8
  %20 = load %struct.induction*, %struct.induction** %v2, align 8
  %same_insn10 = getelementptr inbounds %struct.induction, %struct.induction* %20, i32 0, i32 20
  store %struct.induction* %19, %struct.induction** %same_insn10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.8, %land.lhs.true, %for.body.4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load %struct.induction*, %struct.induction** %v2, align 8
  %next_iv11 = getelementptr inbounds %struct.induction, %struct.induction* %21, i32 0, i32 17
  %22 = load %struct.induction*, %struct.induction** %next_iv11, align 8
  store %struct.induction* %22, %struct.induction** %v2, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.end
  %23 = load %struct.induction*, %struct.induction** %v, align 8
  %next_iv13 = getelementptr inbounds %struct.induction, %struct.induction* %23, i32 0, i32 17
  %24 = load %struct.induction*, %struct.induction** %next_iv13, align 8
  store %struct.induction* %24, %struct.induction** %v, align 8
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %25 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %giv15 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %25, i32 0, i32 4
  %26 = load %struct.induction*, %struct.induction** %giv15, align 8
  store %struct.induction* %26, %struct.induction** %v, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.549, %for.end.14
  %27 = load %struct.induction*, %struct.induction** %v, align 8
  %tobool17 = icmp ne %struct.induction* %27, null
  br i1 %tobool17, label %for.body.18, label %for.end.551

for.body.18:                                      ; preds = %for.cond.16
  %28 = load i32, i32* %unroll_type.addr, align 4
  %cmp19 = icmp ne i32 %28, 0
  br i1 %cmp19, label %land.lhs.true.20, label %if.end.23

land.lhs.true.20:                                 ; preds = %for.body.18
  %29 = load %struct.induction*, %struct.induction** %v, align 8
  %ignore = getelementptr inbounds %struct.induction, %struct.induction* %29, i32 0, i32 13
  %bf.load = load i16, i16* %ignore, align 4
  %bf.lshr = lshr i16 %bf.load, 2
  %bf.clear = and i16 %bf.lshr, 1
  %bf.cast = zext i16 %bf.clear to i32
  %tobool21 = icmp ne i32 %bf.cast, 0
  br i1 %tobool21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %land.lhs.true.20
  br label %for.inc.549

if.end.23:                                        ; preds = %land.lhs.true.20, %for.body.18
  %30 = load %struct.induction*, %struct.induction** %v, align 8
  %giv_type = getelementptr inbounds %struct.induction, %struct.induction* %30, i32 0, i32 3
  %31 = load i32, i32* %giv_type, align 4
  %cmp24 = icmp ne i32 %31, 0
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.35

land.lhs.true.25:                                 ; preds = %if.end.23
  %32 = load %struct.induction*, %struct.induction** %v, align 8
  %always_computable = getelementptr inbounds %struct.induction, %struct.induction* %32, i32 0, i32 13
  %bf.load26 = load i16, i16* %always_computable, align 4
  %bf.lshr27 = lshr i16 %bf.load26, 3
  %bf.clear28 = and i16 %bf.lshr27, 1
  %bf.cast29 = zext i16 %bf.clear28 to i32
  %tobool30 = icmp ne i32 %bf.cast29, 0
  br i1 %tobool30, label %lor.lhs.false, label %if.then.34

lor.lhs.false:                                    ; preds = %land.lhs.true.25
  %33 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %34 = load %struct.induction*, %struct.induction** %v, align 8
  %insn31 = getelementptr inbounds %struct.induction, %struct.induction* %34, i32 0, i32 0
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn31, align 8
  %call32 = call i32 @back_branch_in_range_p(%struct.loop* %33, %struct.rtx_def* %35)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %lor.lhs.false, %land.lhs.true.25
  br label %for.inc.549

if.end.35:                                        ; preds = %lor.lhs.false, %if.end.23
  %36 = load %struct.induction*, %struct.induction** %v, align 8
  %mult_val = getelementptr inbounds %struct.induction, %struct.induction* %36, i32 0, i32 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %mult_val, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %increment.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %40 = load %struct.induction*, %struct.induction** %v, align 8
  %mode = getelementptr inbounds %struct.induction, %struct.induction* %40, i32 0, i32 6
  %41 = load i32, i32* %mode, align 4
  %call36 = call %struct.rtx_def* @fold_rtx_mult_add(%struct.rtx_def* %37, %struct.rtx_def* %38, %struct.rtx_def* %39, i32 %41)
  store %struct.rtx_def* %call36, %struct.rtx_def** %giv_inc, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %tobool37 = icmp ne %struct.rtx_def* %42, null
  br i1 %tobool37, label %lor.lhs.false.38, label %if.then.42

lor.lhs.false.38:                                 ; preds = %if.end.35
  %43 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load39 = load i32, i32* %44, align 8
  %bf.clear40 = and i32 %bf.load39, 65535
  %cmp41 = icmp ne i32 %bf.clear40, 54
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %lor.lhs.false.38, %if.end.35
  br label %for.inc.549

if.end.43:                                        ; preds = %lor.lhs.false.38
  store %struct.rtx_def* null, %struct.rtx_def** %final_value, align 8
  %45 = load i32, i32* %unroll_type.addr, align 4
  %cmp44 = icmp ne i32 %45, 0
  br i1 %cmp44, label %land.lhs.true.45, label %if.end.110

land.lhs.true.45:                                 ; preds = %if.end.43
  %46 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %exit_count = getelementptr inbounds %struct.loop, %struct.loop* %46, i32 0, i32 32
  %47 = load i32, i32* %exit_count, align 4
  %tobool46 = icmp ne i32 %47, 0
  br i1 %tobool46, label %land.lhs.true.49, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %land.lhs.true.45
  %48 = load i32, i32* %unroll_type.addr, align 4
  %cmp48 = icmp eq i32 %48, 2
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.110

land.lhs.true.49:                                 ; preds = %lor.lhs.false.47, %land.lhs.true.45
  %49 = load %struct.induction*, %struct.induction** %v, align 8
  %giv_type50 = getelementptr inbounds %struct.induction, %struct.induction* %49, i32 0, i32 3
  %50 = load i32, i32* %giv_type50, align 4
  %cmp51 = icmp ne i32 %50, 0
  br i1 %cmp51, label %land.lhs.true.52, label %if.end.110

land.lhs.true.52:                                 ; preds = %land.lhs.true.49
  %51 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg = getelementptr inbounds %struct.induction, %struct.induction* %51, i32 0, i32 4
  %52 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %53 = load i32, i32* %rtuint, align 4
  %54 = load i32, i32* @max_reg_before_loop, align 4
  %cmp53 = icmp uge i32 %53, %54
  br i1 %cmp53, label %land.lhs.true.106, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %land.lhs.true.52
  %55 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg55 = getelementptr inbounds %struct.induction, %struct.induction* %55, i32 0, i32 4
  %56 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg55, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtuint58 = bitcast %union.rtunion_def* %arrayidx57 to i32*
  %57 = load i32, i32* %rtuint58, align 4
  %idxprom = zext i32 %57 to i64
  %58 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %58, i32 0, i32 4
  %reg = bitcast %union.varray_data_tag* %data to [1 x %struct.reg_info_def*]*
  %arrayidx59 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg, i32 0, i64 %idxprom
  %59 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx59, align 8
  %first_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %59, i32 0, i32 0
  %60 = load i32, i32* %first_uid, align 4
  %61 = load %struct.induction*, %struct.induction** %v, align 8
  %insn60 = getelementptr inbounds %struct.induction, %struct.induction* %61, i32 0, i32 0
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn60, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx62 to i32*
  %63 = load i32, i32* %rtint, align 4
  %cmp63 = icmp ne i32 %60, %63
  br i1 %cmp63, label %land.lhs.true.64, label %lor.lhs.false.84

land.lhs.true.64:                                 ; preds = %lor.lhs.false.54
  %64 = load %struct.induction*, %struct.induction** %v, align 8
  %insn65 = getelementptr inbounds %struct.induction, %struct.induction* %64, i32 0, i32 0
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn65, align 8
  %call66 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %65, i32 6, %struct.rtx_def* null)
  store %struct.rtx_def* %call66, %struct.rtx_def** %tem, align 8
  %tobool67 = icmp ne %struct.rtx_def* %call66, null
  br i1 %tobool67, label %lor.lhs.false.68, label %land.lhs.true.106

lor.lhs.false.68:                                 ; preds = %land.lhs.true.64
  %66 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg69 = getelementptr inbounds %struct.induction, %struct.induction* %66, i32 0, i32 4
  %67 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg69, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtuint72 = bitcast %union.rtunion_def* %arrayidx71 to i32*
  %68 = load i32, i32* %rtuint72, align 4
  %idxprom73 = zext i32 %68 to i64
  %69 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data74 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %69, i32 0, i32 4
  %reg75 = bitcast %union.varray_data_tag* %data74 to [1 x %struct.reg_info_def*]*
  %arrayidx76 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg75, i32 0, i64 %idxprom73
  %70 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx76, align 8
  %first_uid77 = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %70, i32 0, i32 0
  %71 = load i32, i32* %first_uid77, align 4
  %72 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %73 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 0
  %rtint82 = bitcast %union.rtunion_def* %arrayidx81 to i32*
  %74 = load i32, i32* %rtint82, align 4
  %cmp83 = icmp ne i32 %71, %74
  br i1 %cmp83, label %land.lhs.true.106, label %lor.lhs.false.84

lor.lhs.false.84:                                 ; preds = %lor.lhs.false.68, %lor.lhs.false.54
  %75 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg85 = getelementptr inbounds %struct.induction, %struct.induction* %75, i32 0, i32 4
  %76 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg85, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtuint88 = bitcast %union.rtunion_def* %arrayidx87 to i32*
  %77 = load i32, i32* %rtuint88, align 4
  %idxprom89 = zext i32 %77 to i64
  %78 = load %struct.varray_head_tag*, %struct.varray_head_tag** @reg_n_info, align 8
  %data90 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %78, i32 0, i32 4
  %reg91 = bitcast %union.varray_data_tag* %data90 to [1 x %struct.reg_info_def*]*
  %arrayidx92 = getelementptr inbounds [1 x %struct.reg_info_def*], [1 x %struct.reg_info_def*]* %reg91, i32 0, i64 %idxprom89
  %79 = load %struct.reg_info_def*, %struct.reg_info_def** %arrayidx92, align 8
  %last_uid = getelementptr inbounds %struct.reg_info_def, %struct.reg_info_def* %79, i32 0, i32 1
  %80 = load i32, i32* %last_uid, align 4
  %idxprom93 = sext i32 %80 to i64
  %81 = load i32*, i32** @uid_luid, align 8
  %arrayidx94 = getelementptr inbounds i32, i32* %81, i64 %idxprom93
  %82 = load i32, i32* %arrayidx94, align 4
  %83 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end = getelementptr inbounds %struct.loop, %struct.loop* %83, i32 0, i32 27
  %84 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 0
  %rtint97 = bitcast %union.rtunion_def* %arrayidx96 to i32*
  %85 = load i32, i32* %rtint97, align 4
  %86 = load i32, i32* @max_uid_for_loop, align 4
  %cmp98 = icmp slt i32 %85, %86
  br i1 %cmp98, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false.84
  %87 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %end99 = getelementptr inbounds %struct.loop, %struct.loop* %87, i32 0, i32 27
  %88 = load %struct.rtx_def*, %struct.rtx_def** %end99, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 0
  %rtint102 = bitcast %union.rtunion_def* %arrayidx101 to i32*
  %89 = load i32, i32* %rtint102, align 4
  %idxprom103 = sext i32 %89 to i64
  %90 = load i32*, i32** @uid_luid, align 8
  %arrayidx104 = getelementptr inbounds i32, i32* %90, i64 %idxprom103
  %91 = load i32, i32* %arrayidx104, align 4
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false.84
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 2772, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__FUNCTION__.find_splittable_givs, i32 0, i32 0)) #5
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %92, %cond.true
  %cond = phi i32 [ %91, %cond.true ], [ -1, %92 ]
  %cmp105 = icmp sge i32 %82, %cond
  br i1 %cmp105, label %land.lhs.true.106, label %if.end.110

land.lhs.true.106:                                ; preds = %cond.end, %lor.lhs.false.68, %land.lhs.true.64, %land.lhs.true.52
  %93 = load %struct.induction*, %struct.induction** %v, align 8
  %final_value107 = getelementptr inbounds %struct.induction, %struct.induction* %93, i32 0, i32 11
  %94 = load %struct.rtx_def*, %struct.rtx_def** %final_value107, align 8
  store %struct.rtx_def* %94, %struct.rtx_def** %final_value, align 8
  %tobool108 = icmp ne %struct.rtx_def* %94, null
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %land.lhs.true.106
  br label %for.inc.549

if.end.110:                                       ; preds = %land.lhs.true.106, %cond.end, %land.lhs.true.49, %lor.lhs.false.47, %if.end.43
  %95 = load i32, i32* %unroll_type.addr, align 4
  %cmp111 = icmp eq i32 %95, 0
  br i1 %cmp111, label %if.then.112, label %if.else.156

if.then.112:                                      ; preds = %if.end.110
  %96 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %regno = getelementptr inbounds %struct.iv_class, %struct.iv_class* %96, i32 0, i32 0
  %97 = load i32, i32* %regno, align 4
  %idxprom113 = zext i32 %97 to i64
  %98 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx114 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %98, i64 %idxprom113
  %99 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx114, align 8
  %tobool115 = icmp ne %struct.rtx_def* %99, null
  br i1 %tobool115, label %if.then.116, label %if.else

if.then.116:                                      ; preds = %if.then.112
  %100 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %regno117 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %100, i32 0, i32 0
  %101 = load i32, i32* %regno117, align 4
  %idxprom118 = zext i32 %101 to i64
  %102 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx119 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %102, i64 %idxprom118
  %103 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx119, align 8
  store %struct.rtx_def* %103, %struct.rtx_def** %biv_initial_value, align 8
  br label %if.end.150

if.else:                                          ; preds = %if.then.112
  %104 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %initial_value = getelementptr inbounds %struct.iv_class, %struct.iv_class* %104, i32 0, i32 6
  %105 = load %struct.rtx_def*, %struct.rtx_def** %initial_value, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load120 = load i32, i32* %106, align 8
  %bf.clear121 = and i32 %bf.load120, 65535
  %cmp122 = icmp ne i32 %bf.clear121, 61
  br i1 %cmp122, label %if.then.136, label %lor.lhs.false.123

lor.lhs.false.123:                                ; preds = %if.else
  %107 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %initial_value124 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %107, i32 0, i32 6
  %108 = load %struct.rtx_def*, %struct.rtx_def** %initial_value124, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 0
  %rtuint127 = bitcast %union.rtunion_def* %arrayidx126 to i32*
  %109 = load i32, i32* %rtuint127, align 4
  %110 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %regno128 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %110, i32 0, i32 0
  %111 = load i32, i32* %regno128, align 4
  %cmp129 = icmp ne i32 %109, %111
  br i1 %cmp129, label %land.lhs.true.130, label %if.else.138

land.lhs.true.130:                                ; preds = %lor.lhs.false.123
  %112 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %initial_value131 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %112, i32 0, i32 6
  %113 = load %struct.rtx_def*, %struct.rtx_def** %initial_value131, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 0
  %rtuint134 = bitcast %union.rtunion_def* %arrayidx133 to i32*
  %114 = load i32, i32* %rtuint134, align 4
  %cmp135 = icmp uge i32 %114, 53
  br i1 %cmp135, label %if.then.136, label %if.else.138

if.then.136:                                      ; preds = %land.lhs.true.130, %if.else
  %115 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %initial_value137 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %115, i32 0, i32 6
  %116 = load %struct.rtx_def*, %struct.rtx_def** %initial_value137, align 8
  store %struct.rtx_def* %116, %struct.rtx_def** %biv_initial_value, align 8
  br label %if.end.149

if.else.138:                                      ; preds = %land.lhs.true.130, %lor.lhs.false.123
  %117 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %biv = getelementptr inbounds %struct.iv_class, %struct.iv_class* %117, i32 0, i32 2
  %118 = load %struct.induction*, %struct.induction** %biv, align 8
  %mode140 = getelementptr inbounds %struct.induction, %struct.induction* %118, i32 0, i32 6
  %119 = load i32, i32* %mode140, align 4
  %call141 = call %struct.rtx_def* @gen_reg_rtx(i32 %119)
  store %struct.rtx_def* %call141, %struct.rtx_def** %tem139, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** %tem139, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 0
  %rtuint144 = bitcast %union.rtunion_def* %arrayidx143 to i32*
  %121 = load i32, i32* %rtuint144, align 4
  %122 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %biv145 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %122, i32 0, i32 2
  %123 = load %struct.induction*, %struct.induction** %biv145, align 8
  %add_val = getelementptr inbounds %struct.induction, %struct.induction* %123, i32 0, i32 9
  %124 = load %struct.rtx_def*, %struct.rtx_def** %add_val, align 8
  call void @record_base_value(i32 %121, %struct.rtx_def* %124, i32 0)
  %125 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %126 = load %struct.rtx_def*, %struct.rtx_def** %tem139, align 8
  %127 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %biv146 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %127, i32 0, i32 2
  %128 = load %struct.induction*, %struct.induction** %biv146, align 8
  %src_reg = getelementptr inbounds %struct.induction, %struct.induction* %128, i32 0, i32 2
  %129 = load %struct.rtx_def*, %struct.rtx_def** %src_reg, align 8
  %call147 = call %struct.rtx_def* @gen_move_insn(%struct.rtx_def* %126, %struct.rtx_def* %129)
  %call148 = call %struct.rtx_def* @loop_insn_hoist(%struct.loop* %125, %struct.rtx_def* %call147)
  %130 = load %struct.rtx_def*, %struct.rtx_def** %tem139, align 8
  store %struct.rtx_def* %130, %struct.rtx_def** %biv_initial_value, align 8
  br label %if.end.149

if.end.149:                                       ; preds = %if.else.138, %if.then.136
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.116
  %131 = load %struct.induction*, %struct.induction** %v, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %biv_initial_value, align 8
  %call151 = call %struct.rtx_def* @extend_value_for_giv(%struct.induction* %131, %struct.rtx_def* %132)
  store %struct.rtx_def* %call151, %struct.rtx_def** %biv_initial_value, align 8
  %133 = load %struct.induction*, %struct.induction** %v, align 8
  %mult_val152 = getelementptr inbounds %struct.induction, %struct.induction* %133, i32 0, i32 8
  %134 = load %struct.rtx_def*, %struct.rtx_def** %mult_val152, align 8
  %135 = load %struct.rtx_def*, %struct.rtx_def** %biv_initial_value, align 8
  %136 = load %struct.induction*, %struct.induction** %v, align 8
  %add_val153 = getelementptr inbounds %struct.induction, %struct.induction* %136, i32 0, i32 9
  %137 = load %struct.rtx_def*, %struct.rtx_def** %add_val153, align 8
  %138 = load %struct.induction*, %struct.induction** %v, align 8
  %mode154 = getelementptr inbounds %struct.induction, %struct.induction* %138, i32 0, i32 6
  %139 = load i32, i32* %mode154, align 4
  %call155 = call %struct.rtx_def* @fold_rtx_mult_add(%struct.rtx_def* %134, %struct.rtx_def* %135, %struct.rtx_def* %137, i32 %139)
  store %struct.rtx_def* %call155, %struct.rtx_def** %value, align 8
  br label %if.end.157

if.else.156:                                      ; preds = %if.end.110
  %140 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %140, %struct.rtx_def** %value, align 8
  br label %if.end.157

if.end.157:                                       ; preds = %if.else.156, %if.end.150
  %141 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg158 = getelementptr inbounds %struct.induction, %struct.induction* %141, i32 0, i32 1
  %142 = load %struct.rtx_def*, %struct.rtx_def** %new_reg158, align 8
  %tobool159 = icmp ne %struct.rtx_def* %142, null
  br i1 %tobool159, label %if.then.160, label %if.else.488

if.then.160:                                      ; preds = %if.end.157
  %143 = load %struct.induction*, %struct.induction** %v, align 8
  %same = getelementptr inbounds %struct.induction, %struct.induction* %143, i32 0, i32 18
  %144 = load %struct.induction*, %struct.induction** %same, align 8
  %tobool161 = icmp ne %struct.induction* %144, null
  br i1 %tobool161, label %land.lhs.true.162, label %if.else.171

land.lhs.true.162:                                ; preds = %if.then.160
  %145 = load %struct.induction*, %struct.induction** %v, align 8
  %same163 = getelementptr inbounds %struct.induction, %struct.induction* %145, i32 0, i32 18
  %146 = load %struct.induction*, %struct.induction** %same163, align 8
  %new_reg164 = getelementptr inbounds %struct.induction, %struct.induction* %146, i32 0, i32 1
  %147 = load %struct.rtx_def*, %struct.rtx_def** %new_reg164, align 8
  %tobool165 = icmp ne %struct.rtx_def* %147, null
  br i1 %tobool165, label %if.else.171, label %if.then.166

if.then.166:                                      ; preds = %land.lhs.true.162
  %148 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool167 = icmp ne %struct._IO_FILE* %148, null
  br i1 %tobool167, label %if.then.168, label %if.end.170

if.then.168:                                      ; preds = %if.then.166
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.58, i32 0, i32 0))
  br label %if.end.170

if.end.170:                                       ; preds = %if.then.168, %if.then.166
  br label %for.inc.549

if.else.171:                                      ; preds = %land.lhs.true.162, %if.then.160
  %150 = load %struct.induction*, %struct.induction** %v, align 8
  %giv_type172 = getelementptr inbounds %struct.induction, %struct.induction* %150, i32 0, i32 3
  %151 = load i32, i32* %giv_type172, align 4
  %cmp173 = icmp eq i32 %151, 1
  br i1 %cmp173, label %if.then.174, label %if.else.220

if.then.174:                                      ; preds = %if.else.171
  %152 = load i32, i32* %unroll_type.addr, align 4
  %cmp175 = icmp eq i32 %152, 0
  br i1 %cmp175, label %land.lhs.true.176, label %if.end.213

land.lhs.true.176:                                ; preds = %if.then.174
  %153 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %154 = bitcast %struct.rtx_def* %153 to i32*
  %bf.load177 = load i32, i32* %154, align 8
  %bf.clear178 = and i32 %bf.load177, 65535
  %cmp179 = icmp ne i32 %bf.clear178, 54
  br i1 %cmp179, label %land.lhs.true.180, label %if.end.213

land.lhs.true.180:                                ; preds = %land.lhs.true.176
  %155 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %156 = bitcast %struct.rtx_def* %155 to i32*
  %bf.load181 = load i32, i32* %156, align 8
  %bf.clear182 = and i32 %bf.load181, 65535
  %cmp183 = icmp ne i32 %bf.clear182, 61
  br i1 %cmp183, label %land.lhs.true.184, label %if.end.213

land.lhs.true.184:                                ; preds = %land.lhs.true.180
  %157 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %158 = bitcast %struct.rtx_def* %157 to i32*
  %bf.load185 = load i32, i32* %158, align 8
  %bf.clear186 = and i32 %bf.load185, 65535
  %cmp187 = icmp ne i32 %bf.clear186, 75
  br i1 %cmp187, label %if.then.202, label %lor.lhs.false.188

lor.lhs.false.188:                                ; preds = %land.lhs.true.184
  %159 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %fld189 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx190 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld189, i32 0, i64 0
  %rtx191 = bitcast %union.rtunion_def* %arrayidx190 to %struct.rtx_def**
  %160 = load %struct.rtx_def*, %struct.rtx_def** %rtx191, align 8
  %161 = bitcast %struct.rtx_def* %160 to i32*
  %bf.load192 = load i32, i32* %161, align 8
  %bf.clear193 = and i32 %bf.load192, 65535
  %cmp194 = icmp ne i32 %bf.clear193, 61
  br i1 %cmp194, label %if.then.202, label %lor.lhs.false.195

lor.lhs.false.195:                                ; preds = %lor.lhs.false.188
  %162 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 1
  %rtx198 = bitcast %union.rtunion_def* %arrayidx197 to %struct.rtx_def**
  %163 = load %struct.rtx_def*, %struct.rtx_def** %rtx198, align 8
  %164 = bitcast %struct.rtx_def* %163 to i32*
  %bf.load199 = load i32, i32* %164, align 8
  %bf.clear200 = and i32 %bf.load199, 65535
  %cmp201 = icmp ne i32 %bf.clear200, 54
  br i1 %cmp201, label %if.then.202, label %if.end.213

if.then.202:                                      ; preds = %lor.lhs.false.195, %lor.lhs.false.188, %land.lhs.true.184
  %165 = load %struct.induction*, %struct.induction** %v, align 8
  %mode204 = getelementptr inbounds %struct.induction, %struct.induction* %165, i32 0, i32 6
  %166 = load i32, i32* %mode204, align 4
  %call205 = call %struct.rtx_def* @gen_reg_rtx(i32 %166)
  store %struct.rtx_def* %call205, %struct.rtx_def** %tem203, align 8
  %167 = load %struct.rtx_def*, %struct.rtx_def** %tem203, align 8
  %fld206 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %167, i32 0, i32 1
  %arrayidx207 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld206, i32 0, i64 0
  %rtuint208 = bitcast %union.rtunion_def* %arrayidx207 to i32*
  %168 = load i32, i32* %rtuint208, align 4
  %169 = load %struct.induction*, %struct.induction** %v, align 8
  %add_val209 = getelementptr inbounds %struct.induction, %struct.induction* %169, i32 0, i32 9
  %170 = load %struct.rtx_def*, %struct.rtx_def** %add_val209, align 8
  call void @record_base_value(i32 %168, %struct.rtx_def* %170, i32 0)
  %171 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %172 = load %struct.iv_class*, %struct.iv_class** %bl.addr, align 8
  %initial_value210 = getelementptr inbounds %struct.iv_class, %struct.iv_class* %172, i32 0, i32 6
  %173 = load %struct.rtx_def*, %struct.rtx_def** %initial_value210, align 8
  %174 = load %struct.induction*, %struct.induction** %v, align 8
  %mult_val211 = getelementptr inbounds %struct.induction, %struct.induction* %174, i32 0, i32 8
  %175 = load %struct.rtx_def*, %struct.rtx_def** %mult_val211, align 8
  %176 = load %struct.induction*, %struct.induction** %v, align 8
  %add_val212 = getelementptr inbounds %struct.induction, %struct.induction* %176, i32 0, i32 9
  %177 = load %struct.rtx_def*, %struct.rtx_def** %add_val212, align 8
  %178 = load %struct.rtx_def*, %struct.rtx_def** %tem203, align 8
  call void @loop_iv_add_mult_hoist(%struct.loop* %171, %struct.rtx_def* %173, %struct.rtx_def* %175, %struct.rtx_def* %177, %struct.rtx_def* %178)
  %179 = load %struct.rtx_def*, %struct.rtx_def** %tem203, align 8
  store %struct.rtx_def* %179, %struct.rtx_def** %value, align 8
  br label %if.end.213

if.end.213:                                       ; preds = %if.then.202, %lor.lhs.false.195, %land.lhs.true.180, %land.lhs.true.176, %if.then.174
  %180 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %181 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg214 = getelementptr inbounds %struct.induction, %struct.induction* %181, i32 0, i32 1
  %182 = load %struct.rtx_def*, %struct.rtx_def** %new_reg214, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %182, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 0
  %rtuint217 = bitcast %union.rtunion_def* %arrayidx216 to i32*
  %183 = load i32, i32* %rtuint217, align 4
  %idxprom218 = zext i32 %183 to i64
  %184 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx219 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %184, i64 %idxprom218
  store %struct.rtx_def* %180, %struct.rtx_def** %arrayidx219, align 8
  br label %if.end.486

if.else.220:                                      ; preds = %if.else.171
  %185 = load %struct.induction*, %struct.induction** %v, align 8
  %const_adjust = getelementptr inbounds %struct.induction, %struct.induction* %185, i32 0, i32 19
  store i64 0, i64* %const_adjust, align 8
  %186 = load %struct.induction*, %struct.induction** %v, align 8
  %same_insn221 = getelementptr inbounds %struct.induction, %struct.induction* %186, i32 0, i32 20
  %187 = load %struct.induction*, %struct.induction** %same_insn221, align 8
  %tobool222 = icmp ne %struct.induction* %187, null
  br i1 %tobool222, label %if.then.223, label %if.else.235

if.then.223:                                      ; preds = %if.else.220
  %188 = load %struct.induction*, %struct.induction** %v, align 8
  %same_insn224 = getelementptr inbounds %struct.induction, %struct.induction* %188, i32 0, i32 20
  %189 = load %struct.induction*, %struct.induction** %same_insn224, align 8
  %dest_reg225 = getelementptr inbounds %struct.induction, %struct.induction* %189, i32 0, i32 4
  %190 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg225, align 8
  %191 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg226 = getelementptr inbounds %struct.induction, %struct.induction* %191, i32 0, i32 4
  store %struct.rtx_def* %190, %struct.rtx_def** %dest_reg226, align 8
  %192 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool227 = icmp ne %struct._IO_FILE* %192, null
  br i1 %tobool227, label %if.then.228, label %if.end.234

if.then.228:                                      ; preds = %if.then.223
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %194 = load %struct.induction*, %struct.induction** %v, align 8
  %insn229 = getelementptr inbounds %struct.induction, %struct.induction* %194, i32 0, i32 0
  %195 = load %struct.rtx_def*, %struct.rtx_def** %insn229, align 8
  %fld230 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i32 0, i32 1
  %arrayidx231 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld230, i32 0, i64 0
  %rtint232 = bitcast %union.rtunion_def* %arrayidx231 to i32*
  %196 = load i32, i32* %rtint232, align 4
  %call233 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %193, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.59, i32 0, i32 0), i32 %196)
  br label %if.end.234

if.end.234:                                       ; preds = %if.then.228, %if.then.223
  br label %if.end.441

if.else.235:                                      ; preds = %if.else.220
  %197 = load i32, i32* %unroll_type.addr, align 4
  %cmp236 = icmp ne i32 %197, 0
  br i1 %cmp236, label %land.lhs.true.237, label %if.else.275

land.lhs.true.237:                                ; preds = %if.else.235
  %198 = load %struct.induction*, %struct.induction** %v, align 8
  %giv_type238 = getelementptr inbounds %struct.induction, %struct.induction* %198, i32 0, i32 3
  %199 = load i32, i32* %giv_type238, align 4
  %cmp239 = icmp eq i32 %199, 0
  br i1 %cmp239, label %land.lhs.true.240, label %if.else.275

land.lhs.true.240:                                ; preds = %land.lhs.true.237
  %200 = load %struct.induction*, %struct.induction** %v, align 8
  %same241 = getelementptr inbounds %struct.induction, %struct.induction* %200, i32 0, i32 18
  %201 = load %struct.induction*, %struct.induction** %same241, align 8
  %tobool242 = icmp ne %struct.induction* %201, null
  br i1 %tobool242, label %land.lhs.true.243, label %if.else.275

land.lhs.true.243:                                ; preds = %land.lhs.true.240
  %202 = load %struct.induction*, %struct.induction** %v, align 8
  %same244 = getelementptr inbounds %struct.induction, %struct.induction* %202, i32 0, i32 18
  %203 = load %struct.induction*, %struct.induction** %same244, align 8
  %giv_type245 = getelementptr inbounds %struct.induction, %struct.induction* %203, i32 0, i32 3
  %204 = load i32, i32* %giv_type245, align 4
  %cmp246 = icmp eq i32 %204, 0
  br i1 %cmp246, label %land.lhs.true.247, label %if.else.275

land.lhs.true.247:                                ; preds = %land.lhs.true.243
  %205 = load %struct.induction*, %struct.induction** %v, align 8
  %same248 = getelementptr inbounds %struct.induction, %struct.induction* %205, i32 0, i32 18
  %206 = load %struct.induction*, %struct.induction** %same248, align 8
  %unrolled = getelementptr inbounds %struct.induction, %struct.induction* %206, i32 0, i32 13
  %bf.load249 = load i16, i16* %unrolled, align 4
  %bf.lshr250 = lshr i16 %bf.load249, 9
  %bf.clear251 = and i16 %bf.lshr250, 1
  %bf.cast252 = zext i16 %bf.clear251 to i32
  %tobool253 = icmp ne i32 %bf.cast252, 0
  br i1 %tobool253, label %land.lhs.true.254, label %if.else.275

land.lhs.true.254:                                ; preds = %land.lhs.true.247
  %207 = load %struct.induction*, %struct.induction** %v, align 8
  %same255 = getelementptr inbounds %struct.induction, %struct.induction* %207, i32 0, i32 18
  %208 = load %struct.induction*, %struct.induction** %same255, align 8
  %mult_val256 = getelementptr inbounds %struct.induction, %struct.induction* %208, i32 0, i32 8
  %209 = load %struct.rtx_def*, %struct.rtx_def** %mult_val256, align 8
  %210 = load %struct.induction*, %struct.induction** %v, align 8
  %mult_val257 = getelementptr inbounds %struct.induction, %struct.induction* %210, i32 0, i32 8
  %211 = load %struct.rtx_def*, %struct.rtx_def** %mult_val257, align 8
  %call258 = call i32 @rtx_equal_p(%struct.rtx_def* %209, %struct.rtx_def* %211)
  %tobool259 = icmp ne i32 %call258, 0
  br i1 %tobool259, label %land.lhs.true.260, label %if.else.275

land.lhs.true.260:                                ; preds = %land.lhs.true.254
  %212 = load %struct.induction*, %struct.induction** %v, align 8
  %same261 = getelementptr inbounds %struct.induction, %struct.induction* %212, i32 0, i32 18
  %213 = load %struct.induction*, %struct.induction** %same261, align 8
  %add_val262 = getelementptr inbounds %struct.induction, %struct.induction* %213, i32 0, i32 9
  %214 = load %struct.rtx_def*, %struct.rtx_def** %add_val262, align 8
  %215 = load %struct.induction*, %struct.induction** %v, align 8
  %add_val263 = getelementptr inbounds %struct.induction, %struct.induction* %215, i32 0, i32 9
  %216 = load %struct.rtx_def*, %struct.rtx_def** %add_val263, align 8
  %call264 = call i32 @rtx_equal_p(%struct.rtx_def* %214, %struct.rtx_def* %216)
  %tobool265 = icmp ne i32 %call264, 0
  br i1 %tobool265, label %land.lhs.true.266, label %if.else.275

land.lhs.true.266:                                ; preds = %land.lhs.true.260
  %217 = load %struct.induction*, %struct.induction** %v, align 8
  %218 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %219 = load i32, i32* %unroll_number.addr, align 4
  %call267 = call i32 @verify_addresses(%struct.induction* %217, %struct.rtx_def* %218, i32 %219)
  %tobool268 = icmp ne i32 %call267, 0
  br i1 %tobool268, label %if.then.269, label %if.else.275

if.then.269:                                      ; preds = %land.lhs.true.266
  %220 = load %struct.induction*, %struct.induction** %v, align 8
  %same270 = getelementptr inbounds %struct.induction, %struct.induction* %220, i32 0, i32 18
  %221 = load %struct.induction*, %struct.induction** %same270, align 8
  %dest_reg271 = getelementptr inbounds %struct.induction, %struct.induction* %221, i32 0, i32 4
  %222 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg271, align 8
  %223 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg272 = getelementptr inbounds %struct.induction, %struct.induction* %223, i32 0, i32 4
  store %struct.rtx_def* %222, %struct.rtx_def** %dest_reg272, align 8
  %224 = load %struct.induction*, %struct.induction** %v, align 8
  %shared = getelementptr inbounds %struct.induction, %struct.induction* %224, i32 0, i32 13
  %bf.load273 = load i16, i16* %shared, align 4
  %bf.clear274 = and i16 %bf.load273, -1025
  %bf.set = or i16 %bf.clear274, 1024
  store i16 %bf.set, i16* %shared, align 4
  br label %if.end.440

if.else.275:                                      ; preds = %land.lhs.true.266, %land.lhs.true.260, %land.lhs.true.254, %land.lhs.true.247, %land.lhs.true.243, %land.lhs.true.240, %land.lhs.true.237, %if.else.235
  %225 = load i32, i32* %unroll_type.addr, align 4
  %cmp276 = icmp ne i32 %225, 0
  br i1 %cmp276, label %if.then.277, label %if.else.413

if.then.277:                                      ; preds = %if.else.275
  %226 = load %struct.induction*, %struct.induction** %v, align 8
  %mode279 = getelementptr inbounds %struct.induction, %struct.induction* %226, i32 0, i32 6
  %227 = load i32, i32* %mode279, align 4
  %call280 = call %struct.rtx_def* @gen_reg_rtx(i32 %227)
  store %struct.rtx_def* %call280, %struct.rtx_def** %tem278, align 8
  %228 = load %struct.induction*, %struct.induction** %v, align 8
  %same282 = getelementptr inbounds %struct.induction, %struct.induction* %228, i32 0, i32 18
  %229 = load %struct.induction*, %struct.induction** %same282, align 8
  store %struct.induction* %229, %struct.induction** %same281, align 8
  %230 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg284 = getelementptr inbounds %struct.induction, %struct.induction* %230, i32 0, i32 1
  %231 = load %struct.rtx_def*, %struct.rtx_def** %new_reg284, align 8
  store %struct.rtx_def* %231, %struct.rtx_def** %new_reg283, align 8
  %232 = load %struct.rtx_def*, %struct.rtx_def** %tem278, align 8
  %fld285 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %232, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld285, i32 0, i64 0
  %rtuint287 = bitcast %union.rtunion_def* %arrayidx286 to i32*
  %233 = load i32, i32* %rtuint287, align 4
  %234 = load %struct.induction*, %struct.induction** %v, align 8
  %add_val288 = getelementptr inbounds %struct.induction, %struct.induction* %234, i32 0, i32 9
  %235 = load %struct.rtx_def*, %struct.rtx_def** %add_val288, align 8
  call void @record_base_value(i32 %233, %struct.rtx_def* %235, i32 0)
  %236 = load %struct.rtx_def*, %struct.rtx_def** %new_reg283, align 8
  %237 = bitcast %struct.rtx_def* %236 to i32*
  %bf.load289 = load i32, i32* %237, align 8
  %bf.clear290 = and i32 %bf.load289, 65535
  %cmp291 = icmp eq i32 %bf.clear290, 75
  br i1 %cmp291, label %land.lhs.true.292, label %if.else.330

land.lhs.true.292:                                ; preds = %if.then.277
  %238 = load %struct.rtx_def*, %struct.rtx_def** %new_reg283, align 8
  %fld293 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %238, i32 0, i32 1
  %arrayidx294 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld293, i32 0, i64 1
  %rtx295 = bitcast %union.rtunion_def* %arrayidx294 to %struct.rtx_def**
  %239 = load %struct.rtx_def*, %struct.rtx_def** %rtx295, align 8
  %240 = bitcast %struct.rtx_def* %239 to i32*
  %bf.load296 = load i32, i32* %240, align 8
  %bf.clear297 = and i32 %bf.load296, 65535
  %cmp298 = icmp eq i32 %bf.clear297, 54
  br i1 %cmp298, label %if.then.299, label %if.else.330

if.then.299:                                      ; preds = %land.lhs.true.292
  %241 = load %struct.rtx_def*, %struct.rtx_def** %tem278, align 8
  %242 = load %struct.rtx_def*, %struct.rtx_def** %new_reg283, align 8
  %fld300 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %242, i32 0, i32 1
  %arrayidx301 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld300, i32 0, i64 1
  %rtx302 = bitcast %union.rtunion_def* %arrayidx301 to %struct.rtx_def**
  %243 = load %struct.rtx_def*, %struct.rtx_def** %rtx302, align 8
  %fld303 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %243, i32 0, i32 1
  %arrayidx304 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld303, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx304 to i64*
  %244 = load i64, i64* %rtwint, align 8
  %call305 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %241, i64 %244)
  %245 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg306 = getelementptr inbounds %struct.induction, %struct.induction* %245, i32 0, i32 4
  store %struct.rtx_def* %call305, %struct.rtx_def** %dest_reg306, align 8
  %246 = load %struct.induction*, %struct.induction** %v, align 8
  %247 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %248 = load i32, i32* %unroll_number.addr, align 4
  %call307 = call i32 @verify_addresses(%struct.induction* %246, %struct.rtx_def* %247, i32 %248)
  %tobool308 = icmp ne i32 %call307, 0
  br i1 %tobool308, label %if.then.309, label %if.else.327

if.then.309:                                      ; preds = %if.then.299
  %249 = load %struct.rtx_def*, %struct.rtx_def** %new_reg283, align 8
  %fld310 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %249, i32 0, i32 1
  %arrayidx311 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld310, i32 0, i64 1
  %rtx312 = bitcast %union.rtunion_def* %arrayidx311 to %struct.rtx_def**
  %250 = load %struct.rtx_def*, %struct.rtx_def** %rtx312, align 8
  %fld313 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %250, i32 0, i32 1
  %arrayidx314 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld313, i32 0, i64 0
  %rtwint315 = bitcast %union.rtunion_def* %arrayidx314 to i64*
  %251 = load i64, i64* %rtwint315, align 8
  %sub = sub nsw i64 0, %251
  %252 = load %struct.induction*, %struct.induction** %v, align 8
  %const_adjust316 = getelementptr inbounds %struct.induction, %struct.induction* %252, i32 0, i32 19
  store i64 %sub, i64* %const_adjust316, align 8
  %253 = load %struct.rtx_def*, %struct.rtx_def** %new_reg283, align 8
  %fld317 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %253, i32 0, i32 1
  %arrayidx318 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld317, i32 0, i64 0
  %rtx319 = bitcast %union.rtunion_def* %arrayidx318 to %struct.rtx_def**
  %254 = load %struct.rtx_def*, %struct.rtx_def** %rtx319, align 8
  store %struct.rtx_def* %254, %struct.rtx_def** %new_reg283, align 8
  %255 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool320 = icmp ne %struct._IO_FILE* %255, null
  br i1 %tobool320, label %if.then.321, label %if.end.326

if.then.321:                                      ; preds = %if.then.309
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %257 = load %struct.rtx_def*, %struct.rtx_def** %tem278, align 8
  %fld322 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %257, i32 0, i32 1
  %arrayidx323 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld322, i32 0, i64 0
  %rtuint324 = bitcast %union.rtunion_def* %arrayidx323 to i32*
  %258 = load i32, i32* %rtuint324, align 4
  %call325 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %256, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i32 0, i32 0), i32 %258)
  br label %if.end.326

if.end.326:                                       ; preds = %if.then.321, %if.then.309
  br label %if.end.329

if.else.327:                                      ; preds = %if.then.299
  %259 = load %struct.rtx_def*, %struct.rtx_def** %tem278, align 8
  %260 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg328 = getelementptr inbounds %struct.induction, %struct.induction* %260, i32 0, i32 4
  store %struct.rtx_def* %259, %struct.rtx_def** %dest_reg328, align 8
  br label %if.end.329

if.end.329:                                       ; preds = %if.else.327, %if.end.326
  br label %if.end.332

if.else.330:                                      ; preds = %land.lhs.true.292, %if.then.277
  %261 = load %struct.rtx_def*, %struct.rtx_def** %tem278, align 8
  %262 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg331 = getelementptr inbounds %struct.induction, %struct.induction* %262, i32 0, i32 4
  store %struct.rtx_def* %261, %struct.rtx_def** %dest_reg331, align 8
  br label %if.end.332

if.end.332:                                       ; preds = %if.else.330, %if.end.329
  %263 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg333 = getelementptr inbounds %struct.induction, %struct.induction* %263, i32 0, i32 4
  %264 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg333, align 8
  %265 = load %struct.rtx_def*, %struct.rtx_def** %tem278, align 8
  %cmp334 = icmp eq %struct.rtx_def* %264, %265
  br i1 %cmp334, label %land.lhs.true.335, label %if.end.359

land.lhs.true.335:                                ; preds = %if.end.332
  %266 = load %struct.induction*, %struct.induction** %v, align 8
  %267 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %268 = load i32, i32* %unroll_number.addr, align 4
  %call336 = call i32 @verify_addresses(%struct.induction* %266, %struct.rtx_def* %267, i32 %268)
  %tobool337 = icmp ne i32 %call336, 0
  br i1 %tobool337, label %if.end.359, label %if.then.338

if.then.338:                                      ; preds = %land.lhs.true.335
  %269 = load %struct.induction*, %struct.induction** %v, align 8
  %next_iv339 = getelementptr inbounds %struct.induction, %struct.induction* %269, i32 0, i32 17
  %270 = load %struct.induction*, %struct.induction** %next_iv339, align 8
  store %struct.induction* %270, %struct.induction** %v2, align 8
  br label %for.cond.340

for.cond.340:                                     ; preds = %for.inc.348, %if.then.338
  %271 = load %struct.induction*, %struct.induction** %v2, align 8
  %tobool341 = icmp ne %struct.induction* %271, null
  br i1 %tobool341, label %for.body.342, label %for.end.350

for.body.342:                                     ; preds = %for.cond.340
  %272 = load %struct.induction*, %struct.induction** %v2, align 8
  %same_insn343 = getelementptr inbounds %struct.induction, %struct.induction* %272, i32 0, i32 20
  %273 = load %struct.induction*, %struct.induction** %same_insn343, align 8
  %274 = load %struct.induction*, %struct.induction** %v, align 8
  %cmp344 = icmp eq %struct.induction* %273, %274
  br i1 %cmp344, label %if.then.345, label %if.end.347

if.then.345:                                      ; preds = %for.body.342
  %275 = load %struct.induction*, %struct.induction** %v2, align 8
  %same_insn346 = getelementptr inbounds %struct.induction, %struct.induction* %275, i32 0, i32 20
  store %struct.induction* null, %struct.induction** %same_insn346, align 8
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.345, %for.body.342
  br label %for.inc.348

for.inc.348:                                      ; preds = %if.end.347
  %276 = load %struct.induction*, %struct.induction** %v2, align 8
  %next_iv349 = getelementptr inbounds %struct.induction, %struct.induction* %276, i32 0, i32 17
  %277 = load %struct.induction*, %struct.induction** %next_iv349, align 8
  store %struct.induction* %277, %struct.induction** %v2, align 8
  br label %for.cond.340

for.end.350:                                      ; preds = %for.cond.340
  %278 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool351 = icmp ne %struct._IO_FILE* %278, null
  br i1 %tobool351, label %if.then.352, label %if.end.358

if.then.352:                                      ; preds = %for.end.350
  %279 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %280 = load %struct.induction*, %struct.induction** %v, align 8
  %insn353 = getelementptr inbounds %struct.induction, %struct.induction* %280, i32 0, i32 0
  %281 = load %struct.rtx_def*, %struct.rtx_def** %insn353, align 8
  %fld354 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %281, i32 0, i32 1
  %arrayidx355 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld354, i32 0, i64 0
  %rtint356 = bitcast %union.rtunion_def* %arrayidx355 to i32*
  %282 = load i32, i32* %rtint356, align 4
  %call357 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %279, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i32 0, i32 0), i32 %282)
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.352, %for.end.350
  br label %for.inc.549

if.end.359:                                       ; preds = %land.lhs.true.335, %if.end.332
  %283 = load %struct.rtx_def*, %struct.rtx_def** %new_reg283, align 8
  %284 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg360 = getelementptr inbounds %struct.induction, %struct.induction* %284, i32 0, i32 1
  store %struct.rtx_def* %283, %struct.rtx_def** %new_reg360, align 8
  %285 = load %struct.induction*, %struct.induction** %same281, align 8
  %286 = load %struct.induction*, %struct.induction** %v, align 8
  %same361 = getelementptr inbounds %struct.induction, %struct.induction* %286, i32 0, i32 18
  store %struct.induction* %285, %struct.induction** %same361, align 8
  %287 = load %struct.induction*, %struct.induction** %v, align 8
  %unrolled362 = getelementptr inbounds %struct.induction, %struct.induction* %287, i32 0, i32 13
  %bf.load363 = load i16, i16* %unrolled362, align 4
  %bf.clear364 = and i16 %bf.load363, -513
  %bf.set365 = or i16 %bf.clear364, 512
  store i16 %bf.set365, i16* %unrolled362, align 4
  %288 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %289 = load %struct.rtx_def*, %struct.rtx_def** %tem278, align 8
  %290 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg366 = getelementptr inbounds %struct.induction, %struct.induction* %290, i32 0, i32 1
  %291 = load %struct.rtx_def*, %struct.rtx_def** %new_reg366, align 8
  %call367 = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %291)
  %call368 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %289, %struct.rtx_def* %call367)
  %call369 = call %struct.rtx_def* @loop_insn_hoist(%struct.loop* %288, %struct.rtx_def* %call368)
  %292 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start = getelementptr inbounds %struct.loop, %struct.loop* %292, i32 0, i32 26
  %293 = load %struct.rtx_def*, %struct.rtx_def** %start, align 8
  %fld370 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %293, i32 0, i32 1
  %arrayidx371 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld370, i32 0, i64 1
  %rtx372 = bitcast %union.rtunion_def* %arrayidx371 to %struct.rtx_def**
  %294 = load %struct.rtx_def*, %struct.rtx_def** %rtx372, align 8
  %fld373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %294, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld373, i32 0, i64 4
  %rtint375 = bitcast %union.rtunion_def* %arrayidx374 to i32*
  %295 = load i32, i32* %rtint375, align 4
  %cmp376 = icmp sge i32 %295, 0
  br i1 %cmp376, label %cond.true.377, label %cond.false.385

cond.true.377:                                    ; preds = %if.end.359
  %296 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start378 = getelementptr inbounds %struct.loop, %struct.loop* %296, i32 0, i32 26
  %297 = load %struct.rtx_def*, %struct.rtx_def** %start378, align 8
  %fld379 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %297, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld379, i32 0, i64 1
  %rtx381 = bitcast %union.rtunion_def* %arrayidx380 to %struct.rtx_def**
  %298 = load %struct.rtx_def*, %struct.rtx_def** %rtx381, align 8
  %fld382 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %298, i32 0, i32 1
  %arrayidx383 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld382, i32 0, i64 4
  %rtint384 = bitcast %union.rtunion_def* %arrayidx383 to i32*
  %299 = load i32, i32* %rtint384, align 4
  br label %cond.end.391

cond.false.385:                                   ; preds = %if.end.359
  %300 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start386 = getelementptr inbounds %struct.loop, %struct.loop* %300, i32 0, i32 26
  %301 = load %struct.rtx_def*, %struct.rtx_def** %start386, align 8
  %fld387 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %arrayidx388 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld387, i32 0, i64 1
  %rtx389 = bitcast %union.rtunion_def* %arrayidx388 to %struct.rtx_def**
  %302 = load %struct.rtx_def*, %struct.rtx_def** %rtx389, align 8
  %call390 = call i32 @recog_memoized_1(%struct.rtx_def* %302)
  br label %cond.end.391

cond.end.391:                                     ; preds = %cond.false.385, %cond.true.377
  %cond392 = phi i32 [ %299, %cond.true.377 ], [ %call390, %cond.false.385 ]
  %cmp393 = icmp slt i32 %cond392, 0
  br i1 %cmp393, label %if.then.394, label %if.end.412

if.then.394:                                      ; preds = %cond.end.391
  %303 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %start395 = getelementptr inbounds %struct.loop, %struct.loop* %303, i32 0, i32 26
  %304 = load %struct.rtx_def*, %struct.rtx_def** %start395, align 8
  %fld396 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %304, i32 0, i32 1
  %arrayidx397 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld396, i32 0, i64 1
  %rtx398 = bitcast %union.rtunion_def* %arrayidx397 to %struct.rtx_def**
  %305 = load %struct.rtx_def*, %struct.rtx_def** %rtx398, align 8
  %call399 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %305)
  call void @start_sequence()
  %306 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg400 = getelementptr inbounds %struct.induction, %struct.induction* %306, i32 0, i32 1
  %307 = load %struct.rtx_def*, %struct.rtx_def** %new_reg400, align 8
  %308 = load %struct.rtx_def*, %struct.rtx_def** %tem278, align 8
  %call401 = call %struct.rtx_def* @force_operand(%struct.rtx_def* %307, %struct.rtx_def* %308)
  store %struct.rtx_def* %call401, %struct.rtx_def** %ret, align 8
  %309 = load %struct.rtx_def*, %struct.rtx_def** %ret, align 8
  %310 = load %struct.rtx_def*, %struct.rtx_def** %tem278, align 8
  %cmp402 = icmp ne %struct.rtx_def* %309, %310
  br i1 %cmp402, label %if.then.403, label %if.end.405

if.then.403:                                      ; preds = %if.then.394
  %311 = load %struct.rtx_def*, %struct.rtx_def** %tem278, align 8
  %312 = load %struct.rtx_def*, %struct.rtx_def** %ret, align 8
  %call404 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %311, %struct.rtx_def* %312)
  br label %if.end.405

if.end.405:                                       ; preds = %if.then.403, %if.then.394
  %call406 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call406, %struct.rtx_def** %sequence, align 8
  call void @end_sequence()
  %313 = load %struct.loop*, %struct.loop** %loop.addr, align 8
  %314 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %call407 = call %struct.rtx_def* @loop_insn_hoist(%struct.loop* %313, %struct.rtx_def* %314)
  %315 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool408 = icmp ne %struct._IO_FILE* %315, null
  br i1 %tobool408, label %if.then.409, label %if.end.411

if.then.409:                                      ; preds = %if.end.405
  %316 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call410 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %316, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.62, i32 0, i32 0))
  br label %if.end.411

if.end.411:                                       ; preds = %if.then.409, %if.end.405
  br label %if.end.412

if.end.412:                                       ; preds = %if.end.411, %cond.end.391
  br label %if.end.439

if.else.413:                                      ; preds = %if.else.275
  %317 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %318 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg414 = getelementptr inbounds %struct.induction, %struct.induction* %318, i32 0, i32 4
  store %struct.rtx_def* %317, %struct.rtx_def** %dest_reg414, align 8
  %319 = load %struct.induction*, %struct.induction** %v, align 8
  %320 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc, align 8
  %321 = load i32, i32* %unroll_number.addr, align 4
  %call415 = call i32 @verify_addresses(%struct.induction* %319, %struct.rtx_def* %320, i32 %321)
  %tobool416 = icmp ne i32 %call415, 0
  br i1 %tobool416, label %if.end.438, label %if.then.417

if.then.417:                                      ; preds = %if.else.413
  %322 = load %struct.induction*, %struct.induction** %v, align 8
  %next_iv418 = getelementptr inbounds %struct.induction, %struct.induction* %322, i32 0, i32 17
  %323 = load %struct.induction*, %struct.induction** %next_iv418, align 8
  store %struct.induction* %323, %struct.induction** %v2, align 8
  br label %for.cond.419

for.cond.419:                                     ; preds = %for.inc.427, %if.then.417
  %324 = load %struct.induction*, %struct.induction** %v2, align 8
  %tobool420 = icmp ne %struct.induction* %324, null
  br i1 %tobool420, label %for.body.421, label %for.end.429

for.body.421:                                     ; preds = %for.cond.419
  %325 = load %struct.induction*, %struct.induction** %v2, align 8
  %same_insn422 = getelementptr inbounds %struct.induction, %struct.induction* %325, i32 0, i32 20
  %326 = load %struct.induction*, %struct.induction** %same_insn422, align 8
  %327 = load %struct.induction*, %struct.induction** %v, align 8
  %cmp423 = icmp eq %struct.induction* %326, %327
  br i1 %cmp423, label %if.then.424, label %if.end.426

if.then.424:                                      ; preds = %for.body.421
  %328 = load %struct.induction*, %struct.induction** %v2, align 8
  %same_insn425 = getelementptr inbounds %struct.induction, %struct.induction* %328, i32 0, i32 20
  store %struct.induction* null, %struct.induction** %same_insn425, align 8
  br label %if.end.426

if.end.426:                                       ; preds = %if.then.424, %for.body.421
  br label %for.inc.427

for.inc.427:                                      ; preds = %if.end.426
  %329 = load %struct.induction*, %struct.induction** %v2, align 8
  %next_iv428 = getelementptr inbounds %struct.induction, %struct.induction* %329, i32 0, i32 17
  %330 = load %struct.induction*, %struct.induction** %next_iv428, align 8
  store %struct.induction* %330, %struct.induction** %v2, align 8
  br label %for.cond.419

for.end.429:                                      ; preds = %for.cond.419
  %331 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool430 = icmp ne %struct._IO_FILE* %331, null
  br i1 %tobool430, label %if.then.431, label %if.end.437

if.then.431:                                      ; preds = %for.end.429
  %332 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %333 = load %struct.induction*, %struct.induction** %v, align 8
  %insn432 = getelementptr inbounds %struct.induction, %struct.induction* %333, i32 0, i32 0
  %334 = load %struct.rtx_def*, %struct.rtx_def** %insn432, align 8
  %fld433 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %334, i32 0, i32 1
  %arrayidx434 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld433, i32 0, i64 0
  %rtint435 = bitcast %union.rtunion_def* %arrayidx434 to i32*
  %335 = load i32, i32* %rtint435, align 4
  %call436 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %332, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i32 0, i32 0), i32 %335)
  br label %if.end.437

if.end.437:                                       ; preds = %if.then.431, %for.end.429
  br label %for.inc.549

if.end.438:                                       ; preds = %if.else.413
  br label %if.end.439

if.end.439:                                       ; preds = %if.end.438, %if.end.412
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439, %if.then.269
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440, %if.end.234
  %336 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg442 = getelementptr inbounds %struct.induction, %struct.induction* %336, i32 0, i32 4
  %337 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg442, align 8
  %338 = load %struct.induction*, %struct.induction** %v, align 8
  %location = getelementptr inbounds %struct.induction, %struct.induction* %338, i32 0, i32 5
  %339 = load %struct.rtx_def**, %struct.rtx_def*** %location, align 8
  store %struct.rtx_def* %337, %struct.rtx_def** %339, align 8
  %340 = load %struct.induction*, %struct.induction** %v, align 8
  %same443 = getelementptr inbounds %struct.induction, %struct.induction* %340, i32 0, i32 18
  %341 = load %struct.induction*, %struct.induction** %same443, align 8
  %tobool444 = icmp ne %struct.induction* %341, null
  br i1 %tobool444, label %land.lhs.true.445, label %if.end.458

land.lhs.true.445:                                ; preds = %if.end.441
  %342 = load %struct.induction*, %struct.induction** %v, align 8
  %same446 = getelementptr inbounds %struct.induction, %struct.induction* %342, i32 0, i32 18
  %343 = load %struct.induction*, %struct.induction** %same446, align 8
  %giv_type447 = getelementptr inbounds %struct.induction, %struct.induction* %343, i32 0, i32 3
  %344 = load i32, i32* %giv_type447, align 4
  %cmp448 = icmp eq i32 %344, 1
  br i1 %cmp448, label %if.then.449, label %if.end.458

if.then.449:                                      ; preds = %land.lhs.true.445
  %345 = load %struct.induction*, %struct.induction** %v, align 8
  %same450 = getelementptr inbounds %struct.induction, %struct.induction* %345, i32 0, i32 18
  %346 = load %struct.induction*, %struct.induction** %same450, align 8
  %347 = load %struct.induction*, %struct.induction** %v, align 8
  %same451 = getelementptr inbounds %struct.induction, %struct.induction* %347, i32 0, i32 18
  %348 = load %struct.induction*, %struct.induction** %same451, align 8
  %new_reg452 = getelementptr inbounds %struct.induction, %struct.induction* %348, i32 0, i32 1
  %349 = load %struct.rtx_def*, %struct.rtx_def** %new_reg452, align 8
  %fld453 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %349, i32 0, i32 1
  %arrayidx454 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld453, i32 0, i64 0
  %rtuint455 = bitcast %union.rtunion_def* %arrayidx454 to i32*
  %350 = load i32, i32* %rtuint455, align 4
  %idxprom456 = zext i32 %350 to i64
  %351 = load %struct.induction**, %struct.induction*** @addr_combined_regs, align 8
  %arrayidx457 = getelementptr inbounds %struct.induction*, %struct.induction** %351, i64 %idxprom456
  store %struct.induction* %346, %struct.induction** %arrayidx457, align 8
  br label %if.end.458

if.end.458:                                       ; preds = %if.then.449, %land.lhs.true.445, %if.end.441
  %352 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg459 = getelementptr inbounds %struct.induction, %struct.induction* %352, i32 0, i32 1
  %353 = load %struct.rtx_def*, %struct.rtx_def** %new_reg459, align 8
  %354 = bitcast %struct.rtx_def* %353 to i32*
  %bf.load460 = load i32, i32* %354, align 8
  %bf.clear461 = and i32 %bf.load460, 65535
  %cmp462 = icmp eq i32 %bf.clear461, 61
  br i1 %cmp462, label %if.then.463, label %if.end.481

if.then.463:                                      ; preds = %if.end.458
  %355 = load %struct.rtx_def*, %struct.rtx_def** %value, align 8
  %356 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg464 = getelementptr inbounds %struct.induction, %struct.induction* %356, i32 0, i32 1
  %357 = load %struct.rtx_def*, %struct.rtx_def** %new_reg464, align 8
  %fld465 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %357, i32 0, i32 1
  %arrayidx466 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld465, i32 0, i64 0
  %rtuint467 = bitcast %union.rtunion_def* %arrayidx466 to i32*
  %358 = load i32, i32* %rtuint467, align 4
  %idxprom468 = zext i32 %358 to i64
  %359 = load %struct.rtx_def**, %struct.rtx_def*** @splittable_regs, align 8
  %arrayidx469 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %359, i64 %idxprom468
  store %struct.rtx_def* %355, %struct.rtx_def** %arrayidx469, align 8
  %360 = load %struct.induction*, %struct.induction** %v, align 8
  %same470 = getelementptr inbounds %struct.induction, %struct.induction* %360, i32 0, i32 18
  %361 = load %struct.induction*, %struct.induction** %same470, align 8
  %tobool471 = icmp ne %struct.induction* %361, null
  br i1 %tobool471, label %if.end.480, label %if.then.472

if.then.472:                                      ; preds = %if.then.463
  %362 = load %struct.induction*, %struct.induction** %v, align 8
  %363 = load %struct.induction*, %struct.induction** %v, align 8
  %same473 = getelementptr inbounds %struct.induction, %struct.induction* %363, i32 0, i32 18
  store %struct.induction* %362, %struct.induction** %same473, align 8
  %364 = load %struct.induction*, %struct.induction** %v, align 8
  %365 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg474 = getelementptr inbounds %struct.induction, %struct.induction* %365, i32 0, i32 1
  %366 = load %struct.rtx_def*, %struct.rtx_def** %new_reg474, align 8
  %fld475 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %366, i32 0, i32 1
  %arrayidx476 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld475, i32 0, i64 0
  %rtuint477 = bitcast %union.rtunion_def* %arrayidx476 to i32*
  %367 = load i32, i32* %rtuint477, align 4
  %idxprom478 = zext i32 %367 to i64
  %368 = load %struct.induction**, %struct.induction*** @addr_combined_regs, align 8
  %arrayidx479 = getelementptr inbounds %struct.induction*, %struct.induction** %368, i64 %idxprom478
  store %struct.induction* %364, %struct.induction** %arrayidx479, align 8
  br label %if.end.480

if.end.480:                                       ; preds = %if.then.472, %if.then.463
  br label %if.end.481

if.end.481:                                       ; preds = %if.end.480, %if.end.458
  %369 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool482 = icmp ne %struct._IO_FILE* %369, null
  br i1 %tobool482, label %if.then.483, label %if.end.485

if.then.483:                                      ; preds = %if.end.481
  %370 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %call484 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %370, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i32 0, i32 0))
  br label %if.end.485

if.end.485:                                       ; preds = %if.then.483, %if.end.481
  br label %if.end.486

if.end.486:                                       ; preds = %if.end.485, %if.end.213
  br label %if.end.487

if.end.487:                                       ; preds = %if.end.486
  br label %if.end.489

if.else.488:                                      ; preds = %if.end.157
  br label %for.inc.549

if.end.489:                                       ; preds = %if.end.487
  %371 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg490 = getelementptr inbounds %struct.induction, %struct.induction* %371, i32 0, i32 1
  %372 = load %struct.rtx_def*, %struct.rtx_def** %new_reg490, align 8
  %373 = bitcast %struct.rtx_def* %372 to i32*
  %bf.load491 = load i32, i32* %373, align 8
  %bf.clear492 = and i32 %bf.load491, 65535
  %cmp493 = icmp eq i32 %bf.clear492, 61
  br i1 %cmp493, label %if.then.494, label %if.end.515

if.then.494:                                      ; preds = %if.end.489
  store i32 1, i32* %count, align 4
  %374 = load %struct.induction*, %struct.induction** %v, align 8
  %ignore495 = getelementptr inbounds %struct.induction, %struct.induction* %374, i32 0, i32 13
  %bf.load496 = load i16, i16* %ignore495, align 4
  %bf.lshr497 = lshr i16 %bf.load496, 2
  %bf.clear498 = and i16 %bf.lshr497, 1
  %bf.cast499 = zext i16 %bf.clear498 to i32
  %tobool500 = icmp ne i32 %bf.cast499, 0
  br i1 %tobool500, label %if.end.508, label %if.then.501

if.then.501:                                      ; preds = %if.then.494
  %375 = load %struct.induction*, %struct.induction** %v, align 8
  %src_reg502 = getelementptr inbounds %struct.induction, %struct.induction* %375, i32 0, i32 2
  %376 = load %struct.rtx_def*, %struct.rtx_def** %src_reg502, align 8
  %fld503 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %376, i32 0, i32 1
  %arrayidx504 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld503, i32 0, i64 0
  %rtuint505 = bitcast %union.rtunion_def* %arrayidx504 to i32*
  %377 = load i32, i32* %rtuint505, align 4
  %idxprom506 = zext i32 %377 to i64
  %378 = load %struct.loop_ivs*, %struct.loop_ivs** %ivs, align 8
  %regs = getelementptr inbounds %struct.loop_ivs, %struct.loop_ivs* %378, i32 0, i32 0
  %379 = load %struct.iv*, %struct.iv** %regs, align 8
  %arrayidx507 = getelementptr inbounds %struct.iv, %struct.iv* %379, i64 %idxprom506
  %iv = getelementptr inbounds %struct.iv, %struct.iv* %arrayidx507, i32 0, i32 1
  %class = bitcast %union.anon* %iv to %struct.iv_class**
  %380 = load %struct.iv_class*, %struct.iv_class** %class, align 8
  %biv_count = getelementptr inbounds %struct.iv_class, %struct.iv_class* %380, i32 0, i32 1
  %381 = load i32, i32* %biv_count, align 4
  store i32 %381, i32* %count, align 4
  br label %if.end.508

if.end.508:                                       ; preds = %if.then.501, %if.then.494
  %382 = load i32, i32* %count, align 4
  %383 = load %struct.induction*, %struct.induction** %v, align 8
  %new_reg509 = getelementptr inbounds %struct.induction, %struct.induction* %383, i32 0, i32 1
  %384 = load %struct.rtx_def*, %struct.rtx_def** %new_reg509, align 8
  %fld510 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %384, i32 0, i32 1
  %arrayidx511 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld510, i32 0, i64 0
  %rtuint512 = bitcast %union.rtunion_def* %arrayidx511 to i32*
  %385 = load i32, i32* %rtuint512, align 4
  %idxprom513 = zext i32 %385 to i64
  %386 = load i32*, i32** @splittable_regs_updates, align 8
  %arrayidx514 = getelementptr inbounds i32, i32* %386, i64 %idxprom513
  store i32 %382, i32* %arrayidx514, align 4
  br label %if.end.515

if.end.515:                                       ; preds = %if.end.508, %if.end.489
  %387 = load i32, i32* %result, align 4
  %inc = add nsw i32 %387, 1
  store i32 %inc, i32* %result, align 4
  %388 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %tobool516 = icmp ne %struct._IO_FILE* %388, null
  br i1 %tobool516, label %if.then.517, label %if.end.548

if.then.517:                                      ; preds = %if.end.515
  %389 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg518 = getelementptr inbounds %struct.induction, %struct.induction* %389, i32 0, i32 4
  %390 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg518, align 8
  %391 = bitcast %struct.rtx_def* %390 to i32*
  %bf.load519 = load i32, i32* %391, align 8
  %bf.clear520 = and i32 %bf.load519, 65535
  %cmp521 = icmp eq i32 %bf.clear520, 54
  br i1 %cmp521, label %if.then.522, label %if.else.523

if.then.522:                                      ; preds = %if.then.517
  store i32 -1, i32* %regnum, align 4
  br label %if.end.542

if.else.523:                                      ; preds = %if.then.517
  %392 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg524 = getelementptr inbounds %struct.induction, %struct.induction* %392, i32 0, i32 4
  %393 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg524, align 8
  %394 = bitcast %struct.rtx_def* %393 to i32*
  %bf.load525 = load i32, i32* %394, align 8
  %bf.clear526 = and i32 %bf.load525, 65535
  %cmp527 = icmp ne i32 %bf.clear526, 61
  br i1 %cmp527, label %if.then.528, label %if.else.536

if.then.528:                                      ; preds = %if.else.523
  %395 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg529 = getelementptr inbounds %struct.induction, %struct.induction* %395, i32 0, i32 4
  %396 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg529, align 8
  %fld530 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %396, i32 0, i32 1
  %arrayidx531 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld530, i32 0, i64 0
  %rtx532 = bitcast %union.rtunion_def* %arrayidx531 to %struct.rtx_def**
  %397 = load %struct.rtx_def*, %struct.rtx_def** %rtx532, align 8
  %fld533 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %397, i32 0, i32 1
  %arrayidx534 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld533, i32 0, i64 0
  %rtuint535 = bitcast %union.rtunion_def* %arrayidx534 to i32*
  %398 = load i32, i32* %rtuint535, align 4
  store i32 %398, i32* %regnum, align 4
  br label %if.end.541

if.else.536:                                      ; preds = %if.else.523
  %399 = load %struct.induction*, %struct.induction** %v, align 8
  %dest_reg537 = getelementptr inbounds %struct.induction, %struct.induction* %399, i32 0, i32 4
  %400 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg537, align 8
  %fld538 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %400, i32 0, i32 1
  %arrayidx539 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld538, i32 0, i64 0
  %rtuint540 = bitcast %union.rtunion_def* %arrayidx539 to i32*
  %401 = load i32, i32* %rtuint540, align 4
  store i32 %401, i32* %regnum, align 4
  br label %if.end.541

if.end.541:                                       ; preds = %if.else.536, %if.then.528
  br label %if.end.542

if.end.542:                                       ; preds = %if.end.541, %if.then.522
  %402 = load %struct._IO_FILE*, %struct._IO_FILE** @loop_dump_stream, align 8
  %403 = load i32, i32* %regnum, align 4
  %404 = load %struct.induction*, %struct.induction** %v, align 8
  %insn543 = getelementptr inbounds %struct.induction, %struct.induction* %404, i32 0, i32 0
  %405 = load %struct.rtx_def*, %struct.rtx_def** %insn543, align 8
  %fld544 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %405, i32 0, i32 1
  %arrayidx545 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld544, i32 0, i64 0
  %rtint546 = bitcast %union.rtunion_def* %arrayidx545 to i32*
  %406 = load i32, i32* %rtint546, align 4
  %call547 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %402, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.64, i32 0, i32 0), i32 %403, i32 %406)
  br label %if.end.548

if.end.548:                                       ; preds = %if.end.542, %if.end.515
  br label %for.inc.549

for.inc.549:                                      ; preds = %if.end.548, %if.else.488, %if.end.437, %if.end.358, %if.end.170, %if.then.109, %if.then.42, %if.then.34, %if.then.22
  %407 = load %struct.induction*, %struct.induction** %v, align 8
  %next_iv550 = getelementptr inbounds %struct.induction, %struct.induction* %407, i32 0, i32 17
  %408 = load %struct.induction*, %struct.induction** %next_iv550, align 8
  store %struct.induction* %408, %struct.induction** %v, align 8
  br label %for.cond.16

for.end.551:                                      ; preds = %for.cond.16
  %409 = load i32, i32* %result, align 4
  ret i32 %409
}

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @loop_iv_add_mult_hoist(%struct.loop*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @verify_addresses(%struct.induction* %v, %struct.rtx_def* %giv_inc, i32 %unroll_number) #0 {
entry:
  %v.addr = alloca %struct.induction*, align 8
  %giv_inc.addr = alloca %struct.rtx_def*, align 8
  %unroll_number.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  %orig_addr = alloca %struct.rtx_def*, align 8
  %last_addr = alloca %struct.rtx_def*, align 8
  store %struct.induction* %v, %struct.induction** %v.addr, align 8
  store %struct.rtx_def* %giv_inc, %struct.rtx_def** %giv_inc.addr, align 8
  store i32 %unroll_number, i32* %unroll_number.addr, align 4
  store i32 1, i32* %ret, align 4
  %0 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %location = getelementptr inbounds %struct.induction, %struct.induction* %0, i32 0, i32 5
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %location, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %orig_addr, align 8
  %3 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %dest_reg = getelementptr inbounds %struct.induction, %struct.induction* %3, i32 0, i32 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %giv_inc.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %6 = load i64, i64* %rtwint, align 8
  %7 = load i32, i32* %unroll_number.addr, align 4
  %sub = sub nsw i32 %7, 1
  %conv = sext i32 %sub to i64
  %mul = mul nsw i64 %6, %conv
  %call = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %4, i64 %mul)
  store %struct.rtx_def* %call, %struct.rtx_def** %last_addr, align 8
  %8 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %location1 = getelementptr inbounds %struct.induction, %struct.induction* %8, i32 0, i32 5
  %9 = load %struct.rtx_def**, %struct.rtx_def*** %location1, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %9, align 8
  %11 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %dest_reg2 = getelementptr inbounds %struct.induction, %struct.induction* %11, i32 0, i32 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %dest_reg2, align 8
  %13 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %insn = getelementptr inbounds %struct.induction, %struct.induction* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call3 = call i32 @validate_replace_rtx(%struct.rtx_def* %10, %struct.rtx_def* %12, %struct.rtx_def* %14)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %15 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %location4 = getelementptr inbounds %struct.induction, %struct.induction* %15, i32 0, i32 5
  %16 = load %struct.rtx_def**, %struct.rtx_def*** %location4, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %16, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %last_addr, align 8
  %19 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %insn5 = getelementptr inbounds %struct.induction, %struct.induction* %19, i32 0, i32 0
  %20 = load %struct.rtx_def*, %struct.rtx_def** %insn5, align 8
  %call6 = call i32 @validate_replace_rtx(%struct.rtx_def* %17, %struct.rtx_def* %18, %struct.rtx_def* %20)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %ret, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %21 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %location8 = getelementptr inbounds %struct.induction, %struct.induction* %21, i32 0, i32 5
  %22 = load %struct.rtx_def**, %struct.rtx_def*** %location8, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %22, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %orig_addr, align 8
  %25 = load %struct.induction*, %struct.induction** %v.addr, align 8
  %insn9 = getelementptr inbounds %struct.induction, %struct.induction* %25, i32 0, i32 0
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn9, align 8
  %call10 = call i32 @validate_replace_rtx(%struct.rtx_def* %23, %struct.rtx_def* %24, %struct.rtx_def* %26)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 2687, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.verify_addresses, i32 0, i32 0)) #5
  unreachable

if.end.13:                                        ; preds = %if.end
  %27 = load i32, i32* %ret, align 4
  ret i32 %27
}

declare i32 @recog_memoized_1(%struct.rtx_def*) #1

declare %struct.rtx_def* @force_operand(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @validate_replace_rtx(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @reg_referenced_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @any_uncondjump_p(%struct.rtx_def*) #1

declare i32 @reg_set_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @modified_between_p(%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @pc_set(%struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
