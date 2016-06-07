; ModuleID = 'final.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.label_alignment = type { i16, i16 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type { %struct.tree_decl }
%struct.tree_decl = type { %struct.tree_common, i8*, i32, i32, %union.tree_node*, i48, %union.anon, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, %union.anon.1, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_decl* }
%struct.tree_common = type { %union.tree_node*, %union.tree_node*, i32 }
%union.anon = type { i64 }
%union.anon.1 = type { %struct.function* }
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
%struct.lang_decl = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i1 (%union.tree_node*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void ()*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)* }
%struct.gcc_target = type { %struct.asm_out, %struct.sched, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*)*, %struct.attribute_spec*, i32 (%union.tree_node*, %union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, %union.tree_node**)*, i1 (%union.tree_node*)*, i1 (%union.tree_node*)*, void ()*, %struct.rtx_def* (%union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32, i32)*, i32 (%union.tree_node*, i8*, i32)*, i8, i8, i1 ()* }
%struct.asm_out = type { i8*, i8*, i8*, %struct.asm_int_op, %struct.asm_int_op, i1 (%struct.rtx_def*, i32, i32)*, void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)*, void (%struct._IO_FILE*, i64)*, void (i8*, i32)*, void ()*, void ()*, void (%struct.rtx_def*, i32)*, void (%struct.rtx_def*, i32)* }
%struct.asm_int_op = type { i8*, i8*, i8*, i8* }
%struct.sched = type { i32 (%struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32)*, i32 (%struct.rtx_def*, i32)*, i32 ()*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def*, i32)*, void (%struct._IO_FILE*, i32, i32)*, void (%struct._IO_FILE*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, i32 (%struct._IO_FILE*, i32, %struct.rtx_def**, i32*, i32)*, %struct.rtx_def* (i32, %struct.rtx_def*)* }
%struct.attribute_spec = type { i8*, i32, i32, i8, i8, i8, %union.tree_node* (%union.tree_node**, %union.tree_node*, %union.tree_node*, i32, i8*)* }
%struct.insn_data = type { i8*, i8*, %struct.rtx_def* (%struct.rtx_def*, ...)*, %struct.insn_operand_data*, i8, i8, i8, i8 }
%struct.insn_operand_data = type { i32 (%struct.rtx_def*, i32)*, i8*, i16, i8, i8 }
%struct.recog_data = type { [30 x %struct.rtx_def*], [30 x %struct.rtx_def**], [30 x i8*], [30 x i32], [30 x i32], [4 x %struct.rtx_def**], [4 x i8], i8, i8, i8, %struct.rtx_def* }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.realvaluetype = type { [3 x i64] }
%union.real_extract = type { %struct.realvaluetype }
%struct.mem_attrs = type { i64, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32 }

@app_on = internal global i32 0, align 4
@final_sequence = common global %struct.rtx_def* null, align 8
@ix86_asm_dialect = external global i32, align 4
@dialect_number = internal global i32 0, align 4
@profile_arc_flag = external global i32, align 4
@target_flags = external global i32, align 4
@count_instrumented_edges = external global i32, align 4
@.str = private unnamed_addr constant [8 x i8] c"final.c\00", align 1
@__FUNCTION__.end_final = private unnamed_addr constant [10 x i8] c"end_final\00", align 1
@asm_out_file = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"\09.align %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c".%s%u:\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"LPBX\00", align 1
@const_int_rtx = external global [129 x %struct.rtx_def*], align 16
@.str.4 = private unnamed_addr constant [7 x i8] c"*.%s%u\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c".da\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\09.local\09\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"\09.comm\09\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c",%u,%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"/APP\0A\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"/NO_APP\0A\00", align 1
@uid_shuid = internal global i32* null, align 8
@insn_lengths = internal global i32* null, align 8
@insn_lengths_max_uid = internal global i32 0, align 4
@insn_addresses_ = common global %struct.varray_head_tag* null, align 8
@uid_align = internal global %struct.rtx_def** null, align 8
@min_labelno = internal global i32 0, align 4
@label_align = internal global %struct.label_alignment* null, align 8
@insn_current_address = common global i32 0, align 4
@insn_last_address = common global i32 0, align 4
@length_unit_log = external global i32, align 4
@max_labelno = internal global i32 0, align 4
@optimize = external global i32, align 4
@optimize_size = external global i32, align 4
@n_basic_blocks = external global i32, align 4
@basic_block_info = external global %struct.varray_head_tag*, align 8
@align_labels_log = external global i32, align 4
@align_labels_max_skip = external global i32, align 4
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@align_jumps_log = external global i32, align 4
@align_jumps_max_skip = external global i32, align 4
@align_loops_log = external global i32, align 4
@align_loops_max_skip = external global i32, align 4
@__FUNCTION__.shorten_branches = private unnamed_addr constant [17 x i8] c"shorten_branches\00", align 1
@rtx_class = external constant [153 x i8], align 16
@flag_pic = external global i32, align 4
@.str.14 = private unnamed_addr constant [15 x i8] c"insn_addresses\00", align 1
@mode_size = external constant [59 x i8], align 16
@insn_current_align = common global i32 0, align 4
@block_depth = internal global i32 0, align 4
@this_is_asm_operands = internal global %struct.rtx_def* null, align 8
@last_linenum = internal global i32 0, align 4
@high_function_linenum = internal global i32 0, align 4
@high_block_linenum = internal global i32 0, align 4
@debug_hooks = external global %struct.gcc_debug_hooks*, align 8
@last_filename = internal global i8* null, align 8
@write_symbols = external global i32, align 4
@current_function_decl = external global %union.tree_node*, align 8
@targetm = external global %struct.gcc_target, align 8
@last_ignored_compare = internal global %struct.rtx_def* null, align 8
@new_block = internal global i32 1, align 4
@line_note_exists = internal global i8* null, align 8
@insn_data = external constant [0 x %struct.insn_data], align 8
@which_alternative = external global i32, align 4
@__FUNCTION__.get_insn_template = private unnamed_addr constant [18 x i8] c"get_insn_template\00", align 1
@recog_data = external global %struct.recog_data, align 8
@insn_counter = internal global i32 0, align 4
@flag_debug_asm = external global i32, align 4
@.str.15 = private unnamed_addr constant [20 x i8] c"\09%s basic block %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"LEHB\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"LEHE\00", align 1
@debug_info_level = external global i32, align 4
@__FUNCTION__.final_scan_insn = private unnamed_addr constant [16 x i8] c"final_scan_insn\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"\09.p2align %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"\09.p2align %d,,%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"\09%s\0A\00", align 1
@insn_noperands = internal global i32 0, align 4
@flag_dump_rtl_in_asm = external global i32, align 4
@print_rtx_head = external global i8*, align 8
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@debug_insn = internal global %struct.rtx_def* null, align 8
@current_output_insn = common global %struct.rtx_def* null, align 8
@.str.25 = private unnamed_addr constant [21 x i8] c"could not split insn\00", align 1
@__FUNCTION__.alter_subreg = private unnamed_addr constant [13 x i8] c"alter_subreg\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"invalid `asm': \00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"output_operand: \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@flag_verbose_asm = external global i32, align 4
@flag_print_asm_name = external global i32, align 4
@.str.29 = private unnamed_addr constant [37 x i8] c"nested assembly dialect alternatives\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"unterminated assembly dialect alternative\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@_sch_istable = external constant [256 x i16], align 16
@.str.32 = private unnamed_addr constant [39 x i8] c"operand number missing after %%-letter\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"operand number out of range\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"invalid %%-code\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"`%%l' operand isn't a label\00", align 1
@.str.37 = private unnamed_addr constant [12 x i8] c"0x%lx%016lx\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.39 = private unnamed_addr constant [26 x i8] c"floating constant misused\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"invalid expression as operand\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"%%\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c".\00", align 1
@user_label_prefix = external global i8*, align 8
@__FUNCTION__.asm_fprintf = private unnamed_addr constant [12 x i8] c"asm_fprintf\00", align 1
@mode_class = external constant [59 x i32], align 16
@cfun = external global %struct.function*, align 8
@__FUNCTION__.final_forward_branch_p = private unnamed_addr constant [23 x i8] c"final_forward_branch_p\00", align 1
@regs_ever_live = common global [53 x i8] zeroinitializer, align 16
@frame_pointer_needed = common global i32 0, align 4
@.str.45 = private unnamed_addr constant [16 x i8] c"\09push{l}\09%%e%s\0A\00", align 1
@reg_names = external global [53 x i8*], align 16
@.str.46 = private unnamed_addr constant [19 x i8] c"\09call\09*mcount@PLT\0A\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"\09call\09*mcount@GOT(%%ebx)\0A\00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c"\09call\09mcount\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"\09pop{l}\09%%e%s\0A\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"%c%s %s\00", align 1
@.str.51 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.52 = private unnamed_addr constant [10 x i8] c"\09%s %d\09%s\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"\09[length = %d]\00", align 1
@__FUNCTION__.output_operand = private unnamed_addr constant [15 x i8] c"output_operand\00", align 1

; Function Attrs: nounwind uwtable
define void @init_final(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i32 0, i32* @app_on, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @final_sequence, align 8
  %0 = load i32, i32* @ix86_asm_dialect, align 4
  store i32 %0, i32* @dialect_number, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @end_final(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %name = alloca [20 x i8], align 16
  %align = alloca i32, align 4
  %size = alloca i32, align 4
  %rounded = alloca i32, align 4
  %long_bytes = alloca i32, align 4
  %gcov_type_bytes = alloca i32, align 4
  %pointer_bytes = alloca i32, align 4
  %align2 = alloca i32, align 4
  %cwd = alloca i8*, align 8
  %len = alloca i32, align 4
  %data_file = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i32, i32* @profile_arc_flag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end.104

if.then:                                          ; preds = %entry
  %call = call i32 @exact_log2_wide(i64 16)
  store i32 %call, i32* %align, align 4
  %1 = load i32, i32* @target_flags, align 4
  %and = and i32 %1, 33554432
  %tobool1 = icmp ne i32 %and, 0
  %cond = select i1 %tobool1, i32 64, i32 32
  %div = sdiv i32 %cond, 8
  store i32 %div, i32* %long_bytes, align 4
  store i32 8, i32* %gcov_type_bytes, align 4
  %2 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %2, 33554432
  %tobool3 = icmp ne i32 %and2, 0
  %cond4 = select i1 %tobool3, i32 64, i32 32
  %div5 = sdiv i32 %cond4, 8
  store i32 %div5, i32* %pointer_bytes, align 4
  %3 = load i32, i32* @target_flags, align 4
  %and6 = and i32 %3, 33554432
  %tobool7 = icmp ne i32 %and6, 0
  %cond8 = select i1 %tobool7, i32 64, i32 32
  store i32 %cond8, i32* %align2, align 4
  %4 = load i32, i32* %gcov_type_bytes, align 4
  %5 = load i32, i32* @count_instrumented_edges, align 4
  %mul = mul nsw i32 %4, %5
  store i32 %mul, i32* %size, align 4
  %6 = load i32, i32* %size, align 4
  store i32 %6, i32* %rounded, align 4
  %7 = load i32, i32* %rounded, align 4
  %add = add nsw i32 %7, 15
  store i32 %add, i32* %rounded, align 4
  %8 = load i32, i32* %rounded, align 4
  %div9 = sdiv i32 %8, 16
  %mul10 = mul nsw i32 %div9, 16
  store i32 %mul10, i32* %rounded, align 4
  %9 = load i32, i32* %long_bytes, align 4
  %10 = load i32, i32* %pointer_bytes, align 4
  %cmp = icmp ne i32 %9, %10
  br i1 %cmp, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 267, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.end_final, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  call void @data_section()
  %11 = load i32, i32* %align, align 4
  %cmp12 = icmp ne i32 %11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %if.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %13 = load i32, i32* %align, align 4
  %shl = shl i32 1, %13
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %shl)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.13, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 0)
  br label %do.end

do.end:                                           ; preds = %do.body
  %15 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %16 = load i32, i32* %long_bytes, align 4
  %17 = load i32, i32* %align2, align 4
  %call17 = call zeroext i1 @assemble_integer(%struct.rtx_def* %15, i32 %16, i32 %17, i32 1)
  br label %do.body.18

do.body.18:                                       ; preds = %do.end
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0
  %call19 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 1) #5
  br label %do.end.20

do.end.20:                                        ; preds = %do.body.18
  %18 = load i32, i32* @target_flags, align 4
  %and21 = and i32 %18, 33554432
  %tobool22 = icmp ne i32 %and21, 0
  %cond23 = select i1 %tobool22, i32 5, i32 4
  %arraydecay24 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0
  %call25 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond23, i8* %arraydecay24)
  %19 = load i32, i32* %pointer_bytes, align 4
  %20 = load i32, i32* %align2, align 4
  %call26 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call25, i32 %19, i32 %20, i32 1)
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.20
  %arraydecay28 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0
  %call29 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 2) #5
  br label %do.end.30

do.end.30:                                        ; preds = %do.body.27
  %21 = load i32, i32* @target_flags, align 4
  %and31 = and i32 %21, 33554432
  %tobool32 = icmp ne i32 %and31, 0
  %cond33 = select i1 %tobool32, i32 5, i32 4
  %arraydecay34 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0
  %call35 = call %struct.rtx_def* @gen_rtx_fmt_s(i32 68, i32 %cond33, i8* %arraydecay34)
  %22 = load i32, i32* %pointer_bytes, align 4
  %23 = load i32, i32* %align2, align 4
  %call36 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call35, i32 %22, i32 %23, i32 1)
  %24 = load i32, i32* @count_instrumented_edges, align 4
  %conv = sext i32 %24 to i64
  %call37 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  %25 = load i32, i32* %long_bytes, align 4
  %26 = load i32, i32* %align2, align 4
  %call38 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call37, i32 %25, i32 %26, i32 1)
  %27 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %28 = load i32, i32* %pointer_bytes, align 4
  %29 = load i32, i32* %align2, align 4
  %call39 = call zeroext i1 @assemble_integer(%struct.rtx_def* %27, i32 %28, i32 %29, i32 1)
  %30 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %31 = load i32, i32* %pointer_bytes, align 4
  %32 = load i32, i32* %align2, align 4
  %call40 = call zeroext i1 @assemble_integer(%struct.rtx_def* %30, i32 %31, i32 %32, i32 1)
  %33 = load i32, i32* @target_flags, align 4
  %and41 = and i32 %33, 33554432
  %tobool42 = icmp ne i32 %and41, 0
  %cond43 = select i1 %tobool42, i32 8, i32 4
  %mul44 = mul nsw i32 11, %cond43
  %conv45 = sext i32 %mul44 to i64
  %call46 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv45)
  %34 = load i32, i32* %long_bytes, align 4
  %35 = load i32, i32* %align2, align 4
  %call47 = call zeroext i1 @assemble_integer(%struct.rtx_def* %call46, i32 %34, i32 %35, i32 1)
  %36 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %37 = load i32, i32* %pointer_bytes, align 4
  %38 = load i32, i32* %align2, align 4
  %call48 = call zeroext i1 @assemble_integer(%struct.rtx_def* %36, i32 %37, i32 %38, i32 1)
  %39 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %40 = load i32, i32* %pointer_bytes, align 4
  %41 = load i32, i32* %align2, align 4
  %call49 = call zeroext i1 @assemble_integer(%struct.rtx_def* %39, i32 %40, i32 %41, i32 1)
  %42 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %43 = load i32, i32* %pointer_bytes, align 4
  %44 = load i32, i32* %align2, align 4
  %call50 = call zeroext i1 @assemble_integer(%struct.rtx_def* %42, i32 %43, i32 %44, i32 1)
  %45 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %46 = load i32, i32* @target_flags, align 4
  %and51 = and i32 %46, 33554432
  %tobool52 = icmp ne i32 %and51, 0
  %cond53 = select i1 %tobool52, i32 8, i32 4
  %47 = load i32, i32* %align2, align 4
  %call54 = call zeroext i1 @assemble_integer(%struct.rtx_def* %45, i32 %cond53, i32 %47, i32 1)
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.30
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call56 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 1)
  br label %do.end.57

do.end.57:                                        ; preds = %do.body.55
  %call58 = call i8* @getpwd()
  store i8* %call58, i8** %cwd, align 8
  %49 = load i8*, i8** %filename.addr, align 8
  %call59 = call i64 @strlen(i8* %49) #7
  %50 = load i8*, i8** %cwd, align 8
  %call60 = call i64 @strlen(i8* %50) #7
  %add61 = add i64 %call59, %call60
  %add62 = add i64 %add61, 1
  %conv63 = trunc i64 %add62 to i32
  store i32 %conv63, i32* %len, align 4
  %51 = load i32, i32* %len, align 4
  %add64 = add nsw i32 %51, 4
  %conv65 = sext i32 %add64 to i64
  %52 = alloca i8, i64 %conv65
  store i8* %52, i8** %data_file, align 8
  %53 = load i8*, i8** %data_file, align 8
  %54 = load i8*, i8** %cwd, align 8
  %call66 = call i8* @strcpy(i8* %53, i8* %54) #5
  %55 = load i8*, i8** %data_file, align 8
  %call67 = call i8* @strcat(i8* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)) #5
  %56 = load i8*, i8** %data_file, align 8
  %57 = load i8*, i8** %filename.addr, align 8
  %call68 = call i8* @strcat(i8* %56, i8* %57) #5
  %58 = load i8*, i8** %data_file, align 8
  %59 = load i32, i32* %len, align 4
  call void @strip_off_ending(i8* %58, i32 %59)
  %60 = load i8*, i8** %data_file, align 8
  %call69 = call i8* @strcat(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #5
  %61 = load i8*, i8** %data_file, align 8
  %62 = load i8*, i8** %data_file, align 8
  %call70 = call i64 @strlen(i8* %62) #7
  %add71 = add i64 %call70, 1
  %conv72 = trunc i64 %add71 to i32
  call void @assemble_string(i8* %61, i32 %conv72)
  %63 = load i32, i32* %size, align 4
  %cmp73 = icmp eq i32 %63, 0
  br i1 %cmp73, label %if.then.75, label %if.else

if.then.75:                                       ; preds = %do.end.57
  %64 = load i32, i32* %align, align 4
  %cmp76 = icmp ne i32 %64, 0
  br i1 %cmp76, label %if.then.78, label %if.end.81

if.then.78:                                       ; preds = %if.then.75
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %66 = load i32, i32* %align, align 4
  %shl79 = shl i32 1, %66
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %shl79)
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.78, %if.then.75
  br label %do.body.82

do.body.82:                                       ; preds = %if.end.81
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call83 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 2)
  br label %do.end.84

do.end.84:                                        ; preds = %do.body.82
  %68 = load i32, i32* %size, align 4
  %cmp85 = icmp ne i32 %68, 0
  br i1 %cmp85, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %do.end.84
  %69 = load i32, i32* %size, align 4
  call void @assemble_zeros(i32 %69)
  br label %if.end.88

if.end.88:                                        ; preds = %if.then.87, %do.end.84
  br label %if.end.103

if.else:                                          ; preds = %do.end.57
  br label %do.body.89

do.body.89:                                       ; preds = %if.else
  %arraydecay90 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0
  %call91 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay90, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0), i32 2) #5
  br label %do.end.92

do.end.92:                                        ; preds = %do.body.89
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.92
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0))
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %arraydecay95 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %71, i8* %arraydecay95)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  br label %do.body.97

do.body.97:                                       ; preds = %do.body.93
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %73, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0))
  %74 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %arraydecay99 = getelementptr inbounds [20 x i8], [20 x i8]* %name, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %74, i8* %arraydecay99)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %76 = load i32, i32* %size, align 4
  %call100 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %75, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0), i32 %76, i32 16)
  br label %do.end.101

do.end.101:                                       ; preds = %do.body.97
  br label %do.end.102

do.end.102:                                       ; preds = %do.end.101
  br label %if.end.103

if.end.103:                                       ; preds = %do.end.102, %if.end.88
  br label %if.end.104

if.end.104:                                       ; preds = %if.end.103, %entry
  ret void
}

declare i32 @exact_log2_wide(i64) #1

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare void @data_section() #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare zeroext i1 @assemble_integer(%struct.rtx_def*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare %struct.rtx_def* @gen_rtx_fmt_s(i32, i32, i8*) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare i8* @getpwd() #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare void @strip_off_ending(i8*, i32) #1

declare void @assemble_string(i8*, i32) #1

declare void @assemble_zeros(i32) #1

declare void @assemble_name(%struct._IO_FILE*, i8*) #1

; Function Attrs: nounwind uwtable
define void @default_function_pro_epilogue(%struct._IO_FILE* %file, i64 %size) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %size.addr = alloca i64, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @no_asm_to_stream(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @app_enable() #0 {
entry:
  %0 = load i32, i32* @app_on, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %1)
  store i32 1, i32* @app_on, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @app_disable() #0 {
entry:
  %0 = load i32, i32* @app_on, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %1)
  store i32 0, i32* @app_on, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_insn_lengths() #0 {
entry:
  %0 = load i32*, i32** @uid_shuid, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32*, i32** @uid_shuid, align 8
  %2 = bitcast i32* %1 to i8*
  call void @free(i8* %2) #5
  store i32* null, i32** @uid_shuid, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32*, i32** @insn_lengths, align 8
  %tobool1 = icmp ne i32* %3, null
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %4 = load i32*, i32** @insn_lengths, align 8
  %5 = bitcast i32* %4 to i8*
  call void @free(i8* %5) #5
  store i32* null, i32** @insn_lengths, align 8
  store i32 0, i32* @insn_lengths_max_uid, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %tobool4 = icmp ne %struct.varray_head_tag* %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %8 = bitcast %struct.varray_head_tag* %7 to i8*
  call void @free(i8* %8) #5
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @insn_addresses_, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %9 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %tobool7 = icmp ne %struct.rtx_def** %9, null
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %do.end
  %10 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %11 = bitcast %struct.rtx_def** %10 to i8*
  call void @free(i8* %11) #5
  store %struct.rtx_def** null, %struct.rtx_def*** @uid_align, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %do.end
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define i32 @get_attr_length(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %body = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %length = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 0, i32* %length, align 4
  %0 = load i32, i32* @insn_lengths_max_uid, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %2 = load i32, i32* %rtint, align 4
  %cmp = icmp sgt i32 %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %4 = load i32, i32* %rtint3, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** @insn_lengths, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx4, align 4
  store i32 %6, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 37, label %sw.bb
    i32 35, label %sw.bb
    i32 36, label %sw.bb
    i32 34, label %sw.bb.5
    i32 33, label %sw.bb.6
    i32 32, label %sw.bb.18
  ]

sw.bb:                                            ; preds = %if.else, %if.else, %if.else
  store i32 0, i32* %retval
  br label %return

sw.bb.5:                                          ; preds = %if.else
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @insn_default_length(%struct.rtx_def* %9)
  store i32 %call, i32* %length, align 4
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.else
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %11, %struct.rtx_def** %body, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load9 = load i32, i32* %13, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 44
  br i1 %cmp11, label %if.then.15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.6
  %14 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load12 = load i32, i32* %15, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 45
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %lor.lhs.false, %sw.bb.6
  br label %if.end

if.else.16:                                       ; preds = %lor.lhs.false
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call17 = call i32 @insn_default_length(%struct.rtx_def* %16)
  store i32 %call17, i32* %length, align 4
  br label %if.end

if.end:                                           ; preds = %if.else.16, %if.then.15
  br label %sw.epilog

sw.bb.18:                                         ; preds = %if.else
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 3
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %body, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load22 = load i32, i32* %20, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 48
  br i1 %cmp24, label %if.then.29, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %sw.bb.18
  %21 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load26 = load i32, i32* %22, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 49
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %lor.lhs.false.25, %sw.bb.18
  store i32 0, i32* %retval
  br label %return

if.else.30:                                       ; preds = %lor.lhs.false.25
  %23 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load31 = load i32, i32* %24, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 40
  br i1 %cmp33, label %if.then.37, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %if.else.30
  %25 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %call35 = call i32 @asm_noperands(%struct.rtx_def* %25)
  %cmp36 = icmp sge i32 %call35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %lor.lhs.false.34, %if.else.30
  %26 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %call38 = call i32 @asm_insn_count(%struct.rtx_def* %26)
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call39 = call i32 @insn_default_length(%struct.rtx_def* %27)
  %mul = mul nsw i32 %call38, %call39
  store i32 %mul, i32* %length, align 4
  br label %if.end.57

if.else.40:                                       ; preds = %lor.lhs.false.34
  %28 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load41 = load i32, i32* %29, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 24
  br i1 %cmp43, label %if.then.44, label %if.else.54

if.then.44:                                       ; preds = %if.else.40
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.44
  %30 = load i32, i32* %i, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtvec_def**
  %32 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %32, i32 0, i32 0
  %33 = load i32, i32* %num_elem, align 4
  %cmp47 = icmp slt i32 %30, %33
  br i1 %cmp47, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %34 to i64
  %35 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtvec51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtvec_def**
  %36 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec51, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %36, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom48
  %37 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx52, align 8
  %call53 = call i32 @get_attr_length(%struct.rtx_def* %37)
  %38 = load i32, i32* %length, align 4
  %add = add nsw i32 %38, %call53
  store i32 %add, i32* %length, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load i32, i32* %i, align 4
  %inc = add nsw i32 %39, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.56

if.else.54:                                       ; preds = %if.else.40
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call55 = call i32 @insn_default_length(%struct.rtx_def* %40)
  store i32 %call55, i32* %length, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.else.54, %for.end
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %if.then.37
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.58, %if.end, %sw.bb.5
  br label %if.end.59

if.end.59:                                        ; preds = %sw.epilog
  %41 = load i32, i32* %length, align 4
  store i32 %41, i32* %retval
  br label %return

return:                                           ; preds = %if.end.59, %if.then.29, %sw.bb, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

declare i32 @insn_default_length(%struct.rtx_def*) #1

declare i32 @asm_noperands(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @asm_insn_count(%struct.rtx_def* %body) #0 {
entry:
  %body.addr = alloca %struct.rtx_def*, align 8
  %template = alloca i8*, align 8
  %count = alloca i32, align 4
  store %struct.rtx_def* %body, %struct.rtx_def** %body.addr, align 8
  store i32 1, i32* %count, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 40
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %3 = load i8*, i8** %rtstr, align 8
  store i8* %3, i8** %template, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %body.addr, align 8
  %call = call i8* @decode_asm_operands(%struct.rtx_def* %4, %struct.rtx_def** null, %struct.rtx_def*** null, i8** null, i32* null)
  store i8* %call, i8** %template, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i8*, i8** %template, align 8
  %6 = load i8, i8* %5, align 1
  %tobool = icmp ne i8 %6, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %template, align 8
  %8 = load i8, i8* %7, align 1
  %conv = sext i8 %8 to i32
  %cmp1 = icmp eq i32 %conv, 59
  br i1 %cmp1, label %if.then.6, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load i8*, i8** %template, align 8
  %10 = load i8, i8* %9, align 1
  %conv3 = sext i8 %10 to i32
  %cmp4 = icmp eq i32 %conv3, 10
  br i1 %cmp4, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %lor.lhs.false, %for.body
  %11 = load i32, i32* %count, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %count, align 4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %12 = load i8*, i8** %template, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr, i8** %template, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load i32, i32* %count, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define i32 @label_to_alignment(%struct.rtx_def* %label) #0 {
entry:
  %label.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %2 = load i32, i32* @min_labelno, align 4
  %sub = sub nsw i32 %1, %2
  %idxprom = sext i32 %sub to i64
  %3 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx1 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %3, i64 %idxprom
  %alignment = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx1, i32 0, i32 0
  %4 = load i16, i16* %alignment, align 2
  %conv = sext i16 %4 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define i32 @insn_current_reference_address(%struct.rtx_def* %branch) #0 {
entry:
  %retval = alloca i32, align 4
  %branch.addr = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %seq_uid = alloca i32, align 4
  store %struct.rtx_def* %branch, %struct.rtx_def** %branch.addr, align 8
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %cmp = icmp ne %struct.varray_head_tag* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %branch.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %seq, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %5 = load i32, i32* %rtint, align 4
  store i32 %5, i32* %seq_uid, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %branch.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp6 = icmp ne i32 %bf.clear, 33
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  %8 = load i32, i32* @insn_current_address, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %branch.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 7
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %dest, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %12 = load i32, i32* %rtint14, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load i32*, i32** @uid_shuid, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %13, i64 %idxprom
  %14 = load i32, i32* %arrayidx15, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %16 = load i32, i32* %rtint18, align 4
  %idxprom19 = sext i32 %16 to i64
  %17 = load i32*, i32** @uid_shuid, align 8
  %arrayidx20 = getelementptr inbounds i32, i32* %17, i64 %idxprom19
  %18 = load i32, i32* %arrayidx20, align 4
  %cmp21 = icmp slt i32 %14, %18
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %if.end.8
  %19 = load i32, i32* @insn_last_address, align 4
  %20 = load i32, i32* %seq_uid, align 4
  %idxprom23 = sext i32 %20 to i64
  %21 = load i32*, i32** @insn_lengths, align 8
  %arrayidx24 = getelementptr inbounds i32, i32* %21, i64 %idxprom23
  %22 = load i32, i32* %arrayidx24, align 4
  %add = add nsw i32 %19, %22
  %23 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %25 = load i32, i32* @length_unit_log, align 4
  %call = call i32 @align_fuzz(%struct.rtx_def* %23, %struct.rtx_def* %24, i32 %25, i32 -1)
  %sub = sub nsw i32 %add, %call
  store i32 %sub, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.8
  %26 = load i32, i32* @insn_current_address, align 4
  %27 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %29 = load i32, i32* @length_unit_log, align 4
  %call25 = call i32 @align_fuzz(%struct.rtx_def* %27, %struct.rtx_def* %28, i32 %29, i32 -1)
  %add26 = add nsw i32 %26, %call25
  store i32 %add26, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.22, %if.then.7, %if.then
  %30 = load i32, i32* %retval
  ret i32 %30
}

; Function Attrs: nounwind uwtable
define internal i32 @align_fuzz(%struct.rtx_def* %start, %struct.rtx_def* %end, i32 %known_align_log, i32 %growth) #0 {
entry:
  %start.addr = alloca %struct.rtx_def*, align 8
  %end.addr = alloca %struct.rtx_def*, align 8
  %known_align_log.addr = alloca i32, align 4
  %growth.addr = alloca i32, align 4
  %uid = alloca i32, align 4
  %align_label = alloca %struct.rtx_def*, align 8
  %known_align = alloca i32, align 4
  %end_shuid = alloca i32, align 4
  %fuzz = alloca i32, align 4
  %align_addr = alloca i32, align 4
  %new_align = alloca i32, align 4
  store %struct.rtx_def* %start, %struct.rtx_def** %start.addr, align 8
  store %struct.rtx_def* %end, %struct.rtx_def** %end.addr, align 8
  store i32 %known_align_log, i32* %known_align_log.addr, align 4
  store i32 %growth, i32* %growth.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %start.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  store i32 %1, i32* %uid, align 4
  %2 = load i32, i32* %known_align_log.addr, align 4
  %shl = shl i32 1, %2
  store i32 %shl, i32* %known_align, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %end.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %4 = load i32, i32* %rtint3, align 4
  %idxprom = sext i32 %4 to i64
  %5 = load i32*, i32** @uid_shuid, align 8
  %arrayidx4 = getelementptr inbounds i32, i32* %5, i64 %idxprom
  %6 = load i32, i32* %arrayidx4, align 4
  store i32 %6, i32* %end_shuid, align 4
  store i32 0, i32* %fuzz, align 4
  %7 = load i32, i32* %uid, align 4
  %idxprom5 = sext i32 %7 to i64
  %8 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %arrayidx6 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %8, i64 %idxprom5
  %9 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx6, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %align_label, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %align_label, align 8
  %tobool = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load %struct.rtx_def*, %struct.rtx_def** %align_label, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %12 = load i32, i32* %rtint9, align 4
  store i32 %12, i32* %uid, align 4
  %13 = load i32, i32* %uid, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 4
  %i = bitcast %union.varray_data_tag* %data to [1 x i32]*
  %arrayidx11 = getelementptr inbounds [1 x i32], [1 x i32]* %i, i32 0, i64 %idxprom10
  %15 = load i32, i32* %arrayidx11, align 4
  %16 = load i32, i32* %uid, align 4
  %idxprom12 = sext i32 %16 to i64
  %17 = load i32*, i32** @insn_lengths, align 8
  %arrayidx13 = getelementptr inbounds i32, i32* %17, i64 %idxprom12
  %18 = load i32, i32* %arrayidx13, align 4
  %sub = sub nsw i32 %15, %18
  store i32 %sub, i32* %align_addr, align 4
  %19 = load i32, i32* %uid, align 4
  %idxprom14 = sext i32 %19 to i64
  %20 = load i32*, i32** @uid_shuid, align 8
  %arrayidx15 = getelementptr inbounds i32, i32* %20, i64 %idxprom14
  %21 = load i32, i32* %arrayidx15, align 4
  %22 = load i32, i32* %end_shuid, align 4
  %cmp = icmp sgt i32 %21, %22
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.end

if.end:                                           ; preds = %for.body
  %23 = load %struct.rtx_def*, %struct.rtx_def** %align_label, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 5
  %rtint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %24 = load i32, i32* %rtint18, align 4
  %25 = load i32, i32* @min_labelno, align 4
  %sub19 = sub nsw i32 %24, %25
  %idxprom20 = sext i32 %sub19 to i64
  %26 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx21 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %26, i64 %idxprom20
  %alignment = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx21, i32 0, i32 0
  %27 = load i16, i16* %alignment, align 2
  %conv = sext i16 %27 to i32
  store i32 %conv, i32* %known_align_log.addr, align 4
  %28 = load i32, i32* %known_align_log.addr, align 4
  %shl22 = shl i32 1, %28
  store i32 %shl22, i32* %new_align, align 4
  %29 = load i32, i32* %new_align, align 4
  %30 = load i32, i32* %known_align, align 4
  %cmp23 = icmp slt i32 %29, %30
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  br label %for.inc

if.end.26:                                        ; preds = %if.end
  %31 = load i32, i32* %align_addr, align 4
  %sub27 = sub nsw i32 0, %31
  %32 = load i32, i32* %growth.addr, align 4
  %xor = xor i32 %sub27, %32
  %33 = load i32, i32* %new_align, align 4
  %34 = load i32, i32* %known_align, align 4
  %sub28 = sub nsw i32 %33, %34
  %and = and i32 %xor, %sub28
  %35 = load i32, i32* %fuzz, align 4
  %add = add i32 %35, %and
  store i32 %add, i32* %fuzz, align 4
  %36 = load i32, i32* %new_align, align 4
  store i32 %36, i32* %known_align, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.26, %if.then.25
  %37 = load i32, i32* %uid, align 4
  %idxprom29 = sext i32 %37 to i64
  %38 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %arrayidx30 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %38, i64 %idxprom29
  %39 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx30, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %align_label, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %40 = load i32, i32* %fuzz, align 4
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define void @compute_alignments() #0 {
entry:
  %i = alloca i32, align 4
  %log = alloca i32, align 4
  %max_skip = alloca i32, align 4
  %max_log = alloca i32, align 4
  %bb = alloca %struct.basic_block_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  %fallthru_frequency = alloca i32, align 4
  %branch_frequency = alloca i32, align 4
  %has_fallthru = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %0 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %tobool = icmp ne %struct.label_alignment* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %2 = bitcast %struct.label_alignment* %1 to i8*
  call void @free(i8* %2) #5
  store %struct.label_alignment* null, %struct.label_alignment** @label_align, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @max_label_num()
  store i32 %call, i32* @max_labelno, align 4
  %call1 = call i32 @get_first_label_num()
  store i32 %call1, i32* @min_labelno, align 4
  %3 = load i32, i32* @max_labelno, align 4
  %4 = load i32, i32* @min_labelno, align 4
  %sub = sub nsw i32 %3, %4
  %add = add nsw i32 %sub, 1
  %conv = sext i32 %add to i64
  %call2 = call noalias i8* @xcalloc(i64 %conv, i64 4)
  %5 = bitcast i8* %call2 to %struct.label_alignment*
  store %struct.label_alignment* %5, %struct.label_alignment** @label_align, align 8
  %6 = load i32, i32* @optimize, align 4
  %tobool3 = icmp ne i32 %6, 0
  br i1 %tobool3, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* @optimize_size, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  br label %for.end.87

