; ModuleID = 'emit-rtl.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i32 }
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
%struct.lang_hooks = type { i8*, i64, void ()*, i32 (i32, i8**)*, void ()*, i8* (i8*)*, void ()*, void ()*, i64 (%union.tree_node*)*, %union.tree_node* (%union.tree_node*)*, i32 (%struct.rtx_def*, %union.tree_node*)*, i32 (%union.tree_node*)*, i8, void ()*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (%struct._IO_FILE*, %union.tree_node*, i32)*, void (i32)*, %struct.lang_hooks_for_tree_inlining, %struct.lang_hooks_for_tree_dump }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.lang_hooks_for_tree_inlining = type { %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, i8*)*, i32 (%union.tree_node**)*, i32 (%union.tree_node*)*, %union.tree_node* (i8*, %union.tree_node*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*, %union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8*, i32*, i8*)*, i32 (%union.tree_node*)*, i32 (%union.tree_node*)*, void (%union.tree_node*)*, %union.tree_node* (%union.tree_node*, %union.tree_node*, %union.tree_node*)* }
%struct.lang_hooks_for_tree_dump = type { i32 (i8*, %union.tree_node*)*, i32 (%union.tree_node*)* }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i1 (%union.tree_node*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void ()*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)* }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.realvaluetype = type { [3 x i64] }
%struct.mem_attrs = type { i64, %union.tree_node*, %struct.rtx_def*, %struct.rtx_def*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%union.real_extract = type { %struct.realvaluetype }
%struct.tree_type = type { %struct.tree_common, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32, i32, i32, %union.tree_node*, %union.tree_node*, %union.anon.2, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i64, %struct.lang_type* }
%union.anon.2 = type { i8* }
%struct.lang_type = type opaque
%struct.tree_exp = type { %struct.tree_common, i32, [1 x %union.tree_node*] }
%struct.anon.0 = type { i32 }
%struct.tree_block = type { %struct.tree_common, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }

@split_branch_probability = global i32 -1, align 4
@const_int_rtx = common global [129 x %struct.rtx_def*] zeroinitializer, align 16
@const_int_htab = internal global %struct.htab* null, align 8
@rtx_length = external constant [153 x i8], align 16
@target_flags = external global i32, align 4
@reload_in_progress = external global i32, align 4
@global_rtl = common global [11 x %struct.rtx_def*] zeroinitializer, align 16
@flag_pic = external global i32, align 4
@fixed_regs = external global [53 x i8], align 16
@pic_offset_table_rtx = common global %struct.rtx_def* null, align 8
@mode_size = external constant [59 x i8], align 16
@.str = private unnamed_addr constant [11 x i8] c"emit-rtl.c\00", align 1
@__FUNCTION__.gen_rtx_SUBREG = private unnamed_addr constant [15 x i8] c"gen_rtx_SUBREG\00", align 1
@rtx_format = external constant [153 x i8*], align 16
@__FUNCTION__.gen_rtx = private unnamed_addr constant [8 x i8] c"gen_rtx\00", align 1
@cfun = external global %struct.function*, align 8
@no_new_pseudos = external global i32, align 4
@__FUNCTION__.gen_reg_rtx = private unnamed_addr constant [12 x i8] c"gen_reg_rtx\00", align 1
@generating_concat_p = external global i32, align 4
@mode_class = external constant [59 x i32], align 16
@mode_unit_size = external constant [59 x i8], align 16
@__FUNCTION__.mark_user_reg = private unnamed_addr constant [14 x i8] c"mark_user_reg\00", align 1
@last_label_num = internal global i32 0, align 4
@label_num = internal global i32 1, align 4
@base_label_num = internal global i32 0, align 4
@__FUNCTION__.subreg_hard_regno = private unnamed_addr constant [18 x i8] c"subreg_hard_regno\00", align 1
@mode_bitsize = external constant [59 x i16], align 16
@__FUNCTION__.gen_lowpart_common = private unnamed_addr constant [19 x i8] c"gen_lowpart_common\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"can't access imaginary part of complex value in hard register\00", align 1
@__FUNCTION__.subreg_realpart_p = private unnamed_addr constant [18 x i8] c"subreg_realpart_p\00", align 1
@__FUNCTION__.gen_lowpart = private unnamed_addr constant [12 x i8] c"gen_lowpart\00", align 1
@__FUNCTION__.gen_highpart = private unnamed_addr constant [13 x i8] c"gen_highpart\00", align 1
@__FUNCTION__.gen_highpart_mode = private unnamed_addr constant [18 x i8] c"gen_highpart_mode\00", align 1
@__FUNCTION__.subreg_highpart_offset = private unnamed_addr constant [23 x i8] c"subreg_highpart_offset\00", align 1
@__FUNCTION__.constant_subword = private unnamed_addr constant [17 x i8] c"constant_subword\00", align 1
@word_mode = common global i32 0, align 4
@__FUNCTION__.operand_subword = private unnamed_addr constant [16 x i8] c"operand_subword\00", align 1
@reload_completed = external global i32, align 4
@__FUNCTION__.operand_subword_force = private unnamed_addr constant [22 x i8] c"operand_subword_force\00", align 1
@const_tiny_rtx = common global [3 x [59 x %struct.rtx_def*]] zeroinitializer, align 16
@tree_code_type = external global [256 x i8], align 16
@__FUNCTION__.set_mem_attributes = private unnamed_addr constant [19 x i8] c"set_mem_attributes\00", align 1
@lang_hooks = external constant %struct.lang_hooks, align 8
@global_trees = external global [51 x %union.tree_node*], align 16
@sizetype_tab = external global [6 x %union.tree_node*], align 16
@rtx_class = external constant [153 x i8], align 16
@__FUNCTION__.copy_most_rtx = private unnamed_addr constant [14 x i8] c"copy_most_rtx\00", align 1
@__FUNCTION__.set_last_insn = private unnamed_addr constant [14 x i8] c"set_last_insn\00", align 1
@flag_renumber_insns = external global i32, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Renumbering insn %d to %d\0A\00", align 1
@__FUNCTION__.try_split = private unnamed_addr constant [10 x i8] c"try_split\00", align 1
@flag_non_call_exceptions = external global i32, align 4
@optimize = external global i32, align 4
@__FUNCTION__.add_insn_after = private unnamed_addr constant [15 x i8] c"add_insn_after\00", align 1
@basic_block_for_insn = external global %struct.varray_head_tag*, align 8
@__FUNCTION__.add_insn_before = private unnamed_addr constant [16 x i8] c"add_insn_before\00", align 1
@__FUNCTION__.remove_insn = private unnamed_addr constant [12 x i8] c"remove_insn\00", align 1
@__FUNCTION__.remove_unnecessary_notes = private unnamed_addr constant [25 x i8] c"remove_unnecessary_notes\00", align 1
@debug_hooks = external global %struct.gcc_debug_hooks*, align 8
@no_line_numbers = internal global i32 0, align 4
@__FUNCTION__.emit_insns_after = private unnamed_addr constant [17 x i8] c"emit_insns_after\00", align 1
@__FUNCTION__.set_unique_reg_note = private unnamed_addr constant [20 x i8] c"set_unique_reg_note\00", align 1
@__FUNCTION__.emit = private unnamed_addr constant [5 x i8] c"emit\00", align 1
@__FUNCTION__.push_to_full_sequence = private unnamed_addr constant [22 x i8] c"push_to_full_sequence\00", align 1
@sequence_result = internal global [5 x %struct.rtx_def*] zeroinitializer, align 16
@free_insn = internal global %struct.rtx_def* null, align 8
@copy_insn_n_scratches = internal global i32 0, align 4
@copy_insn_scratch_in = internal global [30 x %struct.rtx_def*] zeroinitializer, align 16
@copy_insn_scratch_out = internal global [30 x %struct.rtx_def*] zeroinitializer, align 16
@orig_asm_constraints_vector = internal global %struct.rtvec_def* null, align 8
@copy_asm_constraints_vector = internal global %struct.rtvec_def* null, align 8
@orig_asm_operands_vector = internal global %struct.rtvec_def* null, align 8
@copy_asm_operands_vector = internal global %struct.rtvec_def* null, align 8
@__FUNCTION__.copy_insn_1 = private unnamed_addr constant [12 x i8] c"copy_insn_1\00", align 1
@ggc_pending_trees = external global %struct.varray_head_tag*, align 8
@mem_attrs_htab = internal global %struct.htab* null, align 8
@byte_mode = common global i32 0, align 4
@class_narrowest_mode = external constant [9 x i32], align 16
@mode_wider_mode = external constant [59 x i8], align 16
@ptr_mode = common global i32 0, align 4
@const_true_rtx = common global %struct.rtx_def* null, align 8
@dconst0 = common global %struct.realvaluetype zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@dconst1 = common global %struct.realvaluetype zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@dconst2 = common global %struct.realvaluetype zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@dconstm1 = common global %struct.realvaluetype zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@struct_value_rtx = common global %struct.rtx_def* null, align 8
@struct_value_incoming_rtx = common global %struct.rtx_def* null, align 8
@static_chain_rtx = common global %struct.rtx_def* null, align 8
@static_chain_incoming_rtx = common global %struct.rtx_def* null, align 8
@return_address_pointer_rtx = common global %struct.rtx_def* null, align 8
@double_mode = common global i32 0, align 4
@__FUNCTION__.change_address_1 = private unnamed_addr constant [17 x i8] c"change_address_1\00", align 1
@inner_mode_array = external constant [59 x i32], align 16
@__FUNCTION__.gen_const_vector_0 = private unnamed_addr constant [19 x i8] c"gen_const_vector_0\00", align 1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_raw_REG(i32 %mode, i32 %regno) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  %x = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load i32, i32* %regno.addr, align 4
  %call = call %struct.rtx_def* @gen_rtx_fmt_i0(i32 61, i32 %0, i32 %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %x, align 8
  %2 = load i32, i32* %regno.addr, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %2, i32* %rtuint, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  ret %struct.rtx_def* %4
}

declare %struct.rtx_def* @gen_rtx_fmt_i0(i32, i32, i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_CONST_INT(i32 %mode, i64 %arg) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %arg.addr = alloca i64, align 8
  %slot = alloca i8**, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %arg, i64* %arg.addr, align 8
  %0 = load i64, i64* %arg.addr, align 8
  %cmp = icmp sge i64 %0, -64
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %arg.addr, align 8
  %cmp1 = icmp sle i64 %1, 64
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* %arg.addr, align 8
  %add = add nsw i64 %2, 64
  %arrayidx = getelementptr inbounds [129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 %add
  %3 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load %struct.htab*, %struct.htab** @const_int_htab, align 8
  %5 = bitcast i64* %arg.addr to i8*
  %6 = load i64, i64* %arg.addr, align 8
  %conv = trunc i64 %6 to i32
  %call = call i8** @htab_find_slot_with_hash(%struct.htab* %4, i8* %5, i32 %conv, i32 1)
  store i8** %call, i8*** %slot, align 8
  %7 = load i8**, i8*** %slot, align 8
  %8 = load i8*, i8** %7, align 8
  %cmp2 = icmp eq i8* %8, null
  br i1 %cmp2, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %9 = load i64, i64* %arg.addr, align 8
  %call5 = call %struct.rtx_def* @gen_rtx_fmt_w(i32 54, i32 0, i64 %9)
  %10 = bitcast %struct.rtx_def* %call5 to i8*
  %11 = load i8**, i8*** %slot, align 8
  store i8* %10, i8** %11, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %12 = load i8**, i8*** %slot, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.rtx_def*
  store %struct.rtx_def* %14, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %15
}

declare i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_w(i32, i32, i64) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_int_mode(i64 %c, i32 %mode) #0 {
entry:
  %c.addr = alloca i64, align 8
  %mode.addr = alloca i32, align 4
  store i64 %c, i64* %c.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i64, i64* %c.addr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %call = call i64 @trunc_int_for_mode(i64 %0, i32 %1)
  %call1 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call)
  ret %struct.rtx_def* %call1
}

declare i64 @trunc_int_for_mode(i64, i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_CONST_DOUBLE(i32 %mode, i64 %arg0, i64 %arg1) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %arg0.addr = alloca i64, align 8
  %arg1.addr = alloca i64, align 8
  %r = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %arg0, i64* %arg0.addr, align 8
  store i64 %arg1, i64* %arg1.addr, align 8
  %call = call %struct.rtx_def* @rtx_alloc(i32 55)
  store %struct.rtx_def* %call, %struct.rtx_def** %r, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.value = and i32 %0, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear = and i32 %bf.load, -16711681
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %2, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx, align 8
  %4 = load i64, i64* %arg0.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx2 to i64*
  store i64 %4, i64* %rtwint, align 8
  %6 = load i64, i64* %arg1.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 2
  %rtwint5 = bitcast %union.rtunion_def* %arrayidx4 to i64*
  store i64 %6, i64* %rtwint5, align 8
  %8 = load i8, i8* getelementptr inbounds ([153 x i8], [153 x i8]* @rtx_length, i32 0, i64 55), align 1
  %conv = zext i8 %8 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %cmp = icmp sgt i32 %9, 2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4
  %idxprom = sext i32 %10 to i64
  %11 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 %idxprom
  %rtwint9 = bitcast %union.rtunion_def* %arrayidx8 to i64*
  store i64 0, i64* %rtwint9, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.rtx_def*, %struct.rtx_def** %r, align 8
  ret %struct.rtx_def* %13
}

declare %struct.rtx_def* @rtx_alloc(i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_REG(i32 %mode, i32 %regno) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %regno.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load i32, i32* @target_flags, align 4
  %and = and i32 %1, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %cmp = icmp eq i32 %0, %cond
  br i1 %cmp, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* @reload_in_progress, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %if.end.30, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* %regno.addr, align 4
  %cmp2 = icmp eq i32 %3, 20
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* %regno.addr, align 4
  %cmp4 = icmp eq i32 %5, 6
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load i32, i32* %regno.addr, align 4
  %cmp7 = icmp eq i32 %7, 16
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.6
  %9 = load i32, i32* %regno.addr, align 4
  %10 = load i32, i32* @target_flags, align 4
  %and10 = and i32 %10, 33554432
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end.9
  %11 = load i32, i32* @flag_pic, align 4
  %tobool12 = icmp ne i32 %11, 0
  %lnot = xor i1 %tobool12, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end.9
  %12 = phi i1 [ true, %if.end.9 ], [ %lnot, %lor.rhs ]
  %cond13 = select i1 %12, i32 -1, i32 3
  %cmp14 = icmp eq i32 %9, %cond13
  br i1 %cmp14, label %land.lhs.true.15, label %if.end.25

land.lhs.true.15:                                 ; preds = %lor.end
  %13 = load i32, i32* @target_flags, align 4
  %and16 = and i32 %13, 33554432
  %tobool17 = icmp ne i32 %and16, 0
  br i1 %tobool17, label %lor.end.21, label %lor.rhs.18

lor.rhs.18:                                       ; preds = %land.lhs.true.15
  %14 = load i32, i32* @flag_pic, align 4
  %tobool19 = icmp ne i32 %14, 0
  %lnot20 = xor i1 %tobool19, true
  br label %lor.end.21

lor.end.21:                                       ; preds = %lor.rhs.18, %land.lhs.true.15
  %15 = phi i1 [ true, %land.lhs.true.15 ], [ %lnot20, %lor.rhs.18 ]
  %cond22 = select i1 %15, i32 -1, i32 3
  %idxprom = zext i32 %cond22 to i64
  %arrayidx = getelementptr inbounds [53 x i8], [53 x i8]* @fixed_regs, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %16 to i32
  %tobool23 = icmp ne i32 %conv, 0
  br i1 %tobool23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %lor.end.21
  %17 = load %struct.rtx_def*, %struct.rtx_def** @pic_offset_table_rtx, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %retval
  br label %return

if.end.25:                                        ; preds = %lor.end.21, %lor.end
  %18 = load i32, i32* %regno.addr, align 4
  %cmp26 = icmp eq i32 %18, 7
  br i1 %cmp26, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.25
  %19 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.25
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true, %entry
  %20 = load i32, i32* %mode.addr, align 4
  %21 = load i32, i32* %regno.addr, align 4
  %call = call %struct.rtx_def* @gen_raw_REG(i32 %20, i32 %21)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.28, %if.then.24, %if.then.8, %if.then.5, %if.then.3
  %22 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %22
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_MEM(i32 %mode, %struct.rtx_def* %addr) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %addr.addr = alloca %struct.rtx_def*, align 8
  %rt = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_e0(i32 66, i32 %0, %struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %rt, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  store %struct.mem_attrs* null, %struct.mem_attrs** %rtmem, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rt, align 8
  ret %struct.rtx_def* %3
}

declare %struct.rtx_def* @gen_rtx_fmt_e0(i32, i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx_SUBREG(i32 %mode, %struct.rtx_def* %reg, i32 %offset) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %offset.addr = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  %0 = load i32, i32* %offset.addr, align 4
  %1 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %2 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %rem = srem i32 %0, %conv
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 456, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.gen_rtx_SUBREG, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %mode.addr, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %5 = load i32, i32* %offset.addr, align 4
  %call = call %struct.rtx_def* @gen_rtx_fmt_ei(i32 63, i32 %3, %struct.rtx_def* %4, i32 %5)
  ret %struct.rtx_def* %call
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #2

declare %struct.rtx_def* @gen_rtx_fmt_ei(i32, i32, %struct.rtx_def*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_lowpart_SUBREG(i32 %mode, %struct.rtx_def* %reg) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %inmode = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %inmode, align 4
  %2 = load i32, i32* %inmode, align 4
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %mode.addr, align 4
  store i32 %3, i32* %inmode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %mode.addr, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load i32, i32* %inmode, align 4
  %call = call i32 @subreg_lowpart_offset(i32 %6, i32 %7)
  %call1 = call %struct.rtx_def* @gen_rtx_SUBREG(i32 %4, %struct.rtx_def* %5, i32 %call)
  ret %struct.rtx_def* %call1
}

; Function Attrs: nounwind uwtable
define i32 @subreg_lowpart_offset(i32 %outermode, i32 %innermode) #0 {
entry:
  %outermode.addr = alloca i32, align 4
  %innermode.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %difference = alloca i32, align 4
  store i32 %outermode, i32* %outermode.addr, align 4
  store i32 %innermode, i32* %innermode.addr, align 4
  store i32 0, i32* %offset, align 4
  %0 = load i32, i32* %innermode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %outermode.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv, %conv3
  store i32 %sub, i32* %difference, align 4
  %4 = load i32, i32* %difference, align 4
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %offset, align 4
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_rtx(i32 %code, i32 %mode, ...) #0 {
entry:
  %code.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %fmt = alloca i8*, align 8
  %rt_val = alloca %struct.rtx_def*, align 8
  %p = alloca [1 x %struct.__va_list_tag], align 16
  %arg0 = alloca i64, align 8
  %arg1 = alloca i64, align 8
  store i32 %code, i32* %code.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %code.addr, align 4
  switch i32 %0, label %sw.default [
    i32 54, label %sw.bb
    i32 55, label %sw.bb.3
    i32 61, label %sw.bb.29
    i32 66, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %mode.addr, align 4
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %sw.bb
  %2 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 3
  %reg_save_area = load i8*, i8** %2
  %3 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %4 = bitcast i8* %3 to i64*
  %5 = add i32 %gp_offset, 8
  store i32 %5, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %6 = bitcast i8* %overflow_arg_area to i64*
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi i64* [ %4, %vaarg.in_reg ], [ %6, %vaarg.in_mem ]
  %7 = load i64, i64* %vaarg.addr
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 %1, i64 %7)
  store %struct.rtx_def* %call, %struct.rtx_def** %rt_val, align 8
  br label %sw.epilog.175

sw.bb.3:                                          ; preds = %entry
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p5 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 0
  %gp_offset6 = load i32, i32* %gp_offset_p5
  %fits_in_gp7 = icmp ule i32 %gp_offset6, 40
  br i1 %fits_in_gp7, label %vaarg.in_reg.8, label %vaarg.in_mem.10

vaarg.in_reg.8:                                   ; preds = %sw.bb.3
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 3
  %reg_save_area9 = load i8*, i8** %8
  %9 = getelementptr i8, i8* %reg_save_area9, i32 %gp_offset6
  %10 = bitcast i8* %9 to i64*
  %11 = add i32 %gp_offset6, 8
  store i32 %11, i32* %gp_offset_p5
  br label %vaarg.end.14

vaarg.in_mem.10:                                  ; preds = %sw.bb.3
  %overflow_arg_area_p11 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 2
  %overflow_arg_area12 = load i8*, i8** %overflow_arg_area_p11
  %12 = bitcast i8* %overflow_arg_area12 to i64*
  %overflow_arg_area.next13 = getelementptr i8, i8* %overflow_arg_area12, i32 8
  store i8* %overflow_arg_area.next13, i8** %overflow_arg_area_p11
  br label %vaarg.end.14

vaarg.end.14:                                     ; preds = %vaarg.in_mem.10, %vaarg.in_reg.8
  %vaarg.addr15 = phi i64* [ %10, %vaarg.in_reg.8 ], [ %12, %vaarg.in_mem.10 ]
  %13 = load i64, i64* %vaarg.addr15
  store i64 %13, i64* %arg0, align 8
  %arraydecay16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p17 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 0
  %gp_offset18 = load i32, i32* %gp_offset_p17
  %fits_in_gp19 = icmp ule i32 %gp_offset18, 40
  br i1 %fits_in_gp19, label %vaarg.in_reg.20, label %vaarg.in_mem.22

vaarg.in_reg.20:                                  ; preds = %vaarg.end.14
  %14 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 3
  %reg_save_area21 = load i8*, i8** %14
  %15 = getelementptr i8, i8* %reg_save_area21, i32 %gp_offset18
  %16 = bitcast i8* %15 to i64*
  %17 = add i32 %gp_offset18, 8
  store i32 %17, i32* %gp_offset_p17
  br label %vaarg.end.26

vaarg.in_mem.22:                                  ; preds = %vaarg.end.14
  %overflow_arg_area_p23 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay16, i32 0, i32 2
  %overflow_arg_area24 = load i8*, i8** %overflow_arg_area_p23
  %18 = bitcast i8* %overflow_arg_area24 to i64*
  %overflow_arg_area.next25 = getelementptr i8, i8* %overflow_arg_area24, i32 8
  store i8* %overflow_arg_area.next25, i8** %overflow_arg_area_p23
  br label %vaarg.end.26

vaarg.end.26:                                     ; preds = %vaarg.in_mem.22, %vaarg.in_reg.20
  %vaarg.addr27 = phi i64* [ %16, %vaarg.in_reg.20 ], [ %18, %vaarg.in_mem.22 ]
  %19 = load i64, i64* %vaarg.addr27
  store i64 %19, i64* %arg1, align 8
  %20 = load i32, i32* %mode.addr, align 4
  %21 = load i64, i64* %arg0, align 8
  %22 = load i64, i64* %arg1, align 8
  %call28 = call %struct.rtx_def* @gen_rtx_CONST_DOUBLE(i32 %20, i64 %21, i64 %22)
  store %struct.rtx_def* %call28, %struct.rtx_def** %rt_val, align 8
  br label %sw.epilog.175

sw.bb.29:                                         ; preds = %entry
  %23 = load i32, i32* %mode.addr, align 4
  %arraydecay30 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay30, i32 0, i32 0
  %gp_offset32 = load i32, i32* %gp_offset_p31
  %fits_in_gp33 = icmp ule i32 %gp_offset32, 40
  br i1 %fits_in_gp33, label %vaarg.in_reg.34, label %vaarg.in_mem.36

vaarg.in_reg.34:                                  ; preds = %sw.bb.29
  %24 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay30, i32 0, i32 3
  %reg_save_area35 = load i8*, i8** %24
  %25 = getelementptr i8, i8* %reg_save_area35, i32 %gp_offset32
  %26 = bitcast i8* %25 to i32*
  %27 = add i32 %gp_offset32, 8
  store i32 %27, i32* %gp_offset_p31
  br label %vaarg.end.40

vaarg.in_mem.36:                                  ; preds = %sw.bb.29
  %overflow_arg_area_p37 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay30, i32 0, i32 2
  %overflow_arg_area38 = load i8*, i8** %overflow_arg_area_p37
  %28 = bitcast i8* %overflow_arg_area38 to i32*
  %overflow_arg_area.next39 = getelementptr i8, i8* %overflow_arg_area38, i32 8
  store i8* %overflow_arg_area.next39, i8** %overflow_arg_area_p37
  br label %vaarg.end.40

vaarg.end.40:                                     ; preds = %vaarg.in_mem.36, %vaarg.in_reg.34
  %vaarg.addr41 = phi i32* [ %26, %vaarg.in_reg.34 ], [ %28, %vaarg.in_mem.36 ]
  %29 = load i32, i32* %vaarg.addr41
  %call42 = call %struct.rtx_def* @gen_rtx_REG(i32 %23, i32 %29)
  store %struct.rtx_def* %call42, %struct.rtx_def** %rt_val, align 8
  br label %sw.epilog.175

sw.bb.43:                                         ; preds = %entry
  %30 = load i32, i32* %mode.addr, align 4
  %arraydecay44 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p45 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay44, i32 0, i32 0
  %gp_offset46 = load i32, i32* %gp_offset_p45
  %fits_in_gp47 = icmp ule i32 %gp_offset46, 40
  br i1 %fits_in_gp47, label %vaarg.in_reg.48, label %vaarg.in_mem.50

vaarg.in_reg.48:                                  ; preds = %sw.bb.43
  %31 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay44, i32 0, i32 3
  %reg_save_area49 = load i8*, i8** %31
  %32 = getelementptr i8, i8* %reg_save_area49, i32 %gp_offset46
  %33 = bitcast i8* %32 to %struct.rtx_def**
  %34 = add i32 %gp_offset46, 8
  store i32 %34, i32* %gp_offset_p45
  br label %vaarg.end.54

vaarg.in_mem.50:                                  ; preds = %sw.bb.43
  %overflow_arg_area_p51 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay44, i32 0, i32 2
  %overflow_arg_area52 = load i8*, i8** %overflow_arg_area_p51
  %35 = bitcast i8* %overflow_arg_area52 to %struct.rtx_def**
  %overflow_arg_area.next53 = getelementptr i8, i8* %overflow_arg_area52, i32 8
  store i8* %overflow_arg_area.next53, i8** %overflow_arg_area_p51
  br label %vaarg.end.54

vaarg.end.54:                                     ; preds = %vaarg.in_mem.50, %vaarg.in_reg.48
  %vaarg.addr55 = phi %struct.rtx_def** [ %33, %vaarg.in_reg.48 ], [ %35, %vaarg.in_mem.50 ]
  %36 = load %struct.rtx_def*, %struct.rtx_def** %vaarg.addr55
  %call56 = call %struct.rtx_def* @gen_rtx_MEM(i32 %30, %struct.rtx_def* %36)
  store %struct.rtx_def* %call56, %struct.rtx_def** %rt_val, align 8
  br label %sw.epilog.175

sw.default:                                       ; preds = %entry
  %37 = load i32, i32* %code.addr, align 4
  %call57 = call %struct.rtx_def* @rtx_alloc(i32 %37)
  store %struct.rtx_def* %call57, %struct.rtx_def** %rt_val, align 8
  %38 = load i32, i32* %mode.addr, align 4
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rt_val, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load = load i32, i32* %40, align 8
  %bf.value = and i32 %38, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear = and i32 %bf.load, -16711681
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %40, align 8
  %41 = load i32, i32* %code.addr, align 4
  %idxprom = sext i32 %41 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %42 = load i8*, i8** %arrayidx, align 8
  store i8* %42, i8** %fmt, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.default
  %43 = load i32, i32* %i, align 4
  %44 = load i32, i32* %code.addr, align 4
  %idxprom58 = sext i32 %44 to i64
  %arrayidx59 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom58
  %45 = load i8, i8* %arrayidx59, align 1
  %conv = zext i8 %45 to i32
  %cmp = icmp slt i32 %43, %conv
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %46 = load i8*, i8** %fmt, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr, i8** %fmt, align 8
  %47 = load i8, i8* %46, align 1
  %conv61 = sext i8 %47 to i32
  switch i32 %conv61, label %sw.default.174 [
    i32 48, label %sw.bb.62
    i32 105, label %sw.bb.63
    i32 119, label %sw.bb.78
    i32 115, label %sw.bb.94
    i32 101, label %sw.bb.110
    i32 117, label %sw.bb.110
    i32 69, label %sw.bb.126
    i32 98, label %sw.bb.142
    i32 116, label %sw.bb.158
  ]

sw.bb.62:                                         ; preds = %for.body
  br label %sw.epilog

sw.bb.63:                                         ; preds = %for.body
  %arraydecay64 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p65 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay64, i32 0, i32 0
  %gp_offset66 = load i32, i32* %gp_offset_p65
  %fits_in_gp67 = icmp ule i32 %gp_offset66, 40
  br i1 %fits_in_gp67, label %vaarg.in_reg.68, label %vaarg.in_mem.70

vaarg.in_reg.68:                                  ; preds = %sw.bb.63
  %48 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay64, i32 0, i32 3
  %reg_save_area69 = load i8*, i8** %48
  %49 = getelementptr i8, i8* %reg_save_area69, i32 %gp_offset66
  %50 = bitcast i8* %49 to i32*
  %51 = add i32 %gp_offset66, 8
  store i32 %51, i32* %gp_offset_p65
  br label %vaarg.end.74

vaarg.in_mem.70:                                  ; preds = %sw.bb.63
  %overflow_arg_area_p71 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay64, i32 0, i32 2
  %overflow_arg_area72 = load i8*, i8** %overflow_arg_area_p71
  %52 = bitcast i8* %overflow_arg_area72 to i32*
  %overflow_arg_area.next73 = getelementptr i8, i8* %overflow_arg_area72, i32 8
  store i8* %overflow_arg_area.next73, i8** %overflow_arg_area_p71
  br label %vaarg.end.74

vaarg.end.74:                                     ; preds = %vaarg.in_mem.70, %vaarg.in_reg.68
  %vaarg.addr75 = phi i32* [ %50, %vaarg.in_reg.68 ], [ %52, %vaarg.in_mem.70 ]
  %53 = load i32, i32* %vaarg.addr75
  %54 = load i32, i32* %i, align 4
  %idxprom76 = sext i32 %54 to i64
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rt_val, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom76
  %rtint = bitcast %union.rtunion_def* %arrayidx77 to i32*
  store i32 %53, i32* %rtint, align 4
  br label %sw.epilog

sw.bb.78:                                         ; preds = %for.body
  %arraydecay79 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay79, i32 0, i32 0
  %gp_offset81 = load i32, i32* %gp_offset_p80
  %fits_in_gp82 = icmp ule i32 %gp_offset81, 40
  br i1 %fits_in_gp82, label %vaarg.in_reg.83, label %vaarg.in_mem.85

vaarg.in_reg.83:                                  ; preds = %sw.bb.78
  %56 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay79, i32 0, i32 3
  %reg_save_area84 = load i8*, i8** %56
  %57 = getelementptr i8, i8* %reg_save_area84, i32 %gp_offset81
  %58 = bitcast i8* %57 to i64*
  %59 = add i32 %gp_offset81, 8
  store i32 %59, i32* %gp_offset_p80
  br label %vaarg.end.89

vaarg.in_mem.85:                                  ; preds = %sw.bb.78
  %overflow_arg_area_p86 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay79, i32 0, i32 2
  %overflow_arg_area87 = load i8*, i8** %overflow_arg_area_p86
  %60 = bitcast i8* %overflow_arg_area87 to i64*
  %overflow_arg_area.next88 = getelementptr i8, i8* %overflow_arg_area87, i32 8
  store i8* %overflow_arg_area.next88, i8** %overflow_arg_area_p86
  br label %vaarg.end.89

vaarg.end.89:                                     ; preds = %vaarg.in_mem.85, %vaarg.in_reg.83
  %vaarg.addr90 = phi i64* [ %58, %vaarg.in_reg.83 ], [ %60, %vaarg.in_mem.85 ]
  %61 = load i64, i64* %vaarg.addr90
  %62 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %62 to i64
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rt_val, align 8
  %fld92 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx93 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld92, i32 0, i64 %idxprom91
  %rtwint = bitcast %union.rtunion_def* %arrayidx93 to i64*
  store i64 %61, i64* %rtwint, align 8
  br label %sw.epilog

sw.bb.94:                                         ; preds = %for.body
  %arraydecay95 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p96 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay95, i32 0, i32 0
  %gp_offset97 = load i32, i32* %gp_offset_p96
  %fits_in_gp98 = icmp ule i32 %gp_offset97, 40
  br i1 %fits_in_gp98, label %vaarg.in_reg.99, label %vaarg.in_mem.101

vaarg.in_reg.99:                                  ; preds = %sw.bb.94
  %64 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay95, i32 0, i32 3
  %reg_save_area100 = load i8*, i8** %64
  %65 = getelementptr i8, i8* %reg_save_area100, i32 %gp_offset97
  %66 = bitcast i8* %65 to i8**
  %67 = add i32 %gp_offset97, 8
  store i32 %67, i32* %gp_offset_p96
  br label %vaarg.end.105

vaarg.in_mem.101:                                 ; preds = %sw.bb.94
  %overflow_arg_area_p102 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay95, i32 0, i32 2
  %overflow_arg_area103 = load i8*, i8** %overflow_arg_area_p102
  %68 = bitcast i8* %overflow_arg_area103 to i8**
  %overflow_arg_area.next104 = getelementptr i8, i8* %overflow_arg_area103, i32 8
  store i8* %overflow_arg_area.next104, i8** %overflow_arg_area_p102
  br label %vaarg.end.105

vaarg.end.105:                                    ; preds = %vaarg.in_mem.101, %vaarg.in_reg.99
  %vaarg.addr106 = phi i8** [ %66, %vaarg.in_reg.99 ], [ %68, %vaarg.in_mem.101 ]
  %69 = load i8*, i8** %vaarg.addr106
  %70 = load i32, i32* %i, align 4
  %idxprom107 = sext i32 %70 to i64
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rt_val, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 %idxprom107
  %rtstr = bitcast %union.rtunion_def* %arrayidx109 to i8**
  store i8* %69, i8** %rtstr, align 8
  br label %sw.epilog

sw.bb.110:                                        ; preds = %for.body, %for.body
  %arraydecay111 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p112 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay111, i32 0, i32 0
  %gp_offset113 = load i32, i32* %gp_offset_p112
  %fits_in_gp114 = icmp ule i32 %gp_offset113, 40
  br i1 %fits_in_gp114, label %vaarg.in_reg.115, label %vaarg.in_mem.117

vaarg.in_reg.115:                                 ; preds = %sw.bb.110
  %72 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay111, i32 0, i32 3
  %reg_save_area116 = load i8*, i8** %72
  %73 = getelementptr i8, i8* %reg_save_area116, i32 %gp_offset113
  %74 = bitcast i8* %73 to %struct.rtx_def**
  %75 = add i32 %gp_offset113, 8
  store i32 %75, i32* %gp_offset_p112
  br label %vaarg.end.121

vaarg.in_mem.117:                                 ; preds = %sw.bb.110
  %overflow_arg_area_p118 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay111, i32 0, i32 2
  %overflow_arg_area119 = load i8*, i8** %overflow_arg_area_p118
  %76 = bitcast i8* %overflow_arg_area119 to %struct.rtx_def**
  %overflow_arg_area.next120 = getelementptr i8, i8* %overflow_arg_area119, i32 8
  store i8* %overflow_arg_area.next120, i8** %overflow_arg_area_p118
  br label %vaarg.end.121

vaarg.end.121:                                    ; preds = %vaarg.in_mem.117, %vaarg.in_reg.115
  %vaarg.addr122 = phi %struct.rtx_def** [ %74, %vaarg.in_reg.115 ], [ %76, %vaarg.in_mem.117 ]
  %77 = load %struct.rtx_def*, %struct.rtx_def** %vaarg.addr122
  %78 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %78 to i64
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rt_val, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %79, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 %idxprom123
  %rtx = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtx_def**
  store %struct.rtx_def* %77, %struct.rtx_def** %rtx, align 8
  br label %sw.epilog

sw.bb.126:                                        ; preds = %for.body
  %arraydecay127 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p128 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay127, i32 0, i32 0
  %gp_offset129 = load i32, i32* %gp_offset_p128
  %fits_in_gp130 = icmp ule i32 %gp_offset129, 40
  br i1 %fits_in_gp130, label %vaarg.in_reg.131, label %vaarg.in_mem.133

vaarg.in_reg.131:                                 ; preds = %sw.bb.126
  %80 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay127, i32 0, i32 3
  %reg_save_area132 = load i8*, i8** %80
  %81 = getelementptr i8, i8* %reg_save_area132, i32 %gp_offset129
  %82 = bitcast i8* %81 to %struct.rtvec_def**
  %83 = add i32 %gp_offset129, 8
  store i32 %83, i32* %gp_offset_p128
  br label %vaarg.end.137

vaarg.in_mem.133:                                 ; preds = %sw.bb.126
  %overflow_arg_area_p134 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay127, i32 0, i32 2
  %overflow_arg_area135 = load i8*, i8** %overflow_arg_area_p134
  %84 = bitcast i8* %overflow_arg_area135 to %struct.rtvec_def**
  %overflow_arg_area.next136 = getelementptr i8, i8* %overflow_arg_area135, i32 8
  store i8* %overflow_arg_area.next136, i8** %overflow_arg_area_p134
  br label %vaarg.end.137

vaarg.end.137:                                    ; preds = %vaarg.in_mem.133, %vaarg.in_reg.131
  %vaarg.addr138 = phi %struct.rtvec_def** [ %82, %vaarg.in_reg.131 ], [ %84, %vaarg.in_mem.133 ]
  %85 = load %struct.rtvec_def*, %struct.rtvec_def** %vaarg.addr138
  %86 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %86 to i64
  %87 = load %struct.rtx_def*, %struct.rtx_def** %rt_val, align 8
  %fld140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld140, i32 0, i64 %idxprom139
  %rtvec = bitcast %union.rtunion_def* %arrayidx141 to %struct.rtvec_def**
  store %struct.rtvec_def* %85, %struct.rtvec_def** %rtvec, align 8
  br label %sw.epilog

sw.bb.142:                                        ; preds = %for.body
  %arraydecay143 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p144 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay143, i32 0, i32 0
  %gp_offset145 = load i32, i32* %gp_offset_p144
  %fits_in_gp146 = icmp ule i32 %gp_offset145, 40
  br i1 %fits_in_gp146, label %vaarg.in_reg.147, label %vaarg.in_mem.149

vaarg.in_reg.147:                                 ; preds = %sw.bb.142
  %88 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay143, i32 0, i32 3
  %reg_save_area148 = load i8*, i8** %88
  %89 = getelementptr i8, i8* %reg_save_area148, i32 %gp_offset145
  %90 = bitcast i8* %89 to %struct.bitmap_head_def**
  %91 = add i32 %gp_offset145, 8
  store i32 %91, i32* %gp_offset_p144
  br label %vaarg.end.153

vaarg.in_mem.149:                                 ; preds = %sw.bb.142
  %overflow_arg_area_p150 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay143, i32 0, i32 2
  %overflow_arg_area151 = load i8*, i8** %overflow_arg_area_p150
  %92 = bitcast i8* %overflow_arg_area151 to %struct.bitmap_head_def**
  %overflow_arg_area.next152 = getelementptr i8, i8* %overflow_arg_area151, i32 8
  store i8* %overflow_arg_area.next152, i8** %overflow_arg_area_p150
  br label %vaarg.end.153

vaarg.end.153:                                    ; preds = %vaarg.in_mem.149, %vaarg.in_reg.147
  %vaarg.addr154 = phi %struct.bitmap_head_def** [ %90, %vaarg.in_reg.147 ], [ %92, %vaarg.in_mem.149 ]
  %93 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %vaarg.addr154
  %94 = load i32, i32* %i, align 4
  %idxprom155 = sext i32 %94 to i64
  %95 = load %struct.rtx_def*, %struct.rtx_def** %rt_val, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 %idxprom155
  %rtbit = bitcast %union.rtunion_def* %arrayidx157 to %struct.bitmap_head_def**
  store %struct.bitmap_head_def* %93, %struct.bitmap_head_def** %rtbit, align 8
  br label %sw.epilog

sw.bb.158:                                        ; preds = %for.body
  %arraydecay159 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p160 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay159, i32 0, i32 0
  %gp_offset161 = load i32, i32* %gp_offset_p160
  %fits_in_gp162 = icmp ule i32 %gp_offset161, 40
  br i1 %fits_in_gp162, label %vaarg.in_reg.163, label %vaarg.in_mem.165

vaarg.in_reg.163:                                 ; preds = %sw.bb.158
  %96 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay159, i32 0, i32 3
  %reg_save_area164 = load i8*, i8** %96
  %97 = getelementptr i8, i8* %reg_save_area164, i32 %gp_offset161
  %98 = bitcast i8* %97 to %union.tree_node**
  %99 = add i32 %gp_offset161, 8
  store i32 %99, i32* %gp_offset_p160
  br label %vaarg.end.169

vaarg.in_mem.165:                                 ; preds = %sw.bb.158
  %overflow_arg_area_p166 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay159, i32 0, i32 2
  %overflow_arg_area167 = load i8*, i8** %overflow_arg_area_p166
  %100 = bitcast i8* %overflow_arg_area167 to %union.tree_node**
  %overflow_arg_area.next168 = getelementptr i8, i8* %overflow_arg_area167, i32 8
  store i8* %overflow_arg_area.next168, i8** %overflow_arg_area_p166
  br label %vaarg.end.169

vaarg.end.169:                                    ; preds = %vaarg.in_mem.165, %vaarg.in_reg.163
  %vaarg.addr170 = phi %union.tree_node** [ %98, %vaarg.in_reg.163 ], [ %100, %vaarg.in_mem.165 ]
  %101 = load %union.tree_node*, %union.tree_node** %vaarg.addr170
  %102 = load i32, i32* %i, align 4
  %idxprom171 = sext i32 %102 to i64
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rt_val, align 8
  %fld172 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %103, i32 0, i32 1
  %arrayidx173 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld172, i32 0, i64 %idxprom171
  %rttree = bitcast %union.rtunion_def* %arrayidx173 to %union.tree_node**
  store %union.tree_node* %101, %union.tree_node** %rttree, align 8
  br label %sw.epilog

sw.default.174:                                   ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 589, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @__FUNCTION__.gen_rtx, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %vaarg.end.169, %vaarg.end.153, %vaarg.end.137, %vaarg.end.121, %vaarg.end.105, %vaarg.end.89, %vaarg.end.74, %sw.bb.62
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog
  %104 = load i32, i32* %i, align 4
  %inc = add nsw i32 %104, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog.175

sw.epilog.175:                                    ; preds = %for.end, %vaarg.end.54, %vaarg.end.40, %vaarg.end.26, %vaarg.end
  %arraydecay176 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay176177 = bitcast %struct.__va_list_tag* %arraydecay176 to i8*
  call void @llvm.va_end(i8* %arraydecay176177)
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rt_val, align 8
  ret %struct.rtx_def* %105
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: nounwind uwtable
define %struct.rtvec_def* @gen_rtvec(i32 %n, ...) #0 {
entry:
  %retval = alloca %struct.rtvec_def*, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %save_n = alloca i32, align 4
  %vector = alloca %struct.rtx_def**, align 8
  %p = alloca [1 x %struct.__va_list_tag], align 16
  store i32 %n, i32* %n.addr, align 4
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*
  call void @llvm.va_start(i8* %arraydecay1)
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtvec_def* null, %struct.rtvec_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 8
  %2 = alloca i8, i64 %mul
  %3 = bitcast i8* %2 to %struct.rtx_def**
  store %struct.rtx_def** %3, %struct.rtx_def*** %vector, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* %n.addr, align 4
  %cmp2 = icmp slt i32 %4, %5
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 0
  %gp_offset = load i32, i32* %gp_offset_p
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %for.body
  %6 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 3
  %reg_save_area = load i8*, i8** %6
  %7 = getelementptr i8, i8* %reg_save_area, i32 %gp_offset
  %8 = bitcast i8* %7 to %struct.rtx_def**
  %9 = add i32 %gp_offset, 8
  store i32 %9, i32* %gp_offset_p
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %arraydecay4, i32 0, i32 2
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p
  %10 = bitcast i8* %overflow_arg_area to %struct.rtx_def**
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i32 8
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi %struct.rtx_def** [ %8, %vaarg.in_reg ], [ %10, %vaarg.in_mem ]
  %11 = load %struct.rtx_def*, %struct.rtx_def** %vaarg.addr
  %12 = load i32, i32* %i, align 4
  %idxprom = sext i32 %12 to i64
  %13 = load %struct.rtx_def**, %struct.rtx_def*** %vector, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %13, i64 %idxprom
  store %struct.rtx_def* %11, %struct.rtx_def** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %vaarg.end
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load i32, i32* %n.addr, align 4
  store i32 %15, i32* %save_n, align 4
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %p, i32 0, i32 0
  %arraydecay56 = bitcast %struct.__va_list_tag* %arraydecay5 to i8*
  call void @llvm.va_end(i8* %arraydecay56)
  %16 = load i32, i32* %save_n, align 4
  %17 = load %struct.rtx_def**, %struct.rtx_def*** %vector, align 8
  %call = call %struct.rtvec_def* @gen_rtvec_v(i32 %16, %struct.rtx_def** %17)
  store %struct.rtvec_def* %call, %struct.rtvec_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %18 = load %struct.rtvec_def*, %struct.rtvec_def** %retval
  ret %struct.rtvec_def* %18
}

; Function Attrs: nounwind uwtable
define %struct.rtvec_def* @gen_rtvec_v(i32 %n, %struct.rtx_def** %argp) #0 {
entry:
  %retval = alloca %struct.rtvec_def*, align 8
  %n.addr = alloca i32, align 4
  %argp.addr = alloca %struct.rtx_def**, align 8
  %i = alloca i32, align 4
  %rt_val = alloca %struct.rtvec_def*, align 8
  store i32 %n, i32* %n.addr, align 4
  store %struct.rtx_def** %argp, %struct.rtx_def*** %argp.addr, align 8
  %0 = load i32, i32* %n.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtvec_def* null, %struct.rtvec_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %n.addr, align 4
  %call = call %struct.rtvec_def* @rtvec_alloc(i32 %1)
  store %struct.rtvec_def* %call, %struct.rtvec_def** %rt_val, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %n.addr, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %argp.addr, align 8
  %incdec.ptr = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %4, i32 1
  store %struct.rtx_def** %incdec.ptr, %struct.rtx_def*** %argp.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_val, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  store %struct.rtx_def* %5, %struct.rtx_def** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_val, align 8
  store %struct.rtvec_def* %9, %struct.rtvec_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %10 = load %struct.rtvec_def*, %struct.rtvec_def** %retval
  ret %struct.rtvec_def* %10
}

declare %struct.rtvec_def* @rtvec_alloc(i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_reg_rtx(i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %f = alloca %struct.function*, align 8
  %val = alloca %struct.rtx_def*, align 8
  %realpart = alloca %struct.rtx_def*, align 8
  %imagpart = alloca %struct.rtx_def*, align 8
  %size = alloca i32, align 4
  %partmode = alloca i32, align 4
  %old_size = alloca i32, align 4
  %new = alloca i8*, align 8
  %new1 = alloca %struct.rtx_def**, align 8
  %new2 = alloca %union.tree_node**, align 8
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  store %struct.function* %0, %struct.function** %f, align 8
  %1 = load i32, i32* @no_new_pseudos, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 662, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.gen_reg_rtx, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* @generating_concat_p, align 4
  %tobool1 = icmp ne i32 %2, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %4 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %4, 6
  br i1 %cmp, label %if.then.5, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %5 = load i32, i32* %mode.addr, align 4
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom2
  %6 = load i32, i32* %arrayidx3, align 4
  %cmp4 = icmp eq i32 %6, 5
  br i1 %cmp4, label %if.then.5, label %if.end.15

if.then.5:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %7 = load i32, i32* %mode.addr, align 4
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom6
  %8 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %8 to i32
  store i32 %conv, i32* %size, align 4
  %9 = load i32, i32* %size, align 4
  %mul = mul nsw i32 %9, 8
  %10 = load i32, i32* %mode.addr, align 4
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom8
  %11 = load i32, i32* %arrayidx9, align 4
  %cmp10 = icmp eq i32 %11, 6
  %cond = select i1 %cmp10, i32 2, i32 1
  %call = call i32 @mode_for_size(i32 %mul, i32 %cond, i32 0)
  store i32 %call, i32* %partmode, align 4
  %12 = load i32, i32* %partmode, align 4
  %call12 = call %struct.rtx_def* @gen_reg_rtx(i32 %12)
  store %struct.rtx_def* %call12, %struct.rtx_def** %realpart, align 8
  %13 = load i32, i32* %partmode, align 4
  %call13 = call %struct.rtx_def* @gen_reg_rtx(i32 %13)
  store %struct.rtx_def* %call13, %struct.rtx_def** %imagpart, align 8
  %14 = load i32, i32* %mode.addr, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %realpart, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %imagpart, align 8
  %call14 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 65, i32 %14, %struct.rtx_def* %15, %struct.rtx_def* %16)
  store %struct.rtx_def* %call14, %struct.rtx_def** %retval
  br label %return

if.end.15:                                        ; preds = %lor.lhs.false, %if.end
  %17 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %17, i32 0, i32 3
  %18 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_reg_rtx_no = getelementptr inbounds %struct.emit_status, %struct.emit_status* %18, i32 0, i32 0
  %19 = load i32, i32* %x_reg_rtx_no, align 4
  %20 = load %struct.function*, %struct.function** %f, align 8
  %emit16 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 3
  %21 = load %struct.emit_status*, %struct.emit_status** %emit16, align 8
  %regno_pointer_align_length = getelementptr inbounds %struct.emit_status, %struct.emit_status* %21, i32 0, i32 9
  %22 = load i32, i32* %regno_pointer_align_length, align 4
  %cmp17 = icmp eq i32 %19, %22
  br i1 %cmp17, label %if.then.19, label %if.end.54

if.then.19:                                       ; preds = %if.end.15
  %23 = load %struct.function*, %struct.function** %f, align 8
  %emit20 = getelementptr inbounds %struct.function, %struct.function* %23, i32 0, i32 3
  %24 = load %struct.emit_status*, %struct.emit_status** %emit20, align 8
  %regno_pointer_align_length21 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %24, i32 0, i32 9
  %25 = load i32, i32* %regno_pointer_align_length21, align 4
  store i32 %25, i32* %old_size, align 4
  %26 = load %struct.function*, %struct.function** %f, align 8
  %emit22 = getelementptr inbounds %struct.function, %struct.function* %26, i32 0, i32 3
  %27 = load %struct.emit_status*, %struct.emit_status** %emit22, align 8
  %regno_pointer_align = getelementptr inbounds %struct.emit_status, %struct.emit_status* %27, i32 0, i32 10
  %28 = load i8*, i8** %regno_pointer_align, align 8
  %29 = load i32, i32* %old_size, align 4
  %mul23 = mul nsw i32 %29, 2
  %conv24 = sext i32 %mul23 to i64
  %call25 = call i8* @xrealloc(i8* %28, i64 %conv24)
  store i8* %call25, i8** %new, align 8
  %30 = load i8*, i8** %new, align 8
  %31 = load i32, i32* %old_size, align 4
  %idx.ext = sext i32 %31 to i64
  %add.ptr = getelementptr inbounds i8, i8* %30, i64 %idx.ext
  %32 = load i32, i32* %old_size, align 4
  %conv26 = sext i32 %32 to i64
  call void @llvm.memset.p0i8.i64(i8* %add.ptr, i8 0, i64 %conv26, i32 1, i1 false)
  %33 = load i8*, i8** %new, align 8
  %34 = load %struct.function*, %struct.function** %f, align 8
  %emit27 = getelementptr inbounds %struct.function, %struct.function* %34, i32 0, i32 3
  %35 = load %struct.emit_status*, %struct.emit_status** %emit27, align 8
  %regno_pointer_align28 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %35, i32 0, i32 10
  store i8* %33, i8** %regno_pointer_align28, align 8
  %36 = load %struct.function*, %struct.function** %f, align 8
  %emit29 = getelementptr inbounds %struct.function, %struct.function* %36, i32 0, i32 3
  %37 = load %struct.emit_status*, %struct.emit_status** %emit29, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %37, i32 0, i32 12
  %38 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %39 = bitcast %struct.rtx_def** %38 to i8*
  %40 = load i32, i32* %old_size, align 4
  %mul30 = mul nsw i32 %40, 2
  %conv31 = sext i32 %mul30 to i64
  %mul32 = mul i64 %conv31, 8
  %call33 = call i8* @xrealloc(i8* %39, i64 %mul32)
  %41 = bitcast i8* %call33 to %struct.rtx_def**
  store %struct.rtx_def** %41, %struct.rtx_def*** %new1, align 8
  %42 = load %struct.rtx_def**, %struct.rtx_def*** %new1, align 8
  %43 = load i32, i32* %old_size, align 4
  %idx.ext34 = sext i32 %43 to i64
  %add.ptr35 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %42, i64 %idx.ext34
  %44 = bitcast %struct.rtx_def** %add.ptr35 to i8*
  %45 = load i32, i32* %old_size, align 4
  %conv36 = sext i32 %45 to i64
  %mul37 = mul i64 %conv36, 8
  call void @llvm.memset.p0i8.i64(i8* %44, i8 0, i64 %mul37, i32 8, i1 false)
  %46 = load %struct.rtx_def**, %struct.rtx_def*** %new1, align 8
  %47 = load %struct.function*, %struct.function** @cfun, align 8
  %emit38 = getelementptr inbounds %struct.function, %struct.function* %47, i32 0, i32 3
  %48 = load %struct.emit_status*, %struct.emit_status** %emit38, align 8
  %x_regno_reg_rtx39 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %48, i32 0, i32 12
  store %struct.rtx_def** %46, %struct.rtx_def*** %x_regno_reg_rtx39, align 8
  %49 = load %struct.function*, %struct.function** %f, align 8
  %emit40 = getelementptr inbounds %struct.function, %struct.function* %49, i32 0, i32 3
  %50 = load %struct.emit_status*, %struct.emit_status** %emit40, align 8
  %regno_decl = getelementptr inbounds %struct.emit_status, %struct.emit_status* %50, i32 0, i32 11
  %51 = load %union.tree_node**, %union.tree_node*** %regno_decl, align 8
  %52 = bitcast %union.tree_node** %51 to i8*
  %53 = load i32, i32* %old_size, align 4
  %mul41 = mul nsw i32 %53, 2
  %conv42 = sext i32 %mul41 to i64
  %mul43 = mul i64 %conv42, 8
  %call44 = call i8* @xrealloc(i8* %52, i64 %mul43)
  %54 = bitcast i8* %call44 to %union.tree_node**
  store %union.tree_node** %54, %union.tree_node*** %new2, align 8
  %55 = load %union.tree_node**, %union.tree_node*** %new2, align 8
  %56 = load i32, i32* %old_size, align 4
  %idx.ext45 = sext i32 %56 to i64
  %add.ptr46 = getelementptr inbounds %union.tree_node*, %union.tree_node** %55, i64 %idx.ext45
  %57 = bitcast %union.tree_node** %add.ptr46 to i8*
  %58 = load i32, i32* %old_size, align 4
  %conv47 = sext i32 %58 to i64
  %mul48 = mul i64 %conv47, 8
  call void @llvm.memset.p0i8.i64(i8* %57, i8 0, i64 %mul48, i32 8, i1 false)
  %59 = load %union.tree_node**, %union.tree_node*** %new2, align 8
  %60 = load %struct.function*, %struct.function** %f, align 8
  %emit49 = getelementptr inbounds %struct.function, %struct.function* %60, i32 0, i32 3
  %61 = load %struct.emit_status*, %struct.emit_status** %emit49, align 8
  %regno_decl50 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %61, i32 0, i32 11
  store %union.tree_node** %59, %union.tree_node*** %regno_decl50, align 8
  %62 = load i32, i32* %old_size, align 4
  %mul51 = mul nsw i32 %62, 2
  %63 = load %struct.function*, %struct.function** %f, align 8
  %emit52 = getelementptr inbounds %struct.function, %struct.function* %63, i32 0, i32 3
  %64 = load %struct.emit_status*, %struct.emit_status** %emit52, align 8
  %regno_pointer_align_length53 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %64, i32 0, i32 9
  store i32 %mul51, i32* %regno_pointer_align_length53, align 4
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.19, %if.end.15
  %65 = load i32, i32* %mode.addr, align 4
  %66 = load %struct.function*, %struct.function** @cfun, align 8
  %emit55 = getelementptr inbounds %struct.function, %struct.function* %66, i32 0, i32 3
  %67 = load %struct.emit_status*, %struct.emit_status** %emit55, align 8
  %x_reg_rtx_no56 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %67, i32 0, i32 0
  %68 = load i32, i32* %x_reg_rtx_no56, align 4
  %call57 = call %struct.rtx_def* @gen_raw_REG(i32 %65, i32 %68)
  store %struct.rtx_def* %call57, %struct.rtx_def** %val, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  %70 = load %struct.function*, %struct.function** @cfun, align 8
  %emit58 = getelementptr inbounds %struct.function, %struct.function* %70, i32 0, i32 3
  %71 = load %struct.emit_status*, %struct.emit_status** %emit58, align 8
  %x_reg_rtx_no59 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %71, i32 0, i32 0
  %72 = load i32, i32* %x_reg_rtx_no59, align 4
  %inc = add nsw i32 %72, 1
  store i32 %inc, i32* %x_reg_rtx_no59, align 4
  %idxprom60 = sext i32 %72 to i64
  %73 = load %struct.function*, %struct.function** @cfun, align 8
  %emit61 = getelementptr inbounds %struct.function, %struct.function* %73, i32 0, i32 3
  %74 = load %struct.emit_status*, %struct.emit_status** %emit61, align 8
  %x_regno_reg_rtx62 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %74, i32 0, i32 12
  %75 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx62, align 8
  %arrayidx63 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %75, i64 %idxprom60
  store %struct.rtx_def* %69, %struct.rtx_def** %arrayidx63, align 8
  %76 = load %struct.rtx_def*, %struct.rtx_def** %val, align 8
  store %struct.rtx_def* %76, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.54, %if.then.5
  %77 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %77
}

declare i32 @mode_for_size(i32, i32, i32) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind uwtable
define void @mark_user_reg(%struct.rtx_def* %reg) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 65
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.clear2 = and i32 %bf.load1, -134217729
  %bf.set = or i32 %bf.clear2, 134217728
  store i32 %bf.set, i32* %4, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 1
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load6 = load i32, i32* %7, align 8
  %bf.clear7 = and i32 %bf.load6, -134217729
  %bf.set8 = or i32 %bf.clear7, 134217728
  store i32 %bf.set8, i32* %7, align 8
  br label %if.end.17

if.else:                                          ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load9 = load i32, i32* %9, align 8
  %bf.clear10 = and i32 %bf.load9, 65535
  %cmp11 = icmp eq i32 %bf.clear10, 61
  br i1 %cmp11, label %if.then.12, label %if.else.16

if.then.12:                                       ; preds = %if.else
  %10 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load13 = load i32, i32* %11, align 8
  %bf.clear14 = and i32 %bf.load13, -134217729
  %bf.set15 = or i32 %bf.clear14, 134217728
  store i32 %bf.set15, i32* %11, align 8
  br label %if.end

if.else.16:                                       ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 732, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.mark_user_reg, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then.12
  br label %if.end.17

if.end.17:                                        ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @mark_reg_pointer(%struct.rtx_def* %reg, i32 %align) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %align.addr = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store i32 %align, i32* %align.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 31
  %tobool = icmp ne i32 %bf.lshr, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load1, 2147483647
  %bf.set = or i32 %bf.clear, -2147483648
  store i32 %bf.set, i32* %3, align 8
  %4 = load i32, i32* %align.addr, align 4
  %tobool2 = icmp ne i32 %4, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load i32, i32* %align.addr, align 4
  %conv = trunc i32 %5 to i8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %7 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %7 to i64
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 3
  %9 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %regno_pointer_align = getelementptr inbounds %struct.emit_status, %struct.emit_status* %9, i32 0, i32 10
  %10 = load i8*, i8** %regno_pointer_align, align 8
  %arrayidx4 = getelementptr inbounds i8, i8* %10, i64 %idxprom
  store i8 %conv, i8* %arrayidx4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.25

if.else:                                          ; preds = %entry
  %11 = load i32, i32* %align.addr, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %if.else
  %12 = load i32, i32* %align.addr, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %14 = load i32, i32* %rtuint8, align 4
  %idxprom9 = zext i32 %14 to i64
  %15 = load %struct.function*, %struct.function** @cfun, align 8
  %emit10 = getelementptr inbounds %struct.function, %struct.function* %15, i32 0, i32 3
  %16 = load %struct.emit_status*, %struct.emit_status** %emit10, align 8
  %regno_pointer_align11 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %16, i32 0, i32 10
  %17 = load i8*, i8** %regno_pointer_align11, align 8
  %arrayidx12 = getelementptr inbounds i8, i8* %17, i64 %idxprom9
  %18 = load i8, i8* %arrayidx12, align 1
  %conv13 = zext i8 %18 to i32
  %cmp = icmp slt i32 %12, %conv13
  br i1 %cmp, label %if.then.15, label %if.end.24

if.then.15:                                       ; preds = %land.lhs.true
  %19 = load i32, i32* %align.addr, align 4
  %conv16 = trunc i32 %19 to i8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtuint19 = bitcast %union.rtunion_def* %arrayidx18 to i32*
  %21 = load i32, i32* %rtuint19, align 4
  %idxprom20 = zext i32 %21 to i64
  %22 = load %struct.function*, %struct.function** @cfun, align 8
  %emit21 = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 3
  %23 = load %struct.emit_status*, %struct.emit_status** %emit21, align 8
  %regno_pointer_align22 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %23, i32 0, i32 10
  %24 = load i8*, i8** %regno_pointer_align22, align 8
  %arrayidx23 = getelementptr inbounds i8, i8* %24, i64 %idxprom20
  store i8 %conv16, i8* %arrayidx23, align 1
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.15, %land.lhs.true, %if.else
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @max_reg_num() #0 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_reg_rtx_no = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 0
  %2 = load i32, i32* %x_reg_rtx_no, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @max_label_num() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load i32, i32* @last_label_num, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @label_num, align 4
  %2 = load i32, i32* @base_label_num, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i32, i32* @last_label_num, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load i32, i32* @label_num, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define i32 @get_first_label_num() #0 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_label_num = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 1
  %2 = load i32, i32* %x_first_label_num, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define i32 @subreg_hard_regno(%struct.rtx_def* %x, i32 %check_mode) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %check_mode.addr = alloca i32, align 4
  %mode = alloca i32, align 4
  %byte_offset = alloca i32, align 4
  %base_regno = alloca i32, align 4
  %final_regno = alloca i32, align 4
  %reg = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store i32 %check_mode, i32* %check_mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %reg, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load1 = load i32, i32* %5, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp = icmp ne i32 %bf.clear2, 63
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp ne i32 %bf.clear4, 61
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 796, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.subreg_hard_regno, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %8 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %9 = load i32, i32* %rtuint, align 4
  store i32 %9, i32* %base_regno, align 4
  %10 = load i32, i32* %base_regno, align 4
  %cmp8 = icmp uge i32 %10, 53
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 799, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.subreg_hard_regno, i32 0, i32 0)) #6
  unreachable

if.end.10:                                        ; preds = %if.end
  %11 = load i32, i32* %check_mode.addr, align 4
  %tobool = icmp ne i32 %11, 0
  br i1 %tobool, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.10
  %12 = load i32, i32* %base_regno, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load11 = load i32, i32* %14, align 8
  %bf.lshr12 = lshr i32 %bf.load11, 16
  %bf.clear13 = and i32 %bf.lshr12, 255
  %call = call i32 @ix86_hard_regno_mode_ok(i32 %12, i32 %bf.clear13)
  %tobool14 = icmp ne i32 %call, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 801, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.subreg_hard_regno, i32 0, i32 0)) #6
  unreachable

if.end.16:                                        ; preds = %land.lhs.true, %if.end.10
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtuint19 = bitcast %union.rtunion_def* %arrayidx18 to i32*
  %16 = load i32, i32* %rtuint19, align 4
  store i32 %16, i32* %byte_offset, align 4
  %17 = load i32, i32* %byte_offset, align 4
  %18 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %19 = load i8, i8* %arrayidx20, align 1
  %conv = zext i8 %19 to i32
  %rem = urem i32 %17, %conv
  %cmp21 = icmp ne i32 %rem, 0
  br i1 %cmp21, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.16
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 806, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.subreg_hard_regno, i32 0, i32 0)) #6
  unreachable

if.end.24:                                        ; preds = %if.end.16
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call25 = call i32 @subreg_regno(%struct.rtx_def* %20)
  store i32 %call25, i32* %final_regno, align 4
  %21 = load i32, i32* %final_regno, align 4
  ret i32 %21
}

declare i32 @ix86_hard_regno_mode_ok(i32, i32) #1

declare i32 @subreg_regno(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_lowpart_common(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %msize = alloca i32, align 4
  %xsize = alloca i32, align 4
  %offset = alloca i32, align 4
  %val = alloca i64, align 8
  %r = alloca %struct.realvaluetype, align 8
  %i = alloca i64, align 8
  %tmp = alloca %struct.realvaluetype, align 8
  %r273 = alloca %struct.realvaluetype, align 8
  %i275 = alloca [2 x i64], align 16
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  %tmp295 = alloca %struct.realvaluetype, align 8
  %r322 = alloca %struct.realvaluetype, align 8
  %i324 = alloca [4 x i64], align 16
  %endian = alloca i32, align 4
  %u = alloca %union.real_extract, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %msize, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom1 = sext i32 %bf.clear to i64
  %arrayidx2 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %4 to i32
  store i32 %conv3, i32* %xsize, align 4
  store i32 0, i32* %offset, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load4 = load i32, i32* %6, align 8
  %bf.lshr5 = lshr i32 %bf.load4, 16
  %bf.clear6 = and i32 %bf.lshr5, 255
  %7 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %bf.clear6, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = bitcast %struct.rtx_def* %9 to i32*
  %bf.load8 = load i32, i32* %10, align 8
  %bf.lshr9 = lshr i32 %bf.load8, 16
  %bf.clear10 = and i32 %bf.lshr9, 255
  %cmp11 = icmp ne i32 %bf.clear10, 0
  br i1 %cmp11, label %land.lhs.true, label %if.end.28

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %msize, align 4
  %12 = load i32, i32* @target_flags, align 4
  %and = and i32 %12, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %sub = sub nsw i32 %cond, 1
  %add = add nsw i32 %11, %sub
  %13 = load i32, i32* @target_flags, align 4
  %and13 = and i32 %13, 33554432
  %tobool14 = icmp ne i32 %and13, 0
  %cond15 = select i1 %tobool14, i32 8, i32 4
  %div = sdiv i32 %add, %cond15
  %14 = load i32, i32* %xsize, align 4
  %15 = load i32, i32* @target_flags, align 4
  %and16 = and i32 %15, 33554432
  %tobool17 = icmp ne i32 %and16, 0
  %cond18 = select i1 %tobool17, i32 8, i32 4
  %sub19 = sub nsw i32 %cond18, 1
  %add20 = add nsw i32 %14, %sub19
  %16 = load i32, i32* @target_flags, align 4
  %and21 = and i32 %16, 33554432
  %tobool22 = icmp ne i32 %and21, 0
  %cond23 = select i1 %tobool22, i32 8, i32 4
  %div24 = sdiv i32 %add20, %cond23
  %cmp25 = icmp sgt i32 %div, %div24
  br i1 %cmp25, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %land.lhs.true
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.28:                                        ; preds = %land.lhs.true, %if.end
  %17 = load i32, i32* %mode.addr, align 4
  %idxprom29 = sext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom29
  %18 = load i32, i32* %arrayidx30, align 4
  %cmp31 = icmp eq i32 %18, 2
  br i1 %cmp31, label %land.lhs.true.33, label %if.end.43

land.lhs.true.33:                                 ; preds = %if.end.28
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load34 = load i32, i32* %20, align 8
  %bf.lshr35 = lshr i32 %bf.load34, 16
  %bf.clear36 = and i32 %bf.lshr35, 255
  %cmp37 = icmp ne i32 %bf.clear36, 0
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.43

land.lhs.true.39:                                 ; preds = %land.lhs.true.33
  %21 = load i32, i32* %msize, align 4
  %22 = load i32, i32* %xsize, align 4
  %cmp40 = icmp sgt i32 %21, %22
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %land.lhs.true.39
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.43:                                        ; preds = %land.lhs.true.39, %land.lhs.true.33, %if.end.28
  %23 = load i32, i32* %mode.addr, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load44 = load i32, i32* %25, align 8
  %bf.lshr45 = lshr i32 %bf.load44, 16
  %bf.clear46 = and i32 %bf.lshr45, 255
  %call = call i32 @subreg_lowpart_offset(i32 %23, i32 %bf.clear46)
  store i32 %call, i32* %offset, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load47 = load i32, i32* %27, align 8
  %bf.clear48 = and i32 %bf.load47, 65535
  %cmp49 = icmp eq i32 %bf.clear48, 121
  br i1 %cmp49, label %land.lhs.true.55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.43
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load51 = load i32, i32* %29, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 120
  br i1 %cmp53, label %land.lhs.true.55, label %if.else.117

land.lhs.true.55:                                 ; preds = %lor.lhs.false, %if.end.43
  %30 = load i32, i32* %mode.addr, align 4
  %idxprom56 = sext i32 %30 to i64
  %arrayidx57 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom56
  %31 = load i32, i32* %arrayidx57, align 4
  %cmp58 = icmp eq i32 %31, 1
  br i1 %cmp58, label %if.then.65, label %lor.lhs.false.60

lor.lhs.false.60:                                 ; preds = %land.lhs.true.55
  %32 = load i32, i32* %mode.addr, align 4
  %idxprom61 = sext i32 %32 to i64
  %arrayidx62 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom61
  %33 = load i32, i32* %arrayidx62, align 4
  %cmp63 = icmp eq i32 %33, 3
  br i1 %cmp63, label %if.then.65, label %if.else.117

if.then.65:                                       ; preds = %lor.lhs.false.60, %land.lhs.true.55
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %35 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load67 = load i32, i32* %36, align 8
  %bf.lshr68 = lshr i32 %bf.load67, 16
  %bf.clear69 = and i32 %bf.lshr68, 255
  %37 = load i32, i32* %mode.addr, align 4
  %cmp70 = icmp eq i32 %bf.clear69, %37
  br i1 %cmp70, label %if.then.72, label %if.else

if.then.72:                                       ; preds = %if.then.65
  %38 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtx75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx75, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %if.then.65
  %40 = load i32, i32* %mode.addr, align 4
  %idxprom76 = sext i32 %40 to i64
  %arrayidx77 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom76
  %41 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %41 to i32
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 0
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %43 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load82 = load i32, i32* %44, align 8
  %bf.lshr83 = lshr i32 %bf.load82, 16
  %bf.clear84 = and i32 %bf.lshr83, 255
  %idxprom85 = sext i32 %bf.clear84 to i64
  %arrayidx86 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom85
  %45 = load i8, i8* %arrayidx86, align 1
  %conv87 = zext i8 %45 to i32
  %cmp88 = icmp slt i32 %conv78, %conv87
  br i1 %cmp88, label %if.then.90, label %if.else.95

if.then.90:                                       ; preds = %if.else
  %46 = load i32, i32* %mode.addr, align 4
  %47 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtx93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtx_def**
  %48 = load %struct.rtx_def*, %struct.rtx_def** %rtx93, align 8
  %call94 = call %struct.rtx_def* @gen_lowpart_common(i32 %46, %struct.rtx_def* %48)
  store %struct.rtx_def* %call94, %struct.rtx_def** %retval
  br label %return

if.else.95:                                       ; preds = %if.else
  %49 = load i32, i32* %mode.addr, align 4
  %idxprom96 = sext i32 %49 to i64
  %arrayidx97 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom96
  %50 = load i8, i8* %arrayidx97, align 1
  %conv98 = zext i8 %50 to i32
  %51 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load99 = load i32, i32* %52, align 8
  %bf.lshr100 = lshr i32 %bf.load99, 16
  %bf.clear101 = and i32 %bf.lshr100, 255
  %idxprom102 = sext i32 %bf.clear101 to i64
  %arrayidx103 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom102
  %53 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %53 to i32
  %cmp105 = icmp slt i32 %conv98, %conv104
  br i1 %cmp105, label %if.then.107, label %if.end.114

if.then.107:                                      ; preds = %if.else.95
  %54 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load108 = load i32, i32* %55, align 8
  %bf.clear109 = and i32 %bf.load108, 65535
  %56 = load i32, i32* %mode.addr, align 4
  %57 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 0
  %rtx112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx112, align 8
  %call113 = call %struct.rtx_def* @gen_rtx_fmt_e(i32 %bf.clear109, i32 %56, %struct.rtx_def* %58)
  store %struct.rtx_def* %call113, %struct.rtx_def** %retval
  br label %return

if.end.114:                                       ; preds = %if.else.95
  br label %if.end.115

if.end.115:                                       ; preds = %if.end.114
  br label %if.end.116

if.end.116:                                       ; preds = %if.end.115
  br label %if.end.443

if.else.117:                                      ; preds = %lor.lhs.false.60, %lor.lhs.false
  %59 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load118 = load i32, i32* %60, align 8
  %bf.clear119 = and i32 %bf.load118, 65535
  %cmp120 = icmp eq i32 %bf.clear119, 63
  br i1 %cmp120, label %if.then.132, label %lor.lhs.false.122

lor.lhs.false.122:                                ; preds = %if.else.117
  %61 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load123 = load i32, i32* %62, align 8
  %bf.clear124 = and i32 %bf.load123, 65535
  %cmp125 = icmp eq i32 %bf.clear124, 61
  br i1 %cmp125, label %if.then.132, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %lor.lhs.false.122
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %64 = bitcast %struct.rtx_def* %63 to i32*
  %bf.load128 = load i32, i32* %64, align 8
  %bf.clear129 = and i32 %bf.load128, 65535
  %cmp130 = icmp eq i32 %bf.clear129, 65
  br i1 %cmp130, label %if.then.132, label %if.else.137

if.then.132:                                      ; preds = %lor.lhs.false.127, %lor.lhs.false.122, %if.else.117
  %65 = load i32, i32* %mode.addr, align 4
  %66 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load133 = load i32, i32* %68, align 8
  %bf.lshr134 = lshr i32 %bf.load133, 16
  %bf.clear135 = and i32 %bf.lshr134, 255
  %69 = load i32, i32* %offset, align 4
  %call136 = call %struct.rtx_def* @simplify_gen_subreg(i32 %65, %struct.rtx_def* %66, i32 %bf.clear135, i32 %69)
  store %struct.rtx_def* %call136, %struct.rtx_def** %retval
  br label %return

if.else.137:                                      ; preds = %lor.lhs.false.127
  %70 = load i32, i32* %mode.addr, align 4
  %idxprom138 = sext i32 %70 to i64
  %arrayidx139 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom138
  %71 = load i32, i32* %arrayidx139, align 4
  %cmp140 = icmp eq i32 %71, 1
  br i1 %cmp140, label %land.lhs.true.147, label %lor.lhs.false.142

lor.lhs.false.142:                                ; preds = %if.else.137
  %72 = load i32, i32* %mode.addr, align 4
  %idxprom143 = sext i32 %72 to i64
  %arrayidx144 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom143
  %73 = load i32, i32* %arrayidx144, align 4
  %cmp145 = icmp eq i32 %73, 3
  br i1 %cmp145, label %land.lhs.true.147, label %if.else.223

land.lhs.true.147:                                ; preds = %lor.lhs.false.142, %if.else.137
  %74 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load148 = load i32, i32* %75, align 8
  %bf.lshr149 = lshr i32 %bf.load148, 16
  %bf.clear150 = and i32 %bf.lshr149, 255
  %cmp151 = icmp eq i32 %bf.clear150, 0
  br i1 %cmp151, label %land.lhs.true.153, label %if.else.223

land.lhs.true.153:                                ; preds = %land.lhs.true.147
  %76 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load154 = load i32, i32* %77, align 8
  %bf.clear155 = and i32 %bf.load154, 65535
  %cmp156 = icmp eq i32 %bf.clear155, 54
  br i1 %cmp156, label %if.then.163, label %lor.lhs.false.158

lor.lhs.false.158:                                ; preds = %land.lhs.true.153
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load159 = load i32, i32* %79, align 8
  %bf.clear160 = and i32 %bf.load159, 65535
  %cmp161 = icmp eq i32 %bf.clear160, 55
  br i1 %cmp161, label %if.then.163, label %if.else.223

if.then.163:                                      ; preds = %lor.lhs.false.158, %land.lhs.true.153
  %80 = load i32, i32* %mode.addr, align 4
  %idxprom164 = sext i32 %80 to i64
  %arrayidx165 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom164
  %81 = load i16, i16* %arrayidx165, align 2
  %conv166 = zext i16 %81 to i32
  %cmp167 = icmp sge i32 %conv166, 128
  br i1 %cmp167, label %if.then.169, label %if.else.170

if.then.169:                                      ; preds = %if.then.163
  %82 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %82, %struct.rtx_def** %retval
  br label %return

if.else.170:                                      ; preds = %if.then.163
  %83 = load i32, i32* %mode.addr, align 4
  %idxprom171 = sext i32 %83 to i64
  %arrayidx172 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom171
  %84 = load i16, i16* %arrayidx172, align 2
  %conv173 = zext i16 %84 to i32
  %cmp174 = icmp sgt i32 %conv173, 64
  br i1 %cmp174, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %if.else.170
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.else.177:                                      ; preds = %if.else.170
  %85 = load i32, i32* %mode.addr, align 4
  %idxprom178 = sext i32 %85 to i64
  %arrayidx179 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom178
  %86 = load i16, i16* %arrayidx179, align 2
  %conv180 = zext i16 %86 to i32
  %cmp181 = icmp eq i32 %conv180, 64
  br i1 %cmp181, label %if.then.183, label %if.else.192

if.then.183:                                      ; preds = %if.else.177
  %87 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load184 = load i32, i32* %88, align 8
  %bf.clear185 = and i32 %bf.load184, 65535
  %cmp186 = icmp eq i32 %bf.clear185, 54
  br i1 %cmp186, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.183
  %89 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.183
  %90 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld188 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %90, i32 0, i32 1
  %arrayidx189 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld188, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx189 to i64*
  %91 = load i64, i64* %rtwint, align 8
  %call190 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %91)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond191 = phi %struct.rtx_def* [ %89, %cond.true ], [ %call190, %cond.false ]
  store %struct.rtx_def* %cond191, %struct.rtx_def** %retval
  br label %return

if.else.192:                                      ; preds = %if.else.177
  %92 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %93 = bitcast %struct.rtx_def* %92 to i32*
  %bf.load193 = load i32, i32* %93, align 8
  %bf.clear194 = and i32 %bf.load193, 65535
  %cmp195 = icmp eq i32 %bf.clear194, 54
  br i1 %cmp195, label %cond.true.197, label %cond.false.201

cond.true.197:                                    ; preds = %if.else.192
  %94 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld198 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx199 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld198, i32 0, i64 0
  %rtwint200 = bitcast %union.rtunion_def* %arrayidx199 to i64*
  %95 = load i64, i64* %rtwint200, align 8
  br label %cond.end.205

cond.false.201:                                   ; preds = %if.else.192
  %96 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld202 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %96, i32 0, i32 1
  %arrayidx203 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld202, i32 0, i64 1
  %rtwint204 = bitcast %union.rtunion_def* %arrayidx203 to i64*
  %97 = load i64, i64* %rtwint204, align 8
  br label %cond.end.205

cond.end.205:                                     ; preds = %cond.false.201, %cond.true.197
  %cond206 = phi i64 [ %95, %cond.true.197 ], [ %97, %cond.false.201 ]
  store i64 %cond206, i64* %val, align 8
  %98 = load i64, i64* %val, align 8
  %99 = load i32, i32* %mode.addr, align 4
  %call207 = call i64 @trunc_int_for_mode(i64 %98, i32 %99)
  store i64 %call207, i64* %val, align 8
  %100 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load208 = load i32, i32* %101, align 8
  %bf.clear209 = and i32 %bf.load208, 65535
  %cmp210 = icmp eq i32 %bf.clear209, 54
  br i1 %cmp210, label %land.lhs.true.212, label %cond.false.219

land.lhs.true.212:                                ; preds = %cond.end.205
  %102 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld213 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx214 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld213, i32 0, i64 0
  %rtwint215 = bitcast %union.rtunion_def* %arrayidx214 to i64*
  %103 = load i64, i64* %rtwint215, align 8
  %104 = load i64, i64* %val, align 8
  %cmp216 = icmp eq i64 %103, %104
  br i1 %cmp216, label %cond.true.218, label %cond.false.219

cond.true.218:                                    ; preds = %land.lhs.true.212
  %105 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  br label %cond.end.221

cond.false.219:                                   ; preds = %land.lhs.true.212, %cond.end.205
  %106 = load i64, i64* %val, align 8
  %call220 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %106)
  br label %cond.end.221

cond.end.221:                                     ; preds = %cond.false.219, %cond.true.218
  %cond222 = phi %struct.rtx_def* [ %105, %cond.true.218 ], [ %call220, %cond.false.219 ]
  store %struct.rtx_def* %cond222, %struct.rtx_def** %retval
  br label %return

if.else.223:                                      ; preds = %lor.lhs.false.158, %land.lhs.true.147, %lor.lhs.false.142
  %107 = load i32, i32* %mode.addr, align 4
  %idxprom224 = sext i32 %107 to i64
  %arrayidx225 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom224
  %108 = load i32, i32* %arrayidx225, align 4
  %cmp226 = icmp eq i32 %108, 2
  br i1 %cmp226, label %land.lhs.true.228, label %if.else.244

land.lhs.true.228:                                ; preds = %if.else.223
  %109 = load i32, i32* %mode.addr, align 4
  %idxprom229 = sext i32 %109 to i64
  %arrayidx230 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom229
  %110 = load i16, i16* %arrayidx230, align 2
  %conv231 = zext i16 %110 to i32
  %cmp232 = icmp eq i32 %conv231, 32
  br i1 %cmp232, label %land.lhs.true.234, label %if.else.244

land.lhs.true.234:                                ; preds = %land.lhs.true.228
  %111 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load235 = load i32, i32* %112, align 8
  %bf.clear236 = and i32 %bf.load235, 65535
  %cmp237 = icmp eq i32 %bf.clear236, 54
  br i1 %cmp237, label %if.then.239, label %if.else.244

if.then.239:                                      ; preds = %land.lhs.true.234
  %113 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld240 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx241 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld240, i32 0, i64 0
  %rtwint242 = bitcast %union.rtunion_def* %arrayidx241 to i64*
  %114 = load i64, i64* %rtwint242, align 8
  store i64 %114, i64* %i, align 8
  %115 = load i64, i64* %i, align 8
  call void @ereal_from_float(%struct.realvaluetype* sret %tmp, i64 %115)
  %116 = bitcast %struct.realvaluetype* %r to i8*
  %117 = bitcast %struct.realvaluetype* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %116, i8* %117, i64 24, i32 8, i1 false)
  %118 = load i32, i32* %mode.addr, align 4
  %call243 = call %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %r, i32 %118)
  store %struct.rtx_def* %call243, %struct.rtx_def** %retval
  br label %return

if.else.244:                                      ; preds = %land.lhs.true.234, %land.lhs.true.228, %if.else.223
  %119 = load i32, i32* %mode.addr, align 4
  %idxprom245 = sext i32 %119 to i64
  %arrayidx246 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom245
  %120 = load i32, i32* %arrayidx246, align 4
  %cmp247 = icmp eq i32 %120, 2
  br i1 %cmp247, label %land.lhs.true.249, label %if.else.297

land.lhs.true.249:                                ; preds = %if.else.244
  %121 = load i32, i32* %mode.addr, align 4
  %idxprom250 = sext i32 %121 to i64
  %arrayidx251 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom250
  %122 = load i16, i16* %arrayidx251, align 2
  %conv252 = zext i16 %122 to i32
  %cmp253 = icmp eq i32 %conv252, 64
  br i1 %cmp253, label %land.lhs.true.255, label %if.else.297

land.lhs.true.255:                                ; preds = %land.lhs.true.249
  %123 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %124 = bitcast %struct.rtx_def* %123 to i32*
  %bf.load256 = load i32, i32* %124, align 8
  %bf.clear257 = and i32 %bf.load256, 65535
  %cmp258 = icmp eq i32 %bf.clear257, 54
  br i1 %cmp258, label %land.lhs.true.265, label %lor.lhs.false.260

lor.lhs.false.260:                                ; preds = %land.lhs.true.255
  %125 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %126 = bitcast %struct.rtx_def* %125 to i32*
  %bf.load261 = load i32, i32* %126, align 8
  %bf.clear262 = and i32 %bf.load261, 65535
  %cmp263 = icmp eq i32 %bf.clear262, 55
  br i1 %cmp263, label %land.lhs.true.265, label %if.else.297

land.lhs.true.265:                                ; preds = %lor.lhs.false.260, %land.lhs.true.255
  %127 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %128 = bitcast %struct.rtx_def* %127 to i32*
  %bf.load266 = load i32, i32* %128, align 8
  %bf.lshr267 = lshr i32 %bf.load266, 16
  %bf.clear268 = and i32 %bf.lshr267, 255
  %cmp269 = icmp eq i32 %bf.clear268, 0
  br i1 %cmp269, label %if.then.271, label %if.else.297

if.then.271:                                      ; preds = %land.lhs.true.265
  %129 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %130 = bitcast %struct.rtx_def* %129 to i32*
  %bf.load278 = load i32, i32* %130, align 8
  %bf.clear279 = and i32 %bf.load278, 65535
  %cmp280 = icmp eq i32 %bf.clear279, 54
  br i1 %cmp280, label %if.then.282, label %if.else.286

if.then.282:                                      ; preds = %if.then.271
  %131 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld283 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %arrayidx284 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld283, i32 0, i64 0
  %rtwint285 = bitcast %union.rtunion_def* %arrayidx284 to i64*
  %132 = load i64, i64* %rtwint285, align 8
  store i64 %132, i64* %low, align 8
  %133 = load i64, i64* %low, align 8
  %shr = ashr i64 %133, 63
  store i64 %shr, i64* %high, align 8
  br label %if.end.293

if.else.286:                                      ; preds = %if.then.271
  %134 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld287 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %134, i32 0, i32 1
  %arrayidx288 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld287, i32 0, i64 1
  %rtwint289 = bitcast %union.rtunion_def* %arrayidx288 to i64*
  %135 = load i64, i64* %rtwint289, align 8
  store i64 %135, i64* %low, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld290 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %136, i32 0, i32 1
  %arrayidx291 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld290, i32 0, i64 2
  %rtwint292 = bitcast %union.rtunion_def* %arrayidx291 to i64*
  %137 = load i64, i64* %rtwint292, align 8
  store i64 %137, i64* %high, align 8
  br label %if.end.293

if.end.293:                                       ; preds = %if.else.286, %if.then.282
  %138 = load i64, i64* %low, align 8
  %arrayidx294 = getelementptr inbounds [2 x i64], [2 x i64]* %i275, i32 0, i64 0
  store i64 %138, i64* %arrayidx294, align 8
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %i275, i32 0, i32 0
  call void @ereal_from_double(%struct.realvaluetype* sret %tmp295, i64* %arraydecay)
  %139 = bitcast %struct.realvaluetype* %r273 to i8*
  %140 = bitcast %struct.realvaluetype* %tmp295 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %139, i8* %140, i64 24, i32 8, i1 false)
  %141 = load i32, i32* %mode.addr, align 4
  %call296 = call %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8 %r273, i32 %141)
  store %struct.rtx_def* %call296, %struct.rtx_def** %retval
  br label %return

if.else.297:                                      ; preds = %land.lhs.true.265, %lor.lhs.false.260, %land.lhs.true.249, %if.else.244
  %142 = load i32, i32* %mode.addr, align 4
  %idxprom298 = sext i32 %142 to i64
  %arrayidx299 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom298
  %143 = load i32, i32* %arrayidx299, align 4
  %cmp300 = icmp eq i32 %143, 1
  br i1 %cmp300, label %land.lhs.true.307, label %lor.lhs.false.302

lor.lhs.false.302:                                ; preds = %if.else.297
  %144 = load i32, i32* %mode.addr, align 4
  %idxprom303 = sext i32 %144 to i64
  %arrayidx304 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom303
  %145 = load i32, i32* %arrayidx304, align 4
  %cmp305 = icmp eq i32 %145, 3
  br i1 %cmp305, label %land.lhs.true.307, label %if.end.438

land.lhs.true.307:                                ; preds = %lor.lhs.false.302, %if.else.297
  %146 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %147 = bitcast %struct.rtx_def* %146 to i32*
  %bf.load308 = load i32, i32* %147, align 8
  %bf.clear309 = and i32 %bf.load308, 65535
  %cmp310 = icmp eq i32 %bf.clear309, 55
  br i1 %cmp310, label %land.lhs.true.312, label %if.end.438

land.lhs.true.312:                                ; preds = %land.lhs.true.307
  %148 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %149 = bitcast %struct.rtx_def* %148 to i32*
  %bf.load313 = load i32, i32* %149, align 8
  %bf.lshr314 = lshr i32 %bf.load313, 16
  %bf.clear315 = and i32 %bf.lshr314, 255
  %idxprom316 = sext i32 %bf.clear315 to i64
  %arrayidx317 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom316
  %150 = load i32, i32* %arrayidx317, align 4
  %cmp318 = icmp eq i32 %150, 2
  br i1 %cmp318, label %if.then.320, label %if.end.438

if.then.320:                                      ; preds = %land.lhs.true.312
  store i32 0, i32* %endian, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.320
  %151 = bitcast %union.real_extract* %u to i8*
  %152 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld327 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %152, i32 0, i32 1
  %arrayidx328 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld327, i32 0, i64 1
  %rtwint329 = bitcast %union.rtunion_def* %arrayidx328 to i64*
  %153 = bitcast i64* %rtwint329 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %151, i8* %153, i64 24, i32 8, i1 false)
  %d = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %154 = bitcast %struct.realvaluetype* %r322 to i8*
  %155 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %154, i8* %155, i64 24, i32 8, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %156 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %157 = bitcast %struct.rtx_def* %156 to i32*
  %bf.load330 = load i32, i32* %157, align 8
  %bf.lshr331 = lshr i32 %bf.load330, 16
  %bf.clear332 = and i32 %bf.lshr331, 255
  %idxprom333 = sext i32 %bf.clear332 to i64
  %arrayidx334 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom333
  %158 = load i16, i16* %arrayidx334, align 2
  %conv335 = zext i16 %158 to i32
  switch i32 %conv335, label %sw.default [
    i32 32, label %sw.bb
    i32 64, label %sw.bb.345
    i32 96, label %sw.bb.356
    i32 128, label %sw.bb.394
  ]

sw.bb:                                            ; preds = %do.end
  %call336 = call i64 @etarsingle(%struct.realvaluetype* byval align 8 %r322)
  %159 = load i32, i32* %endian, align 4
  %mul = mul nsw i32 3, %159
  %idxprom337 = sext i32 %mul to i64
  %arrayidx338 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i64 %idxprom337
  store i64 %call336, i64* %arrayidx338, align 8
  %arrayidx339 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i64 1
  store i64 0, i64* %arrayidx339, align 8
  %arrayidx340 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i64 2
  store i64 0, i64* %arrayidx340, align 8
  %160 = load i32, i32* %endian, align 4
  %mul341 = mul nsw i32 3, %160
  %sub342 = sub nsw i32 3, %mul341
  %idxprom343 = sext i32 %sub342 to i64
  %arrayidx344 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i64 %idxprom343
  store i64 0, i64* %arrayidx344, align 8
  br label %sw.epilog

sw.bb.345:                                        ; preds = %do.end
  %arraydecay346 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i32 0
  %161 = load i32, i32* %endian, align 4
  %mul347 = mul nsw i32 2, %161
  %idx.ext = sext i32 %mul347 to i64
  %add.ptr = getelementptr inbounds i64, i64* %arraydecay346, i64 %idx.ext
  call void @etardouble(%struct.realvaluetype* byval align 8 %r322, i64* %add.ptr)
  %162 = load i32, i32* %endian, align 4
  %mul348 = mul nsw i32 2, %162
  %sub349 = sub nsw i32 2, %mul348
  %idxprom350 = sext i32 %sub349 to i64
  %arrayidx351 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i64 %idxprom350
  store i64 0, i64* %arrayidx351, align 8
  %163 = load i32, i32* %endian, align 4
  %mul352 = mul nsw i32 2, %163
  %sub353 = sub nsw i32 3, %mul352
  %idxprom354 = sext i32 %sub353 to i64
  %arrayidx355 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i64 %idxprom354
  store i64 0, i64* %arrayidx355, align 8
  br label %sw.epilog

sw.bb.356:                                        ; preds = %do.end
  %164 = load i32, i32* @target_flags, align 4
  %and357 = and i32 %164, 16777216
  %tobool358 = icmp ne i32 %and357, 0
  %cond359 = select i1 %tobool358, i32 128, i32 96
  %cmp360 = icmp eq i32 %cond359, 64
  br i1 %cmp360, label %cond.true.362, label %cond.false.366

cond.true.362:                                    ; preds = %sw.bb.356
  %arraydecay363 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i32 0
  %165 = load i32, i32* %endian, align 4
  %idx.ext364 = sext i32 %165 to i64
  %add.ptr365 = getelementptr inbounds i64, i64* %arraydecay363, i64 %idx.ext364
  call void @etardouble(%struct.realvaluetype* byval align 8 %r322, i64* %add.ptr365)
  br label %cond.end.389

cond.false.366:                                   ; preds = %sw.bb.356
  %166 = load i32, i32* @target_flags, align 4
  %and367 = and i32 %166, 16777216
  %tobool368 = icmp ne i32 %and367, 0
  %cond369 = select i1 %tobool368, i32 128, i32 96
  %cmp370 = icmp eq i32 %cond369, 96
  br i1 %cmp370, label %cond.true.372, label %cond.false.376

cond.true.372:                                    ; preds = %cond.false.366
  %arraydecay373 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i32 0
  %167 = load i32, i32* %endian, align 4
  %idx.ext374 = sext i32 %167 to i64
  %add.ptr375 = getelementptr inbounds i64, i64* %arraydecay373, i64 %idx.ext374
  call void @etarldouble(%struct.realvaluetype* byval align 8 %r322, i64* %add.ptr375)
  br label %cond.end.388

cond.false.376:                                   ; preds = %cond.false.366
  %168 = load i32, i32* @target_flags, align 4
  %and377 = and i32 %168, 16777216
  %tobool378 = icmp ne i32 %and377, 0
  %cond379 = select i1 %tobool378, i32 128, i32 96
  %cmp380 = icmp eq i32 %cond379, 128
  br i1 %cmp380, label %cond.true.382, label %cond.false.386

cond.true.382:                                    ; preds = %cond.false.376
  %arraydecay383 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i32 0
  %169 = load i32, i32* %endian, align 4
  %idx.ext384 = sext i32 %169 to i64
  %add.ptr385 = getelementptr inbounds i64, i64* %arraydecay383, i64 %idx.ext384
  call void @etartdouble(%struct.realvaluetype* byval align 8 %r322, i64* %add.ptr385)
  br label %cond.end.387

cond.false.386:                                   ; preds = %cond.false.376
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1068, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.gen_lowpart_common, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.387

cond.end.387:                                     ; preds = %170, %cond.true.382
  br label %cond.end.388

cond.end.388:                                     ; preds = %cond.end.387, %cond.true.372
  br label %cond.end.389

cond.end.389:                                     ; preds = %cond.end.388, %cond.true.362
  %171 = load i32, i32* %endian, align 4
  %mul390 = mul nsw i32 3, %171
  %sub391 = sub nsw i32 3, %mul390
  %idxprom392 = sext i32 %sub391 to i64
  %arrayidx393 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i64 %idxprom392
  store i64 0, i64* %arrayidx393, align 8
  br label %sw.epilog

sw.bb.394:                                        ; preds = %do.end
  %172 = load i32, i32* @target_flags, align 4
  %and395 = and i32 %172, 16777216
  %tobool396 = icmp ne i32 %and395, 0
  %cond397 = select i1 %tobool396, i32 128, i32 96
  %cmp398 = icmp eq i32 %cond397, 64
  br i1 %cmp398, label %cond.true.400, label %cond.false.402

cond.true.400:                                    ; preds = %sw.bb.394
  %arraydecay401 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i32 0
  call void @etardouble(%struct.realvaluetype* byval align 8 %r322, i64* %arraydecay401)
  br label %cond.end.421

cond.false.402:                                   ; preds = %sw.bb.394
  %173 = load i32, i32* @target_flags, align 4
  %and403 = and i32 %173, 16777216
  %tobool404 = icmp ne i32 %and403, 0
  %cond405 = select i1 %tobool404, i32 128, i32 96
  %cmp406 = icmp eq i32 %cond405, 96
  br i1 %cmp406, label %cond.true.408, label %cond.false.410

cond.true.408:                                    ; preds = %cond.false.402
  %arraydecay409 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i32 0
  call void @etarldouble(%struct.realvaluetype* byval align 8 %r322, i64* %arraydecay409)
  br label %cond.end.420

cond.false.410:                                   ; preds = %cond.false.402
  %174 = load i32, i32* @target_flags, align 4
  %and411 = and i32 %174, 16777216
  %tobool412 = icmp ne i32 %and411, 0
  %cond413 = select i1 %tobool412, i32 128, i32 96
  %cmp414 = icmp eq i32 %cond413, 128
  br i1 %cmp414, label %cond.true.416, label %cond.false.418

cond.true.416:                                    ; preds = %cond.false.410
  %arraydecay417 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i32 0
  call void @etartdouble(%struct.realvaluetype* byval align 8 %r322, i64* %arraydecay417)
  br label %cond.end.419

cond.false.418:                                   ; preds = %cond.false.410
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1072, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.gen_lowpart_common, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end.419

cond.end.419:                                     ; preds = %175, %cond.true.416
  br label %cond.end.420

cond.end.420:                                     ; preds = %cond.end.419, %cond.true.408
  br label %cond.end.421

cond.end.421:                                     ; preds = %cond.end.420, %cond.true.400
  br label %sw.epilog

sw.default:                                       ; preds = %do.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1075, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.gen_lowpart_common, i32 0, i32 0)) #6
  unreachable

sw.epilog:                                        ; preds = %cond.end.421, %cond.end.389, %sw.bb.345, %sw.bb
  %176 = load i32, i32* %endian, align 4
  %mul422 = mul nsw i32 3, %176
  %idxprom423 = sext i32 %mul422 to i64
  %arrayidx424 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i64 %idxprom423
  %177 = load i64, i64* %arrayidx424, align 8
  %178 = load i32, i32* %endian, align 4
  %add425 = add nsw i32 1, %178
  %idxprom426 = sext i32 %add425 to i64
  %arrayidx427 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i64 %idxprom426
  %179 = load i64, i64* %arrayidx427, align 8
  %shl = shl i64 %179, 32
  %or = or i64 %177, %shl
  %180 = load i32, i32* %endian, align 4
  %sub428 = sub nsw i32 2, %180
  %idxprom429 = sext i32 %sub428 to i64
  %arrayidx430 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i64 %idxprom429
  %181 = load i64, i64* %arrayidx430, align 8
  %182 = load i32, i32* %endian, align 4
  %mul431 = mul nsw i32 3, %182
  %sub432 = sub nsw i32 3, %mul431
  %idxprom433 = sext i32 %sub432 to i64
  %arrayidx434 = getelementptr inbounds [4 x i64], [4 x i64]* %i324, i32 0, i64 %idxprom433
  %183 = load i64, i64* %arrayidx434, align 8
  %shl435 = shl i64 %183, 32
  %or436 = or i64 %181, %shl435
  %184 = load i32, i32* %mode.addr, align 4
  %call437 = call %struct.rtx_def* @immed_double_const(i64 %or, i64 %or436, i32 %184)
  store %struct.rtx_def* %call437, %struct.rtx_def** %retval
  br label %return

if.end.438:                                       ; preds = %land.lhs.true.312, %land.lhs.true.307, %lor.lhs.false.302
  br label %if.end.439

if.end.439:                                       ; preds = %if.end.438
  br label %if.end.440

if.end.440:                                       ; preds = %if.end.439
  br label %if.end.441

if.end.441:                                       ; preds = %if.end.440
  br label %if.end.442

if.end.442:                                       ; preds = %if.end.441
  br label %if.end.443

if.end.443:                                       ; preds = %if.end.442, %if.end.116
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.443, %sw.epilog, %if.end.293, %if.then.239, %cond.end.221, %cond.end, %if.then.176, %if.then.169, %if.then.132, %if.then.107, %if.then.90, %if.then.72, %if.then.42, %if.then.27, %if.then
  %185 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %185
}

declare %struct.rtx_def* @gen_rtx_fmt_e(i32, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @simplify_gen_subreg(i32, %struct.rtx_def*, i32, i32) #1

declare void @ereal_from_float(%struct.realvaluetype* sret, i64) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

declare %struct.rtx_def* @immed_real_const_1(%struct.realvaluetype* byval align 8, i32) #1

declare void @ereal_from_double(%struct.realvaluetype* sret, i64*) #1

declare i64 @etarsingle(%struct.realvaluetype* byval align 8) #1

declare void @etardouble(%struct.realvaluetype* byval align 8, i64*) #1

declare void @etarldouble(%struct.realvaluetype* byval align 8, i64*) #1

declare void @etartdouble(%struct.realvaluetype* byval align 8, i64*) #1

declare %struct.rtx_def* @immed_double_const(i64, i64, i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_realpart(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @gen_lowpart(i32 %0, %struct.rtx_def* %1)
  ret %struct.rtx_def* %call
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_lowpart(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %result = alloca %struct.rtx_def*, align 8
  %offset = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @gen_lowpart_common(i32 %0, %struct.rtx_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %result, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %if.then.1, label %if.else.6

if.then.1:                                        ; preds = %if.else
  %6 = load i32, i32* %mode.addr, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call2 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %7)
  %call3 = call %struct.rtx_def* @gen_lowpart_common(i32 %6, %struct.rtx_def* %call2)
  store %struct.rtx_def* %call3, %struct.rtx_def** %result, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %cmp4 = icmp eq %struct.rtx_def* %8, null
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then.1
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1175, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.gen_lowpart, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then.1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %retval
  br label %return

if.else.6:                                        ; preds = %if.else
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load7 = load i32, i32* %11, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 66
  br i1 %cmp9, label %if.then.10, label %if.else.12

if.then.10:                                       ; preds = %if.else.6
  store i32 0, i32* %offset, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = load i32, i32* %mode.addr, align 4
  %14 = load i32, i32* %offset, align 4
  %conv = sext i32 %14 to i64
  %call11 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %12, i32 %13, i64 %conv, i32 1, i32 1)
  store %struct.rtx_def* %call11, %struct.rtx_def** %retval
  br label %return

if.else.12:                                       ; preds = %if.else.6
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load13 = load i32, i32* %16, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 70
  br i1 %cmp15, label %if.then.17, label %if.else.22

if.then.17:                                       ; preds = %if.else.12
  %17 = load i32, i32* %mode.addr, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load18 = load i32, i32* %19, align 8
  %bf.lshr = lshr i32 %bf.load18, 16
  %bf.clear19 = and i32 %bf.lshr, 255
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call20 = call %struct.rtx_def* @force_reg(i32 %bf.clear19, %struct.rtx_def* %20)
  %call21 = call %struct.rtx_def* @gen_lowpart(i32 %17, %struct.rtx_def* %call20)
  store %struct.rtx_def* %call21, %struct.rtx_def** %retval
  br label %return

if.else.22:                                       ; preds = %if.else.12
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1197, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.gen_lowpart, i32 0, i32 0)) #6
  unreachable

return:                                           ; preds = %if.then.17, %if.then.10, %if.end, %if.then
  %21 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %21
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_imagpart(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %1 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %1 to i32
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  %cmp = icmp slt i32 %conv, %cond
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp eq i32 %bf.clear, 61
  br i1 %cmp2, label %land.lhs.true.4, label %if.else

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %6 = load i32, i32* %rtuint, align 4
  %cmp6 = icmp ult i32 %6, 53
  br i1 %cmp6, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true.4
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i32 0, i32 0)) #6
  unreachable

if.else:                                          ; preds = %land.lhs.true.4, %land.lhs.true, %entry
  %7 = load i32, i32* %mode.addr, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call %struct.rtx_def* @gen_highpart(i32 %7, %struct.rtx_def* %8)
  ret %struct.rtx_def* %call
}

; Function Attrs: noreturn
declare void @internal_error(i8*, ...) #2

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_highpart(i32 %mode, %struct.rtx_def* %x) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %msize = alloca i32, align 4
  %result = alloca %struct.rtx_def*, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  store i32 %conv, i32* %msize, align 4
  %2 = load i32, i32* %msize, align 4
  %3 = load i32, i32* @target_flags, align 4
  %and = and i32 %3, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %cmp = icmp ugt i32 %2, %cond
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load i32, i32* %msize, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom2 = sext i32 %bf.clear to i64
  %arrayidx3 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom2
  %7 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %7 to i32
  %cmp5 = icmp ne i32 %4, %conv4
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1215, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.gen_highpart, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %8 = load i32, i32* %mode.addr, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load7 = load i32, i32* %11, align 8
  %bf.lshr8 = lshr i32 %bf.load7, 16
  %bf.clear9 = and i32 %bf.lshr8, 255
  %12 = load i32, i32* %mode.addr, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load10 = load i32, i32* %14, align 8
  %bf.lshr11 = lshr i32 %bf.load10, 16
  %bf.clear12 = and i32 %bf.lshr11, 255
  %call = call i32 @subreg_highpart_offset(i32 %12, i32 %bf.clear12)
  %call13 = call %struct.rtx_def* @simplify_gen_subreg(i32 %8, %struct.rtx_def* %9, i32 %bf.clear9, i32 %call)
  store %struct.rtx_def* %call13, %struct.rtx_def** %result, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %cmp14 = icmp ne %struct.rtx_def* %15, null
  br i1 %cmp14, label %land.lhs.true.16, label %if.end.23

land.lhs.true.16:                                 ; preds = %if.end
  %16 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load17 = load i32, i32* %17, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp eq i32 %bf.clear18, 66
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %land.lhs.true.16
  %18 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %call22 = call %struct.rtx_def* @validize_mem(%struct.rtx_def* %18)
  store %struct.rtx_def* %call22, %struct.rtx_def** %result, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %land.lhs.true.16, %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %tobool24 = icmp ne %struct.rtx_def* %19, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.23
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1227, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.gen_highpart, i32 0, i32 0)) #6
  unreachable

if.end.26:                                        ; preds = %if.end.23
  %20 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  ret %struct.rtx_def* %20
}

; Function Attrs: nounwind uwtable
define i32 @subreg_realpart_p(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1148, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.subreg_realpart_p, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load3 = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load3, 16
  %bf.clear4 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear4 to i64
  %arrayidx5 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom
  %7 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %7 to i32
  %cmp6 = icmp ult i32 %3, %conv
  %conv7 = zext i1 %cmp6 to i32
  ret i32 %conv7
}

declare %struct.rtx_def* @copy_to_reg(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %memref, i32 %mode, i64 %offset, i32 %validate, i32 %adjust) #0 {
entry:
  %memref.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %validate.addr = alloca i32, align 4
  %adjust.addr = alloca i32, align 4
  %addr = alloca %struct.rtx_def*, align 8
  %new = alloca %struct.rtx_def*, align 8
  %memoffset = alloca %struct.rtx_def*, align 8
  %size = alloca %struct.rtx_def*, align 8
  %memalign = alloca i32, align 4
  store %struct.rtx_def* %memref, %struct.rtx_def** %memref.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %validate, i32* %validate.addr, align 4
  store i32 %adjust, i32* %adjust.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx2 to %struct.mem_attrs**
  %3 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp = icmp eq %struct.mem_attrs* %3, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 1
  %rtmem5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.mem_attrs**
  %5 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem5, align 8
  %offset6 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %5, i32 0, i32 2
  %6 = load %struct.rtx_def*, %struct.rtx_def** %offset6, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ null, %cond.true ], [ %6, %cond.false ]
  store %struct.rtx_def* %cond, %struct.rtx_def** %memoffset, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %size, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtmem9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.mem_attrs**
  %8 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem9, align 8
  %cmp10 = icmp ne %struct.mem_attrs* %8, null
  br i1 %cmp10, label %cond.true.11, label %cond.false.15

cond.true.11:                                     ; preds = %cond.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 1
  %rtmem14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.mem_attrs**
  %10 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem14, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %10, i32 0, i32 4
  %11 = load i32, i32* %align, align 4
  br label %cond.end.16

cond.false.15:                                    ; preds = %cond.end
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.15, %cond.true.11
  %cond17 = phi i32 [ %11, %cond.true.11 ], [ 8, %cond.false.15 ]
  store i32 %cond17, i32* %memalign, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %call = call %struct.rtx_def* @copy_rtx(%struct.rtx_def* %12)
  store %struct.rtx_def* %call, %struct.rtx_def** %addr, align 8
  %13 = load i32, i32* %adjust.addr, align 4
  %tobool = icmp ne i32 %13, 0
  br i1 %tobool, label %if.then, label %if.end.43

if.then:                                          ; preds = %cond.end.16
  %14 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp18 = icmp ne i32 %bf.clear, 51
  br i1 %cmp18, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load19 = load i32, i32* %17, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 135
  br i1 %cmp21, label %land.lhs.true.22, label %if.else

land.lhs.true.22:                                 ; preds = %land.lhs.true
  %18 = load i64, i64* %offset.addr, align 8
  %cmp23 = icmp sge i64 %18, 0
  br i1 %cmp23, label %land.lhs.true.24, label %if.else

land.lhs.true.24:                                 ; preds = %land.lhs.true.22
  %19 = load i64, i64* %offset.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load25 = load i32, i32* %21, align 8
  %bf.lshr26 = lshr i32 %bf.load25, 16
  %bf.clear27 = and i32 %bf.lshr26, 255
  %call28 = call i32 @get_mode_alignment(i32 %bf.clear27)
  %div = udiv i32 %call28, 8
  %conv = zext i32 %div to i64
  %cmp29 = icmp ult i64 %19, %conv
  br i1 %cmp29, label %if.then.31, label %if.else

if.then.31:                                       ; preds = %land.lhs.true.24
  %22 = load i32, i32* @target_flags, align 4
  %and = and i32 %22, 33554432
  %tobool32 = icmp ne i32 %and, 0
  %cond33 = select i1 %tobool32, i32 5, i32 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %24 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 1
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %27 = load i64, i64* %offset.addr, align 8
  %call40 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %26, i64 %27)
  %call41 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 135, i32 %cond33, %struct.rtx_def* %24, %struct.rtx_def* %call40)
  store %struct.rtx_def* %call41, %struct.rtx_def** %addr, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.24, %land.lhs.true.22, %land.lhs.true, %if.then
  %28 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %29 = load i64, i64* %offset.addr, align 8
  %call42 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %28, i64 %29)
  store %struct.rtx_def* %call42, %struct.rtx_def** %addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.31
  br label %if.end.43

if.end.43:                                        ; preds = %if.end, %cond.end.16
  %30 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %31 = load i32, i32* %mode.addr, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %33 = load i32, i32* %validate.addr, align 4
  %call44 = call %struct.rtx_def* @change_address_1(%struct.rtx_def* %30, i32 %31, %struct.rtx_def* %32, i32 %33)
  store %struct.rtx_def* %call44, %struct.rtx_def** %new, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %memoffset, align 8
  %tobool45 = icmp ne %struct.rtx_def* %34, null
  br i1 %tobool45, label %if.then.46, label %if.end.50

if.then.46:                                       ; preds = %if.end.43
  %35 = load i64, i64* %offset.addr, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %memoffset, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx48 to i64*
  %37 = load i64, i64* %rtwint, align 8
  %add = add nsw i64 %35, %37
  %call49 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add)
  store %struct.rtx_def* %call49, %struct.rtx_def** %memoffset, align 8
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.46, %if.end.43
  %38 = load i64, i64* %offset.addr, align 8
  %cmp51 = icmp ne i64 %38, 0
  br i1 %cmp51, label %if.then.53, label %if.end.67

if.then.53:                                       ; preds = %if.end.50
  %39 = load i32, i32* %memalign, align 4
  %conv54 = zext i32 %39 to i64
  %40 = load i64, i64* %offset.addr, align 8
  %41 = load i64, i64* %offset.addr, align 8
  %sub = sub nsw i64 0, %41
  %and55 = and i64 %40, %sub
  %mul = mul i64 %and55, 8
  %cmp56 = icmp ult i64 %conv54, %mul
  br i1 %cmp56, label %cond.true.58, label %cond.false.60

cond.true.58:                                     ; preds = %if.then.53
  %42 = load i32, i32* %memalign, align 4
  %conv59 = zext i32 %42 to i64
  br label %cond.end.64

cond.false.60:                                    ; preds = %if.then.53
  %43 = load i64, i64* %offset.addr, align 8
  %44 = load i64, i64* %offset.addr, align 8
  %sub61 = sub nsw i64 0, %44
  %and62 = and i64 %43, %sub61
  %mul63 = mul i64 %and62, 8
  br label %cond.end.64

cond.end.64:                                      ; preds = %cond.false.60, %cond.true.58
  %cond65 = phi i64 [ %conv59, %cond.true.58 ], [ %mul63, %cond.false.60 ]
  %conv66 = trunc i64 %cond65 to i32
  store i32 %conv66, i32* %memalign, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %cond.end.64, %if.end.50
  %45 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load68 = load i32, i32* %46, align 8
  %bf.lshr69 = lshr i32 %bf.load68, 16
  %bf.clear70 = and i32 %bf.lshr69, 255
  %cmp71 = icmp ne i32 %bf.clear70, 51
  br i1 %cmp71, label %if.then.73, label %if.else.80

if.then.73:                                       ; preds = %if.end.67
  %47 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load74 = load i32, i32* %48, align 8
  %bf.lshr75 = lshr i32 %bf.load74, 16
  %bf.clear76 = and i32 %bf.lshr75, 255
  %idxprom = sext i32 %bf.clear76 to i64
  %arrayidx77 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %49 = load i8, i8* %arrayidx77, align 1
  %conv78 = zext i8 %49 to i64
  %call79 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv78)
  store %struct.rtx_def* %call79, %struct.rtx_def** %size, align 8
  br label %if.end.141

if.else.80:                                       ; preds = %if.end.67
  %50 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 1
  %rtmem83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.mem_attrs**
  %51 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem83, align 8
  %cmp84 = icmp ne %struct.mem_attrs* %51, null
  br i1 %cmp84, label %cond.true.86, label %cond.false.92

cond.true.86:                                     ; preds = %if.else.80
  %52 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 1
  %rtmem89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.mem_attrs**
  %53 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem89, align 8
  %size90 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %53, i32 0, i32 3
  %54 = load %struct.rtx_def*, %struct.rtx_def** %size90, align 8
  %tobool91 = icmp ne %struct.rtx_def* %54, null
  br i1 %tobool91, label %if.then.108, label %if.end.140

cond.false.92:                                    ; preds = %if.else.80
  %55 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load93 = load i32, i32* %56, align 8
  %bf.lshr94 = lshr i32 %bf.load93, 16
  %bf.clear95 = and i32 %bf.lshr94, 255
  %cmp96 = icmp ne i32 %bf.clear95, 51
  br i1 %cmp96, label %cond.true.98, label %cond.false.107

cond.true.98:                                     ; preds = %cond.false.92
  %57 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load99 = load i32, i32* %58, align 8
  %bf.lshr100 = lshr i32 %bf.load99, 16
  %bf.clear101 = and i32 %bf.lshr100, 255
  %idxprom102 = sext i32 %bf.clear101 to i64
  %arrayidx103 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom102
  %59 = load i8, i8* %arrayidx103, align 1
  %conv104 = zext i8 %59 to i64
  %call105 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv104)
  %tobool106 = icmp ne %struct.rtx_def* %call105, null
  br i1 %tobool106, label %if.then.108, label %if.end.140

cond.false.107:                                   ; preds = %cond.false.92
  br i1 false, label %if.then.108, label %if.end.140

if.then.108:                                      ; preds = %cond.false.107, %cond.true.98, %cond.true.86
  %60 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 1
  %rtmem111 = bitcast %union.rtunion_def* %arrayidx110 to %struct.mem_attrs**
  %61 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem111, align 8
  %cmp112 = icmp ne %struct.mem_attrs* %61, null
  br i1 %cmp112, label %cond.true.114, label %cond.false.119

cond.true.114:                                    ; preds = %if.then.108
  %62 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld115, i32 0, i64 1
  %rtmem117 = bitcast %union.rtunion_def* %arrayidx116 to %struct.mem_attrs**
  %63 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem117, align 8
  %size118 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %63, i32 0, i32 3
  %64 = load %struct.rtx_def*, %struct.rtx_def** %size118, align 8
  br label %cond.end.136

cond.false.119:                                   ; preds = %if.then.108
  %65 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load120 = load i32, i32* %66, align 8
  %bf.lshr121 = lshr i32 %bf.load120, 16
  %bf.clear122 = and i32 %bf.lshr121, 255
  %cmp123 = icmp ne i32 %bf.clear122, 51
  br i1 %cmp123, label %cond.true.125, label %cond.false.133

cond.true.125:                                    ; preds = %cond.false.119
  %67 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load126 = load i32, i32* %68, align 8
  %bf.lshr127 = lshr i32 %bf.load126, 16
  %bf.clear128 = and i32 %bf.lshr127, 255
  %idxprom129 = sext i32 %bf.clear128 to i64
  %arrayidx130 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom129
  %69 = load i8, i8* %arrayidx130, align 1
  %conv131 = zext i8 %69 to i64
  %call132 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv131)
  br label %cond.end.134

cond.false.133:                                   ; preds = %cond.false.119
  br label %cond.end.134

cond.end.134:                                     ; preds = %cond.false.133, %cond.true.125
  %cond135 = phi %struct.rtx_def* [ %call132, %cond.true.125 ], [ null, %cond.false.133 ]
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.end.134, %cond.true.114
  %cond137 = phi %struct.rtx_def* [ %64, %cond.true.114 ], [ %cond135, %cond.end.134 ]
  %70 = load i64, i64* %offset.addr, align 8
  %sub138 = sub nsw i64 0, %70
  %call139 = call %struct.rtx_def* @plus_constant_wide(%struct.rtx_def* %cond137, i64 %sub138)
  store %struct.rtx_def* %call139, %struct.rtx_def** %size, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %cond.end.136, %cond.false.107, %cond.true.98, %cond.true.86
  br label %if.end.141

if.end.141:                                       ; preds = %if.end.140, %if.then.73
  %71 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %71, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 1
  %rtmem144 = bitcast %union.rtunion_def* %arrayidx143 to %struct.mem_attrs**
  %72 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem144, align 8
  %cmp145 = icmp eq %struct.mem_attrs* %72, null
  br i1 %cmp145, label %cond.true.147, label %cond.false.148

cond.true.147:                                    ; preds = %if.end.141
  br label %cond.end.152

cond.false.148:                                   ; preds = %if.end.141
  %73 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld149 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx150 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld149, i32 0, i64 1
  %rtmem151 = bitcast %union.rtunion_def* %arrayidx150 to %struct.mem_attrs**
  %74 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem151, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %74, i32 0, i32 0
  %75 = load i64, i64* %alias, align 8
  br label %cond.end.152

cond.end.152:                                     ; preds = %cond.false.148, %cond.true.147
  %cond153 = phi i64 [ 0, %cond.true.147 ], [ %75, %cond.false.148 ]
  %76 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld154 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx155 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld154, i32 0, i64 1
  %rtmem156 = bitcast %union.rtunion_def* %arrayidx155 to %struct.mem_attrs**
  %77 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem156, align 8
  %cmp157 = icmp eq %struct.mem_attrs* %77, null
  br i1 %cmp157, label %cond.true.159, label %cond.false.160

cond.true.159:                                    ; preds = %cond.end.152
  br label %cond.end.164

cond.false.160:                                   ; preds = %cond.end.152
  %78 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld161 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx162 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld161, i32 0, i64 1
  %rtmem163 = bitcast %union.rtunion_def* %arrayidx162 to %struct.mem_attrs**
  %79 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem163, align 8
  %expr = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %79, i32 0, i32 1
  %80 = load %union.tree_node*, %union.tree_node** %expr, align 8
  br label %cond.end.164

cond.end.164:                                     ; preds = %cond.false.160, %cond.true.159
  %cond165 = phi %union.tree_node* [ null, %cond.true.159 ], [ %80, %cond.false.160 ]
  %81 = load %struct.rtx_def*, %struct.rtx_def** %memoffset, align 8
  %82 = load %struct.rtx_def*, %struct.rtx_def** %size, align 8
  %83 = load i32, i32* %memalign, align 4
  %84 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load166 = load i32, i32* %85, align 8
  %bf.lshr167 = lshr i32 %bf.load166, 16
  %bf.clear168 = and i32 %bf.lshr167, 255
  %call169 = call %struct.mem_attrs* @get_mem_attrs(i64 %cond153, %union.tree_node* %cond165, %struct.rtx_def* %81, %struct.rtx_def* %82, i32 %83, i32 %bf.clear168)
  %86 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld170 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx171 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld170, i32 0, i64 1
  %rtmem172 = bitcast %union.rtunion_def* %arrayidx171 to %struct.mem_attrs**
  store %struct.mem_attrs* %call169, %struct.mem_attrs** %rtmem172, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  ret %struct.rtx_def* %87
}

declare %struct.rtx_def* @force_reg(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @subreg_highpart_offset(i32 %outermode, i32 %innermode) #0 {
entry:
  %outermode.addr = alloca i32, align 4
  %innermode.addr = alloca i32, align 4
  %offset = alloca i32, align 4
  %difference = alloca i32, align 4
  store i32 %outermode, i32* %outermode.addr, align 4
  store i32 %innermode, i32* %innermode.addr, align 4
  store i32 0, i32* %offset, align 4
  %0 = load i32, i32* %innermode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %2 = load i32, i32* %outermode.addr, align 4
  %idxprom1 = sext i32 %2 to i64
  %arrayidx2 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom1
  %3 = load i8, i8* %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %sub = sub nsw i32 %conv, %conv3
  store i32 %sub, i32* %difference, align 4
  %4 = load i32, i32* %innermode.addr, align 4
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom4
  %5 = load i8, i8* %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %6 = load i32, i32* %outermode.addr, align 4
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom7
  %7 = load i8, i8* %arrayidx8, align 1
  %conv9 = zext i8 %7 to i32
  %cmp = icmp slt i32 %conv6, %conv9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1278, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.subreg_highpart_offset, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %difference, align 4
  %cmp11 = icmp sgt i32 %8, 0
  br i1 %cmp11, label %if.then.13, label %if.end.21

if.then.13:                                       ; preds = %if.end
  %9 = load i32, i32* %difference, align 4
  %10 = load i32, i32* @target_flags, align 4
  %and = and i32 %10, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %div = sdiv i32 %9, %cond
  %11 = load i32, i32* @target_flags, align 4
  %and14 = and i32 %11, 33554432
  %tobool15 = icmp ne i32 %and14, 0
  %cond16 = select i1 %tobool15, i32 8, i32 4
  %mul = mul nsw i32 %div, %cond16
  %12 = load i32, i32* %offset, align 4
  %add = add i32 %12, %mul
  store i32 %add, i32* %offset, align 4
  %13 = load i32, i32* %difference, align 4
  %14 = load i32, i32* @target_flags, align 4
  %and17 = and i32 %14, 33554432
  %tobool18 = icmp ne i32 %and17, 0
  %cond19 = select i1 %tobool18, i32 8, i32 4
  %rem = srem i32 %13, %cond19
  %15 = load i32, i32* %offset, align 4
  %add20 = add i32 %15, %rem
  store i32 %add20, i32* %offset, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.13, %if.end
  %16 = load i32, i32* %offset, align 4
  ret i32 %16
}

declare %struct.rtx_def* @validize_mem(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_highpart_mode(i32 %outermode, i32 %innermode, %struct.rtx_def* %exp) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %outermode.addr = alloca i32, align 4
  %innermode.addr = alloca i32, align 4
  %exp.addr = alloca %struct.rtx_def*, align 8
  store i32 %outermode, i32* %outermode.addr, align 4
  store i32 %innermode, i32* %innermode.addr, align 4
  store %struct.rtx_def* %exp, %struct.rtx_def** %exp.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %exp.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp = icmp ne i32 %bf.clear, 0
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %exp.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.lshr2 = lshr i32 %bf.load1, 16
  %bf.clear3 = and i32 %bf.lshr2, 255
  %4 = load i32, i32* %innermode.addr, align 4
  %cmp4 = icmp ne i32 %bf.clear3, %4
  br i1 %cmp4, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1241, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__FUNCTION__.gen_highpart_mode, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  %5 = load i32, i32* %outermode.addr, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %exp.addr, align 8
  %call = call %struct.rtx_def* @gen_highpart(i32 %5, %struct.rtx_def* %6)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.end.6:                                         ; preds = %entry
  %7 = load i32, i32* %outermode.addr, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %exp.addr, align 8
  %9 = load i32, i32* %innermode.addr, align 4
  %10 = load i32, i32* %outermode.addr, align 4
  %11 = load i32, i32* %innermode.addr, align 4
  %call7 = call i32 @subreg_highpart_offset(i32 %10, i32 %11)
  %call8 = call %struct.rtx_def* @simplify_gen_subreg(i32 %7, %struct.rtx_def* %8, i32 %9, i32 %call7)
  store %struct.rtx_def* %call8, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %12
}

; Function Attrs: nounwind uwtable
define i32 @subreg_lowpart_p(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 63
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load1 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load1, 16
  %bf.clear2 = and i32 %bf.lshr, 255
  %cmp3 = icmp eq i32 %bf.clear2, 0
  br i1 %cmp3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end.5

if.end.5:                                         ; preds = %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load6 = load i32, i32* %6, align 8
  %bf.lshr7 = lshr i32 %bf.load6, 16
  %bf.clear8 = and i32 %bf.lshr7, 255
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load12 = load i32, i32* %9, align 8
  %bf.lshr13 = lshr i32 %bf.load12, 16
  %bf.clear14 = and i32 %bf.lshr13, 255
  %call = call i32 @subreg_lowpart_offset(i32 %bf.clear8, i32 %bf.clear14)
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtuint = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %11 = load i32, i32* %rtuint, align 4
  %cmp17 = icmp eq i32 %call, %11
  %conv = zext i1 %cmp17 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.4, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @constant_subword(%struct.rtx_def* %op, i32 %offset, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %op.addr = alloca %struct.rtx_def*, align 8
  %offset.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %size_ratio = alloca i32, align 4
  %val = alloca i64, align 8
  %k = alloca [2 x i64], align 16
  %rv = alloca %struct.realvaluetype, align 8
  %u = alloca %union.real_extract, align 8
  %k97 = alloca [4 x i64], align 16
  %rv98 = alloca %struct.realvaluetype, align 8
  %u100 = alloca %union.real_extract, align 8
  %l = alloca i64, align 8
  %rv184 = alloca %struct.realvaluetype, align 8
  %u186 = alloca %union.real_extract, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* @target_flags, align 4
  %and = and i32 %0, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  %div = sdiv i32 64, %cond
  store i32 %div, i32* %size_ratio, align 4
  %1 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %mode.addr, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom1
  %4 = load i8, i8* %arrayidx2, align 1
  %conv = zext i8 %4 to i32
  %5 = load i32, i32* @target_flags, align 4
  %and3 = and i32 %5, 33554432
  %tobool4 = icmp ne i32 %and3, 0
  %cond5 = select i1 %tobool4, i32 8, i32 4
  %cmp6 = icmp eq i32 %conv, %cond5
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i32, i32* @target_flags, align 4
  %and8 = and i32 %7, 33554432
  %tobool9 = icmp ne i32 %and8, 0
  %cond10 = select i1 %tobool9, i32 64, i32 32
  %cmp11 = icmp sge i32 64, %cond10
  br i1 %cmp11, label %land.lhs.true.13, label %if.else.74

land.lhs.true.13:                                 ; preds = %if.end
  %8 = load i32, i32* %mode.addr, align 4
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom14
  %9 = load i32, i32* %arrayidx15, align 4
  %cmp16 = icmp eq i32 %9, 2
  br i1 %cmp16, label %land.lhs.true.18, label %if.else.74

land.lhs.true.18:                                 ; preds = %land.lhs.true.13
  %10 = load i32, i32* %mode.addr, align 4
  %idxprom19 = sext i32 %10 to i64
  %arrayidx20 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom19
  %11 = load i16, i16* %arrayidx20, align 2
  %conv21 = zext i16 %11 to i32
  %cmp22 = icmp eq i32 %conv21, 64
  br i1 %cmp22, label %land.lhs.true.24, label %if.else.74

land.lhs.true.24:                                 ; preds = %land.lhs.true.18
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load = load i32, i32* %13, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp25 = icmp eq i32 %bf.clear, 55
  br i1 %cmp25, label %if.then.27, label %if.else.74

if.then.27:                                       ; preds = %land.lhs.true.24
  br label %do.body

do.body:                                          ; preds = %if.then.27
  %14 = bitcast %union.real_extract* %u to i8*
  %15 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx28 to i64*
  %16 = bitcast i64* %rtwint to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %14, i8* %16, i64 24, i32 8, i1 false)
  %d = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %17 = bitcast %struct.realvaluetype* %rv to i8*
  %18 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %18, i64 24, i32 8, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %k, i32 0, i32 0
  call void @etardouble(%struct.realvaluetype* byval align 8 %rv, i64* %arraydecay)
  %19 = load i32, i32* @target_flags, align 4
  %and29 = and i32 %19, 33554432
  %tobool30 = icmp ne i32 %and29, 0
  %cond31 = select i1 %tobool30, i32 64, i32 32
  %cmp32 = icmp eq i32 %cond31, 32
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %do.end
  %20 = load i32, i32* %offset.addr, align 4
  %idxprom35 = sext i32 %20 to i64
  %arrayidx36 = getelementptr inbounds [2 x i64], [2 x i64]* %k, i32 0, i64 %idxprom35
  %21 = load i64, i64* %arrayidx36, align 8
  store i64 %21, i64* %val, align 8
  %22 = load i64, i64* %val, align 8
  %and37 = and i64 %22, 4294967295
  %xor = xor i64 %and37, 2147483648
  %sub = sub nsw i64 %xor, 2147483648
  store i64 %sub, i64* %val, align 8
  %23 = load i64, i64* %val, align 8
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %23)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %do.end
  %24 = load i32, i32* @target_flags, align 4
  %and38 = and i32 %24, 33554432
  %tobool39 = icmp ne i32 %and38, 0
  %cond40 = select i1 %tobool39, i32 64, i32 32
  %cmp41 = icmp sge i32 %cond40, 64
  br i1 %cmp41, label %land.lhs.true.43, label %if.else.54

land.lhs.true.43:                                 ; preds = %if.else
  %25 = load i32, i32* %offset.addr, align 4
  %cmp44 = icmp eq i32 %25, 0
  br i1 %cmp44, label %if.then.46, label %if.else.54

if.then.46:                                       ; preds = %land.lhs.true.43
  %arrayidx47 = getelementptr inbounds [2 x i64], [2 x i64]* %k, i32 0, i64 1
  %26 = load i64, i64* %arrayidx47, align 8
  store i64 %26, i64* %val, align 8
  %27 = load i64, i64* %val, align 8
  %and48 = and i64 %27, 4294967295
  %xor49 = xor i64 %and48, 2147483648
  %sub50 = sub nsw i64 %xor49, 2147483648
  %shl = shl i64 %sub50, 32
  store i64 %shl, i64* %val, align 8
  %arrayidx51 = getelementptr inbounds [2 x i64], [2 x i64]* %k, i32 0, i64 0
  %28 = load i64, i64* %arrayidx51, align 8
  %and52 = and i64 %28, 4294967295
  %29 = load i64, i64* %val, align 8
  %or = or i64 %29, %and52
  store i64 %or, i64* %val, align 8
  %30 = load i64, i64* %val, align 8
  %call53 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %30)
  store %struct.rtx_def* %call53, %struct.rtx_def** %retval
  br label %return

if.else.54:                                       ; preds = %land.lhs.true.43, %if.else
  %31 = load i32, i32* @target_flags, align 4
  %and55 = and i32 %31, 33554432
  %tobool56 = icmp ne i32 %and55, 0
  %cond57 = select i1 %tobool56, i32 64, i32 32
  %cmp58 = icmp eq i32 %cond57, 16
  br i1 %cmp58, label %if.then.60, label %if.else.73

if.then.60:                                       ; preds = %if.else.54
  %32 = load i32, i32* %offset.addr, align 4
  %shr = ashr i32 %32, 1
  %idxprom61 = sext i32 %shr to i64
  %arrayidx62 = getelementptr inbounds [2 x i64], [2 x i64]* %k, i32 0, i64 %idxprom61
  %33 = load i64, i64* %arrayidx62, align 8
  store i64 %33, i64* %val, align 8
  %34 = load i32, i32* %offset.addr, align 4
  %and63 = and i32 %34, 1
  %cmp64 = icmp eq i32 %and63, 1
  br i1 %cmp64, label %if.then.66, label %if.end.68

if.then.66:                                       ; preds = %if.then.60
  %35 = load i64, i64* %val, align 8
  %shr67 = ashr i64 %35, 16
  store i64 %shr67, i64* %val, align 8
  br label %if.end.68

if.end.68:                                        ; preds = %if.then.66, %if.then.60
  %36 = load i64, i64* %val, align 8
  %and69 = and i64 %36, 65535
  %xor70 = xor i64 %and69, 32768
  %sub71 = sub nsw i64 %xor70, 32768
  store i64 %sub71, i64* %val, align 8
  %37 = load i64, i64* %val, align 8
  %call72 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %37)
  store %struct.rtx_def* %call72, %struct.rtx_def** %retval
  br label %return

if.else.73:                                       ; preds = %if.else.54
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1374, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.constant_subword, i32 0, i32 0)) #6
  unreachable

if.else.74:                                       ; preds = %land.lhs.true.24, %land.lhs.true.18, %land.lhs.true.13, %if.end
  %38 = load i32, i32* @target_flags, align 4
  %and75 = and i32 %38, 33554432
  %tobool76 = icmp ne i32 %and75, 0
  %cond77 = select i1 %tobool76, i32 64, i32 32
  %cmp78 = icmp sge i32 64, %cond77
  br i1 %cmp78, label %land.lhs.true.80, label %if.end.166

land.lhs.true.80:                                 ; preds = %if.else.74
  %39 = load i32, i32* %mode.addr, align 4
  %idxprom81 = sext i32 %39 to i64
  %arrayidx82 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom81
  %40 = load i32, i32* %arrayidx82, align 4
  %cmp83 = icmp eq i32 %40, 2
  br i1 %cmp83, label %land.lhs.true.85, label %if.end.166

land.lhs.true.85:                                 ; preds = %land.lhs.true.80
  %41 = load i32, i32* %mode.addr, align 4
  %idxprom86 = sext i32 %41 to i64
  %arrayidx87 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom86
  %42 = load i16, i16* %arrayidx87, align 2
  %conv88 = zext i16 %42 to i32
  %cmp89 = icmp sgt i32 %conv88, 64
  br i1 %cmp89, label %land.lhs.true.91, label %if.end.166

land.lhs.true.91:                                 ; preds = %land.lhs.true.85
  %43 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load92 = load i32, i32* %44, align 8
  %bf.clear93 = and i32 %bf.load92, 65535
  %cmp94 = icmp eq i32 %bf.clear93, 55
  br i1 %cmp94, label %if.then.96, label %if.end.166

if.then.96:                                       ; preds = %land.lhs.true.91
  br label %do.body.99

do.body.99:                                       ; preds = %if.then.96
  %45 = bitcast %union.real_extract* %u100 to i8*
  %46 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 1
  %rtwint103 = bitcast %union.rtunion_def* %arrayidx102 to i64*
  %47 = bitcast i64* %rtwint103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %45, i8* %47, i64 24, i32 8, i1 false)
  %d104 = bitcast %union.real_extract* %u100 to %struct.realvaluetype*
  %48 = bitcast %struct.realvaluetype* %rv98 to i8*
  %49 = bitcast %struct.realvaluetype* %d104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %48, i8* %49, i64 24, i32 8, i1 false)
  br label %do.end.105

do.end.105:                                       ; preds = %do.body.99
  %50 = load i32, i32* @target_flags, align 4
  %and106 = and i32 %50, 16777216
  %tobool107 = icmp ne i32 %and106, 0
  %cond108 = select i1 %tobool107, i32 128, i32 96
  %cmp109 = icmp eq i32 %cond108, 64
  br i1 %cmp109, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.end.105
  %arraydecay111 = getelementptr inbounds [4 x i64], [4 x i64]* %k97, i32 0, i32 0
  call void @etardouble(%struct.realvaluetype* byval align 8 %rv98, i64* %arraydecay111)
  br label %cond.end.129

cond.false:                                       ; preds = %do.end.105
  %51 = load i32, i32* @target_flags, align 4
  %and112 = and i32 %51, 16777216
  %tobool113 = icmp ne i32 %and112, 0
  %cond114 = select i1 %tobool113, i32 128, i32 96
  %cmp115 = icmp eq i32 %cond114, 96
  br i1 %cmp115, label %cond.true.117, label %cond.false.119

cond.true.117:                                    ; preds = %cond.false
  %arraydecay118 = getelementptr inbounds [4 x i64], [4 x i64]* %k97, i32 0, i32 0
  call void @etarldouble(%struct.realvaluetype* byval align 8 %rv98, i64* %arraydecay118)
  br label %cond.end.128

cond.false.119:                                   ; preds = %cond.false
  %52 = load i32, i32* @target_flags, align 4
  %and120 = and i32 %52, 16777216
  %tobool121 = icmp ne i32 %and120, 0
  %cond122 = select i1 %tobool121, i32 128, i32 96
  %cmp123 = icmp eq i32 %cond122, 128
  br i1 %cmp123, label %cond.true.125, label %cond.false.127

cond.true.125:                                    ; preds = %cond.false.119
  %arraydecay126 = getelementptr inbounds [4 x i64], [4 x i64]* %k97, i32 0, i32 0
  call void @etartdouble(%struct.realvaluetype* byval align 8 %rv98, i64* %arraydecay126)
  br label %cond.end

cond.false.127:                                   ; preds = %cond.false.119
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1385, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.constant_subword, i32 0, i32 0)) #6
  unreachable
                                                  ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %53, %cond.true.125
  br label %cond.end.128

cond.end.128:                                     ; preds = %cond.end, %cond.true.117
  br label %cond.end.129

cond.end.129:                                     ; preds = %cond.end.128, %cond.true
  %54 = load i32, i32* @target_flags, align 4
  %and130 = and i32 %54, 33554432
  %tobool131 = icmp ne i32 %and130, 0
  %cond132 = select i1 %tobool131, i32 64, i32 32
  %cmp133 = icmp eq i32 %cond132, 32
  br i1 %cmp133, label %if.then.135, label %if.else.142

if.then.135:                                      ; preds = %cond.end.129
  %55 = load i32, i32* %offset.addr, align 4
  %idxprom136 = sext i32 %55 to i64
  %arrayidx137 = getelementptr inbounds [4 x i64], [4 x i64]* %k97, i32 0, i64 %idxprom136
  %56 = load i64, i64* %arrayidx137, align 8
  store i64 %56, i64* %val, align 8
  %57 = load i64, i64* %val, align 8
  %and138 = and i64 %57, 4294967295
  %xor139 = xor i64 %and138, 2147483648
  %sub140 = sub nsw i64 %xor139, 2147483648
  store i64 %sub140, i64* %val, align 8
  %58 = load i64, i64* %val, align 8
  %call141 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %58)
  store %struct.rtx_def* %call141, %struct.rtx_def** %retval
  br label %return

if.else.142:                                      ; preds = %cond.end.129
  %59 = load i32, i32* @target_flags, align 4
  %and143 = and i32 %59, 33554432
  %tobool144 = icmp ne i32 %and143, 0
  %cond145 = select i1 %tobool144, i32 64, i32 32
  %cmp146 = icmp sge i32 %cond145, 64
  br i1 %cmp146, label %land.lhs.true.148, label %if.else.165

land.lhs.true.148:                                ; preds = %if.else.142
  %60 = load i32, i32* %offset.addr, align 4
  %cmp149 = icmp sle i32 %60, 1
  br i1 %cmp149, label %if.then.151, label %if.else.165

if.then.151:                                      ; preds = %land.lhs.true.148
  %61 = load i32, i32* %offset.addr, align 4
  %mul = mul nsw i32 %61, 2
  %add = add nsw i32 %mul, 1
  %idxprom152 = sext i32 %add to i64
  %arrayidx153 = getelementptr inbounds [4 x i64], [4 x i64]* %k97, i32 0, i64 %idxprom152
  %62 = load i64, i64* %arrayidx153, align 8
  store i64 %62, i64* %val, align 8
  %63 = load i64, i64* %val, align 8
  %and154 = and i64 %63, 4294967295
  %xor155 = xor i64 %and154, 2147483648
  %sub156 = sub nsw i64 %xor155, 2147483648
  %shl157 = shl i64 %sub156, 32
  store i64 %shl157, i64* %val, align 8
  %64 = load i32, i32* %offset.addr, align 4
  %mul158 = mul nsw i32 %64, 2
  %add159 = add nsw i32 %mul158, 0
  %idxprom160 = sext i32 %add159 to i64
  %arrayidx161 = getelementptr inbounds [4 x i64], [4 x i64]* %k97, i32 0, i64 %idxprom160
  %65 = load i64, i64* %arrayidx161, align 8
  %and162 = and i64 %65, 4294967295
  %66 = load i64, i64* %val, align 8
  %or163 = or i64 %66, %and162
  store i64 %or163, i64* %val, align 8
  %67 = load i64, i64* %val, align 8
  %call164 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %67)
  store %struct.rtx_def* %call164, %struct.rtx_def** %retval
  br label %return

if.else.165:                                      ; preds = %land.lhs.true.148, %if.else.142
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1403, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.constant_subword, i32 0, i32 0)) #6
  unreachable

if.end.166:                                       ; preds = %land.lhs.true.91, %land.lhs.true.85, %land.lhs.true.80, %if.else.74
  br label %if.end.167

if.end.167:                                       ; preds = %if.end.166
  %68 = load i32, i32* %mode.addr, align 4
  %idxprom168 = sext i32 %68 to i64
  %arrayidx169 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom168
  %69 = load i32, i32* %arrayidx169, align 4
  %cmp170 = icmp eq i32 %69, 2
  br i1 %cmp170, label %land.lhs.true.172, label %if.end.213

land.lhs.true.172:                                ; preds = %if.end.167
  %70 = load i32, i32* %mode.addr, align 4
  %idxprom173 = sext i32 %70 to i64
  %arrayidx174 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom173
  %71 = load i16, i16* %arrayidx174, align 2
  %conv175 = zext i16 %71 to i32
  %cmp176 = icmp eq i32 %conv175, 32
  br i1 %cmp176, label %land.lhs.true.178, label %if.end.213

land.lhs.true.178:                                ; preds = %land.lhs.true.172
  %72 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %73 = bitcast %struct.rtx_def* %72 to i32*
  %bf.load179 = load i32, i32* %73, align 8
  %bf.clear180 = and i32 %bf.load179, 65535
  %cmp181 = icmp eq i32 %bf.clear180, 55
  br i1 %cmp181, label %if.then.183, label %if.end.213

if.then.183:                                      ; preds = %land.lhs.true.178
  br label %do.body.185

do.body.185:                                      ; preds = %if.then.183
  %74 = bitcast %union.real_extract* %u186 to i8*
  %75 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld187 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx188 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld187, i32 0, i64 1
  %rtwint189 = bitcast %union.rtunion_def* %arrayidx188 to i64*
  %76 = bitcast i64* %rtwint189 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %74, i8* %76, i64 24, i32 8, i1 false)
  %d190 = bitcast %union.real_extract* %u186 to %struct.realvaluetype*
  %77 = bitcast %struct.realvaluetype* %rv184 to i8*
  %78 = bitcast %struct.realvaluetype* %d190 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %77, i8* %78, i64 24, i32 8, i1 false)
  br label %do.end.191

do.end.191:                                       ; preds = %do.body.185
  %call192 = call i64 @etarsingle(%struct.realvaluetype* byval align 8 %rv184)
  store i64 %call192, i64* %l, align 8
  %79 = load i64, i64* %l, align 8
  store i64 %79, i64* %val, align 8
  %80 = load i64, i64* %val, align 8
  %and193 = and i64 %80, 4294967295
  %xor194 = xor i64 %and193, 2147483648
  %sub195 = sub nsw i64 %xor194, 2147483648
  store i64 %sub195, i64* %val, align 8
  %81 = load i32, i32* @target_flags, align 4
  %and196 = and i32 %81, 33554432
  %tobool197 = icmp ne i32 %and196, 0
  %cond198 = select i1 %tobool197, i32 64, i32 32
  %cmp199 = icmp eq i32 %cond198, 16
  br i1 %cmp199, label %if.then.201, label %if.end.211

if.then.201:                                      ; preds = %do.end.191
  %82 = load i32, i32* %offset.addr, align 4
  %and202 = and i32 %82, 1
  %cmp203 = icmp eq i32 %and202, 1
  br i1 %cmp203, label %if.then.205, label %if.end.207

if.then.205:                                      ; preds = %if.then.201
  %83 = load i64, i64* %val, align 8
  %shr206 = ashr i64 %83, 16
  store i64 %shr206, i64* %val, align 8
  br label %if.end.207

if.end.207:                                       ; preds = %if.then.205, %if.then.201
  %84 = load i64, i64* %val, align 8
  %and208 = and i64 %84, 65535
  %xor209 = xor i64 %and208, 32768
  %sub210 = sub nsw i64 %xor209, 32768
  store i64 %sub210, i64* %val, align 8
  br label %if.end.211

if.end.211:                                       ; preds = %if.end.207, %do.end.191
  %85 = load i64, i64* %val, align 8
  %call212 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %85)
  store %struct.rtx_def* %call212, %struct.rtx_def** %retval
  br label %return

if.end.213:                                       ; preds = %land.lhs.true.178, %land.lhs.true.172, %if.end.167
  %86 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %cmp214 = icmp eq %struct.rtx_def* %86, %87
  br i1 %cmp214, label %if.then.216, label %if.end.217

if.then.216:                                      ; preds = %if.end.213
  %88 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  store %struct.rtx_def* %88, %struct.rtx_def** %retval
  br label %return

if.end.217:                                       ; preds = %if.end.213
  %89 = load i32, i32* %mode.addr, align 4
  %idxprom218 = sext i32 %89 to i64
  %arrayidx219 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom218
  %90 = load i32, i32* %arrayidx219, align 4
  %cmp220 = icmp ne i32 %90, 1
  br i1 %cmp220, label %if.then.237, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.217
  %91 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %92 = bitcast %struct.rtx_def* %91 to i32*
  %bf.load222 = load i32, i32* %92, align 8
  %bf.clear223 = and i32 %bf.load222, 65535
  %cmp224 = icmp ne i32 %bf.clear223, 54
  br i1 %cmp224, label %land.lhs.true.226, label %lor.lhs.false.231

land.lhs.true.226:                                ; preds = %lor.lhs.false
  %93 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %94 = bitcast %struct.rtx_def* %93 to i32*
  %bf.load227 = load i32, i32* %94, align 8
  %bf.clear228 = and i32 %bf.load227, 65535
  %cmp229 = icmp ne i32 %bf.clear228, 55
  br i1 %cmp229, label %if.then.237, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %land.lhs.true.226, %lor.lhs.false
  %95 = load i32, i32* @target_flags, align 4
  %and232 = and i32 %95, 33554432
  %tobool233 = icmp ne i32 %and232, 0
  %cond234 = select i1 %tobool233, i32 64, i32 32
  %cmp235 = icmp sgt i32 %cond234, 64
  br i1 %cmp235, label %if.then.237, label %if.end.238

if.then.237:                                      ; preds = %lor.lhs.false.231, %land.lhs.true.226, %if.end.217
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.238:                                       ; preds = %lor.lhs.false.231
  %96 = load i32, i32* %offset.addr, align 4
  %97 = load i32, i32* %size_ratio, align 4
  %div239 = sdiv i32 %96, %97
  %cmp240 = icmp eq i32 %div239, 0
  br i1 %cmp240, label %cond.true.242, label %cond.false.257

cond.true.242:                                    ; preds = %if.end.238
  %98 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %bf.load243 = load i32, i32* %99, align 8
  %bf.clear244 = and i32 %bf.load243, 65535
  %cmp245 = icmp eq i32 %bf.clear244, 54
  br i1 %cmp245, label %cond.true.247, label %cond.false.251

cond.true.247:                                    ; preds = %cond.true.242
  %100 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld248 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx249 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld248, i32 0, i64 0
  %rtwint250 = bitcast %union.rtunion_def* %arrayidx249 to i64*
  %101 = load i64, i64* %rtwint250, align 8
  br label %cond.end.255

cond.false.251:                                   ; preds = %cond.true.242
  %102 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld252 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx253 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld252, i32 0, i64 1
  %rtwint254 = bitcast %union.rtunion_def* %arrayidx253 to i64*
  %103 = load i64, i64* %rtwint254, align 8
  br label %cond.end.255

cond.end.255:                                     ; preds = %cond.false.251, %cond.true.247
  %cond256 = phi i64 [ %101, %cond.true.247 ], [ %103, %cond.false.251 ]
  br label %cond.end.276

cond.false.257:                                   ; preds = %if.end.238
  %104 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %105 = bitcast %struct.rtx_def* %104 to i32*
  %bf.load258 = load i32, i32* %105, align 8
  %bf.clear259 = and i32 %bf.load258, 65535
  %cmp260 = icmp eq i32 %bf.clear259, 54
  br i1 %cmp260, label %cond.true.262, label %cond.false.270

cond.true.262:                                    ; preds = %cond.false.257
  %106 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld263 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx264 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld263, i32 0, i64 0
  %rtwint265 = bitcast %union.rtunion_def* %arrayidx264 to i64*
  %107 = load i64, i64* %rtwint265, align 8
  %cmp266 = icmp slt i64 %107, 0
  %cond268 = select i1 %cmp266, i32 -1, i32 0
  %conv269 = sext i32 %cond268 to i64
  br label %cond.end.274

cond.false.270:                                   ; preds = %cond.false.257
  %108 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %fld271 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx272 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld271, i32 0, i64 2
  %rtwint273 = bitcast %union.rtunion_def* %arrayidx272 to i64*
  %109 = load i64, i64* %rtwint273, align 8
  br label %cond.end.274

cond.end.274:                                     ; preds = %cond.false.270, %cond.true.262
  %cond275 = phi i64 [ %conv269, %cond.true.262 ], [ %109, %cond.false.270 ]
  br label %cond.end.276

cond.end.276:                                     ; preds = %cond.end.274, %cond.end.255
  %cond277 = phi i64 [ %cond256, %cond.end.255 ], [ %cond275, %cond.end.274 ]
  store i64 %cond277, i64* %val, align 8
  %110 = load i32, i32* @target_flags, align 4
  %and278 = and i32 %110, 33554432
  %tobool279 = icmp ne i32 %and278, 0
  %cond280 = select i1 %tobool279, i32 64, i32 32
  %cmp281 = icmp slt i32 %cond280, 64
  br i1 %cmp281, label %if.then.283, label %if.end.289

if.then.283:                                      ; preds = %cond.end.276
  %111 = load i64, i64* %val, align 8
  %112 = load i32, i32* %offset.addr, align 4
  %113 = load i32, i32* %size_ratio, align 4
  %rem = srem i32 %112, %113
  %114 = load i32, i32* @target_flags, align 4
  %and284 = and i32 %114, 33554432
  %tobool285 = icmp ne i32 %and284, 0
  %cond286 = select i1 %tobool285, i32 64, i32 32
  %mul287 = mul nsw i32 %rem, %cond286
  %sh_prom = zext i32 %mul287 to i64
  %shr288 = ashr i64 %111, %sh_prom
  store i64 %shr288, i64* %val, align 8
  br label %if.end.289

if.end.289:                                       ; preds = %if.then.283, %cond.end.276
  %115 = load i64, i64* %val, align 8
  %116 = load i32, i32* @word_mode, align 4
  %call290 = call i64 @trunc_int_for_mode(i64 %115, i32 %116)
  store i64 %call290, i64* %val, align 8
  %117 = load i64, i64* %val, align 8
  %call291 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %117)
  store %struct.rtx_def* %call291, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.289, %if.then.237, %if.then.216, %if.end.211, %if.then.151, %if.then.135, %if.end.68, %if.then.46, %if.then.34, %if.then
  %118 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %118
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @operand_subword(%struct.rtx_def* %op, i32 %offset, i32 %validate_address, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %op.addr = alloca %struct.rtx_def*, align 8
  %offset.addr = alloca i32, align 4
  %validate_address.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %new = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %validate_address, i32* %validate_address.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mode.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1560, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.operand_subword, i32 0, i32 0)) #6
  unreachable

if.end.3:                                         ; preds = %if.end
  %4 = load i32, i32* %mode.addr, align 4
  %cmp4 = icmp ne i32 %4, 51
  br i1 %cmp4, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end.3
  %5 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i32
  %7 = load i32, i32* @target_flags, align 4
  %and = and i32 %7, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 8, i32 4
  %cmp5 = icmp slt i32 %conv, %cond
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true, %if.end.3
  %8 = load i32, i32* %mode.addr, align 4
  %cmp9 = icmp ne i32 %8, 51
  br i1 %cmp9, label %land.lhs.true.11, label %if.end.21

land.lhs.true.11:                                 ; preds = %if.end.8
  %9 = load i32, i32* %offset.addr, align 4
  %add = add i32 %9, 1
  %10 = load i32, i32* @target_flags, align 4
  %and12 = and i32 %10, 33554432
  %tobool13 = icmp ne i32 %and12, 0
  %cond14 = select i1 %tobool13, i32 8, i32 4
  %mul = mul i32 %add, %cond14
  %11 = load i32, i32* %mode.addr, align 4
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom15
  %12 = load i8, i8* %arrayidx16, align 1
  %conv17 = zext i8 %12 to i32
  %cmp18 = icmp ugt i32 %mul, %conv17
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.11
  %13 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %retval
  br label %return

if.end.21:                                        ; preds = %land.lhs.true.11, %if.end.8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load22 = load i32, i32* %15, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 66
  br i1 %cmp24, label %if.then.26, label %if.end.48

if.then.26:                                       ; preds = %if.end.21
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %17 = load i32, i32* @word_mode, align 4
  %18 = load i32, i32* %offset.addr, align 4
  %19 = load i32, i32* @target_flags, align 4
  %and27 = and i32 %19, 33554432
  %tobool28 = icmp ne i32 %and27, 0
  %cond29 = select i1 %tobool28, i32 8, i32 4
  %mul30 = mul i32 %18, %cond29
  %conv31 = zext i32 %mul30 to i64
  %call = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %16, i32 %17, i64 %conv31, i32 0, i32 1)
  store %struct.rtx_def* %call, %struct.rtx_def** %new, align 8
  %20 = load i32, i32* %validate_address.addr, align 4
  %tobool32 = icmp ne i32 %20, 0
  br i1 %tobool32, label %if.else, label %if.then.33

if.then.33:                                       ; preds = %if.then.26
  %21 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %if.then.26
  %22 = load i32, i32* @reload_completed, align 4
  %tobool34 = icmp ne i32 %22, 0
  br i1 %tobool34, label %if.then.35, label %if.else.41

if.then.35:                                       ; preds = %if.else
  %23 = load i32, i32* @word_mode, align 4
  %24 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call37 = call i32 @strict_memory_address_p(i32 %23, %struct.rtx_def* %25)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.end.40, label %if.then.39

if.then.39:                                       ; preds = %if.then.35
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.40:                                        ; preds = %if.then.35
  br label %if.end.46

if.else.41:                                       ; preds = %if.else
  %26 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 0
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %call45 = call %struct.rtx_def* @replace_equiv_address(%struct.rtx_def* %26, %struct.rtx_def* %28)
  store %struct.rtx_def* %call45, %struct.rtx_def** %retval
  br label %return

if.end.46:                                        ; preds = %if.end.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.21
  %29 = load i32, i32* @word_mode, align 4
  %30 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %31 = load i32, i32* %mode.addr, align 4
  %32 = load i32, i32* %offset.addr, align 4
  %33 = load i32, i32* @target_flags, align 4
  %and49 = and i32 %33, 33554432
  %tobool50 = icmp ne i32 %and49, 0
  %cond51 = select i1 %tobool50, i32 8, i32 4
  %mul52 = mul i32 %32, %cond51
  %call53 = call %struct.rtx_def* @simplify_gen_subreg(i32 %29, %struct.rtx_def* %30, i32 %31, i32 %mul52)
  store %struct.rtx_def* %call53, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.48, %if.else.41, %if.then.39, %if.then.33, %if.then.20, %if.then.7
  %34 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %34
}

declare i32 @strict_memory_address_p(i32, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @replace_equiv_address(%struct.rtx_def* %memref, %struct.rtx_def* %addr) #0 {
entry:
  %memref.addr = alloca %struct.rtx_def*, align 8
  %addr.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %memref, %struct.rtx_def** %memref.addr, align 8
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  call void @update_temp_slot_address(%struct.rtx_def* %1, %struct.rtx_def* %2)
  %3 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call %struct.rtx_def* @change_address_1(%struct.rtx_def* %3, i32 0, %struct.rtx_def* %4, i32 1)
  ret %struct.rtx_def* %call
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @operand_subword_force(%struct.rtx_def* %op, i32 %offset, i32 %mode) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %op.addr = alloca %struct.rtx_def*, align 8
  %offset.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %result = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %op, %struct.rtx_def** %op.addr, align 8
  store i32 %offset, i32* %offset.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %1 = load i32, i32* %offset.addr, align 4
  %2 = load i32, i32* %mode.addr, align 4
  %call = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %0, i32 %1, i32 1, i32 %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %result, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %mode.addr, align 4
  %cmp = icmp ne i32 %5, 51
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp ne i32 %6, 0
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp3 = icmp eq i32 %bf.clear, 61
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then.2
  %9 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call5 = call %struct.rtx_def* @copy_to_reg(%struct.rtx_def* %9)
  store %struct.rtx_def* %call5, %struct.rtx_def** %op.addr, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.then.2
  %10 = load i32, i32* %mode.addr, align 4
  %11 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %call6 = call %struct.rtx_def* @force_reg(i32 %10, %struct.rtx_def* %11)
  store %struct.rtx_def* %call6, %struct.rtx_def** %op.addr, align 8
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.4
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %land.lhs.true, %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %op.addr, align 8
  %13 = load i32, i32* %offset.addr, align 4
  %14 = load i32, i32* %mode.addr, align 4
  %call9 = call %struct.rtx_def* @operand_subword(%struct.rtx_def* %12, i32 %13, i32 1, i32 %14)
  store %struct.rtx_def* %call9, %struct.rtx_def** %result, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %cmp10 = icmp eq %struct.rtx_def* %15, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1622, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.operand_subword_force, i32 0, i32 0)) #6
  unreachable

if.end.12:                                        ; preds = %if.end.8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then
  %17 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %17
}

; Function Attrs: nounwind uwtable
define void @reverse_comparison(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %body = alloca %struct.rtx_def*, align 8
  %comp = alloca %struct.rtx_def*, align 8
  %op0 = alloca %struct.rtx_def*, align 8
  %op1 = alloca %struct.rtx_def*, align 8
  %new = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %body, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 47
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %comp, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtvec_def**
  %7 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %7, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 1
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %comp, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %comp, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load10 = load i32, i32* %11, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 74
  br i1 %cmp12, label %if.then.13, label %if.else.26

if.then.13:                                       ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %comp, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %op0, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %comp, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %op1, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %op1, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %comp, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  store %struct.rtx_def* %16, %struct.rtx_def** %rtx22, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %op0, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %comp, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 1
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  store %struct.rtx_def* %18, %struct.rtx_def** %rtx25, align 8
  br label %if.end.47

if.else.26:                                       ; preds = %if.end
  %20 = load %struct.rtx_def*, %struct.rtx_def** %comp, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load27 = load i32, i32* %21, align 8
  %bf.lshr = lshr i32 %bf.load27, 16
  %bf.clear28 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear28 to i64
  %arrayidx29 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom
  %22 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx29, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %comp, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 74, i32 0, %struct.rtx_def* %22, %struct.rtx_def* %23)
  store %struct.rtx_def* %call, %struct.rtx_def** %new, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load30 = load i32, i32* %25, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 47
  br i1 %cmp32, label %if.then.33, label %if.else.37

if.then.33:                                       ; preds = %if.else.26
  %26 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 1
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  store %struct.rtx_def* %26, %struct.rtx_def** %rtx36, align 8
  br label %if.end.46

if.else.37:                                       ; preds = %if.else.26
  %28 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %body, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtvec40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtvec_def**
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec40, align 8
  %elem41 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem41, i32 0, i64 0
  %31 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx42, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  store %struct.rtx_def* %28, %struct.rtx_def** %rtx45, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.37, %if.then.33
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %if.then.13
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_mem_attributes(%struct.rtx_def* %ref, %union.tree_node* %t, i32 %objectp) #0 {
entry:
  %ref.addr = alloca %struct.rtx_def*, align 8
  %t.addr = alloca %union.tree_node*, align 8
  %objectp.addr = alloca i32, align 4
  %alias = alloca i64, align 8
  %expr = alloca %union.tree_node*, align 8
  %offset = alloca %struct.rtx_def*, align 8
  %size = alloca %struct.rtx_def*, align 8
  %align = alloca i32, align 4
  %type = alloca %union.tree_node*, align 8
  %off_tree = alloca %union.tree_node*, align 8
  store %struct.rtx_def* %ref, %struct.rtx_def** %ref.addr, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  store i32 %objectp, i32* %objectp.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %1 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp = icmp eq %struct.mem_attrs* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtmem3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.mem_attrs**
  %3 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem3, align 8
  %alias4 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %3, i32 0, i32 0
  %4 = load i64, i64* %alias4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %4, %cond.false ]
  store i64 %cond, i64* %alias, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtmem7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.mem_attrs**
  %6 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem7, align 8
  %cmp8 = icmp eq %struct.mem_attrs* %6, null
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end
  br label %cond.end.15

cond.false.10:                                    ; preds = %cond.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 1
  %rtmem13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.mem_attrs**
  %8 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem13, align 8
  %expr14 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %8, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %expr14, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.10, %cond.true.9
  %cond16 = phi %union.tree_node* [ null, %cond.true.9 ], [ %9, %cond.false.10 ]
  store %union.tree_node* %cond16, %union.tree_node** %expr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtmem19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.mem_attrs**
  %11 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem19, align 8
  %cmp20 = icmp eq %struct.mem_attrs* %11, null
  br i1 %cmp20, label %cond.true.21, label %cond.false.22

cond.true.21:                                     ; preds = %cond.end.15
  br label %cond.end.27

cond.false.22:                                    ; preds = %cond.end.15
  %12 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 1
  %rtmem25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.mem_attrs**
  %13 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem25, align 8
  %offset26 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %13, i32 0, i32 2
  %14 = load %struct.rtx_def*, %struct.rtx_def** %offset26, align 8
  br label %cond.end.27

cond.end.27:                                      ; preds = %cond.false.22, %cond.true.21
  %cond28 = phi %struct.rtx_def* [ null, %cond.true.21 ], [ %14, %cond.false.22 ]
  store %struct.rtx_def* %cond28, %struct.rtx_def** %offset, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 1
  %rtmem31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.mem_attrs**
  %16 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem31, align 8
  %cmp32 = icmp ne %struct.mem_attrs* %16, null
  br i1 %cmp32, label %cond.true.33, label %cond.false.38

cond.true.33:                                     ; preds = %cond.end.27
  %17 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 1
  %rtmem36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.mem_attrs**
  %18 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem36, align 8
  %size37 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %18, i32 0, i32 3
  %19 = load %struct.rtx_def*, %struct.rtx_def** %size37, align 8
  br label %cond.end.48

cond.false.38:                                    ; preds = %cond.end.27
  %20 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load = load i32, i32* %21, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp39 = icmp ne i32 %bf.clear, 51
  br i1 %cmp39, label %cond.true.40, label %cond.false.45

cond.true.40:                                     ; preds = %cond.false.38
  %22 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load41 = load i32, i32* %23, align 8
  %bf.lshr42 = lshr i32 %bf.load41, 16
  %bf.clear43 = and i32 %bf.lshr42, 255
  %idxprom = sext i32 %bf.clear43 to i64
  %arrayidx44 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %24 = load i8, i8* %arrayidx44, align 1
  %conv = zext i8 %24 to i64
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  br label %cond.end.46

cond.false.45:                                    ; preds = %cond.false.38
  br label %cond.end.46

cond.end.46:                                      ; preds = %cond.false.45, %cond.true.40
  %cond47 = phi %struct.rtx_def* [ %call, %cond.true.40 ], [ null, %cond.false.45 ]
  br label %cond.end.48

cond.end.48:                                      ; preds = %cond.end.46, %cond.true.33
  %cond49 = phi %struct.rtx_def* [ %19, %cond.true.33 ], [ %cond47, %cond.end.46 ]
  store %struct.rtx_def* %cond49, %struct.rtx_def** %size, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 1
  %rtmem52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.mem_attrs**
  %26 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem52, align 8
  %cmp53 = icmp ne %struct.mem_attrs* %26, null
  br i1 %cmp53, label %cond.true.55, label %cond.false.60

cond.true.55:                                     ; preds = %cond.end.48
  %27 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 1
  %rtmem58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.mem_attrs**
  %28 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem58, align 8
  %align59 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %28, i32 0, i32 4
  %29 = load i32, i32* %align59, align 4
  br label %cond.end.61

cond.false.60:                                    ; preds = %cond.end.48
  br label %cond.end.61

cond.end.61:                                      ; preds = %cond.false.60, %cond.true.55
  %cond62 = phi i32 [ %29, %cond.true.55 ], [ 8, %cond.false.60 ]
  store i32 %cond62, i32* %align, align 4
  %30 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %cmp63 = icmp eq %union.tree_node* %30, null
  br i1 %cmp63, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.61
  br label %if.end.503

if.end:                                           ; preds = %cond.end.61
  %31 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common = bitcast %union.tree_node* %31 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load65 = load i32, i32* %code, align 8
  %bf.clear66 = and i32 %bf.load65, 255
  %idxprom67 = sext i32 %bf.clear66 to i64
  %arrayidx68 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom67
  %32 = load i8, i8* %arrayidx68, align 1
  %conv69 = sext i8 %32 to i32
  %cmp70 = icmp eq i32 %conv69, 116
  br i1 %cmp70, label %cond.true.72, label %cond.false.73

cond.true.72:                                     ; preds = %if.end
  %33 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  br label %cond.end.76

cond.false.73:                                    ; preds = %if.end
  %34 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common74 = bitcast %union.tree_node* %34 to %struct.tree_common*
  %type75 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common74, i32 0, i32 1
  %35 = load %union.tree_node*, %union.tree_node** %type75, align 8
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.73, %cond.true.72
  %cond77 = phi %union.tree_node* [ %33, %cond.true.72 ], [ %35, %cond.false.73 ]
  store %union.tree_node* %cond77, %union.tree_node** %type, align 8
  %36 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common78 = bitcast %union.tree_node* %36 to %struct.tree_common*
  %code79 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common78, i32 0, i32 2
  %bf.load80 = load i32, i32* %code79, align 8
  %bf.clear81 = and i32 %bf.load80, 255
  %idxprom82 = sext i32 %bf.clear81 to i64
  %arrayidx83 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom82
  %37 = load i8, i8* %arrayidx83, align 1
  %conv84 = sext i8 %37 to i32
  %cmp85 = icmp eq i32 %conv84, 100
  br i1 %cmp85, label %land.lhs.true, label %if.end.106

land.lhs.true:                                    ; preds = %cond.end.76
  %38 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %39 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl = bitcast %union.tree_node* %39 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp87 = icmp ne %struct.rtx_def* %40, null
  br i1 %cmp87, label %cond.true.89, label %cond.false.100

cond.true.89:                                     ; preds = %land.lhs.true
  %41 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl90 = bitcast %union.tree_node* %41 to %struct.tree_decl*
  %rtl91 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl90, i32 0, i32 17
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtl91, align 8
  %tobool = icmp ne %struct.rtx_def* %42, null
  br i1 %tobool, label %cond.true.92, label %cond.false.95

cond.true.92:                                     ; preds = %cond.true.89
  %43 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl93 = bitcast %union.tree_node* %43 to %struct.tree_decl*
  %rtl94 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl93, i32 0, i32 17
  %44 = load %struct.rtx_def*, %struct.rtx_def** %rtl94, align 8
  br label %cond.end.98

cond.false.95:                                    ; preds = %cond.true.89
  %45 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @make_decl_rtl(%union.tree_node* %45, i8* null)
  %46 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl96 = bitcast %union.tree_node* %46 to %struct.tree_decl*
  %rtl97 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl96, i32 0, i32 17
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtl97, align 8
  br label %cond.end.98

cond.end.98:                                      ; preds = %cond.false.95, %cond.true.92
  %cond99 = phi %struct.rtx_def* [ %44, %cond.true.92 ], [ %47, %cond.false.95 ]
  br label %cond.end.101

cond.false.100:                                   ; preds = %land.lhs.true
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.100, %cond.end.98
  %cond102 = phi %struct.rtx_def* [ %cond99, %cond.end.98 ], [ null, %cond.false.100 ]
  %cmp103 = icmp eq %struct.rtx_def* %38, %cond102
  br i1 %cmp103, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %cond.end.101
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1729, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.set_mem_attributes, i32 0, i32 0)) #6
  unreachable

if.end.106:                                       ; preds = %cond.end.101, %cond.end.76
  %48 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call107 = call i64 @get_alias_set(%union.tree_node* %48)
  store i64 %call107, i64* %alias, align 8
  %49 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common108 = bitcast %union.tree_node* %49 to %struct.tree_common*
  %volatile_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common108, i32 0, i32 2
  %bf.load109 = load i32, i32* %volatile_flag, align 8
  %bf.lshr110 = lshr i32 %bf.load109, 11
  %bf.clear111 = and i32 %bf.lshr110, 1
  %50 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load112 = load i32, i32* %51, align 8
  %bf.value = and i32 %bf.clear111, 1
  %bf.shl = shl i32 %bf.value, 27
  %bf.clear113 = and i32 %bf.load112, -134217729
  %bf.set = or i32 %bf.clear113, %bf.shl
  store i32 %bf.set, i32* %51, align 8
  %52 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common114 = bitcast %union.tree_node* %52 to %struct.tree_common*
  %code115 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common114, i32 0, i32 2
  %bf.load116 = load i32, i32* %code115, align 8
  %bf.clear117 = and i32 %bf.load116, 255
  %cmp118 = icmp eq i32 %bf.clear117, 18
  br i1 %cmp118, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.106
  %53 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common120 = bitcast %union.tree_node* %53 to %struct.tree_common*
  %code121 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common120, i32 0, i32 2
  %bf.load122 = load i32, i32* %code121, align 8
  %bf.clear123 = and i32 %bf.load122, 255
  %cmp124 = icmp eq i32 %bf.clear123, 20
  br i1 %cmp124, label %lor.end, label %lor.lhs.false.126

lor.lhs.false.126:                                ; preds = %lor.lhs.false
  %54 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common127 = bitcast %union.tree_node* %54 to %struct.tree_common*
  %code128 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common127, i32 0, i32 2
  %bf.load129 = load i32, i32* %code128, align 8
  %bf.clear130 = and i32 %bf.load129, 255
  %cmp131 = icmp eq i32 %bf.clear130, 21
  br i1 %cmp131, label %lor.end, label %lor.lhs.false.133

lor.lhs.false.133:                                ; preds = %lor.lhs.false.126
  %55 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common134 = bitcast %union.tree_node* %55 to %struct.tree_common*
  %code135 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common134, i32 0, i32 2
  %bf.load136 = load i32, i32* %code135, align 8
  %bf.clear137 = and i32 %bf.load136, 255
  %cmp138 = icmp eq i32 %bf.clear137, 22
  br i1 %cmp138, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.133
  %56 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common140 = bitcast %union.tree_node* %56 to %struct.tree_common*
  %code141 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common140, i32 0, i32 2
  %bf.load142 = load i32, i32* %code141, align 8
  %bf.clear143 = and i32 %bf.load142, 255
  %cmp144 = icmp eq i32 %bf.clear143, 19
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.133, %lor.lhs.false.126, %lor.lhs.false, %if.end.106
  %57 = phi i1 [ true, %lor.lhs.false.133 ], [ true, %lor.lhs.false.126 ], [ true, %lor.lhs.false ], [ true, %if.end.106 ], [ %cmp144, %lor.rhs ]
  %lor.ext = zext i1 %57 to i32
  %58 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %59 = bitcast %struct.rtx_def* %58 to i32*
  %bf.load146 = load i32, i32* %59, align 8
  %bf.value147 = and i32 %lor.ext, 1
  %bf.shl148 = shl i32 %bf.value147, 28
  %bf.clear149 = and i32 %bf.load146, -268435457
  %bf.set150 = or i32 %bf.clear149, %bf.shl148
  store i32 %bf.set150, i32* %59, align 8
  %60 = load i8, i8* getelementptr inbounds (%struct.lang_hooks, %struct.lang_hooks* @lang_hooks, i32 0, i32 12), align 1
  %tobool151 = trunc i8 %60 to i1
  br i1 %tobool151, label %land.lhs.true.153, label %lor.rhs.166

land.lhs.true.153:                                ; preds = %lor.end
  %61 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common154 = bitcast %union.tree_node* %61 to %struct.tree_common*
  %readonly_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common154, i32 0, i32 2
  %bf.load155 = load i32, i32* %readonly_flag, align 8
  %bf.lshr156 = lshr i32 %bf.load155, 12
  %bf.clear157 = and i32 %bf.lshr156, 1
  %tobool158 = icmp ne i32 %bf.clear157, 0
  br i1 %tobool158, label %lor.end.181, label %lor.lhs.false.159

lor.lhs.false.159:                                ; preds = %land.lhs.true.153
  %62 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common160 = bitcast %union.tree_node* %62 to %struct.tree_common*
  %readonly_flag161 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common160, i32 0, i32 2
  %bf.load162 = load i32, i32* %readonly_flag161, align 8
  %bf.lshr163 = lshr i32 %bf.load162, 12
  %bf.clear164 = and i32 %bf.lshr163, 1
  %tobool165 = icmp ne i32 %bf.clear164, 0
  br i1 %tobool165, label %lor.end.181, label %lor.rhs.166

lor.rhs.166:                                      ; preds = %lor.lhs.false.159, %lor.end
  %63 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common167 = bitcast %union.tree_node* %63 to %struct.tree_common*
  %code168 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common167, i32 0, i32 2
  %bf.load169 = load i32, i32* %code168, align 8
  %bf.clear170 = and i32 %bf.load169, 255
  %idxprom171 = sext i32 %bf.clear170 to i64
  %arrayidx172 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom171
  %64 = load i8, i8* %arrayidx172, align 1
  %conv173 = sext i8 %64 to i32
  %cmp174 = icmp eq i32 %conv173, 116
  br i1 %cmp174, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %lor.rhs.166
  %65 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common176 = bitcast %union.tree_node* %65 to %struct.tree_common*
  %constant_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common176, i32 0, i32 2
  %bf.load177 = load i32, i32* %constant_flag, align 8
  %bf.lshr178 = lshr i32 %bf.load177, 9
  %bf.clear179 = and i32 %bf.lshr178, 1
  %tobool180 = icmp ne i32 %bf.clear179, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs.166
  %66 = phi i1 [ false, %lor.rhs.166 ], [ %tobool180, %land.rhs ]
  br label %lor.end.181

lor.end.181:                                      ; preds = %land.end, %lor.lhs.false.159, %land.lhs.true.153
  %67 = phi i1 [ true, %lor.lhs.false.159 ], [ true, %land.lhs.true.153 ], [ %66, %land.end ]
  %lor.ext182 = zext i1 %67 to i32
  %68 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load183 = load i32, i32* %69, align 8
  %bf.lshr184 = lshr i32 %bf.load183, 26
  %bf.clear185 = and i32 %bf.lshr184, 1
  %or = or i32 %bf.clear185, %lor.ext182
  %bf.load186 = load i32, i32* %69, align 8
  %bf.value187 = and i32 %or, 1
  %bf.shl188 = shl i32 %bf.value187, 26
  %bf.clear189 = and i32 %bf.load186, -67108865
  %bf.set190 = or i32 %bf.clear189, %bf.shl188
  store i32 %bf.set190, i32* %69, align 8
  %70 = load i32, i32* %objectp.addr, align 4
  %tobool191 = icmp ne i32 %70, 0
  br i1 %tobool191, label %land.lhs.true.202, label %lor.lhs.false.192

lor.lhs.false.192:                                ; preds = %lor.end.181
  %71 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common193 = bitcast %union.tree_node* %71 to %struct.tree_common*
  %code194 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common193, i32 0, i32 2
  %bf.load195 = load i32, i32* %code194, align 8
  %bf.clear196 = and i32 %bf.load195, 255
  %idxprom197 = sext i32 %bf.clear196 to i64
  %arrayidx198 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom197
  %72 = load i8, i8* %arrayidx198, align 1
  %conv199 = sext i8 %72 to i32
  %cmp200 = icmp eq i32 %conv199, 100
  br i1 %cmp200, label %land.lhs.true.202, label %if.end.241

land.lhs.true.202:                                ; preds = %lor.lhs.false.192, %lor.end.181
  %73 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common203 = bitcast %union.tree_node* %73 to %struct.tree_common*
  %code204 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common203, i32 0, i32 2
  %bf.load205 = load i32, i32* %code204, align 8
  %bf.clear206 = and i32 %bf.load205, 255
  %cmp207 = icmp eq i32 %bf.clear206, 18
  br i1 %cmp207, label %if.end.241, label %lor.lhs.false.209

lor.lhs.false.209:                                ; preds = %land.lhs.true.202
  %74 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common210 = bitcast %union.tree_node* %74 to %struct.tree_common*
  %code211 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common210, i32 0, i32 2
  %bf.load212 = load i32, i32* %code211, align 8
  %bf.clear213 = and i32 %bf.load212, 255
  %cmp214 = icmp eq i32 %bf.clear213, 20
  br i1 %cmp214, label %if.end.241, label %lor.lhs.false.216

lor.lhs.false.216:                                ; preds = %lor.lhs.false.209
  %75 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common217 = bitcast %union.tree_node* %75 to %struct.tree_common*
  %code218 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common217, i32 0, i32 2
  %bf.load219 = load i32, i32* %code218, align 8
  %bf.clear220 = and i32 %bf.load219, 255
  %cmp221 = icmp eq i32 %bf.clear220, 21
  br i1 %cmp221, label %if.end.241, label %lor.lhs.false.223

lor.lhs.false.223:                                ; preds = %lor.lhs.false.216
  %76 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common224 = bitcast %union.tree_node* %76 to %struct.tree_common*
  %code225 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common224, i32 0, i32 2
  %bf.load226 = load i32, i32* %code225, align 8
  %bf.clear227 = and i32 %bf.load226, 255
  %cmp228 = icmp eq i32 %bf.clear227, 22
  br i1 %cmp228, label %if.end.241, label %lor.lhs.false.230

lor.lhs.false.230:                                ; preds = %lor.lhs.false.223
  %77 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common231 = bitcast %union.tree_node* %77 to %struct.tree_common*
  %code232 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common231, i32 0, i32 2
  %bf.load233 = load i32, i32* %code232, align 8
  %bf.clear234 = and i32 %bf.load233, 255
  %cmp235 = icmp eq i32 %bf.clear234, 19
  br i1 %cmp235, label %if.end.241, label %if.then.237

if.then.237:                                      ; preds = %lor.lhs.false.230
  %78 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %79 = bitcast %struct.rtx_def* %78 to i32*
  %bf.load238 = load i32, i32* %79, align 8
  %bf.clear239 = and i32 %bf.load238, 2147483647
  %bf.set240 = or i32 %bf.clear239, -2147483648
  store i32 %bf.set240, i32* %79, align 8
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.237, %lor.lhs.false.230, %lor.lhs.false.223, %lor.lhs.false.216, %lor.lhs.false.209, %land.lhs.true.202, %lor.lhs.false.192
  %80 = load i32, i32* %objectp.addr, align 4
  %tobool242 = icmp ne i32 %80, 0
  br i1 %tobool242, label %if.then.256, label %lor.lhs.false.243

lor.lhs.false.243:                                ; preds = %if.end.241
  %81 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common244 = bitcast %union.tree_node* %81 to %struct.tree_common*
  %code245 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common244, i32 0, i32 2
  %bf.load246 = load i32, i32* %code245, align 8
  %bf.clear247 = and i32 %bf.load246, 255
  %cmp248 = icmp eq i32 %bf.clear247, 41
  br i1 %cmp248, label %if.then.256, label %lor.lhs.false.250

lor.lhs.false.250:                                ; preds = %lor.lhs.false.243
  %82 = load %union.tree_node*, %union.tree_node** %type, align 8
  %common251 = bitcast %union.tree_node* %82 to %struct.tree_common*
  %nothrow_flag = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common251, i32 0, i32 2
  %bf.load252 = load i32, i32* %nothrow_flag, align 8
  %bf.lshr253 = lshr i32 %bf.load252, 17
  %bf.clear254 = and i32 %bf.lshr253, 1
  %tobool255 = icmp ne i32 %bf.clear254, 0
  br i1 %tobool255, label %if.then.256, label %if.end.267

if.then.256:                                      ; preds = %lor.lhs.false.250, %lor.lhs.false.243, %if.end.241
  %83 = load i32, i32* %align, align 4
  %84 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type257 = bitcast %union.tree_node* %84 to %struct.tree_type*
  %align258 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type257, i32 0, i32 7
  %85 = load i32, i32* %align258, align 4
  %cmp259 = icmp ugt i32 %83, %85
  br i1 %cmp259, label %cond.true.261, label %cond.false.262

cond.true.261:                                    ; preds = %if.then.256
  %86 = load i32, i32* %align, align 4
  br label %cond.end.265

cond.false.262:                                   ; preds = %if.then.256
  %87 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type263 = bitcast %union.tree_node* %87 to %struct.tree_type*
  %align264 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type263, i32 0, i32 7
  %88 = load i32, i32* %align264, align 4
  br label %cond.end.265

cond.end.265:                                     ; preds = %cond.false.262, %cond.true.261
  %cond266 = phi i32 [ %86, %cond.true.261 ], [ %88, %cond.false.262 ]
  store i32 %cond266, i32* %align, align 4
  br label %if.end.267

if.end.267:                                       ; preds = %cond.end.265, %lor.lhs.false.250
  %89 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type268 = bitcast %union.tree_node* %89 to %struct.tree_type*
  %size_unit = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type268, i32 0, i32 3
  %90 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %tobool269 = icmp ne %union.tree_node* %90, null
  br i1 %tobool269, label %land.lhs.true.270, label %if.end.280

land.lhs.true.270:                                ; preds = %if.end.267
  %91 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type271 = bitcast %union.tree_node* %91 to %struct.tree_type*
  %size_unit272 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type271, i32 0, i32 3
  %92 = load %union.tree_node*, %union.tree_node** %size_unit272, align 8
  %call273 = call i32 @host_integerp(%union.tree_node* %92, i32 1)
  %tobool274 = icmp ne i32 %call273, 0
  br i1 %tobool274, label %if.then.275, label %if.end.280

if.then.275:                                      ; preds = %land.lhs.true.270
  %93 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type276 = bitcast %union.tree_node* %93 to %struct.tree_type*
  %size_unit277 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type276, i32 0, i32 3
  %94 = load %union.tree_node*, %union.tree_node** %size_unit277, align 8
  %call278 = call i64 @tree_low_cst(%union.tree_node* %94, i32 1)
  %call279 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call278)
  store %struct.rtx_def* %call279, %struct.rtx_def** %size, align 8
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.275, %land.lhs.true.270, %if.end.267
  %95 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common281 = bitcast %union.tree_node* %95 to %struct.tree_common*
  %code282 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common281, i32 0, i32 2
  %bf.load283 = load i32, i32* %code282, align 8
  %bf.clear284 = and i32 %bf.load283, 255
  %idxprom285 = sext i32 %bf.clear284 to i64
  %arrayidx286 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom285
  %96 = load i8, i8* %arrayidx286, align 1
  %conv287 = sext i8 %96 to i32
  %cmp288 = icmp eq i32 %conv287, 116
  br i1 %cmp288, label %if.end.453, label %if.then.290

if.then.290:                                      ; preds = %if.end.280
  %97 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %98 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  call void @maybe_set_unchanging(%struct.rtx_def* %97, %union.tree_node* %98)
  %99 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common291 = bitcast %union.tree_node* %99 to %struct.tree_common*
  %volatile_flag292 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common291, i32 0, i32 2
  %bf.load293 = load i32, i32* %volatile_flag292, align 8
  %bf.lshr294 = lshr i32 %bf.load293, 11
  %bf.clear295 = and i32 %bf.lshr294, 1
  %tobool296 = icmp ne i32 %bf.clear295, 0
  br i1 %tobool296, label %if.then.297, label %if.end.301

if.then.297:                                      ; preds = %if.then.290
  %100 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load298 = load i32, i32* %101, align 8
  %bf.clear299 = and i32 %bf.load298, -134217729
  %bf.set300 = or i32 %bf.clear299, 134217728
  store i32 %bf.set300, i32* %101, align 8
  br label %if.end.301

if.end.301:                                       ; preds = %if.then.297, %if.then.290
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end.301
  %102 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common302 = bitcast %union.tree_node* %102 to %struct.tree_common*
  %code303 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common302, i32 0, i32 2
  %bf.load304 = load i32, i32* %code303, align 8
  %bf.clear305 = and i32 %bf.load304, 255
  %cmp306 = icmp eq i32 %bf.clear305, 115
  br i1 %cmp306, label %lor.end.336, label %lor.lhs.false.308

lor.lhs.false.308:                                ; preds = %while.cond
  %103 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common309 = bitcast %union.tree_node* %103 to %struct.tree_common*
  %code310 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common309, i32 0, i32 2
  %bf.load311 = load i32, i32* %code310, align 8
  %bf.clear312 = and i32 %bf.load311, 255
  %cmp313 = icmp eq i32 %bf.clear312, 114
  br i1 %cmp313, label %lor.end.336, label %lor.lhs.false.315

lor.lhs.false.315:                                ; preds = %lor.lhs.false.308
  %104 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common316 = bitcast %union.tree_node* %104 to %struct.tree_common*
  %code317 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common316, i32 0, i32 2
  %bf.load318 = load i32, i32* %code317, align 8
  %bf.clear319 = and i32 %bf.load318, 255
  %cmp320 = icmp eq i32 %bf.clear319, 116
  br i1 %cmp320, label %lor.end.336, label %lor.lhs.false.322

lor.lhs.false.322:                                ; preds = %lor.lhs.false.315
  %105 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common323 = bitcast %union.tree_node* %105 to %struct.tree_common*
  %code324 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common323, i32 0, i32 2
  %bf.load325 = load i32, i32* %code324, align 8
  %bf.clear326 = and i32 %bf.load325, 255
  %cmp327 = icmp eq i32 %bf.clear326, 117
  br i1 %cmp327, label %lor.end.336, label %lor.rhs.329

lor.rhs.329:                                      ; preds = %lor.lhs.false.322
  %106 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common330 = bitcast %union.tree_node* %106 to %struct.tree_common*
  %code331 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common330, i32 0, i32 2
  %bf.load332 = load i32, i32* %code331, align 8
  %bf.clear333 = and i32 %bf.load332, 255
  %cmp334 = icmp eq i32 %bf.clear333, 118
  br label %lor.end.336

lor.end.336:                                      ; preds = %lor.rhs.329, %lor.lhs.false.322, %lor.lhs.false.315, %lor.lhs.false.308, %while.cond
  %107 = phi i1 [ true, %lor.lhs.false.322 ], [ true, %lor.lhs.false.315 ], [ true, %lor.lhs.false.308 ], [ true, %while.cond ], [ %cmp334, %lor.rhs.329 ]
  br i1 %107, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end.336
  %108 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp = bitcast %union.tree_node* %108 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx338 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %109 = load %union.tree_node*, %union.tree_node** %arrayidx338, align 8
  store %union.tree_node* %109, %union.tree_node** %t.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end.336
  %110 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call339 = call i32 @can_address_p(%union.tree_node* %110)
  %tobool340 = icmp ne i32 %call339, 0
  br i1 %tobool340, label %if.end.345, label %if.then.341

if.then.341:                                      ; preds = %while.end
  %111 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %112 = bitcast %struct.rtx_def* %111 to i32*
  %bf.load342 = load i32, i32* %112, align 8
  %bf.clear343 = and i32 %bf.load342, -16777217
  %bf.set344 = or i32 %bf.clear343, 16777216
  store i32 %bf.set344, i32* %112, align 8
  br label %if.end.345

if.end.345:                                       ; preds = %if.then.341, %while.end
  %113 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common346 = bitcast %union.tree_node* %113 to %struct.tree_common*
  %code347 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common346, i32 0, i32 2
  %bf.load348 = load i32, i32* %code347, align 8
  %bf.clear349 = and i32 %bf.load348, 255
  %idxprom350 = sext i32 %bf.clear349 to i64
  %arrayidx351 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom350
  %114 = load i8, i8* %arrayidx351, align 1
  %conv352 = sext i8 %114 to i32
  %cmp353 = icmp eq i32 %conv352, 100
  br i1 %cmp353, label %if.then.355, label %if.else

if.then.355:                                      ; preds = %if.end.345
  %115 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  store %union.tree_node* %115, %union.tree_node** %expr, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %116, %struct.rtx_def** %offset, align 8
  %117 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl356 = bitcast %union.tree_node* %117 to %struct.tree_decl*
  %size_unit357 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl356, i32 0, i32 7
  %118 = load %union.tree_node*, %union.tree_node** %size_unit357, align 8
  %tobool358 = icmp ne %union.tree_node* %118, null
  br i1 %tobool358, label %land.lhs.true.359, label %cond.false.369

land.lhs.true.359:                                ; preds = %if.then.355
  %119 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl360 = bitcast %union.tree_node* %119 to %struct.tree_decl*
  %size_unit361 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl360, i32 0, i32 7
  %120 = load %union.tree_node*, %union.tree_node** %size_unit361, align 8
  %call362 = call i32 @host_integerp(%union.tree_node* %120, i32 1)
  %tobool363 = icmp ne i32 %call362, 0
  br i1 %tobool363, label %cond.true.364, label %cond.false.369

cond.true.364:                                    ; preds = %land.lhs.true.359
  %121 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl365 = bitcast %union.tree_node* %121 to %struct.tree_decl*
  %size_unit366 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl365, i32 0, i32 7
  %122 = load %union.tree_node*, %union.tree_node** %size_unit366, align 8
  %call367 = call i64 @tree_low_cst(%union.tree_node* %122, i32 1)
  %call368 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call367)
  br label %cond.end.370

cond.false.369:                                   ; preds = %land.lhs.true.359, %if.then.355
  br label %cond.end.370

cond.end.370:                                     ; preds = %cond.false.369, %cond.true.364
  %cond371 = phi %struct.rtx_def* [ %call368, %cond.true.364 ], [ null, %cond.false.369 ]
  store %struct.rtx_def* %cond371, %struct.rtx_def** %size, align 8
  %123 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %decl372 = bitcast %union.tree_node* %123 to %struct.tree_decl*
  %u1 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl372, i32 0, i32 6
  %a = bitcast %union.anon* %u1 to %struct.anon.0*
  %124 = bitcast %struct.anon.0* %a to i32*
  %bf.load373 = load i32, i32* %124, align 4
  %bf.clear374 = and i32 %bf.load373, 16777215
  store i32 %bf.clear374, i32* %align, align 4
  br label %if.end.452

if.else:                                          ; preds = %if.end.345
  %125 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common375 = bitcast %union.tree_node* %125 to %struct.tree_common*
  %code376 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common375, i32 0, i32 2
  %bf.load377 = load i32, i32* %code376, align 8
  %bf.clear378 = and i32 %bf.load377, 255
  %idxprom379 = sext i32 %bf.clear378 to i64
  %arrayidx380 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom379
  %126 = load i8, i8* %arrayidx380, align 1
  %conv381 = sext i8 %126 to i32
  %cmp382 = icmp eq i32 %conv381, 99
  br i1 %cmp382, label %if.then.384, label %if.else.388

if.then.384:                                      ; preds = %if.else
  %127 = load %union.tree_node*, %union.tree_node** %type, align 8
  %type385 = bitcast %union.tree_node* %127 to %struct.tree_type*
  %align386 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type385, i32 0, i32 7
  %128 = load i32, i32* %align386, align 4
  store i32 %128, i32* %align, align 4
  %129 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %130 = load i32, i32* %align, align 4
  %call387 = call i32 @ix86_constant_alignment(%union.tree_node* %129, i32 %130)
  store i32 %call387, i32* %align, align 4
  br label %if.end.451

if.else.388:                                      ; preds = %if.else
  %131 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common389 = bitcast %union.tree_node* %131 to %struct.tree_common*
  %code390 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common389, i32 0, i32 2
  %bf.load391 = load i32, i32* %code390, align 8
  %bf.clear392 = and i32 %bf.load391, 255
  %cmp393 = icmp eq i32 %bf.clear392, 39
  br i1 %cmp393, label %land.lhs.true.395, label %if.else.406

land.lhs.true.395:                                ; preds = %if.else.388
  %132 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp396 = bitcast %union.tree_node* %132 to %struct.tree_exp*
  %operands397 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp396, i32 0, i32 2
  %arrayidx398 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands397, i32 0, i64 1
  %133 = load %union.tree_node*, %union.tree_node** %arrayidx398, align 8
  %decl399 = bitcast %union.tree_node* %133 to %struct.tree_decl*
  %bit_field_flag = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl399, i32 0, i32 5
  %134 = bitcast i48* %bit_field_flag to i64*
  %bf.load400 = load i64, i64* %134, align 8
  %bf.lshr401 = lshr i64 %bf.load400, 12
  %bf.clear402 = and i64 %bf.lshr401, 1
  %bf.cast = trunc i64 %bf.clear402 to i32
  %tobool403 = icmp ne i32 %bf.cast, 0
  br i1 %tobool403, label %if.else.406, label %if.then.404

if.then.404:                                      ; preds = %land.lhs.true.395
  %135 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call405 = call %union.tree_node* @component_ref_for_mem_expr(%union.tree_node* %135)
  store %union.tree_node* %call405, %union.tree_node** %expr, align 8
  %136 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %136, %struct.rtx_def** %offset, align 8
  br label %if.end.450

if.else.406:                                      ; preds = %land.lhs.true.395, %if.else.388
  %137 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common407 = bitcast %union.tree_node* %137 to %struct.tree_common*
  %code408 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common407, i32 0, i32 2
  %bf.load409 = load i32, i32* %code408, align 8
  %bf.clear410 = and i32 %bf.load409, 255
  %cmp411 = icmp eq i32 %bf.clear410, 43
  br i1 %cmp411, label %if.then.413, label %if.end.449

if.then.413:                                      ; preds = %if.else.406
  %138 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([51 x %union.tree_node*], [51 x %union.tree_node*]* @global_trees, i32 0, i64 15), align 8
  store %union.tree_node* %138, %union.tree_node** %off_tree, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.413
  %139 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %140 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([6 x %union.tree_node*], [6 x %union.tree_node*]* @sizetype_tab, i32 0, i64 0), align 8
  %141 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp414 = bitcast %union.tree_node* %141 to %struct.tree_exp*
  %operands415 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp414, i32 0, i32 2
  %arrayidx416 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands415, i32 0, i64 1
  %142 = load %union.tree_node*, %union.tree_node** %arrayidx416, align 8
  %143 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common417 = bitcast %union.tree_node* %143 to %struct.tree_common*
  %type418 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common417, i32 0, i32 1
  %144 = load %union.tree_node*, %union.tree_node** %type418, align 8
  %type419 = bitcast %union.tree_node* %144 to %struct.tree_type*
  %size_unit420 = getelementptr inbounds %struct.tree_type, %struct.tree_type* %type419, i32 0, i32 3
  %145 = load %union.tree_node*, %union.tree_node** %size_unit420, align 8
  %call421 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 61, %union.tree_node* %140, %union.tree_node* %142, %union.tree_node* %145)
  %call422 = call %union.tree_node* @fold(%union.tree_node* %call421)
  %146 = load %union.tree_node*, %union.tree_node** %off_tree, align 8
  %call423 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 59, %union.tree_node* %139, %union.tree_node* %call422, %union.tree_node* %146)
  %call424 = call %union.tree_node* @fold(%union.tree_node* %call423)
  store %union.tree_node* %call424, %union.tree_node** %off_tree, align 8
  %147 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %exp425 = bitcast %union.tree_node* %147 to %struct.tree_exp*
  %operands426 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp425, i32 0, i32 2
  %arrayidx427 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands426, i32 0, i64 0
  %148 = load %union.tree_node*, %union.tree_node** %arrayidx427, align 8
  store %union.tree_node* %148, %union.tree_node** %t.addr, align 8
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %149 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common428 = bitcast %union.tree_node* %149 to %struct.tree_common*
  %code429 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common428, i32 0, i32 2
  %bf.load430 = load i32, i32* %code429, align 8
  %bf.clear431 = and i32 %bf.load430, 255
  %cmp432 = icmp eq i32 %bf.clear431, 43
  br i1 %cmp432, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %150 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common434 = bitcast %union.tree_node* %150 to %struct.tree_common*
  %code435 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common434, i32 0, i32 2
  %bf.load436 = load i32, i32* %code435, align 8
  %bf.clear437 = and i32 %bf.load436, 255
  %cmp438 = icmp eq i32 %bf.clear437, 39
  br i1 %cmp438, label %if.then.440, label %if.end.448

if.then.440:                                      ; preds = %do.end
  %151 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %call441 = call %union.tree_node* @component_ref_for_mem_expr(%union.tree_node* %151)
  store %union.tree_node* %call441, %union.tree_node** %expr, align 8
  %152 = load %union.tree_node*, %union.tree_node** %off_tree, align 8
  %call442 = call i32 @host_integerp(%union.tree_node* %152, i32 1)
  %tobool443 = icmp ne i32 %call442, 0
  br i1 %tobool443, label %if.then.444, label %if.end.447

if.then.444:                                      ; preds = %if.then.440
  %153 = load %union.tree_node*, %union.tree_node** %off_tree, align 8
  %call445 = call i64 @tree_low_cst(%union.tree_node* %153, i32 1)
  %call446 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %call445)
  store %struct.rtx_def* %call446, %struct.rtx_def** %offset, align 8
  br label %if.end.447

if.end.447:                                       ; preds = %if.then.444, %if.then.440
  br label %if.end.448

if.end.448:                                       ; preds = %if.end.447, %do.end
  br label %if.end.449

if.end.449:                                       ; preds = %if.end.448, %if.else.406
  br label %if.end.450

if.end.450:                                       ; preds = %if.end.449, %if.then.404
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %if.then.384
  br label %if.end.452

if.end.452:                                       ; preds = %if.end.451, %cond.end.370
  br label %if.end.453

if.end.453:                                       ; preds = %if.end.452, %if.end.280
  %154 = load i64, i64* %alias, align 8
  %155 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %156 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8
  %157 = load %struct.rtx_def*, %struct.rtx_def** %size, align 8
  %158 = load i32, i32* %align, align 4
  %159 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %160 = bitcast %struct.rtx_def* %159 to i32*
  %bf.load454 = load i32, i32* %160, align 8
  %bf.lshr455 = lshr i32 %bf.load454, 16
  %bf.clear456 = and i32 %bf.lshr455, 255
  %call457 = call %struct.mem_attrs* @get_mem_attrs(i64 %154, %union.tree_node* %155, %struct.rtx_def* %156, %struct.rtx_def* %157, i32 %158, i32 %bf.clear456)
  %161 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %fld458 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %161, i32 0, i32 1
  %arrayidx459 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld458, i32 0, i64 1
  %rtmem460 = bitcast %union.rtunion_def* %arrayidx459 to %struct.mem_attrs**
  store %struct.mem_attrs* %call457, %struct.mem_attrs** %rtmem460, align 8
  %162 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %163 = bitcast %struct.rtx_def* %162 to i32*
  %bf.load461 = load i32, i32* %163, align 8
  %bf.lshr462 = lshr i32 %bf.load461, 28
  %bf.clear463 = and i32 %bf.lshr462, 1
  %tobool464 = icmp ne i32 %bf.clear463, 0
  br i1 %tobool464, label %if.then.469, label %lor.lhs.false.465

lor.lhs.false.465:                                ; preds = %if.end.453
  %164 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %165 = bitcast %struct.rtx_def* %164 to i32*
  %bf.load466 = load i32, i32* %165, align 8
  %bf.lshr467 = lshr i32 %bf.load466, 31
  %tobool468 = icmp ne i32 %bf.lshr467, 0
  br i1 %tobool468, label %if.then.469, label %if.else.470

if.then.469:                                      ; preds = %lor.lhs.false.465, %if.end.453
  br label %if.end.503

if.else.470:                                      ; preds = %lor.lhs.false.465
  %166 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common471 = bitcast %union.tree_node* %166 to %struct.tree_common*
  %code472 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common471, i32 0, i32 2
  %bf.load473 = load i32, i32* %code472, align 8
  %bf.clear474 = and i32 %bf.load473, 255
  %cmp475 = icmp eq i32 %bf.clear474, 39
  br i1 %cmp475, label %if.then.498, label %lor.lhs.false.477

lor.lhs.false.477:                                ; preds = %if.else.470
  %167 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common478 = bitcast %union.tree_node* %167 to %struct.tree_common*
  %code479 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common478, i32 0, i32 2
  %bf.load480 = load i32, i32* %code479, align 8
  %bf.clear481 = and i32 %bf.load480, 255
  %cmp482 = icmp eq i32 %bf.clear481, 43
  br i1 %cmp482, label %if.then.498, label %lor.lhs.false.484

lor.lhs.false.484:                                ; preds = %lor.lhs.false.477
  %168 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common485 = bitcast %union.tree_node* %168 to %struct.tree_common*
  %code486 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common485, i32 0, i32 2
  %bf.load487 = load i32, i32* %code486, align 8
  %bf.clear488 = and i32 %bf.load487, 255
  %cmp489 = icmp eq i32 %bf.clear488, 44
  br i1 %cmp489, label %if.then.498, label %lor.lhs.false.491

lor.lhs.false.491:                                ; preds = %lor.lhs.false.484
  %169 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %common492 = bitcast %union.tree_node* %169 to %struct.tree_common*
  %code493 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common492, i32 0, i32 2
  %bf.load494 = load i32, i32* %code493, align 8
  %bf.clear495 = and i32 %bf.load494, 255
  %cmp496 = icmp eq i32 %bf.clear495, 40
  br i1 %cmp496, label %if.then.498, label %if.end.502

if.then.498:                                      ; preds = %lor.lhs.false.491, %lor.lhs.false.484, %lor.lhs.false.477, %if.else.470
  %170 = load %struct.rtx_def*, %struct.rtx_def** %ref.addr, align 8
  %171 = bitcast %struct.rtx_def* %170 to i32*
  %bf.load499 = load i32, i32* %171, align 8
  %bf.clear500 = and i32 %bf.load499, -268435457
  %bf.set501 = or i32 %bf.clear500, 268435456
  store i32 %bf.set501, i32* %171, align 8
  br label %if.end.502

if.end.502:                                       ; preds = %if.then.498, %lor.lhs.false.491
  br label %if.end.503

if.end.503:                                       ; preds = %if.then, %if.then.469, %if.end.502
  ret void
}

declare void @make_decl_rtl(%union.tree_node*, i8*) #1

declare i64 @get_alias_set(%union.tree_node*) #1

declare i32 @host_integerp(%union.tree_node*, i32) #1

declare i64 @tree_low_cst(%union.tree_node*, i32) #1

declare void @maybe_set_unchanging(%struct.rtx_def*, %union.tree_node*) #1

declare i32 @can_address_p(%union.tree_node*) #1

declare i32 @ix86_constant_alignment(%union.tree_node*, i32) #1

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @component_ref_for_mem_expr(%union.tree_node* %ref) #0 {
entry:
  %retval = alloca %union.tree_node*, align 8
  %ref.addr = alloca %union.tree_node*, align 8
  %inner = alloca %union.tree_node*, align 8
  %placeholder_ptr = alloca %union.tree_node*, align 8
  store %union.tree_node* %ref, %union.tree_node** %ref.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp = bitcast %union.tree_node* %0 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 0
  %1 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8
  store %union.tree_node* %1, %union.tree_node** %inner, align 8
  %2 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common = bitcast %union.tree_node* %2 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp = icmp eq i32 %bf.clear, 39
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %call = call %union.tree_node* @component_ref_for_mem_expr(%union.tree_node* %3)
  store %union.tree_node* %call, %union.tree_node** %inner, align 8
  br label %if.end.54

if.else:                                          ; preds = %entry
  store %union.tree_node* null, %union.tree_node** %placeholder_ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.else
  %4 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common1 = bitcast %union.tree_node* %4 to %struct.tree_common*
  %code2 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common1, i32 0, i32 2
  %bf.load3 = load i32, i32* %code2, align 8
  %bf.clear4 = and i32 %bf.load3, 255
  %cmp5 = icmp eq i32 %bf.clear4, 115
  br i1 %cmp5, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.cond
  %5 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common6 = bitcast %union.tree_node* %5 to %struct.tree_common*
  %code7 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common6, i32 0, i32 2
  %bf.load8 = load i32, i32* %code7, align 8
  %bf.clear9 = and i32 %bf.load8, 255
  %cmp10 = icmp eq i32 %bf.clear9, 114
  br i1 %cmp10, label %lor.end, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %lor.lhs.false
  %6 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common12 = bitcast %union.tree_node* %6 to %struct.tree_common*
  %code13 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common12, i32 0, i32 2
  %bf.load14 = load i32, i32* %code13, align 8
  %bf.clear15 = and i32 %bf.load14, 255
  %cmp16 = icmp eq i32 %bf.clear15, 116
  br i1 %cmp16, label %lor.end, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.11
  %7 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common18 = bitcast %union.tree_node* %7 to %struct.tree_common*
  %code19 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common18, i32 0, i32 2
  %bf.load20 = load i32, i32* %code19, align 8
  %bf.clear21 = and i32 %bf.load20, 255
  %cmp22 = icmp eq i32 %bf.clear21, 117
  br i1 %cmp22, label %lor.end, label %lor.lhs.false.23

lor.lhs.false.23:                                 ; preds = %lor.lhs.false.17
  %8 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common24 = bitcast %union.tree_node* %8 to %struct.tree_common*
  %code25 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common24, i32 0, i32 2
  %bf.load26 = load i32, i32* %code25, align 8
  %bf.clear27 = and i32 %bf.load26, 255
  %cmp28 = icmp eq i32 %bf.clear27, 118
  br i1 %cmp28, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.23
  %9 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common29 = bitcast %union.tree_node* %9 to %struct.tree_common*
  %code30 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common29, i32 0, i32 2
  %bf.load31 = load i32, i32* %code30, align 8
  %bf.clear32 = and i32 %bf.load31, 255
  %cmp33 = icmp eq i32 %bf.clear32, 57
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.23, %lor.lhs.false.17, %lor.lhs.false.11, %lor.lhs.false, %while.cond
  %10 = phi i1 [ true, %lor.lhs.false.23 ], [ true, %lor.lhs.false.17 ], [ true, %lor.lhs.false.11 ], [ true, %lor.lhs.false ], [ true, %while.cond ], [ %cmp33, %lor.rhs ]
  br i1 %10, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %11 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common34 = bitcast %union.tree_node* %11 to %struct.tree_common*
  %code35 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common34, i32 0, i32 2
  %bf.load36 = load i32, i32* %code35, align 8
  %bf.clear37 = and i32 %bf.load36, 255
  %cmp38 = icmp eq i32 %bf.clear37, 57
  br i1 %cmp38, label %if.then.39, label %if.else.41

if.then.39:                                       ; preds = %while.body
  %12 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %call40 = call %union.tree_node* @find_placeholder(%union.tree_node* %12, %union.tree_node** %placeholder_ptr)
  store %union.tree_node* %call40, %union.tree_node** %inner, align 8
  br label %if.end

if.else.41:                                       ; preds = %while.body
  %13 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %exp42 = bitcast %union.tree_node* %13 to %struct.tree_exp*
  %operands43 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp42, i32 0, i32 2
  %arrayidx44 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands43, i32 0, i64 0
  %14 = load %union.tree_node*, %union.tree_node** %arrayidx44, align 8
  store %union.tree_node* %14, %union.tree_node** %inner, align 8
  br label %if.end

if.end:                                           ; preds = %if.else.41, %if.then.39
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %15 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %common45 = bitcast %union.tree_node* %15 to %struct.tree_common*
  %code46 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common45, i32 0, i32 2
  %bf.load47 = load i32, i32* %code46, align 8
  %bf.clear48 = and i32 %bf.load47, 255
  %idxprom = sext i32 %bf.clear48 to i64
  %arrayidx49 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom
  %16 = load i8, i8* %arrayidx49, align 1
  %conv = sext i8 %16 to i32
  %cmp50 = icmp eq i32 %conv, 100
  br i1 %cmp50, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %while.end
  store %union.tree_node* null, %union.tree_node** %inner, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %while.end
  br label %if.end.54

if.end.54:                                        ; preds = %if.end.53, %if.then
  %17 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %18 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp55 = bitcast %union.tree_node* %18 to %struct.tree_exp*
  %operands56 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp55, i32 0, i32 2
  %arrayidx57 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands56, i32 0, i64 0
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx57, align 8
  %cmp58 = icmp eq %union.tree_node* %17, %19
  br i1 %cmp58, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %if.end.54
  %20 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  store %union.tree_node* %20, %union.tree_node** %retval
  br label %return

if.else.61:                                       ; preds = %if.end.54
  %21 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %common62 = bitcast %union.tree_node* %21 to %struct.tree_common*
  %type = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common62, i32 0, i32 1
  %22 = load %union.tree_node*, %union.tree_node** %type, align 8
  %23 = load %union.tree_node*, %union.tree_node** %inner, align 8
  %24 = load %union.tree_node*, %union.tree_node** %ref.addr, align 8
  %exp63 = bitcast %union.tree_node* %24 to %struct.tree_exp*
  %operands64 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp63, i32 0, i32 2
  %arrayidx65 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands64, i32 0, i64 1
  %25 = load %union.tree_node*, %union.tree_node** %arrayidx65, align 8
  %call66 = call %union.tree_node* (i32, %union.tree_node*, ...) @build(i32 39, %union.tree_node* %22, %union.tree_node* %23, %union.tree_node* %25)
  store %union.tree_node* %call66, %union.tree_node** %retval
  br label %return

return:                                           ; preds = %if.else.61, %if.then.60
  %26 = load %union.tree_node*, %union.tree_node** %retval
  ret %union.tree_node* %26
}

declare %union.tree_node* @fold(%union.tree_node*) #1

declare %union.tree_node* @build(i32, %union.tree_node*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct.mem_attrs* @get_mem_attrs(i64 %alias, %union.tree_node* %expr, %struct.rtx_def* %offset, %struct.rtx_def* %size, i32 %align, i32 %mode) #0 {
entry:
  %retval = alloca %struct.mem_attrs*, align 8
  %alias.addr = alloca i64, align 8
  %expr.addr = alloca %union.tree_node*, align 8
  %offset.addr = alloca %struct.rtx_def*, align 8
  %size.addr = alloca %struct.rtx_def*, align 8
  %align.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %attrs = alloca %struct.mem_attrs, align 8
  %slot = alloca i8**, align 8
  store i64 %alias, i64* %alias.addr, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  store %struct.rtx_def* %offset, %struct.rtx_def** %offset.addr, align 8
  store %struct.rtx_def* %size, %struct.rtx_def** %size.addr, align 8
  store i32 %align, i32* %align.addr, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i64, i64* %alias.addr, align 8
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %cmp1 = icmp eq %union.tree_node* %1, null
  br i1 %cmp1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %2 = load %struct.rtx_def*, %struct.rtx_def** %offset.addr, align 8
  %cmp3 = icmp eq %struct.rtx_def* %2, null
  br i1 %cmp3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %land.lhs.true.2
  %3 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %cmp5 = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp5, label %land.lhs.true.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.4
  %4 = load i32, i32* %mode.addr, align 4
  %cmp6 = icmp ne i32 %4, 51
  br i1 %cmp6, label %land.lhs.true.7, label %if.end

land.lhs.true.7:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %6 to i64
  %7 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx8 to i64*
  %8 = load i64, i64* %rtwint, align 8
  %cmp9 = icmp eq i64 %conv, %8
  br i1 %cmp9, label %land.lhs.true.11, label %if.end

land.lhs.true.11:                                 ; preds = %land.lhs.true.7, %land.lhs.true.4
  %9 = load i32, i32* %align.addr, align 4
  %cmp12 = icmp eq i32 %9, 8
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.11
  store %struct.mem_attrs* null, %struct.mem_attrs** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.11, %land.lhs.true.7, %lor.lhs.false, %land.lhs.true.2, %land.lhs.true, %entry
  %10 = load i64, i64* %alias.addr, align 8
  %alias14 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %attrs, i32 0, i32 0
  store i64 %10, i64* %alias14, align 8
  %11 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %expr15 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %attrs, i32 0, i32 1
  store %union.tree_node* %11, %union.tree_node** %expr15, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %offset.addr, align 8
  %offset16 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %attrs, i32 0, i32 2
  store %struct.rtx_def* %12, %struct.rtx_def** %offset16, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %size.addr, align 8
  %size17 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %attrs, i32 0, i32 3
  store %struct.rtx_def* %13, %struct.rtx_def** %size17, align 8
  %14 = load i32, i32* %align.addr, align 4
  %align18 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %attrs, i32 0, i32 4
  store i32 %14, i32* %align18, align 4
  %15 = load %struct.htab*, %struct.htab** @mem_attrs_htab, align 8
  %16 = bitcast %struct.mem_attrs* %attrs to i8*
  %call = call i8** @htab_find_slot(%struct.htab* %15, i8* %16, i32 1)
  store i8** %call, i8*** %slot, align 8
  %17 = load i8**, i8*** %slot, align 8
  %18 = load i8*, i8** %17, align 8
  %cmp19 = icmp eq i8* %18, null
  br i1 %cmp19, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end
  %call22 = call i8* @ggc_alloc(i64 40)
  %19 = load i8**, i8*** %slot, align 8
  store i8* %call22, i8** %19, align 8
  %20 = load i8**, i8*** %slot, align 8
  %21 = load i8*, i8** %20, align 8
  %22 = bitcast %struct.mem_attrs* %attrs to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %21, i8* %22, i64 40, i32 1, i1 false)
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %if.end
  %23 = load i8**, i8*** %slot, align 8
  %24 = load i8*, i8** %23, align 8
  %25 = bitcast i8* %24 to %struct.mem_attrs*
  store %struct.mem_attrs* %25, %struct.mem_attrs** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then
  %26 = load %struct.mem_attrs*, %struct.mem_attrs** %retval
  ret %struct.mem_attrs* %26
}

; Function Attrs: nounwind uwtable
define void @set_mem_alias_set(%struct.rtx_def* %mem, i64 %set) #0 {
entry:
  %mem.addr = alloca %struct.rtx_def*, align 8
  %set.addr = alloca i64, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  store i64 %set, i64* %set.addr, align 8
  %0 = load i64, i64* %set.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %2 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp = icmp eq %struct.mem_attrs* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtmem3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.mem_attrs**
  %4 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem3, align 8
  %expr = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %4, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %expr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ null, %cond.true ], [ %5, %cond.false ]
  %6 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtmem6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.mem_attrs**
  %7 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem6, align 8
  %cmp7 = icmp eq %struct.mem_attrs* %7, null
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.13

cond.false.9:                                     ; preds = %cond.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtmem12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.mem_attrs**
  %9 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem12, align 8
  %offset = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %9, i32 0, i32 2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.9, %cond.true.8
  %cond14 = phi %struct.rtx_def* [ null, %cond.true.8 ], [ %10, %cond.false.9 ]
  %11 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtmem17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.mem_attrs**
  %12 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem17, align 8
  %cmp18 = icmp ne %struct.mem_attrs* %12, null
  br i1 %cmp18, label %cond.true.19, label %cond.false.23

cond.true.19:                                     ; preds = %cond.end.13
  %13 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 1
  %rtmem22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.mem_attrs**
  %14 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem22, align 8
  %size = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %14, i32 0, i32 3
  %15 = load %struct.rtx_def*, %struct.rtx_def** %size, align 8
  br label %cond.end.33

cond.false.23:                                    ; preds = %cond.end.13
  %16 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp24 = icmp ne i32 %bf.clear, 51
  br i1 %cmp24, label %cond.true.25, label %cond.false.30

cond.true.25:                                     ; preds = %cond.false.23
  %18 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load26 = load i32, i32* %19, align 8
  %bf.lshr27 = lshr i32 %bf.load26, 16
  %bf.clear28 = and i32 %bf.lshr27, 255
  %idxprom = sext i32 %bf.clear28 to i64
  %arrayidx29 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx29, align 1
  %conv = zext i8 %20 to i64
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.false.23
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.25
  %cond32 = phi %struct.rtx_def* [ %call, %cond.true.25 ], [ null, %cond.false.30 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true.19
  %cond34 = phi %struct.rtx_def* [ %15, %cond.true.19 ], [ %cond32, %cond.end.31 ]
  %21 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtmem37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.mem_attrs**
  %22 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem37, align 8
  %cmp38 = icmp ne %struct.mem_attrs* %22, null
  br i1 %cmp38, label %cond.true.40, label %cond.false.44

cond.true.40:                                     ; preds = %cond.end.33
  %23 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtmem43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.mem_attrs**
  %24 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem43, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %24, i32 0, i32 4
  %25 = load i32, i32* %align, align 4
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end.33
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.40
  %cond46 = phi i32 [ %25, %cond.true.40 ], [ 8, %cond.false.44 ]
  %26 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load47 = load i32, i32* %27, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 16
  %bf.clear49 = and i32 %bf.lshr48, 255
  %call50 = call %struct.mem_attrs* @get_mem_attrs(i64 %0, %union.tree_node* %cond, %struct.rtx_def* %cond14, %struct.rtx_def* %cond34, i32 %cond46, i32 %bf.clear49)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 1
  %rtmem53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.mem_attrs**
  store %struct.mem_attrs* %call50, %struct.mem_attrs** %rtmem53, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_mem_align(%struct.rtx_def* %mem, i32 %align) #0 {
entry:
  %mem.addr = alloca %struct.rtx_def*, align 8
  %align.addr = alloca i32, align 4
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  store i32 %align, i32* %align.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %1 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp = icmp eq %struct.mem_attrs* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtmem3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.mem_attrs**
  %3 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem3, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %3, i32 0, i32 0
  %4 = load i64, i64* %alias, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %4, %cond.false ]
  %5 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtmem6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.mem_attrs**
  %6 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem6, align 8
  %cmp7 = icmp eq %struct.mem_attrs* %6, null
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.13

cond.false.9:                                     ; preds = %cond.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtmem12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.mem_attrs**
  %8 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem12, align 8
  %expr = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %8, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %expr, align 8
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.9, %cond.true.8
  %cond14 = phi %union.tree_node* [ null, %cond.true.8 ], [ %9, %cond.false.9 ]
  %10 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtmem17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.mem_attrs**
  %11 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem17, align 8
  %cmp18 = icmp eq %struct.mem_attrs* %11, null
  br i1 %cmp18, label %cond.true.19, label %cond.false.20

cond.true.19:                                     ; preds = %cond.end.13
  br label %cond.end.24

cond.false.20:                                    ; preds = %cond.end.13
  %12 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtmem23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.mem_attrs**
  %13 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem23, align 8
  %offset = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %13, i32 0, i32 2
  %14 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8
  br label %cond.end.24

cond.end.24:                                      ; preds = %cond.false.20, %cond.true.19
  %cond25 = phi %struct.rtx_def* [ null, %cond.true.19 ], [ %14, %cond.false.20 ]
  %15 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 1
  %rtmem28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.mem_attrs**
  %16 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem28, align 8
  %cmp29 = icmp ne %struct.mem_attrs* %16, null
  br i1 %cmp29, label %cond.true.30, label %cond.false.34

cond.true.30:                                     ; preds = %cond.end.24
  %17 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 1
  %rtmem33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.mem_attrs**
  %18 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem33, align 8
  %size = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %18, i32 0, i32 3
  %19 = load %struct.rtx_def*, %struct.rtx_def** %size, align 8
  br label %cond.end.44

cond.false.34:                                    ; preds = %cond.end.24
  %20 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load = load i32, i32* %21, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp35 = icmp ne i32 %bf.clear, 51
  br i1 %cmp35, label %cond.true.36, label %cond.false.41

cond.true.36:                                     ; preds = %cond.false.34
  %22 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load37 = load i32, i32* %23, align 8
  %bf.lshr38 = lshr i32 %bf.load37, 16
  %bf.clear39 = and i32 %bf.lshr38, 255
  %idxprom = sext i32 %bf.clear39 to i64
  %arrayidx40 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %24 = load i8, i8* %arrayidx40, align 1
  %conv = zext i8 %24 to i64
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  br label %cond.end.42

cond.false.41:                                    ; preds = %cond.false.34
  br label %cond.end.42

cond.end.42:                                      ; preds = %cond.false.41, %cond.true.36
  %cond43 = phi %struct.rtx_def* [ %call, %cond.true.36 ], [ null, %cond.false.41 ]
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.end.42, %cond.true.30
  %cond45 = phi %struct.rtx_def* [ %19, %cond.true.30 ], [ %cond43, %cond.end.42 ]
  %25 = load i32, i32* %align.addr, align 4
  %26 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load46 = load i32, i32* %27, align 8
  %bf.lshr47 = lshr i32 %bf.load46, 16
  %bf.clear48 = and i32 %bf.lshr47, 255
  %call49 = call %struct.mem_attrs* @get_mem_attrs(i64 %cond, %union.tree_node* %cond14, %struct.rtx_def* %cond25, %struct.rtx_def* %cond45, i32 %25, i32 %bf.clear48)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 1
  %rtmem52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.mem_attrs**
  store %struct.mem_attrs* %call49, %struct.mem_attrs** %rtmem52, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_mem_expr(%struct.rtx_def* %mem, %union.tree_node* %expr) #0 {
entry:
  %mem.addr = alloca %struct.rtx_def*, align 8
  %expr.addr = alloca %union.tree_node*, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  store %union.tree_node* %expr, %union.tree_node** %expr.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %1 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp = icmp eq %struct.mem_attrs* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtmem3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.mem_attrs**
  %3 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem3, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %3, i32 0, i32 0
  %4 = load i64, i64* %alias, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %4, %cond.false ]
  %5 = load %union.tree_node*, %union.tree_node** %expr.addr, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtmem6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.mem_attrs**
  %7 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem6, align 8
  %cmp7 = icmp eq %struct.mem_attrs* %7, null
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.13

cond.false.9:                                     ; preds = %cond.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtmem12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.mem_attrs**
  %9 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem12, align 8
  %offset = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %9, i32 0, i32 2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.9, %cond.true.8
  %cond14 = phi %struct.rtx_def* [ null, %cond.true.8 ], [ %10, %cond.false.9 ]
  %11 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtmem17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.mem_attrs**
  %12 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem17, align 8
  %cmp18 = icmp ne %struct.mem_attrs* %12, null
  br i1 %cmp18, label %cond.true.19, label %cond.false.23

cond.true.19:                                     ; preds = %cond.end.13
  %13 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 1
  %rtmem22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.mem_attrs**
  %14 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem22, align 8
  %size = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %14, i32 0, i32 3
  %15 = load %struct.rtx_def*, %struct.rtx_def** %size, align 8
  br label %cond.end.33

cond.false.23:                                    ; preds = %cond.end.13
  %16 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp24 = icmp ne i32 %bf.clear, 51
  br i1 %cmp24, label %cond.true.25, label %cond.false.30

cond.true.25:                                     ; preds = %cond.false.23
  %18 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load26 = load i32, i32* %19, align 8
  %bf.lshr27 = lshr i32 %bf.load26, 16
  %bf.clear28 = and i32 %bf.lshr27, 255
  %idxprom = sext i32 %bf.clear28 to i64
  %arrayidx29 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx29, align 1
  %conv = zext i8 %20 to i64
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.false.23
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.25
  %cond32 = phi %struct.rtx_def* [ %call, %cond.true.25 ], [ null, %cond.false.30 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true.19
  %cond34 = phi %struct.rtx_def* [ %15, %cond.true.19 ], [ %cond32, %cond.end.31 ]
  %21 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtmem37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.mem_attrs**
  %22 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem37, align 8
  %cmp38 = icmp ne %struct.mem_attrs* %22, null
  br i1 %cmp38, label %cond.true.40, label %cond.false.44

cond.true.40:                                     ; preds = %cond.end.33
  %23 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtmem43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.mem_attrs**
  %24 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem43, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %24, i32 0, i32 4
  %25 = load i32, i32* %align, align 4
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end.33
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.40
  %cond46 = phi i32 [ %25, %cond.true.40 ], [ 8, %cond.false.44 ]
  %26 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load47 = load i32, i32* %27, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 16
  %bf.clear49 = and i32 %bf.lshr48, 255
  %call50 = call %struct.mem_attrs* @get_mem_attrs(i64 %cond, %union.tree_node* %5, %struct.rtx_def* %cond14, %struct.rtx_def* %cond34, i32 %cond46, i32 %bf.clear49)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 1
  %rtmem53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.mem_attrs**
  store %struct.mem_attrs* %call50, %struct.mem_attrs** %rtmem53, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_mem_offset(%struct.rtx_def* %mem, %struct.rtx_def* %offset) #0 {
entry:
  %mem.addr = alloca %struct.rtx_def*, align 8
  %offset.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %mem, %struct.rtx_def** %mem.addr, align 8
  store %struct.rtx_def* %offset, %struct.rtx_def** %offset.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %1 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp = icmp eq %struct.mem_attrs* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtmem3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.mem_attrs**
  %3 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem3, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %3, i32 0, i32 0
  %4 = load i64, i64* %alias, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %4, %cond.false ]
  %5 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtmem6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.mem_attrs**
  %6 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem6, align 8
  %cmp7 = icmp eq %struct.mem_attrs* %6, null
  br i1 %cmp7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.13

cond.false.9:                                     ; preds = %cond.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtmem12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.mem_attrs**
  %8 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem12, align 8
  %expr = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %8, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %expr, align 8
  br label %cond.end.13

cond.end.13:                                      ; preds = %cond.false.9, %cond.true.8
  %cond14 = phi %union.tree_node* [ null, %cond.true.8 ], [ %9, %cond.false.9 ]
  %10 = load %struct.rtx_def*, %struct.rtx_def** %offset.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtmem17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.mem_attrs**
  %12 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem17, align 8
  %cmp18 = icmp ne %struct.mem_attrs* %12, null
  br i1 %cmp18, label %cond.true.19, label %cond.false.23

cond.true.19:                                     ; preds = %cond.end.13
  %13 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 1
  %rtmem22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.mem_attrs**
  %14 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem22, align 8
  %size = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %14, i32 0, i32 3
  %15 = load %struct.rtx_def*, %struct.rtx_def** %size, align 8
  br label %cond.end.33

cond.false.23:                                    ; preds = %cond.end.13
  %16 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load = load i32, i32* %17, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %cmp24 = icmp ne i32 %bf.clear, 51
  br i1 %cmp24, label %cond.true.25, label %cond.false.30

cond.true.25:                                     ; preds = %cond.false.23
  %18 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load26 = load i32, i32* %19, align 8
  %bf.lshr27 = lshr i32 %bf.load26, 16
  %bf.clear28 = and i32 %bf.lshr27, 255
  %idxprom = sext i32 %bf.clear28 to i64
  %arrayidx29 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %20 = load i8, i8* %arrayidx29, align 1
  %conv = zext i8 %20 to i64
  %call = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  br label %cond.end.31

cond.false.30:                                    ; preds = %cond.false.23
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.30, %cond.true.25
  %cond32 = phi %struct.rtx_def* [ %call, %cond.true.25 ], [ null, %cond.false.30 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true.19
  %cond34 = phi %struct.rtx_def* [ %15, %cond.true.19 ], [ %cond32, %cond.end.31 ]
  %21 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtmem37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.mem_attrs**
  %22 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem37, align 8
  %cmp38 = icmp ne %struct.mem_attrs* %22, null
  br i1 %cmp38, label %cond.true.40, label %cond.false.44

cond.true.40:                                     ; preds = %cond.end.33
  %23 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 1
  %rtmem43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.mem_attrs**
  %24 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem43, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %24, i32 0, i32 4
  %25 = load i32, i32* %align, align 4
  br label %cond.end.45

cond.false.44:                                    ; preds = %cond.end.33
  br label %cond.end.45

cond.end.45:                                      ; preds = %cond.false.44, %cond.true.40
  %cond46 = phi i32 [ %25, %cond.true.40 ], [ 8, %cond.false.44 ]
  %26 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load47 = load i32, i32* %27, align 8
  %bf.lshr48 = lshr i32 %bf.load47, 16
  %bf.clear49 = and i32 %bf.lshr48, 255
  %call50 = call %struct.mem_attrs* @get_mem_attrs(i64 %cond, %union.tree_node* %cond14, %struct.rtx_def* %10, %struct.rtx_def* %cond34, i32 %cond46, i32 %bf.clear49)
  %28 = load %struct.rtx_def*, %struct.rtx_def** %mem.addr, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 1
  %rtmem53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.mem_attrs**
  store %struct.mem_attrs* %call50, %struct.mem_attrs** %rtmem53, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @change_address(%struct.rtx_def* %memref, i32 %mode, %struct.rtx_def* %addr) #0 {
entry:
  %memref.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %addr.addr = alloca %struct.rtx_def*, align 8
  %new = alloca %struct.rtx_def*, align 8
  %mmode = alloca i32, align 4
  store %struct.rtx_def* %memref, %struct.rtx_def** %memref.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call %struct.rtx_def* @change_address_1(%struct.rtx_def* %0, i32 %1, %struct.rtx_def* %2, i32 1)
  store %struct.rtx_def* %call, %struct.rtx_def** %new, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  store i32 %bf.clear, i32* %mmode, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %6 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp = icmp eq %struct.mem_attrs* %6, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtmem3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.mem_attrs**
  %8 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem3, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %8, i32 0, i32 0
  %9 = load i64, i64* %alias, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %9, %cond.false ]
  %10 = load i32, i32* %mmode, align 4
  %cmp4 = icmp eq i32 %10, 51
  br i1 %cmp4, label %cond.true.5, label %cond.false.6

cond.true.5:                                      ; preds = %cond.end
  br label %cond.end.9

cond.false.6:                                     ; preds = %cond.end
  %11 = load i32, i32* %mmode, align 4
  %idxprom = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %12 = load i8, i8* %arrayidx7, align 1
  %conv = zext i8 %12 to i64
  %call8 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.false.6, %cond.true.5
  %cond10 = phi %struct.rtx_def* [ null, %cond.true.5 ], [ %call8, %cond.false.6 ]
  %13 = load i32, i32* %mmode, align 4
  %cmp11 = icmp eq i32 %13, 51
  br i1 %cmp11, label %cond.true.13, label %cond.false.14

cond.true.13:                                     ; preds = %cond.end.9
  br label %cond.end.16

cond.false.14:                                    ; preds = %cond.end.9
  %14 = load i32, i32* %mmode, align 4
  %call15 = call i32 @get_mode_alignment(i32 %14)
  br label %cond.end.16

cond.end.16:                                      ; preds = %cond.false.14, %cond.true.13
  %cond17 = phi i32 [ 8, %cond.true.13 ], [ %call15, %cond.false.14 ]
  %15 = load i32, i32* %mmode, align 4
  %call18 = call %struct.mem_attrs* @get_mem_attrs(i64 %cond, %union.tree_node* null, %struct.rtx_def* null, %struct.rtx_def* %cond10, i32 %cond17, i32 %15)
  %16 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 1
  %rtmem21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.mem_attrs**
  store %struct.mem_attrs* %call18, %struct.mem_attrs** %rtmem21, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  ret %struct.rtx_def* %17
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @change_address_1(%struct.rtx_def* %memref, i32 %mode, %struct.rtx_def* %addr, i32 %validate) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %memref.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %addr.addr = alloca %struct.rtx_def*, align 8
  %validate.addr = alloca i32, align 4
  %new = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %memref, %struct.rtx_def** %memref.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  store i32 %validate, i32* %validate.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 66
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1923, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.change_address_1, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %if.then.2, label %if.end.5

if.then.2:                                        ; preds = %if.end
  %3 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load3 = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load3, 16
  %bf.clear4 = and i32 %bf.lshr, 255
  store i32 %bf.clear4, i32* %mode.addr, align 4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %cmp6 = icmp eq %struct.rtx_def* %5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %6 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %addr.addr, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  %8 = load i32, i32* %validate.addr, align 4
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.end.8
  %9 = load i32, i32* @reload_in_progress, align 4
  %tobool10 = icmp ne i32 %9, 0
  br i1 %tobool10, label %if.then.12, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.9
  %10 = load i32, i32* @reload_completed, align 4
  %tobool11 = icmp ne i32 %10, 0
  br i1 %tobool11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %lor.lhs.false, %if.then.9
  %11 = load i32, i32* %mode.addr, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call i32 @memory_address_p(i32 %11, %struct.rtx_def* %12)
  %tobool13 = icmp ne i32 %call, 0
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.then.12
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 1934, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.change_address_1, i32 0, i32 0)) #6
  unreachable

if.end.15:                                        ; preds = %if.then.12
  br label %if.end.17

if.else:                                          ; preds = %lor.lhs.false
  %13 = load i32, i32* %mode.addr, align 4
  %14 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call16 = call %struct.rtx_def* @memory_address(i32 %13, %struct.rtx_def* %14)
  store %struct.rtx_def* %call16, %struct.rtx_def** %addr.addr, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end.15
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %call22 = call i32 @rtx_equal_p(%struct.rtx_def* %15, %struct.rtx_def* %17)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.end.18
  %18 = load i32, i32* %mode.addr, align 4
  %19 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load24 = load i32, i32* %20, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 16
  %bf.clear26 = and i32 %bf.lshr25, 255
  %cmp27 = icmp eq i32 %18, %bf.clear26
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true
  %21 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  store %struct.rtx_def* %21, %struct.rtx_def** %retval
  br label %return

if.end.29:                                        ; preds = %land.lhs.true, %if.end.18
  %22 = load i32, i32* %mode.addr, align 4
  %23 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call30 = call %struct.rtx_def* @gen_rtx_MEM(i32 %22, %struct.rtx_def* %23)
  store %struct.rtx_def* %call30, %struct.rtx_def** %new, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load31 = load i32, i32* %25, align 8
  %bf.lshr32 = lshr i32 %bf.load31, 27
  %bf.clear33 = and i32 %bf.lshr32, 1
  %26 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load34 = load i32, i32* %27, align 8
  %bf.value = and i32 %bf.clear33, 1
  %bf.shl = shl i32 %bf.value, 27
  %bf.clear35 = and i32 %bf.load34, -134217729
  %bf.set = or i32 %bf.clear35, %bf.shl
  store i32 %bf.set, i32* %27, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load36 = load i32, i32* %29, align 8
  %bf.lshr37 = lshr i32 %bf.load36, 28
  %bf.clear38 = and i32 %bf.lshr37, 1
  %30 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load39 = load i32, i32* %31, align 8
  %bf.value40 = and i32 %bf.clear38, 1
  %bf.shl41 = shl i32 %bf.value40, 28
  %bf.clear42 = and i32 %bf.load39, -268435457
  %bf.set43 = or i32 %bf.clear42, %bf.shl41
  store i32 %bf.set43, i32* %31, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load44 = load i32, i32* %33, align 8
  %bf.lshr45 = lshr i32 %bf.load44, 31
  %34 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load46 = load i32, i32* %35, align 8
  %bf.value47 = and i32 %bf.lshr45, 1
  %bf.shl48 = shl i32 %bf.value47, 31
  %bf.clear49 = and i32 %bf.load46, 2147483647
  %bf.set50 = or i32 %bf.clear49, %bf.shl48
  store i32 %bf.set50, i32* %35, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load51 = load i32, i32* %37, align 8
  %bf.lshr52 = lshr i32 %bf.load51, 26
  %bf.clear53 = and i32 %bf.lshr52, 1
  %38 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load54 = load i32, i32* %39, align 8
  %bf.value55 = and i32 %bf.clear53, 1
  %bf.shl56 = shl i32 %bf.value55, 26
  %bf.clear57 = and i32 %bf.load54, -67108865
  %bf.set58 = or i32 %bf.clear57, %bf.shl56
  store i32 %bf.set58, i32* %39, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load59 = load i32, i32* %41, align 8
  %bf.lshr60 = lshr i32 %bf.load59, 24
  %bf.clear61 = and i32 %bf.lshr60, 1
  %42 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %43 = bitcast %struct.rtx_def* %42 to i32*
  %bf.load62 = load i32, i32* %43, align 8
  %bf.value63 = and i32 %bf.clear61, 1
  %bf.shl64 = shl i32 %bf.value63, 24
  %bf.clear65 = and i32 %bf.load62, -16777217
  %bf.set66 = or i32 %bf.clear65, %bf.shl64
  store i32 %bf.set66, i32* %43, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx68 to %struct.mem_attrs**
  %45 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %46 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld69 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx70 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld69, i32 0, i64 1
  %rtmem71 = bitcast %union.rtunion_def* %arrayidx70 to %struct.mem_attrs**
  store %struct.mem_attrs* %45, %struct.mem_attrs** %rtmem71, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28
  %48 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %48
}

declare i32 @get_mode_alignment(i32) #1

declare %struct.rtx_def* @copy_rtx(%struct.rtx_def*) #1

declare %struct.rtx_def* @plus_constant_wide(%struct.rtx_def*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @adjust_automodify_address_1(%struct.rtx_def* %memref, i32 %mode, %struct.rtx_def* %addr, i64 %offset, i32 %validate) #0 {
entry:
  %memref.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %addr.addr = alloca %struct.rtx_def*, align 8
  %offset.addr = alloca i64, align 8
  %validate.addr = alloca i32, align 4
  store %struct.rtx_def* %memref, %struct.rtx_def** %memref.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  store i64 %offset, i64* %offset.addr, align 8
  store i32 %validate, i32* %validate.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %2 = load i32, i32* %validate.addr, align 4
  %call = call %struct.rtx_def* @change_address_1(%struct.rtx_def* %0, i32 0, %struct.rtx_def* %1, i32 %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %memref.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %4 = load i32, i32* %mode.addr, align 4
  %5 = load i64, i64* %offset.addr, align 8
  %6 = load i32, i32* %validate.addr, align 4
  %call1 = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %3, i32 %4, i64 %5, i32 %6, i32 0)
  ret %struct.rtx_def* %call1
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @offset_address(%struct.rtx_def* %memref, %struct.rtx_def* %offset, i64 %pow2) #0 {
entry:
  %memref.addr = alloca %struct.rtx_def*, align 8
  %offset.addr = alloca %struct.rtx_def*, align 8
  %pow2.addr = alloca i64, align 8
  %new = alloca %struct.rtx_def*, align 8
  %addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %memref, %struct.rtx_def** %memref.addr, align 8
  store %struct.rtx_def* %offset, %struct.rtx_def** %offset.addr, align 8
  store i64 %pow2, i64* %pow2.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %addr, align 8
  %2 = load i32, i32* @target_flags, align 4
  %and = and i32 %2, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 5, i32 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %offset.addr, align 8
  %call = call %struct.rtx_def* @simplify_gen_binary(i32 75, i32 %cond, %struct.rtx_def* %3, %struct.rtx_def* %4)
  store %struct.rtx_def* %call, %struct.rtx_def** %new, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %7 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %call1 = call i32 @memory_address_p(i32 %bf.clear, %struct.rtx_def* %7)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load3 = load i32, i32* %9, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp = icmp eq i32 %bf.clear4, 75
  br i1 %cmp, label %land.lhs.true.5, label %if.end

land.lhs.true.5:                                  ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** @pic_offset_table_rtx, align 8
  %cmp9 = icmp eq %struct.rtx_def* %11, %12
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.5
  %13 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load10 = load i32, i32* %14, align 8
  %bf.lshr11 = lshr i32 %bf.load10, 16
  %bf.clear12 = and i32 %bf.lshr11, 255
  %15 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %call13 = call %struct.rtx_def* @force_reg(i32 %bf.clear12, %struct.rtx_def* %15)
  store %struct.rtx_def* %call13, %struct.rtx_def** %addr, align 8
  %16 = load i32, i32* @target_flags, align 4
  %and14 = and i32 %16, 33554432
  %tobool15 = icmp ne i32 %and14, 0
  %cond16 = select i1 %tobool15, i32 5, i32 4
  %17 = load %struct.rtx_def*, %struct.rtx_def** %addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %offset.addr, align 8
  %call17 = call %struct.rtx_def* @simplify_gen_binary(i32 75, i32 %cond16, %struct.rtx_def* %17, %struct.rtx_def* %18)
  store %struct.rtx_def* %call17, %struct.rtx_def** %new, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.5, %land.lhs.true, %entry
  %19 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %21 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  call void @update_temp_slot_address(%struct.rtx_def* %20, %struct.rtx_def* %21)
  %22 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %call21 = call %struct.rtx_def* @change_address_1(%struct.rtx_def* %22, i32 0, %struct.rtx_def* %23, i32 1)
  store %struct.rtx_def* %call21, %struct.rtx_def** %new, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx23 to %struct.mem_attrs**
  %25 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp24 = icmp eq %struct.mem_attrs* %25, null
  br i1 %cmp24, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %26 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 1
  %rtmem27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.mem_attrs**
  %27 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem27, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %27, i32 0, i32 0
  %28 = load i64, i64* %alias, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond28 = phi i64 [ 0, %cond.true ], [ %28, %cond.false ]
  %29 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 1
  %rtmem31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.mem_attrs**
  %30 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem31, align 8
  %cmp32 = icmp eq %struct.mem_attrs* %30, null
  br i1 %cmp32, label %cond.true.33, label %cond.false.34

cond.true.33:                                     ; preds = %cond.end
  br label %cond.end.38

cond.false.34:                                    ; preds = %cond.end
  %31 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 1
  %rtmem37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.mem_attrs**
  %32 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem37, align 8
  %expr = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %32, i32 0, i32 1
  %33 = load %union.tree_node*, %union.tree_node** %expr, align 8
  br label %cond.end.38

cond.end.38:                                      ; preds = %cond.false.34, %cond.true.33
  %cond39 = phi %union.tree_node* [ null, %cond.true.33 ], [ %33, %cond.false.34 ]
  %34 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 1
  %rtmem42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.mem_attrs**
  %35 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem42, align 8
  %cmp43 = icmp ne %struct.mem_attrs* %35, null
  br i1 %cmp43, label %cond.true.44, label %cond.false.48

cond.true.44:                                     ; preds = %cond.end.38
  %36 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 1
  %rtmem47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.mem_attrs**
  %37 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem47, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %37, i32 0, i32 4
  %38 = load i32, i32* %align, align 4
  br label %cond.end.49

cond.false.48:                                    ; preds = %cond.end.38
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.48, %cond.true.44
  %cond50 = phi i32 [ %38, %cond.true.44 ], [ 8, %cond.false.48 ]
  %conv = zext i32 %cond50 to i64
  %39 = load i64, i64* %pow2.addr, align 8
  %mul = mul i64 %39, 8
  %cmp51 = icmp ult i64 %conv, %mul
  br i1 %cmp51, label %cond.true.53, label %cond.false.68

cond.true.53:                                     ; preds = %cond.end.49
  %40 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 1
  %rtmem56 = bitcast %union.rtunion_def* %arrayidx55 to %struct.mem_attrs**
  %41 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem56, align 8
  %cmp57 = icmp ne %struct.mem_attrs* %41, null
  br i1 %cmp57, label %cond.true.59, label %cond.false.64

cond.true.59:                                     ; preds = %cond.true.53
  %42 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 1
  %rtmem62 = bitcast %union.rtunion_def* %arrayidx61 to %struct.mem_attrs**
  %43 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem62, align 8
  %align63 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %43, i32 0, i32 4
  %44 = load i32, i32* %align63, align 4
  br label %cond.end.65

cond.false.64:                                    ; preds = %cond.true.53
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.64, %cond.true.59
  %cond66 = phi i32 [ %44, %cond.true.59 ], [ 8, %cond.false.64 ]
  %conv67 = zext i32 %cond66 to i64
  br label %cond.end.70

cond.false.68:                                    ; preds = %cond.end.49
  %45 = load i64, i64* %pow2.addr, align 8
  %mul69 = mul i64 %45, 8
  br label %cond.end.70

cond.end.70:                                      ; preds = %cond.false.68, %cond.end.65
  %cond71 = phi i64 [ %conv67, %cond.end.65 ], [ %mul69, %cond.false.68 ]
  %conv72 = trunc i64 %cond71 to i32
  %46 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load73 = load i32, i32* %47, align 8
  %bf.lshr74 = lshr i32 %bf.load73, 16
  %bf.clear75 = and i32 %bf.lshr74, 255
  %call76 = call %struct.mem_attrs* @get_mem_attrs(i64 %cond28, %union.tree_node* %cond39, %struct.rtx_def* null, %struct.rtx_def* null, i32 %conv72, i32 %bf.clear75)
  %48 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld77 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %48, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld77, i32 0, i64 1
  %rtmem79 = bitcast %union.rtunion_def* %arrayidx78 to %struct.mem_attrs**
  store %struct.mem_attrs* %call76, %struct.mem_attrs** %rtmem79, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  ret %struct.rtx_def* %49
}

declare %struct.rtx_def* @simplify_gen_binary(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @memory_address_p(i32, %struct.rtx_def*) #1

declare void @update_temp_slot_address(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @replace_equiv_address_nv(%struct.rtx_def* %memref, %struct.rtx_def* %addr) #0 {
entry:
  %memref.addr = alloca %struct.rtx_def*, align 8
  %addr.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %memref, %struct.rtx_def** %memref.addr, align 8
  store %struct.rtx_def* %addr, %struct.rtx_def** %addr.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %addr.addr, align 8
  %call = call %struct.rtx_def* @change_address_1(%struct.rtx_def* %0, i32 0, %struct.rtx_def* %1, i32 0)
  ret %struct.rtx_def* %call
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @widen_memory_access(%struct.rtx_def* %memref, i32 %mode, i64 %offset) #0 {
entry:
  %memref.addr = alloca %struct.rtx_def*, align 8
  %mode.addr = alloca i32, align 4
  %offset.addr = alloca i64, align 8
  %new = alloca %struct.rtx_def*, align 8
  %expr = alloca %union.tree_node*, align 8
  %memoffset = alloca %struct.rtx_def*, align 8
  %size = alloca i32, align 4
  %field = alloca %union.tree_node*, align 8
  store %struct.rtx_def* %memref, %struct.rtx_def** %memref.addr, align 8
  store i32 %mode, i32* %mode.addr, align 4
  store i64 %offset, i64* %offset.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %memref.addr, align 8
  %1 = load i32, i32* %mode.addr, align 4
  %2 = load i64, i64* %offset.addr, align 8
  %call = call %struct.rtx_def* @adjust_address_1(%struct.rtx_def* %0, i32 %1, i64 %2, i32 1, i32 1)
  store %struct.rtx_def* %call, %struct.rtx_def** %new, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtmem = bitcast %union.rtunion_def* %arrayidx to %struct.mem_attrs**
  %4 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem, align 8
  %cmp = icmp eq %struct.mem_attrs* %4, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtmem3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.mem_attrs**
  %6 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem3, align 8
  %expr4 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %6, i32 0, i32 1
  %7 = load %union.tree_node*, %union.tree_node** %expr4, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %union.tree_node* [ null, %cond.true ], [ %7, %cond.false ]
  store %union.tree_node* %cond, %union.tree_node** %expr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtmem7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.mem_attrs**
  %9 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem7, align 8
  %cmp8 = icmp eq %struct.mem_attrs* %9, null
  br i1 %cmp8, label %cond.true.9, label %cond.false.10

cond.true.9:                                      ; preds = %cond.end
  br label %cond.end.15

cond.false.10:                                    ; preds = %cond.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 1
  %rtmem13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.mem_attrs**
  %11 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem13, align 8
  %offset14 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %11, i32 0, i32 2
  %12 = load %struct.rtx_def*, %struct.rtx_def** %offset14, align 8
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.10, %cond.true.9
  %cond16 = phi %struct.rtx_def* [ null, %cond.true.9 ], [ %12, %cond.false.10 ]
  store %struct.rtx_def* %cond16, %struct.rtx_def** %memoffset, align 8
  %13 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx17, align 1
  %conv = zext i8 %14 to i32
  store i32 %conv, i32* %size, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %memoffset, align 8
  %tobool = icmp ne %struct.rtx_def* %15, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end.15
  store %union.tree_node* null, %union.tree_node** %expr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %cond.end.15
  br label %while.cond

while.cond:                                       ; preds = %if.end.103, %if.end
  %16 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %tobool18 = icmp ne %union.tree_node* %16, null
  br i1 %tobool18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %common = bitcast %union.tree_node* %17 to %struct.tree_common*
  %code = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 2
  %bf.load = load i32, i32* %code, align 8
  %bf.clear = and i32 %bf.load, 255
  %cmp19 = icmp eq i32 %bf.clear, 39
  br i1 %cmp19, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %while.body
  %18 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp = bitcast %union.tree_node* %18 to %struct.tree_exp*
  %operands = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp, i32 0, i32 2
  %arrayidx22 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands, i32 0, i64 1
  %19 = load %union.tree_node*, %union.tree_node** %arrayidx22, align 8
  store %union.tree_node* %19, %union.tree_node** %field, align 8
  %20 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %size_unit = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 7
  %21 = load %union.tree_node*, %union.tree_node** %size_unit, align 8
  %tobool23 = icmp ne %union.tree_node* %21, null
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.21
  store %union.tree_node* null, %union.tree_node** %expr, align 8
  br label %while.end

if.end.25:                                        ; preds = %if.then.21
  %22 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl26 = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %size_unit27 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl26, i32 0, i32 7
  %23 = load %union.tree_node*, %union.tree_node** %size_unit27, align 8
  %common28 = bitcast %union.tree_node* %23 to %struct.tree_common*
  %code29 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common28, i32 0, i32 2
  %bf.load30 = load i32, i32* %code29, align 8
  %bf.clear31 = and i32 %bf.load30, 255
  %cmp32 = icmp eq i32 %bf.clear31, 25
  br i1 %cmp32, label %land.lhs.true, label %if.end.46

land.lhs.true:                                    ; preds = %if.end.25
  %24 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl34 = bitcast %union.tree_node* %24 to %struct.tree_decl*
  %size_unit35 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl34, i32 0, i32 7
  %25 = load %union.tree_node*, %union.tree_node** %size_unit35, align 8
  %26 = load i32, i32* %size, align 4
  %conv36 = zext i32 %26 to i64
  %call37 = call i32 @compare_tree_int(%union.tree_node* %25, i64 %conv36)
  %cmp38 = icmp sge i32 %call37, 0
  br i1 %cmp38, label %land.lhs.true.40, label %if.end.46

land.lhs.true.40:                                 ; preds = %land.lhs.true
  %27 = load %struct.rtx_def*, %struct.rtx_def** %memoffset, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx42 to i64*
  %28 = load i64, i64* %rtwint, align 8
  %cmp43 = icmp sge i64 %28, 0
  br i1 %cmp43, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %land.lhs.true.40
  br label %while.end

if.end.46:                                        ; preds = %land.lhs.true.40, %land.lhs.true, %if.end.25
  %29 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl47 = bitcast %union.tree_node* %29 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl47, i32 0, i32 10
  %30 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  %call48 = call i32 @host_integerp(%union.tree_node* %30, i32 1)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.51, label %if.then.50

if.then.50:                                       ; preds = %if.end.46
  store %union.tree_node* null, %union.tree_node** %expr, align 8
  br label %while.end

if.end.51:                                        ; preds = %if.end.46
  %31 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %exp52 = bitcast %union.tree_node* %31 to %struct.tree_exp*
  %operands53 = getelementptr inbounds %struct.tree_exp, %struct.tree_exp* %exp52, i32 0, i32 2
  %arrayidx54 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %operands53, i32 0, i64 0
  %32 = load %union.tree_node*, %union.tree_node** %arrayidx54, align 8
  store %union.tree_node* %32, %union.tree_node** %expr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %memoffset, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtwint57 = bitcast %union.rtunion_def* %arrayidx56 to i64*
  %34 = load i64, i64* %rtwint57, align 8
  %35 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl58 = bitcast %union.tree_node* %35 to %struct.tree_decl*
  %arguments59 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl58, i32 0, i32 10
  %36 = load %union.tree_node*, %union.tree_node** %arguments59, align 8
  %call60 = call i64 @tree_low_cst(%union.tree_node* %36, i32 1)
  %add = add nsw i64 %34, %call60
  %37 = load %union.tree_node*, %union.tree_node** %field, align 8
  %decl61 = bitcast %union.tree_node* %37 to %struct.tree_decl*
  %u2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl61, i32 0, i32 19
  %t = bitcast %union.anon.1* %u2 to %union.tree_node**
  %38 = load %union.tree_node*, %union.tree_node** %t, align 8
  %call62 = call i64 @tree_low_cst(%union.tree_node* %38, i32 1)
  %div = sdiv i64 %call62, 8
  %add63 = add nsw i64 %add, %div
  %call64 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %add63)
  store %struct.rtx_def* %call64, %struct.rtx_def** %memoffset, align 8
  br label %if.end.103

if.else:                                          ; preds = %while.body
  %39 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %common65 = bitcast %union.tree_node* %39 to %struct.tree_common*
  %code66 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common65, i32 0, i32 2
  %bf.load67 = load i32, i32* %code66, align 8
  %bf.clear68 = and i32 %bf.load67, 255
  %idxprom69 = sext i32 %bf.clear68 to i64
  %arrayidx70 = getelementptr inbounds [256 x i8], [256 x i8]* @tree_code_type, i32 0, i64 %idxprom69
  %40 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %40 to i32
  %cmp72 = icmp eq i32 %conv71, 100
  br i1 %cmp72, label %land.lhs.true.74, label %if.else.102

land.lhs.true.74:                                 ; preds = %if.else
  %41 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %decl75 = bitcast %union.tree_node* %41 to %struct.tree_decl*
  %size_unit76 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl75, i32 0, i32 7
  %42 = load %union.tree_node*, %union.tree_node** %size_unit76, align 8
  %tobool77 = icmp ne %union.tree_node* %42, null
  br i1 %tobool77, label %land.lhs.true.78, label %if.else.102

land.lhs.true.78:                                 ; preds = %land.lhs.true.74
  %43 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %decl79 = bitcast %union.tree_node* %43 to %struct.tree_decl*
  %size_unit80 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl79, i32 0, i32 7
  %44 = load %union.tree_node*, %union.tree_node** %size_unit80, align 8
  %common81 = bitcast %union.tree_node* %44 to %struct.tree_common*
  %code82 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common81, i32 0, i32 2
  %bf.load83 = load i32, i32* %code82, align 8
  %bf.clear84 = and i32 %bf.load83, 255
  %cmp85 = icmp eq i32 %bf.clear84, 25
  br i1 %cmp85, label %land.lhs.true.87, label %if.else.102

land.lhs.true.87:                                 ; preds = %land.lhs.true.78
  %45 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %decl88 = bitcast %union.tree_node* %45 to %struct.tree_decl*
  %size_unit89 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl88, i32 0, i32 7
  %46 = load %union.tree_node*, %union.tree_node** %size_unit89, align 8
  %47 = load i32, i32* %size, align 4
  %conv90 = zext i32 %47 to i64
  %call91 = call i32 @compare_tree_int(%union.tree_node* %46, i64 %conv90)
  %cmp92 = icmp sge i32 %call91, 0
  br i1 %cmp92, label %land.lhs.true.94, label %if.else.102

land.lhs.true.94:                                 ; preds = %land.lhs.true.87
  %48 = load %struct.rtx_def*, %struct.rtx_def** %memoffset, align 8
  %tobool95 = icmp ne %struct.rtx_def* %48, null
  br i1 %tobool95, label %lor.lhs.false, label %if.then.101

lor.lhs.false:                                    ; preds = %land.lhs.true.94
  %49 = load %struct.rtx_def*, %struct.rtx_def** %memoffset, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 0
  %rtwint98 = bitcast %union.rtunion_def* %arrayidx97 to i64*
  %50 = load i64, i64* %rtwint98, align 8
  %cmp99 = icmp sge i64 %50, 0
  br i1 %cmp99, label %if.then.101, label %if.else.102

if.then.101:                                      ; preds = %lor.lhs.false, %land.lhs.true.94
  br label %while.end

if.else.102:                                      ; preds = %lor.lhs.false, %land.lhs.true.87, %land.lhs.true.78, %land.lhs.true.74, %if.else
  store %union.tree_node* null, %union.tree_node** %expr, align 8
  br label %while.end

if.end.103:                                       ; preds = %if.end.51
  br label %while.cond

while.end:                                        ; preds = %if.else.102, %if.then.101, %if.then.50, %if.then.45, %if.then.24, %while.cond
  %51 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %tobool104 = icmp ne %union.tree_node* %51, null
  br i1 %tobool104, label %if.end.106, label %if.then.105

if.then.105:                                      ; preds = %while.end
  store %struct.rtx_def* null, %struct.rtx_def** %memoffset, align 8
  br label %if.end.106

if.end.106:                                       ; preds = %if.then.105, %while.end
  %52 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %memoffset, align 8
  %54 = load i32, i32* %size, align 4
  %conv107 = zext i32 %54 to i64
  %call108 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv107)
  %55 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld109 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld109, i32 0, i64 1
  %rtmem111 = bitcast %union.rtunion_def* %arrayidx110 to %struct.mem_attrs**
  %56 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem111, align 8
  %cmp112 = icmp ne %struct.mem_attrs* %56, null
  br i1 %cmp112, label %cond.true.114, label %cond.false.118

cond.true.114:                                    ; preds = %if.end.106
  %57 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld115 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx116 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld115, i32 0, i64 1
  %rtmem117 = bitcast %union.rtunion_def* %arrayidx116 to %struct.mem_attrs**
  %58 = load %struct.mem_attrs*, %struct.mem_attrs** %rtmem117, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %58, i32 0, i32 4
  %59 = load i32, i32* %align, align 4
  br label %cond.end.119

cond.false.118:                                   ; preds = %if.end.106
  br label %cond.end.119

cond.end.119:                                     ; preds = %cond.false.118, %cond.true.114
  %cond120 = phi i32 [ %59, %cond.true.114 ], [ 8, %cond.false.118 ]
  %60 = load i32, i32* %mode.addr, align 4
  %call121 = call %struct.mem_attrs* @get_mem_attrs(i64 0, %union.tree_node* %52, %struct.rtx_def* %53, %struct.rtx_def* %call108, i32 %cond120, i32 %60)
  %61 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  %fld122 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx123 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld122, i32 0, i64 1
  %rtmem124 = bitcast %union.rtunion_def* %arrayidx123 to %struct.mem_attrs**
  store %struct.mem_attrs* %call121, %struct.mem_attrs** %rtmem124, align 8
  %62 = load %struct.rtx_def*, %struct.rtx_def** %new, align 8
  ret %struct.rtx_def* %62
}

declare i32 @compare_tree_int(%union.tree_node*, i64) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_label_rtx() #0 {
entry:
  %label = alloca %struct.rtx_def*, align 8
  %0 = load i32, i32* @label_num, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, i32* @label_num, align 4
  %call = call %struct.rtx_def* @gen_rtx_fmt_iuu00iss(i32 36, i32 0, i32 0, %struct.rtx_def* null, %struct.rtx_def* null, i32 %0, i8* null, i8* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %label, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 0, i32* %rtint, align 4
  %2 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 7
  %rtstr = bitcast %union.rtunion_def* %arrayidx2 to i8**
  store i8* null, i8** %rtstr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %label, align 8
  ret %struct.rtx_def* %3
}

declare %struct.rtx_def* @gen_rtx_fmt_iuu00iss(i32, i32, i32, %struct.rtx_def*, %struct.rtx_def*, i32, i8*, i8*) #1

; Function Attrs: nounwind uwtable
define void @set_new_first_and_last_insn(%struct.rtx_def* %first, %struct.rtx_def* %last) #0 {
entry:
  %first.addr = alloca %struct.rtx_def*, align 8
  %last.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %first, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %last, %struct.rtx_def** %last.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 3
  %2 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %2, i32 0, i32 2
  store %struct.rtx_def* %0, %struct.rtx_def** %x_first_insn, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 3
  %5 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %5, i32 0, i32 3
  store %struct.rtx_def* %3, %struct.rtx_def** %x_last_insn, align 8
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %emit2 = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 3
  %7 = load %struct.emit_status*, %struct.emit_status** %emit2, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %7, i32 0, i32 6
  store i32 0, i32* %x_cur_insn_uid, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.function*, %struct.function** @cfun, align 8
  %emit3 = getelementptr inbounds %struct.function, %struct.function* %10, i32 0, i32 3
  %11 = load %struct.emit_status*, %struct.emit_status** %emit3, align 8
  %x_cur_insn_uid4 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %11, i32 0, i32 6
  %12 = load i32, i32* %x_cur_insn_uid4, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %14 = load i32, i32* %rtint, align 4
  %cmp = icmp sgt i32 %12, %14
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %15 = load %struct.function*, %struct.function** @cfun, align 8
  %emit5 = getelementptr inbounds %struct.function, %struct.function* %15, i32 0, i32 3
  %16 = load %struct.emit_status*, %struct.emit_status** %emit5, align 8
  %x_cur_insn_uid6 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %16, i32 0, i32 6
  %17 = load i32, i32* %x_cur_insn_uid6, align 4
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %19 = load i32, i32* %rtint9, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %19, %cond.false ]
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %emit10 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 3
  %21 = load %struct.emit_status*, %struct.emit_status** %emit10, align 8
  %x_cur_insn_uid11 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %21, i32 0, i32 6
  store i32 %cond, i32* %x_cur_insn_uid11, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct.function*, %struct.function** @cfun, align 8
  %emit14 = getelementptr inbounds %struct.function, %struct.function* %24, i32 0, i32 3
  %25 = load %struct.emit_status*, %struct.emit_status** %emit14, align 8
  %x_cur_insn_uid15 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %25, i32 0, i32 6
  %26 = load i32, i32* %x_cur_insn_uid15, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %x_cur_insn_uid15, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_new_first_and_last_label_num(i32 %first, i32 %last) #0 {
entry:
  %first.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  store i32 %first, i32* %first.addr, align 4
  store i32 %last, i32* %last.addr, align 4
  %0 = load i32, i32* @label_num, align 4
  store i32 %0, i32* @base_label_num, align 4
  %1 = load i32, i32* %first.addr, align 4
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 3
  %3 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_label_num = getelementptr inbounds %struct.emit_status, %struct.emit_status* %3, i32 0, i32 1
  store i32 %1, i32* %x_first_label_num, align 4
  %4 = load i32, i32* %last.addr, align 4
  store i32 %4, i32* @last_label_num, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @set_new_last_label_num(i32 %last) #0 {
entry:
  %last.addr = alloca i32, align 4
  store i32 %last, i32* %last.addr, align 4
  %0 = load i32, i32* @label_num, align 4
  store i32 %0, i32* @base_label_num, align 4
  %1 = load i32, i32* %last.addr, align 4
  store i32 %1, i32* @last_label_num, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @restore_emit_status(%struct.function* %p) #0 {
entry:
  %p.addr = alloca %struct.function*, align 8
  store %struct.function* %p, %struct.function** %p.addr, align 8
  store i32 0, i32* @last_label_num, align 4
  call void @clear_emit_caches()
  ret void
}

; Function Attrs: nounwind uwtable
define void @clear_emit_caches() #0 {
entry:
  %i = alloca i32, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [5 x %struct.rtx_def*], [5 x %struct.rtx_def*]* @sequence_result, i32 0, i64 %idxprom
  store %struct.rtx_def* null, %struct.rtx_def** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.rtx_def* null, %struct.rtx_def** @free_insn, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @free_emit_status(%struct.function* %f) #0 {
entry:
  %f.addr = alloca %struct.function*, align 8
  store %struct.function* %f, %struct.function** %f.addr, align 8
  %0 = load %struct.function*, %struct.function** %f.addr, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 12
  %2 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %3 = bitcast %struct.rtx_def** %2 to i8*
  call void @free(i8* %3) #3
  %4 = load %struct.function*, %struct.function** %f.addr, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 3
  %5 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %regno_pointer_align = getelementptr inbounds %struct.emit_status, %struct.emit_status* %5, i32 0, i32 10
  %6 = load i8*, i8** %regno_pointer_align, align 8
  call void @free(i8* %6) #3
  %7 = load %struct.function*, %struct.function** %f.addr, align 8
  %emit2 = getelementptr inbounds %struct.function, %struct.function* %7, i32 0, i32 3
  %8 = load %struct.emit_status*, %struct.emit_status** %emit2, align 8
  %regno_decl = getelementptr inbounds %struct.emit_status, %struct.emit_status* %8, i32 0, i32 11
  %9 = load %union.tree_node**, %union.tree_node*** %regno_decl, align 8
  %10 = bitcast %union.tree_node** %9 to i8*
  call void @free(i8* %10) #3
  %11 = load %struct.function*, %struct.function** %f.addr, align 8
  %emit3 = getelementptr inbounds %struct.function, %struct.function* %11, i32 0, i32 3
  %12 = load %struct.emit_status*, %struct.emit_status** %emit3, align 8
  %13 = bitcast %struct.emit_status* %12 to i8*
  call void @free(i8* %13) #3
  %14 = load %struct.function*, %struct.function** %f.addr, align 8
  %emit4 = getelementptr inbounds %struct.function, %struct.function* %14, i32 0, i32 3
  store %struct.emit_status* null, %struct.emit_status** %emit4, align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind uwtable
define void @unshare_all_rtl(%union.tree_node* %fndecl, %struct.rtx_def* %insn) #0 {
entry:
  %fndecl.addr = alloca %union.tree_node*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %decl = alloca %union.tree_node*, align 8
  store %union.tree_node* %fndecl, %union.tree_node** %fndecl.addr, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl1 = bitcast %union.tree_node* %0 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 10
  %1 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  store %union.tree_node* %1, %union.tree_node** %decl, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl2 = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl2, i32 0, i32 17
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool3 = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl4 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %rtl5 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 17
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtl5, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %7 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @make_decl_rtl(%union.tree_node* %7, i8* null)
  %8 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl6 = bitcast %union.tree_node* %8 to %struct.tree_decl*
  %rtl7 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 17
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtl7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %6, %cond.true ], [ %9, %cond.false ]
  %call = call %struct.rtx_def* @copy_rtx_if_shared(%struct.rtx_def* %cond)
  %10 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl8 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %rtl9 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 17
  store %struct.rtx_def* %call, %struct.rtx_def** %rtl9, align 8
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %11 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %11 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %12 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %12, %union.tree_node** %decl, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %union.tree_node*, %union.tree_node** %fndecl.addr, align 8
  %decl10 = bitcast %union.tree_node* %13 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl10, i32 0, i32 12
  %14 = load %union.tree_node*, %union.tree_node** %initial, align 8
  call void @unshare_all_decls(%union.tree_node* %14)
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @unshare_all_rtl_1(%struct.rtx_def* %15)
  %16 = load %struct.function*, %struct.function** @cfun, align 8
  %x_stack_slot_list = getelementptr inbounds %struct.function, %struct.function* %16, i32 0, i32 26
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x_stack_slot_list, align 8
  %call11 = call %struct.rtx_def* @copy_rtx_if_shared(%struct.rtx_def* %17)
  %18 = load %struct.function*, %struct.function** @cfun, align 8
  %x_stack_slot_list12 = getelementptr inbounds %struct.function, %struct.function* %18, i32 0, i32 26
  store %struct.rtx_def* %call11, %struct.rtx_def** %x_stack_slot_list12, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @copy_rtx_if_shared(%struct.rtx_def* %orig) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %orig.addr = alloca %struct.rtx_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %code = alloca i32, align 4
  %format_ptr = alloca i8*, align 8
  %copied = alloca i32, align 4
  %copy = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  store %struct.rtx_def* %orig, %struct.rtx_def** %orig.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %x, align 8
  store i32 0, i32* %copied, align 4
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp = icmp eq %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %4 = load i32, i32* %code, align 4
  switch i32 %4, label %sw.default [
    i32 61, label %sw.bb
    i32 71, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 36, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 62, label %sw.bb
    i32 58, label %sw.bb.1
    i32 32, label %sw.bb.26
    i32 33, label %sw.bb.26
    i32 34, label %sw.bb.26
    i32 37, label %sw.bb.26
    i32 35, label %sw.bb.26
    i32 66, label %sw.bb.27
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

sw.bb.1:                                          ; preds = %if.end
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load2 = load i32, i32* %8, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 75
  br i1 %cmp4, label %land.lhs.true, label %if.end.25

land.lhs.true:                                    ; preds = %sw.bb.1
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load11 = load i32, i32* %12, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 68
  br i1 %cmp13, label %land.lhs.true.14, label %if.end.25

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 0
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 1
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load21 = load i32, i32* %16, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 54
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %land.lhs.true.14
  %17 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %retval
  br label %return

if.end.25:                                        ; preds = %land.lhs.true.14, %land.lhs.true, %sw.bb.1
  br label %sw.epilog

sw.bb.26:                                         ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %retval
  br label %return

sw.bb.27:                                         ; preds = %if.end
  %19 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load31 = load i32, i32* %21, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 67
  br i1 %cmp33, label %if.then.61, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.bb.27
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load37 = load i32, i32* %24, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 68
  br i1 %cmp39, label %if.then.61, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false
  %25 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load44 = load i32, i32* %27, align 8
  %bf.clear45 = and i32 %bf.load44, 65535
  %cmp46 = icmp eq i32 %bf.clear45, 54
  br i1 %cmp46, label %if.then.61, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.40
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld48 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx49 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld48, i32 0, i64 0
  %rtx50 = bitcast %union.rtunion_def* %arrayidx49 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx50, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load51 = load i32, i32* %30, align 8
  %bf.clear52 = and i32 %bf.load51, 65535
  %cmp53 = icmp eq i32 %bf.clear52, 58
  br i1 %cmp53, label %if.then.61, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.47
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx57, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load58 = load i32, i32* %33, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %cmp60 = icmp eq i32 %bf.clear59, 55
  br i1 %cmp60, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %lor.lhs.false.54, %lor.lhs.false.47, %lor.lhs.false.40, %lor.lhs.false, %sw.bb.27
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %retval
  br label %return

if.end.62:                                        ; preds = %lor.lhs.false.54
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.62, %if.end.25
  %35 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load63 = load i32, i32* %36, align 8
  %bf.lshr = lshr i32 %bf.load63, 29
  %bf.clear64 = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear64, 0
  br i1 %tobool, label %if.then.65, label %if.end.67

if.then.65:                                       ; preds = %sw.epilog
  %37 = load i32, i32* %code, align 4
  %call = call %struct.rtx_def* @rtx_alloc(i32 %37)
  store %struct.rtx_def* %call, %struct.rtx_def** %copy, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %39 = bitcast %struct.rtx_def* %38 to i8*
  %40 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %41 = bitcast %struct.rtx_def* %40 to i8*
  %42 = load i32, i32* %code, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx66 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom
  %43 = load i8, i8* %arrayidx66, align 1
  %conv = zext i8 %43 to i64
  %mul = mul i64 8, %conv
  %add = add i64 8, %mul
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %41, i64 %add, i32 8, i1 false)
  %44 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %44, %struct.rtx_def** %x, align 8
  store i32 1, i32* %copied, align 4
  br label %if.end.67

if.end.67:                                        ; preds = %if.then.65, %sw.epilog
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load68 = load i32, i32* %46, align 8
  %bf.clear69 = and i32 %bf.load68, -536870913
  %bf.set = or i32 %bf.clear69, 536870912
  store i32 %bf.set, i32* %46, align 8
  %47 = load i32, i32* %code, align 4
  %idxprom70 = sext i32 %47 to i64
  %arrayidx71 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom70
  %48 = load i8*, i8** %arrayidx71, align 8
  store i8* %48, i8** %format_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.135, %if.end.67
  %49 = load i32, i32* %i, align 4
  %50 = load i32, i32* %code, align 4
  %idxprom72 = sext i32 %50 to i64
  %arrayidx73 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom72
  %51 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %51 to i32
  %cmp75 = icmp slt i32 %49, %conv74
  br i1 %cmp75, label %for.body, label %for.end.137

for.body:                                         ; preds = %for.cond
  %52 = load i8*, i8** %format_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr, i8** %format_ptr, align 8
  %53 = load i8, i8* %52, align 1
  %conv77 = sext i8 %53 to i32
  switch i32 %conv77, label %sw.epilog.134 [
    i32 101, label %sw.bb.78
    i32 69, label %sw.bb.88
  ]

sw.bb.78:                                         ; preds = %for.body
  %54 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %54 to i64
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld80 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx81 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld80, i32 0, i64 %idxprom79
  %rtx82 = bitcast %union.rtunion_def* %arrayidx81 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx82, align 8
  %call83 = call %struct.rtx_def* @copy_rtx_if_shared(%struct.rtx_def* %56)
  %57 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %57 to i64
  %58 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 %idxprom84
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  store %struct.rtx_def* %call83, %struct.rtx_def** %rtx87, align 8
  br label %sw.epilog.134

sw.bb.88:                                         ; preds = %for.body
  %59 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %59 to i64
  %60 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 %idxprom89
  %rtvec = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtvec_def**
  %61 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %cmp92 = icmp ne %struct.rtvec_def* %61, null
  br i1 %cmp92, label %if.then.94, label %if.end.133

if.then.94:                                       ; preds = %sw.bb.88
  %62 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %62 to i64
  %63 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld96 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx97 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld96, i32 0, i64 %idxprom95
  %rtvec98 = bitcast %union.rtunion_def* %arrayidx97 to %struct.rtvec_def**
  %64 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec98, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %64, i32 0, i32 0
  %65 = load i32, i32* %num_elem, align 4
  store i32 %65, i32* %len, align 4
  %66 = load i32, i32* %copied, align 4
  %tobool99 = icmp ne i32 %66, 0
  br i1 %tobool99, label %land.lhs.true.100, label %if.end.113

land.lhs.true.100:                                ; preds = %if.then.94
  %67 = load i32, i32* %len, align 4
  %cmp101 = icmp sgt i32 %67, 0
  br i1 %cmp101, label %if.then.103, label %if.end.113

if.then.103:                                      ; preds = %land.lhs.true.100
  %68 = load i32, i32* %len, align 4
  %69 = load i32, i32* %i, align 4
  %idxprom104 = sext i32 %69 to i64
  %70 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld105 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx106 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld105, i32 0, i64 %idxprom104
  %rtvec107 = bitcast %union.rtunion_def* %arrayidx106 to %struct.rtvec_def**
  %71 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec107, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %71, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i32 0
  %call108 = call %struct.rtvec_def* @gen_rtvec_v(i32 %68, %struct.rtx_def** %arraydecay)
  %72 = load i32, i32* %i, align 4
  %idxprom109 = sext i32 %72 to i64
  %73 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld110 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx111 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld110, i32 0, i64 %idxprom109
  %rtvec112 = bitcast %union.rtunion_def* %arrayidx111 to %struct.rtvec_def**
  store %struct.rtvec_def* %call108, %struct.rtvec_def** %rtvec112, align 8
  br label %if.end.113

if.end.113:                                       ; preds = %if.then.103, %land.lhs.true.100, %if.then.94
  store i32 0, i32* %j, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc, %if.end.113
  %74 = load i32, i32* %j, align 4
  %75 = load i32, i32* %len, align 4
  %cmp115 = icmp slt i32 %74, %75
  br i1 %cmp115, label %for.body.117, label %for.end

for.body.117:                                     ; preds = %for.cond.114
  %76 = load i32, i32* %j, align 4
  %idxprom118 = sext i32 %76 to i64
  %77 = load i32, i32* %i, align 4
  %idxprom119 = sext i32 %77 to i64
  %78 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 %idxprom119
  %rtvec122 = bitcast %union.rtunion_def* %arrayidx121 to %struct.rtvec_def**
  %79 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec122, align 8
  %elem123 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %79, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem123, i32 0, i64 %idxprom118
  %80 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx124, align 8
  %call125 = call %struct.rtx_def* @copy_rtx_if_shared(%struct.rtx_def* %80)
  %81 = load i32, i32* %j, align 4
  %idxprom126 = sext i32 %81 to i64
  %82 = load i32, i32* %i, align 4
  %idxprom127 = sext i32 %82 to i64
  %83 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld128 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld128, i32 0, i64 %idxprom127
  %rtvec130 = bitcast %union.rtunion_def* %arrayidx129 to %struct.rtvec_def**
  %84 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec130, align 8
  %elem131 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %84, i32 0, i32 1
  %arrayidx132 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem131, i32 0, i64 %idxprom126
  store %struct.rtx_def* %call125, %struct.rtx_def** %arrayidx132, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.117
  %85 = load i32, i32* %j, align 4
  %inc = add nsw i32 %85, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.114

for.end:                                          ; preds = %for.cond.114
  br label %if.end.133

if.end.133:                                       ; preds = %for.end, %sw.bb.88
  br label %sw.epilog.134

sw.epilog.134:                                    ; preds = %for.body, %if.end.133, %sw.bb.78
  br label %for.inc.135

for.inc.135:                                      ; preds = %sw.epilog.134
  %86 = load i32, i32* %i, align 4
  %inc136 = add nsw i32 %86, 1
  store i32 %inc136, i32* %i, align 4
  br label %for.cond

for.end.137:                                      ; preds = %for.cond
  %87 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  store %struct.rtx_def* %87, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.137, %if.then.61, %sw.bb.26, %if.then.24, %sw.bb, %if.then
  %88 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %88
}

; Function Attrs: nounwind uwtable
define internal void @unshare_all_decls(%union.tree_node* %blk) #0 {
entry:
  %blk.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %blk, %union.tree_node** %blk.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %blk.addr, align 8
  %block = bitcast %union.tree_node* %0 to %struct.tree_block*
  %vars = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 2
  %1 = load %union.tree_node*, %union.tree_node** %vars, align 8
  store %union.tree_node* %1, %union.tree_node** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp = icmp ne %struct.rtx_def* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl1 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %rtl2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 17
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtl2, align 8
  %tobool3 = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl4 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %rtl5 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 17
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtl5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @make_decl_rtl(%union.tree_node* %9, i8* null)
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl6 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %rtl7 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 17
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtl7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %8, %cond.true ], [ %11, %cond.false ]
  %call = call %struct.rtx_def* @copy_rtx_if_shared(%struct.rtx_def* %cond)
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl8 = bitcast %union.tree_node* %12 to %struct.tree_decl*
  %rtl9 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl8, i32 0, i32 17
  store %struct.rtx_def* %call, %struct.rtx_def** %rtl9, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %13 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %14 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %14, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %15 = load %union.tree_node*, %union.tree_node** %blk.addr, align 8
  %block10 = bitcast %union.tree_node* %15 to %struct.tree_block*
  %subblocks = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block10, i32 0, i32 3
  %16 = load %union.tree_node*, %union.tree_node** %subblocks, align 8
  store %union.tree_node* %16, %union.tree_node** %t, align 8
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.14, %for.end
  %17 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool12 = icmp ne %union.tree_node* %17, null
  br i1 %tobool12, label %for.body.13, label %for.end.17

for.body.13:                                      ; preds = %for.cond.11
  %18 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @unshare_all_decls(%union.tree_node* %18)
  br label %for.inc.14

for.inc.14:                                       ; preds = %for.body.13
  %19 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common15 = bitcast %union.tree_node* %19 to %struct.tree_common*
  %chain16 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common15, i32 0, i32 0
  %20 = load %union.tree_node*, %union.tree_node** %chain16, align 8
  store %union.tree_node* %20, %union.tree_node** %t, align 8
  br label %for.cond.11

for.end.17:                                       ; preds = %for.cond.11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @unshare_all_rtl_1(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %call = call %struct.rtx_def* @copy_rtx_if_shared(%struct.rtx_def* %5)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 3
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  store %struct.rtx_def* %call, %struct.rtx_def** %rtx5, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 6
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %call9 = call %struct.rtx_def* @copy_rtx_if_shared(%struct.rtx_def* %8)
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 6
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def* %call9, %struct.rtx_def** %rtx12, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 5
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %call16 = call %struct.rtx_def* @copy_rtx_if_shared(%struct.rtx_def* %11)
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 5
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  store %struct.rtx_def* %call16, %struct.rtx_def** %rtx19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 2
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  store %struct.rtx_def* %14, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @unshare_all_rtl_again(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %p = alloca %struct.rtx_def*, align 8
  %decl = alloca %union.tree_node*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom = sext i32 %bf.clear to i64
  %arrayidx = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %4 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @reset_used_flags(%struct.rtx_def* %6)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 6
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  call void @reset_used_flags(%struct.rtx_def* %8)
  %9 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 5
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  call void @reset_used_flags(%struct.rtx_def* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 2
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx11, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %decl12 = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 6
  %14 = load %union.tree_node*, %union.tree_node** %decl12, align 8
  %decl13 = bitcast %union.tree_node* %14 to %struct.tree_decl*
  %initial = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl13, i32 0, i32 12
  %15 = load %union.tree_node*, %union.tree_node** %initial, align 8
  call void @reset_used_decls(%union.tree_node* %15)
  %16 = load %struct.function*, %struct.function** @cfun, align 8
  %decl14 = getelementptr inbounds %struct.function, %struct.function* %16, i32 0, i32 6
  %17 = load %union.tree_node*, %union.tree_node** %decl14, align 8
  %decl15 = bitcast %union.tree_node* %17 to %struct.tree_decl*
  %arguments = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl15, i32 0, i32 10
  %18 = load %union.tree_node*, %union.tree_node** %arguments, align 8
  store %union.tree_node* %18, %union.tree_node** %decl, align 8
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.25, %for.end
  %19 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %tobool17 = icmp ne %union.tree_node* %19, null
  br i1 %tobool17, label %for.body.18, label %for.end.26

for.body.18:                                      ; preds = %for.cond.16
  %20 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl19 = bitcast %union.tree_node* %20 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl19, i32 0, i32 17
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %tobool20 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool20, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.18
  %22 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl21 = bitcast %union.tree_node* %22 to %struct.tree_decl*
  %rtl22 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl21, i32 0, i32 17
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtl22, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body.18
  %24 = load %union.tree_node*, %union.tree_node** %decl, align 8
  call void @make_decl_rtl(%union.tree_node* %24, i8* null)
  %25 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %decl23 = bitcast %union.tree_node* %25 to %struct.tree_decl*
  %rtl24 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl23, i32 0, i32 17
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtl24, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %23, %cond.true ], [ %26, %cond.false ]
  call void @reset_used_flags(%struct.rtx_def* %cond)
  br label %for.inc.25

for.inc.25:                                       ; preds = %cond.end
  %27 = load %union.tree_node*, %union.tree_node** %decl, align 8
  %common = bitcast %union.tree_node* %27 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %28 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %28, %union.tree_node** %decl, align 8
  br label %for.cond.16

for.end.26:                                       ; preds = %for.cond.16
  %29 = load %struct.function*, %struct.function** @cfun, align 8
  %x_stack_slot_list = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 26
  %30 = load %struct.rtx_def*, %struct.rtx_def** %x_stack_slot_list, align 8
  call void @reset_used_flags(%struct.rtx_def* %30)
  %31 = load %struct.function*, %struct.function** @cfun, align 8
  %decl27 = getelementptr inbounds %struct.function, %struct.function* %31, i32 0, i32 6
  %32 = load %union.tree_node*, %union.tree_node** %decl27, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @unshare_all_rtl(%union.tree_node* %32, %struct.rtx_def* %33)
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_used_flags(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %format_ptr = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end.29

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %3 = load i32, i32* %code, align 4
  switch i32 %3, label %sw.default [
    i32 61, label %sw.bb
    i32 71, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 36, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 32, label %sw.bb.1
    i32 33, label %sw.bb.1
    i32 34, label %sw.bb.1
    i32 37, label %sw.bb.1
    i32 67, label %sw.bb.1
    i32 35, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %for.end.29

sw.bb.1:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  br label %for.end.29

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load2 = load i32, i32* %5, align 8
  %bf.clear3 = and i32 %bf.load2, -536870913
  store i32 %bf.clear3, i32* %5, align 8
  %6 = load i32, i32* %code, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  store i8* %7, i8** %format_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.27, %sw.epilog
  %8 = load i32, i32* %i, align 4
  %9 = load i32, i32* %code, align 4
  %idxprom4 = sext i32 %9 to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom4
  %10 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %10 to i32
  %cmp6 = icmp slt i32 %8, %conv
  br i1 %cmp6, label %for.body, label %for.end.29

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %format_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %incdec.ptr, i8** %format_ptr, align 8
  %12 = load i8, i8* %11, align 1
  %conv8 = sext i8 %12 to i32
  switch i32 %conv8, label %sw.epilog.26 [
    i32 101, label %sw.bb.9
    i32 69, label %sw.bb.12
  ]

sw.bb.9:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %13 to i64
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom10
  %rtx = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @reset_used_flags(%struct.rtx_def* %15)
  br label %sw.epilog.26

sw.bb.12:                                         ; preds = %for.body
  store i32 0, i32* %j, align 4
  br label %for.cond.13

for.cond.13:                                      ; preds = %for.inc, %sw.bb.12
  %16 = load i32, i32* %j, align 4
  %17 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %17 to i64
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 %idxprom14
  %rtvec = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtvec_def**
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %19, i32 0, i32 0
  %20 = load i32, i32* %num_elem, align 4
  %cmp17 = icmp slt i32 %16, %20
  br i1 %cmp17, label %for.body.19, label %for.end

for.body.19:                                      ; preds = %for.cond.13
  %21 = load i32, i32* %j, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load i32, i32* %i, align 4
  %idxprom21 = sext i32 %22 to i64
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 %idxprom21
  %rtvec24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtvec_def**
  %24 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec24, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %24, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom20
  %25 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx25, align 8
  call void @reset_used_flags(%struct.rtx_def* %25)
  br label %for.inc

for.inc:                                          ; preds = %for.body.19
  %26 = load i32, i32* %j, align 4
  %inc = add nsw i32 %26, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.13

for.end:                                          ; preds = %for.cond.13
  br label %sw.epilog.26

sw.epilog.26:                                     ; preds = %for.body, %for.end, %sw.bb.9
  br label %for.inc.27

for.inc.27:                                       ; preds = %sw.epilog.26
  %27 = load i32, i32* %i, align 4
  %inc28 = add nsw i32 %27, 1
  store i32 %inc28, i32* %i, align 4
  br label %for.cond

for.end.29:                                       ; preds = %if.then, %sw.bb, %sw.bb.1, %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @reset_used_decls(%union.tree_node* %blk) #0 {
entry:
  %blk.addr = alloca %union.tree_node*, align 8
  %t = alloca %union.tree_node*, align 8
  store %union.tree_node* %blk, %union.tree_node** %blk.addr, align 8
  %0 = load %union.tree_node*, %union.tree_node** %blk.addr, align 8
  %block = bitcast %union.tree_node* %0 to %struct.tree_block*
  %vars = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block, i32 0, i32 2
  %1 = load %union.tree_node*, %union.tree_node** %vars, align 8
  store %union.tree_node* %1, %union.tree_node** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool = icmp ne %union.tree_node* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl = bitcast %union.tree_node* %3 to %struct.tree_decl*
  %rtl = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl, i32 0, i32 17
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtl, align 8
  %cmp = icmp ne %struct.rtx_def* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl1 = bitcast %union.tree_node* %5 to %struct.tree_decl*
  %rtl2 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl1, i32 0, i32 17
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtl2, align 8
  %tobool3 = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %7 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl4 = bitcast %union.tree_node* %7 to %struct.tree_decl*
  %rtl5 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl4, i32 0, i32 17
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtl5, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %9 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @make_decl_rtl(%union.tree_node* %9, i8* null)
  %10 = load %union.tree_node*, %union.tree_node** %t, align 8
  %decl6 = bitcast %union.tree_node* %10 to %struct.tree_decl*
  %rtl7 = getelementptr inbounds %struct.tree_decl, %struct.tree_decl* %decl6, i32 0, i32 17
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtl7, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ %8, %cond.true ], [ %11, %cond.false ]
  call void @reset_used_flags(%struct.rtx_def* %cond)
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %12 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common = bitcast %union.tree_node* %12 to %struct.tree_common*
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common, i32 0, i32 0
  %13 = load %union.tree_node*, %union.tree_node** %chain, align 8
  store %union.tree_node* %13, %union.tree_node** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %14 = load %union.tree_node*, %union.tree_node** %blk.addr, align 8
  %block8 = bitcast %union.tree_node* %14 to %struct.tree_block*
  %subblocks = getelementptr inbounds %struct.tree_block, %struct.tree_block* %block8, i32 0, i32 3
  %15 = load %union.tree_node*, %union.tree_node** %subblocks, align 8
  store %union.tree_node* %15, %union.tree_node** %t, align 8
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc.12, %for.end
  %16 = load %union.tree_node*, %union.tree_node** %t, align 8
  %tobool10 = icmp ne %union.tree_node* %16, null
  br i1 %tobool10, label %for.body.11, label %for.end.15

for.body.11:                                      ; preds = %for.cond.9
  %17 = load %union.tree_node*, %union.tree_node** %t, align 8
  call void @reset_used_decls(%union.tree_node* %17)
  br label %for.inc.12

for.inc.12:                                       ; preds = %for.body.11
  %18 = load %union.tree_node*, %union.tree_node** %t, align 8
  %common13 = bitcast %union.tree_node* %18 to %struct.tree_common*
  %chain14 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %common13, i32 0, i32 0
  %19 = load %union.tree_node*, %union.tree_node** %chain14, align 8
  store %union.tree_node* %19, %union.tree_node** %t, align 8
  br label %for.cond.9

for.end.15:                                       ; preds = %for.cond.9
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @copy_most_rtx(%struct.rtx_def* %orig, %struct.rtx_def* %may_share) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %orig.addr = alloca %struct.rtx_def*, align 8
  %may_share.addr = alloca %struct.rtx_def*, align 8
  %copy = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %format_ptr = alloca i8*, align 8
  store %struct.rtx_def* %orig, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %may_share, %struct.rtx_def** %may_share.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %may_share.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %may_share.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 3
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %may_share.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %call = call i32 @in_expr_list_p(%struct.rtx_def* %4, %struct.rtx_def* %5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %7 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load2 = load i32, i32* %8, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  store i32 %bf.clear3, i32* %code, align 4
  %9 = load i32, i32* %code, align 4
  switch i32 %9, label %sw.default [
    i32 61, label %sw.bb
    i32 71, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 36, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end, %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %retval
  br label %return

sw.default:                                       ; preds = %if.end
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  %11 = load i32, i32* %code, align 4
  %call4 = call %struct.rtx_def* @rtx_alloc(i32 %11)
  store %struct.rtx_def* %call4, %struct.rtx_def** %copy, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load5 = load i32, i32* %13, align 8
  %bf.lshr = lshr i32 %bf.load5, 16
  %bf.clear6 = and i32 %bf.lshr, 255
  %14 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load7 = load i32, i32* %15, align 8
  %bf.value = and i32 %bf.clear6, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear8 = and i32 %bf.load7, -16711681
  %bf.set = or i32 %bf.clear8, %bf.shl
  store i32 %bf.set, i32* %15, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load9 = load i32, i32* %17, align 8
  %bf.lshr10 = lshr i32 %bf.load9, 28
  %bf.clear11 = and i32 %bf.lshr10, 1
  %18 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load12 = load i32, i32* %19, align 8
  %bf.value13 = and i32 %bf.clear11, 1
  %bf.shl14 = shl i32 %bf.value13, 28
  %bf.clear15 = and i32 %bf.load12, -268435457
  %bf.set16 = or i32 %bf.clear15, %bf.shl14
  store i32 %bf.set16, i32* %19, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load17 = load i32, i32* %21, align 8
  %bf.lshr18 = lshr i32 %bf.load17, 27
  %bf.clear19 = and i32 %bf.lshr18, 1
  %22 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load20 = load i32, i32* %23, align 8
  %bf.value21 = and i32 %bf.clear19, 1
  %bf.shl22 = shl i32 %bf.value21, 27
  %bf.clear23 = and i32 %bf.load20, -134217729
  %bf.set24 = or i32 %bf.clear23, %bf.shl22
  store i32 %bf.set24, i32* %23, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load25 = load i32, i32* %25, align 8
  %bf.lshr26 = lshr i32 %bf.load25, 26
  %bf.clear27 = and i32 %bf.lshr26, 1
  %26 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load28 = load i32, i32* %27, align 8
  %bf.value29 = and i32 %bf.clear27, 1
  %bf.shl30 = shl i32 %bf.value29, 26
  %bf.clear31 = and i32 %bf.load28, -67108865
  %bf.set32 = or i32 %bf.clear31, %bf.shl30
  store i32 %bf.set32, i32* %27, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load33 = load i32, i32* %29, align 8
  %bf.lshr34 = lshr i32 %bf.load33, 30
  %bf.clear35 = and i32 %bf.lshr34, 1
  %30 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load36 = load i32, i32* %31, align 8
  %bf.value37 = and i32 %bf.clear35, 1
  %bf.shl38 = shl i32 %bf.value37, 30
  %bf.clear39 = and i32 %bf.load36, -1073741825
  %bf.set40 = or i32 %bf.clear39, %bf.shl38
  store i32 %bf.set40, i32* %31, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %33 = bitcast %struct.rtx_def* %32 to i32*
  %bf.load41 = load i32, i32* %33, align 8
  %bf.lshr42 = lshr i32 %bf.load41, 31
  %34 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load43 = load i32, i32* %35, align 8
  %bf.value44 = and i32 %bf.lshr42, 1
  %bf.shl45 = shl i32 %bf.value44, 31
  %bf.clear46 = and i32 %bf.load43, 2147483647
  %bf.set47 = or i32 %bf.clear46, %bf.shl45
  store i32 %bf.set47, i32* %35, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load48 = load i32, i32* %37, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %idxprom = sext i32 %bf.clear49 to i64
  %arrayidx = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %38 = load i8*, i8** %arrayidx, align 8
  store i8* %38, i8** %format_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.188, %sw.epilog
  %39 = load i32, i32* %i, align 4
  %40 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load50 = load i32, i32* %41, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %idxprom52 = sext i32 %bf.clear51 to i64
  %arrayidx53 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom52
  %42 = load i8, i8* %arrayidx53, align 1
  %conv = zext i8 %42 to i32
  %cmp54 = icmp slt i32 %39, %conv
  br i1 %cmp54, label %for.body, label %for.end.190

for.body:                                         ; preds = %for.cond
  %43 = load i8*, i8** %format_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr, i8** %format_ptr, align 8
  %44 = load i8, i8* %43, align 1
  %conv56 = sext i8 %44 to i32
  switch i32 %conv56, label %sw.default.186 [
    i32 101, label %sw.bb.57
    i32 117, label %sw.bb.88
    i32 69, label %sw.bb.97
    i32 86, label %sw.bb.97
    i32 119, label %sw.bb.145
    i32 110, label %sw.bb.153
    i32 105, label %sw.bb.153
    i32 116, label %sw.bb.161
    i32 115, label %sw.bb.169
    i32 83, label %sw.bb.169
    i32 48, label %sw.bb.177
  ]

sw.bb.57:                                         ; preds = %for.body
  %45 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %45 to i64
  %46 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 %idxprom58
  %rtx = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %48 = load i32, i32* %i, align 4
  %idxprom60 = sext i32 %48 to i64
  %49 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 %idxprom60
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  store %struct.rtx_def* %47, %struct.rtx_def** %rtx63, align 8
  %50 = load i32, i32* %i, align 4
  %idxprom64 = sext i32 %50 to i64
  %51 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 %idxprom64
  %rtx67 = bitcast %union.rtunion_def* %arrayidx66 to %struct.rtx_def**
  %52 = load %struct.rtx_def*, %struct.rtx_def** %rtx67, align 8
  %cmp68 = icmp ne %struct.rtx_def* %52, null
  br i1 %cmp68, label %land.lhs.true.70, label %if.end.87

land.lhs.true.70:                                 ; preds = %sw.bb.57
  %53 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %53 to i64
  %54 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 %idxprom71
  %rtx74 = bitcast %union.rtunion_def* %arrayidx73 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx74, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %may_share.addr, align 8
  %cmp75 = icmp ne %struct.rtx_def* %55, %56
  br i1 %cmp75, label %if.then.77, label %if.end.87

if.then.77:                                       ; preds = %land.lhs.true.70
  %57 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %57 to i64
  %58 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 %idxprom78
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %may_share.addr, align 8
  %call82 = call %struct.rtx_def* @copy_most_rtx(%struct.rtx_def* %59, %struct.rtx_def* %60)
  %61 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %61 to i64
  %62 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 %idxprom83
  %rtx86 = bitcast %union.rtunion_def* %arrayidx85 to %struct.rtx_def**
  store %struct.rtx_def* %call82, %struct.rtx_def** %rtx86, align 8
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.77, %land.lhs.true.70, %sw.bb.57
  br label %sw.epilog.187

sw.bb.88:                                         ; preds = %for.body
  %63 = load i32, i32* %i, align 4
  %idxprom89 = sext i32 %63 to i64
  %64 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 %idxprom89
  %rtx92 = bitcast %union.rtunion_def* %arrayidx91 to %struct.rtx_def**
  %65 = load %struct.rtx_def*, %struct.rtx_def** %rtx92, align 8
  %66 = load i32, i32* %i, align 4
  %idxprom93 = sext i32 %66 to i64
  %67 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld94 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx95 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld94, i32 0, i64 %idxprom93
  %rtx96 = bitcast %union.rtunion_def* %arrayidx95 to %struct.rtx_def**
  store %struct.rtx_def* %65, %struct.rtx_def** %rtx96, align 8
  br label %sw.epilog.187

sw.bb.97:                                         ; preds = %for.body, %for.body
  %68 = load i32, i32* %i, align 4
  %idxprom98 = sext i32 %68 to i64
  %69 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld99 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx100 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld99, i32 0, i64 %idxprom98
  %rtvec = bitcast %union.rtunion_def* %arrayidx100 to %struct.rtvec_def**
  %70 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %71 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %71 to i64
  %72 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 %idxprom101
  %rtvec104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtvec_def**
  store %struct.rtvec_def* %70, %struct.rtvec_def** %rtvec104, align 8
  %73 = load i32, i32* %i, align 4
  %idxprom105 = sext i32 %73 to i64
  %74 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 %idxprom105
  %rtvec108 = bitcast %union.rtunion_def* %arrayidx107 to %struct.rtvec_def**
  %75 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec108, align 8
  %cmp109 = icmp ne %struct.rtvec_def* %75, null
  br i1 %cmp109, label %if.then.111, label %if.end.144

if.then.111:                                      ; preds = %sw.bb.97
  %76 = load i32, i32* %i, align 4
  %idxprom112 = sext i32 %76 to i64
  %77 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 %idxprom112
  %rtvec115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtvec_def**
  %78 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec115, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %78, i32 0, i32 0
  %79 = load i32, i32* %num_elem, align 4
  %call116 = call %struct.rtvec_def* @rtvec_alloc(i32 %79)
  %80 = load i32, i32* %i, align 4
  %idxprom117 = sext i32 %80 to i64
  %81 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld118 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx119 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld118, i32 0, i64 %idxprom117
  %rtvec120 = bitcast %union.rtunion_def* %arrayidx119 to %struct.rtvec_def**
  store %struct.rtvec_def* %call116, %struct.rtvec_def** %rtvec120, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc, %if.then.111
  %82 = load i32, i32* %j, align 4
  %83 = load i32, i32* %i, align 4
  %idxprom122 = sext i32 %83 to i64
  %84 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld123 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx124 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld123, i32 0, i64 %idxprom122
  %rtvec125 = bitcast %union.rtunion_def* %arrayidx124 to %struct.rtvec_def**
  %85 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec125, align 8
  %num_elem126 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %85, i32 0, i32 0
  %86 = load i32, i32* %num_elem126, align 4
  %cmp127 = icmp slt i32 %82, %86
  br i1 %cmp127, label %for.body.129, label %for.end

for.body.129:                                     ; preds = %for.cond.121
  %87 = load i32, i32* %j, align 4
  %idxprom130 = sext i32 %87 to i64
  %88 = load i32, i32* %i, align 4
  %idxprom131 = sext i32 %88 to i64
  %89 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld132 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld132, i32 0, i64 %idxprom131
  %rtvec134 = bitcast %union.rtunion_def* %arrayidx133 to %struct.rtvec_def**
  %90 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec134, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %90, i32 0, i32 1
  %arrayidx135 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom130
  %91 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx135, align 8
  %92 = load %struct.rtx_def*, %struct.rtx_def** %may_share.addr, align 8
  %call136 = call %struct.rtx_def* @copy_most_rtx(%struct.rtx_def* %91, %struct.rtx_def* %92)
  %93 = load i32, i32* %j, align 4
  %idxprom137 = sext i32 %93 to i64
  %94 = load i32, i32* %i, align 4
  %idxprom138 = sext i32 %94 to i64
  %95 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %95, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 %idxprom138
  %rtvec141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtvec_def**
  %96 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec141, align 8
  %elem142 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %96, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem142, i32 0, i64 %idxprom137
  store %struct.rtx_def* %call136, %struct.rtx_def** %arrayidx143, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.129
  %97 = load i32, i32* %j, align 4
  %inc = add nsw i32 %97, 1
  store i32 %inc, i32* %j, align 4
  br label %for.cond.121

for.end:                                          ; preds = %for.cond.121
  br label %if.end.144

if.end.144:                                       ; preds = %for.end, %sw.bb.97
  br label %sw.epilog.187

sw.bb.145:                                        ; preds = %for.body
  %98 = load i32, i32* %i, align 4
  %idxprom146 = sext i32 %98 to i64
  %99 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld147 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %99, i32 0, i32 1
  %arrayidx148 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld147, i32 0, i64 %idxprom146
  %rtwint = bitcast %union.rtunion_def* %arrayidx148 to i64*
  %100 = load i64, i64* %rtwint, align 8
  %101 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %101 to i64
  %102 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld150 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx151 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld150, i32 0, i64 %idxprom149
  %rtwint152 = bitcast %union.rtunion_def* %arrayidx151 to i64*
  store i64 %100, i64* %rtwint152, align 8
  br label %sw.epilog.187

sw.bb.153:                                        ; preds = %for.body, %for.body
  %103 = load i32, i32* %i, align 4
  %idxprom154 = sext i32 %103 to i64
  %104 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld155 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx156 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld155, i32 0, i64 %idxprom154
  %rtint = bitcast %union.rtunion_def* %arrayidx156 to i32*
  %105 = load i32, i32* %rtint, align 4
  %106 = load i32, i32* %i, align 4
  %idxprom157 = sext i32 %106 to i64
  %107 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld158 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %107, i32 0, i32 1
  %arrayidx159 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld158, i32 0, i64 %idxprom157
  %rtint160 = bitcast %union.rtunion_def* %arrayidx159 to i32*
  store i32 %105, i32* %rtint160, align 4
  br label %sw.epilog.187

sw.bb.161:                                        ; preds = %for.body
  %108 = load i32, i32* %i, align 4
  %idxprom162 = sext i32 %108 to i64
  %109 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld163 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx164 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld163, i32 0, i64 %idxprom162
  %rttree = bitcast %union.rtunion_def* %arrayidx164 to %union.tree_node**
  %110 = load %union.tree_node*, %union.tree_node** %rttree, align 8
  %111 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %111 to i64
  %112 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld166 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx167 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld166, i32 0, i64 %idxprom165
  %rttree168 = bitcast %union.rtunion_def* %arrayidx167 to %union.tree_node**
  store %union.tree_node* %110, %union.tree_node** %rttree168, align 8
  br label %sw.epilog.187

sw.bb.169:                                        ; preds = %for.body, %for.body
  %113 = load i32, i32* %i, align 4
  %idxprom170 = sext i32 %113 to i64
  %114 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld171 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx172 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld171, i32 0, i64 %idxprom170
  %rtstr = bitcast %union.rtunion_def* %arrayidx172 to i8**
  %115 = load i8*, i8** %rtstr, align 8
  %116 = load i32, i32* %i, align 4
  %idxprom173 = sext i32 %116 to i64
  %117 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld174 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %117, i32 0, i32 1
  %arrayidx175 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld174, i32 0, i64 %idxprom173
  %rtstr176 = bitcast %union.rtunion_def* %arrayidx175 to i8**
  store i8* %115, i8** %rtstr176, align 8
  br label %sw.epilog.187

sw.bb.177:                                        ; preds = %for.body
  %118 = load i32, i32* %i, align 4
  %idxprom178 = sext i32 %118 to i64
  %119 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %119, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i32 0, i64 %idxprom178
  %rtwint181 = bitcast %union.rtunion_def* %arrayidx180 to i64*
  %120 = load i64, i64* %rtwint181, align 8
  %121 = load i32, i32* %i, align 4
  %idxprom182 = sext i32 %121 to i64
  %122 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld183 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx184 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld183, i32 0, i64 %idxprom182
  %rtwint185 = bitcast %union.rtunion_def* %arrayidx184 to i64*
  store i64 %120, i64* %rtwint185, align 8
  br label %sw.epilog.187

sw.default.186:                                   ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 2498, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.copy_most_rtx, i32 0, i32 0)) #6
  unreachable

sw.epilog.187:                                    ; preds = %sw.bb.177, %sw.bb.169, %sw.bb.161, %sw.bb.153, %sw.bb.145, %if.end.144, %sw.bb.88, %if.end.87
  br label %for.inc.188

for.inc.188:                                      ; preds = %sw.epilog.187
  %123 = load i32, i32* %i, align 4
  %inc189 = add nsw i32 %123, 1
  store i32 %inc189, i32* %i, align 4
  br label %for.cond

for.end.190:                                      ; preds = %for.cond
  %124 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %124, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.190, %sw.bb, %if.then
  %125 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %125
}

declare i32 @in_expr_list_p(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @make_safe_from(%struct.rtx_def* %x, %struct.rtx_def* %other) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %other.addr = alloca %struct.rtx_def*, align 8
  %temp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %other, %struct.rtx_def** %other.addr, align 8
  br label %while.body

while.body:                                       ; preds = %entry, %sw.epilog
  %0 = load %struct.rtx_def*, %struct.rtx_def** %other.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 63, label %sw.bb
    i32 64, label %sw.bb.1
    i32 120, label %sw.bb.1
    i32 121, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %while.body
  %2 = load %struct.rtx_def*, %struct.rtx_def** %other.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %other.addr, align 8
  br label %sw.epilog

sw.bb.1:                                          ; preds = %while.body, %while.body, %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %other.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %other.addr, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  br label %done

sw.epilog:                                        ; preds = %sw.bb.1, %sw.bb
  br label %while.body

done:                                             ; preds = %sw.default
  %6 = load %struct.rtx_def*, %struct.rtx_def** %other.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load5 = load i32, i32* %7, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp = icmp eq i32 %bf.clear6, 66
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.45

land.lhs.true:                                    ; preds = %done
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load7 = load i32, i32* %9, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 67
  br i1 %cmp9, label %lor.lhs.false.45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load10 = load i32, i32* %11, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 68
  br i1 %cmp12, label %lor.lhs.false.45, label %lor.lhs.false.13

lor.lhs.false.13:                                 ; preds = %lor.lhs.false
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load14 = load i32, i32* %13, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 54
  br i1 %cmp16, label %lor.lhs.false.45, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.13
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load18 = load i32, i32* %15, align 8
  %bf.clear19 = and i32 %bf.load18, 65535
  %cmp20 = icmp eq i32 %bf.clear19, 55
  br i1 %cmp20, label %lor.lhs.false.45, label %lor.lhs.false.21

lor.lhs.false.21:                                 ; preds = %lor.lhs.false.17
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load22 = load i32, i32* %17, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 58
  br i1 %cmp24, label %lor.lhs.false.45, label %lor.lhs.false.25

lor.lhs.false.25:                                 ; preds = %lor.lhs.false.21
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load26 = load i32, i32* %19, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 134
  br i1 %cmp28, label %lor.lhs.false.45, label %lor.lhs.false.29

lor.lhs.false.29:                                 ; preds = %lor.lhs.false.25
  %20 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load30 = load i32, i32* %21, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 56
  br i1 %cmp32, label %lor.lhs.false.45, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.29
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load34 = load i32, i32* %23, align 8
  %bf.clear35 = and i32 %bf.load34, 65535
  %cmp36 = icmp eq i32 %bf.clear35, 140
  br i1 %cmp36, label %lor.lhs.false.45, label %land.lhs.true.37

land.lhs.true.37:                                 ; preds = %lor.lhs.false.33
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %25 = bitcast %struct.rtx_def* %24 to i32*
  %bf.load38 = load i32, i32* %25, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp ne i32 %bf.clear39, 61
  br i1 %cmp40, label %land.lhs.true.41, label %lor.lhs.false.45

land.lhs.true.41:                                 ; preds = %land.lhs.true.37
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load42 = load i32, i32* %27, align 8
  %bf.clear43 = and i32 %bf.load42, 65535
  %cmp44 = icmp ne i32 %bf.clear43, 63
  br i1 %cmp44, label %if.then, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %land.lhs.true.41, %land.lhs.true.37, %lor.lhs.false.33, %lor.lhs.false.29, %lor.lhs.false.25, %lor.lhs.false.21, %lor.lhs.false.17, %lor.lhs.false.13, %lor.lhs.false, %land.lhs.true, %done
  %28 = load %struct.rtx_def*, %struct.rtx_def** %other.addr, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load46 = load i32, i32* %29, align 8
  %bf.clear47 = and i32 %bf.load46, 65535
  %cmp48 = icmp eq i32 %bf.clear47, 61
  br i1 %cmp48, label %land.lhs.true.49, label %if.end

land.lhs.true.49:                                 ; preds = %lor.lhs.false.45
  %30 = load %struct.rtx_def*, %struct.rtx_def** %other.addr, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx51 to i32*
  %31 = load i32, i32* %rtuint, align 4
  %cmp52 = icmp ult i32 %31, 53
  br i1 %cmp52, label %if.then, label %lor.lhs.false.53

lor.lhs.false.53:                                 ; preds = %land.lhs.true.49
  %32 = load %struct.rtx_def*, %struct.rtx_def** %other.addr, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @reg_mentioned_p(%struct.rtx_def* %32, %struct.rtx_def* %33)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.53, %land.lhs.true.49, %land.lhs.true.41
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load54 = load i32, i32* %35, align 8
  %bf.lshr = lshr i32 %bf.load54, 16
  %bf.clear55 = and i32 %bf.lshr, 255
  %call56 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear55)
  store %struct.rtx_def* %call56, %struct.rtx_def** %temp, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call57 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %36, %struct.rtx_def* %37)
  %38 = load %struct.rtx_def*, %struct.rtx_def** %temp, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.53, %lor.lhs.false.45
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  store %struct.rtx_def* %39, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %40 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %40
}

declare i32 @reg_mentioned_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_insns() #0 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 2
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn, align 8
  ret %struct.rtx_def* %2
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_last_insn() #0 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 3
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  ret %struct.rtx_def* %2
}

; Function Attrs: nounwind uwtable
define void @set_last_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 2749, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.set_last_insn, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 3
  %4 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %4, i32 0, i32 3
  store %struct.rtx_def* %2, %struct.rtx_def** %x_last_insn, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @get_last_insn_anywhere() #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %stack = alloca %struct.sequence_stack*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 3
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 3
  %4 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_last_insn2 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %4, i32 0, i32 3
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn2, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %emit3 = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 3
  %7 = load %struct.emit_status*, %struct.emit_status** %emit3, align 8
  %sequence_stack = getelementptr inbounds %struct.emit_status, %struct.emit_status* %7, i32 0, i32 5
  %8 = load %struct.sequence_stack*, %struct.sequence_stack** %sequence_stack, align 8
  store %struct.sequence_stack* %8, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %9 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %tobool4 = icmp ne %struct.sequence_stack* %9, null
  br i1 %tobool4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %last = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %10, i32 0, i32 1
  %11 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp = icmp ne %struct.rtx_def* %11, null
  br i1 %cmp, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %for.body
  %12 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %last6 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %12, i32 0, i32 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %last6, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %14 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %next = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %14, i32 0, i32 3
  %15 = load %struct.sequence_stack*, %struct.sequence_stack** %next, align 8
  store %struct.sequence_stack* %15, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

; Function Attrs: nounwind uwtable
define i32 @get_max_uid() #0 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 6
  %2 = load i32, i32* %x_cur_insn_uid, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @renumber_insns(%struct._IO_FILE* %stream) #0 {
entry:
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load i32, i32* @flag_renumber_insns, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @flag_renumber_insns, align 4
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %call = call i32 @get_max_uid()
  %cmp1 = icmp slt i32 %call, 25000
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  br label %for.end

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 3
  %3 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %3, i32 0, i32 6
  store i32 1, i32* %x_cur_insn_uid, align 4
  %call4 = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call4, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.3
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool5 = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %tobool6 = icmp ne %struct._IO_FILE* %5, null
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %for.body
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %8 = load i32, i32* %rtint, align 4
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %emit8 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 3
  %10 = load %struct.emit_status*, %struct.emit_status** %emit8, align 8
  %x_cur_insn_uid9 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %10, i32 0, i32 6
  %11 = load i32, i32* %x_cur_insn_uid9, align 4
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 %8, i32 %11)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %for.body
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %emit12 = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 3
  %13 = load %struct.emit_status*, %struct.emit_status** %emit12, align 8
  %x_cur_insn_uid13 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %13, i32 0, i32 6
  %14 = load i32, i32* %x_cur_insn_uid13, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %x_cur_insn_uid13, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtint16 = bitcast %union.rtunion_def* %arrayidx15 to i32*
  store i32 %14, i32* %rtint16, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.11
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %if.then.2, %for.cond
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @next_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.then, label %if.end.16

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool1 = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 32
  br i1 %cmp, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 3
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load6 = load i32, i32* %8, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 24
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.2
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtvec_def**
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %11, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx15, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %insn.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true.2, %land.lhs.true, %if.then
  br label %if.end.16

if.end.16:                                        ; preds = %if.end, %entry
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %13
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @previous_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.then, label %if.end.22

if.then:                                          ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool1 = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 32
  br i1 %cmp, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 3
  %rtx5 = bitcast %union.rtunion_def* %arrayidx4 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx5, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load6 = load i32, i32* %8, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 24
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.2
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 3
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtvec_def**
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %11, i32 0, i32 0
  %12 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %12, 1
  %idxprom = sext i32 %sub to i64
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 0
  %rtvec20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtvec_def**
  %15 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec20, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %15, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx21, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %insn.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.9, %land.lhs.true.2, %land.lhs.true, %if.then
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %entry
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %17
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp ne i32 %bf.clear, 37
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %6
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @prev_nonnote_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp ne i32 %bf.clear, 37
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %6
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @next_real_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 32
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 34
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.2
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load7 = load i32, i32* %9, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 33
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.2, %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false.6
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %10
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @prev_real_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 32
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load3 = load i32, i32* %7, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp eq i32 %bf.clear4, 34
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.2
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load7 = load i32, i32* %9, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 33
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false.2, %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false.6
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %10
}

; Function Attrs: nounwind uwtable
define i32 @active_insn_p(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 34
  br i1 %cmp, label %lor.end.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 33
  br i1 %cmp3, label %lor.end.19, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load4 = load i32, i32* %5, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 32
  br i1 %cmp6, label %land.rhs, label %land.end.18

land.rhs:                                         ; preds = %lor.rhs
  %6 = load i32, i32* @reload_completed, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %lor.rhs.7, label %lor.end

lor.rhs.7:                                        ; preds = %land.rhs
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load8 = load i32, i32* %9, align 8
  %bf.clear9 = and i32 %bf.load8, 65535
  %cmp10 = icmp ne i32 %bf.clear9, 48
  br i1 %cmp10, label %land.rhs.11, label %land.end

land.rhs.11:                                      ; preds = %lor.rhs.7
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 3
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load15 = load i32, i32* %12, align 8
  %bf.clear16 = and i32 %bf.load15, 65535
  %cmp17 = icmp ne i32 %bf.clear16, 49
  br label %land.end

land.end:                                         ; preds = %land.rhs.11, %lor.rhs.7
  %13 = phi i1 [ false, %lor.rhs.7 ], [ %cmp17, %land.rhs.11 ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %land.rhs
  %14 = phi i1 [ true, %land.rhs ], [ %13, %land.end ]
  br label %land.end.18

land.end.18:                                      ; preds = %lor.end, %lor.rhs
  %15 = phi i1 [ false, %lor.rhs ], [ %14, %lor.end ]
  br label %lor.end.19

lor.end.19:                                       ; preds = %land.end.18, %lor.lhs.false, %entry
  %16 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %15, %land.end.18 ]
  %lor.ext = zext i1 %16 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @next_active_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @active_insn_p(%struct.rtx_def* %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %5
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @prev_active_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call i32 @active_insn_p(%struct.rtx_def* %4)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %5
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @next_label(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 36
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %6
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @prev_label(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp1 = icmp eq i32 %bf.clear, 36
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %while.body
  br label %while.end

if.end:                                           ; preds = %lor.lhs.false
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  ret %struct.rtx_def* %6
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @try_split(%struct.rtx_def* %pat, %struct.rtx_def* %trial, i32 %last) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %pat.addr = alloca %struct.rtx_def*, align 8
  %trial.addr = alloca %struct.rtx_def*, align 8
  %last.addr = alloca i32, align 4
  %before = alloca %struct.rtx_def*, align 8
  %after = alloca %struct.rtx_def*, align 8
  %has_barrier = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %probability = alloca i32, align 4
  %i = alloca i32, align 4
  %njumps = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %insn173 = alloca %struct.rtx_def*, align 8
  %insn216 = alloca %struct.rtx_def*, align 8
  %insn255 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pat, %struct.rtx_def** %pat.addr, align 8
  store %struct.rtx_def* %trial, %struct.rtx_def** %trial.addr, align 8
  store i32 %last, i32* %last.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %before, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %after, align 8
  store i32 0, i32* %has_barrier, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %call = call i32 @any_condjump_p(%struct.rtx_def* %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %call4 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %5, i32 16, %struct.rtx_def* null)
  store %struct.rtx_def* %call4, %struct.rtx_def** %note, align 8
  %tobool5 = icmp ne %struct.rtx_def* %call4, null
  br i1 %tobool5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx8, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx10 to i64*
  %8 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %8 to i32
  store i32 %conv, i32* @split_branch_probability, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i32, i32* @split_branch_probability, align 4
  store i32 %9, i32* %probability, align 4
  %10 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %call11 = call %struct.rtx_def* @split_insns(%struct.rtx_def* %10, %struct.rtx_def* %11)
  store %struct.rtx_def* %call11, %struct.rtx_def** %seq, align 8
  store i32 -1, i32* @split_branch_probability, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %after, align 8
  %tobool12 = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool12, label %land.lhs.true.13, label %if.end.19

land.lhs.true.13:                                 ; preds = %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %after, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load = load i32, i32* %14, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 35
  br i1 %cmp, label %if.then.15, label %if.end.19

if.then.15:                                       ; preds = %land.lhs.true.13
  store i32 1, i32* %has_barrier, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %after, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 2
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %after, align 8
  br label %if.end.19

if.end.19:                                        ; preds = %if.then.15, %land.lhs.true.13, %if.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %tobool20 = icmp ne %struct.rtx_def* %17, null
  br i1 %tobool20, label %if.then.21, label %if.end.388

if.then.21:                                       ; preds = %if.end.19
  %18 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load22 = load i32, i32* %19, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 24
  br i1 %cmp24, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %if.then.21
  store i32 0, i32* %njumps, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.26
  %20 = load i32, i32* %i, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 0
  %23 = load i32, i32* %num_elem, align 4
  %cmp29 = icmp slt i32 %20, %23
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 0
  %rtvec33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtvec_def**
  %26 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec33, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %26, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %27 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx34, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load35 = load i32, i32* %28, align 8
  %bf.clear36 = and i32 %bf.load35, 65535
  %cmp37 = icmp eq i32 %bf.clear36, 32
  br i1 %cmp37, label %land.lhs.true.39, label %if.end.52

land.lhs.true.39:                                 ; preds = %for.body
  %29 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %29 to i64
  %30 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %30, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtvec43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtvec_def**
  %31 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec43, align 8
  %elem44 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %31, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem44, i32 0, i64 %idxprom40
  %32 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx45, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 3
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %call49 = call i32 @rtx_equal_p(%struct.rtx_def* %33, %struct.rtx_def* %34)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %land.lhs.true.39
  %35 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  store %struct.rtx_def* %35, %struct.rtx_def** %retval
  br label %return

if.end.52:                                        ; preds = %land.lhs.true.39, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.52
  %36 = load i32, i32* %i, align 4
  %inc = add nsw i32 %36, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %37 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtvec55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtvec_def**
  %38 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec55, align 8
  %num_elem56 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %38, i32 0, i32 0
  %39 = load i32, i32* %num_elem56, align 4
  %sub = sub nsw i32 %39, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond.57

for.cond.57:                                      ; preds = %for.inc.112, %for.end
  %40 = load i32, i32* %i, align 4
  %cmp58 = icmp sge i32 %40, 0
  br i1 %cmp58, label %for.body.60, label %for.end.113

for.body.60:                                      ; preds = %for.cond.57
  %41 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %41 to i64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtvec64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtvec_def**
  %43 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec64, align 8
  %elem65 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %43, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem65, i32 0, i64 %idxprom61
  %44 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx66, align 8
  %45 = bitcast %struct.rtx_def* %44 to i32*
  %bf.load67 = load i32, i32* %45, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 33
  br i1 %cmp69, label %if.then.71, label %if.end.111

if.then.71:                                       ; preds = %for.body.60
  %46 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %46 to i64
  %47 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld73 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx74 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld73, i32 0, i64 0
  %rtvec75 = bitcast %union.rtunion_def* %arrayidx74 to %struct.rtvec_def**
  %48 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec75, align 8
  %elem76 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %48, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem76, i32 0, i64 %idxprom72
  %49 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx77, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %insn, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 3
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %51 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  %52 = load i32, i32* %i, align 4
  %idxprom81 = sext i32 %52 to i64
  %53 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld82 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld82, i32 0, i64 0
  %rtvec84 = bitcast %union.rtunion_def* %arrayidx83 to %struct.rtvec_def**
  %54 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec84, align 8
  %elem85 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %54, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem85, i32 0, i64 %idxprom81
  %55 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx86, align 8
  call void @mark_jump_label(%struct.rtx_def* %51, %struct.rtx_def* %55, i32 0)
  %56 = load i32, i32* %njumps, align 4
  %inc87 = add nsw i32 %56, 1
  store i32 %inc87, i32* %njumps, align 4
  %57 = load i32, i32* %probability, align 4
  %cmp88 = icmp ne i32 %57, -1
  br i1 %cmp88, label %land.lhs.true.90, label %if.end.110

land.lhs.true.90:                                 ; preds = %if.then.71
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call91 = call i32 @any_condjump_p(%struct.rtx_def* %58)
  %tobool92 = icmp ne i32 %call91, 0
  br i1 %tobool92, label %land.lhs.true.93, label %if.end.110

land.lhs.true.93:                                 ; preds = %land.lhs.true.90
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call94 = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %59, i32 16, %struct.rtx_def* null)
  %tobool95 = icmp ne %struct.rtx_def* %call94, null
  br i1 %tobool95, label %if.end.110, label %if.then.96

if.then.96:                                       ; preds = %land.lhs.true.93
  %60 = load i32, i32* %njumps, align 4
  %cmp97 = icmp ne i32 %60, 1
  br i1 %cmp97, label %if.then.99, label %if.end.100

if.then.99:                                       ; preds = %if.then.96
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3153, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @__FUNCTION__.try_split, i32 0, i32 0)) #6
  unreachable

if.end.100:                                       ; preds = %if.then.96
  %61 = load i32, i32* %probability, align 4
  %conv101 = sext i32 %61 to i64
  %call102 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv101)
  %62 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 6
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %63 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  %call106 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 16, %struct.rtx_def* %call102, %struct.rtx_def* %63)
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 6
  %rtx109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtx_def**
  store %struct.rtx_def* %call106, %struct.rtx_def** %rtx109, align 8
  br label %if.end.110

if.end.110:                                       ; preds = %if.end.100, %land.lhs.true.93, %land.lhs.true.90, %if.then.71
  br label %if.end.111

if.end.111:                                       ; preds = %if.end.110, %for.body.60
  br label %for.inc.112

for.inc.112:                                      ; preds = %if.end.111
  %65 = load i32, i32* %i, align 4
  %dec = add nsw i32 %65, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond.57

for.end.113:                                      ; preds = %for.cond.57
  %66 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %67 = bitcast %struct.rtx_def* %66 to i32*
  %bf.load114 = load i32, i32* %67, align 8
  %bf.clear115 = and i32 %bf.load114, 65535
  %cmp116 = icmp eq i32 %bf.clear115, 34
  br i1 %cmp116, label %if.then.118, label %if.end.155

if.then.118:                                      ; preds = %for.end.113
  %68 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtvec121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtvec_def**
  %69 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec121, align 8
  %num_elem122 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %69, i32 0, i32 0
  %70 = load i32, i32* %num_elem122, align 4
  %sub123 = sub nsw i32 %70, 1
  store i32 %sub123, i32* %i, align 4
  br label %for.cond.124

for.cond.124:                                     ; preds = %for.inc.152, %if.then.118
  %71 = load i32, i32* %i, align 4
  %cmp125 = icmp sge i32 %71, 0
  br i1 %cmp125, label %for.body.127, label %for.end.154

for.body.127:                                     ; preds = %for.cond.124
  %72 = load i32, i32* %i, align 4
  %idxprom128 = sext i32 %72 to i64
  %73 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld129 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx130 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld129, i32 0, i64 0
  %rtvec131 = bitcast %union.rtunion_def* %arrayidx130 to %struct.rtvec_def**
  %74 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec131, align 8
  %elem132 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %74, i32 0, i32 1
  %arrayidx133 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem132, i32 0, i64 %idxprom128
  %75 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx133, align 8
  %76 = bitcast %struct.rtx_def* %75 to i32*
  %bf.load134 = load i32, i32* %76, align 8
  %bf.clear135 = and i32 %bf.load134, 65535
  %cmp136 = icmp eq i32 %bf.clear135, 34
  br i1 %cmp136, label %if.then.138, label %if.end.151

if.then.138:                                      ; preds = %for.body.127
  %77 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %fld139 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx140 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld139, i32 0, i64 7
  %rtx141 = bitcast %union.rtunion_def* %arrayidx140 to %struct.rtx_def**
  %78 = load %struct.rtx_def*, %struct.rtx_def** %rtx141, align 8
  %79 = load i32, i32* %i, align 4
  %idxprom142 = sext i32 %79 to i64
  %80 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 0
  %rtvec145 = bitcast %union.rtunion_def* %arrayidx144 to %struct.rtvec_def**
  %81 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec145, align 8
  %elem146 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %81, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem146, i32 0, i64 %idxprom142
  %82 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx147, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %82, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 7
  %rtx150 = bitcast %union.rtunion_def* %arrayidx149 to %struct.rtx_def**
  store %struct.rtx_def* %78, %struct.rtx_def** %rtx150, align 8
  br label %if.end.151

if.end.151:                                       ; preds = %if.then.138, %for.body.127
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.151
  %83 = load i32, i32* %i, align 4
  %dec153 = add nsw i32 %83, -1
  store i32 %dec153, i32* %i, align 4
  br label %for.cond.124

for.end.154:                                      ; preds = %for.cond.124
  br label %if.end.155

if.end.155:                                       ; preds = %for.end.154, %for.end.113
  %84 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %fld156 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx157 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld156, i32 0, i64 6
  %rtx158 = bitcast %union.rtunion_def* %arrayidx157 to %struct.rtx_def**
  %85 = load %struct.rtx_def*, %struct.rtx_def** %rtx158, align 8
  store %struct.rtx_def* %85, %struct.rtx_def** %note, align 8
  br label %for.cond.159

for.cond.159:                                     ; preds = %for.inc.284, %if.end.155
  %86 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool160 = icmp ne %struct.rtx_def* %86, null
  br i1 %tobool160, label %for.body.161, label %for.end.288

for.body.161:                                     ; preds = %for.cond.159
  %87 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %88 = bitcast %struct.rtx_def* %87 to i32*
  %bf.load162 = load i32, i32* %88, align 8
  %bf.lshr = lshr i32 %bf.load162, 16
  %bf.clear163 = and i32 %bf.lshr, 255
  switch i32 %bf.clear163, label %sw.default [
    i32 23, label %sw.bb
    i32 26, label %sw.bb.206
    i32 28, label %sw.bb.206
    i32 29, label %sw.bb.206
    i32 27, label %sw.bb.245
  ]

sw.bb:                                            ; preds = %for.body.161
  %89 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld164 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx165 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld164, i32 0, i64 0
  %rtvec166 = bitcast %union.rtunion_def* %arrayidx165 to %struct.rtvec_def**
  %90 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec166, align 8
  %num_elem167 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %90, i32 0, i32 0
  %91 = load i32, i32* %num_elem167, align 4
  %sub168 = sub nsw i32 %91, 1
  store i32 %sub168, i32* %i, align 4
  br label %for.cond.169

for.cond.169:                                     ; preds = %for.inc.203, %sw.bb
  %92 = load i32, i32* %i, align 4
  %cmp170 = icmp sge i32 %92, 0
  br i1 %cmp170, label %for.body.172, label %for.end.205

for.body.172:                                     ; preds = %for.cond.169
  %93 = load i32, i32* %i, align 4
  %idxprom174 = sext i32 %93 to i64
  %94 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld175 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx176 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld175, i32 0, i64 0
  %rtvec177 = bitcast %union.rtunion_def* %arrayidx176 to %struct.rtvec_def**
  %95 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec177, align 8
  %elem178 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %95, i32 0, i32 1
  %arrayidx179 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem178, i32 0, i64 %idxprom174
  %96 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx179, align 8
  store %struct.rtx_def* %96, %struct.rtx_def** %insn173, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** %insn173, align 8
  %98 = bitcast %struct.rtx_def* %97 to i32*
  %bf.load180 = load i32, i32* %98, align 8
  %bf.clear181 = and i32 %bf.load180, 65535
  %cmp182 = icmp eq i32 %bf.clear181, 34
  br i1 %cmp182, label %if.then.191, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.172
  %99 = load i32, i32* @flag_non_call_exceptions, align 4
  %tobool184 = icmp ne i32 %99, 0
  br i1 %tobool184, label %land.lhs.true.185, label %if.end.202

land.lhs.true.185:                                ; preds = %lor.lhs.false
  %100 = load %struct.rtx_def*, %struct.rtx_def** %insn173, align 8
  %fld186 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %100, i32 0, i32 1
  %arrayidx187 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld186, i32 0, i64 3
  %rtx188 = bitcast %union.rtunion_def* %arrayidx187 to %struct.rtx_def**
  %101 = load %struct.rtx_def*, %struct.rtx_def** %rtx188, align 8
  %call189 = call i32 @may_trap_p(%struct.rtx_def* %101)
  %tobool190 = icmp ne i32 %call189, 0
  br i1 %tobool190, label %if.then.191, label %if.end.202

if.then.191:                                      ; preds = %land.lhs.true.185, %for.body.172
  %102 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld192 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %102, i32 0, i32 1
  %arrayidx193 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld192, i32 0, i64 0
  %rtx194 = bitcast %union.rtunion_def* %arrayidx193 to %struct.rtx_def**
  %103 = load %struct.rtx_def*, %struct.rtx_def** %rtx194, align 8
  %104 = load %struct.rtx_def*, %struct.rtx_def** %insn173, align 8
  %fld195 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx196 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld195, i32 0, i64 6
  %rtx197 = bitcast %union.rtunion_def* %arrayidx196 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx197, align 8
  %call198 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 23, %struct.rtx_def* %103, %struct.rtx_def* %105)
  %106 = load %struct.rtx_def*, %struct.rtx_def** %insn173, align 8
  %fld199 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %106, i32 0, i32 1
  %arrayidx200 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld199, i32 0, i64 6
  %rtx201 = bitcast %union.rtunion_def* %arrayidx200 to %struct.rtx_def**
  store %struct.rtx_def* %call198, %struct.rtx_def** %rtx201, align 8
  br label %if.end.202

if.end.202:                                       ; preds = %if.then.191, %land.lhs.true.185, %lor.lhs.false
  br label %for.inc.203

for.inc.203:                                      ; preds = %if.end.202
  %107 = load i32, i32* %i, align 4
  %dec204 = add nsw i32 %107, -1
  store i32 %dec204, i32* %i, align 4
  br label %for.cond.169

for.end.205:                                      ; preds = %for.cond.169
  br label %sw.epilog

sw.bb.206:                                        ; preds = %for.body.161, %for.body.161, %for.body.161
  %108 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld207 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx208 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld207, i32 0, i64 0
  %rtvec209 = bitcast %union.rtunion_def* %arrayidx208 to %struct.rtvec_def**
  %109 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec209, align 8
  %num_elem210 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %109, i32 0, i32 0
  %110 = load i32, i32* %num_elem210, align 4
  %sub211 = sub nsw i32 %110, 1
  store i32 %sub211, i32* %i, align 4
  br label %for.cond.212

for.cond.212:                                     ; preds = %for.inc.242, %sw.bb.206
  %111 = load i32, i32* %i, align 4
  %cmp213 = icmp sge i32 %111, 0
  br i1 %cmp213, label %for.body.215, label %for.end.244

for.body.215:                                     ; preds = %for.cond.212
  %112 = load i32, i32* %i, align 4
  %idxprom217 = sext i32 %112 to i64
  %113 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld218 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx219 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld218, i32 0, i64 0
  %rtvec220 = bitcast %union.rtunion_def* %arrayidx219 to %struct.rtvec_def**
  %114 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec220, align 8
  %elem221 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %114, i32 0, i32 1
  %arrayidx222 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem221, i32 0, i64 %idxprom217
  %115 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx222, align 8
  store %struct.rtx_def* %115, %struct.rtx_def** %insn216, align 8
  %116 = load %struct.rtx_def*, %struct.rtx_def** %insn216, align 8
  %117 = bitcast %struct.rtx_def* %116 to i32*
  %bf.load223 = load i32, i32* %117, align 8
  %bf.clear224 = and i32 %bf.load223, 65535
  %cmp225 = icmp eq i32 %bf.clear224, 34
  br i1 %cmp225, label %if.then.227, label %if.end.241

if.then.227:                                      ; preds = %for.body.215
  %118 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %119 = bitcast %struct.rtx_def* %118 to i32*
  %bf.load228 = load i32, i32* %119, align 8
  %bf.lshr229 = lshr i32 %bf.load228, 16
  %bf.clear230 = and i32 %bf.lshr229, 255
  %120 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld231 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %120, i32 0, i32 1
  %arrayidx232 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld231, i32 0, i64 0
  %rtx233 = bitcast %union.rtunion_def* %arrayidx232 to %struct.rtx_def**
  %121 = load %struct.rtx_def*, %struct.rtx_def** %rtx233, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %insn216, align 8
  %fld234 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx235 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld234, i32 0, i64 6
  %rtx236 = bitcast %union.rtunion_def* %arrayidx235 to %struct.rtx_def**
  %123 = load %struct.rtx_def*, %struct.rtx_def** %rtx236, align 8
  %call237 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 %bf.clear230, %struct.rtx_def* %121, %struct.rtx_def* %123)
  %124 = load %struct.rtx_def*, %struct.rtx_def** %insn216, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %124, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 6
  %rtx240 = bitcast %union.rtunion_def* %arrayidx239 to %struct.rtx_def**
  store %struct.rtx_def* %call237, %struct.rtx_def** %rtx240, align 8
  br label %if.end.241

if.end.241:                                       ; preds = %if.then.227, %for.body.215
  br label %for.inc.242

for.inc.242:                                      ; preds = %if.end.241
  %125 = load i32, i32* %i, align 4
  %dec243 = add nsw i32 %125, -1
  store i32 %dec243, i32* %i, align 4
  br label %for.cond.212

for.end.244:                                      ; preds = %for.cond.212
  br label %sw.epilog

sw.bb.245:                                        ; preds = %for.body.161
  %126 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld246 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %126, i32 0, i32 1
  %arrayidx247 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld246, i32 0, i64 0
  %rtvec248 = bitcast %union.rtunion_def* %arrayidx247 to %struct.rtvec_def**
  %127 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec248, align 8
  %num_elem249 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %127, i32 0, i32 0
  %128 = load i32, i32* %num_elem249, align 4
  %sub250 = sub nsw i32 %128, 1
  store i32 %sub250, i32* %i, align 4
  br label %for.cond.251

for.cond.251:                                     ; preds = %for.inc.281, %sw.bb.245
  %129 = load i32, i32* %i, align 4
  %cmp252 = icmp sge i32 %129, 0
  br i1 %cmp252, label %for.body.254, label %for.end.283

for.body.254:                                     ; preds = %for.cond.251
  %130 = load i32, i32* %i, align 4
  %idxprom256 = sext i32 %130 to i64
  %131 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld257 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %131, i32 0, i32 1
  %arrayidx258 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld257, i32 0, i64 0
  %rtvec259 = bitcast %union.rtunion_def* %arrayidx258 to %struct.rtvec_def**
  %132 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec259, align 8
  %elem260 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %132, i32 0, i32 1
  %arrayidx261 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem260, i32 0, i64 %idxprom256
  %133 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx261, align 8
  store %struct.rtx_def* %133, %struct.rtx_def** %insn255, align 8
  %134 = load %struct.rtx_def*, %struct.rtx_def** %insn255, align 8
  %135 = bitcast %struct.rtx_def* %134 to i32*
  %bf.load262 = load i32, i32* %135, align 8
  %bf.clear263 = and i32 %bf.load262, 65535
  %cmp264 = icmp eq i32 %bf.clear263, 33
  br i1 %cmp264, label %if.then.266, label %if.end.280

if.then.266:                                      ; preds = %for.body.254
  %136 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %137 = bitcast %struct.rtx_def* %136 to i32*
  %bf.load267 = load i32, i32* %137, align 8
  %bf.lshr268 = lshr i32 %bf.load267, 16
  %bf.clear269 = and i32 %bf.lshr268, 255
  %138 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld270 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %138, i32 0, i32 1
  %arrayidx271 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld270, i32 0, i64 0
  %rtx272 = bitcast %union.rtunion_def* %arrayidx271 to %struct.rtx_def**
  %139 = load %struct.rtx_def*, %struct.rtx_def** %rtx272, align 8
  %140 = load %struct.rtx_def*, %struct.rtx_def** %insn255, align 8
  %fld273 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %140, i32 0, i32 1
  %arrayidx274 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld273, i32 0, i64 6
  %rtx275 = bitcast %union.rtunion_def* %arrayidx274 to %struct.rtx_def**
  %141 = load %struct.rtx_def*, %struct.rtx_def** %rtx275, align 8
  %call276 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 %bf.clear269, %struct.rtx_def* %139, %struct.rtx_def* %141)
  %142 = load %struct.rtx_def*, %struct.rtx_def** %insn255, align 8
  %fld277 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %142, i32 0, i32 1
  %arrayidx278 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld277, i32 0, i64 6
  %rtx279 = bitcast %union.rtunion_def* %arrayidx278 to %struct.rtx_def**
  store %struct.rtx_def* %call276, %struct.rtx_def** %rtx279, align 8
  br label %if.end.280

if.end.280:                                       ; preds = %if.then.266, %for.body.254
  br label %for.inc.281

for.inc.281:                                      ; preds = %if.end.280
  %143 = load i32, i32* %i, align 4
  %dec282 = add nsw i32 %143, -1
  store i32 %dec282, i32* %i, align 4
  br label %for.cond.251

for.end.283:                                      ; preds = %for.cond.251
  br label %sw.epilog

sw.default:                                       ; preds = %for.body.161
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %for.end.283, %for.end.244, %for.end.205
  br label %for.inc.284

for.inc.284:                                      ; preds = %sw.epilog
  %144 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld285 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %144, i32 0, i32 1
  %arrayidx286 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld285, i32 0, i64 1
  %rtx287 = bitcast %union.rtunion_def* %arrayidx286 to %struct.rtx_def**
  %145 = load %struct.rtx_def*, %struct.rtx_def** %rtx287, align 8
  store %struct.rtx_def* %145, %struct.rtx_def** %note, align 8
  br label %for.cond.159

for.end.288:                                      ; preds = %for.cond.159
  %146 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %147 = bitcast %struct.rtx_def* %146 to i32*
  %bf.load289 = load i32, i32* %147, align 8
  %bf.clear290 = and i32 %bf.load289, 65535
  %cmp291 = icmp eq i32 %bf.clear290, 32
  br i1 %cmp291, label %if.then.293, label %if.end.327

if.then.293:                                      ; preds = %for.end.288
  %148 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld294 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %148, i32 0, i32 1
  %arrayidx295 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld294, i32 0, i64 0
  %rtvec296 = bitcast %union.rtunion_def* %arrayidx295 to %struct.rtvec_def**
  %149 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec296, align 8
  %num_elem297 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %149, i32 0, i32 0
  %150 = load i32, i32* %num_elem297, align 4
  %sub298 = sub nsw i32 %150, 1
  store i32 %sub298, i32* %i, align 4
  br label %for.cond.299

for.cond.299:                                     ; preds = %for.inc.324, %if.then.293
  %151 = load i32, i32* %i, align 4
  %cmp300 = icmp sge i32 %151, 0
  br i1 %cmp300, label %for.body.302, label %for.end.326

for.body.302:                                     ; preds = %for.cond.299
  %152 = load i32, i32* %i, align 4
  %idxprom303 = sext i32 %152 to i64
  %153 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld304 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %153, i32 0, i32 1
  %arrayidx305 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld304, i32 0, i64 0
  %rtvec306 = bitcast %union.rtunion_def* %arrayidx305 to %struct.rtvec_def**
  %154 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec306, align 8
  %elem307 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %154, i32 0, i32 1
  %arrayidx308 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem307, i32 0, i64 %idxprom303
  %155 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx308, align 8
  %156 = bitcast %struct.rtx_def* %155 to i32*
  %bf.load309 = load i32, i32* %156, align 8
  %bf.clear310 = and i32 %bf.load309, 65535
  %cmp311 = icmp eq i32 %bf.clear310, 32
  br i1 %cmp311, label %if.then.313, label %if.end.323

if.then.313:                                      ; preds = %for.body.302
  %157 = load i32, i32* %i, align 4
  %idxprom314 = sext i32 %157 to i64
  %158 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld315 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %158, i32 0, i32 1
  %arrayidx316 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld315, i32 0, i64 0
  %rtvec317 = bitcast %union.rtunion_def* %arrayidx316 to %struct.rtvec_def**
  %159 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec317, align 8
  %elem318 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %159, i32 0, i32 1
  %arrayidx319 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem318, i32 0, i64 %idxprom314
  %160 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx319, align 8
  %fld320 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %160, i32 0, i32 1
  %arrayidx321 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld320, i32 0, i64 3
  %rtx322 = bitcast %union.rtunion_def* %arrayidx321 to %struct.rtx_def**
  %161 = load %struct.rtx_def*, %struct.rtx_def** %rtx322, align 8
  call void @mark_label_nuses(%struct.rtx_def* %161)
  br label %if.end.323

if.end.323:                                       ; preds = %if.then.313, %for.body.302
  br label %for.inc.324

for.inc.324:                                      ; preds = %if.end.323
  %162 = load i32, i32* %i, align 4
  %dec325 = add nsw i32 %162, -1
  store i32 %dec325, i32* %i, align 4
  br label %for.cond.299

for.end.326:                                      ; preds = %for.cond.299
  br label %if.end.327

if.end.327:                                       ; preds = %for.end.326, %for.end.288
  %163 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %164 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %call328 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %163, %struct.rtx_def* %164)
  store %struct.rtx_def* %call328, %struct.rtx_def** %tem, align 8
  %165 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %call329 = call %struct.rtx_def* @delete_related_insns(%struct.rtx_def* %165)
  %166 = load i32, i32* %has_barrier, align 4
  %tobool330 = icmp ne i32 %166, 0
  br i1 %tobool330, label %if.then.331, label %if.end.333

if.then.331:                                      ; preds = %if.end.327
  %167 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call332 = call %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %167)
  br label %if.end.333

if.end.333:                                       ; preds = %if.then.331, %if.end.327
  %168 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %fld334 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %168, i32 0, i32 1
  %arrayidx335 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld334, i32 0, i64 2
  %rtx336 = bitcast %union.rtunion_def* %arrayidx335 to %struct.rtx_def**
  %169 = load %struct.rtx_def*, %struct.rtx_def** %rtx336, align 8
  store %struct.rtx_def* %169, %struct.rtx_def** %tem, align 8
  br label %for.cond.337

for.cond.337:                                     ; preds = %for.inc.359, %if.end.333
  %170 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %171 = load %struct.rtx_def*, %struct.rtx_def** %after, align 8
  %cmp338 = icmp ne %struct.rtx_def* %170, %171
  br i1 %cmp338, label %for.body.340, label %for.end.363

for.body.340:                                     ; preds = %for.cond.337
  %172 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %173 = bitcast %struct.rtx_def* %172 to i32*
  %bf.load341 = load i32, i32* %173, align 8
  %bf.lshr342 = lshr i32 %bf.load341, 27
  %bf.clear343 = and i32 %bf.lshr342, 1
  %tobool344 = icmp ne i32 %bf.clear343, 0
  br i1 %tobool344, label %if.end.358, label %land.lhs.true.345

land.lhs.true.345:                                ; preds = %for.body.340
  %174 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %175 = bitcast %struct.rtx_def* %174 to i32*
  %bf.load346 = load i32, i32* %175, align 8
  %bf.clear347 = and i32 %bf.load346, 65535
  %idxprom348 = sext i32 %bf.clear347 to i64
  %arrayidx349 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom348
  %176 = load i8, i8* %arrayidx349, align 1
  %conv350 = sext i8 %176 to i32
  %cmp351 = icmp eq i32 %conv350, 105
  br i1 %cmp351, label %if.then.353, label %if.end.358

if.then.353:                                      ; preds = %land.lhs.true.345
  %177 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld354 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %177, i32 0, i32 1
  %arrayidx355 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld354, i32 0, i64 3
  %rtx356 = bitcast %union.rtunion_def* %arrayidx355 to %struct.rtx_def**
  %178 = load %struct.rtx_def*, %struct.rtx_def** %rtx356, align 8
  %179 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %call357 = call %struct.rtx_def* @try_split(%struct.rtx_def* %178, %struct.rtx_def* %179, i32 1)
  store %struct.rtx_def* %call357, %struct.rtx_def** %tem, align 8
  br label %if.end.358

if.end.358:                                       ; preds = %if.then.353, %land.lhs.true.345, %for.body.340
  br label %for.inc.359

for.inc.359:                                      ; preds = %if.end.358
  %180 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld360 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %180, i32 0, i32 1
  %arrayidx361 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld360, i32 0, i64 2
  %rtx362 = bitcast %union.rtunion_def* %arrayidx361 to %struct.rtx_def**
  %181 = load %struct.rtx_def*, %struct.rtx_def** %rtx362, align 8
  store %struct.rtx_def* %181, %struct.rtx_def** %tem, align 8
  br label %for.cond.337

for.end.363:                                      ; preds = %for.cond.337
  br label %if.end.375

if.else:                                          ; preds = %if.then.21
  %182 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %183 = load %struct.rtx_def*, %struct.rtx_def** %pat.addr, align 8
  %call364 = call i32 @rtx_equal_p(%struct.rtx_def* %182, %struct.rtx_def* %183)
  %tobool365 = icmp ne i32 %call364, 0
  br i1 %tobool365, label %if.then.366, label %if.else.367

if.then.366:                                      ; preds = %if.else
  %184 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  store %struct.rtx_def* %184, %struct.rtx_def** %retval
  br label %return

if.else.367:                                      ; preds = %if.else
  %185 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %186 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %fld368 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %186, i32 0, i32 1
  %arrayidx369 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld368, i32 0, i64 3
  %rtx370 = bitcast %union.rtunion_def* %arrayidx369 to %struct.rtx_def**
  store %struct.rtx_def* %185, %struct.rtx_def** %rtx370, align 8
  %187 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %fld371 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %187, i32 0, i32 1
  %arrayidx372 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld371, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx372 to i32*
  store i32 -1, i32* %rtint, align 4
  %188 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %189 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  %190 = load i32, i32* %last.addr, align 4
  %call373 = call %struct.rtx_def* @try_split(%struct.rtx_def* %188, %struct.rtx_def* %189, i32 %190)
  br label %if.end.374

if.end.374:                                       ; preds = %if.else.367
  br label %if.end.375

if.end.375:                                       ; preds = %if.end.374, %for.end.363
  %191 = load i32, i32* %last.addr, align 4
  %tobool376 = icmp ne i32 %191, 0
  br i1 %tobool376, label %cond.true, label %cond.false.382

cond.true:                                        ; preds = %if.end.375
  %192 = load %struct.rtx_def*, %struct.rtx_def** %after, align 8
  %tobool377 = icmp ne %struct.rtx_def* %192, null
  br i1 %tobool377, label %cond.true.378, label %cond.false

cond.true.378:                                    ; preds = %cond.true
  %193 = load %struct.rtx_def*, %struct.rtx_def** %after, align 8
  %fld379 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %193, i32 0, i32 1
  %arrayidx380 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld379, i32 0, i64 1
  %rtx381 = bitcast %union.rtunion_def* %arrayidx380 to %struct.rtx_def**
  %194 = load %struct.rtx_def*, %struct.rtx_def** %rtx381, align 8
  br label %cond.end

cond.false:                                       ; preds = %cond.true
  %195 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %195, i32 0, i32 3
  %196 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %196, i32 0, i32 3
  %197 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true.378
  %cond = phi %struct.rtx_def* [ %194, %cond.true.378 ], [ %197, %cond.false ]
  br label %cond.end.386

cond.false.382:                                   ; preds = %if.end.375
  %198 = load %struct.rtx_def*, %struct.rtx_def** %before, align 8
  %fld383 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %198, i32 0, i32 1
  %arrayidx384 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld383, i32 0, i64 2
  %rtx385 = bitcast %union.rtunion_def* %arrayidx384 to %struct.rtx_def**
  %199 = load %struct.rtx_def*, %struct.rtx_def** %rtx385, align 8
  br label %cond.end.386

cond.end.386:                                     ; preds = %cond.false.382, %cond.end
  %cond387 = phi %struct.rtx_def* [ %cond, %cond.end ], [ %199, %cond.false.382 ]
  store %struct.rtx_def* %cond387, %struct.rtx_def** %retval
  br label %return

if.end.388:                                       ; preds = %if.end.19
  %200 = load %struct.rtx_def*, %struct.rtx_def** %trial.addr, align 8
  store %struct.rtx_def* %200, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.388, %cond.end.386, %if.then.366, %if.then.51
  %201 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %201
}

declare i32 @any_condjump_p(%struct.rtx_def*) #1

declare %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) #1

declare %struct.rtx_def* @split_insns(%struct.rtx_def*, %struct.rtx_def*) #1

declare i32 @rtx_equal_p(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @mark_jump_label(%struct.rtx_def*, %struct.rtx_def*, i32) #1

declare i32 @may_trap_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_label_nuses(%struct.rtx_def* %x) #0 {
entry:
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %fmt = alloca i8*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %2, 67
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %5 = load i32, i32* %rtint, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, i32* %rtint, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %code, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx3, align 8
  store i8* %7, i8** %fmt, align 8
  %8 = load i32, i32* %code, align 4
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom4
  %9 = load i8, i8* %arrayidx5, align 1
  %conv = zext i8 %9 to i32
  %sub = sub nsw i32 %conv, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.40, %if.end
  %10 = load i32, i32* %i, align 4
  %cmp6 = icmp sge i32 %10, 0
  br i1 %cmp6, label %for.body, label %for.end.42

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load i8*, i8** %fmt, align 8
  %arrayidx9 = getelementptr inbounds i8, i8* %12, i64 %idxprom8
  %13 = load i8, i8* %arrayidx9, align 1
  %conv10 = sext i8 %13 to i32
  %cmp11 = icmp eq i32 %conv10, 101
  br i1 %cmp11, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %14 to i64
  %15 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 %idxprom14
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  call void @mark_label_nuses(%struct.rtx_def* %16)
  br label %if.end.39

if.else:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %idxprom18 = sext i32 %17 to i64
  %18 = load i8*, i8** %fmt, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %18, i64 %idxprom18
  %19 = load i8, i8* %arrayidx19, align 1
  %conv20 = sext i8 %19 to i32
  %cmp21 = icmp eq i32 %conv20, 69
  br i1 %cmp21, label %if.then.23, label %if.end.38

if.then.23:                                       ; preds = %if.else
  %20 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 %idxprom24
  %rtvec = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 0
  %23 = load i32, i32* %num_elem, align 4
  %sub27 = sub nsw i32 %23, 1
  store i32 %sub27, i32* %j, align 4
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc, %if.then.23
  %24 = load i32, i32* %j, align 4
  %cmp29 = icmp sge i32 %24, 0
  br i1 %cmp29, label %for.body.31, label %for.end

for.body.31:                                      ; preds = %for.cond.28
  %25 = load i32, i32* %j, align 4
  %idxprom32 = sext i32 %25 to i64
  %26 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %26 to i64
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 %idxprom33
  %rtvec36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtvec_def**
  %28 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec36, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %28, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom32
  %29 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx37, align 8
  call void @mark_label_nuses(%struct.rtx_def* %29)
  br label %for.inc

for.inc:                                          ; preds = %for.body.31
  %30 = load i32, i32* %j, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.28

for.end:                                          ; preds = %for.cond.28
  br label %if.end.38

if.end.38:                                        ; preds = %for.end, %if.else
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.13
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %31 = load i32, i32* %i, align 4
  %dec41 = add nsw i32 %31, -1
  store i32 %dec41, i32* %i, align 4
  br label %for.cond

for.end.42:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %pattern, %struct.rtx_def* %after) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %after.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  %5 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %5, i32 0, i32 0
  %6 = load i32, i32* %num_elem, align 4
  %cmp1 = icmp slt i32 %3, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtvec4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtvec_def**
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %10 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  call void @add_insn_after(%struct.rtx_def* %11, %struct.rtx_def* %12)
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %after.addr, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %call = call %struct.rtx_def* @make_insn_raw(%struct.rtx_def* %15)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  call void @add_insn_after(%struct.rtx_def* %16, %struct.rtx_def* %17)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %18
}

declare %struct.rtx_def* @delete_related_insns(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_barrier_after(%struct.rtx_def* %after) #0 {
entry:
  %after.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %call = call %struct.rtx_def* @rtx_alloc(i32 35)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 6
  %2 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %2, i32* %rtint, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  call void @add_insn_after(%struct.rtx_def* %4, %struct.rtx_def* %5)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %6
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @make_insn_raw(%struct.rtx_def* %pattern) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  %call = call %struct.rtx_def* @rtx_alloc(i32 32)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 6
  %2 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %2, i32* %rtint, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  store %struct.rtx_def* %4, %struct.rtx_def** %rtx, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 4
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  store i32 -1, i32* %rtint5, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 5
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx8, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 6
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx11, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %9
}

; Function Attrs: nounwind uwtable
define void @add_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 3
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* %2, %struct.rtx_def** %rtx, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx3, align 8
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %emit4 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 3
  %6 = load %struct.emit_status*, %struct.emit_status** %emit4, align 8
  %x_last_insn5 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %6, i32 0, i32 3
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn5, align 8
  %cmp = icmp ne %struct.rtx_def* null, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %emit6 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 3
  %10 = load %struct.emit_status*, %struct.emit_status** %emit6, align 8
  %x_last_insn7 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %10, i32 0, i32 3
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn7, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 2
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  store %struct.rtx_def* %8, %struct.rtx_def** %rtx10, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %emit11 = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 3
  %13 = load %struct.emit_status*, %struct.emit_status** %emit11, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %13, i32 0, i32 2
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn, align 8
  %cmp12 = icmp eq %struct.rtx_def* null, %14
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %if.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %16 = load %struct.function*, %struct.function** @cfun, align 8
  %emit14 = getelementptr inbounds %struct.function, %struct.function* %16, i32 0, i32 3
  %17 = load %struct.emit_status*, %struct.emit_status** %emit14, align 8
  %x_first_insn15 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %17, i32 0, i32 2
  store %struct.rtx_def* %15, %struct.rtx_def** %x_first_insn15, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %if.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %19 = load %struct.function*, %struct.function** @cfun, align 8
  %emit17 = getelementptr inbounds %struct.function, %struct.function* %19, i32 0, i32 3
  %20 = load %struct.emit_status*, %struct.emit_status** %emit17, align 8
  %x_last_insn18 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %20, i32 0, i32 3
  store %struct.rtx_def* %18, %struct.rtx_def** %x_last_insn18, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @add_insn_after(%struct.rtx_def* %insn, %struct.rtx_def* %after) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %after.addr = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %stack = alloca %struct.sequence_stack*, align 8
  %sequence = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %next, align 8
  %2 = load i32, i32* @optimize, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3365, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.add_insn_after, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 2
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  store %struct.rtx_def* %5, %struct.rtx_def** %rtx4, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %7, %struct.rtx_def** %rtx7, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool8 = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def* %10, %struct.rtx_def** %rtx12, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load13 = load i32, i32* %13, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp = icmp eq i32 %bf.clear14, 32
  br i1 %cmp, label %land.lhs.true.15, label %if.end.32

land.lhs.true.15:                                 ; preds = %if.then.9
  %14 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load19 = load i32, i32* %16, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 24
  br i1 %cmp21, label %if.then.22, label %if.end.32

if.then.22:                                       ; preds = %land.lhs.true.15
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 3
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtvec_def**
  %20 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %20, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 0
  %21 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx28, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 1
  %rtx31 = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  store %struct.rtx_def* %17, %struct.rtx_def** %rtx31, align 8
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.22, %land.lhs.true.15, %if.then.9
  br label %if.end.49

if.else:                                          ; preds = %if.end
  %22 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 3
  %23 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %23, i32 0, i32 3
  %24 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %cmp33 = icmp eq %struct.rtx_def* %24, %25
  br i1 %cmp33, label %if.then.34, label %if.else.37

if.then.34:                                       ; preds = %if.else
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %27 = load %struct.function*, %struct.function** @cfun, align 8
  %emit35 = getelementptr inbounds %struct.function, %struct.function* %27, i32 0, i32 3
  %28 = load %struct.emit_status*, %struct.emit_status** %emit35, align 8
  %x_last_insn36 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %28, i32 0, i32 3
  store %struct.rtx_def* %26, %struct.rtx_def** %x_last_insn36, align 8
  br label %if.end.48

if.else.37:                                       ; preds = %if.else
  %29 = load %struct.function*, %struct.function** @cfun, align 8
  %emit38 = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 3
  %30 = load %struct.emit_status*, %struct.emit_status** %emit38, align 8
  %sequence_stack = getelementptr inbounds %struct.emit_status, %struct.emit_status* %30, i32 0, i32 5
  %31 = load %struct.sequence_stack*, %struct.sequence_stack** %sequence_stack, align 8
  store %struct.sequence_stack* %31, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.37
  %32 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %tobool39 = icmp ne %struct.sequence_stack* %32, null
  br i1 %tobool39, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %33 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %34 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %last = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %34, i32 0, i32 1
  %35 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp40 = icmp eq %struct.rtx_def* %33, %35
  br i1 %cmp40, label %if.then.41, label %if.end.43

if.then.41:                                       ; preds = %for.body
  %36 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %37 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %last42 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %37, i32 0, i32 1
  store %struct.rtx_def* %36, %struct.rtx_def** %last42, align 8
  br label %for.end

if.end.43:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.43
  %38 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %next44 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %38, i32 0, i32 3
  %39 = load %struct.sequence_stack*, %struct.sequence_stack** %next44, align 8
  store %struct.sequence_stack* %39, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.41, %for.cond
  %40 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %cmp45 = icmp eq %struct.sequence_stack* %40, null
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3390, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.add_insn_after, i32 0, i32 0)) #6
  unreachable

if.end.47:                                        ; preds = %for.end
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.then.34
  br label %if.end.49

if.end.49:                                        ; preds = %if.end.48, %if.end.32
  %41 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool50 = icmp ne %struct.varray_head_tag* %41, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.84

land.lhs.true.51:                                 ; preds = %if.end.49
  %42 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx53 to i32*
  %43 = load i32, i32* %rtint, align 4
  %conv = zext i32 %43 to i64
  %44 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %44, i32 0, i32 0
  %45 = load i64, i64* %num_elements, align 8
  %cmp54 = icmp ult i64 %conv, %45
  br i1 %cmp54, label %land.lhs.true.56, label %if.end.84

land.lhs.true.56:                                 ; preds = %land.lhs.true.51
  %46 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 0
  %rtint59 = bitcast %union.rtunion_def* %arrayidx58 to i32*
  %47 = load i32, i32* %rtint59, align 4
  %idxprom = sext i32 %47 to i64
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %48, i32 0, i32 4
  %bb60 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx61 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb60, i32 0, i64 %idxprom
  %49 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx61, align 8
  store %struct.basic_block_def* %49, %struct.basic_block_def** %bb, align 8
  %tobool62 = icmp ne %struct.basic_block_def* %49, null
  br i1 %tobool62, label %if.then.63, label %if.end.84

if.then.63:                                       ; preds = %land.lhs.true.56
  %50 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %51 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @set_block_for_insn(%struct.rtx_def* %50, %struct.basic_block_def* %51)
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 1
  %53 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %cmp64 = icmp eq %struct.rtx_def* %53, %54
  br i1 %cmp64, label %land.lhs.true.66, label %if.end.83

land.lhs.true.66:                                 ; preds = %if.then.63
  %55 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load67 = load i32, i32* %56, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp ne i32 %bf.clear68, 35
  br i1 %cmp69, label %land.lhs.true.71, label %if.end.83

land.lhs.true.71:                                 ; preds = %land.lhs.true.66
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load72 = load i32, i32* %58, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp ne i32 %bf.clear73, 37
  br i1 %cmp74, label %if.then.81, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.71
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 4
  %rtint78 = bitcast %union.rtunion_def* %arrayidx77 to i32*
  %60 = load i32, i32* %rtint78, align 4
  %cmp79 = icmp ne i32 %60, -80
  br i1 %cmp79, label %if.then.81, label %if.end.83

if.then.81:                                       ; preds = %lor.lhs.false, %land.lhs.true.71
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end82 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %62, i32 0, i32 1
  store %struct.rtx_def* %61, %struct.rtx_def** %end82, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %if.then.81, %lor.lhs.false, %land.lhs.true.66, %if.then.63
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.83, %land.lhs.true.56, %land.lhs.true.51, %if.end.49
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %64 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 2
  %rtx87 = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtx_def**
  store %struct.rtx_def* %63, %struct.rtx_def** %rtx87, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %66 = bitcast %struct.rtx_def* %65 to i32*
  %bf.load88 = load i32, i32* %66, align 8
  %bf.clear89 = and i32 %bf.load88, 65535
  %cmp90 = icmp eq i32 %bf.clear89, 32
  br i1 %cmp90, label %land.lhs.true.92, label %if.end.116

land.lhs.true.92:                                 ; preds = %if.end.84
  %67 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld93 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %67, i32 0, i32 1
  %arrayidx94 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld93, i32 0, i64 3
  %rtx95 = bitcast %union.rtunion_def* %arrayidx94 to %struct.rtx_def**
  %68 = load %struct.rtx_def*, %struct.rtx_def** %rtx95, align 8
  %69 = bitcast %struct.rtx_def* %68 to i32*
  %bf.load96 = load i32, i32* %69, align 8
  %bf.clear97 = and i32 %bf.load96, 65535
  %cmp98 = icmp eq i32 %bf.clear97, 24
  br i1 %cmp98, label %if.then.100, label %if.end.116

if.then.100:                                      ; preds = %land.lhs.true.92
  %70 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 3
  %rtx103 = bitcast %union.rtunion_def* %arrayidx102 to %struct.rtx_def**
  %71 = load %struct.rtx_def*, %struct.rtx_def** %rtx103, align 8
  store %struct.rtx_def* %71, %struct.rtx_def** %sequence, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %fld104 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx105 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld104, i32 0, i64 0
  %rtvec106 = bitcast %union.rtunion_def* %arrayidx105 to %struct.rtvec_def**
  %74 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec106, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %74, i32 0, i32 0
  %75 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %75, 1
  %idxprom107 = sext i32 %sub to i64
  %76 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtvec110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtvec_def**
  %77 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec110, align 8
  %elem111 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %77, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem111, i32 0, i64 %idxprom107
  %78 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx112, align 8
  %fld113 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx114 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld113, i32 0, i64 2
  %rtx115 = bitcast %union.rtunion_def* %arrayidx114 to %struct.rtx_def**
  store %struct.rtx_def* %72, %struct.rtx_def** %rtx115, align 8
  br label %if.end.116

if.end.116:                                       ; preds = %if.then.100, %land.lhs.true.92, %if.end.84
  ret void
}

declare void @set_block_for_insn(%struct.rtx_def*, %struct.basic_block_def*) #1

; Function Attrs: nounwind uwtable
define void @add_insn_before(%struct.rtx_def* %insn, %struct.rtx_def* %before) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %before.addr = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %sequence = alloca %struct.rtx_def*, align 8
  %stack = alloca %struct.sequence_stack*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %before, %struct.rtx_def** %before.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %prev, align 8
  %2 = load i32, i32* @optimize, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.lshr = lshr i32 %bf.load, 27
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3429, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.add_insn_before, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 1
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  store %struct.rtx_def* %5, %struct.rtx_def** %rtx4, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 2
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  store %struct.rtx_def* %7, %struct.rtx_def** %rtx7, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %tobool8 = icmp ne %struct.rtx_def* %9, null
  br i1 %tobool8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %if.end
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 2
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  store %struct.rtx_def* %10, %struct.rtx_def** %rtx12, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load13 = load i32, i32* %13, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp = icmp eq i32 %bf.clear14, 32
  br i1 %cmp, label %land.lhs.true.15, label %if.end.35

land.lhs.true.15:                                 ; preds = %if.then.9
  %14 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %16 = bitcast %struct.rtx_def* %15 to i32*
  %bf.load19 = load i32, i32* %16, align 8
  %bf.clear20 = and i32 %bf.load19, 65535
  %cmp21 = icmp eq i32 %bf.clear20, 24
  br i1 %cmp21, label %if.then.22, label %if.end.35

if.then.22:                                       ; preds = %land.lhs.true.15
  %17 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 3
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %sequence, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtvec_def**
  %21 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i32 0, i32 0
  %22 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %22, 1
  %idxprom = sext i32 %sub to i64
  %23 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtvec30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtvec_def**
  %24 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec30, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %24, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %25 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx31, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 2
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  store %struct.rtx_def* %19, %struct.rtx_def** %rtx34, align 8
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.22, %land.lhs.true.15, %if.then.9
  br label %if.end.51

if.else:                                          ; preds = %if.end
  %26 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %26, i32 0, i32 3
  %27 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %27, i32 0, i32 2
  %28 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %cmp36 = icmp eq %struct.rtx_def* %28, %29
  br i1 %cmp36, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %if.else
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %31 = load %struct.function*, %struct.function** @cfun, align 8
  %emit38 = getelementptr inbounds %struct.function, %struct.function* %31, i32 0, i32 3
  %32 = load %struct.emit_status*, %struct.emit_status** %emit38, align 8
  %x_first_insn39 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %32, i32 0, i32 2
  store %struct.rtx_def* %30, %struct.rtx_def** %x_first_insn39, align 8
  br label %if.end.50

if.else.40:                                       ; preds = %if.else
  %33 = load %struct.function*, %struct.function** @cfun, align 8
  %emit41 = getelementptr inbounds %struct.function, %struct.function* %33, i32 0, i32 3
  %34 = load %struct.emit_status*, %struct.emit_status** %emit41, align 8
  %sequence_stack = getelementptr inbounds %struct.emit_status, %struct.emit_status* %34, i32 0, i32 5
  %35 = load %struct.sequence_stack*, %struct.sequence_stack** %sequence_stack, align 8
  store %struct.sequence_stack* %35, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.40
  %36 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %tobool42 = icmp ne %struct.sequence_stack* %36, null
  br i1 %tobool42, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %38 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %first = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %38, i32 0, i32 0
  %39 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %cmp43 = icmp eq %struct.rtx_def* %37, %39
  br i1 %cmp43, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %for.body
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %41 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %first45 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %41, i32 0, i32 0
  store %struct.rtx_def* %40, %struct.rtx_def** %first45, align 8
  br label %for.end

if.end.46:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.46
  %42 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %next = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %42, i32 0, i32 3
  %43 = load %struct.sequence_stack*, %struct.sequence_stack** %next, align 8
  store %struct.sequence_stack* %43, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.44, %for.cond
  %44 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %cmp47 = icmp eq %struct.sequence_stack* %44, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3457, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.add_insn_before, i32 0, i32 0)) #6
  unreachable

if.end.49:                                        ; preds = %for.end
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.37
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.35
  %45 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool52 = icmp ne %struct.varray_head_tag* %45, null
  br i1 %tobool52, label %land.lhs.true.53, label %if.end.86

land.lhs.true.53:                                 ; preds = %if.end.51
  %46 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %fld54 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx55 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld54, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx55 to i32*
  %47 = load i32, i32* %rtint, align 4
  %conv = zext i32 %47 to i64
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %48, i32 0, i32 0
  %49 = load i64, i64* %num_elements, align 8
  %cmp56 = icmp ult i64 %conv, %49
  br i1 %cmp56, label %land.lhs.true.58, label %if.end.86

land.lhs.true.58:                                 ; preds = %land.lhs.true.53
  %50 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtint61 = bitcast %union.rtunion_def* %arrayidx60 to i32*
  %51 = load i32, i32* %rtint61, align 4
  %idxprom62 = sext i32 %51 to i64
  %52 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %52, i32 0, i32 4
  %bb63 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx64 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb63, i32 0, i64 %idxprom62
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx64, align 8
  store %struct.basic_block_def* %53, %struct.basic_block_def** %bb, align 8
  %tobool65 = icmp ne %struct.basic_block_def* %53, null
  br i1 %tobool65, label %if.then.66, label %if.end.86

if.then.66:                                       ; preds = %land.lhs.true.58
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @set_block_for_insn(%struct.rtx_def* %54, %struct.basic_block_def* %55)
  %56 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %56, i32 0, i32 0
  %57 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %58 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp67 = icmp eq %struct.rtx_def* %57, %58
  br i1 %cmp67, label %land.lhs.true.69, label %if.end.85

land.lhs.true.69:                                 ; preds = %if.then.66
  %59 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load70 = load i32, i32* %60, align 8
  %bf.clear71 = and i32 %bf.load70, 65535
  %cmp72 = icmp ne i32 %bf.clear71, 35
  br i1 %cmp72, label %land.lhs.true.74, label %if.end.85

land.lhs.true.74:                                 ; preds = %land.lhs.true.69
  %61 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %62 = bitcast %struct.rtx_def* %61 to i32*
  %bf.load75 = load i32, i32* %62, align 8
  %bf.clear76 = and i32 %bf.load75, 65535
  %cmp77 = icmp ne i32 %bf.clear76, 37
  br i1 %cmp77, label %if.then.84, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.74
  %63 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 4
  %rtint81 = bitcast %union.rtunion_def* %arrayidx80 to i32*
  %64 = load i32, i32* %rtint81, align 4
  %cmp82 = icmp ne i32 %64, -80
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %lor.lhs.false, %land.lhs.true.74
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3472, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.add_insn_before, i32 0, i32 0)) #6
  unreachable

if.end.85:                                        ; preds = %lor.lhs.false, %land.lhs.true.69, %if.then.66
  br label %if.end.86

if.end.86:                                        ; preds = %if.end.85, %land.lhs.true.58, %land.lhs.true.53, %if.end.51
  %65 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %fld87 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx88 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld87, i32 0, i64 1
  %rtx89 = bitcast %union.rtunion_def* %arrayidx88 to %struct.rtx_def**
  store %struct.rtx_def* %65, %struct.rtx_def** %rtx89, align 8
  %67 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load90 = load i32, i32* %68, align 8
  %bf.clear91 = and i32 %bf.load90, 65535
  %cmp92 = icmp eq i32 %bf.clear91, 32
  br i1 %cmp92, label %land.lhs.true.94, label %if.end.114

land.lhs.true.94:                                 ; preds = %if.end.86
  %69 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %69, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 3
  %rtx97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtx_def**
  %70 = load %struct.rtx_def*, %struct.rtx_def** %rtx97, align 8
  %71 = bitcast %struct.rtx_def* %70 to i32*
  %bf.load98 = load i32, i32* %71, align 8
  %bf.clear99 = and i32 %bf.load98, 65535
  %cmp100 = icmp eq i32 %bf.clear99, 24
  br i1 %cmp100, label %if.then.102, label %if.end.114

if.then.102:                                      ; preds = %land.lhs.true.94
  %72 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %73 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 3
  %rtx105 = bitcast %union.rtunion_def* %arrayidx104 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx105, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %74, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 0
  %rtvec108 = bitcast %union.rtunion_def* %arrayidx107 to %struct.rtvec_def**
  %75 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec108, align 8
  %elem109 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %75, i32 0, i32 1
  %arrayidx110 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem109, i32 0, i64 0
  %76 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx110, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %76, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 1
  %rtx113 = bitcast %union.rtunion_def* %arrayidx112 to %struct.rtx_def**
  store %struct.rtx_def* %72, %struct.rtx_def** %rtx113, align 8
  br label %if.end.114

if.end.114:                                       ; preds = %if.then.102, %land.lhs.true.94, %if.end.86
  ret void
}

; Function Attrs: nounwind uwtable
define void @remove_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %sequence = alloca %struct.rtx_def*, align 8
  %stack = alloca %struct.sequence_stack*, align 8
  %stack78 = alloca %struct.sequence_stack*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %next, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 1
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %prev, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 2
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  store %struct.rtx_def* %5, %struct.rtx_def** %rtx6, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 32
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load10 = load i32, i32* %11, align 8
  %bf.clear11 = and i32 %bf.load10, 65535
  %cmp12 = icmp eq i32 %bf.clear11, 24
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %land.lhs.true
  %12 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 3
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %sequence, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtvec_def**
  %16 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %16, i32 0, i32 0
  %17 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %17, 1
  %idxprom = sext i32 %sub to i64
  %18 = load %struct.rtx_def*, %struct.rtx_def** %sequence, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtvec21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtvec_def**
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec21, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %19, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %20 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 2
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  store %struct.rtx_def* %14, %struct.rtx_def** %rtx25, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %land.lhs.true, %if.then
  br label %if.end.42

if.else:                                          ; preds = %entry
  %21 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %21, i32 0, i32 3
  %22 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %22, i32 0, i32 2
  %23 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp26 = icmp eq %struct.rtx_def* %23, %24
  br i1 %cmp26, label %if.then.27, label %if.else.30

if.then.27:                                       ; preds = %if.else
  %25 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %26 = load %struct.function*, %struct.function** @cfun, align 8
  %emit28 = getelementptr inbounds %struct.function, %struct.function* %26, i32 0, i32 3
  %27 = load %struct.emit_status*, %struct.emit_status** %emit28, align 8
  %x_first_insn29 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %27, i32 0, i32 2
  store %struct.rtx_def* %25, %struct.rtx_def** %x_first_insn29, align 8
  br label %if.end.41

if.else.30:                                       ; preds = %if.else
  %28 = load %struct.function*, %struct.function** @cfun, align 8
  %emit31 = getelementptr inbounds %struct.function, %struct.function* %28, i32 0, i32 3
  %29 = load %struct.emit_status*, %struct.emit_status** %emit31, align 8
  %sequence_stack = getelementptr inbounds %struct.emit_status, %struct.emit_status* %29, i32 0, i32 5
  %30 = load %struct.sequence_stack*, %struct.sequence_stack** %sequence_stack, align 8
  store %struct.sequence_stack* %30, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.30
  %31 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %tobool32 = icmp ne %struct.sequence_stack* %31, null
  br i1 %tobool32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %33 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %first = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %33, i32 0, i32 0
  %34 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %cmp33 = icmp eq %struct.rtx_def* %32, %34
  br i1 %cmp33, label %if.then.34, label %if.end.36

if.then.34:                                       ; preds = %for.body
  %35 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %36 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %first35 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %36, i32 0, i32 0
  store %struct.rtx_def* %35, %struct.rtx_def** %first35, align 8
  br label %for.end

if.end.36:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.36
  %37 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %next37 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %37, i32 0, i32 3
  %38 = load %struct.sequence_stack*, %struct.sequence_stack** %next37, align 8
  store %struct.sequence_stack* %38, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.34, %for.cond
  %39 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %cmp38 = icmp eq %struct.sequence_stack* %39, null
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3513, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.remove_insn, i32 0, i32 0)) #6
  unreachable

if.end.40:                                        ; preds = %for.end
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.then.27
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %if.end
  %40 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %tobool43 = icmp ne %struct.rtx_def* %40, null
  br i1 %tobool43, label %if.then.44, label %if.else.71

if.then.44:                                       ; preds = %if.end.42
  %41 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %42 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 1
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  store %struct.rtx_def* %41, %struct.rtx_def** %rtx47, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load48 = load i32, i32* %44, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 32
  br i1 %cmp50, label %land.lhs.true.51, label %if.end.70

land.lhs.true.51:                                 ; preds = %if.then.44
  %45 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 3
  %rtx54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx54, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load55 = load i32, i32* %47, align 8
  %bf.clear56 = and i32 %bf.load55, 65535
  %cmp57 = icmp eq i32 %bf.clear56, 24
  br i1 %cmp57, label %if.then.58, label %if.end.70

if.then.58:                                       ; preds = %land.lhs.true.51
  %48 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 3
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx61, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %50, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 0
  %rtvec64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtvec_def**
  %51 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec64, align 8
  %elem65 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %51, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem65, i32 0, i64 0
  %52 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx66, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 1
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  store %struct.rtx_def* %48, %struct.rtx_def** %rtx69, align 8
  br label %if.end.70

if.end.70:                                        ; preds = %if.then.58, %land.lhs.true.51, %if.then.44
  br label %if.end.95

if.else.71:                                       ; preds = %if.end.42
  %53 = load %struct.function*, %struct.function** @cfun, align 8
  %emit72 = getelementptr inbounds %struct.function, %struct.function* %53, i32 0, i32 3
  %54 = load %struct.emit_status*, %struct.emit_status** %emit72, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %54, i32 0, i32 3
  %55 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  %56 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp73 = icmp eq %struct.rtx_def* %55, %56
  br i1 %cmp73, label %if.then.74, label %if.else.77

if.then.74:                                       ; preds = %if.else.71
  %57 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %58 = load %struct.function*, %struct.function** @cfun, align 8
  %emit75 = getelementptr inbounds %struct.function, %struct.function* %58, i32 0, i32 3
  %59 = load %struct.emit_status*, %struct.emit_status** %emit75, align 8
  %x_last_insn76 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %59, i32 0, i32 3
  store %struct.rtx_def* %57, %struct.rtx_def** %x_last_insn76, align 8
  br label %if.end.94

if.else.77:                                       ; preds = %if.else.71
  %60 = load %struct.function*, %struct.function** @cfun, align 8
  %emit79 = getelementptr inbounds %struct.function, %struct.function* %60, i32 0, i32 3
  %61 = load %struct.emit_status*, %struct.emit_status** %emit79, align 8
  %sequence_stack80 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %61, i32 0, i32 5
  %62 = load %struct.sequence_stack*, %struct.sequence_stack** %sequence_stack80, align 8
  store %struct.sequence_stack* %62, %struct.sequence_stack** %stack78, align 8
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.88, %if.else.77
  %63 = load %struct.sequence_stack*, %struct.sequence_stack** %stack78, align 8
  %tobool82 = icmp ne %struct.sequence_stack* %63, null
  br i1 %tobool82, label %for.body.83, label %for.end.90

for.body.83:                                      ; preds = %for.cond.81
  %64 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %65 = load %struct.sequence_stack*, %struct.sequence_stack** %stack78, align 8
  %last = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %65, i32 0, i32 1
  %66 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp84 = icmp eq %struct.rtx_def* %64, %66
  br i1 %cmp84, label %if.then.85, label %if.end.87

if.then.85:                                       ; preds = %for.body.83
  %67 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %68 = load %struct.sequence_stack*, %struct.sequence_stack** %stack78, align 8
  %last86 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %68, i32 0, i32 1
  store %struct.rtx_def* %67, %struct.rtx_def** %last86, align 8
  br label %for.end.90

if.end.87:                                        ; preds = %for.body.83
  br label %for.inc.88

for.inc.88:                                       ; preds = %if.end.87
  %69 = load %struct.sequence_stack*, %struct.sequence_stack** %stack78, align 8
  %next89 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %69, i32 0, i32 3
  %70 = load %struct.sequence_stack*, %struct.sequence_stack** %next89, align 8
  store %struct.sequence_stack* %70, %struct.sequence_stack** %stack78, align 8
  br label %for.cond.81

for.end.90:                                       ; preds = %if.then.85, %for.cond.81
  %71 = load %struct.sequence_stack*, %struct.sequence_stack** %stack78, align 8
  %cmp91 = icmp eq %struct.sequence_stack* %71, null
  br i1 %cmp91, label %if.then.92, label %if.end.93

if.then.92:                                       ; preds = %for.end.90
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3536, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.remove_insn, i32 0, i32 0)) #6
  unreachable

if.end.93:                                        ; preds = %for.end.90
  br label %if.end.94

if.end.94:                                        ; preds = %if.end.93, %if.then.74
  br label %if.end.95

if.end.95:                                        ; preds = %if.end.94, %if.end.70
  %72 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool96 = icmp ne %struct.varray_head_tag* %72, null
  br i1 %tobool96, label %land.lhs.true.97, label %if.end.127

land.lhs.true.97:                                 ; preds = %if.end.95
  %73 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx99 to i32*
  %74 = load i32, i32* %rtint, align 4
  %conv = zext i32 %74 to i64
  %75 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %75, i32 0, i32 0
  %76 = load i64, i64* %num_elements, align 8
  %cmp100 = icmp ult i64 %conv, %76
  br i1 %cmp100, label %land.lhs.true.102, label %if.end.127

land.lhs.true.102:                                ; preds = %land.lhs.true.97
  %77 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld103 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx104 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld103, i32 0, i64 0
  %rtint105 = bitcast %union.rtunion_def* %arrayidx104 to i32*
  %78 = load i32, i32* %rtint105, align 4
  %idxprom106 = sext i32 %78 to i64
  %79 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %79, i32 0, i32 4
  %bb107 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx108 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb107, i32 0, i64 %idxprom106
  %80 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx108, align 8
  store %struct.basic_block_def* %80, %struct.basic_block_def** %bb, align 8
  %tobool109 = icmp ne %struct.basic_block_def* %80, null
  br i1 %tobool109, label %if.then.110, label %if.end.127

if.then.110:                                      ; preds = %land.lhs.true.102
  %81 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %81, i32 0, i32 0
  %82 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  %83 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp111 = icmp eq %struct.rtx_def* %82, %83
  br i1 %cmp111, label %if.then.113, label %if.end.121

if.then.113:                                      ; preds = %if.then.110
  %84 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load114 = load i32, i32* %85, align 8
  %bf.clear115 = and i32 %bf.load114, 65535
  %cmp116 = icmp eq i32 %bf.clear115, 37
  br i1 %cmp116, label %if.then.118, label %if.end.119

if.then.118:                                      ; preds = %if.then.113
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3547, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.remove_insn, i32 0, i32 0)) #6
  unreachable

if.end.119:                                       ; preds = %if.then.113
  %86 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  %87 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %head120 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %87, i32 0, i32 0
  store %struct.rtx_def* %86, %struct.rtx_def** %head120, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.end.119, %if.then.110
  %88 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %88, i32 0, i32 1
  %89 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %90 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %cmp122 = icmp eq %struct.rtx_def* %89, %90
  br i1 %cmp122, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %if.end.121
  %91 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %92 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end125 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %92, i32 0, i32 1
  store %struct.rtx_def* %91, %struct.rtx_def** %end125, align 8
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %if.end.121
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %land.lhs.true.102, %land.lhs.true.97, %if.end.95
  ret void
}

; Function Attrs: nounwind uwtable
define void @delete_insns_since(%struct.rtx_def* %from) #0 {
entry:
  %from.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 3
  %2 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %2, i32 0, i32 2
  store %struct.rtx_def* null, %struct.rtx_def** %x_first_insn, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 3
  %6 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %6, i32 0, i32 3
  store %struct.rtx_def* %4, %struct.rtx_def** %x_last_insn, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @reorder_insns_nobb(%struct.rtx_def* %from, %struct.rtx_def* %to, %struct.rtx_def* %after) #0 {
entry:
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %after.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 1
  %rtx6 = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %5 = load %struct.rtx_def*, %struct.rtx_def** %rtx6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 2
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  store %struct.rtx_def* %3, %struct.rtx_def** %rtx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 2
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %tobool13 = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool13, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 1
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 2
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 1
  %rtx23 = bitcast %union.rtunion_def* %arrayidx22 to %struct.rtx_def**
  store %struct.rtx_def* %9, %struct.rtx_def** %rtx23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.14, %if.end
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 3
  %13 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %13, i32 0, i32 3
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %cmp = icmp eq %struct.rtx_def* %14, %15
  br i1 %cmp, label %if.then.25, label %if.end.31

if.then.25:                                       ; preds = %if.end.24
  %16 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 1
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %18 = load %struct.function*, %struct.function** @cfun, align 8
  %emit29 = getelementptr inbounds %struct.function, %struct.function* %18, i32 0, i32 3
  %19 = load %struct.emit_status*, %struct.emit_status** %emit29, align 8
  %x_last_insn30 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %19, i32 0, i32 3
  store %struct.rtx_def* %17, %struct.rtx_def** %x_last_insn30, align 8
  br label %if.end.31

if.end.31:                                        ; preds = %if.then.25, %if.end.24
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %emit32 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 3
  %21 = load %struct.emit_status*, %struct.emit_status** %emit32, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %21, i32 0, i32 2
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %cmp33 = icmp eq %struct.rtx_def* %22, %23
  br i1 %cmp33, label %if.then.34, label %if.end.40

if.then.34:                                       ; preds = %if.end.31
  %24 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 2
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %25 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %26 = load %struct.function*, %struct.function** @cfun, align 8
  %emit38 = getelementptr inbounds %struct.function, %struct.function* %26, i32 0, i32 3
  %27 = load %struct.emit_status*, %struct.emit_status** %emit38, align 8
  %x_first_insn39 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %27, i32 0, i32 2
  store %struct.rtx_def* %25, %struct.rtx_def** %x_first_insn39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.34, %if.end.31
  %28 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 2
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %tobool44 = icmp ne %struct.rtx_def* %29, null
  br i1 %tobool44, label %if.then.45, label %if.end.52

if.then.45:                                       ; preds = %if.end.40
  %30 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 2
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 1
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  store %struct.rtx_def* %30, %struct.rtx_def** %rtx51, align 8
  br label %if.end.52

if.end.52:                                        ; preds = %if.then.45, %if.end.40
  %33 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 2
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 2
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  store %struct.rtx_def* %34, %struct.rtx_def** %rtx58, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 1
  %rtx61 = bitcast %union.rtunion_def* %arrayidx60 to %struct.rtx_def**
  store %struct.rtx_def* %36, %struct.rtx_def** %rtx61, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 2
  %rtx64 = bitcast %union.rtunion_def* %arrayidx63 to %struct.rtx_def**
  store %struct.rtx_def* %38, %struct.rtx_def** %rtx64, align 8
  %40 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %41 = load %struct.function*, %struct.function** @cfun, align 8
  %emit65 = getelementptr inbounds %struct.function, %struct.function* %41, i32 0, i32 3
  %42 = load %struct.emit_status*, %struct.emit_status** %emit65, align 8
  %x_last_insn66 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %42, i32 0, i32 3
  %43 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn66, align 8
  %cmp67 = icmp eq %struct.rtx_def* %40, %43
  br i1 %cmp67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %if.end.52
  %44 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %45 = load %struct.function*, %struct.function** @cfun, align 8
  %emit69 = getelementptr inbounds %struct.function, %struct.function* %45, i32 0, i32 3
  %46 = load %struct.emit_status*, %struct.emit_status** %emit69, align 8
  %x_last_insn70 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %46, i32 0, i32 3
  store %struct.rtx_def* %44, %struct.rtx_def** %x_last_insn70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %if.end.52
  ret void
}

; Function Attrs: nounwind uwtable
define void @reorder_insns(%struct.rtx_def* %from, %struct.rtx_def* %to, %struct.rtx_def* %after) #0 {
entry:
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %after.addr = alloca %struct.rtx_def*, align 8
  %prev = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  %bb2 = alloca %struct.basic_block_def*, align 8
  %x = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %prev, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  call void @reorder_insns_nobb(%struct.rtx_def* %2, %struct.rtx_def* %3, %struct.rtx_def* %4)
  %5 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool = icmp ne %struct.varray_head_tag* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.end.49

land.lhs.true:                                    ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %7 = load i32, i32* %rtint, align 4
  %conv = zext i32 %7 to i64
  %8 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %8, i32 0, i32 0
  %9 = load i64, i64* %num_elements, align 8
  %cmp = icmp ult i64 %conv, %9
  br i1 %cmp, label %land.lhs.true.4, label %if.end.49

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %10 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtint7 = bitcast %union.rtunion_def* %arrayidx6 to i32*
  %11 = load i32, i32* %rtint7, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 4
  %bb8 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx9 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb8, i32 0, i64 %idxprom
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx9, align 8
  store %struct.basic_block_def* %13, %struct.basic_block_def** %bb, align 8
  %tobool10 = icmp ne %struct.basic_block_def* %13, null
  br i1 %tobool10, label %if.then, label %if.end.49

if.then:                                          ; preds = %land.lhs.true.4
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool11 = icmp ne %struct.varray_head_tag* %14, null
  br i1 %tobool11, label %land.lhs.true.12, label %if.end.34

land.lhs.true.12:                                 ; preds = %if.then
  %15 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtint15 = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %16 = load i32, i32* %rtint15, align 4
  %conv16 = zext i32 %16 to i64
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %num_elements17 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 0
  %18 = load i64, i64* %num_elements17, align 8
  %cmp18 = icmp ult i64 %conv16, %18
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.34

land.lhs.true.20:                                 ; preds = %land.lhs.true.12
  %19 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %fld21 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx22 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld21, i32 0, i64 0
  %rtint23 = bitcast %union.rtunion_def* %arrayidx22 to i32*
  %20 = load i32, i32* %rtint23, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data25 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %21, i32 0, i32 4
  %bb26 = bitcast %union.varray_data_tag* %data25 to [1 x %struct.basic_block_def*]*
  %arrayidx27 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb26, i32 0, i64 %idxprom24
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx27, align 8
  store %struct.basic_block_def* %22, %struct.basic_block_def** %bb2, align 8
  %tobool28 = icmp ne %struct.basic_block_def* %22, null
  br i1 %tobool28, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %land.lhs.true.20
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 1
  %24 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %cmp30 = icmp eq %struct.rtx_def* %24, %25
  br i1 %cmp30, label %if.then.32, label %if.end

if.then.32:                                       ; preds = %if.then.29
  %26 = load %struct.rtx_def*, %struct.rtx_def** %prev, align 8
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %bb2, align 8
  %end33 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 1
  store %struct.rtx_def* %26, %struct.rtx_def** %end33, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.32, %if.then.29
  br label %if.end.34

if.end.34:                                        ; preds = %if.end, %land.lhs.true.20, %land.lhs.true.12, %if.then
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end35 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 1
  %29 = load %struct.rtx_def*, %struct.rtx_def** %end35, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %cmp36 = icmp eq %struct.rtx_def* %29, %30
  br i1 %cmp36, label %if.then.38, label %if.end.40

if.then.38:                                       ; preds = %if.end.34
  %31 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %32, i32 0, i32 1
  store %struct.rtx_def* %31, %struct.rtx_def** %end39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.38, %if.end.34
  %33 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %x, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.40
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 2
  %rtx43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx43, align 8
  %cmp44 = icmp ne %struct.rtx_def* %34, %36
  br i1 %cmp44, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @set_block_for_insn(%struct.rtx_def* %37, %struct.basic_block_def* %38)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %39 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 2
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.49

if.end.49:                                        ; preds = %for.end, %land.lhs.true.4, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @reorder_insns_with_line_notes(%struct.rtx_def* %from, %struct.rtx_def* %to, %struct.rtx_def* %after) #0 {
entry:
  %from.addr = alloca %struct.rtx_def*, align 8
  %to.addr = alloca %struct.rtx_def*, align 8
  %after.addr = alloca %struct.rtx_def*, align 8
  %from_line = alloca %struct.rtx_def*, align 8
  %after_line = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  store %struct.rtx_def* %to, %struct.rtx_def** %to.addr, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call = call %struct.rtx_def* @find_line_note(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %from_line, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %call1 = call %struct.rtx_def* @find_line_note(%struct.rtx_def* %1)
  store %struct.rtx_def* %call1, %struct.rtx_def** %after_line, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  call void @reorder_insns(%struct.rtx_def* %2, %struct.rtx_def* %3, %struct.rtx_def* %4)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %from_line, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %after_line, align 8
  %cmp = icmp eq %struct.rtx_def* %5, %6
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.16

if.end:                                           ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %from_line, align 8
  %tobool = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %from_line, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %9 = load i8*, i8** %rtstr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %from_line, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %11 = load i32, i32* %rtint, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %call5 = call %struct.rtx_def* @emit_line_note_after(i8* %9, i32 %11, %struct.rtx_def* %12)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.2, %if.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %after_line, align 8
  %tobool7 = icmp ne %struct.rtx_def* %13, null
  br i1 %tobool7, label %if.then.8, label %if.end.16

if.then.8:                                        ; preds = %if.end.6
  %14 = load %struct.rtx_def*, %struct.rtx_def** %after_line, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 3
  %rtstr11 = bitcast %union.rtunion_def* %arrayidx10 to i8**
  %15 = load i8*, i8** %rtstr11, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %after_line, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 4
  %rtint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %17 = load i32, i32* %rtint14, align 4
  %18 = load %struct.rtx_def*, %struct.rtx_def** %to.addr, align 8
  %call15 = call %struct.rtx_def* @emit_line_note_after(i8* %15, i32 %17, %struct.rtx_def* %18)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then, %if.then.8, %if.end.6
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @find_line_note(%struct.rtx_def* %insn) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  %0 = load i32, i32* @no_line_numbers, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool1 = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 37
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %for.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtint, align 4
  %cmp2 = icmp sge i32 %5, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  br label %for.end

if.end.4:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %7 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %insn.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then.3, %for.cond
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %9
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_line_note_after(i8* %file, i32 %line, %struct.rtx_def* %after) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %after.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %0 = load i32, i32* @no_line_numbers, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %line.addr, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 3
  %3 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %3, i32 0, i32 6
  %4 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %call = call %struct.rtx_def* @rtx_alloc(i32 37)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 3
  %6 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_cur_insn_uid2 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %6, i32 0, i32 6
  %7 = load i32, i32* %x_cur_insn_uid2, align 4
  %inc3 = add nsw i32 %7, 1
  store i32 %inc3, i32* %x_cur_insn_uid2, align 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %7, i32* %rtint, align 4
  %9 = load i8*, i8** %file.addr, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx5 to i8**
  store i8* %9, i8** %rtstr, align 8
  %11 = load i32, i32* %line.addr, align 4
  %12 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 4
  %rtint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  store i32 %11, i32* %rtint8, align 4
  %13 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  call void @add_insn_after(%struct.rtx_def* %13, %struct.rtx_def* %14)
  %15 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %16 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %16
}

; Function Attrs: nounwind uwtable
define void @remove_unnecessary_notes() #0 {
entry:
  %block_stack = alloca %struct.rtx_def*, align 8
  %eh_stack = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %tmp = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %block_stack, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %eh_stack, align 8
  %call = call %struct.rtx_def* @get_insns()
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %call, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %0 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.101, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %for.body, label %for.end.102

for.body:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 2
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %next, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 37
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc.101

if.end:                                           ; preds = %for.body
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx5 to i32*
  %7 = load i32, i32* %rtint, align 4
  switch i32 %7, label %sw.epilog [
    i32 -99, label %sw.bb
    i32 -92, label %sw.bb
    i32 -86, label %sw.bb.6
    i32 -85, label %sw.bb.8
    i32 -98, label %sw.bb.27
    i32 -97, label %sw.bb.34
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @remove_insn(%struct.rtx_def* %8)
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %eh_stack, align 8
  %call7 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %9, %struct.rtx_def* %10)
  store %struct.rtx_def* %call7, %struct.rtx_def** %eh_stack, align 8
  br label %sw.epilog

sw.bb.8:                                          ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %eh_stack, align 8
  %cmp9 = icmp eq %struct.rtx_def* %11, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %sw.bb.8
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3716, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.remove_unnecessary_notes, i32 0, i32 0)) #6
  unreachable

if.end.11:                                        ; preds = %sw.bb.8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %eh_stack, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtint17 = bitcast %union.rtunion_def* %arrayidx16 to i32*
  %14 = load i32, i32* %rtint17, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtint20 = bitcast %union.rtunion_def* %arrayidx19 to i32*
  %16 = load i32, i32* %rtint20, align 4
  %cmp21 = icmp ne i32 %14, %16
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.11
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3719, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.remove_unnecessary_notes, i32 0, i32 0)) #6
  unreachable

if.end.23:                                        ; preds = %if.end.11
  %17 = load %struct.rtx_def*, %struct.rtx_def** %eh_stack, align 8
  store %struct.rtx_def* %17, %struct.rtx_def** %tmp, align 8
  %18 = load %struct.rtx_def*, %struct.rtx_def** %eh_stack, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 1
  %rtx26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx26, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %eh_stack, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  call void @free_INSN_LIST_node(%struct.rtx_def* %20)
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 3
  %rttree = bitcast %union.rtunion_def* %arrayidx29 to %union.tree_node**
  %22 = load %union.tree_node*, %union.tree_node** %rttree, align 8
  %cmp30 = icmp eq %union.tree_node* %22, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %sw.bb.27
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3729, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.remove_unnecessary_notes, i32 0, i32 0)) #6
  unreachable

if.end.32:                                        ; preds = %sw.bb.27
  %23 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %block_stack, align 8
  %call33 = call %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def* %23, %struct.rtx_def* %24)
  store %struct.rtx_def* %call33, %struct.rtx_def** %block_stack, align 8
  br label %sw.epilog

sw.bb.34:                                         ; preds = %if.end
  %25 = load %struct.rtx_def*, %struct.rtx_def** %block_stack, align 8
  %cmp35 = icmp eq %struct.rtx_def* %25, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %sw.bb.34
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3736, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.remove_unnecessary_notes, i32 0, i32 0)) #6
  unreachable

if.end.37:                                        ; preds = %sw.bb.34
  %26 = load %struct.rtx_def*, %struct.rtx_def** %block_stack, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 3
  %rttree43 = bitcast %union.rtunion_def* %arrayidx42 to %union.tree_node**
  %28 = load %union.tree_node*, %union.tree_node** %rttree43, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 3
  %rttree46 = bitcast %union.rtunion_def* %arrayidx45 to %union.tree_node**
  %30 = load %union.tree_node*, %union.tree_node** %rttree46, align 8
  %cmp47 = icmp ne %union.tree_node* %28, %30
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.37
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3739, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.remove_unnecessary_notes, i32 0, i32 0)) #6
  unreachable

if.end.49:                                        ; preds = %if.end.37
  %31 = load %struct.rtx_def*, %struct.rtx_def** %block_stack, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %tmp, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %block_stack, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 1
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %block_stack, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  call void @free_INSN_LIST_node(%struct.rtx_def* %34)
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 1
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  store %struct.rtx_def* %36, %struct.rtx_def** %tmp, align 8
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc, %if.end.49
  %37 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %tobool57 = icmp ne %struct.rtx_def* %37, null
  br i1 %tobool57, label %for.body.58, label %for.end

for.body.58:                                      ; preds = %for.cond.56
  %38 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load59 = load i32, i32* %39, align 8
  %bf.clear60 = and i32 %bf.load59, 65535
  %idxprom = sext i32 %bf.clear60 to i64
  %arrayidx61 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom
  %40 = load i8, i8* %arrayidx61, align 1
  %conv = sext i8 %40 to i32
  %cmp62 = icmp eq i32 %conv, 105
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %for.body.58
  br label %for.end

if.end.65:                                        ; preds = %for.body.58
  %41 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %42 = bitcast %struct.rtx_def* %41 to i32*
  %bf.load66 = load i32, i32* %42, align 8
  %bf.clear67 = and i32 %bf.load66, 65535
  %cmp68 = icmp ne i32 %bf.clear67, 37
  br i1 %cmp68, label %if.then.70, label %if.end.71

if.then.70:                                       ; preds = %if.end.65
  br label %for.inc

if.end.71:                                        ; preds = %if.end.65
  %43 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld72 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %43, i32 0, i32 1
  %arrayidx73 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld72, i32 0, i64 4
  %rtint74 = bitcast %union.rtunion_def* %arrayidx73 to i32*
  %44 = load i32, i32* %rtint74, align 4
  %cmp75 = icmp eq i32 %44, -98
  br i1 %cmp75, label %if.then.77, label %if.else

if.then.77:                                       ; preds = %if.end.71
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 3
  %rttree80 = bitcast %union.rtunion_def* %arrayidx79 to %union.tree_node**
  %46 = load %union.tree_node*, %union.tree_node** %rttree80, align 8
  %call81 = call i32 @is_body_block(%union.tree_node* %46)
  %tobool82 = icmp ne i32 %call81, 0
  br i1 %tobool82, label %if.end.89, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then.77
  %47 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8
  %ignore_block = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %47, i32 0, i32 8
  %48 = load i1 (%union.tree_node*)*, i1 (%union.tree_node*)** %ignore_block, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld83 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx84 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld83, i32 0, i64 3
  %rttree85 = bitcast %union.rtunion_def* %arrayidx84 to %union.tree_node**
  %50 = load %union.tree_node*, %union.tree_node** %rttree85, align 8
  %call86 = call zeroext i1 %48(%union.tree_node* %50)
  br i1 %call86, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %land.lhs.true
  %51 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  call void @remove_insn(%struct.rtx_def* %51)
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @remove_insn(%struct.rtx_def* %52)
  br label %if.end.89

if.end.89:                                        ; preds = %if.then.88, %land.lhs.true, %if.then.77
  br label %for.end

if.else:                                          ; preds = %if.end.71
  %53 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld90 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx91 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld90, i32 0, i64 4
  %rtint92 = bitcast %union.rtunion_def* %arrayidx91 to i32*
  %54 = load i32, i32* %rtint92, align 4
  %cmp93 = icmp eq i32 %54, -97
  br i1 %cmp93, label %if.then.95, label %if.end.96

if.then.95:                                       ; preds = %if.else
  br label %for.end

if.end.96:                                        ; preds = %if.else
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96
  br label %for.inc

for.inc:                                          ; preds = %if.end.97, %if.then.70
  %55 = load %struct.rtx_def*, %struct.rtx_def** %tmp, align 8
  %fld98 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx99 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld98, i32 0, i64 1
  %rtx100 = bitcast %union.rtunion_def* %arrayidx99 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx100, align 8
  store %struct.rtx_def* %56, %struct.rtx_def** %tmp, align 8
  br label %for.cond.56

for.end:                                          ; preds = %if.then.95, %if.end.89, %if.then.64, %for.cond.56
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end, %if.end, %if.end.32, %if.end.23, %sw.bb.6, %sw.bb
  br label %for.inc.101

for.inc.101:                                      ; preds = %sw.epilog, %if.then
  %57 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %57, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end.102:                                      ; preds = %for.cond
  %58 = load %struct.rtx_def*, %struct.rtx_def** %block_stack, align 8
  %tobool103 = icmp ne %struct.rtx_def* %58, null
  br i1 %tobool103, label %if.then.105, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end.102
  %59 = load %struct.rtx_def*, %struct.rtx_def** %eh_stack, align 8
  %tobool104 = icmp ne %struct.rtx_def* %59, null
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %lor.lhs.false, %for.end.102
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 3789, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @__FUNCTION__.remove_unnecessary_notes, i32 0, i32 0)) #6
  unreachable

if.end.106:                                       ; preds = %lor.lhs.false
  ret void
}

declare %struct.rtx_def* @alloc_INSN_LIST(%struct.rtx_def*, %struct.rtx_def*) #1

declare void @free_INSN_LIST_node(%struct.rtx_def*) #1

declare i32 @is_body_block(%union.tree_node*) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %pattern, %struct.rtx_def* %before) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %before.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  store %struct.rtx_def* %before, %struct.rtx_def** %before.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %insn, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %2 = bitcast %struct.rtx_def* %1 to i32*
  %bf.load = load i32, i32* %2, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  %5 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %5, i32 0, i32 0
  %6 = load i32, i32* %num_elem, align 4
  %cmp1 = icmp slt i32 %3, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtvec4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtvec_def**
  %9 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %9, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %10 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %insn, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  call void @add_insn_before(%struct.rtx_def* %11, %struct.rtx_def* %12)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %14 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %call = call %struct.rtx_def* @make_insn_raw(%struct.rtx_def* %14)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  call void @add_insn_before(%struct.rtx_def* %15, %struct.rtx_def* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %17
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_jump_insn_before(%struct.rtx_def* %pattern, %struct.rtx_def* %before) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %before.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  store %struct.rtx_def* %before, %struct.rtx_def** %before.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %call = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %2, %struct.rtx_def* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %call1 = call %struct.rtx_def* @make_jump_insn_raw(%struct.rtx_def* %4)
  store %struct.rtx_def* %call1, %struct.rtx_def** %insn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  call void @add_insn_before(%struct.rtx_def* %5, %struct.rtx_def* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %7
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @make_jump_insn_raw(%struct.rtx_def* %pattern) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  %call = call %struct.rtx_def* @rtx_alloc(i32 33)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 6
  %2 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %2, i32* %rtint, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  store %struct.rtx_def* %4, %struct.rtx_def** %rtx, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 4
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  store i32 -1, i32* %rtint5, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 5
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx8, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 6
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx11, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 7
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx14, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %10
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_call_insn_before(%struct.rtx_def* %pattern, %struct.rtx_def* %before) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %before.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  store %struct.rtx_def* %before, %struct.rtx_def** %before.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  %call = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %2, %struct.rtx_def* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %call1 = call %struct.rtx_def* @make_call_insn_raw(%struct.rtx_def* %4)
  store %struct.rtx_def* %call1, %struct.rtx_def** %insn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  call void @add_insn_before(%struct.rtx_def* %5, %struct.rtx_def* %6)
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load2 = load i32, i32* %8, align 8
  %bf.clear3 = and i32 %bf.load2, -65536
  %bf.set = or i32 %bf.clear3, 34
  store i32 %bf.set, i32* %8, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %9
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @make_call_insn_raw(%struct.rtx_def* %pattern) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  %call = call %struct.rtx_def* @rtx_alloc(i32 34)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 6
  %2 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %2, i32* %rtint, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  store %struct.rtx_def* %4, %struct.rtx_def** %rtx, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 4
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  store i32 -1, i32* %rtint5, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 5
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx8, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld9 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld9, i32 0, i64 6
  %rtx11 = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx11, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 7
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx14, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %10
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_barrier_before(%struct.rtx_def* %before) #0 {
entry:
  %before.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %before, %struct.rtx_def** %before.addr, align 8
  %call = call %struct.rtx_def* @rtx_alloc(i32 35)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 6
  %2 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %2, i32* %rtint, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  call void @add_insn_before(%struct.rtx_def* %4, %struct.rtx_def* %5)
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %6
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_label_before(%struct.rtx_def* %label, %struct.rtx_def* %before) #0 {
entry:
  %label.addr = alloca %struct.rtx_def*, align 8
  %before.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  store %struct.rtx_def* %before, %struct.rtx_def** %before.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 3
  %3 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %3, i32 0, i32 6
  %4 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  store i32 %4, i32* %rtint3, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  call void @add_insn_before(%struct.rtx_def* %6, %struct.rtx_def* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  ret %struct.rtx_def* %8
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_note_before(i32 %subtype, %struct.rtx_def* %before) #0 {
entry:
  %subtype.addr = alloca i32, align 4
  %before.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store i32 %subtype, i32* %subtype.addr, align 4
  store %struct.rtx_def* %before, %struct.rtx_def** %before.addr, align 8
  %call = call %struct.rtx_def* @rtx_alloc(i32 37)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 6
  %2 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %2, i32* %rtint, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx2 to i8**
  store i8* null, i8** %rtstr, align 8
  %5 = load i32, i32* %subtype.addr, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 4
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  store i32 %5, i32* %rtint5, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  call void @add_insn_before(%struct.rtx_def* %7, %struct.rtx_def* %8)
  %9 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  ret %struct.rtx_def* %9
}

; Function Attrs: nounwind uwtable
define void @emit_insn_after_with_line_notes(%struct.rtx_def* %pattern, %struct.rtx_def* %after, %struct.rtx_def* %from) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %after.addr = alloca %struct.rtx_def*, align 8
  %from.addr = alloca %struct.rtx_def*, align 8
  %from_line = alloca %struct.rtx_def*, align 8
  %after_line = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  store %struct.rtx_def* %from, %struct.rtx_def** %from.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %from.addr, align 8
  %call = call %struct.rtx_def* @find_line_note(%struct.rtx_def* %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %from_line, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %call1 = call %struct.rtx_def* @find_line_note(%struct.rtx_def* %1)
  store %struct.rtx_def* %call1, %struct.rtx_def** %after_line, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %call2 = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %2, %struct.rtx_def* %3)
  store %struct.rtx_def* %call2, %struct.rtx_def** %insn, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %from_line, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %from_line, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx to i8**
  %6 = load i8*, i8** %rtstr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %from_line, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %8 = load i32, i32* %rtint, align 4
  %9 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %call5 = call %struct.rtx_def* @emit_line_note_after(i8* %6, i32 %8, %struct.rtx_def* %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.rtx_def*, %struct.rtx_def** %after_line, align 8
  %tobool6 = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.15

if.then.7:                                        ; preds = %if.end
  %11 = load %struct.rtx_def*, %struct.rtx_def** %after_line, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 3
  %rtstr10 = bitcast %union.rtunion_def* %arrayidx9 to i8**
  %12 = load i8*, i8** %rtstr10, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %after_line, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 4
  %rtint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %14 = load i32, i32* %rtint13, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call14 = call %struct.rtx_def* @emit_line_note_after(i8* %12, i32 %14, %struct.rtx_def* %15)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.7, %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_jump_insn_after(%struct.rtx_def* %pattern, %struct.rtx_def* %after) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %after.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %call = call %struct.rtx_def* @emit_insn_after(%struct.rtx_def* %2, %struct.rtx_def* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %call1 = call %struct.rtx_def* @make_jump_insn_raw(%struct.rtx_def* %4)
  store %struct.rtx_def* %call1, %struct.rtx_def** %insn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  call void @add_insn_after(%struct.rtx_def* %5, %struct.rtx_def* %6)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %7
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_label_after(%struct.rtx_def* %label, %struct.rtx_def* %after) #0 {
entry:
  %label.addr = alloca %struct.rtx_def*, align 8
  %after.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 3
  %3 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %3, i32 0, i32 6
  %4 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  store i32 %4, i32* %rtint3, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  call void @add_insn_after(%struct.rtx_def* %6, %struct.rtx_def* %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  ret %struct.rtx_def* %8
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_note_after(i32 %subtype, %struct.rtx_def* %after) #0 {
entry:
  %subtype.addr = alloca i32, align 4
  %after.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store i32 %subtype, i32* %subtype.addr, align 4
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %call = call %struct.rtx_def* @rtx_alloc(i32 37)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 6
  %2 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %2, i32* %rtint, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx2 to i8**
  store i8* null, i8** %rtstr, align 8
  %5 = load i32, i32* %subtype.addr, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 4
  %rtint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  store i32 %5, i32* %rtint5, align 4
  %7 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  call void @add_insn_after(%struct.rtx_def* %7, %struct.rtx_def* %8)
  %9 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  ret %struct.rtx_def* %9
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_insn(%struct.rtx_def* %pattern) #0 {
entry:
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 3
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %insn, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %5 = load i32, i32* %i, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx to %struct.rtvec_def**
  %7 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %7, i32 0, i32 0
  %8 = load i32, i32* %num_elem, align 4
  %cmp1 = icmp slt i32 %5, %8
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtvec4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtvec_def**
  %11 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec4, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %11, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %12 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx5, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %insn, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @add_insn(%struct.rtx_def* %13)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4
  %inc = add nsw i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.else:                                          ; preds = %entry
  %15 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %call = call %struct.rtx_def* @make_insn_raw(%struct.rtx_def* %15)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @add_insn(%struct.rtx_def* %16)
  br label %if.end

if.end:                                           ; preds = %if.else, %for.end
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  ret %struct.rtx_def* %17
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_insns(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %next, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  call void @add_insn(%struct.rtx_def* %3)
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %last, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  ret %struct.rtx_def* %6
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_insns_before(%struct.rtx_def* %insn, %struct.rtx_def* %before) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %before.addr = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %before, %struct.rtx_def** %before.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %last, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %2 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %next, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %before.addr, align 8
  call void @add_insn_before(%struct.rtx_def* %3, %struct.rtx_def* %4)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %last, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %insn.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  ret %struct.rtx_def* %7
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_insns_after(%struct.rtx_def* %first, %struct.rtx_def* %after) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %first.addr = alloca %struct.rtx_def*, align 8
  %after.addr = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %after_after = alloca %struct.rtx_def*, align 8
  %bb = alloca %struct.basic_block_def*, align 8
  store %struct.rtx_def* %first, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %after, %struct.rtx_def** %after.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 4142, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.emit_insns_after, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %tobool1 = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %2 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %tobool4 = icmp ne %struct.varray_head_tag* %3, null
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.3
  %4 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %5 = load i32, i32* %rtint, align 4
  %conv = zext i32 %5 to i64
  %6 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %6, i32 0, i32 0
  %7 = load i64, i64* %num_elements, align 8
  %cmp = icmp ult i64 %conv, %7
  br i1 %cmp, label %land.lhs.true.6, label %if.else

land.lhs.true.6:                                  ; preds = %land.lhs.true
  %8 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %9 = load i32, i32* %rtint9, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_for_insn, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %10, i32 0, i32 4
  %bb10 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx11 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb10, i32 0, i64 %idxprom
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx11, align 8
  store %struct.basic_block_def* %11, %struct.basic_block_def** %bb, align 8
  %tobool12 = icmp ne %struct.basic_block_def* %11, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %land.lhs.true.6
  %12 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %12, %struct.rtx_def** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %13 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %tobool16 = icmp ne %struct.rtx_def* %14, null
  br i1 %tobool16, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @set_block_for_insn(%struct.rtx_def* %15, %struct.basic_block_def* %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 2
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %last, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  call void @set_block_for_insn(%struct.rtx_def* %19, %struct.basic_block_def* %20)
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i32 0, i32 1
  %22 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %cmp20 = icmp eq %struct.rtx_def* %22, %23
  br i1 %cmp20, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %for.end
  %24 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8
  %end23 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 1
  store %struct.rtx_def* %24, %struct.rtx_def** %end23, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %for.end
  br label %if.end.36

if.else:                                          ; preds = %land.lhs.true.6, %land.lhs.true, %if.end.3
  %26 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %26, %struct.rtx_def** %last, align 8
  br label %for.cond.25

for.cond.25:                                      ; preds = %for.inc.31, %if.else
  %27 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld26 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld26, i32 0, i64 2
  %rtx28 = bitcast %union.rtunion_def* %arrayidx27 to %struct.rtx_def**
  %28 = load %struct.rtx_def*, %struct.rtx_def** %rtx28, align 8
  %tobool29 = icmp ne %struct.rtx_def* %28, null
  br i1 %tobool29, label %for.body.30, label %for.end.35

for.body.30:                                      ; preds = %for.cond.25
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.30
  %29 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 2
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  store %struct.rtx_def* %30, %struct.rtx_def** %last, align 8
  br label %for.cond.25

for.end.35:                                       ; preds = %for.cond.25
  br label %if.end.36

if.end.36:                                        ; preds = %for.end.35, %if.end.24
  %31 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 2
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %after_after, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 2
  %rtx42 = bitcast %union.rtunion_def* %arrayidx41 to %struct.rtx_def**
  store %struct.rtx_def* %33, %struct.rtx_def** %rtx42, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 1
  %rtx45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtx_def**
  store %struct.rtx_def* %35, %struct.rtx_def** %rtx45, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %after_after, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 2
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  store %struct.rtx_def* %37, %struct.rtx_def** %rtx48, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %after_after, align 8
  %tobool49 = icmp ne %struct.rtx_def* %39, null
  br i1 %tobool49, label %if.then.50, label %if.end.54

if.then.50:                                       ; preds = %if.end.36
  %40 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %41 = load %struct.rtx_def*, %struct.rtx_def** %after_after, align 8
  %fld51 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx52 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld51, i32 0, i64 1
  %rtx53 = bitcast %union.rtunion_def* %arrayidx52 to %struct.rtx_def**
  store %struct.rtx_def* %40, %struct.rtx_def** %rtx53, align 8
  br label %if.end.54

if.end.54:                                        ; preds = %if.then.50, %if.end.36
  %42 = load %struct.rtx_def*, %struct.rtx_def** %after.addr, align 8
  %43 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %43, i32 0, i32 3
  %44 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %44, i32 0, i32 3
  %45 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  %cmp55 = icmp eq %struct.rtx_def* %42, %45
  br i1 %cmp55, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.end.54
  %46 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %47 = load %struct.function*, %struct.function** @cfun, align 8
  %emit58 = getelementptr inbounds %struct.function, %struct.function* %47, i32 0, i32 3
  %48 = load %struct.emit_status*, %struct.emit_status** %emit58, align 8
  %x_last_insn59 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %48, i32 0, i32 3
  store %struct.rtx_def* %46, %struct.rtx_def** %x_last_insn59, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.end.54
  %49 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  store %struct.rtx_def* %49, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.60, %if.then.2
  %50 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %50
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %pattern) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %call = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %call1 = call %struct.rtx_def* @make_jump_insn_raw(%struct.rtx_def* %3)
  store %struct.rtx_def* %call1, %struct.rtx_def** %insn, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @add_insn(%struct.rtx_def* %4)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %6 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %6
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %pattern) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %pattern.addr = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %pattern, %struct.rtx_def** %pattern.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 24
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %call = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %2)
  store %struct.rtx_def* %call, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %pattern.addr, align 8
  %call1 = call %struct.rtx_def* @make_call_insn_raw(%struct.rtx_def* %3)
  store %struct.rtx_def* %call1, %struct.rtx_def** %insn, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  call void @add_insn(%struct.rtx_def* %4)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load2 = load i32, i32* %6, align 8
  %bf.clear3 = and i32 %bf.load2, -65536
  %bf.set = or i32 %bf.clear3, 34
  store i32 %bf.set, i32* %6, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %8
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_label(%struct.rtx_def* %label) #0 {
entry:
  %label.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %label, %struct.rtx_def** %label.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtint, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 3
  %3 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %3, i32 0, i32 6
  %4 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  %5 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  store i32 %4, i32* %rtint3, align 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  call void @add_insn(%struct.rtx_def* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %label.addr, align 8
  ret %struct.rtx_def* %7
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_barrier() #0 {
entry:
  %barrier = alloca %struct.rtx_def*, align 8
  %call = call %struct.rtx_def* @rtx_alloc(i32 35)
  store %struct.rtx_def* %call, %struct.rtx_def** %barrier, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 6
  %2 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %2, i32* %rtint, align 4
  %4 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  call void @add_insn(%struct.rtx_def* %4)
  %5 = load %struct.rtx_def*, %struct.rtx_def** %barrier, align 8
  ret %struct.rtx_def* %5
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_line_note(i8* %file, i32 %line) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load i8*, i8** %file.addr, align 8
  %1 = load i32, i32* %line.addr, align 4
  call void @set_file_and_line_for_stmt(i8* %0, i32 %1)
  %2 = load i8*, i8** %file.addr, align 8
  %3 = load i32, i32* %line.addr, align 4
  %call = call %struct.rtx_def* @emit_note(i8* %2, i32 %3)
  ret %struct.rtx_def* %call
}

declare void @set_file_and_line_for_stmt(i8*, i32) #1

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_note(i8* %file, i32 %line) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %note = alloca %struct.rtx_def*, align 8
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load i32, i32* %line.addr, align 4
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end.14

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %file.addr, align 8
  %tobool = icmp ne i8* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %2 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 3
  %3 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_filename = getelementptr inbounds %struct.emit_status, %struct.emit_status* %3, i32 0, i32 8
  %4 = load i8*, i8** %x_last_filename, align 8
  %tobool1 = icmp ne i8* %4, null
  br i1 %tobool1, label %land.lhs.true.2, label %if.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %5 = load i8*, i8** %file.addr, align 8
  %6 = load %struct.function*, %struct.function** @cfun, align 8
  %emit3 = getelementptr inbounds %struct.function, %struct.function* %6, i32 0, i32 3
  %7 = load %struct.emit_status*, %struct.emit_status** %emit3, align 8
  %x_last_filename4 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %7, i32 0, i32 8
  %8 = load i8*, i8** %x_last_filename4, align 8
  %call = call i32 @strcmp(i8* %5, i8* %8) #7
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end, label %land.lhs.true.6

land.lhs.true.6:                                  ; preds = %land.lhs.true.2
  %9 = load i32, i32* %line.addr, align 4
  %10 = load %struct.function*, %struct.function** @cfun, align 8
  %emit7 = getelementptr inbounds %struct.function, %struct.function* %10, i32 0, i32 3
  %11 = load %struct.emit_status*, %struct.emit_status** %emit7, align 8
  %x_last_linenum = getelementptr inbounds %struct.emit_status, %struct.emit_status* %11, i32 0, i32 7
  %12 = load i32, i32* %x_last_linenum, align 4
  %cmp8 = icmp eq i32 %9, %12
  br i1 %cmp8, label %if.then.9, label %if.end

if.then.9:                                        ; preds = %land.lhs.true.6
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.6, %land.lhs.true.2, %land.lhs.true, %if.then
  %13 = load i8*, i8** %file.addr, align 8
  %14 = load %struct.function*, %struct.function** @cfun, align 8
  %emit10 = getelementptr inbounds %struct.function, %struct.function* %14, i32 0, i32 3
  %15 = load %struct.emit_status*, %struct.emit_status** %emit10, align 8
  %x_last_filename11 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %15, i32 0, i32 8
  store i8* %13, i8** %x_last_filename11, align 8
  %16 = load i32, i32* %line.addr, align 4
  %17 = load %struct.function*, %struct.function** @cfun, align 8
  %emit12 = getelementptr inbounds %struct.function, %struct.function* %17, i32 0, i32 3
  %18 = load %struct.emit_status*, %struct.emit_status** %emit12, align 8
  %x_last_linenum13 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %18, i32 0, i32 7
  store i32 %16, i32* %x_last_linenum13, align 4
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %entry
  %19 = load i32, i32* @no_line_numbers, align 4
  %tobool15 = icmp ne i32 %19, 0
  br i1 %tobool15, label %land.lhs.true.16, label %if.end.20

land.lhs.true.16:                                 ; preds = %if.end.14
  %20 = load i32, i32* %line.addr, align 4
  %cmp17 = icmp sgt i32 %20, 0
  br i1 %cmp17, label %if.then.18, label %if.end.20

if.then.18:                                       ; preds = %land.lhs.true.16
  %21 = load %struct.function*, %struct.function** @cfun, align 8
  %emit19 = getelementptr inbounds %struct.function, %struct.function* %21, i32 0, i32 3
  %22 = load %struct.emit_status*, %struct.emit_status** %emit19, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %22, i32 0, i32 6
  %23 = load i32, i32* %x_cur_insn_uid, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %x_cur_insn_uid, align 4
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.16, %if.end.14
  %call21 = call %struct.rtx_def* @rtx_alloc(i32 37)
  store %struct.rtx_def* %call21, %struct.rtx_def** %note, align 8
  %24 = load %struct.function*, %struct.function** @cfun, align 8
  %emit22 = getelementptr inbounds %struct.function, %struct.function* %24, i32 0, i32 3
  %25 = load %struct.emit_status*, %struct.emit_status** %emit22, align 8
  %x_cur_insn_uid23 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %25, i32 0, i32 6
  %26 = load i32, i32* %x_cur_insn_uid23, align 4
  %inc24 = add nsw i32 %26, 1
  store i32 %inc24, i32* %x_cur_insn_uid23, align 4
  %27 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtint = bitcast %union.rtunion_def* %arrayidx to i32*
  store i32 %26, i32* %rtint, align 4
  %28 = load i8*, i8** %file.addr, align 8
  %29 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 3
  %rtstr = bitcast %union.rtunion_def* %arrayidx26 to i8**
  store i8* %28, i8** %rtstr, align 8
  %30 = load i32, i32* %line.addr, align 4
  %31 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 4
  %rtint29 = bitcast %union.rtunion_def* %arrayidx28 to i32*
  store i32 %30, i32* %rtint29, align 4
  %32 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  call void @add_insn(%struct.rtx_def* %32)
  %33 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.18, %if.then.9
  %34 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %34
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit_line_note_force(i8* %file, i32 %line) #0 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  store i32 %line, i32* %line.addr, align 4
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_linenum = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 7
  store i32 -1, i32* %x_last_linenum, align 4
  %2 = load i8*, i8** %file.addr, align 8
  %3 = load i32, i32* %line.addr, align 4
  %call = call %struct.rtx_def* @emit_line_note(i8* %2, i32 %3)
  ret %struct.rtx_def* %call
}

; Function Attrs: nounwind uwtable
define void @force_next_line_note() #0 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_last_linenum = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 7
  store i32 -1, i32* %x_last_linenum, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @set_unique_reg_note(%struct.rtx_def* %insn, i32 %kind, %struct.rtx_def* %datum) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %insn.addr = alloca %struct.rtx_def*, align 8
  %kind.addr = alloca i32, align 4
  %datum.addr = alloca %struct.rtx_def*, align 8
  %note = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store %struct.rtx_def* %datum, %struct.rtx_def** %datum.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %1 = load i32, i32* %kind.addr, align 4
  %call = call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %0, i32 %1, %struct.rtx_def* null)
  store %struct.rtx_def* %call, %struct.rtx_def** %note, align 8
  %2 = load i32, i32* %kind.addr, align 4
  switch i32 %2, label %sw.default [
    i32 4, label %sw.bb
    i32 3, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %4 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 39
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %sw.bb
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call1 = call i32 @multiple_sets(%struct.rtx_def* %6)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool2 = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 4335, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__FUNCTION__.set_unique_reg_note, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %sw.bb
  %8 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load5 = load i32, i32* %9, align 8
  %bf.clear6 = and i32 %bf.load5, 65535
  %cmp7 = icmp eq i32 %bf.clear6, 41
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  store %struct.rtx_def* null, %struct.rtx_def** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.9
  %10 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %tobool10 = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool10, label %if.then.11, label %if.end.15

if.then.11:                                       ; preds = %sw.epilog
  %11 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  store %struct.rtx_def* %11, %struct.rtx_def** %rtx14, align 8
  %13 = load %struct.rtx_def*, %struct.rtx_def** %note, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %retval
  br label %return

if.end.15:                                        ; preds = %sw.epilog
  %14 = load i32, i32* %kind.addr, align 4
  %15 = load %struct.rtx_def*, %struct.rtx_def** %datum.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 6
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  %call19 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 3, i32 %14, %struct.rtx_def* %15, %struct.rtx_def* %17)
  %18 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 6
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  store %struct.rtx_def* %call19, %struct.rtx_def** %rtx22, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 6
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  store %struct.rtx_def* %20, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.11, %if.then.8, %if.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %21
}

declare i32 @multiple_sets(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define i32 @classify_insn(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca %struct.rtx_def*, align 8
  %j = alloca i32, align 4
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 36
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 36, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load1 = load i32, i32* %3, align 8
  %bf.clear2 = and i32 %bf.load1, 65535
  %cmp3 = icmp eq i32 %bf.clear2, 50
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 34, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load6 = load i32, i32* %5, align 8
  %bf.clear7 = and i32 %bf.load6, 65535
  %cmp8 = icmp eq i32 %bf.clear7, 51
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.5
  store i32 33, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.5
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load11 = load i32, i32* %7, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 47
  br i1 %cmp13, label %if.then.14, label %if.end.25

if.then.14:                                       ; preds = %if.end.10
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp15 = icmp eq %struct.rtx_def* %9, %10
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %if.then.14
  store i32 33, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then.14
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 1
  %rtx19 = bitcast %union.rtunion_def* %arrayidx18 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx19, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load20 = load i32, i32* %13, align 8
  %bf.clear21 = and i32 %bf.load20, 65535
  %cmp22 = icmp eq i32 %bf.clear21, 50
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %if.else
  store i32 34, i32* %retval
  br label %return

if.else.24:                                       ; preds = %if.else
  store i32 32, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.end.10
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load26 = load i32, i32* %15, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 39
  br i1 %cmp28, label %if.then.29, label %if.end.89

if.then.29:                                       ; preds = %if.end.25
  %16 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtvec_def**
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i32 0, i32 0
  %18 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %18, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.29
  %19 = load i32, i32* %j, align 4
  %cmp32 = icmp sge i32 %19, 0
  br i1 %cmp32, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %j, align 4
  %idxprom = sext i32 %20 to i64
  %21 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtvec35 = bitcast %union.rtunion_def* %arrayidx34 to %struct.rtvec_def**
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec35, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx36, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load37 = load i32, i32* %24, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 50
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %for.body
  store i32 34, i32* %retval
  br label %return

if.else.41:                                       ; preds = %for.body
  %25 = load i32, i32* %j, align 4
  %idxprom42 = sext i32 %25 to i64
  %26 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld43 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx44 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld43, i32 0, i64 0
  %rtvec45 = bitcast %union.rtunion_def* %arrayidx44 to %struct.rtvec_def**
  %27 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec45, align 8
  %elem46 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %27, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem46, i32 0, i64 %idxprom42
  %28 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx47, align 8
  %29 = bitcast %struct.rtx_def* %28 to i32*
  %bf.load48 = load i32, i32* %29, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 47
  br i1 %cmp50, label %land.lhs.true, label %if.else.62

land.lhs.true:                                    ; preds = %if.else.41
  %30 = load i32, i32* %j, align 4
  %idxprom51 = sext i32 %30 to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld52 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx53 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld52, i32 0, i64 0
  %rtvec54 = bitcast %union.rtunion_def* %arrayidx53 to %struct.rtvec_def**
  %32 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec54, align 8
  %elem55 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %32, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem55, i32 0, i64 %idxprom51
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx56, align 8
  %fld57 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx58 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld57, i32 0, i64 0
  %rtx59 = bitcast %union.rtunion_def* %arrayidx58 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx59, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp60 = icmp eq %struct.rtx_def* %34, %35
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %land.lhs.true
  store i32 33, i32* %retval
  br label %return

if.else.62:                                       ; preds = %land.lhs.true, %if.else.41
  %36 = load i32, i32* %j, align 4
  %idxprom63 = sext i32 %36 to i64
  %37 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld64 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %37, i32 0, i32 1
  %arrayidx65 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld64, i32 0, i64 0
  %rtvec66 = bitcast %union.rtunion_def* %arrayidx65 to %struct.rtvec_def**
  %38 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec66, align 8
  %elem67 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %38, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem67, i32 0, i64 %idxprom63
  %39 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx68, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load69 = load i32, i32* %40, align 8
  %bf.clear70 = and i32 %bf.load69, 65535
  %cmp71 = icmp eq i32 %bf.clear70, 47
  br i1 %cmp71, label %land.lhs.true.72, label %if.end.86

land.lhs.true.72:                                 ; preds = %if.else.62
  %41 = load i32, i32* %j, align 4
  %idxprom73 = sext i32 %41 to i64
  %42 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %42, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 0
  %rtvec76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtvec_def**
  %43 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec76, align 8
  %elem77 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %43, i32 0, i32 1
  %arrayidx78 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem77, i32 0, i64 %idxprom73
  %44 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx78, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %44, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 1
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  %45 = load %struct.rtx_def*, %struct.rtx_def** %rtx81, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load82 = load i32, i32* %46, align 8
  %bf.clear83 = and i32 %bf.load82, 65535
  %cmp84 = icmp eq i32 %bf.clear83, 50
  br i1 %cmp84, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %land.lhs.true.72
  store i32 34, i32* %retval
  br label %return

if.end.86:                                        ; preds = %land.lhs.true.72, %if.else.62
  br label %if.end.87

if.end.87:                                        ; preds = %if.end.86
  br label %if.end.88

if.end.88:                                        ; preds = %if.end.87
  br label %for.inc

for.inc:                                          ; preds = %if.end.88
  %47 = load i32, i32* %j, align 4
  %dec = add nsw i32 %47, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.89

if.end.89:                                        ; preds = %for.end, %if.end.25
  store i32 32, i32* %retval
  br label %return

return:                                           ; preds = %if.end.89, %if.then.85, %if.then.61, %if.then.40, %if.else.24, %if.then.23, %if.then.16, %if.then.9, %if.then.4, %if.then
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @emit(%struct.rtx_def* %x) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %x.addr = alloca %struct.rtx_def*, align 8
  %code = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %x, %struct.rtx_def** %x.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call = call i32 @classify_insn(%struct.rtx_def* %0)
  store i32 %call, i32* %code, align 4
  %1 = load i32, i32* %code, align 4
  %cmp = icmp eq i32 %1, 36
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call1 = call %struct.rtx_def* @emit_label(%struct.rtx_def* %2)
  store %struct.rtx_def* %call1, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, i32* %code, align 4
  %cmp2 = icmp eq i32 %3, 32
  br i1 %cmp2, label %if.then.3, label %if.else.5

if.then.3:                                        ; preds = %if.else
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call4 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %4)
  store %struct.rtx_def* %call4, %struct.rtx_def** %retval
  br label %return

if.else.5:                                        ; preds = %if.else
  %5 = load i32, i32* %code, align 4
  %cmp6 = icmp eq i32 %5, 33
  br i1 %cmp6, label %if.then.7, label %if.else.13

if.then.7:                                        ; preds = %if.else.5
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call8 = call %struct.rtx_def* @emit_jump_insn(%struct.rtx_def* %6)
  store %struct.rtx_def* %call8, %struct.rtx_def** %insn, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call9 = call i32 @any_uncondjump_p(%struct.rtx_def* %7)
  %tobool = icmp ne i32 %call9, 0
  br i1 %tobool, label %if.then.11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.7
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp10 = icmp eq i32 %bf.clear, 51
  br i1 %cmp10, label %if.then.11, label %if.end

if.then.11:                                       ; preds = %lor.lhs.false, %if.then.7
  %call12 = call %struct.rtx_def* @emit_barrier()
  store %struct.rtx_def* %call12, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %retval
  br label %return

if.else.13:                                       ; preds = %if.else.5
  %11 = load i32, i32* %code, align 4
  %cmp14 = icmp eq i32 %11, 34
  br i1 %cmp14, label %if.then.15, label %if.else.17

if.then.15:                                       ; preds = %if.else.13
  %12 = load %struct.rtx_def*, %struct.rtx_def** %x.addr, align 8
  %call16 = call %struct.rtx_def* @emit_call_insn(%struct.rtx_def* %12)
  store %struct.rtx_def* %call16, %struct.rtx_def** %retval
  br label %return

if.else.17:                                       ; preds = %if.else.13
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 4420, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @__FUNCTION__.emit, i32 0, i32 0)) #6
  unreachable

return:                                           ; preds = %if.then.15, %if.end, %if.then.11, %if.then.3, %if.then
  %13 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %13
}

declare i32 @any_uncondjump_p(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define void @start_sequence() #0 {
entry:
  %tem = alloca %struct.sequence_stack*, align 8
  %call = call noalias i8* @xmalloc(i64 32)
  %0 = bitcast i8* %call to %struct.sequence_stack*
  store %struct.sequence_stack* %0, %struct.sequence_stack** %tem, align 8
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 3
  %2 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %sequence_stack = getelementptr inbounds %struct.emit_status, %struct.emit_status* %2, i32 0, i32 5
  %3 = load %struct.sequence_stack*, %struct.sequence_stack** %sequence_stack, align 8
  %4 = load %struct.sequence_stack*, %struct.sequence_stack** %tem, align 8
  %next = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %4, i32 0, i32 3
  store %struct.sequence_stack* %3, %struct.sequence_stack** %next, align 8
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 3
  %6 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %6, i32 0, i32 2
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn, align 8
  %8 = load %struct.sequence_stack*, %struct.sequence_stack** %tem, align 8
  %first = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %8, i32 0, i32 0
  store %struct.rtx_def* %7, %struct.rtx_def** %first, align 8
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %emit2 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 3
  %10 = load %struct.emit_status*, %struct.emit_status** %emit2, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %10, i32 0, i32 3
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  %12 = load %struct.sequence_stack*, %struct.sequence_stack** %tem, align 8
  %last = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %12, i32 0, i32 1
  store %struct.rtx_def* %11, %struct.rtx_def** %last, align 8
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %emit3 = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 3
  %14 = load %struct.emit_status*, %struct.emit_status** %emit3, align 8
  %sequence_rtl_expr = getelementptr inbounds %struct.emit_status, %struct.emit_status* %14, i32 0, i32 4
  %15 = load %union.tree_node*, %union.tree_node** %sequence_rtl_expr, align 8
  %16 = load %struct.sequence_stack*, %struct.sequence_stack** %tem, align 8
  %sequence_rtl_expr4 = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %16, i32 0, i32 2
  store %union.tree_node* %15, %union.tree_node** %sequence_rtl_expr4, align 8
  %17 = load %struct.sequence_stack*, %struct.sequence_stack** %tem, align 8
  %18 = load %struct.function*, %struct.function** @cfun, align 8
  %emit5 = getelementptr inbounds %struct.function, %struct.function* %18, i32 0, i32 3
  %19 = load %struct.emit_status*, %struct.emit_status** %emit5, align 8
  %sequence_stack6 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %19, i32 0, i32 5
  store %struct.sequence_stack* %17, %struct.sequence_stack** %sequence_stack6, align 8
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %emit7 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 3
  %21 = load %struct.emit_status*, %struct.emit_status** %emit7, align 8
  %x_first_insn8 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %21, i32 0, i32 2
  store %struct.rtx_def* null, %struct.rtx_def** %x_first_insn8, align 8
  %22 = load %struct.function*, %struct.function** @cfun, align 8
  %emit9 = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 3
  %23 = load %struct.emit_status*, %struct.emit_status** %emit9, align 8
  %x_last_insn10 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %23, i32 0, i32 3
  store %struct.rtx_def* null, %struct.rtx_def** %x_last_insn10, align 8
  ret void
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define void @start_sequence_for_rtl_expr(%union.tree_node* %t) #0 {
entry:
  %t.addr = alloca %union.tree_node*, align 8
  store %union.tree_node* %t, %union.tree_node** %t.addr, align 8
  call void @start_sequence()
  %0 = load %union.tree_node*, %union.tree_node** %t.addr, align 8
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 3
  %2 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %sequence_rtl_expr = getelementptr inbounds %struct.emit_status, %struct.emit_status* %2, i32 0, i32 4
  store %union.tree_node* %0, %union.tree_node** %sequence_rtl_expr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_to_sequence(%struct.rtx_def* %first) #0 {
entry:
  %first.addr = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %first, %struct.rtx_def** %first.addr, align 8
  call void @start_sequence()
  %0 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %0, %struct.rtx_def** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %tobool = icmp ne %struct.rtx_def* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %3 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %tobool1 = icmp ne %struct.rtx_def* %3, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %tobool1, %land.rhs ]
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 2
  %rtx4 = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx4, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %last, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 3
  %9 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %9, i32 0, i32 2
  store %struct.rtx_def* %7, %struct.rtx_def** %x_first_insn, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %11 = load %struct.function*, %struct.function** @cfun, align 8
  %emit5 = getelementptr inbounds %struct.function, %struct.function* %11, i32 0, i32 3
  %12 = load %struct.emit_status*, %struct.emit_status** %emit5, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %12, i32 0, i32 3
  store %struct.rtx_def* %10, %struct.rtx_def** %x_last_insn, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_to_full_sequence(%struct.rtx_def* %first, %struct.rtx_def* %last) #0 {
entry:
  %first.addr = alloca %struct.rtx_def*, align 8
  %last.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %first, %struct.rtx_def** %first.addr, align 8
  store %struct.rtx_def* %last, %struct.rtx_def** %last.addr, align 8
  call void @start_sequence()
  %0 = load %struct.rtx_def*, %struct.rtx_def** %first.addr, align 8
  %1 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %1, i32 0, i32 3
  %2 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %2, i32 0, i32 2
  store %struct.rtx_def* %0, %struct.rtx_def** %x_first_insn, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 3
  %5 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %5, i32 0, i32 3
  store %struct.rtx_def* %3, %struct.rtx_def** %x_last_insn, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %tobool = icmp ne %struct.rtx_def* %6, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %last.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %tobool2 = icmp ne %struct.rtx_def* %8, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 4491, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.push_to_full_sequence, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @push_topmost_sequence() #0 {
entry:
  %stack = alloca %struct.sequence_stack*, align 8
  %top = alloca %struct.sequence_stack*, align 8
  store %struct.sequence_stack* null, %struct.sequence_stack** %top, align 8
  call void @start_sequence()
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %sequence_stack = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 5
  %2 = load %struct.sequence_stack*, %struct.sequence_stack** %sequence_stack, align 8
  store %struct.sequence_stack* %2, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %tobool = icmp ne %struct.sequence_stack* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  store %struct.sequence_stack* %4, %struct.sequence_stack** %top, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %next = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %5, i32 0, i32 3
  %6 = load %struct.sequence_stack*, %struct.sequence_stack** %next, align 8
  store %struct.sequence_stack* %6, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.sequence_stack*, %struct.sequence_stack** %top, align 8
  %first = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %7, i32 0, i32 0
  %8 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 3
  %10 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %10, i32 0, i32 2
  store %struct.rtx_def* %8, %struct.rtx_def** %x_first_insn, align 8
  %11 = load %struct.sequence_stack*, %struct.sequence_stack** %top, align 8
  %last = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %11, i32 0, i32 1
  %12 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %emit2 = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 3
  %14 = load %struct.emit_status*, %struct.emit_status** %emit2, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %14, i32 0, i32 3
  store %struct.rtx_def* %12, %struct.rtx_def** %x_last_insn, align 8
  %15 = load %struct.sequence_stack*, %struct.sequence_stack** %top, align 8
  %sequence_rtl_expr = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %15, i32 0, i32 2
  %16 = load %union.tree_node*, %union.tree_node** %sequence_rtl_expr, align 8
  %17 = load %struct.function*, %struct.function** @cfun, align 8
  %emit3 = getelementptr inbounds %struct.function, %struct.function* %17, i32 0, i32 3
  %18 = load %struct.emit_status*, %struct.emit_status** %emit3, align 8
  %sequence_rtl_expr4 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %18, i32 0, i32 4
  store %union.tree_node* %16, %union.tree_node** %sequence_rtl_expr4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @pop_topmost_sequence() #0 {
entry:
  %stack = alloca %struct.sequence_stack*, align 8
  %top = alloca %struct.sequence_stack*, align 8
  store %struct.sequence_stack* null, %struct.sequence_stack** %top, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %sequence_stack = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 5
  %2 = load %struct.sequence_stack*, %struct.sequence_stack** %sequence_stack, align 8
  store %struct.sequence_stack* %2, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %tobool = icmp ne %struct.sequence_stack* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  store %struct.sequence_stack* %4, %struct.sequence_stack** %top, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.sequence_stack*, %struct.sequence_stack** %stack, align 8
  %next = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %5, i32 0, i32 3
  %6 = load %struct.sequence_stack*, %struct.sequence_stack** %next, align 8
  store %struct.sequence_stack* %6, %struct.sequence_stack** %stack, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %7, i32 0, i32 3
  %8 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %8, i32 0, i32 2
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn, align 8
  %10 = load %struct.sequence_stack*, %struct.sequence_stack** %top, align 8
  %first = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %10, i32 0, i32 0
  store %struct.rtx_def* %9, %struct.rtx_def** %first, align 8
  %11 = load %struct.function*, %struct.function** @cfun, align 8
  %emit2 = getelementptr inbounds %struct.function, %struct.function* %11, i32 0, i32 3
  %12 = load %struct.emit_status*, %struct.emit_status** %emit2, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %12, i32 0, i32 3
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  %14 = load %struct.sequence_stack*, %struct.sequence_stack** %top, align 8
  %last = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %14, i32 0, i32 1
  store %struct.rtx_def* %13, %struct.rtx_def** %last, align 8
  call void @end_sequence()
  ret void
}

; Function Attrs: nounwind uwtable
define void @end_sequence() #0 {
entry:
  %tem = alloca %struct.sequence_stack*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %sequence_stack = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 5
  %2 = load %struct.sequence_stack*, %struct.sequence_stack** %sequence_stack, align 8
  store %struct.sequence_stack* %2, %struct.sequence_stack** %tem, align 8
  %3 = load %struct.sequence_stack*, %struct.sequence_stack** %tem, align 8
  %first = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 3
  %6 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %6, i32 0, i32 2
  store %struct.rtx_def* %4, %struct.rtx_def** %x_first_insn, align 8
  %7 = load %struct.sequence_stack*, %struct.sequence_stack** %tem, align 8
  %last = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %7, i32 0, i32 1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %emit2 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 3
  %10 = load %struct.emit_status*, %struct.emit_status** %emit2, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %10, i32 0, i32 3
  store %struct.rtx_def* %8, %struct.rtx_def** %x_last_insn, align 8
  %11 = load %struct.sequence_stack*, %struct.sequence_stack** %tem, align 8
  %sequence_rtl_expr = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %11, i32 0, i32 2
  %12 = load %union.tree_node*, %union.tree_node** %sequence_rtl_expr, align 8
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %emit3 = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 3
  %14 = load %struct.emit_status*, %struct.emit_status** %emit3, align 8
  %sequence_rtl_expr4 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %14, i32 0, i32 4
  store %union.tree_node* %12, %union.tree_node** %sequence_rtl_expr4, align 8
  %15 = load %struct.sequence_stack*, %struct.sequence_stack** %tem, align 8
  %next = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %15, i32 0, i32 3
  %16 = load %struct.sequence_stack*, %struct.sequence_stack** %next, align 8
  %17 = load %struct.function*, %struct.function** @cfun, align 8
  %emit5 = getelementptr inbounds %struct.function, %struct.function* %17, i32 0, i32 3
  %18 = load %struct.emit_status*, %struct.emit_status** %emit5, align 8
  %sequence_stack6 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %18, i32 0, i32 5
  store %struct.sequence_stack* %16, %struct.sequence_stack** %sequence_stack6, align 8
  %19 = load %struct.sequence_stack*, %struct.sequence_stack** %tem, align 8
  %20 = bitcast %struct.sequence_stack* %19 to i8*
  call void @free(i8* %20) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @end_full_sequence(%struct.rtx_def** %first, %struct.rtx_def** %last) #0 {
entry:
  %first.addr = alloca %struct.rtx_def**, align 8
  %last.addr = alloca %struct.rtx_def**, align 8
  store %struct.rtx_def** %first, %struct.rtx_def*** %first.addr, align 8
  store %struct.rtx_def** %last, %struct.rtx_def*** %last.addr, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 2
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn, align 8
  %3 = load %struct.rtx_def**, %struct.rtx_def*** %first.addr, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %3, align 8
  %4 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %4, i32 0, i32 3
  %5 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %5, i32 0, i32 3
  %6 = load %struct.rtx_def*, %struct.rtx_def** %x_last_insn, align 8
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %last.addr, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %7, align 8
  call void @end_sequence()
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @in_sequence_p() #0 {
entry:
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %sequence_stack = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 5
  %2 = load %struct.sequence_stack*, %struct.sequence_stack** %sequence_stack, align 8
  %cmp = icmp ne %struct.sequence_stack* %2, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @gen_sequence() #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %result = alloca %struct.rtx_def*, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  store i32 0, i32* %len, align 4
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %0, i32 0, i32 3
  %1 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 2
  %2 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %tem, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %tobool = icmp ne %struct.rtx_def* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %len, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 2
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %tem, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %len, align 4
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.end
  %8 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %8, i32 0, i32 3
  %9 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_first_insn2 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %9, i32 0, i32 2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn2, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.lshr = lshr i32 %bf.load, 31
  %tobool3 = icmp ne i32 %bf.lshr, 0
  br i1 %tobool3, label %if.end, label %land.lhs.true.4

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %12 = load %struct.function*, %struct.function** @cfun, align 8
  %emit5 = getelementptr inbounds %struct.function, %struct.function* %12, i32 0, i32 3
  %13 = load %struct.emit_status*, %struct.emit_status** %emit5, align 8
  %x_first_insn6 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %13, i32 0, i32 2
  %14 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn6, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load7 = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load7, 65535
  %cmp8 = icmp eq i32 %bf.clear, 32
  br i1 %cmp8, label %land.lhs.true.9, label %if.end

land.lhs.true.9:                                  ; preds = %land.lhs.true.4
  %16 = load %struct.function*, %struct.function** @cfun, align 8
  %emit10 = getelementptr inbounds %struct.function, %struct.function* %16, i32 0, i32 3
  %17 = load %struct.emit_status*, %struct.emit_status** %emit10, align 8
  %x_first_insn11 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %17, i32 0, i32 2
  %18 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn11, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 6
  %rtx14 = bitcast %union.rtunion_def* %arrayidx13 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx14, align 8
  %cmp15 = icmp eq %struct.rtx_def* %19, null
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.9
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %emit16 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 3
  %21 = load %struct.emit_status*, %struct.emit_status** %emit16, align 8
  %x_first_insn17 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %21, i32 0, i32 2
  %22 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.9, %land.lhs.true.4, %land.lhs.true, %for.end
  %24 = load i32, i32* %len, align 4
  %call = call %struct.rtvec_def* @rtvec_alloc(i32 %24)
  %call21 = call %struct.rtx_def* @gen_rtx_fmt_E(i32 24, i32 0, %struct.rtvec_def* %call)
  store %struct.rtx_def* %call21, %struct.rtx_def** %result, align 8
  store i32 0, i32* %i, align 4
  %25 = load %struct.function*, %struct.function** @cfun, align 8
  %emit22 = getelementptr inbounds %struct.function, %struct.function* %25, i32 0, i32 3
  %26 = load %struct.emit_status*, %struct.emit_status** %emit22, align 8
  %x_first_insn23 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %26, i32 0, i32 2
  %27 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn23, align 8
  store %struct.rtx_def* %27, %struct.rtx_def** %tem, align 8
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.30, %if.end
  %28 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %tobool25 = icmp ne %struct.rtx_def* %28, null
  br i1 %tobool25, label %for.body.26, label %for.end.35

for.body.26:                                      ; preds = %for.cond.24
  %29 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %30 = load i32, i32* %i, align 4
  %idxprom = sext i32 %30 to i64
  %31 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtvec_def**
  %32 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %32, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  store %struct.rtx_def* %29, %struct.rtx_def** %arrayidx29, align 8
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.body.26
  %33 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 2
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %tem, align 8
  %35 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %35, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.24

for.end.35:                                       ; preds = %for.cond.24
  %36 = load %struct.rtx_def*, %struct.rtx_def** %result, align 8
  store %struct.rtx_def* %36, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %for.end.35, %if.then
  %37 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %37
}

declare %struct.rtx_def* @gen_rtx_fmt_E(i32, i32, %struct.rtvec_def*) #1

; Function Attrs: nounwind uwtable
define void @init_virtual_regs(%struct.emit_status* %es) #0 {
entry:
  %es.addr = alloca %struct.emit_status*, align 8
  %ptr = alloca %struct.rtx_def**, align 8
  store %struct.emit_status* %es, %struct.emit_status** %es.addr, align 8
  %0 = load %struct.emit_status*, %struct.emit_status** %es.addr, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %0, i32 0, i32 12
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  store %struct.rtx_def** %1, %struct.rtx_def*** %ptr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %3 = load %struct.rtx_def**, %struct.rtx_def*** %ptr, align 8
  %arrayidx = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %3, i64 53
  store %struct.rtx_def* %2, %struct.rtx_def** %arrayidx, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %5 = load %struct.rtx_def**, %struct.rtx_def*** %ptr, align 8
  %arrayidx1 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %5, i64 54
  store %struct.rtx_def* %4, %struct.rtx_def** %arrayidx1, align 8
  %6 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 8), align 8
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %ptr, align 8
  %arrayidx2 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %7, i64 55
  store %struct.rtx_def* %6, %struct.rtx_def** %arrayidx2, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  %9 = load %struct.rtx_def**, %struct.rtx_def*** %ptr, align 8
  %arrayidx3 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %9, i64 56
  store %struct.rtx_def* %8, %struct.rtx_def** %arrayidx3, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 10), align 8
  %11 = load %struct.rtx_def**, %struct.rtx_def*** %ptr, align 8
  %arrayidx4 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %11, i64 57
  store %struct.rtx_def* %10, %struct.rtx_def** %arrayidx4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @copy_insn_1(%struct.rtx_def* %orig) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %orig.addr = alloca %struct.rtx_def*, align 8
  %copy = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %code = alloca i32, align 4
  %format_ptr = alloca i8*, align 8
  store %struct.rtx_def* %orig, %struct.rtx_def** %orig.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  store i32 %bf.clear, i32* %code, align 4
  %2 = load i32, i32* %code, align 4
  switch i32 %2, label %sw.default [
    i32 61, label %sw.bb
    i32 71, label %sw.bb
    i32 54, label %sw.bb
    i32 55, label %sw.bb
    i32 56, label %sw.bb
    i32 68, label %sw.bb
    i32 36, label %sw.bb
    i32 59, label %sw.bb
    i32 69, label %sw.bb
    i32 70, label %sw.bb
    i32 62, label %sw.bb.1
    i32 58, label %sw.bb.5
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %retval
  br label %return

sw.bb.1:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.1
  %4 = load i32, i32* %i, align 4
  %5 = load i32, i32* @copy_insn_n_scratches, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* @copy_insn_scratch_in, i32 0, i64 %idxprom
  %7 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %cmp2 = icmp eq %struct.rtx_def* %7, %8
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %9 to i64
  %arrayidx4 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* @copy_insn_scratch_out, i32 0, i64 %idxprom3
  %10 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %sw.epilog

sw.bb.5:                                          ; preds = %entry
  %12 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %14 = bitcast %struct.rtx_def* %13 to i32*
  %bf.load7 = load i32, i32* %14, align 8
  %bf.clear8 = and i32 %bf.load7, 65535
  %cmp9 = icmp eq i32 %bf.clear8, 75
  br i1 %cmp9, label %land.lhs.true, label %if.end.30

land.lhs.true:                                    ; preds = %sw.bb.5
  %15 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %fld13 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld13, i32 0, i64 0
  %rtx15 = bitcast %union.rtunion_def* %arrayidx14 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx15, align 8
  %18 = bitcast %struct.rtx_def* %17 to i32*
  %bf.load16 = load i32, i32* %18, align 8
  %bf.clear17 = and i32 %bf.load16, 65535
  %cmp18 = icmp eq i32 %bf.clear17, 68
  br i1 %cmp18, label %land.lhs.true.19, label %if.end.30

land.lhs.true.19:                                 ; preds = %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld20 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld20, i32 0, i64 0
  %rtx22 = bitcast %union.rtunion_def* %arrayidx21 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx22, align 8
  %fld23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld23, i32 0, i64 1
  %rtx25 = bitcast %union.rtunion_def* %arrayidx24 to %struct.rtx_def**
  %21 = load %struct.rtx_def*, %struct.rtx_def** %rtx25, align 8
  %22 = bitcast %struct.rtx_def* %21 to i32*
  %bf.load26 = load i32, i32* %22, align 8
  %bf.clear27 = and i32 %bf.load26, 65535
  %cmp28 = icmp eq i32 %bf.clear27, 54
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %land.lhs.true.19
  %23 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %retval
  br label %return

if.end.30:                                        ; preds = %land.lhs.true.19, %land.lhs.true, %sw.bb.5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.end.30, %for.end
  %24 = load i32, i32* %code, align 4
  %call = call %struct.rtx_def* @rtx_alloc(i32 %24)
  store %struct.rtx_def* %call, %struct.rtx_def** %copy, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %26 = bitcast %struct.rtx_def* %25 to i8*
  %27 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %28 = bitcast %struct.rtx_def* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %26, i8* %28, i64 8, i32 8, i1 false)
  %29 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load31 = load i32, i32* %30, align 8
  %bf.clear32 = and i32 %bf.load31, -536870913
  store i32 %bf.clear32, i32* %30, align 8
  %31 = load i32, i32* %code, align 4
  %idxprom33 = sext i32 %31 to i64
  %arrayidx34 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom33
  %32 = load i8, i8* %arrayidx34, align 1
  %conv = sext i8 %32 to i32
  %cmp35 = icmp eq i32 %conv, 105
  br i1 %cmp35, label %if.then.37, label %if.end.44

if.then.37:                                       ; preds = %sw.epilog
  %33 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load38 = load i32, i32* %34, align 8
  %bf.clear39 = and i32 %bf.load38, -16777217
  store i32 %bf.clear39, i32* %34, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %36 = bitcast %struct.rtx_def* %35 to i32*
  %bf.load40 = load i32, i32* %36, align 8
  %bf.clear41 = and i32 %bf.load40, -33554433
  store i32 %bf.clear41, i32* %36, align 8
  %37 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load42 = load i32, i32* %38, align 8
  %bf.clear43 = and i32 %bf.load42, 2147483647
  store i32 %bf.clear43, i32* %38, align 8
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.37, %sw.epilog
  %39 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %40 = bitcast %struct.rtx_def* %39 to i32*
  %bf.load45 = load i32, i32* %40, align 8
  %bf.clear46 = and i32 %bf.load45, 65535
  %idxprom47 = sext i32 %bf.clear46 to i64
  %arrayidx48 = getelementptr inbounds [153 x i8*], [153 x i8*]* @rtx_format, i32 0, i64 %idxprom47
  %41 = load i8*, i8** %arrayidx48, align 8
  store i8* %41, i8** %format_ptr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.49

for.cond.49:                                      ; preds = %for.inc.154, %if.end.44
  %42 = load i32, i32* %i, align 4
  %43 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load50 = load i32, i32* %44, align 8
  %bf.clear51 = and i32 %bf.load50, 65535
  %idxprom52 = sext i32 %bf.clear51 to i64
  %arrayidx53 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_length, i32 0, i64 %idxprom52
  %45 = load i8, i8* %arrayidx53, align 1
  %conv54 = zext i8 %45 to i32
  %cmp55 = icmp slt i32 %42, %conv54
  br i1 %cmp55, label %for.body.57, label %for.end.156

for.body.57:                                      ; preds = %for.cond.49
  %46 = load i32, i32* %i, align 4
  %idxprom58 = sext i32 %46 to i64
  %47 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %47, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 %idxprom58
  %48 = load i32, i32* %i, align 4
  %idxprom61 = sext i32 %48 to i64
  %49 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld62 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld62, i32 0, i64 %idxprom61
  %50 = bitcast %union.rtunion_def* %arrayidx60 to i8*
  %51 = bitcast %union.rtunion_def* %arrayidx63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %50, i8* %51, i64 8, i32 8, i1 false)
  %52 = load i8*, i8** %format_ptr, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr, i8** %format_ptr, align 8
  %53 = load i8, i8* %52, align 1
  %conv64 = sext i8 %53 to i32
  switch i32 %conv64, label %sw.default.152 [
    i32 101, label %sw.bb.65
    i32 69, label %sw.bb.83
    i32 86, label %sw.bb.83
    i32 116, label %sw.bb.151
    i32 119, label %sw.bb.151
    i32 105, label %sw.bb.151
    i32 115, label %sw.bb.151
    i32 83, label %sw.bb.151
    i32 117, label %sw.bb.151
    i32 48, label %sw.bb.151
  ]

sw.bb.65:                                         ; preds = %for.body.57
  %54 = load i32, i32* %i, align 4
  %idxprom66 = sext i32 %54 to i64
  %55 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld67 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx68 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld67, i32 0, i64 %idxprom66
  %rtx69 = bitcast %union.rtunion_def* %arrayidx68 to %struct.rtx_def**
  %56 = load %struct.rtx_def*, %struct.rtx_def** %rtx69, align 8
  %cmp70 = icmp ne %struct.rtx_def* %56, null
  br i1 %cmp70, label %if.then.72, label %if.end.82

if.then.72:                                       ; preds = %sw.bb.65
  %57 = load i32, i32* %i, align 4
  %idxprom73 = sext i32 %57 to i64
  %58 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld74 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx75 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld74, i32 0, i64 %idxprom73
  %rtx76 = bitcast %union.rtunion_def* %arrayidx75 to %struct.rtx_def**
  %59 = load %struct.rtx_def*, %struct.rtx_def** %rtx76, align 8
  %call77 = call %struct.rtx_def* @copy_insn_1(%struct.rtx_def* %59)
  %60 = load i32, i32* %i, align 4
  %idxprom78 = sext i32 %60 to i64
  %61 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld79 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld79, i32 0, i64 %idxprom78
  %rtx81 = bitcast %union.rtunion_def* %arrayidx80 to %struct.rtx_def**
  store %struct.rtx_def* %call77, %struct.rtx_def** %rtx81, align 8
  br label %if.end.82

if.end.82:                                        ; preds = %if.then.72, %sw.bb.65
  br label %sw.epilog.153

sw.bb.83:                                         ; preds = %for.body.57, %for.body.57
  %62 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %62 to i64
  %63 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld85 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx86 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld85, i32 0, i64 %idxprom84
  %rtvec = bitcast %union.rtunion_def* %arrayidx86 to %struct.rtvec_def**
  %64 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %65 = load %struct.rtvec_def*, %struct.rtvec_def** @orig_asm_constraints_vector, align 8
  %cmp87 = icmp eq %struct.rtvec_def* %64, %65
  br i1 %cmp87, label %if.then.89, label %if.else

if.then.89:                                       ; preds = %sw.bb.83
  %66 = load %struct.rtvec_def*, %struct.rtvec_def** @copy_asm_constraints_vector, align 8
  %67 = load i32, i32* %i, align 4
  %idxprom90 = sext i32 %67 to i64
  %68 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %68, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 %idxprom90
  %rtvec93 = bitcast %union.rtunion_def* %arrayidx92 to %struct.rtvec_def**
  store %struct.rtvec_def* %66, %struct.rtvec_def** %rtvec93, align 8
  br label %if.end.150

if.else:                                          ; preds = %sw.bb.83
  %69 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %69 to i64
  %70 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld95 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %70, i32 0, i32 1
  %arrayidx96 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld95, i32 0, i64 %idxprom94
  %rtvec97 = bitcast %union.rtunion_def* %arrayidx96 to %struct.rtvec_def**
  %71 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec97, align 8
  %72 = load %struct.rtvec_def*, %struct.rtvec_def** @orig_asm_operands_vector, align 8
  %cmp98 = icmp eq %struct.rtvec_def* %71, %72
  br i1 %cmp98, label %if.then.100, label %if.else.105

if.then.100:                                      ; preds = %if.else
  %73 = load %struct.rtvec_def*, %struct.rtvec_def** @copy_asm_operands_vector, align 8
  %74 = load i32, i32* %i, align 4
  %idxprom101 = sext i32 %74 to i64
  %75 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld102 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx103 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld102, i32 0, i64 %idxprom101
  %rtvec104 = bitcast %union.rtunion_def* %arrayidx103 to %struct.rtvec_def**
  store %struct.rtvec_def* %73, %struct.rtvec_def** %rtvec104, align 8
  br label %if.end.149

if.else.105:                                      ; preds = %if.else
  %76 = load i32, i32* %i, align 4
  %idxprom106 = sext i32 %76 to i64
  %77 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld107 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx108 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld107, i32 0, i64 %idxprom106
  %rtvec109 = bitcast %union.rtunion_def* %arrayidx108 to %struct.rtvec_def**
  %78 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec109, align 8
  %cmp110 = icmp ne %struct.rtvec_def* %78, null
  br i1 %cmp110, label %if.then.112, label %if.end.148

if.then.112:                                      ; preds = %if.else.105
  %79 = load i32, i32* %i, align 4
  %idxprom113 = sext i32 %79 to i64
  %80 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %80, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 %idxprom113
  %rtvec116 = bitcast %union.rtunion_def* %arrayidx115 to %struct.rtvec_def**
  %81 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec116, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %81, i32 0, i32 0
  %82 = load i32, i32* %num_elem, align 4
  %call117 = call %struct.rtvec_def* @rtvec_alloc(i32 %82)
  %83 = load i32, i32* %i, align 4
  %idxprom118 = sext i32 %83 to i64
  %84 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %84, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 %idxprom118
  %rtvec121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtvec_def**
  store %struct.rtvec_def* %call117, %struct.rtvec_def** %rtvec121, align 8
  store i32 0, i32* %j, align 4
  br label %for.cond.122

for.cond.122:                                     ; preds = %for.inc.145, %if.then.112
  %85 = load i32, i32* %j, align 4
  %86 = load i32, i32* %i, align 4
  %idxprom123 = sext i32 %86 to i64
  %87 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 %idxprom123
  %rtvec126 = bitcast %union.rtunion_def* %arrayidx125 to %struct.rtvec_def**
  %88 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec126, align 8
  %num_elem127 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %88, i32 0, i32 0
  %89 = load i32, i32* %num_elem127, align 4
  %cmp128 = icmp slt i32 %85, %89
  br i1 %cmp128, label %for.body.130, label %for.end.147

for.body.130:                                     ; preds = %for.cond.122
  %90 = load i32, i32* %j, align 4
  %idxprom131 = sext i32 %90 to i64
  %91 = load i32, i32* %i, align 4
  %idxprom132 = sext i32 %91 to i64
  %92 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %92, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 %idxprom132
  %rtvec135 = bitcast %union.rtunion_def* %arrayidx134 to %struct.rtvec_def**
  %93 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec135, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %93, i32 0, i32 1
  %arrayidx136 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom131
  %94 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx136, align 8
  %call137 = call %struct.rtx_def* @copy_insn_1(%struct.rtx_def* %94)
  %95 = load i32, i32* %j, align 4
  %idxprom138 = sext i32 %95 to i64
  %96 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %96 to i64
  %97 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld140 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %97, i32 0, i32 1
  %arrayidx141 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld140, i32 0, i64 %idxprom139
  %rtvec142 = bitcast %union.rtunion_def* %arrayidx141 to %struct.rtvec_def**
  %98 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec142, align 8
  %elem143 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %98, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem143, i32 0, i64 %idxprom138
  store %struct.rtx_def* %call137, %struct.rtx_def** %arrayidx144, align 8
  br label %for.inc.145

for.inc.145:                                      ; preds = %for.body.130
  %99 = load i32, i32* %j, align 4
  %inc146 = add nsw i32 %99, 1
  store i32 %inc146, i32* %j, align 4
  br label %for.cond.122

for.end.147:                                      ; preds = %for.cond.122
  br label %if.end.148

if.end.148:                                       ; preds = %for.end.147, %if.else.105
  br label %if.end.149

if.end.149:                                       ; preds = %if.end.148, %if.then.100
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.149, %if.then.89
  br label %sw.epilog.153

sw.bb.151:                                        ; preds = %for.body.57, %for.body.57, %for.body.57, %for.body.57, %for.body.57, %for.body.57, %for.body.57
  br label %sw.epilog.153

sw.default.152:                                   ; preds = %for.body.57
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 4773, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.copy_insn_1, i32 0, i32 0)) #6
  unreachable

sw.epilog.153:                                    ; preds = %sw.bb.151, %if.end.150, %if.end.82
  br label %for.inc.154

for.inc.154:                                      ; preds = %sw.epilog.153
  %100 = load i32, i32* %i, align 4
  %inc155 = add nsw i32 %100, 1
  store i32 %inc155, i32* %i, align 4
  br label %for.cond.49

for.end.156:                                      ; preds = %for.cond.49
  %101 = load i32, i32* %code, align 4
  %cmp157 = icmp eq i32 %101, 62
  br i1 %cmp157, label %if.then.159, label %if.else.169

if.then.159:                                      ; preds = %for.end.156
  %102 = load i32, i32* @copy_insn_n_scratches, align 4
  %inc160 = add nsw i32 %102, 1
  store i32 %inc160, i32* @copy_insn_n_scratches, align 4
  store i32 %102, i32* %i, align 4
  %103 = load i32, i32* %i, align 4
  %cmp161 = icmp sge i32 %103, 30
  br i1 %cmp161, label %if.then.163, label %if.end.164

if.then.163:                                      ; preds = %if.then.159
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 4781, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__FUNCTION__.copy_insn_1, i32 0, i32 0)) #6
  unreachable

if.end.164:                                       ; preds = %if.then.159
  %104 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %105 = load i32, i32* %i, align 4
  %idxprom165 = sext i32 %105 to i64
  %arrayidx166 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* @copy_insn_scratch_in, i32 0, i64 %idxprom165
  store %struct.rtx_def* %104, %struct.rtx_def** %arrayidx166, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %107 = load i32, i32* %i, align 4
  %idxprom167 = sext i32 %107 to i64
  %arrayidx168 = getelementptr inbounds [30 x %struct.rtx_def*], [30 x %struct.rtx_def*]* @copy_insn_scratch_out, i32 0, i64 %idxprom167
  store %struct.rtx_def* %106, %struct.rtx_def** %arrayidx168, align 8
  br label %if.end.186

if.else.169:                                      ; preds = %for.end.156
  %108 = load i32, i32* %code, align 4
  %cmp170 = icmp eq i32 %108, 41
  br i1 %cmp170, label %if.then.172, label %if.end.185

if.then.172:                                      ; preds = %if.else.169
  %109 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %109, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld173, i32 0, i64 3
  %rtvec175 = bitcast %union.rtunion_def* %arrayidx174 to %struct.rtvec_def**
  %110 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec175, align 8
  store %struct.rtvec_def* %110, %struct.rtvec_def** @orig_asm_operands_vector, align 8
  %111 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld176 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %111, i32 0, i32 1
  %arrayidx177 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld176, i32 0, i64 3
  %rtvec178 = bitcast %union.rtunion_def* %arrayidx177 to %struct.rtvec_def**
  %112 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec178, align 8
  store %struct.rtvec_def* %112, %struct.rtvec_def** @copy_asm_operands_vector, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** %orig.addr, align 8
  %fld179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %113, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i32 0, i64 4
  %rtvec181 = bitcast %union.rtunion_def* %arrayidx180 to %struct.rtvec_def**
  %114 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec181, align 8
  store %struct.rtvec_def* %114, %struct.rtvec_def** @orig_asm_constraints_vector, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  %fld182 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %115, i32 0, i32 1
  %arrayidx183 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld182, i32 0, i64 4
  %rtvec184 = bitcast %union.rtunion_def* %arrayidx183 to %struct.rtvec_def**
  %116 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec184, align 8
  store %struct.rtvec_def* %116, %struct.rtvec_def** @copy_asm_constraints_vector, align 8
  br label %if.end.185

if.end.185:                                       ; preds = %if.then.172, %if.else.169
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.end.164
  %117 = load %struct.rtx_def*, %struct.rtx_def** %copy, align 8
  store %struct.rtx_def* %117, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.end.186, %if.then.29, %if.then, %sw.bb
  %118 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %118
}

; Function Attrs: nounwind uwtable
define %struct.rtx_def* @copy_insn(%struct.rtx_def* %insn) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 0, i32* @copy_insn_n_scratches, align 4
  store %struct.rtvec_def* null, %struct.rtvec_def** @orig_asm_operands_vector, align 8
  store %struct.rtvec_def* null, %struct.rtvec_def** @orig_asm_constraints_vector, align 8
  store %struct.rtvec_def* null, %struct.rtvec_def** @copy_asm_operands_vector, align 8
  store %struct.rtvec_def* null, %struct.rtvec_def** @copy_asm_constraints_vector, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insn.addr, align 8
  %call = call %struct.rtx_def* @copy_insn_1(%struct.rtx_def* %0)
  ret %struct.rtx_def* %call
}

; Function Attrs: nounwind uwtable
define void @init_emit() #0 {
entry:
  %f = alloca %struct.function*, align 8
  %0 = load %struct.function*, %struct.function** @cfun, align 8
  store %struct.function* %0, %struct.function** %f, align 8
  %call = call noalias i8* @xmalloc(i64 88)
  %1 = bitcast i8* %call to %struct.emit_status*
  %2 = load %struct.function*, %struct.function** %f, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %2, i32 0, i32 3
  store %struct.emit_status* %1, %struct.emit_status** %emit, align 8
  %3 = load %struct.function*, %struct.function** @cfun, align 8
  %emit1 = getelementptr inbounds %struct.function, %struct.function* %3, i32 0, i32 3
  %4 = load %struct.emit_status*, %struct.emit_status** %emit1, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %4, i32 0, i32 2
  store %struct.rtx_def* null, %struct.rtx_def** %x_first_insn, align 8
  %5 = load %struct.function*, %struct.function** @cfun, align 8
  %emit2 = getelementptr inbounds %struct.function, %struct.function* %5, i32 0, i32 3
  %6 = load %struct.emit_status*, %struct.emit_status** %emit2, align 8
  %x_last_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %6, i32 0, i32 3
  store %struct.rtx_def* null, %struct.rtx_def** %x_last_insn, align 8
  %7 = load %struct.function*, %struct.function** @cfun, align 8
  %emit3 = getelementptr inbounds %struct.function, %struct.function* %7, i32 0, i32 3
  %8 = load %struct.emit_status*, %struct.emit_status** %emit3, align 8
  %sequence_rtl_expr = getelementptr inbounds %struct.emit_status, %struct.emit_status* %8, i32 0, i32 4
  store %union.tree_node* null, %union.tree_node** %sequence_rtl_expr, align 8
  %9 = load %struct.function*, %struct.function** @cfun, align 8
  %emit4 = getelementptr inbounds %struct.function, %struct.function* %9, i32 0, i32 3
  %10 = load %struct.emit_status*, %struct.emit_status** %emit4, align 8
  %x_cur_insn_uid = getelementptr inbounds %struct.emit_status, %struct.emit_status* %10, i32 0, i32 6
  store i32 1, i32* %x_cur_insn_uid, align 4
  %11 = load %struct.function*, %struct.function** @cfun, align 8
  %emit5 = getelementptr inbounds %struct.function, %struct.function* %11, i32 0, i32 3
  %12 = load %struct.emit_status*, %struct.emit_status** %emit5, align 8
  %x_reg_rtx_no = getelementptr inbounds %struct.emit_status, %struct.emit_status* %12, i32 0, i32 0
  store i32 58, i32* %x_reg_rtx_no, align 4
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %emit6 = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 3
  %14 = load %struct.emit_status*, %struct.emit_status** %emit6, align 8
  %x_last_linenum = getelementptr inbounds %struct.emit_status, %struct.emit_status* %14, i32 0, i32 7
  store i32 0, i32* %x_last_linenum, align 4
  %15 = load %struct.function*, %struct.function** @cfun, align 8
  %emit7 = getelementptr inbounds %struct.function, %struct.function* %15, i32 0, i32 3
  %16 = load %struct.emit_status*, %struct.emit_status** %emit7, align 8
  %x_last_filename = getelementptr inbounds %struct.emit_status, %struct.emit_status* %16, i32 0, i32 8
  store i8* null, i8** %x_last_filename, align 8
  %17 = load i32, i32* @label_num, align 4
  %18 = load %struct.function*, %struct.function** @cfun, align 8
  %emit8 = getelementptr inbounds %struct.function, %struct.function* %18, i32 0, i32 3
  %19 = load %struct.emit_status*, %struct.emit_status** %emit8, align 8
  %x_first_label_num = getelementptr inbounds %struct.emit_status, %struct.emit_status* %19, i32 0, i32 1
  store i32 %17, i32* %x_first_label_num, align 4
  store i32 0, i32* @last_label_num, align 4
  %20 = load %struct.function*, %struct.function** @cfun, align 8
  %emit9 = getelementptr inbounds %struct.function, %struct.function* %20, i32 0, i32 3
  %21 = load %struct.emit_status*, %struct.emit_status** %emit9, align 8
  %sequence_stack = getelementptr inbounds %struct.emit_status, %struct.emit_status* %21, i32 0, i32 5
  store %struct.sequence_stack* null, %struct.sequence_stack** %sequence_stack, align 8
  call void @clear_emit_caches()
  %22 = load %struct.function*, %struct.function** %f, align 8
  %emit10 = getelementptr inbounds %struct.function, %struct.function* %22, i32 0, i32 3
  %23 = load %struct.emit_status*, %struct.emit_status** %emit10, align 8
  %regno_pointer_align_length = getelementptr inbounds %struct.emit_status, %struct.emit_status* %23, i32 0, i32 9
  store i32 158, i32* %regno_pointer_align_length, align 4
  %24 = load %struct.function*, %struct.function** %f, align 8
  %emit11 = getelementptr inbounds %struct.function, %struct.function* %24, i32 0, i32 3
  %25 = load %struct.emit_status*, %struct.emit_status** %emit11, align 8
  %regno_pointer_align_length12 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %25, i32 0, i32 9
  %26 = load i32, i32* %regno_pointer_align_length12, align 4
  %conv = sext i32 %26 to i64
  %call13 = call noalias i8* @xcalloc(i64 %conv, i64 1)
  %27 = load %struct.function*, %struct.function** %f, align 8
  %emit14 = getelementptr inbounds %struct.function, %struct.function* %27, i32 0, i32 3
  %28 = load %struct.emit_status*, %struct.emit_status** %emit14, align 8
  %regno_pointer_align = getelementptr inbounds %struct.emit_status, %struct.emit_status* %28, i32 0, i32 10
  store i8* %call13, i8** %regno_pointer_align, align 8
  %29 = load %struct.function*, %struct.function** %f, align 8
  %emit15 = getelementptr inbounds %struct.function, %struct.function* %29, i32 0, i32 3
  %30 = load %struct.emit_status*, %struct.emit_status** %emit15, align 8
  %regno_pointer_align_length16 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %30, i32 0, i32 9
  %31 = load i32, i32* %regno_pointer_align_length16, align 4
  %conv17 = sext i32 %31 to i64
  %call18 = call noalias i8* @xcalloc(i64 %conv17, i64 8)
  %32 = bitcast i8* %call18 to %struct.rtx_def**
  %33 = load %struct.function*, %struct.function** @cfun, align 8
  %emit19 = getelementptr inbounds %struct.function, %struct.function* %33, i32 0, i32 3
  %34 = load %struct.emit_status*, %struct.emit_status** %emit19, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %34, i32 0, i32 12
  store %struct.rtx_def** %32, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %35 = load %struct.function*, %struct.function** %f, align 8
  %emit20 = getelementptr inbounds %struct.function, %struct.function* %35, i32 0, i32 3
  %36 = load %struct.emit_status*, %struct.emit_status** %emit20, align 8
  %regno_pointer_align_length21 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %36, i32 0, i32 9
  %37 = load i32, i32* %regno_pointer_align_length21, align 4
  %conv22 = sext i32 %37 to i64
  %call23 = call noalias i8* @xcalloc(i64 %conv22, i64 8)
  %38 = bitcast i8* %call23 to %union.tree_node**
  %39 = load %struct.function*, %struct.function** %f, align 8
  %emit24 = getelementptr inbounds %struct.function, %struct.function* %39, i32 0, i32 3
  %40 = load %struct.emit_status*, %struct.emit_status** %emit24, align 8
  %regno_decl = getelementptr inbounds %struct.emit_status, %struct.emit_status* %40, i32 0, i32 11
  store %union.tree_node** %38, %union.tree_node*** %regno_decl, align 8
  %41 = load %struct.function*, %struct.function** %f, align 8
  %emit25 = getelementptr inbounds %struct.function, %struct.function* %41, i32 0, i32 3
  %42 = load %struct.emit_status*, %struct.emit_status** %emit25, align 8
  call void @init_virtual_regs(%struct.emit_status* %42)
  %43 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load = load i32, i32* %44, align 8
  %bf.clear = and i32 %bf.load, 2147483647
  %bf.set = or i32 %bf.clear, -2147483648
  store i32 %bf.set, i32* %44, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load26 = load i32, i32* %46, align 8
  %bf.clear27 = and i32 %bf.load26, 2147483647
  %bf.set28 = or i32 %bf.clear27, -2147483648
  store i32 %bf.set28, i32* %46, align 8
  %47 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load29 = load i32, i32* %48, align 8
  %bf.clear30 = and i32 %bf.load29, 2147483647
  %bf.set31 = or i32 %bf.clear30, -2147483648
  store i32 %bf.set31, i32* %48, align 8
  %49 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load32 = load i32, i32* %50, align 8
  %bf.clear33 = and i32 %bf.load32, 2147483647
  %bf.set34 = or i32 %bf.clear33, -2147483648
  store i32 %bf.set34, i32* %50, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load35 = load i32, i32* %52, align 8
  %bf.clear36 = and i32 %bf.load35, 2147483647
  %bf.set37 = or i32 %bf.clear36, -2147483648
  store i32 %bf.set37, i32* %52, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load38 = load i32, i32* %54, align 8
  %bf.clear39 = and i32 %bf.load38, 2147483647
  %bf.set40 = or i32 %bf.clear39, -2147483648
  store i32 %bf.set40, i32* %54, align 8
  %55 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 8), align 8
  %56 = bitcast %struct.rtx_def* %55 to i32*
  %bf.load41 = load i32, i32* %56, align 8
  %bf.clear42 = and i32 %bf.load41, 2147483647
  %bf.set43 = or i32 %bf.clear42, -2147483648
  store i32 %bf.set43, i32* %56, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load44 = load i32, i32* %58, align 8
  %bf.clear45 = and i32 %bf.load44, 2147483647
  %bf.set46 = or i32 %bf.clear45, -2147483648
  store i32 %bf.set46, i32* %58, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 10), align 8
  %60 = bitcast %struct.rtx_def* %59 to i32*
  %bf.load47 = load i32, i32* %60, align 8
  %bf.clear48 = and i32 %bf.load47, 2147483647
  %bf.set49 = or i32 %bf.clear48, -2147483648
  store i32 %bf.set49, i32* %60, align 8
  %61 = load i32, i32* @target_flags, align 4
  %and = and i32 %61, 33554432
  %tobool = icmp ne i32 %and, 0
  %cond = select i1 %tobool, i32 64, i32 32
  %conv50 = trunc i32 %cond to i8
  %62 = load %struct.function*, %struct.function** @cfun, align 8
  %emit51 = getelementptr inbounds %struct.function, %struct.function* %62, i32 0, i32 3
  %63 = load %struct.emit_status*, %struct.emit_status** %emit51, align 8
  %regno_pointer_align52 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %63, i32 0, i32 10
  %64 = load i8*, i8** %regno_pointer_align52, align 8
  %arrayidx = getelementptr inbounds i8, i8* %64, i64 7
  store i8 %conv50, i8* %arrayidx, align 1
  %65 = load i32, i32* @target_flags, align 4
  %and53 = and i32 %65, 33554432
  %tobool54 = icmp ne i32 %and53, 0
  %cond55 = select i1 %tobool54, i32 64, i32 32
  %conv56 = trunc i32 %cond55 to i8
  %66 = load %struct.function*, %struct.function** @cfun, align 8
  %emit57 = getelementptr inbounds %struct.function, %struct.function* %66, i32 0, i32 3
  %67 = load %struct.emit_status*, %struct.emit_status** %emit57, align 8
  %regno_pointer_align58 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %67, i32 0, i32 10
  %68 = load i8*, i8** %regno_pointer_align58, align 8
  %arrayidx59 = getelementptr inbounds i8, i8* %68, i64 20
  store i8 %conv56, i8* %arrayidx59, align 1
  %69 = load i32, i32* @target_flags, align 4
  %and60 = and i32 %69, 33554432
  %tobool61 = icmp ne i32 %and60, 0
  %cond62 = select i1 %tobool61, i32 64, i32 32
  %conv63 = trunc i32 %cond62 to i8
  %70 = load %struct.function*, %struct.function** @cfun, align 8
  %emit64 = getelementptr inbounds %struct.function, %struct.function* %70, i32 0, i32 3
  %71 = load %struct.emit_status*, %struct.emit_status** %emit64, align 8
  %regno_pointer_align65 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %71, i32 0, i32 10
  %72 = load i8*, i8** %regno_pointer_align65, align 8
  %arrayidx66 = getelementptr inbounds i8, i8* %72, i64 6
  store i8 %conv63, i8* %arrayidx66, align 1
  %73 = load i32, i32* @target_flags, align 4
  %and67 = and i32 %73, 33554432
  %tobool68 = icmp ne i32 %and67, 0
  %cond69 = select i1 %tobool68, i32 64, i32 32
  %conv70 = trunc i32 %cond69 to i8
  %74 = load %struct.function*, %struct.function** @cfun, align 8
  %emit71 = getelementptr inbounds %struct.function, %struct.function* %74, i32 0, i32 3
  %75 = load %struct.emit_status*, %struct.emit_status** %emit71, align 8
  %regno_pointer_align72 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %75, i32 0, i32 10
  %76 = load i8*, i8** %regno_pointer_align72, align 8
  %arrayidx73 = getelementptr inbounds i8, i8* %76, i64 16
  store i8 %conv70, i8* %arrayidx73, align 1
  %77 = load i32, i32* @target_flags, align 4
  %and74 = and i32 %77, 33554432
  %tobool75 = icmp ne i32 %and74, 0
  %cond76 = select i1 %tobool75, i32 64, i32 32
  %conv77 = trunc i32 %cond76 to i8
  %78 = load %struct.function*, %struct.function** @cfun, align 8
  %emit78 = getelementptr inbounds %struct.function, %struct.function* %78, i32 0, i32 3
  %79 = load %struct.emit_status*, %struct.emit_status** %emit78, align 8
  %regno_pointer_align79 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %79, i32 0, i32 10
  %80 = load i8*, i8** %regno_pointer_align79, align 8
  %arrayidx80 = getelementptr inbounds i8, i8* %80, i64 53
  store i8 %conv77, i8* %arrayidx80, align 1
  %81 = load i32, i32* @target_flags, align 4
  %and81 = and i32 %81, 33554432
  %tobool82 = icmp ne i32 %and81, 0
  %cond83 = select i1 %tobool82, i32 64, i32 32
  %conv84 = trunc i32 %cond83 to i8
  %82 = load %struct.function*, %struct.function** @cfun, align 8
  %emit85 = getelementptr inbounds %struct.function, %struct.function* %82, i32 0, i32 3
  %83 = load %struct.emit_status*, %struct.emit_status** %emit85, align 8
  %regno_pointer_align86 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %83, i32 0, i32 10
  %84 = load i8*, i8** %regno_pointer_align86, align 8
  %arrayidx87 = getelementptr inbounds i8, i8* %84, i64 54
  store i8 %conv84, i8* %arrayidx87, align 1
  %85 = load i32, i32* @target_flags, align 4
  %and88 = and i32 %85, 33554432
  %tobool89 = icmp ne i32 %and88, 0
  %cond90 = select i1 %tobool89, i32 64, i32 32
  %conv91 = trunc i32 %cond90 to i8
  %86 = load %struct.function*, %struct.function** @cfun, align 8
  %emit92 = getelementptr inbounds %struct.function, %struct.function* %86, i32 0, i32 3
  %87 = load %struct.emit_status*, %struct.emit_status** %emit92, align 8
  %regno_pointer_align93 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %87, i32 0, i32 10
  %88 = load i8*, i8** %regno_pointer_align93, align 8
  %arrayidx94 = getelementptr inbounds i8, i8* %88, i64 55
  store i8 %conv91, i8* %arrayidx94, align 1
  %89 = load i32, i32* @target_flags, align 4
  %and95 = and i32 %89, 33554432
  %tobool96 = icmp ne i32 %and95, 0
  %cond97 = select i1 %tobool96, i32 64, i32 32
  %conv98 = trunc i32 %cond97 to i8
  %90 = load %struct.function*, %struct.function** @cfun, align 8
  %emit99 = getelementptr inbounds %struct.function, %struct.function* %90, i32 0, i32 3
  %91 = load %struct.emit_status*, %struct.emit_status** %emit99, align 8
  %regno_pointer_align100 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %91, i32 0, i32 10
  %92 = load i8*, i8** %regno_pointer_align100, align 8
  %arrayidx101 = getelementptr inbounds i8, i8* %92, i64 56
  store i8 %conv98, i8* %arrayidx101, align 1
  %93 = load i32, i32* @target_flags, align 4
  %and102 = and i32 %93, 33554432
  %tobool103 = icmp ne i32 %and102, 0
  %cond104 = select i1 %tobool103, i32 64, i32 32
  %conv105 = trunc i32 %cond104 to i8
  %94 = load %struct.function*, %struct.function** @cfun, align 8
  %emit106 = getelementptr inbounds %struct.function, %struct.function* %94, i32 0, i32 3
  %95 = load %struct.emit_status*, %struct.emit_status** %emit106, align 8
  %regno_pointer_align107 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %95, i32 0, i32 10
  %96 = load i8*, i8** %regno_pointer_align107, align 8
  %arrayidx108 = getelementptr inbounds i8, i8* %96, i64 57
  store i8 %conv105, i8* %arrayidx108, align 1
  ret void
}

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define void @mark_emit_status(%struct.emit_status* %es) #0 {
entry:
  %es.addr = alloca %struct.emit_status*, align 8
  %r = alloca %struct.rtx_def**, align 8
  %t = alloca %union.tree_node**, align 8
  %i = alloca i32, align 4
  %r__ = alloca %struct.rtx_def*, align 8
  %t__ = alloca %union.tree_node*, align 8
  %t__23 = alloca %union.tree_node*, align 8
  %r__47 = alloca %struct.rtx_def*, align 8
  store %struct.emit_status* %es, %struct.emit_status** %es.addr, align 8
  %0 = load %struct.emit_status*, %struct.emit_status** %es.addr, align 8
  %cmp = icmp eq %struct.emit_status* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %do.end.54

if.end:                                           ; preds = %entry
  %1 = load %struct.emit_status*, %struct.emit_status** %es.addr, align 8
  %regno_pointer_align_length = getelementptr inbounds %struct.emit_status, %struct.emit_status* %1, i32 0, i32 9
  %2 = load i32, i32* %regno_pointer_align_length, align 4
  store i32 %2, i32* %i, align 4
  %3 = load %struct.emit_status*, %struct.emit_status** %es.addr, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %3, i32 0, i32 12
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  store %struct.rtx_def** %4, %struct.rtx_def*** %r, align 8
  %5 = load %struct.emit_status*, %struct.emit_status** %es.addr, align 8
  %regno_decl = getelementptr inbounds %struct.emit_status, %struct.emit_status* %5, i32 0, i32 11
  %6 = load %union.tree_node**, %union.tree_node*** %regno_decl, align 8
  store %union.tree_node** %6, %union.tree_node*** %t, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %7 = load i32, i32* %i, align 4
  %cmp1 = icmp sgt i32 %7, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %8 = load %struct.rtx_def**, %struct.rtx_def*** %r, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %8, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %r__, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp2 = icmp ne %struct.rtx_def* %10, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %do.body
  %11 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %12 = bitcast %struct.rtx_def* %11 to i8*
  %call = call i32 @ggc_set_mark(i8* %12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %13)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %14 = load %union.tree_node**, %union.tree_node*** %t, align 8
  %15 = load %union.tree_node*, %union.tree_node** %14, align 8
  store %union.tree_node* %15, %union.tree_node** %t__, align 8
  %16 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp6 = icmp ne %union.tree_node* %16, null
  br i1 %cmp6, label %land.lhs.true.7, label %if.end.19

land.lhs.true.7:                                  ; preds = %do.body.5
  %17 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %18 = bitcast %union.tree_node* %17 to i8*
  %call8 = call i32 @ggc_set_mark(i8* %18)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.19, label %if.then.10

if.then.10:                                       ; preds = %land.lhs.true.7
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 1
  %20 = load i64, i64* %elements_used, align 8
  %21 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %21, i32 0, i32 0
  %22 = load i64, i64* %num_elements, align 8
  %cmp12 = icmp uge i64 %20, %22
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %do.body.11
  %23 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %24 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements14 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %24, i32 0, i32 0
  %25 = load i64, i64* %num_elements14, align 8
  %mul = mul i64 2, %25
  %call15 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %23, i64 %mul)
  store %struct.varray_head_tag* %call15, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.13, %do.body.11
  %26 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %27 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used17 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %27, i32 0, i32 1
  %28 = load i64, i64* %elements_used17, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %elements_used17, align 8
  %29 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %29, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %28
  store %union.tree_node* %26, %union.tree_node** %arrayidx, align 8
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.16
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.18, %land.lhs.true.7, %do.body.5
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %for.inc

for.inc:                                          ; preds = %do.end.20
  %30 = load i32, i32* %i, align 4
  %dec = add nsw i32 %30, -1
  store i32 %dec, i32* %i, align 4
  %31 = load %struct.rtx_def**, %struct.rtx_def*** %r, align 8
  %incdec.ptr = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %31, i32 1
  store %struct.rtx_def** %incdec.ptr, %struct.rtx_def*** %r, align 8
  %32 = load %union.tree_node**, %union.tree_node*** %t, align 8
  %incdec.ptr21 = getelementptr inbounds %union.tree_node*, %union.tree_node** %32, i32 1
  store %union.tree_node** %incdec.ptr21, %union.tree_node*** %t, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load %struct.emit_status*, %struct.emit_status** %es.addr, align 8
  %sequence_stack = getelementptr inbounds %struct.emit_status, %struct.emit_status* %33, i32 0, i32 5
  %34 = load %struct.sequence_stack*, %struct.sequence_stack** %sequence_stack, align 8
  call void @mark_sequence_stack(%struct.sequence_stack* %34)
  br label %do.body.22

do.body.22:                                       ; preds = %for.end
  %35 = load %struct.emit_status*, %struct.emit_status** %es.addr, align 8
  %sequence_rtl_expr = getelementptr inbounds %struct.emit_status, %struct.emit_status* %35, i32 0, i32 4
  %36 = load %union.tree_node*, %union.tree_node** %sequence_rtl_expr, align 8
  store %union.tree_node* %36, %union.tree_node** %t__23, align 8
  %37 = load %union.tree_node*, %union.tree_node** %t__23, align 8
  %cmp24 = icmp ne %union.tree_node* %37, null
  br i1 %cmp24, label %land.lhs.true.25, label %if.end.44

land.lhs.true.25:                                 ; preds = %do.body.22
  %38 = load %union.tree_node*, %union.tree_node** %t__23, align 8
  %39 = bitcast %union.tree_node* %38 to i8*
  %call26 = call i32 @ggc_set_mark(i8* %39)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.end.44, label %if.then.28

if.then.28:                                       ; preds = %land.lhs.true.25
  br label %do.body.29

do.body.29:                                       ; preds = %if.then.28
  %40 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used30 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %40, i32 0, i32 1
  %41 = load i64, i64* %elements_used30, align 8
  %42 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements31 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %42, i32 0, i32 0
  %43 = load i64, i64* %num_elements31, align 8
  %cmp32 = icmp uge i64 %41, %43
  br i1 %cmp32, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %do.body.29
  %44 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %45 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements34 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %45, i32 0, i32 0
  %46 = load i64, i64* %num_elements34, align 8
  %mul35 = mul i64 2, %46
  %call36 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %44, i64 %mul35)
  store %struct.varray_head_tag* %call36, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %do.body.29
  %47 = load %union.tree_node*, %union.tree_node** %t__23, align 8
  %48 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used38 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %48, i32 0, i32 1
  %49 = load i64, i64* %elements_used38, align 8
  %inc39 = add i64 %49, 1
  store i64 %inc39, i64* %elements_used38, align 8
  %50 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data40 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %50, i32 0, i32 4
  %tree41 = bitcast %union.varray_data_tag* %data40 to [1 x %union.tree_node*]*
  %arrayidx42 = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree41, i32 0, i64 %49
  store %union.tree_node* %47, %union.tree_node** %arrayidx42, align 8
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.37
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %land.lhs.true.25, %do.body.22
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %51 = load %struct.emit_status*, %struct.emit_status** %es.addr, align 8
  %x_first_insn = getelementptr inbounds %struct.emit_status, %struct.emit_status* %51, i32 0, i32 2
  %52 = load %struct.rtx_def*, %struct.rtx_def** %x_first_insn, align 8
  store %struct.rtx_def* %52, %struct.rtx_def** %r__47, align 8
  %53 = load %struct.rtx_def*, %struct.rtx_def** %r__47, align 8
  %cmp48 = icmp ne %struct.rtx_def* %53, null
  br i1 %cmp48, label %land.lhs.true.49, label %if.end.53

land.lhs.true.49:                                 ; preds = %do.body.46
  %54 = load %struct.rtx_def*, %struct.rtx_def** %r__47, align 8
  %55 = bitcast %struct.rtx_def* %54 to i8*
  %call50 = call i32 @ggc_set_mark(i8* %55)
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.end.53, label %if.then.52

if.then.52:                                       ; preds = %land.lhs.true.49
  %56 = load %struct.rtx_def*, %struct.rtx_def** %r__47, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %56)
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.52, %land.lhs.true.49, %do.body.46
  br label %do.end.54

do.end.54:                                        ; preds = %if.then, %if.end.53
  ret void
}

declare i32 @ggc_set_mark(i8*) #1

declare void @ggc_mark_rtx_children(%struct.rtx_def*) #1

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @mark_sequence_stack(%struct.sequence_stack* %ss) #0 {
entry:
  %ss.addr = alloca %struct.sequence_stack*, align 8
  %r__ = alloca %struct.rtx_def*, align 8
  %t__ = alloca %union.tree_node*, align 8
  store %struct.sequence_stack* %ss, %struct.sequence_stack** %ss.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.17, %entry
  %0 = load %struct.sequence_stack*, %struct.sequence_stack** %ss.addr, align 8
  %tobool = icmp ne %struct.sequence_stack* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %do.body

do.body:                                          ; preds = %while.body
  %1 = load %struct.sequence_stack*, %struct.sequence_stack** %ss.addr, align 8
  %first = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %1, i32 0, i32 0
  %2 = load %struct.rtx_def*, %struct.rtx_def** %first, align 8
  store %struct.rtx_def* %2, %struct.rtx_def** %r__, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp = icmp ne %struct.rtx_def* %3, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %do.body
  %4 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %5 = bitcast %struct.rtx_def* %4 to i8*
  %call = call i32 @ggc_set_mark(i8* %5)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %6 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %7 = load %struct.sequence_stack*, %struct.sequence_stack** %ss.addr, align 8
  %sequence_rtl_expr = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %7, i32 0, i32 2
  %8 = load %union.tree_node*, %union.tree_node** %sequence_rtl_expr, align 8
  store %union.tree_node* %8, %union.tree_node** %t__, align 8
  %9 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp3 = icmp ne %union.tree_node* %9, null
  br i1 %cmp3, label %land.lhs.true.4, label %if.end.16

land.lhs.true.4:                                  ; preds = %do.body.2
  %10 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %11 = bitcast %union.tree_node* %10 to i8*
  %call5 = call i32 @ggc_set_mark(i8* %11)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.end.16, label %if.then.7

if.then.7:                                        ; preds = %land.lhs.true.4
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %12 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %12, i32 0, i32 1
  %13 = load i64, i64* %elements_used, align 8
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 0
  %15 = load i64, i64* %num_elements, align 8
  %cmp9 = icmp uge i64 %13, %15
  br i1 %cmp9, label %if.then.10, label %if.end.13

if.then.10:                                       ; preds = %do.body.8
  %16 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements11 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 0
  %18 = load i64, i64* %num_elements11, align 8
  %mul = mul i64 2, %18
  %call12 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %16, i64 %mul)
  store %struct.varray_head_tag* %call12, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.10, %do.body.8
  %19 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %20 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used14 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %20, i32 0, i32 1
  %21 = load i64, i64* %elements_used14, align 8
  %inc = add i64 %21, 1
  store i64 %inc, i64* %elements_used14, align 8
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %22, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %21
  store %union.tree_node* %19, %union.tree_node** %arrayidx, align 8
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.13
  br label %if.end.16

if.end.16:                                        ; preds = %do.end.15, %land.lhs.true.4, %do.body.2
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  %23 = load %struct.sequence_stack*, %struct.sequence_stack** %ss.addr, align 8
  %next = getelementptr inbounds %struct.sequence_stack, %struct.sequence_stack* %23, i32 0, i32 3
  %24 = load %struct.sequence_stack*, %struct.sequence_stack** %next, align 8
  store %struct.sequence_stack* %24, %struct.sequence_stack** %ss.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_emit_once(i32 %line_numbers) #0 {
entry:
  %line_numbers.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %mode = alloca i32, align 4
  %double_mode = alloca i32, align 4
  %tmp = alloca %struct.realvaluetype, align 8
  %tmp104 = alloca %struct.realvaluetype, align 8
  %tmp105 = alloca %struct.realvaluetype, align 8
  %tmp106 = alloca %struct.realvaluetype, align 8
  %tem = alloca %struct.rtx_def*, align 8
  %u = alloca %union.real_extract, align 8
  store i32 %line_numbers, i32* %line_numbers.addr, align 4
  %call = call %struct.htab* @htab_create(i64 37, i32 (i8*)* @const_int_htab_hash, i32 (i8*, i8*)* @const_int_htab_eq, void (i8*)* null)
  store %struct.htab* %call, %struct.htab** @const_int_htab, align 8
  %0 = load %struct.htab*, %struct.htab** @const_int_htab, align 8
  %1 = bitcast %struct.htab* %0 to i8*
  call void @ggc_add_deletable_htab(i8* %1, i32 (i8*)* null, void (i8*)* null)
  %call1 = call %struct.htab* @htab_create(i64 37, i32 (i8*)* @mem_attrs_htab_hash, i32 (i8*, i8*)* @mem_attrs_htab_eq, void (i8*)* null)
  store %struct.htab* %call1, %struct.htab** @mem_attrs_htab, align 8
  %2 = load %struct.htab*, %struct.htab** @mem_attrs_htab, align 8
  %3 = bitcast %struct.htab* %2 to i8*
  call void @ggc_add_deletable_htab(i8* %3, i32 (i8*)* null, void (i8*)* @mem_attrs_mark)
  %4 = load i32, i32* %line_numbers.addr, align 4
  %tobool = icmp ne i32 %4, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* @no_line_numbers, align 4
  store i32 0, i32* @byte_mode, align 4
  store i32 0, i32* @word_mode, align 4
  store i32 0, i32* %double_mode, align 4
  %5 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 1), align 4
  store i32 %5, i32* %mode, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %mode, align 4
  %cmp = icmp ne i32 %6, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %mode, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom
  %8 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %8 to i32
  %cmp2 = icmp eq i32 %conv, 8
  br i1 %cmp2, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %9 = load i32, i32* @byte_mode, align 4
  %cmp4 = icmp eq i32 %9, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %10 = load i32, i32* %mode, align 4
  store i32 %10, i32* @byte_mode, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %11 = load i32, i32* %mode, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom6
  %12 = load i16, i16* %arrayidx7, align 2
  %conv8 = zext i16 %12 to i32
  %13 = load i32, i32* @target_flags, align 4
  %and = and i32 %13, 33554432
  %tobool9 = icmp ne i32 %and, 0
  %cond = select i1 %tobool9, i32 64, i32 32
  %cmp10 = icmp eq i32 %conv8, %cond
  br i1 %cmp10, label %land.lhs.true.12, label %if.end.16

land.lhs.true.12:                                 ; preds = %if.end
  %14 = load i32, i32* @word_mode, align 4
  %cmp13 = icmp eq i32 %14, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true.12
  %15 = load i32, i32* %mode, align 4
  store i32 %15, i32* @word_mode, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true.12, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %16 = load i32, i32* %mode, align 4
  %idxprom17 = sext i32 %16 to i64
  %arrayidx18 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom17
  %17 = load i8, i8* %arrayidx18, align 1
  %conv19 = zext i8 %17 to i32
  store i32 %conv19, i32* %mode, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 2), align 4
  store i32 %18, i32* %mode, align 4
  br label %for.cond.20

for.cond.20:                                      ; preds = %for.inc.34, %for.end
  %19 = load i32, i32* %mode, align 4
  %cmp21 = icmp ne i32 %19, 0
  br i1 %cmp21, label %for.body.23, label %for.end.38

for.body.23:                                      ; preds = %for.cond.20
  %20 = load i32, i32* %mode, align 4
  %idxprom24 = sext i32 %20 to i64
  %arrayidx25 = getelementptr inbounds [59 x i16], [59 x i16]* @mode_bitsize, i32 0, i64 %idxprom24
  %21 = load i16, i16* %arrayidx25, align 2
  %conv26 = zext i16 %21 to i32
  %cmp27 = icmp eq i32 %conv26, 64
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.33

land.lhs.true.29:                                 ; preds = %for.body.23
  %22 = load i32, i32* %double_mode, align 4
  %cmp30 = icmp eq i32 %22, 0
  br i1 %cmp30, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %land.lhs.true.29
  %23 = load i32, i32* %mode, align 4
  store i32 %23, i32* %double_mode, align 4
  br label %if.end.33

if.end.33:                                        ; preds = %if.then.32, %land.lhs.true.29, %for.body.23
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %24 = load i32, i32* %mode, align 4
  %idxprom35 = sext i32 %24 to i64
  %arrayidx36 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom35
  %25 = load i8, i8* %arrayidx36, align 1
  %conv37 = zext i8 %25 to i32
  store i32 %conv37, i32* %mode, align 4
  br label %for.cond.20

for.end.38:                                       ; preds = %for.cond.20
  %26 = load i32, i32* @target_flags, align 4
  %and39 = and i32 %26, 33554432
  %tobool40 = icmp ne i32 %and39, 0
  %cond41 = select i1 %tobool40, i32 64, i32 32
  %27 = load i32, i32* @target_flags, align 4
  %and42 = and i32 %27, 33554432
  %tobool43 = icmp ne i32 %and42, 0
  %cond44 = select i1 %tobool43, i32 5, i32 4
  %idxprom45 = sext i32 %cond44 to i64
  %arrayidx46 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom45
  %28 = load i32, i32* %arrayidx46, align 4
  %call47 = call i32 @mode_for_size(i32 %cond41, i32 %28, i32 0)
  store i32 %call47, i32* @ptr_mode, align 4
  %call48 = call %struct.rtx_def* (i32, i32, ...) @gen_rtx(i32 59, i32 0)
  store %struct.rtx_def* %call48, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %call49 = call %struct.rtx_def* (i32, i32, ...) @gen_rtx(i32 69, i32 0)
  store %struct.rtx_def* %call49, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 1), align 8
  %29 = load i32, i32* @target_flags, align 4
  %and50 = and i32 %29, 33554432
  %tobool51 = icmp ne i32 %and50, 0
  %cond52 = select i1 %tobool51, i32 5, i32 4
  %call53 = call %struct.rtx_def* @gen_raw_REG(i32 %cond52, i32 7)
  store %struct.rtx_def* %call53, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 2), align 8
  %30 = load i32, i32* @target_flags, align 4
  %and54 = and i32 %30, 33554432
  %tobool55 = icmp ne i32 %and54, 0
  %cond56 = select i1 %tobool55, i32 5, i32 4
  %call57 = call %struct.rtx_def* @gen_raw_REG(i32 %cond56, i32 20)
  store %struct.rtx_def* %call57, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 3), align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  %cmp58 = icmp eq %struct.rtx_def* %31, null
  br i1 %cmp58, label %if.then.60, label %if.end.65

if.then.60:                                       ; preds = %for.end.38
  %32 = load i32, i32* @target_flags, align 4
  %and61 = and i32 %32, 33554432
  %tobool62 = icmp ne i32 %and61, 0
  %cond63 = select i1 %tobool62, i32 5, i32 4
  %call64 = call %struct.rtx_def* @gen_raw_REG(i32 %cond63, i32 6)
  store %struct.rtx_def* %call64, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 4), align 8
  br label %if.end.65

if.end.65:                                        ; preds = %if.then.60, %for.end.38
  %33 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  %cmp66 = icmp eq %struct.rtx_def* %33, null
  br i1 %cmp66, label %if.then.68, label %if.end.73

if.then.68:                                       ; preds = %if.end.65
  %34 = load i32, i32* @target_flags, align 4
  %and69 = and i32 %34, 33554432
  %tobool70 = icmp ne i32 %and69, 0
  %cond71 = select i1 %tobool70, i32 5, i32 4
  %call72 = call %struct.rtx_def* @gen_raw_REG(i32 %cond71, i32 16)
  store %struct.rtx_def* %call72, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 5), align 8
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.68, %if.end.65
  %35 = load i32, i32* @target_flags, align 4
  %and74 = and i32 %35, 33554432
  %tobool75 = icmp ne i32 %and74, 0
  %cond76 = select i1 %tobool75, i32 5, i32 4
  %call77 = call %struct.rtx_def* @gen_raw_REG(i32 %cond76, i32 53)
  store %struct.rtx_def* %call77, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 6), align 8
  %36 = load i32, i32* @target_flags, align 4
  %and78 = and i32 %36, 33554432
  %tobool79 = icmp ne i32 %and78, 0
  %cond80 = select i1 %tobool79, i32 5, i32 4
  %call81 = call %struct.rtx_def* @gen_raw_REG(i32 %cond80, i32 54)
  store %struct.rtx_def* %call81, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 7), align 8
  %37 = load i32, i32* @target_flags, align 4
  %and82 = and i32 %37, 33554432
  %tobool83 = icmp ne i32 %and82, 0
  %cond84 = select i1 %tobool83, i32 5, i32 4
  %call85 = call %struct.rtx_def* @gen_raw_REG(i32 %cond84, i32 55)
  store %struct.rtx_def* %call85, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 8), align 8
  %38 = load i32, i32* @target_flags, align 4
  %and86 = and i32 %38, 33554432
  %tobool87 = icmp ne i32 %and86, 0
  %cond88 = select i1 %tobool87, i32 5, i32 4
  %call89 = call %struct.rtx_def* @gen_raw_REG(i32 %cond88, i32 56)
  store %struct.rtx_def* %call89, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 9), align 8
  %39 = load i32, i32* @target_flags, align 4
  %and90 = and i32 %39, 33554432
  %tobool91 = icmp ne i32 %and90, 0
  %cond92 = select i1 %tobool91, i32 5, i32 4
  %call93 = call %struct.rtx_def* @gen_raw_REG(i32 %cond92, i32 57)
  store %struct.rtx_def* %call93, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 10), align 8
  call void @ggc_add_rtx_root(%struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i32 0), i32 11)
  store i32 -64, i32* %i, align 4
  br label %for.cond.94

for.cond.94:                                      ; preds = %for.inc.102, %if.end.73
  %40 = load i32, i32* %i, align 4
  %cmp95 = icmp sle i32 %40, 64
  br i1 %cmp95, label %for.body.97, label %for.end.103

for.body.97:                                      ; preds = %for.cond.94
  %41 = load i32, i32* %i, align 4
  %conv98 = sext i32 %41 to i64
  %call99 = call %struct.rtx_def* @gen_rtx_fmt_w(i32 54, i32 0, i64 %conv98)
  %42 = load i32, i32* %i, align 4
  %add = add nsw i32 %42, 64
  %idxprom100 = sext i32 %add to i64
  %arrayidx101 = getelementptr inbounds [129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 %idxprom100
  store %struct.rtx_def* %call99, %struct.rtx_def** %arrayidx101, align 8
  br label %for.inc.102

for.inc.102:                                      ; preds = %for.body.97
  %43 = load i32, i32* %i, align 4
  %inc = add nsw i32 %43, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.94

for.end.103:                                      ; preds = %for.cond.94
  call void @ggc_add_rtx_root(%struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i32 0), i32 129)
  %44 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  store %struct.rtx_def* %44, %struct.rtx_def** @const_true_rtx, align 8
  %45 = load i32, i32* %double_mode, align 4
  call void @ereal_atof(%struct.realvaluetype* sret %tmp, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), i32 %45)
  %46 = bitcast %struct.realvaluetype* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.realvaluetype* @dconst0 to i8*), i8* %46, i64 24, i32 8, i1 false)
  %47 = load i32, i32* %double_mode, align 4
  call void @ereal_atof(%struct.realvaluetype* sret %tmp104, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i32 %47)
  %48 = bitcast %struct.realvaluetype* %tmp104 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.realvaluetype* @dconst1 to i8*), i8* %48, i64 24, i32 8, i1 false)
  %49 = load i32, i32* %double_mode, align 4
  call void @ereal_atof(%struct.realvaluetype* sret %tmp105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 %49)
  %50 = bitcast %struct.realvaluetype* %tmp105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.realvaluetype* @dconst2 to i8*), i8* %50, i64 24, i32 8, i1 false)
  %51 = load i32, i32* %double_mode, align 4
  call void @ereal_atof(%struct.realvaluetype* sret %tmp106, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 %51)
  %52 = bitcast %struct.realvaluetype* %tmp106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* bitcast (%struct.realvaluetype* @dconstm1 to i8*), i8* %52, i64 24, i32 8, i1 false)
  store i32 0, i32* %i, align 4
  br label %for.cond.107

for.cond.107:                                     ; preds = %for.inc.172, %for.end.103
  %53 = load i32, i32* %i, align 4
  %cmp108 = icmp sle i32 %53, 2
  br i1 %cmp108, label %for.body.110, label %for.end.174

for.body.110:                                     ; preds = %for.cond.107
  %54 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 2), align 4
  store i32 %54, i32* %mode, align 4
  br label %for.cond.111

for.cond.111:                                     ; preds = %for.inc.132, %for.body.110
  %55 = load i32, i32* %mode, align 4
  %cmp112 = icmp ne i32 %55, 0
  br i1 %cmp112, label %for.body.114, label %for.end.136

for.body.114:                                     ; preds = %for.cond.111
  %call116 = call %struct.rtx_def* @rtx_alloc(i32 55)
  store %struct.rtx_def* %call116, %struct.rtx_def** %tem, align 8
  %56 = bitcast %union.real_extract* %u to i8*
  call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 24, i32 1, i1 false)
  %d = bitcast %union.real_extract* %u to %struct.realvaluetype*
  %57 = load i32, i32* %i, align 4
  %cmp118 = icmp eq i32 %57, 0
  br i1 %cmp118, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body.114
  %58 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %58, i8* bitcast (%struct.realvaluetype* @dconst0 to i8*), i64 24, i32 8, i1 false)
  br label %cond.end.124

cond.false:                                       ; preds = %for.body.114
  %59 = load i32, i32* %i, align 4
  %cmp120 = icmp eq i32 %59, 1
  br i1 %cmp120, label %cond.true.122, label %cond.false.123

cond.true.122:                                    ; preds = %cond.false
  %60 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %60, i8* bitcast (%struct.realvaluetype* @dconst1 to i8*), i64 24, i32 8, i1 false)
  br label %cond.end

cond.false.123:                                   ; preds = %cond.false
  %61 = bitcast %struct.realvaluetype* %d to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* bitcast (%struct.realvaluetype* @dconst2 to i8*), i64 24, i32 8, i1 false)
  br label %cond.end

cond.end:                                         ; preds = %cond.false.123, %cond.true.122
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.end, %cond.true
  %62 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %62, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtwint = bitcast %union.rtunion_def* %arrayidx125 to i64*
  %63 = bitcast i64* %rtwint to i8*
  %64 = bitcast %union.real_extract* %u to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %63, i8* %64, i64 24, i32 8, i1 false)
  %65 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %fld126 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %65, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld126, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx127 to %struct.rtx_def**
  store %struct.rtx_def* null, %struct.rtx_def** %rtx, align 8
  %66 = load i32, i32* %mode, align 4
  %67 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %68 = bitcast %struct.rtx_def* %67 to i32*
  %bf.load = load i32, i32* %68, align 8
  %bf.value = and i32 %66, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear = and i32 %bf.load, -16711681
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, i32* %68, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  %70 = load i32, i32* %mode, align 4
  %idxprom128 = sext i32 %70 to i64
  %71 = load i32, i32* %i, align 4
  %idxprom129 = sext i32 %71 to i64
  %arrayidx130 = getelementptr inbounds [3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 %idxprom129
  %arrayidx131 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx130, i32 0, i64 %idxprom128
  store %struct.rtx_def* %69, %struct.rtx_def** %arrayidx131, align 8
  br label %for.inc.132

for.inc.132:                                      ; preds = %cond.end.124
  %72 = load i32, i32* %mode, align 4
  %idxprom133 = sext i32 %72 to i64
  %arrayidx134 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom133
  %73 = load i8, i8* %arrayidx134, align 1
  %conv135 = zext i8 %73 to i32
  store i32 %conv135, i32* %mode, align 4
  br label %for.cond.111

for.end.136:                                      ; preds = %for.cond.111
  %74 = load i32, i32* %i, align 4
  %conv137 = sext i32 %74 to i64
  %call138 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv137)
  %75 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %75 to i64
  %arrayidx140 = getelementptr inbounds [3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 %idxprom139
  %arrayidx141 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx140, i32 0, i64 0
  store %struct.rtx_def* %call138, %struct.rtx_def** %arrayidx141, align 8
  %76 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 1), align 4
  store i32 %76, i32* %mode, align 4
  br label %for.cond.142

for.cond.142:                                     ; preds = %for.inc.152, %for.end.136
  %77 = load i32, i32* %mode, align 4
  %cmp143 = icmp ne i32 %77, 0
  br i1 %cmp143, label %for.body.145, label %for.end.156

for.body.145:                                     ; preds = %for.cond.142
  %78 = load i32, i32* %i, align 4
  %conv146 = sext i32 %78 to i64
  %call147 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv146)
  %79 = load i32, i32* %mode, align 4
  %idxprom148 = sext i32 %79 to i64
  %80 = load i32, i32* %i, align 4
  %idxprom149 = sext i32 %80 to i64
  %arrayidx150 = getelementptr inbounds [3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 %idxprom149
  %arrayidx151 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx150, i32 0, i64 %idxprom148
  store %struct.rtx_def* %call147, %struct.rtx_def** %arrayidx151, align 8
  br label %for.inc.152

for.inc.152:                                      ; preds = %for.body.145
  %81 = load i32, i32* %mode, align 4
  %idxprom153 = sext i32 %81 to i64
  %arrayidx154 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom153
  %82 = load i8, i8* %arrayidx154, align 1
  %conv155 = zext i8 %82 to i32
  store i32 %conv155, i32* %mode, align 4
  br label %for.cond.142

for.end.156:                                      ; preds = %for.cond.142
  %83 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 3), align 4
  store i32 %83, i32* %mode, align 4
  br label %for.cond.157

for.cond.157:                                     ; preds = %for.inc.167, %for.end.156
  %84 = load i32, i32* %mode, align 4
  %cmp158 = icmp ne i32 %84, 0
  br i1 %cmp158, label %for.body.160, label %for.end.171

for.body.160:                                     ; preds = %for.cond.157
  %85 = load i32, i32* %i, align 4
  %conv161 = sext i32 %85 to i64
  %call162 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv161)
  %86 = load i32, i32* %mode, align 4
  %idxprom163 = sext i32 %86 to i64
  %87 = load i32, i32* %i, align 4
  %idxprom164 = sext i32 %87 to i64
  %arrayidx165 = getelementptr inbounds [3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 %idxprom164
  %arrayidx166 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx165, i32 0, i64 %idxprom163
  store %struct.rtx_def* %call162, %struct.rtx_def** %arrayidx166, align 8
  br label %for.inc.167

for.inc.167:                                      ; preds = %for.body.160
  %88 = load i32, i32* %mode, align 4
  %idxprom168 = sext i32 %88 to i64
  %arrayidx169 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom168
  %89 = load i8, i8* %arrayidx169, align 1
  %conv170 = zext i8 %89 to i32
  store i32 %conv170, i32* %mode, align 4
  br label %for.cond.157

for.end.171:                                      ; preds = %for.cond.157
  br label %for.inc.172

for.inc.172:                                      ; preds = %for.end.171
  %90 = load i32, i32* %i, align 4
  %inc173 = add nsw i32 %90, 1
  store i32 %inc173, i32* %i, align 4
  br label %for.cond.107

for.end.174:                                      ; preds = %for.cond.107
  %91 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 7), align 4
  store i32 %91, i32* %mode, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.182, %for.end.174
  %92 = load i32, i32* %mode, align 4
  %cmp176 = icmp ne i32 %92, 0
  br i1 %cmp176, label %for.body.178, label %for.end.186

for.body.178:                                     ; preds = %for.cond.175
  %93 = load i32, i32* %mode, align 4
  %call179 = call %struct.rtx_def* @gen_const_vector_0(i32 %93)
  %94 = load i32, i32* %mode, align 4
  %idxprom180 = sext i32 %94 to i64
  %arrayidx181 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom180
  store %struct.rtx_def* %call179, %struct.rtx_def** %arrayidx181, align 8
  br label %for.inc.182

for.inc.182:                                      ; preds = %for.body.178
  %95 = load i32, i32* %mode, align 4
  %idxprom183 = sext i32 %95 to i64
  %arrayidx184 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom183
  %96 = load i8, i8* %arrayidx184, align 1
  %conv185 = zext i8 %96 to i32
  store i32 %conv185, i32* %mode, align 4
  br label %for.cond.175

for.end.186:                                      ; preds = %for.cond.175
  %97 = load i32, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @class_narrowest_mode, i32 0, i64 8), align 4
  store i32 %97, i32* %mode, align 4
  br label %for.cond.187

for.cond.187:                                     ; preds = %for.inc.194, %for.end.186
  %98 = load i32, i32* %mode, align 4
  %cmp188 = icmp ne i32 %98, 0
  br i1 %cmp188, label %for.body.190, label %for.end.198

for.body.190:                                     ; preds = %for.cond.187
  %99 = load i32, i32* %mode, align 4
  %call191 = call %struct.rtx_def* @gen_const_vector_0(i32 %99)
  %100 = load i32, i32* %mode, align 4
  %idxprom192 = sext i32 %100 to i64
  %arrayidx193 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom192
  store %struct.rtx_def* %call191, %struct.rtx_def** %arrayidx193, align 8
  br label %for.inc.194

for.inc.194:                                      ; preds = %for.body.190
  %101 = load i32, i32* %mode, align 4
  %idxprom195 = sext i32 %101 to i64
  %arrayidx196 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_wider_mode, i32 0, i64 %idxprom195
  %102 = load i8, i8* %arrayidx196, align 1
  %conv197 = zext i8 %102 to i32
  store i32 %conv197, i32* %mode, align 4
  br label %for.cond.187

for.end.198:                                      ; preds = %for.cond.187
  store i32 52, i32* %i, align 4
  br label %for.cond.199

for.cond.199:                                     ; preds = %for.inc.211, %for.end.198
  %103 = load i32, i32* %i, align 4
  %cmp200 = icmp slt i32 %103, 59
  br i1 %cmp200, label %for.body.202, label %for.end.213

for.body.202:                                     ; preds = %for.cond.199
  %104 = load i32, i32* %i, align 4
  %idxprom203 = sext i32 %104 to i64
  %arrayidx204 = getelementptr inbounds [59 x i32], [59 x i32]* @mode_class, i32 0, i64 %idxprom203
  %105 = load i32, i32* %arrayidx204, align 4
  %cmp205 = icmp eq i32 %105, 4
  br i1 %cmp205, label %if.then.207, label %if.end.210

if.then.207:                                      ; preds = %for.body.202
  %106 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  %107 = load i32, i32* %i, align 4
  %idxprom208 = sext i32 %107 to i64
  %arrayidx209 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom208
  store %struct.rtx_def* %106, %struct.rtx_def** %arrayidx209, align 8
  br label %if.end.210

if.end.210:                                       ; preds = %if.then.207, %for.body.202
  br label %for.inc.211

for.inc.211:                                      ; preds = %if.end.210
  %108 = load i32, i32* %i, align 4
  %inc212 = add nsw i32 %108, 1
  store i32 %inc212, i32* %i, align 4
  br label %for.cond.199

for.end.213:                                      ; preds = %for.cond.199
  %109 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 64), align 8
  store %struct.rtx_def* %109, %struct.rtx_def** getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0, i64 1), align 8
  %110 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([129 x %struct.rtx_def*], [129 x %struct.rtx_def*]* @const_int_rtx, i32 0, i64 65), align 8
  store %struct.rtx_def* %110, %struct.rtx_def** getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 1, i64 1), align 8
  call void @ggc_add_rtx_root(%struct.rtx_def** getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i32 0, i32 0), i32 177)
  call void @ggc_add_rtx_root(%struct.rtx_def** @const_true_rtx, i32 1)
  store %struct.rtx_def* null, %struct.rtx_def** @struct_value_rtx, align 8
  store %struct.rtx_def* null, %struct.rtx_def** @struct_value_incoming_rtx, align 8
  %111 = load i32, i32* @target_flags, align 4
  %and214 = and i32 %111, 33554432
  %tobool215 = icmp ne i32 %and214, 0
  %cond216 = select i1 %tobool215, i32 5, i32 4
  %112 = load i32, i32* @target_flags, align 4
  %and217 = and i32 %112, 33554432
  %tobool218 = icmp ne i32 %and217, 0
  %cond219 = select i1 %tobool218, i32 39, i32 2
  %call220 = call %struct.rtx_def* @gen_rtx_REG(i32 %cond216, i32 %cond219)
  store %struct.rtx_def* %call220, %struct.rtx_def** @static_chain_rtx, align 8
  %113 = load %struct.rtx_def*, %struct.rtx_def** @static_chain_rtx, align 8
  store %struct.rtx_def* %113, %struct.rtx_def** @static_chain_incoming_rtx, align 8
  %114 = load i32, i32* @target_flags, align 4
  %and221 = and i32 %114, 33554432
  %tobool222 = icmp ne i32 %and221, 0
  br i1 %tobool222, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %for.end.213
  %115 = load i32, i32* @flag_pic, align 4
  %tobool223 = icmp ne i32 %115, 0
  %lnot224 = xor i1 %tobool223, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.213
  %116 = phi i1 [ true, %for.end.213 ], [ %lnot224, %lor.rhs ]
  %cond226 = select i1 %116, i32 -1, i32 3
  %cmp227 = icmp ne i32 %cond226, -1
  br i1 %cmp227, label %if.then.229, label %if.end.242

if.then.229:                                      ; preds = %lor.end
  %117 = load i32, i32* @target_flags, align 4
  %and230 = and i32 %117, 33554432
  %tobool231 = icmp ne i32 %and230, 0
  %cond232 = select i1 %tobool231, i32 5, i32 4
  %118 = load i32, i32* @target_flags, align 4
  %and233 = and i32 %118, 33554432
  %tobool234 = icmp ne i32 %and233, 0
  br i1 %tobool234, label %lor.end.239, label %lor.rhs.235

lor.rhs.235:                                      ; preds = %if.then.229
  %119 = load i32, i32* @flag_pic, align 4
  %tobool236 = icmp ne i32 %119, 0
  %lnot237 = xor i1 %tobool236, true
  br label %lor.end.239

lor.end.239:                                      ; preds = %lor.rhs.235, %if.then.229
  %120 = phi i1 [ true, %if.then.229 ], [ %lnot237, %lor.rhs.235 ]
  %cond240 = select i1 %120, i32 -1, i32 3
  %call241 = call %struct.rtx_def* @gen_raw_REG(i32 %cond232, i32 %cond240)
  store %struct.rtx_def* %call241, %struct.rtx_def** @pic_offset_table_rtx, align 8
  br label %if.end.242

if.end.242:                                       ; preds = %lor.end.239, %lor.end
  call void @ggc_add_rtx_root(%struct.rtx_def** @pic_offset_table_rtx, i32 1)
  call void @ggc_add_rtx_root(%struct.rtx_def** @struct_value_rtx, i32 1)
  call void @ggc_add_rtx_root(%struct.rtx_def** @struct_value_incoming_rtx, i32 1)
  call void @ggc_add_rtx_root(%struct.rtx_def** @static_chain_rtx, i32 1)
  call void @ggc_add_rtx_root(%struct.rtx_def** @static_chain_incoming_rtx, i32 1)
  call void @ggc_add_rtx_root(%struct.rtx_def** @return_address_pointer_rtx, i32 1)
  ret void
}

declare %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @const_int_htab_hash(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.rtx_def*
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %2 = load i64, i64* %rtwint, align 8
  %conv = trunc i64 %2 to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal i32 @const_int_htab_eq(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.rtx_def*
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %2 = load i64, i64* %rtwint, align 8
  %3 = load i8*, i8** %y.addr, align 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8
  %cmp = icmp eq i64 %2, %5
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare void @ggc_add_deletable_htab(i8*, i32 (i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @mem_attrs_htab_hash(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %p = alloca %struct.mem_attrs*, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.mem_attrs*
  store %struct.mem_attrs* %1, %struct.mem_attrs** %p, align 8
  %2 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %2, i32 0, i32 0
  %3 = load i64, i64* %alias, align 8
  %4 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %4, i32 0, i32 4
  %5 = load i32, i32* %align, align 4
  %mul = mul i32 %5, 1000
  %conv = zext i32 %mul to i64
  %xor = xor i64 %3, %conv
  %6 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %offset = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %6, i32 0, i32 2
  %7 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8
  %tobool = icmp ne %struct.rtx_def* %7, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %8 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %offset1 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %8, i32 0, i32 2
  %9 = load %struct.rtx_def*, %struct.rtx_def** %offset1, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx to i64*
  %10 = load i64, i64* %rtwint, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %10, %cond.true ], [ 0, %cond.false ]
  %mul2 = mul nsw i64 %cond, 50000
  %xor3 = xor i64 %xor, %mul2
  %11 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %size = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %11, i32 0, i32 3
  %12 = load %struct.rtx_def*, %struct.rtx_def** %size, align 8
  %tobool4 = icmp ne %struct.rtx_def* %12, null
  br i1 %tobool4, label %cond.true.5, label %cond.false.10

cond.true.5:                                      ; preds = %cond.end
  %13 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %size6 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %13, i32 0, i32 3
  %14 = load %struct.rtx_def*, %struct.rtx_def** %size6, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtwint9 = bitcast %union.rtunion_def* %arrayidx8 to i64*
  %15 = load i64, i64* %rtwint9, align 8
  br label %cond.end.11

cond.false.10:                                    ; preds = %cond.end
  br label %cond.end.11

cond.end.11:                                      ; preds = %cond.false.10, %cond.true.5
  %cond12 = phi i64 [ %15, %cond.true.5 ], [ 0, %cond.false.10 ]
  %mul13 = mul nsw i64 %cond12, 2500000
  %xor14 = xor i64 %xor3, %mul13
  %16 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %expr = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %16, i32 0, i32 1
  %17 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %18 = ptrtoint %union.tree_node* %17 to i64
  %xor15 = xor i64 %xor14, %18
  %conv16 = trunc i64 %xor15 to i32
  ret i32 %conv16
}

; Function Attrs: nounwind uwtable
define internal i32 @mem_attrs_htab_eq(i8* %x, i8* %y) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %y.addr = alloca i8*, align 8
  %p = alloca %struct.mem_attrs*, align 8
  %q = alloca %struct.mem_attrs*, align 8
  store i8* %x, i8** %x.addr, align 8
  store i8* %y, i8** %y.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.mem_attrs*
  store %struct.mem_attrs* %1, %struct.mem_attrs** %p, align 8
  %2 = load i8*, i8** %y.addr, align 8
  %3 = bitcast i8* %2 to %struct.mem_attrs*
  store %struct.mem_attrs* %3, %struct.mem_attrs** %q, align 8
  %4 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %alias = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %4, i32 0, i32 0
  %5 = load i64, i64* %alias, align 8
  %6 = load %struct.mem_attrs*, %struct.mem_attrs** %q, align 8
  %alias1 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %6, i32 0, i32 0
  %7 = load i64, i64* %alias1, align 8
  %cmp = icmp eq i64 %5, %7
  br i1 %cmp, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %entry
  %8 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %expr = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %8, i32 0, i32 1
  %9 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %10 = load %struct.mem_attrs*, %struct.mem_attrs** %q, align 8
  %expr2 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %10, i32 0, i32 1
  %11 = load %union.tree_node*, %union.tree_node** %expr2, align 8
  %cmp3 = icmp eq %union.tree_node* %9, %11
  br i1 %cmp3, label %land.lhs.true.4, label %land.end

land.lhs.true.4:                                  ; preds = %land.lhs.true
  %12 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %offset = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %12, i32 0, i32 2
  %13 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8
  %14 = load %struct.mem_attrs*, %struct.mem_attrs** %q, align 8
  %offset5 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %14, i32 0, i32 2
  %15 = load %struct.rtx_def*, %struct.rtx_def** %offset5, align 8
  %cmp6 = icmp eq %struct.rtx_def* %13, %15
  br i1 %cmp6, label %land.lhs.true.7, label %land.end

land.lhs.true.7:                                  ; preds = %land.lhs.true.4
  %16 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %size = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %16, i32 0, i32 3
  %17 = load %struct.rtx_def*, %struct.rtx_def** %size, align 8
  %18 = load %struct.mem_attrs*, %struct.mem_attrs** %q, align 8
  %size8 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %18, i32 0, i32 3
  %19 = load %struct.rtx_def*, %struct.rtx_def** %size8, align 8
  %cmp9 = icmp eq %struct.rtx_def* %17, %19
  br i1 %cmp9, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.7
  %20 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %align = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %20, i32 0, i32 4
  %21 = load i32, i32* %align, align 4
  %22 = load %struct.mem_attrs*, %struct.mem_attrs** %q, align 8
  %align10 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %22, i32 0, i32 4
  %23 = load i32, i32* %align10, align 4
  %cmp11 = icmp eq i32 %21, %23
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.7, %land.lhs.true.4, %land.lhs.true, %entry
  %24 = phi i1 [ false, %land.lhs.true.7 ], [ false, %land.lhs.true.4 ], [ false, %land.lhs.true ], [ false, %entry ], [ %cmp11, %land.rhs ]
  %land.ext = zext i1 %24 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define internal void @mem_attrs_mark(i8* %x) #0 {
entry:
  %x.addr = alloca i8*, align 8
  %p = alloca %struct.mem_attrs*, align 8
  %t__ = alloca %union.tree_node*, align 8
  %r__ = alloca %struct.rtx_def*, align 8
  %r__28 = alloca %struct.rtx_def*, align 8
  store i8* %x, i8** %x.addr, align 8
  %0 = load i8*, i8** %x.addr, align 8
  %1 = bitcast i8* %0 to %struct.mem_attrs*
  store %struct.mem_attrs* %1, %struct.mem_attrs** %p, align 8
  %2 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %expr = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %2, i32 0, i32 1
  %3 = load %union.tree_node*, %union.tree_node** %expr, align 8
  %tobool = icmp ne %union.tree_node* %3, null
  br i1 %tobool, label %if.then, label %if.end.12

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %expr1 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %4, i32 0, i32 1
  %5 = load %union.tree_node*, %union.tree_node** %expr1, align 8
  store %union.tree_node* %5, %union.tree_node** %t__, align 8
  %6 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %cmp = icmp ne %union.tree_node* %6, null
  br i1 %cmp, label %land.lhs.true, label %if.end.10

land.lhs.true:                                    ; preds = %do.body
  %7 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %8 = bitcast %union.tree_node* %7 to i8*
  %call = call i32 @ggc_set_mark(i8* %8)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end.10, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true
  br label %do.body.4

do.body.4:                                        ; preds = %if.then.3
  %9 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %9, i32 0, i32 1
  %10 = load i64, i64* %elements_used, align 8
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 0
  %12 = load i64, i64* %num_elements, align 8
  %cmp5 = icmp uge i64 %10, %12
  br i1 %cmp5, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %do.body.4
  %13 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %num_elements7 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 0
  %15 = load i64, i64* %num_elements7, align 8
  %mul = mul i64 2, %15
  %call8 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %13, i64 %mul)
  store %struct.varray_head_tag* %call8, %struct.varray_head_tag** @ggc_pending_trees, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.6, %do.body.4
  %16 = load %union.tree_node*, %union.tree_node** %t__, align 8
  %17 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %elements_used9 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %17, i32 0, i32 1
  %18 = load i64, i64* %elements_used9, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %elements_used9, align 8
  %19 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ggc_pending_trees, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %19, i32 0, i32 4
  %tree = bitcast %union.varray_data_tag* %data to [1 x %union.tree_node*]*
  %arrayidx = getelementptr inbounds [1 x %union.tree_node*], [1 x %union.tree_node*]* %tree, i32 0, i64 %18
  store %union.tree_node* %16, %union.tree_node** %arrayidx, align 8
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %land.lhs.true, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  br label %if.end.12

if.end.12:                                        ; preds = %do.end.11, %entry
  %20 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %offset = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %20, i32 0, i32 2
  %21 = load %struct.rtx_def*, %struct.rtx_def** %offset, align 8
  %tobool13 = icmp ne %struct.rtx_def* %21, null
  br i1 %tobool13, label %if.then.14, label %if.end.24

if.then.14:                                       ; preds = %if.end.12
  br label %do.body.15

do.body.15:                                       ; preds = %if.then.14
  %22 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %offset16 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %22, i32 0, i32 2
  %23 = load %struct.rtx_def*, %struct.rtx_def** %offset16, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %r__, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %cmp17 = icmp ne %struct.rtx_def* %24, null
  br i1 %cmp17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %do.body.15
  %25 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  %26 = bitcast %struct.rtx_def* %25 to i8*
  %call19 = call i32 @ggc_set_mark(i8* %26)
  %tobool20 = icmp ne i32 %call19, 0
  br i1 %tobool20, label %if.end.22, label %if.then.21

if.then.21:                                       ; preds = %land.lhs.true.18
  %27 = load %struct.rtx_def*, %struct.rtx_def** %r__, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %27)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.21, %land.lhs.true.18, %do.body.15
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %if.end.12
  %28 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %size = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %28, i32 0, i32 3
  %29 = load %struct.rtx_def*, %struct.rtx_def** %size, align 8
  %tobool25 = icmp ne %struct.rtx_def* %29, null
  br i1 %tobool25, label %if.then.26, label %if.end.37

if.then.26:                                       ; preds = %if.end.24
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %30 = load %struct.mem_attrs*, %struct.mem_attrs** %p, align 8
  %size29 = getelementptr inbounds %struct.mem_attrs, %struct.mem_attrs* %30, i32 0, i32 3
  %31 = load %struct.rtx_def*, %struct.rtx_def** %size29, align 8
  store %struct.rtx_def* %31, %struct.rtx_def** %r__28, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %r__28, align 8
  %cmp30 = icmp ne %struct.rtx_def* %32, null
  br i1 %cmp30, label %land.lhs.true.31, label %if.end.35

land.lhs.true.31:                                 ; preds = %do.body.27
  %33 = load %struct.rtx_def*, %struct.rtx_def** %r__28, align 8
  %34 = bitcast %struct.rtx_def* %33 to i8*
  %call32 = call i32 @ggc_set_mark(i8* %34)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.35, label %if.then.34

if.then.34:                                       ; preds = %land.lhs.true.31
  %35 = load %struct.rtx_def*, %struct.rtx_def** %r__28, align 8
  call void @ggc_mark_rtx_children(%struct.rtx_def* %35)
  br label %if.end.35

if.end.35:                                        ; preds = %if.then.34, %land.lhs.true.31, %do.body.27
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %if.end.24
  ret void
}

declare void @ggc_add_rtx_root(%struct.rtx_def**, i32) #1

declare void @ereal_atof(%struct.realvaluetype* sret, i8*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @gen_const_vector_0(i32 %mode) #0 {
entry:
  %mode.addr = alloca i32, align 4
  %tem = alloca %struct.rtx_def*, align 8
  %v = alloca %struct.rtvec_def*, align 8
  %units = alloca i32, align 4
  %i = alloca i32, align 4
  %inner = alloca i32, align 4
  store i32 %mode, i32* %mode.addr, align 4
  %0 = load i32, i32* %mode.addr, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %2 = load i32, i32* %mode.addr, align 4
  %idxprom2 = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom2
  %3 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %4 = load i32, i32* %mode.addr, align 4
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_unit_size, i32 0, i64 %idxprom5
  %5 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %div = sdiv i32 %conv4, %conv7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %div, %cond.false ]
  store i32 %cond, i32* %units, align 4
  %6 = load i32, i32* %mode.addr, align 4
  %idxprom8 = sext i32 %6 to i64
  %arrayidx9 = getelementptr inbounds [59 x i32], [59 x i32]* @inner_mode_array, i32 0, i64 %idxprom8
  %7 = load i32, i32* %arrayidx9, align 4
  store i32 %7, i32* %inner, align 4
  %8 = load i32, i32* %units, align 4
  %call = call %struct.rtvec_def* @rtvec_alloc(i32 %8)
  store %struct.rtvec_def* %call, %struct.rtvec_def** %v, align 8
  %9 = load i32, i32* %inner, align 4
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom10
  %10 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx11, align 8
  %tobool = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %cond.end
  call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i32 4941, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__FUNCTION__.gen_const_vector_0, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %cond.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4
  %12 = load i32, i32* %units, align 4
  %cmp12 = icmp slt i32 %11, %12
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %inner, align 4
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* getelementptr inbounds ([3 x [59 x %struct.rtx_def*]], [3 x [59 x %struct.rtx_def*]]* @const_tiny_rtx, i32 0, i64 0), i32 0, i64 %idxprom14
  %14 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx15, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %15 to i64
  %16 = load %struct.rtvec_def*, %struct.rtvec_def** %v, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %16, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom16
  store %struct.rtx_def* %14, %struct.rtx_def** %arrayidx17, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i32, i32* %mode.addr, align 4
  %19 = load %struct.rtvec_def*, %struct.rtvec_def** %v, align 8
  %call18 = call %struct.rtx_def* @gen_rtx_fmt_E(i32 56, i32 %18, %struct.rtvec_def* %19)
  store %struct.rtx_def* %call18, %struct.rtx_def** %tem, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %tem, align 8
  ret %struct.rtx_def* %20
}

; Function Attrs: nounwind uwtable
define i32 @force_line_numbers() #0 {
entry:
  %old = alloca i32, align 4
  %0 = load i32, i32* @no_line_numbers, align 4
  store i32 %0, i32* %old, align 4
  store i32 0, i32* @no_line_numbers, align 4
  %1 = load i32, i32* %old, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @force_next_line_note()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, i32* %old, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define void @restore_line_number_status(i32 %old_value) #0 {
entry:
  %old_value.addr = alloca i32, align 4
  store i32 %old_value, i32* %old_value.addr, align 4
  %0 = load i32, i32* %old_value.addr, align 4
  store i32 %0, i32* @no_line_numbers, align 4
  ret void
}

declare %union.tree_node* @find_placeholder(%union.tree_node*, %union.tree_node**) #1

declare i8** @htab_find_slot(%struct.htab*, i8*, i32) #1

declare i8* @ggc_alloc(i64) #1

declare %struct.rtx_def* @memory_address(i32, %struct.rtx_def*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }
attributes #7 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
