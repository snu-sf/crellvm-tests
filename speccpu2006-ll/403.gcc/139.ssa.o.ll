; ModuleID = 'ssa.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.varray_head_tag = type { i64, i64, i64, i8*, %union.varray_data_tag }
%union.varray_data_tag = type { [1 x %struct.const_equiv_data] }
%struct.const_equiv_data = type { %struct.rtx_def*, i32 }
%struct.rtx_def = type { i32, [1 x %union.rtunion_def] }
%union.rtunion_def = type { i64 }
%struct.basic_block_def = type { %struct.rtx_def*, %struct.rtx_def*, %union.tree_node*, %union.tree_node*, %struct.edge_def*, %struct.edge_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i8*, i32, i32, i64, i32, i32 }
%union.tree_node = type opaque
%struct.edge_def = type { %struct.edge_def*, %struct.edge_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.rtx_def*, i8*, i32, i32, i64 }
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32 }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.simple_bitmap_def = type { i32, i32, i32, [1 x i64] }
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
%struct.ssa_rename_from_pair = type { i32, %struct.rtx_def* }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, %struct.partition_elem*, i32 }
%struct.conflict_graph_def = type opaque
%struct.rename_set_data = type { %struct.rename_set_data*, %struct.rtx_def**, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def* }
%struct.rename_context = type { %struct.rename_set_data*, %struct.rename_set_data*, %struct.rtx_def* }
%struct.phi_coalesce_context = type { %struct.partition_def*, %struct.conflict_graph_def*, i32 }
%struct.ssa_rename_from_hash_table_data = type { %struct.simple_bitmap_def*, %struct.partition_def* }

@in_ssa_form = global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ssa_rename_from's hash table contents:\0A\00", align 1
@ssa_rename_from_ht = common global %struct.htab* null, align 8
@n_basic_blocks = external global i32, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ssa.c\00", align 1
@__FUNCTION__.convert_to_ssa = private unnamed_addr constant [15 x i8] c"convert_to_ssa\00", align 1
@rtl_dump_file = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c";; Immediate Dominators:\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c";\09%3d = %3d\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c";; Dominance Frontiers:\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"; Basic Block\00", align 1
@ssa_max_reg_num = internal global i32 0, align 4
@.str.6 = private unnamed_addr constant [33 x i8] c";; Iterated Dominance Frontiers:\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"; Register\00", align 1
@conservative_reg_partition = internal global i32 0, align 4
@__FUNCTION__.convert_from_ssa = private unnamed_addr constant [17 x i8] c"convert_from_ssa\00", align 1
@basic_block_info = external global %struct.varray_head_tag*, align 8
@entry_exit_blocks = external global [2 x %struct.basic_block_def], align 16
@rtx_class = external constant [153 x i8], align 16
@ssa_definition = common global %struct.varray_head_tag* null, align 8
@ssa_rename_from = common global %struct.varray_head_tag* null, align 8
@.str.8 = private unnamed_addr constant [48 x i8] c"ssa_rename_from maps pseudo %i to original %i.\0A\00", align 1
@fe_evals = internal global %struct.simple_bitmap_def** null, align 8
@fe_current_bb = internal global i32 0, align 4
@.str.9 = private unnamed_addr constant [52 x i8] c"Iterated dominance frontier: %d passes on %d regs.\0A\00", align 1
@cfun = external global %struct.function*, align 8
@global_rtl = external global [11 x %struct.rtx_def*], align 16
@.str.10 = private unnamed_addr constant [15 x i8] c"ssa_definition\00", align 1
@ssa_rename_to_pseudo = internal global %struct.rtx_def** null, align 8
@ssa_rename_to_hard = internal global [53 x [59 x %struct.rtx_def*]] zeroinitializer, align 16
@__FUNCTION__.rename_block = private unnamed_addr constant [13 x i8] c"rename_block\00", align 1
@mode_size = external constant [59 x i8], align 16
@__FUNCTION__.rename_insn_1 = private unnamed_addr constant [14 x i8] c"rename_insn_1\00", align 1
@__FUNCTION__.create_delayed_rename = private unnamed_addr constant [22 x i8] c"create_delayed_rename\00", align 1
@__FUNCTION__.apply_delayed_renames = private unnamed_addr constant [22 x i8] c"apply_delayed_renames\00", align 1
@__FUNCTION__.make_regs_equivalent_over_bad_edges = private unnamed_addr constant [36 x i8] c"make_regs_equivalent_over_bad_edges\00", align 1
@__FUNCTION__.make_equivalent_phi_alternatives_equivalent = private unnamed_addr constant [44 x i8] c"make_equivalent_phi_alternatives_equivalent\00", align 1
@__FUNCTION__.mark_reg_in_phi = private unnamed_addr constant [16 x i8] c"mark_reg_in_phi\00", align 1
@__FUNCTION__.rename_equivalent_regs = private unnamed_addr constant [23 x i8] c"rename_equivalent_regs\00", align 1
@__FUNCTION__.rename_equivalent_regs_in_insn = private unnamed_addr constant [31 x i8] c"rename_equivalent_regs_in_insn\00", align 1
@__FUNCTION__.eliminate_phi = private unnamed_addr constant [14 x i8] c"eliminate_phi\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"Emitting copy on edge (%d,%d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define void @ssa_rename_from_print() #0 {
entry:
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0))
  %0 = load %struct.htab*, %struct.htab** @ssa_rename_from_ht, align 8
  call void @htab_traverse(%struct.htab* %0, i32 (i8**, i8*)* @ssa_rename_from_print_1, i8* null)
  ret void
}

declare i32 @printf(i8*, ...) #1

declare void @htab_traverse(%struct.htab*, i32 (i8**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ssa_rename_from_print_1(i8** %slot, i8* %data) #0 {
entry:
  %slot.addr = alloca i8**, align 8
  %data.addr = alloca i8*, align 8
  %p = alloca %struct.ssa_rename_from_pair*, align 8
  store i8** %slot, i8*** %slot.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8**, i8*** %slot.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.ssa_rename_from_pair*
  store %struct.ssa_rename_from_pair* %2, %struct.ssa_rename_from_pair** %p, align 8
  %3 = load %struct.ssa_rename_from_pair*, %struct.ssa_rename_from_pair** %p, align 8
  %reg = getelementptr inbounds %struct.ssa_rename_from_pair, %struct.ssa_rename_from_pair* %3, i32 0, i32 0
  %4 = load i32, i32* %reg, align 4
  %5 = load %struct.ssa_rename_from_pair*, %struct.ssa_rename_from_pair** %p, align 8
  %original = getelementptr inbounds %struct.ssa_rename_from_pair, %struct.ssa_rename_from_pair* %5, i32 0, i32 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %original, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %7 = load i32, i32* %rtuint, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i32 0, i32 0), i32 %4, i32 %7)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @remove_phi_alternative(%struct.rtx_def* %set, %struct.basic_block_def* %block) #0 {
entry:
  %retval = alloca i32, align 4
  %set.addr = alloca %struct.rtx_def*, align 8
  %block.addr = alloca %struct.basic_block_def*, align 8
  %phi_vec = alloca %struct.rtvec_def*, align 8
  %num_elem = alloca i32, align 4
  %v = alloca i32, align 4
  %c = alloca i32, align 4
  store %struct.rtx_def* %set, %struct.rtx_def** %set.addr, align 8
  store %struct.basic_block_def* %block, %struct.basic_block_def** %block.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtvec_def**
  %2 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  store %struct.rtvec_def* %2, %struct.rtvec_def** %phi_vec, align 8
  %3 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %num_elem3 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %3, i32 0, i32 0
  %4 = load i32, i32* %num_elem3, align 4
  store i32 %4, i32* %num_elem, align 4
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %block.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 11
  %6 = load i32, i32* %index, align 4
  store i32 %6, i32* %c, align 4
  %7 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %7, 2
  store i32 %sub, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %v, align 4
  %cmp = icmp sge i32 %8, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %v, align 4
  %add = add nsw i32 %9, 1
  %idxprom = sext i32 %add to i64
  %10 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %10, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %11 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx6 to i64*
  %12 = load i64, i64* %rtwint, align 8
  %13 = load i32, i32* %c, align 4
  %conv = sext i32 %13 to i64
  %cmp7 = icmp eq i64 %12, %conv
  br i1 %cmp7, label %if.then, label %if.end.30

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %v, align 4
  %15 = load i32, i32* %num_elem, align 4
  %sub9 = sub nsw i32 %15, 2
  %cmp10 = icmp slt i32 %14, %sub9
  br i1 %cmp10, label %if.then.12, label %if.end

if.then.12:                                       ; preds = %if.then
  %16 = load i32, i32* %num_elem, align 4
  %sub13 = sub nsw i32 %16, 2
  %idxprom14 = sext i32 %sub13 to i64
  %17 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %elem15 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %17, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem15, i32 0, i64 %idxprom14
  %18 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx16, align 8
  %19 = load i32, i32* %v, align 4
  %idxprom17 = sext i32 %19 to i64
  %20 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %elem18 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %20, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem18, i32 0, i64 %idxprom17
  store %struct.rtx_def* %18, %struct.rtx_def** %arrayidx19, align 8
  %21 = load i32, i32* %num_elem, align 4
  %sub20 = sub nsw i32 %21, 1
  %idxprom21 = sext i32 %sub20 to i64
  %22 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %elem22 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %22, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem22, i32 0, i64 %idxprom21
  %23 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx23, align 8
  %24 = load i32, i32* %v, align 4
  %add24 = add nsw i32 %24, 1
  %idxprom25 = sext i32 %add24 to i64
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %elem26 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem26, i32 0, i64 %idxprom25
  store %struct.rtx_def* %23, %struct.rtx_def** %arrayidx27, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.12, %if.then
  %26 = load i32, i32* %num_elem, align 4
  %sub28 = sub nsw i32 %26, 2
  %27 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %num_elem29 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %27, i32 0, i32 0
  store i32 %sub28, i32* %num_elem29, align 4
  store i32 1, i32* %retval
  br label %return

if.end.30:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.30
  %28 = load i32, i32* %v, align 4
  %sub31 = sub nsw i32 %28, 2
  store i32 %sub31, i32* %v, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.end
  %29 = load i32, i32* %retval
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define void @compute_dominance_frontiers(%struct.simple_bitmap_def** %frontiers, i32* %idom) #0 {
entry:
  %frontiers.addr = alloca %struct.simple_bitmap_def**, align 8
  %idom.addr = alloca i32*, align 8
  %done = alloca %struct.simple_bitmap_def*, align 8
  store %struct.simple_bitmap_def** %frontiers, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  store i32* %idom, i32** %idom.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  %call = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %0)
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %done, align 8
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %done, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %1)
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  %3 = load i32*, i32** %idom.addr, align 8
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %done, align 8
  call void @compute_dominance_frontiers_1(%struct.simple_bitmap_def** %2, i32* %3, i32 0, %struct.simple_bitmap_def* %4)
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %done, align 8
  %6 = bitcast %struct.simple_bitmap_def* %5 to i8*
  call void @free(i8* %6) #4
  ret void
}

declare %struct.simple_bitmap_def* @sbitmap_alloc(i32) #1

declare void @sbitmap_zero(%struct.simple_bitmap_def*) #1

; Function Attrs: nounwind uwtable
define internal void @compute_dominance_frontiers_1(%struct.simple_bitmap_def** %frontiers, i32* %idom, i32 %bb, %struct.simple_bitmap_def* %done) #0 {
entry:
  %frontiers.addr = alloca %struct.simple_bitmap_def**, align 8
  %idom.addr = alloca i32*, align 8
  %bb.addr = alloca i32, align 4
  %done.addr = alloca %struct.simple_bitmap_def*, align 8
  %b = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %c = alloca i32, align 4
  %x = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  store %struct.simple_bitmap_def** %frontiers, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  store i32* %idom, i32** %idom.addr, align 8
  store i32 %bb, i32* %bb.addr, align 4
  store %struct.simple_bitmap_def* %done, %struct.simple_bitmap_def** %done.addr, align 8
  %0 = load i32, i32* %bb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %b, align 8
  %3 = load i32, i32* %bb.addr, align 4
  %rem = urem i32 %3, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %4 = load i32, i32* %bb.addr, align 4
  %div = udiv i32 %4, 64
  %idxprom2 = zext i32 %div to i64
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %done.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i32 0, i32 3
  %arrayidx3 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom2
  %6 = load i64, i64* %arrayidx3, align 8
  %or = or i64 %6, %shl
  store i64 %or, i64* %arrayidx3, align 8
  %7 = load i32, i32* %bb.addr, align 4
  %idxprom4 = sext i32 %7 to i64
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  %arrayidx5 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %8, i64 %idxprom4
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx5, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %9)
  store i32 0, i32* %c, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %c, align 4
  %11 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %c, align 4
  %idxprom6 = sext i32 %12 to i64
  %13 = load i32*, i32** %idom.addr, align 8
  %arrayidx7 = getelementptr inbounds i32, i32* %13, i64 %idxprom6
  %14 = load i32, i32* %arrayidx7, align 4
  %15 = load i32, i32* %bb.addr, align 4
  %cmp8 = icmp eq i32 %14, %15
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %16 = load i32, i32* %c, align 4
  %div9 = udiv i32 %16, 64
  %idxprom10 = zext i32 %div9 to i64
  %17 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %done.addr, align 8
  %elms11 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %17, i32 0, i32 3
  %arrayidx12 = getelementptr inbounds [1 x i64], [1 x i64]* %elms11, i32 0, i64 %idxprom10
  %18 = load i64, i64* %arrayidx12, align 8
  %19 = load i32, i32* %c, align 4
  %rem13 = urem i32 %19, 64
  %sh_prom14 = zext i32 %rem13 to i64
  %shr = lshr i64 %18, %sh_prom14
  %and = and i64 %shr, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %20 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  %21 = load i32*, i32** %idom.addr, align 8
  %22 = load i32, i32* %c, align 4
  %23 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %done.addr, align 8
  call void @compute_dominance_frontiers_1(%struct.simple_bitmap_def** %20, i32* %21, i32 %22, %struct.simple_bitmap_def* %23)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, i32* %c, align 4
  %inc = add nsw i32 %24, 1
  store i32 %inc, i32* %c, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %25, i32 0, i32 5
  %26 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %26, %struct.edge_def** %e, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.41, %for.end
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool16 = icmp ne %struct.edge_def* %27, null
  br i1 %tobool16, label %for.body.17, label %for.end.42

for.body.17:                                      ; preds = %for.cond.15
  %28 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %28, i32 0, i32 3
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp18 = icmp eq %struct.basic_block_def* %29, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.body.17
  br label %for.inc.41

if.end.20:                                        ; preds = %for.body.17
  %30 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %30, i32 0, i32 3
  %31 = load %struct.basic_block_def*, %struct.basic_block_def** %dest21, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %31, i32 0, i32 11
  %32 = load i32, i32* %index, align 4
  %idxprom22 = sext i32 %32 to i64
  %33 = load i32*, i32** %idom.addr, align 8
  %arrayidx23 = getelementptr inbounds i32, i32* %33, i64 %idxprom22
  %34 = load i32, i32* %arrayidx23, align 4
  %35 = load i32, i32* %bb.addr, align 4
  %cmp24 = icmp ne i32 %34, %35
  br i1 %cmp24, label %if.then.25, label %if.end.40

if.then.25:                                       ; preds = %if.end.20
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 3
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %dest26, align 8
  %index27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %37, i32 0, i32 11
  %38 = load i32, i32* %index27, align 4
  %rem28 = urem i32 %38, 64
  %sh_prom29 = zext i32 %rem28 to i64
  %shl30 = shl i64 1, %sh_prom29
  %39 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest31 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %39, i32 0, i32 3
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %dest31, align 8
  %index32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 11
  %41 = load i32, i32* %index32, align 4
  %div33 = udiv i32 %41, 64
  %idxprom34 = zext i32 %div33 to i64
  %42 = load i32, i32* %bb.addr, align 4
  %idxprom35 = sext i32 %42 to i64
  %43 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %43, i64 %idxprom35
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx36, align 8
  %elms37 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %44, i32 0, i32 3
  %arrayidx38 = getelementptr inbounds [1 x i64], [1 x i64]* %elms37, i32 0, i64 %idxprom34
  %45 = load i64, i64* %arrayidx38, align 8
  %or39 = or i64 %45, %shl30
  store i64 %or39, i64* %arrayidx38, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.25, %if.end.20
  br label %for.inc.41

for.inc.41:                                       ; preds = %if.end.40, %if.then.19
  %46 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %46, i32 0, i32 1
  %47 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %47, %struct.edge_def** %e, align 8
  br label %for.cond.15

for.end.42:                                       ; preds = %for.cond.15
  store i32 0, i32* %c, align 4
  br label %for.cond.43

for.cond.43:                                      ; preds = %for.inc.98, %for.end.42
  %48 = load i32, i32* %c, align 4
  %49 = load i32, i32* @n_basic_blocks, align 4
  %cmp44 = icmp slt i32 %48, %49
  br i1 %cmp44, label %for.body.45, label %for.end.100

for.body.45:                                      ; preds = %for.cond.43
  %50 = load i32, i32* %c, align 4
  %idxprom46 = sext i32 %50 to i64
  %51 = load i32*, i32** %idom.addr, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %51, i64 %idxprom46
  %52 = load i32, i32* %arrayidx47, align 4
  %53 = load i32, i32* %bb.addr, align 4
  %cmp48 = icmp eq i32 %52, %53
  br i1 %cmp48, label %if.then.49, label %if.end.97

if.then.49:                                       ; preds = %for.body.45
  br label %do.body

do.body:                                          ; preds = %if.then.49
  store i32 0, i32* %bit_num_, align 4
  %54 = load i32, i32* %c, align 4
  %idxprom50 = sext i32 %54 to i64
  %55 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  %arrayidx51 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %55, i64 %idxprom50
  %56 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx51, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %56, i32 0, i32 1
  %57 = load i32, i32* %size, align 4
  store i32 %57, i32* %size_, align 4
  %58 = load i32, i32* %c, align 4
  %idxprom52 = sext i32 %58 to i64
  %59 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  %arrayidx53 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %59, i64 %idxprom52
  %60 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx53, align 8
  %elms54 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %60, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms54, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.94, %do.body
  %61 = load i32, i32* %word_num_, align 4
  %62 = load i32, i32* %size_, align 4
  %cmp56 = icmp ult i32 %61, %62
  br i1 %cmp56, label %for.body.57, label %for.end.96

for.body.57:                                      ; preds = %for.cond.55
  %63 = load i32, i32* %word_num_, align 4
  %idxprom58 = zext i32 %63 to i64
  %64 = load i64*, i64** %ptr_, align 8
  %arrayidx59 = getelementptr inbounds i64, i64* %64, i64 %idxprom58
  %65 = load i64, i64* %arrayidx59, align 8
  store i64 %65, i64* %word_, align 8
  %66 = load i64, i64* %word_, align 8
  %cmp60 = icmp ne i64 %66, 0
  br i1 %cmp60, label %if.then.61, label %if.end.93

if.then.61:                                       ; preds = %for.body.57
  br label %for.cond.62

for.cond.62:                                      ; preds = %for.inc.90, %if.then.61
  %67 = load i32, i32* %bit_num_, align 4
  %cmp63 = icmp ult i32 %67, 64
  br i1 %cmp63, label %for.body.64, label %for.end.92

for.body.64:                                      ; preds = %for.cond.62
  %68 = load i32, i32* %bit_num_, align 4
  %sh_prom65 = zext i32 %68 to i64
  %shl66 = shl i64 1, %sh_prom65
  store i64 %shl66, i64* %_mask, align 8
  %69 = load i64, i64* %word_, align 8
  %70 = load i64, i64* %_mask, align 8
  %and67 = and i64 %69, %70
  %cmp68 = icmp ne i64 %and67, 0
  br i1 %cmp68, label %if.then.69, label %if.end.89

if.then.69:                                       ; preds = %for.body.64
  %71 = load i64, i64* %_mask, align 8
  %neg = xor i64 %71, -1
  %72 = load i64, i64* %word_, align 8
  %and70 = and i64 %72, %neg
  store i64 %and70, i64* %word_, align 8
  %73 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %73, 64
  %74 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %74
  store i32 %add, i32* %x, align 4
  %75 = load i32, i32* %x, align 4
  %idxprom71 = sext i32 %75 to i64
  %76 = load i32*, i32** %idom.addr, align 8
  %arrayidx72 = getelementptr inbounds i32, i32* %76, i64 %idxprom71
  %77 = load i32, i32* %arrayidx72, align 4
  %78 = load i32, i32* %bb.addr, align 4
  %cmp73 = icmp ne i32 %77, %78
  br i1 %cmp73, label %if.then.74, label %if.end.85

if.then.74:                                       ; preds = %if.then.69
  %79 = load i32, i32* %x, align 4
  %rem75 = urem i32 %79, 64
  %sh_prom76 = zext i32 %rem75 to i64
  %shl77 = shl i64 1, %sh_prom76
  %80 = load i32, i32* %x, align 4
  %div78 = udiv i32 %80, 64
  %idxprom79 = zext i32 %div78 to i64
  %81 = load i32, i32* %bb.addr, align 4
  %idxprom80 = sext i32 %81 to i64
  %82 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  %arrayidx81 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %82, i64 %idxprom80
  %83 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx81, align 8
  %elms82 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %83, i32 0, i32 3
  %arrayidx83 = getelementptr inbounds [1 x i64], [1 x i64]* %elms82, i32 0, i64 %idxprom79
  %84 = load i64, i64* %arrayidx83, align 8
  %or84 = or i64 %84, %shl77
  store i64 %or84, i64* %arrayidx83, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.74, %if.then.69
  %85 = load i64, i64* %word_, align 8
  %cmp86 = icmp eq i64 %85, 0
  br i1 %cmp86, label %if.then.87, label %if.end.88

if.then.87:                                       ; preds = %if.end.85
  br label %for.end.92

if.end.88:                                        ; preds = %if.end.85
  br label %if.end.89

if.end.89:                                        ; preds = %if.end.88, %for.body.64
  br label %for.inc.90

for.inc.90:                                       ; preds = %if.end.89
  %86 = load i32, i32* %bit_num_, align 4
  %inc91 = add i32 %86, 1
  store i32 %inc91, i32* %bit_num_, align 4
  br label %for.cond.62

for.end.92:                                       ; preds = %if.then.87, %for.cond.62
  br label %if.end.93

if.end.93:                                        ; preds = %for.end.92, %for.body.57
  br label %for.inc.94

for.inc.94:                                       ; preds = %if.end.93
  %87 = load i32, i32* %word_num_, align 4
  %inc95 = add i32 %87, 1
  store i32 %inc95, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond.55

for.end.96:                                       ; preds = %for.cond.55
  br label %do.end

do.end:                                           ; preds = %for.end.96
  br label %if.end.97

if.end.97:                                        ; preds = %do.end, %for.body.45
  br label %for.inc.98

for.inc.98:                                       ; preds = %if.end.97
  %88 = load i32, i32* %c, align 4
  %inc99 = add nsw i32 %88, 1
  store i32 %inc99, i32* %c, align 4
  br label %for.cond.43

for.end.100:                                      ; preds = %for.cond.43
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @convert_to_ssa() #0 {
entry:
  %evals = alloca %struct.simple_bitmap_def**, align 8
  %dfs = alloca %struct.simple_bitmap_def**, align 8
  %idfs = alloca %struct.simple_bitmap_def**, align 8
  %idom = alloca i32*, align 8
  %nregs = alloca i32, align 4
  %i = alloca i32, align 4
  %0 = load i32, i32* @in_ssa_form, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__FUNCTION__.convert_to_ssa, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %entry
  %call = call %struct.rtx_def* @get_insns()
  call void @life_analysis(%struct.rtx_def* %call, %struct._IO_FILE* null, i32 0)
  %1 = load i32, i32* @n_basic_blocks, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 %conv, 4
  %2 = alloca i8, i64 %mul
  %3 = bitcast i8* %2 to i32*
  store i32* %3, i32** %idom, align 8
  %4 = load i32*, i32** %idom, align 8
  %5 = bitcast i32* %4 to i8*
  %6 = load i32, i32* @n_basic_blocks, align 4
  %conv1 = sext i32 %6 to i64
  %mul2 = mul i64 %conv1, 4
  call void @llvm.memset.p0i8.i64(i8* %5, i8 -1, i64 %mul2, i32 1, i1 false)
  %7 = load i32*, i32** %idom, align 8
  call void @calculate_dominance_info(i32* %7, %struct.simple_bitmap_def** null, i32 0)
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool3 = icmp ne %struct._IO_FILE* %8, null
  br i1 %tobool3, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call5 = call i32 @fputs(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %9)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* @n_basic_blocks, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %13 = load i32, i32* %i, align 4
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %15 = load i32*, i32** %idom, align 8
  %arrayidx = getelementptr inbounds i32, i32* %15, i64 %idxprom
  %16 = load i32, i32* %arrayidx, align 4
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i32 %13, i32 %16)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call8 = call i32 @fflush(%struct._IO_FILE* %18)
  br label %if.end.9

if.end.9:                                         ; preds = %for.end, %if.end
  %19 = load i32, i32* @n_basic_blocks, align 4
  %20 = load i32, i32* @n_basic_blocks, align 4
  %call10 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %19, i32 %20)
  store %struct.simple_bitmap_def** %call10, %struct.simple_bitmap_def*** %dfs, align 8
  %21 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dfs, align 8
  %22 = load i32*, i32** %idom, align 8
  call void @compute_dominance_frontiers(%struct.simple_bitmap_def** %21, i32* %22)
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool11 = icmp ne %struct._IO_FILE* %23, null
  br i1 %tobool11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.9
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dfs, align 8
  %26 = load i32, i32* @n_basic_blocks, align 4
  call void @dump_sbitmap_vector(%struct._IO_FILE* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct.simple_bitmap_def** %25, i32 %26)
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call13 = call i32 @fflush(%struct._IO_FILE* %27)
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.12, %if.end.9
  %call15 = call i32 @max_reg_num()
  store i32 %call15, i32* @ssa_max_reg_num, align 4
  %28 = load i32, i32* @ssa_max_reg_num, align 4
  store i32 %28, i32* %nregs, align 4
  %29 = load i32, i32* %nregs, align 4
  %30 = load i32, i32* @n_basic_blocks, align 4
  %call16 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %29, i32 %30)
  store %struct.simple_bitmap_def** %call16, %struct.simple_bitmap_def*** %evals, align 8
  %31 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %evals, align 8
  %32 = load i32, i32* %nregs, align 4
  call void @find_evaluations(%struct.simple_bitmap_def** %31, i32 %32)
  %33 = load i32, i32* %nregs, align 4
  %34 = load i32, i32* @n_basic_blocks, align 4
  %call17 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %33, i32 %34)
  store %struct.simple_bitmap_def** %call17, %struct.simple_bitmap_def*** %idfs, align 8
  %35 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %idfs, align 8
  %36 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dfs, align 8
  %37 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %evals, align 8
  %38 = load i32, i32* %nregs, align 4
  call void @compute_iterated_dominance_frontiers(%struct.simple_bitmap_def** %35, %struct.simple_bitmap_def** %36, %struct.simple_bitmap_def** %37, i32 %38)
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool18 = icmp ne %struct._IO_FILE* %39, null
  br i1 %tobool18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %if.end.14
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %41 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %idfs, align 8
  %42 = load i32, i32* %nregs, align 4
  call void @dump_sbitmap_vector(%struct._IO_FILE* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct.simple_bitmap_def** %41, i32 %42)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %call20 = call i32 @fflush(%struct._IO_FILE* %43)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %if.end.14
  %44 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %idfs, align 8
  %45 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %evals, align 8
  %46 = load i32, i32* %nregs, align 4
  call void @insert_phi_nodes(%struct.simple_bitmap_def** %44, %struct.simple_bitmap_def** %45, i32 %46)
  %47 = load i32, i32* %nregs, align 4
  %48 = load i32*, i32** %idom, align 8
  call void @rename_registers(i32 %47, i32* %48)
  %49 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %dfs, align 8
  %50 = bitcast %struct.simple_bitmap_def** %49 to i8*
  call void @free(i8* %50) #4
  %51 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %evals, align 8
  %52 = bitcast %struct.simple_bitmap_def** %51 to i8*
  call void @free(i8* %52) #4
  %53 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %idfs, align 8
  %54 = bitcast %struct.simple_bitmap_def** %53 to i8*
  call void @free(i8* %54) #4
  store i32 1, i32* @in_ssa_form, align 4
  %call22 = call %struct.rtx_def* @get_insns()
  %call23 = call i32 @max_reg_num()
  call void @reg_scan(%struct.rtx_def* %call22, i32 %call23, i32 1)
  ret void
}

; Function Attrs: noreturn
declare void @fancy_abort(i8*, i32, i8*) #3

declare void @life_analysis(%struct.rtx_def*, %struct._IO_FILE*, i32) #1

declare %struct.rtx_def* @get_insns() #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare void @calculate_dominance_info(i32*, %struct.simple_bitmap_def**, i32) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32, i32) #1

declare void @dump_sbitmap_vector(%struct._IO_FILE*, i8*, i8*, %struct.simple_bitmap_def**, i32) #1

declare i32 @max_reg_num() #1

; Function Attrs: nounwind uwtable
define internal void @find_evaluations(%struct.simple_bitmap_def** %evals, i32 %nregs) #0 {
entry:
  %evals.addr = alloca %struct.simple_bitmap_def**, align 8
  %nregs.addr = alloca i32, align 4
  %bb = alloca i32, align 4
  %p = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  store %struct.simple_bitmap_def** %evals, %struct.simple_bitmap_def*** %evals.addr, align 8
  store i32 %nregs, i32* %nregs.addr, align 4
  %0 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %evals.addr, align 8
  %1 = load i32, i32* %nregs.addr, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %0, i32 %1)
  %2 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %evals.addr, align 8
  store %struct.simple_bitmap_def** %2, %struct.simple_bitmap_def*** @fe_evals, align 8
  %3 = load i32, i32* @n_basic_blocks, align 4
  store i32 %3, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %while.end, %entry
  %4 = load i32, i32* %bb, align 4
  %dec = add nsw i32 %4, -1
  store i32 %dec, i32* %bb, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %bb, align 4
  store i32 %5, i32* @fe_current_bb, align 4
  %6 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i32 0, i32 0
  %9 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %p, align 8
  %10 = load i32, i32* %bb, align 4
  %idxprom2 = sext i32 %10 to i64
  %11 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data3 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %11, i32 0, i32 4
  %bb4 = bitcast %union.varray_data_tag* %data3 to [1 x %struct.basic_block_def*]*
  %arrayidx5 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb4, i32 0, i64 %idxprom2
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx5, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i32 0, i32 1
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %last, align 8
  br label %while.body

while.body:                                       ; preds = %for.body, %if.end.14
  %14 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load = load i32, i32* %15, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom6 = sext i32 %bf.clear to i64
  %arrayidx7 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom6
  %16 = load i8, i8* %arrayidx7, align 1
  %conv = sext i8 %16 to i32
  %cmp8 = icmp eq i32 %conv, 105
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %17 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx10 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  call void @note_stores(%struct.rtx_def* %18, void (%struct.rtx_def*, %struct.rtx_def*, i8*)* @find_evaluations_1, i8* null)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %19 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp11 = icmp eq %struct.rtx_def* %19, %20
  br i1 %cmp11, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end
  br label %while.end

if.end.14:                                        ; preds = %if.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %p, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 2
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %p, align 8
  br label %while.body

while.end:                                        ; preds = %if.then.13
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @compute_iterated_dominance_frontiers(%struct.simple_bitmap_def** %idfs, %struct.simple_bitmap_def** %frontiers, %struct.simple_bitmap_def** %evals, i32 %nregs) #0 {
entry:
  %idfs.addr = alloca %struct.simple_bitmap_def**, align 8
  %frontiers.addr = alloca %struct.simple_bitmap_def**, align 8
  %evals.addr = alloca %struct.simple_bitmap_def**, align 8
  %nregs.addr = alloca i32, align 4
  %worklist = alloca %struct.simple_bitmap_def*, align 8
  %reg = alloca i32, align 4
  %passes = alloca i32, align 4
  %idf = alloca %struct.simple_bitmap_def*, align 8
  %b = alloca i32, align 4
  %changed = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  store %struct.simple_bitmap_def** %idfs, %struct.simple_bitmap_def*** %idfs.addr, align 8
  store %struct.simple_bitmap_def** %frontiers, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  store %struct.simple_bitmap_def** %evals, %struct.simple_bitmap_def*** %evals.addr, align 8
  store i32 %nregs, i32* %nregs.addr, align 4
  store i32 0, i32* %passes, align 4
  %0 = load i32, i32* @n_basic_blocks, align 4
  %call = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %0)
  store %struct.simple_bitmap_def* %call, %struct.simple_bitmap_def** %worklist, align 8
  store i32 0, i32* %reg, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.38, %entry
  %1 = load i32, i32* %reg, align 4
  %2 = load i32, i32* %nregs.addr, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end.40

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %reg, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %idfs.addr, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %4, i64 %idxprom
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  store %struct.simple_bitmap_def* %5, %struct.simple_bitmap_def** %idf, align 8
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %7 = load i32, i32* %reg, align 4
  %idxprom1 = sext i32 %7 to i64
  %8 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %evals.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %8, i64 %idxprom1
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8
  call void @sbitmap_copy(%struct.simple_bitmap_def* %6, %struct.simple_bitmap_def* %9)
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %idf, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %10)
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  store i32 0, i32* %changed, align 4
  %11 = load i32, i32* %passes, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %passes, align 4
  br label %do.body.3

do.body.3:                                        ; preds = %do.body
  store i32 0, i32* %bit_num_, align 4
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %12, i32 0, i32 1
  %13 = load i32, i32* %size, align 4
  store i32 %13, i32* %size_, align 4
  %14 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %14, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.34, %do.body.3
  %15 = load i32, i32* %word_num_, align 4
  %16 = load i32, i32* %size_, align 4
  %cmp5 = icmp ult i32 %15, %16
  br i1 %cmp5, label %for.body.6, label %for.end.36

for.body.6:                                       ; preds = %for.cond.4
  %17 = load i32, i32* %word_num_, align 4
  %idxprom7 = zext i32 %17 to i64
  %18 = load i64*, i64** %ptr_, align 8
  %arrayidx8 = getelementptr inbounds i64, i64* %18, i64 %idxprom7
  %19 = load i64, i64* %arrayidx8, align 8
  store i64 %19, i64* %word_, align 8
  %20 = load i64, i64* %word_, align 8
  %cmp9 = icmp ne i64 %20, 0
  br i1 %cmp9, label %if.then, label %if.end.33