if.end.6:                                         ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.86, %if.end.6
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %8, %9
  br i1 %cmp, label %for.body, label %for.end.87

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %bb8 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb8, i32 0, i64 %idxprom
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %12, %struct.basic_block_def** %bb, align 8
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 0
  %14 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %label, align 8
  store i32 0, i32* %fallthru_frequency, align 4
  store i32 0, i32* %branch_frequency, align 4
  store i32 0, i32* %has_fallthru, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load = load i32, i32* %16, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp9 = icmp ne i32 %bf.clear, 36
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %for.body
  br label %for.inc.86

if.end.12:                                        ; preds = %for.body
  %17 = load i32, i32* @align_labels_log, align 4
  store i32 %17, i32* %max_log, align 4
  %18 = load i32, i32* @align_labels_max_skip, align 4
  store i32 %18, i32* %max_skip, align 4
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %19, i32 0, i32 4
  %20 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %20, %struct.edge_def** %e, align 8
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %if.end.12
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool14 = icmp ne %struct.edge_def* %21, null
  br i1 %tobool14, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.13
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %22, i32 0, i32 6
  %23 = load i32, i32* %flags, align 4
  %and = and i32 %23, 1
  %tobool16 = icmp ne i32 %and, 0
  br i1 %tobool16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %for.body.15
  store i32 1, i32* %has_fallthru, align 4
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i32 0, i32 2
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 14
  %26 = load i32, i32* %frequency, align 4
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i32 0, i32 7
  %28 = load i32, i32* %probability, align 4
  %mul = mul nsw i32 %26, %28
  %add18 = add nsw i32 %mul, 5000
  %div = sdiv i32 %add18, 10000
  %29 = load i32, i32* %fallthru_frequency, align 4
  %add19 = add nsw i32 %29, %div
  store i32 %add19, i32* %fallthru_frequency, align 4
  br label %if.end.27

if.else:                                          ; preds = %for.body.15
  %30 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src20 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i32 0, i32 2
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %src20, align 8
  %frequency21 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 14
  %32 = load i32, i32* %frequency21, align 4
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %probability22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i32 0, i32 7
  %34 = load i32, i32* %probability22, align 4
  %mul23 = mul nsw i32 %32, %34
  %add24 = add nsw i32 %mul23, 5000
  %div25 = sdiv i32 %add24, 10000
  %35 = load i32, i32* %branch_frequency, align 4
  %add26 = add nsw i32 %35, %div25
  store i32 %add26, i32* %branch_frequency, align 4
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.17
  br label %for.inc

for.inc:                                          ; preds = %if.end.27
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 0
  %37 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %37, %struct.edge_def** %e, align 8
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  %38 = load i32, i32* %has_fallthru, align 4
  %tobool28 = icmp ne i32 %38, 0
  br i1 %tobool28, label %if.end.57, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.end
  %39 = load i32, i32* %branch_frequency, align 4
  %cmp29 = icmp sgt i32 %39, 1000
  br i1 %cmp29, label %if.then.52, label %lor.lhs.false.31

lor.lhs.false.31:                                 ; preds = %land.lhs.true
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %frequency32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 14
  %41 = load i32, i32* %frequency32, align 4
  %42 = load i32, i32* %i, align 4
  %sub33 = sub nsw i32 %42, 1
  %idxprom34 = sext i32 %sub33 to i64
  %43 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data35 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %43, i32 0, i32 4
  %bb36 = bitcast %union.varray_data_tag* %data35 to [1 x %struct.basic_block_def*]*
  %arrayidx37 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb36, i32 0, i64 %idxprom34
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx37, align 8
  %frequency38 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 14
  %45 = load i32, i32* %frequency38, align 4
  %mul39 = mul nsw i32 %45, 10
  %cmp40 = icmp sgt i32 %41, %mul39
  br i1 %cmp40, label %land.lhs.true.42, label %if.end.57

land.lhs.true.42:                                 ; preds = %lor.lhs.false.31
  %46 = load i32, i32* %i, align 4
  %sub43 = sub nsw i32 %46, 1
  %idxprom44 = sext i32 %sub43 to i64
  %47 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data45 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %47, i32 0, i32 4
  %bb46 = bitcast %union.varray_data_tag* %data45 to [1 x %struct.basic_block_def*]*
  %arrayidx47 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb46, i32 0, i64 %idxprom44
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx47, align 8
  %frequency48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %48, i32 0, i32 14
  %49 = load i32, i32* %frequency48, align 4
  %50 = load i32, i32* getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0, i32 14), align 4
  %div49 = sdiv i32 %50, 2
  %cmp50 = icmp sle i32 %49, %div49
  br i1 %cmp50, label %if.then.52, label %if.end.57

if.then.52:                                       ; preds = %land.lhs.true.42, %land.lhs.true
  %51 = load i32, i32* @align_jumps_log, align 4
  store i32 %51, i32* %log, align 4
  %52 = load i32, i32* %max_log, align 4
  %53 = load i32, i32* %log, align 4
  %cmp53 = icmp slt i32 %52, %53
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.52
  %54 = load i32, i32* %log, align 4
  store i32 %54, i32* %max_log, align 4
  %55 = load i32, i32* @align_jumps_max_skip, align 4
  store i32 %55, i32* %max_skip, align 4
  br label %if.end.56

if.end.56:                                        ; preds = %if.then.55, %if.then.52
  br label %if.end.57

if.end.57:                                        ; preds = %if.end.56, %land.lhs.true.42, %lor.lhs.false.31, %for.end
  %56 = load i32, i32* %has_fallthru, align 4
  %tobool58 = icmp ne i32 %56, 0
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.72

land.lhs.true.59:                                 ; preds = %if.end.57
  %57 = load i32, i32* %branch_frequency, align 4
  %58 = load i32, i32* %fallthru_frequency, align 4
  %add60 = add nsw i32 %57, %58
  %cmp61 = icmp sgt i32 %add60, 1000
  br i1 %cmp61, label %land.lhs.true.63, label %if.end.72

land.lhs.true.63:                                 ; preds = %land.lhs.true.59
  %59 = load i32, i32* %branch_frequency, align 4
  %60 = load i32, i32* %fallthru_frequency, align 4
  %mul64 = mul nsw i32 %60, 5
  %cmp65 = icmp sgt i32 %59, %mul64
  br i1 %cmp65, label %if.then.67, label %if.end.72

if.then.67:                                       ; preds = %land.lhs.true.63
  %61 = load i32, i32* @align_loops_log, align 4
  store i32 %61, i32* %log, align 4
  %62 = load i32, i32* %max_log, align 4
  %63 = load i32, i32* %log, align 4
  %cmp68 = icmp slt i32 %62, %63
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.then.67
  %64 = load i32, i32* %log, align 4
  store i32 %64, i32* %max_log, align 4
  %65 = load i32, i32* @align_loops_max_skip, align 4
  store i32 %65, i32* %max_skip, align 4
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.then.67
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %land.lhs.true.63, %land.lhs.true.59, %if.end.57
  %66 = load i32, i32* %max_log, align 4
  %conv73 = trunc i32 %66 to i16
  %67 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 5
  %rtint = bitcast %union.rtunion_def* %arrayidx74 to i32*
  %68 = load i32, i32* %rtint, align 4
  %69 = load i32, i32* @min_labelno, align 4
  %sub75 = sub nsw i32 %68, %69
  %idxprom76 = sext i32 %sub75 to i64
  %70 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx77 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %70, i64 %idxprom76
  %alignment = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx77, i32 0, i32 0
  store i16 %conv73, i16* %alignment, align 2
  %71 = load i32, i32* %max_skip, align 4
  %conv78 = trunc i32 %71 to i16
  %72 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 5
  %rtint81 = bitcast %union.rtunion_def* %arrayidx80 to i32*
  %73 = load i32, i32* %rtint81, align 4
  %74 = load i32, i32* @min_labelno, align 4
  %sub82 = sub nsw i32 %73, %74
  %idxprom83 = sext i32 %sub82 to i64
  %75 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx84 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %75, i64 %idxprom83
  %max_skip85 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx84, i32 0, i32 1
  store i16 %conv78, i16* %max_skip85, align 2
  br label %for.inc.86

for.inc.86:                                       ; preds = %if.end.72, %if.then.11
  %76 = load i32, i32* %i, align 4
  %inc = add nsw i32 %76, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end.87:                                       ; preds = %if.then.5, %for.cond
  ret void
}

declare i32 @max_label_num() #1

declare i32 @get_first_label_num() #1

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @shorten_branches(%struct.rtx_def* %first) #0 {
entry:
  %first.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %max_uid = alloca i32, align 4
  %i = alloca i32, align 4
  %max_log = alloca i32, align 4
  %max_skip = alloca i32, align 4
  %seq = alloca %struct.rtx_def*, align 8
  %something_changed = alloca i32, align 4
  %varying_length = alloca i8*, align 8
  %body = alloca %struct.rtx_def*, align 8
  %uid = alloca i32, align 4
  %align_tab = alloca [16 x %struct.rtx_def*], align 16
  %old = alloca i32, align 4
  %n_labels = alloca i32, align 4
  %n_old_labels = alloca i32, align 4
  %log = alloca i32, align 4
  %next = alloca %struct.rtx_def*, align 8
  %nextbody = alloca %struct.rtx_def*, align 8
  %label = alloca %struct.rtx_def*, align 8
  %uid158 = alloca i32, align 4
  %log162 = alloca i32, align 4
  %log214 = alloca i32, align 4
  %align = alloca i32, align 4
  %new_address = alloca i32, align 4
  %i314 = alloca i32, align 4
  %const_delay_slots = alloca i32, align 4
  %inner_insn = alloca %struct.rtx_def*, align 8
  %inner_uid = alloca i32, align 4
  %inner_length = alloca i32, align 4
  %new_length = alloca i32, align 4
  %length_align = alloca i32, align 4
  %log433 = alloca i32, align 4
  %align445 = alloca i32, align 4
  %new_address447 = alloca i32, align 4
  %i493 = alloca i32, align 4
  %inner_insn505 = alloca %struct.rtx_def*, align 8
  %inner_uid512 = alloca i32, align 4
  %i545 = alloca i32, align 4
  %inner_insn557 = alloca %struct.rtx_def*, align 8
  %inner_uid564 = alloca i32, align 4
  %inner_length568 = alloca i32, align 4
  store %struct.rtx_def* %first, %struct.rtx_def** %first.addr, align 8
  store i32 1, i32* %something_changed, align 4
  %call = call i32 @get_max_uid()
  store i32 %call, i32* %max_uid, align 4
  %0 = load i32, i32* %max_uid, align 4
  %conv = sext i32 %0 to i64
  %mul = mul i64 %conv, 4
  %call1 = call noalias i8* @xmalloc(i64 %mul)
  %1 = bitcast i8* %call1 to i32*
  store i32* %1, i32** @uid_shuid, align 8
  %2 = load i32, i32* @max_labelno, align 4
  %call2 = call i32 @max_label_num()
  %cmp = icmp ne i32 %2, %call2
  br i1 %cmp, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %3 = load i32, i32* @max_labelno, align 4
  store i32 %3, i32* %old, align 4
  %call4 = call i32 @max_label_num()
  store i32 %call4, i32* @max_labelno, align 4
  %4 = load i32, i32* @max_labelno, align 4
  %5 = load i32, i32* @min_labelno, align 4
  %sub = sub nsw i32 %4, %5
  %add = add nsw i32 %sub, 1
  store i32 %add, i32* %n_labels, align 4
  %6 = load i32, i32* %old, align 4
  %7 = load i32, i32* @min_labelno, align 4
  %sub5 = sub nsw i32 %6, %7
  %add6 = add nsw i32 %sub5, 1
  store i32 %add6, i32* %n_old_labels, align 4
  %8 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %9 = bitcast %struct.label_alignment* %8 to i8*
  %10 = load i32, i32* %n_labels, align 4
  %conv7 = sext i32 %10 to i64
  %mul8 = mul i64 %conv7, 4
  %call9 = call i8* @xrealloc(i8* %9, i64 %mul8)
  %11 = bitcast i8* %call9 to %struct.label_alignment*
  store %struct.label_alignment* %11, %struct.label_alignment** @label_align, align 8
  %12 = load i32, i32* %n_old_labels, align 4
  %13 = load i32, i32* %n_labels, align 4
  %cmp10 = icmp sgt i32 %12, %13
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 928, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.shorten_branches, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %14 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %15 = load i32, i32* %n_old_labels, align 4
  %idx.ext = sext i32 %15 to i64
  %add.ptr = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %14, i64 %idx.ext
  %16 = bitcast %struct.label_alignment* %add.ptr to i8*
  %17 = load i32, i32* %n_labels, align 4
  %18 = load i32, i32* %n_old_labels, align 4
  %sub13 = sub nsw i32 %17, %18
  %conv14 = sext i32 %sub13 to i64
  %mul15 = mul i64 %conv14, 4
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 %mul15, i32 2, i1 false)
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  store i32 0, i32* %max_log, align 4
  store i32 0, i32* %max_skip, align 4
  %call17 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call17, %struct.rtx_def** %insn, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.133, %if.end.16
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool, label %for.body, label %for.end.137

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %22 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %22 to i64
  %23 = load i32*, i32** @uid_shuid, align 8
  %arrayidx18 = getelementptr inbounds i32, i32* %23, i64 %idxprom
  store i32 %20, i32* %arrayidx18, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load = load i32, i32* %25, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom19 = sext i32 %bf.clear to i64
  %arrayidx20 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom19
  %26 = load i8, i8* %arrayidx20, align 1
  %conv21 = sext i8 %26 to i32
  %cmp22 = icmp eq i32 %conv21, 105
  br i1 %cmp22, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %for.body
  br label %if.end.132

if.else:                                          ; preds = %for.body
  %27 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load25 = load i32, i32* %28, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 36
  br i1 %cmp27, label %if.then.29, label %if.else.101

if.then.29:                                       ; preds = %if.else
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 5
  %rtint32 = bitcast %union.rtunion_def* %arrayidx31 to i32*
  %30 = load i32, i32* %rtint32, align 4
  %31 = load i32, i32* @min_labelno, align 4
  %sub33 = sub nsw i32 %30, %31
  %idxprom34 = sext i32 %sub33 to i64
  %32 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx35 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %32, i64 %idxprom34
  %alignment = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx35, i32 0, i32 0
  %33 = load i16, i16* %alignment, align 2
  %conv36 = sext i16 %33 to i32
  store i32 %conv36, i32* %log, align 4
  %34 = load i32, i32* %max_log, align 4
  %35 = load i32, i32* %log, align 4
  %cmp37 = icmp slt i32 %34, %35
  br i1 %cmp37, label %if.then.39, label %if.end.48

if.then.39:                                       ; preds = %if.then.29
  %36 = load i32, i32* %log, align 4
  store i32 %36, i32* %max_log, align 4
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 5
  %rtint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %38 = load i32, i32* %rtint42, align 4
  %39 = load i32, i32* @min_labelno, align 4
  %sub43 = sub nsw i32 %38, %39
  %idxprom44 = sext i32 %sub43 to i64
  %40 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx45 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %40, i64 %idxprom44
  %max_skip46 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx45, i32 0, i32 1
  %41 = load i16, i16* %max_skip46, align 2
  %conv47 = sext i16 %41 to i32
  store i32 %conv47, i32* %max_skip, align 4
  br label %if.end.48

if.end.48:                                        ; preds = %if.then.39, %if.then.29
  %42 = load i32, i32* @align_labels_log, align 4
  store i32 %42, i32* %log, align 4
  %43 = load i32, i32* %max_log, align 4
  %44 = load i32, i32* %log, align 4
  %cmp49 = icmp slt i32 %43, %44
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  %45 = load i32, i32* %log, align 4
  store i32 %45, i32* %max_log, align 4
  %46 = load i32, i32* @align_labels_max_skip, align 4
  store i32 %46, i32* %max_skip, align 4
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.51, %if.end.48
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %48, %struct.rtx_def** %next, align 8
  %49 = load i32, i32* @target_flags, align 4
  %and = and i32 %49, 33554432
  %tobool55 = icmp ne i32 %and, 0
  br i1 %tobool55, label %if.end.84, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end.52
  %50 = load i32, i32* @flag_pic, align 4
  %tobool56 = icmp ne i32 %50, 0
  br i1 %tobool56, label %if.then.57, label %if.end.84

if.then.57:                                       ; preds = %land.lhs.true
  %51 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool58 = icmp ne %struct.rtx_def* %51, null
  br i1 %tobool58, label %land.lhs.true.59, label %if.end.83

land.lhs.true.59:                                 ; preds = %if.then.57
  %52 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %53 = bitcast %struct.rtx_def* %52 to i32*
  %bf.load60 = load i32, i32* %53, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %cmp62 = icmp eq i32 %bf.clear61, 33
  br i1 %cmp62, label %if.then.64, label %if.end.83

if.then.64:                                       ; preds = %land.lhs.true.59
  %54 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 3
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx67, align 8
  store %struct.rtx_def* %55, %struct.rtx_def** %nextbody, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %nextbody, align 8
  %57 = bitcast %struct.rtx_def* %56 to i32*
  %bf.load68 = load i32, i32* %57, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 44
  br i1 %cmp70, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.64
  %58 = load %struct.rtx_def*, %struct.rtx_def** %nextbody, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load72 = load i32, i32* %59, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 45
  br i1 %cmp74, label %if.then.76, label %if.end.82

if.then.76:                                       ; preds = %lor.lhs.false, %if.then.64
  %60 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %call77 = call i32 @final_addr_vec_align(%struct.rtx_def* %60)
  store i32 %call77, i32* %log, align 4
  %61 = load i32, i32* %max_log, align 4
  %62 = load i32, i32* %log, align 4
  %cmp78 = icmp slt i32 %61, %62
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.then.76
  %63 = load i32, i32* %log, align 4
  store i32 %63, i32* %max_log, align 4
  %64 = load i32, i32* @align_labels_max_skip, align 4
  store i32 %64, i32* %max_skip, align 4
  br label %if.end.81

if.end.81:                                        ; preds = %if.then.80, %if.then.76
  br label %if.end.82

if.end.82:                                        ; preds = %if.end.81, %lor.lhs.false
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %land.lhs.true.59, %if.then.57
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %land.lhs.true, %if.end.52
  %65 = load i32, i32* %max_log, align 4
  %conv85 = trunc i32 %65 to i16
  %66 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 5
  %rtint88 = bitcast %union.rtunion_def* %arrayidx87 to i32*
  %67 = load i32, i32* %rtint88, align 4
  %68 = load i32, i32* @min_labelno, align 4
  %sub89 = sub nsw i32 %67, %68
  %idxprom90 = sext i32 %sub89 to i64
  %69 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx91 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %69, i64 %idxprom90
  %alignment92 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx91, i32 0, i32 0
  store i16 %conv85, i16* %alignment92, align 2
  %70 = load i32, i32* %max_skip, align 4
  %conv93 = trunc i32 %70 to i16
  %71 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 5
  %rtint96 = bitcast %union.rtunion_def* %arrayidx95 to i32*
  %72 = load i32, i32* %rtint96, align 4
  %73 = load i32, i32* @min_labelno, align 4
  %sub97 = sub nsw i32 %72, %73
  %idxprom98 = sext i32 %sub97 to i64
  %74 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx99 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %74, i64 %idxprom98
  %max_skip100 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx99, i32 0, i32 1
  store i16 %conv93, i16* %max_skip100, align 2
  store i32 0, i32* %max_log, align 4
  store i32 0, i32* %max_skip, align 4
  br label %if.end.131

if.else.101:                                      ; preds = %if.else
  %75 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load102 = load i32, i32* %76, align 8
  %bf.clear103 = and i32 %bf.load102, 65535
  %cmp104 = icmp eq i32 %bf.clear103, 35
  br i1 %cmp104, label %if.then.106, label %if.end.130

if.then.106:                                      ; preds = %if.else.101
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %77, %struct.rtx_def** %label, align 8
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc, %if.then.106
  %78 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %tobool108 = icmp ne %struct.rtx_def* %78, null
  br i1 %tobool108, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.107
  %79 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load109 = load i32, i32* %80, align 8
  %bf.clear110 = and i32 %bf.load109, 65535
  %idxprom111 = sext i32 %bf.clear110 to i64
  %arrayidx112 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom111
  %81 = load i8, i8* %arrayidx112, align 1
  %conv113 = sext i8 %81 to i32
  %cmp114 = icmp eq i32 %conv113, 105
  %lnot = xor i1 %cmp114, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.107
  %82 = phi i1 [ false, %for.cond.107 ], [ %lnot, %land.rhs ]
  br i1 %82, label %for.body.116, label %for.end

for.body.116:                                     ; preds = %land.end
  %83 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %84 = bitcast %struct.rtx_def* %83 to i32*
  %bf.load117 = load i32, i32* %84, align 8
  %bf.clear118 = and i32 %bf.load117, 65535
  %cmp119 = icmp eq i32 %bf.clear118, 36
  br i1 %cmp119, label %if.then.121, label %if.end.126

if.then.121:                                      ; preds = %for.body.116
  store i32 0, i32* %log, align 4
  %85 = load i32, i32* %max_log, align 4
  %86 = load i32, i32* %log, align 4
  %cmp122 = icmp slt i32 %85, %86
  br i1 %cmp122, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %if.then.121
  %87 = load i32, i32* %log, align 4
  store i32 %87, i32* %max_log, align 4
  store i32 0, i32* %max_skip, align 4
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %if.then.121
  br label %for.end

if.end.126:                                       ; preds = %for.body.116
  br label %for.inc

for.inc:                                          ; preds = %if.end.126
  %88 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld127 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %88, i32 0, i32 1
  %arrayidx128 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld127, i32 0, i64 2
  %rtx129 = bitcast %union.rtunion_def* %arrayidx128 to %struct.rtx_def**
  %89 = load %struct.rtx_def*, %struct.rtx_def** %rtx129, align 8
  store %struct.rtx_def* %89, %struct.rtx_def** %label, align 8
  br label %for.cond.107

for.end:                                          ; preds = %if.end.125, %land.end
  br label %if.end.130

if.end.130:                                       ; preds = %for.end, %if.else.101
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.end.84
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %if.then.24
  br label %for.inc.133

for.inc.133:                                      ; preds = %if.end.132
  %90 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld134 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld134, i32 0, i64 2
  %rtx136 = bitcast %union.rtunion_def* %arrayidx135 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx136, align 8
  store %struct.rtx_def* %91, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.137:                                      ; preds = %for.cond
  %92 = load i32, i32* %max_uid, align 4
  %conv138 = sext i32 %92 to i64
  %mul139 = mul i64 %conv138, 4
  %call140 = call noalias i8* @xmalloc(i64 %mul139)
  %93 = bitcast i8* %call140 to i32*
  store i32* %93, i32** @insn_lengths, align 8
  %94 = load i32, i32* %max_uid, align 4
  store i32 %94, i32* @insn_lengths_max_uid, align 4
  %95 = load i32, i32* %max_uid, align 4
  %conv141 = sext i32 %95 to i64
  %call142 = call %struct.varray_head_tag* @varray_init(i64 %conv141, i64 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0))
  store %struct.varray_head_tag* %call142, %struct.varray_head_tag** @insn_addresses_, align 8
  %96 = load i32, i32* %max_uid, align 4
  %conv143 = sext i32 %96 to i64
  %call144 = call noalias i8* @xcalloc(i64 %conv143, i64 1)
  store i8* %call144, i8** %varying_length, align 8
  %97 = load i32, i32* %max_uid, align 4
  %conv145 = sext i32 %97 to i64
  %call146 = call noalias i8* @xcalloc(i64 %conv145, i64 8)
  %98 = bitcast i8* %call146 to %struct.rtx_def**
  store %struct.rtx_def** %98, %struct.rtx_def*** @uid_align, align 8
  store i32 16, i32* %i, align 4
  br label %for.cond.147

for.cond.147:                                     ; preds = %for.body.150, %for.end.137
  %99 = load i32, i32* %i, align 4
  %dec = add nsw i32 %99, -1
  store i32 %dec, i32* %i, align 4
  %cmp148 = icmp sge i32 %dec, 0
  br i1 %cmp148, label %for.body.150, label %for.end.153

for.body.150:                                     ; preds = %for.cond.147
  %100 = load i32, i32* %i, align 4
  %idxprom151 = sext i32 %100 to i64
  %arrayidx152 = getelementptr inbounds [16 x %struct.rtx_def*], [16 x %struct.rtx_def*]* %align_tab, i32 0, i64 %idxprom151
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx152, align 8
  br label %for.cond.147

for.end.153:                                      ; preds = %for.cond.147
  %call154 = call %struct.rtx_def* @get_last_insn()
  store %struct.rtx_def* %call154, %struct.rtx_def** %seq, align 8
  br label %for.cond.155

for.cond.155:                                     ; preds = %for.inc.195, %for.end.153
  %101 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %tobool156 = icmp ne %struct.rtx_def* %101, null
  br i1 %tobool156, label %for.body.157, label %for.end.199

for.body.157:                                     ; preds = %for.cond.155
  %102 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld159, i32 0, i64 0
  %rtint161 = bitcast %union.rtunion_def* %arrayidx160 to i32*
  %103 = load i32, i32* %rtint161, align 4
  store i32 %103, i32* %uid158, align 4
  %104 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load163 = load i32, i32* %105, align 8
  %bf.clear164 = and i32 %bf.load163, 65535
  %cmp165 = icmp eq i32 %bf.clear164, 36
  br i1 %cmp165, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.157
  %106 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 5
  %rtint169 = bitcast %union.rtunion_def* %arrayidx168 to i32*
  %107 = load i32, i32* %rtint169, align 4
  %108 = load i32, i32* @min_labelno, align 4
  %sub170 = sub nsw i32 %107, %108
  %idxprom171 = sext i32 %sub170 to i64
  %109 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx172 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %109, i64 %idxprom171
  %alignment173 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx172, i32 0, i32 0
  %110 = load i16, i16* %alignment173, align 2
  %conv174 = sext i16 %110 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body.157
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv174, %cond.true ], [ 0, %cond.false ]
  store i32 %cond, i32* %log162, align 4
  %arrayidx175 = getelementptr inbounds [16 x %struct.rtx_def*], [16 x %struct.rtx_def*]* %align_tab, i32 0, i64 0
  %111 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx175, align 8
  %112 = load i32, i32* %uid158, align 4
  %idxprom176 = sext i32 %112 to i64
  %113 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %arrayidx177 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %113, i64 %idxprom176
  store %struct.rtx_def* %111, %struct.rtx_def** %arrayidx177, align 8
  %114 = load i32, i32* %log162, align 4
  %tobool178 = icmp ne i32 %114, 0
  br i1 %tobool178, label %if.then.179, label %if.end.194

if.then.179:                                      ; preds = %cond.end
  %115 = load i32, i32* %log162, align 4
  %idxprom180 = sext i32 %115 to i64
  %arrayidx181 = getelementptr inbounds [16 x %struct.rtx_def*], [16 x %struct.rtx_def*]* %align_tab, i32 0, i64 %idxprom180
  %116 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx181, align 8
  %117 = load i32, i32* %uid158, align 4
  %idxprom182 = sext i32 %117 to i64
  %118 = load %struct.rtx_def**, %struct.rtx_def*** @uid_align, align 8
  %arrayidx183 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %118, i64 %idxprom182
  store %struct.rtx_def* %116, %struct.rtx_def** %arrayidx183, align 8
  %119 = load i32, i32* %log162, align 4
  %sub184 = sub nsw i32 %119, 1
  store i32 %sub184, i32* %i, align 4
  br label %for.cond.185

for.cond.185:                                     ; preds = %for.inc.191, %if.then.179
  %120 = load i32, i32* %i, align 4
  %cmp186 = icmp sge i32 %120, 0
  br i1 %cmp186, label %for.body.188, label %for.end.193

for.body.188:                                     ; preds = %for.cond.185
  %121 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %122 = load i32, i32* %i, align 4
  %idxprom189 = sext i32 %122 to i64
  %arrayidx190 = getelementptr inbounds [16 x %struct.rtx_def*], [16 x %struct.rtx_def*]* %align_tab, i32 0, i64 %idxprom189
  store %struct.rtx_def* %121, %struct.rtx_def** %arrayidx190, align 8
  br label %for.inc.191

for.inc.191:                                      ; preds = %for.body.188
  %123 = load i32, i32* %i, align 4
  %dec192 = add nsw i32 %123, -1
  store i32 %dec192, i32* %i, align 4
  br label %for.cond.185

for.end.193:                                      ; preds = %for.cond.185
  br label %if.end.194

if.end.194:                                       ; preds = %for.end.193, %cond.end
  br label %for.inc.195

for.inc.195:                                      ; preds = %if.end.194
  %124 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld196 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx197 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld196, i32 0, i64 1
  %rtx198 = bitcast %union.rtunion_def* %arrayidx197 to %struct.rtx_def**
  %125 = load %struct.rtx_def*, %struct.rtx_def** %rtx198, align 8
  store %struct.rtx_def* %125, %struct.rtx_def** %seq, align 8
  br label %for.cond.155

for.end.199:                                      ; preds = %for.cond.155
  store i32 0, i32* @insn_current_address, align 4
  %126 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %126, %struct.rtx_def** %insn, align 8
  br label %for.cond.200

for.cond.200:                                     ; preds = %for.inc.412, %for.end.199
  %127 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp201 = icmp ne %struct.rtx_def* %127, null
  br i1 %cmp201, label %for.body.203, label %for.end.419

for.body.203:                                     ; preds = %for.cond.200
  %128 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld204 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx205 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld204, i32 0, i64 0
  %rtint206 = bitcast %union.rtunion_def* %arrayidx205 to i32*
  %129 = load i32, i32* %rtint206, align 4
  store i32 %129, i32* %uid, align 4
  %130 = load i32, i32* %uid, align 4
  %idxprom207 = sext i32 %130 to i64
  %131 = load i32*, i32** @insn_lengths, align 8
  %arrayidx208 = getelementptr inbounds i32, i32* %131, i64 %idxprom207
  store i32 0, i32* %arrayidx208, align 4
  %132 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %133 = bitcast %struct.rtx_def* %132 to i32*
  %bf.load209 = load i32, i32* %133, align 8
  %bf.clear210 = and i32 %bf.load209, 65535
  %cmp211 = icmp eq i32 %bf.clear210, 36
  br i1 %cmp211, label %if.then.213, label %if.end.233

if.then.213:                                      ; preds = %for.body.203
  %134 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld215 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx216 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld215, i32 0, i64 5
  %rtint217 = bitcast %union.rtunion_def* %arrayidx216 to i32*
  %135 = load i32, i32* %rtint217, align 4
  %136 = load i32, i32* @min_labelno, align 4
  %sub218 = sub nsw i32 %135, %136
  %idxprom219 = sext i32 %sub218 to i64
  %137 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx220 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %137, i64 %idxprom219
  %alignment221 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx220, i32 0, i32 0
  %138 = load i16, i16* %alignment221, align 2
  %conv222 = sext i16 %138 to i32
  store i32 %conv222, i32* %log214, align 4
  %139 = load i32, i32* %log214, align 4
  %tobool223 = icmp ne i32 %139, 0
  br i1 %tobool223, label %if.then.224, label %if.end.232

if.then.224:                                      ; preds = %if.then.213
  %140 = load i32, i32* %log214, align 4
  %shl = shl i32 1, %140
  store i32 %shl, i32* %align, align 4
  %141 = load i32, i32* @insn_current_address, align 4
  %142 = load i32, i32* %align, align 4
  %add225 = add nsw i32 %141, %142
  %sub226 = sub nsw i32 %add225, 1
  %143 = load i32, i32* %align, align 4
  %sub227 = sub nsw i32 0, %143
  %and228 = and i32 %sub226, %sub227
  store i32 %and228, i32* %new_address, align 4
  %144 = load i32, i32* %new_address, align 4
  %145 = load i32, i32* @insn_current_address, align 4
  %sub229 = sub nsw i32 %144, %145
  %146 = load i32, i32* %uid, align 4
  %idxprom230 = sext i32 %146 to i64
  %147 = load i32*, i32** @insn_lengths, align 8
  %arrayidx231 = getelementptr inbounds i32, i32* %147, i64 %idxprom230
  store i32 %sub229, i32* %arrayidx231, align 4
  br label %if.end.232

if.end.232:                                       ; preds = %if.then.224, %if.then.213
  br label %if.end.233

if.end.233:                                       ; preds = %if.end.232, %for.body.203
  %148 = load i32, i32* @insn_current_address, align 4
  %149 = load i32, i32* %uid, align 4
  %idxprom234 = sext i32 %149 to i64
  %150 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %150, i32 0, i32 4
  %i235 = bitcast %union.varray_data_tag* %data to [1 x i32]*
  %arrayidx236 = getelementptr inbounds [1 x i32], [1 x i32]* %i235, i32 0, i64 %idxprom234
  store i32 %148, i32* %arrayidx236, align 4
  %151 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %152 = bitcast %struct.rtx_def* %151 to i32*
  %bf.load237 = load i32, i32* %152, align 8
  %bf.clear238 = and i32 %bf.load237, 65535
  %cmp239 = icmp eq i32 %bf.clear238, 37
  br i1 %cmp239, label %if.then.251, label %lor.lhs.false.241

lor.lhs.false.241:                                ; preds = %if.end.233
  %153 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %154 = bitcast %struct.rtx_def* %153 to i32*
  %bf.load242 = load i32, i32* %154, align 8
  %bf.clear243 = and i32 %bf.load242, 65535
  %cmp244 = icmp eq i32 %bf.clear243, 35
  br i1 %cmp244, label %if.then.251, label %lor.lhs.false.246

lor.lhs.false.246:                                ; preds = %lor.lhs.false.241
  %155 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %156 = bitcast %struct.rtx_def* %155 to i32*
  %bf.load247 = load i32, i32* %156, align 8
  %bf.clear248 = and i32 %bf.load247, 65535
  %cmp249 = icmp eq i32 %bf.clear248, 36
  br i1 %cmp249, label %if.then.251, label %if.end.252

if.then.251:                                      ; preds = %lor.lhs.false.246, %lor.lhs.false.241, %if.end.233
  br label %for.inc.412

if.end.252:                                       ; preds = %lor.lhs.false.246
  %157 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %158 = bitcast %struct.rtx_def* %157 to i32*
  %bf.load253 = load i32, i32* %158, align 8
  %bf.lshr = lshr i32 %bf.load253, 27
  %bf.clear254 = and i32 %bf.lshr, 1
  %tobool255 = icmp ne i32 %bf.clear254, 0
  br i1 %tobool255, label %if.then.256, label %if.end.257

if.then.256:                                      ; preds = %if.end.252
  br label %for.inc.412

if.end.257:                                       ; preds = %if.end.252
  %159 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld258 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx259 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld258, i32 0, i64 3
  %rtx260 = bitcast %union.rtunion_def* %arrayidx259 to %struct.rtx_def**
  %160 = load %struct.rtx_def*, %struct.rtx_def** %rtx260, align 8
  store %struct.rtx_def* %160, %struct.rtx_def** %body, align 8
  %161 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %162 = bitcast %struct.rtx_def* %161 to i32*
  %bf.load261 = load i32, i32* %162, align 8
  %bf.clear262 = and i32 %bf.load261, 65535
  %cmp263 = icmp eq i32 %bf.clear262, 44
  br i1 %cmp263, label %if.then.270, label %lor.lhs.false.265

lor.lhs.false.265:                                ; preds = %if.end.257
  %163 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %164 = bitcast %struct.rtx_def* %163 to i32*
  %bf.load266 = load i32, i32* %164, align 8
  %bf.clear267 = and i32 %bf.load266, 65535
  %cmp268 = icmp eq i32 %bf.clear267, 45
  br i1 %cmp268, label %if.then.270, label %if.else.293

if.then.270:                                      ; preds = %lor.lhs.false.265, %if.end.257
  %165 = load i32, i32* @target_flags, align 4
  %and271 = and i32 %165, 33554432
  %tobool272 = icmp ne i32 %and271, 0
  br i1 %tobool272, label %if.end.292, label %land.lhs.true.273

land.lhs.true.273:                                ; preds = %if.then.270
  %166 = load i32, i32* @flag_pic, align 4
  %tobool274 = icmp ne i32 %166, 0
  br i1 %tobool274, label %if.then.275, label %if.end.292

if.then.275:                                      ; preds = %land.lhs.true.273
  %167 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %168 = bitcast %struct.rtx_def* %167 to i32*
  %bf.load276 = load i32, i32* %168, align 8
  %bf.clear277 = and i32 %bf.load276, 65535
  %cmp278 = icmp eq i32 %bf.clear277, 45
  %conv279 = zext i1 %cmp278 to i32
  %idxprom280 = sext i32 %conv279 to i64
  %169 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld281 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %169, i32 0, i32 1
  %arrayidx282 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld281, i32 0, i64 %idxprom280
  %rtvec = bitcast %union.rtunion_def* %arrayidx282 to %struct.rtvec_def**
  %170 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %170, i32 0, i32 0
  %171 = load i32, i32* %num_elem, align 4
  %172 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %bf.load283 = load i32, i32* %173, align 8
  %bf.lshr284 = lshr i32 %bf.load283, 16
  %bf.clear285 = and i32 %bf.lshr284, 255
  %idxprom286 = sext i32 %bf.clear285 to i64
  %arrayidx287 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom286
  %174 = load i8, i8* %arrayidx287, align 1
  %conv288 = zext i8 %174 to i32
  %mul289 = mul nsw i32 %171, %conv288
  %175 = load i32, i32* %uid, align 4
  %idxprom290 = sext i32 %175 to i64
  %176 = load i32*, i32** @insn_lengths, align 8
  %arrayidx291 = getelementptr inbounds i32, i32* %176, i64 %idxprom290
  store i32 %mul289, i32* %arrayidx291, align 4
  br label %if.end.292

if.end.292:                                       ; preds = %if.then.275, %land.lhs.true.273, %if.then.270
  br label %if.end.411

if.else.293:                                      ; preds = %lor.lhs.false.265
  %177 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %178 = bitcast %struct.rtx_def* %177 to i32*
  %bf.load294 = load i32, i32* %178, align 8
  %bf.clear295 = and i32 %bf.load294, 65535
  %cmp296 = icmp eq i32 %bf.clear295, 40
  br i1 %cmp296, label %if.then.302, label %lor.lhs.false.298

lor.lhs.false.298:                                ; preds = %if.else.293
  %179 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %call299 = call i32 @asm_noperands(%struct.rtx_def* %179)
  %cmp300 = icmp sge i32 %call299, 0
  br i1 %cmp300, label %if.then.302, label %if.else.308

if.then.302:                                      ; preds = %lor.lhs.false.298, %if.else.293
  %180 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %call303 = call i32 @asm_insn_count(%struct.rtx_def* %180)
  %181 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call304 = call i32 @insn_default_length(%struct.rtx_def* %181)
  %mul305 = mul nsw i32 %call303, %call304
  %182 = load i32, i32* %uid, align 4
  %idxprom306 = sext i32 %182 to i64
  %183 = load i32*, i32** @insn_lengths, align 8
  %arrayidx307 = getelementptr inbounds i32, i32* %183, i64 %idxprom306
  store i32 %mul305, i32* %arrayidx307, align 4
  br label %if.end.410

if.else.308:                                      ; preds = %lor.lhs.false.298
  %184 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %185 = bitcast %struct.rtx_def* %184 to i32*
  %bf.load309 = load i32, i32* %185, align 8
  %bf.clear310 = and i32 %bf.load309, 65535
  %cmp311 = icmp eq i32 %bf.clear310, 24
  br i1 %cmp311, label %if.then.313, label %if.else.390

if.then.313:                                      ; preds = %if.else.308
  store i32 0, i32* %const_delay_slots, align 4
  store i32 0, i32* %i314, align 4
  br label %for.cond.315

for.cond.315:                                     ; preds = %for.inc.387, %if.then.313
  %186 = load i32, i32* %i314, align 4
  %187 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld316 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %187, i32 0, i32 1
  %arrayidx317 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld316, i32 0, i64 0
  %rtvec318 = bitcast %union.rtunion_def* %arrayidx317 to %struct.rtvec_def**
  %188 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec318, align 8
  %num_elem319 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %188, i32 0, i32 0
  %189 = load i32, i32* %num_elem319, align 4
  %cmp320 = icmp slt i32 %186, %189
  br i1 %cmp320, label %for.body.322, label %for.end.389

for.body.322:                                     ; preds = %for.cond.315
  %190 = load i32, i32* %i314, align 4
  %idxprom323 = sext i32 %190 to i64
  %191 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld324 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %191, i32 0, i32 1
  %arrayidx325 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld324, i32 0, i64 0
  %rtvec326 = bitcast %union.rtunion_def* %arrayidx325 to %struct.rtvec_def**
  %192 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec326, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %192, i32 0, i32 1
  %arrayidx327 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom323
  %193 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx327, align 8
  store %struct.rtx_def* %193, %struct.rtx_def** %inner_insn, align 8
  %194 = load %struct.rtx_def*, %struct.rtx_def** %inner_insn, align 8
  %fld328 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx329 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld328, i32 0, i64 0
  %rtint330 = bitcast %union.rtunion_def* %arrayidx329 to i32*
  %195 = load i32, i32* %rtint330, align 4
  store i32 %195, i32* %inner_uid, align 4
  %196 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %197 = bitcast %struct.rtx_def* %196 to i32*
  %bf.load331 = load i32, i32* %197, align 8
  %bf.clear332 = and i32 %bf.load331, 65535
  %cmp333 = icmp eq i32 %bf.clear332, 40
  br i1 %cmp333, label %if.then.348, label %lor.lhs.false.335

lor.lhs.false.335:                                ; preds = %for.body.322
  %198 = load i32, i32* %i314, align 4
  %idxprom336 = sext i32 %198 to i64
  %199 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld337 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %199, i32 0, i32 1
  %arrayidx338 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld337, i32 0, i64 0
  %rtvec339 = bitcast %union.rtunion_def* %arrayidx338 to %struct.rtvec_def**
  %200 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec339, align 8
  %elem340 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %200, i32 0, i32 1
  %arrayidx341 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem340, i32 0, i64 %idxprom336
  %201 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx341, align 8
  %fld342 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %arrayidx343 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld342, i32 0, i64 3
  %rtx344 = bitcast %union.rtunion_def* %arrayidx343 to %struct.rtx_def**
  %202 = load %struct.rtx_def*, %struct.rtx_def** %rtx344, align 8
  %call345 = call i32 @asm_noperands(%struct.rtx_def* %202)
  %cmp346 = icmp sge i32 %call345, 0
  br i1 %cmp346, label %if.then.348, label %if.else.355

if.then.348:                                      ; preds = %lor.lhs.false.335, %for.body.322
  %203 = load %struct.rtx_def*, %struct.rtx_def** %inner_insn, align 8
  %fld349 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %203, i32 0, i32 1
  %arrayidx350 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld349, i32 0, i64 3
  %rtx351 = bitcast %union.rtunion_def* %arrayidx350 to %struct.rtx_def**
  %204 = load %struct.rtx_def*, %struct.rtx_def** %rtx351, align 8
  %call352 = call i32 @asm_insn_count(%struct.rtx_def* %204)
  %205 = load %struct.rtx_def*, %struct.rtx_def** %inner_insn, align 8
  %call353 = call i32 @insn_default_length(%struct.rtx_def* %205)
  %mul354 = mul nsw i32 %call352, %call353
  store i32 %mul354, i32* %inner_length, align 4
  br label %if.end.357

if.else.355:                                      ; preds = %lor.lhs.false.335
  %206 = load %struct.rtx_def*, %struct.rtx_def** %inner_insn, align 8
  %call356 = call i32 @insn_default_length(%struct.rtx_def* %206)
  store i32 %call356, i32* %inner_length, align 4
  br label %if.end.357

if.end.357:                                       ; preds = %if.else.355, %if.then.348
  %207 = load i32, i32* %inner_length, align 4
  %208 = load i32, i32* %inner_uid, align 4
  %idxprom358 = sext i32 %208 to i64
  %209 = load i32*, i32** @insn_lengths, align 8
  %arrayidx359 = getelementptr inbounds i32, i32* %209, i64 %idxprom358
  store i32 %207, i32* %arrayidx359, align 4
  %210 = load i32, i32* %const_delay_slots, align 4
  %tobool360 = icmp ne i32 %210, 0
  br i1 %tobool360, label %if.then.361, label %if.else.380

if.then.361:                                      ; preds = %if.end.357
  %211 = load %struct.rtx_def*, %struct.rtx_def** %inner_insn, align 8
  %call362 = call i32 @insn_variable_length_p(%struct.rtx_def* %211)
  %conv363 = trunc i32 %call362 to i8
  %212 = load i32, i32* %inner_uid, align 4
  %idxprom364 = sext i32 %212 to i64
  %213 = load i8*, i8** %varying_length, align 8
  %arrayidx365 = getelementptr inbounds i8, i8* %213, i64 %idxprom364
  store i8 %conv363, i8* %arrayidx365, align 1
  %conv366 = sext i8 %conv363 to i32
  %cmp367 = icmp ne i32 %conv366, 0
  br i1 %cmp367, label %if.then.369, label %if.end.372

if.then.369:                                      ; preds = %if.then.361
  %214 = load i32, i32* %uid, align 4
  %idxprom370 = sext i32 %214 to i64
  %215 = load i8*, i8** %varying_length, align 8
  %arrayidx371 = getelementptr inbounds i8, i8* %215, i64 %idxprom370
  store i8 1, i8* %arrayidx371, align 1
  br label %if.end.372

if.end.372:                                       ; preds = %if.then.369, %if.then.361
  %216 = load i32, i32* @insn_current_address, align 4
  %217 = load i32, i32* %uid, align 4
  %idxprom373 = sext i32 %217 to i64
  %218 = load i32*, i32** @insn_lengths, align 8
  %arrayidx374 = getelementptr inbounds i32, i32* %218, i64 %idxprom373
  %219 = load i32, i32* %arrayidx374, align 4
  %add375 = add nsw i32 %216, %219
  %220 = load i32, i32* %inner_uid, align 4
  %idxprom376 = sext i32 %220 to i64
  %221 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %data377 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %221, i32 0, i32 4
  %i378 = bitcast %union.varray_data_tag* %data377 to [1 x i32]*
  %arrayidx379 = getelementptr inbounds [1 x i32], [1 x i32]* %i378, i32 0, i64 %idxprom376
  store i32 %add375, i32* %arrayidx379, align 4
  br label %if.end.383

if.else.380:                                      ; preds = %if.end.357
  %222 = load i32, i32* %inner_uid, align 4
  %idxprom381 = sext i32 %222 to i64
  %223 = load i8*, i8** %varying_length, align 8
  %arrayidx382 = getelementptr inbounds i8, i8* %223, i64 %idxprom381
  store i8 0, i8* %arrayidx382, align 1
  br label %if.end.383

if.end.383:                                       ; preds = %if.else.380, %if.end.372
  %224 = load i32, i32* %inner_length, align 4
  %225 = load i32, i32* %uid, align 4
  %idxprom384 = sext i32 %225 to i64
  %226 = load i32*, i32** @insn_lengths, align 8
  %arrayidx385 = getelementptr inbounds i32, i32* %226, i64 %idxprom384
  %227 = load i32, i32* %arrayidx385, align 4
  %add386 = add nsw i32 %227, %224
  store i32 %add386, i32* %arrayidx385, align 4
  br label %for.inc.387

for.inc.387:                                      ; preds = %if.end.383
  %228 = load i32, i32* %i314, align 4
  %inc388 = add nsw i32 %228, 1
  store i32 %inc388, i32* %i314, align 4
  br label %for.cond.315

for.end.389:                                      ; preds = %for.cond.315
  br label %if.end.409

if.else.390:                                      ; preds = %if.else.308
  %229 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %230 = bitcast %struct.rtx_def* %229 to i32*
  %bf.load391 = load i32, i32* %230, align 8
  %bf.clear392 = and i32 %bf.load391, 65535
  %cmp393 = icmp ne i32 %bf.clear392, 48
  br i1 %cmp393, label %land.lhs.true.395, label %if.end.408

land.lhs.true.395:                                ; preds = %if.else.390
  %231 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %232 = bitcast %struct.rtx_def* %231 to i32*
  %bf.load396 = load i32, i32* %232, align 8
  %bf.clear397 = and i32 %bf.load396, 65535
  %cmp398 = icmp ne i32 %bf.clear397, 49
  br i1 %cmp398, label %if.then.400, label %if.end.408

if.then.400:                                      ; preds = %land.lhs.true.395
  %233 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call401 = call i32 @insn_default_length(%struct.rtx_def* %233)
  %234 = load i32, i32* %uid, align 4
  %idxprom402 = sext i32 %234 to i64
  %235 = load i32*, i32** @insn_lengths, align 8
  %arrayidx403 = getelementptr inbounds i32, i32* %235, i64 %idxprom402
  store i32 %call401, i32* %arrayidx403, align 4
  %236 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call404 = call i32 @insn_variable_length_p(%struct.rtx_def* %236)
  %conv405 = trunc i32 %call404 to i8
  %237 = load i32, i32* %uid, align 4
  %idxprom406 = sext i32 %237 to i64
  %238 = load i8*, i8** %varying_length, align 8
  %arrayidx407 = getelementptr inbounds i8, i8* %238, i64 %idxprom406
  store i8 %conv405, i8* %arrayidx407, align 1
  br label %if.end.408

if.end.408:                                       ; preds = %if.then.400, %land.lhs.true.395, %if.else.390
  br label %if.end.409

if.end.409:                                       ; preds = %if.end.408, %for.end.389
  br label %if.end.410

if.end.410:                                       ; preds = %if.end.409, %if.then.302
  br label %if.end.411

if.end.411:                                       ; preds = %if.end.410, %if.end.292
  br label %for.inc.412

for.inc.412:                                      ; preds = %if.end.411, %if.then.256, %if.then.251
  %239 = load i32, i32* %uid, align 4
  %idxprom413 = sext i32 %239 to i64
  %240 = load i32*, i32** @insn_lengths, align 8
  %arrayidx414 = getelementptr inbounds i32, i32* %240, i64 %idxprom413
  %241 = load i32, i32* %arrayidx414, align 4
  %242 = load i32, i32* @insn_current_address, align 4
  %add415 = add nsw i32 %242, %241
  store i32 %add415, i32* @insn_current_address, align 4
  %243 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld416 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %243, i32 0, i32 1
  %arrayidx417 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld416, i32 0, i64 2
  %rtx418 = bitcast %union.rtunion_def* %arrayidx417 to %struct.rtx_def**
  %244 = load %struct.rtx_def*, %struct.rtx_def** %rtx418, align 8
  store %struct.rtx_def* %244, %struct.rtx_def** %insn, align 8
  br label %for.cond.200

for.end.419:                                      ; preds = %for.cond.200
  br label %while.cond

while.cond:                                       ; preds = %if.end.616, %for.end.419
  %245 = load i32, i32* %something_changed, align 4
  %tobool420 = icmp ne i32 %245, 0
  br i1 %tobool420, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %something_changed, align 4
  store i32 15, i32* @insn_current_align, align 4
  store i32 0, i32* @insn_current_address, align 4
  %246 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %246, %struct.rtx_def** %insn, align 8
  br label %for.cond.421

for.cond.421:                                     ; preds = %for.inc.609, %while.body
  %247 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp422 = icmp ne %struct.rtx_def* %247, null
  br i1 %cmp422, label %for.body.424, label %for.end.613

for.body.424:                                     ; preds = %for.cond.421
  %248 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld425 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %248, i32 0, i32 1
  %arrayidx426 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld425, i32 0, i64 0
  %rtint427 = bitcast %union.rtunion_def* %arrayidx426 to i32*
  %249 = load i32, i32* %rtint427, align 4
  store i32 %249, i32* %uid, align 4
  %250 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %251 = bitcast %struct.rtx_def* %250 to i32*
  %bf.load428 = load i32, i32* %251, align 8
  %bf.clear429 = and i32 %bf.load428, 65535
  %cmp430 = icmp eq i32 %bf.clear429, 36
  br i1 %cmp430, label %if.then.432, label %if.end.463

if.then.432:                                      ; preds = %for.body.424
  %252 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld434 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %252, i32 0, i32 1
  %arrayidx435 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld434, i32 0, i64 5
  %rtint436 = bitcast %union.rtunion_def* %arrayidx435 to i32*
  %253 = load i32, i32* %rtint436, align 4
  %254 = load i32, i32* @min_labelno, align 4
  %sub437 = sub nsw i32 %253, %254
  %idxprom438 = sext i32 %sub437 to i64
  %255 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx439 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %255, i64 %idxprom438
  %alignment440 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx439, i32 0, i32 0
  %256 = load i16, i16* %alignment440, align 2
  %conv441 = sext i16 %256 to i32
  store i32 %conv441, i32* %log433, align 4
  %257 = load i32, i32* %log433, align 4
  %258 = load i32, i32* @insn_current_align, align 4
  %cmp442 = icmp sgt i32 %257, %258
  br i1 %cmp442, label %if.then.444, label %if.else.455

if.then.444:                                      ; preds = %if.then.432
  %259 = load i32, i32* %log433, align 4
  %shl446 = shl i32 1, %259
  store i32 %shl446, i32* %align445, align 4
  %260 = load i32, i32* @insn_current_address, align 4
  %261 = load i32, i32* %align445, align 4
  %add448 = add nsw i32 %260, %261
  %sub449 = sub nsw i32 %add448, 1
  %262 = load i32, i32* %align445, align 4
  %sub450 = sub nsw i32 0, %262
  %and451 = and i32 %sub449, %sub450
  store i32 %and451, i32* %new_address447, align 4
  %263 = load i32, i32* %new_address447, align 4
  %264 = load i32, i32* @insn_current_address, align 4
  %sub452 = sub nsw i32 %263, %264
  %265 = load i32, i32* %uid, align 4
  %idxprom453 = sext i32 %265 to i64
  %266 = load i32*, i32** @insn_lengths, align 8
  %arrayidx454 = getelementptr inbounds i32, i32* %266, i64 %idxprom453
  store i32 %sub452, i32* %arrayidx454, align 4
  %267 = load i32, i32* %log433, align 4
  store i32 %267, i32* @insn_current_align, align 4
  %268 = load i32, i32* %new_address447, align 4
  store i32 %268, i32* @insn_current_address, align 4
  br label %if.end.458

if.else.455:                                      ; preds = %if.then.432
  %269 = load i32, i32* %uid, align 4
  %idxprom456 = sext i32 %269 to i64
  %270 = load i32*, i32** @insn_lengths, align 8
  %arrayidx457 = getelementptr inbounds i32, i32* %270, i64 %idxprom456
  store i32 0, i32* %arrayidx457, align 4
  br label %if.end.458

if.end.458:                                       ; preds = %if.else.455, %if.then.444
  %271 = load i32, i32* @insn_current_address, align 4
  %272 = load i32, i32* %uid, align 4
  %idxprom459 = sext i32 %272 to i64
  %273 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %data460 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %273, i32 0, i32 4
  %i461 = bitcast %union.varray_data_tag* %data460 to [1 x i32]*
  %arrayidx462 = getelementptr inbounds [1 x i32], [1 x i32]* %i461, i32 0, i64 %idxprom459
  store i32 %271, i32* %arrayidx462, align 4
  br label %for.inc.609

if.end.463:                                       ; preds = %for.body.424
  %274 = load i32, i32* @length_unit_log, align 4
  store i32 %274, i32* %length_align, align 4
  %275 = load i32, i32* %length_align, align 4
  %276 = load i32, i32* @insn_current_align, align 4
  %cmp464 = icmp slt i32 %275, %276
  br i1 %cmp464, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %if.end.463
  %277 = load i32, i32* %length_align, align 4
  store i32 %277, i32* @insn_current_align, align 4
  br label %if.end.467

if.end.467:                                       ; preds = %if.then.466, %if.end.463
  %278 = load i32, i32* %uid, align 4
  %idxprom468 = sext i32 %278 to i64
  %279 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %data469 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %279, i32 0, i32 4
  %i470 = bitcast %union.varray_data_tag* %data469 to [1 x i32]*
  %arrayidx471 = getelementptr inbounds [1 x i32], [1 x i32]* %i470, i32 0, i64 %idxprom468
  %280 = load i32, i32* %arrayidx471, align 4
  store i32 %280, i32* @insn_last_address, align 4
  %281 = load i32, i32* @insn_current_address, align 4
  %282 = load i32, i32* %uid, align 4
  %idxprom472 = sext i32 %282 to i64
  %283 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %data473 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %283, i32 0, i32 4
  %i474 = bitcast %union.varray_data_tag* %data473 to [1 x i32]*
  %arrayidx475 = getelementptr inbounds [1 x i32], [1 x i32]* %i474, i32 0, i64 %idxprom472
  store i32 %281, i32* %arrayidx475, align 4
  %284 = load i32, i32* %uid, align 4
  %idxprom476 = sext i32 %284 to i64
  %285 = load i8*, i8** %varying_length, align 8
  %arrayidx477 = getelementptr inbounds i8, i8* %285, i64 %idxprom476
  %286 = load i8, i8* %arrayidx477, align 1
  %tobool478 = icmp ne i8 %286, 0
  br i1 %tobool478, label %if.end.531, label %if.then.479

if.then.479:                                      ; preds = %if.end.467
  %287 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %288 = bitcast %struct.rtx_def* %287 to i32*
  %bf.load480 = load i32, i32* %288, align 8
  %bf.clear481 = and i32 %bf.load480, 65535
  %cmp482 = icmp eq i32 %bf.clear481, 32
  br i1 %cmp482, label %land.lhs.true.484, label %if.else.526

land.lhs.true.484:                                ; preds = %if.then.479
  %289 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld485 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %289, i32 0, i32 1
  %arrayidx486 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld485, i32 0, i64 3
  %rtx487 = bitcast %union.rtunion_def* %arrayidx486 to %struct.rtx_def**
  %290 = load %struct.rtx_def*, %struct.rtx_def** %rtx487, align 8
  %291 = bitcast %struct.rtx_def* %290 to i32*
  %bf.load488 = load i32, i32* %291, align 8
  %bf.clear489 = and i32 %bf.load488, 65535
  %cmp490 = icmp eq i32 %bf.clear489, 24
  br i1 %cmp490, label %if.then.492, label %if.else.526

if.then.492:                                      ; preds = %land.lhs.true.484
  %292 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld494 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %292, i32 0, i32 1
  %arrayidx495 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld494, i32 0, i64 3
  %rtx496 = bitcast %union.rtunion_def* %arrayidx495 to %struct.rtx_def**
  %293 = load %struct.rtx_def*, %struct.rtx_def** %rtx496, align 8
  store %struct.rtx_def* %293, %struct.rtx_def** %body, align 8
  store i32 0, i32* %i493, align 4
  br label %for.cond.497

for.cond.497:                                     ; preds = %for.inc.523, %if.then.492
  %294 = load i32, i32* %i493, align 4
  %295 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld498 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %295, i32 0, i32 1
  %arrayidx499 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld498, i32 0, i64 0
  %rtvec500 = bitcast %union.rtunion_def* %arrayidx499 to %struct.rtvec_def**
  %296 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec500, align 8
  %num_elem501 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %296, i32 0, i32 0
  %297 = load i32, i32* %num_elem501, align 4
  %cmp502 = icmp slt i32 %294, %297
  br i1 %cmp502, label %for.body.504, label %for.end.525

for.body.504:                                     ; preds = %for.cond.497
  %298 = load i32, i32* %i493, align 4
  %idxprom506 = sext i32 %298 to i64
  %299 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld507 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %299, i32 0, i32 1
  %arrayidx508 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld507, i32 0, i64 0
  %rtvec509 = bitcast %union.rtunion_def* %arrayidx508 to %struct.rtvec_def**
  %300 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec509, align 8
  %elem510 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %300, i32 0, i32 1
  %arrayidx511 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem510, i32 0, i64 %idxprom506
  %301 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx511, align 8
  store %struct.rtx_def* %301, %struct.rtx_def** %inner_insn505, align 8
  %302 = load %struct.rtx_def*, %struct.rtx_def** %inner_insn505, align 8
  %fld513 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %302, i32 0, i32 1
  %arrayidx514 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld513, i32 0, i64 0
  %rtint515 = bitcast %union.rtunion_def* %arrayidx514 to i32*
  %303 = load i32, i32* %rtint515, align 4
  store i32 %303, i32* %inner_uid512, align 4
  %304 = load i32, i32* @insn_current_address, align 4
  %305 = load i32, i32* %inner_uid512, align 4
  %idxprom516 = sext i32 %305 to i64
  %306 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %data517 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %306, i32 0, i32 4
  %i518 = bitcast %union.varray_data_tag* %data517 to [1 x i32]*
  %arrayidx519 = getelementptr inbounds [1 x i32], [1 x i32]* %i518, i32 0, i64 %idxprom516
  store i32 %304, i32* %arrayidx519, align 4
  %307 = load i32, i32* %inner_uid512, align 4
  %idxprom520 = sext i32 %307 to i64
  %308 = load i32*, i32** @insn_lengths, align 8
  %arrayidx521 = getelementptr inbounds i32, i32* %308, i64 %idxprom520
  %309 = load i32, i32* %arrayidx521, align 4
  %310 = load i32, i32* @insn_current_address, align 4
  %add522 = add nsw i32 %310, %309
  store i32 %add522, i32* @insn_current_address, align 4
  br label %for.inc.523

for.inc.523:                                      ; preds = %for.body.504
  %311 = load i32, i32* %i493, align 4
  %inc524 = add nsw i32 %311, 1
  store i32 %inc524, i32* %i493, align 4
  br label %for.cond.497

for.end.525:                                      ; preds = %for.cond.497
  br label %if.end.530

if.else.526:                                      ; preds = %land.lhs.true.484, %if.then.479
  %312 = load i32, i32* %uid, align 4
  %idxprom527 = sext i32 %312 to i64
  %313 = load i32*, i32** @insn_lengths, align 8
  %arrayidx528 = getelementptr inbounds i32, i32* %313, i64 %idxprom527
  %314 = load i32, i32* %arrayidx528, align 4
  %315 = load i32, i32* @insn_current_address, align 4
  %add529 = add nsw i32 %315, %314
  store i32 %add529, i32* @insn_current_address, align 4
  br label %if.end.530

if.end.530:                                       ; preds = %if.else.526, %for.end.525
  br label %for.inc.609

if.end.531:                                       ; preds = %if.end.467
  %316 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %317 = bitcast %struct.rtx_def* %316 to i32*
  %bf.load532 = load i32, i32* %317, align 8
  %bf.clear533 = and i32 %bf.load532, 65535
  %cmp534 = icmp eq i32 %bf.clear533, 32
  br i1 %cmp534, label %land.lhs.true.536, label %if.else.597

land.lhs.true.536:                                ; preds = %if.end.531
  %318 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld537 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %318, i32 0, i32 1
  %arrayidx538 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld537, i32 0, i64 3
  %rtx539 = bitcast %union.rtunion_def* %arrayidx538 to %struct.rtx_def**
  %319 = load %struct.rtx_def*, %struct.rtx_def** %rtx539, align 8
  %320 = bitcast %struct.rtx_def* %319 to i32*
  %bf.load540 = load i32, i32* %320, align 8
  %bf.clear541 = and i32 %bf.load540, 65535
  %cmp542 = icmp eq i32 %bf.clear541, 24
  br i1 %cmp542, label %if.then.544, label %if.else.597

if.then.544:                                      ; preds = %land.lhs.true.536
  %321 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld546 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %321, i32 0, i32 1
  %arrayidx547 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld546, i32 0, i64 3
  %rtx548 = bitcast %union.rtunion_def* %arrayidx547 to %struct.rtx_def**
  %322 = load %struct.rtx_def*, %struct.rtx_def** %rtx548, align 8
  store %struct.rtx_def* %322, %struct.rtx_def** %body, align 8
  store i32 0, i32* %new_length, align 4
  store i32 0, i32* %i545, align 4
  br label %for.cond.549

for.cond.549:                                     ; preds = %for.inc.594, %if.then.544
  %323 = load i32, i32* %i545, align 4
  %324 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld550 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %324, i32 0, i32 1
  %arrayidx551 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld550, i32 0, i64 0
  %rtvec552 = bitcast %union.rtunion_def* %arrayidx551 to %struct.rtvec_def**
  %325 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec552, align 8
  %num_elem553 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %325, i32 0, i32 0
  %326 = load i32, i32* %num_elem553, align 4
  %cmp554 = icmp slt i32 %323, %326
  br i1 %cmp554, label %for.body.556, label %for.end.596

for.body.556:                                     ; preds = %for.cond.549
  %327 = load i32, i32* %i545, align 4
  %idxprom558 = sext i32 %327 to i64
  %328 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld559 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %328, i32 0, i32 1
  %arrayidx560 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld559, i32 0, i64 0
  %rtvec561 = bitcast %union.rtunion_def* %arrayidx560 to %struct.rtvec_def**
  %329 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec561, align 8
  %elem562 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %329, i32 0, i32 1
  %arrayidx563 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem562, i32 0, i64 %idxprom558
  %330 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx563, align 8
  store %struct.rtx_def* %330, %struct.rtx_def** %inner_insn557, align 8
  %331 = load %struct.rtx_def*, %struct.rtx_def** %inner_insn557, align 8
  %fld565 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %331, i32 0, i32 1
  %arrayidx566 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld565, i32 0, i64 0
  %rtint567 = bitcast %union.rtunion_def* %arrayidx566 to i32*
  %332 = load i32, i32* %rtint567, align 4
  store i32 %332, i32* %inner_uid564, align 4
  %333 = load i32, i32* @insn_current_address, align 4
  %334 = load i32, i32* %inner_uid564, align 4
  %idxprom569 = sext i32 %334 to i64
  %335 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %data570 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %335, i32 0, i32 4
  %i571 = bitcast %union.varray_data_tag* %data570 to [1 x i32]*
  %arrayidx572 = getelementptr inbounds [1 x i32], [1 x i32]* %i571, i32 0, i64 %idxprom569
  store i32 %333, i32* %arrayidx572, align 4
  %336 = load i32, i32* %inner_uid564, align 4
  %idxprom573 = sext i32 %336 to i64
  %337 = load i8*, i8** %varying_length, align 8
  %arrayidx574 = getelementptr inbounds i8, i8* %337, i64 %idxprom573
  %338 = load i8, i8* %arrayidx574, align 1
  %tobool575 = icmp ne i8 %338, 0
  br i1 %tobool575, label %if.else.579, label %if.then.576

if.then.576:                                      ; preds = %for.body.556
  %339 = load i32, i32* %inner_uid564, align 4
  %idxprom577 = sext i32 %339 to i64
  %340 = load i32*, i32** @insn_lengths, align 8
  %arrayidx578 = getelementptr inbounds i32, i32* %340, i64 %idxprom577
  %341 = load i32, i32* %arrayidx578, align 4
  store i32 %341, i32* %inner_length568, align 4
  br label %if.end.581

if.else.579:                                      ; preds = %for.body.556
  %342 = load %struct.rtx_def*, %struct.rtx_def** %inner_insn557, align 8
  %call580 = call i32 @insn_current_length(%struct.rtx_def* %342)
  store i32 %call580, i32* %inner_length568, align 4
  br label %if.end.581

if.end.581:                                       ; preds = %if.else.579, %if.then.576
  %343 = load i32, i32* %inner_length568, align 4
  %344 = load i32, i32* %inner_uid564, align 4
  %idxprom582 = sext i32 %344 to i64
  %345 = load i32*, i32** @insn_lengths, align 8
  %arrayidx583 = getelementptr inbounds i32, i32* %345, i64 %idxprom582
  %346 = load i32, i32* %arrayidx583, align 4
  %cmp584 = icmp ne i32 %343, %346
  br i1 %cmp584, label %if.then.586, label %if.end.589

if.then.586:                                      ; preds = %if.end.581
  %347 = load i32, i32* %inner_length568, align 4
  %348 = load i32, i32* %inner_uid564, align 4
  %idxprom587 = sext i32 %348 to i64
  %349 = load i32*, i32** @insn_lengths, align 8
  %arrayidx588 = getelementptr inbounds i32, i32* %349, i64 %idxprom587
  store i32 %347, i32* %arrayidx588, align 4
  store i32 1, i32* %something_changed, align 4
  br label %if.end.589

if.end.589:                                       ; preds = %if.then.586, %if.end.581
  %350 = load i32, i32* %inner_uid564, align 4
  %idxprom590 = sext i32 %350 to i64
  %351 = load i32*, i32** @insn_lengths, align 8
  %arrayidx591 = getelementptr inbounds i32, i32* %351, i64 %idxprom590
  %352 = load i32, i32* %arrayidx591, align 4
  %353 = load i32, i32* @insn_current_address, align 4
  %add592 = add nsw i32 %353, %352
  store i32 %add592, i32* @insn_current_address, align 4
  %354 = load i32, i32* %inner_length568, align 4
  %355 = load i32, i32* %new_length, align 4
  %add593 = add nsw i32 %355, %354
  store i32 %add593, i32* %new_length, align 4
  br label %for.inc.594

for.inc.594:                                      ; preds = %if.end.589
  %356 = load i32, i32* %i545, align 4
  %inc595 = add nsw i32 %356, 1
  store i32 %inc595, i32* %i545, align 4
  br label %for.cond.549

for.end.596:                                      ; preds = %for.cond.549
  br label %if.end.600

if.else.597:                                      ; preds = %land.lhs.true.536, %if.end.531
  %357 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call598 = call i32 @insn_current_length(%struct.rtx_def* %357)
  store i32 %call598, i32* %new_length, align 4
  %358 = load i32, i32* %new_length, align 4
  %359 = load i32, i32* @insn_current_address, align 4
  %add599 = add nsw i32 %359, %358
  store i32 %add599, i32* @insn_current_address, align 4
  br label %if.end.600