if.then:                                          ; preds = %for.body.6
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc, %if.then
  %21 = load i32, i32* %bit_num_, align 4
  %cmp11 = icmp ult i32 %21, 64
  br i1 %cmp11, label %for.body.12, label %for.end

for.body.12:                                      ; preds = %for.cond.10
  %22 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %22 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %23 = load i64, i64* %word_, align 8
  %24 = load i64, i64* %_mask, align 8
  %and = and i64 %23, %24
  %cmp13 = icmp ne i64 %and, 0
  br i1 %cmp13, label %if.then.14, label %if.end.31

if.then.14:                                       ; preds = %for.body.12
  %25 = load i64, i64* %_mask, align 8
  %neg = xor i64 %25, -1
  %26 = load i64, i64* %word_, align 8
  %and15 = and i64 %26, %neg
  store i64 %and15, i64* %word_, align 8
  %27 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %27, 64
  %28 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %28
  store i32 %add, i32* %b, align 4
  %29 = load i32, i32* %b, align 4
  %rem = urem i32 %29, 64
  %sh_prom16 = zext i32 %rem to i64
  %shl17 = shl i64 1, %sh_prom16
  %neg18 = xor i64 %shl17, -1
  %30 = load i32, i32* %b, align 4
  %div = udiv i32 %30, 64
  %idxprom19 = zext i32 %div to i64
  %31 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %elms20 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %31, i32 0, i32 3
  %arrayidx21 = getelementptr inbounds [1 x i64], [1 x i64]* %elms20, i32 0, i64 %idxprom19
  %32 = load i64, i64* %arrayidx21, align 8
  %and22 = and i64 %32, %neg18
  store i64 %and22, i64* %arrayidx21, align 8
  %33 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %34 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %35 = load i32, i32* %b, align 4
  %idxprom23 = sext i32 %35 to i64
  %36 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  %arrayidx24 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %36, i64 %idxprom23
  %37 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx24, align 8
  %38 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %idf, align 8
  %call25 = call i32 @sbitmap_union_of_diff(%struct.simple_bitmap_def* %33, %struct.simple_bitmap_def* %34, %struct.simple_bitmap_def* %37, %struct.simple_bitmap_def* %38)
  %39 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %idf, align 8
  %40 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %idf, align 8
  %41 = load i32, i32* %b, align 4
  %idxprom26 = sext i32 %41 to i64
  %42 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %frontiers.addr, align 8
  %arrayidx27 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %42, i64 %idxprom26
  %43 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx27, align 8
  %call28 = call i32 @sbitmap_a_or_b(%struct.simple_bitmap_def* %39, %struct.simple_bitmap_def* %40, %struct.simple_bitmap_def* %43)
  store i32 1, i32* %changed, align 4
  %44 = load i64, i64* %word_, align 8
  %cmp29 = icmp eq i64 %44, 0
  br i1 %cmp29, label %if.then.30, label %if.end

if.then.30:                                       ; preds = %if.then.14
  br label %for.end

if.end:                                           ; preds = %if.then.14
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %for.body.12
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %45 = load i32, i32* %bit_num_, align 4
  %inc32 = add i32 %45, 1
  store i32 %inc32, i32* %bit_num_, align 4
  br label %for.cond.10

for.end:                                          ; preds = %if.then.30, %for.cond.10
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %for.body.6
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %46 = load i32, i32* %word_num_, align 4
  %inc35 = add i32 %46, 1
  store i32 %inc35, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond.4

for.end.36:                                       ; preds = %for.cond.4
  br label %do.end

do.end:                                           ; preds = %for.end.36
  br label %do.cond

do.cond:                                          ; preds = %do.end
  %47 = load i32, i32* %changed, align 4
  %tobool = icmp ne i32 %47, 0
  br i1 %tobool, label %do.body, label %do.end.37

do.end.37:                                        ; preds = %do.cond
  br label %for.inc.38

for.inc.38:                                       ; preds = %do.end.37
  %48 = load i32, i32* %reg, align 4
  %inc39 = add nsw i32 %48, 1
  store i32 %inc39, i32* %reg, align 4
  br label %for.cond

for.end.40:                                       ; preds = %for.cond
  %49 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %worklist, align 8
  %50 = bitcast %struct.simple_bitmap_def* %49 to i8*
  call void @free(i8* %50) #4
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool41 = icmp ne %struct._IO_FILE* %51, null
  br i1 %tobool41, label %if.then.42, label %if.end.44

if.then.42:                                       ; preds = %for.end.40
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %53 = load i32, i32* %passes, align 4
  %54 = load i32, i32* %nregs.addr, align 4
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %52, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i32 0, i32 0), i32 %53, i32 %54)
  br label %if.end.44

if.end.44:                                        ; preds = %if.then.42, %for.end.40
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @insert_phi_nodes(%struct.simple_bitmap_def** %idfs, %struct.simple_bitmap_def** %evals, i32 %nregs) #0 {
entry:
  %idfs.addr = alloca %struct.simple_bitmap_def**, align 8
  %evals.addr = alloca %struct.simple_bitmap_def**, align 8
  %nregs.addr = alloca i32, align 4
  %reg = alloca i32, align 4
  %b = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  store %struct.simple_bitmap_def** %idfs, %struct.simple_bitmap_def*** %idfs.addr, align 8
  store %struct.simple_bitmap_def** %evals, %struct.simple_bitmap_def*** %evals.addr, align 8
  store i32 %nregs, i32* %nregs.addr, align 4
  store i32 0, i32* %reg, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %0 = load i32, i32* %reg, align 4
  %1 = load i32, i32* %nregs.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %reg, align 4
  %cmp1 = icmp slt i32 %2, 53
  br i1 %cmp1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, i32* %reg, align 4
  %cmp2 = icmp eq i32 %3, 17
  br i1 %cmp2, label %if.then, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load i32, i32* %reg, align 4
  %cmp4 = icmp eq i32 %4, 16
  br i1 %cmp4, label %if.then, label %if.end.31

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %for.body
  br label %do.body

do.body:                                          ; preds = %if.then
  store i32 0, i32* %bit_num_, align 4
  %5 = load i32, i32* %reg, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %idfs.addr, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %6, i64 %idxprom
  %7 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %7, i32 0, i32 1
  %8 = load i32, i32* %size, align 4
  store i32 %8, i32* %size_, align 4
  %9 = load i32, i32* %reg, align 4
  %idxprom5 = sext i32 %9 to i64
  %10 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %idfs.addr, align 8
  %arrayidx6 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %10, i64 %idxprom5
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx6, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %11, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc.28, %do.body
  %12 = load i32, i32* %word_num_, align 4
  %13 = load i32, i32* %size_, align 4
  %cmp8 = icmp ult i32 %12, %13
  br i1 %cmp8, label %for.body.9, label %for.end.30

for.body.9:                                       ; preds = %for.cond.7
  %14 = load i32, i32* %word_num_, align 4
  %idxprom10 = zext i32 %14 to i64
  %15 = load i64*, i64** %ptr_, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %15, i64 %idxprom10
  %16 = load i64, i64* %arrayidx11, align 8
  store i64 %16, i64* %word_, align 8
  %17 = load i64, i64* %word_, align 8
  %cmp12 = icmp ne i64 %17, 0
  br i1 %cmp12, label %if.then.13, label %if.end.27

if.then.13:                                       ; preds = %for.body.9
  br label %for.cond.14

for.cond.14:                                      ; preds = %for.inc, %if.then.13
  %18 = load i32, i32* %bit_num_, align 4
  %cmp15 = icmp ult i32 %18, 64
  br i1 %cmp15, label %for.body.16, label %for.end

for.body.16:                                      ; preds = %for.cond.14
  %19 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %19 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %20 = load i64, i64* %word_, align 8
  %21 = load i64, i64* %_mask, align 8
  %and = and i64 %20, %21
  %cmp17 = icmp ne i64 %and, 0
  br i1 %cmp17, label %if.then.18, label %if.end.26

if.then.18:                                       ; preds = %for.body.16
  %22 = load i64, i64* %_mask, align 8
  %neg = xor i64 %22, -1
  %23 = load i64, i64* %word_, align 8
  %and19 = and i64 %23, %neg
  store i64 %and19, i64* %word_, align 8
  %24 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %24, 64
  %25 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %25
  store i32 %add, i32* %b, align 4
  %26 = load i32, i32* %b, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %27, i32 0, i32 4
  %bb = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx21 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb, i32 0, i64 %idxprom20
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx21, align 8
  %global_live_at_start = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %28, i32 0, i32 8
  %29 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global_live_at_start, align 8
  %30 = load i32, i32* %reg, align 4
  %call = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %29, i32 %30)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.22, label %if.end

if.then.22:                                       ; preds = %if.then.18
  %31 = load i32, i32* %reg, align 4
  %32 = load i32, i32* %b, align 4
  call void @insert_phi_node(i32 %31, i32 %32)
  br label %if.end

if.end:                                           ; preds = %if.then.22, %if.then.18
  %33 = load i64, i64* %word_, align 8
  %cmp23 = icmp eq i64 %33, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end
  br label %for.end

if.end.25:                                        ; preds = %if.end
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %for.body.16
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %34 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.14

for.end:                                          ; preds = %if.then.24, %for.cond.14
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %for.body.9
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %35 = load i32, i32* %word_num_, align 4
  %inc29 = add i32 %35, 1
  store i32 %inc29, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond.7

for.end.30:                                       ; preds = %for.cond.7
  br label %do.end

do.end:                                           ; preds = %for.end.30
  br label %if.end.31

if.end.31:                                        ; preds = %do.end, %lor.lhs.false.3
  br label %for.inc.32

for.inc.32:                                       ; preds = %if.end.31
  %36 = load i32, i32* %reg, align 4
  %inc33 = add nsw i32 %36, 1
  store i32 %inc33, i32* %reg, align 4
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rename_registers(i32 %nregs, i32* %idom) #0 {
entry:
  %nregs.addr = alloca i32, align 4
  %idom.addr = alloca i32*, align 8
  store i32 %nregs, i32* %nregs.addr, align 4
  store i32* %idom, i32** %idom.addr, align 8
  %0 = load i32, i32* %nregs.addr, align 4
  %mul = mul nsw i32 %0, 3
  %conv = sext i32 %mul to i64
  %call = call %struct.varray_head_tag* @varray_init(i64 %conv, i64 8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i32 0, i32 0))
  store %struct.varray_head_tag* %call, %struct.varray_head_tag** @ssa_definition, align 8
  call void @ssa_rename_from_initialize()
  %1 = load i32, i32* %nregs.addr, align 4
  %conv1 = sext i32 %1 to i64
  %mul2 = mul i64 %conv1, 8
  %2 = alloca i8, i64 %mul2
  %3 = bitcast i8* %2 to %struct.rtx_def**
  store %struct.rtx_def** %3, %struct.rtx_def*** @ssa_rename_to_pseudo, align 8
  %4 = load %struct.rtx_def**, %struct.rtx_def*** @ssa_rename_to_pseudo, align 8
  %5 = bitcast %struct.rtx_def** %4 to i8*
  %6 = load i32, i32* %nregs.addr, align 4
  %conv3 = sext i32 %6 to i64
  %mul4 = mul i64 %conv3, 8
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %mul4, i32 1, i1 false)
  call void @llvm.memset.p0i8.i64(i8* bitcast ([53 x [59 x %struct.rtx_def*]]* @ssa_rename_to_hard to i8*), i8 0, i64 25016, i32 1, i1 false)
  %7 = load i32*, i32** %idom.addr, align 8
  call void @rename_block(i32 0, i32* %7)
  store %struct.rtx_def** null, %struct.rtx_def*** @ssa_rename_to_pseudo, align 8
  ret void
}

declare void @reg_scan(%struct.rtx_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @convert_from_ssa() #0 {
entry:
  %bb = alloca i32, align 4
  %reg_partition = alloca %struct.partition_def*, align 8
  %insns = alloca %struct.rtx_def*, align 8
  %b = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %call = call %struct.rtx_def* @get_insns()
  store %struct.rtx_def* %call, %struct.rtx_def** %insns, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %insns, align 8
  call void @life_analysis(%struct.rtx_def* %0, %struct._IO_FILE* null, i32 1)
  %1 = load i32, i32* @conservative_reg_partition, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call1 = call %struct.partition_def* @compute_conservative_reg_partition()
  store %struct.partition_def* %call1, %struct.partition_def** %reg_partition, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call %struct.partition_def* @compute_coalesced_reg_partition()
  store %struct.partition_def* %call2, %struct.partition_def** %reg_partition, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load %struct.partition_def*, %struct.partition_def** %reg_partition, align 8
  %call3 = call i32 @check_hard_regs_in_partition(%struct.partition_def* %2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__FUNCTION__.convert_from_ssa, i32 0, i32 0)) #6
  unreachable

if.end.6:                                         ; preds = %if.end
  %3 = load %struct.partition_def*, %struct.partition_def** %reg_partition, align 8
  call void @rename_equivalent_regs(%struct.partition_def* %3)
  %4 = load i32, i32* @n_basic_blocks, align 4
  store i32 %4, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.end, %if.end.6
  %5 = load i32, i32* %bb, align 4
  %dec = add nsw i32 %5, -1
  store i32 %dec, i32* %bb, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end.14

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %bb7 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb7, i32 0, i64 %idxprom
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %8, %struct.basic_block_def** %b, align 8
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %9, i32 0, i32 4
  %10 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %10, %struct.edge_def** %e, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %11 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool9 = icmp ne %struct.edge_def* %11, null
  br i1 %tobool9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %12 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %12, i32 0, i32 2
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp11 = icmp ne %struct.basic_block_def* %13, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body.10
  %14 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %15 = load %struct.partition_def*, %struct.partition_def** %reg_partition, align 8
  call void @eliminate_phi(%struct.edge_def* %14, %struct.partition_def* %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i32 0, i32 0
  %17 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %17, %struct.edge_def** %e, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.cond

for.end.14:                                       ; preds = %for.cond
  %18 = load %struct.partition_def*, %struct.partition_def** %reg_partition, align 8
  call void @partition_delete(%struct.partition_def* %18)
  %19 = load i32, i32* @n_basic_blocks, align 4
  store i32 %19, i32* %bb, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %while.end, %for.end.14
  %20 = load i32, i32* %bb, align 4
  %dec16 = add nsw i32 %20, -1
  store i32 %dec16, i32* %bb, align 4
  %cmp17 = icmp sge i32 %dec16, 0
  br i1 %cmp17, label %for.body.18, label %for.end.81

for.body.18:                                      ; preds = %for.cond.15
  %21 = load i32, i32* %bb, align 4
  %idxprom19 = sext i32 %21 to i64
  %22 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data20 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %22, i32 0, i32 4
  %bb21 = bitcast %union.varray_data_tag* %data20 to [1 x %struct.basic_block_def*]*
  %arrayidx22 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb21, i32 0, i64 %idxprom19
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx22, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %23, i32 0, i32 0
  %24 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %24, %struct.rtx_def** %insn, align 8
  br label %while.body

while.body:                                       ; preds = %for.body.18, %if.end.80
  %25 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool23 = icmp ne %struct.rtx_def* %25, null
  br i1 %tobool23, label %land.lhs.true, label %if.else.57

land.lhs.true:                                    ; preds = %while.body
  %26 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load = load i32, i32* %27, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp24 = icmp eq i32 %bf.clear, 32
  br i1 %cmp24, label %land.lhs.true.25, label %if.else.57

land.lhs.true.25:                                 ; preds = %land.lhs.true
  %28 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %30 = bitcast %struct.rtx_def* %29 to i32*
  %bf.load27 = load i32, i32* %30, align 8
  %bf.clear28 = and i32 %bf.load27, 65535
  %cmp29 = icmp eq i32 %bf.clear28, 47
  br i1 %cmp29, label %land.lhs.true.30, label %if.else.57

land.lhs.true.30:                                 ; preds = %land.lhs.true.25
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld31 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx32 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld31, i32 0, i64 3
  %rtx33 = bitcast %union.rtunion_def* %arrayidx32 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx33, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 1
  %rtx36 = bitcast %union.rtunion_def* %arrayidx35 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx36, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load37 = load i32, i32* %34, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 152
  br i1 %cmp39, label %if.then.40, label %if.else.57

if.then.40:                                       ; preds = %land.lhs.true.30
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %36 = load i32, i32* %bb, align 4
  %idxprom41 = sext i32 %36 to i64
  %37 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data42 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %37, i32 0, i32 4
  %bb43 = bitcast %union.varray_data_tag* %data42 to [1 x %struct.basic_block_def*]*
  %arrayidx44 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb43, i32 0, i64 %idxprom41
  %38 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx44, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %38, i32 0, i32 1
  %39 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp45 = icmp eq %struct.rtx_def* %35, %39
  br i1 %cmp45, label %if.then.46, label %if.end.55

if.then.46:                                       ; preds = %if.then.40
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld47 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx48 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld47, i32 0, i64 1
  %rtx49 = bitcast %union.rtunion_def* %arrayidx48 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx49, align 8
  %42 = load i32, i32* %bb, align 4
  %idxprom50 = sext i32 %42 to i64
  %43 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data51 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %43, i32 0, i32 4
  %bb52 = bitcast %union.varray_data_tag* %data51 to [1 x %struct.basic_block_def*]*
  %arrayidx53 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb52, i32 0, i64 %idxprom50
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx53, align 8
  %end54 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 1
  store %struct.rtx_def* %41, %struct.rtx_def** %end54, align 8
  br label %if.end.55

if.end.55:                                        ; preds = %if.then.46, %if.then.40
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call56 = call %struct.rtx_def* @delete_insn(%struct.rtx_def* %45)
  store %struct.rtx_def* %call56, %struct.rtx_def** %insn, align 8
  br label %if.end.80

if.else.57:                                       ; preds = %land.lhs.true.30, %land.lhs.true.25, %land.lhs.true, %while.body
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %47 = bitcast %struct.rtx_def* %46 to i32*
  %bf.load58 = load i32, i32* %47, align 8
  %bf.clear59 = and i32 %bf.load58, 65535
  %idxprom60 = sext i32 %bf.clear59 to i64
  %arrayidx61 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom60
  %48 = load i8, i8* %arrayidx61, align 1
  %conv = sext i8 %48 to i32
  %cmp62 = icmp eq i32 %conv, 105
  br i1 %cmp62, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %if.else.57
  br label %while.end

if.else.65:                                       ; preds = %if.else.57
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %50 = load i32, i32* %bb, align 4
  %idxprom66 = sext i32 %50 to i64
  %51 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data67 = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %51, i32 0, i32 4
  %bb68 = bitcast %union.varray_data_tag* %data67 to [1 x %struct.basic_block_def*]*
  %arrayidx69 = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb68, i32 0, i64 %idxprom66
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx69, align 8
  %end70 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i32 0, i32 1
  %53 = load %struct.rtx_def*, %struct.rtx_def** %end70, align 8
  %cmp71 = icmp eq %struct.rtx_def* %49, %53
  br i1 %cmp71, label %if.then.73, label %if.else.74

if.then.73:                                       ; preds = %if.else.65
  br label %while.end

if.else.74:                                       ; preds = %if.else.65
  %54 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 2
  %rtx77 = bitcast %union.rtunion_def* %arrayidx76 to %struct.rtx_def**
  %55 = load %struct.rtx_def*, %struct.rtx_def** %rtx77, align 8
  store %struct.rtx_def* %55, %struct.rtx_def** %insn, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.74
  br label %if.end.79

if.end.79:                                        ; preds = %if.end.78
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %if.end.55
  br label %while.body

while.end:                                        ; preds = %if.then.73, %if.then.64
  br label %for.cond.15

for.end.81:                                       ; preds = %for.cond.15
  call void @commit_edge_insertions()
  store i32 0, i32* @in_ssa_form, align 4
  %call82 = call i32 @count_or_remove_death_notes(%struct.simple_bitmap_def* null, i32 1)
  br label %do.body

do.body:                                          ; preds = %for.end.81
  %56 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %tobool83 = icmp ne %struct.varray_head_tag* %56, null
  br i1 %tobool83, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %do.body
  %57 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %58 = bitcast %struct.varray_head_tag* %57 to i8*
  call void @free(i8* %58) #4
  store %struct.varray_head_tag* null, %struct.varray_head_tag** @ssa_definition, align 8
  br label %if.end.85

if.end.85:                                        ; preds = %if.then.84, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.85
  call void @ssa_rename_from_free()
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.partition_def* @compute_conservative_reg_partition() #0 {
entry:
  %bb = alloca i32, align 4
  %changed = alloca i32, align 4
  %p = alloca %struct.partition_def*, align 8
  store i32 0, i32* %changed, align 4
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %0, i32 0, i32 0
  %1 = load i64, i64* %num_elements, align 8
  %conv = trunc i64 %1 to i32
  %call = call %struct.partition_def* @partition_new(i32 %conv)
  store %struct.partition_def* %call, %struct.partition_def** %p, align 8
  %2 = load i32, i32* @n_basic_blocks, align 4
  store i32 %2, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %3 = load i32, i32* %bb, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %bb, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %bb, align 4
  %5 = load %struct.partition_def*, %struct.partition_def** %p, align 8
  %call2 = call i32 @make_regs_equivalent_over_bad_edges(i32 %4, %struct.partition_def* %5)
  %6 = load i32, i32* %changed, align 4
  %add = add nsw i32 %6, %call2
  store i32 %add, i32* %changed, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end.12, %for.end
  %7 = load i32, i32* %changed, align 4
  %cmp3 = icmp sgt i32 %7, 0
  br i1 %cmp3, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %changed, align 4
  %8 = load i32, i32* @n_basic_blocks, align 4
  store i32 %8, i32* %bb, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.body.9, %while.body
  %9 = load i32, i32* %bb, align 4
  %dec6 = add nsw i32 %9, -1
  store i32 %dec6, i32* %bb, align 4
  %cmp7 = icmp sge i32 %dec6, 0
  br i1 %cmp7, label %for.body.9, label %for.end.12

for.body.9:                                       ; preds = %for.cond.5
  %10 = load i32, i32* %bb, align 4
  %11 = load %struct.partition_def*, %struct.partition_def** %p, align 8
  %call10 = call i32 @make_equivalent_phi_alternatives_equivalent(i32 %10, %struct.partition_def* %11)
  %12 = load i32, i32* %changed, align 4
  %add11 = add nsw i32 %12, %call10
  store i32 %add11, i32* %changed, align 4
  br label %for.cond.5

for.end.12:                                       ; preds = %for.cond.5
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %13 = load %struct.partition_def*, %struct.partition_def** %p, align 8
  ret %struct.partition_def* %13
}

; Function Attrs: nounwind uwtable
define internal %struct.partition_def* @compute_coalesced_reg_partition() #0 {
entry:
  %bb = alloca i32, align 4
  %changed = alloca i32, align 4
  %phi_set_head = alloca %struct.bitmap_head_def, align 8
  %phi_set = alloca %struct.bitmap_head_def*, align 8
  %p = alloca %struct.partition_def*, align 8
  %conflicts = alloca %struct.conflict_graph_def*, align 8
  %block = alloca %struct.basic_block_def*, align 8
  store i32 0, i32* %changed, align 4
  store %struct.bitmap_head_def* %phi_set_head, %struct.bitmap_head_def** %phi_set, align 8
  %0 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %0, i32 0, i32 0
  %1 = load i64, i64* %num_elements, align 8
  %conv = trunc i64 %1 to i32
  %call = call %struct.partition_def* @partition_new(i32 %conv)
  store %struct.partition_def* %call, %struct.partition_def** %p, align 8
  %2 = load i32, i32* @n_basic_blocks, align 4
  store i32 %2, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %3 = load i32, i32* %bb, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, i32* %bb, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %bb, align 4
  %5 = load %struct.partition_def*, %struct.partition_def** %p, align 8
  %call2 = call i32 @make_regs_equivalent_over_bad_edges(i32 %4, %struct.partition_def* %5)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %phi_set, align 8
  %call3 = call %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def* %6)
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.end
  store i32 0, i32* %changed, align 4
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %phi_set, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %7)
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %phi_set, align 8
  call void @mark_phi_and_copy_regs(%struct.bitmap_head_def* %8)
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %phi_set, align 8
  %10 = load %struct.partition_def*, %struct.partition_def** %p, align 8
  %call4 = call %struct.conflict_graph_def* @conflict_graph_compute(%struct.bitmap_head_def* %9, %struct.partition_def* %10)
  store %struct.conflict_graph_def* %call4, %struct.conflict_graph_def** %conflicts, align 8
  %11 = load i32, i32* @n_basic_blocks, align 4
  store i32 %11, i32* %bb, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.body.9, %do.body
  %12 = load i32, i32* %bb, align 4
  %dec6 = add nsw i32 %12, -1
  store i32 %dec6, i32* %bb, align 4
  %cmp7 = icmp sge i32 %dec6, 0
  br i1 %cmp7, label %for.body.9, label %for.end.14

for.body.9:                                       ; preds = %for.cond.5
  %13 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %14, i32 0, i32 4
  %bb10 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb10, i32 0, i64 %idxprom
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %15, %struct.basic_block_def** %block, align 8
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  %17 = load %struct.partition_def*, %struct.partition_def** %p, align 8
  %18 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %conflicts, align 8
  %call11 = call i32 @coalesce_regs_in_copies(%struct.basic_block_def* %16, %struct.partition_def* %17, %struct.conflict_graph_def* %18)
  %19 = load i32, i32* %changed, align 4
  %add = add nsw i32 %19, %call11
  store i32 %add, i32* %changed, align 4
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %block, align 8
  %21 = load %struct.partition_def*, %struct.partition_def** %p, align 8
  %22 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %conflicts, align 8
  %call12 = call i32 @coalesce_regs_in_successor_phi_nodes(%struct.basic_block_def* %20, %struct.partition_def* %21, %struct.conflict_graph_def* %22)
  %23 = load i32, i32* %changed, align 4
  %add13 = add nsw i32 %23, %call12
  store i32 %add13, i32* %changed, align 4
  br label %for.cond.5

for.end.14:                                       ; preds = %for.cond.5
  %24 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %conflicts, align 8
  call void @conflict_graph_delete(%struct.conflict_graph_def* %24)
  br label %do.cond

do.cond:                                          ; preds = %for.end.14
  %25 = load i32, i32* %changed, align 4
  %cmp15 = icmp sgt i32 %25, 0
  br i1 %cmp15, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %do.body.17

do.body.17:                                       ; preds = %do.end
  %26 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %phi_set, align 8
  %tobool = icmp ne %struct.bitmap_head_def* %26, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %do.body.17
  %27 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %phi_set, align 8
  call void @bitmap_clear(%struct.bitmap_head_def* %27)
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %phi_set, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body.17
  br label %do.end.19

do.end.19:                                        ; preds = %if.end
  %28 = load %struct.partition_def*, %struct.partition_def** %p, align 8
  ret %struct.partition_def* %28
}

; Function Attrs: nounwind uwtable
define internal i32 @check_hard_regs_in_partition(%struct.partition_def* %reg_partition) #0 {
entry:
  %retval = alloca i32, align 4
  %reg_partition.addr = alloca %struct.partition_def*, align 8
  %canonical_elements = alloca %struct.simple_bitmap_def*, align 8
  %element_index = alloca i32, align 4
  %already_seen = alloca [53 x [59 x i32]], align 16
  %reg = alloca i32, align 4
  %mach_mode = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  %hard_reg_rtx = alloca %struct.rtx_def*, align 8
  store %struct.partition_def* %reg_partition, %struct.partition_def** %reg_partition.addr, align 8
  %call = call i32 @max_reg_num()
  %call1 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %call)
  store %struct.simple_bitmap_def* %call1, %struct.simple_bitmap_def** %canonical_elements, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %canonical_elements, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %0)
  %1 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %canonical_elements, align 8
  %2 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  call void @ssa_rename_from_traverse(i32 (i8**, i8*)* @record_canonical_element_1, %struct.simple_bitmap_def* %1, %struct.partition_def* %2)
  store i32 0, i32* %reg, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.7, %entry
  %3 = load i32, i32* %reg, align 4
  %cmp = icmp slt i32 %3, 53
  br i1 %cmp, label %for.body, label %for.end.9

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %mach_mode, align 4
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %4 = load i32, i32* %mach_mode, align 4
  %cmp3 = icmp slt i32 %4, 59
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %5 = load i32, i32* %mach_mode, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load i32, i32* %reg, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %already_seen, i32 0, i64 %idxprom5
  %arrayidx6 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx, i32 0, i64 %idxprom
  store i32 0, i32* %arrayidx6, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.4
  %7 = load i32, i32* %mach_mode, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, i32* %mach_mode, align 4
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.7

for.inc.7:                                        ; preds = %for.end
  %8 = load i32, i32* %reg, align 4
  %inc8 = add nsw i32 %8, 1
  store i32 %inc8, i32* %reg, align 4
  br label %for.cond

for.end.9:                                        ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.end.9
  store i32 0, i32* %bit_num_, align 4
  %9 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %canonical_elements, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %9, i32 0, i32 1
  %10 = load i32, i32* %size, align 4
  store i32 %10, i32* %size_, align 4
  %11 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %canonical_elements, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %11, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond.10

for.cond.10:                                      ; preds = %for.inc.44, %do.body
  %12 = load i32, i32* %word_num_, align 4
  %13 = load i32, i32* %size_, align 4
  %cmp11 = icmp ult i32 %12, %13
  br i1 %cmp11, label %for.body.12, label %for.end.46

for.body.12:                                      ; preds = %for.cond.10
  %14 = load i32, i32* %word_num_, align 4
  %idxprom13 = zext i32 %14 to i64
  %15 = load i64*, i64** %ptr_, align 8
  %arrayidx14 = getelementptr inbounds i64, i64* %15, i64 %idxprom13
  %16 = load i64, i64* %arrayidx14, align 8
  store i64 %16, i64* %word_, align 8
  %17 = load i64, i64* %word_, align 8
  %cmp15 = icmp ne i64 %17, 0
  br i1 %cmp15, label %if.then, label %if.end.43

if.then:                                          ; preds = %for.body.12
  br label %for.cond.16

for.cond.16:                                      ; preds = %for.inc.40, %if.then
  %18 = load i32, i32* %bit_num_, align 4
  %cmp17 = icmp ult i32 %18, 64
  br i1 %cmp17, label %for.body.18, label %for.end.42

for.body.18:                                      ; preds = %for.cond.16
  %19 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %19 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %20 = load i64, i64* %word_, align 8
  %21 = load i64, i64* %_mask, align 8
  %and = and i64 %20, %21
  %cmp19 = icmp ne i64 %and, 0
  br i1 %cmp19, label %if.then.20, label %if.end.39

if.then.20:                                       ; preds = %for.body.18
  %22 = load i64, i64* %_mask, align 8
  %neg = xor i64 %22, -1
  %23 = load i64, i64* %word_, align 8
  %and21 = and i64 %23, %neg
  store i64 %and21, i64* %word_, align 8
  %24 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %24, 64
  %25 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %25
  store i32 %add, i32* %element_index, align 4
  %26 = load i32, i32* %element_index, align 4
  %call22 = call %struct.rtx_def* @ssa_rename_from_lookup(i32 %26)
  store %struct.rtx_def* %call22, %struct.rtx_def** %hard_reg_rtx, align 8
  %27 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg_rtx, align 8
  %cmp23 = icmp ne %struct.rtx_def* %27, null
  br i1 %cmp23, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.20
  %28 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg_rtx, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx24 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx24 to i32*
  %29 = load i32, i32* %rtuint, align 4
  %cmp25 = icmp ult i32 %29, 53
  br i1 %cmp25, label %land.lhs.true.26, label %if.end

land.lhs.true.26:                                 ; preds = %land.lhs.true
  %30 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg_rtx, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load = load i32, i32* %31, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom27 = zext i32 %bf.clear to i64
  %32 = load %struct.rtx_def*, %struct.rtx_def** %hard_reg_rtx, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtuint30 = bitcast %union.rtunion_def* %arrayidx29 to i32*
  %33 = load i32, i32* %rtuint30, align 4
  %idxprom31 = zext i32 %33 to i64
  %arrayidx32 = getelementptr inbounds [53 x [59 x i32]], [53 x [59 x i32]]* %already_seen, i32 0, i64 %idxprom31
  %arrayidx33 = getelementptr inbounds [59 x i32], [59 x i32]* %arrayidx32, i32 0, i64 %idxprom27
  %34 = load i32, i32* %arrayidx33, align 4
  %cmp34 = icmp ne i32 %34, 0
  br i1 %cmp34, label %if.then.35, label %if.end

if.then.35:                                       ; preds = %land.lhs.true.26
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.26, %land.lhs.true, %if.then.20
  %35 = load i64, i64* %word_, align 8
  %cmp36 = icmp eq i64 %35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end
  br label %for.end.42

if.end.38:                                        ; preds = %if.end
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %for.body.18
  br label %for.inc.40

for.inc.40:                                       ; preds = %if.end.39
  %36 = load i32, i32* %bit_num_, align 4
  %inc41 = add i32 %36, 1
  store i32 %inc41, i32* %bit_num_, align 4
  br label %for.cond.16

for.end.42:                                       ; preds = %if.then.37, %for.cond.16
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.42, %for.body.12
  br label %for.inc.44

for.inc.44:                                       ; preds = %if.end.43
  %37 = load i32, i32* %word_num_, align 4
  %inc45 = add i32 %37, 1
  store i32 %inc45, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond.10

for.end.46:                                       ; preds = %for.cond.10
  br label %do.end

do.end:                                           ; preds = %for.end.46
  %38 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %canonical_elements, align 8
  %39 = bitcast %struct.simple_bitmap_def* %38 to i8*
  call void @free(i8* %39) #4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.35
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: nounwind uwtable
define internal void @rename_equivalent_regs(%struct.partition_def* %reg_partition) #0 {
entry:
  %reg_partition.addr = alloca %struct.partition_def*, align 8
  %bb = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %s = alloca %struct.rtx_def*, align 8
  %slen = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.partition_def* %reg_partition, %struct.partition_def** %reg_partition.addr, align 8
  %0 = load i32, i32* @n_basic_blocks, align 4
  store i32 %0, i32* %bb, align 4
  br label %for.cond