if.end.600:                                       ; preds = %if.else.597, %for.end.596
  %360 = load i32, i32* %new_length, align 4
  %361 = load i32, i32* %uid, align 4
  %idxprom601 = sext i32 %361 to i64
  %362 = load i32*, i32** @insn_lengths, align 8
  %arrayidx602 = getelementptr inbounds i32, i32* %362, i64 %idxprom601
  %363 = load i32, i32* %arrayidx602, align 4
  %cmp603 = icmp ne i32 %360, %363
  br i1 %cmp603, label %if.then.605, label %if.end.608

if.then.605:                                      ; preds = %if.end.600
  %364 = load i32, i32* %new_length, align 4
  %365 = load i32, i32* %uid, align 4
  %idxprom606 = sext i32 %365 to i64
  %366 = load i32*, i32** @insn_lengths, align 8
  %arrayidx607 = getelementptr inbounds i32, i32* %366, i64 %idxprom606
  store i32 %364, i32* %arrayidx607, align 4
  store i32 1, i32* %something_changed, align 4
  br label %if.end.608

if.end.608:                                       ; preds = %if.then.605, %if.end.600
  br label %for.inc.609

for.inc.609:                                      ; preds = %if.end.608, %if.end.530, %if.end.458
  %367 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld610 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %367, i32 0, i32 1
  %arrayidx611 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld610, i32 0, i64 2
  %rtx612 = bitcast %union.rtunion_def* %arrayidx611 to %struct.rtx_def**
  %368 = load %struct.rtx_def*, %struct.rtx_def** %rtx612, align 8
  store %struct.rtx_def* %368, %struct.rtx_def** %insn, align 8
  br label %for.cond.421

for.end.613:                                      ; preds = %for.cond.421
  %369 = load i32, i32* @optimize, align 4
  %tobool614 = icmp ne i32 %369, 0
  br i1 %tobool614, label %if.end.616, label %if.then.615

if.then.615:                                      ; preds = %for.end.613
  br label %while.end

if.end.616:                                       ; preds = %for.end.613
  br label %while.cond

while.end:                                        ; preds = %if.then.615, %while.cond
  %370 = load i8*, i8** %varying_length, align 8
  call void @free(i8* %370) #5
  ret void
}

declare i32 @get_max_uid() #1

declare noalias i8* @xmalloc(i64) #1

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare %struct.rtx_def* @get_insns() #1

; Function Attrs: nounwind uwtable
define internal i32 @final_addr_vec_align(%struct.rtx_def* %addr_vec) #0 {
entry:
  %addr_vec.addr = alloca %struct.rtx_def*, align 8
  %align = alloca i32, align 4
  store %struct.rtx_def* %addr_vec, %struct.rtx_def** %addr_vec.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %addr_vec.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx1 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx1, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %align, align 4
  %4 = load i32, i32* %align, align 4
  %cmp = icmp sgt i32 %4, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 16, i32* %align, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %align, align 4
  %conv3 = sext i32 %5 to i64
  %call = call i32 @exact_log2_wide(i64 %conv3)
  ret i32 %call
}

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

declare %struct.rtx_def* @get_last_insn() #1

declare i32 @insn_variable_length_p(%struct.rtx_def*) #1

declare i32 @insn_current_length(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @final_start_function(%struct.rtx_def* %first, %struct._IO_FILE* %file, i32 %optimize) #0 {
entry:
  %first.addr = alloca %struct.rtx_def*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %optimize.addr = alloca i32, align 4
  store %struct.rtx_def* %first, %struct.rtx_def** %first.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %optimize, i32* %optimize.addr, align 4
  store i32 0, i32* @block_depth, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @this_is_asm_operands, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %cmp = icmp ne i32 %1, -99
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  call void @notice_source_line(%struct.rtx_def* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @last_linenum, align 4
  store i32 %3, i32* @high_function_linenum, align 4
  store i32 %3, i32* @high_block_linenum, align 4
  %4 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %begin_prologue = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %4, i32 0, i32 10
  %5 = load void (i32, i8*)*, void (i32, i8*)** %begin_prologue, align 8
  %6 = load i32, i32* @last_linenum, align 4
  %7 = load i8*, i8** @last_filename, align 8
  call void %5(i32 %6, i8* %7)
  %8 = load i32, i32* @write_symbols, align 4
  %cmp1 = icmp ne i32 %8, 4
  br i1 %cmp1, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %9 = load i32, i32* @write_symbols, align 4
  %cmp2 = icmp ne i32 %9, 7
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  call void @dwarf2out_begin_prologue(i32 0, i8* null)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %if.end
  %call = call i32 @dwarf2out_do_frame()
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.4
  call void @dwarf2out_frame_debug(%struct.rtx_def* null)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.5, %if.end.4
  %10 = load i32, i32* @write_symbols, align 4
  %tobool7 = icmp ne i32 %10, 0
  br i1 %tobool7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  call void @remove_unnecessary_notes()
  call void @reorder_blocks()
  %11 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @number_blocks(%union.tree_node* %11)
  %12 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  %decl = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 12
  %13 = load %union.tree_node*, %union.tree_node** %initial, align 8
  %common = bitcast %union.tree_node* %13 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %asm_written_flag, align 8
  %bf.clear = and i32 %bf.load, -16385
  %bf.set = or i32 %bf.clear, 16384
  store i32 %bf.set, i32* %asm_written_flag, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %14 = load void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*, i64)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 6), align 8
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call10 = call i64 @get_frame_size()
  call void %14(%struct._IO_FILE* %15, i64 %call10)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @notice_source_line(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %filename = alloca i8*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %1 = load i8*, i8** %rtstr, align 8
  store i8* %1, i8** %filename, align 8
  %2 = load i8*, i8** %filename, align 8
  store i8* %2, i8** @last_filename, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %4 = load i32, i32* %rtint, align 4
  store i32 %4, i32* @last_linenum, align 4
  %5 = load i32, i32* @last_linenum, align 4
  %6 = load i32, i32* @high_block_linenum, align 4
  %cmp = icmp sgt i32 %5, %6
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %7 = load i32, i32* @last_linenum, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* @high_block_linenum, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %7, %cond.true ], [ %8, %cond.false ]
  store i32 %cond, i32* @high_block_linenum, align 4
  %9 = load i32, i32* @last_linenum, align 4
  %10 = load i32, i32* @high_function_linenum, align 4
  %cmp3 = icmp sgt i32 %9, %10
  br i1 %cmp3, label %cond.true.4, label %cond.false.5

cond.true.4:                                      ; preds = %cond.end
  %11 = load i32, i32* @last_linenum, align 4
  br label %cond.end.6

cond.false.5:                                     ; preds = %cond.end
  %12 = load i32, i32* @high_function_linenum, align 4
  br label %cond.end.6

cond.end.6:                                       ; preds = %cond.false.5, %cond.true.4
  %cond7 = phi i32 [ %11, %cond.true.4 ], [ %12, %cond.false.5 ]
  store i32 %cond7, i32* @high_function_linenum, align 4
  ret void
}

declare void @dwarf2out_begin_prologue(i32, i8*) #1

declare i32 @dwarf2out_do_frame() #1

declare void @dwarf2out_frame_debug(%struct.rtx_def*) #1

declare void @remove_unnecessary_notes() #1

declare void @reorder_blocks() #1

declare void @number_blocks(%union.tree_node*) #1

declare i64 @get_frame_size() #1

; Function Attrs: nounwind uwtable
define void @final_end_function() #0 {
entry:
  call void @app_disable()
  %0 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %end_function = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %0, i32 0, i32 14
  %1 = load void (i32)*, void (i32)** %end_function, align 8
  %2 = load i32, i32* @high_function_linenum, align 4
  call void %1(i32 %2)
  %3 = load void (%struct._IO_FILE*, i64)*, void (%struct._IO_FILE*, i64)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 9), align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i64 @get_frame_size()
  call void %3(%struct._IO_FILE* %4, i64 %call)
  %5 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %end_epilogue = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %5, i32 0, i32 12
  %6 = load void ()*, void ()** %end_epilogue, align 8
  call void %6()
  %7 = load i32, i32* @write_symbols, align 4
  %cmp = icmp ne i32 %7, 4
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, i32* @write_symbols, align 4
  %cmp1 = icmp ne i32 %8, 7
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %call3 = call i32 @dwarf2out_do_frame()
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.2
  call void @dwarf2out_end_epilogue()
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.2, %land.lhs.true, %entry
  ret void
}

declare void @dwarf2out_end_epilogue() #1

; Function Attrs: nounwind uwtable
define void @final(%struct.rtx_def* %first, %struct._IO_FILE* %file, i32 %optimize, i32 %prescan) #0 {
entry:
  %first.addr = alloca %struct.rtx_def*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %optimize.addr = alloca i32, align 4
  %prescan.addr = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %max_line = alloca i32, align 4
  %max_uid = alloca i32, align 4
  store %struct.rtx_def* %first, %struct.rtx_def** %first.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %optimize, i32* %optimize.addr, align 4
  store i32 %prescan, i32* %prescan.addr, align 4
  store i32 0, i32* %max_line, align 4
  store i32 0, i32* %max_uid, align 4
  store %struct.rtx_def* null, %struct.rtx_def** @last_ignored_compare, align 8
  store i32 1, i32* @new_block, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtint, align 4
  %6 = load i32, i32* %max_line, align 4
  %cmp1 = icmp sgt i32 %5, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 4
  %rtint4 = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %8 = load i32, i32* %rtint4, align 4
  store i32 %8, i32* %max_line, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %max_line, align 4
  %add = add nsw i32 %11, 1
  %conv = sext i32 %add to i64
  %call = call noalias i8* @xcalloc(i64 %conv, i64 1)
  store i8* %call, i8** @line_note_exists, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %insn, align 8
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.36, %for.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool8 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool8, label %for.body.9, label %for.end.40

for.body.9:                                       ; preds = %for.cond.7
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtint12 = bitcast %union.rtunion_def* %arrayidx11 to i32*
  %15 = load i32, i32* %rtint12, align 4
  %16 = load i32, i32* %max_uid, align 4
  %cmp13 = icmp sgt i32 %15, %16
  br i1 %cmp13, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %for.body.9
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtint18 = bitcast %union.rtunion_def* %arrayidx17 to i32*
  %18 = load i32, i32* %rtint18, align 4
  store i32 %18, i32* %max_uid, align 4
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %for.body.9
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load20 = load i32, i32* %20, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 37
  br i1 %cmp22, label %land.lhs.true.24, label %if.end.35

land.lhs.true.24:                                 ; preds = %if.end.19
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 4
  %rtint27 = bitcast %union.rtunion_def* %arrayidx26 to i32*
  %22 = load i32, i32* %rtint27, align 4
  %cmp28 = icmp sgt i32 %22, 0
  br i1 %cmp28, label %if.then.30, label %if.end.35

if.then.30:                                       ; preds = %land.lhs.true.24
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 4
  %rtint33 = bitcast %union.rtunion_def* %arrayidx32 to i32*
  %24 = load i32, i32* %rtint33, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load i8*, i8** @line_note_exists, align 8
  %arrayidx34 = getelementptr inbounds i8, i8* %25, i64 %idxprom
  store i8 1, i8* %arrayidx34, align 1
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.30, %land.lhs.true.24, %if.end.19
  br label %for.inc.36

for.inc.36:                                       ; preds = %if.end.35
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 2
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %insn, align 8
  br label %for.cond.7

for.end.40:                                       ; preds = %for.cond.7
  call void @init_recog()
  %28 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 2
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %insn, align 8
  br label %for.cond.44

for.cond.44:                                      ; preds = %if.end.59, %for.end.40
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool45 = icmp ne %struct.rtx_def* %30, null
  br i1 %tobool45, label %for.body.46, label %for.end.61

for.body.46:                                      ; preds = %for.cond.44
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtint49 = bitcast %union.rtunion_def* %arrayidx48 to i32*
  %32 = load i32, i32* %rtint49, align 4
  %conv50 = zext i32 %32 to i64
  %33 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %33, i32 0, i32 0
  %34 = load i64, i64* %num_elements, align 8
  %cmp51 = icmp uge i64 %conv50, %34
  br i1 %cmp51, label %if.then.53, label %if.else

if.then.53:                                       ; preds = %for.body.46
  store i32 -1, i32* @insn_current_address, align 4
  br label %if.end.59

if.else:                                          ; preds = %for.body.46
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtint56 = bitcast %union.rtunion_def* %arrayidx55 to i32*
  %36 = load i32, i32* %rtint56, align 4
  %idxprom57 = sext i32 %36 to i64
  %37 = load %struct.varray_head_tag*, %struct.varray_head_tag** @insn_addresses_, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %37, i32 0, i32 4
  %i = bitcast %union.varray_data_tag* %data to [1 x i32]*
  %arrayidx58 = getelementptr inbounds [1 x i32], [1 x i32]* %i, i32 0, i64 %idxprom57
  %38 = load i32, i32* %arrayidx58, align 4
  store i32 %38, i32* @insn_current_address, align 4
  br label %if.end.59

if.end.59:                                        ; preds = %if.else, %if.then.53
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %41 = load i32, i32* %optimize.addr, align 4
  %42 = load i32, i32* %prescan.addr, align 4
  %call60 = call %struct.rtx_def* @final_scan_insn(%struct.rtx_def* %39, %struct._IO_FILE* %40, i32 %41, i32 %42, i32 0)
  store %struct.rtx_def* %call60, %struct.rtx_def** %insn, align 8
  br label %for.cond.44

for.end.61:                                       ; preds = %for.cond.44
  %43 = load i8*, i8** @line_note_exists, align 8
  call void @free(i8* %43) #5
  store i8* null, i8** @line_note_exists, align 8
  ret void
}

declare void @init_recog() #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @final_scan_insn(%struct.rtx_def* %insn, %struct._IO_FILE* %file, i32 %optimize, i32 %prescan, i32 %nopeepholes) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %file.addr = alloca %struct._IO_FILE*, align 8
  %optimize.addr = alloca i32, align 4
  %prescan.addr = alloca i32, align 4
  %nopeepholes.addr = alloca i32, align 4
  %n = alloca i32, align 4
  %n65 = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  %note_after = alloca i32, align 4
  %num = alloca i32, align 4
  %align = alloca i32, align 4
  %max_skip = alloca i32, align 4
  %nextbody = alloca %struct.rtx_def*, align 8
  %log_align = alloca i32, align 4
  %body = alloca %struct.rtx_def*, align 8
  %insn_code_number = alloca i32, align 4
  %template = alloca i8*, align 8
  %note300 = alloca %struct.rtx_def*, align 8
  %vlen = alloca i32, align 4
  %idx = alloca i32, align 4
  %string = alloca i8*, align 8
  %noperands = alloca i32, align 4
  %ops = alloca %struct.rtx_def**, align 8
  %string412 = alloca i8*, align 8
  %i = alloca i32, align 4
  %next = alloca %struct.rtx_def*, align 8
  %insn466 = alloca %struct.rtx_def*, align 8
  %next473 = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %new = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i32 %optimize, i32* %optimize.addr, align 4
  store i32 %prescan, i32* %prescan.addr, align 4
  store i32 %nopeepholes, i32* %nopeepholes.addr, align 4
  %0 = load i32, i32* @insn_counter, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @insn_counter, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load1 = load i32, i32* %6, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  switch i32 %bf.clear2, label %sw.default.296 [
    i32 37, label %sw.bb
    i32 35, label %sw.bb.162
    i32 36, label %sw.bb.167
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load i32, i32* %prescan.addr, align 4
  %cmp = icmp sgt i32 %7, 0
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %sw.bb
  br label %sw.epilog.605

if.end.4:                                         ; preds = %sw.bb
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %9 = load i32, i32* %rtint, align 4
  switch i32 %9, label %sw.default [
    i32 -99, label %sw.bb.7
    i32 -96, label %sw.bb.7
    i32 -95, label %sw.bb.7
    i32 -92, label %sw.bb.7
    i32 -94, label %sw.bb.7
    i32 -93, label %sw.bb.7
    i32 -91, label %sw.bb.7
    i32 -84, label %sw.bb.7
    i32 -83, label %sw.bb.7
    i32 -82, label %sw.bb.7
    i32 -81, label %sw.bb.7
    i32 -79, label %sw.bb.7
    i32 -80, label %sw.bb.8
    i32 -86, label %sw.bb.14
    i32 -85, label %sw.bb.19
    i32 -90, label %sw.bb.26
    i32 -89, label %sw.bb.27
    i32 -87, label %sw.bb.28
    i32 -98, label %sw.bb.29
    i32 -97, label %sw.bb.52
    i32 -88, label %sw.bb.77
    i32 0, label %sw.bb.84
  ]

sw.bb.7:                                          ; preds = %if.end.4, %if.end.4, %if.end.4, %if.end.4, %if.end.4, %if.end.4, %if.end.4, %if.end.4, %if.end.4, %if.end.4, %if.end.4, %if.end.4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end.4
  %10 = load i32, i32* @flag_debug_asm, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %sw.bb.8
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %bb = bitcast %union.rtunion_def* %arrayidx12 to %struct.basic_block_def**
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %13, i32 0, i32 11
  %14 = load i32, i32* %index, align 4
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 %14)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %sw.bb.8
  br label %sw.epilog

sw.bb.14:                                         ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %sw.bb.14
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtint17 = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %17 = load i32, i32* %rtint17, align 4
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i32 %17)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %sw.epilog

sw.bb.19:                                         ; preds = %if.end.4
  br label %do.body.20

do.body.20:                                       ; preds = %sw.bb.19
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 3
  %rtint23 = bitcast %union.rtunion_def* %arrayidx22 to i32*
  %20 = load i32, i32* %rtint23, align 4
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i32 %20)
  br label %do.end.25

do.end.25:                                        ; preds = %do.body.20
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end.4
  %21 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 7), align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void %21(%struct._IO_FILE* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @profile_after_prologue(%struct._IO_FILE* %23)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end.4
  %24 = load void (%struct._IO_FILE*)*, void (%struct._IO_FILE*)** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 8), align 8
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void %24(%struct._IO_FILE* %25)
  br label %sw.epilog

sw.bb.28:                                         ; preds = %if.end.4
  call void @app_disable()
  %26 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %end_prologue = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %26, i32 0, i32 11
  %27 = load void (i32)*, void (i32)** %end_prologue, align 8
  %28 = load i32, i32* @last_linenum, align 4
  call void %27(i32 %28)
  br label %sw.epilog

sw.bb.29:                                         ; preds = %if.end.4
  %29 = load i32, i32* @debug_info_level, align 4
  %cmp30 = icmp eq i32 %29, 2
  br i1 %cmp30, label %if.then.40, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.29
  %30 = load i32, i32* @debug_info_level, align 4
  %cmp31 = icmp eq i32 %30, 3
  br i1 %cmp31, label %if.then.40, label %lor.lhs.false.32

lor.lhs.false.32:                                 ; preds = %lor.lhs.false
  %31 = load i32, i32* @write_symbols, align 4
  %cmp33 = icmp eq i32 %31, 3
  br i1 %cmp33, label %if.then.40, label %lor.lhs.false.34

lor.lhs.false.34:                                 ; preds = %lor.lhs.false.32
  %32 = load i32, i32* @write_symbols, align 4
  %cmp35 = icmp eq i32 %32, 4
  br i1 %cmp35, label %if.then.40, label %lor.lhs.false.36

lor.lhs.false.36:                                 ; preds = %lor.lhs.false.34
  %33 = load i32, i32* @write_symbols, align 4
  %cmp37 = icmp eq i32 %33, 7
  br i1 %cmp37, label %if.then.40, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.36
  %34 = load i32, i32* @write_symbols, align 4
  %cmp39 = icmp eq i32 %34, 6
  br i1 %cmp39, label %if.then.40, label %if.end.51

if.then.40:                                       ; preds = %lor.lhs.false.38, %lor.lhs.false.36, %lor.lhs.false.34, %lor.lhs.false.32, %lor.lhs.false, %sw.bb.29
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rttree = bitcast %union.rtunion_def* %arrayidx42 to %union.tree_node**
  %36 = load %union.tree_node*, %union.tree_node** %rttree, align 8
  %block = bitcast %union.tree_node* %36 to %struct.tree_block*
  %block_num = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 1
  %bf.load43 = load i32, i32* %block_num, align 8
  %bf.lshr44 = lshr i32 %bf.load43, 2
  store i32 %bf.lshr44, i32* %n, align 4
  call void @app_disable()
  %37 = load i32, i32* @block_depth, align 4
  %inc45 = add nsw i32 %37, 1
  store i32 %inc45, i32* @block_depth, align 4
  %38 = load i32, i32* @last_linenum, align 4
  store i32 %38, i32* @high_block_linenum, align 4
  %39 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %begin_block = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %39, i32 0, i32 6
  %40 = load void (i32, i32)*, void (i32, i32)** %begin_block, align 8
  %41 = load i32, i32* @last_linenum, align 4
  %42 = load i32, i32* %n, align 4
  call void %40(i32 %41, i32 %42)
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 3
  %rttree48 = bitcast %union.rtunion_def* %arrayidx47 to %union.tree_node**
  %44 = load %union.tree_node*, %union.tree_node** %rttree48, align 8
  %common = bitcast %union.tree_node* %44 to %struct.tree_common*
  %asm_written_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load49 = load i32, i32* %asm_written_flag, align 8
  %bf.clear50 = and i32 %bf.load49, -16385
  %bf.set = or i32 %bf.clear50, 16384
  store i32 %bf.set, i32* %asm_written_flag, align 8
  br label %if.end.51

if.end.51:                                        ; preds = %if.then.40, %lor.lhs.false.38
  br label %sw.epilog

sw.bb.52:                                         ; preds = %if.end.4
  %45 = load i32, i32* @debug_info_level, align 4
  %cmp53 = icmp eq i32 %45, 2
  br i1 %cmp53, label %if.then.64, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %sw.bb.52
  %46 = load i32, i32* @debug_info_level, align 4
  %cmp55 = icmp eq i32 %46, 3
  br i1 %cmp55, label %if.then.64, label %lor.lhs.false.56

lor.lhs.false.56:                                 ; preds = %lor.lhs.false.54
  %47 = load i32, i32* @write_symbols, align 4
  %cmp57 = icmp eq i32 %47, 3
  br i1 %cmp57, label %if.then.64, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %lor.lhs.false.56
  %48 = load i32, i32* @write_symbols, align 4
  %cmp59 = icmp eq i32 %48, 4
  br i1 %cmp59, label %if.then.64, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %lor.lhs.false.58
  %49 = load i32, i32* @write_symbols, align 4
  %cmp61 = icmp eq i32 %49, 7
  br i1 %cmp61, label %if.then.64, label %lor.lhs.false.62

lor.lhs.false.62:                                 ; preds = %lor.lhs.false.60
  %50 = load i32, i32* @write_symbols, align 4
  %cmp63 = icmp eq i32 %50, 6
  br i1 %cmp63, label %if.then.64, label %if.end.76

if.then.64:                                       ; preds = %lor.lhs.false.62, %lor.lhs.false.60, %lor.lhs.false.58, %lor.lhs.false.56, %lor.lhs.false.54, %sw.bb.52
  %51 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 3
  %rttree68 = bitcast %union.rtunion_def* %arrayidx67 to %union.tree_node**
  %52 = load %union.tree_node*, %union.tree_node** %rttree68, align 8
  %block69 = bitcast %union.tree_node* %52 to %struct.tree_block*
  %block_num70 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block69, i32 0, i32 1
  %bf.load71 = load i32, i32* %block_num70, align 8
  %bf.lshr72 = lshr i32 %bf.load71, 2
  store i32 %bf.lshr72, i32* %n65, align 4
  call void @app_disable()
  %53 = load i32, i32* @block_depth, align 4
  %dec = add nsw i32 %53, -1
  store i32 %dec, i32* @block_depth, align 4
  %54 = load i32, i32* @block_depth, align 4
  %cmp73 = icmp slt i32 %54, 0
  br i1 %cmp73, label %if.then.74, label %if.end.75

if.then.74:                                       ; preds = %if.then.64
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1929, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #6
  unreachable

if.end.75:                                        ; preds = %if.then.64
  %55 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %end_block = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %55, i32 0, i32 7
  %56 = load void (i32, i32)*, void (i32, i32)** %end_block, align 8
  %57 = load i32, i32* @high_block_linenum, align 4
  %58 = load i32, i32* %n65, align 4
  call void %56(i32 %57, i32 %58)
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %lor.lhs.false.62
  br label %sw.epilog

sw.bb.77:                                         ; preds = %if.end.4
  br label %do.body.78

do.body.78:                                       ; preds = %sw.bb.77
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 5
  %rtint81 = bitcast %union.rtunion_def* %arrayidx80 to i32*
  %61 = load i32, i32* %rtint81, align 4
  %call82 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 %61)
  br label %do.end.83

do.end.83:                                        ; preds = %do.body.78
  br label %sw.epilog

sw.bb.84:                                         ; preds = %if.end.4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.4
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 4
  %rtint87 = bitcast %union.rtunion_def* %arrayidx86 to i32*
  %63 = load i32, i32* %rtint87, align 4
  %cmp88 = icmp sle i32 %63, 0
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %sw.default
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1947, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #6
  unreachable

if.end.90:                                        ; preds = %sw.default
  store i32 0, i32* %note_after, align 4
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 2
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx93, align 8
  store %struct.rtx_def* %65, %struct.rtx_def** %note, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.154, %if.end.90
  %66 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool94 = icmp ne %struct.rtx_def* %66, null
  br i1 %tobool94, label %for.body, label %for.end.158

for.body:                                         ; preds = %for.cond
  %67 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load95 = load i32, i32* %68, align 8
  %bf.clear96 = and i32 %bf.load95, 65535
  %cmp97 = icmp ne i32 %bf.clear96, 37
  br i1 %cmp97, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %for.body
  %69 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load98 = load i32, i32* %70, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %cmp100 = icmp ne i32 %bf.clear99, 36
  br i1 %cmp100, label %if.then.101, label %if.else

if.then.101:                                      ; preds = %land.lhs.true
  br label %for.end.158

if.else:                                          ; preds = %land.lhs.true, %for.body
  %71 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load102 = load i32, i32* %72, align 8
  %bf.clear103 = and i32 %bf.load102, 65535
  %cmp104 = icmp eq i32 %bf.clear103, 37
  br i1 %cmp104, label %land.lhs.true.105, label %if.else.121

land.lhs.true.105:                                ; preds = %if.else
  %73 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 4
  %rtint108 = bitcast %union.rtunion_def* %arrayidx107 to i32*
  %74 = load i32, i32* %rtint108, align 4
  %cmp109 = icmp eq i32 %74, -98
  br i1 %cmp109, label %if.then.120, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %land.lhs.true.105
  %75 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 4
  %rtint113 = bitcast %union.rtunion_def* %arrayidx112 to i32*
  %76 = load i32, i32* %rtint113, align 4
  %cmp114 = icmp eq i32 %76, -97
  br i1 %cmp114, label %if.then.120, label %lor.lhs.false.115

lor.lhs.false.115:                                ; preds = %lor.lhs.false.110
  %77 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld116 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx117 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld116, i32 0, i64 4
  %rtint118 = bitcast %union.rtunion_def* %arrayidx117 to i32*
  %78 = load i32, i32* %rtint118, align 4
  %cmp119 = icmp eq i32 %78, -87
  br i1 %cmp119, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %lor.lhs.false.115, %lor.lhs.false.110, %land.lhs.true.105
  br label %for.end.158

if.else.121:                                      ; preds = %lor.lhs.false.115, %if.else
  %79 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load122 = load i32, i32* %80, align 8
  %bf.clear123 = and i32 %bf.load122, 65535
  %cmp124 = icmp eq i32 %bf.clear123, 37
  br i1 %cmp124, label %land.lhs.true.125, label %if.end.151

land.lhs.true.125:                                ; preds = %if.else.121
  %81 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 4
  %rtint128 = bitcast %union.rtunion_def* %arrayidx127 to i32*
  %82 = load i32, i32* %rtint128, align 4
  %cmp129 = icmp sgt i32 %82, 0
  br i1 %cmp129, label %if.then.130, label %if.end.151

if.then.130:                                      ; preds = %land.lhs.true.125
  %83 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld131 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld131, i32 0, i64 4
  %rtint133 = bitcast %union.rtunion_def* %arrayidx132 to i32*
  %84 = load i32, i32* %rtint133, align 4
  %add = add nsw i32 %84, 1
  store i32 %add, i32* %num, align 4
  br label %for.cond.134

for.cond.134:                                     ; preds = %for.inc, %if.then.130
  %85 = load i32, i32* %num, align 4
  %86 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld135 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld135, i32 0, i64 4
  %rtint137 = bitcast %union.rtunion_def* %arrayidx136 to i32*
  %87 = load i32, i32* %rtint137, align 4
  %cmp138 = icmp slt i32 %85, %87
  br i1 %cmp138, label %for.body.139, label %for.end

for.body.139:                                     ; preds = %for.cond.134
  %88 = load i32, i32* %num, align 4
  %idxprom = sext i32 %88 to i64
  %89 = load i8*, i8** @line_note_exists, align 8
  %arrayidx140 = getelementptr inbounds i8, i8* %89, i64 %idxprom
  %90 = load i8, i8* %arrayidx140, align 1
  %tobool141 = icmp ne i8 %90, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %for.body.139
  br label %for.end

if.end.143:                                       ; preds = %for.body.139
  br label %for.inc

for.inc:                                          ; preds = %if.end.143
  %91 = load i32, i32* %num, align 4
  %inc144 = add nsw i32 %91, 1
  store i32 %inc144, i32* %num, align 4
  br label %for.cond.134

for.end:                                          ; preds = %if.then.142, %for.cond.134
  %92 = load i32, i32* %num, align 4
  %93 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld145 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %93, i32 0, i32 1
  %arrayidx146 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld145, i32 0, i64 4
  %rtint147 = bitcast %union.rtunion_def* %arrayidx146 to i32*
  %94 = load i32, i32* %rtint147, align 4
  %cmp148 = icmp sge i32 %92, %94
  br i1 %cmp148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %for.end
  store i32 1, i32* %note_after, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.then.149, %for.end
  br label %for.end.158

if.end.151:                                       ; preds = %land.lhs.true.125, %if.else.121
  br label %if.end.152

if.end.152:                                       ; preds = %if.end.151
  br label %if.end.153

if.end.153:                                       ; preds = %if.end.152
  br label %for.inc.154

for.inc.154:                                      ; preds = %if.end.153
  %95 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 2
  %rtx157 = bitcast %union.rtunion_def* %arrayidx156 to %struct.rtx_def**
  %96 = load %struct.rtx_def*, %struct.rtx_def** %rtx157, align 8
  store %struct.rtx_def* %96, %struct.rtx_def** %note, align 8
  br label %for.cond

for.end.158:                                      ; preds = %if.end.150, %if.then.120, %if.then.101, %for.cond
  %97 = load i32, i32* %note_after, align 4
  %tobool159 = icmp ne i32 %97, 0
  br i1 %tobool159, label %if.end.161, label %if.then.160

if.then.160:                                      ; preds = %for.end.158
  %98 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @notice_source_line(%struct.rtx_def* %98)
  %99 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %source_line = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %99, i32 0, i32 9
  %100 = load void (i32, i8*)*, void (i32, i8*)** %source_line, align 8
  %101 = load i32, i32* @last_linenum, align 4
  %102 = load i8*, i8** @last_filename, align 8
  call void %100(i32 %101, i8* %102)
  br label %if.end.161

if.end.161:                                       ; preds = %if.then.160, %for.end.158
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.161, %sw.bb.84, %do.end.83, %if.end.76, %if.end.51, %sw.bb.28, %sw.bb.27, %sw.bb.26, %do.end.25, %do.end, %if.end.13, %sw.bb.7
  br label %sw.epilog.605

sw.bb.162:                                        ; preds = %if.end
  %call163 = call i32 @dwarf2out_do_frame()
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.then.165, label %if.end.166

if.then.165:                                      ; preds = %sw.bb.162
  %103 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @dwarf2out_frame_debug(%struct.rtx_def* %103)
  br label %if.end.166

if.end.166:                                       ; preds = %if.then.165, %sw.bb.162
  br label %sw.epilog.605

sw.bb.167:                                        ; preds = %if.end
  %104 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld168 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx169 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld168, i32 0, i64 5
  %rtint170 = bitcast %union.rtunion_def* %arrayidx169 to i32*
  %105 = load i32, i32* %rtint170, align 4
  %106 = load i32, i32* @max_labelno, align 4
  %cmp171 = icmp sle i32 %105, %106
  br i1 %cmp171, label %if.then.172, label %if.end.207

if.then.172:                                      ; preds = %sw.bb.167
  %107 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld173, i32 0, i64 5
  %rtint175 = bitcast %union.rtunion_def* %arrayidx174 to i32*
  %108 = load i32, i32* %rtint175, align 4
  %109 = load i32, i32* @min_labelno, align 4
  %sub = sub nsw i32 %108, %109
  %idxprom176 = sext i32 %sub to i64
  %110 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx177 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %110, i64 %idxprom176
  %alignment = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx177, i32 0, i32 0
  %111 = load i16, i16* %alignment, align 2
  %conv = sext i16 %111 to i32
  store i32 %conv, i32* %align, align 4
  %112 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld178 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld178, i32 0, i64 5
  %rtint180 = bitcast %union.rtunion_def* %arrayidx179 to i32*
  %113 = load i32, i32* %rtint180, align 4
  %114 = load i32, i32* @min_labelno, align 4
  %sub181 = sub nsw i32 %113, %114
  %idxprom182 = sext i32 %sub181 to i64
  %115 = load %struct.label_alignment*, %struct.label_alignment** @label_align, align 8
  %arrayidx183 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %115, i64 %idxprom182
  %max_skip184 = getelementptr inbounds %struct.label_alignment, %struct.label_alignment* %arrayidx183, i32 0, i32 1
  %116 = load i16, i16* %max_skip184, align 2
  %conv185 = sext i16 %116 to i32
  store i32 %conv185, i32* %max_skip, align 4
  %117 = load i32, i32* %align, align 4
  %tobool186 = icmp ne i32 %117, 0
  br i1 %tobool186, label %land.lhs.true.187, label %if.end.206

land.lhs.true.187:                                ; preds = %if.then.172
  %118 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %118, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld188, i32 0, i64 2
  %rtx190 = bitcast %union.rtunion_def* %arrayidx189 to %struct.rtx_def**
  %119 = load %struct.rtx_def*, %struct.rtx_def** %rtx190, align 8
  %tobool191 = icmp ne %struct.rtx_def* %119, null
  br i1 %tobool191, label %if.then.192, label %if.end.206

if.then.192:                                      ; preds = %land.lhs.true.187
  br label %do.body.193

do.body.193:                                      ; preds = %if.then.192
  %120 = load i32, i32* %align, align 4
  %cmp194 = icmp ne i32 %120, 0
  br i1 %cmp194, label %if.then.196, label %if.end.204

if.then.196:                                      ; preds = %do.body.193
  %121 = load i32, i32* %max_skip, align 4
  %cmp197 = icmp eq i32 %121, 0
  br i1 %cmp197, label %if.then.199, label %if.else.201

if.then.199:                                      ; preds = %if.then.196
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %123 = load i32, i32* %align, align 4
  %call200 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i32 0, i32 0), i32 %123)
  br label %if.end.203

if.else.201:                                      ; preds = %if.then.196
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %125 = load i32, i32* %align, align 4
  %126 = load i32, i32* %max_skip, align 4
  %call202 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 %125, i32 %126)
  br label %if.end.203

if.end.203:                                       ; preds = %if.else.201, %if.then.199
  br label %if.end.204

if.end.204:                                       ; preds = %if.end.203, %do.body.193
  br label %do.end.205

do.end.205:                                       ; preds = %if.end.204
  br label %if.end.206

if.end.206:                                       ; preds = %do.end.205, %land.lhs.true.187, %if.then.172
  br label %if.end.207

if.end.207:                                       ; preds = %if.end.206, %sw.bb.167
  %127 = load i32, i32* %prescan.addr, align 4
  %cmp208 = icmp sgt i32 %127, 0
  br i1 %cmp208, label %if.then.210, label %if.end.211

if.then.210:                                      ; preds = %if.end.207
  br label %sw.epilog.605

if.end.211:                                       ; preds = %if.end.207
  store i32 1, i32* @new_block, align 4
  %128 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %128, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld212, i32 0, i64 6
  %rtstr = bitcast %union.rtunion_def* %arrayidx213 to i8**
  %129 = load i8*, i8** %rtstr, align 8
  %tobool214 = icmp ne i8* %129, null
  br i1 %tobool214, label %if.then.215, label %if.end.216

if.then.215:                                      ; preds = %if.end.211
  %130 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %label = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %130, i32 0, i32 19
  %131 = load void (%struct.rtx_def*)*, void (%struct.rtx_def*)** %label, align 8
  %132 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void %131(%struct.rtx_def* %132)
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.215, %if.end.211
  %133 = load i32, i32* @app_on, align 4
  %tobool217 = icmp ne i32 %133, 0
  br i1 %tobool217, label %if.then.218, label %if.end.220

if.then.218:                                      ; preds = %if.end.216
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call219 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %134)
  store i32 0, i32* @app_on, align 4
  br label %if.end.220

if.end.220:                                       ; preds = %if.then.218, %if.end.216
  %135 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld221 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %135, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld221, i32 0, i64 2
  %rtx223 = bitcast %union.rtunion_def* %arrayidx222 to %struct.rtx_def**
  %136 = load %struct.rtx_def*, %struct.rtx_def** %rtx223, align 8
  %cmp224 = icmp ne %struct.rtx_def* %136, null
  br i1 %cmp224, label %land.lhs.true.226, label %if.end.276

land.lhs.true.226:                                ; preds = %if.end.220
  %137 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld227 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %137, i32 0, i32 1
  %arrayidx228 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld227, i32 0, i64 2
  %rtx229 = bitcast %union.rtunion_def* %arrayidx228 to %struct.rtx_def**
  %138 = load %struct.rtx_def*, %struct.rtx_def** %rtx229, align 8
  %139 = bitcast %struct.rtx_def* %138 to i32*
  %bf.load230 = load i32, i32* %139, align 8
  %bf.clear231 = and i32 %bf.load230, 65535
  %cmp232 = icmp eq i32 %bf.clear231, 33
  br i1 %cmp232, label %if.then.234, label %if.end.276

if.then.234:                                      ; preds = %land.lhs.true.226
  %140 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld235 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx236 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld235, i32 0, i64 2
  %rtx237 = bitcast %union.rtunion_def* %arrayidx236 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx237, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %141, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 3
  %rtx240 = bitcast %union.rtunion_def* %arrayidx239 to %struct.rtx_def**
  %142 = load %struct.rtx_def*, %struct.rtx_def** %rtx240, align 8
  store %struct.rtx_def* %142, %struct.rtx_def** %nextbody, align 8
  %143 = load %struct.rtx_def*, %struct.rtx_def** %nextbody, align 8
  %144 = bitcast %struct.rtx_def* %143 to i32*
  %bf.load241 = load i32, i32* %144, align 8
  %bf.clear242 = and i32 %bf.load241, 65535
  %cmp243 = icmp eq i32 %bf.clear242, 44
  br i1 %cmp243, label %if.then.250, label %lor.lhs.false.245

lor.lhs.false.245:                                ; preds = %if.then.234
  %145 = load %struct.rtx_def*, %struct.rtx_def** %nextbody, align 8
  %146 = bitcast %struct.rtx_def* %145 to i32*
  %bf.load246 = load i32, i32* %146, align 8
  %bf.clear247 = and i32 %bf.load246, 65535
  %cmp248 = icmp eq i32 %bf.clear247, 45
  br i1 %cmp248, label %if.then.250, label %if.end.275

if.then.250:                                      ; preds = %lor.lhs.false.245, %if.then.234
  %147 = load i32, i32* @target_flags, align 4
  %and = and i32 %147, 33554432
  %tobool251 = icmp ne i32 %and, 0
  br i1 %tobool251, label %if.then.254, label %land.lhs.true.252

land.lhs.true.252:                                ; preds = %if.then.250
  %148 = load i32, i32* @flag_pic, align 4
  %tobool253 = icmp ne i32 %148, 0
  br i1 %tobool253, label %if.else.264, label %if.then.254

if.then.254:                                      ; preds = %land.lhs.true.252, %if.then.250
  call void @readonly_data_section()
  %149 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld255 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %149, i32 0, i32 1
  %arrayidx256 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld255, i32 0, i64 2
  %rtx257 = bitcast %union.rtunion_def* %arrayidx256 to %struct.rtx_def**
  %150 = load %struct.rtx_def*, %struct.rtx_def** %rtx257, align 8
  %call258 = call i32 @final_addr_vec_align(%struct.rtx_def* %150)
  store i32 %call258, i32* %log_align, align 4
  %151 = load i32, i32* %log_align, align 4
  %cmp259 = icmp ne i32 %151, 0
  br i1 %cmp259, label %if.then.261, label %if.end.263

if.then.261:                                      ; preds = %if.then.254
  %152 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %153 = load i32, i32* %log_align, align 4
  %shl = shl i32 1, %153
  %call262 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %152, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 %shl)
  br label %if.end.263

if.end.263:                                       ; preds = %if.then.261, %if.then.254
  br label %if.end.265

if.else.264:                                      ; preds = %land.lhs.true.252
  %154 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @function_section(%union.tree_node* %154)
  br label %if.end.265

if.end.265:                                       ; preds = %if.else.264, %if.end.263
  br label %do.body.266

do.body.266:                                      ; preds = %if.end.265
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call267 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %155, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i32 4)
  br label %do.body.268

do.body.268:                                      ; preds = %do.body.266
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %157 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld269 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %157, i32 0, i32 1
  %arrayidx270 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld269, i32 0, i64 5
  %rtint271 = bitcast %union.rtunion_def* %arrayidx270 to i32*
  %158 = load i32, i32* %rtint271, align 4
  %call272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %156, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 %158)
  br label %do.end.273

do.end.273:                                       ; preds = %do.body.268
  br label %do.end.274

do.end.274:                                       ; preds = %do.end.273
  br label %sw.epilog.605

if.end.275:                                       ; preds = %lor.lhs.false.245
  br label %if.end.276

if.end.276:                                       ; preds = %if.end.275, %land.lhs.true.226, %if.end.220
  %159 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %159, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld277, i32 0, i64 7
  %rtstr279 = bitcast %union.rtunion_def* %arrayidx278 to i8**
  %160 = load i8*, i8** %rtstr279, align 8
  %tobool280 = icmp ne i8* %160, null
  br i1 %tobool280, label %if.then.281, label %if.else.288

if.then.281:                                      ; preds = %if.end.276
  br label %do.body.282

do.body.282:                                      ; preds = %if.then.281
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %162 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %162, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld283, i32 0, i64 7
  %rtstr285 = bitcast %union.rtunion_def* %arrayidx284 to i8**
  %163 = load i8*, i8** %rtstr285, align 8
  call void @assemble_name(%struct._IO_FILE* %161, i8* %163)
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call286 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %164)
  br label %do.end.287

do.end.287:                                       ; preds = %do.body.282
  br label %if.end.295

if.else.288:                                      ; preds = %if.end.276
  br label %do.body.289

do.body.289:                                      ; preds = %if.else.288
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %166 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld290 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %166, i32 0, i32 1
  %arrayidx291 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld290, i32 0, i64 5
  %rtint292 = bitcast %union.rtunion_def* %arrayidx291 to i32*
  %167 = load i32, i32* %rtint292, align 4
  %call293 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %165, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 %167)
  br label %do.end.294

do.end.294:                                       ; preds = %do.body.289
  br label %if.end.295

if.end.295:                                       ; preds = %do.end.294, %do.end.287
  br label %sw.epilog.605

sw.default.296:                                   ; preds = %if.end
  %168 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld297 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %168, i32 0, i32 1
  %arrayidx298 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld297, i32 0, i64 3
  %rtx299 = bitcast %union.rtunion_def* %arrayidx298 to %struct.rtx_def**
  %169 = load %struct.rtx_def*, %struct.rtx_def** %rtx299, align 8
  store %struct.rtx_def* %169, %struct.rtx_def** %body, align 8
  %170 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %171 = bitcast %struct.rtx_def* %170 to i32*
  %bf.load301 = load i32, i32* %171, align 8
  %bf.clear302 = and i32 %bf.load301, 65535
  %cmp303 = icmp eq i32 %bf.clear302, 48
  br i1 %cmp303, label %if.then.310, label %lor.lhs.false.305

lor.lhs.false.305:                                ; preds = %sw.default.296
  %172 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %bf.load306 = load i32, i32* %173, align 8
  %bf.clear307 = and i32 %bf.load306, 65535
  %cmp308 = icmp eq i32 %bf.clear307, 49
  br i1 %cmp308, label %if.then.310, label %if.end.311

if.then.310:                                      ; preds = %lor.lhs.false.305, %sw.default.296
  br label %sw.epilog.605

if.end.311:                                       ; preds = %lor.lhs.false.305
  %174 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %175 = bitcast %struct.rtx_def* %174 to i32*
  %bf.load312 = load i32, i32* %175, align 8
  %bf.clear313 = and i32 %bf.load312, 65535
  %cmp314 = icmp eq i32 %bf.clear313, 44
  br i1 %cmp314, label %if.then.321, label %lor.lhs.false.316

lor.lhs.false.316:                                ; preds = %if.end.311
  %176 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %177 = bitcast %struct.rtx_def* %176 to i32*
  %bf.load317 = load i32, i32* %177, align 8
  %bf.clear318 = and i32 %bf.load317, 65535
  %cmp319 = icmp eq i32 %bf.clear318, 45
  br i1 %cmp319, label %if.then.321, label %if.end.383

if.then.321:                                      ; preds = %lor.lhs.false.316, %if.end.311
  %178 = load i32, i32* %prescan.addr, align 4
  %cmp322 = icmp sgt i32 %178, 0
  br i1 %cmp322, label %if.then.324, label %if.end.325

if.then.324:                                      ; preds = %if.then.321
  br label %sw.epilog.605

if.end.325:                                       ; preds = %if.then.321
  %179 = load i32, i32* @app_on, align 4
  %tobool326 = icmp ne i32 %179, 0
  br i1 %tobool326, label %if.then.327, label %if.end.329

if.then.327:                                      ; preds = %if.end.325
  %180 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call328 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %180)
  store i32 0, i32* @app_on, align 4
  br label %if.end.329

if.end.329:                                       ; preds = %if.then.327, %if.end.325
  %181 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %182 = bitcast %struct.rtx_def* %181 to i32*
  %bf.load330 = load i32, i32* %182, align 8
  %bf.clear331 = and i32 %bf.load330, 65535
  %cmp332 = icmp eq i32 %bf.clear331, 45
  %conv333 = zext i1 %cmp332 to i32
  %idxprom334 = sext i32 %conv333 to i64
  %183 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld335 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %183, i32 0, i32 1
  %arrayidx336 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld335, i32 0, i64 %idxprom334
  %rtvec = bitcast %union.rtunion_def* %arrayidx336 to %struct.rtvec_def**
  %184 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %184, i32 0, i32 0
  %185 = load i32, i32* %num_elem, align 4
  store i32 %185, i32* %vlen, align 4
  store i32 0, i32* %idx, align 4
  br label %for.cond.337

for.cond.337:                                     ; preds = %for.inc.380, %if.end.329
  %186 = load i32, i32* %idx, align 4
  %187 = load i32, i32* %vlen, align 4
  %cmp338 = icmp slt i32 %186, %187
  br i1 %cmp338, label %for.body.340, label %for.end.382

for.body.340:                                     ; preds = %for.cond.337
  %188 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %189 = bitcast %struct.rtx_def* %188 to i32*
  %bf.load341 = load i32, i32* %189, align 8
  %bf.clear342 = and i32 %bf.load341, 65535
  %cmp343 = icmp eq i32 %bf.clear342, 44
  br i1 %cmp343, label %if.then.345, label %if.else.357

if.then.345:                                      ; preds = %for.body.340
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %191 = load i32, i32* %idx, align 4
  %idxprom346 = sext i32 %191 to i64
  %192 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld347 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %192, i32 0, i32 1
  %arrayidx348 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld347, i32 0, i64 0
  %rtvec349 = bitcast %union.rtunion_def* %arrayidx348 to %struct.rtvec_def**
  %193 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec349, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %193, i32 0, i32 1
  %arrayidx350 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom346
  %194 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx350, align 8
  %fld351 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %194, i32 0, i32 1
  %arrayidx352 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld351, i32 0, i64 0
  %rtx353 = bitcast %union.rtunion_def* %arrayidx352 to %struct.rtx_def**
  %195 = load %struct.rtx_def*, %struct.rtx_def** %rtx353, align 8
  %fld354 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %195, i32 0, i32 1
  %arrayidx355 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld354, i32 0, i64 5
  %rtint356 = bitcast %union.rtunion_def* %arrayidx355 to i32*
  %196 = load i32, i32* %rtint356, align 4
  call void @ix86_output_addr_vec_elt(%struct._IO_FILE* %190, i32 %196)
  br label %if.end.379

if.else.357:                                      ; preds = %for.body.340
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %198 = load i32, i32* %idx, align 4
  %idxprom358 = sext i32 %198 to i64
  %199 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld359 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %199, i32 0, i32 1
  %arrayidx360 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld359, i32 0, i64 1
  %rtvec361 = bitcast %union.rtunion_def* %arrayidx360 to %struct.rtvec_def**
  %200 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec361, align 8
  %elem362 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %200, i32 0, i32 1
  %arrayidx363 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem362, i32 0, i64 %idxprom358
  %201 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx363, align 8
  %fld364 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %201, i32 0, i32 1
  %arrayidx365 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld364, i32 0, i64 0
  %rtx366 = bitcast %union.rtunion_def* %arrayidx365 to %struct.rtx_def**
  %202 = load %struct.rtx_def*, %struct.rtx_def** %rtx366, align 8
  %fld367 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %202, i32 0, i32 1
  %arrayidx368 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld367, i32 0, i64 5
  %rtint369 = bitcast %union.rtunion_def* %arrayidx368 to i32*
  %203 = load i32, i32* %rtint369, align 4
  %204 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld370 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %204, i32 0, i32 1
  %arrayidx371 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld370, i32 0, i64 0
  %rtx372 = bitcast %union.rtunion_def* %arrayidx371 to %struct.rtx_def**
  %205 = load %struct.rtx_def*, %struct.rtx_def** %rtx372, align 8
  %fld373 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %205, i32 0, i32 1
  %arrayidx374 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld373, i32 0, i64 0
  %rtx375 = bitcast %union.rtunion_def* %arrayidx374 to %struct.rtx_def**
  %206 = load %struct.rtx_def*, %struct.rtx_def** %rtx375, align 8
  %fld376 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %206, i32 0, i32 1
  %arrayidx377 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld376, i32 0, i64 5
  %rtint378 = bitcast %union.rtunion_def* %arrayidx377 to i32*
  %207 = load i32, i32* %rtint378, align 4
  call void @ix86_output_addr_diff_elt(%struct._IO_FILE* %197, i32 %203, i32 %207)
  br label %if.end.379

if.end.379:                                       ; preds = %if.else.357, %if.then.345
  br label %for.inc.380

for.inc.380:                                      ; preds = %if.end.379
  %208 = load i32, i32* %idx, align 4
  %inc381 = add nsw i32 %208, 1
  store i32 %inc381, i32* %idx, align 4
  br label %for.cond.337

for.end.382:                                      ; preds = %for.cond.337
  %209 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @function_section(%union.tree_node* %209)
  br label %sw.epilog.605

if.end.383:                                       ; preds = %lor.lhs.false.316
  %210 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %211 = bitcast %struct.rtx_def* %210 to i32*
  %bf.load384 = load i32, i32* %211, align 8
  %bf.clear385 = and i32 %bf.load384, 65535
  %cmp386 = icmp eq i32 %bf.clear385, 40
  br i1 %cmp386, label %if.then.388, label %if.end.405

if.then.388:                                      ; preds = %if.end.383
  %212 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld389 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %212, i32 0, i32 1
  %arrayidx390 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld389, i32 0, i64 0
  %rtstr391 = bitcast %union.rtunion_def* %arrayidx390 to i8**
  %213 = load i8*, i8** %rtstr391, align 8
  store i8* %213, i8** %string, align 8
  %214 = load i32, i32* %prescan.addr, align 4
  %cmp392 = icmp sgt i32 %214, 0
  br i1 %cmp392, label %if.then.394, label %if.end.395

if.then.394:                                      ; preds = %if.then.388
  br label %sw.epilog.605

if.end.395:                                       ; preds = %if.then.388
  %215 = load i8*, i8** %string, align 8
  %arrayidx396 = getelementptr inbounds i8, i8* %215, i64 0
  %216 = load i8, i8* %arrayidx396, align 1
  %tobool397 = icmp ne i8 %216, 0
  br i1 %tobool397, label %if.then.398, label %if.end.404

if.then.398:                                      ; preds = %if.end.395
  %217 = load i32, i32* @app_on, align 4
  %tobool399 = icmp ne i32 %217, 0
  br i1 %tobool399, label %if.end.402, label %if.then.400

if.then.400:                                      ; preds = %if.then.398
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call401 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %218)
  store i32 1, i32* @app_on, align 4
  br label %if.end.402

if.end.402:                                       ; preds = %if.then.400, %if.then.398
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %220 = load i8*, i8** %string, align 8
  %call403 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), i8* %220)
  br label %if.end.404

if.end.404:                                       ; preds = %if.end.402, %if.end.395
  br label %sw.epilog.605

if.end.405:                                       ; preds = %if.end.383
  %221 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %call406 = call i32 @asm_noperands(%struct.rtx_def* %221)
  %cmp407 = icmp sge i32 %call406, 0
  br i1 %cmp407, label %if.then.409, label %if.end.426

if.then.409:                                      ; preds = %if.end.405
  %222 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %call410 = call i32 @asm_noperands(%struct.rtx_def* %222)
  store i32 %call410, i32* %noperands, align 4
  %223 = load i32, i32* %noperands, align 4
  %conv411 = zext i32 %223 to i64
  %mul = mul i64 %conv411, 8
  %224 = alloca i8, i64 %mul
  %225 = bitcast i8* %224 to %struct.rtx_def**
  store %struct.rtx_def** %225, %struct.rtx_def*** %ops, align 8
  %226 = load i32, i32* %prescan.addr, align 4
  %cmp413 = icmp sgt i32 %226, 0
  br i1 %cmp413, label %if.then.415, label %if.end.416

if.then.415:                                      ; preds = %if.then.409
  br label %sw.epilog.605

if.end.416:                                       ; preds = %if.then.409
  %227 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %228 = load %struct.rtx_def**, %struct.rtx_def*** %ops, align 8
  %call417 = call i8* @decode_asm_operands(%struct.rtx_def* %227, %struct.rtx_def** %228, %struct.rtx_def*** null, i8** null, i32* null)
  store i8* %call417, i8** %string412, align 8
  %229 = load i32, i32* %noperands, align 4
  store i32 %229, i32* @insn_noperands, align 4
  %230 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %230, %struct.rtx_def** @this_is_asm_operands, align 8
  %231 = load i8*, i8** %string412, align 8
  %arrayidx418 = getelementptr inbounds i8, i8* %231, i64 0
  %232 = load i8, i8* %arrayidx418, align 1
  %tobool419 = icmp ne i8 %232, 0
  br i1 %tobool419, label %if.then.420, label %if.end.425

if.then.420:                                      ; preds = %if.end.416
  %233 = load i32, i32* @app_on, align 4
  %tobool421 = icmp ne i32 %233, 0
  br i1 %tobool421, label %if.end.424, label %if.then.422

if.then.422:                                      ; preds = %if.then.420
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call423 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), %struct._IO_FILE* %234)
  store i32 1, i32* @app_on, align 4
  br label %if.end.424

if.end.424:                                       ; preds = %if.then.422, %if.then.420
  %235 = load i8*, i8** %string412, align 8
  %236 = load %struct.rtx_def**, %struct.rtx_def*** %ops, align 8
  call void @output_asm_insn(i8* %235, %struct.rtx_def** %236)
  br label %if.end.425

if.end.425:                                       ; preds = %if.end.424, %if.end.416
  store %struct.rtx_def* null, %struct.rtx_def** @this_is_asm_operands, align 8
  br label %sw.epilog.605

if.end.426:                                       ; preds = %if.end.405
  %237 = load i32, i32* %prescan.addr, align 4
  %cmp427 = icmp sle i32 %237, 0
  br i1 %cmp427, label %land.lhs.true.429, label %if.end.433

land.lhs.true.429:                                ; preds = %if.end.426
  %238 = load i32, i32* @app_on, align 4
  %tobool430 = icmp ne i32 %238, 0
  br i1 %tobool430, label %if.then.431, label %if.end.433

if.then.431:                                      ; preds = %land.lhs.true.429
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call432 = call i32 @fputs(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._IO_FILE* %239)
  store i32 0, i32* @app_on, align 4
  br label %if.end.433

if.end.433:                                       ; preds = %if.then.431, %land.lhs.true.429, %if.end.426
  %240 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %241 = bitcast %struct.rtx_def* %240 to i32*
  %bf.load434 = load i32, i32* %241, align 8
  %bf.clear435 = and i32 %bf.load434, 65535
  %cmp436 = icmp eq i32 %bf.clear435, 24
  br i1 %cmp436, label %if.then.438, label %if.end.496

if.then.438:                                      ; preds = %if.end.433
  %242 = load i32, i32* %prescan.addr, align 4
  %cmp439 = icmp sgt i32 %242, 0
  br i1 %cmp439, label %if.then.441, label %if.end.442

if.then.441:                                      ; preds = %if.then.438
  br label %sw.epilog.605

if.end.442:                                       ; preds = %if.then.438
  %243 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  store %struct.rtx_def* %243, %struct.rtx_def** @final_sequence, align 8
  %244 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld443 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %244, i32 0, i32 1
  %arrayidx444 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld443, i32 0, i64 0
  %rtvec445 = bitcast %union.rtunion_def* %arrayidx444 to %struct.rtvec_def**
  %245 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec445, align 8
  %elem446 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %245, i32 0, i32 1
  %arrayidx447 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem446, i32 0, i64 0
  %246 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx447, align 8
  %247 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %248 = load i32, i32* %prescan.addr, align 4
  %call448 = call %struct.rtx_def* @final_scan_insn(%struct.rtx_def* %246, %struct._IO_FILE* %247, i32 0, i32 %248, i32 1)
  store %struct.rtx_def* %call448, %struct.rtx_def** %next, align 8
  %249 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %250 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld449 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %250, i32 0, i32 1
  %arrayidx450 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld449, i32 0, i64 0
  %rtvec451 = bitcast %union.rtunion_def* %arrayidx450 to %struct.rtvec_def**
  %251 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec451, align 8
  %elem452 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %251, i32 0, i32 1
  %arrayidx453 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem452, i32 0, i64 1
  %252 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx453, align 8
  %cmp454 = icmp ne %struct.rtx_def* %249, %252
  br i1 %cmp454, label %if.then.456, label %if.end.457

if.then.456:                                      ; preds = %if.end.442
  store %struct.rtx_def* null, %struct.rtx_def** @final_sequence, align 8
  %253 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %253, %struct.rtx_def** %retval
  br label %return

if.end.457:                                       ; preds = %if.end.442
  store i32 1, i32* %i, align 4
  br label %for.cond.458

for.cond.458:                                     ; preds = %for.inc.482, %if.end.457
  %254 = load i32, i32* %i, align 4
  %255 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld459 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %255, i32 0, i32 1
  %arrayidx460 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld459, i32 0, i64 0
  %rtvec461 = bitcast %union.rtunion_def* %arrayidx460 to %struct.rtvec_def**
  %256 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec461, align 8
  %num_elem462 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %256, i32 0, i32 0
  %257 = load i32, i32* %num_elem462, align 4
  %cmp463 = icmp slt i32 %254, %257
  br i1 %cmp463, label %for.body.465, label %for.end.484

for.body.465:                                     ; preds = %for.cond.458
  %258 = load i32, i32* %i, align 4
  %idxprom467 = sext i32 %258 to i64
  %259 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld468 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %259, i32 0, i32 1
  %arrayidx469 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld468, i32 0, i64 0
  %rtvec470 = bitcast %union.rtunion_def* %arrayidx469 to %struct.rtvec_def**
  %260 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec470, align 8
  %elem471 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %260, i32 0, i32 1
  %arrayidx472 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem471, i32 0, i64 %idxprom467
  %261 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx472, align 8
  store %struct.rtx_def* %261, %struct.rtx_def** %insn466, align 8
  %262 = load %struct.rtx_def*, %struct.rtx_def** %insn466, align 8
  %fld474 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %262, i32 0, i32 1
  %arrayidx475 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld474, i32 0, i64 2
  %rtx476 = bitcast %union.rtunion_def* %arrayidx475 to %struct.rtx_def**
  %263 = load %struct.rtx_def*, %struct.rtx_def** %rtx476, align 8
  store %struct.rtx_def* %263, %struct.rtx_def** %next473, align 8
  br label %do.body.477

do.body.477:                                      ; preds = %do.cond, %for.body.465
  %264 = load %struct.rtx_def*, %struct.rtx_def** %insn466, align 8
  %265 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %266 = load i32, i32* %prescan.addr, align 4
  %call478 = call %struct.rtx_def* @final_scan_insn(%struct.rtx_def* %264, %struct._IO_FILE* %265, i32 0, i32 %266, i32 1)
  store %struct.rtx_def* %call478, %struct.rtx_def** %insn466, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body.477
  %267 = load %struct.rtx_def*, %struct.rtx_def** %insn466, align 8
  %268 = load %struct.rtx_def*, %struct.rtx_def** %next473, align 8
  %cmp479 = icmp ne %struct.rtx_def* %267, %268
  br i1 %cmp479, label %do.body.477, label %do.end.481

do.end.481:                                       ; preds = %do.cond
  br label %for.inc.482

for.inc.482:                                      ; preds = %do.end.481
  %269 = load i32, i32* %i, align 4
  %inc483 = add nsw i32 %269, 1
  store i32 %inc483, i32* %i, align 4
  br label %for.cond.458

for.end.484:                                      ; preds = %for.cond.458
  store %struct.rtx_def* null, %struct.rtx_def** @final_sequence, align 8
  %270 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld485 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %270, i32 0, i32 1
  %arrayidx486 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld485, i32 0, i64 0
  %rtvec487 = bitcast %union.rtunion_def* %arrayidx486 to %struct.rtvec_def**
  %271 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec487, align 8
  %elem488 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %271, i32 0, i32 1
  %arrayidx489 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem488, i32 0, i64 0
  %272 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx489, align 8
  %273 = bitcast %struct.rtx_def* %272 to i32*
  %bf.load490 = load i32, i32* %273, align 8
  %bf.clear491 = and i32 %bf.load490, 65535
  %cmp492 = icmp eq i32 %bf.clear491, 34
  br i1 %cmp492, label %if.then.494, label %if.end.495

if.then.494:                                      ; preds = %for.end.484
  br label %if.end.495

if.end.495:                                       ; preds = %if.then.494, %for.end.484
  br label %sw.epilog.605

if.end.496:                                       ; preds = %if.end.433
  %274 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld497 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %274, i32 0, i32 1
  %arrayidx498 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld497, i32 0, i64 3
  %rtx499 = bitcast %union.rtunion_def* %arrayidx498 to %struct.rtx_def**
  %275 = load %struct.rtx_def*, %struct.rtx_def** %rtx499, align 8
  store %struct.rtx_def* %275, %struct.rtx_def** %body, align 8
  %276 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld500 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %276, i32 0, i32 1
  %arrayidx501 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld500, i32 0, i64 4
  %rtint502 = bitcast %union.rtunion_def* %arrayidx501 to i32*
  %277 = load i32, i32* %rtint502, align 4
  %cmp503 = icmp sge i32 %277, 0
  br i1 %cmp503, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.496
  %278 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld505 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %278, i32 0, i32 1
  %arrayidx506 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld505, i32 0, i64 4
  %rtint507 = bitcast %union.rtunion_def* %arrayidx506 to i32*
  %279 = load i32, i32* %rtint507, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.496
  %280 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call508 = call i32 @recog_memoized_1(%struct.rtx_def* %280)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %279, %cond.true ], [ %call508, %cond.false ]
  store i32 %cond, i32* %insn_code_number, align 4
  %281 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @cleanup_subreg_operands(%struct.rtx_def* %281)
  %282 = load i32, i32* @flag_dump_rtl_in_asm, align 4
  %tobool509 = icmp ne i32 %282, 0
  br i1 %tobool509, label %if.then.510, label %if.end.512

if.then.510:                                      ; preds = %cond.end
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** @print_rtx_head, align 8
  %283 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %284 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call511 = call i32 @print_rtl_single(%struct._IO_FILE* %283, %struct.rtx_def* %284)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8** @print_rtx_head, align 8
  br label %if.end.512

if.end.512:                                       ; preds = %if.then.510, %cond.end
  %call513 = call i32 @constrain_operands_cached(i32 1)
  %tobool514 = icmp ne i32 %call513, 0
  br i1 %tobool514, label %if.end.516, label %if.then.515

if.then.515:                                      ; preds = %if.end.512
  %285 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @_fatal_insn_not_found(%struct.rtx_def* %285, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2551, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #6
  unreachable

if.end.516:                                       ; preds = %if.end.512
  %286 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %286, %struct.rtx_def** @debug_insn, align 8
  store %struct.rtx_def* %286, %struct.rtx_def** @current_output_insn, align 8
  %287 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %288 = bitcast %struct.rtx_def* %287 to i32*
  %bf.load517 = load i32, i32* %288, align 8
  %bf.clear518 = and i32 %bf.load517, 65535
  %cmp519 = icmp eq i32 %bf.clear518, 34
  br i1 %cmp519, label %land.lhs.true.521, label %if.end.525

land.lhs.true.521:                                ; preds = %if.end.516
  %call522 = call i32 @dwarf2out_do_frame()
  %tobool523 = icmp ne i32 %call522, 0
  br i1 %tobool523, label %if.then.524, label %if.end.525

if.then.524:                                      ; preds = %land.lhs.true.521
  %289 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @dwarf2out_frame_debug(%struct.rtx_def* %289)
  br label %if.end.525

if.end.525:                                       ; preds = %if.then.524, %land.lhs.true.521, %if.end.516
  %290 = load i32, i32* %insn_code_number, align 4
  %291 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call526 = call i8* @get_insn_template(i32 %290, %struct.rtx_def* %291)
  store i8* %call526, i8** %template, align 8
  %292 = load i8*, i8** %template, align 8
  %cmp527 = icmp eq i8* %292, null
  br i1 %cmp527, label %if.then.529, label %if.end.551

if.then.529:                                      ; preds = %if.end.525
  %293 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call530 = call %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %293)
  %294 = load %struct.rtx_def*, %struct.rtx_def** @last_ignored_compare, align 8
  %cmp531 = icmp ne %struct.rtx_def* %call530, %294
  br i1 %cmp531, label %if.then.533, label %if.end.534

if.then.533:                                      ; preds = %if.then.529
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2596, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #6
  unreachable

if.end.534:                                       ; preds = %if.then.529
  store i32 0, i32* @new_block, align 4
  %295 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %295, %struct.rtx_def** %prev, align 8
  br label %for.cond.535

for.cond.535:                                     ; preds = %for.inc.546, %if.end.534
  %296 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %297 = load %struct.rtx_def*, %struct.rtx_def** @last_ignored_compare, align 8
  %cmp536 = icmp ne %struct.rtx_def* %296, %297
  br i1 %cmp536, label %for.body.538, label %for.end.550

for.body.538:                                     ; preds = %for.cond.535
  %298 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %299 = bitcast %struct.rtx_def* %298 to i32*
  %bf.load539 = load i32, i32* %299, align 8
  %bf.clear540 = and i32 %bf.load539, 65535
  %cmp541 = icmp eq i32 %bf.clear540, 37
  br i1 %cmp541, label %if.then.543, label %if.end.545

if.then.543:                                      ; preds = %for.body.538
  %300 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %call544 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %300)
  br label %if.end.545

if.end.545:                                       ; preds = %if.then.543, %for.body.538
  br label %for.inc.546

for.inc.546:                                      ; preds = %if.end.545
  %301 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld547 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %301, i32 0, i32 1
  %arrayidx548 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld547, i32 0, i64 1
  %rtx549 = bitcast %union.rtunion_def* %arrayidx548 to %struct.rtx_def**
  %302 = load %struct.rtx_def*, %struct.rtx_def** %rtx549, align 8
  store %struct.rtx_def* %302, %struct.rtx_def** %prev, align 8
  br label %for.cond.535

for.end.550:                                      ; preds = %for.cond.535
  %303 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  store %struct.rtx_def* %303, %struct.rtx_def** %retval
  br label %return

if.end.551:                                       ; preds = %if.end.525
  %304 = load i8*, i8** %template, align 8
  %arrayidx552 = getelementptr inbounds i8, i8* %304, i64 0
  %305 = load i8, i8* %arrayidx552, align 1
  %conv553 = sext i8 %305 to i32
  %cmp554 = icmp eq i32 %conv553, 35
  br i1 %cmp554, label %land.lhs.true.556, label %if.end.573

land.lhs.true.556:                                ; preds = %if.end.551
  %306 = load i8*, i8** %template, align 8
  %arrayidx557 = getelementptr inbounds i8, i8* %306, i64 1
  %307 = load i8, i8* %arrayidx557, align 1
  %conv558 = sext i8 %307 to i32
  %cmp559 = icmp eq i32 %conv558, 0
  br i1 %cmp559, label %if.then.561, label %if.end.573

if.then.561:                                      ; preds = %land.lhs.true.556
  %308 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %309 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call562 = call %struct.rtx_def* @try_split(%struct.rtx_def* %308, %struct.rtx_def* %309, i32 0)
  store %struct.rtx_def* %call562, %struct.rtx_def** %new, align 8
  %310 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %311 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp563 = icmp eq %struct.rtx_def* %310, %311
  br i1 %cmp563, label %land.lhs.true.565, label %if.end.572

land.lhs.true.565:                                ; preds = %if.then.561
  %312 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld566 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %312, i32 0, i32 1
  %arrayidx567 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld566, i32 0, i64 3
  %rtx568 = bitcast %union.rtunion_def* %arrayidx567 to %struct.rtx_def**
  %313 = load %struct.rtx_def*, %struct.rtx_def** %rtx568, align 8
  %314 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %cmp569 = icmp eq %struct.rtx_def* %313, %314
  br i1 %cmp569, label %if.then.571, label %if.end.572