for.cond:                                         ; preds = %do.end, %entry
  %1 = load i32, i32* %bb, align 4
  %dec = add nsw i32 %1, -1
  store i32 %dec, i32* %bb, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end.54

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %bb, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %3, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %4, %struct.basic_block_def** %b, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 0
  %6 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %next, align 8
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i32 0, i32 1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %last, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %for.body
  %9 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %insn, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom2 = sext i32 %bf.clear to i64
  %arrayidx3 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom2
  %12 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %12 to i32
  %cmp4 = icmp eq i32 %conv, 105
  br i1 %cmp4, label %if.then, label %if.end.48

if.then:                                          ; preds = %do.body
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %14 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %15 = bitcast %struct.partition_def* %14 to i8*
  %call = call i32 @for_each_rtx(%struct.rtx_def** %rtx, i32 (%struct.rtx_def**, i8*)* @rename_equivalent_regs_in_insn, i8* %15)
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 6
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %17 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %18 = bitcast %struct.partition_def* %17 to i8*
  %call10 = call i32 @for_each_rtx(%struct.rtx_def** %rtx9, i32 (%struct.rtx_def**, i8*)* @rename_equivalent_regs_in_insn, i8* %18)
  %19 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 3
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load14 = load i32, i32* %21, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp eq i32 %bf.clear15, 24
  br i1 %cmp16, label %if.then.18, label %if.end.47

if.then.18:                                       ; preds = %if.then
  %22 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 3
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  store %struct.rtx_def* %23, %struct.rtx_def** %s, align 8
  %24 = load %struct.rtx_def*, %struct.rtx_def** %s, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtvec_def**
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i32 0, i32 0
  %26 = load i32, i32* %num_elem, align 4
  store i32 %26, i32* %slen, align 4
  %27 = load i32, i32* %slen, align 4
  %cmp24 = icmp sle i32 %27, 1
  br i1 %cmp24, label %if.then.26, label %if.end

if.then.26:                                       ; preds = %if.then.18
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2125, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__FUNCTION__.rename_equivalent_regs, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %if.then.18
  %28 = load i32, i32* %slen, align 4
  %sub = sub nsw i32 %28, 1
  %idxprom27 = sext i32 %sub to i64
  %29 = load %struct.rtx_def*, %struct.rtx_def** %s, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 0
  %rtvec30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtvec_def**
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec30, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom27
  %31 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx31, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 3
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  store %struct.rtx_def* %31, %struct.rtx_def** %rtx34, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc, %if.end
  %33 = load i32, i32* %i, align 4
  %34 = load i32, i32* %slen, align 4
  %sub36 = sub nsw i32 %34, 1
  %cmp37 = icmp slt i32 %33, %sub36
  br i1 %cmp37, label %for.body.39, label %for.end

for.body.39:                                      ; preds = %for.cond.35
  %35 = load i32, i32* %i, align 4
  %idxprom40 = sext i32 %35 to i64
  %36 = load %struct.rtx_def*, %struct.rtx_def** %s, align 8
  %fld41 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx42 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld41, i32 0, i64 0
  %rtvec43 = bitcast %union.rtunion_def* %arrayidx42 to %struct.rtvec_def**
  %37 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec43, align 8
  %elem44 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %37, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem44, i32 0, i64 %idxprom40
  %38 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx45, align 8
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call46 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %38, %struct.rtx_def* %39)
  br label %for.inc

for.inc:                                          ; preds = %for.body.39
  %40 = load i32, i32* %i, align 4
  %inc = add nsw i32 %40, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.35

for.end:                                          ; preds = %for.cond.35
  br label %if.end.47

if.end.47:                                        ; preds = %for.end, %if.then
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %do.body
  %41 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %41, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 2
  %rtx51 = bitcast %union.rtunion_def* %arrayidx50 to %struct.rtx_def**
  %42 = load %struct.rtx_def*, %struct.rtx_def** %rtx51, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %next, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.48
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %44 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp52 = icmp ne %struct.rtx_def* %43, %44
  br i1 %cmp52, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  br label %for.cond

for.end.54:                                       ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @eliminate_phi(%struct.edge_def* %e, %struct.partition_def* %reg_partition) #0 {
entry:
  %e.addr = alloca %struct.edge_def*, align 8
  %reg_partition.addr = alloca %struct.partition_def*, align 8
  %n_nodes = alloca i32, align 4
  %pred = alloca %struct.simple_bitmap_def**, align 8
  %succ = alloca %struct.simple_bitmap_def**, align 8
  %visited = alloca %struct.simple_bitmap_def*, align 8
  %nodes = alloca %struct.rtx_def**, align 8
  %stack = alloca i32*, align 8
  %tstack = alloca i32*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %preg = alloca %struct.rtx_def**, align 8
  %tgt = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %ireg = alloca i32, align 4
  %itgt = alloca i32, align 4
  store %struct.edge_def* %e, %struct.edge_def** %e.addr, align 8
  store %struct.partition_def* %reg_partition, %struct.partition_def** %reg_partition.addr, align 8
  %0 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %0, i32 0, i32 3
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %call = call %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %1)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  store i32 0, i32* %n_nodes, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %2, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %4 = bitcast %struct.rtx_def* %3 to i32*
  %bf.load = load i32, i32* %4, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 32
  br i1 %cmp, label %land.lhs.true.1, label %land.end

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %5 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %6 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load2 = load i32, i32* %7, align 8
  %bf.clear3 = and i32 %bf.load2, 65535
  %cmp4 = icmp eq i32 %bf.clear3, 47
  br i1 %cmp4, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.1
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld5 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld5, i32 0, i64 3
  %rtx7 = bitcast %union.rtunion_def* %arrayidx6 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx7, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 1
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %10 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load11 = load i32, i32* %11, align 8
  %bf.clear12 = and i32 %bf.load11, 65535
  %cmp13 = icmp eq i32 %bf.clear12, 152
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.1, %land.lhs.true, %while.cond
  %12 = phi i1 [ false, %land.lhs.true.1 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp13, %land.rhs ]
  br i1 %12, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call14 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %13)
  store %struct.rtx_def* %call14, %struct.rtx_def** %insn, align 8
  %14 = load i32, i32* %n_nodes, align 4
  %add = add nsw i32 %14, 2
  store i32 %add, i32* %n_nodes, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %15 = load i32, i32* %n_nodes, align 4
  %cmp15 = icmp eq i32 %15, 0
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  br label %return

if.end:                                           ; preds = %while.end
  %16 = load i32, i32* %n_nodes, align 4
  %conv = sext i32 %16 to i64
  %mul = mul i64 %conv, 8
  %17 = alloca i8, i64 %mul
  %18 = bitcast i8* %17 to %struct.rtx_def**
  store %struct.rtx_def** %18, %struct.rtx_def*** %nodes, align 8
  %19 = load i32, i32* %n_nodes, align 4
  %20 = load i32, i32* %n_nodes, align 4
  %call16 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %19, i32 %20)
  store %struct.simple_bitmap_def** %call16, %struct.simple_bitmap_def*** %pred, align 8
  %21 = load i32, i32* %n_nodes, align 4
  %22 = load i32, i32* %n_nodes, align 4
  %call17 = call %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %21, i32 %22)
  store %struct.simple_bitmap_def** %call17, %struct.simple_bitmap_def*** %succ, align 8
  %23 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred, align 8
  %24 = load i32, i32* %n_nodes, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %23, i32 %24)
  %25 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %succ, align 8
  %26 = load i32, i32* %n_nodes, align 4
  call void @sbitmap_vector_zero(%struct.simple_bitmap_def** %25, i32 %26)
  %27 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest18 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %27, i32 0, i32 3
  %28 = load %struct.basic_block_def*, %struct.basic_block_def** %dest18, align 8
  %call19 = call %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %28)
  store %struct.rtx_def* %call19, %struct.rtx_def** %insn, align 8
  store i32 0, i32* %n_nodes, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %29 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool20 = icmp ne %struct.rtx_def* %29, null
  br i1 %tobool20, label %land.lhs.true.21, label %land.end.45

land.lhs.true.21:                                 ; preds = %for.cond
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load22 = load i32, i32* %31, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp eq i32 %bf.clear23, 32
  br i1 %cmp24, label %land.lhs.true.26, label %land.end.45

land.lhs.true.26:                                 ; preds = %land.lhs.true.21
  %32 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 3
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  %34 = bitcast %struct.rtx_def* %33 to i32*
  %bf.load30 = load i32, i32* %34, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 47
  br i1 %cmp32, label %land.rhs.34, label %land.end.45

land.rhs.34:                                      ; preds = %land.lhs.true.26
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 1
  %rtx40 = bitcast %union.rtunion_def* %arrayidx39 to %struct.rtx_def**
  %37 = load %struct.rtx_def*, %struct.rtx_def** %rtx40, align 8
  %38 = bitcast %struct.rtx_def* %37 to i32*
  %bf.load41 = load i32, i32* %38, align 8
  %bf.clear42 = and i32 %bf.load41, 65535
  %cmp43 = icmp eq i32 %bf.clear42, 152
  br label %land.end.45

land.end.45:                                      ; preds = %land.rhs.34, %land.lhs.true.26, %land.lhs.true.21, %for.cond
  %39 = phi i1 [ false, %land.lhs.true.26 ], [ false, %land.lhs.true.21 ], [ false, %for.cond ], [ %cmp43, %land.rhs.34 ]
  br i1 %39, label %for.body, label %for.end

for.body:                                         ; preds = %land.end.45
  %40 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %40, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 3
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %41 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %42 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 2
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %43, i32 0, i32 11
  %44 = load i32, i32* %index, align 4
  %call49 = call %struct.rtx_def** @phi_alternative(%struct.rtx_def* %41, i32 %44)
  store %struct.rtx_def** %call49, %struct.rtx_def*** %preg, align 8
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld50 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx51 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld50, i32 0, i64 3
  %rtx52 = bitcast %union.rtunion_def* %arrayidx51 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx52, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %46, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 0
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %47 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  store %struct.rtx_def* %47, %struct.rtx_def** %tgt, align 8
  %48 = load %struct.rtx_def**, %struct.rtx_def*** %preg, align 8
  %cmp56 = icmp eq %struct.rtx_def** %48, null
  br i1 %cmp56, label %if.then.58, label %if.end.59

if.then.58:                                       ; preds = %for.body
  br label %for.inc

if.end.59:                                        ; preds = %for.body
  %49 = load %struct.rtx_def**, %struct.rtx_def*** %preg, align 8
  %50 = load %struct.rtx_def*, %struct.rtx_def** %49, align 8
  store %struct.rtx_def* %50, %struct.rtx_def** %reg, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %52 = bitcast %struct.rtx_def* %51 to i32*
  %bf.load60 = load i32, i32* %52, align 8
  %bf.clear61 = and i32 %bf.load60, 65535
  %cmp62 = icmp ne i32 %bf.clear61, 61
  br i1 %cmp62, label %if.then.68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.59
  %53 = load %struct.rtx_def*, %struct.rtx_def** %tgt, align 8
  %54 = bitcast %struct.rtx_def* %53 to i32*
  %bf.load64 = load i32, i32* %54, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp ne i32 %bf.clear65, 61
  br i1 %cmp66, label %if.then.68, label %if.end.69

if.then.68:                                       ; preds = %lor.lhs.false, %if.end.59
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1398, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.eliminate_phi, i32 0, i32 0)) #6
  unreachable

if.end.69:                                        ; preds = %lor.lhs.false
  %55 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %55, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx71 to i32*
  %56 = load i32, i32* %rtuint, align 4
  %idxprom = zext i32 %56 to i64
  %57 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %elements = getelementptr inbounds %struct.partition_def, %struct.partition_def* %57, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements, i32 0, i64 %idxprom
  %class_element = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx72, i32 0, i32 0
  %58 = load i32, i32* %class_element, align 4
  %idxprom73 = sext i32 %58 to i64
  %59 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %59, i32 0, i32 3
  %60 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %60, i32 0, i32 12
  %61 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx74 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %61, i64 %idxprom73
  %62 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx74, align 8
  store %struct.rtx_def* %62, %struct.rtx_def** %reg, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %tgt, align 8
  %fld75 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx76 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld75, i32 0, i64 0
  %rtuint77 = bitcast %union.rtunion_def* %arrayidx76 to i32*
  %64 = load i32, i32* %rtuint77, align 4
  %idxprom78 = zext i32 %64 to i64
  %65 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %elements79 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %65, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements79, i32 0, i64 %idxprom78
  %class_element81 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx80, i32 0, i32 0
  %66 = load i32, i32* %class_element81, align 4
  %idxprom82 = sext i32 %66 to i64
  %67 = load %struct.function*, %struct.function** @cfun, align 8
  %emit83 = getelementptr inbounds %struct.function, %struct.function* %67, i32 0, i32 3
  %68 = load %struct.emit_status*, %struct.emit_status** %emit83, align 8
  %x_regno_reg_rtx84 = getelementptr inbounds %struct.emit_status, %struct.emit_status* %68, i32 0, i32 12
  %69 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx84, align 8
  %arrayidx85 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %69, i64 %idxprom82
  %70 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx85, align 8
  store %struct.rtx_def* %70, %struct.rtx_def** %tgt, align 8
  %71 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %tgt, align 8
  %cmp86 = icmp ne %struct.rtx_def* %71, %72
  br i1 %cmp86, label %if.then.88, label %if.end.105

if.then.88:                                       ; preds = %if.end.69
  %73 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %74 = load %struct.rtx_def**, %struct.rtx_def*** %nodes, align 8
  %call89 = call i32 @ephi_add_node(%struct.rtx_def* %73, %struct.rtx_def** %74, i32* %n_nodes)
  store i32 %call89, i32* %ireg, align 4
  %75 = load %struct.rtx_def*, %struct.rtx_def** %tgt, align 8
  %76 = load %struct.rtx_def**, %struct.rtx_def*** %nodes, align 8
  %call90 = call i32 @ephi_add_node(%struct.rtx_def* %75, %struct.rtx_def** %76, i32* %n_nodes)
  store i32 %call90, i32* %itgt, align 4
  %77 = load i32, i32* %itgt, align 4
  %rem = urem i32 %77, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %78 = load i32, i32* %itgt, align 4
  %div = udiv i32 %78, 64
  %idxprom91 = zext i32 %div to i64
  %79 = load i32, i32* %ireg, align 4
  %idxprom92 = sext i32 %79 to i64
  %80 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred, align 8
  %arrayidx93 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %80, i64 %idxprom92
  %81 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx93, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %81, i32 0, i32 3
  %arrayidx94 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom91
  %82 = load i64, i64* %arrayidx94, align 8
  %or = or i64 %82, %shl
  store i64 %or, i64* %arrayidx94, align 8
  %83 = load i32, i32* %ireg, align 4
  %rem95 = urem i32 %83, 64
  %sh_prom96 = zext i32 %rem95 to i64
  %shl97 = shl i64 1, %sh_prom96
  %84 = load i32, i32* %ireg, align 4
  %div98 = udiv i32 %84, 64
  %idxprom99 = zext i32 %div98 to i64
  %85 = load i32, i32* %itgt, align 4
  %idxprom100 = sext i32 %85 to i64
  %86 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %succ, align 8
  %arrayidx101 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %86, i64 %idxprom100
  %87 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx101, align 8
  %elms102 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %87, i32 0, i32 3
  %arrayidx103 = getelementptr inbounds [1 x i64], [1 x i64]* %elms102, i32 0, i64 %idxprom99
  %88 = load i64, i64* %arrayidx103, align 8
  %or104 = or i64 %88, %shl97
  store i64 %or104, i64* %arrayidx103, align 8
  br label %if.end.105

if.end.105:                                       ; preds = %if.then.88, %if.end.69
  br label %for.inc

for.inc:                                          ; preds = %if.end.105, %if.then.58
  %89 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call106 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %89)
  store %struct.rtx_def* %call106, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end.45
  %90 = load i32, i32* %n_nodes, align 4
  %cmp107 = icmp eq i32 %90, 0
  br i1 %cmp107, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %for.end
  br label %out

if.end.110:                                       ; preds = %for.end
  %91 = load i32, i32* %n_nodes, align 4
  %call111 = call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %91)
  store %struct.simple_bitmap_def* %call111, %struct.simple_bitmap_def** %visited, align 8
  %92 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %92)
  %93 = load i32, i32* %n_nodes, align 4
  %conv112 = sext i32 %93 to i64
  %mul113 = mul i64 %conv112, 4
  %94 = alloca i8, i64 %mul113
  %95 = bitcast i8* %94 to i32*
  store i32* %95, i32** %stack, align 8
  store i32* %95, i32** %tstack, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.114

for.cond.114:                                     ; preds = %for.inc.128, %if.end.110
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* %n_nodes, align 4
  %cmp115 = icmp slt i32 %96, %97
  br i1 %cmp115, label %for.body.117, label %for.end.129

for.body.117:                                     ; preds = %for.cond.114
  %98 = load i32, i32* %i, align 4
  %div118 = udiv i32 %98, 64
  %idxprom119 = zext i32 %div118 to i64
  %99 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms120 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %99, i32 0, i32 3
  %arrayidx121 = getelementptr inbounds [1 x i64], [1 x i64]* %elms120, i32 0, i64 %idxprom119
  %100 = load i64, i64* %arrayidx121, align 8
  %101 = load i32, i32* %i, align 4
  %rem122 = urem i32 %101, 64
  %sh_prom123 = zext i32 %rem122 to i64
  %shr = lshr i64 %100, %sh_prom123
  %and = and i64 %shr, 1
  %tobool124 = icmp ne i64 %and, 0
  br i1 %tobool124, label %if.end.127, label %if.then.125

if.then.125:                                      ; preds = %for.body.117
  %102 = load i32, i32* %i, align 4
  %103 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %104 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %succ, align 8
  %105 = load i32*, i32** %tstack, align 8
  %call126 = call i32* @ephi_forward(i32 %102, %struct.simple_bitmap_def* %103, %struct.simple_bitmap_def** %104, i32* %105)
  store i32* %call126, i32** %tstack, align 8
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %for.body.117
  br label %for.inc.128

for.inc.128:                                      ; preds = %if.end.127
  %106 = load i32, i32* %i, align 4
  %inc = add nsw i32 %106, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.114

for.end.129:                                      ; preds = %for.cond.114
  %107 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  call void @sbitmap_zero(%struct.simple_bitmap_def* %107)
  call void @start_sequence()
  br label %while.cond.130

while.cond.130:                                   ; preds = %if.end.144, %for.end.129
  %108 = load i32*, i32** %tstack, align 8
  %109 = load i32*, i32** %stack, align 8
  %cmp131 = icmp ne i32* %108, %109
  br i1 %cmp131, label %while.body.133, label %while.end.145

while.body.133:                                   ; preds = %while.cond.130
  %110 = load i32*, i32** %tstack, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %110, i32 -1
  store i32* %incdec.ptr, i32** %tstack, align 8
  %111 = load i32, i32* %incdec.ptr, align 4
  store i32 %111, i32* %i, align 4
  %112 = load i32, i32* %i, align 4
  %div134 = udiv i32 %112, 64
  %idxprom135 = zext i32 %div134 to i64
  %113 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %elms136 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %113, i32 0, i32 3
  %arrayidx137 = getelementptr inbounds [1 x i64], [1 x i64]* %elms136, i32 0, i64 %idxprom135
  %114 = load i64, i64* %arrayidx137, align 8
  %115 = load i32, i32* %i, align 4
  %rem138 = urem i32 %115, 64
  %sh_prom139 = zext i32 %rem138 to i64
  %shr140 = lshr i64 %114, %sh_prom139
  %and141 = and i64 %shr140, 1
  %tobool142 = icmp ne i64 %and141, 0
  br i1 %tobool142, label %if.end.144, label %if.then.143

if.then.143:                                      ; preds = %while.body.133
  %116 = load i32, i32* %i, align 4
  %117 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %118 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred, align 8
  %119 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %succ, align 8
  %120 = load %struct.rtx_def**, %struct.rtx_def*** %nodes, align 8
  call void @ephi_create(i32 %116, %struct.simple_bitmap_def* %117, %struct.simple_bitmap_def** %118, %struct.simple_bitmap_def** %119, %struct.rtx_def** %120)
  br label %if.end.144

if.end.144:                                       ; preds = %if.then.143, %while.body.133
  br label %while.cond.130

while.end.145:                                    ; preds = %while.cond.130
  %call146 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call146, %struct.rtx_def** %insn, align 8
  call void @end_sequence()
  %121 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %122 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  call void @insert_insn_on_edge(%struct.rtx_def* %121, %struct.edge_def* %122)
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %tobool147 = icmp ne %struct._IO_FILE* %123, null
  br i1 %tobool147, label %if.then.148, label %if.end.154

if.then.148:                                      ; preds = %while.end.145
  %124 = load %struct._IO_FILE*, %struct._IO_FILE** @rtl_dump_file, align 8
  %125 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %src149 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %125, i32 0, i32 2
  %126 = load %struct.basic_block_def*, %struct.basic_block_def** %src149, align 8
  %index150 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %126, i32 0, i32 11
  %127 = load i32, i32* %index150, align 4
  %128 = load %struct.edge_def*, %struct.edge_def** %e.addr, align 8
  %dest151 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %128, i32 0, i32 3
  %129 = load %struct.basic_block_def*, %struct.basic_block_def** %dest151, align 8
  %index152 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %129, i32 0, i32 11
  %130 = load i32, i32* %index152, align 4
  %call153 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0), i32 %127, i32 %130)
  br label %if.end.154

if.end.154:                                       ; preds = %if.then.148, %while.end.145
  %131 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited, align 8
  %132 = bitcast %struct.simple_bitmap_def* %131 to i8*
  call void @free(i8* %132) #4
  br label %out

out:                                              ; preds = %if.end.154, %if.then.109
  %133 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred, align 8
  %134 = bitcast %struct.simple_bitmap_def** %133 to i8*
  call void @free(i8* %134) #4
  %135 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %succ, align 8
  %136 = bitcast %struct.simple_bitmap_def** %135 to i8*
  call void @free(i8* %136) #4
  br label %return

return:                                           ; preds = %out, %if.then
  ret void
}

declare void @partition_delete(%struct.partition_def*) #1

declare %struct.rtx_def* @delete_insn(%struct.rtx_def*) #1

declare void @commit_edge_insertions() #1

declare i32 @count_or_remove_death_notes(%struct.simple_bitmap_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @ssa_rename_from_free() #0 {
entry:
  %0 = load %struct.htab*, %struct.htab** @ssa_rename_from_ht, align 8
  call void @htab_delete(%struct.htab* %0)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @for_each_successor_phi(%struct.basic_block_def* %bb, i32 (%struct.rtx_def*, i32, i32, i8*)* %fn, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %fn.addr = alloca i32 (%struct.rtx_def*, i32, i32, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %e = alloca %struct.edge_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %successor = alloca %struct.basic_block_def*, align 8
  %result = alloca i32, align 4
  %phi_set = alloca %struct.rtx_def*, align 8
  %alternative = alloca %struct.rtx_def**, align 8
  %phi_src = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store i32 (%struct.rtx_def*, i32, i32, i8*)* %fn, i32 (%struct.rtx_def*, i32, i32, i8*)** %fn.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %cmp = icmp eq %struct.basic_block_def* %0, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i32 0, i32 5
  %2 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %2, %struct.edge_def** %e, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.47, %if.end
  %3 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %cmp1 = icmp ne %struct.edge_def* %3, null
  br i1 %cmp1, label %for.body, label %for.end.48

for.body:                                         ; preds = %for.cond
  %4 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %4, i32 0, i32 3
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  store %struct.basic_block_def* %5, %struct.basic_block_def** %successor, align 8
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %successor, align 8
  %cmp2 = icmp eq %struct.basic_block_def* %6, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp2, label %if.then.4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %successor, align 8
  %cmp3 = icmp eq %struct.basic_block_def* %7, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %lor.lhs.false, %for.body
  br label %for.inc.47

if.end.5:                                         ; preds = %lor.lhs.false
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %successor, align 8
  %call = call %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %8)
  store %struct.rtx_def* %call, %struct.rtx_def** %insn, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp6 = icmp eq %struct.rtx_def* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  br label %for.inc.47

if.end.8:                                         ; preds = %if.end.5
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.end.8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool = icmp ne %struct.rtx_def* %10, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond.9
  %11 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %12 = bitcast %struct.rtx_def* %11 to i32*
  %bf.load = load i32, i32* %12, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp10 = icmp eq i32 %bf.clear, 32
  br i1 %cmp10, label %land.lhs.true.11, label %land.end

land.lhs.true.11:                                 ; preds = %land.lhs.true
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %14 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %15 = bitcast %struct.rtx_def* %14 to i32*
  %bf.load12 = load i32, i32* %15, align 8
  %bf.clear13 = and i32 %bf.load12, 65535
  %cmp14 = icmp eq i32 %bf.clear13, 47
  br i1 %cmp14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.11
  %16 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld15 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %16, i32 0, i32 1
  %arrayidx16 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld15, i32 0, i64 3
  %rtx17 = bitcast %union.rtunion_def* %arrayidx16 to %struct.rtx_def**
  %17 = load %struct.rtx_def*, %struct.rtx_def** %rtx17, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 1
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load21 = load i32, i32* %19, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp eq i32 %bf.clear22, 152
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.11, %land.lhs.true, %for.cond.9
  %20 = phi i1 [ false, %land.lhs.true.11 ], [ false, %land.lhs.true ], [ false, %for.cond.9 ], [ %cmp23, %land.rhs ]
  br i1 %20, label %for.body.24, label %for.end

for.body.24:                                      ; preds = %land.end
  %21 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 3
  %rtx27 = bitcast %union.rtunion_def* %arrayidx26 to %struct.rtx_def**
  %22 = load %struct.rtx_def*, %struct.rtx_def** %rtx27, align 8
  store %struct.rtx_def* %22, %struct.rtx_def** %phi_set, align 8
  %23 = load %struct.rtx_def*, %struct.rtx_def** %phi_set, align 8
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %24, i32 0, i32 11
  %25 = load i32, i32* %index, align 4
  %call28 = call %struct.rtx_def** @phi_alternative(%struct.rtx_def* %23, i32 %25)
  store %struct.rtx_def** %call28, %struct.rtx_def*** %alternative, align 8
  %26 = load %struct.rtx_def**, %struct.rtx_def*** %alternative, align 8
  %cmp29 = icmp eq %struct.rtx_def** %26, null
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %for.body.24
  br label %for.inc

if.end.31:                                        ; preds = %for.body.24
  %27 = load %struct.rtx_def**, %struct.rtx_def*** %alternative, align 8
  %28 = load %struct.rtx_def*, %struct.rtx_def** %27, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %phi_src, align 8
  %29 = load i32 (%struct.rtx_def*, i32, i32, i8*)*, i32 (%struct.rtx_def*, i32, i32, i8*)** %fn.addr, align 8
  %30 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %31 = load %struct.rtx_def*, %struct.rtx_def** %phi_set, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtx34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx34, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %33 = load i32, i32* %rtuint, align 4
  %34 = load %struct.rtx_def*, %struct.rtx_def** %phi_src, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %34, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtuint39 = bitcast %union.rtunion_def* %arrayidx38 to i32*
  %35 = load i32, i32* %rtuint39, align 4
  %36 = load i8*, i8** %data.addr, align 8
  %call40 = call i32 %29(%struct.rtx_def* %30, i32 %33, i32 %35, i8* %36)
  store i32 %call40, i32* %result, align 4
  %37 = load i32, i32* %result, align 4
  %cmp41 = icmp ne i32 %37, 0
  br i1 %cmp41, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.31
  %38 = load i32, i32* %result, align 4
  store i32 %38, i32* %retval
  br label %return

if.end.43:                                        ; preds = %if.end.31
  br label %for.inc

for.inc:                                          ; preds = %if.end.43, %if.then.30
  %39 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld44 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %39, i32 0, i32 1
  %arrayidx45 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld44, i32 0, i64 2
  %rtx46 = bitcast %union.rtunion_def* %arrayidx45 to %struct.rtx_def**
  %40 = load %struct.rtx_def*, %struct.rtx_def** %rtx46, align 8
  store %struct.rtx_def* %40, %struct.rtx_def** %insn, align 8
  br label %for.cond.9

for.end:                                          ; preds = %land.end
  br label %for.inc.47

for.inc.47:                                       ; preds = %for.end, %if.then.7, %if.then.4
  %41 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %41, i32 0, i32 1
  %42 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %42, %struct.edge_def** %e, align 8
  br label %for.cond

for.end.48:                                       ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.48, %if.then.42, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal %struct.rtx_def** @phi_alternative(%struct.rtx_def* %set, i32 %c) #5 {
entry:
  %retval = alloca %struct.rtx_def**, align 8
  %set.addr = alloca %struct.rtx_def*, align 8
  %c.addr = alloca i32, align 4
  %phi_vec = alloca %struct.rtvec_def*, align 8
  %v = alloca i32, align 4
  store %struct.rtx_def* %set, %struct.rtx_def** %set.addr, align 8
  store i32 %c, i32* %c.addr, align 4
  %0 = load %struct.rtx_def*, %struct.rtx_def** %set.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtvec_def**
  %2 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  store %struct.rtvec_def* %2, %struct.rtvec_def** %phi_vec, align 8
  %3 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %3, i32 0, i32 0
  %4 = load i32, i32* %num_elem, align 4
  %sub = sub nsw i32 %4, 2
  store i32 %sub, i32* %v, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %v, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %v, align 4
  %add = add nsw i32 %6, 1
  %idxprom = sext i32 %add to i64
  %7 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom
  %8 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx3, align 8
  %fld4 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld4, i32 0, i64 0
  %rtwint = bitcast %union.rtunion_def* %arrayidx5 to i64*
  %9 = load i64, i64* %rtwint, align 8
  %10 = load i32, i32* %c.addr, align 4
  %conv = sext i32 %10 to i64
  %cmp6 = icmp eq i64 %9, %conv
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %v, align 4
  %idxprom8 = sext i32 %11 to i64
  %12 = load %struct.rtvec_def*, %struct.rtvec_def** %phi_vec, align 8
  %elem9 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i32 0, i32 1
  %arrayidx10 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem9, i32 0, i64 %idxprom8
  store %struct.rtx_def** %arrayidx10, %struct.rtx_def*** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %v, align 4
  %sub11 = sub nsw i32 %13, 2
  store i32 %sub11, i32* %v, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store %struct.rtx_def** null, %struct.rtx_def*** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %retval
  ret %struct.rtx_def** %14
}

declare void @sbitmap_vector_zero(%struct.simple_bitmap_def**, i32) #1

declare void @note_stores(%struct.rtx_def*, void (%struct.rtx_def*, %struct.rtx_def*, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @find_evaluations_1(%struct.rtx_def* %dest, %struct.rtx_def* %set, i8* %data) #0 {
entry:
  %dest.addr = alloca %struct.rtx_def*, align 8
  %set.addr = alloca %struct.rtx_def*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.rtx_def* %dest, %struct.rtx_def** %dest.addr, align 8
  store %struct.rtx_def* %set, %struct.rtx_def** %set.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %1 = bitcast %struct.rtx_def* %0 to i32*
  %bf.load = load i32, i32* %1, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 61
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  %cmp1 = icmp ult i32 %3, 53
  br i1 %cmp1, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %4 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %4, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtuint4 = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %5 = load i32, i32* %rtuint4, align 4
  %cmp5 = icmp eq i32 %5, 17
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %6 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %6, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtuint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %7 = load i32, i32* %rtuint9, align 4
  %cmp10 = icmp eq i32 %7, 16
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %land.lhs.true
  %8 = load i32, i32* @fe_current_bb, align 4
  %rem = urem i32 %8, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %9 = load i32, i32* @fe_current_bb, align 4
  %div = udiv i32 %9, 64
  %idxprom = zext i32 %div to i64
  %10 = load %struct.rtx_def*, %struct.rtx_def** %dest.addr, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtuint13 = bitcast %union.rtunion_def* %arrayidx12 to i32*
  %11 = load i32, i32* %rtuint13, align 4
  %idxprom14 = zext i32 %11 to i64
  %12 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** @fe_evals, align 8
  %arrayidx15 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %12, i64 %idxprom14
  %13 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx15, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %13, i32 0, i32 3
  %arrayidx16 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %14 = load i64, i64* %arrayidx16, align 8
  %or = or i64 %14, %shl
  store i64 %or, i64* %arrayidx16, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.6, %entry
  ret void
}

declare void @sbitmap_copy(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare i32 @sbitmap_union_of_diff(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare i32 @sbitmap_a_or_b(%struct.simple_bitmap_def*, %struct.simple_bitmap_def*, %struct.simple_bitmap_def*) #1

declare i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @insert_phi_node(i32 %regno, i32 %bb) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %bb.addr = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %npred = alloca i32, align 4
  %i = alloca i32, align 4
  %vec = alloca %struct.rtvec_def*, align 8
  %phi = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %end_p = alloca i32, align 4
  store i32 %regno, i32* %regno.addr, align 4
  store i32 %bb, i32* %bb.addr, align 4
  %0 = load i32, i32* %bb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %b, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 4
  %4 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %4, %struct.edge_def** %e, align 8
  store i32 0, i32* %npred, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %5, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %6, i32 0, i32 2
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %cmp = icmp ne %struct.basic_block_def* %7, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %npred, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %npred, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %9, i32 0, i32 0
  %10 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %10, %struct.edge_def** %e, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %npred, align 4
  %cmp2 = icmp eq i32 %11, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %for.end
  br label %if.end.40

if.end.4:                                         ; preds = %for.end
  %12 = load i32, i32* %regno.addr, align 4
  %idxprom5 = sext i32 %12 to i64
  %13 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %13, i32 0, i32 3
  %14 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %14, i32 0, i32 12
  %15 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx6 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %15, i64 %idxprom5
  %16 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx6, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %reg, align 8
  %17 = load i32, i32* %npred, align 4
  %mul = mul nsw i32 %17, 2
  %call = call %struct.rtvec_def* @rtvec_alloc(i32 %mul)
  store %struct.rtvec_def* %call, %struct.rtvec_def** %vec, align 8
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %18, i32 0, i32 4
  %19 = load %struct.edge_def*, %struct.edge_def** %pred7, align 8
  store %struct.edge_def* %19, %struct.edge_def** %e, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc.23, %if.end.4
  %20 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool9 = icmp ne %struct.edge_def* %20, null
  br i1 %tobool9, label %for.body.10, label %for.end.26

for.body.10:                                      ; preds = %for.cond.8
  %21 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src11 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %21, i32 0, i32 2
  %22 = load %struct.basic_block_def*, %struct.basic_block_def** %src11, align 8
  %cmp12 = icmp ne %struct.basic_block_def* %22, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 0)
  br i1 %cmp12, label %if.then.13, label %if.end.22

if.then.13:                                       ; preds = %for.body.10
  %23 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %24 = load i32, i32* %i, align 4
  %add = add nsw i32 %24, 0
  %idxprom14 = sext i32 %add to i64
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %vec, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom14
  store %struct.rtx_def* %23, %struct.rtx_def** %arrayidx15, align 8
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src16 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i32 0, i32 2
  %27 = load %struct.basic_block_def*, %struct.basic_block_def** %src16, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %27, i32 0, i32 11
  %28 = load i32, i32* %index, align 4
  %conv = sext i32 %28 to i64
  %call17 = call %struct.rtx_def* @gen_rtx_CONST_INT(i32 0, i64 %conv)
  %29 = load i32, i32* %i, align 4
  %add18 = add nsw i32 %29, 1
  %idxprom19 = sext i32 %add18 to i64
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %vec, align 8
  %elem20 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem20, i32 0, i64 %idxprom19
  store %struct.rtx_def* %call17, %struct.rtx_def** %arrayidx21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.13, %for.body.10
  br label %for.inc.23

for.inc.23:                                       ; preds = %if.end.22
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i32 0, i32 0
  %32 = load %struct.edge_def*, %struct.edge_def** %pred_next24, align 8
  store %struct.edge_def* %32, %struct.edge_def** %e, align 8
  %33 = load i32, i32* %i, align 4
  %add25 = add nsw i32 %33, 2
  store i32 %add25, i32* %i, align 4
  br label %for.cond.8

for.end.26:                                       ; preds = %for.cond.8
  %34 = load %struct.rtvec_def*, %struct.rtvec_def** %vec, align 8
  %call27 = call %struct.rtx_def* @gen_rtx_fmt_E(i32 152, i32 0, %struct.rtvec_def* %34)
  store %struct.rtx_def* %call27, %struct.rtx_def** %phi, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %36 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %call28 = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %35, %struct.rtx_def* %36)
  store %struct.rtx_def* %call28, %struct.rtx_def** %phi, align 8
  %37 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %call29 = call %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %37)
  store %struct.rtx_def* %call29, %struct.rtx_def** %insn, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %38, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 1
  %rtx = bitcast %union.rtunion_def* %arrayidx30 to %struct.rtx_def**
  %39 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %40 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %40, i32 0, i32 1
  %41 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp31 = icmp eq %struct.rtx_def* %39, %41
  %conv32 = zext i1 %cmp31 to i32
  store i32 %conv32, i32* %end_p, align 4
  %42 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %43 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %call33 = call %struct.rtx_def* @emit_insn_before(%struct.rtx_def* %42, %struct.rtx_def* %43)
  %44 = load i32, i32* %end_p, align 4
  %tobool34 = icmp ne i32 %44, 0
  br i1 %tobool34, label %if.then.35, label %if.end.40

if.then.35:                                       ; preds = %for.end.26
  %45 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld36 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %45, i32 0, i32 1
  %arrayidx37 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld36, i32 0, i64 1
  %rtx38 = bitcast %union.rtunion_def* %arrayidx37 to %struct.rtx_def**
  %46 = load %struct.rtx_def*, %struct.rtx_def** %rtx38, align 8
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end39 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i32 0, i32 1
  store %struct.rtx_def* %46, %struct.rtx_def** %end39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.3, %if.then.35, %for.end.26
  ret void
}

declare %struct.rtvec_def* @rtvec_alloc(i32) #1

declare %struct.rtx_def* @gen_rtx_CONST_INT(i32, i64) #1

declare %struct.rtx_def* @gen_rtx_fmt_E(i32, i32, %struct.rtvec_def*) #1

declare %struct.rtx_def* @gen_rtx_fmt_ee(i32, i32, %struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.rtx_def* @emit_insn_before(%struct.rtx_def*, %struct.rtx_def*) #1

declare %struct.varray_head_tag* @varray_init(i64, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @ssa_rename_from_initialize() #0 {
entry:
  %call = call %struct.htab* @htab_create(i64 64, i32 (i8*)* @ssa_rename_from_hash_function, i32 (i8*, i8*)* @ssa_rename_from_equal, void (i8*)* @ssa_rename_from_delete)
  store %struct.htab* %call, %struct.htab** @ssa_rename_from_ht, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @rename_block(i32 %bb, i32* %idom) #0 {
entry:
  %bb.addr = alloca i32, align 4
  %idom.addr = alloca i32*, align 8
  %b = alloca %struct.basic_block_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %insn = alloca %struct.rtx_def*, align 8
  %next = alloca %struct.rtx_def*, align 8
  %last = alloca %struct.rtx_def*, align 8
  %set_data = alloca %struct.rename_set_data*, align 8
  %c = alloca i32, align 4
  %context = alloca %struct.rename_context, align 8
  %seq = alloca %struct.rtx_def*, align 8
  %i = alloca i32, align 4
  %phi = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %next162 = alloca %struct.rename_set_data*, align 8
  %old_reg = alloca %struct.rtx_def*, align 8
  store i32 %bb, i32* %bb.addr, align 4
  store i32* %idom, i32** %idom.addr, align 8
  %0 = load i32, i32* %bb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %b, align 8
  store %struct.rename_set_data* null, %struct.rename_set_data** %set_data, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i32 0, i32 0
  %4 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %4, %struct.rtx_def** %next, align 8
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %end = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i32 0, i32 1
  %6 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  store %struct.rtx_def* %6, %struct.rtx_def** %last, align 8
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %7 = load %struct.rtx_def*, %struct.rtx_def** %next, align 8
  store %struct.rtx_def* %7, %struct.rtx_def** %insn, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load = load i32, i32* %9, align 8
  %bf.clear = and i32 %bf.load, 65535
  %idxprom2 = sext i32 %bf.clear to i64
  %arrayidx3 = getelementptr inbounds [153 x i8], [153 x i8]* @rtx_class, i32 0, i64 %idxprom2
  %10 = load i8, i8* %arrayidx3, align 1
  %conv = sext i8 %10 to i32
  %cmp = icmp eq i32 %conv, 105
  br i1 %cmp, label %if.then, label %if.end.41

if.then:                                          ; preds = %do.body
  %11 = load %struct.rename_set_data*, %struct.rename_set_data** %set_data, align 8
  %done_renames = getelementptr inbounds %struct.rename_context, %struct.rename_context* %context, i32 0, i32 1
  store %struct.rename_set_data* %11, %struct.rename_set_data** %done_renames, align 8
  %new_renames = getelementptr inbounds %struct.rename_context, %struct.rename_context* %context, i32 0, i32 0
  store %struct.rename_set_data* null, %struct.rename_set_data** %new_renames, align 8
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %current_insn = getelementptr inbounds %struct.rename_context, %struct.rename_context* %context, i32 0, i32 2
  store %struct.rtx_def* %12, %struct.rtx_def** %current_insn, align 8
  call void @start_sequence()
  %13 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx5 to %struct.rtx_def**
  %14 = bitcast %struct.rename_context* %context to i8*
  %call = call i32 @for_each_rtx(%struct.rtx_def** %rtx, i32 (%struct.rtx_def**, i8*)* @rename_insn_1, i8* %14)
  %15 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 6
  %rtx8 = bitcast %union.rtunion_def* %arrayidx7 to %struct.rtx_def**
  %16 = bitcast %struct.rename_context* %context to i8*
  %call9 = call i32 @for_each_rtx(%struct.rtx_def** %rtx8, i32 (%struct.rtx_def**, i8*)* @rename_insn_1, i8* %16)
  %call10 = call %struct.rtx_def* @get_insns()
  %cmp11 = icmp ne %struct.rtx_def* %call10, null
  br i1 %cmp11, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %17 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 3
  %rtx16 = bitcast %union.rtunion_def* %arrayidx15 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx16, align 8
  %call17 = call %struct.rtx_def* @emit(%struct.rtx_def* %18)
  %call18 = call %struct.rtx_def* @gen_sequence()
  store %struct.rtx_def* %call18, %struct.rtx_def** %seq, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.13
  %19 = load i32, i32* %i, align 4
  %20 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtvec = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtvec_def**
  %21 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec, align 8
  %num_elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %21, i32 0, i32 0
  %22 = load i32, i32* %num_elem, align 4
  %cmp21 = icmp slt i32 %19, %22
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load i32, i32* %i, align 4
  %idxprom23 = sext i32 %23 to i64
  %24 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld24 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %24, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld24, i32 0, i64 0
  %rtvec26 = bitcast %union.rtunion_def* %arrayidx25 to %struct.rtvec_def**
  %25 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec26, align 8
  %elem = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %25, i32 0, i32 1
  %arrayidx27 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem, i32 0, i64 %idxprom23
  %26 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx27, align 8
  %fld28 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx29 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld28, i32 0, i64 3
  %rtx30 = bitcast %union.rtunion_def* %arrayidx29 to %struct.rtx_def**
  %27 = load %struct.rtx_def*, %struct.rtx_def** %rtx30, align 8
  %28 = load i32, i32* %i, align 4
  %idxprom31 = sext i32 %28 to i64
  %29 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtvec34 = bitcast %union.rtunion_def* %arrayidx33 to %struct.rtvec_def**
  %30 = load %struct.rtvec_def*, %struct.rtvec_def** %rtvec34, align 8
  %elem35 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %30, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %elem35, i32 0, i64 %idxprom31
  store %struct.rtx_def* %27, %struct.rtx_def** %arrayidx36, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %32 = load %struct.rtx_def*, %struct.rtx_def** %seq, align 8
  %33 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 3
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  store %struct.rtx_def* %32, %struct.rtx_def** %rtx39, align 8
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  call void @end_sequence()
  call void @apply_delayed_renames(%struct.rename_context* %context)
  %done_renames40 = getelementptr inbounds %struct.rename_context, %struct.rename_context* %context, i32 0, i32 1
  %34 = load %struct.rename_set_data*, %struct.rename_set_data** %done_renames40, align 8
  store %struct.rename_set_data* %34, %struct.rename_set_data** %set_data, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.end, %do.body
  %35 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 2
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  store %struct.rtx_def* %36, %struct.rtx_def** %next, align 8
  br label %do.cond

do.cond:                                          ; preds = %if.end.41
  %37 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %last, align 8
  %cmp45 = icmp ne %struct.rtx_def* %37, %38
  br i1 %cmp45, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 5
  %40 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  store %struct.edge_def* %40, %struct.edge_def** %e, align 8
  br label %for.cond.47

for.cond.47:                                      ; preds = %for.inc.144, %do.end
  %41 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool = icmp ne %struct.edge_def* %41, null
  br i1 %tobool, label %for.body.48, label %for.end.145

for.body.48:                                      ; preds = %for.cond.47
  %42 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %42, i32 0, i32 3
  %43 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %cmp49 = icmp eq %struct.basic_block_def* %43, getelementptr inbounds ([2 x %struct.basic_block_def], [2 x %struct.basic_block_def]* @entry_exit_blocks, i32 0, i64 1)
  br i1 %cmp49, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %for.body.48
  br label %for.inc.144

if.end.52:                                        ; preds = %for.body.48
  %44 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest53 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %44, i32 0, i32 3
  %45 = load %struct.basic_block_def*, %struct.basic_block_def** %dest53, align 8
  %call54 = call %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %45)
  store %struct.rtx_def* %call54, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.140, %if.end.52
  %46 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %tobool55 = icmp ne %struct.rtx_def* %46, null
  br i1 %tobool55, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %while.cond
  %47 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load56 = load i32, i32* %48, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp eq i32 %bf.clear57, 32
  br i1 %cmp58, label %land.lhs.true.60, label %land.end

land.lhs.true.60:                                 ; preds = %land.lhs.true
  %49 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld61 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %49, i32 0, i32 1
  %arrayidx62 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld61, i32 0, i64 3
  %rtx63 = bitcast %union.rtunion_def* %arrayidx62 to %struct.rtx_def**
  %50 = load %struct.rtx_def*, %struct.rtx_def** %rtx63, align 8
  %51 = bitcast %struct.rtx_def* %50 to i32*
  %bf.load64 = load i32, i32* %51, align 8
  %bf.clear65 = and i32 %bf.load64, 65535
  %cmp66 = icmp eq i32 %bf.clear65, 47
  br i1 %cmp66, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.60
  %52 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld68 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx69 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld68, i32 0, i64 3
  %rtx70 = bitcast %union.rtunion_def* %arrayidx69 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx70, align 8
  %fld71 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %53, i32 0, i32 1
  %arrayidx72 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld71, i32 0, i64 1
  %rtx73 = bitcast %union.rtunion_def* %arrayidx72 to %struct.rtx_def**
  %54 = load %struct.rtx_def*, %struct.rtx_def** %rtx73, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load74 = load i32, i32* %55, align 8
  %bf.clear75 = and i32 %bf.load74, 65535
  %cmp76 = icmp eq i32 %bf.clear75, 152
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.60, %land.lhs.true, %while.cond
  %56 = phi i1 [ false, %land.lhs.true.60 ], [ false, %land.lhs.true ], [ false, %while.cond ], [ %cmp76, %land.rhs ]
  br i1 %56, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %57 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld78 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx79 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld78, i32 0, i64 3
  %rtx80 = bitcast %union.rtunion_def* %arrayidx79 to %struct.rtx_def**
  %58 = load %struct.rtx_def*, %struct.rtx_def** %rtx80, align 8
  store %struct.rtx_def* %58, %struct.rtx_def** %phi, align 8
  %59 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %59, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtx83 = bitcast %union.rtunion_def* %arrayidx82 to %struct.rtx_def**
  %60 = load %struct.rtx_def*, %struct.rtx_def** %rtx83, align 8
  store %struct.rtx_def* %60, %struct.rtx_def** %reg, align 8
  %61 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld84 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %61, i32 0, i32 1
  %arrayidx85 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld84, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx85 to i32*
  %62 = load i32, i32* %rtuint, align 4
  %63 = load i32, i32* @ssa_max_reg_num, align 4
  %cmp86 = icmp uge i32 %62, %63
  br i1 %cmp86, label %if.then.88, label %if.end.93

if.then.88:                                       ; preds = %while.body
  %64 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld89 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %64, i32 0, i32 1
  %arrayidx90 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld89, i32 0, i64 0
  %rtuint91 = bitcast %union.rtunion_def* %arrayidx90 to i32*
  %65 = load i32, i32* %rtuint91, align 4
  %call92 = call %struct.rtx_def* @ssa_rename_from_lookup(i32 %65)
  store %struct.rtx_def* %call92, %struct.rtx_def** %reg, align 8
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.88, %while.body
  %66 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp94 = icmp eq %struct.rtx_def* %66, null
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %if.end.93
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1050, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.rename_block, i32 0, i32 0)) #6
  unreachable

if.end.97:                                        ; preds = %if.end.93
  %67 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call98 = call %struct.rtx_def* @ssa_rename_to_lookup(%struct.rtx_def* %67)
  store %struct.rtx_def* %call98, %struct.rtx_def** %reg, align 8
  %68 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %cmp99 = icmp eq %struct.rtx_def* %68, null
  br i1 %cmp99, label %if.then.103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.97
  %69 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %70 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp101 = icmp eq %struct.rtx_def* %69, %70
  br i1 %cmp101, label %if.then.103, label %if.else

if.then.103:                                      ; preds = %lor.lhs.false, %if.end.97
  %71 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %72 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %call104 = call i32 @remove_phi_alternative(%struct.rtx_def* %71, %struct.basic_block_def* %72)
  %tobool105 = icmp ne i32 %call104, 0
  br i1 %tobool105, label %if.end.107, label %if.then.106

if.then.106:                                      ; preds = %if.then.103
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1059, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.rename_block, i32 0, i32 0)) #6
  unreachable

if.end.107:                                       ; preds = %if.then.103
  br label %if.end.140

if.else:                                          ; preds = %lor.lhs.false
  %73 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtx110 = bitcast %union.rtunion_def* %arrayidx109 to %struct.rtx_def**
  %74 = load %struct.rtx_def*, %struct.rtx_def** %rtx110, align 8
  %75 = bitcast %struct.rtx_def* %74 to i32*
  %bf.load111 = load i32, i32* %75, align 8
  %bf.lshr = lshr i32 %bf.load111, 16
  %bf.clear112 = and i32 %bf.lshr, 255
  %cmp113 = icmp eq i32 %bf.clear112, 0
  br i1 %cmp113, label %if.then.115, label %if.else.124

if.then.115:                                      ; preds = %if.else
  %76 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %77 = bitcast %struct.rtx_def* %76 to i32*
  %bf.load116 = load i32, i32* %77, align 8
  %bf.lshr117 = lshr i32 %bf.load116, 16
  %bf.clear118 = and i32 %bf.lshr117, 255
  %78 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %fld119 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx120 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld119, i32 0, i64 0
  %rtx121 = bitcast %union.rtunion_def* %arrayidx120 to %struct.rtx_def**
  %79 = load %struct.rtx_def*, %struct.rtx_def** %rtx121, align 8
  %80 = bitcast %struct.rtx_def* %79 to i32*
  %bf.load122 = load i32, i32* %80, align 8
  %bf.value = and i32 %bf.clear118, 255
  %bf.shl = shl i32 %bf.value, 16
  %bf.clear123 = and i32 %bf.load122, -16711681
  %bf.set = or i32 %bf.clear123, %bf.shl
  store i32 %bf.set, i32* %80, align 8
  br label %if.end.138

if.else.124:                                      ; preds = %if.else
  %81 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %fld125 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx126 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld125, i32 0, i64 0
  %rtx127 = bitcast %union.rtunion_def* %arrayidx126 to %struct.rtx_def**
  %82 = load %struct.rtx_def*, %struct.rtx_def** %rtx127, align 8
  %83 = bitcast %struct.rtx_def* %82 to i32*
  %bf.load128 = load i32, i32* %83, align 8
  %bf.lshr129 = lshr i32 %bf.load128, 16
  %bf.clear130 = and i32 %bf.lshr129, 255
  %84 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %85 = bitcast %struct.rtx_def* %84 to i32*
  %bf.load131 = load i32, i32* %85, align 8
  %bf.lshr132 = lshr i32 %bf.load131, 16
  %bf.clear133 = and i32 %bf.lshr132, 255
  %cmp134 = icmp ne i32 %bf.clear130, %bf.clear133
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %if.else.124
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1069, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.rename_block, i32 0, i32 0)) #6
  unreachable

if.end.137:                                       ; preds = %if.else.124
  br label %if.end.138

if.end.138:                                       ; preds = %if.end.137, %if.then.115
  %86 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %87 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %88 = load i32, i32* %bb.addr, align 4
  %call139 = call %struct.rtx_def** @phi_alternative(%struct.rtx_def* %87, i32 %88)
  store %struct.rtx_def* %86, %struct.rtx_def** %call139, align 8
  br label %if.end.140

if.end.140:                                       ; preds = %if.end.138, %if.end.107
  %89 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld141 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx142 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld141, i32 0, i64 2
  %rtx143 = bitcast %union.rtunion_def* %arrayidx142 to %struct.rtx_def**
  %90 = load %struct.rtx_def*, %struct.rtx_def** %rtx143, align 8
  store %struct.rtx_def* %90, %struct.rtx_def** %insn, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %for.inc.144

for.inc.144:                                      ; preds = %while.end, %if.then.51
  %91 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %91, i32 0, i32 1
  %92 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  store %struct.edge_def* %92, %struct.edge_def** %e, align 8
  br label %for.cond.47

for.end.145:                                      ; preds = %for.cond.47
  store i32 0, i32* %c, align 4
  br label %for.cond.146

for.cond.146:                                     ; preds = %for.inc.156, %for.end.145
  %93 = load i32, i32* %c, align 4
  %94 = load i32, i32* @n_basic_blocks, align 4
  %cmp147 = icmp slt i32 %93, %94
  br i1 %cmp147, label %for.body.149, label %for.end.158

for.body.149:                                     ; preds = %for.cond.146
  %95 = load i32, i32* %c, align 4
  %idxprom150 = sext i32 %95 to i64
  %96 = load i32*, i32** %idom.addr, align 8
  %arrayidx151 = getelementptr inbounds i32, i32* %96, i64 %idxprom150
  %97 = load i32, i32* %arrayidx151, align 4
  %98 = load i32, i32* %bb.addr, align 4
  %cmp152 = icmp eq i32 %97, %98
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %for.body.149
  %99 = load i32, i32* %c, align 4
  %100 = load i32*, i32** %idom.addr, align 8
  call void @rename_block(i32 %99, i32* %100)
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %for.body.149
  br label %for.inc.156

for.inc.156:                                      ; preds = %if.end.155
  %101 = load i32, i32* %c, align 4
  %inc157 = add nsw i32 %101, 1
  store i32 %inc157, i32* %c, align 4
  br label %for.cond.146

for.end.158:                                      ; preds = %for.cond.146
  br label %while.cond.159

while.cond.159:                                   ; preds = %if.end.168, %for.end.158
  %102 = load %struct.rename_set_data*, %struct.rename_set_data** %set_data, align 8
  %tobool160 = icmp ne %struct.rename_set_data* %102, null
  br i1 %tobool160, label %while.body.161, label %while.end.171

while.body.161:                                   ; preds = %while.cond.159
  %103 = load %struct.rename_set_data*, %struct.rename_set_data** %set_data, align 8
  %reg_loc = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %103, i32 0, i32 1
  %104 = load %struct.rtx_def**, %struct.rtx_def*** %reg_loc, align 8
  %105 = load %struct.rtx_def*, %struct.rtx_def** %104, align 8
  store %struct.rtx_def* %105, %struct.rtx_def** %old_reg, align 8
  %106 = load %struct.rename_set_data*, %struct.rename_set_data** %set_data, align 8
  %reg_loc163 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %106, i32 0, i32 1
  %107 = load %struct.rtx_def**, %struct.rtx_def*** %reg_loc163, align 8
  %108 = load %struct.rtx_def*, %struct.rtx_def** %107, align 8
  %109 = load %struct.rename_set_data*, %struct.rename_set_data** %set_data, align 8
  %old_reg164 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %109, i32 0, i32 2
  %110 = load %struct.rtx_def*, %struct.rtx_def** %old_reg164, align 8
  %cmp165 = icmp ne %struct.rtx_def* %108, %110
  br i1 %cmp165, label %if.then.167, label %if.end.168

if.then.167:                                      ; preds = %while.body.161
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1094, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @__FUNCTION__.rename_block, i32 0, i32 0)) #6
  unreachable

if.end.168:                                       ; preds = %while.body.161
  %111 = load %struct.rename_set_data*, %struct.rename_set_data** %set_data, align 8
  %new_reg = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %111, i32 0, i32 3
  %112 = load %struct.rtx_def*, %struct.rtx_def** %new_reg, align 8
  %113 = load %struct.rename_set_data*, %struct.rename_set_data** %set_data, align 8
  %reg_loc169 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %113, i32 0, i32 1
  %114 = load %struct.rtx_def**, %struct.rtx_def*** %reg_loc169, align 8
  store %struct.rtx_def* %112, %struct.rtx_def** %114, align 8
  %115 = load %struct.rtx_def*, %struct.rtx_def** %old_reg, align 8
  %116 = load %struct.rename_set_data*, %struct.rename_set_data** %set_data, align 8
  %prev_reg = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %116, i32 0, i32 4
  %117 = load %struct.rtx_def*, %struct.rtx_def** %prev_reg, align 8
  call void @ssa_rename_to_insert(%struct.rtx_def* %115, %struct.rtx_def* %117)
  %118 = load %struct.rename_set_data*, %struct.rename_set_data** %set_data, align 8
  %next170 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %118, i32 0, i32 0
  %119 = load %struct.rename_set_data*, %struct.rename_set_data** %next170, align 8
  store %struct.rename_set_data* %119, %struct.rename_set_data** %next162, align 8
  %120 = load %struct.rename_set_data*, %struct.rename_set_data** %set_data, align 8
  %121 = bitcast %struct.rename_set_data* %120 to i8*
  call void @free(i8* %121) #4
  %122 = load %struct.rename_set_data*, %struct.rename_set_data** %next162, align 8
  store %struct.rename_set_data* %122, %struct.rename_set_data** %set_data, align 8
  br label %while.cond.159

while.end.171:                                    ; preds = %while.cond.159
  ret void
}

declare %struct.htab* @htab_create(i64, i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @ssa_rename_from_hash_function(i8* %srfp) #0 {
entry:
  %srfp.addr = alloca i8*, align 8
  store i8* %srfp, i8** %srfp.addr, align 8
  %0 = load i8*, i8** %srfp.addr, align 8
  %1 = bitcast i8* %0 to %struct.ssa_rename_from_pair*
  %reg = getelementptr inbounds %struct.ssa_rename_from_pair, %struct.ssa_rename_from_pair* %1, i32 0, i32 0
  %2 = load i32, i32* %reg, align 4
  ret i32 %2
}

; Function Attrs: nounwind uwtable
define internal i32 @ssa_rename_from_equal(i8* %srfp1, i8* %srfp2) #0 {
entry:
  %srfp1.addr = alloca i8*, align 8
  %srfp2.addr = alloca i8*, align 8
  store i8* %srfp1, i8** %srfp1.addr, align 8
  store i8* %srfp2, i8** %srfp2.addr, align 8
  %0 = load i8*, i8** %srfp1.addr, align 8
  %call = call i32 @ssa_rename_from_hash_function(i8* %0)
  %1 = load i8*, i8** %srfp2.addr, align 8
  %call1 = call i32 @ssa_rename_from_hash_function(i8* %1)
  %cmp = icmp eq i32 %call, %call1
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @ssa_rename_from_delete(i8* %srfp) #0 {
entry:
  %srfp.addr = alloca i8*, align 8
  store i8* %srfp, i8** %srfp.addr, align 8
  %0 = load i8*, i8** %srfp.addr, align 8
  call void @free(i8* %0) #4
  ret void
}

declare void @start_sequence() #1