if.then.571:                                      ; preds = %land.lhs.true.565
  %315 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @_fatal_insn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.25, i32 0, i32 0), %struct.rtx_def* %315, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2622, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #6
  unreachable

if.end.572:                                       ; preds = %land.lhs.true.565, %if.then.561
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2628, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.final_scan_insn, i32 0, i32 0)) #6
  unreachable

if.end.573:                                       ; preds = %land.lhs.true.556, %if.end.551
  %316 = load i32, i32* %prescan.addr, align 4
  %cmp574 = icmp sgt i32 %316, 0
  br i1 %cmp574, label %if.then.576, label %if.end.577

if.then.576:                                      ; preds = %if.end.573
  br label %sw.epilog.605

if.end.577:                                       ; preds = %if.end.573
  %317 = load i8*, i8** %template, align 8
  call void @output_asm_insn(i8* %317, %struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i32 0))
  %318 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %319 = bitcast %struct.rtx_def* %318 to i32*
  %bf.load578 = load i32, i32* %319, align 8
  %bf.clear579 = and i32 %bf.load578, 65535
  %cmp580 = icmp eq i32 %bf.clear579, 32
  br i1 %cmp580, label %land.lhs.true.582, label %if.end.586

land.lhs.true.582:                                ; preds = %if.end.577
  %call583 = call i32 @dwarf2out_do_frame()
  %tobool584 = icmp ne i32 %call583, 0
  br i1 %tobool584, label %if.then.585, label %if.end.586

if.then.585:                                      ; preds = %land.lhs.true.582
  %320 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @dwarf2out_frame_debug(%struct.rtx_def* %320)
  br label %if.end.586

if.end.586:                                       ; preds = %if.then.585, %land.lhs.true.582, %if.end.577
  %321 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call587 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %321, i32 30, %struct.rtx_def* null)
  store %struct.rtx_def* %call587, %struct.rtx_def** %note300, align 8
  %322 = load %struct.rtx_def*, %struct.rtx_def** %note300, align 8
  %tobool588 = icmp ne %struct.rtx_def* %322, null
  br i1 %tobool588, label %if.then.589, label %if.end.604

if.then.589:                                      ; preds = %if.end.586
  %323 = load %struct.rtx_def*, %struct.rtx_def** %note300, align 8
  %fld590 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %323, i32 0, i32 1
  %arrayidx591 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld590, i32 0, i64 0
  %rtx592 = bitcast %union.rtunion_def* %arrayidx591 to %struct.rtx_def**
  %324 = load %struct.rtx_def*, %struct.rtx_def** %rtx592, align 8
  %fld593 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %324, i32 0, i32 1
  %arrayidx594 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld593, i32 0, i64 0
  %rtx595 = bitcast %union.rtunion_def* %arrayidx594 to %struct.rtx_def**
  %325 = load %struct.rtx_def*, %struct.rtx_def** %rtx595, align 8
  %326 = load %struct.rtx_def*, %struct.rtx_def** %note300, align 8
  %fld596 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %326, i32 0, i32 1
  %arrayidx597 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld596, i32 0, i64 0
  %rtx598 = bitcast %union.rtunion_def* %arrayidx597 to %struct.rtx_def**
  %327 = load %struct.rtx_def*, %struct.rtx_def** %rtx598, align 8
  %fld599 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %327, i32 0, i32 1
  %arrayidx600 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld599, i32 0, i64 1
  %rtx601 = bitcast %union.rtunion_def* %arrayidx600 to %struct.rtx_def**
  %328 = load %struct.rtx_def*, %struct.rtx_def** %rtx601, align 8
  %fld602 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %328, i32 0, i32 1
  %arrayidx603 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld602, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx603 to i64*
  %329 = load i64, i64* %rtwint, align 8
  call void @assemble_vtable_entry(%struct.rtx_def* %325, i64 %329)
  br label %if.end.604

if.end.604:                                       ; preds = %if.then.589, %if.end.586
  store %struct.rtx_def* null, %struct.rtx_def** @debug_insn, align 8
  store %struct.rtx_def* null, %struct.rtx_def** @current_output_insn, align 8
  br label %sw.epilog.605

sw.epilog.605:                                    ; preds = %if.end.604, %if.then.576, %if.end.495, %if.then.441, %if.end.425, %if.then.415, %if.end.404, %if.then.394, %for.end.382, %if.then.324, %if.then.310, %if.end.295, %do.end.274, %if.then.210, %if.end.166, %sw.epilog, %if.then.3
  %330 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld606 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %330, i32 0, i32 1
  %arrayidx607 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld606, i32 0, i64 2
  %rtx608 = bitcast %union.rtunion_def* %arrayidx607 to %struct.rtx_def**
  %331 = load %struct.rtx_def*, %struct.rtx_def** %rtx608, align 8
  store %struct.rtx_def* %331, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %sw.epilog.605, %for.end.550, %if.then.456, %if.then
  %332 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %332
}

; Function Attrs: nounwind uwtable
define i8* @get_insn_template(i32 %code, %struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca i8*, align 8
  %code.addr = alloca i32, align 4
  %insn.addr = alloca %struct.rtx_def*, align 8
  %output = alloca i8*, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom
  %output1 = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx, i32 0, i32 1
  %1 = load i8*, i8** %output1, align 8
  store i8* %1, i8** %output, align 8
  %2 = load i32, i32* %code.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom2
  %output_format = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx3, i32 0, i32 7
  %3 = load i8, i8* %output_format, align 1
  %conv = sext i8 %3 to i32
  switch i32 %conv, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.7
  ]

sw.bb:                                            ; preds = %entry
  %4 = load i8*, i8** %output, align 8
  store i8* %4, i8** %retval
  br label %return

sw.bb.4:                                          ; preds = %entry
  %5 = load i32, i32* @which_alternative, align 4
  %idxprom5 = sext i32 %5 to i64
  %6 = load i8*, i8** %output, align 8
  %7 = bitcast i8* %6 to i8**
  %arrayidx6 = getelementptr inbounds i8*, i8** %7, i64 %idxprom5
  %8 = load i8*, i8** %arrayidx6, align 8
  store i8* %8, i8** %retval
  br label %return

sw.bb.7:                                          ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %9, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb.7
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1802, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.get_insn_template, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %sw.bb.7
  %10 = load i8*, i8** %output, align 8
  %11 = bitcast i8* %10 to i8* (%struct.rtx_def**, %struct.rtx_def*)*
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i8* %11(%struct.rtx_def** getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0, i32 0), %struct.rtx_def* %12)
  store i8* %call, i8** %retval
  br label %return

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 1806, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.get_insn_template, i32 0, i32 0)) #6
  unreachable

return:                                           ; preds = %if.end, %sw.bb.4, %sw.bb
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define internal void @profile_after_prologue(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %profile = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 56
  %1 = bitcast i24* %profile to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  call void @profile_function(%struct._IO_FILE* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @readonly_data_section() #1

declare void @function_section(%union.tree_node*) #1

declare void @ix86_output_addr_vec_elt(%struct._IO_FILE*, i32) #1

declare void @ix86_output_addr_diff_elt(%struct._IO_FILE*, i32, i32) #1

declare i8* @decode_asm_operands(%struct.rtx_def*, %struct.rtx_def**, %struct.rtx_def***, i8**, i32*) #1

; Function Attrs: nounwind uwtable
define void @output_asm_insn(i8* %template, %struct.rtx_def** %operands) #0 {
entry:
  %template.addr = alloca i8*, align 8
  %operands.addr = alloca %struct.rtx_def**, align 8
  %p = alloca i8*, align 8
  %c = alloca i32, align 4
  %dialect = alloca i32, align 4
  %oporder = alloca [30 x i32], align 16
  %opoutput = alloca [30 x i8], align 16
  %ops = alloca i32, align 4
  %i = alloca i32, align 4
  %letter = alloca i32, align 4
  store i8* %template, i8** %template.addr, align 8
  store %struct.rtx_def** %operands, %struct.rtx_def*** %operands.addr, align 8
  store i32 0, i32* %dialect, align 4
  store i32 0, i32* %ops, align 4
  %0 = load i8*, i8** %template.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = bitcast [30 x i8]* %opoutput to i8*
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 30, i32 16, i1 false)
  %3 = load i8*, i8** %template.addr, align 8
  store i8* %3, i8** %p, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call = call i32 @_IO_putc(i32 9, %struct._IO_FILE* %4)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %if.end
  %5 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %6 = load i8, i8* %5, align 1
  %conv2 = sext i8 %6 to i32
  store i32 %conv2, i32* %c, align 4
  %tobool = icmp ne i32 %conv2, 0
  br i1 %tobool, label %while.body, label %while.end.268

while.body:                                       ; preds = %while.cond
  %7 = load i32, i32* %c, align 4
  switch i32 %7, label %sw.default [
    i32 10, label %sw.bb
    i32 123, label %sw.bb.10
    i32 124, label %sw.bb.43
    i32 125, label %sw.bb.58
    i32 37, label %sw.bb.63
  ]

sw.bb:                                            ; preds = %while.body
  %8 = load i32, i32* @flag_verbose_asm, align 4
  %tobool3 = icmp ne i32 %8, 0
  br i1 %tobool3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %sw.bb
  %9 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arraydecay = getelementptr inbounds [30 x i32], [30 x i32]* %oporder, i32 0, i32 0
  %10 = load i32, i32* %ops, align 4
  call void @output_asm_operand_names(%struct.rtx_def** %9, i32* %arraydecay, i32 %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %sw.bb
  %11 = load i32, i32* @flag_print_asm_name, align 4
  %tobool6 = icmp ne i32 %11, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  call void @output_asm_name()
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  store i32 0, i32* %ops, align 4
  %12 = bitcast [30 x i8]* %opoutput to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 30, i32 16, i1 false)
  %13 = load i32, i32* %c, align 4
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call9 = call i32 @_IO_putc(i32 %13, %struct._IO_FILE* %14)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %while.body
  %15 = load i32, i32* %dialect, align 4
  %tobool11 = icmp ne i32 %15, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %sw.bb.10
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i32 0, i32 0))
  br label %if.end.13

if.else:                                          ; preds = %sw.bb.10
  store i32 1, i32* %dialect, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.13
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @dialect_number, align 4
  %cmp14 = icmp slt i32 %16, %17
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.26, %for.body
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %conv17 = sext i8 %19 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond.16
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %conv19 = sext i8 %21 to i32
  %cmp20 = icmp ne i32 %conv19, 125
  br i1 %cmp20, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr22, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv23 = sext i8 %23 to i32
  %cmp24 = icmp ne i32 %conv23, 124
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %while.cond.16
  %24 = phi i1 [ false, %land.lhs.true ], [ false, %while.cond.16 ], [ %cmp24, %land.rhs ]
  br i1 %24, label %while.body.26, label %while.end

while.body.26:                                    ; preds = %land.end
  br label %while.cond.16

while.end:                                        ; preds = %land.end
  %25 = load i8*, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  %conv27 = sext i8 %26 to i32
  %cmp28 = icmp eq i32 %conv27, 125
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %while.end
  br label %for.end

if.end.31:                                        ; preds = %while.end
  %27 = load i8*, i8** %p, align 8
  %28 = load i8, i8* %27, align 1
  %conv32 = sext i8 %28 to i32
  %cmp33 = icmp eq i32 %conv32, 124
  br i1 %cmp33, label %if.then.35, label %if.end.37

if.then.35:                                       ; preds = %if.end.31
  %29 = load i8*, i8** %p, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr36, i8** %p, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.35, %if.end.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.30, %for.cond
  %31 = load i8*, i8** %p, align 8
  %32 = load i8, i8* %31, align 1
  %conv38 = sext i8 %32 to i32
  %cmp39 = icmp eq i32 %conv38, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.end
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %for.end
  br label %sw.epilog

sw.bb.43:                                         ; preds = %while.body
  %33 = load i32, i32* %dialect, align 4
  %tobool44 = icmp ne i32 %33, 0
  br i1 %tobool44, label %if.then.45, label %if.else.55

if.then.45:                                       ; preds = %sw.bb.43
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.45
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %conv46 = sext i8 %35 to i32
  %cmp47 = icmp eq i32 %conv46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %do.body
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.30, i32 0, i32 0))
  br label %do.end

if.end.50:                                        ; preds = %do.body
  br label %do.cond

do.cond:                                          ; preds = %if.end.50
  %36 = load i8*, i8** %p, align 8
  %incdec.ptr51 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %incdec.ptr51, i8** %p, align 8
  %37 = load i8, i8* %36, align 1
  %conv52 = sext i8 %37 to i32
  %cmp53 = icmp ne i32 %conv52, 125
  br i1 %cmp53, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond, %if.then.49
  store i32 0, i32* %dialect, align 4
  br label %if.end.57

if.else.55:                                       ; preds = %sw.bb.43
  %38 = load i32, i32* %c, align 4
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call56 = call i32 @_IO_putc(i32 %38, %struct._IO_FILE* %39)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.55, %do.end
  br label %sw.epilog

sw.bb.58:                                         ; preds = %while.body
  %40 = load i32, i32* %dialect, align 4
  %tobool59 = icmp ne i32 %40, 0
  br i1 %tobool59, label %if.end.62, label %if.then.60

if.then.60:                                       ; preds = %sw.bb.58
  %41 = load i32, i32* %c, align 4
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call61 = call i32 @_IO_putc(i32 %41, %struct._IO_FILE* %42)
  br label %if.end.62

if.end.62:                                        ; preds = %if.then.60, %sw.bb.58
  store i32 0, i32* %dialect, align 4
  br label %sw.epilog

sw.bb.63:                                         ; preds = %while.body
  %43 = load i8*, i8** %p, align 8
  %44 = load i8, i8* %43, align 1
  %conv64 = sext i8 %44 to i32
  %cmp65 = icmp eq i32 %conv64, 37
  br i1 %cmp65, label %if.then.67, label %if.else.70

if.then.67:                                       ; preds = %sw.bb.63
  %45 = load i8*, i8** %p, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %incdec.ptr68, i8** %p, align 8
  %46 = load i32, i32* %c, align 4
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call69 = call i32 @_IO_putc(i32 %46, %struct._IO_FILE* %47)
  br label %if.end.266

if.else.70:                                       ; preds = %sw.bb.63
  %48 = load i8*, i8** %p, align 8
  %49 = load i8, i8* %48, align 1
  %conv71 = sext i8 %49 to i32
  %cmp72 = icmp eq i32 %conv71, 61
  br i1 %cmp72, label %if.then.74, label %if.else.77

if.then.74:                                       ; preds = %if.else.70
  %50 = load i8*, i8** %p, align 8
  %incdec.ptr75 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %incdec.ptr75, i8** %p, align 8
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %52 = load i32, i32* @insn_counter, align 4
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i32 %52)
  br label %if.end.265

if.else.77:                                       ; preds = %if.else.70
  %53 = load i8*, i8** %p, align 8
  %54 = load i8, i8* %53, align 1
  %conv78 = sext i8 %54 to i32
  %and = and i32 %conv78, 255
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %55 = load i16, i16* %arrayidx, align 2
  %conv79 = zext i16 %55 to i32
  %and80 = and i32 %conv79, 136
  %tobool81 = icmp ne i32 %and80, 0
  br i1 %tobool81, label %if.then.82, label %if.else.207

if.then.82:                                       ; preds = %if.else.77
  %56 = load i8*, i8** %p, align 8
  %incdec.ptr83 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr83, i8** %p, align 8
  %57 = load i8, i8* %56, align 1
  %conv84 = sext i8 %57 to i32
  store i32 %conv84, i32* %letter, align 4
  %58 = load i8*, i8** %p, align 8
  %call85 = call i32 @atoi(i8* %58) #7
  store i32 %call85, i32* %c, align 4
  %59 = load i8*, i8** %p, align 8
  %60 = load i8, i8* %59, align 1
  %conv86 = sext i8 %60 to i32
  %and87 = and i32 %conv86, 255
  %idxprom88 = sext i32 %and87 to i64
  %arrayidx89 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom88
  %61 = load i16, i16* %arrayidx89, align 2
  %conv90 = zext i16 %61 to i32
  %and91 = and i32 %conv90, 4
  %tobool92 = icmp ne i32 %and91, 0
  br i1 %tobool92, label %if.else.94, label %if.then.93

if.then.93:                                       ; preds = %if.then.82
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.32, i32 0, i32 0))
  br label %if.end.185

if.else.94:                                       ; preds = %if.then.82
  %62 = load %struct.rtx_def*, %struct.rtx_def** @this_is_asm_operands, align 8
  %tobool95 = icmp ne %struct.rtx_def* %62, null
  br i1 %tobool95, label %land.lhs.true.96, label %if.else.102

land.lhs.true.96:                                 ; preds = %if.else.94
  %63 = load i32, i32* %c, align 4
  %cmp97 = icmp slt i32 %63, 0
  br i1 %cmp97, label %if.then.101, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.96
  %64 = load i32, i32* %c, align 4
  %65 = load i32, i32* @insn_noperands, align 4
  %cmp99 = icmp uge i32 %64, %65
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %lor.lhs.false, %land.lhs.true.96
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.184

if.else.102:                                      ; preds = %lor.lhs.false, %if.else.94
  %66 = load i32, i32* %letter, align 4
  %cmp103 = icmp eq i32 %66, 108
  br i1 %cmp103, label %if.then.105, label %if.else.108

if.then.105:                                      ; preds = %if.else.102
  %67 = load i32, i32* %c, align 4
  %idxprom106 = sext i32 %67 to i64
  %68 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx107 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %68, i64 %idxprom106
  %69 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx107, align 8
  call void @output_asm_label(%struct.rtx_def* %69)
  br label %if.end.183

if.else.108:                                      ; preds = %if.else.102
  %70 = load i32, i32* %letter, align 4
  %cmp109 = icmp eq i32 %70, 97
  br i1 %cmp109, label %if.then.111, label %if.else.114

if.then.111:                                      ; preds = %if.else.108
  %71 = load i32, i32* %c, align 4
  %idxprom112 = sext i32 %71 to i64
  %72 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx113 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %72, i64 %idxprom112
  %73 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx113, align 8
  call void @output_address(%struct.rtx_def* %73)
  br label %if.end.182

if.else.114:                                      ; preds = %if.else.108
  %74 = load i32, i32* %letter, align 4
  %cmp115 = icmp eq i32 %74, 99
  br i1 %cmp115, label %if.then.117, label %if.else.157

if.then.117:                                      ; preds = %if.else.114
  %75 = load i32, i32* %c, align 4
  %idxprom118 = sext i32 %75 to i64
  %76 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx119 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %76, i64 %idxprom118
  %77 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx119, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load = load i32, i32* %78, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp120 = icmp eq i32 %bf.clear, 67
  br i1 %cmp120, label %if.then.150, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %if.then.117
  %79 = load i32, i32* %c, align 4
  %idxprom123 = sext i32 %79 to i64
  %80 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx124 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %80, i64 %idxprom123
  %81 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx124, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load125 = load i32, i32* %82, align 8
  %bf.clear126 = and i32 %bf.load125, 65535
  %cmp127 = icmp eq i32 %bf.clear126, 68
  br i1 %cmp127, label %if.then.150, label %lor.lhs.false.129

lor.lhs.false.129:                                ; preds = %lor.lhs.false.122
  %83 = load i32, i32* %c, align 4
  %idxprom130 = sext i32 %83 to i64
  %84 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx131 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %84, i64 %idxprom130
  %85 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx131, align 8
  %86 = bitcast %struct.rtx_def* %85 to i32*
  %bf.load132 = load i32, i32* %86, align 8
  %bf.clear133 = and i32 %bf.load132, 65535
  %cmp134 = icmp eq i32 %bf.clear133, 54
  br i1 %cmp134, label %if.then.150, label %lor.lhs.false.136

lor.lhs.false.136:                                ; preds = %lor.lhs.false.129
  %87 = load i32, i32* %c, align 4
  %idxprom137 = sext i32 %87 to i64
  %88 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx138 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %88, i64 %idxprom137
  %89 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx138, align 8
  %90 = bitcast %struct.rtx_def* %89 to i32*
  %bf.load139 = load i32, i32* %90, align 8
  %bf.clear140 = and i32 %bf.load139, 65535
  %cmp141 = icmp eq i32 %bf.clear140, 58
  br i1 %cmp141, label %if.then.150, label %lor.lhs.false.143

lor.lhs.false.143:                                ; preds = %lor.lhs.false.136
  %91 = load i32, i32* %c, align 4
  %idxprom144 = sext i32 %91 to i64
  %92 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx145 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %92, i64 %idxprom144
  %93 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx145, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load146 = load i32, i32* %94, align 8
  %bf.clear147 = and i32 %bf.load146, 65535
  %cmp148 = icmp eq i32 %bf.clear147, 55
  br i1 %cmp148, label %if.then.150, label %if.else.153

if.then.150:                                      ; preds = %lor.lhs.false.143, %lor.lhs.false.136, %lor.lhs.false.129, %lor.lhs.false.122, %if.then.117
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %96 = load i32, i32* %c, align 4
  %idxprom151 = sext i32 %96 to i64
  %97 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx152 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %97, i64 %idxprom151
  %98 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx152, align 8
  call void @output_addr_const(%struct._IO_FILE* %95, %struct.rtx_def* %98)
  br label %if.end.156

if.else.153:                                      ; preds = %lor.lhs.false.143
  %99 = load i32, i32* %c, align 4
  %idxprom154 = sext i32 %99 to i64
  %100 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx155 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %100, i64 %idxprom154
  %101 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx155, align 8
  call void @output_operand(%struct.rtx_def* %101, i32 99)
  br label %if.end.156

if.end.156:                                       ; preds = %if.else.153, %if.then.150
  br label %if.end.181

if.else.157:                                      ; preds = %if.else.114
  %102 = load i32, i32* %letter, align 4
  %cmp158 = icmp eq i32 %102, 110
  br i1 %cmp158, label %if.then.160, label %if.else.177

if.then.160:                                      ; preds = %if.else.157
  %103 = load i32, i32* %c, align 4
  %idxprom161 = sext i32 %103 to i64
  %104 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx162 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %104, i64 %idxprom161
  %105 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx162, align 8
  %106 = bitcast %struct.rtx_def* %105 to i32*
  %bf.load163 = load i32, i32* %106, align 8
  %bf.clear164 = and i32 %bf.load163, 65535
  %cmp165 = icmp eq i32 %bf.clear164, 54
  br i1 %cmp165, label %if.then.167, label %if.else.172

if.then.167:                                      ; preds = %if.then.160
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %108 = load i32, i32* %c, align 4
  %idxprom168 = sext i32 %108 to i64
  %109 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx169 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %109, i64 %idxprom168
  %110 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx169, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx170 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx170 to i64*
  %111 = load i64, i64* %rtwint, align 8
  %sub = sub nsw i64 0, %111
  %call171 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i64 %sub)
  br label %if.end.176

if.else.172:                                      ; preds = %if.then.160
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call173 = call i32 @_IO_putc(i32 45, %struct._IO_FILE* %112)
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %114 = load i32, i32* %c, align 4
  %idxprom174 = sext i32 %114 to i64
  %115 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx175 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %115, i64 %idxprom174
  %116 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx175, align 8
  call void @output_addr_const(%struct._IO_FILE* %113, %struct.rtx_def* %116)
  br label %if.end.176

if.end.176:                                       ; preds = %if.else.172, %if.then.167
  br label %if.end.180

if.else.177:                                      ; preds = %if.else.157
  %117 = load i32, i32* %c, align 4
  %idxprom178 = sext i32 %117 to i64
  %118 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx179 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %118, i64 %idxprom178
  %119 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx179, align 8
  %120 = load i32, i32* %letter, align 4
  call void @output_operand(%struct.rtx_def* %119, i32 %120)
  br label %if.end.180

if.end.180:                                       ; preds = %if.else.177, %if.end.176
  br label %if.end.181

if.end.181:                                       ; preds = %if.end.180, %if.end.156
  br label %if.end.182

if.end.182:                                       ; preds = %if.end.181, %if.then.111
  br label %if.end.183

if.end.183:                                       ; preds = %if.end.182, %if.then.105
  br label %if.end.184

if.end.184:                                       ; preds = %if.end.183, %if.then.101
  br label %if.end.185

if.end.185:                                       ; preds = %if.end.184, %if.then.93
  %121 = load i32, i32* %c, align 4
  %idxprom186 = sext i32 %121 to i64
  %arrayidx187 = getelementptr inbounds [30 x i8], [30 x i8]* %opoutput, i32 0, i64 %idxprom186
  %122 = load i8, i8* %arrayidx187, align 1
  %tobool188 = icmp ne i8 %122, 0
  br i1 %tobool188, label %if.end.193, label %if.then.189

if.then.189:                                      ; preds = %if.end.185
  %123 = load i32, i32* %c, align 4
  %124 = load i32, i32* %ops, align 4
  %inc190 = add nsw i32 %124, 1
  store i32 %inc190, i32* %ops, align 4
  %idxprom191 = sext i32 %124 to i64
  %arrayidx192 = getelementptr inbounds [30 x i32], [30 x i32]* %oporder, i32 0, i64 %idxprom191
  store i32 %123, i32* %arrayidx192, align 4
  br label %if.end.193

if.end.193:                                       ; preds = %if.then.189, %if.end.185
  %125 = load i32, i32* %c, align 4
  %idxprom194 = sext i32 %125 to i64
  %arrayidx195 = getelementptr inbounds [30 x i8], [30 x i8]* %opoutput, i32 0, i64 %idxprom194
  store i8 1, i8* %arrayidx195, align 1
  br label %while.cond.196

while.cond.196:                                   ; preds = %while.body.204, %if.end.193
  %126 = load i8*, i8** %p, align 8
  %127 = load i8, i8* %126, align 1
  %conv197 = sext i8 %127 to i32
  store i32 %conv197, i32* %c, align 4
  %and198 = and i32 %conv197, 255
  %idxprom199 = sext i32 %and198 to i64
  %arrayidx200 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom199
  %128 = load i16, i16* %arrayidx200, align 2
  %conv201 = zext i16 %128 to i32
  %and202 = and i32 %conv201, 4
  %tobool203 = icmp ne i32 %and202, 0
  br i1 %tobool203, label %while.body.204, label %while.end.206

while.body.204:                                   ; preds = %while.cond.196
  %129 = load i8*, i8** %p, align 8
  %incdec.ptr205 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %incdec.ptr205, i8** %p, align 8
  br label %while.cond.196

while.end.206:                                    ; preds = %while.cond.196
  br label %if.end.264

if.else.207:                                      ; preds = %if.else.77
  %130 = load i8*, i8** %p, align 8
  %131 = load i8, i8* %130, align 1
  %conv208 = sext i8 %131 to i32
  %and209 = and i32 %conv208, 255
  %idxprom210 = sext i32 %and209 to i64
  %arrayidx211 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom210
  %132 = load i16, i16* %arrayidx211, align 2
  %conv212 = zext i16 %132 to i32
  %and213 = and i32 %conv212, 4
  %tobool214 = icmp ne i32 %and213, 0
  br i1 %tobool214, label %if.then.215, label %if.else.250

if.then.215:                                      ; preds = %if.else.207
  %133 = load i8*, i8** %p, align 8
  %call216 = call i32 @atoi(i8* %133) #7
  store i32 %call216, i32* %c, align 4
  %134 = load %struct.rtx_def*, %struct.rtx_def** @this_is_asm_operands, align 8
  %tobool217 = icmp ne %struct.rtx_def* %134, null
  br i1 %tobool217, label %land.lhs.true.218, label %if.else.225

land.lhs.true.218:                                ; preds = %if.then.215
  %135 = load i32, i32* %c, align 4
  %cmp219 = icmp slt i32 %135, 0
  br i1 %cmp219, label %if.then.224, label %lor.lhs.false.221

lor.lhs.false.221:                                ; preds = %land.lhs.true.218
  %136 = load i32, i32* %c, align 4
  %137 = load i32, i32* @insn_noperands, align 4
  %cmp222 = icmp uge i32 %136, %137
  br i1 %cmp222, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %lor.lhs.false.221, %land.lhs.true.218
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0))
  br label %if.end.228

if.else.225:                                      ; preds = %lor.lhs.false.221, %if.then.215
  %138 = load i32, i32* %c, align 4
  %idxprom226 = sext i32 %138 to i64
  %139 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx227 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %139, i64 %idxprom226
  %140 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx227, align 8
  call void @output_operand(%struct.rtx_def* %140, i32 0)
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.225, %if.then.224
  %141 = load i32, i32* %c, align 4
  %idxprom229 = sext i32 %141 to i64
  %arrayidx230 = getelementptr inbounds [30 x i8], [30 x i8]* %opoutput, i32 0, i64 %idxprom229
  %142 = load i8, i8* %arrayidx230, align 1
  %tobool231 = icmp ne i8 %142, 0
  br i1 %tobool231, label %if.end.236, label %if.then.232

if.then.232:                                      ; preds = %if.end.228
  %143 = load i32, i32* %c, align 4
  %144 = load i32, i32* %ops, align 4
  %inc233 = add nsw i32 %144, 1
  store i32 %inc233, i32* %ops, align 4
  %idxprom234 = sext i32 %144 to i64
  %arrayidx235 = getelementptr inbounds [30 x i32], [30 x i32]* %oporder, i32 0, i64 %idxprom234
  store i32 %143, i32* %arrayidx235, align 4
  br label %if.end.236

if.end.236:                                       ; preds = %if.then.232, %if.end.228
  %145 = load i32, i32* %c, align 4
  %idxprom237 = sext i32 %145 to i64
  %arrayidx238 = getelementptr inbounds [30 x i8], [30 x i8]* %opoutput, i32 0, i64 %idxprom237
  store i8 1, i8* %arrayidx238, align 1
  br label %while.cond.239

while.cond.239:                                   ; preds = %while.body.247, %if.end.236
  %146 = load i8*, i8** %p, align 8
  %147 = load i8, i8* %146, align 1
  %conv240 = sext i8 %147 to i32
  store i32 %conv240, i32* %c, align 4
  %and241 = and i32 %conv240, 255
  %idxprom242 = sext i32 %and241 to i64
  %arrayidx243 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom242
  %148 = load i16, i16* %arrayidx243, align 2
  %conv244 = zext i16 %148 to i32
  %and245 = and i32 %conv244, 4
  %tobool246 = icmp ne i32 %and245, 0
  br i1 %tobool246, label %while.body.247, label %while.end.249

while.body.247:                                   ; preds = %while.cond.239
  %149 = load i8*, i8** %p, align 8
  %incdec.ptr248 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %incdec.ptr248, i8** %p, align 8
  br label %while.cond.239

while.end.249:                                    ; preds = %while.cond.239
  br label %if.end.263

if.else.250:                                      ; preds = %if.else.207
  %150 = load i8*, i8** %p, align 8
  %151 = load i8, i8* %150, align 1
  %conv251 = zext i8 %151 to i32
  %cmp252 = icmp eq i32 %conv251, 42
  br i1 %cmp252, label %if.then.258, label %lor.lhs.false.254

lor.lhs.false.254:                                ; preds = %if.else.250
  %152 = load i8*, i8** %p, align 8
  %153 = load i8, i8* %152, align 1
  %conv255 = zext i8 %153 to i32
  %cmp256 = icmp eq i32 %conv255, 43
  br i1 %cmp256, label %if.then.258, label %if.else.261

if.then.258:                                      ; preds = %lor.lhs.false.254, %if.else.250
  %154 = load i8*, i8** %p, align 8
  %incdec.ptr259 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr259, i8** %p, align 8
  %155 = load i8, i8* %154, align 1
  %conv260 = sext i8 %155 to i32
  call void @output_operand(%struct.rtx_def* null, i32 %conv260)
  br label %if.end.262

if.else.261:                                      ; preds = %lor.lhs.false.254
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i32 0, i32 0))
  br label %if.end.262

if.end.262:                                       ; preds = %if.else.261, %if.then.258
  br label %if.end.263

if.end.263:                                       ; preds = %if.end.262, %while.end.249
  br label %if.end.264

if.end.264:                                       ; preds = %if.end.263, %while.end.206
  br label %if.end.265

if.end.265:                                       ; preds = %if.end.264, %if.then.74
  br label %if.end.266

if.end.266:                                       ; preds = %if.end.265, %if.then.67
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  %156 = load i32, i32* %c, align 4
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call267 = call i32 @_IO_putc(i32 %156, %struct._IO_FILE* %157)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.266, %if.end.62, %if.end.57, %if.end.42, %if.end.8
  br label %while.cond

while.end.268:                                    ; preds = %while.cond
  %158 = load i32, i32* @flag_verbose_asm, align 4
  %tobool269 = icmp ne i32 %158, 0
  br i1 %tobool269, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %while.end.268
  %159 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arraydecay271 = getelementptr inbounds [30 x i32], [30 x i32]* %oporder, i32 0, i32 0
  %160 = load i32, i32* %ops, align 4
  call void @output_asm_operand_names(%struct.rtx_def** %159, i32* %arraydecay271, i32 %160)
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %while.end.268
  %161 = load i32, i32* @flag_print_asm_name, align 4
  %tobool273 = icmp ne i32 %161, 0
  br i1 %tobool273, label %if.then.274, label %if.end.275

if.then.274:                                      ; preds = %if.end.272
  call void @output_asm_name()
  br label %if.end.275

if.end.275:                                       ; preds = %if.then.274, %if.end.272
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %call276 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %162)
  br label %return

return:                                           ; preds = %if.end.275, %if.then
  ret void
}

declare i32 @recog_memoized_1(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @cleanup_subreg_operands(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @extract_insn_cached(%struct.rtx_def* %0)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %2 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 7), align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp slt i32 %1, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp eq i32 %bf.clear, 63
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %7 to i64
  %arrayidx5 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom4
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx5, align 8
  %call = call %struct.rtx_def* @alter_subreg(%struct.rtx_def** %8)
  %9 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %9 to i64
  %arrayidx7 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom6
  store %struct.rtx_def* %call, %struct.rtx_def** %arrayidx7, align 8
  br label %if.end.33

if.else:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx9, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load10 = load i32, i32* %12, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 75
  br i1 %cmp12, label %if.then.27, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %13 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom14
  %14 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx15, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load16 = load i32, i32* %15, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 78
  br i1 %cmp18, label %if.then.27, label %lor.lhs.false.20

lor.lhs.false.20:                                 ; preds = %lor.lhs.false
  %16 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom21
  %17 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx22, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load23 = load i32, i32* %18, align 8
  %bf.clear24 = and i32 %bf.load23, 65535
  %cmp25 = icmp eq i32 %bf.clear24, 66
  br i1 %cmp25, label %if.then.27, label %if.end

if.then.27:                                       ; preds = %lor.lhs.false.20, %lor.lhs.false, %if.else
  %19 = load i32, i32* %i, align 4
  %idxprom28 = sext i32 %19 to i64
  %arrayidx29 = getelementptr inbounds [30 x %struct.rtx_def**], [30 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 1), i32 0, i64 %idxprom28
  %20 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx29, align 8
  %call30 = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %20)
  %21 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %21 to i64
  %arrayidx32 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 0), i32 0, i64 %idxprom31
  store %struct.rtx_def* %call30, %struct.rtx_def** %arrayidx32, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.27, %lor.lhs.false.20
  br label %if.end.33