declare i32 @for_each_rtx(%struct.rtx_def**, i32 (%struct.rtx_def**, i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @rename_insn_1(%struct.rtx_def** %ptr, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %context = alloca %struct.rename_context*, align 8
  %destp = alloca %struct.rtx_def**, align 8
  %dest = alloca %struct.rtx_def*, align 8
  %i = alloca %struct.rtx_def*, align 8
  %reg = alloca %struct.rtx_def*, align 8
  %saved_new_renames = alloca %struct.rename_set_data*, align 8
  %new_reg = alloca %struct.rtx_def*, align 8
  %dest211 = alloca %struct.rtx_def*, align 8
  %new_reg244 = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %ptr, %struct.rtx_def*** %ptr.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.rename_context*
  store %struct.rename_context* %3, %struct.rename_context** %context, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp = icmp eq %struct.rtx_def* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 47, label %sw.bb
    i32 61, label %sw.bb.166
    i32 49, label %sw.bb.210
    i32 152, label %sw.bb.258
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  store %struct.rtx_def** %rtx, %struct.rtx_def*** %destp, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtx3 = bitcast %union.rtunion_def* %arrayidx2 to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx3, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %dest, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load4 = load i32, i32* %11, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 63
  br i1 %cmp6, label %land.lhs.true, label %if.end.61

land.lhs.true:                                    ; preds = %sw.bb
  %12 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load7 = load i32, i32* %13, align 8
  %bf.lshr = lshr i32 %bf.load7, 16
  %bf.clear8 = and i32 %bf.lshr, 255
  %idxprom = sext i32 %bf.clear8 to i64
  %arrayidx9 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom
  %14 = load i8, i8* %arrayidx9, align 1
  %conv = zext i8 %14 to i32
  %15 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 0
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load13 = load i32, i32* %17, align 8
  %bf.lshr14 = lshr i32 %bf.load13, 16
  %bf.clear15 = and i32 %bf.lshr14, 255
  %idxprom16 = sext i32 %bf.clear15 to i64
  %arrayidx17 = getelementptr inbounds [59 x i8], [59 x i8]* @mode_size, i32 0, i64 %idxprom16
  %18 = load i8, i8* %arrayidx17, align 1
  %conv18 = zext i8 %18 to i32
  %cmp19 = icmp sgt i32 %conv, %conv18
  br i1 %cmp19, label %land.lhs.true.21, label %if.end.61

land.lhs.true.21:                                 ; preds = %land.lhs.true
  %19 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %20 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load25 = load i32, i32* %21, align 8
  %bf.clear26 = and i32 %bf.load25, 65535
  %cmp27 = icmp eq i32 %bf.clear26, 61
  br i1 %cmp27, label %land.lhs.true.29, label %if.end.61

land.lhs.true.29:                                 ; preds = %land.lhs.true.21
  %22 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtx32 = bitcast %union.rtunion_def* %arrayidx31 to %struct.rtx_def**
  %23 = load %struct.rtx_def*, %struct.rtx_def** %rtx32, align 8
  %fld33 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx34 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld33, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx34 to i32*
  %24 = load i32, i32* %rtuint, align 4
  %cmp35 = icmp ult i32 %24, 53
  br i1 %cmp35, label %lor.lhs.false, label %if.then.54

lor.lhs.false:                                    ; preds = %land.lhs.true.29
  %25 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld37 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx38 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld37, i32 0, i64 0
  %rtx39 = bitcast %union.rtunion_def* %arrayidx38 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx39, align 8
  %fld40 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx41 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld40, i32 0, i64 0
  %rtuint42 = bitcast %union.rtunion_def* %arrayidx41 to i32*
  %27 = load i32, i32* %rtuint42, align 4
  %cmp43 = icmp eq i32 %27, 17
  br i1 %cmp43, label %if.then.54, label %lor.lhs.false.45

lor.lhs.false.45:                                 ; preds = %lor.lhs.false
  %28 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx47 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld46, i32 0, i64 0
  %rtx48 = bitcast %union.rtunion_def* %arrayidx47 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx48, align 8
  %fld49 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx50 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld49, i32 0, i64 0
  %rtuint51 = bitcast %union.rtunion_def* %arrayidx50 to i32*
  %30 = load i32, i32* %rtuint51, align 4
  %cmp52 = icmp eq i32 %30, 16
  br i1 %cmp52, label %if.then.54, label %if.end.61

if.then.54:                                       ; preds = %lor.lhs.false.45, %lor.lhs.false, %land.lhs.true.29
  %31 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld55 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx56 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld55, i32 0, i64 0
  %rtx57 = bitcast %union.rtunion_def* %arrayidx56 to %struct.rtx_def**
  store %struct.rtx_def** %rtx57, %struct.rtx_def*** %destp, align 8
  %32 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld58 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %32, i32 0, i32 1
  %arrayidx59 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld58, i32 0, i64 0
  %rtx60 = bitcast %union.rtunion_def* %arrayidx59 to %struct.rtx_def**
  %33 = load %struct.rtx_def*, %struct.rtx_def** %rtx60, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %dest, align 8
  br label %if.end.61

if.end.61:                                        ; preds = %if.then.54, %lor.lhs.false.45, %land.lhs.true.21, %land.lhs.true, %sw.bb
  %34 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load62 = load i32, i32* %35, align 8
  %bf.clear63 = and i32 %bf.load62, 65535
  %cmp64 = icmp eq i32 %bf.clear63, 64
  br i1 %cmp64, label %if.then.81, label %lor.lhs.false.66

lor.lhs.false.66:                                 ; preds = %if.end.61
  %36 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load67 = load i32, i32* %37, align 8
  %bf.clear68 = and i32 %bf.load67, 65535
  %cmp69 = icmp eq i32 %bf.clear68, 63
  br i1 %cmp69, label %if.then.81, label %lor.lhs.false.71

lor.lhs.false.71:                                 ; preds = %lor.lhs.false.66
  %38 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %39 = bitcast %struct.rtx_def* %38 to i32*
  %bf.load72 = load i32, i32* %39, align 8
  %bf.clear73 = and i32 %bf.load72, 65535
  %cmp74 = icmp eq i32 %bf.clear73, 132
  br i1 %cmp74, label %if.then.81, label %lor.lhs.false.76

lor.lhs.false.76:                                 ; preds = %lor.lhs.false.71
  %40 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %41 = bitcast %struct.rtx_def* %40 to i32*
  %bf.load77 = load i32, i32* %41, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp eq i32 %bf.clear78, 133
  br i1 %cmp79, label %if.then.81, label %if.else

if.then.81:                                       ; preds = %lor.lhs.false.76, %lor.lhs.false.71, %lor.lhs.false.66, %if.end.61
  %42 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  store %struct.rtx_def* %42, %struct.rtx_def** %reg, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.81
  %43 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %44 = bitcast %struct.rtx_def* %43 to i32*
  %bf.load82 = load i32, i32* %44, align 8
  %bf.clear83 = and i32 %bf.load82, 65535
  %cmp84 = icmp eq i32 %bf.clear83, 64
  br i1 %cmp84, label %lor.end, label %lor.lhs.false.86

lor.lhs.false.86:                                 ; preds = %while.cond
  %45 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %46 = bitcast %struct.rtx_def* %45 to i32*
  %bf.load87 = load i32, i32* %46, align 8
  %bf.clear88 = and i32 %bf.load87, 65535
  %cmp89 = icmp eq i32 %bf.clear88, 63
  br i1 %cmp89, label %lor.end, label %lor.lhs.false.91

lor.lhs.false.91:                                 ; preds = %lor.lhs.false.86
  %47 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %48 = bitcast %struct.rtx_def* %47 to i32*
  %bf.load92 = load i32, i32* %48, align 8
  %bf.clear93 = and i32 %bf.load92, 65535
  %cmp94 = icmp eq i32 %bf.clear93, 132
  br i1 %cmp94, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false.91
  %49 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %50 = bitcast %struct.rtx_def* %49 to i32*
  %bf.load96 = load i32, i32* %50, align 8
  %bf.clear97 = and i32 %bf.load96, 65535
  %cmp98 = icmp eq i32 %bf.clear97, 133
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false.91, %lor.lhs.false.86, %while.cond
  %51 = phi i1 [ true, %lor.lhs.false.91 ], [ true, %lor.lhs.false.86 ], [ true, %while.cond ], [ %cmp98, %lor.rhs ]
  br i1 %51, label %while.body, label %while.end

while.body:                                       ; preds = %lor.end
  %52 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld100 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %52, i32 0, i32 1
  %arrayidx101 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld100, i32 0, i64 0
  %rtx102 = bitcast %union.rtunion_def* %arrayidx101 to %struct.rtx_def**
  %53 = load %struct.rtx_def*, %struct.rtx_def** %rtx102, align 8
  store %struct.rtx_def* %53, %struct.rtx_def** %reg, align 8
  br label %while.cond

while.end:                                        ; preds = %lor.end
  %54 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %55 = bitcast %struct.rtx_def* %54 to i32*
  %bf.load103 = load i32, i32* %55, align 8
  %bf.clear104 = and i32 %bf.load103, 65535
  %cmp105 = icmp eq i32 %bf.clear104, 61
  br i1 %cmp105, label %land.lhs.true.107, label %if.end.130

land.lhs.true.107:                                ; preds = %while.end
  %56 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld108 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %56, i32 0, i32 1
  %arrayidx109 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld108, i32 0, i64 0
  %rtuint110 = bitcast %union.rtunion_def* %arrayidx109 to i32*
  %57 = load i32, i32* %rtuint110, align 4
  %cmp111 = icmp ult i32 %57, 53
  br i1 %cmp111, label %lor.lhs.false.113, label %if.then.125

lor.lhs.false.113:                                ; preds = %land.lhs.true.107
  %58 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld114 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %58, i32 0, i32 1
  %arrayidx115 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld114, i32 0, i64 0
  %rtuint116 = bitcast %union.rtunion_def* %arrayidx115 to i32*
  %59 = load i32, i32* %rtuint116, align 4
  %cmp117 = icmp eq i32 %59, 17
  br i1 %cmp117, label %if.then.125, label %lor.lhs.false.119

lor.lhs.false.119:                                ; preds = %lor.lhs.false.113
  %60 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %fld120 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx121 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld120, i32 0, i64 0
  %rtuint122 = bitcast %union.rtunion_def* %arrayidx121 to i32*
  %61 = load i32, i32* %rtuint122, align 4
  %cmp123 = icmp eq i32 %61, 16
  br i1 %cmp123, label %if.then.125, label %if.end.130

if.then.125:                                      ; preds = %lor.lhs.false.119, %lor.lhs.false.113, %land.lhs.true.107
  %62 = load %struct.rename_context*, %struct.rename_context** %context, align 8
  %new_renames = getelementptr inbounds %struct.rename_context, %struct.rename_context* %62, i32 0, i32 0
  %63 = load %struct.rename_set_data*, %struct.rename_set_data** %new_renames, align 8
  store %struct.rename_set_data* %63, %struct.rename_set_data** %saved_new_renames, align 8
  %64 = load %struct.rename_context*, %struct.rename_context** %context, align 8
  %new_renames126 = getelementptr inbounds %struct.rename_context, %struct.rename_context* %64, i32 0, i32 0
  store %struct.rename_set_data* null, %struct.rename_set_data** %new_renames126, align 8
  %65 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %reg, align 8
  %call = call %struct.rtx_def* @gen_rtx_fmt_ee(i32 47, i32 0, %struct.rtx_def* %65, %struct.rtx_def* %66)
  %call127 = call %struct.rtx_def* @emit_insn(%struct.rtx_def* %call)
  store %struct.rtx_def* %call127, %struct.rtx_def** %i, align 8
  %67 = load i8*, i8** %data.addr, align 8
  %call128 = call i32 @for_each_rtx(%struct.rtx_def** %i, i32 (%struct.rtx_def**, i8*)* @rename_insn_1, i8* %67)
  %68 = load %struct.rename_context*, %struct.rename_context** %context, align 8
  call void @apply_delayed_renames(%struct.rename_context* %68)
  %69 = load %struct.rename_set_data*, %struct.rename_set_data** %saved_new_renames, align 8
  %70 = load %struct.rename_context*, %struct.rename_context** %context, align 8
  %new_renames129 = getelementptr inbounds %struct.rename_context, %struct.rename_context* %70, i32 0, i32 0
  store %struct.rename_set_data* %69, %struct.rename_set_data** %new_renames129, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.125, %lor.lhs.false.119, %while.end
  br label %if.end.165

if.else:                                          ; preds = %lor.lhs.false.76
  %71 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %72 = bitcast %struct.rtx_def* %71 to i32*
  %bf.load131 = load i32, i32* %72, align 8
  %bf.clear132 = and i32 %bf.load131, 65535
  %cmp133 = icmp eq i32 %bf.clear132, 61
  br i1 %cmp133, label %land.lhs.true.135, label %if.end.164

land.lhs.true.135:                                ; preds = %if.else
  %73 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %73, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 0
  %rtuint138 = bitcast %union.rtunion_def* %arrayidx137 to i32*
  %74 = load i32, i32* %rtuint138, align 4
  %cmp139 = icmp ult i32 %74, 53
  br i1 %cmp139, label %lor.lhs.false.141, label %if.then.153

lor.lhs.false.141:                                ; preds = %land.lhs.true.135
  %75 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld142 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx143 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld142, i32 0, i64 0
  %rtuint144 = bitcast %union.rtunion_def* %arrayidx143 to i32*
  %76 = load i32, i32* %rtuint144, align 4
  %cmp145 = icmp eq i32 %76, 17
  br i1 %cmp145, label %if.then.153, label %lor.lhs.false.147

lor.lhs.false.147:                                ; preds = %lor.lhs.false.141
  %77 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld148 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %77, i32 0, i32 1
  %arrayidx149 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld148, i32 0, i64 0
  %rtuint150 = bitcast %union.rtunion_def* %arrayidx149 to i32*
  %78 = load i32, i32* %rtuint150, align 4
  %cmp151 = icmp eq i32 %78, 16
  br i1 %cmp151, label %if.then.153, label %if.end.164

if.then.153:                                      ; preds = %lor.lhs.false.147, %lor.lhs.false.141, %land.lhs.true.135
  %79 = load %struct.rename_context*, %struct.rename_context** %context, align 8
  %80 = load %struct.rtx_def**, %struct.rtx_def*** %destp, align 8
  call void @create_delayed_rename(%struct.rename_context* %79, %struct.rtx_def** %80)
  %81 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %82 = bitcast %struct.rtx_def* %81 to i32*
  %bf.load154 = load i32, i32* %82, align 8
  %bf.clear155 = and i32 %bf.load154, 65535
  %cmp156 = icmp eq i32 %bf.clear155, 47
  br i1 %cmp156, label %if.then.158, label %if.end.163

if.then.158:                                      ; preds = %if.then.153
  %83 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld159 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %83, i32 0, i32 1
  %arrayidx160 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld159, i32 0, i64 1
  %rtx161 = bitcast %union.rtunion_def* %arrayidx160 to %struct.rtx_def**
  %84 = load i8*, i8** %data.addr, align 8
  %call162 = call i32 @for_each_rtx(%struct.rtx_def** %rtx161, i32 (%struct.rtx_def**, i8*)* @rename_insn_1, i8* %84)
  br label %if.end.163

if.end.163:                                       ; preds = %if.then.158, %if.then.153
  store i32 -1, i32* %retval
  br label %return

if.end.164:                                       ; preds = %lor.lhs.false.147, %if.else
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.end.130
  store i32 0, i32* %retval
  br label %return

sw.bb.166:                                        ; preds = %if.end
  %85 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld167 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %85, i32 0, i32 1
  %arrayidx168 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld167, i32 0, i64 0
  %rtuint169 = bitcast %union.rtunion_def* %arrayidx168 to i32*
  %86 = load i32, i32* %rtuint169, align 4
  %cmp170 = icmp ult i32 %86, 53
  br i1 %cmp170, label %lor.lhs.false.172, label %land.lhs.true.184

lor.lhs.false.172:                                ; preds = %sw.bb.166
  %87 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld173 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %87, i32 0, i32 1
  %arrayidx174 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld173, i32 0, i64 0
  %rtuint175 = bitcast %union.rtunion_def* %arrayidx174 to i32*
  %88 = load i32, i32* %rtuint175, align 4
  %cmp176 = icmp eq i32 %88, 17
  br i1 %cmp176, label %land.lhs.true.184, label %lor.lhs.false.178

lor.lhs.false.178:                                ; preds = %lor.lhs.false.172
  %89 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld179 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %89, i32 0, i32 1
  %arrayidx180 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld179, i32 0, i64 0
  %rtuint181 = bitcast %union.rtunion_def* %arrayidx180 to i32*
  %90 = load i32, i32* %rtuint181, align 4
  %cmp182 = icmp eq i32 %90, 16
  br i1 %cmp182, label %land.lhs.true.184, label %if.end.209

land.lhs.true.184:                                ; preds = %lor.lhs.false.178, %lor.lhs.false.172, %sw.bb.166
  %91 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld185 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx186 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld185, i32 0, i64 0
  %rtuint187 = bitcast %union.rtunion_def* %arrayidx186 to i32*
  %92 = load i32, i32* %rtuint187, align 4
  %93 = load i32, i32* @ssa_max_reg_num, align 4
  %cmp188 = icmp ult i32 %92, %93
  br i1 %cmp188, label %if.then.190, label %if.end.209

if.then.190:                                      ; preds = %land.lhs.true.184
  %94 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %call191 = call %struct.rtx_def* @ssa_rename_to_lookup(%struct.rtx_def* %94)
  store %struct.rtx_def* %call191, %struct.rtx_def** %new_reg, align 8
  %95 = load %struct.rtx_def*, %struct.rtx_def** %new_reg, align 8
  %cmp192 = icmp ne %struct.rtx_def* %95, null
  br i1 %cmp192, label %land.lhs.true.194, label %if.end.208

land.lhs.true.194:                                ; preds = %if.then.190
  %96 = load %struct.rtx_def*, %struct.rtx_def** %new_reg, align 8
  %97 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp195 = icmp ne %struct.rtx_def* %96, %97
  br i1 %cmp195, label %if.then.197, label %if.end.208

if.then.197:                                      ; preds = %land.lhs.true.194
  %98 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %99 = bitcast %struct.rtx_def* %98 to i32*
  %bf.load198 = load i32, i32* %99, align 8
  %bf.lshr199 = lshr i32 %bf.load198, 16
  %bf.clear200 = and i32 %bf.lshr199, 255
  %100 = load %struct.rtx_def*, %struct.rtx_def** %new_reg, align 8
  %101 = bitcast %struct.rtx_def* %100 to i32*
  %bf.load201 = load i32, i32* %101, align 8
  %bf.lshr202 = lshr i32 %bf.load201, 16
  %bf.clear203 = and i32 %bf.lshr202, 255
  %cmp204 = icmp ne i32 %bf.clear200, %bf.clear203
  br i1 %cmp204, label %if.then.206, label %if.end.207

if.then.206:                                      ; preds = %if.then.197
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 927, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @__FUNCTION__.rename_insn_1, i32 0, i32 0)) #6
  unreachable

if.end.207:                                       ; preds = %if.then.197
  %102 = load %struct.rtx_def*, %struct.rtx_def** %new_reg, align 8
  %103 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  store %struct.rtx_def* %102, %struct.rtx_def** %103, align 8
  br label %if.end.208

if.end.208:                                       ; preds = %if.end.207, %land.lhs.true.194, %if.then.190
  br label %if.end.209

if.end.209:                                       ; preds = %if.end.208, %land.lhs.true.184, %lor.lhs.false.178
  store i32 -1, i32* %retval
  br label %return

sw.bb.210:                                        ; preds = %if.end
  %104 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld212 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %104, i32 0, i32 1
  %arrayidx213 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld212, i32 0, i64 0
  %rtx214 = bitcast %union.rtunion_def* %arrayidx213 to %struct.rtx_def**
  %105 = load %struct.rtx_def*, %struct.rtx_def** %rtx214, align 8
  store %struct.rtx_def* %105, %struct.rtx_def** %dest211, align 8
  %106 = load %struct.rtx_def*, %struct.rtx_def** %dest211, align 8
  %107 = bitcast %struct.rtx_def* %106 to i32*
  %bf.load215 = load i32, i32* %107, align 8
  %bf.clear216 = and i32 %bf.load215, 65535
  %cmp217 = icmp eq i32 %bf.clear216, 61
  br i1 %cmp217, label %if.then.219, label %if.else.257

if.then.219:                                      ; preds = %sw.bb.210
  %108 = load %struct.rtx_def*, %struct.rtx_def** %dest211, align 8
  %fld220 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %108, i32 0, i32 1
  %arrayidx221 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld220, i32 0, i64 0
  %rtuint222 = bitcast %union.rtunion_def* %arrayidx221 to i32*
  %109 = load i32, i32* %rtuint222, align 4
  %cmp223 = icmp ult i32 %109, 53
  br i1 %cmp223, label %lor.lhs.false.225, label %land.lhs.true.237

lor.lhs.false.225:                                ; preds = %if.then.219
  %110 = load %struct.rtx_def*, %struct.rtx_def** %dest211, align 8
  %fld226 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %110, i32 0, i32 1
  %arrayidx227 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld226, i32 0, i64 0
  %rtuint228 = bitcast %union.rtunion_def* %arrayidx227 to i32*
  %111 = load i32, i32* %rtuint228, align 4
  %cmp229 = icmp eq i32 %111, 17
  br i1 %cmp229, label %land.lhs.true.237, label %lor.lhs.false.231

lor.lhs.false.231:                                ; preds = %lor.lhs.false.225
  %112 = load %struct.rtx_def*, %struct.rtx_def** %dest211, align 8
  %fld232 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %112, i32 0, i32 1
  %arrayidx233 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld232, i32 0, i64 0
  %rtuint234 = bitcast %union.rtunion_def* %arrayidx233 to i32*
  %113 = load i32, i32* %rtuint234, align 4
  %cmp235 = icmp eq i32 %113, 16
  br i1 %cmp235, label %land.lhs.true.237, label %if.end.256

land.lhs.true.237:                                ; preds = %lor.lhs.false.231, %lor.lhs.false.225, %if.then.219
  %114 = load %struct.rtx_def*, %struct.rtx_def** %dest211, align 8
  %fld238 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %114, i32 0, i32 1
  %arrayidx239 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld238, i32 0, i64 0
  %rtuint240 = bitcast %union.rtunion_def* %arrayidx239 to i32*
  %115 = load i32, i32* %rtuint240, align 4
  %116 = load i32, i32* @ssa_max_reg_num, align 4
  %cmp241 = icmp ult i32 %115, %116
  br i1 %cmp241, label %if.then.243, label %if.end.256

if.then.243:                                      ; preds = %land.lhs.true.237
  %117 = load %struct.rtx_def*, %struct.rtx_def** %dest211, align 8
  %call245 = call %struct.rtx_def* @ssa_rename_to_lookup(%struct.rtx_def* %117)
  store %struct.rtx_def* %call245, %struct.rtx_def** %new_reg244, align 8
  %118 = load %struct.rtx_def*, %struct.rtx_def** %new_reg244, align 8
  %cmp246 = icmp ne %struct.rtx_def* %118, null
  br i1 %cmp246, label %land.lhs.true.248, label %if.end.255

land.lhs.true.248:                                ; preds = %if.then.243
  %119 = load %struct.rtx_def*, %struct.rtx_def** %new_reg244, align 8
  %120 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %cmp249 = icmp ne %struct.rtx_def* %119, %120
  br i1 %cmp249, label %if.then.251, label %if.end.255

if.then.251:                                      ; preds = %land.lhs.true.248
  %121 = load %struct.rtx_def*, %struct.rtx_def** %new_reg244, align 8
  %122 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld252 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %122, i32 0, i32 1
  %arrayidx253 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld252, i32 0, i64 0
  %rtx254 = bitcast %union.rtunion_def* %arrayidx253 to %struct.rtx_def**
  store %struct.rtx_def* %121, %struct.rtx_def** %rtx254, align 8
  br label %if.end.255

if.end.255:                                       ; preds = %if.then.251, %land.lhs.true.248, %if.then.243
  br label %if.end.256

if.end.256:                                       ; preds = %if.end.255, %land.lhs.true.237, %lor.lhs.false.231
  store i32 -1, i32* %retval
  br label %return

if.else.257:                                      ; preds = %sw.bb.210
  store i32 0, i32* %retval
  br label %return

sw.bb.258:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.258, %if.else.257, %if.end.256, %if.end.209, %if.end.165, %if.end.163, %if.then
  %123 = load i32, i32* %retval
  ret i32 %123
}

declare %struct.rtx_def* @emit(%struct.rtx_def*) #1

declare %struct.rtx_def* @gen_sequence() #1

declare void @end_sequence() #1

; Function Attrs: nounwind uwtable
define internal void @apply_delayed_renames(%struct.rename_context* %c) #0 {
entry:
  %c.addr = alloca %struct.rename_context*, align 8
  %r = alloca %struct.rename_set_data*, align 8
  %last_r = alloca %struct.rename_set_data*, align 8
  %new_regno = alloca i32, align 4
  %new_limit = alloca i32, align 4
  store %struct.rename_context* %c, %struct.rename_context** %c.addr, align 8
  store %struct.rename_set_data* null, %struct.rename_set_data** %last_r, align 8
  %0 = load %struct.rename_context*, %struct.rename_context** %c.addr, align 8
  %new_renames = getelementptr inbounds %struct.rename_context, %struct.rename_context* %0, i32 0, i32 0
  %1 = load %struct.rename_set_data*, %struct.rename_set_data** %new_renames, align 8
  store %struct.rename_set_data* %1, %struct.rename_set_data** %r, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %cmp = icmp ne %struct.rename_set_data* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %old_reg = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %3, i32 0, i32 2
  %4 = load %struct.rtx_def*, %struct.rtx_def** %old_reg, align 8
  %call = call %struct.rtx_def* @ssa_rename_to_lookup(%struct.rtx_def* %4)
  %5 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %prev_reg = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %5, i32 0, i32 4
  %6 = load %struct.rtx_def*, %struct.rtx_def** %prev_reg, align 8
  %cmp1 = icmp ne %struct.rtx_def* %call, %6
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 782, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.apply_delayed_renames, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %for.body
  %7 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %prev_reg2 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %7, i32 0, i32 4
  %8 = load %struct.rtx_def*, %struct.rtx_def** %prev_reg2, align 8
  %cmp3 = icmp eq %struct.rtx_def* %8, null
  br i1 %cmp3, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %9 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %old_reg4 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %9, i32 0, i32 2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %old_reg4, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %11 = load i32, i32* %rtuint, align 4
  %cmp5 = icmp ult i32 %11, 53
  br i1 %cmp5, label %if.else, label %if.then.6

if.then.6:                                        ; preds = %land.lhs.true
  %12 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %old_reg7 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %12, i32 0, i32 2
  %13 = load %struct.rtx_def*, %struct.rtx_def** %old_reg7, align 8
  %14 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %new_reg = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %14, i32 0, i32 3
  store %struct.rtx_def* %13, %struct.rtx_def** %new_reg, align 8
  %15 = load %struct.rtx_def*, %struct.rtx_def** getelementptr inbounds ([11 x %struct.rtx_def*], [11 x %struct.rtx_def*]* @global_rtl, i32 0, i64 0), align 8
  %16 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %prev_reg8 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %16, i32 0, i32 4
  store %struct.rtx_def* %15, %struct.rtx_def** %prev_reg8, align 8
  br label %if.end.12

if.else:                                          ; preds = %land.lhs.true, %if.end
  %17 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %old_reg9 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %17, i32 0, i32 2
  %18 = load %struct.rtx_def*, %struct.rtx_def** %old_reg9, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load = load i32, i32* %19, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %call10 = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear)
  %20 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %new_reg11 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %20, i32 0, i32 3
  store %struct.rtx_def* %call10, %struct.rtx_def** %new_reg11, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.else, %if.then.6
  %21 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %new_reg13 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %21, i32 0, i32 3
  %22 = load %struct.rtx_def*, %struct.rtx_def** %new_reg13, align 8
  %fld14 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld14, i32 0, i64 0
  %rtuint16 = bitcast %union.rtunion_def* %arrayidx15 to i32*
  %23 = load i32, i32* %rtuint16, align 4
  store i32 %23, i32* %new_regno, align 4
  %24 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %old_reg17 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %24, i32 0, i32 2
  %25 = load %struct.rtx_def*, %struct.rtx_def** %old_reg17, align 8
  %26 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %new_reg18 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %26, i32 0, i32 3
  %27 = load %struct.rtx_def*, %struct.rtx_def** %new_reg18, align 8
  call void @ssa_rename_to_insert(%struct.rtx_def* %25, %struct.rtx_def* %27)
  %28 = load i32, i32* %new_regno, align 4
  %29 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %29, i32 0, i32 0
  %30 = load i64, i64* %num_elements, align 8
  %conv = trunc i64 %30 to i32
  %cmp19 = icmp sge i32 %28, %conv
  br i1 %cmp19, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.12
  %31 = load i32, i32* %new_regno, align 4
  %mul = mul nsw i32 %31, 5
  %div = sdiv i32 %mul, 4
  store i32 %div, i32* %new_limit, align 4
  %32 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %33 = load i32, i32* %new_limit, align 4
  %conv22 = sext i32 %33 to i64
  %call23 = call %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag* %32, i64 %conv22)
  store %struct.varray_head_tag* %call23, %struct.varray_head_tag** @ssa_definition, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.21, %if.end.12
  %34 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %set_insn = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %34, i32 0, i32 5
  %35 = load %struct.rtx_def*, %struct.rtx_def** %set_insn, align 8
  %36 = load i32, i32* %new_regno, align 4
  %idxprom = sext i32 %36 to i64
  %37 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %37, i32 0, i32 4
  %rtx = bitcast %union.varray_data_tag* %data to [1 x %struct.rtx_def*]*
  %arrayidx25 = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx, i32 0, i64 %idxprom
  store %struct.rtx_def* %35, %struct.rtx_def** %arrayidx25, align 8
  %38 = load i32, i32* %new_regno, align 4
  %39 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %old_reg26 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %39, i32 0, i32 2
  %40 = load %struct.rtx_def*, %struct.rtx_def** %old_reg26, align 8
  call void @ssa_rename_from_insert(i32 %38, %struct.rtx_def* %40)
  %41 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  store %struct.rename_set_data* %41, %struct.rename_set_data** %last_r, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %42 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %next = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %42, i32 0, i32 0
  %43 = load %struct.rename_set_data*, %struct.rename_set_data** %next, align 8
  store %struct.rename_set_data* %43, %struct.rename_set_data** %r, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %44 = load %struct.rename_set_data*, %struct.rename_set_data** %last_r, align 8
  %cmp27 = icmp ne %struct.rename_set_data* %44, null
  br i1 %cmp27, label %if.then.29, label %if.end.34

if.then.29:                                       ; preds = %for.end
  %45 = load %struct.rename_context*, %struct.rename_context** %c.addr, align 8
  %done_renames = getelementptr inbounds %struct.rename_context, %struct.rename_context* %45, i32 0, i32 1
  %46 = load %struct.rename_set_data*, %struct.rename_set_data** %done_renames, align 8
  %47 = load %struct.rename_set_data*, %struct.rename_set_data** %last_r, align 8
  %next30 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %47, i32 0, i32 0
  store %struct.rename_set_data* %46, %struct.rename_set_data** %next30, align 8
  %48 = load %struct.rename_context*, %struct.rename_context** %c.addr, align 8
  %new_renames31 = getelementptr inbounds %struct.rename_context, %struct.rename_context* %48, i32 0, i32 0
  %49 = load %struct.rename_set_data*, %struct.rename_set_data** %new_renames31, align 8
  %50 = load %struct.rename_context*, %struct.rename_context** %c.addr, align 8
  %done_renames32 = getelementptr inbounds %struct.rename_context, %struct.rename_context* %50, i32 0, i32 1
  store %struct.rename_set_data* %49, %struct.rename_set_data** %done_renames32, align 8
  %51 = load %struct.rename_context*, %struct.rename_context** %c.addr, align 8
  %new_renames33 = getelementptr inbounds %struct.rename_context, %struct.rename_context* %51, i32 0, i32 0
  store %struct.rename_set_data* null, %struct.rename_set_data** %new_renames33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.29, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @ssa_rename_from_lookup(i32 %reg) #0 {
entry:
  %reg.addr = alloca i32, align 4
  %srfp = alloca %struct.ssa_rename_from_pair, align 8
  %answer = alloca %struct.ssa_rename_from_pair*, align 8
  store i32 %reg, i32* %reg.addr, align 4
  %0 = load i32, i32* %reg.addr, align 4
  %reg1 = getelementptr inbounds %struct.ssa_rename_from_pair, %struct.ssa_rename_from_pair* %srfp, i32 0, i32 0
  store i32 %0, i32* %reg1, align 4
  %original = getelementptr inbounds %struct.ssa_rename_from_pair, %struct.ssa_rename_from_pair* %srfp, i32 0, i32 1
  store %struct.rtx_def* null, %struct.rtx_def** %original, align 8
  %1 = load %struct.htab*, %struct.htab** @ssa_rename_from_ht, align 8
  %2 = bitcast %struct.ssa_rename_from_pair* %srfp to i8*
  %3 = load i32, i32* %reg.addr, align 4
  %call = call i8* @htab_find_with_hash(%struct.htab* %1, i8* %2, i32 %3)
  %4 = bitcast i8* %call to %struct.ssa_rename_from_pair*
  store %struct.ssa_rename_from_pair* %4, %struct.ssa_rename_from_pair** %answer, align 8
  %5 = load %struct.ssa_rename_from_pair*, %struct.ssa_rename_from_pair** %answer, align 8
  %cmp = icmp eq %struct.ssa_rename_from_pair* %5, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %6 = load %struct.ssa_rename_from_pair*, %struct.ssa_rename_from_pair** %answer, align 8
  %original2 = getelementptr inbounds %struct.ssa_rename_from_pair, %struct.ssa_rename_from_pair* %6, i32 0, i32 1
  %7 = load %struct.rtx_def*, %struct.rtx_def** %original2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.rtx_def* [ null, %cond.true ], [ %7, %cond.false ]
  ret %struct.rtx_def* %cond
}

; Function Attrs: nounwind uwtable
define internal %struct.rtx_def* @ssa_rename_to_lookup(%struct.rtx_def* %reg) #0 {
entry:
  %retval = alloca %struct.rtx_def*, align 8
  %reg.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  %cmp = icmp ult i32 %1, 53
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtuint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %3 = load i32, i32* %rtuint3, align 4
  %sub = sub i32 %3, 53
  %idxprom = zext i32 %sub to i64
  %4 = load %struct.rtx_def**, %struct.rtx_def*** @ssa_rename_to_pseudo, align 8
  %arrayidx4 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %4, i64 %idxprom
  %5 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx4, align 8
  store %struct.rtx_def* %5, %struct.rtx_def** %retval
  br label %return

if.else:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom5 = zext i32 %bf.clear to i64
  %8 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %9 = load i32, i32* %rtuint8, align 4
  %idxprom9 = zext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [53 x [59 x %struct.rtx_def*]], [53 x [59 x %struct.rtx_def*]]* @ssa_rename_to_hard, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx10, i32 0, i64 %idxprom5
  %10 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx11, align 8
  store %struct.rtx_def* %10, %struct.rtx_def** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %11 = load %struct.rtx_def*, %struct.rtx_def** %retval
  ret %struct.rtx_def* %11
}

; Function Attrs: nounwind uwtable
define internal void @ssa_rename_to_insert(%struct.rtx_def* %reg, %struct.rtx_def* %r) #0 {
entry:
  %reg.addr = alloca %struct.rtx_def*, align 8
  %r.addr = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def* %r, %struct.rtx_def** %r.addr, align 8
  %0 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %0, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %1 = load i32, i32* %rtuint, align 4
  %cmp = icmp ult i32 %1, 53
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %3 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld1 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx2 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld1, i32 0, i64 0
  %rtuint3 = bitcast %union.rtunion_def* %arrayidx2 to i32*
  %4 = load i32, i32* %rtuint3, align 4
  %sub = sub i32 %4, 53
  %idxprom = zext i32 %sub to i64
  %5 = load %struct.rtx_def**, %struct.rtx_def*** @ssa_rename_to_pseudo, align 8
  %arrayidx4 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %5, i64 %idxprom
  store %struct.rtx_def* %2, %struct.rtx_def** %arrayidx4, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %8 = bitcast %struct.rtx_def* %7 to i32*
  %bf.load = load i32, i32* %8, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %idxprom5 = zext i32 %bf.clear to i64
  %9 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld6 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx7 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld6, i32 0, i64 0
  %rtuint8 = bitcast %union.rtunion_def* %arrayidx7 to i32*
  %10 = load i32, i32* %rtuint8, align 4
  %idxprom9 = zext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [53 x [59 x %struct.rtx_def*]], [53 x [59 x %struct.rtx_def*]]* @ssa_rename_to_hard, i32 0, i64 %idxprom9
  %arrayidx11 = getelementptr inbounds [59 x %struct.rtx_def*], [59 x %struct.rtx_def*]* %arrayidx10, i32 0, i64 %idxprom5
  store %struct.rtx_def* %6, %struct.rtx_def** %arrayidx11, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

declare %struct.rtx_def* @emit_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @create_delayed_rename(%struct.rename_context* %c, %struct.rtx_def** %reg_loc) #0 {
entry:
  %c.addr = alloca %struct.rename_context*, align 8
  %reg_loc.addr = alloca %struct.rtx_def**, align 8
  %r = alloca %struct.rename_set_data*, align 8
  store %struct.rename_context* %c, %struct.rename_context** %c.addr, align 8
  store %struct.rtx_def** %reg_loc, %struct.rtx_def*** %reg_loc.addr, align 8
  %call = call noalias i8* @xmalloc(i64 48)
  %0 = bitcast i8* %call to %struct.rename_set_data*
  store %struct.rename_set_data* %0, %struct.rename_set_data** %r, align 8
  %1 = load %struct.rtx_def**, %struct.rtx_def*** %reg_loc.addr, align 8
  %2 = load %struct.rtx_def*, %struct.rtx_def** %1, align 8
  %3 = bitcast %struct.rtx_def* %2 to i32*
  %bf.load = load i32, i32* %3, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp ne i32 %bf.clear, 61
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.rtx_def**, %struct.rtx_def*** %reg_loc.addr, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %4, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %5, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %6 = load i32, i32* %rtuint, align 4
  %cmp1 = icmp ult i32 %6, 53
  br i1 %cmp1, label %lor.lhs.false.2, label %if.end

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %7 = load %struct.rtx_def**, %struct.rtx_def*** %reg_loc.addr, align 8
  %8 = load %struct.rtx_def*, %struct.rtx_def** %7, align 8
  %fld3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx4 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld3, i32 0, i64 0
  %rtuint5 = bitcast %union.rtunion_def* %arrayidx4 to i32*
  %9 = load i32, i32* %rtuint5, align 4
  %cmp6 = icmp eq i32 %9, 17
  br i1 %cmp6, label %if.end, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false.2
  %10 = load %struct.rtx_def**, %struct.rtx_def*** %reg_loc.addr, align 8
  %11 = load %struct.rtx_def*, %struct.rtx_def** %10, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 0
  %rtuint10 = bitcast %union.rtunion_def* %arrayidx9 to i32*
  %12 = load i32, i32* %rtuint10, align 4
  %cmp11 = icmp eq i32 %12, 16
  br i1 %cmp11, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.7, %entry
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 746, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__FUNCTION__.create_delayed_rename, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false.7, %lor.lhs.false.2, %lor.lhs.false
  %13 = load %struct.rtx_def**, %struct.rtx_def*** %reg_loc.addr, align 8
  %14 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %reg_loc12 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %14, i32 0, i32 1
  store %struct.rtx_def** %13, %struct.rtx_def*** %reg_loc12, align 8
  %15 = load %struct.rtx_def**, %struct.rtx_def*** %reg_loc.addr, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %15, align 8
  %17 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %old_reg = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %17, i32 0, i32 2
  store %struct.rtx_def* %16, %struct.rtx_def** %old_reg, align 8
  %18 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %old_reg13 = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %18, i32 0, i32 2
  %19 = load %struct.rtx_def*, %struct.rtx_def** %old_reg13, align 8
  %call14 = call %struct.rtx_def* @ssa_rename_to_lookup(%struct.rtx_def* %19)
  %20 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %prev_reg = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %20, i32 0, i32 4
  store %struct.rtx_def* %call14, %struct.rtx_def** %prev_reg, align 8
  %21 = load %struct.rename_context*, %struct.rename_context** %c.addr, align 8
  %current_insn = getelementptr inbounds %struct.rename_context, %struct.rename_context* %21, i32 0, i32 2
  %22 = load %struct.rtx_def*, %struct.rtx_def** %current_insn, align 8
  %23 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %set_insn = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %23, i32 0, i32 5
  store %struct.rtx_def* %22, %struct.rtx_def** %set_insn, align 8
  %24 = load %struct.rename_context*, %struct.rename_context** %c.addr, align 8
  %new_renames = getelementptr inbounds %struct.rename_context, %struct.rename_context* %24, i32 0, i32 0
  %25 = load %struct.rename_set_data*, %struct.rename_set_data** %new_renames, align 8
  %26 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %next = getelementptr inbounds %struct.rename_set_data, %struct.rename_set_data* %26, i32 0, i32 0
  store %struct.rename_set_data* %25, %struct.rename_set_data** %next, align 8
  %27 = load %struct.rename_set_data*, %struct.rename_set_data** %r, align 8
  %28 = load %struct.rename_context*, %struct.rename_context** %c.addr, align 8
  %new_renames15 = getelementptr inbounds %struct.rename_context, %struct.rename_context* %28, i32 0, i32 0
  store %struct.rename_set_data* %27, %struct.rename_set_data** %new_renames15, align 8
  ret void
}

declare noalias i8* @xmalloc(i64) #1

declare %struct.rtx_def* @gen_reg_rtx(i32) #1