if.end.33:                                        ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.33
  %22 = load i32, i32* %i, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond.34

for.cond.34:                                      ; preds = %for.inc.80, %for.end
  %23 = load i32, i32* %i, align 4
  %24 = load i8, i8* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 8), align 1
  %conv35 = sext i8 %24 to i32
  %cmp36 = icmp slt i32 %23, %conv35
  br i1 %cmp36, label %for.body.38, label %for.end.82

for.body.38:                                      ; preds = %for.cond.34
  %25 = load i32, i32* %i, align 4
  %idxprom39 = sext i32 %25 to i64
  %arrayidx40 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom39
  %26 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx40, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %26, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load41 = load i32, i32* %28, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 63
  br i1 %cmp43, label %if.then.45, label %if.else.51

if.then.45:                                       ; preds = %for.body.38
  %29 = load i32, i32* %i, align 4
  %idxprom46 = sext i32 %29 to i64
  %arrayidx47 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom46
  %30 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx47, align 8
  %call48 = call %struct.rtx_def* @alter_subreg(%struct.rtx_def** %30)
  %31 = load i32, i32* %i, align 4
  %idxprom49 = sext i32 %31 to i64
  %arrayidx50 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom49
  %32 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx50, align 8
  store %struct.rtx_def* %call48, %struct.rtx_def** %32, align 8
  br label %if.end.79

if.else.51:                                       ; preds = %for.body.38
  %33 = load i32, i32* %i, align 4
  %idxprom52 = sext i32 %33 to i64
  %arrayidx53 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom52
  %34 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx53, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load54 = load i32, i32* %36, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %cmp56 = icmp eq i32 %bf.clear55, 75
  br i1 %cmp56, label %if.then.72, label %lor.lhs.false.58

lor.lhs.false.58:                                 ; preds = %if.else.51
  %37 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %37 to i64
  %arrayidx60 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom59
  %38 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx60, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %38, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load61 = load i32, i32* %40, align 8
  %bf.clear62 = and i32 %bf.load61, 65535
  %cmp63 = icmp eq i32 %bf.clear62, 78
  br i1 %cmp63, label %if.then.72, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %lor.lhs.false.58
  %41 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %41 to i64
  %arrayidx67 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom66
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx67, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %42, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load68 = load i32, i32* %44, align 8
  %bf.clear69 = and i32 %bf.load68, 65535
  %cmp70 = icmp eq i32 %bf.clear69, 66
  br i1 %cmp70, label %if.then.72, label %if.end.78

if.then.72:                                       ; preds = %lor.lhs.false.65, %lor.lhs.false.58, %if.else.51
  %45 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %45 to i64
  %arrayidx74 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom73
  %46 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx74, align 8
  %call75 = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %46)
  %47 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %47 to i64
  %arrayidx77 = getelementptr inbounds [4 x %struct.rtx_def**], [4 x %struct.rtx_def**]* getelementptr inbounds (%struct.recog_data, %struct.recog_data* @recog_data, i32 0, i32 5), i32 0, i64 %idxprom76
  %48 = load %struct.rtx_def**, %struct.rtx_def*** %arrayidx77, align 8
  store %struct.rtx_def* %call75, %struct.rtx_def** %48, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.72, %lor.lhs.false.65
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78, %if.then.45
  br label %for.inc.80

for.inc.80:                                       ; preds = %if.end.79
  %49 = load i32, i32* %i, align 4
  %inc81 = add nsw i32 %49, 1
  store i32 %inc81, i32* %i, align 4
  br label %for.cond.34

for.end.82:                                       ; preds = %for.cond.34
  ret void
}

declare i32 @print_rtl_single(%struct._IO_FILE*, %struct.rtx_def*) #1

declare i32 @constrain_operands_cached(i32) #1

; Function Attrs: noreturn
declare void @_fatal_insn_not_found(%struct.rtx_def*, i8*, i32, i8*) #2

declare %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare %struct.rtx_def* @try_split(%struct.rtx_def*, %struct.rtx_def*, i32) #1

; Function Attrs: noreturn
declare void @_fatal_insn(i8*, %struct.rtx_def*, i8*, i32, i8*) #2

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare void @assemble_vtable_entry(%struct.rtx_def*, i64) #1

declare void @extract_insn_cached(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @alter_subreg(%struct.rtx_def** %xp) #0 {
entry:
  %xp.addr = alloca %struct.rtx_def**, align 8
  %x = alloca %struct.rtx_def*, align 8
  %y = alloca %struct.rtx_def*, align 8
  %new = alloca %struct.rtx_def*, align 8
  %regno = alloca i32, align 4
  store %struct.rtx_def** %xp, %struct.rtx_def*** %xp.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %xp.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %y, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load1 = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %10 = load i32, i32* %rtuint, align 4
  %conv = zext i32 %10 to i64
  %call = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %6, i32 %bf.clear2, i64 %conv, i32 1, i32 1)
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %xp.addr, align 8
  store %struct.rtx_def* %call, %struct.rtx_def** %11, align 8
  br label %if.end.40

if.else:                                          ; preds = %entry
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load5 = load i32, i32* %13, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 16
  %bf.clear7 = and i32 %bf.lshr6, 255
  %14 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load8 = load i32, i32* %16, align 8
  %bf.lshr9 = lshr i32 %bf.load8, 16
  %bf.clear10 = and i32 %bf.lshr9, 255
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 1
  %rtuint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %18 = load i32, i32* %rtuint13, align 4
  %call14 = call %struct.rtx_def* @simplify_subreg(i32 %bf.clear7, %struct.rtx_def* %14, i32 %bf.clear10, i32 %18)
  store %struct.rtx_def* %call14, %struct.rtx_def** %new, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %cmp15 = icmp ne %struct.rtx_def* %19, null
  br i1 %cmp15, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.else
  %20 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %21 = load %struct.rtx_def**, %struct.rtx_def*** %xp.addr, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %21, align 8
  br label %if.end.39

if.else.18:                                       ; preds = %if.else
  %22 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load19 = load i32, i32* %23, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 61
  br i1 %cmp21, label %if.then.23, label %if.else.38

if.then.23:                                       ; preds = %if.else.18
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call24 = call i32 @subreg_hard_regno(%struct.rtx_def* %24, i32 1)
  store i32 %call24, i32* %regno, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %26 = bitcast %struct.rtx_def* %25 to i32*
  %bf.load25 = load i32, i32* %26, align 8
  %bf.clear26 = and i32 %bf.load25, -65536
  %bf.set = or i32 %bf.clear26, 61
  store i32 %bf.set, i32* %26, align 8
  %27 = load i32, i32* %regno, align 4
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtuint29 = bitcast %union.rtunion_def* %arrayidx28 to i32*
  store i32 %27, i32* %rtuint29, align 4
  %29 = load %struct.rtx_def*, %struct.rtx_def** %y, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 1
  %rtuint32 = bitcast %union.rtunion_def* %arrayidx31 to i32*
  %30 = load i32, i32* %rtuint32, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 1
  %rtuint35 = bitcast %union.rtunion_def* %arrayidx34 to i32*
  store i32 %30, i32* %rtuint35, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load36 = load i32, i32* %33, align 8
  %bf.clear37 = and i32 %bf.load36, -536870913
  store i32 %bf.clear37, i32* %33, align 8
  br label %if.end

if.else.38:                                       ; preds = %if.else.18
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 2761, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.alter_subreg, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then.23
  br label %if.end.39

if.end.39:                                        ; preds = %if.end, %if.then.17
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.then
  %34 = load %struct.rtx_def**, %struct.rtx_def*** %xp.addr, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %34, align 8
  ret %struct.rtx_def* %35
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %xp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %xp.addr = alloca %struct.rtx_def**, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %xp, %struct.rtx_def*** %xp.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %xp.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 75, label %sw.bb
    i32 78, label %sw.bb
    i32 66, label %sw.bb.11
    i32 63, label %sw.bb.19
  ]

sw.bb:                                            ; preds = %entry, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %call = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %rtx)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  store %struct.rtx_def* %call, %struct.rtx_def** %rtx3, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %call7 = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %rtx6)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 1
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  store %struct.rtx_def* %call7, %struct.rtx_def** %rtx10, align 8
  br label %sw.epilog

sw.bb.11:                                         ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %call15 = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %rtx14)
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 0
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  store %struct.rtx_def* %call15, %struct.rtx_def** %rtx18, align 8
  br label %sw.epilog

sw.bb.19:                                         ; preds = %entry
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %xp.addr, align 8
  %call20 = call %struct.rtx_def* @alter_subreg(%struct.rtx_def** %10)
  store %struct.rtx_def* %call20, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.11, %sw.bb
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %xp.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %11, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb.19
  %13 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %13
}

declare %struct.rtx_def* @adjust_address_1(%struct.rtx_def*, i32, i64, i32, i32) #1

declare %struct.rtx_def* @simplify_subreg(i32, %struct.rtx_def*, i32, i32) #1

declare i32 @subreg_hard_regno(%struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define void @output_operand_lossage(i8* %msgid, ...) #0 {
entry:
  %msgid.addr = alloca i8*, align 8
  %fmt_string = alloca i8*, align 8
  %new_message = alloca i8*, align 8
  %pfx_str = alloca i8*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %msgid, i8** %msgid.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load %struct.rtx_def*, %struct.rtx_def** @this_is_asm_operands, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  %cond = select i1 %tobool, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0)
  store i8* %cond, i8** %pfx_str, align 8
  %1 = load i8*, i8** %pfx_str, align 8
  %2 = load i8*, i8** %msgid.addr, align 8
  %call = call i32 (i8**, i8*, ...) @asprintf(i8** %fmt_string, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), i8* %1, i8* %2) #5
  %3 = load i8*, i8** %fmt_string, align 8
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %call3 = call i32 @vasprintf(i8** %new_message, i8* %3, %struct.__va_list_tag* %arraydecay2) #5
  %4 = load %struct.rtx_def*, %struct.rtx_def** @this_is_asm_operands, align 8
  %tobool4 = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** @this_is_asm_operands, align 8
  %6 = load i8*, i8** %new_message, align 8
  call void (%struct.rtx_def*, i8*, ...) @error_for_asm(%struct.rtx_def* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %6)
  br label %if.end

if.else:                                          ; preds = %entry
  %7 = load i8*, i8** %new_message, align 8
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* %7) #6
  unreachable

if.end:                                           ; preds = %if.then
  %8 = load i8*, i8** %fmt_string, align 8
  call void @free(i8* %8) #5
  %9 = load i8*, i8** %new_message, align 8
  call void @free(i8* %9) #5
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: nounwind
declare i32 @asprintf(i8**, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @vasprintf(i8**, i8*, %struct.__va_list_tag*) #3

declare void @error_for_asm(%struct.rtx_def*, i8*, ...) #1

; Function Attrs: noreturn
declare void @internal_error(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define internal void @output_asm_operand_names(%struct.rtx_def** %operands, i32* %oporder, i32 %nops) #0 {
entry:
  %operands.addr = alloca %struct.rtx_def**, align 8
  %oporder.addr = alloca i32*, align 8
  %nops.addr = alloca i32, align 4
  %wrote = alloca i32, align 4
  %i = alloca i32, align 4
  %addressp = alloca i32, align 4
  %expr = alloca %union.tree_node*, align 8
  store %struct.rtx_def** %operands, %struct.rtx_def*** %operands.addr, align 8
  store i32* %oporder, i32** %oporder.addr, align 8
  store i32 %nops, i32* %nops.addr, align 4
  store i32 0, i32* %wrote, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load i32, i32* %nops.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** %oporder.addr, align 8
  %arrayidx = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %operands.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %5, i64 %idxprom1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx2, align 8
  %call = call %union.tree_node* @get_mem_expr_from_op(%struct.rtx_def* %6, i32* %addressp)
  store %union.tree_node* %call, %union.tree_node** %expr, align 8
  %7 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %tobool = icmp ne %union.tree_node* %7, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %9 = load i32, i32* %wrote, align 4
  %tobool3 = icmp ne i32 %9, 0
  %cond = select i1 %tobool3, i32 44, i32 9
  %10 = load i32, i32* %wrote, align 4
  %tobool4 = icmp ne i32 %10, 0
  %cond5 = select i1 %tobool4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0)
  %11 = load i32, i32* %addressp, align 4
  %tobool6 = icmp ne i32 %11, 0
  %cond7 = select i1 %tobool6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i32 0, i32 0)
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 %cond, i8* %cond5, i8* %cond7)
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %13 = load %union.tree_node*, %union.tree_node** %expr, align 8
  call void @print_mem_expr(%struct._IO_FILE* %12, %union.tree_node* %13)
  store i32 1, i32* %wrote, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_asm_name() #0 {
entry:
  %num = alloca i32, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** @debug_insn, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** @debug_insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %2 = load i32, i32* %rtint, align 4
  store i32 %2, i32* %num, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** @debug_insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %5 = load i32, i32* %rtint3, align 4
  %6 = load i32, i32* %num, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx4 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx4, i32 0, i32 0
  %7 = load i8*, i8** %name, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i32 %5, i8* %7)
  %8 = load i32, i32* %num, align 4
  %idxprom5 = sext i32 %8 to i64
  %arrayidx6 = getelementptr inbounds [0 x %struct.insn_data], [0 x %struct.insn_data]* @insn_data, i32 0, i64 %idxprom5
  %n_alternatives = getelementptr inbounds %struct.insn_data, %struct.insn_data* %arrayidx6, i32 0, i32 6
  %9 = load i8, i8* %n_alternatives, align 1
  %conv = sext i8 %9 to i32
  %cmp = icmp sgt i32 %conv, 1
  br i1 %cmp, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %11 = load i32, i32* @which_alternative, align 4
  %add = add nsw i32 %11, 1
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0), i32 %add)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** @debug_insn, align 8
  %call10 = call i32 @get_attr_length(%struct.rtx_def* %13)
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.54, i32 0, i32 0), i32 %call10)
  store %struct.rtx_def* null, %struct.rtx_def** @debug_insn, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #4

; Function Attrs: nounwind uwtable
define void @output_asm_label(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %buf = alloca [256 x i8], align 16
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 67
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 36
  br i1 %cmp3, label %if.then.10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load4 = load i32, i32* %7, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 37
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %9 = load i32, i32* %rtint, align 4
  %cmp9 = icmp eq i32 %9, -88
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %land.lhs.true, %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.10
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 5
  %rtint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %11 = load i32, i32* %rtint13, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 %11) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.14

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i32 0, i32 0))
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %do.end
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %arraydecay15 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %12, i8* %arraydecay15)
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_address(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @walk_alter_subreg(%struct.rtx_def** %x.addr)
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  call void @print_operand_address(%struct._IO_FILE* %0, %struct.rtx_def* %1)
  ret void
}

; Function Attrs: nounwind uwtable
define void @output_addr_const(%struct._IO_FILE* %file, %struct.rtx_def* %x) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %buf = alloca [256 x i8], align 16
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  br label %restart

restart:                                          ; preds = %if.then.102, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 59, label %sw.bb
    i32 68, label %sw.bb.1
    i32 67, label %sw.bb.2
    i32 36, label %sw.bb.5
    i32 54, label %sw.bb.10
    i32 58, label %sw.bb.14
    i32 55, label %sw.bb.18
    i32 75, label %sw.bb.49
    i32 76, label %sw.bb.97
    i32 121, label %sw.bb.146
    i32 120, label %sw.bb.146
    i32 63, label %sw.bb.146
  ]

sw.bb:                                            ; preds = %restart
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 @_IO_putc(i32 46, %struct._IO_FILE* %2)
  br label %sw.epilog

sw.bb.1:                                          ; preds = %restart
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %5 = load i8*, i8** %rtstr, align 8
  call void @assemble_name(%struct._IO_FILE* %3, i8* %5)
  br label %sw.epilog

sw.bb.2:                                          ; preds = %restart
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %x.addr, align 8
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %restart, %sw.bb.2
  br label %do.body

do.body:                                          ; preds = %sw.bb.5
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 5
  %rtint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %9 = load i32, i32* %rtint, align 4
  %call8 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i32 0, i32 0), i32 %9) #5
  br label %do.end

do.end:                                           ; preds = %do.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arraydecay9 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  call void @assemble_name(%struct._IO_FILE* %10, i8* %arraydecay9)
  br label %sw.epilog

sw.bb.10:                                         ; preds = %restart
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx12 to i64*
  %13 = load i64, i64* %rtwint, align 8
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i64 %13)
  br label %sw.epilog

sw.bb.14:                                         ; preds = %restart
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  call void @output_addr_const(%struct._IO_FILE* %14, %struct.rtx_def* %16)
  br label %sw.epilog

sw.bb.18:                                         ; preds = %restart
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load19 = load i32, i32* %18, align 8
  %bf.lshr = lshr i32 %bf.load19, 16
  %bf.clear20 = and i32 %bf.lshr, 255
  %cmp = icmp eq i32 %bf.clear20, 0
  br i1 %cmp, label %if.then, label %if.else.47

if.then:                                          ; preds = %sw.bb.18
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 2
  %rtwint23 = bitcast %union.rtunion_def* %arrayidx22 to i64*
  %20 = load i64, i64* %rtwint23, align 8
  %tobool = icmp ne i64 %20, 0
  br i1 %tobool, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %if.then
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 2
  %rtwint27 = bitcast %union.rtunion_def* %arrayidx26 to i64*
  %23 = load i64, i64* %rtwint27, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 1
  %rtwint30 = bitcast %union.rtunion_def* %arrayidx29 to i64*
  %25 = load i64, i64* %rtwint30, align 8
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.37, i32 0, i32 0), i64 %23, i64 %25)
  br label %if.end.46

if.else:                                          ; preds = %if.then
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 1
  %rtwint34 = bitcast %union.rtunion_def* %arrayidx33 to i64*
  %27 = load i64, i64* %rtwint34, align 8
  %cmp35 = icmp slt i64 %27, 0
  br i1 %cmp35, label %if.then.36, label %if.else.41

if.then.36:                                       ; preds = %if.else
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtwint39 = bitcast %union.rtunion_def* %arrayidx38 to i64*
  %30 = load i64, i64* %rtwint39, align 8
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i64 %30)
  br label %if.end

if.else.41:                                       ; preds = %if.else
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 1
  %rtwint44 = bitcast %union.rtunion_def* %arrayidx43 to i64*
  %33 = load i64, i64* %rtwint44, align 8
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i32 0, i32 0), i64 %33)
  br label %if.end

if.end:                                           ; preds = %if.else.41, %if.then.36
  br label %if.end.46

if.end.46:                                        ; preds = %if.end, %if.then.24
  br label %if.end.48

if.else.47:                                       ; preds = %sw.bb.18
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.39, i32 0, i32 0))
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.47, %if.end.46
  br label %sw.epilog

sw.bb.49:                                         ; preds = %restart
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load53 = load i32, i32* %36, align 8
  %bf.clear54 = and i32 %bf.load53, 65535
  %cmp55 = icmp eq i32 %bf.clear54, 54
  br i1 %cmp55, label %if.then.56, label %if.else.73

if.then.56:                                       ; preds = %sw.bb.49
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 1
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  call void @output_addr_const(%struct._IO_FILE* %37, %struct.rtx_def* %39)
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtx62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx62, align 8
  %fld63 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx64 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld63, i32 0, i64 0
  %rtwint65 = bitcast %union.rtunion_def* %arrayidx64 to i64*
  %42 = load i64, i64* %rtwint65, align 8
  %cmp66 = icmp sge i64 %42, 0
  br i1 %cmp66, label %if.then.67, label %if.end.69

if.then.67:                                       ; preds = %if.then.56
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.69

if.end.69:                                        ; preds = %if.then.67, %if.then.56
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtx72 = bitcast %union.rtunion_def* %arrayidx71 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx72, align 8
  call void @output_addr_const(%struct._IO_FILE* %44, %struct.rtx_def* %46)
  br label %if.end.96

if.else.73:                                       ; preds = %sw.bb.49
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %49 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  call void @output_addr_const(%struct._IO_FILE* %47, %struct.rtx_def* %49)
  %50 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 1
  %rtx79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx79, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load80 = load i32, i32* %52, align 8
  %bf.clear81 = and i32 %bf.load80, 65535
  %cmp82 = icmp ne i32 %bf.clear81, 54
  br i1 %cmp82, label %if.then.90, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.73
  %53 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 1
  %rtx85 = bitcast %union.rtunion_def* %arrayidx84 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx85, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtwint88 = bitcast %union.rtunion_def* %arrayidx87 to i64*
  %55 = load i64, i64* %rtwint88, align 8
  %cmp89 = icmp sge i64 %55, 0
  br i1 %cmp89, label %if.then.90, label %if.end.92

if.then.90:                                       ; preds = %lor.lhs.false, %if.else.73
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i32 0, i32 0))
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.90, %lor.lhs.false
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 1
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  call void @output_addr_const(%struct._IO_FILE* %57, %struct.rtx_def* %59)
  br label %if.end.96

if.end.96:                                        ; preds = %if.end.92, %if.end.69
  br label %sw.epilog

sw.bb.97:                                         ; preds = %restart
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call98 = call %struct.rtx_def* @simplify_subtraction(%struct.rtx_def* %60)
  store %struct.rtx_def* %call98, %struct.rtx_def** %x.addr, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load99 = load i32, i32* %62, align 8
  %bf.clear100 = and i32 %bf.load99, 65535
  %cmp101 = icmp ne i32 %bf.clear100, 76
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %sw.bb.97
  br label %restart

if.end.103:                                       ; preds = %sw.bb.97
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtx106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx106, align 8
  call void @output_addr_const(%struct._IO_FILE* %63, %struct.rtx_def* %65)
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0))
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 1
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load111 = load i32, i32* %69, align 8
  %bf.clear112 = and i32 %bf.load111, 65535
  %cmp113 = icmp eq i32 %bf.clear112, 54
  br i1 %cmp113, label %land.lhs.true, label %lor.lhs.false.121

land.lhs.true:                                    ; preds = %if.end.103
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 1
  %rtx116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx116, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 0
  %rtwint119 = bitcast %union.rtunion_def* %arrayidx118 to i64*
  %72 = load i64, i64* %rtwint119, align 8
  %cmp120 = icmp sge i64 %72, 0
  br i1 %cmp120, label %if.then.135, label %lor.lhs.false.121

lor.lhs.false.121:                                ; preds = %land.lhs.true, %if.end.103
  %73 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 1
  %rtx124 = bitcast %union.rtunion_def* %arrayidx123 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx124, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load125 = load i32, i32* %75, align 8
  %bf.clear126 = and i32 %bf.load125, 65535
  %cmp127 = icmp eq i32 %bf.clear126, 59
  br i1 %cmp127, label %if.then.135, label %lor.lhs.false.128

lor.lhs.false.128:                                ; preds = %lor.lhs.false.121
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 1
  %rtx131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtx_def**
  %77 = load %struct.rtx_def*, %struct.rtx_def** %rtx131, align 8
  %78 = bitcast %struct.rtx_def* %77 to i32*
  %bf.load132 = load i32, i32* %78, align 8
  %bf.clear133 = and i32 %bf.load132, 65535
  %cmp134 = icmp eq i32 %bf.clear133, 68
  br i1 %cmp134, label %if.then.135, label %if.else.139

if.then.135:                                      ; preds = %lor.lhs.false.128, %lor.lhs.false.121, %land.lhs.true
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %80 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 1
  %rtx138 = bitcast %union.rtunion_def* %arrayidx137 to %struct.rtx_def**
  %81 = load %struct.rtx_def*, %struct.rtx_def** %rtx138, align 8
  call void @output_addr_const(%struct._IO_FILE* %79, %struct.rtx_def* %81)
  br label %if.end.145

if.else.139:                                      ; preds = %lor.lhs.false.128
  %82 = load i8*, i8** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 0), align 8
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call140 = call i32 @fputs(i8* %82, %struct._IO_FILE* %83)
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %85 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 1
  %rtx143 = bitcast %union.rtunion_def* %arrayidx142 to %struct.rtx_def**
  %86 = load %struct.rtx_def*, %struct.rtx_def** %rtx143, align 8
  call void @output_addr_const(%struct._IO_FILE* %84, %struct.rtx_def* %86)
  %87 = load i8*, i8** getelementptr inbounds (%struct.gcc_target, %struct.gcc_target* @targetm, i32 0, i32 0, i32 1), align 8
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call144 = call i32 @fputs(i8* %87, %struct._IO_FILE* %88)
  br label %if.end.145

if.end.145:                                       ; preds = %if.else.139, %if.then.135
  br label %sw.epilog

sw.bb.146:                                        ; preds = %restart, %restart, %restart
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 0
  %rtx149 = bitcast %union.rtunion_def* %arrayidx148 to %struct.rtx_def**
  %91 = load %struct.rtx_def*, %struct.rtx_def** %rtx149, align 8
  call void @output_addr_const(%struct._IO_FILE* %89, %struct.rtx_def* %91)
  br label %sw.epilog

sw.default:                                       ; preds = %restart
  call void (i8*, ...) @output_operand_lossage(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb.146, %if.end.145, %if.end.96, %if.end.48, %sw.bb.14, %sw.bb.10, %do.end, %sw.bb.1, %sw.bb
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @output_operand(%struct.rtx_def* %x, i32 %code) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %code.addr = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %call = call %struct.rtx_def* @alter_subreg(%struct.rtx_def** %x.addr)
  store %struct.rtx_def* %call, %struct.rtx_def** %x.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %tobool1 = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end.9

land.lhs.true.2:                                  ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 61
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.9

land.lhs.true.6:                                  ; preds = %land.lhs.true.2
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %7 = load i32, i32* %rtuint, align 4
  %cmp7 = icmp uge i32 %7, 53
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %land.lhs.true.6
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 3349, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.output_operand, i32 0, i32 0)) #6
  unreachable

if.end.9:                                         ; preds = %land.lhs.true.6, %land.lhs.true.2, %if.end
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @asm_out_file, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = load i32, i32* %code.addr, align 4
  call void @print_operand(%struct._IO_FILE* %8, %struct.rtx_def* %9, i32 %10)
  ret void
}

declare void @print_operand_address(%struct._IO_FILE*, %struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_subtraction(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @asm_fprintf(%struct._IO_FILE* %file, i8* %p, ...) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %p.addr = alloca i8*, align 8
  %buf = alloca [10 x i8], align 1
  %q = alloca i8*, align 8
  %c = alloca i8, align 1
  %argptr = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  store i8* %p, i8** %p.addr, align 8
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %arrayidx = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i64 0
  store i8 37, i8* %arrayidx, align 1
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog.126, %entry
  %0 = load i8*, i8** %p.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1
  store i8* %incdec.ptr, i8** %p.addr, align 8
  %1 = load i8, i8* %0, align 1
  store i8 %1, i8* %c, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end.127

while.body:                                       ; preds = %while.cond
  %2 = load i8, i8* %c, align 1
  %conv = sext i8 %2 to i32
  switch i32 %conv, label %sw.default.123 [
    i32 123, label %sw.bb
    i32 124, label %sw.bb.15
    i32 125, label %sw.bb.27
    i32 37, label %sw.bb.28
  ]

sw.bb:                                            ; preds = %while.body
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %3 = load i32, i32* %i, align 4
  %4 = load i32, i32* @dialect_number, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %while.cond.3

while.cond.3:                                     ; preds = %while.body.10, %for.body
  %5 = load i8*, i8** %p.addr, align 8
  %6 = load i8, i8* %5, align 1
  %conv4 = sext i8 %6 to i32
  %tobool5 = icmp ne i32 %conv4, 0
  br i1 %tobool5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.3
  %7 = load i8*, i8** %p.addr, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr6, i8** %p.addr, align 8
  %8 = load i8, i8* %7, align 1
  %conv7 = sext i8 %8 to i32
  %cmp8 = icmp ne i32 %conv7, 124
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.3
  %9 = phi i1 [ false, %while.cond.3 ], [ %cmp8, %land.rhs ]
  br i1 %9, label %while.body.10, label %while.end

while.body.10:                                    ; preds = %land.end
  br label %while.cond.3

while.end:                                        ; preds = %land.end
  %10 = load i8*, i8** %p.addr, align 8
  %11 = load i8, i8* %10, align 1
  %conv11 = sext i8 %11 to i32
  %cmp12 = icmp eq i32 %conv11, 124
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %12 = load i8*, i8** %p.addr, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr14, i8** %p.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.126

sw.bb.15:                                         ; preds = %while.body
  br label %while.cond.16

while.cond.16:                                    ; preds = %while.body.25, %sw.bb.15
  %14 = load i8*, i8** %p.addr, align 8
  %15 = load i8, i8* %14, align 1
  %conv17 = sext i8 %15 to i32
  %tobool18 = icmp ne i32 %conv17, 0
  br i1 %tobool18, label %land.rhs.19, label %land.end.24

land.rhs.19:                                      ; preds = %while.cond.16
  %16 = load i8*, i8** %p.addr, align 8
  %incdec.ptr20 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr20, i8** %p.addr, align 8
  %17 = load i8, i8* %16, align 1
  %conv21 = sext i8 %17 to i32
  %cmp22 = icmp ne i32 %conv21, 125
  br label %land.end.24

land.end.24:                                      ; preds = %land.rhs.19, %while.cond.16
  %18 = phi i1 [ false, %while.cond.16 ], [ %cmp22, %land.rhs.19 ]
  br i1 %18, label %while.body.25, label %while.end.26

while.body.25:                                    ; preds = %land.end.24
  br label %while.cond.16

while.end.26:                                     ; preds = %land.end.24
  br label %sw.epilog.126

sw.bb.27:                                         ; preds = %while.body
  br label %sw.epilog.126

sw.bb.28:                                         ; preds = %while.body
  %19 = load i8*, i8** %p.addr, align 8
  %incdec.ptr29 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr29, i8** %p.addr, align 8
  %20 = load i8, i8* %19, align 1
  store i8 %20, i8* %c, align 1
  %arrayidx30 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i64 1
  store i8* %arrayidx30, i8** %q, align 8
  br label %while.cond.31

while.cond.31:                                    ; preds = %while.body.40, %sw.bb.28
  %21 = load i8, i8* %c, align 1
  %conv32 = sext i8 %21 to i32
  %and = and i32 %conv32, 255
  %idxprom = sext i32 %and to i64
  %arrayidx33 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i32 0, i64 %idxprom
  %22 = load i16, i16* %arrayidx33, align 2
  %conv34 = zext i16 %22 to i32
  %and35 = and i32 %conv34, 4
  %tobool36 = icmp ne i32 %and35, 0
  br i1 %tobool36, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond.31
  %23 = load i8, i8* %c, align 1
  %conv37 = sext i8 %23 to i32
  %cmp38 = icmp eq i32 %conv37, 46
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond.31
  %24 = phi i1 [ true, %while.cond.31 ], [ %cmp38, %lor.rhs ]
  br i1 %24, label %while.body.40, label %while.end.43

while.body.40:                                    ; preds = %lor.end
  %25 = load i8, i8* %c, align 1
  %26 = load i8*, i8** %q, align 8
  %incdec.ptr41 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr41, i8** %q, align 8
  store i8 %25, i8* %26, align 1
  %27 = load i8*, i8** %p.addr, align 8
  %incdec.ptr42 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr42, i8** %p.addr, align 8
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %c, align 1
  br label %while.cond.31

while.end.43:                                     ; preds = %lor.end
  %29 = load i8, i8* %c, align 1
  %conv44 = sext i8 %29 to i32
  switch i32 %conv44, label %sw.default [
    i32 37, label %sw.bb.45
    i32 100, label %sw.bb.46
    i32 105, label %sw.bb.46
    i32 117, label %sw.bb.46
    i32 120, label %sw.bb.46
    i32 112, label %sw.bb.46
    i32 88, label %sw.bb.46
    i32 111, label %sw.bb.46
    i32 119, label %sw.bb.51
    i32 108, label %sw.bb.69
    i32 101, label %sw.bb.87
    i32 102, label %sw.bb.87
    i32 103, label %sw.bb.87
    i32 115, label %sw.bb.100
    i32 79, label %sw.bb.116
    i32 82, label %sw.bb.117
    i32 73, label %sw.bb.118
    i32 76, label %sw.bb.119
    i32 85, label %sw.bb.121
  ]

sw.bb.45:                                         ; preds = %while.end.43
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0))
  br label %sw.epilog

sw.bb.46:                                         ; preds = %while.end.43, %while.end.43, %while.end.43, %while.end.43, %while.end.43, %while.end.43, %while.end.43
  %31 = load i8, i8* %c, align 1
  %32 = load i8*, i8** %q, align 8
  %incdec.ptr47 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr47, i8** %q, align 8
  store i8 %31, i8* %32, align 1
  %33 = load i8*, i8** %q, align 8
  store i8 0, i8* %33, align 1
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arraydecay48 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %arraydecay49 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay49, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb.46
  %35 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay49, i32 0, i32 3
  %reg_save_area = load i8*, i8** %35
  %36 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %37 = bitcast i8* %36 to i32*
  %38 = add i32 %gp_offset, 8
  store i32 %38, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb.46
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay49, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %39 = bitcast i8* %overflow_arg_area to i32*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i32* [ %37, %vaarg.in_reg ], [ %39, %vaarg.in_mem ]
  %40 = load i32, i32* %vaarg.addr
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* %arraydecay48, i32 %40)
  br label %sw.epilog

sw.bb.51:                                         ; preds = %while.end.43
  %41 = load i8*, i8** %q, align 8
  %incdec.ptr52 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr52, i8** %q, align 8
  store i8 108, i8* %41, align 1
  %42 = load i8*, i8** %p.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %incdec.ptr53, i8** %p.addr, align 8
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %q, align 8
  %incdec.ptr54 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr54, i8** %q, align 8
  store i8 %43, i8* %44, align 1
  %45 = load i8*, i8** %q, align 8
  store i8 0, i8* %45, align 1
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arraydecay55 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %arraydecay56 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0
  %gp_offset_p57 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay56, i32 0, i32 0
  %gp_offset58 = load i32, i32* %gp_offset_p57
  %fits_in_gp59 = icmp ule i32 %gp_offset58, 40
  br i1 %fits_in_gp59, label %vaarg.in_reg.60, label %vaarg.in_mem.62

vaarg.in_reg.60:                                  ; preds = %sw.bb.51
  %47 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay56, i32 0, i32 3
  %reg_save_area61 = load i8*, i8** %47
  %48 = getelementptr i8, i8* %reg_save_area61, i32 %gp_offset58
  %49 = bitcast i8* %48 to i64*
  %50 = add i32 %gp_offset58, 8
  store i32 %50, i32* %gp_offset_p57
  br label %vaarg.end.66

vaarg.in_mem.62:                                  ; preds = %sw.bb.51
  %overflow_arg_area_p63 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay56, i32 0, i32 2
  %overflow_arg_area64 = load i8*, i8** %overflow_arg_area_p63
  %51 = bitcast i8* %overflow_arg_area64 to i64*
  %overflow_arg_area.next65 = getelementptr i8, i8* %overflow_arg_area64, i32 8
  store i8* %overflow_arg_area.next65, i8** %overflow_arg_area_p63
  br label %vaarg.end.66

vaarg.end.66:                                     ; preds = %vaarg.in_mem.62, %vaarg.in_reg.60
  %vaarg.addr67 = phi i64* [ %49, %vaarg.in_reg.60 ], [ %51, %vaarg.in_mem.62 ]
  %52 = load i64, i64* %vaarg.addr67
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* %arraydecay55, i64 %52)
  br label %sw.epilog