declare %struct.varray_head_tag* @varray_grow(%struct.varray_head_tag*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @ssa_rename_from_insert(i32 %reg, %struct.rtx_def* %r) #0 {
entry:
  %reg.addr = alloca i32, align 4
  %r.addr = alloca %struct.rtx_def*, align 8
  %slot = alloca i8**, align 8
  %srfp = alloca %struct.ssa_rename_from_pair*, align 8
  store i32 %reg, i32* %reg.addr, align 4
  store %struct.rtx_def* %r, %struct.rtx_def** %r.addr, align 8
  %call = call noalias i8* @xmalloc(i64 16)
  %0 = bitcast i8* %call to %struct.ssa_rename_from_pair*
  store %struct.ssa_rename_from_pair* %0, %struct.ssa_rename_from_pair** %srfp, align 8
  %1 = load i32, i32* %reg.addr, align 4
  %2 = load %struct.ssa_rename_from_pair*, %struct.ssa_rename_from_pair** %srfp, align 8
  %reg1 = getelementptr inbounds %struct.ssa_rename_from_pair, %struct.ssa_rename_from_pair* %2, i32 0, i32 0
  store i32 %1, i32* %reg1, align 4
  %3 = load %struct.rtx_def*, %struct.rtx_def** %r.addr, align 8
  %4 = load %struct.ssa_rename_from_pair*, %struct.ssa_rename_from_pair** %srfp, align 8
  %original = getelementptr inbounds %struct.ssa_rename_from_pair, %struct.ssa_rename_from_pair* %4, i32 0, i32 1
  store %struct.rtx_def* %3, %struct.rtx_def** %original, align 8
  %5 = load %struct.htab*, %struct.htab** @ssa_rename_from_ht, align 8
  %6 = load %struct.ssa_rename_from_pair*, %struct.ssa_rename_from_pair** %srfp, align 8
  %7 = bitcast %struct.ssa_rename_from_pair* %6 to i8*
  %8 = load i32, i32* %reg.addr, align 4
  %call2 = call i8** @htab_find_slot_with_hash(%struct.htab* %5, i8* %7, i32 %8, i32 1)
  store i8** %call2, i8*** %slot, align 8
  %9 = load i8**, i8*** %slot, align 8
  %10 = load i8*, i8** %9, align 8
  %cmp = icmp ne i8* %10, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %11 = load i8**, i8*** %slot, align 8
  %12 = load i8*, i8** %11, align 8
  call void @free(i8* %12) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %13 = load %struct.ssa_rename_from_pair*, %struct.ssa_rename_from_pair** %srfp, align 8
  %14 = bitcast %struct.ssa_rename_from_pair* %13 to i8*
  %15 = load i8**, i8*** %slot, align 8
  store i8* %14, i8** %15, align 8
  ret void
}

declare i8** @htab_find_slot_with_hash(%struct.htab*, i8*, i32, i32) #1

declare i8* @htab_find_with_hash(%struct.htab*, i8*, i32) #1

declare %struct.partition_def* @partition_new(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @make_regs_equivalent_over_bad_edges(i32 %bb, %struct.partition_def* %reg_partition) #0 {
entry:
  %bb.addr = alloca i32, align 4
  %reg_partition.addr = alloca %struct.partition_def*, align 8
  %changed = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %phi = alloca %struct.rtx_def*, align 8
  %e = alloca %struct.edge_def*, align 8
  %tgt_regno = alloca i32, align 4
  %set = alloca %struct.rtx_def*, align 8
  %tgt = alloca %struct.rtx_def*, align 8
  %alt = alloca %struct.rtx_def**, align 8
  %alt_regno = alloca i32, align 4
  store i32 %bb, i32* %bb.addr, align 4
  store %struct.partition_def* %reg_partition, %struct.partition_def** %reg_partition.addr, align 8
  store i32 0, i32* %changed, align 4
  %0 = load i32, i32* %bb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %b, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %call = call %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %phi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.95, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 32
  br i1 %cmp, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load4 = load i32, i32* %9, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 47
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load13 = load i32, i32* %13, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 152
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.2, %land.lhs.true, %for.cond
  %14 = phi i1 [ false, %land.lhs.true.2 ], [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp15, %land.rhs ]
  br i1 %14, label %for.body, label %for.end.97

for.body:                                         ; preds = %land.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %set, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 0
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  store %struct.rtx_def* %18, %struct.rtx_def** %tgt, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %tgt, align 8
  %20 = bitcast %struct.rtx_def* %19 to i32*
  %bf.load22 = load i32, i32* %20, align 8
  %bf.clear23 = and i32 %bf.load22, 65535
  %cmp24 = icmp ne i32 %bf.clear23, 61
  br i1 %cmp24, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %21 = load %struct.rtx_def*, %struct.rtx_def** %tgt, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %21, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx26 to i32*
  %22 = load i32, i32* %rtuint, align 4
  %cmp27 = icmp ult i32 %22, 53
  br i1 %cmp27, label %lor.lhs.false.28, label %if.end

lor.lhs.false.28:                                 ; preds = %lor.lhs.false
  %23 = load %struct.rtx_def*, %struct.rtx_def** %tgt, align 8
  %fld29 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %23, i32 0, i32 1
  %arrayidx30 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld29, i32 0, i64 0
  %rtuint31 = bitcast %union.rtunion_def* %arrayidx30 to i32*
  %24 = load i32, i32* %rtuint31, align 4
  %cmp32 = icmp eq i32 %24, 17
  br i1 %cmp32, label %if.end, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.28
  %25 = load %struct.rtx_def*, %struct.rtx_def** %tgt, align 8
  %fld34 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx35 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld34, i32 0, i64 0
  %rtuint36 = bitcast %union.rtunion_def* %arrayidx35 to i32*
  %26 = load i32, i32* %rtuint36, align 4
  %cmp37 = icmp eq i32 %26, 16
  br i1 %cmp37, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.33, %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1496, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__FUNCTION__.make_regs_equivalent_over_bad_edges, i32 0, i32 0)) #6
  unreachable

if.end:                                           ; preds = %lor.lhs.false.33, %lor.lhs.false.28, %lor.lhs.false
  %27 = load %struct.rtx_def*, %struct.rtx_def** %tgt, align 8
  %fld38 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %27, i32 0, i32 1
  %arrayidx39 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld38, i32 0, i64 0
  %rtuint40 = bitcast %union.rtunion_def* %arrayidx39 to i32*
  %28 = load i32, i32* %rtuint40, align 4
  store i32 %28, i32* %tgt_regno, align 4
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i32 0, i32 4
  %30 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %30, %struct.edge_def** %e, align 8
  br label %for.cond.41

for.cond.41:                                      ; preds = %for.inc, %if.end
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool42 = icmp ne %struct.edge_def* %31, null
  br i1 %tobool42, label %for.body.43, label %for.end

for.body.43:                                      ; preds = %for.cond.41
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i32 0, i32 6
  %33 = load i32, i32* %flags, align 4
  %and = and i32 %33, 2
  %tobool44 = icmp ne i32 %and, 0
  br i1 %tobool44, label %land.lhs.true.45, label %if.end.93

land.lhs.true.45:                                 ; preds = %for.body.43
  %34 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i32 0, i32 2
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %succ = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %35, i32 0, i32 5
  %36 = load %struct.edge_def*, %struct.edge_def** %succ, align 8
  %succ_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %36, i32 0, i32 1
  %37 = load %struct.edge_def*, %struct.edge_def** %succ_next, align 8
  %tobool46 = icmp ne %struct.edge_def* %37, null
  br i1 %tobool46, label %land.lhs.true.47, label %if.end.93

land.lhs.true.47:                                 ; preds = %land.lhs.true.45
  %38 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %38, i32 0, i32 3
  %39 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8
  %pred48 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %39, i32 0, i32 4
  %40 = load %struct.edge_def*, %struct.edge_def** %pred48, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %40, i32 0, i32 0
  %41 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  %tobool49 = icmp ne %struct.edge_def* %41, null
  br i1 %tobool49, label %if.then.50, label %if.end.93

if.then.50:                                       ; preds = %land.lhs.true.47
  %42 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %43 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src51 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %43, i32 0, i32 2
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %src51, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 11
  %45 = load i32, i32* %index, align 4
  %call52 = call %struct.rtx_def** @phi_alternative(%struct.rtx_def* %42, i32 %45)
  store %struct.rtx_def** %call52, %struct.rtx_def*** %alt, align 8
  %46 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %cmp53 = icmp eq %struct.rtx_def** %46, null
  br i1 %cmp53, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.then.50
  br label %for.inc

if.end.55:                                        ; preds = %if.then.50
  %47 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %48 = load %struct.rtx_def*, %struct.rtx_def** %47, align 8
  %49 = bitcast %struct.rtx_def* %48 to i32*
  %bf.load56 = load i32, i32* %49, align 8
  %bf.clear57 = and i32 %bf.load56, 65535
  %cmp58 = icmp ne i32 %bf.clear57, 61
  br i1 %cmp58, label %if.then.74, label %lor.lhs.false.59

lor.lhs.false.59:                                 ; preds = %if.end.55
  %50 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %51 = load %struct.rtx_def*, %struct.rtx_def** %50, align 8
  %fld60 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %51, i32 0, i32 1
  %arrayidx61 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld60, i32 0, i64 0
  %rtuint62 = bitcast %union.rtunion_def* %arrayidx61 to i32*
  %52 = load i32, i32* %rtuint62, align 4
  %cmp63 = icmp ult i32 %52, 53
  br i1 %cmp63, label %lor.lhs.false.64, label %if.end.75

lor.lhs.false.64:                                 ; preds = %lor.lhs.false.59
  %53 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %54 = load %struct.rtx_def*, %struct.rtx_def** %53, align 8
  %fld65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %54, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld65, i32 0, i64 0
  %rtuint67 = bitcast %union.rtunion_def* %arrayidx66 to i32*
  %55 = load i32, i32* %rtuint67, align 4
  %cmp68 = icmp eq i32 %55, 17
  br i1 %cmp68, label %if.end.75, label %lor.lhs.false.69

lor.lhs.false.69:                                 ; preds = %lor.lhs.false.64
  %56 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %56, align 8
  %fld70 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %57, i32 0, i32 1
  %arrayidx71 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld70, i32 0, i64 0
  %rtuint72 = bitcast %union.rtunion_def* %arrayidx71 to i32*
  %58 = load i32, i32* %rtuint72, align 4
  %cmp73 = icmp eq i32 %58, 16
  br i1 %cmp73, label %if.end.75, label %if.then.74

if.then.74:                                       ; preds = %lor.lhs.false.69, %if.end.55
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1514, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__FUNCTION__.make_regs_equivalent_over_bad_edges, i32 0, i32 0)) #6
  unreachable

if.end.75:                                        ; preds = %lor.lhs.false.69, %lor.lhs.false.64, %lor.lhs.false.59
  %59 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %59, align 8
  %fld76 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld76, i32 0, i64 0
  %rtuint78 = bitcast %union.rtunion_def* %arrayidx77 to i32*
  %61 = load i32, i32* %rtuint78, align 4
  store i32 %61, i32* %alt_regno, align 4
  %62 = load i32, i32* %tgt_regno, align 4
  %idxprom79 = sext i32 %62 to i64
  %63 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %elements = getelementptr inbounds %struct.partition_def, %struct.partition_def* %63, i32 0, i32 1
  %arrayidx80 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements, i32 0, i64 %idxprom79
  %class_element = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx80, i32 0, i32 0
  %64 = load i32, i32* %class_element, align 4
  %65 = load i32, i32* %alt_regno, align 4
  %idxprom81 = sext i32 %65 to i64
  %66 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %elements82 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %66, i32 0, i32 1
  %arrayidx83 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements82, i32 0, i64 %idxprom81
  %class_element84 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx83, i32 0, i32 0
  %67 = load i32, i32* %class_element84, align 4
  %cmp85 = icmp ne i32 %64, %67
  br i1 %cmp85, label %if.then.86, label %if.end.92

if.then.86:                                       ; preds = %if.end.75
  %68 = load i32, i32* %tgt_regno, align 4
  %69 = load i32, i32* %alt_regno, align 4
  %call87 = call i32 @conflicting_hard_regs_p(i32 %68, i32 %69)
  %tobool88 = icmp ne i32 %call87, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.86
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1526, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @__FUNCTION__.make_regs_equivalent_over_bad_edges, i32 0, i32 0)) #6
  unreachable

if.end.90:                                        ; preds = %if.then.86
  %70 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %71 = load i32, i32* %tgt_regno, align 4
  %72 = load i32, i32* %alt_regno, align 4
  %call91 = call i32 @partition_union(%struct.partition_def* %70, i32 %71, i32 %72)
  %73 = load i32, i32* %changed, align 4
  %inc = add nsw i32 %73, 1
  store i32 %inc, i32* %changed, align 4
  br label %if.end.92

if.end.92:                                        ; preds = %if.end.90, %if.end.75
  br label %if.end.93

if.end.93:                                        ; preds = %if.end.92, %land.lhs.true.47, %land.lhs.true.45, %for.body.43
  br label %for.inc

for.inc:                                          ; preds = %if.end.93, %if.then.54
  %74 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next94 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %74, i32 0, i32 0
  %75 = load %struct.edge_def*, %struct.edge_def** %pred_next94, align 8
  store %struct.edge_def* %75, %struct.edge_def** %e, align 8
  br label %for.cond.41

for.end:                                          ; preds = %for.cond.41
  br label %for.inc.95

for.inc.95:                                       ; preds = %for.end
  %76 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %call96 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %76)
  store %struct.rtx_def* %call96, %struct.rtx_def** %phi, align 8
  br label %for.cond

for.end.97:                                       ; preds = %land.end
  %77 = load i32, i32* %changed, align 4
  ret i32 %77
}

; Function Attrs: nounwind uwtable
define internal i32 @make_equivalent_phi_alternatives_equivalent(i32 %bb, %struct.partition_def* %reg_partition) #0 {
entry:
  %bb.addr = alloca i32, align 4
  %reg_partition.addr = alloca %struct.partition_def*, align 8
  %changed = alloca i32, align 4
  %b = alloca %struct.basic_block_def*, align 8
  %phi = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.rtx_def*, align 8
  %tgt_regno = alloca i32, align 4
  %phi2 = alloca %struct.rtx_def*, align 8
  %set2 = alloca %struct.rtx_def*, align 8
  %tgt2_regno = alloca i32, align 4
  %e = alloca %struct.edge_def*, align 8
  %pred_block = alloca i32, align 4
  %alt = alloca %struct.rtx_def**, align 8
  %alt2 = alloca %struct.rtx_def**, align 8
  store i32 %bb, i32* %bb.addr, align 4
  store %struct.partition_def* %reg_partition, %struct.partition_def** %reg_partition.addr, align 8
  store i32 0, i32* %changed, align 4
  %0 = load i32, i32* %bb.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @basic_block_info, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 4
  %bb1 = bitcast %union.varray_data_tag* %data to [1 x %struct.basic_block_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.basic_block_def*], [1 x %struct.basic_block_def*]* %bb1, i32 0, i64 %idxprom
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8
  store %struct.basic_block_def* %2, %struct.basic_block_def** %b, align 8
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %call = call %struct.rtx_def* @first_insn_after_basic_block_note(%struct.basic_block_def* %3)
  store %struct.rtx_def* %call, %struct.rtx_def** %phi, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.155, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %tobool = icmp ne %struct.rtx_def* %4, null
  br i1 %tobool, label %land.lhs.true, label %land.end

land.lhs.true:                                    ; preds = %for.cond
  %5 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp = icmp eq i32 %bf.clear, 32
  br i1 %cmp, label %land.lhs.true.2, label %land.end

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %7 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx3 to %struct.rtx_def**
  %8 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  %9 = bitcast %struct.rtx_def* %8 to i32*
  %bf.load4 = load i32, i32* %9, align 8
  %bf.clear5 = and i32 %bf.load4, 65535
  %cmp6 = icmp eq i32 %bf.clear5, 47
  br i1 %cmp6, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.2
  %10 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %10, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 3
  %rtx9 = bitcast %union.rtunion_def* %arrayidx8 to %struct.rtx_def**
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rtx9, align 8
  %fld10 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld10, i32 0, i64 1
  %rtx12 = bitcast %union.rtunion_def* %arrayidx11 to %struct.rtx_def**
  %12 = load %struct.rtx_def*, %struct.rtx_def** %rtx12, align 8
  %13 = bitcast %struct.rtx_def* %12 to i32*
  %bf.load13 = load i32, i32* %13, align 8
  %bf.clear14 = and i32 %bf.load13, 65535
  %cmp15 = icmp eq i32 %bf.clear14, 152
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.2, %land.lhs.true, %for.cond
  %14 = phi i1 [ false, %land.lhs.true.2 ], [ false, %land.lhs.true ], [ false, %for.cond ], [ %cmp15, %land.rhs ]
  br i1 %14, label %for.body, label %for.end.157

for.body:                                         ; preds = %land.end
  %15 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %fld16 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %15, i32 0, i32 1
  %arrayidx17 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld16, i32 0, i64 3
  %rtx18 = bitcast %union.rtunion_def* %arrayidx17 to %struct.rtx_def**
  %16 = load %struct.rtx_def*, %struct.rtx_def** %rtx18, align 8
  store %struct.rtx_def* %16, %struct.rtx_def** %set, align 8
  %17 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %fld19 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %17, i32 0, i32 1
  %arrayidx20 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld19, i32 0, i64 3
  %rtx21 = bitcast %union.rtunion_def* %arrayidx20 to %struct.rtx_def**
  %18 = load %struct.rtx_def*, %struct.rtx_def** %rtx21, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtx24 = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx24, align 8
  %fld25 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %19, i32 0, i32 1
  %arrayidx26 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld25, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx26 to i32*
  %20 = load i32, i32* %rtuint, align 4
  store i32 %20, i32* %tgt_regno, align 4
  %21 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %call27 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %21)
  store %struct.rtx_def* %call27, %struct.rtx_def** %phi2, align 8
  br label %for.cond.28

for.cond.28:                                      ; preds = %for.inc.152, %for.body
  %22 = load %struct.rtx_def*, %struct.rtx_def** %phi2, align 8
  %tobool29 = icmp ne %struct.rtx_def* %22, null
  br i1 %tobool29, label %land.lhs.true.30, label %land.end.51

land.lhs.true.30:                                 ; preds = %for.cond.28
  %23 = load %struct.rtx_def*, %struct.rtx_def** %phi2, align 8
  %24 = bitcast %struct.rtx_def* %23 to i32*
  %bf.load31 = load i32, i32* %24, align 8
  %bf.clear32 = and i32 %bf.load31, 65535
  %cmp33 = icmp eq i32 %bf.clear32, 32
  br i1 %cmp33, label %land.lhs.true.34, label %land.end.51

land.lhs.true.34:                                 ; preds = %land.lhs.true.30
  %25 = load %struct.rtx_def*, %struct.rtx_def** %phi2, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 3
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %26 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  %27 = bitcast %struct.rtx_def* %26 to i32*
  %bf.load38 = load i32, i32* %27, align 8
  %bf.clear39 = and i32 %bf.load38, 65535
  %cmp40 = icmp eq i32 %bf.clear39, 47
  br i1 %cmp40, label %land.rhs.41, label %land.end.51

land.rhs.41:                                      ; preds = %land.lhs.true.34
  %28 = load %struct.rtx_def*, %struct.rtx_def** %phi2, align 8
  %fld42 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx43 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld42, i32 0, i64 3
  %rtx44 = bitcast %union.rtunion_def* %arrayidx43 to %struct.rtx_def**
  %29 = load %struct.rtx_def*, %struct.rtx_def** %rtx44, align 8
  %fld45 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %29, i32 0, i32 1
  %arrayidx46 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld45, i32 0, i64 1
  %rtx47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtx_def**
  %30 = load %struct.rtx_def*, %struct.rtx_def** %rtx47, align 8
  %31 = bitcast %struct.rtx_def* %30 to i32*
  %bf.load48 = load i32, i32* %31, align 8
  %bf.clear49 = and i32 %bf.load48, 65535
  %cmp50 = icmp eq i32 %bf.clear49, 152
  br label %land.end.51

land.end.51:                                      ; preds = %land.rhs.41, %land.lhs.true.34, %land.lhs.true.30, %for.cond.28
  %32 = phi i1 [ false, %land.lhs.true.34 ], [ false, %land.lhs.true.30 ], [ false, %for.cond.28 ], [ %cmp50, %land.rhs.41 ]
  br i1 %32, label %for.body.52, label %for.end.154

for.body.52:                                      ; preds = %land.end.51
  %33 = load %struct.rtx_def*, %struct.rtx_def** %phi2, align 8
  %fld53 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %33, i32 0, i32 1
  %arrayidx54 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld53, i32 0, i64 3
  %rtx55 = bitcast %union.rtunion_def* %arrayidx54 to %struct.rtx_def**
  %34 = load %struct.rtx_def*, %struct.rtx_def** %rtx55, align 8
  store %struct.rtx_def* %34, %struct.rtx_def** %set2, align 8
  %35 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %fld56 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %35, i32 0, i32 1
  %arrayidx57 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld56, i32 0, i64 0
  %rtx58 = bitcast %union.rtunion_def* %arrayidx57 to %struct.rtx_def**
  %36 = load %struct.rtx_def*, %struct.rtx_def** %rtx58, align 8
  %fld59 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %36, i32 0, i32 1
  %arrayidx60 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld59, i32 0, i64 0
  %rtuint61 = bitcast %union.rtunion_def* %arrayidx60 to i32*
  %37 = load i32, i32* %rtuint61, align 4
  store i32 %37, i32* %tgt2_regno, align 4
  %38 = load i32, i32* %tgt_regno, align 4
  %idxprom62 = sext i32 %38 to i64
  %39 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %elements = getelementptr inbounds %struct.partition_def, %struct.partition_def* %39, i32 0, i32 1
  %arrayidx63 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements, i32 0, i64 %idxprom62
  %class_element = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx63, i32 0, i32 0
  %40 = load i32, i32* %class_element, align 4
  %41 = load i32, i32* %tgt2_regno, align 4
  %idxprom64 = sext i32 %41 to i64
  %42 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %elements65 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %42, i32 0, i32 1
  %arrayidx66 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements65, i32 0, i64 %idxprom64
  %class_element67 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx66, i32 0, i32 0
  %43 = load i32, i32* %class_element67, align 4
  %cmp68 = icmp eq i32 %40, %43
  br i1 %cmp68, label %if.then, label %if.end.151

if.then:                                          ; preds = %for.body.52
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %b, align 8
  %pred = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i32 0, i32 4
  %45 = load %struct.edge_def*, %struct.edge_def** %pred, align 8
  store %struct.edge_def* %45, %struct.edge_def** %e, align 8
  br label %for.cond.69

for.cond.69:                                      ; preds = %for.inc, %if.then
  %46 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %tobool70 = icmp ne %struct.edge_def* %46, null
  br i1 %tobool70, label %for.body.71, label %for.end

for.body.71:                                      ; preds = %for.cond.69
  %47 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %47, i32 0, i32 2
  %48 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %48, i32 0, i32 11
  %49 = load i32, i32* %index, align 4
  store i32 %49, i32* %pred_block, align 4
  %50 = load %struct.rtx_def*, %struct.rtx_def** %set, align 8
  %51 = load i32, i32* %pred_block, align 4
  %call72 = call %struct.rtx_def** @phi_alternative(%struct.rtx_def* %50, i32 %51)
  store %struct.rtx_def** %call72, %struct.rtx_def*** %alt, align 8
  %52 = load %struct.rtx_def*, %struct.rtx_def** %set2, align 8
  %53 = load i32, i32* %pred_block, align 4
  %call73 = call %struct.rtx_def** @phi_alternative(%struct.rtx_def* %52, i32 %53)
  store %struct.rtx_def** %call73, %struct.rtx_def*** %alt2, align 8
  %54 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %cmp74 = icmp eq %struct.rtx_def** %54, null
  br i1 %cmp74, label %if.then.76, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body.71
  %55 = load %struct.rtx_def**, %struct.rtx_def*** %alt2, align 8
  %cmp75 = icmp eq %struct.rtx_def** %55, null
  br i1 %cmp75, label %if.then.76, label %if.end

if.then.76:                                       ; preds = %lor.lhs.false, %for.body.71
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  %56 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %57 = load %struct.rtx_def*, %struct.rtx_def** %56, align 8
  %58 = bitcast %struct.rtx_def* %57 to i32*
  %bf.load77 = load i32, i32* %58, align 8
  %bf.clear78 = and i32 %bf.load77, 65535
  %cmp79 = icmp ne i32 %bf.clear78, 61
  br i1 %cmp79, label %if.then.95, label %lor.lhs.false.80

lor.lhs.false.80:                                 ; preds = %if.end
  %59 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %60 = load %struct.rtx_def*, %struct.rtx_def** %59, align 8
  %fld81 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %60, i32 0, i32 1
  %arrayidx82 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld81, i32 0, i64 0
  %rtuint83 = bitcast %union.rtunion_def* %arrayidx82 to i32*
  %61 = load i32, i32* %rtuint83, align 4
  %cmp84 = icmp ult i32 %61, 53
  br i1 %cmp84, label %lor.lhs.false.85, label %if.end.96

lor.lhs.false.85:                                 ; preds = %lor.lhs.false.80
  %62 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %63 = load %struct.rtx_def*, %struct.rtx_def** %62, align 8
  %fld86 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %63, i32 0, i32 1
  %arrayidx87 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld86, i32 0, i64 0
  %rtuint88 = bitcast %union.rtunion_def* %arrayidx87 to i32*
  %64 = load i32, i32* %rtuint88, align 4
  %cmp89 = icmp eq i32 %64, 17
  br i1 %cmp89, label %if.end.96, label %lor.lhs.false.90

lor.lhs.false.90:                                 ; preds = %lor.lhs.false.85
  %65 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %66 = load %struct.rtx_def*, %struct.rtx_def** %65, align 8
  %fld91 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %66, i32 0, i32 1
  %arrayidx92 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld91, i32 0, i64 0
  %rtuint93 = bitcast %union.rtunion_def* %arrayidx92 to i32*
  %67 = load i32, i32* %rtuint93, align 4
  %cmp94 = icmp eq i32 %67, 16
  br i1 %cmp94, label %if.end.96, label %if.then.95

if.then.95:                                       ; preds = %lor.lhs.false.90, %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1598, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__FUNCTION__.make_equivalent_phi_alternatives_equivalent, i32 0, i32 0)) #6
  unreachable

if.end.96:                                        ; preds = %lor.lhs.false.90, %lor.lhs.false.85, %lor.lhs.false.80
  %68 = load %struct.rtx_def**, %struct.rtx_def*** %alt2, align 8
  %69 = load %struct.rtx_def*, %struct.rtx_def** %68, align 8
  %70 = bitcast %struct.rtx_def* %69 to i32*
  %bf.load97 = load i32, i32* %70, align 8
  %bf.clear98 = and i32 %bf.load97, 65535
  %cmp99 = icmp ne i32 %bf.clear98, 61
  br i1 %cmp99, label %if.then.115, label %lor.lhs.false.100

lor.lhs.false.100:                                ; preds = %if.end.96
  %71 = load %struct.rtx_def**, %struct.rtx_def*** %alt2, align 8
  %72 = load %struct.rtx_def*, %struct.rtx_def** %71, align 8
  %fld101 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %72, i32 0, i32 1
  %arrayidx102 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld101, i32 0, i64 0
  %rtuint103 = bitcast %union.rtunion_def* %arrayidx102 to i32*
  %73 = load i32, i32* %rtuint103, align 4
  %cmp104 = icmp ult i32 %73, 53
  br i1 %cmp104, label %lor.lhs.false.105, label %if.end.116

lor.lhs.false.105:                                ; preds = %lor.lhs.false.100
  %74 = load %struct.rtx_def**, %struct.rtx_def*** %alt2, align 8
  %75 = load %struct.rtx_def*, %struct.rtx_def** %74, align 8
  %fld106 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %75, i32 0, i32 1
  %arrayidx107 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld106, i32 0, i64 0
  %rtuint108 = bitcast %union.rtunion_def* %arrayidx107 to i32*
  %76 = load i32, i32* %rtuint108, align 4
  %cmp109 = icmp eq i32 %76, 17
  br i1 %cmp109, label %if.end.116, label %lor.lhs.false.110

lor.lhs.false.110:                                ; preds = %lor.lhs.false.105
  %77 = load %struct.rtx_def**, %struct.rtx_def*** %alt2, align 8
  %78 = load %struct.rtx_def*, %struct.rtx_def** %77, align 8
  %fld111 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %78, i32 0, i32 1
  %arrayidx112 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld111, i32 0, i64 0
  %rtuint113 = bitcast %union.rtunion_def* %arrayidx112 to i32*
  %79 = load i32, i32* %rtuint113, align 4
  %cmp114 = icmp eq i32 %79, 16
  br i1 %cmp114, label %if.end.116, label %if.then.115

if.then.115:                                      ; preds = %lor.lhs.false.110, %if.end.96
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1601, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__FUNCTION__.make_equivalent_phi_alternatives_equivalent, i32 0, i32 0)) #6
  unreachable

if.end.116:                                       ; preds = %lor.lhs.false.110, %lor.lhs.false.105, %lor.lhs.false.100
  %80 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %81 = load %struct.rtx_def*, %struct.rtx_def** %80, align 8
  %fld117 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %81, i32 0, i32 1
  %arrayidx118 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld117, i32 0, i64 0
  %rtuint119 = bitcast %union.rtunion_def* %arrayidx118 to i32*
  %82 = load i32, i32* %rtuint119, align 4
  %idxprom120 = zext i32 %82 to i64
  %83 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %elements121 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %83, i32 0, i32 1
  %arrayidx122 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements121, i32 0, i64 %idxprom120
  %class_element123 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx122, i32 0, i32 0
  %84 = load i32, i32* %class_element123, align 4
  %85 = load %struct.rtx_def**, %struct.rtx_def*** %alt2, align 8
  %86 = load %struct.rtx_def*, %struct.rtx_def** %85, align 8
  %fld124 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %86, i32 0, i32 1
  %arrayidx125 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld124, i32 0, i64 0
  %rtuint126 = bitcast %union.rtunion_def* %arrayidx125 to i32*
  %87 = load i32, i32* %rtuint126, align 4
  %idxprom127 = zext i32 %87 to i64
  %88 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %elements128 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %88, i32 0, i32 1
  %arrayidx129 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements128, i32 0, i64 %idxprom127
  %class_element130 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx129, i32 0, i32 0
  %89 = load i32, i32* %class_element130, align 4
  %cmp131 = icmp ne i32 %84, %89
  br i1 %cmp131, label %if.then.132, label %if.end.150

if.then.132:                                      ; preds = %if.end.116
  %90 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %91 = load %struct.rtx_def*, %struct.rtx_def** %90, align 8
  %fld133 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %91, i32 0, i32 1
  %arrayidx134 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld133, i32 0, i64 0
  %rtuint135 = bitcast %union.rtunion_def* %arrayidx134 to i32*
  %92 = load i32, i32* %rtuint135, align 4
  %93 = load %struct.rtx_def**, %struct.rtx_def*** %alt2, align 8
  %94 = load %struct.rtx_def*, %struct.rtx_def** %93, align 8
  %fld136 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %94, i32 0, i32 1
  %arrayidx137 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld136, i32 0, i64 0
  %rtuint138 = bitcast %union.rtunion_def* %arrayidx137 to i32*
  %95 = load i32, i32* %rtuint138, align 4
  %call139 = call i32 @conflicting_hard_regs_p(i32 %92, i32 %95)
  %tobool140 = icmp ne i32 %call139, 0
  br i1 %tobool140, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.then.132
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1612, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__FUNCTION__.make_equivalent_phi_alternatives_equivalent, i32 0, i32 0)) #6
  unreachable

if.end.142:                                       ; preds = %if.then.132
  %96 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %97 = load %struct.rtx_def**, %struct.rtx_def*** %alt, align 8
  %98 = load %struct.rtx_def*, %struct.rtx_def** %97, align 8
  %fld143 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %98, i32 0, i32 1
  %arrayidx144 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld143, i32 0, i64 0
  %rtuint145 = bitcast %union.rtunion_def* %arrayidx144 to i32*
  %99 = load i32, i32* %rtuint145, align 4
  %100 = load %struct.rtx_def**, %struct.rtx_def*** %alt2, align 8
  %101 = load %struct.rtx_def*, %struct.rtx_def** %100, align 8
  %fld146 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %101, i32 0, i32 1
  %arrayidx147 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld146, i32 0, i64 0
  %rtuint148 = bitcast %union.rtunion_def* %arrayidx147 to i32*
  %102 = load i32, i32* %rtuint148, align 4
  %call149 = call i32 @partition_union(%struct.partition_def* %96, i32 %99, i32 %102)
  %103 = load i32, i32* %changed, align 4
  %inc = add nsw i32 %103, 1
  store i32 %inc, i32* %changed, align 4
  br label %if.end.150

if.end.150:                                       ; preds = %if.end.142, %if.end.116
  br label %for.inc

for.inc:                                          ; preds = %if.end.150, %if.then.76
  %104 = load %struct.edge_def*, %struct.edge_def** %e, align 8
  %pred_next = getelementptr inbounds %struct.edge_def, %struct.edge_def* %104, i32 0, i32 0
  %105 = load %struct.edge_def*, %struct.edge_def** %pred_next, align 8
  store %struct.edge_def* %105, %struct.edge_def** %e, align 8
  br label %for.cond.69

for.end:                                          ; preds = %for.cond.69
  br label %if.end.151

if.end.151:                                       ; preds = %for.end, %for.body.52
  br label %for.inc.152

for.inc.152:                                      ; preds = %if.end.151
  %106 = load %struct.rtx_def*, %struct.rtx_def** %phi2, align 8
  %call153 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %106)
  store %struct.rtx_def* %call153, %struct.rtx_def** %phi2, align 8
  br label %for.cond.28

for.end.154:                                      ; preds = %land.end.51
  br label %for.inc.155

for.inc.155:                                      ; preds = %for.end.154
  %107 = load %struct.rtx_def*, %struct.rtx_def** %phi, align 8
  %call156 = call %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def* %107)
  store %struct.rtx_def* %call156, %struct.rtx_def** %phi, align 8
  br label %for.cond

for.end.157:                                      ; preds = %land.end
  %108 = load i32, i32* %changed, align 4
  ret i32 %108
}

; Function Attrs: nounwind uwtable
define internal i32 @conflicting_hard_regs_p(i32 %reg1, i32 %reg2) #0 {
entry:
  %retval = alloca i32, align 4
  %reg1.addr = alloca i32, align 4
  %reg2.addr = alloca i32, align 4
  %orig_reg1 = alloca i32, align 4
  %orig_reg2 = alloca i32, align 4
  store i32 %reg1, i32* %reg1.addr, align 4
  store i32 %reg2, i32* %reg2.addr, align 4
  %0 = load i32, i32* %reg1.addr, align 4
  %call = call i32 @original_register(i32 %0)
  store i32 %call, i32* %orig_reg1, align 4
  %1 = load i32, i32* %reg2.addr, align 4
  %call1 = call i32 @original_register(i32 %1)
  store i32 %call1, i32* %orig_reg2, align 4
  %2 = load i32, i32* %orig_reg1, align 4
  %cmp = icmp slt i32 %2, 53
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* %orig_reg2, align 4
  %cmp2 = icmp slt i32 %3, 53
  br i1 %cmp2, label %land.lhs.true.3, label %if.end

land.lhs.true.3:                                  ; preds = %land.lhs.true
  %4 = load i32, i32* %orig_reg1, align 4
  %5 = load i32, i32* %orig_reg2, align 4
  %cmp4 = icmp ne i32 %4, %5
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.3
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.3, %land.lhs.true, %entry
  %6 = load i32, i32* %orig_reg1, align 4
  %cmp5 = icmp slt i32 %6, 53
  br i1 %cmp5, label %land.lhs.true.6, label %if.end.9

land.lhs.true.6:                                  ; preds = %if.end
  %7 = load i32, i32* %orig_reg2, align 4
  %cmp7 = icmp slt i32 %7, 53
  br i1 %cmp7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true.6
  store i32 1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true.6, %if.end
  %8 = load i32, i32* %orig_reg1, align 4
  %cmp10 = icmp slt i32 %8, 53
  br i1 %cmp10, label %if.end.14, label %land.lhs.true.11

land.lhs.true.11:                                 ; preds = %if.end.9
  %9 = load i32, i32* %orig_reg2, align 4
  %cmp12 = icmp slt i32 %9, 53
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %land.lhs.true.11
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %land.lhs.true.11, %if.end.9
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.13, %if.then.8, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @partition_union(%struct.partition_def*, i32, i32) #1

declare %struct.rtx_def* @next_nonnote_insn(%struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @original_register(i32 %regno) #0 {
entry:
  %regno.addr = alloca i32, align 4
  %original_rtx = alloca %struct.rtx_def*, align 8
  store i32 %regno, i32* %regno.addr, align 4
  %0 = load i32, i32* %regno.addr, align 4
  %call = call %struct.rtx_def* @ssa_rename_from_lookup(i32 %0)
  store %struct.rtx_def* %call, %struct.rtx_def** %original_rtx, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %original_rtx, align 8
  %cmp = icmp ne %struct.rtx_def* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct.rtx_def*, %struct.rtx_def** %original_rtx, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %2, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %3 = load i32, i32* %rtuint, align 4
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load i32, i32* %regno.addr, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ]
  ret i32 %cond
}

declare %struct.bitmap_head_def* @bitmap_initialize(%struct.bitmap_head_def*) #1

declare void @bitmap_clear(%struct.bitmap_head_def*) #1

; Function Attrs: nounwind uwtable
define internal void @mark_phi_and_copy_regs(%struct.bitmap_head_def* %phi_set) #0 {
entry:
  %phi_set.addr = alloca %struct.bitmap_head_def*, align 8
  %reg = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %pattern = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  store %struct.bitmap_head_def* %phi_set, %struct.bitmap_head_def** %phi_set.addr, align 8
  store i32 0, i32* %reg, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %reg, align 4
  %conv = zext i32 %0 to i64
  %1 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %num_elements = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %1, i32 0, i32 0
  %2 = load i64, i64* %num_elements, align 8
  %cmp = icmp ult i64 %conv, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %reg, align 4
  %cmp2 = icmp ult i32 %3, 53
  br i1 %cmp2, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %4 = load i32, i32* %reg, align 4
  %cmp4 = icmp eq i32 %4, 17
  br i1 %cmp4, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %5 = load i32, i32* %reg, align 4
  %cmp7 = icmp eq i32 %5, 16
  br i1 %cmp7, label %if.then, label %if.end.44

if.then:                                          ; preds = %lor.lhs.false.6, %lor.lhs.false, %for.body
  %6 = load i32, i32* %reg, align 4
  %idxprom = zext i32 %6 to i64
  %7 = load %struct.varray_head_tag*, %struct.varray_head_tag** @ssa_definition, align 8
  %data = getelementptr inbounds %struct.varray_head_tag, %struct.varray_head_tag* %7, i32 0, i32 4
  %rtx = bitcast %union.varray_data_tag* %data to [1 x %struct.rtx_def*]*
  %arrayidx = getelementptr inbounds [1 x %struct.rtx_def*], [1 x %struct.rtx_def*]* %rtx, i32 0, i64 %idxprom
  %8 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx, align 8
  store %struct.rtx_def* %8, %struct.rtx_def** %insn, align 8
  %9 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %cmp9 = icmp eq %struct.rtx_def* %9, null
  br i1 %cmp9, label %if.then.17, label %lor.lhs.false.11

lor.lhs.false.11:                                 ; preds = %if.then
  %10 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load = load i32, i32* %11, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp12 = icmp eq i32 %bf.clear, 37
  br i1 %cmp12, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false.11
  %12 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx14 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 4
  %rtint = bitcast %union.rtunion_def* %arrayidx14 to i32*
  %13 = load i32, i32* %rtint, align 4
  %cmp15 = icmp eq i32 %13, -99
  br i1 %cmp15, label %if.then.17, label %if.end

if.then.17:                                       ; preds = %land.lhs.true, %if.then
  br label %for.inc

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false.11
  %14 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld18 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx19 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld18, i32 0, i64 3
  %rtx20 = bitcast %union.rtunion_def* %arrayidx19 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx20, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %pattern, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load21 = load i32, i32* %17, align 8
  %bf.clear22 = and i32 %bf.load21, 65535
  %cmp23 = icmp ne i32 %bf.clear22, 47
  br i1 %cmp23, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end
  br label %for.inc

if.end.26:                                        ; preds = %if.end
  %18 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld27 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %18, i32 0, i32 1
  %arrayidx28 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld27, i32 0, i64 1
  %rtx29 = bitcast %union.rtunion_def* %arrayidx28 to %struct.rtx_def**
  %19 = load %struct.rtx_def*, %struct.rtx_def** %rtx29, align 8
  store %struct.rtx_def* %19, %struct.rtx_def** %src, align 8
  %20 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load30 = load i32, i32* %21, align 8
  %bf.clear31 = and i32 %bf.load30, 65535
  %cmp32 = icmp eq i32 %bf.clear31, 61
  br i1 %cmp32, label %if.then.34, label %if.else

if.then.34:                                       ; preds = %if.end.26
  %22 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %phi_set.addr, align 8
  %23 = load i32, i32* %reg, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %22, i32 %23)
  %24 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %phi_set.addr, align 8
  %25 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %25, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx36 to i32*
  %26 = load i32, i32* %rtuint, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %24, i32 %26)
  br label %if.end.43

if.else:                                          ; preds = %if.end.26
  %27 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %28 = bitcast %struct.rtx_def* %27 to i32*
  %bf.load37 = load i32, i32* %28, align 8
  %bf.clear38 = and i32 %bf.load37, 65535
  %cmp39 = icmp eq i32 %bf.clear38, 152
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.else
  %29 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %phi_set.addr, align 8
  %30 = load i32, i32* %reg, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %29, i32 %30)
  %31 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %phi_set.addr, align 8
  %32 = bitcast %struct.bitmap_head_def* %31 to i8*
  %call = call i32 @for_each_rtx(%struct.rtx_def** %src, i32 (%struct.rtx_def**, i8*)* @mark_reg_in_phi, i8* %32)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.41, %if.else
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.then.34
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.43, %lor.lhs.false.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.44, %if.then.25, %if.then.17
  %33 = load i32, i32* %reg, align 4
  %inc = add i32 %33, 1
  store i32 %inc, i32* %reg, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct.conflict_graph_def* @conflict_graph_compute(%struct.bitmap_head_def*, %struct.partition_def*) #1

; Function Attrs: nounwind uwtable
define internal i32 @coalesce_regs_in_copies(%struct.basic_block_def* %bb, %struct.partition_def* %p, %struct.conflict_graph_def* %conflicts) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %p.addr = alloca %struct.partition_def*, align 8
  %conflicts.addr = alloca %struct.conflict_graph_def*, align 8
  %changed = alloca i32, align 4
  %insn = alloca %struct.rtx_def*, align 8
  %end = alloca %struct.rtx_def*, align 8
  %pattern = alloca %struct.rtx_def*, align 8
  %src = alloca %struct.rtx_def*, align 8
  %dest = alloca %struct.rtx_def*, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.partition_def* %p, %struct.partition_def** %p.addr, align 8
  store %struct.conflict_graph_def* %conflicts, %struct.conflict_graph_def** %conflicts.addr, align 8
  store i32 0, i32* %changed, align 4
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %end1 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i32 0, i32 1
  %1 = load %struct.rtx_def*, %struct.rtx_def** %end1, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %end, align 8
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %head = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %2, i32 0, i32 0
  %3 = load %struct.rtx_def*, %struct.rtx_def** %head, align 8
  store %struct.rtx_def* %3, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %5 = load %struct.rtx_def*, %struct.rtx_def** %end, align 8
  %cmp = icmp ne %struct.rtx_def* %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %7 = bitcast %struct.rtx_def* %6 to i32*
  %bf.load = load i32, i32* %7, align 8
  %bf.clear = and i32 %bf.load, 65535
  %cmp2 = icmp ne i32 %bf.clear, 32
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 3
  %rtx = bitcast %union.rtunion_def* %arrayidx to %struct.rtx_def**
  %9 = load %struct.rtx_def*, %struct.rtx_def** %rtx, align 8
  store %struct.rtx_def* %9, %struct.rtx_def** %pattern, align 8
  %10 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %11 = bitcast %struct.rtx_def* %10 to i32*
  %bf.load3 = load i32, i32* %11, align 8
  %bf.clear4 = and i32 %bf.load3, 65535
  %cmp5 = icmp ne i32 %bf.clear4, 47
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end
  br label %for.inc

if.end.7:                                         ; preds = %if.end
  %12 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld8 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %12, i32 0, i32 1
  %arrayidx9 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld8, i32 0, i64 1
  %rtx10 = bitcast %union.rtunion_def* %arrayidx9 to %struct.rtx_def**
  %13 = load %struct.rtx_def*, %struct.rtx_def** %rtx10, align 8
  store %struct.rtx_def* %13, %struct.rtx_def** %src, align 8
  %14 = load %struct.rtx_def*, %struct.rtx_def** %pattern, align 8
  %fld11 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %14, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld11, i32 0, i64 0
  %rtx13 = bitcast %union.rtunion_def* %arrayidx12 to %struct.rtx_def**
  %15 = load %struct.rtx_def*, %struct.rtx_def** %rtx13, align 8
  store %struct.rtx_def* %15, %struct.rtx_def** %dest, align 8
  %16 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %17 = bitcast %struct.rtx_def* %16 to i32*
  %bf.load14 = load i32, i32* %17, align 8
  %bf.clear15 = and i32 %bf.load14, 65535
  %cmp16 = icmp ne i32 %bf.clear15, 61
  br i1 %cmp16, label %if.then.20, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.7
  %18 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %19 = bitcast %struct.rtx_def* %18 to i32*
  %bf.load17 = load i32, i32* %19, align 8
  %bf.clear18 = and i32 %bf.load17, 65535
  %cmp19 = icmp ne i32 %bf.clear18, 61
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false, %if.end.7
  br label %for.inc

if.end.21:                                        ; preds = %lor.lhs.false
  %20 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %21 = bitcast %struct.rtx_def* %20 to i32*
  %bf.load22 = load i32, i32* %21, align 8
  %bf.lshr = lshr i32 %bf.load22, 16
  %bf.clear23 = and i32 %bf.lshr, 255
  %22 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %23 = bitcast %struct.rtx_def* %22 to i32*
  %bf.load24 = load i32, i32* %23, align 8
  %bf.lshr25 = lshr i32 %bf.load24, 16
  %bf.clear26 = and i32 %bf.lshr25, 255
  %cmp27 = icmp ne i32 %bf.clear23, %bf.clear26
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.21
  br label %for.inc

if.end.29:                                        ; preds = %if.end.21
  %24 = load %struct.partition_def*, %struct.partition_def** %p.addr, align 8
  %25 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %conflicts.addr, align 8
  %26 = load %struct.rtx_def*, %struct.rtx_def** %src, align 8
  %fld30 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %26, i32 0, i32 1
  %arrayidx31 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld30, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx31 to i32*
  %27 = load i32, i32* %rtuint, align 4
  %28 = load %struct.rtx_def*, %struct.rtx_def** %dest, align 8
  %fld32 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %28, i32 0, i32 1
  %arrayidx33 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld32, i32 0, i64 0
  %rtuint34 = bitcast %union.rtunion_def* %arrayidx33 to i32*
  %29 = load i32, i32* %rtuint34, align 4
  %call = call i32 @coalesce_if_unconflicting(%struct.partition_def* %24, %struct.conflict_graph_def* %25, i32 %27, i32 %29)
  %30 = load i32, i32* %changed, align 4
  %add = add nsw i32 %30, %call
  store i32 %add, i32* %changed, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.29, %if.then.28, %if.then.20, %if.then.6, %if.then
  %31 = load %struct.rtx_def*, %struct.rtx_def** %insn, align 8
  %fld35 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %31, i32 0, i32 1
  %arrayidx36 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld35, i32 0, i64 2
  %rtx37 = bitcast %union.rtunion_def* %arrayidx36 to %struct.rtx_def**
  %32 = load %struct.rtx_def*, %struct.rtx_def** %rtx37, align 8
  store %struct.rtx_def* %32, %struct.rtx_def** %insn, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32, i32* %changed, align 4
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define internal i32 @coalesce_regs_in_successor_phi_nodes(%struct.basic_block_def* %bb, %struct.partition_def* %p, %struct.conflict_graph_def* %conflicts) #0 {
entry:
  %bb.addr = alloca %struct.basic_block_def*, align 8
  %p.addr = alloca %struct.partition_def*, align 8
  %conflicts.addr = alloca %struct.conflict_graph_def*, align 8
  %context = alloca %struct.phi_coalesce_context, align 8
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb.addr, align 8
  store %struct.partition_def* %p, %struct.partition_def** %p.addr, align 8
  store %struct.conflict_graph_def* %conflicts, %struct.conflict_graph_def** %conflicts.addr, align 8
  %0 = load %struct.partition_def*, %struct.partition_def** %p.addr, align 8
  %p1 = getelementptr inbounds %struct.phi_coalesce_context, %struct.phi_coalesce_context* %context, i32 0, i32 0
  store %struct.partition_def* %0, %struct.partition_def** %p1, align 8
  %1 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %conflicts.addr, align 8
  %conflicts2 = getelementptr inbounds %struct.phi_coalesce_context, %struct.phi_coalesce_context* %context, i32 0, i32 1
  store %struct.conflict_graph_def* %1, %struct.conflict_graph_def** %conflicts2, align 8
  %changed = getelementptr inbounds %struct.phi_coalesce_context, %struct.phi_coalesce_context* %context, i32 0, i32 2
  store i32 0, i32* %changed, align 4
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.addr, align 8
  %3 = bitcast %struct.phi_coalesce_context* %context to i8*
  %call = call i32 @for_each_successor_phi(%struct.basic_block_def* %2, i32 (%struct.rtx_def*, i32, i32, i8*)* @coalesce_reg_in_phi, i8* %3)
  %changed3 = getelementptr inbounds %struct.phi_coalesce_context, %struct.phi_coalesce_context* %context, i32 0, i32 2
  %4 = load i32, i32* %changed3, align 4
  ret i32 %4
}

declare void @conflict_graph_delete(%struct.conflict_graph_def*) #1

declare void @bitmap_set_bit(%struct.bitmap_head_def*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @mark_reg_in_phi(%struct.rtx_def** %ptr, i8* %data) #0 {
entry:
  %ptr.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %expr = alloca %struct.rtx_def*, align 8
  %set = alloca %struct.bitmap_head_def*, align 8
  store %struct.rtx_def** %ptr, %struct.rtx_def*** %ptr.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %expr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.bitmap_head_def*
  store %struct.bitmap_head_def* %3, %struct.bitmap_head_def** %set, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %expr, align 8
  %5 = bitcast %struct.rtx_def* %4 to i32*
  %bf.load = load i32, i32* %5, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 61, label %sw.bb
    i32 54, label %sw.bb.1
    i32 152, label %sw.bb.1
  ]

sw.bb:                                            ; preds = %entry
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %set, align 8
  %7 = load %struct.rtx_def*, %struct.rtx_def** %expr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %8 = load i32, i32* %rtuint, align 4
  call void @bitmap_set_bit(%struct.bitmap_head_def* %6, i32 %8)
  br label %sw.bb.1

sw.bb.1:                                          ; preds = %entry, %entry, %sw.bb
  ret i32 0

sw.default:                                       ; preds = %entry
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 1924, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @__FUNCTION__.mark_reg_in_phi, i32 0, i32 0)) #6
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @coalesce_if_unconflicting(%struct.partition_def* %p, %struct.conflict_graph_def* %conflicts, i32 %reg1, i32 %reg2) #0 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.partition_def*, align 8
  %conflicts.addr = alloca %struct.conflict_graph_def*, align 8
  %reg1.addr = alloca i32, align 4
  %reg2.addr = alloca i32, align 4
  %reg = alloca i32, align 4
  store %struct.partition_def* %p, %struct.partition_def** %p.addr, align 8
  store %struct.conflict_graph_def* %conflicts, %struct.conflict_graph_def** %conflicts.addr, align 8
  store i32 %reg1, i32* %reg1.addr, align 4
  store i32 %reg2, i32* %reg2.addr, align 4
  %0 = load i32, i32* %reg1.addr, align 4
  %cmp = icmp slt i32 %0, 53
  br i1 %cmp, label %lor.lhs.false, label %lor.lhs.false.4

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %reg1.addr, align 4
  %cmp1 = icmp eq i32 %1, 17
  br i1 %cmp1, label %lor.lhs.false.4, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %reg1.addr, align 4
  %cmp3 = icmp eq i32 %2, 16
  br i1 %cmp3, label %lor.lhs.false.4, label %if.then

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2, %lor.lhs.false, %entry
  %3 = load i32, i32* %reg2.addr, align 4
  %cmp5 = icmp slt i32 %3, 53
  br i1 %cmp5, label %lor.lhs.false.6, label %if.end

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %4 = load i32, i32* %reg2.addr, align 4
  %cmp7 = icmp eq i32 %4, 17
  br i1 %cmp7, label %if.end, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %5 = load i32, i32* %reg2.addr, align 4
  %cmp9 = icmp eq i32 %5, 16
  br i1 %cmp9, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.8, %lor.lhs.false.2
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false.4
  %6 = load i32, i32* %reg1.addr, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.partition_def*, %struct.partition_def** %p.addr, align 8
  %elements = getelementptr inbounds %struct.partition_def, %struct.partition_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements, i32 0, i64 %idxprom
  %class_element = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx, i32 0, i32 0
  %8 = load i32, i32* %class_element, align 4
  store i32 %8, i32* %reg1.addr, align 4
  %9 = load i32, i32* %reg2.addr, align 4
  %idxprom10 = sext i32 %9 to i64
  %10 = load %struct.partition_def*, %struct.partition_def** %p.addr, align 8
  %elements11 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %10, i32 0, i32 1
  %arrayidx12 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements11, i32 0, i64 %idxprom10
  %class_element13 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx12, i32 0, i32 0
  %11 = load i32, i32* %class_element13, align 4
  store i32 %11, i32* %reg2.addr, align 4
  %12 = load i32, i32* %reg1.addr, align 4
  %13 = load i32, i32* %reg2.addr, align 4
  %cmp14 = icmp eq i32 %12, %13
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.end
  %14 = load i32, i32* %reg1.addr, align 4
  %15 = load i32, i32* %reg2.addr, align 4
  %call = call i32 @conflicting_hard_regs_p(i32 %14, i32 %15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.20, label %lor.lhs.false.17

lor.lhs.false.17:                                 ; preds = %if.end.16
  %16 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %conflicts.addr, align 8
  %17 = load i32, i32* %reg1.addr, align 4
  %18 = load i32, i32* %reg2.addr, align 4
  %call18 = call i32 @conflict_graph_conflict_p(%struct.conflict_graph_def* %16, i32 %17, i32 %18)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %lor.lhs.false.17, %if.end.16
  store i32 0, i32* %retval
  br label %return

if.end.21:                                        ; preds = %lor.lhs.false.17
  %19 = load %struct.partition_def*, %struct.partition_def** %p.addr, align 8
  %20 = load i32, i32* %reg1.addr, align 4
  %21 = load i32, i32* %reg2.addr, align 4
  %call22 = call i32 @partition_union(%struct.partition_def* %19, i32 %20, i32 %21)
  %22 = load i32, i32* %reg1.addr, align 4
  %idxprom23 = sext i32 %22 to i64
  %23 = load %struct.partition_def*, %struct.partition_def** %p.addr, align 8
  %elements24 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %23, i32 0, i32 1
  %arrayidx25 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements24, i32 0, i64 %idxprom23
  %class_element26 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx25, i32 0, i32 0
  %24 = load i32, i32* %class_element26, align 4
  store i32 %24, i32* %reg, align 4
  %25 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %conflicts.addr, align 8
  %26 = load i32, i32* %reg, align 4
  %27 = load i32, i32* %reg1.addr, align 4
  call void @conflict_graph_merge_regs(%struct.conflict_graph_def* %25, i32 %26, i32 %27)
  %28 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %conflicts.addr, align 8
  %29 = load i32, i32* %reg, align 4
  %30 = load i32, i32* %reg2.addr, align 4
  call void @conflict_graph_merge_regs(%struct.conflict_graph_def* %28, i32 %29, i32 %30)
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.21, %if.then.20, %if.then.15, %if.then
  %31 = load i32, i32* %retval
  ret i32 %31
}

declare i32 @conflict_graph_conflict_p(%struct.conflict_graph_def*, i32, i32) #1

declare void @conflict_graph_merge_regs(%struct.conflict_graph_def*, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @coalesce_reg_in_phi(%struct.rtx_def* %insn, i32 %dest_regno, i32 %src_regno, i8* %data) #0 {
entry:
  %insn.addr = alloca %struct.rtx_def*, align 8
  %dest_regno.addr = alloca i32, align 4
  %src_regno.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  %context = alloca %struct.phi_coalesce_context*, align 8
  store %struct.rtx_def* %insn, %struct.rtx_def** %insn.addr, align 8
  store i32 %dest_regno, i32* %dest_regno.addr, align 4
  store i32 %src_regno, i32* %src_regno.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = bitcast i8* %0 to %struct.phi_coalesce_context*
  store %struct.phi_coalesce_context* %1, %struct.phi_coalesce_context** %context, align 8
  %2 = load %struct.phi_coalesce_context*, %struct.phi_coalesce_context** %context, align 8
  %p = getelementptr inbounds %struct.phi_coalesce_context, %struct.phi_coalesce_context* %2, i32 0, i32 0
  %3 = load %struct.partition_def*, %struct.partition_def** %p, align 8
  %4 = load %struct.phi_coalesce_context*, %struct.phi_coalesce_context** %context, align 8
  %conflicts = getelementptr inbounds %struct.phi_coalesce_context, %struct.phi_coalesce_context* %4, i32 0, i32 1
  %5 = load %struct.conflict_graph_def*, %struct.conflict_graph_def** %conflicts, align 8
  %6 = load i32, i32* %dest_regno.addr, align 4
  %7 = load i32, i32* %src_regno.addr, align 4
  %call = call i32 @coalesce_if_unconflicting(%struct.partition_def* %3, %struct.conflict_graph_def* %5, i32 %6, i32 %7)
  %8 = load %struct.phi_coalesce_context*, %struct.phi_coalesce_context** %context, align 8
  %changed = getelementptr inbounds %struct.phi_coalesce_context, %struct.phi_coalesce_context* %8, i32 0, i32 2
  %9 = load i32, i32* %changed, align 4
  %add = add nsw i32 %9, %call
  store i32 %add, i32* %changed, align 4
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @ssa_rename_from_traverse(i32 (i8**, i8*)* %callback_function, %struct.simple_bitmap_def* %canonical_elements, %struct.partition_def* %reg_partition) #0 {
entry:
  %callback_function.addr = alloca i32 (i8**, i8*)*, align 8
  %canonical_elements.addr = alloca %struct.simple_bitmap_def*, align 8
  %reg_partition.addr = alloca %struct.partition_def*, align 8
  %srfhd = alloca %struct.ssa_rename_from_hash_table_data, align 8
  store i32 (i8**, i8*)* %callback_function, i32 (i8**, i8*)** %callback_function.addr, align 8
  store %struct.simple_bitmap_def* %canonical_elements, %struct.simple_bitmap_def** %canonical_elements.addr, align 8
  store %struct.partition_def* %reg_partition, %struct.partition_def** %reg_partition.addr, align 8
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %canonical_elements.addr, align 8
  %canonical_elements1 = getelementptr inbounds %struct.ssa_rename_from_hash_table_data, %struct.ssa_rename_from_hash_table_data* %srfhd, i32 0, i32 0
  store %struct.simple_bitmap_def* %0, %struct.simple_bitmap_def** %canonical_elements1, align 8
  %1 = load %struct.partition_def*, %struct.partition_def** %reg_partition.addr, align 8
  %reg_partition2 = getelementptr inbounds %struct.ssa_rename_from_hash_table_data, %struct.ssa_rename_from_hash_table_data* %srfhd, i32 0, i32 1
  store %struct.partition_def* %1, %struct.partition_def** %reg_partition2, align 8
  %2 = load %struct.htab*, %struct.htab** @ssa_rename_from_ht, align 8
  %3 = load i32 (i8**, i8*)*, i32 (i8**, i8*)** %callback_function.addr, align 8
  %4 = bitcast %struct.ssa_rename_from_hash_table_data* %srfhd to i8*
  call void @htab_traverse(%struct.htab* %2, i32 (i8**, i8*)* %3, i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @record_canonical_element_1(i8** %srfp, i8* %data) #0 {
entry:
  %srfp.addr = alloca i8**, align 8
  %data.addr = alloca i8*, align 8
  %reg = alloca i32, align 4
  %canonical_elements = alloca %struct.simple_bitmap_def*, align 8
  %reg_partition = alloca %struct.partition_def*, align 8
  store i8** %srfp, i8*** %srfp.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8**, i8*** %srfp.addr, align 8
  %1 = load i8*, i8** %0, align 8
  %2 = bitcast i8* %1 to %struct.ssa_rename_from_pair*
  %reg1 = getelementptr inbounds %struct.ssa_rename_from_pair, %struct.ssa_rename_from_pair* %2, i32 0, i32 0
  %3 = load i32, i32* %reg1, align 4
  store i32 %3, i32* %reg, align 4
  %4 = load i8*, i8** %data.addr, align 8
  %5 = bitcast i8* %4 to %struct.ssa_rename_from_hash_table_data*
  %canonical_elements2 = getelementptr inbounds %struct.ssa_rename_from_hash_table_data, %struct.ssa_rename_from_hash_table_data* %5, i32 0, i32 0
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %canonical_elements2, align 8
  store %struct.simple_bitmap_def* %6, %struct.simple_bitmap_def** %canonical_elements, align 8
  %7 = load i8*, i8** %data.addr, align 8
  %8 = bitcast i8* %7 to %struct.ssa_rename_from_hash_table_data*
  %reg_partition3 = getelementptr inbounds %struct.ssa_rename_from_hash_table_data, %struct.ssa_rename_from_hash_table_data* %8, i32 0, i32 1
  %9 = load %struct.partition_def*, %struct.partition_def** %reg_partition3, align 8
  store %struct.partition_def* %9, %struct.partition_def** %reg_partition, align 8
  %10 = load i32, i32* %reg, align 4
  %idxprom = zext i32 %10 to i64
  %11 = load %struct.partition_def*, %struct.partition_def** %reg_partition, align 8
  %elements = getelementptr inbounds %struct.partition_def, %struct.partition_def* %11, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements, i32 0, i64 %idxprom
  %class_element = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx, i32 0, i32 0
  %12 = load i32, i32* %class_element, align 4
  %rem = urem i32 %12, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %13 = load i32, i32* %reg, align 4
  %idxprom4 = zext i32 %13 to i64
  %14 = load %struct.partition_def*, %struct.partition_def** %reg_partition, align 8
  %elements5 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %14, i32 0, i32 1
  %arrayidx6 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements5, i32 0, i64 %idxprom4
  %class_element7 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx6, i32 0, i32 0
  %15 = load i32, i32* %class_element7, align 4
  %div = udiv i32 %15, 64
  %idxprom8 = zext i32 %div to i64
  %16 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %canonical_elements, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %16, i32 0, i32 3
  %arrayidx9 = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom8
  %17 = load i64, i64* %arrayidx9, align 8
  %or = or i64 %17, %shl
  store i64 %or, i64* %arrayidx9, align 8
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal i32 @rename_equivalent_regs_in_insn(%struct.rtx_def** %ptr, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca %struct.rtx_def**, align 8
  %data.addr = alloca i8*, align 8
  %x = alloca %struct.rtx_def*, align 8
  %reg_partition = alloca %struct.partition_def*, align 8
  %regno = alloca i32, align 4
  %new_regno = alloca i32, align 4
  %canonical_element_rtx = alloca %struct.rtx_def*, align 8
  %new_reg = alloca %struct.rtx_def*, align 8
  store %struct.rtx_def** %ptr, %struct.rtx_def*** %ptr.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  %1 = load %struct.rtx_def*, %struct.rtx_def** %0, align 8
  store %struct.rtx_def* %1, %struct.rtx_def** %x, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = bitcast i8* %2 to %struct.partition_def*
  store %struct.partition_def* %3, %struct.partition_def** %reg_partition, align 8
  %4 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %cmp = icmp eq %struct.rtx_def* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %6 = bitcast %struct.rtx_def* %5 to i32*
  %bf.load = load i32, i32* %6, align 8
  %bf.clear = and i32 %bf.load, 65535
  switch i32 %bf.clear, label %sw.default [
    i32 61, label %sw.bb
    i32 152, label %sw.bb.43
  ]

sw.bb:                                            ; preds = %if.end
  %7 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %8 = load i32, i32* %rtuint, align 4
  %cmp1 = icmp ult i32 %8, 53
  br i1 %cmp1, label %lor.lhs.false, label %if.then.11

lor.lhs.false:                                    ; preds = %sw.bb
  %9 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %9, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtuint4 = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %10 = load i32, i32* %rtuint4, align 4
  %cmp5 = icmp eq i32 %10, 17
  br i1 %cmp5, label %if.then.11, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %11 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld7 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %11, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld7, i32 0, i64 0
  %rtuint9 = bitcast %union.rtunion_def* %arrayidx8 to i32*
  %12 = load i32, i32* %rtuint9, align 4
  %cmp10 = icmp eq i32 %12, 16
  br i1 %cmp10, label %if.then.11, label %if.end.42

if.then.11:                                       ; preds = %lor.lhs.false.6, %lor.lhs.false, %sw.bb
  %13 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %fld12 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %13, i32 0, i32 1
  %arrayidx13 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld12, i32 0, i64 0
  %rtuint14 = bitcast %union.rtunion_def* %arrayidx13 to i32*
  %14 = load i32, i32* %rtuint14, align 4
  store i32 %14, i32* %regno, align 4
  %15 = load i32, i32* %regno, align 4
  %idxprom = zext i32 %15 to i64
  %16 = load %struct.partition_def*, %struct.partition_def** %reg_partition, align 8
  %elements = getelementptr inbounds %struct.partition_def, %struct.partition_def* %16, i32 0, i32 1
  %arrayidx15 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements, i32 0, i64 %idxprom
  %class_element = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx15, i32 0, i32 0
  %17 = load i32, i32* %class_element, align 4
  store i32 %17, i32* %new_regno, align 4
  %18 = load i32, i32* %new_regno, align 4
  %call = call %struct.rtx_def* @ssa_rename_from_lookup(i32 %18)
  store %struct.rtx_def* %call, %struct.rtx_def** %canonical_element_rtx, align 8
  %19 = load %struct.rtx_def*, %struct.rtx_def** %canonical_element_rtx, align 8
  %cmp16 = icmp ne %struct.rtx_def* %19, null
  br i1 %cmp16, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.then.11
  %20 = load %struct.rtx_def*, %struct.rtx_def** %canonical_element_rtx, align 8
  %fld17 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %20, i32 0, i32 1
  %arrayidx18 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld17, i32 0, i64 0
  %rtuint19 = bitcast %union.rtunion_def* %arrayidx18 to i32*
  %21 = load i32, i32* %rtuint19, align 4
  %cmp20 = icmp ult i32 %21, 53
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %land.lhs.true
  %22 = load %struct.rtx_def*, %struct.rtx_def** %canonical_element_rtx, align 8
  %fld22 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %22, i32 0, i32 1
  %arrayidx23 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld22, i32 0, i64 0
  %rtuint24 = bitcast %union.rtunion_def* %arrayidx23 to i32*
  %23 = load i32, i32* %rtuint24, align 4
  %24 = load i32, i32* %regno, align 4
  %cmp25 = icmp ne i32 %23, %24
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.21
  %25 = load %struct.rtx_def*, %struct.rtx_def** %canonical_element_rtx, align 8
  %26 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  store %struct.rtx_def* %25, %struct.rtx_def** %26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.then.21
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true, %if.then.11
  %27 = load i32, i32* %regno, align 4
  %28 = load i32, i32* %new_regno, align 4
  %cmp28 = icmp ne i32 %27, %28
  br i1 %cmp28, label %if.then.29, label %if.end.40

if.then.29:                                       ; preds = %if.else
  %29 = load i32, i32* %new_regno, align 4
  %idxprom30 = zext i32 %29 to i64
  %30 = load %struct.function*, %struct.function** @cfun, align 8
  %emit = getelementptr inbounds %struct.function, %struct.function* %30, i32 0, i32 3
  %31 = load %struct.emit_status*, %struct.emit_status** %emit, align 8
  %x_regno_reg_rtx = getelementptr inbounds %struct.emit_status, %struct.emit_status* %31, i32 0, i32 12
  %32 = load %struct.rtx_def**, %struct.rtx_def*** %x_regno_reg_rtx, align 8
  %arrayidx31 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %32, i64 %idxprom30
  %33 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx31, align 8
  store %struct.rtx_def* %33, %struct.rtx_def** %new_reg, align 8
  %34 = load %struct.rtx_def*, %struct.rtx_def** %x, align 8
  %35 = bitcast %struct.rtx_def* %34 to i32*
  %bf.load32 = load i32, i32* %35, align 8
  %bf.lshr = lshr i32 %bf.load32, 16
  %bf.clear33 = and i32 %bf.lshr, 255
  %36 = load %struct.rtx_def*, %struct.rtx_def** %new_reg, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load34 = load i32, i32* %37, align 8
  %bf.lshr35 = lshr i32 %bf.load34, 16
  %bf.clear36 = and i32 %bf.lshr35, 255
  %cmp37 = icmp ne i32 %bf.clear33, %bf.clear36
  br i1 %cmp37, label %if.then.38, label %if.end.39

if.then.38:                                       ; preds = %if.then.29
  call void @fancy_abort(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 2008, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__FUNCTION__.rename_equivalent_regs_in_insn, i32 0, i32 0)) #6
  unreachable

if.end.39:                                        ; preds = %if.then.29
  %38 = load %struct.rtx_def*, %struct.rtx_def** %new_reg, align 8
  %39 = load %struct.rtx_def**, %struct.rtx_def*** %ptr.addr, align 8
  store %struct.rtx_def* %38, %struct.rtx_def** %39, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.end.39, %if.else
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40, %if.end.27
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %lor.lhs.false.6
  store i32 -1, i32* %retval
  br label %return

sw.bb.43:                                         ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

sw.default:                                       ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.default, %sw.bb.43, %if.end.42, %if.then
  %40 = load i32, i32* %retval
  ret i32 %40
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @ephi_add_node(%struct.rtx_def* %reg, %struct.rtx_def** %nodes, i32* %n_nodes) #5 {
entry:
  %retval = alloca i32, align 4
  %reg.addr = alloca %struct.rtx_def*, align 8
  %nodes.addr = alloca %struct.rtx_def**, align 8
  %n_nodes.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  store %struct.rtx_def* %reg, %struct.rtx_def** %reg.addr, align 8
  store %struct.rtx_def** %nodes, %struct.rtx_def*** %nodes.addr, align 8
  store i32* %n_nodes, i32** %n_nodes.addr, align 8
  %0 = load i32*, i32** %n_nodes.addr, align 8
  %1 = load i32, i32* %0, align 4
  %sub = sub nsw i32 %1, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp sge i32 %2, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %fld = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %3, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld, i32 0, i64 0
  %rtuint = bitcast %union.rtunion_def* %arrayidx to i32*
  %4 = load i32, i32* %rtuint, align 4
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  %arrayidx1 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %6, i64 %idxprom
  %7 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx1, align 8
  %fld2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %7, i32 0, i32 1
  %arrayidx3 = getelementptr inbounds [1 x %union.rtunion_def], [1 x %union.rtunion_def]* %fld2, i32 0, i64 0
  %rtuint4 = bitcast %union.rtunion_def* %arrayidx3 to i32*
  %8 = load i32, i32* %rtuint4, align 4
  %cmp5 = icmp eq i32 %4, %8
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, i32* %i, align 4
  %dec = add nsw i32 %10, -1
  store i32 %dec, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.rtx_def*, %struct.rtx_def** %reg.addr, align 8
  %12 = load i32*, i32** %n_nodes.addr, align 8
  %13 = load i32, i32* %12, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %12, align 4
  store i32 %13, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %14 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  %arrayidx7 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %14, i64 %idxprom6
  store %struct.rtx_def* %11, %struct.rtx_def** %arrayidx7, align 8
  %15 = load i32, i32* %i, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %16 = load i32, i32* %retval
  ret i32 %16
}

; Function Attrs: nounwind uwtable
define internal i32* @ephi_forward(i32 %t, %struct.simple_bitmap_def* %visited, %struct.simple_bitmap_def** %succ, i32* %tstack) #0 {
entry:
  %t.addr = alloca i32, align 4
  %visited.addr = alloca %struct.simple_bitmap_def*, align 8
  %succ.addr = alloca %struct.simple_bitmap_def**, align 8
  %tstack.addr = alloca i32*, align 8
  %s = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  store i32 %t, i32* %t.addr, align 4
  store %struct.simple_bitmap_def* %visited, %struct.simple_bitmap_def** %visited.addr, align 8
  store %struct.simple_bitmap_def** %succ, %struct.simple_bitmap_def*** %succ.addr, align 8
  store i32* %tstack, i32** %tstack.addr, align 8
  %0 = load i32, i32* %t.addr, align 4
  %rem = urem i32 %0, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %1 = load i32, i32* %t.addr, align 4
  %div = udiv i32 %1, 64
  %idxprom = zext i32 %div to i64
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %or = or i64 %3, %shl
  store i64 %or, i64* %arrayidx, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 0, i32* %bit_num_, align 4
  %4 = load i32, i32* %t.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %succ.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %5, i64 %idxprom1
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  store i32 %7, i32* %size_, align 4
  %8 = load i32, i32* %t.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %succ.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %9, i64 %idxprom3
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx4, align 8
  %elms5 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms5, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %do.body
  %11 = load i32, i32* %word_num_, align 4
  %12 = load i32, i32* %size_, align 4
  %cmp = icmp ult i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %word_num_, align 4
  %idxprom6 = zext i32 %13 to i64
  %14 = load i64*, i64** %ptr_, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %14, i64 %idxprom6
  %15 = load i64, i64* %arrayidx7, align 8
  store i64 %15, i64* %word_, align 8
  %16 = load i64, i64* %word_, align 8
  %cmp8 = icmp ne i64 %16, 0
  br i1 %cmp8, label %if.then, label %if.end.29

if.then:                                          ; preds = %for.body
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.then
  %17 = load i32, i32* %bit_num_, align 4
  %cmp10 = icmp ult i32 %17, 64
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %18 = load i32, i32* %bit_num_, align 4
  %sh_prom12 = zext i32 %18 to i64
  %shl13 = shl i64 1, %sh_prom12
  store i64 %shl13, i64* %_mask, align 8
  %19 = load i64, i64* %word_, align 8
  %20 = load i64, i64* %_mask, align 8
  %and = and i64 %19, %20
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.then.15, label %if.end.28

if.then.15:                                       ; preds = %for.body.11
  %21 = load i64, i64* %_mask, align 8
  %neg = xor i64 %21, -1
  %22 = load i64, i64* %word_, align 8
  %and16 = and i64 %22, %neg
  store i64 %and16, i64* %word_, align 8
  %23 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %23, 64
  %24 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %24
  store i32 %add, i32* %s, align 4
  %25 = load i32, i32* %s, align 4
  %div17 = udiv i32 %25, 64
  %idxprom18 = zext i32 %div17 to i64
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms19 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %26, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [1 x i64], [1 x i64]* %elms19, i32 0, i64 %idxprom18
  %27 = load i64, i64* %arrayidx20, align 8
  %28 = load i32, i32* %s, align 4
  %rem21 = urem i32 %28, 64
  %sh_prom22 = zext i32 %rem21 to i64
  %shr = lshr i64 %27, %sh_prom22
  %and23 = and i64 %shr, 1
  %tobool = icmp ne i64 %and23, 0
  br i1 %tobool, label %if.end, label %if.then.24

if.then.24:                                       ; preds = %if.then.15
  %29 = load i32, i32* %s, align 4
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %31 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %succ.addr, align 8
  %32 = load i32*, i32** %tstack.addr, align 8
  %call = call i32* @ephi_forward(i32 %29, %struct.simple_bitmap_def* %30, %struct.simple_bitmap_def** %31, i32* %32)
  store i32* %call, i32** %tstack.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then.15
  %33 = load i64, i64* %word_, align 8
  %cmp25 = icmp eq i64 %33, 0
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end
  br label %for.end

if.end.27:                                        ; preds = %if.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.body.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %34 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.9

for.end:                                          ; preds = %if.then.26, %for.cond.9
  br label %if.end.29

if.end.29:                                        ; preds = %for.end, %for.body
  br label %for.inc.30

for.inc.30:                                       ; preds = %if.end.29
  %35 = load i32, i32* %word_num_, align 4
  %inc31 = add i32 %35, 1
  store i32 %inc31, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.32
  %36 = load i32, i32* %t.addr, align 4
  %37 = load i32*, i32** %tstack.addr, align 8
  %incdec.ptr = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %incdec.ptr, i32** %tstack.addr, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %tstack.addr, align 8
  ret i32* %38
}