sw.bb.69:                                         ; preds = %while.end.43
  %53 = load i8, i8* %c, align 1
  %54 = load i8*, i8** %q, align 8
  %incdec.ptr70 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr70, i8** %q, align 8
  store i8 %53, i8* %54, align 1
  %55 = load i8*, i8** %p.addr, align 8
  %incdec.ptr71 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %incdec.ptr71, i8** %p.addr, align 8
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %q, align 8
  %incdec.ptr72 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr72, i8** %q, align 8
  store i8 %56, i8* %57, align 1
  %58 = load i8*, i8** %q, align 8
  store i8 0, i8* %58, align 1
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arraydecay73 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %arraydecay74 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0
  %gp_offset_p75 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay74, i32 0, i32 0
  %gp_offset76 = load i32, i32* %gp_offset_p75
  %fits_in_gp77 = icmp ule i32 %gp_offset76, 40
  br i1 %fits_in_gp77, label %vaarg.in_reg.78, label %vaarg.in_mem.80

vaarg.in_reg.78:                                  ; preds = %sw.bb.69
  %60 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay74, i32 0, i32 3
  %reg_save_area79 = load i8*, i8** %60
  %61 = getelementptr i8, i8* %reg_save_area79, i32 %gp_offset76
  %62 = bitcast i8* %61 to i64*
  %63 = add i32 %gp_offset76, 8
  store i32 %63, i32* %gp_offset_p75
  br label %vaarg.end.84

vaarg.in_mem.80:                                  ; preds = %sw.bb.69
  %overflow_arg_area_p81 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay74, i32 0, i32 2
  %overflow_arg_area82 = load i8*, i8** %overflow_arg_area_p81
  %64 = bitcast i8* %overflow_arg_area82 to i64*
  %overflow_arg_area.next83 = getelementptr i8, i8* %overflow_arg_area82, i32 8
  store i8* %overflow_arg_area.next83, i8** %overflow_arg_area_p81
  br label %vaarg.end.84

vaarg.end.84:                                     ; preds = %vaarg.in_mem.80, %vaarg.in_reg.78
  %vaarg.addr85 = phi i64* [ %62, %vaarg.in_reg.78 ], [ %64, %vaarg.in_mem.80 ]
  %65 = load i64, i64* %vaarg.addr85
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* %arraydecay73, i64 %65)
  br label %sw.epilog

sw.bb.87:                                         ; preds = %while.end.43, %while.end.43, %while.end.43
  %66 = load i8, i8* %c, align 1
  %67 = load i8*, i8** %q, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %incdec.ptr88, i8** %q, align 8
  store i8 %66, i8* %67, align 1
  %68 = load i8*, i8** %q, align 8
  store i8 0, i8* %68, align 1
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arraydecay89 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %arraydecay90 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0
  %fp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay90, i32 0, i32 1
  %fp_offset = load i32, i32* %fp_offset_p
  %fits_in_fp = icmp ule i32 %fp_offset, 160
  br i1 %fits_in_fp, label %vaarg.in_reg.91, label %vaarg.in_mem.93

vaarg.in_reg.91:                                  ; preds = %sw.bb.87
  %70 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay90, i32 0, i32 3
  %reg_save_area92 = load i8*, i8** %70
  %71 = getelementptr i8, i8* %reg_save_area92, i32 %fp_offset
  %72 = bitcast i8* %71 to double*
  %73 = add i32 %fp_offset, 16
  store i32 %73, i32* %fp_offset_p
  br label %vaarg.end.97

vaarg.in_mem.93:                                  ; preds = %sw.bb.87
  %overflow_arg_area_p94 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay90, i32 0, i32 2
  %overflow_arg_area95 = load i8*, i8** %overflow_arg_area_p94
  %74 = bitcast i8* %overflow_arg_area95 to double*
  %overflow_arg_area.next96 = getelementptr i8, i8* %overflow_arg_area95, i32 8
  store i8* %overflow_arg_area.next96, i8** %overflow_arg_area_p94
  br label %vaarg.end.97

vaarg.end.97:                                     ; preds = %vaarg.in_mem.93, %vaarg.in_reg.91
  %vaarg.addr98 = phi double* [ %72, %vaarg.in_reg.91 ], [ %74, %vaarg.in_mem.93 ]
  %75 = load double, double* %vaarg.addr98
  %call99 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* %arraydecay89, double %75)
  br label %sw.epilog

sw.bb.100:                                        ; preds = %while.end.43
  %76 = load i8, i8* %c, align 1
  %77 = load i8*, i8** %q, align 8
  %incdec.ptr101 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %incdec.ptr101, i8** %q, align 8
  store i8 %76, i8* %77, align 1
  %78 = load i8*, i8** %q, align 8
  store i8 0, i8* %78, align 1
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %arraydecay102 = getelementptr inbounds [10 x i8], [10 x i8]* %buf, i32 0, i32 0
  %arraydecay103 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0
  %gp_offset_p104 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay103, i32 0, i32 0
  %gp_offset105 = load i32, i32* %gp_offset_p104
  %fits_in_gp106 = icmp ule i32 %gp_offset105, 40
  br i1 %fits_in_gp106, label %vaarg.in_reg.107, label %vaarg.in_mem.109

vaarg.in_reg.107:                                 ; preds = %sw.bb.100
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay103, i32 0, i32 3
  %reg_save_area108 = load i8*, i8** %80
  %81 = getelementptr i8, i8* %reg_save_area108, i32 %gp_offset105
  %82 = bitcast i8* %81 to i8**
  %83 = add i32 %gp_offset105, 8
  store i32 %83, i32* %gp_offset_p104
  br label %vaarg.end.113

vaarg.in_mem.109:                                 ; preds = %sw.bb.100
  %overflow_arg_area_p110 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay103, i32 0, i32 2
  %overflow_arg_area111 = load i8*, i8** %overflow_arg_area_p110
  %84 = bitcast i8* %overflow_arg_area111 to i8**
  %overflow_arg_area.next112 = getelementptr i8, i8* %overflow_arg_area111, i32 8
  store i8* %overflow_arg_area.next112, i8** %overflow_arg_area_p110
  br label %vaarg.end.113

vaarg.end.113:                                    ; preds = %vaarg.in_mem.109, %vaarg.in_reg.107
  %vaarg.addr114 = phi i8** [ %82, %vaarg.in_reg.107 ], [ %84, %vaarg.in_mem.109 ]
  %85 = load i8*, i8** %vaarg.addr114
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %79, i8* %arraydecay102, i8* %85)
  br label %sw.epilog

sw.bb.116:                                        ; preds = %while.end.43
  br label %sw.epilog

sw.bb.117:                                        ; preds = %while.end.43
  br label %sw.epilog

sw.bb.118:                                        ; preds = %while.end.43
  br label %sw.epilog

sw.bb.119:                                        ; preds = %while.end.43
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.44, i32 0, i32 0))
  br label %sw.epilog

sw.bb.121:                                        ; preds = %while.end.43
  %87 = load i8*, i8** @user_label_prefix, align 8
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call122 = call i32 @fputs(i8* %87, %struct._IO_FILE* %88)
  br label %sw.epilog

sw.default:                                       ; preds = %while.end.43
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 3648, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.asm_fprintf, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %sw.bb.121, %sw.bb.119, %sw.bb.118, %sw.bb.117, %sw.bb.116, %vaarg.end.113, %vaarg.end.97, %vaarg.end.84, %vaarg.end.66, %vaarg.end, %sw.bb.45
  br label %sw.epilog.126

sw.default.123:                                   ; preds = %while.body
  %89 = load i8, i8* %c, align 1
  %conv124 = sext i8 %89 to i32
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call125 = call i32 @fputc(i32 %conv124, %struct._IO_FILE* %90)
  br label %sw.epilog.126

sw.epilog.126:                                    ; preds = %sw.default.123, %sw.epilog, %sw.bb.27, %while.end.26, %for.end
  br label %while.cond

while.end.127:                                    ; preds = %while.cond
  %arraydecay128 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %argptr, i32 0, i32 0
  %arraydecay128129 = bitcast %struct.__va_list_tag* %arraydecay128 to i8*
  call void @llvm.va_end(i8* %arraydecay128129)
  ret void
}

declare i32 @fputc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @split_double(%struct.rtx_def* %value, %struct.rtx_def** %first, %struct.rtx_def** %second) #0 {
entry:
  %value.addr = alloca %struct.rtx_def*, align 8
  %first.addr = alloca %struct.rtx_def**, align 8
  %second.addr = alloca %struct.rtx_def**, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  %mask = alloca i64, align 8
  %sign_bit = alloca i64, align 8
  %sign_extend = alloca i64, align 8
  %high27 = alloca %struct.rtx_def*, align 8
  %r = alloca %struct.realvaluetype, align 8
  %l = alloca [2 x i64], align 16
  %u = alloca %union.real_extract, align 8
  store %struct.rtx_def* %value, %struct.rtx_def** %value.addr, align 8
  store %struct.rtx_def** %first, %struct.rtx_def*** %first.addr, align 8
  store %struct.rtx_def** %second, %struct.rtx_def*** %second.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 54
  br i1 %cmp, label %if.then, label %if.else.34

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  %mul = mul nsw i32 2, %cond
  %cmp1 = icmp sge i32 64, %mul
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  store i64 1, i64* %sign_bit, align 8
  %3 = load i32, i32* @target_flags, align 4
  %and3 = and i32 %3, 33554432
  %tobool4 = icmp ne i32 %and3, 0
  %cond5 = select i1 %tobool4, i32 64, i32 32
  %sub = sub nsw i32 %cond5, 1
  %4 = load i64, i64* %sign_bit, align 8
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %4, %sh_prom
  store i64 %shl, i64* %sign_bit, align 8
  %5 = load i64, i64* %sign_bit, align 8
  %shl6 = shl i64 %5, 1
  store i64 %shl6, i64* %mask, align 8
  %6 = load i64, i64* %mask, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %mask, align 8
  %7 = load i64, i64* %mask, align 8
  %neg = xor i64 %7, -1
  store i64 %neg, i64* %sign_extend, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %9 = load i64, i64* %rtwint, align 8
  store i64 %9, i64* %low, align 8
  %10 = load i64, i64* %mask, align 8
  %11 = load i64, i64* %low, align 8
  %and7 = and i64 %11, %10
  store i64 %and7, i64* %low, align 8
  %12 = load i64, i64* %low, align 8
  %13 = load i64, i64* %sign_bit, align 8
  %and8 = and i64 %12, %13
  %tobool9 = icmp ne i64 %and8, 0
  br i1 %tobool9, label %if.then.10, label %if.end

if.then.10:                                       ; preds = %if.then.2
  %14 = load i64, i64* %sign_extend, align 8
  %15 = load i64, i64* %low, align 8
  %or = or i64 %15, %14
  store i64 %or, i64* %low, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.10, %if.then.2
  %16 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtwint13 = bitcast %union.rtunion_def* %arrayidx12 to i64*
  %17 = load i64, i64* %rtwint13, align 8
  store i64 %17, i64* %high, align 8
  %18 = load i32, i32* @target_flags, align 4
  %and14 = and i32 %18, 33554432
  %tobool15 = icmp ne i32 %and14, 0
  %cond16 = select i1 %tobool15, i32 64, i32 32
  %sub17 = sub nsw i32 %cond16, 1
  %19 = load i64, i64* %high, align 8
  %sh_prom18 = zext i32 %sub17 to i64
  %shr = lshr i64 %19, %sh_prom18
  store i64 %shr, i64* %high, align 8
  %20 = load i64, i64* %high, align 8
  %shr19 = lshr i64 %20, 1
  store i64 %shr19, i64* %high, align 8
  %21 = load i64, i64* %mask, align 8
  %22 = load i64, i64* %high, align 8
  %and20 = and i64 %22, %21
  store i64 %and20, i64* %high, align 8
  %23 = load i64, i64* %high, align 8
  %24 = load i64, i64* %sign_bit, align 8
  %and21 = and i64 %23, %24
  %tobool22 = icmp ne i64 %and21, 0
  br i1 %tobool22, label %if.then.23, label %if.end.25

if.then.23:                                       ; preds = %if.end
  %25 = load i64, i64* %sign_extend, align 8
  %26 = load i64, i64* %high, align 8
  %or24 = or i64 %26, %25
  store i64 %or24, i64* %high, align 8
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.23, %if.end
  %27 = load i64, i64* %low, align 8
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %27)
  %28 = load %struct.rtx_def**, %struct.rtx_def*** %first.addr, align 8
  store %struct.rtx_def* %call, %struct.rtx_def** %28, align 8
  %29 = load i64, i64* %high, align 8
  %call26 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %29)
  %30 = load %struct.rtx_def**, %struct.rtx_def*** %second.addr, align 8
  store %struct.rtx_def* %call26, %struct.rtx_def** %30, align 8
  br label %if.end.33

if.else:                                          ; preds = %if.then
  %31 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtwint30 = bitcast %union.rtunion_def* %arrayidx29 to i64*
  %32 = load i64, i64* %rtwint30, align 8
  %cmp31 = icmp slt i64 %32, 0
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %33 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 63), align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  %34 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond32 = phi %struct.rtx_def* [ %33, %cond.true ], [ %34, %cond.false ]
  store %struct.rtx_def* %cond32, %struct.rtx_def** %high27, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %36 = load %struct.rtx_def**, %struct.rtx_def*** %first.addr, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %36, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %high27, align 8
  %38 = load %struct.rtx_def**, %struct.rtx_def*** %second.addr, align 8
  store %struct.rtx_def* %37, %struct.rtx_def** %38, align 8
  br label %if.end.33

if.end.33:                                        ; preds = %cond.end, %if.end.25
  br label %if.end.91

if.else.34:                                       ; preds = %entry
  %39 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load35 = load i32, i32* %40, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp ne i32 %bf.clear36, 55
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %if.else.34
  %41 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %first.addr, align 8
  store %struct.rtx_def* %41, %struct.rtx_def** %42, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %44 = load %struct.rtx_def**, %struct.rtx_def*** %second.addr, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %44, align 8
  br label %if.end.90

if.else.39:                                       ; preds = %if.else.34
  %45 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load40 = load i32, i32* %46, align 8
  %bf.lshr = lshr i32 %bf.load40, 16
  %bf.clear41 = and i32 %bf.lshr, 255
  %cmp42 = icmp eq i32 %bf.clear41, 0
  br i1 %cmp42, label %if.then.48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.39
  %47 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load43 = load i32, i32* %48, align 8
  %bf.lshr44 = lshr i32 %bf.load43, 16
  %bf.clear45 = and i32 %bf.lshr44, 255
  %idxprom = sext i32 %bf.clear45 to i64
  %arrayidx46 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %49 = load i32, i32* %arrayidx46, align 4
  %cmp47 = icmp eq i32 %49, 1
  br i1 %cmp47, label %if.then.48, label %if.else.57

if.then.48:                                       ; preds = %lor.lhs.false, %if.else.39
  %50 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 1
  %rtwint51 = bitcast %union.rtunion_def* %arrayidx50 to i64*
  %51 = load i64, i64* %rtwint51, align 8
  %call52 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %51)
  %52 = load %struct.rtx_def**, %struct.rtx_def*** %first.addr, align 8
  store %struct.rtx_def* %call52, %struct.rtx_def** %52, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 2
  %rtwint55 = bitcast %union.rtunion_def* %arrayidx54 to i64*
  %54 = load i64, i64* %rtwint55, align 8
  %call56 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %54)
  %55 = load %struct.rtx_def**, %struct.rtx_def*** %second.addr, align 8
  store %struct.rtx_def* %call56, %struct.rtx_def** %55, align 8
  br label %if.end.89

if.else.57:                                       ; preds = %lor.lhs.false
  br label %do.body

do.body:                                          ; preds = %if.else.57
  %56 = bitcast %union.real_extract* %u to i8*
  %57 = load %struct.rtx_def*, %struct.rtx_def** %value.addr, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 1
  %rtwint60 = bitcast %union.rtunion_def* %arrayidx59 to i64*
  %58 = bitcast i64* %rtwint60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %58, i64 24, i32 8, i1 false)
  %d = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %59 = bitcast %struct.realvaluetype* %r to i8*
  %60 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %59, i8* %60, i64 24, i32 8, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %l, i32 0, i32 0
  call void @etardouble(%struct.realvaluetype* byval align 8 %r, i64* %arraydecay)
  %61 = load i32, i32* @target_flags, align 4
  %and61 = and i32 %61, 33554432
  %tobool62 = icmp ne i32 %and61, 0
  %cond63 = select i1 %tobool62, i32 64, i32 32
  %cmp64 = icmp slt i32 %cond63, 64
  br i1 %cmp64, label %land.lhs.true, label %if.end.84

land.lhs.true:                                    ; preds = %do.end
  %62 = load i32, i32* @target_flags, align 4
  %and65 = and i32 %62, 33554432
  %tobool66 = icmp ne i32 %and65, 0
  %cond67 = select i1 %tobool66, i32 64, i32 32
  %cmp68 = icmp eq i32 %cond67, 32
  br i1 %cmp68, label %if.then.69, label %if.end.84

if.then.69:                                       ; preds = %land.lhs.true
  %arrayidx70 = getelementptr inbounds [2 x i64], [2 x i64]* %l, i32 0, i64 0
  %63 = load i64, i64* %arrayidx70, align 8
  %and71 = and i64 %63, 2147483648
  %tobool72 = icmp ne i64 %and71, 0
  br i1 %tobool72, label %if.then.73, label %if.end.76

if.then.73:                                       ; preds = %if.then.69
  %arrayidx74 = getelementptr inbounds [2 x i64], [2 x i64]* %l, i32 0, i64 0
  %64 = load i64, i64* %arrayidx74, align 8
  %or75 = or i64 %64, -4294967296
  store i64 %or75, i64* %arrayidx74, align 8
  br label %if.end.76

if.end.76:                                        ; preds = %if.then.73, %if.then.69
  %arrayidx77 = getelementptr inbounds [2 x i64], [2 x i64]* %l, i32 0, i64 1
  %65 = load i64, i64* %arrayidx77, align 8
  %and78 = and i64 %65, 2147483648
  %tobool79 = icmp ne i64 %and78, 0
  br i1 %tobool79, label %if.then.80, label %if.end.83

if.then.80:                                       ; preds = %if.end.76
  %arrayidx81 = getelementptr inbounds [2 x i64], [2 x i64]* %l, i32 0, i64 1
  %66 = load i64, i64* %arrayidx81, align 8
  %or82 = or i64 %66, -4294967296
  store i64 %or82, i64* %arrayidx81, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.80, %if.end.76
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %land.lhs.true, %do.end
  %arrayidx85 = getelementptr inbounds [2 x i64], [2 x i64]* %l, i32 0, i64 0
  %67 = load i64, i64* %arrayidx85, align 8
  %call86 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %67)
  %68 = load %struct.rtx_def**, %struct.rtx_def*** %first.addr, align 8
  store %struct.rtx_def* %call86, %struct.rtx_def** %68, align 8
  %arrayidx87 = getelementptr inbounds [2 x i64], [2 x i64]* %l, i32 0, i64 1
  %69 = load i64, i64* %arrayidx87, align 8
  %call88 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %69)
  %70 = load %struct.rtx_def**, %struct.rtx_def*** %second.addr, align 8
  store %struct.rtx_def* %call88, %struct.rtx_def** %70, align 8
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.84, %if.then.48
  br label %if.end.90

if.end.90:                                        ; preds = %if.end.89, %if.then.38
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %if.end.33
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #5

declare void @etardouble(%struct.realvaluetype* byval align 8, i64*) #1

; Function Attrs: nounwind uwtable
define i32 @leaf_function_p() #0 {
entry:
  %retval = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %link = alloca %struct.rtx_def*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %profile = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 56
  %1 = bitcast i24* %profile to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 14
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, i32* @profile_arc_flag, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool2 = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load3 = load i32, i32* %5, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp = icmp eq i32 %bf.clear4, 34
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load5 = load i32, i32* %7, align 8
  %bf.lshr6 = lshr i32 %bf.load5, 24
  %bf.clear7 = and i32 %bf.lshr6, 1
  %tobool8 = icmp ne i32 %bf.clear7, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.10:                                        ; preds = %land.lhs.true, %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load11 = load i32, i32* %9, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 32
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.42

land.lhs.true.14:                                 ; preds = %if.end.10
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load15 = load i32, i32* %12, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp eq i32 %bf.clear16, 24
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.42

land.lhs.true.18:                                 ; preds = %land.lhs.true.14
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 3
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtvec_def**
  %15 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %15, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx24, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load25 = load i32, i32* %17, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 34
  br i1 %cmp27, label %land.lhs.true.28, label %if.end.42

land.lhs.true.28:                                 ; preds = %land.lhs.true.18
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 3
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx31, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtvec34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtvec_def**
  %20 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec34, align 8
  %elem35 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %20, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem35, i32 0, i64 0
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx36, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load37 = load i32, i32* %22, align 8
  %bf.lshr38 = lshr i32 %bf.load37, 24
  %bf.clear39 = and i32 %bf.lshr38, 1
  %tobool40 = icmp ne i32 %bf.clear39, 0
  br i1 %tobool40, label %if.end.42, label %if.then.41

if.then.41:                                       ; preds = %land.lhs.true.28
  store i32 0, i32* %retval
  br label %return

if.end.42:                                        ; preds = %land.lhs.true.28, %land.lhs.true.18, %land.lhs.true.14, %if.end.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.42
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 2
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx45, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.function*, %struct.function** @cfun, align 8
  %epilogue_delay_list = getelementptr inbounds %struct.function, %struct.function* %25, i32 0, i32 55
  %26 = load %struct.rtx_def*, %struct.rtx_def** %epilogue_delay_list, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %link, align 8
  br label %for.cond.46

for.cond.46:                                      ; preds = %for.inc.99, %for.end
  %27 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %tobool47 = icmp ne %struct.rtx_def* %27, null
  br i1 %tobool47, label %for.body.48, label %for.end.103

for.body.48:                                      ; preds = %for.cond.46
  %28 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  store %struct.rtx_def* %29, %struct.rtx_def** %insn, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load52 = load i32, i32* %31, align 8
  %bf.clear53 = and i32 %bf.load52, 65535
  %cmp54 = icmp eq i32 %bf.clear53, 34
  br i1 %cmp54, label %land.lhs.true.55, label %if.end.61

land.lhs.true.55:                                 ; preds = %for.body.48
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load56 = load i32, i32* %33, align 8
  %bf.lshr57 = lshr i32 %bf.load56, 24
  %bf.clear58 = and i32 %bf.lshr57, 1
  %tobool59 = icmp ne i32 %bf.clear58, 0
  br i1 %tobool59, label %if.end.61, label %if.then.60

if.then.60:                                       ; preds = %land.lhs.true.55
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %land.lhs.true.55, %for.body.48
  %34 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load62 = load i32, i32* %35, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 32
  br i1 %cmp64, label %land.lhs.true.65, label %if.end.98

land.lhs.true.65:                                 ; preds = %if.end.61
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld66 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx67 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld66, i32 0, i64 3
  %rtx68 = bitcast %union.rtunion_def* %arrayidx67 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx68, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load69 = load i32, i32* %38, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %cmp71 = icmp eq i32 %bf.clear70, 24
  br i1 %cmp71, label %land.lhs.true.72, label %if.end.98

land.lhs.true.72:                                 ; preds = %land.lhs.true.65
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 3
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtvec78 = bitcast %union.rtunion_def* %arrayidx77 to %struct.rtvec_def**
  %41 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec78, align 8
  %elem79 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %41, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem79, i32 0, i64 0
  %42 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx80, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load81 = load i32, i32* %43, align 8
  %bf.clear82 = and i32 %bf.load81, 65535
  %cmp83 = icmp eq i32 %bf.clear82, 34
  br i1 %cmp83, label %land.lhs.true.84, label %if.end.98

land.lhs.true.84:                                 ; preds = %land.lhs.true.72
  %44 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 3
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx87, align 8
  %fld88 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx89 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld88, i32 0, i64 0
  %rtvec90 = bitcast %union.rtunion_def* %arrayidx89 to %struct.rtvec_def**
  %46 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec90, align 8
  %elem91 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %46, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem91, i32 0, i64 0
  %47 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx92, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load93 = load i32, i32* %48, align 8
  %bf.lshr94 = lshr i32 %bf.load93, 24
  %bf.clear95 = and i32 %bf.lshr94, 1
  %tobool96 = icmp ne i32 %bf.clear95, 0
  br i1 %tobool96, label %if.end.98, label %if.then.97

if.then.97:                                       ; preds = %land.lhs.true.84
  store i32 0, i32* %retval
  br label %return

if.end.98:                                        ; preds = %land.lhs.true.84, %land.lhs.true.72, %land.lhs.true.65, %if.end.61
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %49 = load %struct.rtx_def*, %struct.rtx_def** %link, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 1
  %rtx102 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx102, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %link, align 8
  br label %for.cond.46

for.end.103:                                      ; preds = %for.cond.46
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end.103, %if.then.97, %if.then.60, %if.then.41, %if.then.9, %if.then
  %51 = load i32, i32* %retval
  ret i32 %51
}

; Function Attrs: nounwind uwtable
define i32 @final_forward_branch_p(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %insn_id = alloca i32, align 4
  %label_id = alloca i32, align 4
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load i32*, i32** @uid_shuid, align 8
  %tobool = icmp ne i32* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 3878, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.final_forward_branch_p, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %2 = load i32, i32* %rtint, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load i32*, i32** @uid_shuid, align 8
  %arrayidx1 = getelementptr inbounds i32, i32* %3, i64 %idxprom
  %4 = load i32, i32* %arrayidx1, align 4
  store i32 %4, i32* %insn_id, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 7
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %7 = load i32, i32* %rtint6, align 4
  %idxprom7 = sext i32 %7 to i64
  %8 = load i32*, i32** @uid_shuid, align 8
  %arrayidx8 = getelementptr inbounds i32, i32* %8, i64 %idxprom7
  %9 = load i32, i32* %arrayidx8, align 4
  store i32 %9, i32* %label_id, align 4
  %10 = load i32, i32* %insn_id, align 4
  %tobool9 = icmp ne i32 %10, 0
  br i1 %tobool9, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %if.end
  %11 = load i32, i32* %label_id, align 4
  %tobool10 = icmp ne i32 %11, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %lor.lhs.false, %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i32 3883, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.final_forward_branch_p, i32 0, i32 0)) #6
  unreachable

if.end.12:                                        ; preds = %lor.lhs.false
  %12 = load i32, i32* %insn_id, align 4
  %13 = load i32, i32* %label_id, align 4
  %cmp = icmp slt i32 %12, %13
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @profile_function(%struct._IO_FILE* %file) #0 {
entry:
  %file.addr = alloca %struct._IO_FILE*, align 8
  %cxt = alloca i32, align 4
  store %struct._IO_FILE* %file, %struct._IO_FILE** %file.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %needs_context = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 56
  %1 = bitcast i24* %needs_context to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 3
  %bf.clear = and i32 %bf.lshr, 1
  store i32 %bf.clear, i32* %cxt, align 4
  %2 = load %union.tree_node*, %union.tree_node** @current_function_decl, align 8
  call void @function_section(%union.tree_node* %2)
  %3 = load i32, i32* %cxt, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %5 = load i32, i32* @target_flags, align 4
  %and = and i32 %5, 33554432
  %tobool1 = icmp ne i32 %and, 0
  %cond = select i1 %tobool1, i32 39, i32 2
  %idxprom = sext i32 %cond to i64
  %arrayidx = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  call void (%struct._IO_FILE*, i8*, ...) @asm_fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.45, i32 0, i32 0), i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* @target_flags, align 4
  %and2 = and i32 %7, 33554432
  %tobool3 = icmp ne i32 %and2, 0
  br i1 %tobool3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, i32* @flag_pic, align 4
  %tobool4 = icmp ne i32 %8, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i32 0, i32 0))
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %if.end
  %10 = load i32, i32* @flag_pic, align 4
  %tobool6 = icmp ne i32 %10, 0
  br i1 %tobool6, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %if.else
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i32 0, i32 0))
  br label %if.end.11

if.else.9:                                        ; preds = %if.else
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i32 0, i32 0))
  br label %if.end.11

if.end.11:                                        ; preds = %if.else.9, %if.then.7
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.11, %if.then.5
  %13 = load i32, i32* %cxt, align 4
  %tobool13 = icmp ne i32 %13, 0
  br i1 %tobool13, label %if.then.14, label %if.end.20

if.then.14:                                       ; preds = %if.end.12
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %file.addr, align 8
  %15 = load i32, i32* @target_flags, align 4
  %and15 = and i32 %15, 33554432
  %tobool16 = icmp ne i32 %and15, 0
  %cond17 = select i1 %tobool16, i32 39, i32 2
  %idxprom18 = sext i32 %cond17 to i64
  %arrayidx19 = getelementptr inbounds [53 x i8*], [53 x i8*]* @reg_names, i32 0, i64 %idxprom18
  %16 = load i8*, i8** %arrayidx19, align 8
  call void (%struct._IO_FILE*, i8*, ...) @asm_fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* %16)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.14, %if.end.12
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @get_mem_expr_from_op(%struct.rtx_def* %op, i32* %paddressp) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %op.addr = alloca %struct.rtx_def*, align 8
  %paddressp.addr = alloca i32*, align 8
  %expr = alloca %union.tree_node*, align 8
  %inner_addressp = alloca i32, align 4
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32* %paddressp, i32** %paddressp.addr, align 8
  %0 = load i32*, i32** %paddressp.addr, align 8
  store i32 0, i32* %0, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 61
  br i1 %cmp1, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtuint, align 4
  %cmp2 = icmp uge i32 %5, 53
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtuint6 = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %7 = load i32, i32* %rtuint6, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 3
  %9 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %regno_decl = getelementptr inbounds %struct.emit_status, %struct.emit_status* %9, i32 0, i32 11
  %10 = load %union.tree_node**, %union.tree_node*** %regno_decl, align 8
  %arrayidx7 = getelementptr inbounds %union.tree_node*, %union.tree_node** %10, i64 %idxprom
  %11 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8
  store %union.tree_node* %11, %union.tree_node** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load8 = load i32, i32* %13, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp ne i32 %bf.clear9, 66
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.else
  store %union.tree_node* null, %union.tree_node** %retval
  br label %return

if.end.12:                                        ; preds = %if.else
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx15 to %struct.mem_attrs**
  %15 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp16 = icmp eq %struct.mem_attrs* %15, null
  br i1 %cmp16, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.13
  br label %cond.end

cond.false:                                       ; preds = %if.end.13
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtmem19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.mem_attrs**
  %17 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem19, align 8
  %expr20 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %17, i32 0, i32 1
  %18 = load %union.tree_node*, %union.tree_node** %expr20, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ null, %cond.true ], [ %18, %cond.false ]
  %cmp21 = icmp ne %union.tree_node* %cond, null
  br i1 %cmp21, label %if.then.22, label %if.end.35

if.then.22:                                       ; preds = %cond.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 1
  %rtmem25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.mem_attrs**
  %20 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem25, align 8
  %cmp26 = icmp eq %struct.mem_attrs* %20, null
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %if.then.22
  br label %cond.end.33

cond.false.28:                                    ; preds = %if.then.22
  %21 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 1
  %rtmem31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.mem_attrs**
  %22 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem31, align 8
  %expr32 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %22, i32 0, i32 1
  %23 = load %union.tree_node*, %union.tree_node** %expr32, align 8
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.false.28, %cond.true.27
  %cond34 = phi %union.tree_node* [ null, %cond.true.27 ], [ %23, %cond.false.28 ]
  store %union.tree_node* %cond34, %union.tree_node** %retval
  br label %return

if.end.35:                                        ; preds = %cond.end
  %24 = load i32*, i32** %paddressp.addr, align 8
  store i32 1, i32* %24, align 4
  %25 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %op.addr, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call = call %union.tree_node* @get_mem_expr_from_op(%struct.rtx_def* %27, i32* %inner_addressp)
  store %union.tree_node* %call, %union.tree_node** %expr, align 8
  %tobool = icmp ne %union.tree_node* %call, null
  br i1 %tobool, label %land.lhs.true.38, label %if.else.41

land.lhs.true.38:                                 ; preds = %if.end.35
  %28 = load i32, i32* %inner_addressp, align 4
  %tobool39 = icmp ne i32 %28, 0
  br i1 %tobool39, label %if.else.41, label %if.then.40

if.then.40:                                       ; preds = %land.lhs.true.38
  %29 = load %union.tree_node*, %union.tree_node** %expr, align 8
  store %union.tree_node* %29, %union.tree_node** %retval
  br label %return

if.else.41:                                       ; preds = %land.lhs.true.38, %if.end.35
  %30 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load42 = load i32, i32* %31, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp eq i32 %bf.clear43, 75
  br i1 %cmp44, label %land.lhs.true.45, label %if.end.52

land.lhs.true.45:                                 ; preds = %if.else.41
  %32 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 1
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %call49 = call %union.tree_node* @get_mem_expr_from_op(%struct.rtx_def* %33, i32* %inner_addressp)
  store %union.tree_node* %call49, %union.tree_node** %expr, align 8
  %tobool50 = icmp ne %union.tree_node* %call49, null
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.45
  %34 = load %union.tree_node*, %union.tree_node** %expr, align 8
  store %union.tree_node* %34, %union.tree_node** %retval
  br label %return

if.end.52:                                        ; preds = %land.lhs.true.45, %if.else.41
  br label %if.end.53

if.end.53:                                        ; preds = %if.end.52
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.53
  %35 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load54 = load i32, i32* %36, align 8
  %bf.clear55 = and i32 %bf.load54, 65535
  %idxprom56 = sext i32 %bf.clear55 to i64
  %arrayidx57 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom56
  %37 = load i8, i8* %arrayidx57, align 1
  %conv = sext i8 %37 to i32
  %cmp58 = icmp eq i32 %conv, 49
  br i1 %cmp58, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond
  %38 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load60 = load i32, i32* %39, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %idxprom62 = sext i32 %bf.clear61 to i64
  %arrayidx63 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom62
  %40 = load i8, i8* %arrayidx63, align 1
  %conv64 = sext i8 %40 to i32
  %cmp65 = icmp eq i32 %conv64, 50
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %while.cond
  %41 = phi i1 [ true, %while.cond ], [ %cmp65, %lor.rhs ]
  br i1 %41, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %42 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 0
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  store %struct.rtx_def* %43, %struct.rtx_def** %op.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %44 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call70 = call %union.tree_node* @get_mem_expr_from_op(%struct.rtx_def* %44, i32* %inner_addressp)
  store %union.tree_node* %call70, %union.tree_node** %expr, align 8
  %45 = load i32, i32* %inner_addressp, align 4
  %tobool71 = icmp ne i32 %45, 0
  br i1 %tobool71, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %while.end
  br label %cond.end.74

cond.false.73:                                    ; preds = %while.end
  %46 = load %union.tree_node*, %union.tree_node** %expr, align 8
  br label %cond.end.74

cond.end.74:                                      ; preds = %cond.false.73, %cond.true.72
  %cond75 = phi %union.tree_node* [ null, %cond.true.72 ], [ %46, %cond.false.73 ]
  store %union.tree_node* %cond75, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %cond.end.74, %if.then.51, %if.then.40, %cond.end.33, %if.then.11, %if.then.3, %if.then
  %47 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %47
}

declare void @print_mem_expr(%struct._IO_FILE*, %union.tree_node*) #1

declare void @print_operand(%struct._IO_FILE*, %struct.rtx_def*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