; Function Attrs: nounwind uwtable
define internal void @ephi_create(i32 %t, %struct.simple_bitmap_def* %visited, %struct.simple_bitmap_def** %pred, %struct.simple_bitmap_def** %succ, %struct.rtx_def** %nodes) #0 {
entry:
  %t.addr = alloca i32, align 4
  %visited.addr = alloca %struct.simple_bitmap_def*, align 8
  %pred.addr = alloca %struct.simple_bitmap_def**, align 8
  %succ.addr = alloca %struct.simple_bitmap_def**, align 8
  %nodes.addr = alloca %struct.rtx_def**, align 8
  %reg_u = alloca %struct.rtx_def*, align 8
  %unvisited_predecessors = alloca i32, align 4
  %p = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  %word_num_42 = alloca i32, align 4
  %bit_num_43 = alloca i32, align 4
  %size_44 = alloca i32, align 4
  %ptr_48 = alloca i64*, align 8
  %word_56 = alloca i64, align 8
  %_mask64 = alloca i64, align 8
  %s = alloca i32, align 4
  %word_num_102 = alloca i32, align 4
  %bit_num_103 = alloca i32, align 4
  %size_104 = alloca i32, align 4
  %ptr_108 = alloca i64*, align 8
  %word_116 = alloca i64, align 8
  %_mask124 = alloca i64, align 8
  store i32 %t, i32* %t.addr, align 4
  store %struct.simple_bitmap_def* %visited, %struct.simple_bitmap_def** %visited.addr, align 8
  store %struct.simple_bitmap_def** %pred, %struct.simple_bitmap_def*** %pred.addr, align 8
  store %struct.simple_bitmap_def** %succ, %struct.simple_bitmap_def*** %succ.addr, align 8
  store %struct.rtx_def** %nodes, %struct.rtx_def*** %nodes.addr, align 8
  store %struct.rtx_def* null, %struct.rtx_def** %reg_u, align 8
  store i32 0, i32* %unvisited_predecessors, align 4
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 0, i32* %bit_num_, align 4
  %0 = load i32, i32* %t.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred.addr, align 8
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %1, i64 %idxprom
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 1
  %3 = load i32, i32* %size, align 4
  store i32 %3, i32* %size_, align 4
  %4 = load i32, i32* %t.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %5, i64 %idxprom1
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %6, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.28, %do.body
  %7 = load i32, i32* %word_num_, align 4
  %8 = load i32, i32* %size_, align 4
  %cmp = icmp ult i32 %7, %8
  br i1 %cmp, label %for.body, label %for.end.30

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %word_num_, align 4
  %idxprom3 = zext i32 %9 to i64
  %10 = load i64*, i64** %ptr_, align 8
  %arrayidx4 = getelementptr inbounds i64, i64* %10, i64 %idxprom3
  %11 = load i64, i64* %arrayidx4, align 8
  store i64 %11, i64* %word_, align 8
  %12 = load i64, i64* %word_, align 8
  %cmp5 = icmp ne i64 %12, 0
  br i1 %cmp5, label %if.then, label %if.end.27

if.then:                                          ; preds = %for.body
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %if.then
  %13 = load i32, i32* %bit_num_, align 4
  %cmp7 = icmp ult i32 %13, 64
  br i1 %cmp7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %14 = load i32, i32* %bit_num_, align 4
  %sh_prom = zext i32 %14 to i64
  %shl = shl i64 1, %sh_prom
  store i64 %shl, i64* %_mask, align 8
  %15 = load i64, i64* %word_, align 8
  %16 = load i64, i64* %_mask, align 8
  %and = and i64 %15, %16
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %if.then.10, label %if.end.26

if.then.10:                                       ; preds = %for.body.8
  %17 = load i64, i64* %_mask, align 8
  %neg = xor i64 %17, -1
  %18 = load i64, i64* %word_, align 8
  %and11 = and i64 %18, %neg
  store i64 %and11, i64* %word_, align 8
  %19 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %19, 64
  %20 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %20
  store i32 %add, i32* %p, align 4
  %21 = load i32, i32* %p, align 4
  %div = udiv i32 %21, 64
  %idxprom12 = zext i32 %div to i64
  %22 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %22, i32 0, i32 3
  %arrayidx14 = getelementptr inbounds [1 x i64], [1 x i64]* %elms13, i32 0, i64 %idxprom12
  %23 = load i64, i64* %arrayidx14, align 8
  %24 = load i32, i32* %p, align 4
  %rem = urem i32 %24, 64
  %sh_prom15 = zext i32 %rem to i64
  %shr = lshr i64 %23, %sh_prom15
  %and16 = and i64 %shr, 1
  %tobool = icmp ne i64 %and16, 0
  br i1 %tobool, label %if.else, label %if.then.17

if.then.17:                                       ; preds = %if.then.10
  store i32 1, i32* %unvisited_predecessors, align 4
  br label %if.end.22

if.else:                                          ; preds = %if.then.10
  %25 = load %struct.rtx_def*, %struct.rtx_def** %reg_u, align 8
  %tobool18 = icmp ne %struct.rtx_def* %25, null
  br i1 %tobool18, label %if.end, label %if.then.19

if.then.19:                                       ; preds = %if.else
  %26 = load i32, i32* %p, align 4
  %idxprom20 = sext i32 %26 to i64
  %27 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  %arrayidx21 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %27, i64 %idxprom20
  %28 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx21, align 8
  store %struct.rtx_def* %28, %struct.rtx_def** %reg_u, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.19, %if.else
  br label %if.end.22

if.end.22:                                        ; preds = %if.end, %if.then.17
  %29 = load i64, i64* %word_, align 8
  %cmp23 = icmp eq i64 %29, 0
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.end.22
  br label %for.end

if.end.25:                                        ; preds = %if.end.22
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %for.body.8
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %30 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %30, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.6

for.end:                                          ; preds = %if.then.24, %for.cond.6
  br label %if.end.27

if.end.27:                                        ; preds = %for.end, %for.body
  br label %for.inc.28

for.inc.28:                                       ; preds = %if.end.27
  %31 = load i32, i32* %word_num_, align 4
  %inc29 = add i32 %31, 1
  store i32 %inc29, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond

for.end.30:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.30
  %32 = load i32, i32* %unvisited_predecessors, align 4
  %tobool31 = icmp ne i32 %32, 0
  br i1 %tobool31, label %if.then.32, label %if.else.100

if.then.32:                                       ; preds = %do.end
  %33 = load %struct.rtx_def*, %struct.rtx_def** %reg_u, align 8
  %tobool33 = icmp ne %struct.rtx_def* %33, null
  br i1 %tobool33, label %if.end.40, label %if.then.34

if.then.34:                                       ; preds = %if.then.32
  %34 = load i32, i32* %t.addr, align 4
  %idxprom35 = sext i32 %34 to i64
  %35 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  %arrayidx36 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %35, i64 %idxprom35
  %36 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx36, align 8
  %37 = bitcast %struct.rtx_def* %36 to i32*
  %bf.load = load i32, i32* %37, align 8
  %bf.lshr = lshr i32 %bf.load, 16
  %bf.clear = and i32 %bf.lshr, 255
  %call = call %struct.rtx_def* @gen_reg_rtx(i32 %bf.clear)
  store %struct.rtx_def* %call, %struct.rtx_def** %reg_u, align 8
  %38 = load %struct.rtx_def*, %struct.rtx_def** %reg_u, align 8
  %39 = load i32, i32* %t.addr, align 4
  %idxprom37 = sext i32 %39 to i64
  %40 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  %arrayidx38 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %40, i64 %idxprom37
  %41 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx38, align 8
  %call39 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %38, %struct.rtx_def* %41)
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.34, %if.then.32
  br label %do.body.41

do.body.41:                                       ; preds = %if.end.40
  store i32 0, i32* %bit_num_43, align 4
  %42 = load i32, i32* %t.addr, align 4
  %idxprom45 = sext i32 %42 to i64
  %43 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred.addr, align 8
  %arrayidx46 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %43, i64 %idxprom45
  %44 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx46, align 8
  %size47 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %44, i32 0, i32 1
  %45 = load i32, i32* %size47, align 4
  store i32 %45, i32* %size_44, align 4
  %46 = load i32, i32* %t.addr, align 4
  %idxprom49 = sext i32 %46 to i64
  %47 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred.addr, align 8
  %arrayidx50 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %47, i64 %idxprom49
  %48 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx50, align 8
  %elms51 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %48, i32 0, i32 3
  %arraydecay52 = getelementptr inbounds [1 x i64], [1 x i64]* %elms51, i32 0, i32 0
  store i64* %arraydecay52, i64** %ptr_48, align 8
  store i32 0, i32* %word_num_42, align 4
  br label %for.cond.53

for.cond.53:                                      ; preds = %for.inc.96, %do.body.41
  %49 = load i32, i32* %word_num_42, align 4
  %50 = load i32, i32* %size_44, align 4
  %cmp54 = icmp ult i32 %49, %50
  br i1 %cmp54, label %for.body.55, label %for.end.98

for.body.55:                                      ; preds = %for.cond.53
  %51 = load i32, i32* %word_num_42, align 4
  %idxprom57 = zext i32 %51 to i64
  %52 = load i64*, i64** %ptr_48, align 8
  %arrayidx58 = getelementptr inbounds i64, i64* %52, i64 %idxprom57
  %53 = load i64, i64* %arrayidx58, align 8
  store i64 %53, i64* %word_56, align 8
  %54 = load i64, i64* %word_56, align 8
  %cmp59 = icmp ne i64 %54, 0
  br i1 %cmp59, label %if.then.60, label %if.end.95

if.then.60:                                       ; preds = %for.body.55
  br label %for.cond.61

for.cond.61:                                      ; preds = %for.inc.92, %if.then.60
  %55 = load i32, i32* %bit_num_43, align 4
  %cmp62 = icmp ult i32 %55, 64
  br i1 %cmp62, label %for.body.63, label %for.end.94

for.body.63:                                      ; preds = %for.cond.61
  %56 = load i32, i32* %bit_num_43, align 4
  %sh_prom65 = zext i32 %56 to i64
  %shl66 = shl i64 1, %sh_prom65
  store i64 %shl66, i64* %_mask64, align 8
  %57 = load i64, i64* %word_56, align 8
  %58 = load i64, i64* %_mask64, align 8
  %and67 = and i64 %57, %58
  %cmp68 = icmp ne i64 %and67, 0
  br i1 %cmp68, label %if.then.69, label %if.end.91

if.then.69:                                       ; preds = %for.body.63
  %59 = load i64, i64* %_mask64, align 8
  %neg70 = xor i64 %59, -1
  %60 = load i64, i64* %word_56, align 8
  %and71 = and i64 %60, %neg70
  store i64 %and71, i64* %word_56, align 8
  %61 = load i32, i32* %word_num_42, align 4
  %mul72 = mul i32 %61, 64
  %62 = load i32, i32* %bit_num_43, align 4
  %add73 = add i32 %mul72, %62
  store i32 %add73, i32* %p, align 4
  %63 = load i32, i32* %p, align 4
  %div74 = udiv i32 %63, 64
  %idxprom75 = zext i32 %div74 to i64
  %64 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms76 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %64, i32 0, i32 3
  %arrayidx77 = getelementptr inbounds [1 x i64], [1 x i64]* %elms76, i32 0, i64 %idxprom75
  %65 = load i64, i64* %arrayidx77, align 8
  %66 = load i32, i32* %p, align 4
  %rem78 = urem i32 %66, 64
  %sh_prom79 = zext i32 %rem78 to i64
  %shr80 = lshr i64 %65, %sh_prom79
  %and81 = and i64 %shr80, 1
  %tobool82 = icmp ne i64 %and81, 0
  br i1 %tobool82, label %if.end.87, label %if.then.83

if.then.83:                                       ; preds = %if.then.69
  %67 = load i32, i32* %p, align 4
  %68 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %69 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred.addr, align 8
  %70 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  call void @ephi_backward(i32 %67, %struct.simple_bitmap_def* %68, %struct.simple_bitmap_def** %69, %struct.rtx_def** %70)
  %71 = load i32, i32* %p, align 4
  %idxprom84 = sext i32 %71 to i64
  %72 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  %arrayidx85 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %72, i64 %idxprom84
  %73 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx85, align 8
  %74 = load %struct.rtx_def*, %struct.rtx_def** %reg_u, align 8
  %call86 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %73, %struct.rtx_def* %74)
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.83, %if.then.69
  %75 = load i64, i64* %word_56, align 8
  %cmp88 = icmp eq i64 %75, 0
  br i1 %cmp88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.end.87
  br label %for.end.94

if.end.90:                                        ; preds = %if.end.87
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %for.body.63
  br label %for.inc.92

for.inc.92:                                       ; preds = %if.end.91
  %76 = load i32, i32* %bit_num_43, align 4
  %inc93 = add i32 %76, 1
  store i32 %inc93, i32* %bit_num_43, align 4
  br label %for.cond.61

for.end.94:                                       ; preds = %if.then.89, %for.cond.61
  br label %if.end.95

if.end.95:                                        ; preds = %for.end.94, %for.body.55
  br label %for.inc.96

for.inc.96:                                       ; preds = %if.end.95
  %77 = load i32, i32* %word_num_42, align 4
  %inc97 = add i32 %77, 1
  store i32 %inc97, i32* %word_num_42, align 4
  store i32 0, i32* %bit_num_43, align 4
  br label %for.cond.53

for.end.98:                                       ; preds = %for.cond.53
  br label %do.end.99

do.end.99:                                        ; preds = %for.end.98
  br label %if.end.155

if.else.100:                                      ; preds = %do.end
  br label %do.body.101

do.body.101:                                      ; preds = %if.else.100
  store i32 0, i32* %bit_num_103, align 4
  %78 = load i32, i32* %t.addr, align 4
  %idxprom105 = sext i32 %78 to i64
  %79 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %succ.addr, align 8
  %arrayidx106 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %79, i64 %idxprom105
  %80 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx106, align 8
  %size107 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %80, i32 0, i32 1
  %81 = load i32, i32* %size107, align 4
  store i32 %81, i32* %size_104, align 4
  %82 = load i32, i32* %t.addr, align 4
  %idxprom109 = sext i32 %82 to i64
  %83 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %succ.addr, align 8
  %arrayidx110 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %83, i64 %idxprom109
  %84 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx110, align 8
  %elms111 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %84, i32 0, i32 3
  %arraydecay112 = getelementptr inbounds [1 x i64], [1 x i64]* %elms111, i32 0, i32 0
  store i64* %arraydecay112, i64** %ptr_108, align 8
  store i32 0, i32* %word_num_102, align 4
  br label %for.cond.113

for.cond.113:                                     ; preds = %for.inc.151, %do.body.101
  %85 = load i32, i32* %word_num_102, align 4
  %86 = load i32, i32* %size_104, align 4
  %cmp114 = icmp ult i32 %85, %86
  br i1 %cmp114, label %for.body.115, label %for.end.153

for.body.115:                                     ; preds = %for.cond.113
  %87 = load i32, i32* %word_num_102, align 4
  %idxprom117 = zext i32 %87 to i64
  %88 = load i64*, i64** %ptr_108, align 8
  %arrayidx118 = getelementptr inbounds i64, i64* %88, i64 %idxprom117
  %89 = load i64, i64* %arrayidx118, align 8
  store i64 %89, i64* %word_116, align 8
  %90 = load i64, i64* %word_116, align 8
  %cmp119 = icmp ne i64 %90, 0
  br i1 %cmp119, label %if.then.120, label %if.end.150

if.then.120:                                      ; preds = %for.body.115
  br label %for.cond.121

for.cond.121:                                     ; preds = %for.inc.147, %if.then.120
  %91 = load i32, i32* %bit_num_103, align 4
  %cmp122 = icmp ult i32 %91, 64
  br i1 %cmp122, label %for.body.123, label %for.end.149

for.body.123:                                     ; preds = %for.cond.121
  %92 = load i32, i32* %bit_num_103, align 4
  %sh_prom125 = zext i32 %92 to i64
  %shl126 = shl i64 1, %sh_prom125
  store i64 %shl126, i64* %_mask124, align 8
  %93 = load i64, i64* %word_116, align 8
  %94 = load i64, i64* %_mask124, align 8
  %and127 = and i64 %93, %94
  %cmp128 = icmp ne i64 %and127, 0
  br i1 %cmp128, label %if.then.129, label %if.end.146

if.then.129:                                      ; preds = %for.body.123
  %95 = load i64, i64* %_mask124, align 8
  %neg130 = xor i64 %95, -1
  %96 = load i64, i64* %word_116, align 8
  %and131 = and i64 %96, %neg130
  store i64 %and131, i64* %word_116, align 8
  %97 = load i32, i32* %word_num_102, align 4
  %mul132 = mul i32 %97, 64
  %98 = load i32, i32* %bit_num_103, align 4
  %add133 = add i32 %mul132, %98
  store i32 %add133, i32* %s, align 4
  %99 = load i32, i32* %t.addr, align 4
  %rem134 = urem i32 %99, 64
  %sh_prom135 = zext i32 %rem134 to i64
  %shl136 = shl i64 1, %sh_prom135
  %100 = load i32, i32* %t.addr, align 4
  %div137 = udiv i32 %100, 64
  %idxprom138 = zext i32 %div137 to i64
  %101 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms139 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %101, i32 0, i32 3
  %arrayidx140 = getelementptr inbounds [1 x i64], [1 x i64]* %elms139, i32 0, i64 %idxprom138
  %102 = load i64, i64* %arrayidx140, align 8
  %or = or i64 %102, %shl136
  store i64 %or, i64* %arrayidx140, align 8
  %103 = load i32, i32* %t.addr, align 4
  %idxprom141 = sext i32 %103 to i64
  %104 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  %arrayidx142 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %104, i64 %idxprom141
  %105 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx142, align 8
  %106 = load i32, i32* %s, align 4
  %idxprom143 = sext i32 %106 to i64
  %107 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  %arrayidx144 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %107, i64 %idxprom143
  %108 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx144, align 8
  %call145 = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %105, %struct.rtx_def* %108)
  br label %if.end.155

if.end.146:                                       ; preds = %for.body.123
  br label %for.inc.147

for.inc.147:                                      ; preds = %if.end.146
  %109 = load i32, i32* %bit_num_103, align 4
  %inc148 = add i32 %109, 1
  store i32 %inc148, i32* %bit_num_103, align 4
  br label %for.cond.121

for.end.149:                                      ; preds = %for.cond.121
  br label %if.end.150

if.end.150:                                       ; preds = %for.end.149, %for.body.115
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.150
  %110 = load i32, i32* %word_num_102, align 4
  %inc152 = add i32 %110, 1
  store i32 %inc152, i32* %word_num_102, align 4
  store i32 0, i32* %bit_num_103, align 4
  br label %for.cond.113

for.end.153:                                      ; preds = %for.cond.113
  br label %do.end.154

do.end.154:                                       ; preds = %for.end.153
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.129, %do.end.154, %do.end.99
  ret void
}

declare void @insert_insn_on_edge(%struct.rtx_def*, %struct.edge_def*) #1

declare %struct.rtx_def* @emit_move_insn(%struct.rtx_def*, %struct.rtx_def*) #1

; Function Attrs: nounwind uwtable
define internal void @ephi_backward(i32 %t, %struct.simple_bitmap_def* %visited, %struct.simple_bitmap_def** %pred, %struct.rtx_def** %nodes) #0 {
entry:
  %t.addr = alloca i32, align 4
  %visited.addr = alloca %struct.simple_bitmap_def*, align 8
  %pred.addr = alloca %struct.simple_bitmap_def**, align 8
  %nodes.addr = alloca %struct.rtx_def**, align 8
  %p = alloca i32, align 4
  %word_num_ = alloca i32, align 4
  %bit_num_ = alloca i32, align 4
  %size_ = alloca i32, align 4
  %ptr_ = alloca i64*, align 8
  %word_ = alloca i64, align 8
  %_mask = alloca i64, align 8
  store i32 %t, i32* %t.addr, align 4
  store %struct.simple_bitmap_def* %visited, %struct.simple_bitmap_def** %visited.addr, align 8
  store %struct.simple_bitmap_def** %pred, %struct.simple_bitmap_def*** %pred.addr, align 8
  store %struct.rtx_def** %nodes, %struct.rtx_def*** %nodes.addr, align 8
  %0 = load i32, i32* %t.addr, align 4
  %rem = urem i32 %0, 64
  %sh_prom = zext i32 %rem to i64
  %shl = shl i64 1, %sh_prom
  %1 = load i32, i32* %t.addr, align 4
  %div = udiv i32 %1, 64
  %idxprom = zext i32 %div to i64
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %2, i32 0, i32 3
  %arrayidx = getelementptr inbounds [1 x i64], [1 x i64]* %elms, i32 0, i64 %idxprom
  %3 = load i64, i64* %arrayidx, align 8
  %or = or i64 %3, %shl
  store i64 %or, i64* %arrayidx, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  store i32 0, i32* %bit_num_, align 4
  %4 = load i32, i32* %t.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred.addr, align 8
  %arrayidx2 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %5, i64 %idxprom1
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx2, align 8
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %6, i32 0, i32 1
  %7 = load i32, i32* %size, align 4
  store i32 %7, i32* %size_, align 4
  %8 = load i32, i32* %t.addr, align 4
  %idxprom3 = sext i32 %8 to i64
  %9 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred.addr, align 8
  %arrayidx4 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %9, i64 %idxprom3
  %10 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx4, align 8
  %elms5 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %10, i32 0, i32 3
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %elms5, i32 0, i32 0
  store i64* %arraydecay, i64** %ptr_, align 8
  store i32 0, i32* %word_num_, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.34, %do.body
  %11 = load i32, i32* %word_num_, align 4
  %12 = load i32, i32* %size_, align 4
  %cmp = icmp ult i32 %11, %12
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %word_num_, align 4
  %idxprom6 = zext i32 %13 to i64
  %14 = load i64*, i64** %ptr_, align 8
  %arrayidx7 = getelementptr inbounds i64, i64* %14, i64 %idxprom6
  %15 = load i64, i64* %arrayidx7, align 8
  store i64 %15, i64* %word_, align 8
  %16 = load i64, i64* %word_, align 8
  %cmp8 = icmp ne i64 %16, 0
  br i1 %cmp8, label %if.then, label %if.end.33

if.then:                                          ; preds = %for.body
  br label %for.cond.9

for.cond.9:                                       ; preds = %for.inc, %if.then
  %17 = load i32, i32* %bit_num_, align 4
  %cmp10 = icmp ult i32 %17, 64
  br i1 %cmp10, label %for.body.11, label %for.end

for.body.11:                                      ; preds = %for.cond.9
  %18 = load i32, i32* %bit_num_, align 4
  %sh_prom12 = zext i32 %18 to i64
  %shl13 = shl i64 1, %sh_prom12
  store i64 %shl13, i64* %_mask, align 8
  %19 = load i64, i64* %word_, align 8
  %20 = load i64, i64* %_mask, align 8
  %and = and i64 %19, %20
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.then.15, label %if.end.32

if.then.15:                                       ; preds = %for.body.11
  %21 = load i64, i64* %_mask, align 8
  %neg = xor i64 %21, -1
  %22 = load i64, i64* %word_, align 8
  %and16 = and i64 %22, %neg
  store i64 %and16, i64* %word_, align 8
  %23 = load i32, i32* %word_num_, align 4
  %mul = mul i32 %23, 64
  %24 = load i32, i32* %bit_num_, align 4
  %add = add i32 %mul, %24
  store i32 %add, i32* %p, align 4
  %25 = load i32, i32* %p, align 4
  %div17 = udiv i32 %25, 64
  %idxprom18 = zext i32 %div17 to i64
  %26 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %elms19 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %26, i32 0, i32 3
  %arrayidx20 = getelementptr inbounds [1 x i64], [1 x i64]* %elms19, i32 0, i64 %idxprom18
  %27 = load i64, i64* %arrayidx20, align 8
  %28 = load i32, i32* %p, align 4
  %rem21 = urem i32 %28, 64
  %sh_prom22 = zext i32 %rem21 to i64
  %shr = lshr i64 %27, %sh_prom22
  %and23 = and i64 %shr, 1
  %tobool = icmp ne i64 %and23, 0
  br i1 %tobool, label %if.end, label %if.then.24

if.then.24:                                       ; preds = %if.then.15
  %29 = load i32, i32* %p, align 4
  %30 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %visited.addr, align 8
  %31 = load %struct.simple_bitmap_def**, %struct.simple_bitmap_def*** %pred.addr, align 8
  %32 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  call void @ephi_backward(i32 %29, %struct.simple_bitmap_def* %30, %struct.simple_bitmap_def** %31, %struct.rtx_def** %32)
  %33 = load i32, i32* %p, align 4
  %idxprom25 = sext i32 %33 to i64
  %34 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  %arrayidx26 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %34, i64 %idxprom25
  %35 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx26, align 8
  %36 = load i32, i32* %t.addr, align 4
  %idxprom27 = sext i32 %36 to i64
  %37 = load %struct.rtx_def**, %struct.rtx_def*** %nodes.addr, align 8
  %arrayidx28 = getelementptr inbounds %struct.rtx_def*, %struct.rtx_def** %37, i64 %idxprom27
  %38 = load %struct.rtx_def*, %struct.rtx_def** %arrayidx28, align 8
  %call = call %struct.rtx_def* @emit_move_insn(%struct.rtx_def* %35, %struct.rtx_def* %38)
  br label %if.end

if.end:                                           ; preds = %if.then.24, %if.then.15
  %39 = load i64, i64* %word_, align 8
  %cmp29 = icmp eq i64 %39, 0
  br i1 %cmp29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.end
  br label %for.end

if.end.31:                                        ; preds = %if.end
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %for.body.11
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %40 = load i32, i32* %bit_num_, align 4
  %inc = add i32 %40, 1
  store i32 %inc, i32* %bit_num_, align 4
  br label %for.cond.9

for.end:                                          ; preds = %if.then.30, %for.cond.9
  br label %if.end.33

if.end.33:                                        ; preds = %for.end, %for.body
  br label %for.inc.34

for.inc.34:                                       ; preds = %if.end.33
  %41 = load i32, i32* %word_num_, align 4
  %inc35 = add i32 %41, 1
  store i32 %inc35, i32* %word_num_, align 4
  store i32 0, i32* %bit_num_, align 4
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  br label %do.end

do.end:                                           ; preds = %for.end.36
  ret void
}

declare void @htab_delete(%struct.htab*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
